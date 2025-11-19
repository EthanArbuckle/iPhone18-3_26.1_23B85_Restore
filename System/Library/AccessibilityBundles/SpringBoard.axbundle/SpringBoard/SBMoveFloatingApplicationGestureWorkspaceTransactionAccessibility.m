@interface SBMoveFloatingApplicationGestureWorkspaceTransactionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axDestinationAppName;
- (void)handleTransitionRequestForGestureComplete:(id)a3 fromGestureManager:(id)a4;
@end

@implementation SBMoveFloatingApplicationGestureWorkspaceTransactionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMoveFloatingApplicationGestureWorkspaceTransaction" isKindOfClass:@"SBFluidSwitcherGestureWorkspaceTransaction"];
  [v3 validateClass:@"SBFluidSwitcherGestureWorkspaceTransaction" hasInstanceMethod:@"handleTransitionRequestForGestureComplete:fromGestureManager:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"SBSwitcherTransitionRequest"];
  [v3 validateClass:@"SBSwitcherTransitionRequest" hasInstanceMethod:@"floatingConfiguration" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBWorkspaceTransaction"];
  [v3 validateClass:@"SBMoveFloatingApplicationGestureWorkspaceTransaction" isKindOfClass:@"SBWorkspaceTransaction"];
  [v3 validateClass:@"SBWorkspaceTransaction" hasInstanceMethod:@"transitionRequest" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWorkspaceTransitionRequest"];
  [v3 validateClass:@"SBWorkspaceTransitionRequest" hasInstanceMethod:@"applicationContext" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWorkspaceApplicationSceneTransitionContext"];
  [v3 validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"applicationSceneEntities" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplicationSceneEntity"];
  [v3 validateClass:@"SBApplicationSceneEntity" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplication"];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (void)handleTransitionRequestForGestureComplete:(id)a3 fromGestureManager:(id)a4
{
  v16.receiver = self;
  v16.super_class = SBMoveFloatingApplicationGestureWorkspaceTransactionAccessibility;
  v6 = a3;
  [(SBMoveFloatingApplicationGestureWorkspaceTransactionAccessibility *)&v16 handleTransitionRequestForGestureComplete:v6 fromGestureManager:a4];
  v7 = [(SBMoveFloatingApplicationGestureWorkspaceTransactionAccessibility *)self _accessibilityIsRTL];
  v8 = [v6 safeIntegerForKey:@"floatingConfiguration"];

  v9 = [(SBMoveFloatingApplicationGestureWorkspaceTransactionAccessibility *)self _axDestinationAppName];
  v10 = 0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v13 = @"app.pip.nib.action.moved.app.stashed.left";
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_14;
      }

      v13 = @"app.pip.nib.action.moved.app.stashed.right";
    }

LABEL_13:
    v14 = MEMORY[0x29EDBA0F8];
    v15 = accessibilityLocalizedString(v13);
    v10 = [v14 stringWithFormat:v15, v9];

    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v11 = @"app.pip.nib.action.moved.app.left";
    v12 = @"app.pip.nib.action.moved.app.right";
LABEL_9:
    if (v7)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    goto LABEL_13;
  }

  if (v8 == 2)
  {
    v11 = @"app.pip.nib.action.moved.app.right";
    v12 = @"app.pip.nib.action.moved.app.left";
    goto LABEL_9;
  }

LABEL_14:
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v10);
}

- (id)_axDestinationAppName
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = [(SBMoveFloatingApplicationGestureWorkspaceTransactionAccessibility *)self safeValueForKey:@"transitionRequest"];
  v3 = [v2 safeValueForKey:@"applicationContext"];
  v24 = 0;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"applicationSceneEntities"];
  v5 = __UIAccessibilityCastAsClass();

  v18 = v3;
  v19 = v2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = &stru_2A22F9D20;
    do
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [*(*(&v20 + 1) + 8 * v11) safeValueForKey:{@"application", v16, v17, v18, v19, v20}];
        v14 = [v13 safeStringForKey:@"displayName"];

        v16 = v14;
        v17 = @"__AXStringForVariablesSentinel";
        v10 = __UIAXStringForVariables();

        ++v11;
        v12 = v10;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:{16, v14, @"__AXStringForVariablesSentinel"}];
    }

    while (v8);
  }

  else
  {
    v10 = &stru_2A22F9D20;
  }

  return v10;
}

@end