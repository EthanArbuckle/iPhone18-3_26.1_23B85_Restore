@interface _TUIDynamicArrayIndex
- (_TUIDynamicArrayIndex)initWithArray:(id)array index:(int64_t)index;
- (id)newInstanceWithObserver:(id)observer;
@end

@implementation _TUIDynamicArrayIndex

- (_TUIDynamicArrayIndex)initWithArray:(id)array index:(int64_t)index
{
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = _TUIDynamicArrayIndex;
  v7 = [(TUIDynamicValue *)&v12 initWithValue:0];
  v8 = v7;
  if (v7)
  {
    v7->_index = index;
    v9 = [arrayCopy tui_subarrayWithStart:index end:index];
    subarray = v8->_subarray;
    v8->_subarray = v9;
  }

  return v8;
}

- (id)newInstanceWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = [[_TUIDynamicArrayIndexInstance alloc] initWithDynamicValue:self observer:observerCopy];

  return v5;
}

@end