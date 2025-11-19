@interface _TUIDynamicArrayJSObserver
- (_TUIDynamicArrayJSObserver)initWithCoordinator:(id)a3 block:(id)a4 array:(id)a5;
- (id)objectAtIndex:(int64_t)a3;
- (id)objectsInRange:(int64_t)a3 :(int64_t)a4;
- (void)dynamicChanged:(id)a3 transaction:(id)a4;
@end

@implementation _TUIDynamicArrayJSObserver

- (_TUIDynamicArrayJSObserver)initWithCoordinator:(id)a3 block:(id)a4 array:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _TUIDynamicArrayJSObserver;
  v12 = [(_TUIDynamicArrayJSObserver *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_coordinator, a3);
    v14 = [JSManagedValue managedValueWithValue:v10];
    managedValue = v13->_managedValue;
    v13->_managedValue = v14;

    v16 = [v11 instanceForObserver:v13];
    instance = v13->_instance;
    v13->_instance = v16;
  }

  return v13;
}

- (void)dynamicChanged:(id)a3 transaction:(id)a4
{
  coordinator = self->_coordinator;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_36E68;
  v5[3] = &unk_25EB80;
  v5[4] = self;
  [(TUITransactionCoordinating *)coordinator scheduleLayoutUpdateWithTransaction:a4 block:v5];
}

- (id)objectAtIndex:(int64_t)a3
{
  v5 = [(TUIDynamicArrayInstance *)self->_instance count];
  v6 = 0;
  if (a3 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = a3;
  }

  if (a3 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = &v5[a3];
  }

  if ((v8 & 0x8000000000000000) == 0 && v8 < v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_3712C;
    v14 = sub_3713C;
    v15 = 0;
    [TUIDynamicArrayInstance objectsInRange:"objectsInRange:block:" block:?];
    v6 = [v11[5] firstObject];
    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

- (id)objectsInRange:(int64_t)a3 :(int64_t)a4
{
  v7 = [(TUIDynamicArrayInstance *)self->_instance count];
  if (a3 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (a3 < 0)
  {
    v8 = v7 + a3;
  }

  if (a4 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a4;
  }

  if (a4 < 0)
  {
    v9 = v7 + a4;
  }

  if (v9 >= 0)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_3712C;
  v17 = sub_3713C;
  v18 = &__NSArray0__struct;
  if (v10 > (v8 & ~(v8 >> 63)))
  {
    [TUIDynamicArrayInstance objectsInRange:"objectsInRange:block:" block:?];
  }

  v11 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v11;
}

@end