@interface RestoreService
- (RestoreService)init;
- (void)clearFollowupsForAccountID:(id)d replyHandler:(id)handler;
- (void)estimateTotalDownloadSizeWithReplyHandler:(id)handler;
- (void)prioritizeBundleIDs:(id)ds userInitiated:(BOOL)initiated replyHandler:(id)handler;
@end

@implementation RestoreService

- (RestoreService)init
{
  v3 = sub_1003C27BC();
  v4 = v3;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = RestoreService;
    v5 = [(RestoreService *)&v14 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_database, v3);
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("com.apple.appstored.RestoreService", v6);
      queue = self->_queue;
      self->_queue = v7;

      v9 = objc_alloc_init(NSMutableArray);
      queue_parkedDownloadSizeHandlers = self->_queue_parkedDownloadSizeHandlers;
      self->_queue_parkedDownloadSizeHandlers = v9;

      self->_queue_restoreState = 0;
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(RestoreService) Restore state -> UNKNOWN", v13, 2u);
      }
    }
  }

  return self;
}

- (void)clearFollowupsForAccountID:(id)d replyHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100284348;
  v11[3] = &unk_10051B2D0;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_sync(queue, v11);
}

- (void)estimateTotalDownloadSizeWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002844C8;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

- (void)prioritizeBundleIDs:(id)ds userInitiated:(BOOL)initiated replyHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100284768;
  block[3] = &unk_10051FAA0;
  initiatedCopy = initiated;
  v14 = dsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = dsCopy;
  dispatch_sync(queue, block);
}

@end