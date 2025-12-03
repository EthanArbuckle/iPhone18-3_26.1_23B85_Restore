@interface AVSecondScreenDebugAssistant
- (AVSecondScreenDebugAssistant)init;
- (AVSecondScreenViewController)secondScreenViewController;
- (UIScene)scene;
- (id)_currentDisplay;
- (id)_currentEnabledVideoTrack;
- (id)_currentVideoDynamicRange;
- (void)_actuallyUpdateDebugLabelTextWithCurrentResolution:(id)resolution currentVideoDynamicRange:(id)range;
- (void)_updateDebugLabelText;
- (void)dealloc;
- (void)setDebugText:(id)text;
- (void)setScene:(id)scene;
- (void)setSecondScreenViewController:(id)controller;
@end

@implementation AVSecondScreenDebugAssistant

- (AVSecondScreenViewController)secondScreenViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_secondScreenViewController);

  return WeakRetained;
}

- (UIScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_actuallyUpdateDebugLabelTextWithCurrentResolution:(id)resolution currentVideoDynamicRange:(id)range
{
  v71[9] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  resolutionCopy = resolution;
  player = [(AVSecondScreenDebugAssistant *)self player];
  currentItem = [player currentItem];
  asset = [currentItem asset];
  preferredDisplayCriteria = [asset preferredDisplayCriteria];

  v10 = [preferredDisplayCriteria videoDynamicRange] - 1;
  if (v10 > 7)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E7208430[v10];
  }

  v64 = v11;
  player2 = [(AVSecondScreenDebugAssistant *)self player];
  currentItem2 = [player2 currentItem];
  asset2 = [currentItem2 asset];
  [asset2 maximumVideoResolution];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", v15, v16];

  v18 = MEMORY[0x1E696AEC0];
  [preferredDisplayCriteria refreshRate];
  v20 = [v18 stringWithFormat:@"%.0f", v19];
  if (!preferredDisplayCriteria)
  {

    v20 = @"Unknown";
    v17 = @"Unknown";
  }

  v69 = preferredDisplayCriteria;
  v70 = v20;
  if ([(__CFString *)v17 isEqualToString:@"0x0"])
  {

    v17 = @"Unknown";
  }

  v58 = v17;
  debugInfoDisplay = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  currentMode = [debugInfoDisplay currentMode];
  hdrMode = [currentMode hdrMode];
  v63 = hdrMode;

  debugInfoDisplay2 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  currentMode2 = [debugInfoDisplay2 currentMode];
  width = [currentMode2 width];
  _currentDisplay = [(AVSecondScreenDebugAssistant *)self _currentDisplay];
  currentMode3 = [_currentDisplay currentMode];
  height = [currentMode3 height];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", *&width, height];
  v62 = v30;

  v31 = MEMORY[0x1E696AEC0];
  debugInfoDisplay3 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  currentMode4 = [debugInfoDisplay3 currentMode];
  [currentMode4 refreshRate];
  v35 = [v31 stringWithFormat:@"%0.f", v34];
  v61 = v35;

  debugInfoDisplay4 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  preferences = [debugInfoDisplay4 preferences];
  preferredHdrMode = [preferences preferredHdrMode];
  v39 = preferredHdrMode;
  v40 = @"Dolby";
  if (preferredHdrMode)
  {
    v40 = preferredHdrMode;
  }

  v41 = v40;

  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current Display Mode: %@ %@ @ %@Hz", v30, hdrMode, v35];
  v71[0] = v60;
  v71[1] = @"--------";
  rangeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current Variant: %@ %@", resolutionCopy, rangeCopy];

  v71[2] = rangeCopy;
  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Best Variant: %@ %@", v17, v64];
  v71[3] = v68;
  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preferred Refresh Rate: %@Hz", v70];
  v71[4] = v66;
  v71[5] = @"--------";
  v42 = MEMORY[0x1E696AEC0];
  debugInfoDisplay5 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  preferences2 = [debugInfoDisplay5 preferences];
  matchContent = [preferences2 matchContent];
  v46 = @"Disabled";
  if (matchContent)
  {
    v46 = @"Enabled";
  }

  v47 = [v42 stringWithFormat:@"Content Match: %@\nPreferred Color Mode: %@", v46, v41];

  v71[6] = v47;
  v71[7] = @"--------";
  v48 = MEMORY[0x1E696AEC0];
  scene = [(AVSecondScreenDebugAssistant *)self scene];
  avkit_asWindowScene = [scene avkit_asWindowScene];
  screen = [avkit_asWindowScene screen];
  [screen nativeBounds];
  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", v52, v53];
  v55 = [v48 stringWithFormat:@"UIScreen.nativeBounds.size: %@", v54];
  v71[8] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:9];

  v57 = [v56 componentsJoinedByString:@"\n"];
  [(AVSecondScreenDebugAssistant *)self setDebugText:v57];
}

