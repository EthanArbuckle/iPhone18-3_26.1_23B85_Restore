@interface _TUIDynamicValueProperty
- (_TUIDynamicValueProperty)initWithValue:(id)value property:(id)property;
- (id)newInstanceWithObserver:(id)observer;
@end

@implementation _TUIDynamicValueProperty

- (_TUIDynamicValueProperty)initWithValue:(id)value property:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v12.receiver = self;
  v12.super_class = _TUIDynamicValueProperty;
  v9 = [(TUIDynamicValue *)&v12 initWithValue:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_property, property);
    objc_storeStrong(&v10->_upstreamValue, value);
  }

  return v10;
}

- (id)newInstanceWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = [[_TUIDynamicValuePropertyInstance alloc] initWithDynamicValue:self observer:observerCopy];

  return v5;
}

@end