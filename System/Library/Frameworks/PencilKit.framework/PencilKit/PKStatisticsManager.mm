@interface PKStatisticsManager
+ (id)bundleIDCategory;
+ (id)sharedStatisticsManager;
- (uint64_t)analyticsActionFromPreferredAction:(uint64_t)result;
- (uint64_t)recordPencilAction:(uint64_t)result doubleTap:;
- (void)recordAutoMinimizeEnabledDidChange:(uint64_t)change type:;
- (void)recordBitmapEraseWithInputType:(uint64_t)type;
- (void)recordCollaboration:(uint64_t)collaboration;
- (void)recordColorPanelInvoked:(uint64_t)invoked;
- (void)recordColorsChangedBeforeChosen:(uint64_t)chosen;
- (void)recordCopyAsTextWithLength:(uint64_t)length time:(uint64_t)time didShowHUD:(uint64_t)d invokedFromSmartSelection:(int)selection;
- (void)recordCreateShapeWithType:(int)type fromMenu:(int)menu multiple:;
- (void)recordDataDetectorItemAdd:(uint64_t)add;
- (void)recordDataDetectorItemDefaultAction:(uint64_t)action;
- (void)recordDataDetectorItemMenuAction:(uint64_t)action;
- (void)recordDataDetectorItemRemove:(uint64_t)remove;
- (void)recordDragAndDropSelection;
- (void)recordDragSelection;
- (void)recordDrawStroke:(uint64_t)stroke;
- (void)recordDrawWithFingerToggle:(uint64_t)toggle;
- (void)recordHashtagItemActivate;
- (void)recordHashtagItemAdd;
- (void)recordHashtagItemDeactivate;
- (void)recordHashtagItemRemove;
- (void)recordHoverDuration:(uint64_t)duration onScreenDuration:hoverEdgeDuration:hoverExteriorDuration:sessionDuration:showEffectsEnabled:shadowEnabled:scribbleEnabled:doubleTapOnlyInHoverRangeEnabled:doubleTapsInRange:doubleTapsOutsideRange:deviceIsConnectedToCharger:intentionalHoverDuration:intentionalToolPreviewHoverDuration:countIntentionalHoverActions:maxIntentionalHoverDuration:meanIntentionalHoverDuration:minIntentionalHoverDuration:;
- (void)recordHoverLatency:(uint64_t)latency mean:max:shadowEnabled:isInPDF:;
- (void)recordHoverToolType:(uint64_t)type hoverDuration:(uint64_t)duration intentionalToolPreviewHoverDuration:(uint64_t)hoverDuration intentionalHoverDuration:(uint64_t)intentionalHoverDuration maxIntentionalHoverDuration:(uint64_t)maxIntentionalHoverDuration meanIntentionalHoverDuration:(void *)meanIntentionalHoverDuration minIntentionalHoverDuration:countIntentionalHoverActions:activepencilminutes:onScreenDuration:settingShowEffectsEnabled:settingSystemShadowEnabled:settingScribbleEnabled:settingDoubleTapInRangeEnabled:bundleID:;
- (void)recordInkPickerNoOp:(uint64_t)op;
- (void)recordInsertSpaceAddWhitespace:(uint64_t)whitespace;
- (void)recordInsertSpaceWithType:(uint64_t)type;
- (void)recordJumpToSettings;
- (void)recordLatency:(uint64_t)latency mean:max:percentageOverLatencyThreshold:isInPDF:;
- (void)recordMentionItemActivate;
- (void)recordMentionItemAdd;
- (void)recordMentionItemDeactivate;
- (void)recordMentionItemRemove;
- (void)recordNumberOfUndos:(uint64_t)undos numberOfStrokes:(uint64_t)strokes showEffectsEnabled:(uint64_t)enabled shadowEnabled:(void *)shadowEnabled bundleID:;
- (void)recordObjectEraseWithInputType:(uint64_t)type;
- (void)recordPalettePositionChange:(uint64_t)change type:;
- (void)recordPerceivedLatency:(uint64_t)latency mean:max:isInPDF:;
- (void)recordPixelObjectEraseModeChange:(uint64_t)change;
- (void)recordRulerInteractionEndedWithType:(uint64_t)type angle:(uint64_t)angle;
- (void)recordSelectAllWithStrokeCount:(uint64_t)count externalElementsCount:;
- (void)recordShapeEventWithType:(void *)type modeString:(void *)string;
- (void)recordShapeUndoIfNecessary;
- (void)recordShowRuler;
- (void)recordStrokeWithInk:(double)ink rollAngleDelta:;
- (void)recordTextLineStraightening:(char)straightening withUndo:;
- (void)recordTextLineStraighteningPerSession:(uint64_t)session Undos:;
- (void)recordTextLineStraighteningUndoIfNecessary;
- (void)recordTool:(uint64_t)tool;
- (void)recordToolAttributePopoverAppearedForTool:(uint64_t)tool hadInteraction:(void *)interaction;
- (void)recordUndo:(void *)undo forStrokes:(void *)strokes fallbackInkIdentifier:;
- (void)recordUndoIfNecessary;
- (void)submitRecentRollStroke;
@end

