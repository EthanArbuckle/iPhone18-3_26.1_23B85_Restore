@interface ParkedCarItemSource
- (ParkedCarItemSource)init;
- (id)allItems;
- (void)assignItem:(id)a3;
- (void)dealloc;
- (void)parkedCarManager:(id)a3 didAddParkedCar:(id)a4;
- (void)parkedCarManager:(id)a3 didRemoveParkedCar:(id)a4;
- (void)parkedCarManager:(id)a3 didUpdateParkedCar:(id)a4;
@end

@implementation ParkedCarItemSource

- (ParkedCarItemSource)init
{
  v12.receiver = self;
  v12.super_class = ParkedCarItemSource;
  v2 = [(ParkedCarItemSource *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ParkedCarItemSource.lock", v3);
    lockQueue = v2->_lockQueue;
    v2->_lockQueue = v4;

    v6 = +[ParkedCarManager sharedManager];
    v7 = [v6 parkedCar];

    if (v7)
    {
      v8 = [[ParkedCarPersonalizedItem alloc] initWithParkedCar:v7];
      [(ParkedCarItemSource *)v2 assignItem:v8];
    }

    v9 = +[ParkedCarManager sharedManager];
    [v9 addParkedCarObserver:v2];

    v10 = v2;
  }

  return v2;
}

- (id)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100E1D3C4;
  v10 = sub_100E1D3D4;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100040654;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)parkedCarManager:(id)a3 didUpdateParkedCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100E1D3C4;
  v21 = sub_100E1D3D4;
  v22 = 0;
  lockQueue = self->_lockQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100E1D3DC;
  v16[3] = &unk_101661600;
  v16[4] = self;
  v16[5] = &v17;
  dispatch_sync(lockQueue, v16);
  if (!v18[5] || ([v7 coordinate], v10 = v9, v12 = v11, objc_msgSend(v18[5], "coordinate"), vabdd_f64(v10, v14) >= 0.00000000999999994) || vabdd_f64(v12, v13) >= 0.00000000999999994)
  {
    v15 = [[ParkedCarPersonalizedItem alloc] initWithParkedCar:v7];
    [(ParkedCarItemSource *)self assignItem:v15];
    [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
  }

  _Block_object_dispose(&v17, 8);
}

- (void)parkedCarManager:(id)a3 didAddParkedCar:(id)a4
{
  v5 = a4;
  v6 = [[ParkedCarPersonalizedItem alloc] initWithParkedCar:v5];

  [(ParkedCarItemSource *)self assignItem:v6];
  [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
}

- (void)parkedCarManager:(id)a3 didRemoveParkedCar:(id)a4
{
  [(ParkedCarItemSource *)self assignItem:0, a4];

  [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
}

- (void)dealloc
{
  v3 = +[ParkedCarManager sharedManager];
  [v3 removeParkedCarObserver:self];

  v4.receiver = self;
  v4.super_class = ParkedCarItemSource;
  [(ParkedCarItemSource *)&v4 dealloc];
}

- (void)assignItem:(id)a3
{
  v4 = a3;
  lockQueue = self->_lockQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100E1D5B8;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lockQueue, v7);
}

@end