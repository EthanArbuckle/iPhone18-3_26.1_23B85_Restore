@interface SBMoveGestureFloatingSwitcherModifierAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_updateForGestureDidBeginWithEvent:(id)event;
- (id)_updateForGestureDidChangeWithEvent:(id)event;
- (id)_updateForGestureDidEndWithEvent:(id)event;
- (int64_t)_axFloatingConfigurationForGestureEvent:(id)event withZeroVelocity:(BOOL)velocity;
@end

@implementation SBMoveGestureFloatingSwitcherModifierAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMoveGestureFloatingSwitcherModifier" isKindOfClass:@"SBSwitcherModifier"];
  [validationsCopy validateClass:@"SBMoveGestureFloatingSwitcherModifier" hasInstanceMethod:@"initialFloatingConfiguration" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBMoveGestureFloatingSwitcherModifier" hasInstanceMethod:@"_updateForGestureDidBeginWithEvent:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBMoveGestureFloatingSwitcherModifier" hasInstanceMethod:@"_updateForGestureDidChangeWithEvent:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBMoveGestureFloatingSwitcherModifier" hasInstanceMethod:@"_updateForGestureDidEndWithEvent:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBMoveGestureFloatingSwitcherModifier" hasInstanceMethod:@"containerViewBounds" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"SBSwitcherModifier"];
  [validationsCopy validateClass:@"SBSwitcherModifier" isKindOfClass:@"SBSwitcherModifierBase"];
  [validationsCopy validateClass:@"SBSwitcherModifierBase" conformsToProtocol:@"SBSwitcherContextProviding"];
  [validationsCopy validateProtocol:@"SBSwitcherContextProviding" hasRequiredInstanceMethod:@"switcherViewBounds"];
  [validationsCopy validateProtocol:@"SBSwitcherContextProviding" hasRequiredInstanceMethod:@"medusaSettings"];
  [validationsCopy validateClass:@"SBGestureSwitcherModifierEvent"];
  [validationsCopy validateClass:@"SBGestureSwitcherModifierEvent" hasInstanceMethod:@"translationInContainerView" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SBGestureSwitcherModifierEvent" hasInstanceMethod:@"velocityInContainerView" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SBMedusaSettings"];
  [validationsCopy validateClass:@"SBMedusaSettings" hasInstanceMethod:@"movePanGestureNegativeVelocityThreshold" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBMedusaSettings" hasInstanceMethod:@"movePanGesturePositiveVelocityThreshold" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBMedusaSettings" hasInstanceMethod:@"movePanGestureThresholdPercentage" withFullSignature:{"d", 0}];
}

- (id)_updateForGestureDidBeginWithEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = SBMoveGestureFloatingSwitcherModifierAccessibility;
  v4 = [(SBMoveGestureFloatingSwitcherModifierAccessibility *)&v6 _updateForGestureDidBeginWithEvent:event];
  [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _axSetCurrentFloatingConfiguration:[(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _axInitialFloatingConfiguration]];

  return v4;
}

- (id)_updateForGestureDidChangeWithEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBMoveGestureFloatingSwitcherModifierAccessibility;
  eventCopy = event;
  v5 = [(SBMoveGestureFloatingSwitcherModifierAccessibility *)&v11 _updateForGestureDidChangeWithEvent:eventCopy];
  v6 = [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _axGetCurrentFloatingConfiguration:v11.receiver];
  v7 = [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _axFloatingConfigurationForGestureEvent:eventCopy withZeroVelocity:1];

  if (v6 != v7 && (v7 - 1) <= 1)
  {
    [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _axSetCurrentFloatingConfiguration:v7];
    if ([(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _accessibilityIsRTL]!= (v7 == 1))
    {
      v8 = @"lift.move.app.left";
    }

    else
    {
      v8 = @"lift.move.app.right";
    }

    v9 = accessibilityLocalizedString(v8);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
  }

  return v5;
}

- (id)_updateForGestureDidEndWithEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBMoveGestureFloatingSwitcherModifierAccessibility;
  eventCopy = event;
  v5 = [(SBMoveGestureFloatingSwitcherModifierAccessibility *)&v8 _updateForGestureDidEndWithEvent:eventCopy];
  v6 = [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _axFloatingConfigurationForGestureEvent:eventCopy withZeroVelocity:0, v8.receiver, v8.super_class];

  [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _axSetFinishedFloatingConfiguration:v6];

  return v5;
}

- (int64_t)_axFloatingConfigurationForGestureEvent:(id)event withZeroVelocity:(BOOL)velocity
{
  eventCopy = event;
  _axInitialFloatingConfiguration = [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self _axInitialFloatingConfiguration];
  [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self safeCGRectForKey:@"switcherViewBounds"];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self safeCGRectForKey:@"containerViewBounds"];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [eventCopy safeCGPointForKey:@"translationInContainerView"];
  v61 = v24;
  v25 = 0;
  if (!velocity)
  {
    [eventCopy safeCGPointForKey:{@"velocityInContainerView", 0.0}];
  }

  v59 = v25;
  v62.origin.x = v17;
  v62.origin.y = v19;
  v62.size.width = v21;
  v62.size.height = v23;
  Width = CGRectGetWidth(v62);
  v27 = [(SBMoveGestureFloatingSwitcherModifierAccessibility *)self safeValueForKey:@"medusaSettings"];
  v63.origin.x = v9;
  v63.origin.y = v11;
  v63.size.width = v13;
  v63.size.height = v15;
  MinX = CGRectGetMinX(v63);
  v64.origin.x = v9;
  v64.origin.y = v11;
  v64.size.width = v13;
  v64.size.height = v15;
  MaxX = CGRectGetMaxX(v64);
  v30 = Width * 0.5;
  v31 = MEMORY[0x29EDC8008];
  v32 = Width * 0.5 + MinX + 24.0;
  if ([*MEMORY[0x29EDC8008] userInterfaceLayoutDirection] == 1)
  {
    v33 = MaxX + -24.0 - v30;
  }

  else
  {
    v33 = v30 + MinX + 24.0;
  }

  if ([*v31 userInterfaceLayoutDirection] != 1)
  {
    v32 = MaxX + -24.0 - v30;
  }

  v34 = MinX + -24.0 - v30;
  v35 = v30 + MaxX + 24.0;
  if ([*v31 userInterfaceLayoutDirection] == 1)
  {
    v36 = v35;
  }

  else
  {
    v36 = MinX + -24.0 - v30;
  }

  if ([*v31 userInterfaceLayoutDirection] == 1)
  {
    v35 = v34;
  }

  userInterfaceLayoutDirection = [*v31 userInterfaceLayoutDirection];
  v38 = 0;
  v39 = 0;
  v40 = v32 >= v61;
  if (userInterfaceLayoutDirection == 1)
  {
    v40 = v32 <= v61;
  }

  v41 = v33 <= v61;
  if (userInterfaceLayoutDirection == 1)
  {
    v41 = v33 >= v61;
  }

  if ((_axInitialFloatingConfiguration & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v40 = v41;
  }

  if (_axInitialFloatingConfiguration > 1)
  {
    v42 = 0.0;
    if (_axInitialFloatingConfiguration == 2)
    {
      if (v40)
      {
        v38 = 2;
      }

      else
      {
        v38 = 4;
      }

      if (v40)
      {
        v43 = 1;
      }

      else
      {
        v43 = 2;
      }

      if (v40)
      {
        v42 = v32;
      }

      else
      {
        v42 = v35;
      }

      if (v40)
      {
        v44 = v33;
      }

      else
      {
        v44 = v32;
      }
    }

    else
    {
      if (_axInitialFloatingConfiguration != 3)
      {
        v43 = 0;
        v44 = 0.0;
        if (_axInitialFloatingConfiguration != 4)
        {
          goto LABEL_75;
        }

        goto LABEL_38;
      }

      if (v40)
      {
        v38 = 2;
      }

      else
      {
        v38 = 1;
      }

      if (v40)
      {
        v43 = 1;
      }

      else
      {
        v43 = 3;
      }

      if (v40)
      {
        v42 = v32;
      }

      else
      {
        v42 = v33;
      }

      if (v40)
      {
        v44 = v33;
      }

      else
      {
        v44 = v36;
      }
    }

    v39 = v40;
    goto LABEL_75;
  }

  v42 = 0.0;
  if (!_axInitialFloatingConfiguration)
  {
LABEL_38:
    if (v40)
    {
      v38 = 2;
    }

    else
    {
      v38 = 4;
    }

    v39 = 1;
    if (v40)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    if (v40)
    {
      v42 = v32;
    }

    else
    {
      v42 = v35;
    }

    if (v40)
    {
      v44 = v33;
    }

    else
    {
      v44 = v32;
    }

    goto LABEL_75;
  }

  v43 = 0;
  v44 = 0.0;
  if (_axInitialFloatingConfiguration == 1)
  {
    v39 = 0;
    if (v40)
    {
      v38 = 2;
    }

    else
    {
      v38 = 1;
    }

    if (v40)
    {
      v43 = 1;
    }

    else
    {
      v43 = 3;
    }

    if (v40)
    {
      v42 = v32;
    }

    else
    {
      v42 = v33;
    }

    if (v40)
    {
      v44 = v33;
    }

    else
    {
      v44 = v36;
    }
  }

LABEL_75:
  if ([*v31 userInterfaceLayoutDirection] == 1)
  {
    v45 = v42;
  }

  else
  {
    v45 = v44;
  }

  if ([*v31 userInterfaceLayoutDirection] == 1)
  {
    v46 = v44;
  }

  else
  {
    v46 = v42;
  }

  if ([*v31 userInterfaceLayoutDirection] == 1)
  {
    v47 = v38;
  }

  else
  {
    v47 = v43;
  }

  if ([*v31 userInterfaceLayoutDirection] == 1)
  {
    v38 = v43;
  }

  v48 = v39 ^ ([*v31 userInterfaceLayoutDirection] == 1);
  [v27 safeCGFloatForKey:@"movePanGestureNegativeVelocityThreshold"];
  v50 = v49;
  [v27 safeCGFloatForKey:@"movePanGesturePositiveVelocityThreshold"];
  v52 = v51;
  [v27 safeCGFloatForKey:@"movePanGestureThresholdPercentage"];
  if (v48)
  {
    v54 = -v50;
  }

  else
  {
    v54 = v52;
  }

  v55 = -v52;
  if (!v48)
  {
    v55 = v50;
  }

  if (v45 >= v46)
  {
    [SBMoveGestureFloatingSwitcherModifierAccessibility _axFloatingConfigurationForGestureEvent:withZeroVelocity:];
  }

  if (v54 <= 0.0)
  {
    [SBMoveGestureFloatingSwitcherModifierAccessibility _axFloatingConfigurationForGestureEvent:withZeroVelocity:];
  }

  if (v55 >= 0.0)
  {
    [SBMoveGestureFloatingSwitcherModifierAccessibility _axFloatingConfigurationForGestureEvent:withZeroVelocity:];
  }

  if (v45 >= v61)
  {
    v56 = v45;
  }

  else
  {
    v56 = v61;
  }

  if (v46 <= v56)
  {
    v56 = v46;
  }

  v57 = v38;
  if (v54 > v60)
  {
    v57 = v47;
    if (v55 < v60)
    {
      if (v48)
      {
        v53 = 1.0 - v53;
      }

      if (v56 <= v45 + (v46 - v45) * v53)
      {
        v57 = v47;
      }

      else
      {
        v57 = v38;
      }
    }
  }

  return v57;
}

@end