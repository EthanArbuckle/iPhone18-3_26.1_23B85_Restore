@interface _TUIDynamicArrayEmpty
- (_TUIDynamicArrayEmpty)initWithArray:(id)array;
- (id)newInstanceWithObserver:(id)observer;
@end

@implementation _TUIDynamicArrayEmpty

- (_TUIDynamicArrayEmpty)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = _TUIDynamicArrayEmpty;
  v6 = [(TUIDynamicValue *)&v9 initWithValue:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_array, array);
  }

  return v7;
}

- (id)newInstanceWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = [[_TUIDynamicArrayEmptyInstance alloc] initWithDynamicValue:self observer:observerCopy];

  return v5;
}

@end