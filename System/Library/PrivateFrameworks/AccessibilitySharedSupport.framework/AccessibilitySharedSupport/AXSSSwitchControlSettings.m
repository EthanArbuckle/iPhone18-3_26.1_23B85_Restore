@interface AXSSSwitchControlSettings
- (AXSSSwitchControlSettings)init;
- (AXSSSwitchControlSettings)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation AXSSSwitchControlSettings

- (AXSSSwitchControlSettings)init
{
  v10.receiver = self;
  v10.super_class = AXSSSwitchControlSettings;
  v2 = [(AXSSSwitchControlSettings *)&v10 init];
  v3 = v2;
  if (v2)
  {
    scanningStyles = v2->_scanningStyles;
    v5 = MEMORY[0x1E695E0F0];
    v2->_scanningStyles = MEMORY[0x1E695E0F0];

    tapBehaviors = v3->_tapBehaviors;
    v3->_tapBehaviors = v5;

    cursorSizes = v3->_cursorSizes;
    v3->_cursorSizes = v5;

    postActivationScanLocations = v3->_postActivationScanLocations;
    v3->_postActivationScanLocations = v5;
  }

  return v3;
}

- (AXSSSwitchControlSettings)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = AXSSSwitchControlSettings;
  v5 = [(AXSSSwitchControlSettings *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ScanningStyles"];
    scanningStyles = v5->_scanningStyles;
    v5->_scanningStyles = v6;

    if (!v5->_scanningStyles)
    {
      v5->_scanningStyles = MEMORY[0x1E695E0F0];
    }

    v8 = [v4 objectForKeyedSubscript:@"TapBehaviors"];
    tapBehaviors = v5->_tapBehaviors;
    v5->_tapBehaviors = v8;

    if (!v5->_tapBehaviors)
    {
      v5->_tapBehaviors = MEMORY[0x1E695E0F0];
    }

    v10 = [v4 objectForKeyedSubscript:@"CursorSizes"];
    cursorSizes = v5->_cursorSizes;
    v5->_cursorSizes = v10;

    if (!v5->_cursorSizes)
    {
      v5->_cursorSizes = MEMORY[0x1E695E0F0];
    }

    v12 = [v4 objectForKeyedSubscript:@"PostActivationScanLocations"];
    postActivationScanLocations = v5->_postActivationScanLocations;
    v5->_postActivationScanLocations = v12;

    if (!v5->_postActivationScanLocations)
    {
      v5->_postActivationScanLocations = MEMORY[0x1E695E0F0];
    }

    v14 = [v4 objectForKeyedSubscript:@"AutoScanningInterval"];
    [v14 doubleValue];
    v5->_autoScanningInterval = v15;

    v16 = [v4 objectForKeyedSubscript:@"AutoHideTimeout"];
    [v16 doubleValue];
    v5->_autoHideTimeout = v17;

    v18 = [v4 objectForKeyedSubscript:@"PauseOnFirstItemInterval"];
    [v18 doubleValue];
    v5->_pauseOnFirstItemInterval = v19;

    v20 = [v4 objectForKeyedSubscript:@"NumberOfScanLoops"];
    v5->_numberOfScanLoops = [v20 unsignedIntegerValue];

    v21 = [v4 objectForKeyedSubscript:@"DwellDuration"];
    [v21 doubleValue];
    v5->_dwellDuration = v22;

    v23 = [v4 objectForKeyedSubscript:@"RepeatActionInterval"];
    [v23 doubleValue];
    v5->_repeatActionInterval = v24;

    v25 = [v4 objectForKeyedSubscript:@"HoldDuration"];
    [v25 doubleValue];
    v5->_holdDuration = v26;

    v27 = [v4 objectForKeyedSubscript:@"IgnoreRepeatDuration"];
    [v27 doubleValue];
    v5->_ignoreRepeatDuration = v28;

    v29 = [v4 objectForKeyedSubscript:@"SoundEffectsEnabled"];
    v5->_soundEffectsEnabled = [v29 BOOLValue];

    v30 = [v4 objectForKeyedSubscript:@"SpeechEnabled"];
    v5->_speechEnabled = [v30 BOOLValue];

    v31 = [v4 objectForKeyedSubscript:@"LongPressDuration"];
    [v31 doubleValue];
    v5->_longPressDuration = v32;

    v33 = [v4 objectForKeyedSubscript:@"AutoTapTimeout"];
    [v33 doubleValue];
    v5->_autoTapTimeout = v34;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXSSSwitchControlSettings *)self scanningStyles];
  [v3 setObject:v4 forKeyedSubscript:@"ScanningStyles"];

  v5 = [(AXSSSwitchControlSettings *)self tapBehaviors];
  [v3 setObject:v5 forKeyedSubscript:@"TapBehaviors"];

  v6 = [(AXSSSwitchControlSettings *)self cursorSizes];
  [v3 setObject:v6 forKeyedSubscript:@"CursorSizes"];

  v7 = [(AXSSSwitchControlSettings *)self postActivationScanLocations];
  [v3 setObject:v7 forKeyedSubscript:@"PostActivationScanLocations"];

  v8 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self autoScanningInterval];
  v9 = [v8 numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"AutoScanningInterval"];

  v10 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self autoHideTimeout];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"AutoHideTimeout"];

  v12 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self pauseOnFirstItemInterval];
  v13 = [v12 numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:@"PauseOnFirstItemInterval"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSSSwitchControlSettings numberOfScanLoops](self, "numberOfScanLoops")}];
  [v3 setObject:v14 forKeyedSubscript:@"NumberOfScanLoops"];

  v15 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self dwellDuration];
  v16 = [v15 numberWithDouble:?];
  [v3 setObject:v16 forKeyedSubscript:@"DwellDuration"];

  v17 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self repeatActionInterval];
  v18 = [v17 numberWithDouble:?];
  [v3 setObject:v18 forKeyedSubscript:@"RepeatActionInterval"];

  v19 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self holdDuration];
  v20 = [v19 numberWithDouble:?];
  [v3 setObject:v20 forKeyedSubscript:@"HoldDuration"];

  v21 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self ignoreRepeatDuration];
  v22 = [v21 numberWithDouble:?];
  [v3 setObject:v22 forKeyedSubscript:@"IgnoreRepeatDuration"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSSwitchControlSettings soundEffectsEnabled](self, "soundEffectsEnabled")}];
  [v3 setObject:v23 forKeyedSubscript:@"SoundEffectsEnabled"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSSwitchControlSettings speechEnabled](self, "speechEnabled")}];
  [v3 setObject:v24 forKeyedSubscript:@"SpeechEnabled"];

  v25 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self longPressDuration];
  v26 = [v25 numberWithDouble:?];
  [v3 setObject:v26 forKeyedSubscript:@"LongPressDuration"];

  v27 = MEMORY[0x1E696AD98];
  [(AXSSSwitchControlSettings *)self autoTapTimeout];
  v28 = [v27 numberWithDouble:?];
  [v3 setObject:v28 forKeyedSubscript:@"AutoTapTimeout"];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AXSSSwitchControlSettings;
  v3 = [(AXSSSwitchControlSettings *)&v7 description];
  v4 = [(AXSSSwitchControlSettings *)self dictionaryRepresentation];
  v5 = [v3 stringByAppendingFormat:@"- %@", v4];

  return v5;
}

@end