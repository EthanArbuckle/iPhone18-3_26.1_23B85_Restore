@interface GCLocalPlayerIndicator
- (GCLocalPlayerIndicator)initWithInitialValue:(int64_t)value systemPlayerIndicatorProxy:(id)proxy;
@end

@implementation GCLocalPlayerIndicator

- (GCLocalPlayerIndicator)initWithInitialValue:(int64_t)value systemPlayerIndicatorProxy:(id)proxy
{
  proxyCopy = proxy;
  v11.receiver = self;
  v11.super_class = GCLocalPlayerIndicator;
  v8 = [(GCLocalPlayerIndicator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_systemPlayerIndicatorProxy, proxy);
    v9->_playerIndex = value;
  }

  return v9;
}

@end