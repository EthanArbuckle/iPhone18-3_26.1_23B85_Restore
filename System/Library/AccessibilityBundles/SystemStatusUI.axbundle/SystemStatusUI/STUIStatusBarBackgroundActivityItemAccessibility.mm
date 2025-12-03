@interface STUIStatusBarBackgroundActivityItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axBackgroundActivityLabelByBackgroundActivityID:(uint64_t)d;
- (id)_axStatusBarModern;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyLabelToBackground;
- (void)_axSetupIconViewWithUpdateData:(id)data;
@end

@implementation STUIStatusBarBackgroundActivityItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarItemUpdate"];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" isKindOfClass:@"STUIStatusBarIndicatorItem"];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarIndicatorItem" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItemUpdate" hasInstanceMethod:@"data" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STStatusBarData" hasInstanceMethod:@"backgroundActivityEntry" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STStatusBarDataBackgroundActivityEntry" hasInstanceMethod:@"backgroundActivityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" hasInstanceMethod:@"createDisplayItemForIdentifier:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItem" hasInstanceMethod:@"setNeedsUpdate" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"STUIStatusBarPillBackgroundActivityItem" hasInstanceMethod:@"combinedView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarPillBackgroundActivityItem" isKindOfClass:@"STUIStatusBarBackgroundActivityItem"];
  [validationsCopy validateClass:@"STUIStatusBarPillBackgroundActivityItem" isKindOfClass:@"STUIStatusBarBackgroundActivityItem"];
  [validationsCopy validateClass:@"STUIStatusBar_Wrapper" isKindOfClass:@"UIStatusBar_Base"];
  [validationsCopy validateClass:@"UIStatusBar_Base" hasInstanceMethod:@"forceUpdate:" withFullSignature:{"v", "B", 0}];
}

