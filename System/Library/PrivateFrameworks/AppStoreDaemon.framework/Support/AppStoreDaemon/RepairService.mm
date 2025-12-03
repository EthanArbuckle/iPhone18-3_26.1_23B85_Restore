@interface RepairService
- (RepairService)init;
- (void)refreshKeybagWithReplyHandler:(id)handler;
- (void)repairAppWithOptions:(id)options replyHandler:(id)handler;
@end

@implementation RepairService

- (RepairService)init
{
  v7.receiver = self;
  v7.super_class = RepairService;
  v2 = [(RepairService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.RepairService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

- (void)repairAppWithOptions:(id)options replyHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003D388C;
  block[3] = &unk_10051C078;
  v15 = optionsCopy;
  v16 = v8;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  v12 = optionsCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(dispatchQueue, v13);
}

- (void)refreshKeybagWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003D3ACC;
  v10[3] = &unk_10051B2D0;
  v11 = v5;
  v12 = handlerCopy;
  v7 = handlerCopy;
  v8 = v5;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v10);
  dispatch_async(dispatchQueue, v9);
}

@end