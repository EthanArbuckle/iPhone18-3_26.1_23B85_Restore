@interface BKLibraryUpdateGroup
- (BKLibraryUpdateGroup)initWithName:(id)a3;
- (id)holdOperationsAssetion;
- (void)addOperationBlock:(id)a3;
- (void)executeWithCompletion:(id)a3;
@end

@implementation BKLibraryUpdateGroup

- (BKLibraryUpdateGroup)initWithName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BKLibraryUpdateGroup;
  v5 = [(BKLibraryUpdateGroup *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ibooks.BKLibraryUpdateGroup", v6);
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = dispatch_group_create();
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    v11 = [v4 copy];
    v12 = *(v5 + 3);
    *(v5 + 3) = v11;

    dispatch_suspend(*(v5 + 1));
    dispatch_group_enter(*(v5 + 2));
  }

  return v5;
}

- (void)addOperationBlock:(id)a3
{
  if (a3)
  {
    dispatch_async(self->_updateQueue, a3);
  }
}

- (id)holdOperationsAssetion
{
  v2 = self->_updateQueue;
  dispatch_suspend(v2);
  v3 = [BKLibraryUpdateHoldAssertion alloc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7904;
  v7[3] = &unk_D5528;
  v8 = v2;
  v4 = v2;
  v5 = [(BKLibraryUpdateHoldAssertion *)v3 initWithRelease:v7];

  return v5;
}

- (void)executeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    updateQueue = self->_updateQueue;
    finishGroup = self->_finishGroup;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_79C0;
    v8[3] = &unk_D5550;
    v8[4] = self;
    v9 = v4;
    dispatch_group_notify(finishGroup, updateQueue, v8);
  }

  dispatch_resume(self->_updateQueue);
}

@end