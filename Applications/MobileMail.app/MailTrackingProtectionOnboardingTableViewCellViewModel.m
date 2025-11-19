@interface MailTrackingProtectionOnboardingTableViewCellViewModel
- (MailTrackingProtectionOnboardingTableViewCellViewModel)initWithTitle:(id)a3 detail:(id)a4 image:(id)a5 isSelected:(BOOL)a6 preventTracking:(BOOL)a7 accessibilityIdentifier:(id)a8;
- (void)handleSelection;
@end

@implementation MailTrackingProtectionOnboardingTableViewCellViewModel

- (MailTrackingProtectionOnboardingTableViewCellViewModel)initWithTitle:(id)a3 detail:(id)a4 image:(id)a5 isSelected:(BOOL)a6 preventTracking:(BOOL)a7 accessibilityIdentifier:(id)a8
{
  v21 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = MailTrackingProtectionOnboardingTableViewCellViewModel;
  v18 = [(MailTrackingProtectionOnboardingTableViewCellViewModel *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, a3);
    objc_storeStrong(&v19->_detail, a4);
    objc_storeStrong(&v19->_image, a5);
    v19->_selected = a6;
    v19->_preventTracking = a7;
    objc_storeStrong(&v19->_accessibilityIdentifier, a8);
  }

  return v19;
}

- (void)handleSelection
{
  v3 = +[NSUserDefaults em_userDefaults];
  [v3 enableMailTrackingProtection:{-[MailTrackingProtectionOnboardingTableViewCellViewModel preventTracking](self, "preventTracking")}];
}

@end