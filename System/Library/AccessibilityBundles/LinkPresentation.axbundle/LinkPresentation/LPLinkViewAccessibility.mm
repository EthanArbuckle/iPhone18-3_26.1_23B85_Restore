@interface LPLinkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axPlayPause:(id)pause;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (id)_axCaptionText;
- (id)_axITunesPlayButton;
- (id)_axMediaViews;
- (id)_axMuteAction;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilityMediaAnalysisOptions;
@end

@implementation LPLinkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LPCaptionBarView" hasInstanceVariable:@"_playButton" withType:"LPPlayButtonView"];
  [validationsCopy validateClass:@"LPStreamingAudioPlayButtonControl" hasInstanceVariable:@"_player" withType:"<LPAudioPlayer>"];
  [validationsCopy validateClass:@"LPStreamingAudioPlayer" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"LPStreamingAudioPlayer" hasInstanceMethod:@"progress" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"LPPlayButtonControl" hasInstanceMethod:@"buttonPressed:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"LPPlayButtonView" hasInstanceVariable:@"_button" withType:"LPPlayButtonControl"];
  [validationsCopy validateClass:@"LPVisualMediaView"];
  [validationsCopy validateClass:@"LPVisualMediaView" hasInstanceMethod:@"isMuted" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"LPVisualMediaView" hasInstanceMethod:@"_muteButtonTapRecognized:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"LPLinkView" hasInstanceMethod:@"metadata" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPLinkView" hasInstanceMethod:@"URL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPLinkView" hasInstanceMethod:@"_mediaTapRecognized:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"LPLinkMetadata" hasInstanceMethod:@"URL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPLinkMetadata" hasInstanceMethod:@"video" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPImageView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"LPLinkView" hasInstanceVariable:@"_properties" withType:"LPConcretePresentationProperties"];
  [validationsCopy validateClass:@"LPWebLinkPresentationProperties" hasInstanceMethod:@"quotedText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPWebLinkPresentationProperties" hasInstanceMethod:@"captionBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPLinkView" hasInstanceVariable:@"_components" withType:"LPLinkViewComponents"];
  [validationsCopy validateClass:@"LPLinkView" hasInstanceVariable:@"_captionButton" withType:"LPCaptionButtonPresentationProperties"];
  [validationsCopy validateClass:@"LPLinkViewComponents"];
  [validationsCopy validateClass:@"LPLinkViewComponents" hasInstanceMethod:@"captionBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPLinkViewComponents" hasInstanceMethod:@"media" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionBarView" hasInstanceMethod:@"collaborationFooterView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCollaborationFooterView" hasInstanceVariable:@"_optionsView" withType:"LPTextView"];
  [validationsCopy validateClass:@"LPCollaborationFooterView" hasInstanceVariable:@"_subtitleView" withType:"LPTextView"];
  [validationsCopy validateClass:@"LPTextView" hasInstanceMethod:@"attributedString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionBarPresentationProperties" hasInstanceMethod:@"top" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionBarPresentationProperties" hasInstanceMethod:@"bottom" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionRowPresentationProperties" hasInstanceMethod:@"leading" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionRowPresentationProperties" hasInstanceMethod:@"trailing" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionPresentationProperties" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionButtonPresentationProperties" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionButtonPresentationProperties" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPCaptionBarView" hasInstanceVariable:@"_bottomCaptionView" withType:"LPComponentView<LPTextStyleable><LPSubtitleButtonContainer>"];
  [validationsCopy validateClass:@"LPCaptionBarView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPHorizontalCaptionPairView" isKindOfClass:@"LPComponentView<LPTextStyleable><LPSubtitleButtonContainer>"];
  [validationsCopy validateClass:@"LPHorizontalCaptionPairView" hasInstanceVariable:@"_button" withType:"LPSubtitleButtonView"];
  [validationsCopy validateClass:@"LPCaptionBarButtonView"];
  [validationsCopy validateClass:@"LPCaptionBarButtonView" hasInstanceVariable:@"_button" withType:"UIButton"];
}

- (BOOL)isAccessibilityElement
{
  _axCaptionText = [(LPLinkViewAccessibility *)self _axCaptionText];
  v3 = [_axCaptionText length] != 0;

  return v3;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(LPLinkViewAccessibility *)self safeValueForKey:@"metadata"];
  v5 = [v4 safeValueForKey:@"video"];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"OpenURLStr");
    v8 = [v6 initWithName:v7 target:self selector:sel__axFollowLink];

    [array addObject:v8];
  }

  _axITunesPlayButton = [(LPLinkViewAccessibility *)self _axITunesPlayButton];
  if ([_axITunesPlayButton _accessibilityViewIsVisible])
  {
    NSClassFromString(&cfstr_Lpstreamingaud.isa);
    if (objc_opt_isKindOfClass())
    {
      v10 = [_axITunesPlayButton safeValueForKey:@"_player"];
      v11 = [v10 safeIntegerForKey:@"state"];

      if (v11 == 2)
      {
        v12 = @"pause.button";
      }

      else
      {
        v12 = @"play.button";
      }

      accessibilityCustomActions = accessibilityLocalizedString(v12);
      v14 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityCustomActions target:self selector:sel__axPlayPause_];
      [array addObject:v14];
    }

    else
    {
      NSClassFromString(&cfstr_Lpplaybuttonco_0.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      accessibilityCustomActions = [_axITunesPlayButton accessibilityCustomActions];
      [array axSafelyAddObjectsFromArray:accessibilityCustomActions];
    }
  }

LABEL_12:
  _axMuteAction = [(LPLinkViewAccessibility *)self _axMuteAction];
  if (_axMuteAction)
  {
    [array addObject:_axMuteAction];
  }

  v16 = [(LPLinkViewAccessibility *)self safeValueForKey:@"_captionButton"];
  if (v16)
  {
    _axCaptionText = [(LPLinkViewAccessibility *)self _axCaptionText];
    if ([_axCaptionText length])
    {
      v18 = [(LPLinkViewAccessibility *)self safeValueForKeyPath:@"_components.captionBar"];
      v19 = [v18 safeValueForKey:@"_bottomCaptionView"];
      NSClassFromString(&cfstr_Lphorizontalca.isa);
      v32 = v19;
      if (objc_opt_isKindOfClass())
      {
        LOBYTE(location) = 0;
        objc_opt_class();
        v20 = [v19 safeValueForKey:@"_button"];
        v21 = __UIAccessibilityCastAsClass();

        objc_initWeak(&location, v21);
        v22 = objc_alloc(MEMORY[0x29EDC78E0]);
        v39[0] = MEMORY[0x29EDCA5F8];
        v39[1] = 3221225472;
        v39[2] = __53__LPLinkViewAccessibility_accessibilityCustomActions__block_invoke;
        v39[3] = &unk_29F2C9B00;
        objc_copyWeak(&v40, &location);
        v23 = [v22 initWithName:_axCaptionText actionHandler:v39];
        [array addObject:v23];

        objc_destroyWeak(&v40);
        objc_destroyWeak(&location);

        v19 = v32;
      }

      v24 = [v18 safeValueForKey:{@"button", v32, v18, v4}];
      NSClassFromString(&cfstr_Lpcaptionbarbu_0.isa);
      if (objc_opt_isKindOfClass())
      {
        LOBYTE(location) = 0;
        objc_opt_class();
        v25 = [v24 safeValueForKeyPath:@"_button"];
        v26 = __UIAccessibilityCastAsClass();

        if (location == 1)
        {
          abort();
        }

        if (v26)
        {
          objc_initWeak(&location, v26);
          v27 = objc_alloc(MEMORY[0x29EDC78E0]);
          v37[0] = MEMORY[0x29EDCA5F8];
          v37[1] = 3221225472;
          v37[2] = __53__LPLinkViewAccessibility_accessibilityCustomActions__block_invoke_2;
          v37[3] = &unk_29F2C9B00;
          objc_copyWeak(&v38, &location);
          v28 = [v27 initWithName:_axCaptionText actionHandler:v37];
          [array addObject:v28];

          objc_destroyWeak(&v38);
          objc_destroyWeak(&location);
        }

        v18 = v34;
        v4 = v35;
        v19 = v33;
      }
    }
  }

  if ([array count])
  {
    accessibilityCustomActions2 = array;
  }

  else
  {
    v36.receiver = self;
    v36.super_class = LPLinkViewAccessibility;
    accessibilityCustomActions2 = [(LPLinkViewAccessibility *)&v36 accessibilityCustomActions];
  }

  v30 = accessibilityCustomActions2;

  return v30;
}

