@interface AAUIRUITableViewSectionInjectorFactory
+ (id)tableViewSectionInjectorForGPPRWithPage:(id)a3;
@end

@implementation AAUIRUITableViewSectionInjectorFactory

+ (id)tableViewSectionInjectorForGPPRWithPage:(id)a3
{
  v3 = a3;
  v4 = [v3 tableViewOM];
  v5 = [v4 tableView];

  v6 = [MEMORY[0x1E69B7D50] linkWithBundleIdentifier:@"com.apple.onboarding.appleid"];
  [v6 setDisplayIcon:0];
  v7 = [v6 view];
  [v3 addChildViewController:v6];
  [v6 didMoveToParentViewController:v3];
  v8 = [AAUIRUITableViewSectionInjector alloc];
  v9 = [v3 tableViewOM];

  v10 = [(AAUIRUITableViewSectionInjector *)v8 initWithTableView:v5 ruiTableView:v9 injectWith:v7];
  [(AAUIRUITableViewSectionInjector *)v10 setInjectionType:@"InjectOnboardingDisclosureView"];

  return v10;
}

@end