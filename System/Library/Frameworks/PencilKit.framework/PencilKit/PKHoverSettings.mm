@interface PKHoverSettings
+ (BOOL)allowDoubleTapOnlyWithPencilHover;
+ (BOOL)isHoverEnabled;
+ (id)sharedSettings;
+ (void)checkIfHoverIsEnabled:(id)a3;
+ (void)checkIfHoverIsSupported:(id)a3;
+ (void)prewarmIfNecessary;
- (BOOL)_shouldSaveSettings;
- (BOOL)toolPreviewActive;
- (BOOL)toolShadowActive;
- (BOOL)toolShadowActiveOnOldPencils;
- (PKHoverSettings)init;
- (double)toolShadowMaxOpacity;
- (double)toolShadowMaxOpacityInDrawingCanvas;
- (id)settingsDictionaryRepresentation;
- (void)_darkerSystemColorsStatusDidChange:(id)a3;
- (void)_loadDefaultValues;
- (void)_scheduleSavingSettingsSoon;
- (void)dealloc;
- (void)loadSettingsFromDictionary:(id)a3;
- (void)loadSettingsFromUserDefaults;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetToDefaultValues;
- (void)saveSettingsToUserDefaults;
- (void)setToolPreviewActive:(BOOL)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation PKHoverSettings

+ (void)prewarmIfNecessary
{
  if (+[PKHoverSettings isHoverActive])
  {

    +[PKSettingsDaemon prewarmServiceConnectionIfNeeded];
  }
}

+ (void)checkIfHoverIsSupported:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKHoverSettings_checkIfHoverIsSupported___block_invoke;
  block[3] = &unk_1E82D6F70;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __43__PKHoverSettings_checkIfHoverIsSupported___block_invoke(uint64_t a1)
{
  v2 = PKMaxHoverHeight() > 0.0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__PKHoverSettings_checkIfHoverIsSupported___block_invoke_2;
  v3[3] = &unk_1E82D7B10;
  v4 = *(a1 + 32);
  v5 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

+ (void)checkIfHoverIsEnabled:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PKHoverSettings_checkIfHoverIsEnabled___block_invoke;
  v7[3] = &unk_1E82D7760;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __41__PKHoverSettings_checkIfHoverIsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) isHoverEnabled];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__PKHoverSettings_checkIfHoverIsEnabled___block_invoke_2;
  v3[3] = &unk_1E82D7B10;
  v4 = *(a1 + 32);
  v5 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

+ (id)sharedSettings
{
  if (qword_1ED6A54A0 != -1)
  {
    dispatch_once(&qword_1ED6A54A0, &__block_literal_global_85);
  }

  v3 = _MergedGlobals_166;

  return v3;
}

void __33__PKHoverSettings_sharedSettings__block_invoke()
{
  v0 = objc_alloc_init(PKHoverSettings);
  v1 = _MergedGlobals_166;
  _MergedGlobals_166 = v0;
}

