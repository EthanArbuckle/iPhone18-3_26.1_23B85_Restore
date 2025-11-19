@interface AXCLFBasePrivacyLinkController
- (id)specifiersWithPrivacyLinkSupport:(id)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation AXCLFBasePrivacyLinkController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AXCLFBasePrivacyLinkController;
  [(AXCLFBasePrivacyLinkController *)&v5 viewDidLoad];
  v3 = [(AXCLFBasePrivacyLinkController *)self privacyAppBundleIdentifier];
  if (v3)
  {
    v4 = [[AXCLFPrivacyLinkDisplayView alloc] initWithBundleIdentifier:v3 withViewController:self];
    [(AXCLFBasePrivacyLinkController *)self setPrivacyLinkDisplayView:v4];
  }
}

- (id)specifiersWithPrivacyLinkSupport:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C5748];
  v4 = a3;
  v5 = [v3 emptyGroupSpecifier];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:v4];

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 || ([(AXCLFBasePrivacyLinkController *)self privacyLinkDisplayView], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v11.receiver = self;
    v11.super_class = AXCLFBasePrivacyLinkController;
    v7 = [(AXCLFBasePrivacyLinkController *)&v11 tableView:v6 viewForHeaderInSection:a4];
  }

  else
  {
    v7 = [(AXCLFBasePrivacyLinkController *)self privacyLinkDisplayView];
  }

  v9 = v7;

  return v9;
}

@end