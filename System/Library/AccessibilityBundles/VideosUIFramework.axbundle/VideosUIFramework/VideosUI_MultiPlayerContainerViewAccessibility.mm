@interface VideosUI_MultiPlayerContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (_NSRange)accessibilityRowRange;
- (id)_axAllMultiviewContainers;
- (id)_axAllPlayerViewControls;
- (id)_axMultiView;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)removeFromSuperview;
@end

@implementation VideosUI_MultiPlayerContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.MultiPlayerContainerView" hasSwiftField:@"volumeIndicator" withSwiftType:"UIImageView"];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerContainerView" hasInstanceMethod:@"accessibilityNotifySnapshotRemoval" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController"];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerContainerView" hasSwiftField:@"playerViewController" withSwiftType:"AVPlayerViewController"];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController" hasSwiftField:@"playerView" withSwiftType:"MultiPlayerView"];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerView" hasSwiftField:@"containerViews" withSwiftType:"Array<MultiPlayerContainerView>"];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController" hasSwiftField:@"isDetailsViewControllerVisible" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController" hasInstanceMethod:@"setDetailsViewControllerVisible:animated:completion:" withFullSignature:{"v", "B", "B", "@?", 0}];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController" hasInstanceMethod:@"addPlayerViewController:animated:completion:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController" hasInstanceMethod:@"removePlayerViewController:animated:completion:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController" hasInstanceMethod:@"enterFullscreenWithPlayerViewController:completion:" withFullSignature:{"v", "@", "@?", 0}];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController" hasInstanceMethod:@"replacePlayerViewController:atIndex:animated:completion:" withFullSignature:{"v", "@", "q", "B", "@?", 0}];
  [validationsCopy validateClass:@"VUIPlaybackManager"];
  [validationsCopy validateClass:@"VideosUI.CardView"];
  [validationsCopy validateClass:@"VUIPlaybackManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIPlaybackManager" hasInstanceMethod:@"_multiviewInfoForPlayerViewController:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"VUIMultiviewPlaybackInfo" hasInstanceMethod:@"player" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVPPlaylist" hasInstanceMethod:@"currentMediaItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VideosUI.CardView" hasInstanceMethod:@"accessibilityLabelViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUITextLayout" hasInstanceMethod:@"textStyle" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"VUILabel" hasInstanceMethod:@"textLayout" withFullSignature:{"@", 0}];
}

- (id)_axMultiView
{
  objc_opt_class();
  v3 = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global startWithSelf:0];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_axAllPlayerViewControls
{
  _axMultiView = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axMultiView];
  _accessibilityViewController = [_axMultiView _accessibilityViewController];

  v4 = [_accessibilityViewController safeSwiftValueForKey:@"playerView"];
  v5 = [v4 safeSwiftArrayForKey:@"containerViews"];
  v6 = [v5 ax_mappedArrayUsingBlock:&__block_literal_global_378];

  return v6;
}

- (id)_axAllMultiviewContainers
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  superview = [v2 superview];

  v4 = [superview _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_381];

  return v4;
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v3 = [(VideosUI_MultiPlayerContainerViewAccessibility *)self safeSwiftValueForKey:@"editView"];
  v4 = __UIAccessibilityCastAsClass();

  _accessibilityViewIsVisible = [v4 _accessibilityViewIsVisible];
  return _accessibilityViewIsVisible ^ 1;
}

