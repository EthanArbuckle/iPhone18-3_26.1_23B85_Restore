@interface _TUIDynamicArrayCountInstance
- (BOOL)optimizeUpdatesForTransactionGroup:(id)group;
- (_TUIDynamicArrayCountInstance)initWithDynamicValue:(id)value observer:(id)observer;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
- (void)valueWithBlock:(id)block;
@end

@implementation _TUIDynamicArrayCountInstance

- (_TUIDynamicArrayCountInstance)initWithDynamicValue:(id)value observer:(id)observer
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = _TUIDynamicArrayCountInstance;
  v7 = [(_TUIDynamicValueInstance *)&v12 initWithDynamicValue:valueCopy value:0 observer:observer];
  if (v7)
  {
    array = [valueCopy array];
    v9 = [array instanceForObserver:v7];
    instance = v7->_instance;
    v7->_instance = v9;
  }

  return v7;
}

- (void)valueWithBlock:(id)block
{
  if (block)
  {
    instance = self->_instance;
    blockCopy = block;
    v6 = [NSNumber numberWithUnsignedInteger:[(_TUIDynamicArrayInstance *)instance count]];
    (*(block + 2))(blockCopy, v6);
  }
}

- (BOOL)optimizeUpdatesForTransactionGroup:(id)group
{
  selfCopy = self;
  instance = self->_instance;
  groupCopy = group;
  v6 = [(_TUIDynamicArrayInstance *)instance count];
  v7 = selfCopy->_instance;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_115814;
  v9[3] = &unk_261E40;
  v9[4] = v6;
  LOBYTE(selfCopy) = [(_TUIDynamicArrayInstance *)v7 optimizeUpdatesForTransactionGroup:groupCopy block:v9];

  return selfCopy;
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  transactionCopy = transaction;
  observer = [(_TUIDynamicValueInstance *)self observer];
  [observer dynamicChanged:self transaction:transactionCopy];
}

@end