- (PKHoverSettings)init
{
  v7.receiver = self;
  v7.super_class = PKHoverSettings;
  v2 = [(PKHoverSettings *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
    pencilDefaults = v2->_pencilDefaults;
    v2->_pencilDefaults = v3;

    [(PKHoverSettings *)v2 _loadDefaultValues];
    [(PKHoverSettings *)v2 loadSettingsFromUserDefaults];
    if (![(PKHoverSettings *)v2 _shouldSaveSettings])
    {
      [(NSUserDefaults *)v2->_pencilDefaults addObserver:v2 forKeyPath:@"HoverDefaultsV14" options:1 context:&kKVOContext_0];
      v2->_didAddObserver = 1;
    }

    v2->_increasedContrastEnabled = UIAccessibilityDarkerSystemColorsEnabled();
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__darkerSystemColorsStatusDidChange_ name:*MEMORY[0x1E69DD8B8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  if (self->_didAddObserver)
  {
    [(NSUserDefaults *)self->_pencilDefaults removeObserver:self forKeyPath:@"HoverDefaultsV14" context:kKVOContext_0];
  }

  v4.receiver = self;
  v4.super_class = PKHoverSettings;
  [(PKHoverSettings *)&v4 dealloc];
}

- (void)_darkerSystemColorsStatusDidChange:(id)a3
{
  v4 = UIAccessibilityDarkerSystemColorsEnabled();

  [(PKHoverSettings *)self setIncreasedContrastEnabled:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (kKVOContext_0 == a6 && [v10 isEqualToString:@"HoverDefaultsV14"])
  {
    [(PKHoverSettings *)self loadSettingsFromUserDefaults];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PKHoverSettings;
    [(PKHoverSettings *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (BOOL)_shouldSaveSettings
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.Preferences"];

  return v4;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKHoverSettings;
  [(PKHoverSettings *)&v5 setValue:a3 forKey:a4];
  if ([(PKHoverSettings *)self _shouldSaveSettings])
  {
    [(PKHoverSettings *)self _scheduleSavingSettingsSoon];
  }
}

+ (BOOL)isHoverEnabled
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ([a1 isHoverActive] && (v2 = IOHIDEventSystemClientCreateWithType()) != 0)
  {
    v3 = v2;
    v18[0] = @"PrimaryUsagePage";
    v18[1] = @"PrimaryUsage";
    v19[0] = &unk_1F47C1718;
    v19[1] = &unk_1F47C1730;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    IOHIDEventSystemClientSetMatching();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = IOHIDEventSystemClientCopyServices(v3);
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = IOHIDServiceClientCopyProperty(*(*(&v13 + 1) + 8 * i), @"HoverDisabled");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 BOOLValue] ^ 1;

            goto LABEL_14;
          }
        }

        v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v11) = 0;
LABEL_14:

    CFRelease(v3);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

+ (BOOL)allowDoubleTapOnlyWithPencilHover
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (![a1 isHoverActive])
  {
    return 0;
  }

  v2 = IOHIDEventSystemClientCreateWithType();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v19[0] = @"PrimaryUsagePage";
  v19[1] = @"PrimaryUsage";
  v20[0] = &unk_1F47C1748;
  v20[1] = &unk_1F47C1760;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  IOHIDEventSystemClientSetMatching();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = IOHIDEventSystemClientCopyServices(v3);
  v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = IOHIDServiceClientCopyProperty(*(*(&v14 + 1) + 8 * i), @"GesturesOnlyWhileHoveringEnabled");
        if (v10)
        {
          v12 = v10;
          v11 = [v10 BOOLValue];

          goto LABEL_14;
        }
      }

      v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  CFRelease(v3);
  return v11;
}

- (id)settingsDictionaryRepresentation
{
  v87[54] = *MEMORY[0x1E69E9840];
  v86[0] = @"showDebugLayer";
  v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings showDebugLayer](self, "showDebugLayer")}];
  v87[0] = v85;
  v86[1] = @"supportTouchPad";
  v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings supportTouchPad](self, "supportTouchPad")}];
  v87[1] = v84;
  v86[2] = @"debugCursorType";
  v83 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKHoverSettings debugCursorType](self, "debugCursorType")}];
  v87[2] = v83;
  v86[3] = @"tooltipsActive";
  v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings tooltipsActive](self, "tooltipsActive")}];
  v87[3] = v82;
  v86[4] = @"snapToShapeActive";
  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings snapToShapeActive](self, "snapToShapeActive")}];
  v87[4] = v81;
  v86[5] = @"toolIndicatorActive";
  v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings toolIndicatorActive](self, "toolIndicatorActive")}];
  v87[5] = v80;
  v86[6] = @"toolShadowActive";
  v79 = [MEMORY[0x1E696AD98] numberWithBool:self->_toolShadowActive];
  v87[6] = v79;
  v86[7] = @"toolShadowActiveOutsideNotes";
  v78 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings toolShadowActiveOutsideNotes](self, "toolShadowActiveOutsideNotes")}];
  v87[7] = v78;
  v86[8] = @"toolShadowLocationWorkaround";
  v77 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings toolShadowLocationWorkaround](self, "toolShadowLocationWorkaround")}];
  v87[8] = v77;
  v86[9] = @"toolShadowActiveOnOldPencils";
  v76 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings toolShadowActiveOnOldPencils](self, "toolShadowActiveOnOldPencils")}];
  v87[9] = v76;
  v86[10] = @"toolShadowMaxOpacityNormal";
  v3 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolShadowMaxOpacityNormal];
  v75 = [v3 numberWithDouble:?];
  v87[10] = v75;
  v86[11] = @"toolShadowMaxOpacityForIncreasedContrast";
  v4 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolShadowMaxOpacityForIncreasedContrast];
  v74 = [v4 numberWithDouble:?];
  v87[11] = v74;
  v86[12] = @"toolShadowMaxOpacityInDrawingCanvasNormal";
  v5 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolShadowMaxOpacityInDrawingCanvasNormal];
  v73 = [v5 numberWithDouble:?];
  v87[12] = v73;
  v86[13] = @"toolShadowMaxOpacityInDrawingCanvasForIncreasedContrast";
  v6 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolShadowMaxOpacityInDrawingCanvasForIncreasedContrast];
  v72 = [v6 numberWithDouble:?];
  v87[13] = v72;
  v86[14] = @"toolShadowMaxBlurRadius";
  v7 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolShadowMaxBlurRadius];
  v71 = [v7 numberWithDouble:?];
  v87[14] = v71;
  v86[15] = @"toolShadowFadeInDistance";
  v8 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolShadowFadeInDistance];
  v70 = [v8 numberWithDouble:?];
  v87[15] = v70;
  v86[16] = @"toolShadowMovementSpeedHideThreshold";
  v9 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolShadowMovementSpeedHideThreshold];
  v69 = [v9 numberWithDouble:?];
  v87[16] = v69;
  v86[17] = @"toolPreviewShouldWaitForHoverAndHold";
  v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings toolPreviewShouldWaitForHoverAndHold](self, "toolPreviewShouldWaitForHoverAndHold")}];
  v87[17] = v68;
  v86[18] = @"toolSwitchIndicatorActive";
  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings toolSwitchIndicatorActive](self, "toolSwitchIndicatorActive")}];
  v87[18] = v67;
  v86[19] = @"avoidSwitchingToolsOutsideHoverRange";
  v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings avoidSwitchingToolsOutsideHoverRange](self, "avoidSwitchingToolsOutsideHoverRange")}];
  v87[19] = v66;
  v86[20] = @"screenEdgeSizeInMillimeters";
  v10 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self screenEdgeSizeInMillimeters];
  v65 = [v10 numberWithDouble:?];
  v87[20] = v65;
  v86[21] = @"maxZDistance";
  v11 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self maxZDistance];
  v64 = [v11 numberWithDouble:?];
  v87[21] = v64;
  v86[22] = @"erasePreviewAlphaFactor";
  v12 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self erasePreviewAlphaFactor];
  v63 = [v12 numberWithDouble:?];
  v87[22] = v63;
  v86[23] = @"toolPreviewMaxZDistance";
  v13 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolPreviewMaxZDistance];
  v62 = [v13 numberWithDouble:?];
  v87[23] = v62;
  v86[24] = @"toolPreviewFadeOutDistance";
  v14 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolPreviewFadeOutDistance];
  v61 = [v14 numberWithDouble:?];
  v87[24] = v61;
  v86[25] = @"toolPreviewAzimuthTiltMaxZDistance";
  v15 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self toolPreviewAzimuthTiltMaxZDistance];
  v60 = [v15 numberWithDouble:?];
  v87[25] = v60;
  v86[26] = @"deactivateExtraDistance";
  v16 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self deactivateExtraDistance];
  v59 = [v16 numberWithDouble:?];
  v87[26] = v59;
  v86[27] = @"predictionTimeInterval";
  v17 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self predictionTimeInterval];
  v58 = [v17 numberWithDouble:?];
  v87[27] = v58;
  v86[28] = @"extraHoverPreviewDelay";
  v18 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self extraHoverPreviewDelay];
  v57 = [v18 numberWithDouble:?];
  v87[28] = v57;
  v86[29] = @"inactivityTimeInterval";
  v19 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self inactivityTimeInterval];
  v56 = [v19 numberWithDouble:?];
  v87[29] = v56;
  v86[30] = @"hoverAndHoldTriggerTimeInterval";
  v20 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self hoverAndHoldTriggerTimeInterval];
  v55 = [v20 numberWithDouble:?];
  v87[30] = v55;
  v86[31] = @"hoverAndHoldActionTimeInterval";
  v21 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self hoverAndHoldActionTimeInterval];
  v54 = [v21 numberWithDouble:?];
  v87[31] = v54;
  v86[32] = @"numFramesExtraLatency";
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKHoverSettings numFramesExtraLatency](self, "numFramesExtraLatency")}];
  v87[32] = v53;
  v86[33] = @"numFramesReduceFramerate";
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKHoverSettings numFramesReduceFramerate](self, "numFramesReduceFramerate")}];
  v87[33] = v52;
  v86[34] = @"weightedAverageAltitudeFactor";
  v22 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self weightedAverageAltitudeFactor];
  v51 = [v22 numberWithDouble:?];
  v87[34] = v51;
  v86[35] = @"weightedAverageAzimuthFactor";
  v23 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self weightedAverageAzimuthFactor];
  v50 = [v23 numberWithDouble:?];
  v87[35] = v50;
  v86[36] = @"weightedAverageLocationFactor";
  v24 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self weightedAverageLocationFactor];
  v49 = [v24 numberWithDouble:?];
  v87[36] = v49;
  v86[37] = @"scribbleFocusActive";
  v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings scribbleFocusActive](self, "scribbleFocusActive")}];
  v87[37] = v48;
  v86[38] = @"scribbleFlashCursorActive";
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings scribbleFlashCursorActive](self, "scribbleFlashCursorActive")}];
  v87[38] = v47;
  v86[39] = @"scribbleShowWritableElementsActive";
  v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings scribbleShowWritableElementsActive](self, "scribbleShowWritableElementsActive")}];
  v87[39] = v46;
  v86[40] = @"scribbleHoverStrongActive";
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings scribbleHoverStrongActive](self, "scribbleHoverStrongActive")}];
  v87[40] = v45;
  v86[41] = @"scribbleCommitOnLift";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings scribbleCommitOnLift](self, "scribbleCommitOnLift")}];
  v87[41] = v44;
  v86[42] = @"scribbleLineBreakHandling";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings scribbleLineBreakHandling](self, "scribbleLineBreakHandling")}];
  v87[42] = v43;
  v86[43] = @"scribbleLineBreakMultiLineDelay";
  v25 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self scribbleLineBreakMultiLineDelay];
  v42 = [v25 numberWithDouble:?];
  v87[43] = v42;
  v86[44] = @"scribbleLineBreakMultiLineEnabled";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings scribbleLineBreakMultiLineEnabled](self, "scribbleLineBreakMultiLineEnabled")}];
  v87[44] = v41;
  v86[45] = @"scribbleLineBreakMultiLineMaxLines";
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[PKHoverSettings scribbleLineBreakMultiLineMaxLines](self, "scribbleLineBreakMultiLineMaxLines")}];
  v87[45] = v26;
  v86[46] = @"scribbleIBeamActive";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings scribbleIBeamActive](self, "scribbleIBeamActive")}];
  v87[46] = v27;
  v86[47] = @"noiseIsHeightBased";
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKHoverSettings noiseIsHeightBased](self, "noiseIsHeightBased")}];
  v87[47] = v28;
  v86[48] = @"azimuthJitterNoise";
  v29 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self azimuthJitterNoise];
  v30 = [v29 numberWithDouble:?];
  v87[48] = v30;
  v86[49] = @"altitudeJitterNoise";
  v31 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self altitudeJitterNoise];
  v32 = [v31 numberWithDouble:?];
  v87[49] = v32;
  v86[50] = @"azimuthOffsetNoise";
  v33 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self azimuthOffsetNoise];
  v34 = [v33 numberWithDouble:?];
  v87[50] = v34;
  v86[51] = @"altitudeOffsetNoise";
  v35 = MEMORY[0x1E696AD98];
  [(PKHoverSettings *)self altitudeOffsetNoise];
  v36 = [v35 numberWithDouble:?];
  v87[51] = v36;
  v86[52] = @"azimuthBuckets";
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[PKHoverSettings azimuthBuckets](self, "azimuthBuckets")}];
  v87[52] = v37;
  v86[53] = @"altitudeBuckets";
  v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[PKHoverSettings altitudeBuckets](self, "altitudeBuckets")}];
  v87[53] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:54];

  return v39;
}

