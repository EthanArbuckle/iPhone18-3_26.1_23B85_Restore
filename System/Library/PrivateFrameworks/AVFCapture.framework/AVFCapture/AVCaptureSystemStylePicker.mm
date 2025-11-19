@interface AVCaptureSystemStylePicker
- (AVCaptureSystemStylePicker)initWithSession:(id)a3;
- (AVCaptureSystemStylePicker)initWithSession:(id)a3 action:(id)a4;
- (AVCaptureSystemStylePicker)initWithSession:(id)a3 styles:(id)a4 action:(id)a5;
- (id)_automaticStylesWithSystemSmartStyle:(id)a3;
- (id)actionQueue;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)a3;
- (void)installObservers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)overlayVisibilityDidChange:(BOOL)a3;
- (void)removeObservers;
@end

@implementation AVCaptureSystemStylePicker

- (AVCaptureSystemStylePicker)initWithSession:(id)a3
{
  v5 = -[AVCaptureSystemStylePicker _automaticStylesWithSystemSmartStyle:](self, "_automaticStylesWithSystemSmartStyle:", [a3 systemSmartStyle]);

  return [(AVCaptureSystemStylePicker *)self initWithSession:a3 styles:v5 action:0];
}

- (AVCaptureSystemStylePicker)initWithSession:(id)a3 action:(id)a4
{
  v7 = -[AVCaptureSystemStylePicker _automaticStylesWithSystemSmartStyle:](self, "_automaticStylesWithSystemSmartStyle:", [a3 systemSmartStyle]);

  return [(AVCaptureSystemStylePicker *)self initWithSession:a3 styles:v7 action:a4];
}

- (AVCaptureSystemStylePicker)initWithSession:(id)a3 styles:(id)a4 action:(id)a5
{
  v27.receiver = self;
  v27.super_class = AVCaptureSystemStylePicker;
  v8 = [(AVCaptureControl *)&v27 initSubclass];
  if (v8)
  {
    v8->_sessionReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
    v8->_styles = [a4 copy];
    v20 = v8;
    v8->_action = [a5 copy];
    v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AVFCapture"];
    v28[0] = AVSmartStyleCastTypeStandard[0];
    v28[1] = AVSmartStyleCastTypeTanWarm[0];
    v29[0] = @"SMART_STYLE_STANDARD";
    v29[1] = @"SMART_STYLE_TAN_WARM";
    v28[2] = AVSmartStyleCastTypeBlushWarm[0];
    v28[3] = AVSmartStyleCastTypeGoldWarm[0];
    v29[2] = @"SMART_STYLE_BLUSH_WARM";
    v29[3] = @"SMART_STYLE_GOLD_WARM";
    v28[4] = AVSmartStyleCastTypeCool[0];
    v28[5] = AVSmartStyleCastTypeBrightPop[0];
    v29[4] = @"SMART_STYLE_COOL";
    v29[5] = @"SMART_STYLE_BRIGHTPOP";
    v28[6] = AVSmartStyleCastTypeNeutral[0];
    v28[7] = AVSmartStyleCastTypeNoFilter[0];
    v29[6] = @"SMART_STYLE_NEUTRAL";
    v29[7] = @"SMART_STYLE_NO_FILTER";
    v28[8] = AVSmartStyleCastTypeWarmAuthentic[0];
    v28[9] = AVSmartStyleCastTypeStarkBW[0];
    v29[8] = @"SMART_STYLE_WARM_AUTHENTIC";
    v29[9] = @"SMART_STYLE_STARK_BW";
    v28[10] = AVSmartStyleCastTypeColorful[0];
    v28[11] = AVSmartStyleCastTypeDreamyHues[0];
    v29[10] = @"SMART_STYLE_KALEIDOSCOPE";
    v29[11] = @"SMART_STYLE_DREAMY_HUES";
    v28[12] = AVSmartStyleCastTypeUrbanCool[0];
    v28[13] = AVSmartStyleCastTypeEarthy[0];
    v29[12] = @"SMART_STYLE_URBAN_COOL";
    v29[13] = @"SMART_STYLE_EARTHY";
    v28[14] = AVSmartStyleCastTypeCloudCover[0];
    v28[15] = AVSmartStyleCastTypeLongGray;
    v29[14] = @"SMART_STYLE_CLOUD_COVER";
    v29[15] = @"SMART_STYLE_LONG_GRAY";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:16];
    v10 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [a4 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(a4);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v9 objectForKeyedSubscript:{objc_msgSend(v15, "cast")}];
          v17 = [v15 cast];
          if ([v17 isEqualToString:AVSmartStyleCastTypeBrightPop[0]])
          {
            v18 = @"AVCaptureSystemStylePickerUT6";
          }

          else
          {
            v18 = @"AVCaptureSystemStylePicker";
          }

          [v10 addObject:{objc_msgSend(v21, "localizedStringForKey:value:table:", v16, &stru_1F1CBCFE8, v18)}];
        }

        v12 = [a4 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v12);
    }

    v8 = v20;
    v20->_titles = [v10 copy];
    v20->_selectedStyleLock._os_unfair_lock_opaque = 0;
    v20->_selectedStyle = [a3 activeSmartStyle];
    v20->_actionLock._os_unfair_lock_opaque = 0;
    v20->_changeSmartStyleInProcess = 1;
  }

  return v8;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_actionLock);

  os_unfair_lock_unlock(&self->_actionLock);
  v3.receiver = self;
  v3.super_class = AVCaptureSystemStylePicker;
  [(AVCaptureControl *)&v3 dealloc];
}

