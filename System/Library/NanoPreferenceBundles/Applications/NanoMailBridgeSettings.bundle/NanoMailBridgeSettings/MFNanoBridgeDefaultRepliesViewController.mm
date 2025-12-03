@interface MFNanoBridgeDefaultRepliesViewController
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MFNanoBridgeDefaultRepliesViewController

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = MFNanoBridgeDefaultRepliesViewController;
  [(MFNanoBridgeDefaultRepliesViewController *)&v3 viewWillAppear:appear];
  +[MFNanoMailBridgeSettingsNavigationDonation donateUserVisitForDefaultRepliesSettings];
}

@end