@implementation PKStatisticsManager

+ (id)sharedStatisticsManager
{
  objc_opt_self();
  if (qword_1ED6A51D8 != -1)
  {
    dispatch_once(&qword_1ED6A51D8, &__block_literal_global_21);
  }

  v0 = qword_1ED6A51E0;

  return v0;
}

void __46__PKStatisticsManager_sharedStatisticsManager__block_invoke()
{
  v0 = objc_alloc_init(PKStatisticsManager);
  v1 = qword_1ED6A51E0;
  qword_1ED6A51E0 = v0;

  v2 = objc_alloc_init(PKDrawingPaletteStatisticsEventLogger);
  v3 = *(qword_1ED6A51E0 + 64);
  *(qword_1ED6A51E0 + 64) = v2;
}

+ (id)bundleIDCategory
{
  objc_opt_self();
  if (_MergedGlobals_148 != -1)
  {
    dispatch_once(&_MergedGlobals_148, &__block_literal_global_55);
  }

  v0 = qword_1ED6A51D0;

  return v0;
}

void __39__PKStatisticsManager_bundleIDCategory__block_invoke()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v0 = qword_1ED6A51E8;
  v10 = qword_1ED6A51E8;
  if (!qword_1ED6A51E8)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getIAUtilityClass_block_invoke;
    v6[3] = &unk_1E82D6498;
    v6[4] = &v7;
    __getIAUtilityClass_block_invoke(v6);
    v0 = v8[3];
  }

  v1 = v0;
  _Block_object_dispose(&v7, 8);
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v0 lookupAppBundle:v3];
  v5 = qword_1ED6A51D0;
  qword_1ED6A51D0 = v4;
}

- (void)recordDrawStroke:(uint64_t)stroke
{
  v3 = a2;
  if (stroke)
  {
    v4 = +[PKCanvasSessionStatisticsManager sharedStatisticsManager];
    v5 = v4;
    if (v4)
    {
      [(PKCanvasSessionStatisticsManager *)v4 logFeatureUsed:?];
    }

    v6 = *(stroke + 8);
    *(stroke + 8) = 0;

    v7 = *(stroke + 24);
    *(stroke + 24) = 0;

    v8 = [v3 ink];
    identifier = [v8 identifier];
    v10 = identifier;
    v11 = @"unknown";
    if (identifier)
    {
      v11 = identifier;
    }

    v12 = v11;

    v13 = [(__CFString *)v12 stringByReplacingOccurrencesOfString:@"com.apple.ink." withString:&stru_1F476BD20];

    v14 = [v3 ink];
    [v14 weight];

    v15 = [v3 ink];
    color = [v15 color];
    if (color)
    {
      v17 = [v3 ink];
      color2 = [v17 color];
      CGColorGetAlpha([color2 CGColor]);
    }

    v19 = v3;
    _inputType = [v19 _inputType];
    if (_inputType)
    {
      if (_inputType == 1)
      {
        stringValue = @"pencil";
      }

      else
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "_inputType")}];
        stringValue = [v22 stringValue];
      }
    }

    else
    {
      stringValue = @"touch";
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"stroke.added"];
    v26 = v13;
    v27 = stringValue;
    v24 = stringValue;
    v25 = v13;
    AnalyticsSendEventLazy();
  }
}

id __40__PKStatisticsManager_recordDrawStroke___block_invoke(uint64_t a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = *(a1 + 32);
  v7[0] = @"tool";
  v7[1] = @"thickness";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v8[1] = v2;
  v7[2] = @"opacity";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v7[3] = @"input";
  v4 = *(a1 + 40);
  v8[2] = v3;
  v8[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

- (void)recordBitmapEraseWithInputType:(uint64_t)type
{
  if (type)
  {
    if ((a2 - 1) > 2)
    {
      v2 = @"direct";
    }

    else
    {
      v2 = off_1E82DA7E8[a2 - 1];
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"stroke.erase"];
    AnalyticsSendEventLazy();
  }
}

id __54__PKStatisticsManager_recordBitmapEraseWithInputType___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = @"input";
  v4[1] = @"type";
  v5[0] = v1;
  v5[1] = @"bitmap";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)recordObjectEraseWithInputType:(uint64_t)type
{
  if (type)
  {
    v4 = *(type + 8);
    *(type + 8) = 0;

    v5 = *(type + 24);
    *(type + 24) = 0;

    if ((a2 - 1) > 2)
    {
      v6 = @"direct";
    }

    else
    {
      v6 = off_1E82DA7E8[a2 - 1];
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"stroke.erase"];
    AnalyticsSendEventLazy();
  }
}

id __54__PKStatisticsManager_recordObjectEraseWithInputType___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = @"input";
  v4[1] = @"type";
  v5[0] = v1;
  v5[1] = @"object";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)recordLatency:(uint64_t)latency mean:max:percentageOverLatencyThreshold:isInPDF:
{
  if (latency)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"stroke.latency"];
    AnalyticsSendEventLazy();
  }
}

