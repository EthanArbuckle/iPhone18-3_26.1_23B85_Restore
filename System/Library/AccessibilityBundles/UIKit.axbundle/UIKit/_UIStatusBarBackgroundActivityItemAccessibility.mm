@interface _UIStatusBarBackgroundActivityItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axBackgroundActivityLabelByType:(uint64_t)type;
- (id)_axStatusBarModern;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (uint64_t)_accessibilityHasRequestedForceUpdate;
- (uint64_t)_accessibilitySetHasRequestedForceUpdate:(uint64_t)result;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyLabelToBackground;
- (void)_axSetupIconViewWithUpdateData:(id)data;
@end

@implementation _UIStatusBarBackgroundActivityItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"_UIStatusBarItemUpdate";
  [location[0] validateClass:?];
  v7 = @"_UIStatusBarBackgroundActivityItem";
  v3 = @"_UIStatusBarIndicatorItem";
  [location[0] validateClass:? isKindOfClass:?];
  v5 = "@";
  [location[0] validateClass:@"_UIStatusBarBackgroundActivityItem" hasInstanceMethod:@"backgroundView" withFullSignature:0];
  [location[0] validateClass:v7 hasInstanceMethod:@"iconView" withFullSignature:{v5, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"imageView" withFullSignature:{v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"data" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIStatusBarData" hasInstanceMethod:@"backgroundActivityEntry" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIStatusBarDataBackgroundActivityEntry" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{v5, v5, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"createDisplayItemForIdentifier:" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIStatusBarItem" hasInstanceMethod:@"setNeedsUpdate" withFullSignature:{"v", 0}];
  v6 = @"_UIStatusBarPillBackgroundActivityItem";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 isKindOfClass:v7];
  [location[0] validateClass:@"_UIStatusBarFullBackgroundActivityItem" isKindOfClass:v7];
  objc_storeStrong(v9, v8);
}

- (id)_axBackgroundActivityLabelByType:(uint64_t)type
{
  typeCopy = type;
  v6 = a2;
  if (type)
  {
    v5 = 0;
    location = 0;
    switch(v6)
    {
      case 0:
        objc_storeStrong(&location, @"status.backgroundactivity.call.stewie");
        objc_storeStrong(&v5, @"Accessibility-stewie");
        break;
      case 1:
        objc_storeStrong(&location, @"status.backgroundactivity.call.stewie.disconnected");
        objc_storeStrong(&v5, @"Accessibility-stewie");
        break;
      case 2:
        objc_storeStrong(&location, @"status.backgroundactivity.callRinging");
        break;
      case 3:
        objc_storeStrong(&location, @"status.backgroundactivity.videoConferenceRinging");
        break;
      case 4:
        objc_storeStrong(&location, @"status.backgroundactivity.call.handoff");
        break;
      case 5:
        objc_storeStrong(&location, @"status.backgroundactivity.video.handoff");
        break;
      case 6:
        objc_storeStrong(&location, @"status.backgroundactivity.incall");
        break;
      case 7:
        objc_storeStrong(&location, @"status.backgroundactivity.videoconference");
        break;
      case 8:
        objc_storeStrong(&location, @"status.backgroundactivity.push.to.talk.active");
        break;
      case 9:
        objc_storeStrong(&location, @"status.backgroundactivity.push.to.talk.idle");
        break;
      case 10:
        objc_storeStrong(&location, @"status.backgroundactivity.web.rtc.video");
        break;
      case 11:
        objc_storeStrong(&location, @"status.backgroundactivity.web.rtc.audio");
        break;
      case 12:
        objc_storeStrong(&location, @"status.backgroundactivity.web.rtc.screen.video");
        break;
      case 13:
        objc_storeStrong(&location, @"status.backgroundactivity.web.rtc.screen.audio");
        break;
      case 14:
        objc_storeStrong(&location, @"status.backgroundactivity.navigation");
        break;
      case 15:
        objc_storeStrong(&location, @"status.backgroundactivity.location");
        break;
      case 16:
        objc_storeStrong(&location, @"status.backgroundactivity.nearby.interactions");
        break;
      case 17:
        objc_storeStrong(&location, @"status.backgroundactivity.audiorecording");
        break;
      case 18:
        objc_storeStrong(&location, @"status.backgroundactivity.hearingaidrecording");
        break;
      case 19:
        objc_storeStrong(&location, @"status.backgroundactivity.shareplay");
        break;
      case 20:
        objc_storeStrong(&location, @"status.backgroundactivity.shareplay.screen");
        break;
      case 21:
        objc_storeStrong(&location, @"status.backgroundactivity.shareplay.inactive");
        break;
      case 22:
        objc_storeStrong(&location, @"status.backgroundactivity.playground");
        break;
      case 23:
      case 25:
        objc_storeStrong(&location, @"status.backgroundactivity.videoout");
        break;
      case 24:
        objc_storeStrong(&location, @"status.backgroundactivity.screenshare");
        break;
      case 26:
        objc_storeStrong(&location, @"status.backgroundactivity.screenrecording");
        break;
      case 27:
        objc_storeStrong(&location, @"status.backgroundactivity.auto.airplay.ready");
        break;
      case 28:
        objc_storeStrong(&location, @"status.backgroundactivity.auto.airplay.play");
        break;
      case 29:
        objc_storeStrong(&location, @"status.backgroundactivity.sysdiagnose");
        break;
      case 30:
        objc_storeStrong(&location, @"status.backgroundactivity.diagnostics");
        break;
      case 31:
        objc_storeStrong(&location, @"status.backgroundactivity.logging");
        break;
      case 32:
        objc_storeStrong(&location, @"status.backgroundactivity.carplay");
        break;
      case 33:
        objc_storeStrong(&location, @"status.backgroundactivity.assistant");
        break;
      case 34:
        objc_storeStrong(&location, @"status.backgroundactivity.tethering");
        break;
      case 35:
        objc_storeStrong(&location, @"status.backgroundactivity.airprint");
        break;
      case 36:
        objc_storeStrong(&location, @"status.backgroundactivity.sos");
        break;
      case 37:
        objc_storeStrong(&location, @"status.backgroundactivity.devtools");
        break;
      default:
        break;
    }

    if (v5)
    {
      v8 = accessibilityLocalizedStringInTable(location, v5);
    }

    else
    {
      v8 = accessibilityLocalizedString(location);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v8 = 0;
  }

  v2 = v8;

  return v2;
}

- (void)_axApplyLabelToBackground
{
  selfCopy = self;
  if (self)
  {
    v23 = [selfCopy _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
    NSClassFromString(&cfstr_Uistatusbarite_3.isa);
    if (objc_opt_isKindOfClass())
    {
      v4 = [v23 safeValueForKeyPath:@"data.backgroundActivityEntry"];
      v5 = [v4 safeIntegerForKey:@"type"];
      MEMORY[0x29EDC9740](v4);
      v22[1] = v5;
      v22[0] = [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _axBackgroundActivityLabelByType:v5];
      NSClassFromString(&cfstr_Uistatusbarpil_1.isa);
      if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Uistatusbarful.isa), (objc_opt_isKindOfClass()))
      {
        v21 = [selfCopy safeUIViewForKey:@"backgroundView"];
        objc_initWeak(&location, v21);
        v3 = v21;
        v13 = MEMORY[0x29EDCA5F8];
        v14 = -1073741824;
        v15 = 0;
        v16 = __76___UIStatusBarBackgroundActivityItemAccessibility__axApplyLabelToBackground__block_invoke;
        v17 = &unk_29F30E4A0;
        v18 = MEMORY[0x29EDC9748](v22[0]);
        objc_copyWeak(&v19, &location);
        [v3 _setAccessibilityLabelBlock:&v13];
        v2 = [selfCopy safeUIViewForKey:@"combinedView"];
        v6 = MEMORY[0x29EDCA5F8];
        v7 = -1073741824;
        v8 = 0;
        v9 = __76___UIStatusBarBackgroundActivityItemAccessibility__axApplyLabelToBackground__block_invoke_2;
        v10 = &unk_29F30E4A0;
        v11 = MEMORY[0x29EDC9748](v22[0]);
        objc_copyWeak(&v12, &location);
        [v2 _setAccessibilityLabelBlock:&v6];
        MEMORY[0x29EDC9740](v2);
        objc_destroyWeak(&v12);
        objc_storeStrong(&v11, 0);
        objc_destroyWeak(&v19);
        objc_storeStrong(&v18, 0);
        objc_destroyWeak(&location);
        objc_storeStrong(&v21, 0);
      }

      else
      {
        v1 = [selfCopy safeUIViewForKey:@"backgroundView"];
        [v1 setAccessibilityLabel:v22[0]];
        MEMORY[0x29EDC9740](v1);
      }

      objc_storeStrong(v22, 0);
    }

    objc_storeStrong(&v23, 0);
  }
}

- (uint64_t)_accessibilityHasRequestedForceUpdate
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_accessibilitySetHasRequestedForceUpdate:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = _UIStatusBarBackgroundActivityItemAccessibility;
  [(_UIStatusBarBackgroundActivityItemAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v12 = [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
  if (!v12 && ([(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _accessibilityHasRequestedForceUpdate]& 1) == 0)
  {
    [_UIStatusBarBackgroundActivityItemAccessibility _accessibilitySetHasRequestedForceUpdate:selfCopy];
    v3 = MEMORY[0x29EDCA578];
    v2 = MEMORY[0x29EDCA578];
    queue = v3;
    v6 = MEMORY[0x29EDCA5F8];
    v7 = -1073741824;
    v8 = 0;
    v9 = __93___UIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v10 = &unk_29F30C7C8;
    v11 = MEMORY[0x29EDC9748](selfCopy);
    dispatch_async(queue, &v6);
    MEMORY[0x29EDC9740](queue);
    objc_storeStrong(&v11, 0);
  }

  [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _axApplyLabelToBackground];
  v5 = [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy safeUIViewForKey:@"imageView"];
  [v5 setIsAccessibilityElement:0];
  [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _axSetupIconViewWithUpdateData:v12];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v12, 0);
}

- (id)_axStatusBarModern
{
  _axBackgroundView = [(_UIStatusBarBackgroundActivityItemAccessibility *)self _axBackgroundView];
  v4 = [_axBackgroundView _accessibilityAncestorIsKindOf:objc_opt_class()];
  MEMORY[0x29EDC9740](_axBackgroundView);

  return v4;
}

- (void)_axSetupIconViewWithUpdateData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  NSClassFromString(&cfstr_Uistatusbarful.isa);
  if (objc_opt_isKindOfClass())
  {
    v31 = 0;
    v30 = [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy safeUIViewForKey:@"iconView"];
    if (location[0])
    {
      v18 = [location[0] safeValueForKeyPath:@"data.backgroundActivityEntry"];
      v19 = [v18 safeIntegerForKey:@"type"];
      *&v3 = MEMORY[0x29EDC9740](v18).n128_u64[0];
      v29 = v19;
      if (v19 == 6 || v29 == 7)
      {
        _axBackgroundView = [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _axBackgroundView];
        _axStatusBarModern = [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _axStatusBarModern];
        if (_axBackgroundView)
        {
          [_axStatusBarModern frame];
          v26[9] = v5;
          v26[10] = v6;
          v26[11] = v4;
          v26[12] = v7;
          if (*&v4 != 0.0)
          {
            [_axStatusBarModern frame];
            v26[5] = v8;
            v26[6] = v9;
            v26[7] = v10;
            v26[8] = v11;
            v17 = *&v10;
            [_axBackgroundView frame];
            v26[1] = v12;
            v26[2] = v13;
            v26[3] = v14;
            v26[4] = v15;
            if (v17 == *&v14)
            {
              [v30 _setIsAccessibilityElementBlock:{&__block_literal_global_62, v17}];
              v26[0] = [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _axBackgroundActivityLabelByType:v29];
              v16 = v30;
              v20 = MEMORY[0x29EDCA5F8];
              v21 = -1073741824;
              v22 = 0;
              v23 = __82___UIStatusBarBackgroundActivityItemAccessibility__axSetupIconViewWithUpdateData___block_invoke_2;
              v24 = &unk_29F30CDE8;
              v25 = MEMORY[0x29EDC9748](v26[0]);
              [v16 _setAccessibilityLabelBlock:&v20];
              v31 = 1;
              objc_storeStrong(&v25, 0);
              objc_storeStrong(v26, 0);
            }
          }
        }

        objc_storeStrong(&_axStatusBarModern, 0);
        objc_storeStrong(&_axBackgroundView, 0);
      }
    }

    if ((v31 & 1) == 0)
    {
      [v30 _setIsAccessibilityElementBlock:?];
      [v30 _setAccessibilityLabelBlock:0];
    }

    objc_storeStrong(&v30, 0);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v5.receiver = selfCopy;
  v5.super_class = _UIStatusBarBackgroundActivityItemAccessibility;
  v6 = [(_UIStatusBarBackgroundActivityItemAccessibility *)&v5 createDisplayItemForIdentifier:location[0]];
  [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _axApplyLabelToBackground];
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v9 = 0;
  objc_storeStrong(&v9, item);
  v7.receiver = selfCopy;
  v7.super_class = _UIStatusBarBackgroundActivityItemAccessibility;
  v8 = [(_UIStatusBarBackgroundActivityItemAccessibility *)&v7 applyUpdate:location[0] toDisplayItem:v9];
  [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _accessibilitySetRetainedValue:location[0] forKey:@"AccessibilityStatusBarUpdateData"];
  [(_UIStatusBarBackgroundActivityItemAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  v6 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end