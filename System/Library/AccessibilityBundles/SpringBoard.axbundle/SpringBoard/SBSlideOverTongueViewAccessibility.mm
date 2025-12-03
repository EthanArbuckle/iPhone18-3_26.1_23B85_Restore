@interface SBSlideOverTongueViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axPerformGestureForAction:(id)action;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGRect)accessibilityFrame;
- (id)_accessibilityActionsForSlideOverApp;
- (id)_accessibilitySlideOverApplication;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityIdentification;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SBSlideOverTongueViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_switcherControllerForDisplayItem:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBSwitcherController" hasInstanceMethod:@"_deviceApplicationSceneHandleForDisplayItem:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSlideOverTongueView" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"SBSlideOverTongueView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMainSwitcherRootSwitcherModifier" isKindOfClass:@"SBSwitcherModifier"];
  [validationsCopy validateClass:@"SBSwitcherModifier" isKindOfClass:@"SBSwitcherModifierBase"];
  [validationsCopy validateClass:@"SBSwitcherModifierBase" conformsToProtocol:@"SBSwitcherMultitaskingQueryProviding"];
  [validationsCopy validateProtocol:@"SBSwitcherMultitaskingQueryProviding" conformsToProtocol:@"SBSwitcherQueryProviding"];
  [validationsCopy validateProtocol:@"SBSwitcherQueryProviding" hasRequiredInstanceMethod:@"appLayoutToAttachSlideOverTongue"];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"allItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneHandle" isKindOfClass:@"SBApplicationSceneHandle"];
  [validationsCopy validateClass:@"SBApplicationSceneHandle" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _accessibilitySlideOverApplication = [(SBSlideOverTongueViewAccessibility *)self _accessibilitySlideOverApplication];
  v3 = [_accessibilitySlideOverApplication safeStringForKey:@"displayName"];
  if ([v3 length])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"app.pip.nib.label");
    v6 = [v4 stringWithFormat:v5, v3];
  }

  else
  {
    v6 = accessibilityLocalizedString(@"app.pip.slide.over.tongue");
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = SBSlideOverTongueViewAccessibility;
  accessibilityTraits = [(SBSlideOverTongueViewAccessibility *)&v7 accessibilityTraits];
  _accessibilitySlideOverApplication = [(SBSlideOverTongueViewAccessibility *)self _accessibilitySlideOverApplication];
  if (_accessibilitySlideOverApplication)
  {
    v5 = 0;
  }

  else
  {
    v5 = *MEMORY[0x29EDC7F70];
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityHint
{
  if ([(SBSlideOverTongueViewAccessibility *)self _accessibilityState]== 1)
  {
    v2 = accessibilityLocalizedString(@"app.pip.slide.over.tongue.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityIdentification
{
  _accessibilitySlideOverApplication = [(SBSlideOverTongueViewAccessibility *)self _accessibilitySlideOverApplication];
  v3 = [_accessibilitySlideOverApplication safeStringForKey:@"bundleIdentifier"];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = [(SBSlideOverTongueViewAccessibility *)self safeUIViewForKey:@"_tongueContainerView"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 1)
  {
    server = [MEMORY[0x29EDBDFA8] server];
    v4 = [server performMedusaGesture:16];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], &stru_2A22F9D20);
    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBSlideOverTongueViewAccessibility;
    return [(SBSlideOverTongueViewAccessibility *)&v6 accessibilityScroll:?];
  }
}

- (id)accessibilityCustomActions
{
  v3 = AXSpringBoardFloatingBundleID();
  if (v3 && (-[SBSlideOverTongueViewAccessibility accessibilityIdentification](self, "accessibilityIdentification"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:v3], v4, v5))
  {
    _accessibilityActionsForSlideOverApp = [(SBSlideOverTongueViewAccessibility *)self _accessibilityActionsForSlideOverApp];
  }

  else
  {
    _accessibilityActionsForSlideOverApp = 0;
  }

  if ([_accessibilityActionsForSlideOverApp count])
  {
    accessibilityCustomActions = _accessibilityActionsForSlideOverApp;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSlideOverTongueViewAccessibility;
    accessibilityCustomActions = [(SBSlideOverTongueViewAccessibility *)&v10 accessibilityCustomActions];
  }

  v8 = accessibilityCustomActions;

  return v8;
}

- (id)_accessibilitySlideOverApplication
{
  v2 = [(SBSlideOverTongueViewAccessibility *)self safeValueForKey:@"delegate"];
  v3 = [v2 safeValueForKeyPath:@"personality.rootModifier.appLayoutToAttachSlideOverTongue"];
  v4 = [v3 safeArrayForKey:@"allItems"];
  firstObject = [v4 firstObject];

  AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v13 = v20 = 0;
  v14 = firstObject;
  AXPerformSafeBlock();
  v6 = v16[5];

  _Block_object_dispose(&v15, 8);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v10 = MEMORY[0x29EDCA5F8];
  v11 = v6;
  v12 = v14;
  AXPerformSafeBlock();
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);
  v8 = [v7 safeValueForKey:{@"application", v10, 3221225472, __72__SBSlideOverTongueViewAccessibility__accessibilitySlideOverApplication__block_invoke_2, &unk_29F2FB9F0}];

  return v8;
}

uint64_t __72__SBSlideOverTongueViewAccessibility__accessibilitySlideOverApplication__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _switcherControllerForDisplayItem:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __72__SBSlideOverTongueViewAccessibility__accessibilitySlideOverApplication__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _deviceApplicationSceneHandleForDisplayItem:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityActionsForSlideOverApp
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = AXSpringBoardFloatingAppLabel();
  server = [MEMORY[0x29EDBDFA8] server];
  allowedMedusaGestures = [server allowedMedusaGestures];

  v31 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  userInterfaceLayoutDirection = [*MEMORY[0x29EDC8008] userInterfaceLayoutDirection];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = allowedMedusaGestures;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        integerValue = [*(*(&v32 + 1) + 8 * i) integerValue];
        v11 = integerValue;
        if (integerValue > 13)
        {
          if (integerValue == 14)
          {
            v18 = MEMORY[0x29EDBA0F8];
            v19 = accessibilityLocalizedString(@"app.pip.nib.action.dismiss.app");
            v17 = [v18 stringWithFormat:v19, v2];

            if (v17)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (integerValue == 15)
            {
              v14 = @"app.pip.open.floating.switcher";
            }

            else
            {
              if (integerValue != 16)
              {
                continue;
              }

              v14 = @"app.pip.swipe.right.floating.switcher";
            }

            v17 = accessibilityLocalizedString(v14);
            if (v17)
            {
LABEL_34:
              v23 = [[AXSBSideAppCustomAction alloc] initWithName:v17 gesture:v11 target:self selector:sel__axPerformGestureForAction_];
              [v31 axSafelyAddObject:v23];

              continue;
            }
          }
        }

        else if ((integerValue - 5) < 2)
        {
          v15 = MEMORY[0x29EDBA0F8];
          v16 = accessibilityLocalizedString(@"app.pip.nib.action.create.split.view.app");
          v17 = [v15 stringWithFormat:v16, v2];

          if (v17)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (integerValue == 9)
          {
            v20 = MEMORY[0x29EDBA0F8];
            if (userInterfaceLayoutDirection == 1)
            {
              v21 = accessibilityLocalizedString(@"app.pip.nib.action.move.app.left");
              v28 = v21;
            }

            else
            {
              v21 = accessibilityLocalizedString(@"app.pip.nib.action.move.app.right");
              v27 = v21;
            }

            v17 = [v20 stringWithFormat:v21, v2];
            if (userInterfaceLayoutDirection == 1)
            {
              v22 = v28;
            }

            else
            {
              v22 = v27;
            }
          }

          else
          {
            if (integerValue != 10)
            {
              continue;
            }

            v12 = MEMORY[0x29EDBA0F8];
            if (userInterfaceLayoutDirection == 1)
            {
              v13 = accessibilityLocalizedString(@"app.pip.nib.action.move.app.right");
              v26 = v13;
            }

            else
            {
              v13 = accessibilityLocalizedString(@"app.pip.nib.action.move.app.left");
              v25 = v13;
            }

            v17 = [v12 stringWithFormat:v13, v2];
            if (userInterfaceLayoutDirection == 1)
            {
              v22 = v26;
            }

            else
            {
              v22 = v25;
            }
          }

          if (v17)
          {
            goto LABEL_34;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v7);
  }

  return v31;
}

- (BOOL)_axPerformGestureForAction:(id)action
{
  v3 = MEMORY[0x29EDBDFA8];
  actionCopy = action;
  server = [v3 server];
  gesture = [actionCopy gesture];

  LOBYTE(actionCopy) = [server performMedusaGesture:gesture];
  return actionCopy;
}

@end