id __85__PKStatisticsManager_recordLatency_mean_max_percentageOverLatencyThreshold_isInPDF___block_invoke(uint64_t a1, double a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13[0] = @"frequency";
  LODWORD(a2) = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v14[0] = v3;
  v13[1] = @"mean";
  LODWORD(v4) = *(a1 + 36);
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v14[1] = v5;
  v13[2] = @"max";
  LODWORD(v6) = *(a1 + 40);
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v14[2] = v7;
  v13[3] = @"percentageOverThreshold";
  LODWORD(v8) = *(a1 + 44);
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v14[3] = v9;
  v13[4] = @"isInPDF";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v14[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];

  return v11;
}

- (void)recordPerceivedLatency:(uint64_t)latency mean:max:isInPDF:
{
  if (latency)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"stroke.perceivedLatency"];
    AnalyticsSendEventLazy();
  }
}

id __63__PKStatisticsManager_recordPerceivedLatency_mean_max_isInPDF___block_invoke(uint64_t a1, double a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"frequency";
  LODWORD(a2) = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v12[0] = v3;
  v11[1] = @"mean";
  LODWORD(v4) = *(a1 + 36);
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v12[1] = v5;
  v11[2] = @"max";
  LODWORD(v6) = *(a1 + 40);
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v12[2] = v7;
  v11[3] = @"isInPDF";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 44)];
  v12[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (void)recordHoverLatency:(uint64_t)latency mean:max:shadowEnabled:isInPDF:
{
  if (latency)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"stroke.hoverLatency"];
    AnalyticsSendEventLazy();
  }
}

id __73__PKStatisticsManager_recordHoverLatency_mean_max_shadowEnabled_isInPDF___block_invoke(uint64_t a1, double a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"frequency";
  LODWORD(a2) = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v13[0] = v3;
  v12[1] = @"mean";
  LODWORD(v4) = *(a1 + 36);
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v13[1] = v5;
  v12[2] = @"max";
  LODWORD(v6) = *(a1 + 40);
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v13[2] = v7;
  v12[3] = @"shadowEnabled";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 44)];
  v13[3] = v8;
  v12[4] = @"isInPDF";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 45)];
  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

- (void)recordHoverDuration:(uint64_t)duration onScreenDuration:hoverEdgeDuration:hoverExteriorDuration:sessionDuration:showEffectsEnabled:shadowEnabled:scribbleEnabled:doubleTapOnlyInHoverRangeEnabled:doubleTapsInRange:doubleTapsOutsideRange:deviceIsConnectedToCharger:intentionalHoverDuration:intentionalToolPreviewHoverDuration:countIntentionalHoverActions:maxIntentionalHoverDuration:meanIntentionalHoverDuration:minIntentionalHoverDuration:
{
  if (duration)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"hover"];
    AnalyticsSendEventLazy();
  }
}

id __441__PKStatisticsManager_recordHoverDuration_onScreenDuration_hoverEdgeDuration_hoverExteriorDuration_sessionDuration_showEffectsEnabled_shadowEnabled_scribbleEnabled_doubleTapOnlyInHoverRangeEnabled_doubleTapsInRange_doubleTapsOutsideRange_deviceIsConnectedToCharger_intentionalHoverDuration_intentionalToolPreviewHoverDuration_countIntentionalHoverActions_maxIntentionalHoverDuration_meanIntentionalHoverDuration_minIntentionalHoverDuration___block_invoke(uint64_t a1)
{
  v24[19] = *MEMORY[0x1E69E9840];
  v23[0] = @"hoverDuration";
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v24[0] = v22;
  v23[1] = @"hoverExteriorDuration";
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v24[1] = v21;
  v23[2] = @"hoverEdgeDuration";
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v24[2] = v20;
  v23[3] = @"hoverInteriorDuration";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v24[3] = v19;
  v23[4] = @"onScreenDuration";
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
  v24[4] = v18;
  v23[5] = @"sessionDuration";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 72)];
  v24[5] = v17;
  v23[6] = @"settingShowEffectsEnabled";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 144)];
  v24[6] = v16;
  v23[7] = @"settingScribbleEnabled";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 145)];
  v24[7] = v15;
  v23[8] = @"settingSystemShadowEnabled";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 146)];
  v24[8] = v14;
  v23[9] = @"settingDoubleTapInRangeEnabled";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 147)];
  v24[9] = v13;
  v23[10] = @"doubleTapsInRange";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  v24[10] = v2;
  v23[11] = @"doubleTapsOutsideRange";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 88)];
  v24[11] = v3;
  v23[12] = @"connectedToCharger";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 148)];
  v24[12] = v4;
  v23[13] = @"intentionalHoverDuration";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 96)];
  v24[13] = v5;
  v23[14] = @"intentionalToolPreviewHoverDuration";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 104)];
  v24[14] = v6;
  v23[15] = @"countIntentionalHoverActions";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 112)];
  v24[15] = v7;
  v23[16] = @"maxIntentionalHoverDuration";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 120)];
  v24[16] = v8;
  v23[17] = @"medianIntentionalHoverDuration";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 128)];
  v24[17] = v9;
  v23[18] = @"minIntentionalHoverDuration";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 136)];
  v24[18] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:19];

  return v11;
}

