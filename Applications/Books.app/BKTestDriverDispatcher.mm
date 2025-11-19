@interface BKTestDriverDispatcher
+ (void)prewarm;
- (BKTestDriverDispatcher)init;
- (id)getReceivers:(id)a3;
- (void)addReceiver:(id)a3 type:(id)a4;
- (void)async:(id)a3;
- (void)dealloc;
- (void)notifyBookController:(id)a3;
- (void)notifyLibraryController:(id)a3;
- (void)notifyTHBookControllerChange:(id)a3;
- (void)onEventType:(id)a3 update:(id)a4 receive:(id)a5;
- (void)sync:(id)a3;
- (void)unsubscribe:(id)a3;
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

- (id)getReceivers:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_types objectForKey:v4];
  if (!v5)
  {
    v5 = +[NSMutableSet set];
    [(NSMutableDictionary *)self->_types setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)addReceiver:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKTestDriverDispatcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C848;
  block[3] = &unk_100A03A30;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)unsubscribe:(id)a3
{
  v4 = a3;
  v5 = [(BKTestDriverDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005C96C;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)async:(id)a3
{
  v4 = a3;
  v5 = [(BKTestDriverDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CB2C;
  v7[3] = &unk_100A03A58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)sync:(id)a3
{
  v4 = a3;
  v5 = [(BKTestDriverDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CBF4;
  v7[3] = &unk_100A03A58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)onEventType:(id)a3 update:(id)a4 receive:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005CCEC;
  v15[3] = &unk_100A03A80;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)notifyTHBookControllerChange:(id)a3
{
  v4 = [a3 object];
  [(BKTestDriverDispatcher *)self notifyBookController:v4];
}

- (void)notifyBookController:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005CF34;
  v5[3] = &unk_100A03440;
  v6 = self;
  v7 = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005CF40;
  v4[3] = &unk_100A03AA8;
  v4[4] = v6;
  v3 = v7;
  [(BKTestDriverDispatcher *)v6 onEventType:@"BookController" update:v5 receive:v4];
}

- (void)notifyLibraryController:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005D080;
  v5[3] = &unk_100A03440;
  v6 = self;
  v7 = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D08C;
  v4[3] = &unk_100A03AA8;
  v4[4] = v6;
  v3 = v7;
  [(BKTestDriverDispatcher *)v6 onEventType:@"LibraryController" update:v5 receive:v4];
}

@end