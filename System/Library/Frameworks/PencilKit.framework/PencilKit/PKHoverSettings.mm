@interface PKHoverSettings
+ (BOOL)allowDoubleTapOnlyWithPencilHover;
+ (BOOL)isHoverEnabled;
+ (id)sharedSettings;
+ (void)checkIfHoverIsEnabled:(id)enabled;
+ (void)checkIfHoverIsSupported:(id)supported;
+ (void)prewarmIfNecessary;
- (BOOL)_shouldSaveSettings;
- (BOOL)toolPreviewActive;
- (BOOL)toolShadowActive;
- (BOOL)toolShadowActiveOnOldPencils;
- (PKHoverSettings)init;
- (double)toolShadowMaxOpacity;
- (double)toolShadowMaxOpacityInDrawingCanvas;
- (id)settingsDictionaryRepresentation;
- (void)_darkerSystemColorsStatusDidChange:(id)change;
- (void)_loadDefaultValues;
- (void)_scheduleSavingSettingsSoon;
- (void)dealloc;
- (void)loadSettingsFromDictionary:(id)dictionary;
- (void)loadSettingsFromUserDefaults;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetToDefaultValues;
- (void)saveSettingsToUserDefaults;
- (void)setToolPreviewActive:(BOOL)active;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation PKHoverSettings

+ (void)prewarmIfNecessary
{
  if (+[PKHoverSettings isHoverActive])
  {

    +[PKSettingsDaemon prewarmServiceConnectionIfNeeded];
  }
}

+ (void)checkIfHoverIsSupported:(id)supported
{
  supportedCopy = supported;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKHoverSettings_checkIfHoverIsSupported___block_invoke;
  block[3] = &unk_1E82D6F70;
  v7 = supportedCopy;
  v5 = supportedCopy;
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

+ (void)checkIfHoverIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PKHoverSettings_checkIfHoverIsEnabled___block_invoke;
  v7[3] = &unk_1E82D7760;
  v8 = enabledCopy;
  selfCopy = self;
  v6 = enabledCopy;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__darkerSystemColorsStatusDidChange_ name:*MEMORY[0x1E69DD8B8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_didAddObserver)
  {
    [(NSUserDefaults *)self->_pencilDefaults removeObserver:self forKeyPath:@"HoverDefaultsV14" context:kKVOContext_0];
  }

  v4.receiver = self;
  v4.super_class = PKHoverSettings;
  [(PKHoverSettings *)&v4 dealloc];
}