void __101__STUIStatusBarBackgroundActivityItemAccessibility__axBackgroundActivityLabelByBackgroundActivityID___block_invoke()
{
  v23[47] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDC6EB0];
  v22[0] = *MEMORY[0x29EDC6EA8];
  v22[1] = v0;
  v23[0] = @"status.backgroundactivity.call.stewie";
  v23[1] = @"status.backgroundactivity.call.stewie.disconnected";
  v1 = *MEMORY[0x29EDC6F00];
  v22[2] = *MEMORY[0x29EDC6E20];
  v22[3] = v1;
  v23[2] = @"status.backgroundactivity.callRinging";
  v23[3] = @"status.backgroundactivity.videoConferenceRinging";
  v2 = *MEMORY[0x29EDC6EF8];
  v22[4] = *MEMORY[0x29EDC6E18];
  v22[5] = v2;
  v23[4] = @"status.backgroundactivity.call.handoff";
  v23[5] = @"status.backgroundactivity.video.handoff";
  v3 = *MEMORY[0x29EDC6E78];
  v22[6] = *MEMORY[0x29EDC6E70];
  v22[7] = v3;
  v23[6] = @"status.backgroundactivity.incall";
  v23[7] = @"status.backgroundactivity.videoconference";
  v4 = *MEMORY[0x29EDC6E68];
  v22[8] = *MEMORY[0x29EDC6DE8];
  v22[9] = v4;
  v23[8] = @"status.backgroundactivity.push.to.talk.active";
  v23[9] = @"status.backgroundactivity.push.to.talk.idle";
  v5 = *MEMORY[0x29EDC6F10];
  v22[10] = *MEMORY[0x29EDC6F18];
  v22[11] = v5;
  v23[10] = @"status.backgroundactivity.web.rtc.video";
  v23[11] = @"status.backgroundactivity.web.rtc.audio";
  v6 = *MEMORY[0x29EDC6E50];
  v22[12] = *MEMORY[0x29EDC6E58];
  v22[13] = v6;
  v23[12] = @"status.backgroundactivity.web.rtc.screen.video";
  v23[13] = @"status.backgroundactivity.web.rtc.screen.audio";
  v7 = *MEMORY[0x29EDC6E10];
  v22[14] = *MEMORY[0x29EDC6E88];
  v22[15] = v7;
  v23[14] = @"status.backgroundactivity.navigation";
  v23[15] = @"status.backgroundactivity.location";
  v8 = *MEMORY[0x29EDC6EA0];
  v22[16] = *MEMORY[0x29EDC6E90];
  v22[17] = v8;
  v23[16] = @"status.backgroundactivity.nearby.interactions";
  v23[17] = @"status.backgroundactivity.audiorecording";
  v9 = *MEMORY[0x29EDC6ED0];
  v22[18] = *MEMORY[0x29EDC6E60];
  v22[19] = v9;
  v23[18] = @"status.backgroundactivity.hearingaidrecording";
  v23[19] = @"status.backgroundactivity.shareplay";
  v10 = *MEMORY[0x29EDC6ED8];
  v22[20] = *MEMORY[0x29EDC6EE0];
  v22[21] = v10;
  v23[20] = @"status.backgroundactivity.shareplay.screen";
  v23[21] = @"status.backgroundactivity.shareplay.inactive";
  v11 = *MEMORY[0x29EDC6F08];
  v22[22] = *MEMORY[0x29EDC6E98];
  v22[23] = v11;
  v23[22] = @"status.backgroundactivity.playground";
  v23[23] = @"status.backgroundactivity.videoout";
  v12 = *MEMORY[0x29EDC6EC8];
  v22[24] = *MEMORY[0x29EDC6EC0];
  v22[25] = v12;
  v23[24] = @"status.backgroundactivity.screenshare";
  v23[25] = @"status.backgroundactivity.videoout";
  v13 = *MEMORY[0x29EDC6E08];
  v22[26] = *MEMORY[0x29EDC6EB8];
  v22[27] = v13;
  v23[26] = @"status.backgroundactivity.screenrecording";
  v23[27] = @"status.backgroundactivity.auto.airplay.ready";
  v14 = *MEMORY[0x29EDC6EE8];
  v22[28] = *MEMORY[0x29EDC6E00];
  v22[29] = v14;
  v23[28] = @"status.backgroundactivity.auto.airplay.play";
  v23[29] = @"status.backgroundactivity.sysdiagnose";
  v15 = *MEMORY[0x29EDC6E80];
  v22[30] = *MEMORY[0x29EDC6E48];
  v22[31] = v15;
  v23[30] = @"status.backgroundactivity.diagnostics";
  v23[31] = @"status.backgroundactivity.logging";
  v16 = *MEMORY[0x29EDC6DF8];
  v22[32] = *MEMORY[0x29EDC6E30];
  v22[33] = v16;
  v23[32] = @"status.backgroundactivity.carplay";
  v23[33] = @"status.backgroundactivity.assistant";
  v17 = *MEMORY[0x29EDC6DF0];
  v22[34] = *MEMORY[0x29EDC6EF0];
  v22[35] = v17;
  v23[34] = @"status.backgroundactivity.tethering";
  v23[35] = @"status.backgroundactivity.airprint";
  v18 = *MEMORY[0x29EDC6E40];
  v22[36] = *MEMORY[0x29EDC6E38];
  v22[37] = v18;
  v23[36] = @"status.backgroundactivity.sos";
  v23[37] = @"status.backgroundactivity.devtools";
  v22[38] = @"com.apple.mediaremoted.background-activity.routed-video";
  v22[39] = @"com.apple.mediaremoted.background-activity.routed-audio-pulse";
  v23[38] = @"status.backgroundactivity.mediaremote.video";
  v23[39] = @"status.backgroundactivity.mediaremote.video";
  v22[40] = @"com.apple.mediaremoted.background-activity.routed-audio";
  v22[41] = @"com.apple.mediaremoted.background-activity.routed-video-pulse";
  v23[40] = @"status.backgroundactivity.mediaremote.audio";
  v23[41] = @"status.backgroundactivity.mediaremote.audio";
  v22[42] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-video";
  v22[43] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-audio";
  v23[42] = @"status.backgroundactivity.continuitycapture.video";
  v23[43] = @"status.backgroundactivity.continuitycapture.audio";
  v22[44] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
  v22[45] = @"com.apple.systemstatus.background-activity.guestpass";
  v23[44] = @"status.backgroundactivity.continuitycapture.none";
  v23[45] = @"status.backgroundactivity.guestpass.session.active";
  v22[46] = *MEMORY[0x29EDC6E28];
  v23[46] = @"status.backgroundactivity.call.screening";
  v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v23 forKeys:v22 count:47];
  v20 = _MergedGlobals;
  _MergedGlobals = v19;

  v21 = *MEMORY[0x29EDCA608];
}

- (void)_axApplyLabelToBackground
{
  v3 = [self safeUIViewForKey:@"backgroundView"];
  [v3 setAccessibilityLabel:a2];
}

