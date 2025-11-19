@interface TURoute
+ (id)speakerAudioRouteGlyph;
- (BOOL)isHeadphonesConnected;
- (id)_glyphForDisplayStyle:(int64_t)a3 withColor:(id)a4;
- (id)audioRouteGlyphForDisplayStyle:(int64_t)a3;
- (id)audioRouteGlyphForRoutePickerWithColor:(id)a3;
- (id)avSystemControllerQueryQueue;
- (void)fetchAudioControlsGlyphWithCompletion:(id)a3;
- (void)fetchFallbackAudioControlsGlyphWithCompletion:(id)a3;
@end

@implementation TURoute

+ (id)speakerAudioRouteGlyph
{
  v2 = [UIImage speakerRouteGlyphForDisplayStyle:1];
  v3 = [v2 imageFlippedForRightToLeftLayoutDirection];

  return v3;
}

- (id)audioRouteGlyphForDisplayStyle:(int64_t)a3
{
  if ((a3 - 2) < 3)
  {
    v5 = +[UIColor labelColor];
    v6 = [(TURoute *)self _glyphForDisplayStyle:a3 withColor:v5];

    if (v6)
    {
      goto LABEL_17;
    }

    if (![(TURoute *)self isSpeaker])
    {
      if (([(TURoute *)self isSpeaker]& 1) == 0 && ([(TURoute *)self isReceiver]& 1) == 0 && ([(TURoute *)self isDefaultRoute]& 1) == 0)
      {
        v8 = [UIImage bluetoothAudioRouteGlyphForDisplayStyle:a3];
        goto LABEL_11;
      }

      v7 = sub_100004F84();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100253FD0(self, v7);
      }
    }

    v8 = [UIImage speakerRouteGlyphForDisplayStyle:a3];
LABEL_11:
    v6 = v8;
    goto LABEL_17;
  }

  if (a3 == 1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1000442EC;
    v20 = sub_1000442FC;
    v21 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100044304;
    v13[3] = &unk_1003569D8;
    v15 = &v16;
    v10 = dispatch_semaphore_create(0);
    v14 = v10;
    [(TURoute *)self fetchAudioControlsGlyphWithCompletion:v13];
    v11 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v10, v11);
    v6 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else if (a3)
  {
    v6 = 0;
  }

  else
  {
    v9 = +[UIColor labelColor];
    v6 = [(TURoute *)self audioRouteGlyphForRoutePickerWithColor:v9];
  }

LABEL_17:

  return v6;
}

- (id)audioRouteGlyphForRoutePickerWithColor:(id)a3
{
  v3 = [(TURoute *)self _glyphForDisplayStyle:0 withColor:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _imageThatSuppressesAccessibilityHairlineThickening];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_glyphForDisplayStyle:(int64_t)a3 withColor:(id)a4
{
  v6 = a4;
  if ([(TURoute *)self isReceiver])
  {
    if (a3 != 4)
    {
      v8 = [UIImage currentDeviceRouteGlyphForDisplayStyle:a3];
      goto LABEL_10;
    }

    v7 = 4;
LABEL_6:
    v8 = [UIImage speakerRouteGlyphForDisplayStyle:v7];
LABEL_10:
    v9 = v8;
    goto LABEL_11;
  }

  if ([(TURoute *)self isSpeaker])
  {
    v7 = a3;
    goto LABEL_6;
  }

  if ([(TURoute *)self deviceType])
  {
    v8 = [UIImage routeGlyphForDeviceType:[(TURoute *)self deviceType] displayStyle:a3 color:v6];
    goto LABEL_10;
  }

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(TURoute *)self modelIdentifier];
    v18 = 138412290;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown device type, model id: %@", &v18, 0xCu);
  }

  v13 = [(TURoute *)self modelIdentifier];
  v14 = [UIImage systemImageNameForModelIdSync:v13];

  if (v14)
  {
    if (!a3)
    {
      v16 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v6];
      v17 = [UIImage _systemImageNamed:v14 withConfiguration:v16];
      v9 = [v17 imageWithRenderingMode:2];

      goto LABEL_22;
    }

    v15 = [UIImage _systemImageNamed:v14];
  }

  else
  {
    v15 = [UIImage bluetoothAudioRouteGlyphForDisplayStyle:a3];
  }

  v9 = v15;
LABEL_22:

LABEL_11:

  return v9;
}

- (BOOL)isHeadphonesConnected
{
  v3 = +[AVSystemController sharedAVSystemController];
  v4 = [v3 attributeForKey:AVSystemController_HeadphoneJackIsConnectedAttribute];
  if ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(TURoute *)self isBluetoothLE];
  }

  return v5;
}

- (id)avSystemControllerQueryQueue
{
  if (qword_1003B0C40 != -1)
  {
    sub_10025405C();
  }

  v3 = qword_1003B0C38;

  return v3;
}

- (void)fetchAudioControlsGlyphWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(TURoute *)self deviceType])
    {
      v5 = [UIImage routeGlyphForDeviceType:[(TURoute *)self deviceType] displayStyle:1];
      if (v5)
      {
        v4[2](v4, v5);
      }

      else
      {
        [(TURoute *)self fetchFallbackAudioControlsGlyphWithCompletion:v4];
      }
    }

    else
    {
      v7 = sub_100004F84();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(TURoute *)self modelIdentifier];
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unknown device type, model id: %@", buf, 0xCu);
      }

      v9 = [(TURoute *)self modelIdentifier];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000448DC;
      v10[3] = &unk_100356A20;
      v10[4] = self;
      v11 = v4;
      [UIImage routeGlyphForModelId:v9 displayStyle:1 completion:v10];
    }
  }

  else
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100254070(v6);
    }
  }
}

- (void)fetchFallbackAudioControlsGlyphWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (v4)
  {
    v5 = [(TURoute *)self avSystemControllerQueryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044A1C;
    block[3] = &unk_100356A48;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002540B4(v6);
    }
  }

  objc_destroyWeak(&location);
}

@end