- (void)_darkerSystemColorsStatusDidChange:(id)change
{
  v4 = UIAccessibilityDarkerSystemColorsEnabled();

  [(PKHoverSettings *)self setIncreasedContrastEnabled:v4];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (kKVOContext_0 == context && [pathCopy isEqualToString:@"HoverDefaultsV14"])
  {
    [(PKHoverSettings *)self loadSettingsFromUserDefaults];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PKHoverSettings;
    [(PKHoverSettings *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)_shouldSaveSettings
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

  return v4;
}

- (void)setValue:(id)value forKey:(id)key
{
  v5.receiver = self;
  v5.super_class = PKHoverSettings;
  [(PKHoverSettings *)&v5 setValue:value forKey:key];
  if ([(PKHoverSettings *)self _shouldSaveSettings])
  {
    [(PKHoverSettings *)self _scheduleSavingSettingsSoon];
  }
}

+ (BOOL)isHoverEnabled
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ([self isHoverActive] && (v2 = IOHIDEventSystemClientCreateWithType()) != 0)
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
  if (![self isHoverActive])
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
          bOOLValue = [v10 BOOLValue];

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

  bOOLValue = 0;
LABEL_14:

  CFRelease(v3);
  return bOOLValue;
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

- (void)loadSettingsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = [dictionaryCopy objectForKeyedSubscript:@"showDebugLayer"];

    if (v4)
    {
      v5 = [dictionaryCopy objectForKeyedSubscript:@"showDebugLayer"];
      -[PKHoverSettings setShowDebugLayer:](self, "setShowDebugLayer:", [v5 BOOLValue]);
    }

    v6 = [dictionaryCopy objectForKeyedSubscript:@"supportTouchPad"];

    if (v6)
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"supportTouchPad"];
      -[PKHoverSettings setSupportTouchPad:](self, "setSupportTouchPad:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"debugCursorType"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"debugCursorType"];
      -[PKHoverSettings setDebugCursorType:](self, "setDebugCursorType:", [v9 integerValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"tooltipsActive"];

    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"tooltipsActive"];
      -[PKHoverSettings setTooltipsActive:](self, "setTooltipsActive:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"snapToShapeActive"];

    if (v12)
    {
      v13 = [dictionaryCopy objectForKeyedSubscript:@"snapToShapeActive"];
      -[PKHoverSettings setSnapToShapeActive:](self, "setSnapToShapeActive:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"toolIndicatorActive"];

    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"toolIndicatorActive"];
      -[PKHoverSettings setToolIndicatorActive:](self, "setToolIndicatorActive:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowActive"];

    if (v16)
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowActive"];
      -[PKHoverSettings setToolShadowActive:](self, "setToolShadowActive:", [v17 BOOLValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowActiveOutsideNotes"];

    if (v18)
    {
      v19 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowActiveOutsideNotes"];
      -[PKHoverSettings setToolShadowActiveOutsideNotes:](self, "setToolShadowActiveOutsideNotes:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowLocationWorkaround"];

    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowLocationWorkaround"];
      -[PKHoverSettings setToolShadowLocationWorkaround:](self, "setToolShadowLocationWorkaround:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowActiveOnOldPencils"];

    if (v22)
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowActiveOnOldPencils"];
      -[PKHoverSettings setToolShadowActiveOnOldPencils:](self, "setToolShadowActiveOnOldPencils:", [v23 BOOLValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxOpacityNormal"];

    if (v24)
    {
      v25 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxOpacityNormal"];
      [v25 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxOpacityNormal:?];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxOpacityForIncreasedContrast"];

    if (v26)
    {
      v27 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxOpacityForIncreasedContrast"];
      [v27 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxOpacityForIncreasedContrast:?];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxOpacityInDrawingCanvasNormal"];

    if (v28)
    {
      v29 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxOpacityInDrawingCanvasNormal"];
      [v29 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxOpacityInDrawingCanvasNormal:?];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxOpacityInDrawingCanvasForIncreasedContrast"];

    if (v30)
    {
      v31 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxOpacityInDrawingCanvasForIncreasedContrast"];
      [v31 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxOpacityInDrawingCanvasForIncreasedContrast:?];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowFadeInDistance"];

    if (v32)
    {
      v33 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowFadeInDistance"];
      [v33 doubleValue];
      [(PKHoverSettings *)self setToolShadowFadeInDistance:?];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxBlurRadius"];

    if (v34)
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMaxBlurRadius"];
      [v35 doubleValue];
      [(PKHoverSettings *)self setToolShadowMaxBlurRadius:?];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMovementSpeedHideThreshold"];

    if (v36)
    {
      v37 = [dictionaryCopy objectForKeyedSubscript:@"toolShadowMovementSpeedHideThreshold"];
      [v37 doubleValue];
      [(PKHoverSettings *)self setToolShadowMovementSpeedHideThreshold:?];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"toolPreviewShouldWaitForHoverAndHold"];

    if (v38)
    {
      v39 = [dictionaryCopy objectForKeyedSubscript:@"toolPreviewShouldWaitForHoverAndHold"];
      -[PKHoverSettings setToolPreviewShouldWaitForHoverAndHold:](self, "setToolPreviewShouldWaitForHoverAndHold:", [v39 BOOLValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"toolSwitchIndicatorActive"];

    if (v40)
    {
      v41 = [dictionaryCopy objectForKeyedSubscript:@"toolSwitchIndicatorActive"];
      -[PKHoverSettings setToolSwitchIndicatorActive:](self, "setToolSwitchIndicatorActive:", [v41 BOOLValue]);
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"avoidSwitchingToolsOutsideHoverRange"];

    if (v42)
    {
      v43 = [dictionaryCopy objectForKeyedSubscript:@"avoidSwitchingToolsOutsideHoverRange"];
      -[PKHoverSettings setAvoidSwitchingToolsOutsideHoverRange:](self, "setAvoidSwitchingToolsOutsideHoverRange:", [v43 BOOLValue]);
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"screenEdgeSizeInMillimeters"];

    if (v44)
    {
      v45 = [dictionaryCopy objectForKeyedSubscript:@"screenEdgeSizeInMillimeters"];
      [v45 doubleValue];
      [(PKHoverSettings *)self setScreenEdgeSizeInMillimeters:?];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"maxZDistance"];

    if (v46)
    {
      v47 = [dictionaryCopy objectForKeyedSubscript:@"maxZDistance"];
      [v47 doubleValue];
      [(PKHoverSettings *)self setMaxZDistance:?];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"erasePreviewAlphaFactor"];

    if (v48)
    {
      v49 = [dictionaryCopy objectForKeyedSubscript:@"erasePreviewAlphaFactor"];
      [v49 doubleValue];
      [(PKHoverSettings *)self setErasePreviewAlphaFactor:?];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"toolPreviewMaxZDistance"];

    if (v50)
    {
      v51 = [dictionaryCopy objectForKeyedSubscript:@"toolPreviewMaxZDistance"];
      [v51 doubleValue];
      [(PKHoverSettings *)self setToolPreviewMaxZDistance:?];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"toolPreviewFadeOutDistance"];

    if (v52)
    {
      v53 = [dictionaryCopy objectForKeyedSubscript:@"toolPreviewFadeOutDistance"];
      [v53 doubleValue];
      [(PKHoverSettings *)self setToolPreviewFadeOutDistance:?];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"toolPreviewAzimuthTiltMaxZDistance"];

    if (v54)
    {
      v55 = [dictionaryCopy objectForKeyedSubscript:@"toolPreviewAzimuthTiltMaxZDistance"];
      [v55 doubleValue];
      [(PKHoverSettings *)self setToolPreviewAzimuthTiltMaxZDistance:?];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"deactivateExtraDistance"];

    if (v56)
    {
      v57 = [dictionaryCopy objectForKeyedSubscript:@"deactivateExtraDistance"];
      [v57 doubleValue];
      [(PKHoverSettings *)self setDeactivateExtraDistance:?];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"predictionTimeInterval"];

    if (v58)
    {
      v59 = [dictionaryCopy objectForKeyedSubscript:@"predictionTimeInterval"];
      [v59 doubleValue];
      [(PKHoverSettings *)self setPredictionTimeInterval:?];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"extraHoverPreviewDelay"];

    if (v60)
    {
      v61 = [dictionaryCopy objectForKeyedSubscript:@"extraHoverPreviewDelay"];
      [v61 doubleValue];
      [(PKHoverSettings *)self setExtraHoverPreviewDelay:?];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"inactivityTimeInterval"];

    if (v62)
    {
      v63 = [dictionaryCopy objectForKeyedSubscript:@"inactivityTimeInterval"];
      [v63 doubleValue];
      [(PKHoverSettings *)self setInactivityTimeInterval:?];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"hoverAndHoldTriggerTimeInterval"];

    if (v64)
    {
      v65 = [dictionaryCopy objectForKeyedSubscript:@"hoverAndHoldTriggerTimeInterval"];
      [v65 doubleValue];
      [(PKHoverSettings *)self setHoverAndHoldTriggerTimeInterval:?];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"hoverAndHoldActionTimeInterval"];

    if (v66)
    {
      v67 = [dictionaryCopy objectForKeyedSubscript:@"hoverAndHoldActionTimeInterval"];
      [v67 doubleValue];
      [(PKHoverSettings *)self setHoverAndHoldActionTimeInterval:?];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"numFramesExtraLatency"];

    if (v68)
    {
      v69 = [dictionaryCopy objectForKeyedSubscript:@"numFramesExtraLatency"];
      -[PKHoverSettings setNumFramesExtraLatency:](self, "setNumFramesExtraLatency:", [v69 integerValue]);
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"numFramesReduceFramerate"];

    if (v70)
    {
      v71 = [dictionaryCopy objectForKeyedSubscript:@"numFramesReduceFramerate"];
      -[PKHoverSettings setNumFramesReduceFramerate:](self, "setNumFramesReduceFramerate:", [v71 integerValue]);
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"weightedAverageLocationFactor"];

    if (v72)
    {
      v73 = [dictionaryCopy objectForKeyedSubscript:@"weightedAverageLocationFactor"];
      [v73 doubleValue];
      [(PKHoverSettings *)self setWeightedAverageLocationFactor:?];
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"weightedAverageAzimuthFactor"];

    if (v74)
    {
      v75 = [dictionaryCopy objectForKeyedSubscript:@"weightedAverageAzimuthFactor"];
      [v75 doubleValue];
      [(PKHoverSettings *)self setWeightedAverageAzimuthFactor:?];
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"weightedAverageAltitudeFactor"];

    if (v76)
    {
      v77 = [dictionaryCopy objectForKeyedSubscript:@"weightedAverageAltitudeFactor"];
      [v77 doubleValue];
      [(PKHoverSettings *)self setWeightedAverageAltitudeFactor:?];
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"scribbleFocusActive"];

    if (v78)
    {
      v79 = [dictionaryCopy objectForKeyedSubscript:@"scribbleFocusActive"];
      -[PKHoverSettings setScribbleFocusActive:](self, "setScribbleFocusActive:", [v79 BOOLValue]);
    }

    v80 = [dictionaryCopy objectForKeyedSubscript:@"scribbleFlashCursorActive"];

    if (v80)
    {
      v81 = [dictionaryCopy objectForKeyedSubscript:@"scribbleFlashCursorActive"];
      -[PKHoverSettings setScribbleFlashCursorActive:](self, "setScribbleFlashCursorActive:", [v81 BOOLValue]);
    }

    v82 = [dictionaryCopy objectForKeyedSubscript:@"scribbleShowWritableElementsActive"];

    if (v82)
    {
      v83 = [dictionaryCopy objectForKeyedSubscript:@"scribbleShowWritableElementsActive"];
      -[PKHoverSettings setScribbleShowWritableElementsActive:](self, "setScribbleShowWritableElementsActive:", [v83 BOOLValue]);
    }

    v84 = [dictionaryCopy objectForKeyedSubscript:@"scribbleHoverStrongActive"];

    if (v84)
    {
      v85 = [dictionaryCopy objectForKeyedSubscript:@"scribbleHoverStrongActive"];
      -[PKHoverSettings setScribbleHoverStrongActive:](self, "setScribbleHoverStrongActive:", [v85 BOOLValue]);
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"scribbleCommitOnLift"];

    if (v86)
    {
      v87 = [dictionaryCopy objectForKeyedSubscript:@"scribbleCommitOnLift"];
      -[PKHoverSettings setScribbleCommitOnLift:](self, "setScribbleCommitOnLift:", [v87 BOOLValue]);
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"scribbleLineBreakHandling"];

    if (v88)
    {
      v89 = [dictionaryCopy objectForKeyedSubscript:@"scribbleLineBreakHandling"];
      -[PKHoverSettings setScribbleLineBreakHandling:](self, "setScribbleLineBreakHandling:", [v89 BOOLValue]);
    }

    v90 = [dictionaryCopy objectForKeyedSubscript:@"scribbleLineBreakMultiLineDelay"];

    if (v90)
    {
      v91 = [dictionaryCopy objectForKeyedSubscript:@"scribbleLineBreakMultiLineDelay"];
      [v91 doubleValue];
      [(PKHoverSettings *)self setScribbleLineBreakMultiLineDelay:?];
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"scribbleLineBreakMultiLineEnabled"];

    if (v92)
    {
      v93 = [dictionaryCopy objectForKeyedSubscript:@"scribbleLineBreakMultiLineEnabled"];
      -[PKHoverSettings setScribbleLineBreakMultiLineEnabled:](self, "setScribbleLineBreakMultiLineEnabled:", [v93 BOOLValue]);
    }

    v94 = [dictionaryCopy objectForKeyedSubscript:@"scribbleLineBreakMultiLineMaxLines"];

    if (v94)
    {
      v95 = [dictionaryCopy objectForKeyedSubscript:@"scribbleLineBreakMultiLineMaxLines"];
      -[PKHoverSettings setScribbleLineBreakMultiLineMaxLines:](self, "setScribbleLineBreakMultiLineMaxLines:", [v95 intValue]);
    }

    v96 = [dictionaryCopy objectForKeyedSubscript:@"scribbleIBeamActive"];

    if (v96)
    {
      v97 = [dictionaryCopy objectForKeyedSubscript:@"scribbleIBeamActive"];
      -[PKHoverSettings setScribbleIBeamActive:](self, "setScribbleIBeamActive:", [v97 BOOLValue]);
    }

    v98 = [dictionaryCopy objectForKeyedSubscript:@"azimuthJitterNoise"];

    if (v98)
    {
      v99 = [dictionaryCopy objectForKeyedSubscript:@"azimuthJitterNoise"];
      [v99 doubleValue];
      [(PKHoverSettings *)self setAzimuthJitterNoise:?];
    }

    v100 = [dictionaryCopy objectForKeyedSubscript:@"altitudeJitterNoise"];

    if (v100)
    {
      v101 = [dictionaryCopy objectForKeyedSubscript:@"altitudeJitterNoise"];
      [v101 doubleValue];
      [(PKHoverSettings *)self setAltitudeJitterNoise:?];
    }

    v102 = [dictionaryCopy objectForKeyedSubscript:@"azimuthOffsetNoise"];

    if (v102)
    {
      v103 = [dictionaryCopy objectForKeyedSubscript:@"azimuthOffsetNoise"];
      [v103 doubleValue];
      [(PKHoverSettings *)self setAzimuthOffsetNoise:?];
    }

    v104 = [dictionaryCopy objectForKeyedSubscript:@"altitudeOffsetNoise"];

    if (v104)
    {
      v105 = [dictionaryCopy objectForKeyedSubscript:@"altitudeOffsetNoise"];
      [v105 doubleValue];
      [(PKHoverSettings *)self setAltitudeOffsetNoise:?];
    }

    v106 = [dictionaryCopy objectForKeyedSubscript:@"azimuthBuckets"];

    if (v106)
    {
      v107 = [dictionaryCopy objectForKeyedSubscript:@"azimuthBuckets"];
      -[PKHoverSettings setAzimuthBuckets:](self, "setAzimuthBuckets:", [v107 intValue]);
    }

    v108 = [dictionaryCopy objectForKeyedSubscript:@"altitudeBuckets"];

    if (v108)
    {
      v109 = [dictionaryCopy objectForKeyedSubscript:@"altitudeBuckets"];
      -[PKHoverSettings setAltitudeBuckets:](self, "setAltitudeBuckets:", [v109 intValue]);
    }

    v110 = [dictionaryCopy objectForKeyedSubscript:@"noiseIsHeightBased"];

    if (v110)
    {
      v111 = [dictionaryCopy objectForKeyedSubscript:@"noiseIsHeightBased"];
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
    settingsDictionaryRepresentation = [(PKHoverSettings *)self settingsDictionaryRepresentation];
    [(NSUserDefaults *)self->_pencilDefaults setObject:settingsDictionaryRepresentation forKey:@"HoverDefaultsV14"];
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

- (void)setToolPreviewActive:(BOOL)active
{
  if (sForceHoverSupportedForTesting == 1)
  {
    [(PKHoverSettings *)self setToolPreviewActiveForTesting:active];
  }

  else
  {
    [PKSettingsDaemon setPrefersPencilHoverPreviewEnabled:active withCompletion:0];
  }
}

@end