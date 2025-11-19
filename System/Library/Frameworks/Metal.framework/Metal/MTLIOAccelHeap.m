@interface MTLIOAccelHeap
- (id)newAccelerationStructureWithDescriptor:(id)a3;
- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newSubResourceAtOffset:(unint64_t)a3 withLength:(unint64_t)a4 alignment:(unint64_t)a5 options:(unint64_t)a6;
- (id)newSubResourceWithLength:(unint64_t)a3 alignment:(unint64_t)a4 options:(unint64_t)a5 offset:(unint64_t *)a6;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)usedSize;
- (void)dealloc;
- (void)deallocHeapSubResource;
- (void)unpinMemoryAtOffset:(unint64_t)a3 withLength:(unint64_t)a4;
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

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3
{
  v3 = a3;
  if ([(_MTLHeap *)self type])
  {
    return 0;
  }

  pthread_mutex_lock(&self->_mutex);
  MaxFreeSize = MTLRangeAllocatorGetMaxFreeSize(&self->_allocator, v3);
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

- (id)newSubResourceWithLength:(unint64_t)a3 alignment:(unint64_t)a4 options:(unint64_t)a5 offset:(unint64_t *)a6
{
  if (self->_size < a3)
  {
    return 0;
  }

  v8 = a5;
  v12 = *&self->_resource->_anon_50[96];
  v13 = v12 & 0xF;
  if ((a5 & 0xF) != v13)
  {
    v17 = MTLCPUCacheModeString(a5 & 0xF);
    MTLCPUCacheModeString(v13);
    MTLReportFailure(0, "[MTLIOAccelHeap newSubResourceWithLength:alignment:options:offset:]", 175, @"The requested CPU cache mode (%@) does not match the heap's mode (%@)", v18, v19, v20, v21, v17);
    v12 = *&self->_resource->_anon_50[96];
  }

  v14 = v8 >> 4;
  if (v14 != 3)
  {
    v15 = v12 >> 4;
    if (v14 != v15)
    {
      [MTLIOAccelHeap newSubResourceWithLength:v14 alignment:v15 options:? offset:?];
    }
  }

  pthread_mutex_lock(&self->_mutex);
  if (MTLRangeAllocatorAllocate(&self->_allocator, a3, a6, a4))
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

- (void)unpinMemoryAtOffset:(unint64_t)a3 withLength:(unint64_t)a4
{
  pthread_mutex_lock(&self->_mutex);
  MTLRangeAllocatorDeallocate(&self->_allocator.elements, a3, a4);

  pthread_mutex_unlock(&self->_mutex);
}

- (void)deallocHeapSubResource
{
  pthread_mutex_lock(&self->_mutex);

  pthread_mutex_unlock(&self->_mutex);
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  pthread_mutex_lock(&self->_mutex);
  v5 = [(MTLIOAccelResource *)self->_resource setPurgeableState:a3];
  pthread_mutex_unlock(&self->_mutex);
  return v5;
}

- (id)newSubResourceAtOffset:(unint64_t)a3 withLength:(unint64_t)a4 alignment:(unint64_t)a5 options:(unint64_t)a6
{
  v6 = a6;
  v11 = *&self->_resource->_anon_50[96];
  v12 = v11 & 0xF;
  if ((a6 & 0xF) != v12)
  {
    v17 = MTLCPUCacheModeString(a6 & 0xF);
    MTLCPUCacheModeString(v12);
    MTLReportFailure(0, "[MTLIOAccelHeap newSubResourceAtOffset:withLength:alignment:options:]", 255, @"The requested CPU cache mode (%@) does not match the heap's mode (%@)", v18, v19, v20, v21, v17);
    v11 = *&self->_resource->_anon_50[96];
  }

  v13 = v6 >> 4;
  v14 = v11 >> 4;
  if (v13 != v14)
  {
    [MTLIOAccelHeap newSubResourceAtOffset:v13 withLength:v14 alignment:? options:?];
  }

  if (__CFADD__(a3, a4) || a3 + a4 > self->_size || ((a5 | a3) & (a5 - 1)) != 0)
  {
    return 0;
  }

  resource = self->_resource;

  return resource;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    v6 = [(_MTLHeap *)self storageMode];
    if (v6 != 2)
    {
      [(MTLIOAccelHeap *)v6 newAccelerationStructureWithSize:v7, v8, v9, v10, v11, v12, v13, v18];
    }

    v14 = [(MTLIOAccelHeap *)self newBufferWithLength:a3 options:[(_MTLHeap *)self resourceOptions]];
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

- (id)newAccelerationStructureWithDescriptor:(id)a3
{
  v5 = [(_MTLHeap *)self storageMode];
  if (v5 != 2)
  {
    [(MTLIOAccelHeap *)v5 newAccelerationStructureWithDescriptor:v6, v7, v8, v9, v10, v11, v12, v15];
  }

  v13 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:a3];

  return [(MTLIOAccelHeap *)self newAccelerationStructureWithSize:v13];
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [(_MTLHeap *)self storageMode];
    if (v8 != 2)
    {
      [(MTLIOAccelHeap *)v8 newAccelerationStructureWithSize:v9 offset:v10, v11, v12, v13, v14, v15, v20];
    }

    v16 = [(_MTLHeap *)self newBufferWithLength:a3 options:[(_MTLHeap *)self resourceOptions] offset:a4];
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

- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  v7 = [(_MTLHeap *)self storageMode];
  if (v7 != 2)
  {
    [(MTLIOAccelHeap *)v7 newAccelerationStructureWithDescriptor:v8 offset:v9, v10, v11, v12, v13, v14, v17];
  }

  v15 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:a3];

  return [(MTLIOAccelHeap *)self newAccelerationStructureWithSize:v15 offset:a4];
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [(_MTLHeap *)self storageMode];
    if (v8 != 2)
    {
      [(MTLIOAccelHeap *)v8 newAccelerationStructureWithSize:v9 resourceIndex:v10, v11, v12, v13, v14, v15, v20];
    }

    v16 = [(MTLIOAccelHeap *)self newBufferWithLength:a3 options:[(_MTLHeap *)self resourceOptions]];
    if (v16)
    {
      v17 = v16;
      v18 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v16 offset:0 resourceIndex:a4];

      return v18;
    }
  }

  else
  {
    [(MTLIOAccelHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    v10 = [(_MTLHeap *)self storageMode];
    if (v10 != 2)
    {
      [(MTLIOAccelHeap *)v10 newAccelerationStructureWithSize:v11 offset:v12 resourceIndex:v13, v14, v15, v16, v17, v22];
    }

    v18 = [(_MTLHeap *)self newBufferWithLength:a3 options:[(_MTLHeap *)self resourceOptions] offset:a4];
    if (v18)
    {
      v19 = v18;
      v20 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v18 offset:0 resourceIndex:a5];

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