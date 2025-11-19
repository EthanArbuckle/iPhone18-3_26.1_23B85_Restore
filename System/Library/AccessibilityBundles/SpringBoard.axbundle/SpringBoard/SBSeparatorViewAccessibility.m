@interface SBSeparatorViewAccessibility
- (BOOL)_axPerformGestureForAction:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)_accessibilityActionsForSideAppDivider;
- (id)accessibilityCustomActions;
@end

@implementation SBSeparatorViewAccessibility

- (BOOL)accessibilityPerformEscape
{
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 performMedusaGesture:3];

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = [(SBSeparatorViewAccessibility *)self _accessibilityActionsForSideAppDivider];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBSeparatorViewAccessibility;
    v4 = [(SBSeparatorViewAccessibility *)&v7 accessibilityCustomActions];
  }

  v5 = v4;

  return v5;
}

- (id)_accessibilityActionsForSideAppDivider
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 allowedMedusaGestures];

  v28 = [MEMORY[0x29EDB8DE8] array];
  v4 = AXSpringBoardPrimaryAppLabel();
  v5 = AXSpringBoardSideAppLabel();
  v25 = [*MEMORY[0x29EDC8008] userInterfaceLayoutDirection];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
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

        v10 = [*(*(&v29 + 1) + 8 * v9) unsignedIntegerValue];
        v11 = v10;
        if (v10 > 3)
        {
          if (v10 > 7)
          {
            if (v10 != 8)
            {
              if (v10 == 11)
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
                  [v28 axSafelyAddObject:v22];

                  goto LABEL_39;
                }

                v18 = @"side.app.remove.left.app";
              }

              else
              {
                if (v10 != 12)
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

            if (v25 != 1)
            {
LABEL_45:
              v18 = @"side.app.slideover.right";
              goto LABEL_53;
            }

            goto LABEL_48;
          }

          if (v10 != 4)
          {
            if (v10 != 7)
            {
              goto LABEL_39;
            }

            if ([v4 length])
            {
              v16 = MEMORY[0x29EDBA0F8];
              v17 = @"app.pip.nib.action.create.slideover.app";
              goto LABEL_36;
            }

            if (v25 == 1)
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

          if (v25 != 1)
          {
LABEL_43:
            v18 = @"side.app.resize.expand.right";
            goto LABEL_53;
          }

          goto LABEL_50;
        }

        if (v10 <= 1)
        {
          if (v10)
          {
            if (v10 != 1)
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

        if (v10 != 2)
        {
          if ([v4 length])
          {
            v16 = MEMORY[0x29EDBA0F8];
            v17 = @"side.app.resize.expand.format";
            goto LABEL_36;
          }

          if (v25 == 1)
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

  return v28;
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