- (void)recordHoverToolType:(uint64_t)type hoverDuration:(uint64_t)duration intentionalToolPreviewHoverDuration:(uint64_t)hoverDuration intentionalHoverDuration:(uint64_t)intentionalHoverDuration maxIntentionalHoverDuration:(uint64_t)maxIntentionalHoverDuration meanIntentionalHoverDuration:(void *)meanIntentionalHoverDuration minIntentionalHoverDuration:countIntentionalHoverActions:activepencilminutes:onScreenDuration:settingShowEffectsEnabled:settingSystemShadowEnabled:settingScribbleEnabled:settingDoubleTapInRangeEnabled:bundleID:
{
  v10 = a2;
  meanIntentionalHoverDurationCopy = meanIntentionalHoverDuration;
  if (self)
  {
    v12 = v10;
    v13 = meanIntentionalHoverDurationCopy;
    AnalyticsSendEventLazy();
  }
}

id __385__PKStatisticsManager_recordHoverToolType_hoverDuration_intentionalToolPreviewHoverDuration_intentionalHoverDuration_maxIntentionalHoverDuration_meanIntentionalHoverDuration_minIntentionalHoverDuration_countIntentionalHoverActions_activepencilminutes_onScreenDuration_settingShowEffectsEnabled_settingSystemShadowEnabled_settingScribbleEnabled_settingDoubleTapInRangeEnabled_bundleID___block_invoke(uint64_t a1)
{
  v19[15] = *MEMORY[0x1E69E9840];
  v19[0] = *(a1 + 32);
  v18[0] = @"toolType";
  v18[1] = @"hoverDuration";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v19[1] = v17;
  v18[2] = @"intentionalToolPreviewHoverDuration";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v19[2] = v16;
  v18[3] = @"intentionalHoverDuration";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
  v19[3] = v15;
  v18[4] = @"maxIntentionalHoverDuration";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 72)];
  v19[4] = v14;
  v18[5] = @"meanIntentionalHoverDuration";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80)];
  v19[5] = v2;
  v18[6] = @"minIntentionalHoverDuration";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 88)];
  v19[6] = v3;
  v18[7] = @"countIntentionalHoverActions";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 96)];
  v19[7] = v4;
  v18[8] = @"activepencilminutes";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 104)];
  v19[8] = v5;
  v18[9] = @"onScreenDuration";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 112)];
  v19[9] = v6;
  v18[10] = @"settingShowEffectsEnabled";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 120)];
  v19[10] = v7;
  v18[11] = @"settingSystemShadowEnabled";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 121)];
  v19[11] = v8;
  v18[12] = @"settingScribbleEnabled";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 122)];
  v19[12] = v9;
  v18[13] = @"settingDoubleTapInRangeEnabled";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 123)];
  v18[14] = @"bundleID";
  v11 = *(a1 + 40);
  v19[13] = v10;
  v19[14] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:15];

  return v12;
}

- (void)recordDragSelection
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.drag"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordDragAndDropSelection
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.drag"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordInkPickerNoOp:(uint64_t)op
{
  v3 = a2;
  if (op)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"inkpicker.noOp"];
    v5 = v3;
    AnalyticsSendEventLazy();
  }
}

id __43__PKStatisticsManager_recordInkPickerNoOp___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"element";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordColorPanelInvoked:(uint64_t)invoked
{
  v3 = a2;
  if (invoked)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"colorpicker.invoke"];
    v5 = v3;
    AnalyticsSendEventLazy();
  }
}

id __47__PKStatisticsManager_recordColorPanelInvoked___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"action";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordColorsChangedBeforeChosen:(uint64_t)chosen
{
  if (chosen)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"colorpicker.colors"];
    AnalyticsSendEventLazy();
  }
}

