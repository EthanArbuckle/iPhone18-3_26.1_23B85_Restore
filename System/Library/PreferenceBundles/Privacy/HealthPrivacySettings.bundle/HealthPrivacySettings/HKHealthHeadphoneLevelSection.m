@interface HKHealthHeadphoneLevelSection
- (UIViewController)parentViewController;
- (id)cellForRow:(unint64_t)a3 table:(id)a4;
- (void)didSelectRow:(unint64_t)a3 representedByCell:(id)a4 withCompletion:(id)a5;
@end

@implementation HKHealthHeadphoneLevelSection

- (id)cellForRow:(unint64_t)a3 table:(id)a4
{
  v4 = [a4 dequeueReusableCellWithIdentifier:@"HKHealthHeadphonesLevelCellIdentifier"];
  if (!v4)
  {
    v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"HKHealthHeadphonesLevelCellIdentifier"];
  }

  [v4 setAccessoryType:1];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HEADPHONE_AUDIO_LEVELS" value:&stru_8350 table:0];
  v7 = [v4 textLabel];
  [v7 setText:v6];

  v8 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleBody];
  v9 = [v4 textLabel];
  [v9 setFont:v8];

  v10 = HKUIJoinStringsForAutomationIdentifier();
  [v4 setAccessibilityIdentifier:v10];

  return v4;
}

- (void)didSelectRow:(unint64_t)a3 representedByCell:(id)a4 withCompletion:(id)a5
{
  v6 = a5;
  v10 = objc_alloc_init(HKHealthPrivacyHeadphoneLevelsViewController);
  v7 = [(HKHealthHeadphoneLevelSection *)self delegate];
  v8 = [v7 parentController];

  if (v8)
  {
    v9 = [(HKHealthHeadphoneLevelSection *)self delegate];
    [v9 showController:v10 animate:1];
  }

  else
  {
    v9 = [(HKHealthHeadphoneLevelSection *)self parentViewController];
    [v9 hk_showViewController:v10 animated:1];
  }

  v6[2](v6, 1, 1);
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end