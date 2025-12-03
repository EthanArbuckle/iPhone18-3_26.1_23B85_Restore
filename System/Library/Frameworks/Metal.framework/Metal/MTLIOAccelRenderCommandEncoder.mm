@interface MTLIOAccelRenderCommandEncoder
- (MTLIOAccelRenderCommandEncoder)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation MTLIOAccelRenderCommandEncoder

- (MTLIOAccelRenderCommandEncoder)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelRenderCommandEncoder;
  return [(MTLIOAccelCommandEncoder *)&v5 initWithCommandBuffer:buffer, descriptor];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if (count)
  {
    countCopy = count;
    v11 = 0;
    do
    {
      v12 = *resources++;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v11 |= v13;
      --countCopy;
    }

    while (countCopy);
  }

  else
  {
    v11 = 0;
  }

  [(MTLIOAccelRenderCommandEncoder *)self memoryBarrierWithScope:v11 afterStages:stages beforeStages:beforeStages];
}

- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(MTLIOAccelRenderCommandEncoder *)self setVertexVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
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

    [(MTLIOAccelRenderCommandEncoder *)self setVertexVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(MTLIOAccelRenderCommandEncoder *)self setFragmentVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
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

    [(MTLIOAccelRenderCommandEncoder *)self setFragmentVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(MTLIOAccelRenderCommandEncoder *)self setTileVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
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

    [(MTLIOAccelRenderCommandEncoder *)self setTileVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(_MTLCommandEncoder *)self setObjectVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
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

    [(_MTLCommandEncoder *)self setObjectVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(_MTLCommandEncoder *)self setMeshVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
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

    [(_MTLCommandEncoder *)self setMeshVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(MTLIOAccelRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end