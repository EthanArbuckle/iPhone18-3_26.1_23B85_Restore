@interface MTAppShortcutManager
- (MTAppShortcutManager)init;
- (id)_fetchStationShortcutItems;
- (void)_beginBackgroundTask;
- (void)_endBackgroundTask:(BOOL)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performActionForShortcutItem:(id)a3 completionHandler:(id)a4;
- (void)performEpisodeUpdateAction:(id)a3;
- (void)performPlayActionForShortcutItem:(id)a3 completionHandler:(id)a4;
- (void)performSearchAction:(id)a3;
- (void)startObservingChanges;
- (void)stopObservingChanges;
- (void)updateDockShortcuts;
- (void)updateMacPlaybackShortcutItemsForPlaybackState:(BOOL)a3;
- (void)updateShortcutItems;
- (void)updateSpringboardShortcuts;
@end

@implementation MTAppShortcutManager

- (MTAppShortcutManager)init
{
  v7.receiver = self;
  v7.super_class = MTAppShortcutManager;
  v2 = [(MTAppShortcutManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_backgroundTaskIdentifier = UIBackgroundTaskInvalid;
    v4 = dispatch_queue_create("MTAppShortcutManager-updateShortcutItems", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v4;

    [(MTAppShortcutManager *)v3 startObservingChanges];
  }

  return v3;
}

- (void)startObservingChanges
{
  v7 = +[NSNotificationCenter defaultCenter];
  if ([(MTAppShortcutManager *)self shortcutsKind]== 1)
  {
    [v7 addObserver:self selector:"updateShortcutItems" name:IMAVPlayerNotification_StateDidChange object:0];
  }

  else
  {
    v3 = +[UIApplication sharedPlaybackController];
    v4 = +[MTSharedPlaybackController kIsPlayingKeyPath];
    [v3 addObserver:self forKeyPath:v4 options:3 context:0];

    v5 = +[MTSharedPlaybackController kPreferredJumpForwardInterval];
    [v3 addObserver:self forKeyPath:v5 options:3 context:0];

    v6 = +[MTSharedPlaybackController kPreferredJumpBackwardInterval];
    [v3 addObserver:self forKeyPath:v6 options:3 context:0];
  }

  [v7 addObserver:self selector:"updateShortcutItems" name:@"MTSyncControllerOperationCompleted" object:0];
}

- (void)dealloc
{
  [(MTAppShortcutManager *)self stopObservingChanges];
  v3.receiver = self;
  v3.super_class = MTAppShortcutManager;
  [(MTAppShortcutManager *)&v3 dealloc];
}

- (void)stopObservingChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)updateMacPlaybackShortcutItemsForPlaybackState:(BOOL)a3
{
  v3 = a3;
  v18 = +[NSMutableArray array];
  v5 = [UIApplicationShortcutItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v3)
  {
    v8 = [v6 localizedStringForKey:@"EPISODE_ACTION_PAUSE" value:&stru_1004F3018 table:0];
    v9 = [v5 initWithType:@"kMTShortcutItemTypePause" localizedTitle:v8];
    [v18 addObject:v9];

    v10 = [UIApplicationShortcutItem alloc];
    v11 = [(MTAppShortcutManager *)self playbackController];
    v12 = [v11 localizedPreferredJumpForwardString];
    v13 = [v10 initWithType:@"kMTShortcutItemTypeSkipForward" localizedTitle:v12];
    [v18 addObject:v13];

    v5 = [UIApplicationShortcutItem alloc];
    v7 = [(MTAppShortcutManager *)self playbackController];
    v14 = [v7 localizedPreferredJumpBackwardString];
    v15 = @"kMTShortcutItemTypeSkipBackward";
  }

  else
  {
    v14 = [v6 localizedStringForKey:@"EPISODE_ACTION_PLAY" value:&stru_1004F3018 table:0];
    v15 = @"kMTShortcutItemTypePlay";
  }

  v16 = [v5 initWithType:v15 localizedTitle:v14];
  [v18 addObject:v16];

  v17 = +[UIApplication sharedApplication];
  [v17 setShortcutItems:v18];
}

- (void)updateShortcutItems
{
  v3 = [(MTAppShortcutManager *)self shortcutsKind];
  if (v3 == 1)
  {

    [(MTAppShortcutManager *)self updateSpringboardShortcuts];
  }

  else if (!v3)
  {

    [(MTAppShortcutManager *)self updateDockShortcuts];
  }
}

- (void)updateDockShortcuts
{
  v3 = [(MTAppShortcutManager *)self playbackController];
  -[MTAppShortcutManager updateMacPlaybackShortcutItemsForPlaybackState:](self, "updateMacPlaybackShortcutItemsForPlaybackState:", [v3 isPlaying]);
}

- (void)updateSpringboardShortcuts
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 applicationState];

  if (v4 == 2)
  {
    [(MTAppShortcutManager *)self _beginBackgroundTask];
    v5 = [(MTAppShortcutManager *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007CDEC;
    block[3] = &unk_1004D8358;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)performActionForShortcutItem:(id)a3 completionHandler:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [v22 type];
  v8 = [v7 isEqualToString:@"kMTShortcutItemTypeSearchStore"];

  if (v8)
  {
    [(MTAppShortcutManager *)self performSearchAction:v6];
    goto LABEL_16;
  }

  v9 = [v22 type];
  v10 = [v9 isEqualToString:@"kMTShortcutItemTypeCheckNewEpisodes"];

  if (v10)
  {
    [(MTAppShortcutManager *)self performEpisodeUpdateAction:v6];
    goto LABEL_16;
  }

  v11 = [v22 type];
  v12 = [v11 isEqualToString:@"kMTShortcutItemTypeStation"];

  if (v12)
  {
    [(MTAppShortcutManager *)self performPlayActionForShortcutItem:v22 completionHandler:v6];
    goto LABEL_16;
  }

  v13 = [v22 type];
  v14 = [v13 isEqualToString:@"kMTShortcutItemTypePlay"];

  if (v14)
  {
    v15 = [(MTAppShortcutManager *)self playbackController];
    [v15 play];
  }

  else
  {
    v16 = [v22 type];
    v17 = [v16 isEqualToString:@"kMTShortcutItemTypePause"];

    if (v17)
    {
      v15 = [(MTAppShortcutManager *)self playbackController];
      [v15 pause];
    }

    else
    {
      v18 = [v22 type];
      v19 = [v18 isEqualToString:@"kMTShortcutItemTypeSkipForward"];

      if (v19)
      {
        v15 = [(MTAppShortcutManager *)self playbackController];
        [v15 jumpForward];
      }

      else
      {
        v20 = [v22 type];
        v21 = [v20 isEqualToString:@"kMTShortcutItemTypeSkipBackward"];

        if (!v21)
        {
          goto LABEL_16;
        }

        v15 = [(MTAppShortcutManager *)self playbackController];
        [v15 jumpBackward];
      }
    }
  }

LABEL_16:
}

- (void)performSearchAction:(id)a3
{
  v3 = a3;
  v5 = [MTURLResolver searchUrlForSearchText:0];
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];

  v3[2](v3, 1);
}