- (void)_updateDebugLabelText
{
  _currentEnabledVideoTrack = [(AVSecondScreenDebugAssistant *)self _currentEnabledVideoTrack];
  assetTrack = [_currentEnabledVideoTrack assetTrack];
  if ([assetTrack statusOfValueForKey:@"formatDescriptions" error:0] == 2)
  {
    assetTrack2 = [_currentEnabledVideoTrack assetTrack];
    v6 = [assetTrack2 statusOfValueForKey:@"naturalSize" error:0];

    if (v6 == 2)
    {
      assetTrack3 = [_currentEnabledVideoTrack assetTrack];
      [assetTrack3 naturalSize];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", v8, v9];

      _currentVideoDynamicRange = [(AVSecondScreenDebugAssistant *)self _currentVideoDynamicRange];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (_currentEnabledVideoTrack)
  {
    assetTrack4 = [_currentEnabledVideoTrack assetTrack];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AVSecondScreenDebugAssistant__updateDebugLabelText__block_invoke;
    v13[3] = &unk_1E7209FB0;
    v14 = _currentEnabledVideoTrack;
    selfCopy = self;
    [assetTrack4 loadValuesAsynchronouslyForKeys:&unk_1EFF12ED8 completionHandler:v13];
  }

  _currentVideoDynamicRange = @"Unknown";
  v10 = @"Unknown";
LABEL_8:
  [(AVSecondScreenDebugAssistant *)self _actuallyUpdateDebugLabelTextWithCurrentResolution:v10 currentVideoDynamicRange:_currentVideoDynamicRange];
}

void __53__AVSecondScreenDebugAssistant__updateDebugLabelText__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVSecondScreenDebugAssistant__updateDebugLabelText__block_invoke_2;
  v4[3] = &unk_1E7209FB0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __53__AVSecondScreenDebugAssistant__updateDebugLabelText__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _currentEnabledVideoTrack];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = [*(a1 + 32) assetTrack];
    [v4 naturalSize];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", v5, v6];

    v7 = [*(a1 + 40) _currentVideoDynamicRange];
    [*(a1 + 40) _actuallyUpdateDebugLabelTextWithCurrentResolution:v8 currentVideoDynamicRange:v7];
  }
}

- (id)_currentVideoDynamicRange
{
  v20 = *MEMORY[0x1E69E9840];
  _currentEnabledVideoTrack = [(AVSecondScreenDebugAssistant *)self _currentEnabledVideoTrack];
  assetTrack = [_currentEnabledVideoTrack assetTrack];
  v5 = [assetTrack statusOfValueForKey:@"formatDescriptions" error:0];

  if (v5 == 2)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v6 = [(AVSecondScreenDebugAssistant *)self _currentEnabledVideoTrack:0];
    assetTrack2 = [v6 assetTrack];
    formatDescriptions = [assetTrack2 formatDescriptions];

    v9 = [formatDescriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      VideoDynamicRange = 0;
      v12 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(formatDescriptions);
          }

          if (VideoDynamicRange <= CMVideoFormatDescriptionGetVideoDynamicRange())
          {
            VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange();
          }
        }

        v10 = [formatDescriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);

      if ((VideoDynamicRange - 1) <= 7)
      {
        return off_1E7208430[VideoDynamicRange - 1];
      }
    }

    else
    {
    }
  }

  return @"Unknown";
}

- (id)_currentDisplay
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [MEMORY[0x1E6979328] displays];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        uniqueId = [v6 uniqueId];
        scene = [(AVSecondScreenDebugAssistant *)self scene];
        avkit_asWindowScene = [scene avkit_asWindowScene];
        screen = [avkit_asWindowScene screen];
        _displayID = [screen _displayID];
        v12 = [uniqueId isEqual:_displayID];

        if (v12)
        {
          v13 = v6;
          goto LABEL_11;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_currentEnabledVideoTrack
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  player = [(AVSecondScreenDebugAssistant *)self player];
  currentItem = [player currentItem];
  tracks = [currentItem tracks];

  v5 = [tracks countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E6987608];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(tracks);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 isEnabled])
        {
          assetTrack = [v10 assetTrack];
          mediaType = [assetTrack mediaType];
          v13 = [mediaType isEqualToString:v8];

          if (v13)
          {
            v14 = v10;
            goto LABEL_12;
          }
        }
      }

      v6 = [tracks countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (void)setSecondScreenViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_secondScreenViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_secondScreenViewController, obj);
    debugText = [(AVSecondScreenDebugAssistant *)self debugText];
    [obj setDebugText:debugText];
  }
}

- (void)setDebugText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_debugText] & 1) == 0)
  {
    v4 = [textCopy copy];
    debugText = self->_debugText;
    self->_debugText = v4;

    secondScreenViewController = [(AVSecondScreenDebugAssistant *)self secondScreenViewController];
    [secondScreenViewController setDebugText:self->_debugText];
  }
}

- (void)setScene:(id)scene
{
  obj = scene;
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_scene, obj);
    _currentDisplay = [(AVSecondScreenDebugAssistant *)self _currentDisplay];
    [(AVSecondScreenDebugAssistant *)self setDebugInfoDisplay:_currentDisplay];

    v5 = obj;
  }
}

- (void)dealloc
{
  observationController = [(AVSecondScreenDebugAssistant *)self observationController];
  [observationController stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVSecondScreenDebugAssistant;
  [(AVSecondScreenDebugAssistant *)&v4 dealloc];
}

- (AVSecondScreenDebugAssistant)init
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AVSecondScreenDebugAssistant;
  v2 = [(AVSecondScreenDebugAssistant *)&v11 init];
  if (AVSecondScreenDebugHUDEnabled_onceToken != -1)
  {
    dispatch_once(&AVSecondScreenDebugHUDEnabled_onceToken, &__block_literal_global_131);
  }

  if ((AVSecondScreenDebugHUDEnabled__Enabled & 1) == 0)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Don't initialize this unless AVSecondScreenDebugHUDEnabled()!", v10, 2u);
    }
  }

  if (v2)
  {
    v4 = [[AVObservationController alloc] initWithOwner:v2];
    observationController = v2->_observationController;
    v2->_observationController = v4;

    v6 = v2->_observationController;
    v12[0] = @"debugInfoDisplay.currentMode";
    v12[1] = @"debugInfoDisplay.preferences";
    v12[2] = @"player.currentItem";
    v12[3] = @"player.currentItem.tracks";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
    v8 = [(AVObservationController *)v6 startObserving:v2 keyPaths:v7 observationHandler:&__block_literal_global_13916];
  }

  return v2;
}

@end