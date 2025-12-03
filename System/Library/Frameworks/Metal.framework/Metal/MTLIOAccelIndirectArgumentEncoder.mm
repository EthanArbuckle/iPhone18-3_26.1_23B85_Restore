@interface MTLIOAccelIndirectArgumentEncoder
- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index;
- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation MTLIOAccelIndirectArgumentEncoder

- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index
{
  privateICBuffer = [buffer privateICBuffer];

  [(MTLIOAccelIndirectArgumentEncoder *)self setBuffer:privateICBuffer offset:0 atIndex:index];
}

- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *buffers++;
      -[MTLIOAccelIndirectArgumentEncoder setBuffer:offset:atIndex:](self, "setBuffer:offset:atIndex:", [v8 privateICBuffer], 0, location++);
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(MTLIOAccelIndirectArgumentEncoder *)self setVisibleFunctionTable:visibleFunctionTable atIndex:index];
  }

  else
  {

    [(MTLIOAccelIndirectArgumentEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
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

    [(MTLIOAccelIndirectArgumentEncoder *)self setVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(MTLIOAccelIndirectArgumentEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end