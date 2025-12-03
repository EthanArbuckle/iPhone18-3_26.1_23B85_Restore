@interface FigThreadSafeCALayer
- (FigThreadSafeCALayer)initWithDeferredTransaction:(OpaqueFigDeferredTransaction *)transaction;
- (FigThreadSafeCALayer)initWithoutDeferredTransaction;
@end

@implementation FigThreadSafeCALayer

- (FigThreadSafeCALayer)initWithDeferredTransaction:(OpaqueFigDeferredTransaction *)transaction
{
  v4.receiver = self;
  v4.super_class = FigThreadSafeCALayer;
  return [(FigBaseCALayer *)&v4 initWithDeferredTransaction:transaction];
}

- (FigThreadSafeCALayer)initWithoutDeferredTransaction
{
  v3.receiver = self;
  v3.super_class = FigThreadSafeCALayer;
  return [(FigBaseCALayer *)&v3 init];
}

@end