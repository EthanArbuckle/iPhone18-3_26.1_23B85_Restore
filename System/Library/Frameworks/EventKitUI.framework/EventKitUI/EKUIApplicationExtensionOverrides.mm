@interface EKUIApplicationExtensionOverrides
+ (id)shared;
- (EKUIApplicationExtensionOverrides)init;
- (id)preferredContentSizeCategoryOrOverride;
- (id)viewHierarchyOrOverride;
- (int64_t)layoutDirectionOrOverride;
- (void)setLayoutDirectionOverride:(int64_t)a3;
- (void)setPreferredContentSizeCategoryOverride:(id)a3;
@end

@implementation EKUIApplicationExtensionOverrides

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[EKUIApplicationExtensionOverrides shared];
  }

  v3 = shared_shared;

  return v3;
}

void __43__EKUIApplicationExtensionOverrides_shared__block_invoke()
{
  v0 = objc_alloc_init(EKUIApplicationExtensionOverrides);
  v1 = shared_shared;
  shared_shared = v0;
}

- (id)viewHierarchyOrOverride
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69933F8] shared];
  v3 = [v2 isCurrentProcessAnApplicationExtension];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E69DC668] performSelector:sel_sharedApplication];
    [v4 connectedScenes];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = [v11 windows];
            v13 = [v12 firstObject];

            if (v13)
            {
              v14 = [v12 firstObject];

              goto LABEL_15;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v14 = _overrideViewHierarchy;
LABEL_15:

  return v14;
}

- (EKUIApplicationExtensionOverrides)init
{
  v12.receiver = self;
  v12.super_class = EKUIApplicationExtensionOverrides;
  v2 = [(EKUIApplicationExtensionOverrides *)&v12 init];
  if (v2)
  {
    v3 = [EKUIViewHierarchyFromComponents alloc];
    v4 = CalendarAppTintColor();
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    v11[0] = *MEMORY[0x1E695EFD0];
    v11[1] = v7;
    v11[2] = *(MEMORY[0x1E695EFD0] + 32);
    v8 = [(EKUIViewHierarchyFromComponents *)v3 initWithSize:0 verticalSizeClass:0 horizontalSizeClass:0 interfaceOrientation:v4 tintColor:v11 affineTranform:v5, v6];
    v9 = _overrideViewHierarchy;
    _overrideViewHierarchy = v8;
  }

  return v2;
}

- (int64_t)layoutDirectionOrOverride
{
  v2 = [MEMORY[0x1E69933F8] shared];
  v3 = [v2 layoutDirectionOrOverride];

  return v3;
}

- (void)setLayoutDirectionOverride:(int64_t)a3
{
  v4 = [MEMORY[0x1E69933F8] shared];
  [v4 setLayoutDirectionOverride:a3];

  CalUpdateUserInterfaceDirection();
}

- (id)preferredContentSizeCategoryOrOverride
{
  v2 = [MEMORY[0x1E69933F8] shared];
  v3 = [v2 preferredContentSizeCategoryOrOverride];

  return v3;
}

- (void)setPreferredContentSizeCategoryOverride:(id)a3
{
  v3 = MEMORY[0x1E69933F8];
  v4 = a3;
  v5 = [v3 shared];
  [v5 setPreferredContentSizeCategoryOverride:v4];
}

@end