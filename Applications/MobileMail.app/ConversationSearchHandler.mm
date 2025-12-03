@interface ConversationSearchHandler
- (ConversationSearchHandler)init;
- (void)aggregationContextDidFinish:(id)finish withLoadingController:(id)controller successfully:(BOOL)successfully;
- (void)dealloc;
@end

@implementation ConversationSearchHandler

- (ConversationSearchHandler)init
{
  v20.receiver = self;
  v20.super_class = ConversationSearchHandler;
  v2 = [(ConversationSearchHandler *)&v20 init];
  if (v2)
  {
    v3 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mail.conversationsearchHandlerQueue" qualityOfService:33];
    v4 = *(v2 + 13);
    *(v2 + 13) = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("com.apple.mail.conversationsearchManagementQueue", v6);
    v8 = *(v2 + 12);
    *(v2 + 12) = v7;

    v9 = dispatch_semaphore_create(0);
    v10 = *(v2 + 18);
    *(v2 + 18) = v9;

    v11 = 3;
    do
    {
      dispatch_semaphore_signal(*(v2 + 18));
      --v11;
    }

    while (v11);
    v12 = objc_opt_new();
    v13 = *(v2 + 19);
    *(v2 + 19) = v12;

    v14 = objc_opt_new();
    v15 = *(v2 + 15);
    *(v2 + 15) = v14;

    *(v2 + 7) = 0;
    v16 = objc_opt_new();
    v17 = *(v2 + 20);
    *(v2 + 20) = v16;

    v18 = sub_100053E68();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Created handler: %p", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(EFCancelable *)self->_cancelable cancel];
  v3.receiver = self;
  v3.super_class = ConversationSearchHandler;
  [(ConversationSearchHandler *)&v3 dealloc];
}

- (void)aggregationContextDidFinish:(id)finish withLoadingController:(id)controller successfully:(BOOL)successfully
{
  finishCopy = finish;
  controllerCopy = controller;
  if (self)
  {
    managementQueue = self->_managementQueue;
  }

  else
  {
    managementQueue = 0;
  }

  sub_100007868();
  v14 = 3221225472;
  v15 = sub_1004838E0;
  v16 = &unk_10064C6B0;
  selfCopy = self;
  v18 = finishCopy;
  v19 = v10;
  v11 = v10;
  v12 = finishCopy;
  dispatch_sync(managementQueue, block);
}

@end