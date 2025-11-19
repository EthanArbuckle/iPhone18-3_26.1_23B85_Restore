@interface SBSlideOverTongueViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axPerformGestureForAction:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
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

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_switcherControllerForDisplayItem:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_deviceApplicationSceneHandleForDisplayItem:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSlideOverTongueView" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SBSlideOverTongueView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainSwitcherRootSwitcherModifier" isKindOfClass:@"SBSwitcherModifier"];
  [v3 validateClass:@"SBSwitcherModifier" isKindOfClass:@"SBSwitcherModifierBase"];
  [v3 validateClass:@"SBSwitcherModifierBase" conformsToProtocol:@"SBSwitcherMultitaskingQueryProviding"];
  [v3 validateProtocol:@"SBSwitcherMultitaskingQueryProviding" conformsToProtocol:@"SBSwitcherQueryProviding"];
  [v3 validateProtocol:@"SBSwitcherQueryProviding" hasRequiredInstanceMethod:@"appLayoutToAttachSlideOverTongue"];
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"allItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBDeviceApplicationSceneHandle" isKindOfClass:@"SBApplicationSceneHandle"];
  [v3 validateClass:@"SBApplicationSceneHandle" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SBSlideOverTongueViewAccessibility *)self _accessibilitySlideOverApplication];
  v3 = [v2 safeStringForKey:@"displayName"];
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
  v3 = [(SBSlideOverTongueViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(SBSlideOverTongueViewAccessibility *)self _accessibilitySlideOverApplication];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *MEMORY[0x29EDC7F70];
  }

  return v5 | v3;
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
  v2 = [(SBSlideOverTongueViewAccessibility *)self _accessibilitySlideOverApplication];
  v3 = [v2 safeStringForKey:@"bundleIdentifier"];

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

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [MEMORY[0x29EDBDFA8] server];
    v4 = [v3 performMedusaGesture:16];

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
    v6 = [(SBSlideOverTongueViewAccessibility *)self _accessibilityActionsForSlideOverApp];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSlideOverTongueViewAccessibility;
    v7 = [(SBSlideOverTongueViewAccessibility *)&v10 accessibilityCustomActions];
  }

  v8 = v7;

  return v8;
}

- (id)_accessibilitySlideOverApplication
{
  v2 = [(SBSlideOverTongueViewAccessibility *)self safeValueForKey:@"delegate"];
  v3 = [v2 safeValueForKeyPath:@"personality.rootModifier.appLayoutToAttachSlideOverTongue"];
  v4 = [v3 safeArrayForKey:@"allItems"];
  v5 = [v4 firstObject];

  AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v13 = v20 = 0;
  v14 = v5;
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
  v3 = [MEMORY[0x29EDBDFA8] server];
  v4 = [v3 allowedMedusaGestures];

  v31 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v29 = [*MEMORY[0x29EDC8008] userInterfaceLayoutDirection];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v4;
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

        v10 = [*(*(&v32 + 1) + 8 * i) integerValue];
        v11 = v10;
        if (v10 > 13)
        {
          if (v10 == 14)
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
            if (v10 == 15)
            {
              v14 = @"app.pip.open.floating.switcher";
            }

            else
            {
              if (v10 != 16)
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

        else if ((v10 - 5) < 2)
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
          if (v10 == 9)
          {
            v20 = MEMORY[0x29EDBA0F8];
            if (v29 == 1)
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
            if (v29 == 1)
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
            if (v10 != 10)
            {
              continue;
            }

            v12 = MEMORY[0x29EDBA0F8];
            if (v29 == 1)
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
            if (v29 == 1)
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

- (BOOL)_axPerformGestureForAction:(id)a3
{
  v3 = MEMORY[0x29EDBDFA8];
  v4 = a3;
  v5 = [v3 server];
  v6 = [v4 gesture];

  LOBYTE(v4) = [v5 performMedusaGesture:v6];
  return v4;
}

@end