- (id)_automaticStylesWithSystemSmartStyle:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = AVSmartStyleCastTypeStandard[0];
  v20[1] = AVSmartStyleCastTypeNeutral[0];
  v20[2] = AVSmartStyleCastTypeBlushWarm[0];
  v20[3] = AVSmartStyleCastTypeGoldWarm[0];
  v20[4] = AVSmartStyleCastTypeTanWarm[0];
  v20[5] = AVSmartStyleCastTypeCool[0];
  v20[6] = AVSmartStyleCastTypeBrightPop[0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:7];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (!a3 || (v11 = [v10 isEqualToString:{objc_msgSend(a3, "cast")}], v12 = a3, (v11 & 1) == 0))
        {
          if ([v10 isEqualToString:AVSmartStyleCastTypeStandard[0]])
          {
            *&v13 = 0.0;
          }

          else
          {
            *&v13 = 1.0;
          }

          v12 = [AVCaptureSmartStyle styleWithCast:v10 intensity:v13 toneBias:0.0 colorBias:0.0];
        }

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }

  return [v4 copy];
}

- (id)overlayControl
{
  os_unfair_lock_lock(&self->_actionLock);
  if (!self->_overlayControl)
  {
    AVCaptureBundleIdentifier();
    self->_overlayControl = [objc_alloc(MEMORY[0x1E6993908]) initWithIdentifier:-[AVCaptureControl identifier](self title:"identifier") imageName:AVLocalizedStringFromTableWithBundleIdentifier() valueTitles:{@"dot.dot.grid.app", self->_titles}];
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (id)overlayUpdate
{
  os_unfair_lock_lock(&self->_selectedStyleLock);
  styles = self->_styles;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVCaptureSystemStylePicker_overlayUpdate__block_invoke;
  v6[3] = &unk_1E786F1E8;
  v6[4] = self;
  v4 = [(NSArray *)styles indexOfObjectPassingTest:v6];
  os_unfair_lock_unlock(&self->_selectedStyleLock);
  return [-[AVCaptureSystemStylePicker overlayControl](self "overlayControl")];
}

uint64_t __43__AVCaptureSystemStylePicker_overlayUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(*(a1 + 32) + 80) cast];
  v4 = [a2 cast];

  return [v3 isEqualToString:v4];
}

- (id)actionQueue
{
  os_unfair_lock_lock(&self->_actionLock);
  v3 = MEMORY[0x1E69E96A0];
  os_unfair_lock_unlock(&self->_actionLock);
  return v3;
}

- (void)installObservers
{
  os_unfair_lock_lock(&self->_actionLock);
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_actionLock);
  if (!observing)
  {
    [-[AVWeakReference referencedObject](self->_sessionReference "referencedObject")];
  }

  os_unfair_lock_lock(&self->_actionLock);
  self->_observing = 1;

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)removeObservers
{
  os_unfair_lock_lock(&self->_actionLock);
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_actionLock);
  if (observing)
  {
    [-[AVWeakReference referencedObject](self->_sessionReference "referencedObject")];
  }

  os_unfair_lock_lock(&self->_actionLock);
  self->_observing = 0;

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  os_unfair_lock_lock(&self->_actionLock);
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_actionLock);
  if ([a3 isEqualToString:@"smartStyle"] && -[AVWeakReference referencedObject](self->_sessionReference, "referencedObject") == a4)
  {
    v11 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (observing && v11 != 0)
    {
      v13 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        os_unfair_lock_lock(&self->_selectedStyleLock);

        self->_selectedStyle = v13;
        styles = self->_styles;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __77__AVCaptureSystemStylePicker_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v16[3] = &unk_1E786F1E8;
        v16[4] = self;
        v15 = [(NSArray *)styles indexOfObjectPassingTest:v16];
        os_unfair_lock_unlock(&self->_selectedStyleLock);
        [(AVCaptureControlsOverlay *)[(AVCaptureControl *)self overlay] updateControl:[(CAMOverlayServicePicker *)self->_overlayControl updateWithIndexValue:v15]];
      }
    }
  }
}

uint64_t __77__AVCaptureSystemStylePicker_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(*(a1 + 32) + 80) cast];
  v4 = [a2 cast];

  return [v3 isEqualToString:v4];
}

- (void)enqueueActionWithUpdate:(id)a3
{
  v4 = [a3 indexValue];
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v4;
    if (v4 < [(NSArray *)self->_styles count])
    {
      v6 = [(NSArray *)self->_styles objectAtIndexedSubscript:v5];
      if (self->_changeSmartStyleInProcess)
      {
        v7 = [(AVWeakReference *)self->_sessionReference referencedObject];
        if (!v7)
        {
          return;
        }

        [v7 setSmartStyle:v6];
        self->_smartStyleHasChanged = 1;
      }

      os_unfair_lock_lock(&self->_selectedStyleLock);

      self->_selectedStyle = v6;
      os_unfair_lock_unlock(&self->_selectedStyleLock);
      if (self->_action)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __54__AVCaptureSystemStylePicker_enqueueActionWithUpdate___block_invoke;
        v8[3] = &unk_1E786EAA8;
        v8[4] = self;
        v8[5] = v6;
        dispatch_async(MEMORY[0x1E69E96A0], v8);
      }
    }
  }
}

- (void)overlayVisibilityDidChange:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AVCaptureSystemStylePicker;
  [(AVCaptureControl *)&v6 overlayVisibilityDidChange:?];
  if (!a3)
  {
    v5 = [(AVWeakReference *)self->_sessionReference referencedObject];
    if (v5)
    {
      if (self->_changeSmartStyleInProcess && self->_smartStyleHasChanged)
      {
        [v5 saveSystemStyleOverrideToDefaults:{objc_msgSend(v5, "smartStyle")}];
        self->_smartStyleHasChanged = 0;
      }
    }
  }
}

@end