@interface ADDictationOfflineStatusObserver
+ (id)_offlineDictationStatusStringToDictionary:(id)a3;
+ (id)sharedDictationOfflineStatusObserver;
- (ADDictationOfflineStatusObserver)init;
- (NSDictionary)offlineDictationStatus;
- (void)_updateOfflineDictationStatus:(id)a3 error:(id)a4;
- (void)fetchOfflineDictationStatusIgnoringCache:(BOOL)a3 asynchronously:(BOOL)a4;
- (void)setOfflineDictationStatus:(id)a3;
@end

@implementation ADDictationOfflineStatusObserver

- (void)setOfflineDictationStatus:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&unk_10058FF70);
  objc_storeStrong(&self->_offlineDictationStatus, a3);
  os_unfair_lock_unlock(&unk_10058FF70);
  v6 = +[AFPreferences sharedPreferences];
  v7 = [v6 offlineDictationStatus];

  if (([v7 isEqualToDictionary:v5] & 1) == 0)
  {
    v8 = +[AFPreferences sharedPreferences];
    [v8 setOfflineDictationStatus:v5];

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADDictationOfflineStatusObserver setOfflineDictationStatus:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Prefs updated with new offline dictation status", &v10, 0xCu);
    }
  }
}

- (NSDictionary)offlineDictationStatus
{
  os_unfair_lock_lock(&unk_10058FF70);
  v3 = self->_offlineDictationStatus;
  os_unfair_lock_unlock(&unk_10058FF70);
  if (!v3)
  {
    v4 = +[AFPreferences sharedPreferences];
    v3 = [v4 offlineDictationStatus];
  }

  return v3;
}

- (void)fetchOfflineDictationStatusIgnoringCache:(BOOL)a3 asynchronously:(BOOL)a4
{
  v4 = a4;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A974C;
  v11[3] = &unk_10051B5F0;
  objc_copyWeak(&v12, &location);
  v6 = objc_retainBlock(v11);
  v7 = v6;
  if (v4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A97F0;
    block[3] = &unk_10051CF58;
    v10 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    (v6[2])(v6);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_updateOfflineDictationStatus:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (v7)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[ADDictationOfflineStatusObserver _updateOfflineDictationStatus:error:]";
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Error getting offline dictation status. Error: %@", &v13, 0x16u);
    }

    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:kAssetQueryResultKey];
    v11 = [v10 isEqualToNumber:&off_100533860];

    if (v11)
    {
      [(ADDictationOfflineStatusObserver *)self setOfflineDictationStatus:&__NSDictionary0__struct];
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[ADDictationOfflineStatusObserver _updateOfflineDictationStatus:error:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Resetting offline dictation status prefs", &v13, 0xCu);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[ADDictationOfflineStatusObserver _updateOfflineDictationStatus:error:]";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Received offline dictation status %@", &v13, 0x16u);
    }

    v9 = [objc_opt_class() _offlineDictationStatusStringToDictionary:v6];
    [(ADDictationOfflineStatusObserver *)self setOfflineDictationStatus:v9];
  }
}

- (ADDictationOfflineStatusObserver)init
{
  v6.receiver = self;
  v6.super_class = ADDictationOfflineStatusObserver;
  v2 = [(ADDictationOfflineStatusObserver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ADDictationOfflineStatusObserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)_offlineDictationStatusStringToDictionary:(id)a3
{
  v3 = a3;
  +[NSMutableDictionary dictionary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A9B58;
  v8 = v7[3] = &unk_10051C210;
  v4 = v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = [NSDictionary dictionaryWithDictionary:v4];

  return v5;
}

+ (id)sharedDictationOfflineStatusObserver
{
  if (qword_10058FF68 != -1)
  {
    dispatch_once(&qword_10058FF68, &stru_100510428);
  }

  v3 = qword_10058FF60;

  return v3;
}

@end