id __55__PKStatisticsManager_recordColorsChangedBeforeChosen___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"intermediateColors";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordCollaboration:(uint64_t)collaboration
{
  if (collaboration)
  {
    if (a2 >= 3)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      stringValue = [v3 stringValue];
    }

    else
    {
      stringValue = off_1E82DA800[a2];
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"drawing.didCollaborate"];
    v6 = stringValue;
    v5 = stringValue;
    AnalyticsSendEventLazy();
  }
}

id __43__PKStatisticsManager_recordCollaboration___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"merge";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordTool:(uint64_t)tool
{
  v3 = a2;
  if (tool)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"stroke.tool"];
    v5 = v3;
    AnalyticsSendEventLazy();
  }
}

id __34__PKStatisticsManager_recordTool___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"tool";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordUndo:(void *)undo forStrokes:(void *)strokes fallbackInkIdentifier:
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  undoCopy = undo;
  strokesCopy = strokes;
  if (self)
  {
    if ([undoCopy count])
    {
      firstObject = [undoCopy firstObject];
      v11 = [firstObject ink];
      identifier = [v11 identifier];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = undoCopy;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v24 + 1) + 8 * i) ink];
            identifier2 = [v18 identifier];
            v20 = [(__CFString *)identifier isEqual:identifier2];

            if ((v20 & 1) == 0)
            {

              identifier = @"mixed";
              goto LABEL_13;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      strokesCopy = identifier;
    }

    if (!v7)
    {
      v21 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_ERROR, "Action name was not set when recording undo", buf, 2u);
      }

      v7 = @"unknown";
    }

    if (strokesCopy)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"undoAction"];
      v7 = v7;
      strokesCopy = strokesCopy;
      AnalyticsSendEventLazy();
    }
  }
}

id __67__PKStatisticsManager_recordUndo_forStrokes_fallbackInkIdentifier___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"action";
  v4[1] = @"inkType";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)recordNumberOfUndos:(uint64_t)undos numberOfStrokes:(uint64_t)strokes showEffectsEnabled:(uint64_t)enabled shadowEnabled:(void *)shadowEnabled bundleID:
{
  shadowEnabledCopy = shadowEnabled;
  if (self && undos >= 1)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"undo"];
    v10 = shadowEnabledCopy;
    AnalyticsSendEventLazy();
  }
}

id __101__PKStatisticsManager_recordNumberOfUndos_numberOfStrokes_showEffectsEnabled_shadowEnabled_bundleID___block_invoke(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"undoRatePerSession";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = @"countPencilStrokes";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = @"unknown";
  }

  v11[1] = v3;
  v11[2] = v5;
  v10[2] = @"bundleID";
  v10[3] = @"settingShowEffectsEnabled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v11[3] = v6;
  v10[4] = @"settingSystemShadowEnabled";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 57)];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (void)recordTextLineStraightening:(char)straightening withUndo:
{
  v6 = a2;
  if (self)
  {
    v7 = +[PKCanvasSessionStatisticsManager sharedStatisticsManager];
    v8 = v7;
    if (v7)
    {
      [(PKCanvasSessionStatisticsManager *)v7 logFeatureUsed:?];
    }

    v9 = [v6 mutableCopy];
    if (straightening)
    {
      v10 = @"undo";
    }

    else
    {
      if (!*(self + 24))
      {
        goto LABEL_11;
      }

      if (*(self + 32) <= 0.0)
      {
        goto LABEL_11;
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      if (v11 - *(self + 32) >= 20.0)
      {
        goto LABEL_11;
      }

      v10 = @"repeat";
    }

    [v9 setValue:MEMORY[0x1E695E118] forKey:v10];
LABEL_11:
    objc_storeStrong((self + 24), a2);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(self + 32) = v12;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"textLineStraightening"];
    v15 = v9;
    v14 = v9;
    AnalyticsSendEventLazy();
  }
}

- (void)recordTextLineStraighteningUndoIfNecessary
{
  if (self && *(self + 24) && *(self + 32) > 0.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (v2 - *(self + 32) < 10.0)
    {
      [(PKStatisticsManager *)self recordTextLineStraightening:1 withUndo:?];
    }

    v3 = *(self + 24);
    *(self + 24) = 0;

    *(self + 32) = 0;
  }
}

- (void)recordTextLineStraighteningPerSession:(uint64_t)session Undos:
{
  if (session)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"textLineStraighteningPerSession"];
    AnalyticsSendEventLazy();
  }
}