- (void)loadSettingsFromDictionary:(id)a3
{
  v112 = a3;
  if (v112)
  {
    v4 = [v112 objectForKeyedSubscript:@"showDebugLayer"];

    if (v4)
    {
      v5 = [v112 objectForKeyedSubscript:@"showDebugLayer"];
      -[PKHoverSettings setShowDebugLayer:](self, "setShowDebugLayer:", [v5 BOOLValue]);
    }

    v6 = [v112 objectForKeyedSubscript:@"supportTouchPad"];

    if (v6)
    {
      v7 = [v112 objectForKeyedSubscript:@"supportTouchPad"];
      -[PKHoverSettings setSupportTouchPad:](self, "setSupportTouchPad:", [v7 BOOLValue]);
    }

    v8 = [v112 objectForKeyedSubscript:@"debugCursorType"];

    if (v8)
    {
      v9 = [v112 objectForKeyedSubscript:@"debugCursorType"];
      -[PKHoverSettings setDebugCursorType:](self, "setDebugCursorType:", [v9 integerValue]);
    }

    v10 = [v112 objectForKeyedSubscript:@"tooltipsActive"];

    if (v10)
    {
      v11 = [v112 objectForKeyedSubscript:@"tooltipsActive"];
      -[PKHoverSettings setTooltipsActive:](self, "setTooltipsActive:", [v11 BOOLValue]);
    }

    v12 = [v112 objectForKeyedSubscript:@"snapToShapeActive"];

    if (v12)
    {
      v13 = [v112 objectForKeyedSubscript:@"snapToShapeActive"];
      -[PKHoverSettings setSnapToShapeActive:](self, "setSnapToShapeActive:", [v13 BOOLValue]);
    }

    v14 = [v112 objectForKeyedSubscript:@"toolIndicatorActive"];

    if (v14)
    {
      v15 = [v112 objectForKeyedSubscript:@"toolIndicatorActive"];
      -[PKHoverSettings setToolIndicatorActive:](self, "setToolIndicatorActive:", [v15 BOOLValue]);
    }

    v16 = [v112 objectForKeyedSubscript:@"toolShadowActive"];

    if (v16)
    {
      v17 = [v112 objectForKeyedSubscript:@"toolShadowActive"];
      -[PKHoverSettings setToolShadowActive:](self, "setToolShadowActive:", [v17 BOOLValue]);
    }

    v18 = [v112 objectForKeyedSubscript:@"toolShadowActiveOutsideNotes"];

    if (v18)
    {
      v19 = [v112 objectForKeyedSubscript:@"toolShadowActiveOutsideNotes"];
      -[PKHoverSettings setToolShadowActiveOutsideNotes:](self, "setToolShadowActiveOutsideNotes:", [v19 BOOLValue]);
    }

    v20 = [v112 objectForKeyedSubscript:@"toolShadowLocationWorkaround"];

    if (v20)
    {
      v21 = [v112 objectForKeyedSubscript:@"toolShadowLocationWorkaround"];
      -[PKHoverSettings setToolShadowLocationWorkaround:](self, "setToolShadowLocationWorkaround:", [v21 BOOLValue]);
    }

    v22 = [v112 objectForKeyedSubscript:@"toolShadowActiveOnOldPencils"];

    if (v22)
    {
      v23 = [v112 objectForKeyedSubscript:@"toolShadowActiveOnOldPencils"];
      -[PKHoverSettings setToolShadowActiveOnOldPencils:](self, "setToolShadowActiveOnOldPencils:", [v23 BOOLValue]);
    }

    v24 = [v112 objectForKeyedSubscript:@"toolShadowMaxOpacityNormal"];

    if (v24)
    {
      v25 = [v112 objectForKeyedSubscript:@"toolShadowMaxOpacityNormal"];
      [v25 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxOpacityNormal:?];
    }

    v26 = [v112 objectForKeyedSubscript:@"toolShadowMaxOpacityForIncreasedContrast"];

    if (v26)
    {
      v27 = [v112 objectForKeyedSubscript:@"toolShadowMaxOpacityForIncreasedContrast"];
      [v27 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxOpacityForIncreasedContrast:?];
    }

    v28 = [v112 objectForKeyedSubscript:@"toolShadowMaxOpacityInDrawingCanvasNormal"];

    if (v28)
    {
      v29 = [v112 objectForKeyedSubscript:@"toolShadowMaxOpacityInDrawingCanvasNormal"];
      [v29 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxOpacityInDrawingCanvasNormal:?];
    }

    v30 = [v112 objectForKeyedSubscript:@"toolShadowMaxOpacityInDrawingCanvasForIncreasedContrast"];

    if (v30)
    {
      v31 = [v112 objectForKeyedSubscript:@"toolShadowMaxOpacityInDrawingCanvasForIncreasedContrast"];
      [v31 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxOpacityInDrawingCanvasForIncreasedContrast:?];
    }

    v32 = [v112 objectForKeyedSubscript:@"toolShadowFadeInDistance"];

    if (v32)
    {
      v33 = [v112 objectForKeyedSubscript:@"toolShadowFadeInDistance"];
      [v33 doubleValue];
      [(PKHoverSettings *)self setToolShadowFadeInDistance:?];
    }

    v34 = [v112 objectForKeyedSubscript:@"toolShadowMaxBlurRadius"];

    if (v34)
    {
      v35 = [v112 objectForKeyedSubscript:@"toolShadowMaxBlurRadius"];
      [v35 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxBlurRadius:?];
    }

    v36 = [v112 objectForKeyedSubscript:@"toolShadowMovementSpeedHideThreshold"];

    if (v36)
    {
      v37 = [v112 objectForKeyedSubscript:@"toolShadowMovementSpeedHideThreshold"];
      [v37 doubleValue];
      [(PKHoverSettings *)self setToolShadowMovementSpeedHideThreshold:?];
    }

    v38 = [v112 objectForKeyedSubscript:@"toolPreviewShouldWaitForHoverAndHold"];

    if (v38)
    {
      v39 = [v112 objectForKeyedSubscript:@"toolPreviewShouldWaitForHoverAndHold"];
      -[PKHoverSettings setToolPreviewShouldWaitForHoverAndHold:](self, "setToolPreviewShouldWaitForHoverAndHold:", [v39 BOOLValue]);
    }

    v40 = [v112 objectForKeyedSubscript:@"toolSwitchIndicatorActive"];

    if (v40)
    {
      v41 = [v112 objectForKeyedSubscript:@"toolSwitchIndicatorActive"];
      -[PKHoverSettings setToolSwitchIndicatorActive:](self, "setToolSwitchIndicatorActive:", [v41 BOOLValue]);
    }

    v42 = [v112 objectForKeyedSubscript:@"avoidSwitchingToolsOutsideHoverRange"];

    if (v42)
    {
      v43 = [v112 objectForKeyedSubscript:@"avoidSwitchingToolsOutsideHoverRange"];
      -[PKHoverSettings setAvoidSwitchingToolsOutsideHoverRange:](self, "setAvoidSwitchingToolsOutsideHoverRange:", [v43 BOOLValue]);
    }

    v44 = [v112 objectForKeyedSubscript:@"screenEdgeSizeInMillimeters"];

    if (v44)
    {
      v45 = [v112 objectForKeyedSubscript:@"screenEdgeSizeInMillimeters"];
      [v45 doubleValue];
      [(PKHoverSettings *)self setScreenEdgeSizeInMillimeters:?];
    }

    v46 = [v112 objectForKeyedSubscript:@"maxZDistance"];

    if (v46)
    {
      v47 = [v112 objectForKeyedSubscript:@"maxZDistance"];
      [v47 doubleValue];
      [(PKHoverSettings *)self setMaxZDistance:?];
    }

    v48 = [v112 objectForKeyedSubscript:@"erasePreviewAlphaFactor"];

    if (v48)
    {
      v49 = [v112 objectForKeyedSubscript:@"erasePreviewAlphaFactor"];
      [v49 doubleValue];
      [(PKHoverSettings *)self setErasePreviewAlphaFactor:?];
    }

    v50 = [v112 objectForKeyedSubscript:@"toolPreviewMaxZDistance"];

    if (v50)
    {
      v51 = [v112 objectForKeyedSubscript:@"toolPreviewMaxZDistance"];
      [v51 doubleValue];
      [(PKHoverSettings *)self setToolPreviewMaxZDistance:?];
    }

    v52 = [v112 objectForKeyedSubscript:@"toolPreviewFadeOutDistance"];

    if (v52)
    {
      v53 = [v112 objectForKeyedSubscript:@"toolPreviewFadeOutDistance"];
      [v53 doubleValue];
      [(PKHoverSettings *)self setToolPreviewFadeOutDistance:?];
    }

    v54 = [v112 objectForKeyedSubscript:@"toolPreviewAzimuthTiltMaxZDistance"];

    if (v54)
    {
      v55 = [v112 objectForKeyedSubscript:@"toolPreviewAzimuthTiltMaxZDistance"];
      [v55 doubleValue];
      [(PKHoverSettings *)self setToolPreviewAzimuthTiltMaxZDistance:?];
    }

    v56 = [v112 objectForKeyedSubscript:@"deactivateExtraDistance"];

    if (v56)
    {
      v57 = [v112 objectForKeyedSubscript:@"deactivateExtraDistance"];
      [v57 doubleValue];
      [(PKHoverSettings *)self setDeactivateExtraDistance:?];
    }

    v58 = [v112 objectForKeyedSubscript:@"predictionTimeInterval"];

    if (v58)
    {
      v59 = [v112 objectForKeyedSubscript:@"predictionTimeInterval"];
      [v59 doubleValue];
      [(PKHoverSettings *)self setPredictionTimeInterval:?];
    }

    v60 = [v112 objectForKeyedSubscript:@"extraHoverPreviewDelay"];

    if (v60)
    {
      v61 = [v112 objectForKeyedSubscript:@"extraHoverPreviewDelay"];
      [v61 doubleValue];
      [(PKHoverSettings *)self setExtraHoverPreviewDelay:?];
    }

    v62 = [v112 objectForKeyedSubscript:@"inactivityTimeInterval"];

    if (v62)
    {
      v63 = [v112 objectForKeyedSubscript:@"inactivityTimeInterval"];
      [v63 doubleValue];
      [(PKHoverSettings *)self setInactivityTimeInterval:?];
    }

    v64 = [v112 objectForKeyedSubscript:@"hoverAndHoldTriggerTimeInterval"];

    if (v64)
    {
      v65 = [v112 objectForKeyedSubscript:@"hoverAndHoldTriggerTimeInterval"];
      [v65 doubleValue];
      [(PKHoverSettings *)self setHoverAndHoldTriggerTimeInterval:?];
    }

    v66 = [v112 objectForKeyedSubscript:@"hoverAndHoldActionTimeInterval"];

    if (v66)
    {
      v67 = [v112 objectForKeyedSubscript:@"hoverAndHoldActionTimeInterval"];
      [v67 doubleValue];
      [(PKHoverSettings *)self setHoverAndHoldActionTimeInterval:?];
    }

    v68 = [v112 objectForKeyedSubscript:@"numFramesExtraLatency"];

    if (v68)
    {
      v69 = [v112 objectForKeyedSubscript:@"numFramesExtraLatency"];
      -[PKHoverSettings setNumFramesExtraLatency:](self, "setNumFramesExtraLatency:", [v69 integerValue]);
    }

    v70 = [v112 objectForKeyedSubscript:@"numFramesReduceFramerate"];

    if (v70)
    {
      v71 = [v112 objectForKeyedSubscript:@"numFramesReduceFramerate"];
      -[PKHoverSettings setNumFramesReduceFramerate:](self, "setNumFramesReduceFramerate:", [v71 integerValue]);
    }

    v72 = [v112 objectForKeyedSubscript:@"weightedAverageLocationFactor"];

    if (v72)
    {
      v73 = [v112 objectForKeyedSubscript:@"weightedAverageLocationFactor"];
      [v73 doubleValue];
      [(PKHoverSettings *)self setWeightedAverageLocationFactor:?];
    }

    v74 = [v112 objectForKeyedSubscript:@"weightedAverageAzimuthFactor"];

    if (v74)
    {
      v75 = [v112 objectForKeyedSubscript:@"weightedAverageAzimuthFactor"];
      [v75 doubleValue];
      [(PKHoverSettings *)self setWeightedAverageAzimuthFactor:?];
    }

    v76 = [v112 objectForKeyedSubscript:@"weightedAverageAltitudeFactor"];

    if (v76)
    {
      v77 = [v112 objectForKeyedSubscript:@"weightedAverageAltitudeFactor"];
      [v77 doubleValue];
      [(PKHoverSettings *)self setWeightedAverageAltitudeFactor:?];
    }

    v78 = [v112 objectForKeyedSubscript:@"scribbleFocusActive"];

    if (v78)
    {
      v79 = [v112 objectForKeyedSubscript:@"scribbleFocusActive"];
      -[PKHoverSettings setScribbleFocusActive:](self, "setScribbleFocusActive:", [v79 BOOLValue]);
    }

    v80 = [v112 objectForKeyedSubscript:@"scribbleFlashCursorActive"];

    if (v80)
    {
      v81 = [v112 objectForKeyedSubscript:@"scribbleFlashCursorActive"];
      -[PKHoverSettings setScribbleFlashCursorActive:](self, "setScribbleFlashCursorActive:", [v81 BOOLValue]);
    }

    v82 = [v112 objectForKeyedSubscript:@"scribbleShowWritableElementsActive"];

    if (v82)
    {
      v83 = [v112 objectForKeyedSubscript:@"scribbleShowWritableElementsActive"];
      -[PKHoverSettings setScribbleShowWritableElementsActive:](self, "setScribbleShowWritableElementsActive:", [v83 BOOLValue]);
    }

    v84 = [v112 objectForKeyedSubscript:@"scribbleHoverStrongActive"];

    if (v84)
    {
      v85 = [v112 objectForKeyedSubscript:@"scribbleHoverStrongActive"];
      -[PKHoverSettings setScribbleHoverStrongActive:](self, "setScribbleHoverStrongActive:", [v85 BOOLValue]);
    }

    v86 = [v112 objectForKeyedSubscript:@"scribbleCommitOnLift"];

    if (v86)
    {
      v87 = [v112 objectForKeyedSubscript:@"scribbleCommitOnLift"];
      -[PKHoverSettings setScribbleCommitOnLift:](self, "setScribbleCommitOnLift:", [v87 BOOLValue]);
    }

    v88 = [v112 objectForKeyedSubscript:@"scribbleLineBreakHandling"];

    if (v88)
    {
      v89 = [v112 objectForKeyedSubscript:@"scribbleLineBreakHandling"];
      -[PKHoverSettings setScribbleLineBreakHandling:](self, "setScribbleLineBreakHandling:", [v89 BOOLValue]);
    }

    v90 = [v112 objectForKeyedSubscript:@"scribbleLineBreakMultiLineDelay"];

    if (v90)
    {
      v91 = [v112 objectForKeyedSubscript:@"scribbleLineBreakMultiLineDelay"];
      [v91 doubleValue];
      [(PKHoverSettings *)self setScribbleLineBreakMultiLineDelay:?];
    }

    v92 = [v112 objectForKeyedSubscript:@"scribbleLineBreakMultiLineEnabled"];

    if (v92)
    {
      v93 = [v112 objectForKeyedSubscript:@"scribbleLineBreakMultiLineEnabled"];
      -[PKHoverSettings setScribbleLineBreakMultiLineEnabled:](self, "setScribbleLineBreakMultiLineEnabled:", [v93 BOOLValue]);
    }

    v94 = [v112 objectForKeyedSubscript:@"scribbleLineBreakMultiLineMaxLines"];

    if (v94)
    {
      v95 = [v112 objectForKeyedSubscript:@"scribbleLineBreakMultiLineMaxLines"];
      -[PKHoverSettings setScribbleLineBreakMultiLineMaxLines:](self, "setScribbleLineBreakMultiLineMaxLines:", [v95 intValue]);
    }

    v96 = [v112 objectForKeyedSubscript:@"scribbleIBeamActive"];

    if (v96)
    {
      v97 = [v112 objectForKeyedSubscript:@"scribbleIBeamActive"];
      -[PKHoverSettings setScribbleIBeamActive:](self, "setScribbleIBeamActive:", [v97 BOOLValue]);
    }

    v98 = [v112 objectForKeyedSubscript:@"azimuthJitterNoise"];

    if (v98)
    {
      v99 = [v112 objectForKeyedSubscript:@"azimuthJitterNoise"];
      [v99 doubleValue];
      [(PKHoverSettings *)self setAzimuthJitterNoise:?];
    }

    v100 = [v112 objectForKeyedSubscript:@"altitudeJitterNoise"];

    if (v100)
    {
      v101 = [v112 objectForKeyedSubscript:@"altitudeJitterNoise"];
      [v101 doubleValue];
      [(PKHoverSettings *)self setAltitudeJitterNoise:?];
    }

    v102 = [v112 objectForKeyedSubscript:@"azimuthOffsetNoise"];

    if (v102)
    {
      v103 = [v112 objectForKeyedSubscript:@"azimuthOffsetNoise"];
      [v103 doubleValue];
      [(PKHoverSettings *)self setAzimuthOffsetNoise:?];
    }

    v104 = [v112 objectForKeyedSubscript:@"altitudeOffsetNoise"];

    if (v104)
    {
      v105 = [v112 objectForKeyedSubscript:@"altitudeOffsetNoise"];
      [v105 doubleValue];
      [(PKHoverSettings *)self setAltitudeOffsetNoise:?];
    }

    v106 = [v112 objectForKeyedSubscript:@"azimuthBuckets"];

    if (v106)
    {
      v107 = [v112 objectForKeyedSubscript:@"azimuthBuckets"];
      -[PKHoverSettings setAzimuthBuckets:](self, "setAzimuthBuckets:", [v107 intValue]);
    }

    v108 = [v112 objectForKeyedSubscript:@"altitudeBuckets"];

    if (v108)
    {
      v109 = [v112 objectForKeyedSubscript:@"altitudeBuckets"];
      -[PKHoverSettings setAltitudeBuckets:](self, "setAltitudeBuckets:", [v109 intValue]);
    }

    v110 = [v112 objectForKeyedSubscript:@"noiseIsHeightBased"];

    if (v110)
    {
      v111 = [v112 objectForKeyedSubscript:@"noiseIsHeightBased"];
      -[PKHoverSettings setNoiseIsHeightBased:](self, "setNoiseIsHeightBased:", [v111 BOOLValue]);
    }
  }
}

