@interface MFNanoBridgeDefaultRepliesViewController
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MFNanoBridgeDefaultRepliesViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MFNanoBridgeDefaultRepliesViewController;
  [(MFNanoBridgeDefaultRepliesViewController *)&v3 viewWillAppear:a3];
  +[MFNanoMailBridgeSettingsNavigationDonation donateUserVisitForDefaultRepliesSettings];
}

@end