- (id)accessibilityValue
{
  string = [MEMORY[0x29EDBA050] string];
  objc_opt_class();
  v4 = [(VideosUI_MultiPlayerContainerViewAccessibility *)self safeSwiftValueForKey:@"volumeIndicator"];
  v5 = __UIAccessibilityCastAsClass();

  if (!v5)
  {
    v5 = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _accessibilityDescendantOfType:objc_opt_class()];
  }

  if (([v5 isHidden] & 1) == 0)
  {
    [v5 alpha];
    if (v6 > 0.0)
    {
      v11 = accessibilityLocalizedString(@"sports.audio.current");
      v13 = @"__AXStringForVariablesSentinel";
      v7 = __AXStringForVariables();

      string = v7;
    }
  }

  v8 = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axAllMultiviewContainers:v11];
  if (![v8 indexOfObject:self])
  {
    v12 = accessibilityLocalizedString(@"multiview.status.prominent");
    v9 = __AXStringForVariables();

    string = v9;
  }

  return string;
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29ED3FF70](@"VUIPlaybackManager" a2)];
  _axAVPlayer = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axAVPlayer];
  v5 = [v3 _multiviewInfoForPlayerViewController:_axAVPlayer];

  v6 = [v5 safeValueForKeyPath:@"player.currentMediaItem"];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy_;
  v53 = __Block_byref_object_dispose_;
  v54 = 0;
  v46[5] = MEMORY[0x29EDCA5F8];
  v46[6] = 3221225472;
  v46[7] = __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke;
  v46[8] = &unk_29F31BE78;
  v48 = &v49;
  v47 = v6;
  AXPerformSafeBlock();
  v41 = v47;
  v42 = v5;
  v7 = v50[5];

  _Block_object_dispose(&v49, 8);
  v8 = MEMORY[0x29ED3FF70](@"VideosUI.MultiViewPlayerHUDTemplateController");
  LOBYTE(v49) = 0;
  objc_opt_class();
  _axMultiView = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axMultiView];
  v46[0] = MEMORY[0x29EDCA5F8];
  v46[1] = 3221225472;
  v46[2] = __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke_2;
  v46[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v46[4] = v8;
  v10 = [_axMultiView _accessibilityFindSubviewDescendant:v46];
  v11 = __UIAccessibilityCastAsClass();

  if (v49 == 1)
  {
    goto LABEL_16;
  }

  _accessibilityViewController = [v11 _accessibilityViewController];

  v13 = [_accessibilityViewController safeSwiftValueForKey:@"templateViewModel"];
  v14 = [v13 safeSwiftArrayForKey:@"children"];
  firstObject = [v14 firstObject];

  v16 = [firstObject safeSwiftArrayForKey:@"groups"];
  firstObject2 = [v16 firstObject];

  v18 = [firstObject2 safeSwiftArrayForKey:@"_items"];
  if (![v18 count])
  {
    v29 = v7;
    v45.receiver = self;
    v45.super_class = VideosUI_MultiPlayerContainerViewAccessibility;
    accessibilityLabel = [(VideosUI_MultiPlayerContainerViewAccessibility *)&v45 accessibilityLabel];
    goto LABEL_13;
  }

  v38 = firstObject;
  v39 = v13;
  v40 = v3;
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke_3;
  v43[3] = &unk_29F31BEC0;
  v44 = v7;
  v37 = [v18 ax_firstObjectUsingBlock:v43];
  v19 = [v18 indexOfObject:?];
  v20 = [MEMORY[0x29EDB9FE0] indexPathForItem:v19 inSection:0];
  view = [_accessibilityViewController view];
  v22 = [view _accessibilityFindSubviewDescendant:&__block_literal_global_425];

  LOBYTE(v49) = 0;
  objc_opt_class();
  v36 = v22;
  v23 = __UIAccessibilityCastAsClass();
  if (v49 == 1)
  {
LABEL_16:
    abort();
  }

  v24 = v23;
  v35 = v20;
  v25 = [v23 cellForItemAtIndexPath:v20];
  v26 = [v25 _accessibilityFindSubviewDescendant:&__block_literal_global_431];
  v27 = [v26 safeArrayForKey:@"accessibilityLabelViews"];
  v28 = [v27 mutableCopy];

  if (![v28 count])
  {
LABEL_10:
    v29 = v7;
    accessibilityLabel2 = [v26 accessibilityLabel];
    if (!accessibilityLabel2)
    {
      goto LABEL_7;
    }

LABEL_11:
    v32 = accessibilityLabel2;
    accessibilityLabel2 = v32;
    goto LABEL_12;
  }

  v29 = v7;
  [v28 sortUsingComparator:&__block_literal_global_437];
  firstObject3 = [v28 firstObject];
  accessibilityLabel2 = [firstObject3 accessibilityLabel];

  if (![accessibilityLabel2 length])
  {

    v7 = v29;
    goto LABEL_10;
  }

  if (accessibilityLabel2)
  {
    goto LABEL_11;
  }

LABEL_7:
  v32 = accessibilityLocalizedString(@"multiview.game.unknown");
LABEL_12:
  accessibilityLabel = v32;

  v13 = v39;
  v3 = v40;
  firstObject = v38;
LABEL_13:

  return accessibilityLabel;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v47.receiver = self;
  v47.super_class = VideosUI_MultiPlayerContainerViewAccessibility;
  accessibilityCustomActions = [(VideosUI_MultiPlayerContainerViewAccessibility *)&v47 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  _axMultiView = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axMultiView];
  _accessibilityViewController = [_axMultiView _accessibilityViewController];

  MEMORY[0x29ED3FF70](@"VideosUI.MultiPlayerViewController");
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, _accessibilityViewController);
    v7 = [_accessibilityViewController safeSwiftBoolForKey:@"isDetailsViewControllerVisible"];
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    if (v7)
    {
      v9 = @"multiview.addMoreGames.grabber.hide";
    }

    else
    {
      v9 = @"multiview.addMoreGames.grabber.show";
    }

    v10 = accessibilityLocalizedString(v9);
    v42[0] = MEMORY[0x29EDCA5F8];
    v42[1] = 3221225472;
    v42[2] = __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke;
    v42[3] = &unk_29F31BF30;
    objc_copyWeak(&v43, &from);
    v44 = v7;
    v11 = [v8 initWithName:v10 actionHandler:v42];

    [array axSafelyAddObject:v11];
    _axAVPlayer = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axAVPlayer];

    if (_axAVPlayer)
    {
      v13 = objc_alloc(MEMORY[0x29EDC78E0]);
      v14 = accessibilityLocalizedString(@"multiview.removePlayer");
      v39[0] = MEMORY[0x29EDCA5F8];
      v39[1] = 3221225472;
      v39[2] = __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_3;
      v39[3] = &unk_29F31BF80;
      objc_copyWeak(&v40, &from);
      objc_copyWeak(&v41, &location);
      v15 = [v13 initWithName:v14 actionHandler:v39];

      [array axSafelyAddObject:v15];
      v16 = objc_alloc(MEMORY[0x29EDC78E0]);
      v17 = accessibilityLocalizedString(@"multiview.enterFullscreen");
      v36[0] = MEMORY[0x29EDCA5F8];
      v36[1] = 3221225472;
      v36[2] = __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_5;
      v36[3] = &unk_29F31BF80;
      objc_copyWeak(&v37, &from);
      objc_copyWeak(&v38, &location);
      v18 = [v16 initWithName:v17 actionHandler:v36];

      [array axSafelyAddObject:v18];
      _axAllPlayerViewControls = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axAllPlayerViewControls];
      _axAVPlayer2 = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axAVPlayer];
      v21 = [_axAllPlayerViewControls indexOfObject:_axAVPlayer2];

      if ([_axAllPlayerViewControls count])
      {
        LOBYTE(v35) = 0;
        objc_opt_class();
        v22 = [_axAllPlayerViewControls objectAtIndexedSubscript:0];
        v23 = __UIAccessibilityCastAsClass();
        v30 = v15;

        inited = objc_initWeak(&v35, v23);
        v25 = 0;
        if (v21)
        {
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            inited = [v23 view];
            v25 = inited != 0;
          }

          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
          }
        }

        if (v25)
        {
          v26 = objc_alloc(MEMORY[0x29EDC78E0]);
          v27 = accessibilityLocalizedString(@"multiview.move.prominent");
          v31[0] = MEMORY[0x29EDCA5F8];
          v31[1] = 3221225472;
          v31[2] = __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_7;
          v31[3] = &unk_29F31BFD0;
          objc_copyWeak(&v32, &location);
          objc_copyWeak(&v33, &from);
          objc_copyWeak(&v34, &v35);
          v28 = [v26 initWithName:v27 actionHandler:v31];

          [array axSafelyAddObject:v28];
          objc_destroyWeak(&v34);
          objc_destroyWeak(&v33);
          objc_destroyWeak(&v32);
        }

        objc_destroyWeak(&v35);

        v15 = v30;
      }

      objc_destroyWeak(&v38);
      objc_destroyWeak(&v37);

      objc_destroyWeak(&v41);
      objc_destroyWeak(&v40);
    }

    objc_destroyWeak(&v43);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return array;
}