- (void)loadSettingsFromUserDefaults
{
  v3 = [(NSUserDefaults *)self->_pencilDefaults dictionaryForKey:@"HoverDefaultsV14"];
  [(PKHoverSettings *)self loadSettingsFromDictionary:v3];
}

- (void)saveSettingsToUserDefaults
{
  if ([(PKHoverSettings *)self _shouldSaveSettings])
  {
    v3 = [(PKHoverSettings *)self settingsDictionaryRepresentation];
    [(NSUserDefaults *)self->_pencilDefaults setObject:v3 forKey:@"HoverDefaultsV14"];
  }
}

- (void)resetToDefaultValues
{
  [(PKHoverSettings *)self _loadDefaultValues];

  [(PKHoverSettings *)self saveSettingsToUserDefaults];
}

- (void)_loadDefaultValues
{
  [(PKHoverSettings *)self setShowDebugLayer:0];
  [(PKHoverSettings *)self setSupportTouchPad:0];
  [(PKHoverSettings *)self setDebugCursorType:1];
  [(PKHoverSettings *)self setTooltipsActive:0];
  [(PKHoverSettings *)self setSnapToShapeActive:0];
  [(PKHoverSettings *)self setToolIndicatorActive:0];
  [(PKHoverSettings *)self setToolShadowActive:1];
  [(PKHoverSettings *)self setToolShadowLocationWorkaround:1];
  [(PKHoverSettings *)self setToolShadowActiveOutsideNotes:1];
  [(PKHoverSettings *)self setToolShadowActiveOnOldPencils:0];
  [(PKHoverSettings *)self setToolShadowMovementSpeedHideThreshold:-1.0];
  [(PKHoverSettings *)self setToolPreviewShouldWaitForHoverAndHold:0];
  [(PKHoverSettings *)self setToolShadowMaxOpacityNormal:0.05];
  [(PKHoverSettings *)self setToolShadowMaxOpacityForIncreasedContrast:0.1];
  [(PKHoverSettings *)self setToolShadowMaxOpacityInDrawingCanvasNormal:0.05];
  [(PKHoverSettings *)self setToolShadowMaxOpacityInDrawingCanvasForIncreasedContrast:0.1];
  [(PKHoverSettings *)self setToolShadowMaxBlurRadius:25.0];
  [(PKHoverSettings *)self setToolShadowFadeInDistance:10.0];
  [(PKHoverSettings *)self setToolSwitchIndicatorActive:1];
  [(PKHoverSettings *)self setAvoidSwitchingToolsOutsideHoverRange:1];
  [(PKHoverSettings *)self setMaxZDistance:20.0];
  [(PKHoverSettings *)self setErasePreviewAlphaFactor:0.2];
  [(PKHoverSettings *)self setScreenEdgeSizeInMillimeters:0.0];
  [(PKHoverSettings *)self setToolPreviewMaxZDistance:12.0];
  [(PKHoverSettings *)self setToolPreviewFadeOutDistance:2.5];
  [(PKHoverSettings *)self setToolPreviewAzimuthTiltMaxZDistance:25.0];
  [(PKHoverSettings *)self setDeactivateExtraDistance:5.0];
  [(PKHoverSettings *)self setPredictionTimeInterval:0.0166666667];
  [(PKHoverSettings *)self setExtraHoverPreviewDelay:0.0];
  [(PKHoverSettings *)self setInactivityTimeInterval:5.0];
  [(PKHoverSettings *)self setScribbleFocusActive:0];
  [(PKHoverSettings *)self setScribbleFlashCursorActive:0];
  [(PKHoverSettings *)self setScribbleShowWritableElementsActive:0];
  [(PKHoverSettings *)self setScribbleHoverStrongActive:0];
  [(PKHoverSettings *)self setScribbleCommitOnLift:1];
  [(PKHoverSettings *)self setScribbleLineBreakHandling:1];
  [(PKHoverSettings *)self setScribbleLineBreakMultiLineDelay:1.0];
  [(PKHoverSettings *)self setScribbleLineBreakMultiLineEnabled:1];
  [(PKHoverSettings *)self setScribbleLineBreakMultiLineMaxLines:80];
  [(PKHoverSettings *)self setScribbleIBeamActive:1];
  [(PKHoverSettings *)self setHoverAndHoldTriggerTimeInterval:0.2];
  [(PKHoverSettings *)self setHoverAndHoldActionTimeInterval:0.5];
  [(PKHoverSettings *)self setWeightedAverageAltitudeFactor:4.0];
  [(PKHoverSettings *)self setWeightedAverageAzimuthFactor:0.0];
  [(PKHoverSettings *)self setWeightedAverageLocationFactor:0.0];
  [(PKHoverSettings *)self setNumFramesExtraLatency:0];
  [(PKHoverSettings *)self setNoiseIsHeightBased:1];
  [(PKHoverSettings *)self setAltitudeJitterNoise:0.0];
  [(PKHoverSettings *)self setAzimuthJitterNoise:0.0];
  [(PKHoverSettings *)self setAltitudeOffsetNoise:0.0];
  [(PKHoverSettings *)self setAzimuthOffsetNoise:0.0];
  [(PKHoverSettings *)self setNumFramesReduceFramerate:0];
  [(PKHoverSettings *)self setAzimuthBuckets:0];
  [(PKHoverSettings *)self setAltitudeBuckets:0];

  [(PKHoverSettings *)self setToolPreviewActiveForTesting:1];
}

