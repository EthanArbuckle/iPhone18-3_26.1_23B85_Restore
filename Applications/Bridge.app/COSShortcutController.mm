@interface COSShortcutController
+ (id)sharedController;
- (BOOL)issueActionForShortcut:(id)a3;
- (id)shortcutItems;
@end

@implementation COSShortcutController

+ (id)sharedController
{
  if (qword_1002BD5D8 != -1)
  {
    sub_100005530();
  }

  v3 = qword_1002BD5D0;

  return v3;
}

- (id)shortcutItems
{
  v2 = +[NSMutableArray array];
  if (PBIsInternalInstall() && sub_100005794())
  {
    v3 = [UIApplicationShortcutIcon iconWithSystemImageName:@"applewatch.radiowaves.left.and.right"];
    v4 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"com.apple.Bridge.InternalPingShortcut" localizedTitle:@"Ping Apple Watch [Internal-Only]" localizedSubtitle:0 icon:v3 userInfo:0];
    [v2 addObject:v4];
  }

  v13 = 0;
  v5 = sub_100005808(0, &v13);
  v6 = v13;
  if (v5)
  {
    v7 = [UIApplicationShortcutIcon iconWithSystemImageName:@"applewatch.side.right"];
    v8 = [UIMutableApplicationShortcutItem alloc];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"PAIR_A_WATCH" value:&stru_10026E598 table:@"Localizable"];
    v11 = [v8 initWithType:@"com.apple.Bridge.PairWatchShortcut" localizedTitle:v10 localizedSubtitle:0 icon:v7 userInfo:0];

    [v2 addObject:v11];
  }

  else
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not offering pairing shortcut: %@", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)issueActionForShortcut:(id)a3
{
  v3 = [a3 type];
  if ([v3 isEqualToString:@"com.apple.Bridge.PairWatchShortcut"])
  {
    [PBBridgeCAReporter incrementSuccessType:19];
    [UIApp presentNewPairingFlowIfPossible];
LABEL_3:
    v4 = 1;
    goto LABEL_10;
  }

  if (PBIsInternalInstall() && [v3 isEqualToString:@"com.apple.Bridge.InternalPingShortcut"])
  {
    [UIApp pingWatch];
    goto LABEL_3;
  }

  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unsupported Shortcut action! %@", &v7, 0xCu);
  }

  v4 = 0;
LABEL_10:

  return v4;
}

@end