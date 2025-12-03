@interface BKTestDriverDispatcher
+ (void)prewarm;
- (BKTestDriverDispatcher)init;
- (id)getReceivers:(id)receivers;
- (void)addReceiver:(id)receiver type:(id)type;
- (void)async:(id)async;
- (void)dealloc;
- (void)notifyBookController:(id)controller;
- (void)notifyLibraryController:(id)controller;
- (void)notifyTHBookControllerChange:(id)change;
- (void)onEventType:(id)type update:(id)update receive:(id)receive;
- (void)sync:(id)sync;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation BKTestDriverDispatcher

+ (void)prewarm
{
  if (qword_100AF7408 != -1)
  {
    sub_1007892D4();
  }
}

- (BKTestDriverDispatcher)init
{
  v11.receiver = self;
  v11.super_class = BKTestDriverDispatcher;
  v2 = [(BKTestDriverDispatcher *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iBooks.TestDriverDispatcher", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSMutableDictionary dictionary];
    types = v2->_types;
    v2->_types = v5;

    v7 = +[AETestDriver shared];
    [v7 setEventDispatcher:v2];

    v8 = +[BKTestDriver shared];
    [v8 setEventDispatcher:v2];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"notifyTHBookControllerChange:" name:kTHPPT_bookControllerChange object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKTestDriverDispatcher;
  [(BKTestDriverDispatcher *)&v4 dealloc];
}

- (id)getReceivers:(id)receivers
{
  receiversCopy = receivers;
  v5 = [(NSMutableDictionary *)self->_types objectForKey:receiversCopy];
  if (!v5)
  {
    v5 = +[NSMutableSet set];
    [(NSMutableDictionary *)self->_types setObject:v5 forKey:receiversCopy];
  }

  return v5;
}

- (void)addReceiver:(id)receiver type:(id)type
{
  receiverCopy = receiver;
  typeCopy = type;
  queue = [(BKTestDriverDispatcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C848;
  block[3] = &unk_100A03A30;
  block[4] = self;
  v12 = typeCopy;
  v13 = receiverCopy;
  v9 = receiverCopy;
  v10 = typeCopy;
  dispatch_async(queue, block);
}

- (void)unsubscribe:(id)unsubscribe
{
  unsubscribeCopy = unsubscribe;
  queue = [(BKTestDriverDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005C96C;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = unsubscribeCopy;
  v6 = unsubscribeCopy;
  dispatch_async(queue, v7);
}

- (void)async:(id)async
{
  asyncCopy = async;
  queue = [(BKTestDriverDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CB2C;
  v7[3] = &unk_100A03A58;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(queue, v7);
}

- (void)sync:(id)sync
{
  syncCopy = sync;
  queue = [(BKTestDriverDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CBF4;
  v7[3] = &unk_100A03A58;
  v7[4] = self;
  v8 = syncCopy;
  v6 = syncCopy;
  dispatch_sync(queue, v7);
}

- (void)onEventType:(id)type update:(id)update receive:(id)receive
{
  typeCopy = type;
  updateCopy = update;
  receiveCopy = receive;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005CCEC;
  v15[3] = &unk_100A03A80;
  v15[4] = self;
  v16 = typeCopy;
  v17 = updateCopy;
  v18 = receiveCopy;
  v12 = receiveCopy;
  v13 = typeCopy;
  v14 = updateCopy;
  dispatch_async(queue, v15);
}

- (void)notifyTHBookControllerChange:(id)change
{
  object = [change object];
  [(BKTestDriverDispatcher *)self notifyBookController:object];
}

- (void)notifyBookController:(id)controller
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005CF34;
  v5[3] = &unk_100A03440;
  selfCopy = self;
  controllerCopy = controller;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005CF40;
  v4[3] = &unk_100A03AA8;
  v4[4] = selfCopy;
  v3 = controllerCopy;
  [(BKTestDriverDispatcher *)selfCopy onEventType:@"BookController" update:v5 receive:v4];
}

- (void)notifyLibraryController:(id)controller
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005D080;
  v5[3] = &unk_100A03440;
  selfCopy = self;
  controllerCopy = controller;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D08C;
  v4[3] = &unk_100A03AA8;
  v4[4] = selfCopy;
  v3 = controllerCopy;
  [(BKTestDriverDispatcher *)selfCopy onEventType:@"LibraryController" update:v5 receive:v4];
}

@end