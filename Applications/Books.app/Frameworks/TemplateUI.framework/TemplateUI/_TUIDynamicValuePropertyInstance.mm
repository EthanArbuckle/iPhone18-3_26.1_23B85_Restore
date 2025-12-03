@interface _TUIDynamicValuePropertyInstance
- (_TUIDynamicValuePropertyInstance)initWithDynamicValue:(id)value observer:(id)observer;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
- (void)valueWithBlock:(id)block;
@end

@implementation _TUIDynamicValuePropertyInstance

- (_TUIDynamicValuePropertyInstance)initWithDynamicValue:(id)value observer:(id)observer
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = _TUIDynamicValuePropertyInstance;
  v7 = [(_TUIDynamicValueInstance *)&v12 initWithDynamicValue:valueCopy value:0 observer:observer];
  if (v7)
  {
    upstreamValue = [valueCopy upstreamValue];
    v9 = [upstreamValue instanceForObserver:v7];
    instance = v7->_instance;
    v7->_instance = v9;
  }

  return v7;
}

- (void)valueWithBlock:(id)block
{
  blockCopy = block;
  instance = self->_instance;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_13F8CC;
  v7[3] = &unk_2627F8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_TUIDynamicValueInstance *)instance valueWithBlock:v7];
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  transactionCopy = transaction;
  observer = [(_TUIDynamicValueInstance *)self observer];
  [observer dynamicChanged:self transaction:transactionCopy];
}

@end