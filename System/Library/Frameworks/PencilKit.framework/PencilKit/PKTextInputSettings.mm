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
- (void)loadSettingsFromDictionary:(id)a3;
- (void)loadSettingsFromUserDefaults;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetToDefaultValues;
- (void)saveSettingsToUserDefaults;
- (void)setValue:(id)a3 forKey:(id)a4;
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
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v4 addObserver:v3 forKeyPath:@"ApplePencilTextInputEnabled" options:0 context:&PKTextInputEnabledDidChangeContext];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"ApplePencilTextInputEnabled" context:&PKTextInputEnabledDidChangeContext];

  v4.receiver = self;
  v4.super_class = PKTextInputSettings;
  [(PKTextInputSettings *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &PKTextInputEnabledDidChangeContext)
  {

    [(PKTextInputSettings *)self _notifyRecognitionLocaleIdentifierDidChange:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PKTextInputSettings;
    [(PKTextInputSettings *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.Preferences"];

  return v4;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKTextInputSettings;
  [(PKTextInputSettings *)&v5 setValue:a3 forKey:a4];
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
    v3 = [v2 currentLanguageIdentifiers];
    v4 = [v3 count] != 0;

    return v4;
  }

  return +[PKTextInputLanguageSelectionController hasSomeSupportedAndEnabledLocale];
}

- (NSString)currentLanguageIdentifier
{
  if ([(PKTextInputSettings *)self _isFeatureAvailableAndEnabled])
  {
    v2 = +[PKTextInputLanguageSelectionController sharedInstance];
    v3 = [v2 currentLanguageIdentifiers];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isFeatureAvailableAndEnabled
{
  if (!+[PKTextInputSettings featureLevel])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"ApplePencilTextInputEnabled"];

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

- (void)loadSettingsFromDictionary:(id)a3
{
  v137 = a3;
  if (v137)
  {
    v4 = [v137 objectForKeyedSubscript:@"textInputViewHitTestSlackHorizontal"];

    if (v4)
    {
      v5 = [v137 objectForKeyedSubscript:@"textInputViewHitTestSlackHorizontal"];
      [v5 doubleValue];
      [(PKTextInputSettings *)self setTextInputViewHitTestSlackHorizontal:?];
    }

    v6 = [v137 objectForKeyedSubscript:@"textInputViewHitTestSlackVertical"];

    if (v6)
    {
      v7 = [v137 objectForKeyedSubscript:@"textInputViewHitTestSlackVertical"];
      [v7 doubleValue];
      [(PKTextInputSettings *)self setTextInputViewHitTestSlackVertical:?];
    }

    v8 = [v137 objectForKeyedSubscript:@"firstResponderAttractionHorizontal"];

    if (v8)
    {
      v9 = [v137 objectForKeyedSubscript:@"firstResponderAttractionHorizontal"];
      [v9 doubleValue];
      [(PKTextInputSettings *)self setFirstResponderAttractionHorizontal:?];
    }

    v10 = [v137 objectForKeyedSubscript:@"firstResponderAttractionVertical"];

    if (v10)
    {
      v11 = [v137 objectForKeyedSubscript:@"firstResponderAttractionVertical"];
      [v11 doubleValue];
      [(PKTextInputSettings *)self setFirstResponderAttractionVertical:?];
    }

    v12 = [v137 objectForKeyedSubscript:@"minimumWritingSpaceWidth"];

    if (v12)
    {
      v13 = [v137 objectForKeyedSubscript:@"minimumWritingSpaceWidth"];
      [v13 doubleValue];
      [(PKTextInputSettings *)self setMinimumWritingSpaceWidth:?];
    }

    v14 = [v137 objectForKeyedSubscript:@"subwordGestureEndingSpeedRange"];

    if (v14)
    {
      v15 = [v137 objectForKeyedSubscript:@"subwordGestureEndingSpeedRange"];
      [v15 doubleValue];
      [(PKTextInputSettings *)self setSubwordGestureEndingSpeedRange:?];
    }

    v16 = [v137 objectForKeyedSubscript:@"subwordGestureSpeedThreshold"];

    if (v16)
    {
      v17 = [v137 objectForKeyedSubscript:@"subwordGestureSpeedThreshold"];
      [v17 doubleValue];
      [(PKTextInputSettings *)self setSubwordGestureSpeedThreshold:?];
    }

    v18 = [v137 objectForKeyedSubscript:@"preventLeftoverCharsInSubwordGestures"];

    if (v18)
    {
      v19 = [v137 objectForKeyedSubscript:@"preventLeftoverCharsInSubwordGestures"];
      -[PKTextInputSettings setPreventLeftoverCharsInSubwordGestures:](self, "setPreventLeftoverCharsInSubwordGestures:", [v19 BOOLValue]);
    }

    v20 = [v137 objectForKeyedSubscript:@"interactionDisablingDelay"];

    if (v20)
    {
      v21 = [v137 objectForKeyedSubscript:@"interactionDisablingDelay"];
      [v21 doubleValue];
      [(PKTextInputSettings *)self setInteractionDisablingDelay:?];
    }

    v22 = [v137 objectForKeyedSubscript:@"textInputStrokeFadeOutDelay"];

    if (v22)
    {
      v23 = [v137 objectForKeyedSubscript:@"textInputStrokeFadeOutDelay"];
      [v23 doubleValue];
      [(PKTextInputSettings *)self setTextInputStrokeFadeOutDelay:?];
    }

    v24 = [v137 objectForKeyedSubscript:@"textInputStrokeFadeOutDuration"];

    if (v24)
    {
      v25 = [v137 objectForKeyedSubscript:@"textInputStrokeFadeOutDuration"];
      [v25 doubleValue];
      [(PKTextInputSettings *)self setTextInputStrokeFadeOutDuration:?];
    }

    v26 = [v137 objectForKeyedSubscript:@"continuousRecognitionWritingInterval"];

    if (v26)
    {
      v27 = [v137 objectForKeyedSubscript:@"continuousRecognitionWritingInterval"];
      [v27 doubleValue];
      [(PKTextInputSettings *)self setContinuousRecognitionWritingInterval:?];
    }

    v28 = [v137 objectForKeyedSubscript:@"continuousRecognition"];

    if (v28)
    {
      v29 = [v137 objectForKeyedSubscript:@"continuousRecognition"];
      -[PKTextInputSettings setContinuousRecognition:](self, "setContinuousRecognition:", [v29 BOOLValue]);
    }

    v30 = [v137 objectForKeyedSubscript:@"recognitionCoalescingDelay"];

    if (v30)
    {
      v31 = [v137 objectForKeyedSubscript:@"recognitionCoalescingDelay"];
      [v31 doubleValue];
      [(PKTextInputSettings *)self setRecognitionCoalescingDelay:?];
    }

    v32 = [v137 objectForKeyedSubscript:@"outOfProcessRecognition"];

    if (v32)
    {
      v33 = [v137 objectForKeyedSubscript:@"outOfProcessRecognition"];
      -[PKTextInputSettings setOutOfProcessRecognition:](self, "setOutOfProcessRecognition:", [v33 BOOLValue]);
    }

    v34 = [v137 objectForKeyedSubscript:@"activePreviewEnabled"];

    if (v34)
    {
      v35 = [v137 objectForKeyedSubscript:@"activePreviewEnabled"];
      -[PKTextInputSettings setActivePreviewEnabled:](self, "setActivePreviewEnabled:", [v35 BOOLValue]);
    }

    v36 = [v137 objectForKeyedSubscript:@"styledActivePreview"];

    if (v36)
    {
      v37 = [v137 objectForKeyedSubscript:@"styledActivePreview"];
      -[PKTextInputSettings setStyledActivePreview:](self, "setStyledActivePreview:", [v37 BOOLValue]);
    }

    v38 = [v137 objectForKeyedSubscript:@"floatingBackgroundEnabled"];

    if (v38)
    {
      v39 = [v137 objectForKeyedSubscript:@"floatingBackgroundEnabled"];
      -[PKTextInputSettings setFloatingBackgroundEnabled:](self, "setFloatingBackgroundEnabled:", [v39 BOOLValue]);
    }

    v40 = [v137 objectForKeyedSubscript:@"textInputStandardCommitDelay"];

    if (v40)
    {
      v41 = [v137 objectForKeyedSubscript:@"textInputStandardCommitDelay"];
      [v41 doubleValue];
      [(PKTextInputSettings *)self setTextInputStandardCommitDelay:?];
    }

    v42 = [v137 objectForKeyedSubscript:@"singleCharacterCommitDelay"];

    if (v42)
    {
      v43 = [v137 objectForKeyedSubscript:@"singleCharacterCommitDelay"];
      [v43 doubleValue];
      [(PKTextInputSettings *)self setSingleCharacterCommitDelay:?];
    }

    v44 = [v137 objectForKeyedSubscript:@"incrementalCommitWordsBack"];

    if (v44)
    {
      v45 = [v137 objectForKeyedSubscript:@"incrementalCommitWordsBack"];
      [v45 doubleValue];
      [(PKTextInputSettings *)self setIncrementalCommitWordsBack:v46];
    }

    v47 = [v137 objectForKeyedSubscript:@"debugRecognitionRequestArtificialDelay"];

    if (v47)
    {
      v48 = [v137 objectForKeyedSubscript:@"debugRecognitionRequestArtificialDelay"];
      [v48 doubleValue];
      [(PKTextInputSettings *)self setDebugRecognitionRequestArtificialDelay:?];
    }

    v49 = [v137 objectForKeyedSubscript:@"debugElementFinderArtificialDelay"];

    if (v49)
    {
      v50 = [v137 objectForKeyedSubscript:@"debugElementFinderArtificialDelay"];
      [v50 doubleValue];
      [(PKTextInputSettings *)self setDebugElementFinderArtificialDelay:?];
    }

    v51 = [v137 objectForKeyedSubscript:@"debugFirstResponderArtificialDelay"];

    if (v51)
    {
      v52 = [v137 objectForKeyedSubscript:@"debugFirstResponderArtificialDelay"];
      [v52 doubleValue];
      [(PKTextInputSettings *)self setDebugFirstResponderArtificialDelay:?];
    }

    v53 = [v137 objectForKeyedSubscript:@"enableOnNonEditableViews"];

    if (v53)
    {
      v54 = [v137 objectForKeyedSubscript:@"enableOnNonEditableViews"];
      -[PKTextInputSettings setEnableOnNonEditableViews:](self, "setEnableOnNonEditableViews:", [v54 BOOLValue]);
    }

    v55 = [v137 objectForKeyedSubscript:@"enableOnRemoteViews"];

    if (v55)
    {
      v56 = [v137 objectForKeyedSubscript:@"enableOnRemoteViews"];
      -[PKTextInputSettings setEnableOnRemoteViews:](self, "setEnableOnRemoteViews:", [v56 BOOLValue]);
    }

    v57 = [v137 objectForKeyedSubscript:@"enableViewControllerSupport"];

    if (v57)
    {
      v58 = [v137 objectForKeyedSubscript:@"enableViewControllerSupport"];
      -[PKTextInputSettings setEnableViewControllerSupport:](self, "setEnableViewControllerSupport:", [v58 BOOLValue]);
    }

    v59 = [v137 objectForKeyedSubscript:@"UCBPaletteEnabledNewKey"];

    if (v59)
    {
      v60 = [v137 objectForKeyedSubscript:@"UCBPaletteEnabledNewKey"];
      -[PKTextInputSettings setUCBPaletteEnabled:](self, "setUCBPaletteEnabled:", [v60 BOOLValue]);
    }

    v61 = [v137 objectForKeyedSubscript:@"alwaysIncludeReturnKeyAndInputAssistantItems"];

    if (v61)
    {
      v62 = [v137 objectForKeyedSubscript:@"alwaysIncludeReturnKeyAndInputAssistantItems"];
      -[PKTextInputSettings setAlwaysIncludeReturnKeyAndInputAssistantItems:](self, "setAlwaysIncludeReturnKeyAndInputAssistantItems:", [v62 BOOLValue]);
    }

    v63 = [v137 objectForKeyedSubscript:@"hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent2"];

    if (v63)
    {
      v64 = [v137 objectForKeyedSubscript:@"hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent2"];
      -[PKTextInputSettings setHideDefaultReturnKeyWhenSpecialReturnKeyIsPresent:](self, "setHideDefaultReturnKeyWhenSpecialReturnKeyIsPresent:", [v64 BOOLValue]);
    }

    v65 = [v137 objectForKeyedSubscript:@"enableReserveSpace"];

    if (v65)
    {
      v66 = [v137 objectForKeyedSubscript:@"enableReserveSpace"];
      -[PKTextInputSettings setEnableReserveSpace:](self, "setEnableReserveSpace:", [v66 BOOLValue]);
    }

    v67 = [v137 objectForKeyedSubscript:@"enableReserveSpaceTapForNewlines"];

    if (v67)
    {
      v68 = [v137 objectForKeyedSubscript:@"enableReserveSpaceTapForNewlines"];
      -[PKTextInputSettings setEnableReserveSpaceTapForNewlines:](self, "setEnableReserveSpaceTapForNewlines:", [v68 BOOLValue]);
    }

    v69 = [v137 objectForKeyedSubscript:@"asyncElementRequestTimeout"];

    if (v69)
    {
      v70 = [v137 objectForKeyedSubscript:@"asyncElementRequestTimeout"];
      [v70 doubleValue];
      [(PKTextInputSettings *)self setAsyncElementRequestTimeout:?];
    }

    v71 = [v137 objectForKeyedSubscript:@"drawingGestureMinimumPanDistanceThreshold"];

    if (v71)
    {
      v72 = [v137 objectForKeyedSubscript:@"drawingGestureMinimumPanDistanceThreshold"];
      [v72 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureMinimumPanDistanceThreshold:?];
    }

    v73 = [v137 objectForKeyedSubscript:@"drawingGestureMinimumScrollDistanceThreshold"];

    if (v73)
    {
      v74 = [v137 objectForKeyedSubscript:@"drawingGestureMinimumScrollDistanceThreshold"];
      [v74 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureMinimumScrollDistanceThreshold:?];
    }

    v75 = [v137 objectForKeyedSubscript:@"drawingGestureTapDetectionTimeInterval2"];

    if (v75)
    {
      v76 = [v137 objectForKeyedSubscript:@"drawingGestureTapDetectionTimeInterval2"];
      [v76 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureTapDetectionTimeInterval:?];
    }

    v77 = [v137 objectForKeyedSubscript:@"drawingGestureTapDetectionDistanceThreshold3"];

    if (v77)
    {
      v78 = [v137 objectForKeyedSubscript:@"drawingGestureTapDetectionDistanceThreshold3"];
      [v78 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureTapDetectionDistanceThreshold:?];
    }

    v79 = [v137 objectForKeyedSubscript:@"drawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance"];

    if (v79)
    {
      v80 = [v137 objectForKeyedSubscript:@"drawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance"];
      [v80 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance:?];
    }

    v81 = [v137 objectForKeyedSubscript:@"drawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance"];

    if (v81)
    {
      v82 = [v137 objectForKeyedSubscript:@"drawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance"];
      [v82 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance:?];
    }

    v83 = [v137 objectForKeyedSubscript:@"drawingGestureLongPressMaxDistance"];

    if (v83)
    {
      v84 = [v137 objectForKeyedSubscript:@"drawingGestureLongPressMaxDistance"];
      [v84 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureLongPressMaxDistance:?];
    }

    v85 = [v137 objectForKeyedSubscript:@"drawingGestureLongPressDetectionTimeInterval"];

    if (v85)
    {
      v86 = [v137 objectForKeyedSubscript:@"drawingGestureLongPressDetectionTimeInterval"];
      [v86 doubleValue];
      [(PKTextInputSettings *)self setDrawingGestureLongPressDetectionTimeInterval:?];
    }

    v87 = [v137 objectForKeyedSubscript:@"inkWeight"];

    if (v87)
    {
      v88 = [v137 objectForKeyedSubscript:@"inkWeight"];
      [v88 doubleValue];
      [(PKTextInputSettings *)self setInkWeight:?];
    }

    v89 = [v137 objectForKeyedSubscript:@"inkWeightForIncreasedContrast"];

    if (v89)
    {
      v90 = [v137 objectForKeyedSubscript:@"inkWeightForIncreasedContrast"];
      [v90 doubleValue];
      [(PKTextInputSettings *)self setInkWeightForIncreasedContrast:?];
    }

    v91 = [v137 objectForKeyedSubscript:@"lineBreakOnTapEnabled"];

    if (v91)
    {
      v92 = [v137 objectForKeyedSubscript:@"lineBreakOnTapEnabled"];
      -[PKTextInputSettings setLineBreakOnTapEnabled:](self, "setLineBreakOnTapEnabled:", [v92 BOOLValue]);
    }

    v93 = [v137 objectForKeyedSubscript:@"lineBreakVerticalBarGestureEnabled"];

    if (v93)
    {
      v94 = [v137 objectForKeyedSubscript:@"lineBreakVerticalBarGestureEnabled"];
      -[PKTextInputSettings setLineBreakVerticalBarGestureEnabled:](self, "setLineBreakVerticalBarGestureEnabled:", [v94 BOOLValue]);
    }

    v95 = [v137 objectForKeyedSubscript:@"lineBreakVerticalBarUpToDelete"];

    if (v95)
    {
      v96 = [v137 objectForKeyedSubscript:@"lineBreakVerticalBarUpToDelete"];
      -[PKTextInputSettings setLineBreakVerticalBarUpToDelete:](self, "setLineBreakVerticalBarUpToDelete:", [v96 BOOLValue]);
    }

    v97 = [v137 objectForKeyedSubscript:@"autoLineBreakEnabled2"];

    if (v97)
    {
      v98 = [v137 objectForKeyedSubscript:@"autoLineBreakEnabled2"];
      -[PKTextInputSettings setAutoLineBreakEnabled:](self, "setAutoLineBreakEnabled:", [v98 BOOLValue]);
    }

    v99 = [v137 objectForKeyedSubscript:@"autoLineBreakRequireWeakCursor2"];

    if (v99)
    {
      v100 = [v137 objectForKeyedSubscript:@"autoLineBreakRequireWeakCursor2"];
      -[PKTextInputSettings setAutoLineBreakRequireWeakCursor:](self, "setAutoLineBreakRequireWeakCursor:", [v100 BOOLValue]);
    }

    v101 = [v137 objectForKeyedSubscript:@"autoLineBreakVerticalDistance2"];

    if (v101)
    {
      v102 = [v137 objectForKeyedSubscript:@"autoLineBreakVerticalDistance2"];
      [v102 doubleValue];
      [(PKTextInputSettings *)self setAutoLineBreakVerticalDistance:?];
    }

    v103 = [v137 objectForKeyedSubscript:@"autoLineBreakDualVerticalDistance2"];

    if (v103)
    {
      v104 = [v137 objectForKeyedSubscript:@"autoLineBreakDualVerticalDistance2"];
      [v104 doubleValue];
      [(PKTextInputSettings *)self setAutoLineBreakDualVerticalDistance:?];
    }

    v105 = [v137 objectForKeyedSubscript:@"autoLineBreakAreaWidthFactor3"];

    if (v105)
    {
      v106 = [v137 objectForKeyedSubscript:@"autoLineBreakAreaWidthFactor3"];
      [v106 doubleValue];
      [(PKTextInputSettings *)self setAutoLineBreakAreaWidthFactor:?];
    }

    v107 = [v137 objectForKeyedSubscript:@"tapToLineBreakVerticalDistance2"];

    if (v107)
    {
      v108 = [v137 objectForKeyedSubscript:@"tapToLineBreakVerticalDistance2"];
      [v108 doubleValue];
      [(PKTextInputSettings *)self setTapToLineBreakVerticalDistance:?];
    }

    v109 = [v137 objectForKeyedSubscript:@"enableWeakCursor"];

    if (v109)
    {
      v110 = [v137 objectForKeyedSubscript:@"enableWeakCursor"];
      -[PKTextInputSettings setEnableWeakCursor:](self, "setEnableWeakCursor:", [v110 BOOLValue]);
    }

    v111 = [v137 objectForKeyedSubscript:@"weakCursorVisibilityTimeout"];

    if (v111)
    {
      v112 = [v137 objectForKeyedSubscript:@"weakCursorVisibilityTimeout"];
      [v112 doubleValue];
      [(PKTextInputSettings *)self setWeakCursorVisibilityTimeout:?];
    }

    v113 = [v137 objectForKeyedSubscript:@"strongCursorRestoreDelay"];

    if (v113)
    {
      v114 = [v137 objectForKeyedSubscript:@"strongCursorRestoreDelay"];
      [v114 doubleValue];
      [(PKTextInputSettings *)self setStrongCursorRestoreDelay:?];
    }

    v115 = [v137 objectForKeyedSubscript:@"scratchOutMakesTheCursorStrong"];

    if (v115)
    {
      v116 = [v137 objectForKeyedSubscript:@"scratchOutMakesTheCursorStrong"];
      -[PKTextInputSettings setScratchOutMakesTheCursorStrong:](self, "setScratchOutMakesTheCursorStrong:", [v116 BOOLValue]);
    }

    v117 = [v137 objectForKeyedSubscript:@"enableTargetedAppWorkarounds"];

    if (v117)
    {
      v118 = [v137 objectForKeyedSubscript:@"enableTargetedAppWorkarounds"];
      -[PKTextInputSettings setEnableTargetedAppWorkarounds:](self, "setEnableTargetedAppWorkarounds:", [v118 BOOLValue]);
    }

    v119 = [v137 objectForKeyedSubscript:@"useSlidingCanvas"];

    if (v119)
    {
      v120 = [v137 objectForKeyedSubscript:@"useSlidingCanvas"];
      -[PKTextInputSettings setUseSlidingCanvas:](self, "setUseSlidingCanvas:", [v120 BOOLValue]);
    }

    v121 = [v137 objectForKeyedSubscript:@"slidingCanvasDebugBorder"];

    if (v121)
    {
      v122 = [v137 objectForKeyedSubscript:@"slidingCanvasDebugBorder"];
      -[PKTextInputSettings setSlidingCanvasDebugBorder:](self, "setSlidingCanvasDebugBorder:", [v122 BOOLValue]);
    }

    v123 = [v137 objectForKeyedSubscript:@"slidingCanvasWidth2"];

    if (v123)
    {
      v124 = [v137 objectForKeyedSubscript:@"slidingCanvasWidth2"];
      [v124 doubleValue];
      [(PKTextInputSettings *)self setSlidingCanvasWidth:?];
    }

    v125 = [v137 objectForKeyedSubscript:@"slidingCanvasHeight2"];

    if (v125)
    {
      v126 = [v137 objectForKeyedSubscript:@"slidingCanvasHeight2"];
      [v126 doubleValue];
      [(PKTextInputSettings *)self setSlidingCanvasHeight:?];
    }

    v127 = [v137 objectForKeyedSubscript:@"useSingleComponentCanvas"];

    if (v127)
    {
      v128 = [v137 objectForKeyedSubscript:@"useSingleComponentCanvas"];
      -[PKTextInputSettings setUseSingleComponentCanvas:](self, "setUseSingleComponentCanvas:", [v128 BOOLValue]);
    }

    v129 = [v137 objectForKeyedSubscript:@"useLargeHitTestArea"];

    if (v129)
    {
      v130 = [v137 objectForKeyedSubscript:@"useLargeHitTestArea"];
      -[PKTextInputSettings setUseLargeHitTestArea:](self, "setUseLargeHitTestArea:", [v130 BOOLValue]);
    }

    v131 = [v137 objectForKeyedSubscript:@"strongCursorMaximumYDistance"];

    if (v131)
    {
      v132 = [v137 objectForKeyedSubscript:@"strongCursorMaximumYDistance"];
      [v132 doubleValue];
      [(PKTextInputSettings *)self setStrongCursorMaximumYDistance:?];
    }

    v133 = [v137 objectForKeyedSubscript:@"useTransformStrokesAnimation2"];

    if (v133)
    {
      v134 = [v137 objectForKeyedSubscript:@"useTransformStrokesAnimation2"];
      -[PKTextInputSettings setUseTransformStrokesAnimation:](self, "setUseTransformStrokesAnimation:", [v134 BOOLValue]);
    }

    v135 = [v137 objectForKeyedSubscript:@"emojiConversionDelay"];

    if (v135)
    {
      v136 = [v137 objectForKeyedSubscript:@"emojiConversionDelay"];
      [v136 doubleValue];
      [(PKTextInputSettings *)self setEmojiConversionDelay:?];
    }
  }
}

- (void)loadSettingsFromUserDefaults
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 dictionaryForKey:@"com.apple.PencilKit.TextInputDefaults"];

  [(PKTextInputSettings *)self loadSettingsFromDictionary:v4];
}

- (void)saveSettingsToUserDefaults
{
  if ([(PKTextInputSettings *)self _shouldSaveSettings])
  {
    v4 = [(PKTextInputSettings *)self settingsDictionaryRepresentation];
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 setObject:v4 forKey:@"com.apple.PencilKit.TextInputDefaults" inDomain:*MEMORY[0x1E696A400]];
  }
}

- (void)resetToDefaultValues
{
  [(PKTextInputSettings *)self _loadDefaultValues];
  if ([(PKTextInputSettings *)self _shouldSaveSettings])
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 setObject:0 forKey:@"com.apple.PencilKit.TextInputDefaults" inDomain:*MEMORY[0x1E696A400]];
  }
}

- (NSString)recognitionLocaleIdentifier
{
  v2 = [(PKTextInputSettings *)self recognitionLocaleIdentifiers];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)recognitionLocaleIdentifiers
{
  if ([(PKTextInputSettings *)self _isFeatureAvailableAndEnabled])
  {
    v2 = +[PKTextInputLanguageSelectionController sharedInstance];
    v3 = [v2 currentLanguageIdentifiers];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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