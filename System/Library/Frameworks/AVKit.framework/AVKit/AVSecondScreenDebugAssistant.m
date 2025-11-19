@interface AVSecondScreenDebugAssistant
- (AVSecondScreenDebugAssistant)init;
- (AVSecondScreenViewController)secondScreenViewController;
- (UIScene)scene;
- (id)_currentDisplay;
- (id)_currentEnabledVideoTrack;
- (id)_currentVideoDynamicRange;
- (void)_actuallyUpdateDebugLabelTextWithCurrentResolution:(id)a3 currentVideoDynamicRange:(id)a4;
- (void)_updateDebugLabelText;
- (void)dealloc;
- (void)setDebugText:(id)a3;
- (void)setScene:(id)a3;
- (void)setSecondScreenViewController:(id)a3;
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

- (void)_actuallyUpdateDebugLabelTextWithCurrentResolution:(id)a3 currentVideoDynamicRange:(id)a4
{
  v71[9] = *MEMORY[0x1E69E9840];
  v67 = a4;
  v65 = a3;
  v6 = [(AVSecondScreenDebugAssistant *)self player];
  v7 = [v6 currentItem];
  v8 = [v7 asset];
  v9 = [v8 preferredDisplayCriteria];

  v10 = [v9 videoDynamicRange] - 1;
  if (v10 > 7)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E7208430[v10];
  }

  v64 = v11;
  v12 = [(AVSecondScreenDebugAssistant *)self player];
  v13 = [v12 currentItem];
  v14 = [v13 asset];
  [v14 maximumVideoResolution];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", v15, v16];

  v18 = MEMORY[0x1E696AEC0];
  [v9 refreshRate];
  v20 = [v18 stringWithFormat:@"%.0f", v19];
  if (!v9)
  {

    v20 = @"Unknown";
    v17 = @"Unknown";
  }

  v69 = v9;
  v70 = v20;
  if ([(__CFString *)v17 isEqualToString:@"0x0"])
  {

    v17 = @"Unknown";
  }

  v58 = v17;
  v21 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  v22 = [v21 currentMode];
  v23 = [v22 hdrMode];
  v63 = v23;

  v24 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  v25 = [v24 currentMode];
  v26 = [v25 width];
  v27 = [(AVSecondScreenDebugAssistant *)self _currentDisplay];
  v28 = [v27 currentMode];
  v29 = [v28 height];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", *&v26, v29];
  v62 = v30;

  v31 = MEMORY[0x1E696AEC0];
  v32 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  v33 = [v32 currentMode];
  [v33 refreshRate];
  v35 = [v31 stringWithFormat:@"%0.f", v34];
  v61 = v35;

  v36 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  v37 = [v36 preferences];
  v38 = [v37 preferredHdrMode];
  v39 = v38;
  v40 = @"Dolby";
  if (v38)
  {
    v40 = v38;
  }

  v41 = v40;

  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current Display Mode: %@ %@ @ %@Hz", v30, v23, v35];
  v71[0] = v60;
  v71[1] = @"--------";
  v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current Variant: %@ %@", v65, v67];

  v71[2] = v59;
  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Best Variant: %@ %@", v17, v64];
  v71[3] = v68;
  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preferred Refresh Rate: %@Hz", v70];
  v71[4] = v66;
  v71[5] = @"--------";
  v42 = MEMORY[0x1E696AEC0];
  v43 = [(AVSecondScreenDebugAssistant *)self debugInfoDisplay];
  v44 = [v43 preferences];
  v45 = [v44 matchContent];
  v46 = @"Disabled";
  if (v45)
  {
    v46 = @"Enabled";
  }

  v47 = [v42 stringWithFormat:@"Content Match: %@\nPreferred Color Mode: %@", v46, v41];

  v71[6] = v47;
  v71[7] = @"--------";
  v48 = MEMORY[0x1E696AEC0];
  v49 = [(AVSecondScreenDebugAssistant *)self scene];
  v50 = [v49 avkit_asWindowScene];
  v51 = [v50 screen];
  [v51 nativeBounds];
  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", v52, v53];
  v55 = [v48 stringWithFormat:@"UIScreen.nativeBounds.size: %@", v54];
  v71[8] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:9];

  v57 = [v56 componentsJoinedByString:@"\n"];
  [(AVSecondScreenDebugAssistant *)self setDebugText:v57];
}

