@interface MPCNMeCardSharingSettingsViewControllerObserver
- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience;
- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state;
- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result;
@end

@implementation MPCNMeCardSharingSettingsViewControllerObserver

- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state
{
  stateCopy = state;
  v5 = +[IMMeCardSharingStateController sharedInstance];
  [v5 setSharingEnabled:stateCopy];
}

- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience
{
  v5 = +[IMMeCardSharingStateController sharedInstance];
  [v5 setSharingAudience:audience];
}

- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result
{
  resultCopy = result;
  v5 = +[IMNicknameController sharedInstance];
  [v5 updatePersonalNicknameIfNecessaryWithMeCardSharingResult:resultCopy];
}

@end