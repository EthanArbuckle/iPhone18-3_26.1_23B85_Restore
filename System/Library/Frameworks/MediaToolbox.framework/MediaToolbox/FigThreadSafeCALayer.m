@interface FigThreadSafeCALayer
- (FigThreadSafeCALayer)initWithDeferredTransaction:(OpaqueFigDeferredTransaction *)a3;
- (FigThreadSafeCALayer)initWithoutDeferredTransaction;
@end

@implementation FigThreadSafeCALayer

- (FigThreadSafeCALayer)initWithDeferredTransaction:(OpaqueFigDeferredTransaction *)a3
{
  v4.receiver = self;
  v4.super_class = FigThreadSafeCALayer;
  return [(FigBaseCALayer *)&v4 initWithDeferredTransaction:a3];
}

- (FigThreadSafeCALayer)initWithoutDeferredTransaction
{
  v3.receiver = self;
  v3.super_class = FigThreadSafeCALayer;
  return [(FigBaseCALayer *)&v3 init];
}

@end