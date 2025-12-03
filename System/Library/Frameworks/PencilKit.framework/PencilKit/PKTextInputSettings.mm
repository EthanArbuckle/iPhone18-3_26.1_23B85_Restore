@interface PKTextInputSettings
+ (id)sharedSettings;
+ (int64_t)featureLevel;
- (BOOL)_isFeatureAvailableAndEnabled;
- (BOOL)_shouldSaveSettings;
- (BOOL)isScribbleActive;
- (NSArray)recognitionLocaleIdentifiers;
- (NSString)currentLanguageIdentifier;
- (NSString)recognitionLocaleIdentifier;
- (PKTextInputSettings)init;
- (id)settingsDictionaryRepresentation;
- (void)_loadDefaultValues;
- (void)_notifyRecognitionLocaleIdentifierDidChange;
- (void)_scheduleSavingSettingsSoon;
- (void)dealloc;
- (void)loadSettingsFromDictionary:(id)dictionary;
- (void)loadSettingsFromUserDefaults;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetToDefaultValues;
- (void)saveSettingsToUserDefaults;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation PKTextInputSettings

+ (id)sharedSettings
{
  if (qword_1ED6A4FA8 != -1)
  {
    dispatch_once(&qword_1ED6A4FA8, &__block_literal_global_9);
  }

  v3 = qword_1ED6A4FA0;

  return v3;
}

void __37__PKTextInputSettings_sharedSettings__block_invoke()
{
  v0 = objc_alloc_init(PKTextInputSettings);
  v1 = qword_1ED6A4FA0;
  qword_1ED6A4FA0 = v0;
}

- (PKTextInputSettings)init
{
  v6.receiver = self;
  v6.super_class = PKTextInputSettings;
  v2 = [(PKTextInputSettings *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PKTextInputSettings *)v2 _loadDefaultValues];
    [(PKTextInputSettings *)v3 loadSettingsFromUserDefaults];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults addObserver:v3 forKeyPath:@"ApplePencilTextInputEnabled" options:0 context:&PKTextInputEnabledDidChangeContext];
  }

  return v3;
}

- (void)dealloc
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObserver:self forKeyPath:@"ApplePencilTextInputEnabled" context:&PKTextInputEnabledDidChangeContext];

  v4.receiver = self;
  v4.super_class = PKTextInputSettings;
  [(PKTextInputSettings *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &PKTextInputEnabledDidChangeContext)
  {

    [(PKTextInputSettings *)self _notifyRecognitionLocaleIdentifierDidChange:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PKTextInputSettings;
    [(PKTextInputSettings *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_notifyRecognitionLocaleIdentifierDidChange
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKTextInputSettings__notifyRecognitionLocaleIdentifierDidChange__block_invoke;
  aBlock[3] = &unk_1E82D7148;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void __66__PKTextInputSettings__notifyRecognitionLocaleIdentifierDidChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:*(a1 + 32)];
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
  v5.super_class = PKTextInputSettings;
  [(PKTextInputSettings *)&v5 setValue:value forKey:key];
  if ([(PKTextInputSettings *)self _shouldSaveSettings])
  {
    [(PKTextInputSettings *)self _scheduleSavingSettingsSoon];
  }
}

+ (int64_t)featureLevel
{
  if (qword_1ED6A4FB8 != -1)
  {
    dispatch_once(&qword_1ED6A4FB8, &__block_literal_global_22);
  }

  return qword_1ED6A4FB0;
}

void __35__PKTextInputSettings_featureLevel__block_invoke()
{
  if (!MGGetBoolAnswer())
  {
    goto LABEL_12;
  }

  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  if ([v1 isEqualToString:@"com.apple.PreBoard"])
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  if ([v3 isEqualToString:@"com.apple.AskPermissionUI"])
  {

    goto LABEL_5;
  }

  if (qword_1ED6A4FC0 != -1)
  {
    dispatch_once(&qword_1ED6A4FC0, &__block_literal_global_616);
  }

  v5 = _MergedGlobals_121;

  if (v5 != 1)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  if (dyld_program_sdk_at_least())
  {
    v4 = 1;
    goto LABEL_13;
  }

  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F47C1058, 0}];
  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v6 bundleIdentifier];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v1, "hash")}];
  v8 = [v0 containsObject:v7];

  v4 = v8 ^ 1u;
LABEL_6:

LABEL_13:
  qword_1ED6A4FB0 = v4;
}

- (BOOL)isScribbleActive
{
  if (![(PKTextInputSettings *)self _isFeatureAvailableAndEnabled])
  {
    return 0;
  }

  if (*MEMORY[0x1E69DDA98])
  {
    v2 = +[PKTextInputLanguageSelectionController sharedInstance];
    currentLanguageIdentifiers = [v2 currentLanguageIdentifiers];
    v4 = [currentLanguageIdentifiers count] != 0;

    return v4;
  }

  return +[PKTextInputLanguageSelectionController hasSomeSupportedAndEnabledLocale];
}

