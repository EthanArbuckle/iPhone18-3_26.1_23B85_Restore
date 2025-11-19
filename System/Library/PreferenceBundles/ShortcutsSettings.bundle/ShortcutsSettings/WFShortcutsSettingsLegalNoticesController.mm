@interface WFShortcutsSettingsLegalNoticesController
- (void)viewDidLoad;
@end

@implementation WFShortcutsSettingsLegalNoticesController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFShortcutsSettingsLegalNoticesController;
  [(WFShortcutsSettingsLegalNoticesController *)&v4 viewDidLoad];
  v3 = WFShortcutsSettingsLocalizedString(@"Legal Notices");
  [(WFShortcutsSettingsLegalNoticesController *)self setTitle:v3];
}

@end