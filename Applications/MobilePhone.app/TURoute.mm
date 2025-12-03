@interface TURoute
+ (id)speakerAudioRouteGlyph;
- (BOOL)isHeadphonesConnected;
- (id)_glyphForDisplayStyle:(int64_t)style withColor:(id)color;
- (id)audioRouteGlyphForDisplayStyle:(int64_t)style;
- (id)audioRouteGlyphForRoutePickerWithColor:(id)color;
- (id)avSystemControllerQueryQueue;
- (void)fetchAudioControlsGlyphWithCompletion:(id)completion;
- (void)fetchFallbackAudioControlsGlyphWithCompletion:(id)completion;
@end

@implementation TURoute

+ (id)speakerAudioRouteGlyph
{
  v2 = [UIImage speakerRouteGlyphForDisplayStyle:1];
  imageFlippedForRightToLeftLayoutDirection = [v2 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (id)audioRouteGlyphForDisplayStyle:(int64_t)style
{
  if ((style - 2) < 3)
  {
    v5 = +[UIColor labelColor];
    v6 = [(TURoute *)self _glyphForDisplayStyle:style withColor:v5];

    if (v6)
    {
      goto LABEL_17;
    }

    if (![(TURoute *)self isSpeaker])
    {
      if (([(TURoute *)self isSpeaker]& 1) == 0 && ([(TURoute *)self isReceiver]& 1) == 0 && ([(TURoute *)self isDefaultRoute]& 1) == 0)
      {
        v8 = [UIImage bluetoothAudioRouteGlyphForDisplayStyle:style];
        goto LABEL_11;
      }

      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(TURoute(UI) *)self audioRouteGlyphForDisplayStyle:v7];
      }
    }

    v8 = [UIImage speakerRouteGlyphForDisplayStyle:style];
LABEL_11:
    v6 = v8;
    goto LABEL_17;
  }

  if (style == 1)
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

  else if (style)
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

- (id)audioRouteGlyphForRoutePickerWithColor:(id)color
{
  v3 = [(TURoute *)self _glyphForDisplayStyle:0 withColor:color];
  v4 = v3;
  if (v3)
  {
    _imageThatSuppressesAccessibilityHairlineThickening = [v3 _imageThatSuppressesAccessibilityHairlineThickening];
  }

  else
  {
    _imageThatSuppressesAccessibilityHairlineThickening = 0;
  }

  return _imageThatSuppressesAccessibilityHairlineThickening;
}

- (id)_glyphForDisplayStyle:(int64_t)style withColor:(id)color
{
  colorCopy = color;
  if ([(TURoute *)self isReceiver])
  {
    if (style != 4)
    {
      v8 = [UIImage currentDeviceRouteGlyphForDisplayStyle:style];
      goto LABEL_10;
    }

    styleCopy = 4;
LABEL_6:
    v8 = [UIImage speakerRouteGlyphForDisplayStyle:styleCopy];
LABEL_10:
    v9 = v8;
    goto LABEL_11;
  }

  if ([(TURoute *)self isSpeaker])
  {
    styleCopy = style;
    goto LABEL_6;
  }

  if ([(TURoute *)self deviceType])
  {
    v8 = [UIImage routeGlyphForDeviceType:[(TURoute *)self deviceType] displayStyle:style color:colorCopy];
    goto LABEL_10;
  }

  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    modelIdentifier = [(TURoute *)self modelIdentifier];
    v18 = 138412290;
    v19 = modelIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown device type, model id: %@", &v18, 0xCu);
  }

  modelIdentifier2 = [(TURoute *)self modelIdentifier];
  v14 = [UIImage systemImageNameForModelIdSync:modelIdentifier2];

  if (v14)
  {
    if (!style)
    {
      v16 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:colorCopy];
      v17 = [UIImage _systemImageNamed:v14 withConfiguration:v16];
      v9 = [v17 imageWithRenderingMode:2];

      goto LABEL_22;
    }

    v15 = [UIImage _systemImageNamed:v14];
  }

  else
  {
    v15 = [UIImage bluetoothAudioRouteGlyphForDisplayStyle:style];
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
    isBluetoothLE = 1;
  }

  else
  {
    isBluetoothLE = [(TURoute *)self isBluetoothLE];
  }

  return isBluetoothLE;
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

- (void)fetchAudioControlsGlyphWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(TURoute *)self deviceType])
    {
      v5 = [UIImage routeGlyphForDeviceType:[(TURoute *)self deviceType] displayStyle:1];
      if (v5)
      {
        completionCopy[2](completionCopy, v5);
      }

      else
      {
        [(TURoute *)self fetchFallbackAudioControlsGlyphWithCompletion:completionCopy];
      }
    }

    else
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        modelIdentifier = [(TURoute *)self modelIdentifier];
        *buf = 138412290;
        v13 = modelIdentifier;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unknown device type, model id: %@", buf, 0xCu);
      }

      modelIdentifier2 = [(TURoute *)self modelIdentifier];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __53__TURoute_UI__fetchAudioControlsGlyphWithCompletion___block_invoke;
      v10[3] = &unk_100286B80;
      v10[4] = self;
      v11 = completionCopy;
      [UIImage routeGlyphForModelId:modelIdentifier2 displayStyle:1 completion:v10];
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

- (void)fetchFallbackAudioControlsGlyphWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (completionCopy)
  {
    avSystemControllerQueryQueue = [(TURoute *)self avSystemControllerQueryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __61__TURoute_UI__fetchFallbackAudioControlsGlyphWithCompletion___block_invoke;
    block[3] = &unk_100285690;
    objc_copyWeak(&v9, &location);
    v8 = completionCopy;
    dispatch_async(avSystemControllerQueryQueue, block);

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