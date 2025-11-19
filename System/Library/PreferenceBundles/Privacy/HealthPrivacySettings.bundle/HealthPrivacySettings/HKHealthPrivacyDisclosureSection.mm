@interface HKHealthPrivacyDisclosureSection
- (UIViewController)parentViewController;
- (id)viewForFooter:(id)a3;
@end

@implementation HKHealthPrivacyDisclosureSection

- (id)viewForFooter:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v4 = [HKHealthPrivacyDisclosureView alloc];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PRIVACY_DISCLOSURE_FOOTER" value:&stru_8350 table:0];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PRIVACY_DISCLOSURE_FOOTER_LEARN_MORE" value:&stru_8350 table:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_38C8;
  v12[3] = &unk_82F0;
  v13 = WeakRetained;
  v9 = WeakRetained;
  v10 = [(HKHealthPrivacyDisclosureView *)v4 initWithBodyText:v6 linkText:v8 linkAction:v12];

  return v10;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end