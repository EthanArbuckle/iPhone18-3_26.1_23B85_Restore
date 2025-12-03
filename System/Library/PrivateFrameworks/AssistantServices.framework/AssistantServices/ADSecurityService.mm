@interface ADSecurityService
+ (id)sharedService;
- (ADSecurityService)init;
- (void)_accountDidChange:(id)change;
- (void)_dispatchCallbackForProcessedData:(id)data error:(id)error completion:(id)completion;
- (void)_dispatchCallbackForProcessedDataMap:(id)map errorMap:(id)errorMap completion:(id)completion;
- (void)_retrieveKeyAndSaltWithCompletion:(id)completion;
- (void)internalAuthAppleConnectServiceTicket:(id)ticket;
- (void)internalAuthSessionToken:(id)token;
- (void)processData:(id)data usingProcedure:(int64_t)procedure completion:(id)completion;
- (void)processDataMap:(id)map usingProcedure:(int64_t)procedure completion:(id)completion;
- (void)setInternalAuthAppleConnectServiceTicket:(id)ticket completion:(id)completion;
- (void)setInternalAuthSessionToken:(id)token completion:(id)completion;
- (void)setKeychainValue:(id)value forKey:(id)key accountIdentifier:(id)identifier completion:(id)completion;
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

- (void)_accountDidChange:(id)change
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

- (void)_retrieveKeyAndSaltWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = +[ADCommandCenter sharedCommandCenter];
    _queue = [v5 _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C05E8;
    block[3] = &unk_10051E088;
    v9 = v5;
    selfCopy = self;
    v11 = completionCopy;
    v7 = v5;
    dispatch_async(_queue, block);
  }
}

- (void)_dispatchCallbackForProcessedDataMap:(id)map errorMap:(id)errorMap completion:(id)completion
{
  mapCopy = map;
  errorMapCopy = errorMap;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C0878;
    block[3] = &unk_10051E088;
    v16 = completionCopy;
    v14 = mapCopy;
    v15 = errorMapCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_dispatchCallbackForProcessedData:(id)data error:(id)error completion:(id)completion
{
  dataCopy = data;
  errorCopy = error;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C0974;
    block[3] = &unk_10051E088;
    v16 = completionCopy;
    v14 = dataCopy;
    v15 = errorCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (void)internalAuthSessionToken:(id)token
{
  tokenCopy = token;
  v5 = +[ADPreferences sharedPreferences];
  internalAuthSessionToken = [v5 internalAuthSessionToken];

  if (tokenCopy)
  {
    callbackQueue = self->_callbackQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C0A68;
    v8[3] = &unk_10051E038;
    v10 = tokenCopy;
    v9 = internalAuthSessionToken;
    dispatch_async(callbackQueue, v8);
  }
}

- (void)internalAuthAppleConnectServiceTicket:(id)ticket
{
  ticketCopy = ticket;
  v5 = +[ADPreferences sharedPreferences];
  internalAuthAppleConnectServiceTicket = [v5 internalAuthAppleConnectServiceTicket];

  if (ticketCopy)
  {
    callbackQueue = self->_callbackQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C0B5C;
    v8[3] = &unk_10051E038;
    v10 = ticketCopy;
    v9 = internalAuthAppleConnectServiceTicket;
    dispatch_async(callbackQueue, v8);
  }
}

- (void)setInternalAuthSessionToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  v8 = +[ADPreferences sharedPreferences];
  [v8 setInternalAuthSessionToken:tokenCopy];

  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C0C4C;
    block[3] = &unk_10051CF58;
    v11 = completionCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (void)setInternalAuthAppleConnectServiceTicket:(id)ticket completion:(id)completion
{
  completionCopy = completion;
  ticketCopy = ticket;
  v8 = +[ADPreferences sharedPreferences];
  [v8 setInternalAuthAppleConnectServiceTicket:ticketCopy];

  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C0D38;
    block[3] = &unk_10051CF58;
    v11 = completionCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (void)setKeychainValue:(id)value forKey:(id)key accountIdentifier:(id)identifier completion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  identifierCopy = identifier;
  completionCopy = completion;
  keychainQueue = self->_keychainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C0E5C;
  block[3] = &unk_10051D2A0;
  v20 = valueCopy;
  v21 = identifierCopy;
  selfCopy = self;
  v24 = completionCopy;
  v22 = keyCopy;
  v15 = completionCopy;
  v16 = keyCopy;
  v17 = identifierCopy;
  v18 = valueCopy;
  dispatch_async(keychainQueue, block);
}

- (void)processDataMap:(id)map usingProcedure:(int64_t)procedure completion:(id)completion
{
  mapCopy = map;
  completionCopy = completion;
  if (completionCopy)
  {
    if (mapCopy)
    {
      procedureQueue = self->_procedureQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001C1118;
      block[3] = &unk_10051C0D8;
      procedureCopy = procedure;
      v14 = mapCopy;
      selfCopy = self;
      v16 = completionCopy;
      dispatch_async(procedureQueue, block);

      v11 = v14;
    }

    else
    {
      v18 = @"error";
      v11 = [AFError errorWithCode:1603];
      v19 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [(ADSecurityService *)self _dispatchCallbackForProcessedDataMap:0 errorMap:v12 completion:completionCopy];
    }
  }
}

- (void)processData:(id)data usingProcedure:(int64_t)procedure completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dataCopy)
    {
      procedureQueue = self->_procedureQueue;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001C1C3C;
      v12[3] = &unk_10051C0D8;
      procedureCopy = procedure;
      v13 = dataCopy;
      selfCopy = self;
      v15 = completionCopy;
      dispatch_async(procedureQueue, v12);
    }

    else
    {
      v11 = [AFError errorWithCode:1603];
      [(ADSecurityService *)self _dispatchCallbackForProcessedData:0 error:v11 completion:completionCopy];
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