uint64_t __53__LPLinkViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

uint64_t __53__LPLinkViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

- (id)automationElements
{
  v20.receiver = self;
  v20.super_class = LPLinkViewAccessibility;
  automationElements = [(LPLinkViewAccessibility *)&v20 automationElements];
  v4 = [automationElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = array;

  _axITunesPlayButton = [(LPLinkViewAccessibility *)self _axITunesPlayButton];
  if ([_axITunesPlayButton _accessibilityViewIsVisible])
  {
    NSClassFromString(&cfstr_Lpstreamingaud.isa);
    if (objc_opt_isKindOfClass())
    {
      [v7 axSafelyAddObject:_axITunesPlayButton];
    }
  }

  v9 = [(LPLinkViewAccessibility *)self safeValueForKey:@"_captionButton"];
  _axCaptionText = [(LPLinkViewAccessibility *)self _axCaptionText];
  v11 = _axCaptionText;
  if (v9 && [_axCaptionText length])
  {
    v12 = [(LPLinkViewAccessibility *)self safeValueForKeyPath:@"_components.captionBar"];
    v13 = [v12 safeValueForKey:@"_bottomCaptionView"];
    NSClassFromString(&cfstr_Lphorizontalca.isa);
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v14 = [v13 safeValueForKey:@"_button"];
      v15 = __UIAccessibilityCastAsClass();

      [v7 axSafelyAddObject:v15];
    }

    v16 = [v12 safeValueForKey:@"button"];
    NSClassFromString(&cfstr_Lpcaptionbarbu_0.isa);
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v17 = [v16 safeValueForKeyPath:@"_button"];
      v18 = __UIAccessibilityCastAsClass();

      [v7 axSafelyAddObject:v18];
    }
  }

  return v7;
}

