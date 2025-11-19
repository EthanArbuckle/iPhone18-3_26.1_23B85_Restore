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

      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(TURoute(UI) *)self audioRouteGlyphForDisplayStyle:v7];
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
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __46__TURoute_UI__audioRouteGlyphForDisplayStyle___block_invoke;
    v13[3] = &unk_100286B38;
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

void __46__TURoute_UI__audioRouteGlyphForDisplayStyle___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
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

  v11 = PHDefaultLog();
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
  if (avSystemControllerQueryQueue_onceToken != -1)
  {
    [TURoute(UI) avSystemControllerQueryQueue];
  }

  v3 = avSystemControllerQueryQueue_avSystemControllerQueryQueue;

  return v3;
}

void __43__TURoute_UI__avSystemControllerQueryQueue__block_invoke(id a1)
{
  avSystemControllerQueryQueue_avSystemControllerQueryQueue = dispatch_queue_create("com.apple.mobilephone.tuRouteUI", 0);

  _objc_release_x1();
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
      v7 = PHDefaultLog();
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
      v10[2] = __53__TURoute_UI__fetchAudioControlsGlyphWithCompletion___block_invoke;
      v10[3] = &unk_100286B80;
      v10[4] = self;
      v11 = v4;
      [UIImage routeGlyphForModelId:v9 displayStyle:1 completion:v10];
    }
  }

  else
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TURoute(UI) fetchAudioControlsGlyphWithCompletion:v6];
    }
  }
}

id __53__TURoute_UI__fetchAudioControlsGlyphWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) fetchFallbackAudioControlsGlyphWithCompletion:*(a1 + 40)];
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
    block[2] = __61__TURoute_UI__fetchFallbackAudioControlsGlyphWithCompletion___block_invoke;
    block[3] = &unk_100285690;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TURoute(UI) fetchFallbackAudioControlsGlyphWithCompletion:v6];
    }
  }

  objc_destroyWeak(&location);
}

void __61__TURoute_UI__fetchFallbackAudioControlsGlyphWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_HeadphoneJackIsConnectedAttribute];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) != 0 || [WeakRetained isBluetoothLE])
  {
    v5 = *(a1 + 32);
    v6 = [UIImage headphonesRouteGlyphForDisplayStyle:1];
    (*(v5 + 16))(v5, v6);
LABEL_4:

    goto LABEL_5;
  }

  v7 = [WeakRetained isAuxiliary];
  v8 = *(a1 + 32);
  if (v7)
  {
    v6 = [UIImage bluetoothAudioRouteGlyphForDisplayStyle:1];
    (*(v8 + 16))(v8, v6);
    goto LABEL_4;
  }

  (*(v8 + 16))(v8, 0);
LABEL_5:
}

@end