id __67__PKStatisticsManager_recordTextLineStraighteningPerSession_Undos___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"sessionCount";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[1] = @"undoSessionCount";
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)recordCopyAsTextWithLength:(uint64_t)length time:(uint64_t)time didShowHUD:(uint64_t)d invokedFromSmartSelection:(int)selection
{
  if (length)
  {
    v5 = +[PKCanvasSessionStatisticsManager sharedStatisticsManager];
    v6 = v5;
    if (v5)
    {
      [(PKCanvasSessionStatisticsManager *)v5 logFeatureUsed:?];
    }

    v7 = @"lasso";
    if (selection)
    {
      v7 = @"smartSelection";
    }

    v8 = v7;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.copyAsText"];
    v10 = v8;
    AnalyticsSendEventLazy();
  }
}

id __92__PKStatisticsManager_recordCopyAsTextWithLength_time_didShowHUD_invokedFromSmartSelection___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"textLength";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v9[0] = v2;
  v8[1] = @"transcriptionDuration";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v9[1] = v3;
  v8[2] = @"didShowHUD";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v8[3] = @"invocationType";
  v5 = *(a1 + 32);
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)recordSelectAllWithStrokeCount:(uint64_t)count externalElementsCount:
{
  if (count)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.selectAll"];
    AnalyticsSendEventLazy();
  }
}

id __76__PKStatisticsManager_recordSelectAllWithStrokeCount_externalElementsCount___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"strokeCount";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[1] = @"externalElementsCount";
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)recordInsertSpaceWithType:(uint64_t)type
{
  if (type)
  {
    v3 = +[PKCanvasSessionStatisticsManager sharedStatisticsManager];
    v4 = v3;
    if (v3)
    {
      [(PKCanvasSessionStatisticsManager *)v3 logFeatureUsed:?];
    }

    if ((a2 - 1) > 2)
    {
      v5 = @"fromLassoDrawAcross";
    }

    else
    {
      v5 = off_1E82DA818[a2 - 1];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.insertSpace"];
    AnalyticsSendEventLazy();
  }
}

id __49__PKStatisticsManager_recordInsertSpaceWithType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"insertSpaceType";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordInsertSpaceAddWhitespace:(uint64_t)whitespace
{
  if (whitespace)
  {
    v2 = @"removeWhitespace";
    if (a2)
    {
      v2 = @"addWhitespace";
    }

    v3 = v2;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.insertSpace"];
    v6 = v3;
    v5 = v3;
    AnalyticsSendEventLazy();
  }
}

id __54__PKStatisticsManager_recordInsertSpaceAddWhitespace___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4[0] = &unk_1F47C14C0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

- (void)recordJumpToSettings
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"palette.openPreferences"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordDrawWithFingerToggle:(uint64_t)toggle
{
  if (toggle)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"palette.toggleDrawWithFinger"];
    AnalyticsSendEventLazy();
  }
}

id __50__PKStatisticsManager_recordDrawWithFingerToggle___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"drawWithFingerEnabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordShowRuler
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"ruler.show"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordRulerInteractionEndedWithType:(uint64_t)type angle:(uint64_t)angle
{
  if (type)
  {
    v2 = @"mask";
    if (!angle)
    {
      v2 = @"snap";
    }

    v3 = v2;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"ruler.interaction"];
    v6 = v3;
    v5 = v3;
    AnalyticsSendEventLazy();
  }
}

id __65__PKStatisticsManager_recordRulerInteractionEndedWithType_angle___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"angle";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v5[1] = @"type";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (uint64_t)analyticsActionFromPreferredAction:(uint64_t)result
{
  if (result)
  {
    if ((a2 - 1) > 5)
    {
      return 0;
    }

    else
    {
      return qword_1C801E220[a2 - 1];
    }
  }

  return result;
}

- (uint64_t)recordPencilAction:(uint64_t)result doubleTap:
{
  if (result)
  {
    v1 = +[PKPencilDevice activePencil];
    [v1 pencilVersionForAnalytics];

    return AnalyticsSendEventLazy();
  }

  return result;
}

