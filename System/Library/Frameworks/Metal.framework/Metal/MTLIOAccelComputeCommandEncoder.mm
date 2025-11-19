@interface MTLIOAccelComputeCommandEncoder
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4;
- (void)memoryBarrierWithScope:(unint64_t)a3;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
@end

@implementation MTLIOAccelComputeCommandEncoder

- (void)memoryBarrierWithScope:(unint64_t)a3
{
  if ([(_MTLCommandEncoder *)self dispatchType]== 1)
  {
    [(MTLIOAccelComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  [(_MTLCommandEncoder *)self memoryBarrierNotificationWithScope:a3];
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v5 = a4;
    v7 = 0;
    do
    {
      v8 = *a3++;
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
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  [(MTLIOAccelComputeCommandEncoder *)self memoryBarrierWithScope:v7];
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 visibleFunctionTable];

    [(MTLIOAccelComputeCommandEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:a4];
  }

  else
  {

    [(MTLIOAccelComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *a3++;
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