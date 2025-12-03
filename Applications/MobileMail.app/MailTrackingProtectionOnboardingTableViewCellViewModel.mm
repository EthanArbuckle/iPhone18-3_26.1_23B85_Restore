@interface MailTrackingProtectionOnboardingTableViewCellViewModel
- (MailTrackingProtectionOnboardingTableViewCellViewModel)initWithTitle:(id)title detail:(id)detail image:(id)image isSelected:(BOOL)selected preventTracking:(BOOL)tracking accessibilityIdentifier:(id)identifier;
- (void)handleSelection;
@end

@implementation MailTrackingProtectionOnboardingTableViewCellViewModel

- (MailTrackingProtectionOnboardingTableViewCellViewModel)initWithTitle:(id)title detail:(id)detail image:(id)image isSelected:(BOOL)selected preventTracking:(BOOL)tracking accessibilityIdentifier:(id)identifier
{
  titleCopy = title;
  detailCopy = detail;
  imageCopy = image;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = MailTrackingProtectionOnboardingTableViewCellViewModel;
  v18 = [(MailTrackingProtectionOnboardingTableViewCellViewModel *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v19->_detail, detail);
    objc_storeStrong(&v19->_image, image);
    v19->_selected = selected;
    v19->_preventTracking = tracking;
    objc_storeStrong(&v19->_accessibilityIdentifier, identifier);
  }

  return v19;
}

- (void)handleSelection
{
  v3 = +[NSUserDefaults em_userDefaults];
  [v3 enableMailTrackingProtection:{-[MailTrackingProtectionOnboardingTableViewCellViewModel preventTracking](self, "preventTracking")}];
}

@end