id __52__PKStatisticsManager_recordPencilAction_doubleTap___block_invoke(void *a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"action";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1[4]];
  v9[0] = v2;
  v8[1] = @"pencilVersion";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[5]];
  v9[1] = v3;
  v8[2] = @"trigger";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v9[2] = v4;
  v8[3] = @"bundleId_category";
  v5 = +[PKStatisticsManager bundleIDCategory];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)recordPalettePositionChange:(uint64_t)change type:
{
  if (self)
  {
    if (a2 > 4)
    {
      v3 = @"BottomRightCorner";
      v10 = @"BottomLeftCorner";
      if (a2 != 8)
      {
        v10 = 0;
      }

      v5 = a2 == 7 || a2 == 8;
      if (a2 != 7)
      {
        v3 = v10;
      }

      v6 = @"TopLeftCorner";
      v11 = @"TopRightCorner";
      if (a2 != 6)
      {
        v11 = 0;
      }

      v8 = a2 == 5 || a2 == 6;
      if (a2 != 5)
      {
        v6 = v11;
      }

      v9 = a2 <= 6;
    }

    else
    {
      v3 = @"BottomEdge";
      v4 = @"LeftEdge";
      if (a2 != 4)
      {
        v4 = 0;
      }

      v5 = a2 == 3 || a2 == 4;
      if (a2 != 3)
      {
        v3 = v4;
      }

      v6 = @"TopEdge";
      v7 = @"RightEdge";
      if (a2 != 2)
      {
        v7 = 0;
      }

      v8 = a2 == 1 || a2 == 2;
      if (a2 != 1)
      {
        v6 = v7;
      }

      v9 = a2 <= 2;
    }

    if (v9)
    {
      v12 = v8;
    }

    else
    {
      v12 = v5;
    }

    if (v9)
    {
      v13 = v6;
    }

    else
    {
      v13 = v3;
    }

    v14 = @"drawing";
    v15 = change - 1;
    if (change != 1)
    {
      v14 = 0;
    }

    if (change == 2)
    {
      v14 = @"ucb";
    }

    v16 = v14;
    if (v15 <= 1 && v12)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"palette.moved"];
      v18 = v16;
      AnalyticsSendEventLazy();
    }
  }
}

id __56__PKStatisticsManager_recordPalettePositionChange_type___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"paletteType";
  v4[1] = @"position";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)recordAutoMinimizeEnabledDidChange:(uint64_t)change type:
{
  if (self)
  {
    v3 = @"drawing";
    if (change != 1)
    {
      v3 = 0;
    }

    if (change == 2)
    {
      v3 = @"ucb";
    }

    v4 = v3;
    if (v4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"palette.autominimize"];
      v6 = v4;
      AnalyticsSendEventLazy();
    }
  }
}

id __63__PKStatisticsManager_recordAutoMinimizeEnabledDidChange_type___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"enabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v5[1] = @"paletteType";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (void)recordPixelObjectEraseModeChange:(uint64_t)change
{
  if (change)
  {
    v2 = @"bitmap";
    if (a2 == 1)
    {
      v2 = @"object";
    }

    v3 = v2;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"palette.eraser.typeSelected"];
    v6 = v3;
    v5 = v3;
    AnalyticsSendEventLazy();
  }
}

id __56__PKStatisticsManager_recordPixelObjectEraseModeChange___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"eraserType";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordToolAttributePopoverAppearedForTool:(uint64_t)tool hadInteraction:(void *)interaction
{
  interactionCopy = interaction;
  v4 = interactionCopy;
  if (tool && interactionCopy)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"palette.attributePopover.appear"];
    v6 = v4;
    AnalyticsSendEventLazy();
  }
}

id __80__PKStatisticsManager_recordToolAttributePopoverAppearedForTool_hadInteraction___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5[1] = @"userInteraction";
  v6[0] = v1;
  v5[0] = @"toolName";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (void)recordShapeEventWithType:(void *)type modeString:(void *)string
{
  typeCopy = type;
  stringCopy = string;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"shape"];
  v6 = typeCopy;
  v7 = stringCopy;
  AnalyticsSendEventLazy();
}

id __59__PKStatisticsManager_recordShapeEventWithType_modeString___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"shapeType";
  v4[1] = @"mode";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)recordCreateShapeWithType:(int)type fromMenu:(int)menu multiple:
{
  if (self)
  {
    v8 = +[PKCanvasSessionStatisticsManager sharedStatisticsManager];
    v9 = v8;
    if (v8)
    {
      [(PKCanvasSessionStatisticsManager *)v8 logFeatureUsed:?];
    }

    if ((a2 - 1) > 0xC)
    {
      v10 = @"Undefined";
    }

    else
    {
      v10 = off_1E82DA830[a2 - 1];
    }

    v11 = *(self + 8);
    v12 = @"multiple";
    if (!menu)
    {
      v12 = v10;
    }

    *(self + 8) = v12;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(self + 16) = v13;
    if (type)
    {
      v14 = @"fromMenu";
    }

    else
    {
      v14 = @"fromStroke";
    }

    [PKStatisticsManager recordShapeEventWithType:v10 modeString:v14];
  }
}

- (void)recordShapeUndoIfNecessary
{
  if (self && *(self + 8) && *(self + 16) > 0.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (v2 - *(self + 16) < 5.0)
    {
      [PKStatisticsManager recordShapeEventWithType:@"undo" modeString:?];
    }

    v3 = *(self + 8);
    *(self + 8) = 0;

    *(self + 16) = 0;
  }
}

