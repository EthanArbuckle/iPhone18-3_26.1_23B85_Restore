@interface ASLocalization
+ (id)sharedLocalization;
- (ASLocalization)init;
- (id)_languageCode;
- (id)localizedStringForKey:(id)a3 table:(id)a4 bundle:(id)a5;
- (void)_clearTableCache;
- (void)_languageCodeChanged;
- (void)dealloc;
@end

@implementation ASLocalization

- (id)localizedStringForKey:(id)a3 table:(id)a4 bundle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100003950;
    v24 = sub_100003960;
    v25 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003968;
    block[3] = &unk_100014458;
    v15 = v9;
    v16 = self;
    v17 = v10;
    v19 = &v20;
    v18 = v8;
    dispatch_sync(queue, block);
    v12 = v21[5];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_clearTableCache
{
  languageCode = self->_languageCode;
  self->_languageCode = 0;

  stringTables = self->_stringTables;
  self->_stringTables = 0;
}

- (void)_languageCodeChanged
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C78;
  block[3] = &unk_1000146A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_languageCode
{
  languageCode = self->_languageCode;
  if (!languageCode)
  {
    v4 = +[AFPreferences sharedPreferences];
    v5 = [v4 languageCode];
    v6 = [v5 copy];
    v7 = self->_languageCode;
    self->_languageCode = v6;

    v8 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      v9 = self->_languageCode;
      v11 = 136315394;
      v12 = "[ASLocalization _languageCode]";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Using new language code %@", &v11, 0x16u);
    }

    languageCode = self->_languageCode;
  }

  return languageCode;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = ASLocalization;
  [(ASLocalization *)&v4 dealloc];
}

- (ASLocalization)init
{
  v7.receiver = self;
  v7.super_class = ASLocalization;
  v2 = [(ASLocalization *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create(0, 0);
    queue = v2->_queue;
    v2->_queue = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100003E7C, AFLanguageCodeDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (id)sharedLocalization
{
  if (qword_10001A300 != -1)
  {
    dispatch_once(&qword_10001A300, &stru_100014430);
  }

  v3 = qword_10001A2F8;

  return v3;
}

@end