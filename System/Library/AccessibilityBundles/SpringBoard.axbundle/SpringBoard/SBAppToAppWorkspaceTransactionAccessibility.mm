@interface SBAppToAppWorkspaceTransactionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_setupAnimation;
@end

@implementation SBAppToAppWorkspaceTransactionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBToAppsWorkspaceTransaction" hasInstanceMethod:@"fromApplicationSceneEntities" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBToAppsWorkspaceTransaction" hasInstanceMethod:@"toApplicationSceneEntities" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppToAppWorkspaceTransaction" isKindOfClass:@"SBToAppsWorkspaceTransaction"];
  [validationsCopy validateClass:@"SBApplicationSceneEntity" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"processState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
}

- (id)_setupAnimation
{
  v39 = *MEMORY[0x29EDCA608];
  v37.receiver = self;
  v37.super_class = SBAppToAppWorkspaceTransactionAccessibility;
  _setupAnimation = [(SBAppToAppWorkspaceTransactionAccessibility *)&v37 _setupAnimation];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v36 = 0;
  objc_opt_class();
  v4 = [(SBAppToAppWorkspaceTransactionAccessibility *)self safeValueForKey:@"toApplicationSceneEntities"];
  v5 = __UIAccessibilityCastAsClass();

  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3221225472;
  v34[2] = __62__SBAppToAppWorkspaceTransactionAccessibility__setupAnimation__block_invoke;
  v34[3] = &unk_29F2FBE50;
  v6 = v3;
  v35 = v6;
  v26 = v5;
  [v5 enumerateObjectsUsingBlock:v34];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(SBAppToAppWorkspaceTransactionAccessibility *)self safeValueForKey:@"fromApplicationSceneEntities"];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = @"SBApplicationSceneEntity";
    v10 = *v31;
    v11 = @"application";
    v12 = @"SBApplication";
    do
    {
      v13 = 0;
      v28 = v8;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v36 = 0;
        v14 = __UIAccessibilitySafeClass();
        if (v36 == 1 || (v15 = v14, v36 = 0, [v14 safeValueForKey:v11], v16 = objc_claimAutoreleasedReturnValue(), __UIAccessibilitySafeClass(), v17 = objc_claimAutoreleasedReturnValue(), v16, v36 == 1))
        {
          abort();
        }

        if (([v6 containsObject:v17] & 1) == 0)
        {
          v18 = [v17 safeValueForKey:@"processState"];
          [v18 safeValueForKey:@"pid"];
          v19 = v10;
          v20 = v6;
          v21 = v12;
          v22 = v11;
          v24 = v23 = v9;

          [v24 intValue];
          AXTentativePidSuspend();

          v9 = v23;
          v11 = v22;
          v12 = v21;
          v6 = v20;
          v10 = v19;
          v8 = v28;
        }

        ++v13;
      }

      while (v8 != v13);
      v8 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v8);
  }

  return _setupAnimation;
}

void __62__SBAppToAppWorkspaceTransactionAccessibility__setupAnimation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safeValueForKey:@"application"];
  [v2 addObject:v3];
}

@end