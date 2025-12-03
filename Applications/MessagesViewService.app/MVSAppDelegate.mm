@interface MVSAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
@end

@implementation MVSAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v4 = [IMDaemonController sharedInstance:application];
  [v4 _setBlocksConnectionAtResume:1];

  v5 = +[IMDaemonController sharedInstance];
  [v5 addListenerID:@"MessagesViewService" capabilities:CKMVCListenerCapabilities()];

  v6 = +[IMDaemonController sharedInstance];
  [v6 blockUntilConnected];

  +[IMServiceImpl iMessageEnabled];
  v7 = dispatch_time(0, 0);
  dispatch_after(v7, &_dispatch_main_q, &stru_1000040B8);
  return 1;
}

@end