- (id)accessibilityLabel
{
  v87 = *MEMORY[0x29EDCA608];
  v3 = [(LPLinkViewAccessibility *)self safeValueForKey:@"metadata"];
  v4 = [v3 safeValueForKey:@"video"];
  v5 = [(LPLinkViewAccessibility *)self safeValueForKeyPath:@"_properties.captionBar"];
  v6 = v5;
  if (!v5)
  {
    v19 = [(LPLinkViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_0];
    v20 = AXLabelForElements();

    goto LABEL_35;
  }

  selfCopy = self;
  v74 = v3;
  v80 = [v5 safeValueForKey:@"top"];
  v76 = [v80 safeValueForKey:@"leading"];
  v7 = [v76 safeStringForKey:@"text"];
  v75 = [v6 safeValueForKey:@"top"];
  v8 = [v75 safeValueForKey:@"trailing"];
  v9 = [v8 safeStringForKey:@"text"];
  [v6 safeValueForKey:@"bottom"];
  v10 = v79 = v4;
  v11 = [v10 safeValueForKey:@"leading"];
  v12 = [v11 safeStringForKey:@"text"];
  v13 = v6;
  v14 = v12;
  v73 = v13;
  v15 = [v13 safeValueForKey:@"bottom"];
  v16 = [v15 safeValueForKey:@"trailing"];
  v72 = [v16 safeStringForKey:@"text"];
  v17 = __UIAXStringForVariables();

  v4 = v79;
  if (v79)
  {
    v18 = accessibilityLocalizedString(@"VideoStr");
  }

  else
  {
    v18 = 0;
  }

  v21 = __AXStringForVariables();

  v22 = selfCopy;
  if (v79)
  {
  }

  v23 = [(LPLinkViewAccessibility *)selfCopy safeValueForKey:@"_properties", v17, @"__AXStringForVariablesSentinel", v72, @"__AXStringForVariablesSentinel"];
  v24 = [v23 safeStringForKey:@"quotedText"];

  if ([v24 length])
  {
    v25 = MEMORY[0x29EDBA0F8];
    v26 = accessibilityLocalizedString(@"quoted.text");
    v68 = [v25 stringWithFormat:v26, v24];
    v70 = @"__AXStringForVariablesSentinel";
    v27 = __UIAXStringForVariables();

    v21 = v27;
  }

  [(LPLinkViewAccessibility *)selfCopy _axMediaViews:v68];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v28 = v85 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v82 objects:v86 count:16];
  v81 = v28;
  if (!v29)
  {
LABEL_32:
    v54 = v21;

    goto LABEL_34;
  }

  v30 = v29;
  v77 = v24;
  v31 = 0;
  v32 = 0;
  v33 = *v83;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v83 != v33)
      {
        objc_enumerationMutation(v28);
      }

      v35 = *(*(&v82 + 1) + 8 * i);
      NSClassFromString(&cfstr_Lpimageview.isa);
      if (objc_opt_isKindOfClass())
      {
        accessibilityLabel2 = [v35 safeValueForKey:@"_imageView"];
        accessibilityLabel = [accessibilityLabel2 accessibilityLabel];
        if ([accessibilityLabel length] && (AXStringIsSymbolName(accessibilityLabel) & 1) == 0)
        {
          v38 = v31;
          v39 = MEMORY[0x29EDBA0F8];
          v40 = accessibilityLocalizedString(@"caption.image");
          v69 = [v39 stringWithFormat:v40, accessibilityLabel];
          v71 = @"__AXStringForVariablesSentinel";
          v41 = __UIAXStringForVariables();
          v42 = v21;
          v21 = v41;

          v31 = v38;
          v28 = v81;
        }

        ++v32;
      }

      else
      {
        NSClassFromString(&cfstr_Lpvisualmediav.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        accessibilityLabel2 = [v35 accessibilityLabel];
        if ([accessibilityLabel2 length] && (AXStringIsSymbolName(accessibilityLabel2) & 1) == 0)
        {
          v43 = MEMORY[0x29EDBA0F8];
          accessibilityLocalizedString(@"caption.video");
          v45 = v44 = v31;
          v69 = [v43 stringWithFormat:v45, accessibilityLabel2];
          v71 = @"__AXStringForVariablesSentinel";
          v46 = __UIAXStringForVariables();

          v28 = v81;
          v31 = v44;
          v21 = v46;
        }

        ++v31;
      }
    }

    v30 = [v28 countByEnumeratingWithState:&v82 objects:v86 count:16];
  }

  while (v30);

  if (v32 >= 1)
  {
    v47 = MEMORY[0x29EDBA0F8];
    accessibilityLocalizedString(@"images.count.description");
    v49 = v48 = v31;
    v69 = [v47 localizedStringWithFormat:v49, v32];
    v71 = @"__AXStringForVariablesSentinel";
    v50 = __UIAXStringForVariables();

    v31 = v48;
    v21 = v50;
  }

  v4 = v79;
  v24 = v77;
  v22 = selfCopy;
  if (v31 >= 1)
  {
    v51 = v31;
    v52 = MEMORY[0x29EDBA0F8];
    v28 = accessibilityLocalizedString(@"videos.count.description");
    v69 = [v52 localizedStringWithFormat:v28, v51];
    v71 = @"__AXStringForVariablesSentinel";
    v53 = __UIAXStringForVariables();

    v21 = v53;
    goto LABEL_32;
  }

  v54 = v21;
