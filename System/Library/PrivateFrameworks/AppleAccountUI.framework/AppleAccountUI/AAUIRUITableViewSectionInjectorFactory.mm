@interface AAUIRUITableViewSectionInjectorFactory
+ (id)tableViewSectionInjectorForGPPRWithPage:(id)page;
@end

@implementation AAUIRUITableViewSectionInjectorFactory

+ (id)tableViewSectionInjectorForGPPRWithPage:(id)page
{
  pageCopy = page;
  tableViewOM = [pageCopy tableViewOM];
  tableView = [tableViewOM tableView];

  v6 = [MEMORY[0x1E69B7D50] linkWithBundleIdentifier:@"com.apple.onboarding.appleid"];
  [v6 setDisplayIcon:0];
  view = [v6 view];
  [pageCopy addChildViewController:v6];
  [v6 didMoveToParentViewController:pageCopy];
  v8 = [AAUIRUITableViewSectionInjector alloc];
  tableViewOM2 = [pageCopy tableViewOM];

  v10 = [(AAUIRUITableViewSectionInjector *)v8 initWithTableView:tableView ruiTableView:tableViewOM2 injectWith:view];
  [(AAUIRUITableViewSectionInjector *)v10 setInjectionType:@"InjectOnboardingDisclosureView"];

  return v10;
}

@end