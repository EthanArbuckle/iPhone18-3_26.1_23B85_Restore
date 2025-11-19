@interface ADLocalMeCardStore
+ (id)sharedStore;
- (id)_init;
- (void)addMeCardObserver:(id)a3;
- (void)meCard:(id)a3;
- (void)removeMeCardObserver:(id)a3;
- (void)storeMeCard:(id)a3;
@end

@implementation ADLocalMeCardStore

- (void)removeMeCardObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002822F0;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addMeCardObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002823A0;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)meCard:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100282450;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)storeMeCard:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002825D0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = ADLocalMeCardStore;
  v2 = [(ADLocalMeCardStore *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("LocalMeCardStoreQueue", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002828C8;
    block[3] = &unk_10051DFE8;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

+ (id)sharedStore
{
  if (qword_100590790 != -1)
  {
    dispatch_once(&qword_100590790, &stru_100518650);
  }

  v3 = qword_100590788;

  return v3;
}

@end