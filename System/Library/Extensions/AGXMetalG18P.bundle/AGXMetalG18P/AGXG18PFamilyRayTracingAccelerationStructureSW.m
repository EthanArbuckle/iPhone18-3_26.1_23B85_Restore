@interface AGXG18PFamilyRayTracingAccelerationStructureSW
- (AGXG18PFamilyRayTracingAccelerationStructureSW)initWithBuffer:(id)a3 offset:(unint64_t)a4 device:(id)a5 resourceIndex:(unint64_t)a6;
- (AGXG18PFamilyRayTracingAccelerationStructureSW)initWithDevice:(id)a3 length:(unint64_t)a4 resourceIndex:(unint64_t)a5 storageMode:(unint64_t)a6;
- (AGXG18PFamilyRayTracingAccelerationStructureSW)initWithDevice:(id)a3 src:(id)a4;
- (id).cxx_construct;
- (unint64_t)accelerationStructureUniqueIdentifier;
- (void)dealloc;
@end

@implementation AGXG18PFamilyRayTracingAccelerationStructureSW

- (id).cxx_construct
{
  *(self + 42) = 0;
  *(self + 43) = 0;
  *(self + 352) = 0;
  return self;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AGXG18PFamilyRayTracingAccelerationStructureSW;
  [(IOGPUMetalAccelerationStructure *)&v2 dealloc];
}

- (AGXG18PFamilyRayTracingAccelerationStructureSW)initWithDevice:(id)a3 length:(unint64_t)a4 resourceIndex:(unint64_t)a5 storageMode:(unint64_t)a6
{
  v9 = [a3 newBufferWithLength:a4 options:16 * a6];
  if (v9)
  {
    v10 = v9;
    v11 = [(AGXG18PFamilyRayTracingAccelerationStructureSW *)self initWithBuffer:v9 offset:0 device:a3 resourceIndex:a5];

    return v11;
  }

  else
  {

    return 0;
  }
}

- (AGXG18PFamilyRayTracingAccelerationStructureSW)initWithDevice:(id)a3 src:(id)a4
{
  v7 = [a4 buffer];
  v8 = [a4 bufferOffset];
  v9 = *MEMORY[0x29EDC5638];
  v10 = *(v7 + v9 + 8);
  v11 = *(a3 + 106);
  v12 = [a4 size];
  AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(&v23, v11 + 2552, 0);
  v27 = v12;
  v13 = v25;
  os_unfair_lock_lock(v25 + 194);
  v14 = v25;
  v15 = v23;
  os_unfair_lock_assert_owner(v25 + 194);
  *(*(*&v14[6 * v14[176]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + v9 + 24) + 8 * v15) = v10;
  os_unfair_lock_unlock(v13 + 194);
  v22.receiver = self;
  v22.super_class = AGXG18PFamilyRayTracingAccelerationStructureSW;
  result = [(IOGPUMetalAccelerationStructure *)&v22 initWithBuffer:v7 offset:v8 resourceIndex:v23];
  if (result)
  {
    gpu = result->_impl.bvh_heap_allocation.buffer_.address.gpu;
    LODWORD(result->_impl.bvh_heap_allocation.buffer_.address.gpu) = v23;
    v23 = gpu;
    gpu_high = HIDWORD(result->_impl.bvh_heap_allocation.buffer_.address.gpu);
    HIDWORD(result->_impl.bvh_heap_allocation.buffer_.address.gpu) = v24;
    v24 = gpu_high;
    cpu = result->_impl.bvh_heap_allocation.buffer_.address.cpu;
    result->_impl.bvh_heap_allocation.buffer_.address.cpu = v25;
    v25 = cpu;
    LOBYTE(cpu) = result->_impl.bvh_heap_allocation.buffer_.size;
    LOBYTE(result->_impl.bvh_heap_allocation.buffer_.size) = v26;
    v26 = cpu;
    result->_impl.bvh_heap_allocation.resource_ = v27;
  }

  if (v23)
  {
    if ((v26 & 1) == 0)
    {
      v20 = result;
      v21 = v25;
      os_unfair_lock_lock(v25 + 194);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v25[180], v23, v23 + v24 - 1);
      os_unfair_lock_unlock(v21 + 194);
      return v20;
    }
  }

  return result;
}

- (AGXG18PFamilyRayTracingAccelerationStructureSW)initWithBuffer:(id)a3 offset:(unint64_t)a4 device:(id)a5 resourceIndex:(unint64_t)a6
{
  v6 = a6;
  v11 = *MEMORY[0x29EDC5638];
  v12 = *(a3 + v11 + 8);
  v13 = [a3 length];
  AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(&v24, (*(a5 + 106) + 10208), v6);
  v28 = v13;
  v14 = v26;
  os_unfair_lock_lock(v26 + 194);
  v15 = v26;
  v16 = v24;
  os_unfair_lock_assert_owner(v26 + 194);
  *(*(*&v15[6 * v15[176]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + v11 + 24) + 8 * v16) = v12;
  os_unfair_lock_unlock(v14 + 194);
  v23.receiver = self;
  v23.super_class = AGXG18PFamilyRayTracingAccelerationStructureSW;
  result = [(IOGPUMetalAccelerationStructure *)&v23 initWithBuffer:a3 offset:a4 resourceIndex:v24];
  if (result)
  {
    gpu = result->_impl.bvh_heap_allocation.buffer_.address.gpu;
    LODWORD(result->_impl.bvh_heap_allocation.buffer_.address.gpu) = v24;
    v24 = gpu;
    gpu_high = HIDWORD(result->_impl.bvh_heap_allocation.buffer_.address.gpu);
    HIDWORD(result->_impl.bvh_heap_allocation.buffer_.address.gpu) = v25;
    v25 = gpu_high;
    cpu = result->_impl.bvh_heap_allocation.buffer_.address.cpu;
    result->_impl.bvh_heap_allocation.buffer_.address.cpu = v26;
    v26 = cpu;
    LOBYTE(cpu) = result->_impl.bvh_heap_allocation.buffer_.size;
    LOBYTE(result->_impl.bvh_heap_allocation.buffer_.size) = v27;
    v27 = cpu;
    result->_impl.bvh_heap_allocation.resource_ = v28;
  }

  if (v24)
  {
    if ((v27 & 1) == 0)
    {
      v21 = result;
      v22 = v26;
      os_unfair_lock_lock(v26 + 194);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v26[180], v24, v24 + v25 - 1);
      os_unfair_lock_unlock(v22 + 194);
      return v21;
    }
  }

  return result;
}

- (unint64_t)accelerationStructureUniqueIdentifier
{
  p_impl = &self->_impl;
  cpu = self->_impl.bvh_heap_allocation.buffer_.address.cpu;
  os_unfair_lock_lock(cpu + 194);
  v4 = p_impl->bvh_heap_allocation.buffer_.address.cpu;
  gpu_low = LODWORD(p_impl->bvh_heap_allocation.buffer_.address.gpu);
  os_unfair_lock_assert_owner(v4 + 194);
  v6 = *(*(*&v4[6 * v4[176]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *MEMORY[0x29EDC5638] + 24) + 8 * gpu_low);
  os_unfair_lock_unlock(cpu + 194);
  return v6;
}

@end