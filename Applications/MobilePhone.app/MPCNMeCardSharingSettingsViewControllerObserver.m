@interface MPCNMeCardSharingSettingsViewControllerObserver
- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4;
@end

@implementation MPCNMeCardSharingSettingsViewControllerObserver

- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4
{
  v4 = a4;
  v5 = +[IMMeCardSharingStateController sharedInstance];
  [v5 setSharingEnabled:v4];
}

- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4
{
  v5 = +[IMMeCardSharingStateController sharedInstance];
  [v5 setSharingAudience:a4];
}

- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4
{
  v4 = a4;
  v5 = +[IMNicknameController sharedInstance];
  [v5 updatePersonalNicknameIfNecessaryWithMeCardSharingResult:v4];
}

@end