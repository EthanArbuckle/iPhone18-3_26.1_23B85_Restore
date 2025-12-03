@interface HKHealthHeadphoneLevelSection
- (UIViewController)parentViewController;
- (id)cellForRow:(unint64_t)row table:(id)table;
- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion;
@end

@implementation HKHealthHeadphoneLevelSection

- (id)cellForRow:(unint64_t)row table:(id)table
{
  v4 = [table dequeueReusableCellWithIdentifier:@"HKHealthHeadphonesLevelCellIdentifier"];
  if (!v4)
  {
    v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"HKHealthHeadphonesLevelCellIdentifier"];
  }

  [v4 setAccessoryType:1];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HEADPHONE_AUDIO_LEVELS" value:&stru_8350 table:0];
  textLabel = [v4 textLabel];
  [textLabel setText:v6];

  v8 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleBody];
  textLabel2 = [v4 textLabel];
  [textLabel2 setFont:v8];

  v10 = HKUIJoinStringsForAutomationIdentifier();
  [v4 setAccessibilityIdentifier:v10];

  return v4;
}

- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion
{
  completionCopy = completion;
  v10 = objc_alloc_init(HKHealthPrivacyHeadphoneLevelsViewController);
  delegate = [(HKHealthHeadphoneLevelSection *)self delegate];
  parentController = [delegate parentController];

  if (parentController)
  {
    delegate2 = [(HKHealthHeadphoneLevelSection *)self delegate];
    [delegate2 showController:v10 animate:1];
  }

  else
  {
    delegate2 = [(HKHealthHeadphoneLevelSection *)self parentViewController];
    [delegate2 hk_showViewController:v10 animated:1];
  }

  completionCopy[2](completionCopy, 1, 1);
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end