@interface _TUIDynamicArrayCount
- (_TUIDynamicArrayCount)initWithArray:(id)a3;
- (id)newInstanceWithObserver:(id)a3;
@end

@implementation _TUIDynamicArrayCount

- (_TUIDynamicArrayCount)initWithArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUIDynamicArrayCount;
  v6 = [(TUIDynamicValue *)&v9 initWithValue:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_array, a3);
  }

  return v7;
}

- (id)newInstanceWithObserver:(id)a3
{
  v4 = a3;
  v5 = [[_TUIDynamicArrayCountInstance alloc] initWithDynamicValue:self observer:v4];

  return v5;
}

@end