- (void)_scheduleSavingSettingsSoon
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__scheduledSaveSettingsTriggered object:0];

  [(PKHoverSettings *)self performSelector:sel__scheduledSaveSettingsTriggered withObject:0 afterDelay:0.1];
}

- (BOOL)toolShadowActive
{
  if ((sForceHoverSupportedForTesting & 1) == 0 && !_os_feature_enabled_impl() || !self->_toolShadowActive)
  {
    return 0;
  }

  return [(PKHoverSettings *)self toolPreviewActive];
}

- (BOOL)toolShadowActiveOnOldPencils
{
  if (!self->_toolShadowActiveOnOldPencils || ![(PKHoverSettings *)self toolPreviewActive:v2])
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (double)toolShadowMaxOpacity
{
  if ([(PKHoverSettings *)self increasedContrastEnabled])
  {

    [(PKHoverSettings *)self toolShadowMaxOpacityForIncreasedContrast];
  }

  else
  {

    [(PKHoverSettings *)self toolShadowMaxOpacityNormal];
  }

  return result;
}

- (double)toolShadowMaxOpacityInDrawingCanvas
{
  if ([(PKHoverSettings *)self increasedContrastEnabled])
  {

    [(PKHoverSettings *)self toolShadowMaxOpacityInDrawingCanvasForIncreasedContrast];
  }

  else
  {

    [(PKHoverSettings *)self toolShadowMaxOpacityInDrawingCanvasNormal];
  }

  return result;
}

- (BOOL)toolPreviewActive
{
  if (sForceHoverSupportedForTesting == 1)
  {
    return [(PKHoverSettings *)self toolPreviewActiveForTesting];
  }

  else
  {
    return [MEMORY[0x1E69DCD58] prefersHoverToolPreview];
  }
}

- (void)setToolPreviewActive:(BOOL)a3
{
  if (sForceHoverSupportedForTesting == 1)
  {
    [(PKHoverSettings *)self setToolPreviewActiveForTesting:a3];
  }

  else
  {
    [PKSettingsDaemon setPrefersPencilHoverPreviewEnabled:a3 withCompletion:0];
  }
}

@end