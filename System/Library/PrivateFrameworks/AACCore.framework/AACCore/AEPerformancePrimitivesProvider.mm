@interface AEPerformancePrimitivesProvider
- (AEPerformancePrimitivesProvider)init;
- (id)makePrimitives;
@end

@implementation AEPerformancePrimitivesProvider

- (AEPerformancePrimitivesProvider)init
{
  v6.receiver = self;
  v6.super_class = AEPerformancePrimitivesProvider;
  v2 = [(AEPerformancePrimitivesProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    OSGestalt = v2->_OSGestalt;
    v2->_OSGestalt = v3;
  }

  return v2;
}

- (id)makePrimitives
{
  if (self)
  {
    self = self->_OSGestalt;
  }

  if ([(AEPerformancePrimitivesProvider *)self isInternalOS])
  {
    v2 = [AEConcretePerformancePrimitives alloc];
    v3 = [(AEConcretePerformancePrimitives *)v2 initWithSubsystem:?];
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

@end