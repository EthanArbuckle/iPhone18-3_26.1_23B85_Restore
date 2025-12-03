@interface SBRootFolderControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)transitionDidFinish:(id)finish;
@end

@implementation SBRootFolderControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBRootFolderView" hasInstanceVariable:@"_searchPulldownWrapperView" withType:"_SBRootFolderLayoutWrapperView"];
  [validationsCopy validateClass:@"SBRootFolderView" hasInstanceMethod:@"_searchableLeadingCustomWrapperView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" hasInstanceMethod:@"isPullDownSearchVisibleOrTransitioning" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" hasInstanceMethod:@"isLeadingCustomViewSearchVisibleOrTransitioning" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" hasInstanceMethod:@"transitionDidFinish:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" hasInstanceMethod:@"isPullDownSearchVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" hasInstanceMethod:@"isLeadingCustomViewSearchVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" hasInstanceMethod:@"rootFolderView" withFullSignature:{"@", 0}];
}

- (void)transitionDidFinish:(id)finish
{
  finishCopy = finish;
  objc_initWeak(&location, self);
  if ([(SBRootFolderControllerAccessibility *)self safeBoolForKey:@"isPullDownSearchVisibleOrTransitioning"])
  {
    v5 = [(SBRootFolderControllerAccessibility *)self safeValueForKey:@"rootFolderView"];
    v6 = [v5 safeValueForKey:@"_searchPulldownWrapperView"];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __59__SBRootFolderControllerAccessibility_transitionDidFinish___block_invoke;
    v11[3] = &unk_29F300190;
    v7 = &v12;
    objc_copyWeak(&v12, &location);
    [v6 _setAccessibilityViewIsModalBlock:v11];
LABEL_5:

    objc_destroyWeak(v7);
    goto LABEL_6;
  }

  if ([(SBRootFolderControllerAccessibility *)self safeBoolForKey:@"isLeadingCustomViewSearchVisibleOrTransitioning"])
  {
    v5 = [(SBRootFolderControllerAccessibility *)self safeValueForKey:@"rootFolderView"];
    v6 = [v5 safeValueForKey:@"_searchableLeadingCustomWrapperView"];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __59__SBRootFolderControllerAccessibility_transitionDidFinish___block_invoke_2;
    v9[3] = &unk_29F300190;
    v7 = &v10;
    objc_copyWeak(&v10, &location);
    [v6 _setAccessibilityViewIsModalBlock:v9];
    goto LABEL_5;
  }

LABEL_6:
  v8.receiver = self;
  v8.super_class = SBRootFolderControllerAccessibility;
  [(SBRootFolderControllerAccessibility *)&v8 transitionDidFinish:finishCopy];
  objc_destroyWeak(&location);
}

uint64_t __59__SBRootFolderControllerAccessibility_transitionDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isPullDownSearchVisible"];

  return v2;
}

uint64_t __59__SBRootFolderControllerAccessibility_transitionDidFinish___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isLeadingCustomViewSearchVisible"];

  return v2;
}

@end