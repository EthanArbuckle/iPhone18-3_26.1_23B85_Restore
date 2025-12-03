@interface SBSeparatorViewAccessibility
- (BOOL)_axPerformGestureForAction:(id)action;
- (BOOL)accessibilityPerformEscape;
- (id)_accessibilityActionsForSideAppDivider;
- (id)accessibilityCustomActions;
@end

@implementation SBSeparatorViewAccessibility

- (BOOL)accessibilityPerformEscape
{
  server = [MEMORY[0x29EDBDFA8] server];
  v3 = [server performMedusaGesture:3];

  return v3;
}

- (id)accessibilityCustomActions
{
  _accessibilityActionsForSideAppDivider = [(SBSeparatorViewAccessibility *)self _accessibilityActionsForSideAppDivider];
  if ([_accessibilityActionsForSideAppDivider count])
  {
    accessibilityCustomActions = _accessibilityActionsForSideAppDivider;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBSeparatorViewAccessibility;
    accessibilityCustomActions = [(SBSeparatorViewAccessibility *)&v7 accessibilityCustomActions];
  }

  v5 = accessibilityCustomActions;

  return v5;
}

- (id)_accessibilityActionsForSideAppDivider
{
  v34 = *MEMORY[0x29EDCA608];
  server = [MEMORY[0x29EDBDFA8] server];
  allowedMedusaGestures = [server allowedMedusaGestures];

  array = [MEMORY[0x29EDB8DE8] array];
  v4 = AXSpringBoardPrimaryAppLabel();
  v5 = AXSpringBoardSideAppLabel();
  userInterfaceLayoutDirection = [*MEMORY[0x29EDC8008] userInterfaceLayoutDirection];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = allowedMedusaGestures;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v29 + 1) + 8 * v9) unsignedIntegerValue];
        v11 = unsignedIntegerValue;
        if (unsignedIntegerValue > 3)
        {
          if (unsignedIntegerValue > 7)
          {
            if (unsignedIntegerValue != 8)
            {
              if (unsignedIntegerValue == 11)
              {
                if ([v4 length])
                {
                  v16 = MEMORY[0x29EDBA0F8];
                  v17 = @"side.app.remove.app";
LABEL_36:
                  v15 = accessibilityLocalizedString(v17);
                  [v16 stringWithFormat:v15, v4];
                  v21 = LABEL_37:;

                  if (!v21)
                  {
                    goto LABEL_39;
                  }

LABEL_38:
                  v22 = [[AXSBSideAppCustomAction alloc] initWithName:v21 gesture:v11 target:self selector:sel__axPerformGestureForAction_];
                  [array axSafelyAddObject:v22];

                  goto LABEL_39;
                }

                v18 = @"side.app.remove.left.app";
              }

              else
              {
                if (unsignedIntegerValue != 12)
                {
                  goto LABEL_39;
                }

                if ([v5 length])
                {
                  v12 = MEMORY[0x29EDBA0F8];
                  v13 = @"side.app.remove.app";
                  goto LABEL_33;
                }

                v18 = @"side.app.remove.right.app";
              }

              goto LABEL_53;
            }

            if ([v5 length])
            {
              v12 = MEMORY[0x29EDBA0F8];
              v13 = @"app.pip.nib.action.create.slideover.app";
LABEL_33:
              v15 = accessibilityLocalizedString(v13);
              [v12 stringWithFormat:v15, v5];
              goto LABEL_37;
            }

            if (userInterfaceLayoutDirection != 1)
            {
LABEL_45:
              v18 = @"side.app.slideover.right";
              goto LABEL_53;
            }

            goto LABEL_48;
          }

          if (unsignedIntegerValue != 4)
          {
            if (unsignedIntegerValue != 7)
            {
              goto LABEL_39;
            }

            if ([v4 length])
            {
              v16 = MEMORY[0x29EDBA0F8];
              v17 = @"app.pip.nib.action.create.slideover.app";
              goto LABEL_36;
            }

            if (userInterfaceLayoutDirection == 1)
            {
              goto LABEL_45;
            }

LABEL_48:
            v18 = @"side.app.slideover.left";
            goto LABEL_53;
          }

          if ([v5 length])
          {
            v12 = MEMORY[0x29EDBA0F8];
            v13 = @"side.app.resize.expand.format";
            goto LABEL_33;
          }

          if (userInterfaceLayoutDirection != 1)
          {
LABEL_43:
            v18 = @"side.app.resize.expand.right";
            goto LABEL_53;
          }

          goto LABEL_50;
        }

        if (unsignedIntegerValue <= 1)
        {
          if (unsignedIntegerValue)
          {
            if (unsignedIntegerValue != 1)
            {
              goto LABEL_39;
            }

            if ([v4 length])
            {
              v14 = MEMORY[0x29EDBA0F8];
              v15 = accessibilityLocalizedString(@"side.app.resize.shrink.format");
              [v14 stringWithFormat:v15, v4];
              goto LABEL_37;
            }

            v18 = @"side.app.shrink.left.app";
          }

          else
          {
            v18 = @"side.app.resize.half.width";
          }

          goto LABEL_53;
        }

        if (unsignedIntegerValue != 2)
        {
          if ([v4 length])
          {
            v16 = MEMORY[0x29EDBA0F8];
            v17 = @"side.app.resize.expand.format";
            goto LABEL_36;
          }

          if (userInterfaceLayoutDirection == 1)
          {
            goto LABEL_43;
          }

LABEL_50:
          v18 = @"side.app.resize.expand.left";
          goto LABEL_53;
        }

        if ([v5 length])
        {
          v19 = MEMORY[0x29EDBA0F8];
          v20 = accessibilityLocalizedString(@"side.app.resize.shrink.format");
          v21 = [v19 stringWithFormat:v20, v5];

          if (v21)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        v18 = @"side.app.shrink.right.app";
LABEL_53:
        v21 = accessibilityLocalizedString(v18);
        if (v21)
        {
          goto LABEL_38;
        }

LABEL_39:
        ++v9;
      }

      while (v7 != v9);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      v7 = v23;
    }

    while (v23);
  }

  return array;
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