- (void)recordUndoIfNecessary
{
  if (self)
  {
    if (*(self + 40))
    {
      *(self + 56) = 1;
    }

    [(PKStatisticsManager *)self recordShapeUndoIfNecessary];

    [(PKStatisticsManager *)self recordTextLineStraighteningUndoIfNecessary];
  }
}

- (void)recordDataDetectorItemAdd:(uint64_t)add
{
  if (add)
  {
    scannerResult = [a2 scannerResult];
    type = [scannerResult type];
    v4 = type;
    v5 = @"unknown";
    if (type)
    {
      v5 = type;
    }

    v6 = v5;

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"datadetector"];
    v8 = v6;
    AnalyticsSendEventLazy();
  }
}

id __49__PKStatisticsManager_recordDataDetectorItemAdd___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"add";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordDataDetectorItemRemove:(uint64_t)remove
{
  if (remove)
  {
    scannerResult = [a2 scannerResult];
    type = [scannerResult type];
    v4 = type;
    v5 = @"unknown";
    if (type)
    {
      v5 = type;
    }

    v6 = v5;

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"datadetector"];
    v8 = v6;
    AnalyticsSendEventLazy();
  }
}

id __52__PKStatisticsManager_recordDataDetectorItemRemove___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"remove";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordDataDetectorItemDefaultAction:(uint64_t)action
{
  if (action)
  {
    v2 = a2;
    v3 = +[PKCanvasSessionStatisticsManager sharedStatisticsManager];
    v4 = v3;
    if (v3)
    {
      [(PKCanvasSessionStatisticsManager *)v3 logFeatureUsed:?];
    }

    scannerResult = [v2 scannerResult];

    type = [scannerResult type];
    v7 = type;
    v8 = @"unknown";
    if (type)
    {
      v8 = type;
    }

    v9 = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"datadetector"];
    v11 = v9;
    AnalyticsSendEventLazy();
  }
}

id __59__PKStatisticsManager_recordDataDetectorItemDefaultAction___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"action";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordDataDetectorItemMenuAction:(uint64_t)action
{
  if (action)
  {
    v2 = a2;
    v3 = +[PKCanvasSessionStatisticsManager sharedStatisticsManager];
    v4 = v3;
    if (v3)
    {
      [(PKCanvasSessionStatisticsManager *)v3 logFeatureUsed:?];
    }

    scannerResult = [v2 scannerResult];

    type = [scannerResult type];
    v7 = type;
    v8 = @"unknown";
    if (type)
    {
      v8 = type;
    }

    v9 = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"datadetector"];
    v11 = v9;
    AnalyticsSendEventLazy();
  }
}

id __56__PKStatisticsManager_recordDataDetectorItemMenuAction___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"menu";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordHashtagItemAdd
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"hashtag"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordHashtagItemRemove
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"hashtag"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordHashtagItemActivate
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"hashtag"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordHashtagItemDeactivate
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"hashtag"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordMentionItemAdd
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"mention"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordMentionItemRemove
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"mention"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordMentionItemActivate
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"mention"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordMentionItemDeactivate
{
  if (self)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"mention"];
    AnalyticsSendEventLazy();
  }
}

- (void)submitRecentRollStroke
{
  recentRollStrokeInk = self->_recentRollStrokeInk;
  if (recentRollStrokeInk)
  {
    [(PKInk *)recentRollStrokeInk _isFountainPenInk];
    v4 = self->_recentRollStrokeInk;
    self->_recentRollStrokeInk = 0;

    AnalyticsSendEventLazy();
  }
}

id __45__PKStatisticsManager_submitRecentRollStroke__block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"pencilStrokeUndone";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v9[0] = v2;
  v8[1] = @"barrelRollMaxDegrees";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v9[1] = v3;
  v8[2] = @"toolSelected";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v9[2] = v4;
  v8[3] = @"bundleId_category";
  v5 = +[PKStatisticsManager bundleIDCategory];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)recordStrokeWithInk:(double)ink rollAngleDelta:
{
  v5 = a2;
  v6 = v5;
  if (self && ink > 0.0 && (([v5 _isFountainPenInkV2] & 1) != 0 || objc_msgSend(v6, "_isMarkerInk")))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKStatisticsManager_recordStrokeWithInk_rollAngleDelta___block_invoke;
    block[3] = &unk_1E82DA7B0;
    block[4] = self;
    v8 = v6;
    inkCopy = ink;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __58__PKStatisticsManager_recordStrokeWithInk_rollAngleDelta___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = v2;
  if (v1)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v1 selector:sel_submitRecentRollStroke object:0];
    [v1 submitRecentRollStroke];
    objc_storeStrong((v1 + 40), v2);
    *(v1 + 48) = v3;
    *(v1 + 56) = 0;
    [v1 performSelector:sel_submitRecentRollStroke withObject:0 afterDelay:3.0];
  }
}

@end