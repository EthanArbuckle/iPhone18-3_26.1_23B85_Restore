@interface BKiAPController
+ (void)setup;
- (BKiAPController)init;
- (id)_currentMediaItemFromQuery:(id)query;
- (void)dealloc;
- (void)handleSetPlaybackQueueCommand:(id)command completionHandler:(id)handler;
@end

@implementation BKiAPController

+ (void)setup
{
  if (qword_100AF76B0 != -1)
  {
    sub_10000B5AC();
  }
}

- (BKiAPController)init
{
  v7.receiver = self;
  v7.super_class = BKiAPController;
  v2 = [(BKiAPController *)&v7 init];
  if (v2)
  {
    v3 = +[MPRemoteCommandCenter sharedCommandCenter];
    setPlaybackQueueCommand = [v3 setPlaybackQueueCommand];
    [setPlaybackQueueCommand setEnabled:1];
    v5 = BKCarPlayLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100790078(v5);
    }

    [setPlaybackQueueCommand addTarget:v2 action:"handleSetPlaybackQueueCommand:completionHandler:"];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[MPRemoteCommandCenter sharedCommandCenter];
  setPlaybackQueueCommand = [v3 setPlaybackQueueCommand];
  [setPlaybackQueueCommand removeTarget:self];

  v5.receiver = self;
  v5.super_class = BKiAPController;
  [(BKiAPController *)&v5 dealloc];
}

- (id)_currentMediaItemFromQuery:(id)query
{
  queryCopy = query;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100027400;
  v19 = sub_100027638;
  v20 = 0;
  items = [queryCopy items];
  v5 = [items count];

  if (v5)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    items2 = [queryCopy items];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100116DB4;
    v13[3] = &unk_100A07C70;
    v13[4] = v14;
    v13[5] = &v15;
    [items2 enumerateObjectsUsingBlock:v13];

    _Block_object_dispose(v14, 8);
  }

  v7 = v16[5];
  if (!v7)
  {
    items3 = [queryCopy items];
    firstObject = [items3 firstObject];
    v10 = v16[5];
    v16[5] = firstObject;

    v7 = v16[5];
  }

  v11 = v7;
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (void)handleSetPlaybackQueueCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  v8 = BKCarPlayLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received handleSetPlaybackQueueCommand:completionHandler:", buf, 2u);
  }

  v9 = +[BKAppDelegate delegate];
  [v9 setSuppressOpenLastBook:1];
  kdebug_trace();
  appLaunchCoordinator = [v9 appLaunchCoordinator];
  if (appLaunchCoordinator)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100116FF8;
    v11[3] = &unk_100A05218;
    v12 = commandCopy;
    selfCopy = self;
    v14 = handlerCopy;
    [appLaunchCoordinator appLaunchCoordinatorOnConditionMask:2 blockID:@"Audiobook playback queue request" performBlock:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 200);
  }
}

@end