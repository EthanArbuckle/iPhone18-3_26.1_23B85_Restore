@interface MTLIOAccelIntersectionFunctionTable
- (MTLIOAccelIntersectionFunctionTable)initWithVisibleFunctionTable:(id)a3;
- (unint64_t)gpuHandle;
- (void)dealloc;
@end

@implementation MTLIOAccelIntersectionFunctionTable

- (unint64_t)gpuHandle
{
  if (([(MTLDevice *)[(MTLIOAccelResource *)self device] requiresRaytracingEmulation]& 1) != 0)
  {

    return [(MTLIOAccelIntersectionFunctionTable *)self uniqueIdentifier];
  }

  else
  {

    return [(MTLIOAccelIntersectionFunctionTable *)self resourceIndex];
  }
}

- (MTLIOAccelIntersectionFunctionTable)initWithVisibleFunctionTable:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTLIOAccelIntersectionFunctionTable;
  v4 = [(MTLIOAccelResource *)&v6 initWithResource:?];
  if (v4)
  {
    v4->_visibleFunctionTable = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLIOAccelIntersectionFunctionTable;
  [(MTLIOAccelResource *)&v3 dealloc];
}

@end