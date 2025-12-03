@interface _TUIDynamicArrayIndexInstance
- (_TUIDynamicArrayIndexInstance)initWithDynamicValue:(id)value observer:(id)observer;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
- (void)valueWithBlock:(id)block;
@end

@implementation _TUIDynamicArrayIndexInstance

- (_TUIDynamicArrayIndexInstance)initWithDynamicValue:(id)value observer:(id)observer
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = _TUIDynamicArrayIndexInstance;
  v7 = [(_TUIDynamicValueInstance *)&v12 initWithDynamicValue:valueCopy value:0 observer:observer];
  if (v7)
  {
    subarray = [valueCopy subarray];
    v9 = [subarray instanceForObserver:v7];
    instance = v7->_instance;
    v7->_instance = v9;
  }

  return v7;
}

- (void)valueWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if ([(_TUIDynamicArrayInstance *)self->_instance count])
    {
      instance = self->_instance;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_C6EAC;
      v6[3] = &unk_261398;
      v7 = blockCopy;
      [(_TUIDynamicArrayInstance *)instance objectsInRange:0 block:1, v6];
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  transactionCopy = transaction;
  observer = [(_TUIDynamicValueInstance *)self observer];
  [observer dynamicChanged:self transaction:transactionCopy];
}

@end