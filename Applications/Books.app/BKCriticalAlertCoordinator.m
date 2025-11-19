@interface BKCriticalAlertCoordinator
- (BKCriticalAlertCoordinator)init;
- (BOOL)criticalAlertCoordinatorIsPresentingCriticalAlert;
- (id)criticalAlertCoordinatorHoldPresentingCriticalAlertAssertion;
- (void)invokeAfterCriticalAlertDismisses:(id)a3;
@end

@implementation BKCriticalAlertCoordinator

- (BKCriticalAlertCoordinator)init
{
  v8.receiver = self;
  v8.super_class = BKCriticalAlertCoordinator;
  v2 = [(BKCriticalAlertCoordinator *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iBooks.BKCriticalAlertCoordinator", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v5;
  }

  return v2;
}

- (id)criticalAlertCoordinatorHoldPresentingCriticalAlertAssertion
{
  v3 = [(BKCriticalAlertCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3E3C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [BKCriticalAlertAssertion alloc];
  v5 = [(BKCriticalAlertCoordinator *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B3E98;
  v8[3] = &unk_100A033C8;
  v8[4] = self;
  v6 = [(BKCriticalAlertAssertion *)v4 initWithQueue:v5 assertionIsInvalidBlock:v8];

  return v6;
}

- (void)invokeAfterCriticalAlertDismisses:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(BKCriticalAlertCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B4084;
  block[3] = &unk_100A036C0;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(v5, block);

  if (*(v13 + 24) == 1)
  {
    v6 = objc_retainBlock(v4);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }

  else
  {
    v8 = [(BKCriticalAlertCoordinator *)self group];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001B40A0;
    v9[3] = &unk_100A03920;
    v10 = v4;
    dispatch_group_notify(v8, &_dispatch_main_q, v9);

    v7 = v10;
  }

  _Block_object_dispose(&v12, 8);
}

- (BOOL)criticalAlertCoordinatorIsPresentingCriticalAlert
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(BKCriticalAlertCoordinator *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B41C4;
  v5[3] = &unk_100A036C0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

@end