- (NSString)currentLanguageIdentifier
{
  if ([(PKTextInputSettings *)self _isFeatureAvailableAndEnabled])
  {
    v2 = +[PKTextInputLanguageSelectionController sharedInstance];
    currentLanguageIdentifiers = [v2 currentLanguageIdentifiers];
    firstObject = [currentLanguageIdentifiers firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)_isFeatureAvailableAndEnabled
{
  if (!+[PKTextInputSettings featureLevel])
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"ApplePencilTextInputEnabled"];

  v5 = -[PKTextInputSettings forceUserTextInputSettingEnabled](self, "forceUserTextInputSettingEnabled") || !v4 || [v4 BOOLValue];
  return v5;
}

- (id)settingsDictionaryRepresentation
{
  v110[66] = *MEMORY[0x1E69E9840];
  v109[0] = @"interactionDisablingDelay";
  v3 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self interactionDisablingDelay];
  v108 = [v3 numberWithDouble:?];
  v110[0] = v108;
  v109[1] = @"textInputStrokeFadeOutDelay";
  v4 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self textInputStrokeFadeOutDelay];
  v107 = [v4 numberWithDouble:?];
  v110[1] = v107;
  v109[2] = @"textInputStrokeFadeOutDuration";
  v5 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self textInputStrokeFadeOutDuration];
  v106 = [v5 numberWithDouble:?];
  v110[2] = v106;
  v109[3] = @"continuousRecognitionWritingInterval";
  v6 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self continuousRecognitionWritingInterval];
  v105 = [v6 numberWithDouble:?];
  v110[3] = v105;
  v109[4] = @"continuousRecognition";
  v104 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings continuousRecognition](self, "continuousRecognition")}];
  v110[4] = v104;
  v109[5] = @"recognitionCoalescingDelay";
  v7 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self recognitionCoalescingDelay];
  v103 = [v7 numberWithDouble:?];
  v110[5] = v103;
  v109[6] = @"outOfProcessRecognition";
  v102 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings outOfProcessRecognition](self, "outOfProcessRecognition")}];
  v110[6] = v102;
  v109[7] = @"textInputViewHitTestSlackHorizontal";
  v8 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self textInputViewHitTestSlackHorizontal];
  v101 = [v8 numberWithDouble:?];
  v110[7] = v101;
  v109[8] = @"textInputViewHitTestSlackVertical";
  v9 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self textInputViewHitTestSlackVertical];
  v100 = [v9 numberWithDouble:?];
  v110[8] = v100;
  v109[9] = @"firstResponderAttractionHorizontal";
  v10 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self firstResponderAttractionHorizontal];
  v99 = [v10 numberWithDouble:?];
  v110[9] = v99;
  v109[10] = @"firstResponderAttractionVertical";
  v11 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self firstResponderAttractionVertical];
  v98 = [v11 numberWithDouble:?];
  v110[10] = v98;
  v109[11] = @"minimumWritingSpaceWidth";
  v12 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self minimumWritingSpaceWidth];
  v97 = [v12 numberWithDouble:?];
  v110[11] = v97;
  v109[12] = @"subwordGestureEndingSpeedRange";
  v13 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self subwordGestureEndingSpeedRange];
  v96 = [v13 numberWithDouble:?];
  v110[12] = v96;
  v109[13] = @"subwordGestureSpeedThreshold";
  v14 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self subwordGestureSpeedThreshold];
  v95 = [v14 numberWithDouble:?];
  v110[13] = v95;
  v109[14] = @"preventLeftoverCharsInSubwordGestures";
  v94 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings preventLeftoverCharsInSubwordGestures](self, "preventLeftoverCharsInSubwordGestures")}];
  v110[14] = v94;
  v109[15] = @"activePreviewEnabled";
  v93 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings activePreviewEnabled](self, "activePreviewEnabled")}];
  v110[15] = v93;
  v109[16] = @"styledActivePreview";
  v92 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings styledActivePreview](self, "styledActivePreview")}];
  v110[16] = v92;
  v109[17] = @"floatingBackgroundEnabled";
  v91 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings floatingBackgroundEnabled](self, "floatingBackgroundEnabled")}];
  v110[17] = v91;
  v109[18] = @"textInputStandardCommitDelay";
  v15 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self textInputStandardCommitDelay];
  v90 = [v15 numberWithDouble:?];
  v110[18] = v90;
  v109[19] = @"singleCharacterCommitDelay";
  v16 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self singleCharacterCommitDelay];
  v89 = [v16 numberWithDouble:?];
  v110[19] = v89;
  v109[20] = @"incrementalCommitWordsBack";
  v88 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKTextInputSettings incrementalCommitWordsBack](self, "incrementalCommitWordsBack")}];
  v110[20] = v88;
  v109[21] = @"debugRecognitionRequestArtificialDelay";
  v17 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self debugRecognitionRequestArtificialDelay];
  v87 = [v17 numberWithDouble:?];
  v110[21] = v87;
  v109[22] = @"debugElementFinderArtificialDelay";
  v18 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self debugElementFinderArtificialDelay];
  v86 = [v18 numberWithDouble:?];
  v110[22] = v86;
  v109[23] = @"debugFirstResponderArtificialDelay";
  v19 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self debugFirstResponderArtificialDelay];
  v85 = [v19 numberWithDouble:?];
  v110[23] = v85;
  v109[24] = @"enableOnNonEditableViews";
  v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings enableOnNonEditableViews](self, "enableOnNonEditableViews")}];
  v110[24] = v84;
  v109[25] = @"enableOnRemoteViews";
  v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings enableOnRemoteViews](self, "enableOnRemoteViews")}];
  v110[25] = v83;
  v109[26] = @"enableViewControllerSupport";
  v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings enableViewControllerSupport](self, "enableViewControllerSupport")}];
  v110[26] = v82;
  v109[27] = @"UCBPaletteEnabledNewKey";
  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings UCBPaletteEnabled](self, "UCBPaletteEnabled")}];
  v110[27] = v81;
  v109[28] = @"alwaysIncludeReturnKeyAndInputAssistantItems";
  v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings alwaysIncludeReturnKeyAndInputAssistantItems](self, "alwaysIncludeReturnKeyAndInputAssistantItems")}];
  v110[28] = v80;
  v109[29] = @"hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent2";
  v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent](self, "hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent")}];
  v110[29] = v79;
  v109[30] = @"enableReserveSpace";
  v78 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings enableReserveSpace](self, "enableReserveSpace")}];
  v110[30] = v78;
  v109[31] = @"enableReserveSpaceTapForNewlines";
  v77 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings enableReserveSpaceTapForNewlines](self, "enableReserveSpaceTapForNewlines")}];
  v110[31] = v77;
  v109[32] = @"asyncElementRequestTimeout";
  v20 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self asyncElementRequestTimeout];
  v76 = [v20 numberWithDouble:?];
  v110[32] = v76;
  v109[33] = @"drawingGestureMinimumPanDistanceThreshold";
  v21 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self drawingGestureMinimumPanDistanceThreshold];
  v75 = [v21 numberWithDouble:?];
  v110[33] = v75;
  v109[34] = @"drawingGestureMinimumScrollDistanceThreshold";
  v22 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self drawingGestureMinimumScrollDistanceThreshold];
  v74 = [v22 numberWithDouble:?];
  v110[34] = v74;
  v109[35] = @"drawingGestureTapDetectionTimeInterval2";
  v23 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self drawingGestureTapDetectionTimeInterval];
  v73 = [v23 numberWithDouble:?];
  v110[35] = v73;
  v109[36] = @"drawingGestureTapDetectionDistanceThreshold3";
  v24 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self drawingGestureTapDetectionDistanceThreshold];
  v72 = [v24 numberWithDouble:?];
  v110[36] = v72;
  v109[37] = @"drawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance";
  v25 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self drawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance];
  v71 = [v25 numberWithDouble:?];
  v110[37] = v71;
  v109[38] = @"drawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance";
  v26 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self drawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance];
  v70 = [v26 numberWithDouble:?];
  v110[38] = v70;
  v109[39] = @"drawingGestureLongPressMaxDistance";
  v27 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self drawingGestureLongPressMaxDistance];
  v69 = [v27 numberWithDouble:?];
  v110[39] = v69;
  v109[40] = @"drawingGestureLongPressDetectionTimeInterval";
  v28 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self drawingGestureLongPressDetectionTimeInterval];
  v68 = [v28 numberWithDouble:?];
  v110[40] = v68;
  v109[41] = @"inkWeight";
  v29 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self inkWeight];
  v67 = [v29 numberWithDouble:?];
  v110[41] = v67;
  v109[42] = @"lineBreakOnTapEnabled";
  v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings lineBreakOnTapEnabled](self, "lineBreakOnTapEnabled")}];
  v110[42] = v66;
  v109[43] = @"inkWeightForIncreasedContrast";
  v30 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self inkWeightForIncreasedContrast];
  v65 = [v30 numberWithDouble:?];
  v110[43] = v65;
  v109[44] = @"lineBreakVerticalBarGestureEnabled";
  v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings lineBreakVerticalBarGestureEnabled](self, "lineBreakVerticalBarGestureEnabled")}];
  v110[44] = v64;
  v109[45] = @"lineBreakVerticalBarUpToDelete";
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings lineBreakVerticalBarUpToDelete](self, "lineBreakVerticalBarUpToDelete")}];
  v110[45] = v63;
  v109[46] = @"autoLineBreakEnabled2";
  v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings autoLineBreakEnabled](self, "autoLineBreakEnabled")}];
  v110[46] = v62;
  v109[47] = @"autoLineBreakRequireWeakCursor2";
  v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings autoLineBreakRequireWeakCursor](self, "autoLineBreakRequireWeakCursor")}];
  v110[47] = v61;
  v109[48] = @"autoLineBreakVerticalDistance2";
  v31 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self autoLineBreakVerticalDistance];
  v60 = [v31 numberWithDouble:?];
  v110[48] = v60;
  v109[49] = @"autoLineBreakDualVerticalDistance2";
  v32 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self autoLineBreakDualVerticalDistance];
  v59 = [v32 numberWithDouble:?];
  v110[49] = v59;
  v109[50] = @"autoLineBreakAreaWidthFactor3";
  v33 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self autoLineBreakAreaWidthFactor];
  v58 = [v33 numberWithDouble:?];
  v110[50] = v58;
  v109[51] = @"tapToLineBreakVerticalDistance2";
  v34 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self tapToLineBreakVerticalDistance];
  v57 = [v34 numberWithDouble:?];
  v110[51] = v57;
  v109[52] = @"enableWeakCursor";
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings enableWeakCursor](self, "enableWeakCursor")}];
  v110[52] = v56;
  v109[53] = @"weakCursorVisibilityTimeout";
  v35 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self weakCursorVisibilityTimeout];
  v55 = [v35 numberWithDouble:?];
  v110[53] = v55;
  v109[54] = @"strongCursorRestoreDelay";
  v36 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self strongCursorRestoreDelay];
  v54 = [v36 numberWithDouble:?];
  v110[54] = v54;
  v109[55] = @"scratchOutMakesTheCursorStrong";
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings scratchOutMakesTheCursorStrong](self, "scratchOutMakesTheCursorStrong")}];
  v110[55] = v53;
  v109[56] = @"enableTargetedAppWorkarounds";
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings enableTargetedAppWorkarounds](self, "enableTargetedAppWorkarounds")}];
  v110[56] = v52;
  v109[57] = @"useSlidingCanvas";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings useSlidingCanvas](self, "useSlidingCanvas")}];
  v110[57] = v37;
  v109[58] = @"slidingCanvasDebugBorder";
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings slidingCanvasDebugBorder](self, "slidingCanvasDebugBorder")}];
  v110[58] = v38;
  v109[59] = @"slidingCanvasWidth2";
  v39 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self slidingCanvasWidth];
  v40 = [v39 numberWithDouble:?];
  v110[59] = v40;
  v109[60] = @"slidingCanvasHeight2";
  v41 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self slidingCanvasHeight];
  v42 = [v41 numberWithDouble:?];
  v110[60] = v42;
  v109[61] = @"useSingleComponentCanvas";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings useSingleComponentCanvas](self, "useSingleComponentCanvas")}];
  v110[61] = v43;
  v109[62] = @"useLargeHitTestArea";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings useLargeHitTestArea](self, "useLargeHitTestArea")}];
  v110[62] = v44;
  v109[63] = @"strongCursorMaximumYDistance";
  v45 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self strongCursorMaximumYDistance];
  v46 = [v45 numberWithDouble:?];
  v110[63] = v46;
  v109[64] = @"useTransformStrokesAnimation2";
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKTextInputSettings useTransformStrokesAnimation](self, "useTransformStrokesAnimation")}];
  v110[64] = v47;
  v109[65] = @"emojiConversionDelay";
  v48 = MEMORY[0x1E696AD98];
  [(PKTextInputSettings *)self emojiConversionDelay];
  v49 = [v48 numberWithDouble:?];
  v110[65] = v49;
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:66];

  return v50;
}

