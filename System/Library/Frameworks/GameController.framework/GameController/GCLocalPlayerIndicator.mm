@interface GCLocalPlayerIndicator
- (GCLocalPlayerIndicator)initWithInitialValue:(int64_t)a3 systemPlayerIndicatorProxy:(id)a4;
@end

@implementation GCLocalPlayerIndicator

- (GCLocalPlayerIndicator)initWithInitialValue:(int64_t)a3 systemPlayerIndicatorProxy:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GCLocalPlayerIndicator;
  v8 = [(GCLocalPlayerIndicator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_systemPlayerIndicatorProxy, a4);
    v9->_playerIndex = a3;
  }

  return v9;
}

@end