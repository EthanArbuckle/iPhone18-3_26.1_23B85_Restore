@interface BookmarksTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUnhideSearchBar;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation BookmarksTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BookmarksTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"BookmarksTableViewController" hasInstanceMethod:@"_bookmarkAtIndexPath:" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebBookmark" hasInstanceMethod:@"isFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"BookmarksTableViewController" hasInstanceVariable:@"_searchBar" withType:"UISearchBar"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = BookmarksTableViewControllerAccessibility;
  [(BookmarksTableViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(BookmarksTableViewControllerAccessibility *)self _axUnhideSearchBar];
}

- (void)_axUnhideSearchBar
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  tableView = [v3 tableView];

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    v5 = [(BookmarksTableViewControllerAccessibility *)self safeValueForKey:@"_searchBar"];

    if (v5)
    {
      [tableView setContentInset:{*MEMORY[0x29EDC80C8], *(MEMORY[0x29EDC80C8] + 8), *(MEMORY[0x29EDC80C8] + 16), *(MEMORY[0x29EDC80C8] + 24)}];
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BookmarksTableViewControllerAccessibility;
  [(BookmarksTableViewControllerAccessibility *)&v3 viewDidLoad];
  [(BookmarksTableViewControllerAccessibility *)self _axUnhideSearchBar];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = BookmarksTableViewControllerAccessibility;
  v8 = [(BookmarksTableViewControllerAccessibility *)&v23 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  if ([pathCopy section] == 2)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v16 = pathCopy;
    AXPerformSafeBlock();
    v9 = v18[5];

    _Block_object_dispose(&v17, 8);
    v10 = [v9 safeBoolForKey:@"isFolder"];

    if (v10)
    {
      v11 = [v8 safeValueForKey:@"textLabel"];
      v12 = [v11 safeValueForKey:@"text"];
      v13 = accessibilityLocalizedString(@"bookmark.folder");
      v14 = __UIAXStringForVariables();
      [v8 setAccessibilityLabel:{v14, v13, @"__AXStringForVariablesSentinel"}];
    }
  }

  return v8;
}

uint64_t __77__BookmarksTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bookmarkAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v11.receiver = self;
  v11.super_class = BookmarksTableViewControllerAccessibility;
  indexPathCopy = indexPath;
  viewCopy = view;
  [(BookmarksTableViewControllerAccessibility *)&v11 tableView:viewCopy moveRowAtIndexPath:path toIndexPath:indexPathCopy];
  v9 = [viewCopy cellForRowAtIndexPath:{indexPathCopy, v11.receiver, v11.super_class}];

  v10 = [v9 _accessibilityFindDescendant:&__block_literal_global_0];
  if (v10)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], v10);
  }
}

BOOL __86__BookmarksTableViewControllerAccessibility_tableView_moveRowAtIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uitableviewcel.isa);
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && ([v2 _accessibilityViewIsVisible] & 1) != 0;

  return v3;
}

@end