- (void)loadSettingsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = [dictionaryCopy objectForKeyedSubscript:@"textInputViewHitTestSlackHorizontal"];

    if (v4)
    {
      v5 = [dictionaryCopy objectForKeyedSubscript:@"textInputViewHitTestSlackHorizontal"];
      [v5 doubleValue];
      [(PKTextInputSettings *)self setTextInputViewHitTestSlackHorizontal:?];
    }

    v6 = [dictionaryCopy objectForKeyedSubscript:@"textInputViewHitTestSlackVertical"];

    if (v6)
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"textInputViewHitTestSlackVertical"];
      [v7 doubleValue];
      [(PKTextInputSettings *)self setTextInputViewHitTestSlackVertical:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"firstResponderAttractionHorizontal"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"firstResponderAttractionHorizontal"];
      [v9 doubleValue];
      [(PKTextInputSettings *)self setFirstResponderAttractionHorizontal:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"firstResponderAttractionVertical"];

    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"firstResponderAttractionVertical"];
      [v11 doubleValue];
      [(PKTextInputSettings *)self setFirstResponderAttractionVertical:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"minimumWritingSpaceWidth"];

    if (v12)
    {
      v13 = [dictionaryCopy objectForKeyedSubscript:@"minimumWritingSpaceWidth"];
      [v13 doubleValue];
      [(PKTextInputSettings *)self setMinimumWritingSpaceWidth:?];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"subwordGestureEndingSpeedRange"];

    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"subwordGestureEndingSpeedRange"];
      [v15 doubleValue];
      [(PKTextInputSettings *)self setSubwordGestureEndingSpeedRange:?];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"subwordGestureSpeedThreshold"];

    if (v16)
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"subwordGestureSpeedThreshold"];
      [v17 doubleValue];
      [(PKTextInputSettings *)self setSubwordGestureSpeedThreshold:?];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"preventLeftoverCharsInSubwordGestures"];

    if (v18)
    {
      v19 = [dictionaryCopy objectForKeyedSubscript:@"preventLeftoverCharsInSubwordGestures"];
      -[PKTextInputSettings setPreventLeftoverCharsInSubwordGestures:](self, "setPreventLeftoverCharsInSubwordGestures:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"interactionDisablingDelay"];

    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:@"interactionDisablingDelay"];
      [v21 doubleValue];
      [(PKTextInputSettings *)self setInteractionDisablingDelay:?];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"textInputStrokeFadeOutDelay"];

    if (v22)
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"textInputStrokeFadeOutDelay"];
      [v23 doubleValue];
      [(PKTextInputSettings *)self setTextInputStrokeFadeOutDelay:?];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"textInputStrokeFadeOutDuration"];

    if (v24)
    {
      v25 = [dictionaryCopy objectForKeyedSubscript:@"textInputStrokeFadeOutDuration"];
      [v25 doubleValue];
      [(PKTextInputSettings *)self setTextInputStrokeFadeOutDuration:?];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"continuousRecognitionWritingInterval"];

    if (v26)
    {
      v27 = [dictionaryCopy objectForKeyedSubscript:@"continuousRecognitionWritingInterval"];
      [v27 doubleValue];
      [(PKTextInputSettings *)self setContinuousRecognitionWritingInterval:?];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"continuousRecognition"];

    if (v28)
    {
      v29 = [dictionaryCopy objectForKeyedSubscript:@"continuousRecognition"];
      -[PKTextInputSettings setContinuousRecognition:](self, "setContinuousRecognition:", [v29 BOOLValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"recognitionCoalescingDelay"];

    if (v30)
    {
      v31 = [dictionaryCopy objectForKeyedSubscript:@"recognitionCoalescingDelay"];
      [v31 doubleValue];
      [(PKTextInputSettings *)self setRecognitionCoalescingDelay:?];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"outOfProcessRecognition"];

    if (v32)
    {
      v33 = [dictionaryCopy objectForKeyedSubscript:@"outOfProcessRecognition"];
      -[PKTextInputSettings setOutOfProcessRecognition:](self, "setOutOfProcessRecognition:", [v33 BOOLValue]);
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"activePreviewEnabled"];

    if (v34)
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"activePreviewEnabled"];
      -[PKTextInputSettings setActivePreviewEnabled:](self, "setActivePreviewEnabled:", [v35 BOOLValue]);
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"styledActivePreview"];

    if (v36)
    {
      v37 = [dictionaryCopy objectForKeyedSubscript:@"styledActivePreview"];
      -[PKTextInputSettings setStyledActivePreview:](self, "setStyledActivePreview:", [v37 BOOLValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"floatingBackgroundEnabled"];

    if (v38)
    {
      v39 = [dictionaryCopy objectForKeyedSubscript:@"floatingBackgroundEnabled"];
      -[PKTextInputSettings setFloatingBackgroundEnabled:](self, "setFloatingBackgroundEnabled:", [v39 BOOLValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"textInputStandardCommitDelay"];

    if (v40)
    {
      v41 = [dictionaryCopy objectForKeyedSubscript:@"textInputStandardCommitDelay"];
      [v41 doubleValue];
      [(PKTextInputSettings *)self setTextInputStandardCommitDelay:?];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"singleCharacterCommitDelay"];

    if (v42)
    {
      v43 = [dictionaryCopy objectForKeyedSubscript:@"singleCharacterCommitDelay"];
      [v43 doubleValue];
      [(PKTextInputSettings *)self setSingleCharacterCommitDelay:?];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"incrementalCommitWordsBack"];

    if (v44)
    {
      v45 = [dictionaryCopy objectForKeyedSubscript:@"incrementalCommitWordsBack"];
      [v45 doubleValue];
      [(PKTextInputSettings *)self setIncrementalCommitWordsBack:v46];
    }

    v47 = [dictionaryCopy objectForKeyedSubscript:@"debugRecognitionRequestArtificialDelay"];

    if (v47)
    {
      v48 = [dictionaryCopy objectForKeyedSubscript:@"debugRecognitionRequestArtificialDelay"];
      [v48 doubleValue];
      [(PKTextInputSettings *)self setDebugRecognitionRequestArtificialDelay:?];
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"debugElementFinderArtificialDelay"];

    if (v49)
    {
      v50 = [dictionaryCopy objectForKeyedSubscript:@"debugElementFinderArtificialDelay"];
      [v50 doubleValue];
      [(PKTextInputSettings *)self setDebugElementFinderArtificialDelay:?];
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"debugFirstResponderArtificialDelay"];

    if (v51)
    {
      v52 = [dictionaryCopy objectForKeyedSubscript:@"debugFirstResponderArtificialDelay"];
      [v52 doubleValue];
      [(PKTextInputSettings *)self setDebugFirstResponderArtificialDelay:?];
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"enableOnNonEditableViews"];

    if (v53)
    {
      v54 = [dictionaryCopy objectForKeyedSubscript:@"enableOnNonEditableViews"];
      -[PKTextInputSettings setEnableOnNonEditableViews:](self, "setEnableOnNonEditableViews:", [v54 BOOLValue]);
    }

    v55 = [dictionaryCopy objectForKeyedSubscript:@"enableOnRemoteViews"];

    if (v55)
    {
      v56 = [dictionaryCopy objectForKeyedSubscript:@"enableOnRemoteViews"];
      -[PKTextInputSettings setEnableOnRemoteViews:](self, "setEnableOnRemoteViews:", [v56 BOOLValue]);
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"enableViewControllerSupport"];

    if (v57)
    {
      v58 = [dictionaryCopy objectForKeyedSubscript:@"enableViewControllerSupport"];
      -[PKTextInputSettings setEnableViewControllerSupport:](self, "setEnableViewControllerSupport:", [v58 BOOLValue]);
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"UCBPaletteEnabledNewKey"];

    if (v59)
    {
      v60 = [dictionaryCopy objectForKeyedSubscript:@"UCBPaletteEnabledNewKey"];
      -[PKTextInputSettings setUCBPaletteEnabled:](self, "setUCBPaletteEnabled:", [v60 BOOLValue]);
    }

    v61 = [dictionaryCopy objectForKeyedSubscript:@"alwaysIncludeReturnKeyAndInputAssistantItems"];

    if (v61)
    {
      v62 = [dictionaryCopy objectForKeyedSubscript:@"alwaysIncludeReturnKeyAndInputAssistantItems"];
      -[PKTextInputSettings setAlwaysIncludeReturnKeyAndInputAssistantItems:](self, "setAlwaysIncludeReturnKeyAndInputAssistantItems:", [v62 BOOLValue]);
    }

    v63 = [dictionaryCopy objectForKeyedSubscript:@"hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent2"];

    if (v63)
    {
      v64 = [dictionaryCopy objectForKeyedSubscript:@"hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent2"];
      -[PKTextInputSettings setHideDefaultReturnKeyWhenSpecialReturnKeyIsPresent:](self, "setHideDefaultReturnKeyWhenSpecialReturnKeyIsPresent:", [v64 BOOLValue]);
    }

    v65 = [dictionaryCopy objectForKeyedSubscript:@"enableReserveSpace"];

    if (v65)
    {
      v66 = [dictionaryCopy objectForKeyedSubscript:@"enableReserveSpace"];
      -[PKTextInputSettings setEnableReserveSpace:](self, "setEnableReserveSpace:", [v66 BOOLValue]);
    }

    v67 = [dictionaryCopy objectForKeyedSubscript:@"enableReserveSpaceTapForNewlines"];

    if (v67)
    {
      v68 = [dictionaryCopy objectForKeyedSubscript:@"enableReserveSpaceTapForNewlines"];
      -[PKTextInputSettings setEnableReserveSpaceTapForNewlines:](self, "setEnableReserveSpaceTapForNewlines:", [v68 BOOLValue]);
    }

    v69 = [dictionaryCopy objectForKeyedSubscript:@"asyncElementRequestTimeout"];

    if (v69)
    {
      v70 = [dictionaryCopy objectForKeyedSubscript:@"asyncElementRequestTimeout"];
      [v70 doubleValue];
      [(PKTextInputSettings *)self setAsyncElementRequestTimeout:?];
    }

    v71 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureMinimumPanDistanceThreshold"];

    if (v71)
    {
      v72 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureMinimumPanDistanceThreshold"];
      [v72 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureMinimumPanDistanceThreshold:?];
    }

    v73 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureMinimumScrollDistanceThreshold"];

    if (v73)
    {
      v74 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureMinimumScrollDistanceThreshold"];
      [v74 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureMinimumScrollDistanceThreshold:?];
    }

    v75 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureTapDetectionTimeInterval2"];

    if (v75)
    {
      v76 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureTapDetectionTimeInterval2"];
      [v76 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureTapDetectionTimeInterval:?];
    }

    v77 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureTapDetectionDistanceThreshold3"];

    if (v77)
    {
      v78 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureTapDetectionDistanceThreshold3"];
      [v78 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureTapDetectionDistanceThreshold:?];
    }

    v79 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance"];

    if (v79)
    {
      v80 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance"];
      [v80 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance:?];
    }

    v81 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance"];

    if (v81)
    {
      v82 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance"];
      [v82 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance:?];
    }

    v83 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureLongPressMaxDistance"];

    if (v83)
    {
      v84 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureLongPressMaxDistance"];
      [v84 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureLongPressMaxDistance:?];
    }

    v85 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureLongPressDetectionTimeInterval"];

    if (v85)
    {
      v86 = [dictionaryCopy objectForKeyedSubscript:@"drawingGestureLongPressDetectionTimeInterval"];
      [v86 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureLongPressDetectionTimeInterval:?];
    }

    v87 = [dictionaryCopy objectForKeyedSubscript:@"inkWeight"];

    if (v87)
    {
      v88 = [dictionaryCopy objectForKeyedSubscript:@"inkWeight"];
      [v88 doubleValue];
      [(PKTextInputSettings *)self setInkWeight:?];
    }

    v89 = [dictionaryCopy objectForKeyedSubscript:@"inkWeightForIncreasedContrast"];

    if (v89)
    {
      v90 = [dictionaryCopy objectForKeyedSubscript:@"inkWeightForIncreasedContrast"];
      [v90 doubleValue];
      [(PKTextInputSettings *)self setInkWeightForIncreasedContrast:?];
    }

    v91 = [dictionaryCopy objectForKeyedSubscript:@"lineBreakOnTapEnabled"];

    if (v91)
    {
      v92 = [dictionaryCopy objectForKeyedSubscript:@"lineBreakOnTapEnabled"];
      -[PKTextInputSettings setLineBreakOnTapEnabled:](self, "setLineBreakOnTapEnabled:", [v92 BOOLValue]);
    }

    v93 = [dictionaryCopy objectForKeyedSubscript:@"lineBreakVerticalBarGestureEnabled"];

    if (v93)
    {
      v94 = [dictionaryCopy objectForKeyedSubscript:@"lineBreakVerticalBarGestureEnabled"];
      -[PKTextInputSettings setLineBreakVerticalBarGestureEnabled:](self, "setLineBreakVerticalBarGestureEnabled:", [v94 BOOLValue]);
    }

    v95 = [dictionaryCopy objectForKeyedSubscript:@"lineBreakVerticalBarUpToDelete"];

    if (v95)
    {
      v96 = [dictionaryCopy objectForKeyedSubscript:@"lineBreakVerticalBarUpToDelete"];
      -[PKTextInputSettings setLineBreakVerticalBarUpToDelete:](self, "setLineBreakVerticalBarUpToDelete:", [v96 BOOLValue]);
    }

    v97 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakEnabled2"];

    if (v97)
    {
      v98 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakEnabled2"];
      -[PKTextInputSettings setAutoLineBreakEnabled:](self, "setAutoLineBreakEnabled:", [v98 BOOLValue]);
    }

    v99 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakRequireWeakCursor2"];

    if (v99)
    {
      v100 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakRequireWeakCursor2"];
      -[PKTextInputSettings setAutoLineBreakRequireWeakCursor:](self, "setAutoLineBreakRequireWeakCursor:", [v100 BOOLValue]);
    }

    v101 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakVerticalDistance2"];

    if (v101)
    {
      v102 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakVerticalDistance2"];
      [v102 doubleValue];
      [(PKTextInputSettings *)self setAutoLineBreakVerticalDistance:?];
    }

    v103 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakDualVerticalDistance2"];

    if (v103)
    {
      v104 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakDualVerticalDistance2"];
      [v104 doubleValue];
      [(PKTextInputSettings *)self setAutoLineBreakDualVerticalDistance:?];
    }

    v105 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakAreaWidthFactor3"];

    if (v105)
    {
      v106 = [dictionaryCopy objectForKeyedSubscript:@"autoLineBreakAreaWidthFactor3"];
      [v106 doubleValue];
      [(PKTextInputSettings *)self setAutoLineBreakAreaWidthFactor:?];
    }

    v107 = [dictionaryCopy objectForKeyedSubscript:@"tapToLineBreakVerticalDistance2"];

    if (v107)
    {
      v108 = [dictionaryCopy objectForKeyedSubscript:@"tapToLineBreakVerticalDistance2"];
      [v108 doubleValue];
      [(PKTextInputSettings *)self setTapToLineBreakVerticalDistance:?];
    }

    v109 = [dictionaryCopy objectForKeyedSubscript:@"enableWeakCursor"];

    if (v109)
    {
      v110 = [dictionaryCopy objectForKeyedSubscript:@"enableWeakCursor"];
      -[PKTextInputSettings setEnableWeakCursor:](self, "setEnableWeakCursor:", [v110 BOOLValue]);
    }

    v111 = [dictionaryCopy objectForKeyedSubscript:@"weakCursorVisibilityTimeout"];

    if (v111)
    {
      v112 = [dictionaryCopy objectForKeyedSubscript:@"weakCursorVisibilityTimeout"];
      [v112 doubleValue];
      [(PKTextInputSettings *)self setWeakCursorVisibilityTimeout:?];
    }

    v113 = [dictionaryCopy objectForKeyedSubscript:@"strongCursorRestoreDelay"];

    if (v113)
    {
      v114 = [dictionaryCopy objectForKeyedSubscript:@"strongCursorRestoreDelay"];
      [v114 doubleValue];
      [(PKTextInputSettings *)self setStrongCursorRestoreDelay:?];
    }

    v115 = [dictionaryCopy objectForKeyedSubscript:@"scratchOutMakesTheCursorStrong"];

    if (v115)
    {
      v116 = [dictionaryCopy objectForKeyedSubscript:@"scratchOutMakesTheCursorStrong"];
      -[PKTextInputSettings setScratchOutMakesTheCursorStrong:](self, "setScratchOutMakesTheCursorStrong:", [v116 BOOLValue]);
    }

    v117 = [dictionaryCopy objectForKeyedSubscript:@"enableTargetedAppWorkarounds"];

    if (v117)
    {
      v118 = [dictionaryCopy objectForKeyedSubscript:@"enableTargetedAppWorkarounds"];
      -[PKTextInputSettings setEnableTargetedAppWorkarounds:](self, "setEnableTargetedAppWorkarounds:", [v118 BOOLValue]);
    }

    v119 = [dictionaryCopy objectForKeyedSubscript:@"useSlidingCanvas"];

    if (v119)
    {
      v120 = [dictionaryCopy objectForKeyedSubscript:@"useSlidingCanvas"];
      -[PKTextInputSettings setUseSlidingCanvas:](self, "setUseSlidingCanvas:", [v120 BOOLValue]);
    }

    v121 = [dictionaryCopy objectForKeyedSubscript:@"slidingCanvasDebugBorder"];

    if (v121)
    {
      v122 = [dictionaryCopy objectForKeyedSubscript:@"slidingCanvasDebugBorder"];
      -[PKTextInputSettings setSlidingCanvasDebugBorder:](self, "setSlidingCanvasDebugBorder:", [v122 BOOLValue]);
    }

    v123 = [dictionaryCopy objectForKeyedSubscript:@"slidingCanvasWidth2"];

    if (v123)
    {
      v124 = [dictionaryCopy objectForKeyedSubscript:@"slidingCanvasWidth2"];
      [v124 doubleValue];
      [(PKTextInputSettings *)self setSlidingCanvasWidth:?];
    }

    v125 = [dictionaryCopy objectForKeyedSubscript:@"slidingCanvasHeight2"];

    if (v125)
    {
      v126 = [dictionaryCopy objectForKeyedSubscript:@"slidingCanvasHeight2"];
      [v126 doubleValue];
      [(PKTextInputSettings *)self setSlidingCanvasHeight:?];
    }

    v127 = [dictionaryCopy objectForKeyedSubscript:@"useSingleComponentCanvas"];

    if (v127)
    {
      v128 = [dictionaryCopy objectForKeyedSubscript:@"useSingleComponentCanvas"];
      -[PKTextInputSettings setUseSingleComponentCanvas:](self, "setUseSingleComponentCanvas:", [v128 BOOLValue]);
    }

    v129 = [dictionaryCopy objectForKeyedSubscript:@"useLargeHitTestArea"];

    if (v129)
    {
      v130 = [dictionaryCopy objectForKeyedSubscript:@"useLargeHitTestArea"];
      -[PKTextInputSettings setUseLargeHitTestArea:](self, "setUseLargeHitTestArea:", [v130 BOOLValue]);
    }

    v131 = [dictionaryCopy objectForKeyedSubscript:@"strongCursorMaximumYDistance"];

    if (v131)
    {
      v132 = [dictionaryCopy objectForKeyedSubscript:@"strongCursorMaximumYDistance"];
      [v132 doubleValue];
      [(PKTextInputSettings *)self setStrongCursorMaximumYDistance:?];
    }

    v133 = [dictionaryCopy objectForKeyedSubscript:@"useTransformStrokesAnimation2"];

    if (v133)
    {
      v134 = [dictionaryCopy objectForKeyedSubscript:@"useTransformStrokesAnimation2"];
      -[PKTextInputSettings setUseTransformStrokesAnimation:](self, "setUseTransformStrokesAnimation:", [v134 BOOLValue]);
    }

    v135 = [dictionaryCopy objectForKeyedSubscript:@"emojiConversionDelay"];

    if (v135)
    {
      v136 = [dictionaryCopy objectForKeyedSubscript:@"emojiConversionDelay"];
      [v136 doubleValue];
      [(PKTextInputSettings *)self setEmojiConversionDelay:?];
    }
  }
}

- (void)loadSettingsFromUserDefaults
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults dictionaryForKey:@"com.apple.PencilKit.TextInputDefaults"];

  [(PKTextInputSettings *)self loadSettingsFromDictionary:v4];
}

