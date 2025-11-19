@interface MTProcessorManager
- (MTProcessorManager)init;
- (void)_playbackStateChanged:(id)a3;
- (void)_startProcessor:(unint64_t)a3;
- (void)dealloc;
- (void)startAllProcessors;
- (void)startProcessors:(unint64_t)a3;
- (void)startProcessorsForCarPlay;
- (void)startProcessorsForFeedUpdates;
- (void)startProcessorsForPlayback;
@end

@implementation MTProcessorManager

- (MTProcessorManager)init
{
  v9.receiver = self;
  v9.super_class = MTProcessorManager;
  v2 = [(MTProcessorManager *)&v9 init];
  if (v2)
  {
    v10[0] = &off_100500AF0;
    v11[0] = objc_opt_class();
    v10[1] = &off_100500B08;
    v11[1] = objc_opt_class();
    v10[2] = &off_100500B20;
    v11[2] = objc_opt_class();
    v10[3] = &off_100500B38;
    v11[3] = objc_opt_class();
    v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
    v4 = [v3 mutableCopy];
    classMap = v2->_classMap;
    v2->_classMap = v4;

    v6 = objc_opt_class();
    [(NSMutableDictionary *)v2->_classMap setObject:v6 forKey:&off_100500B50];
    os_feature_enabled_debounced_asset_management();
    [(NSMutableDictionary *)v2->_classMap setObject:objc_opt_class() forKey:&off_100500B68];
    os_feature_enabled_debounced_asset_management();
    [(NSMutableDictionary *)v2->_classMap setObject:objc_opt_class() forKey:&off_100500B80];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_playbackStateChanged:" name:IMAVPlayerNotification_StateDidChange object:0];
  }

  return v2;
}

- (void)startAllProcessors
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049CE0;
  block[3] = &unk_1004D8358;
  block[4] = self;
  if (qword_100583A78 != -1)
  {
    dispatch_once(&qword_100583A78, block);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:IMAVPlayerNotification_StateDidChange object:0];

  v4.receiver = self;
  v4.super_class = MTProcessorManager;
  [(MTProcessorManager *)&v4 dealloc];
}

- (void)_playbackStateChanged:(id)a3
{
  v4 = +[MTPlayerController defaultInstance];
  v5 = [v4 isPlayingLocally];

  if (v5)
  {

    [(MTProcessorManager *)self startProcessorsForPlayback];
  }
}

- (void)_startProcessor:(unint64_t)a3
{
  classMap = self->_classMap;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)classMap objectForKeyedSubscript:v4];

  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromClass(v5);
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ processor", &v12, 0xCu);
  }

  v8 = [(objc_class *)v5 sharedInstance];
  if ([v8 isRunning])
  {
    v9 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromClass(v5);
      v12 = 138543362;
      v13 = v10;
      v11 = "%{public}@ is already running";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    }
  }

  else
  {
    [v8 start];
    v9 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromClass(v5);
      v12 = 138543362;
      v13 = v10;
      v11 = "%{public}@ has been started";
      goto LABEL_8;
    }
  }
}

- (void)startProcessors:(unint64_t)a3
{
  v5 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting multiple processors: %{public}ld", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableDictionary *)self->_classMap allKeys];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue];
        if ((v11 & a3) != 0)
        {
          [(MTProcessorManager *)self _startProcessor:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)startProcessorsForFeedUpdates
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F320;
  block[3] = &unk_1004D8358;
  block[4] = self;
  if (qword_100583A80 != -1)
  {
    dispatch_once(&qword_100583A80, block);
  }
}

- (void)startProcessorsForPlayback
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F420;
  block[3] = &unk_1004D8358;
  block[4] = self;
  if (qword_100583A88 != -1)
  {
    dispatch_once(&qword_100583A88, block);
  }
}

- (void)startProcessorsForCarPlay
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F520;
  block[3] = &unk_1004D8358;
  block[4] = self;
  if (qword_100583A90 != -1)
  {
    dispatch_once(&qword_100583A90, block);
  }
}

@end