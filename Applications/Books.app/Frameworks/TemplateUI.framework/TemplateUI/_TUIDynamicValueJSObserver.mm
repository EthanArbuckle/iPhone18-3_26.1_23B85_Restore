@interface _TUIDynamicValueJSObserver
- (_TUIDynamicValueJSObserver)initWithCoordinator:(id)coordinator block:(id)block value:(id)value;
- (id)value;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
@end

@implementation _TUIDynamicValueJSObserver

- (_TUIDynamicValueJSObserver)initWithCoordinator:(id)coordinator block:(id)block value:(id)value
{
  coordinatorCopy = coordinator;
  blockCopy = block;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = _TUIDynamicValueJSObserver;
  v12 = [(_TUIDynamicValueJSObserver *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_coordinator, coordinator);
    v14 = [JSManagedValue managedValueWithValue:blockCopy];
    managedValue = v13->_managedValue;
    v13->_managedValue = v14;

    v16 = [valueCopy instanceForObserver:v13];
    instance = v13->_instance;
    v13->_instance = v16;
  }

  return v13;
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  coordinator = self->_coordinator;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_188438;
  v5[3] = &unk_25EB80;
  v5[4] = self;
  [(TUITransactionCoordinating *)coordinator scheduleLayoutUpdateWithTransaction:transaction block:v5];
}

- (id)value
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1886B0;
  v10 = sub_1886C0;
  v11 = 0;
  instance = self->_instance;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1886C8;
  v5[3] = &unk_25F710;
  v5[4] = &v6;
  [(TUIDynamicValueInstance *)instance valueWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end