id __77__STUIStatusBarBackgroundActivityItemAccessibility__axApplyLabelToBackground__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AXStatusBarPillTimeView(WeakRetained);
  v6 = [v3 accessibilityLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

id __77__STUIStatusBarBackgroundActivityItemAccessibility__axApplyLabelToBackground__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AXStatusBarPillTimeView(WeakRetained);
  v6 = [v3 accessibilityLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  *block = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __94__STUIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  block[3] = &unk_29F306D68;
  block[4] = a2;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

uint64_t __94__STUIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"setNeedsUpdate"];
  v6 = *(a1 + 32);
  AXPerformSafeBlock();
  v3 = *(a1 + 32);
  MEMORY[0x29ED3ADB0](@"STUIStatusBarPillBackgroundActivityItem");
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = *(a1 + 32);
    return AXPerformSafeBlock();
  }

  return result;
}

void __94__STUIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeUIViewForKey:@"backgroundView"];
  v1 = [v2 _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBar_Wrapper")];
  [v1 forceUpdate:1];
}

void __94__STUIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeUIViewForKey:@"combinedView"];
  v1 = [v2 _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBar_Wrapper")];
  [v1 forceUpdate:1];
}

- (id)_axStatusBarModern
{
  _axBackgroundView = [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axBackgroundView];
  v3 = [_axBackgroundView _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBar_Wrapper")];

  return v3;
}

- (void)_axSetupIconViewWithUpdateData:(id)data
{
  dataCopy = data;
  MEMORY[0x29ED3ADB0](@"STUIStatusBarPillBackgroundActivityItem");
  if (objc_opt_isKindOfClass())
  {
    v5 = [(STUIStatusBarBackgroundActivityItemAccessibility *)self safeUIViewForKey:@"iconView"];
    if (dataCopy)
    {
      v6 = [dataCopy safeValueForKeyPath:@"data.backgroundActivityEntry"];
      v7 = [v6 safeStringForKey:@"backgroundActivityIdentifier"];

      if (([*MEMORY[0x29EDC6E70] isEqualToString:v7] & 1) != 0 || objc_msgSend(*MEMORY[0x29EDC6E78], "isEqualToString:", v7))
      {
        _axBackgroundView = [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axBackgroundView];
        _axStatusBarModern = [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axStatusBarModern];
        [_axStatusBarModern safeCGRectForKey:@"frame"];
        if (_axBackgroundView)
        {
          v11 = v10;
          if (v10 != 0.0)
          {
            [_axBackgroundView frame];
            if (v11 == v12)
            {
              [v5 _setIsAccessibilityElementBlock:&__block_literal_global_523];
              v13 = [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axBackgroundActivityLabelByBackgroundActivityID:v7];
              v15[0] = MEMORY[0x29EDCA5F8];
              v15[1] = 3221225472;
              v15[2] = __83__STUIStatusBarBackgroundActivityItemAccessibility__axSetupIconViewWithUpdateData___block_invoke_2;
              v15[3] = &unk_29F306DB0;
              v16 = v13;
              v14 = v13;
              [v5 _setAccessibilityLabelBlock:v15];

              goto LABEL_11;
            }
          }
        }
      }
    }

    [v5 _setIsAccessibilityElementBlock:0];
    [v5 _setAccessibilityLabelBlock:0];
LABEL_11:
  }
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarBackgroundActivityItemAccessibility;
  v4 = [(STUIStatusBarBackgroundActivityItemAccessibility *)&v6 createDisplayItemForIdentifier:identifier];
  [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axApplyLabelToBackground];

  return v4;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarBackgroundActivityItemAccessibility;
  updateCopy = update;
  v7 = [(STUIStatusBarBackgroundActivityItemAccessibility *)&v9 applyUpdate:updateCopy toDisplayItem:item];
  [(STUIStatusBarBackgroundActivityItemAccessibility *)self _accessibilitySetRetainedValue:updateCopy forKey:@"AccessibilityStatusBarUpdateData", v9.receiver, v9.super_class];

  [(STUIStatusBarBackgroundActivityItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v7;
}

- (id)_axBackgroundActivityLabelByBackgroundActivityID:(uint64_t)d
{
  v3 = a2;
  if (d)
  {
    if (qword_2A19F4620 != -1)
    {
      dispatch_once(&qword_2A19F4620, &__block_literal_global_0);
    }

    v4 = [_MergedGlobals objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = accessibilityLocalizedString(v4);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end