- (void)performEpisodeUpdateAction:(id)a3
{
  v3 = a3;
  v4 = +[MTFeedUpdateManager sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007D334;
  v12[3] = &unk_1004D9870;
  v5 = v3;
  v13 = v5;
  [v4 updateAllPodcastsUserInitiated:1 forced:1 source:3 started:v12];

  v6 = +[MTApplication appController];
  if ([v6 isMyPodcastsTabSelected])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007D34C;
    v10[3] = &unk_1004D8358;
    v7 = &v11;
    v11 = v6;
    [v6 selectMyPodcastsTabAndPopToRoot:1 animated:1 completion:v10];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007D3A4;
    v8[3] = &unk_1004D8358;
    v7 = &v9;
    v9 = v6;
    [v6 selectUnplayedTabAndPopToRoot:1 animated:1 completion:v8];
  }
}

- (void)performPlayActionForShortcutItem:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"stationUuid"];

  v9 = [v6 userInfo];

  v10 = [v9 objectForKeyedSubscript:@"episodeUuid"];

  v11 = [MTPlaybackQueueFactory playStationUuid:v8 episodeUuid:v10];
  v12 = +[UIApplication sharedPlaybackController];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007D550;
  v14[3] = &unk_1004D9870;
  v15 = v5;
  v13 = v5;
  [v12 playManifest:v11 waitingForEngine:1 completion:v14];
}

- (void)_beginBackgroundTask
{
  v2 = self;
  objc_sync_enter(v2);
  [(MTAppShortcutManager *)v2 setUpdateCount:[(MTAppShortcutManager *)v2 updateCount]+ 1];
  if ([(MTAppShortcutManager *)v2 backgroundTaskIdentifier]== UIBackgroundTaskInvalid)
  {
    v3 = +[UIApplication sharedApplication];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10007D66C;
    v4[3] = &unk_1004D8358;
    v4[4] = v2;
    -[MTAppShortcutManager setBackgroundTaskIdentifier:](v2, "setBackgroundTaskIdentifier:", [v3 beginBackgroundTaskWithName:@"MTAppShortcutManager" expirationHandler:v4]);
  }

  objc_sync_exit(v2);
}

- (void)_endBackgroundTask:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  [(MTAppShortcutManager *)obj setUpdateCount:[(MTAppShortcutManager *)obj updateCount]- 1];
  if ((![(MTAppShortcutManager *)obj updateCount]|| v3) && [(MTAppShortcutManager *)obj backgroundTaskIdentifier]!= UIBackgroundTaskInvalid)
  {
    v4 = +[UIApplication sharedApplication];
    [v4 endBackgroundTask:{-[MTAppShortcutManager backgroundTaskIdentifier](obj, "backgroundTaskIdentifier")}];

    [(MTAppShortcutManager *)obj setBackgroundTaskIdentifier:UIBackgroundTaskInvalid];
  }

  if ([(MTAppShortcutManager *)obj backgroundTaskIdentifier]== UIBackgroundTaskInvalid)
  {
    [(MTAppShortcutManager *)obj setUpdateCount:0];
  }

  objc_sync_exit(obj);
}

- (id)_fetchStationShortcutItems
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100008950;
  v14 = sub_10003B48C;
  v15 = 0;
  v2 = +[MTDB sharedInstance];
  v3 = [v2 privateQueueContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007D8C4;
  v7[3] = &unk_1004D8CC8;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v13 = a3;
  v7 = +[MTSharedPlaybackController kIsPlayingKeyPath];
  v8 = [v13 isEqualToString:v7];

  if (v8)
  {
    [(MTAppShortcutManager *)self updateShortcutItems];
    goto LABEL_7;
  }

  v9 = +[MTSharedPlaybackController kPreferredJumpForwardInterval];
  if ([v13 isEqualToString:v9])
  {
  }

  else
  {
    v10 = +[MTSharedPlaybackController kPreferredJumpBackwardInterval];
    v11 = [v13 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v12 = +[UIApplication sharedPlaybackController];
  -[MTAppShortcutManager updateMacPlaybackShortcutItemsForPlaybackState:](self, "updateMacPlaybackShortcutItemsForPlaybackState:", [v12 isPlaying]);

LABEL_7:
}

@end