- (_NSRange)accessibilityRowRange
{
  v8.receiver = self;
  v8.super_class = VideosUI_MultiPlayerContainerViewAccessibility;
  [(VideosUI_MultiPlayerContainerViewAccessibility *)&v8 accessibilityRowRange];
  _axAllMultiviewContainers = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axAllMultiviewContainers];
  v4 = [_axAllMultiviewContainers count];
  v5 = [_axAllMultiviewContainers indexOfObject:self];

  v6 = v5;
  v7 = v4;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)removeFromSuperview
{
  accessibilityLabel = [(VideosUI_MultiPlayerContainerViewAccessibility *)self accessibilityLabel];
  _axAVPlayer = [(VideosUI_MultiPlayerContainerViewAccessibility *)self _axAVPlayer];
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  connectedScenes = [mEMORY[0x29EDC7938] connectedScenes];
  allObjects = [connectedScenes allObjects];
  v8 = [allObjects ax_flatMappedArrayUsingBlock:&__block_literal_global_468];
  lastObject = [v8 lastObject];

  v16.receiver = self;
  v16.super_class = VideosUI_MultiPlayerContainerViewAccessibility;
  [(VideosUI_MultiPlayerContainerViewAccessibility *)&v16 removeFromSuperview];
  v13 = lastObject;
  v14 = _axAVPlayer;
  v15 = accessibilityLabel;
  v10 = accessibilityLabel;
  v11 = _axAVPlayer;
  v12 = lastObject;
  AXPerformBlockOnMainThreadAfterDelay();
}

@end