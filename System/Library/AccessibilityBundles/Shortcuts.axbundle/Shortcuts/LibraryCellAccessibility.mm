@interface LibraryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axLibraryViewController;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation LibraryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Shortcuts.LibraryCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"Shortcuts.LibraryViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFWorkflowDescriptor" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFWorkflowReference" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Shortcuts.LibraryCell" hasInstanceMethod:@"workflowReference" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Shortcuts.LibraryViewController" hasInstanceMethod:@"axEditWorkflowAction:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"Shortcuts.LibraryViewController" hasInstanceMethod:@"axDeleteWorkflowAction:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"Shortcuts.LibraryViewController" hasInstanceMethod:@"axDuplicateWorkflowAction:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"Shortcuts.LibraryCell" hasInstanceMethod:@"autoShortcut" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFExecutableAppShortcut" hasInstanceMethod:@"phrase" withFullSignature:{"@", 0}];
  [v3 validateClass:@"LNAutoShortcutLocalizedPhrase" hasInstanceMethod:@"localizedPhrase" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(LibraryCellAccessibility *)self safeValueForKey:@"workflowReference"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeStringForKey:@"name"];
    v6 = [v4 safeStringForKey:@"subtitle"];
    __AXStringForVariables();
  }

  else
  {
    v5 = [(LibraryCellAccessibility *)self safeValueForKey:@"autoShortcut"];
    v6 = [v5 safeValueForKey:@"phrase"];
    [v6 safeStringForKey:@"localizedPhrase"];
  }
  v7 = ;

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LibraryCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(LibraryCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  v3 = objc_opt_new();
  v4 = [(LibraryCellAccessibility *)self _axLibraryViewController];
  v5 = [(LibraryCellAccessibility *)self safeValueForKey:@"workflowReference"];
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"delete.action");
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = __54__LibraryCellAccessibility_accessibilityCustomActions__block_invoke;
    v25[3] = &unk_29F2F8598;
    v26 = v4;
    v27 = v5;
    v8 = [v6 initWithName:v7 actionHandler:v25];
    [v3 addObject:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = objc_alloc(MEMORY[0x29EDC78E0]);
    v10 = accessibilityLocalizedString(@"duplicate.action");
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = __54__LibraryCellAccessibility_accessibilityCustomActions__block_invoke_3;
    v22[3] = &unk_29F2F8598;
    v23 = v4;
    v24 = v5;
    v11 = [v9 initWithName:v10 actionHandler:v22];
    [v3 addObject:v11];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = objc_alloc(MEMORY[0x29EDC78E0]);
    v13 = accessibilityLocalizedString(@"edit.action");
    v16 = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = __54__LibraryCellAccessibility_accessibilityCustomActions__block_invoke_5;
    v19 = &unk_29F2F8598;
    v20 = v4;
    v21 = v5;
    v14 = [v12 initWithName:v13 actionHandler:&v16];
    [v3 addObject:{v14, v16, v17, v18, v19}];
  }

  return v3;
}

uint64_t __54__LibraryCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

uint64_t __54__LibraryCellAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

uint64_t __54__LibraryCellAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

- (id)_axLibraryViewController
{
  v2 = [(LibraryCellAccessibility *)self safeValueForKey:@"collectionView"];
  v3 = [v2 safeValueForKey:@"delegate"];

  return v3;
}

@end