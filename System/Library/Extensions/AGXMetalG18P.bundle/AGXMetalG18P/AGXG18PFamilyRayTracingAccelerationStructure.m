@interface AGXG18PFamilyRayTracingAccelerationStructure
- (AGXG18PFamilyRayTracingAccelerationStructure)initWithBuffer:(id)a3 device:(id)a4 length:(unint64_t)a5 resourceIndex:(unint64_t)a6;
- (AGXG18PFamilyRayTracingAccelerationStructure)initWithDevice:(id)a3 length:(unint64_t)a4 resourceIndex:(unint64_t)a5 storageMode:(unint64_t)a6;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation AGXG18PFamilyRayTracingAccelerationStructure

- (id).cxx_construct
{
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 361) = 0u;
  return self;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AGXG18PFamilyRayTracingAccelerationStructure;
  [(IOGPUMetalAccelerationStructure *)&v2 dealloc];
}

- (AGXG18PFamilyRayTracingAccelerationStructure)initWithBuffer:(id)a3 device:(id)a4 length:(unint64_t)a5 resourceIndex:(unint64_t)a6
{
  v27 = a5;
  v8 = *MEMORY[0x29EDC5638];
  v9 = *(a3 + v8 + 24);
  v26.gpu = *(a3 + v8 + 8);
  v26.cpu = v9;
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::RangeAllocation::RangeAllocation(&v28, (*(a4 + 106) + 9408), a6);
  v10 = v29;
  os_unfair_lock_lock(v29 + 194);
  v11 = v29;
  v12 = v28;
  os_unfair_lock_assert_owner(v29 + 194);
  v13 = (*(*&v11[6 * v11[176]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + v8 + 24) + 16 * v12);
  *v13 = v26.gpu & 0xFFFFFFFFFC00;
  v13[1] = 0;
  os_unfair_lock_unlock(v10 + 194);
  v25.receiver = self;
  v25.super_class = AGXG18PFamilyRayTracingAccelerationStructure;
  result = [(IOGPUMetalAccelerationStructure *)&v25 initWithBuffer:a3 offset:0 resourceIndex:v28];
  if (!result)
  {
LABEL_4:
    if (!v28)
    {
      return result;
    }

    goto LABEL_7;
  }

  size = result->_impl.buffer.size;
  address = result->_impl.buffer.address;
  v17 = v27;
  result->_impl.buffer.address = v26;
  result->_impl.buffer.size = v17;
  v26 = address;
  v27 = size;
  cpu = result->_impl.bvh_state_heap_allocation.buffer_.address.cpu;
  result->_impl.bvh_state_heap_allocation.buffer_.address.cpu = 0;
  LOBYTE(v17) = result->_impl.bvh_state_heap_allocation.buffer_.size;
  LOBYTE(result->_impl.bvh_state_heap_allocation.buffer_.size) = 0;
  result->_impl.bvh_state_heap_allocation.buffer_.address.cpu = v29;
  LOBYTE(result->_impl.bvh_state_heap_allocation.buffer_.size) = v30;
  gpu = result->_impl.bvh_state_heap_allocation.buffer_.address.gpu;
  result->_impl.bvh_state_heap_allocation.buffer_.address.gpu = 0;
  LODWORD(result->_impl.bvh_state_heap_allocation.buffer_.address.gpu) = v28;
  LODWORD(v28) = 0;
  gpu_high = HIDWORD(result->_impl.bvh_state_heap_allocation.buffer_.address.gpu);
  HIDWORD(result->_impl.bvh_state_heap_allocation.buffer_.address.gpu) = HIDWORD(v28);
  v21 = v28;
  v28 = gpu;
  v29 = cpu;
  v30 = v17;
  if (v21)
  {
    v22 = result;
    os_unfair_lock_lock(0x308);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(720, v21, gpu_high + v21 - 1);
    os_unfair_lock_unlock(0x308);
    result = v22;
    goto LABEL_4;
  }

  if (!gpu)
  {
    return result;
  }

LABEL_7:
  if ((v30 & 1) == 0)
  {
    v23 = result;
    v24 = v29;
    os_unfair_lock_lock(v29 + 194);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v29[180], v28, v28 + HIDWORD(v28) - 1);
    os_unfair_lock_unlock(v24 + 194);
    return v23;
  }

  return result;
}

- (AGXG18PFamilyRayTracingAccelerationStructure)initWithDevice:(id)a3 length:(unint64_t)a4 resourceIndex:(unint64_t)a5 storageMode:(unint64_t)a6
{
  v11 = [objc_opt_new() init];
  [v11 setResourceOptions:16 * a6];
  [v11 setLength:a4];
  [v11 setAlignment:1024];
  v12 = [a3 newBufferWithDescriptor:v11];

  if (v12)
  {
    v13 = [(AGXG18PFamilyRayTracingAccelerationStructure *)self initWithBuffer:v12 device:a3 length:a4 resourceIndex:a5];

    return v13;
  }

  else
  {

    return 0;
  }
}

@end