- (void)_updateDebugLabelText
{
  v3 = [(AVSecondScreenDebugAssistant *)self _currentEnabledVideoTrack];
  v4 = [v3 assetTrack];
  if ([v4 statusOfValueForKey:@"formatDescriptions" error:0] == 2)
  {
    v5 = [v3 assetTrack];
    v6 = [v5 statusOfValueForKey:@"naturalSize" error:0];

    if (v6 == 2)
    {
      v7 = [v3 assetTrack];
      [v7 naturalSize];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fx%0.f", v8, v9];

      v11 = [(AVSecondScreenDebugAssistant *)self _currentVideoDynamicRange];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (v3)
  {
    v12 = [v3 assetTrack];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AVSecondScreenDebugAssistant__updateDebugLabelText__block_invoke;
    v13[3] = &unk_1E7209FB0;
    v14 = v3;
    v15 = self;
    [v12 loadValuesAsynchronouslyForKeys:&unk_1EFF12ED8 completionHandler:v13];
  }

  v11 = @"Unknown";
  v10 = @"Unknown";
LABEL_8:
  [(AVSecondScreenDebugAssistant *)self _actuallyUpdateDebugLabelTextWithCurrentResolution:v10 currentVideoDynamicRange:v11];
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
  v3 = [(AVSecondScreenDebugAssistant *)self _currentEnabledVideoTrack];
  v4 = [v3 assetTrack];
  v5 = [v4 statusOfValueForKey:@"formatDescriptions" error:0];

  if (v5 == 2)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v6 = [(AVSecondScreenDebugAssistant *)self _currentEnabledVideoTrack:0];
    v7 = [v6 assetTrack];
    v8 = [v7 formatDescriptions];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          if (VideoDynamicRange <= CMVideoFormatDescriptionGetVideoDynamicRange())
          {
            VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange();
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        v7 = [v6 uniqueId];
        v8 = [(AVSecondScreenDebugAssistant *)self scene];
        v9 = [v8 avkit_asWindowScene];
        v10 = [v9 screen];
        v11 = [v10 _displayID];
        v12 = [v7 isEqual:v11];

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
  v2 = [(AVSecondScreenDebugAssistant *)self player];
  v3 = [v2 currentItem];
  v4 = [v3 tracks];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 isEnabled])
        {
          v11 = [v10 assetTrack];
          v12 = [v11 mediaType];
          v13 = [v12 isEqualToString:v8];

          if (v13)
          {
            v14 = v10;
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)setSecondScreenViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_secondScreenViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_secondScreenViewController, obj);
    v5 = [(AVSecondScreenDebugAssistant *)self debugText];
    [obj setDebugText:v5];
  }
}

- (void)setDebugText:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToString:self->_debugText] & 1) == 0)
  {
    v4 = [v7 copy];
    debugText = self->_debugText;
    self->_debugText = v4;

    v6 = [(AVSecondScreenDebugAssistant *)self secondScreenViewController];
    [v6 setDebugText:self->_debugText];
  }
}

- (void)setScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_scene, obj);
    v6 = [(AVSecondScreenDebugAssistant *)self _currentDisplay];
    [(AVSecondScreenDebugAssistant *)self setDebugInfoDisplay:v6];

    v5 = obj;
  }
}

- (void)dealloc
{
  v3 = [(AVSecondScreenDebugAssistant *)self observationController];
  [v3 stopAllObservation];

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