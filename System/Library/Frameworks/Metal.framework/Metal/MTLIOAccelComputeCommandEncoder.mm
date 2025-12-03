@interface MTLIOAccelComputeCommandEncoder
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation MTLIOAccelComputeCommandEncoder

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  if ([(_MTLCommandEncoder *)self dispatchType]== 1)
  {
    [(MTLIOAccelComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  [(_MTLCommandEncoder *)self memoryBarrierNotificationWithScope:scope];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    v7 = 0;
    do
    {
      v8 = *resources++;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v7 |= v9;
      --countCopy;
    }

    while (countCopy);
  }

  else
  {
    v7 = 0;
  }

  [(MTLIOAccelComputeCommandEncoder *)self memoryBarrierWithScope:v7];
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(MTLIOAccelComputeCommandEncoder *)self setVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(MTLIOAccelComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *tables++;
        *v9++ = [v11 visibleFunctionTable];
        --v10;
      }

      while (v10);
    }

    [(MTLIOAccelComputeCommandEncoder *)self setVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(MTLIOAccelComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end