- (void)saveSettingsToUserDefaults
{
  if ([(PKTextInputSettings *)self _shouldSaveSettings])
  {
    settingsDictionaryRepresentation = [(PKTextInputSettings *)self settingsDictionaryRepresentation];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:settingsDictionaryRepresentation forKey:@"com.apple.PencilKit.TextInputDefaults" inDomain:*MEMORY[0x1E696A400]];
  }
}

- (void)resetToDefaultValues
{
  [(PKTextInputSettings *)self _loadDefaultValues];
  if ([(PKTextInputSettings *)self _shouldSaveSettings])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:0 forKey:@"com.apple.PencilKit.TextInputDefaults" inDomain:*MEMORY[0x1E696A400]];
  }
}

- (NSString)recognitionLocaleIdentifier
{
  recognitionLocaleIdentifiers = [(PKTextInputSettings *)self recognitionLocaleIdentifiers];
  firstObject = [recognitionLocaleIdentifiers firstObject];

  return firstObject;
}

- (NSArray)recognitionLocaleIdentifiers
{
  if ([(PKTextInputSettings *)self _isFeatureAvailableAndEnabled])
  {
    v2 = +[PKTextInputLanguageSelectionController sharedInstance];
    currentLanguageIdentifiers = [v2 currentLanguageIdentifiers];
  }

  else
  {
    currentLanguageIdentifiers = 0;
  }

  return currentLanguageIdentifiers;
}

