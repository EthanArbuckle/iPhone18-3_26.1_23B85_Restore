@interface ADSecurityService
+ (id)sharedService;
- (ADSecurityService)init;
- (void)_accountDidChange:(id)a3;
- (void)_dispatchCallbackForProcessedData:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_dispatchCallbackForProcessedDataMap:(id)a3 errorMap:(id)a4 completion:(id)a5;
- (void)_retrieveKeyAndSaltWithCompletion:(id)a3;
- (void)internalAuthAppleConnectServiceTicket:(id)a3;
- (void)internalAuthSessionToken:(id)a3;
- (void)processData:(id)a3 usingProcedure:(int64_t)a4 completion:(id)a5;
- (void)processDataMap:(id)a3 usingProcedure:(int64_t)a4 completion:(id)a5;
- (void)setInternalAuthAppleConnectServiceTicket:(id)a3 completion:(id)a4;
- (void)setInternalAuthSessionToken:(id)a3 completion:(id)a4;
- (void)setKeychainValue:(id)a3 forKey:(id)a4 accountIdentifier:(id)a5 completion:(id)a6;
@end

@implementation ADSecurityService

+ (id)sharedService
{
  if (qword_1005904B0 != -1)
  {
    dispatch_once(&qword_1005904B0, &stru_100515178);
  }

  v3 = qword_1005904B8;

  return v3;
}

- (void)_accountDidChange:(id)a3
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSecurityService _accountDidChange:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  notify_post(AFSecurityEncryptionKeyDidChangeNotification);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ADSecurityServiceEncryptionKeyDidChangeNotification" object:0];
}

- (void)_retrieveKeyAndSaltWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[ADCommandCenter sharedCommandCenter];
    v6 = [v5 _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C05E8;
    block[3] = &unk_10051E088;
    v9 = v5;
    v10 = self;
    v11 = v4;
    v7 = v5;
    dispatch_async(v6, block);
  }
}

- (void)_dispatchCallbackForProcessedDataMap:(id)a3 errorMap:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C0878;
    block[3] = &unk_10051E088;
    v16 = v10;
    v14 = v8;
    v15 = v9;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_dispatchCallbackForProcessedData:(id)a3 error:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C0974;
    block[3] = &unk_10051E088;
    v16 = v10;
    v14 = v8;
    v15 = v9;
    dispatch_async(callbackQueue, block);
  }
}

- (void)internalAuthSessionToken:(id)a3
{
  v4 = a3;
  v5 = +[ADPreferences sharedPreferences];
  v6 = [v5 internalAuthSessionToken];

  if (v4)
  {
    callbackQueue = self->_callbackQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C0A68;
    v8[3] = &unk_10051E038;
    v10 = v4;
    v9 = v6;
    dispatch_async(callbackQueue, v8);
  }
}

- (void)internalAuthAppleConnectServiceTicket:(id)a3
{
  v4 = a3;
  v5 = +[ADPreferences sharedPreferences];
  v6 = [v5 internalAuthAppleConnectServiceTicket];

  if (v4)
  {
    callbackQueue = self->_callbackQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C0B5C;
    v8[3] = &unk_10051E038;
    v10 = v4;
    v9 = v6;
    dispatch_async(callbackQueue, v8);
  }
}

- (void)setInternalAuthSessionToken:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ADPreferences sharedPreferences];
  [v8 setInternalAuthSessionToken:v7];

  if (v6)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C0C4C;
    block[3] = &unk_10051CF58;
    v11 = v6;
    dispatch_async(callbackQueue, block);
  }
}

- (void)setInternalAuthAppleConnectServiceTicket:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ADPreferences sharedPreferences];
  [v8 setInternalAuthAppleConnectServiceTicket:v7];

  if (v6)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C0D38;
    block[3] = &unk_10051CF58;
    v11 = v6;
    dispatch_async(callbackQueue, block);
  }
}

- (void)setKeychainValue:(id)a3 forKey:(id)a4 accountIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  keychainQueue = self->_keychainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C0E5C;
  block[3] = &unk_10051D2A0;
  v20 = v10;
  v21 = v12;
  v23 = self;
  v24 = v13;
  v22 = v11;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  v18 = v10;
  dispatch_async(keychainQueue, block);
}

- (void)processDataMap:(id)a3 usingProcedure:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (v8)
    {
      procedureQueue = self->_procedureQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001C1118;
      block[3] = &unk_10051C0D8;
      v17 = a4;
      v14 = v8;
      v15 = self;
      v16 = v9;
      dispatch_async(procedureQueue, block);

      v11 = v14;
    }

    else
    {
      v18 = @"error";
      v11 = [AFError errorWithCode:1603];
      v19 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [(ADSecurityService *)self _dispatchCallbackForProcessedDataMap:0 errorMap:v12 completion:v9];
    }
  }
}

- (void)processData:(id)a3 usingProcedure:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (v8)
    {
      procedureQueue = self->_procedureQueue;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001C1C3C;
      v12[3] = &unk_10051C0D8;
      v16 = a4;
      v13 = v8;
      v14 = self;
      v15 = v9;
      dispatch_async(procedureQueue, v12);
    }

    else
    {
      v11 = [AFError errorWithCode:1603];
      [(ADSecurityService *)self _dispatchCallbackForProcessedData:0 error:v11 completion:v9];
    }
  }
}

- (ADSecurityService)init
{
  v26.receiver = self;
  v26.super_class = ADSecurityService;
  v2 = [(ADSecurityService *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.assistant.security.service.procedure", v3);

    procedureQueue = v2->_procedureQueue;
    v2->_procedureQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.assistant.security.service.keychain", v6);

    keychainQueue = v2->_keychainQueue;
    v2->_keychainQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.assistant.security.service.callback", v9);

    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v10;

    v12 = AFSecurityGenerateRandomData();
    inMemorySalt = v2->_inMemorySalt;
    v2->_inMemorySalt = v12;

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"_accountDidChange:" name:@"ADActiveAccountIdentifierDidChangeNotification" object:0];

    v15 = v2->_procedureQueue;
    v16 = +[ADQueueMonitor sharedMonitor];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001C2334;
    v24[3] = &unk_10051C2E0;
    v25 = v15;
    v17 = v15;
    [v16 addQueue:v17 heartBeatInterval:v24 timeoutInterval:5.0 timeoutHandler:5.0];

    v18 = v2->_keychainQueue;
    v19 = +[ADQueueMonitor sharedMonitor];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001C2450;
    v22[3] = &unk_10051C2E0;
    v23 = v18;
    v20 = v18;
    [v19 addQueue:v20 heartBeatInterval:v22 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v2;
}

@end