LABEL_34:
  v55 = [(LPLinkViewAccessibility *)v22 safeValueForKey:@"_components", v69, v71];
  v56 = [v55 safeValueForKey:@"captionBar"];
  v57 = [v56 safeValueForKey:@"collaborationFooterView"];

  v58 = [v57 safeValueForKey:@"_optionsView"];
  v59 = [v57 safeValueForKey:@"_subtitleView"];
  objc_opt_class();
  v60 = [v58 safeValueForKey:@"attributedString"];
  v61 = __UIAccessibilityCastAsClass();

  string = [v61 string];

  objc_opt_class();
  v63 = [v59 safeValueForKey:@"attributedString"];
  v64 = __UIAccessibilityCastAsClass();

  string2 = [v64 string];

  v20 = __UIAXStringForVariables();

  v6 = v73;
  v3 = v74;
LABEL_35:

  v66 = *MEMORY[0x29EDCA608];

  return v20;
}

uint64_t __45__LPLinkViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Lptextview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityHint
{
  v3 = [(LPLinkViewAccessibility *)self safeValueForKey:@"metadata"];
  v4 = v3;
  if (!v3)
  {
    v6 = @"link.load.hint";
    goto LABEL_5;
  }

  v5 = [v3 safeValueForKey:@"video"];

  if (v5)
  {
    v6 = @"link.video.hint";
LABEL_5:
    accessibilityHint = accessibilityLocalizedString(v6);
    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = LPLinkViewAccessibility;
  accessibilityHint = [(LPLinkViewAccessibility *)&v10 accessibilityHint];
LABEL_7:
  v8 = accessibilityHint;

  return v8;
}

- (unint64_t)accessibilityTraits
{
  accessibilityUserDefinedTraits = [(LPLinkViewAccessibility *)self accessibilityUserDefinedTraits];

  if (accessibilityUserDefinedTraits)
  {
    v8.receiver = self;
    v8.super_class = LPLinkViewAccessibility;
    return [(LPLinkViewAccessibility *)&v8 accessibilityTraits];
  }

  else
  {
    v5 = [(LPLinkViewAccessibility *)self safeValueForKey:@"metadata"];
    v6 = [v5 safeValueForKey:@"video"];

    if (v6)
    {
      v4 = *MEMORY[0x29EDC7FC8] | *MEMORY[0x29EDC7F70];
    }

    else
    {
      v4 = *MEMORY[0x29EDC7F98];
    }
  }

  return v4;
}

- (id)accessibilityValue
{
  _axITunesPlayButton = [(LPLinkViewAccessibility *)self _axITunesPlayButton];
  NSClassFromString(&cfstr_Lpstreamingaud.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [_axITunesPlayButton safeValueForKey:@"_player"];
    v5 = [v4 safeIntegerForKey:@"state"];

    if ([_axITunesPlayButton _accessibilityViewIsVisible] && v5 == 2)
    {
      v6 = [_axITunesPlayButton safeValueForKey:@"_player"];
      [v6 safeDoubleForKey:@"progress"];

      accessibilityValue = AXFormatFloatWithPercentage();
      goto LABEL_7;
    }
  }

  else
  {
    [_axITunesPlayButton _accessibilityViewIsVisible];
  }

  v10.receiver = self;
  v10.super_class = LPLinkViewAccessibility;
  accessibilityValue = [(LPLinkViewAccessibility *)&v10 accessibilityValue];
LABEL_7:
  v8 = accessibilityValue;

  return v8;
}

- (BOOL)accessibilityActivate
{
  v14.receiver = self;
  v14.super_class = LPLinkViewAccessibility;
  accessibilityActivate = [(LPLinkViewAccessibility *)&v14 accessibilityActivate];
  if ([(LPLinkViewAccessibility *)self safeBoolForKey:@"_hasVideo"])
  {
    v4 = [(LPLinkViewAccessibility *)self safeValueForKey:@"_player"];
    [v4 safeFloatForKey:@"rate"];
    v5 = MEMORY[0x29EDBD7E8];
    if (v6 == 0.0)
    {
      v7 = @"PlayingStr";
    }

    else
    {
      v7 = @"PausedStr";
    }

    v8 = accessibilityLocalizedString(v7);
    v9 = [v5 axAttributedStringWithString:v8];

    [v9 setAttribute:&unk_2A21D5B48 forKey:*MEMORY[0x29EDBD860]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
  }

  v10 = [(LPLinkViewAccessibility *)self safeValueForKey:@"_components"];
  v11 = [v10 safeValueForKey:@"media"];
  NSClassFromString(&cfstr_Lpvisualmediav.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 safeBoolForKey:@"isMuted"])
  {
    v13 = v11;
    AXPerformSafeBlock();
  }

  return accessibilityActivate;
}

- (unsigned)_accessibilityMediaAnalysisOptions
{
  _axMediaViews = [(LPLinkViewAccessibility *)self _axMediaViews];
  v4 = [_axMediaViews count];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = LPLinkViewAccessibility;
  return [(LPLinkViewAccessibility *)&v6 _accessibilityMediaAnalysisOptions]| 0x10000;
}

- (id)_axITunesPlayButton
{
  v2 = [(LPLinkViewAccessibility *)self safeValueForKey:@"_components"];
  v3 = [v2 safeValueForKey:@"captionBar"];
  v4 = [v3 safeValueForKey:@"_playButton"];
  v5 = [v4 safeValueForKey:@"_button"];

  NSClassFromString(&cfstr_Lpplaybuttonco_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_axMuteAction
{
  v2 = [(LPLinkViewAccessibility *)self safeValueForKey:@"_components"];
  v3 = [v2 safeValueForKey:@"media"];
  NSClassFromString(&cfstr_Lpvisualmediav.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, v3);
    if ([v3 safeBoolForKey:@"isMuted"])
    {
      v4 = @"unmute.action.name";
    }

    else
    {
      v4 = @"mute.action.name";
    }

    v5 = accessibilityLocalizedString(v4);
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __40__LPLinkViewAccessibility__axMuteAction__block_invoke;
    v9[3] = &unk_29F2C9B00;
    objc_copyWeak(&v10, &location);
    v7 = [v6 initWithName:v5 actionHandler:v9];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __40__LPLinkViewAccessibility__axMuteAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __40__LPLinkViewAccessibility__axMuteAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _muteButtonTapRecognized:0];
}

- (BOOL)_axPlayPause:(id)pause
{
  _axITunesPlayButton = [(LPLinkViewAccessibility *)self _axITunesPlayButton];
  v3 = _axITunesPlayButton;
  AXPerformSafeBlock();

  return 1;
}

- (id)_axMediaViews
{
  v3 = [(LPLinkViewAccessibility *)self safeValueForKey:@"_components"];
  v4 = [v3 safeValueForKey:@"captionBar"];

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __40__LPLinkViewAccessibility__axMediaViews__block_invoke;
  v8[3] = &unk_29F2C9B70;
  v9 = v4;
  v5 = v4;
  v6 = [(LPLinkViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v8];

  return v6;
}

uint64_t __40__LPLinkViewAccessibility__axMediaViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  [*(a1 + 32) accessibilityFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 accessibilityFrame];
  v20.origin.x = v13;
  v20.origin.y = v14;
  v20.size.width = v15;
  v20.size.height = v16;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  if (CGRectContainsRect(v19, v20))
  {
    isKindOfClass = 0;
  }

  else
  {
    NSClassFromString(&cfstr_Lpimageview.isa);
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      NSClassFromString(&cfstr_Lpvisualmediav.isa);
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

- (id)_axCaptionText
{
  v2 = [(LPLinkViewAccessibility *)self safeValueForKey:@"_captionButton"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeStringForKey:@"text"];
    if (![v4 length])
    {
      objc_opt_class();
      v5 = [v3 safeValueForKey:@"attributedText"];
      v6 = __UIAccessibilityCastAsClass();

      string = [v6 string];

      v4 = string;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end