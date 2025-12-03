@interface AXCLFBasePrivacyLinkController
- (id)specifiersWithPrivacyLinkSupport:(id)support;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation AXCLFBasePrivacyLinkController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AXCLFBasePrivacyLinkController;
  [(AXCLFBasePrivacyLinkController *)&v5 viewDidLoad];
  privacyAppBundleIdentifier = [(AXCLFBasePrivacyLinkController *)self privacyAppBundleIdentifier];
  if (privacyAppBundleIdentifier)
  {
    v4 = [[AXCLFPrivacyLinkDisplayView alloc] initWithBundleIdentifier:privacyAppBundleIdentifier withViewController:self];
    [(AXCLFBasePrivacyLinkController *)self setPrivacyLinkDisplayView:v4];
  }
}

- (id)specifiersWithPrivacyLinkSupport:(id)support
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C5748];
  supportCopy = support;
  emptyGroupSpecifier = [v3 emptyGroupSpecifier];
  v9[0] = emptyGroupSpecifier;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:supportCopy];

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section || ([(AXCLFBasePrivacyLinkController *)self privacyLinkDisplayView], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v11.receiver = self;
    v11.super_class = AXCLFBasePrivacyLinkController;
    privacyLinkDisplayView = [(AXCLFBasePrivacyLinkController *)&v11 tableView:viewCopy viewForHeaderInSection:section];
  }

  else
  {
    privacyLinkDisplayView = [(AXCLFBasePrivacyLinkController *)self privacyLinkDisplayView];
  }

  v9 = privacyLinkDisplayView;

  return v9;
}

@end