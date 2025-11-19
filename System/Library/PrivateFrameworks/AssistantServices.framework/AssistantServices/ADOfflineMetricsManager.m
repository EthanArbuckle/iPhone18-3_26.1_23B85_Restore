@interface ADOfflineMetricsManager
+ (id)_buildOfflineMetricsMap;
+ (void)_deleteLegacyOfflineMetricsFiles;
- (ADOfflineMetricsManager)init;
- (void)deleteAllMetrics;
- (void)deleteMetricsWithOfflineIdentifier:(id)a3;
- (void)fetchNextMetricsUsingBlock:(id)a3;
- (void)insertMetrics:(id)a3;
@end

@implementation ADOfflineMetricsManager

- (void)deleteAllMetrics
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADOfflineMetricsManager deleteAllMetrics]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022DE74;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)fetchNextMetricsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADOfflineMetricsManager fetchNextMetricsUsingBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10022DFAC;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)deleteMetricsWithOfflineIdentifier:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADOfflineMetricsManager deleteMetricsWithOfflineIdentifier:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s offlineIdentifier = %@", buf, 0x16u);
  }

  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10022E1D8;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)insertMetrics:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADOfflineMetricsManager insertMetrics:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s metrics = %@", buf, 0x16u);
  }

  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10022E31C;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (ADOfflineMetricsManager)init
{
  v11.receiver = self;
  v11.super_class = ADOfflineMetricsManager;
  v2 = [(ADOfflineMetricsManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.assistant.offline-metrics", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10022E4B8;
    block[3] = &unk_10051DFE8;
    v10 = v2;
    dispatch_async(v7, block);
  }

  return v2;
}

+ (id)_buildOfflineMetricsMap
{
  v2 = +[ADAudioFileWriter _savedAudioFilesDirectory]_0();
  v3 = [v2 URLByAppendingPathComponent:@"SiriMetrics"];
  v4 = [v3 path];

  v5 = [[ADOfflineMetricsMap alloc] initWithPath:v4];

  return v5;
}

+ (void)_deleteLegacyOfflineMetricsFiles
{
  v2 = +[ADAudioFileWriter _savedAudioFilesDirectory]_0();
  v3 = [v2 URLByAppendingPathComponent:@"SiriOfflineMetrics.plist"];
  v4 = [v3 path];
  v23[0] = v4;
  v5 = +[ADAudioFileWriter _savedAudioFilesDirectory]_0();
  v6 = [v5 URLByAppendingPathComponent:@"offlineSAMetrics.plist"];
  v7 = [v6 path];
  v23[1] = v7;
  v8 = [NSArray arrayWithObjects:v23 count:2];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = +[NSFileManager defaultManager];
        v16 = [v15 fileExistsAtPath:v14];

        if (v16)
        {
          v17 = +[NSFileManager defaultManager];
          [v17 removeItemAtPath:v14 error:0];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

@end