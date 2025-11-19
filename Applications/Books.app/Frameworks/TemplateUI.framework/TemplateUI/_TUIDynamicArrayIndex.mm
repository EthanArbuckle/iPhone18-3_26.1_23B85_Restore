@interface _TUIDynamicArrayIndex
- (_TUIDynamicArrayIndex)initWithArray:(id)a3 index:(int64_t)a4;
- (id)newInstanceWithObserver:(id)a3;
@end

@implementation _TUIDynamicArrayIndex

- (_TUIDynamicArrayIndex)initWithArray:(id)a3 index:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _TUIDynamicArrayIndex;
  v7 = [(TUIDynamicValue *)&v12 initWithValue:0];
  v8 = v7;
  if (v7)
  {
    v7->_index = a4;
    v9 = [v6 tui_subarrayWithStart:a4 end:a4];
    subarray = v8->_subarray;
    v8->_subarray = v9;
  }

  return v8;
}

- (id)newInstanceWithObserver:(id)a3
{
  v4 = a3;
  v5 = [[_TUIDynamicArrayIndexInstance alloc] initWithDynamicValue:self observer:v4];

  return v5;
}

@end