- (void)_loadDefaultValues
{
  [(PKTextInputSettings *)self setTextInputViewHitTestSlackHorizontal:10.0];
  [(PKTextInputSettings *)self setTextInputViewHitTestSlackVertical:30.0];
  [(PKTextInputSettings *)self setFirstResponderAttractionHorizontal:30.0];
  [(PKTextInputSettings *)self setFirstResponderAttractionVertical:60.0];
  [(PKTextInputSettings *)self setMinimumWritingSpaceWidth:60.0];
  [(PKTextInputSettings *)self setSubwordGestureEndingSpeedRange:0.8];
  [(PKTextInputSettings *)self setSubwordGestureSpeedThreshold:50.0];
  [(PKTextInputSettings *)self setPreventLeftoverCharsInSubwordGestures:0];
  [(PKTextInputSettings *)self setInteractionDisablingDelay:15.0];
  [(PKTextInputSettings *)self setOutOfProcessRecognition:1];
  [(PKTextInputSettings *)self setTextInputStrokeFadeOutDuration:0.3];
  [(PKTextInputSettings *)self setTextInputStrokeFadeOutDelay:0.0];
  [(PKTextInputSettings *)self setContinuousRecognition:1];
  [(PKTextInputSettings *)self setContinuousRecognitionWritingInterval:1.0];
  [(PKTextInputSettings *)self setRecognitionCoalescingDelay:0.3];
  [(PKTextInputSettings *)self setActivePreviewEnabled:0];
  [(PKTextInputSettings *)self setStyledActivePreview:0];
  [(PKTextInputSettings *)self setFloatingBackgroundEnabled:0];
  [(PKTextInputSettings *)self setTextInputStandardCommitDelay:0.7];
  [(PKTextInputSettings *)self setSingleCharacterCommitDelay:0.5];
  [(PKTextInputSettings *)self setIncrementalCommitWordsBack:1];
  [(PKTextInputSettings *)self setDebugRecognitionRequestArtificialDelay:0.0];
  [(PKTextInputSettings *)self setDebugElementFinderArtificialDelay:0.0];
  [(PKTextInputSettings *)self setDebugFirstResponderArtificialDelay:0.0];
  [(PKTextInputSettings *)self setEnableOnNonEditableViews:0];
  [(PKTextInputSettings *)self setEnableOnRemoteViews:1];
  [(PKTextInputSettings *)self setEnableViewControllerSupport:0];
  [(PKTextInputSettings *)self setEnableReserveSpace:1];
  [(PKTextInputSettings *)self setEnableReserveSpaceTapForNewlines:0];
  [(PKTextInputSettings *)self setUCBPaletteEnabled:1];
  [(PKTextInputSettings *)self setAlwaysIncludeReturnKeyAndInputAssistantItems:0];
  [(PKTextInputSettings *)self setHideDefaultReturnKeyWhenSpecialReturnKeyIsPresent:1];
  [(PKTextInputSettings *)self setAsyncElementRequestTimeout:0.5];
  [(PKTextInputSettings *)self setDrawingGestureMinimumPanDistanceThreshold:16.0];
  [(PKTextInputSettings *)self setDrawingGestureMinimumScrollDistanceThreshold:80.0];
  [(PKTextInputSettings *)self setDrawingGestureTapDetectionTimeInterval:0.15];
  [(PKTextInputSettings *)self setDrawingGestureTapDetectionDistanceThreshold:5.25];
  [(PKTextInputSettings *)self setDrawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance:60.0];
  [(PKTextInputSettings *)self setDrawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance:20.0];
  [(PKTextInputSettings *)self setDrawingGestureLongPressMaxDistance:4.0];
  [(PKTextInputSettings *)self setDrawingGestureLongPressDetectionTimeInterval:0.5];
  [(PKTextInputSettings *)self setInkWeight:-0.6];
  [(PKTextInputSettings *)self setInkWeightForIncreasedContrast:-0.4];
  [(PKTextInputSettings *)self setLineBreakOnTapEnabled:1];
  [(PKTextInputSettings *)self setLineBreakVerticalBarGestureEnabled:0];
  [(PKTextInputSettings *)self setLineBreakVerticalBarUpToDelete:1];
  [(PKTextInputSettings *)self setAutoLineBreakEnabled:1];
  [(PKTextInputSettings *)self setAutoLineBreakRequireWeakCursor:0];
  [(PKTextInputSettings *)self setAutoLineBreakVerticalDistance:120.0];
  [(PKTextInputSettings *)self setAutoLineBreakDualVerticalDistance:120.0];
  [(PKTextInputSettings *)self setAutoLineBreakAreaWidthFactor:0.1];
  [(PKTextInputSettings *)self setTapToLineBreakVerticalDistance:2.0];
  [(PKTextInputSettings *)self setEnableWeakCursor:1];
  [(PKTextInputSettings *)self setWeakCursorVisibilityTimeout:1.0];
  [(PKTextInputSettings *)self setStrongCursorRestoreDelay:1.0];
  [(PKTextInputSettings *)self setScratchOutMakesTheCursorStrong:1];
  [(PKTextInputSettings *)self setEnableTargetedAppWorkarounds:1];
  [(PKTextInputSettings *)self setUseSlidingCanvas:1];
  [(PKTextInputSettings *)self setSlidingCanvasDebugBorder:0];
  [(PKTextInputSettings *)self setSlidingCanvasWidth:640.0];
  [(PKTextInputSettings *)self setSlidingCanvasHeight:400.0];
  [(PKTextInputSettings *)self setUseSingleComponentCanvas:1];
  [(PKTextInputSettings *)self setUseLargeHitTestArea:0];
  [(PKTextInputSettings *)self setStrongCursorMaximumYDistance:120.0];
  [(PKTextInputSettings *)self setUseTransformStrokesAnimation:1];

  [(PKTextInputSettings *)self setEmojiConversionDelay:1.0];
}

- (void)_scheduleSavingSettingsSoon
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__scheduledSaveSettingsTriggered object:0];

  [(PKTextInputSettings *)self performSelector:sel__scheduledSaveSettingsTriggered withObject:0 afterDelay:0.1];
}

@end