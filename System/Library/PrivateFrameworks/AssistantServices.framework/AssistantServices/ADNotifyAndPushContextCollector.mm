@interface ADNotifyAndPushContextCollector
- (ADNotifyAndPushContextCollector)init;
- (BOOL)_hasCompletionForPID:(int)d;
- (void)_addCompletion:(id)completion forPID:(int)d;
- (void)_getContextForAppInfo:(id)info completion:(id)completion;
- (void)_invokeAllCompletionsWithError;
- (void)_invokeCompletionWithContext:(id)context forPID:(int)d;
- (void)_setContext:(id)context forPID:(int)d;
- (void)getContextForAppInfos:(id)infos completion:(id)completion;
@end

@implementation ADNotifyAndPushContextCollector

- (void)_invokeAllCompletionsWithError
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_completionsByPID;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 136315394;
    v12 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = v12;
          v18 = "[ADNotifyAndPushContextCollector _invokeAllCompletionsWithError]";
          v19 = 2112;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Push context time out for pid %@", buf, 0x16u);
        }

        v11 = [(NSMutableDictionary *)self->_completionsByPID objectForKey:v9, v12, v13];
        v11[2](v11, 0);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_completionsByPID removeAllObjects];
}

- (void)_invokeCompletionWithContext:(id)context forPID:(int)d
{
  v4 = *&d;
  contextCopy = context;
  completionsByPID = self->_completionsByPID;
  v7 = [NSNumber numberWithInt:v4];
  v8 = [(NSMutableDictionary *)completionsByPID objectForKey:v7];

  if (v8)
  {
    (v8)[2](v8, contextCopy);
  }

  v9 = self->_completionsByPID;
  v10 = [NSNumber numberWithInt:v4];
  [(NSMutableDictionary *)v9 removeObjectForKey:v10];
}

- (void)_addCompletion:(id)completion forPID:(int)d
{
  v4 = *&d;
  completionsByPID = self->_completionsByPID;
  v7 = objc_retainBlock(completion);
  v6 = [NSNumber numberWithInt:v4];
  [(NSMutableDictionary *)completionsByPID setObject:v7 forKey:v6];
}

- (BOOL)_hasCompletionForPID:(int)d
{
  completionsByPID = self->_completionsByPID;
  v4 = [NSNumber numberWithInt:*&d];
  v5 = [(NSMutableDictionary *)completionsByPID objectForKey:v4];
  LOBYTE(completionsByPID) = v5 != 0;

  return completionsByPID;
}

- (void)_getContextForAppInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  identifier = [infoCopy identifier];
  v9 = AFContextProviderNameForBundleId();
  uTF8String = [v9 UTF8String];

  out_token = -1;
  if (uTF8String && !notify_register_check(uTF8String, &out_token))
  {
    *buf = 0;
    state = notify_get_state(out_token, buf);
    v16 = *buf;
    notify_cancel(out_token);
    v11 = 0;
    if (!state && v16 == 1)
    {
      v11 = notify_post(uTF8String) == 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [infoCopy pid];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = "No";
    *buf = 136315906;
    *&buf[4] = "[ADNotifyAndPushContextCollector _getContextForAppInfo:completion:]";
    if (v11)
    {
      v14 = "Getting";
    }

    v19 = 2080;
    v20 = v14;
    v21 = 2080;
    v22 = uTF8String;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %s push context for %s %d", buf, 0x26u);
  }

  if (completionCopy)
  {
    if (v11)
    {
      [(ADNotifyAndPushContextCollector *)self _addCompletion:completionCopy forPID:v12];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)_setContext:(id)context forPID:(int)d
{
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100301784;
  block[3] = &unk_10051B618;
  block[4] = self;
  v10 = contextCopy;
  dCopy = d;
  v8 = contextCopy;
  dispatch_async(queue, block);
}

- (void)getContextForAppInfos:(id)infos completion:(id)completion
{
  infosCopy = infos;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100301860;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = infosCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infosCopy;
  dispatch_async(queue, block);
}

- (ADNotifyAndPushContextCollector)init
{
  v9.receiver = self;
  v9.super_class = ADNotifyAndPushContextCollector;
  v2 = [(ADNotifyAndPushContextCollector *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create(0, v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    completionsByPID = v2->_completionsByPID;
    v2->_completionsByPID = v6;
  }

  return v2;
}

@end