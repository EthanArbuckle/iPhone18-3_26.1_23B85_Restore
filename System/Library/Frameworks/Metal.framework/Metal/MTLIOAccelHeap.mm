@interface MTLIOAccelHeap
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newSubResourceAtOffset:(unint64_t)offset withLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options;
- (id)newSubResourceWithLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options offset:(unint64_t *)offset;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)usedSize;
- (void)dealloc;
- (void)deallocHeapSubResource;
- (void)unpinMemoryAtOffset:(unint64_t)offset withLength:(unint64_t)length;
@end

@implementation MTLIOAccelHeap

- (unint64_t)usedSize
{
  if ([(_MTLHeap *)self type])
  {
    return 0;
  }

  pthread_mutex_lock(&self->_mutex);
  size = self->_size;
  v3 = size - MTLRangeAllocatorGetFreeSize(&self->_allocator);
  pthread_mutex_unlock(&self->_mutex);
  return v3;
}

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment
{
  alignmentCopy = alignment;
  if ([(_MTLHeap *)self type])
  {
    return 0;
  }

  pthread_mutex_lock(&self->_mutex);
  MaxFreeSize = MTLRangeAllocatorGetMaxFreeSize(&self->_allocator, alignmentCopy);
  pthread_mutex_unlock(&self->_mutex);
  return MaxFreeSize;
}

- (void)dealloc
{
  if (![(_MTLHeap *)self type])
  {
    MTLRangeAllocatorDestroy(&self->_allocator.elements);
  }

  self->_device = 0;
  v3.receiver = self;
  v3.super_class = MTLIOAccelHeap;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (id)newSubResourceWithLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options offset:(unint64_t *)offset
{
  if (self->_size < length)
  {
    return 0;
  }

  optionsCopy = options;
  v12 = *&self->_resource->_anon_50[96];
  v13 = v12 & 0xF;
  if ((options & 0xF) != v13)
  {
    v17 = MTLCPUCacheModeString(options & 0xF);
    MTLCPUCacheModeString(v13);
    MTLReportFailure(0, "[MTLIOAccelHeap newSubResourceWithLength:alignment:options:offset:]", 175, @"The requested CPU cache mode (%@) does not match the heap's mode (%@)", v18, v19, v20, v21, v17);
    v12 = *&self->_resource->_anon_50[96];
  }

  v14 = optionsCopy >> 4;
  if (v14 != 3)
  {
    v15 = v12 >> 4;
    if (v14 != v15)
    {
      [MTLIOAccelHeap newSubResourceWithLength:v14 alignment:v15 options:? offset:?];
    }
  }

  pthread_mutex_lock(&self->_mutex);
  if (MTLRangeAllocatorAllocate(&self->_allocator, length, offset, alignment))
  {
    v6 = self->_resource;
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock(&self->_mutex);
  return v6;
}

- (void)unpinMemoryAtOffset:(unint64_t)offset withLength:(unint64_t)length
{
  pthread_mutex_lock(&self->_mutex);
  MTLRangeAllocatorDeallocate(&self->_allocator.elements, offset, length);

  pthread_mutex_unlock(&self->_mutex);
}

- (void)deallocHeapSubResource
{
  pthread_mutex_lock(&self->_mutex);

  pthread_mutex_unlock(&self->_mutex);
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  pthread_mutex_lock(&self->_mutex);
  v5 = [(MTLIOAccelResource *)self->_resource setPurgeableState:state];
  pthread_mutex_unlock(&self->_mutex);
  return v5;
}

- (id)newSubResourceAtOffset:(unint64_t)offset withLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options
{
  optionsCopy = options;
  v11 = *&self->_resource->_anon_50[96];
  v12 = v11 & 0xF;
  if ((options & 0xF) != v12)
  {
    v17 = MTLCPUCacheModeString(options & 0xF);
    MTLCPUCacheModeString(v12);
    MTLReportFailure(0, "[MTLIOAccelHeap newSubResourceAtOffset:withLength:alignment:options:]", 255, @"The requested CPU cache mode (%@) does not match the heap's mode (%@)", v18, v19, v20, v21, v17);
    v11 = *&self->_resource->_anon_50[96];
  }

  v13 = optionsCopy >> 4;
  v14 = v11 >> 4;
  if (v13 != v14)
  {
    [MTLIOAccelHeap newSubResourceAtOffset:v13 withLength:v14 alignment:? options:?];
  }

  if (__CFADD__(offset, length) || offset + length > self->_size || ((alignment | offset) & (alignment - 1)) != 0)
  {
    return 0;
  }

  resource = self->_resource;

  return resource;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    storageMode = [(_MTLHeap *)self storageMode];
    if (storageMode != 2)
    {
      [(MTLIOAccelHeap *)storageMode newAccelerationStructureWithSize:v7, v8, v9, v10, v11, v12, v13, v18];
    }

    v14 = [(MTLIOAccelHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions]];
    if (v14)
    {
      v15 = v14;
      v16 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v14 offset:0];

      return v16;
    }
  }

  else
  {
    [(MTLIOAccelHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  storageMode = [(_MTLHeap *)self storageMode];
  if (storageMode != 2)
  {
    [(MTLIOAccelHeap *)storageMode newAccelerationStructureWithDescriptor:v6, v7, v8, v9, v10, v11, v12, v15];
  }

  v13 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:descriptor];

  return [(MTLIOAccelHeap *)self newAccelerationStructureWithSize:v13];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    storageMode = [(_MTLHeap *)self storageMode];
    if (storageMode != 2)
    {
      [(MTLIOAccelHeap *)storageMode newAccelerationStructureWithSize:v9 offset:v10, v11, v12, v13, v14, v15, v20];
    }

    v16 = [(_MTLHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions] offset:offset];
    if (v16)
    {
      v17 = v16;
      v18 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v16 offset:0];

      return v18;
    }
  }

  else
  {
    [(MTLIOAccelHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  storageMode = [(_MTLHeap *)self storageMode];
  if (storageMode != 2)
  {
    [(MTLIOAccelHeap *)storageMode newAccelerationStructureWithDescriptor:v8 offset:v9, v10, v11, v12, v13, v14, v17];
  }

  v15 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:descriptor];

  return [(MTLIOAccelHeap *)self newAccelerationStructureWithSize:v15 offset:offset];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    storageMode = [(_MTLHeap *)self storageMode];
    if (storageMode != 2)
    {
      [(MTLIOAccelHeap *)storageMode newAccelerationStructureWithSize:v9 resourceIndex:v10, v11, v12, v13, v14, v15, v20];
    }

    v16 = [(MTLIOAccelHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions]];
    if (v16)
    {
      v17 = v16;
      v18 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v16 offset:0 resourceIndex:index];

      return v18;
    }
  }

  else
  {
    [(MTLIOAccelHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    storageMode = [(_MTLHeap *)self storageMode];
    if (storageMode != 2)
    {
      [(MTLIOAccelHeap *)storageMode newAccelerationStructureWithSize:v11 offset:v12 resourceIndex:v13, v14, v15, v16, v17, v22];
    }

    v18 = [(_MTLHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions] offset:offset];
    if (v18)
    {
      v19 = v18;
      v20 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v18 offset:0 resourceIndex:index];

      return v20;
    }
  }

  else
  {
    [(MTLIOAccelHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (void)newSubResourceWithLength:(unint64_t)a1 alignment:(unint64_t)a2 options:offset:.cold.1(unint64_t a1, unint64_t a2)
{
  v3 = MTLStorageModeString(a1);
  MTLStorageModeString(a2);
  MTLReportFailure(0, "[MTLIOAccelHeap newSubResourceWithLength:alignment:options:offset:]", 184, @"The requested storage mode (%@) is not compatible with the heap's mode (%@)", v4, v5, v6, v7, v3);
}

- (void)newSubResourceAtOffset:(unint64_t)a1 withLength:(unint64_t)a2 alignment:options:.cold.1(unint64_t a1, unint64_t a2)
{
  v3 = MTLStorageModeString(a1);
  MTLStorageModeString(a2);
  MTLReportFailure(0, "[MTLIOAccelHeap newSubResourceAtOffset:withLength:alignment:options:]", 260, @"The requested storage mode (%@) is not compatible with the heap's mode (%@)", v4, v5, v6, v7, v3);
}

@end