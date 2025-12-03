@interface AGXG18PFamilyComputeContext
- (AGXG18PFamilyComputeContext)initWithCommandBuffer:(id)buffer config:(EncoderComputeServiceConfigA *)config;
- (BOOL)encodeEndDoWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (BOOL)setMTLCounterSampleLocationWithBuffer:(id)buffer startIndex:(unsigned int)index endIndex:(unsigned int)endIndex;
- (id)newKernelDebugInfo;
- (id)reInitWithCommandBuffer:(id)buffer;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)dealloc;
- (void)deferredEndEncoding;
- (void)destroyImpl;
- (void)dispatchFenceOnly;
- (void)dispatchFlushInvalidate;
- (void)dispatchFlushOnly;
- (void)dispatchInvalidateOnly;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)dispatchWaitFlush;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)encodeStartIf:(id)if offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (void)encodeStartWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)filterCounterRangeWithFirstBatch:(unsigned int)batch lastBatch:(unsigned int)lastBatch filterIndex:(unsigned int)index;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)setImageBlockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setStageInRegion:(id *)region;
- (void)setSubstream:(unsigned int)substream;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setThreadgroupDistributionMode:(int64_t)mode;
- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)updateFence:(id)fence;
- (void)useHeap:(id)heap;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)waitForFence:(id)fence;
- (void)waitForProgress:(unsigned int)progress;
@end

@implementation AGXG18PFamilyComputeContext

- (void)waitForProgress:(unsigned int)progress
{
  impl = self->_impl;
  v4 = impl[3457];
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = v4[3].u32[1];
      if (v6 <= progress)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= progress)
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5[5].i32[0] >= *(impl + 6910))
  {
    v7 = v5[4];
    v8 = 1610612992;
    v9 = *(impl + 6907);
    if (v9 == v7.i32[0])
    {
      v10 = *(impl + 27613);
      v11 = *(impl + 6906) != 0;
      v16 = 0;
      v12 = (impl + 3);
      v13 = &v16;
      v9 = v7.u32[0];
    }

    else
    {
      v14 = vand_s8(vadd_s32(vshl_u32(v7, 0x1500000012), 0x20000000040000), 0x1FE00000001C0000);
      v11 = *(impl + 6906) != 0;
      v8 = vorr_s8(v14, vdup_lane_s32(v14, 1)).u32[0] + 1610613248;
      v17 = 0;
      v12 = (impl + 3);
      v13 = &v17;
      v10 = 0;
    }

    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v12, 4, v10, v11, v9, v13);
    v15 = impl[97];
    *v15 = v8;
    impl[97] = v15 + 1;
  }
}

- (void)setSubstream:(unsigned int)substream
{
  impl = self->_impl;
  if (*(impl + 28248) == 1)
  {
    *(impl[3536] - 56) = substream;
  }

  else
  {
    *(impl + 6907) = substream;
    v4 = *(impl + 6906) != 0;
    v5 = (substream + 1) & 7 | 0xA0000000;
    v7 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 3), 4, 0, v4, *&substream, &v7);
    v6 = impl[97];
    *v6 = v5;
    impl[97] = v6 + 1;
  }
}

- (BOOL)setMTLCounterSampleLocationWithBuffer:(id)buffer startIndex:(unsigned int)index endIndex:(unsigned int)endIndex
{
  if (buffer)
  {
    impl = self->_impl;
    v7 = *(impl + 237);
    *(impl + 6954) = index;
    *(impl + 6955) = endIndex;
    v8 = AGX::CounterSamplingContextGen1::validateSampleIndex(buffer, impl + 6954);
    v9 = AGX::CounterSamplingContextGen1::validateSampleIndex(buffer, impl + 6955);
    if ((v8 & 1) != 0 || v9)
    {
      v9 = AGX::CounterSamplingContextGen1::setCounterSampleBuffer((impl + 27808), buffer);
      if (v9)
      {
        if (*(impl + 3476))
        {
          if (v7)
          {
            MTLResourceListAddResource();
          }

          IOGPUResourceListAddResource();
        }

        LOBYTE(v9) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)filterCounterRangeWithFirstBatch:(unsigned int)batch lastBatch:(unsigned int)lastBatch filterIndex:(unsigned int)index
{
  impl = self->_impl;
  impl[483] = batch;
  impl[484] = lastBatch;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  impl = self->_impl;
  if (AGX::BarrierTracker::addBackFacingBarrier((impl + 2028), stages, beforeStages, 1))
  {
    v6 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 3), 4, 0, 0, 0, &v6);
    v5 = impl[97];
    *v5 = 1610744318;
    impl[97] = v5 + 1;
  }
}

- (void)waitForFence:(id)fence
{
  impl = self->_impl;
  if (*(impl + 237))
  {
    MTLResourceListAddResource();
  }

  v5 = *(impl + 3444);
  if (!v5)
  {
    operator new();
  }

  v6 = *(fence + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v5, v6);
}

- (void)updateFence:(id)fence
{
  impl = self->_impl;
  if (*(impl + 237))
  {
    MTLResourceListAddResource();
  }

  v5 = *(impl + 3443);
  if (!v5)
  {
    operator new();
  }

  AGX::FenceList::insertFence(v5, *(fence + *MEMORY[0x29EDC5610]));
  *(impl + 2304) = 1;
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    if (*(self->_impl + 237))
    {
      do
      {
        if (*sets)
        {
          MTLResourceListAddResource();
          IOGPUResourceListAddResource();
        }

        ++sets;
        --countCopy;
      }

      while (countCopy);
    }

    else
    {
      do
      {
        if (*sets)
        {
          IOGPUResourceListAddResource();
        }

        ++sets;
        --countCopy;
      }

      while (countCopy);
    }
  }
}

- (void)useResidencySet:(id)set
{
  if (*(self->_impl + 237))
  {
    if (!set)
    {
      return;
    }

    MTLResourceListAddResource();
  }

  else if (!set)
  {
    return;
  }

  IOGPUResourceListAddResource();
}

- (void)useHeap:(id)heap
{
  impl = self->_impl;
  if ([heap type] == 2)
  {
    for (i = *(heap + 7); i != *(heap + 8); i += 8)
    {
      if (impl[237])
      {
        MTLResourceListAddResource();
      }

      IOGPUResourceListAddResource();
    }
  }

  else if (heap)
  {
    if (impl[237])
    {
      MTLResourceListAddResource();
    }

    IOGPUResourceListAddResource();
  }
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  countCopy = count;
  selfCopy = self;
  if ((usage & 7) != 0)
  {
    v9 = (usage & 2) + 1;
  }

  else
  {
    v9 = usage & 2;
  }

  if (count)
  {
    v10 = 0;
    v23 = 88;
    selfCopy2 = self;
    impl = self->_impl;
    countCopy2 = count;
    countCopy3 = count;
    v13 = MEMORY[0x29EDC5638];
    do
    {
      v14 = resources[v10];
      if (v14 && *(v14 + *v13 + 16) >> 61 == 3)
      {
        v15 = v14[39];
        IOGPUResourceListAddResource();
        v17 = *(v15 + 64);
        v16 = *(v15 + 72);
        while (v17 != v16)
        {
          if (*v17)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v17);
            IOGPUResourceListAddResource();
          }

          v17 += 2;
        }
      }

      ++v10;
    }

    while (v10 != countCopy3);
    countCopy = countCopy2;
    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(impl, resources, countCopy2, v5, v9, v9);
    selfCopy = selfCopy2;
  }

  if ([(AGXG18PFamilyComputeContext *)selfCopy dispatchType:v23]== 1)
  {
    v18 = *(selfCopy->_impl + 3452);
    if (!v18)
    {
      operator new();
    }

    if (countCopy)
    {
      v19 = countCopy;
      v20 = MEMORY[0x29EDC5638];
      do
      {
        v21 = *resources++;
        v22 = *(v21 + *v20 + 48);
        v26 = v9;
        ResourceTracker<_ResourceTrackerBinding>::addResource((v18 + 8), &v26, v22, v9);
        --v19;
      }

      while (v19);
    }
  }
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  v7 = (usage & 7) != 0;
  if ((usage & 7) != 0)
  {
    v8 = (usage & 2) + 1;
  }

  else
  {
    v8 = usage & 2;
  }

  v9 = MEMORY[0x29EDC5638];
  if (resource)
  {
    impl = self->_impl;
    if (*(resource + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v11 = *(resource + 39);
      IOGPUResourceListAddResource();
      v12 = *(v11 + 64);
      v13 = *(v11 + 72);
      while (v12 != v13)
      {
        if (*v12)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v12);
          IOGPUResourceListAddResource();
        }

        v12 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(impl, resource, v4, v8, v8);
  }

  if ([(AGXG18PFamilyComputeContext *)self dispatchType]== 1)
  {
    v14 = *(self->_impl + 3452);
    if (!v14)
    {
      operator new();
    }

    v15 = *(resource + *v9 + 48);
    v16 = v8;
    ResourceTracker<_ResourceTrackerBinding>::addResource((v14 + 8), &v16, v15, v8);
  }
}

- (id)newKernelDebugInfo
{
  v2 = *(*(self->_impl + 292) + 16);
  if ((*(v2 + 2031) & 0x8000000000000000) != 0)
  {
    if (*(v2 + 2016))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(v2 + 2031))
  {
    return 0;
  }

LABEL_3:
  v3 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v4 = *(v2 + 2031);
  if (v4 < 0)
  {
    v5 = *(v2 + 2008);
    v4 = *(v2 + 2016);
  }

  else
  {
    v5 = v2 + 2008;
  }

  return [v3 initWithBytes:v5 length:v4];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  impl = self->_impl;
  impl[486] = impl[485];
  impl[515] |= 1u;
  if (*(impl + 237))
  {
    MTLResourceListAddResource();
  }

  v10 = MEMORY[0x29EDC5638];
  IOGPUResourceListAddResource();
  v11 = *(indirectBuffer + *v10 + 8) + offset;
  v12 = 0;
  v13 = v11;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeCommandsInBufferCommon(impl, buffer, &v12);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  impl = self->_impl;
  v6 = impl[485];
  impl[486] = v6;
  impl[515] |= 1u;
  if (LODWORD(range.length))
  {
    v7[0] = 1;
    v7[2] = range.location;
    v7[3] = LODWORD(range.location) + LODWORD(range.length) - 1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeCommandsInBufferCommon(impl, buffer, v7);
    impl = self->_impl;
    v6 = impl[485];
  }

  impl[487] = v6;
}

- (void)dispatchFenceOnly
{
  impl = self->_impl;
  v3 = *(impl + 27613);
  v4 = impl[6906] != 0;
  v5 = impl[6907];
  v7 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 6), 4, v3, v4, v5, &v7);
  v6 = *(impl + 97);
  *v6 = 1610612992;
  *(impl + 97) = v6 + 1;
}

- (void)dispatchInvalidateOnly
{
  impl = self->_impl;
  v3 = *(impl + 27613);
  v4 = impl[6906] != 0;
  v5 = impl[6907];
  v7 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 6), 4, v3, v4, v5, &v7);
  v6 = *(impl + 97);
  *v6 = 1610612768;
  *(impl + 97) = v6 + 1;
}

- (void)dispatchFlushOnly
{
  impl = self->_impl;
  v3 = *(impl + 27613);
  v4 = impl[6906] != 0;
  v5 = impl[6907];
  v7 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 6), 4, v3, v4, v5, &v7);
  v6 = *(impl + 97);
  *v6 = 1610612800;
  *(impl + 97) = v6 + 1;
}

- (void)dispatchFlushInvalidate
{
  impl = self->_impl;
  v3 = *(impl + 27613);
  v4 = impl[6906] != 0;
  v5 = impl[6907];
  v7 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 6), 4, v3, v4, v5, &v7);
  v6 = *(impl + 97);
  *v6 = 1612709984;
  *(impl + 97) = v6 + 1;
}

- (void)dispatchWaitFlush
{
  impl = self->_impl;
  v3 = *(impl + 27613);
  v4 = impl[6906] != 0;
  v5 = impl[6907];
  v7 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 6), 4, v3, v4, v5, &v7);
  v6 = *(impl + 97);
  *v6 = 1610612864;
  *(impl + 97) = v6 + 1;
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  if ([(AGXG18PFamilyComputeContext *)self dispatchType]== 1)
  {
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(impl, 22, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 6906))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(impl, 22, impl + 3524, impl + 3525, impl + 3526);
    }
  }

  [(_MTLCommandEncoder *)self memoryBarrierNotificationWithResources:resources count:count];
}

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  if ([(AGXG18PFamilyComputeContext *)self dispatchType]== 1)
  {
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(impl, 22, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 6906))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(impl, 22, impl + 3524, impl + 3525, impl + 3526);
    }
  }

  [(_MTLCommandEncoder *)self memoryBarrierNotificationWithScope:scope];
}

- (void)setThreadgroupDistributionMode:(int64_t)mode
{
  v3 = mode == 1;
  if (mode == 2)
  {
    v3 = 2;
  }

  *(self->_impl + 14044) = v3;
}

- (BOOL)encodeEndIf
{
  impl = self->_impl;
  v3 = impl[3510];
  if (v3)
  {
    v4 = v3 + impl[3509] - 1;
    v5 = *(impl[3506] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8));
    v6 = v4 & 0x3F;
    v7 = v5 + (v6 << 6);
    v8 = *(v7 + 56);
    if (v8 == 1)
    {
      v9 = *(v5 + (v6 << 6));
      v10 = __ROR8__(*(impl[3482] + 768) + *(impl[3482] + 752), 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
      goto LABEL_6;
    }

    if (!v8)
    {
      v9 = *(v7 + 32);
      v11 = *(v7 + 48);
      v10 = *(impl[3482] + 768) + *(impl[3482] + 752);
      if ((v11 & 1) == 0)
      {
        *v9 = WORD2(v10);
        *(v9 + 4) = v10;
LABEL_8:
        v12 = impl[3506];
        v13 = impl[3507];
        v14 = 8 * (v13 - v12) - 1;
        v15 = v13 == v12;
        v16 = impl[3510];
        v17 = impl[3509];
        if (v15)
        {
          v14 = 0;
        }

        impl[3510] = v16 - 1;
        if ((v14 - (v16 + v17) + 1) >= 0x80)
        {
          operator delete(*(v13 - 8));
          impl[3507] -= 8;
        }

        if (*(impl + 28032) == 1)
        {
          v18 = impl[3502];
          v19 = impl[3503];
          v20 = (impl[3501] + (v19 >> 1));
          if (v19)
          {
            v18 = *(*v20 + v18);
          }

          v18(v20);
        }

        if (!impl[3510] && *(impl + 27968) == 1)
        {
          v21 = impl[3494];
          v22 = impl[3495];
          v23 = (impl[3493] + (v22 >> 1));
          if ((v22 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        return (*(impl + 28090) & 2) == 0;
      }

LABEL_6:
      *v9 = v10;
      goto LABEL_8;
    }
  }

  if (*(impl + 27904) == 1)
  {
    v21 = impl[3486];
    v24 = impl[3487];
    v23 = (impl[3485] + (v24 >> 1));
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_22:
    v21 = *(*v23 + v21);
LABEL_23:
    v21(v23);
  }

  return (*(impl + 28090) & 2) == 0;
}

- (void)encodeStartElse
{
  impl = self->_impl;
  v3 = impl[3510];
  if (!v3 || (v4 = impl[3509], v5 = impl[3506], v6 = *(v5 + (((v3 - 1 + v4) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v3 - 1 + v4) & 0x3F) << 6), *(v6 + 56)))
  {
    if (*(impl + 27904) == 1)
    {
      v28 = impl[3486];
      v29 = impl[3487];
      v30 = (impl[3485] + (v29 >> 1));
      if (v29)
      {
        v28 = *(*v30 + v28);
      }

      v28(v30);
    }
  }

  else
  {
    v7 = impl[3453];
    v8 = impl[3507];
    v9 = *(v6 + 32);
    v10 = *(v6 + 48);
    impl[3510] = v3 - 1;
    if (v8 == v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = 8 * (v8 - v5) - 1;
    }

    if ((v11 - (v3 + v4) + 1) >= 0x80)
    {
      operator delete(*(v8 - 8));
      impl[3507] -= 8;
    }

    if (*(impl + 28032) == 1)
    {
      v12 = impl[3502];
      v13 = impl[3503];
      v14 = (impl[3501] + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      v12(v14);
    }

    if (*(impl + 28000) == 1)
    {
      v15 = impl[3498];
      v16 = impl[3499];
      v17 = (impl[3497] + (v16 >> 1));
      if (v16)
      {
        v15 = *(*v17 + v15);
      }

      v15(v17);
    }

    v18 = AGX::ComputeControlFlowEmitterGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitLink(impl[3482], v7);
    v20 = v19;
    v21 = impl[3507];
    v22 = impl[3506];
    v23 = 8 * (v21 - v22) - 1;
    if (v21 == v22)
    {
      v23 = 0;
    }

    v24 = impl[3510] + impl[3509];
    if (v23 == v24)
    {
      std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::__add_back_capacity(impl + 3505);
      v22 = impl[3506];
      v24 = impl[3510] + impl[3509];
    }

    v25 = *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v24 & 0x3F) << 6);
    *v25 = v18;
    *(v25 + 8) = v20;
    *(v25 + 56) = 1;
    v26 = impl[3510];
    impl[3510] = v26 + 1;
    v27 = *(*(impl[3506] + (((impl[3509] + v26) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((impl[3509] + v26) & 0x3F) << 6) + 8) + 8;
    if (v10)
    {
      *v9 = v27;
    }

    else
    {
      *v9 = WORD2(v27);
      *(v9 + 4) = v27;
    }
  }
}

- (void)encodeStartIf:(id)if offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v54 = *MEMORY[0x29EDCA608];
  impl = self->_impl;
  if (!if)
  {
    *(impl + 28090) |= 2u;
    return;
  }

  if (*(impl + 237))
  {
    MTLResourceListAddResource();
  }

  v11 = *MEMORY[0x29EDC5638];
  v12 = if + v11;
  v13 = *(if + v11 + 16);
  if ((v13 & 0x7FFFFFFF80) != 0 && (v13 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v15 = *(impl + 251);
    if (*(v15[2].i64[1] + 480) == 1)
    {
      v16 = v15[3];
      v17 = v15[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v16), vceqzq_s64(v17))))))
      {
        v18 = (if + v11);
        if ((v13 & 0x1000000000000000) != 0)
        {
          v18 = *v12;
        }

        v19 = *v18;
        if (v19)
        {
          v20 = *v19;
          v21 = v19[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v19), vceqzq_s64(v21))))))
          {
            v22 = vandq_s8(v21, v17);
            v23 = v22.u64[1];
            if (v22.i64[1])
            {
              v24 = 3;
              goto LABEL_23;
            }

            v23 = v22.i64[0];
            if (v22.i64[0])
            {
              v24 = 2;
              goto LABEL_23;
            }

            v25 = vandq_s8(v20, v16);
            v23 = v25.u64[1];
            if (v25.i64[1])
            {
              v24 = 1;
              goto LABEL_23;
            }

            v23 = v25.i64[0];
            if (v25.i64[0])
            {
              v24 = 0;
LABEL_23:
              v26 = &v15->i8[8 * v24];
              v27 = *(v26 + 10);
              v28 = 1 << (__clz(v23) ^ 0x3Fu);
              v29 = (v28 & v27) != 0;
              if ((v28 & (*(v26 + 14) | v27)) != 0)
              {
                v30 = (*(v12 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
                v31 = if + v11;
                if ((v13 & 0x1000000000000000) != 0)
                {
                  v31 = *v12;
                }

                *&v50 = v31;
                *(&v50 + 1) = v30;
                *&v51 = (v13 >> 7) | 0x100000000;
                *(&v51 + 1) = v29;
                ResourceTracker<_ResourceGroupBinding>::addResource(v15, &v50, *(v12 + 12), 1);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (comparison - 1 > 4)
  {
    v32 = 2;
  }

  else
  {
    v32 = dword_29D2F4684[comparison - 1];
  }

  v33 = impl[14044];
  v34 = *(impl + 3453);
  if (!*(impl + 3510) && *(impl + 27936) == 1)
  {
    v35 = *(impl + 3490);
    v36 = *(impl + 3491);
    v37 = (*(impl + 3489) + (v36 >> 1));
    if (v36)
    {
      v35 = *(*v37 + v35);
    }

    v35(v37);
  }

  if (*(impl + 28000) == 1)
  {
    v38 = *(impl + 3498);
    v39 = *(impl + 3499);
    v40 = (*(impl + 3497) + (v39 >> 1));
    if (v39)
    {
      v38 = *(*v40 + v38);
    }

    v38(v40);
  }

  v48[0] = if;
  v48[1] = offset;
  v49 = 2;
  v47[0] = value;
  v47[4] = 1;
  AGX::ComputeControlFlowEmitterGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitPredicate(&v50, v32, v48, v47, *(impl + 3481), *(impl + 3482), *(impl + 3483), *(impl + 3484), v34, v33);
  v41 = *(impl + 3507);
  v42 = *(impl + 3506);
  v43 = 8 * (v41 - v42) - 1;
  if (v41 == v42)
  {
    v43 = 0;
  }

  v44 = *(impl + 3510) + *(impl + 3509);
  if (v43 == v44)
  {
    std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::__add_back_capacity(impl + 3505);
    v42 = *(impl + 3506);
    v44 = *(impl + 3510) + *(impl + 3509);
  }

  v45 = *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v44 & 0x3F) << 6);
  v46 = v51;
  *v45 = v50;
  *(v45 + 16) = v46;
  *(v45 + 32) = v52;
  *(v45 + 48) = v53;
  *(v45 + 56) = 0;
  ++*(impl + 3510);
}

- (BOOL)encodeEndWhile
{
  impl = self->_impl;
  v3 = impl[3510];
  if (v3 && *(*(impl[3506] + (((v3 + impl[3509] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v3 + impl[3509] - 1) & 0x3F) << 6) + 56) == 2)
  {
    v4 = AGX::ComputeControlFlowEmitterGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitLink(impl[3482], impl[3453]);
    v5 = impl[3510] + impl[3509] - 1;
    *v4 = __ROR8__(*(*(impl[3506] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v5 & 0x3F) << 6) + 8), 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
    v6 = impl[3510] + impl[3509] - 1;
    v7 = *(impl[3506] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v6 & 0x3F) << 6);
    v8 = *(v7 + 32);
    v9 = *(v7 + 48);
    v11 = v10 + 8;
    if (v9)
    {
      *v8 = v11;
    }

    else
    {
      *v8 = WORD2(v11);
      *(v8 + 4) = v11;
    }

    v12 = impl[3506];
    v13 = impl[3507];
    v14 = 8 * (v13 - v12) - 1;
    v15 = v13 == v12;
    v16 = impl[3510];
    v17 = impl[3509];
    if (v15)
    {
      v14 = 0;
    }

    impl[3510] = v16 - 1;
    if ((v14 - (v16 + v17) + 1) >= 0x80)
    {
      operator delete(*(v13 - 8));
      impl[3507] -= 8;
    }

    if (*(impl + 28032) == 1)
    {
      v18 = impl[3502];
      v19 = impl[3503];
      v20 = (impl[3501] + (v19 >> 1));
      if (v19)
      {
        v18 = *(*v20 + v18);
      }

      v18(v20);
    }

    if (!impl[3510] && *(impl + 27968) == 1)
    {
      v21 = impl[3494];
      v22 = impl[3495];
      v23 = (impl[3493] + (v22 >> 1));
      if ((v22 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (*(impl + 27904) == 1)
  {
    v21 = impl[3486];
    v24 = impl[3487];
    v23 = (impl[3485] + (v24 >> 1));
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v21 = *(*v23 + v21);
LABEL_21:
    v21(v23);
  }

  return (*(impl + 28090) & 2) == 0;
}

- (void)encodeStartWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v54 = *MEMORY[0x29EDCA608];
  impl = self->_impl;
  if (!while)
  {
    *(impl + 28090) |= 2u;
    return;
  }

  if (*(impl + 237))
  {
    MTLResourceListAddResource();
  }

  v11 = *MEMORY[0x29EDC5638];
  v12 = while + v11;
  v13 = *(while + v11 + 16);
  if ((v13 & 0x7FFFFFFF80) != 0 && (v13 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v15 = *(impl + 251);
    if (*(v15[2].i64[1] + 480) == 1)
    {
      v16 = v15[3];
      v17 = v15[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v16), vceqzq_s64(v17))))))
      {
        v18 = (while + v11);
        if ((v13 & 0x1000000000000000) != 0)
        {
          v18 = *v12;
        }

        v19 = *v18;
        if (v19)
        {
          v20 = *v19;
          v21 = v19[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v19), vceqzq_s64(v21))))))
          {
            v22 = vandq_s8(v21, v17);
            v23 = v22.u64[1];
            if (v22.i64[1])
            {
              v24 = 3;
              goto LABEL_23;
            }

            v23 = v22.i64[0];
            if (v22.i64[0])
            {
              v24 = 2;
              goto LABEL_23;
            }

            v25 = vandq_s8(v20, v16);
            v23 = v25.u64[1];
            if (v25.i64[1])
            {
              v24 = 1;
              goto LABEL_23;
            }

            v23 = v25.i64[0];
            if (v25.i64[0])
            {
              v24 = 0;
LABEL_23:
              v26 = &v15->i8[8 * v24];
              v27 = *(v26 + 10);
              v28 = 1 << (__clz(v23) ^ 0x3Fu);
              v29 = (v28 & v27) != 0;
              if ((v28 & (*(v26 + 14) | v27)) != 0)
              {
                v30 = (*(v12 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
                v31 = while + v11;
                if ((v13 & 0x1000000000000000) != 0)
                {
                  v31 = *v12;
                }

                *&v50 = v31;
                *(&v50 + 1) = v30;
                *&v51 = (v13 >> 7) | 0x100000000;
                *(&v51 + 1) = v29;
                ResourceTracker<_ResourceGroupBinding>::addResource(v15, &v50, *(v12 + 12), 1);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (comparison - 1 > 4)
  {
    v32 = 2;
  }

  else
  {
    v32 = dword_29D2F4684[comparison - 1];
  }

  v33 = impl[14044];
  v34 = *(impl + 3453);
  if (!*(impl + 3510) && *(impl + 27936) == 1)
  {
    v35 = *(impl + 3490);
    v36 = *(impl + 3491);
    v37 = (*(impl + 3489) + (v36 >> 1));
    if (v36)
    {
      v35 = *(*v37 + v35);
    }

    v35(v37);
  }

  if (*(impl + 28000) == 1)
  {
    v38 = *(impl + 3498);
    v39 = *(impl + 3499);
    v40 = (*(impl + 3497) + (v39 >> 1));
    if (v39)
    {
      v38 = *(*v40 + v38);
    }

    v38(v40);
  }

  v48[0] = while;
  v48[1] = offset;
  v49 = 2;
  v47[0] = value;
  v47[4] = 1;
  AGX::ComputeControlFlowEmitterGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitPredicate(&v50, v32, v48, v47, *(impl + 3481), *(impl + 3482), *(impl + 3483), *(impl + 3484), v34, v33);
  v41 = *(impl + 3507);
  v42 = *(impl + 3506);
  v43 = 8 * (v41 - v42) - 1;
  if (v41 == v42)
  {
    v43 = 0;
  }

  v44 = *(impl + 3510) + *(impl + 3509);
  if (v43 == v44)
  {
    std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::__add_back_capacity(impl + 3505);
    v42 = *(impl + 3506);
    v44 = *(impl + 3510) + *(impl + 3509);
  }

  v45 = *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v44 & 0x3F) << 6);
  v46 = v51;
  *v45 = v50;
  *(v45 + 16) = v46;
  *(v45 + 32) = v52;
  *(v45 + 48) = v53;
  *(v45 + 56) = 2;
  ++*(impl + 3510);
}

- (BOOL)encodeEndDoWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  impl = self->_impl;
  if (!while)
  {
    result = 0;
    *(impl + 28090) |= 2u;
    return result;
  }

  if (*(impl + 237))
  {
    MTLResourceListAddResource();
  }

  v11 = *MEMORY[0x29EDC5638];
  v12 = while + v11;
  v13 = *(while + v11 + 16);
  if ((v13 & 0x7FFFFFFF80) != 0 && (v13 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v15 = *(impl + 251);
    if (*(v15[2].i64[1] + 480) == 1)
    {
      v16 = v15[3];
      v17 = v15[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v16), vceqzq_s64(v17))))))
      {
        v18 = (while + v11);
        if ((v13 & 0x1000000000000000) != 0)
        {
          v18 = *v12;
        }

        v19 = *v18;
        if (v19)
        {
          v20 = *v19;
          v21 = v19[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v19), vceqzq_s64(v21))))))
          {
            v22 = vandq_s8(v21, v17);
            v23 = v22.u64[1];
            if (v22.i64[1])
            {
              v24 = 3;
            }

            else
            {
              v23 = v22.i64[0];
              if (v22.i64[0])
              {
                v24 = 2;
              }

              else
              {
                v25 = vandq_s8(v20, v16);
                v23 = v25.u64[1];
                if (v25.i64[1])
                {
                  v24 = 1;
                }

                else
                {
                  v23 = v25.i64[0];
                  if (!v25.i64[0])
                  {
                    goto LABEL_27;
                  }

                  v24 = 0;
                }
              }
            }

            v26 = &v15->i8[8 * v24];
            v27 = *(v26 + 10);
            v28 = 1 << (__clz(v23) ^ 0x3Fu);
            v29 = (v28 & v27) != 0;
            if ((v28 & (*(v26 + 14) | v27)) != 0)
            {
              v30 = (*(v12 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
              v31 = while + v11;
              if ((v13 & 0x1000000000000000) != 0)
              {
                v31 = *v12;
              }

              v54[0] = v31;
              v54[1] = v30;
              v55 = v13 >> 7;
              v56 = 1;
              v57 = v29;
              ResourceTracker<_ResourceGroupBinding>::addResource(v15, v54, *(v12 + 12), 1);
            }
          }
        }
      }
    }
  }

LABEL_27:
  IOGPUResourceListAddResource();
  if (comparison - 1 > 4)
  {
    v32 = 2;
  }

  else
  {
    v32 = dword_29D2F4684[comparison - 1];
  }

  v33 = *(impl + 3510);
  if (v33 && *(*(*(impl + 3506) + (((v33 + *(impl + 3509) - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v33 + *(impl + 3509) - 1) & 0x3F) << 6) + 56) == 3)
  {
    v34 = impl[14044];
    v35 = *(impl + 3453);
    if (v32 - 1 >= 6)
    {
      v36 = v32;
    }

    else
    {
      v36 = 7 - v32;
    }

    v61[0] = while;
    v61[1] = offset;
    v62 = 2;
    v60[0] = value;
    v60[4] = 1;
    AGX::ComputeControlFlowEmitterGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitPredicate(v54, v36, v61, v60, *(impl + 3481), *(impl + 3482), *(impl + 3483), *(impl + 3484), v35, v34);
    v37 = v58;
    v38 = *(impl + 3510) + *(impl + 3509) - 1;
    v39 = *(*(*(impl + 3506) + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v38 & 0x3F) << 6) + 8);
    if (v59)
    {
      *v58 = v39;
    }

    else
    {
      *v58 = WORD2(v39);
      *(v37 + 1) = v39;
    }

    v40 = *(impl + 3506);
    v41 = *(impl + 3507);
    v42 = 8 * (v41 - v40) - 1;
    v43 = v41 == v40;
    v44 = *(impl + 3510);
    v45 = *(impl + 3509);
    if (v43)
    {
      v42 = 0;
    }

    *(impl + 3510) = v44 - 1;
    if ((v42 - (v44 + v45) + 1) >= 0x80)
    {
      operator delete(*(v41 - 8));
      *(impl + 3507) -= 8;
    }

    if (*(impl + 28032) == 1)
    {
      v46 = *(impl + 3502);
      v47 = *(impl + 3503);
      v48 = (*(impl + 3501) + (v47 >> 1));
      if (v47)
      {
        v46 = *(*v48 + v46);
      }

      v46(v48);
    }

    if (*(impl + 3510) || *(impl + 27968) != 1)
    {
      return (impl[14045] & 2) == 0;
    }

    v49 = *(impl + 3494);
    v50 = *(impl + 3495);
    v51 = (*(impl + 3493) + (v50 >> 1));
    if ((v50 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_53:
    v49 = *(*v51 + v49);
LABEL_54:
    v49(v51);
    return (impl[14045] & 2) == 0;
  }

  if (*(impl + 27904) == 1)
  {
    v49 = *(impl + 3486);
    v53 = *(impl + 3487);
    v51 = (*(impl + 3485) + (v53 >> 1));
    if ((v53 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  return (impl[14045] & 2) == 0;
}

- (void)encodeStartDoWhile
{
  impl = self->_impl;
  if (!impl[3510] && *(impl + 27936) == 1)
  {
    v3 = impl[3490];
    v4 = impl[3491];
    v5 = (impl[3489] + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    v3(v5, a2);
  }

  if (*(impl + 28000) == 1)
  {
    v6 = impl[3498];
    v7 = impl[3499];
    v8 = (impl[3497] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8, a2);
  }

  v9 = impl[3507];
  v10 = impl[3506];
  v11 = 8 * (v9 - v10) - 1;
  v12 = v9 == v10;
  v13 = impl[3482];
  v14 = *(v13 + 752);
  v15 = *(v13 + 768);
  if (v12)
  {
    v11 = 0;
  }

  v16 = impl[3510] + impl[3509];
  if (v11 == v16)
  {
    std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::__add_back_capacity(impl + 3505);
    v10 = impl[3506];
    v16 = impl[3510] + impl[3509];
  }

  v17 = *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v16 & 0x3F) << 6);
  *v17 = v14;
  *(v17 + 8) = v15 + v14;
  *(v17 + 56) = 3;
  ++impl[3510];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  impl = self->_impl;
  impl[486] = impl[485];
  if (threadgroup->var1 * threadgroup->var0 * threadgroup->var2 <= *(*(impl + 292) + 456))
  {
    v7 = *threads;
    v6 = *threadgroup;
    impl[515] |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(impl, 0x16u, &v7, &v6);
    *(self->_impl + 487) = *(self->_impl + 485);
  }
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  impl = self->_impl;
  impl[486] = impl[485];
  impl[515] |= 1u;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectInternal(impl, buffer, offset);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  impl = self->_impl;
  impl[486] = impl[485];
  if (threadgroup->var1 * threadgroup->var0 * threadgroup->var2 <= *(*(impl + 292) + 456))
  {
    v7 = *threadgroup;
    impl[515] |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadgroupsIndirectInternal(impl, buffer, offset, &v7);
    *(self->_impl + 487) = *(self->_impl + 485);
  }
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  impl = self->_impl;
  impl[486] = impl[485];
  if (threadgroup->var1 * threadgroup->var0 * threadgroup->var2 <= *(*(impl + 292) + 456))
  {
    v7 = *threadgroup;
    v6 = *threadgroups;
    impl[515] |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(impl, &v7, &v6);
    *(self->_impl + 487) = *(self->_impl + 485);
  }
}

- (void)setStageInRegion:(id *)region
{
  impl = self->_impl;
  impl[1757] = vuzp1q_s32(*&region->var0.var0, *&region->var0.var2);
  *impl[1758].i8 = vmovn_s64(*&region->var1.var1);
  v4 = impl[10].i64[1];
  v5 = v4 + 47;
  if ((v4 + 47) > impl[10].i64[0])
  {
    v9 = AGX::DataBufferAllocator<44ul>::growNoInline(&impl[1].u64[1], 3, 0);
    v4 = impl[10].i64[1];
    if (!v9)
    {
      goto LABEL_3;
    }

    v5 = v4 + 47;
    if ((v4 + 47) > impl[10].i64[0])
    {
      abort();
    }
  }

  impl[11].i64[0] = v5;
LABEL_3:
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v6 + impl[11].i64[1];
  impl[10].i64[1] = v6 + 32;
  impl[1722].i64[1] |= 0x10000000000uLL;
  impl[1724].i32[2] |= 1u;
  *(impl[1406].i64[0] + 1344) = v7;
  impl[1426].i64[1] = *(impl[3].i64[0] + 224) + *MEMORY[0x29EDC5638];
  v8 = impl[1757];
  *(v6 + 16) = impl[1758].i64[0];
  *v6 = v8;
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  impl = self->_impl;
  impl[524] = width;
  impl[525] = height;
  impl[526] = 1;
  *(impl + 3530) |= 0x4000000uLL;
}

- (void)setImageBlockWidth:(unint64_t)width height:(unint64_t)height
{
  impl = self->_impl;
  impl[524] = width;
  impl[525] = height;
  impl[526] = 1;
  *(impl + 3530) |= 0x4000000uLL;
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length_low = LODWORD(range.length);
  if (LODWORD(range.length))
  {
    impl = self->_impl;
    location_low = LODWORD(range.location);
    location = range.location;
    do
    {
      if (*states)
      {
        v15 = impl[234];
        v16 = *(v15 + 848);
        v17 = *clamps;
        v18 = *maxClamps;
        v19 = *states + 48;
        v21 = *(*states + 4);
        v20 = *(*states + 5);
        v27[0] = *v19;
        v27[1] = v21;
        v27[2] = v20;
        if (v19[71] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v19 + 6), *(v19 + 7));
        }

        else
        {
          v22 = *(v19 + 3);
          __p.__r_.__value_.__r.__words[2] = *(v19 + 8);
          *&__p.__r_.__value_.__l.__data_ = v22;
        }

        *(&v27[0] + 1) = __PAIR64__(v18, v17);
        Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v16, v27, v15, 0);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (!impl[237])
          {
            goto LABEL_16;
          }

LABEL_15:
          MTLResourceListAddResource();
          goto LABEL_16;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        if (impl[237])
        {
          goto LABEL_15;
        }
      }

      else
      {
        Sampler = 0;
        if (impl[237])
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      if (Sampler)
      {
        v24 = *&Sampler->_impl.desc.var1;
      }

      else
      {
        v24 = 0;
      }

      v25 = 32 * location;
      *(impl[2811] + v25 + 16888) = v24;
      v12 = impl[2811];
      if ((~*(v12 + 16880 + v25 + 8) & 0x6000000000000000) == 0)
      {
        *(v12 + 16880 + 32 * location_low + 16) = *&Sampler->_impl.var0;
        v12 = impl[2811];
LABEL_4:
        p_impl = &Sampler->_impl;
        if (LODWORD(Sampler[1].super._device))
        {
          p_impl = LODWORD(Sampler[1].super._device);
        }

        goto LABEL_6;
      }

      if (Sampler)
      {
        goto LABEL_4;
      }

      p_impl = 0;
LABEL_6:
      v14 = v12 + 32 * location++;
      *(v14 + 16880) = p_impl;
      ++maxClamps;
      ++clamps;
      ++states;
      --length_low;
    }

    while (length_low);
  }
}

- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  indexCopy = index;
  impl = self->_impl;
  if (state)
  {
    v8 = impl[234];
    v9 = *(v8 + 848);
    v10 = *(state + 4);
    v18[0] = *(state + 3);
    v18[1] = v10;
    v18[2] = *(state + 5);
    if (*(state + 119) < 0)
    {
      maxClampCopy = maxClamp;
      clampCopy = clamp;
      std::string::__init_copy_ctor_external(&__p, *(state + 12), *(state + 13));
      clamp = clampCopy;
      maxClamp = maxClampCopy;
    }

    else
    {
      __p = *(state + 4);
    }

    *(v18 + 2) = clamp;
    *(v18 + 3) = maxClamp;
    Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v9, v18, v8, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    Sampler = 0;
  }

  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  if (Sampler)
  {
    v14 = *&Sampler->_impl.desc.var1;
  }

  else
  {
    v14 = 0;
  }

  v15 = 32 * indexCopy;
  *(impl[2811] + v15 + 16888) = v14;
  v16 = impl[2811];
  if ((~*(v16 + 16880 + v15 + 8) & 0x6000000000000000) != 0)
  {
    if (!Sampler)
    {
      p_impl = 0;
      goto LABEL_18;
    }
  }

  else
  {
    *(v16 + 16880 + 32 * indexCopy + 16) = *&Sampler->_impl.var0;
    v16 = impl[2811];
  }

  p_impl = &Sampler->_impl;
  if (LODWORD(Sampler[1].super._device))
  {
    p_impl = LODWORD(Sampler[1].super._device);
  }

LABEL_18:
  *(v16 + 32 * indexCopy + 16880) = p_impl;
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  statesCopy = states;
  impl = self->_impl;
  if (LODWORD(range.length) && impl[237])
  {
    length_low = LODWORD(range.length);
    statesCopy2 = states;
    do
    {
      if (*statesCopy2)
      {
        MTLResourceListAddResource();
      }

      ++statesCopy2;
      --length_low;
    }

    while (length_low);
  }

  if (length)
  {
    v10 = length;
    while (1)
    {
      v12 = *statesCopy;
      v13 = *statesCopy ? v12[15] : 0;
      v14 = 32 * location;
      *(impl[2811] + v14 + 16888) = v13;
      v11 = impl[2811];
      if ((~*(v11 + 16880 + v14 + 8) & 0x6000000000000000) == 0)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_10;
      }

LABEL_12:
      *(v11 + 32 * location++ + 16880) = v12;
      ++statesCopy;
      if (!--v10)
      {
        return;
      }
    }

    *(v11 + 16880 + 32 * location + 16) = *(v12 + 8);
    v11 = impl[2811];
LABEL_10:
    v12 += 6;
    if (*(v12 + 24))
    {
      v12 = *(v12 + 24);
    }

    goto LABEL_12;
  }
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  indexCopy = index;
  impl = self->_impl;
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  if (state)
  {
    v7 = *(state + 15);
  }

  else
  {
    v7 = 0;
  }

  v8 = 32 * indexCopy;
  *(impl[2811] + v8 + 16888) = v7;
  v9 = impl[2811];
  if ((~*(v9 + 16880 + v8 + 8) & 0x6000000000000000) != 0)
  {
    if (!state)
    {
      v10 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    *(v9 + 16880 + 32 * indexCopy + 16) = *(state + 8);
    v9 = impl[2811];
  }

  v10 = state + 48;
  if (*(state + 36))
  {
    v10 = *(state + 36);
  }

LABEL_11:
  *(v9 + 32 * indexCopy + 16880) = v10;
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  texturesCopy = textures;
  impl = self->_impl;
  if (LODWORD(range.length) && impl[237])
  {
    length_low = LODWORD(range.length);
    texturesCopy2 = textures;
    do
    {
      if (*texturesCopy2)
      {
        MTLResourceListAddResource();
      }

      ++texturesCopy2;
      --length_low;
    }

    while (length_low);
  }

  v79 = length;
  if (length)
  {
    v9 = (impl + 2882);
    v10 = (impl + 3439);
    v11 = (impl + 3441);
    v12 = v79;
    v13 = MEMORY[0x29EDC5638];
    v14 = location;
    v15 = 3 * location;
    while (1)
    {
      v21 = *texturesCopy;
      if (*texturesCopy)
      {
        break;
      }

      *&v9[8 * v15] = 0;
      *&v9[8 * v15 + 8] = 0;
      *&v9[8 * v15 + 16] = 0;
      v30 = impl[2811] + (v14 << 7);
      v81 = v14 << 7;
      v31 = v9;
      v32 = v12;
      v33 = v13;
      bzero((v30 + 496), 0x38uLL);
      v13 = v33;
      v34 = v14;
      v12 = v32;
      v9 = v31;
      v20 = 0;
      *(v30 + 544) = 0;
      v35 = impl[2811];
      v36 = 8 * (v14 > 0x3F);
      v37 = (v35 + v36);
      v37[2236] = *(v35 + v36 + 17888) & ~(1 << v14);
      v37[2238] = *(v35 + v36 + 17904) & ~(1 << v14);
      v37[2240] = *(v35 + v36 + 17920) & ~(1 << v14);
      v38 = *(impl[234] + 848);
      v39 = *(v38 + 16496);
      v40 = v35 + v81;
      *(v40 + 560) = *(v38 + 16480);
      *(v40 + 576) = v39;
      v41 = *(impl[234] + 848);
      v42 = impl[2811] + v81;
      v43 = *(v41 + 16528);
      *(v42 + 592) = *(v41 + 16512);
      *(v42 + 608) = v43;
      *&v10[v36] &= ~(1 << v14);
      *&v11[v36] &= ~(1 << v14);
      v44 = impl[2811];
LABEL_17:
      *(v44 + (v34 << 7) + 552) = v20;
      ++v14;
      ++texturesCopy;
      v15 += 3;
      if (!--v12)
      {
        goto LABEL_46;
      }
    }

    v22 = v21[74];
    v23 = v14 << 7;
    v24 = impl[2811] + v23;
    v25 = *(v22 + 432);
    *(v24 + 560) = *(v22 + 416);
    *(v24 + 576) = v25;
    v26 = impl[2811] + v23;
    v27 = *(v22 + 464);
    *(v26 + 592) = *(v22 + 448);
    *(v26 + 608) = v27;
    v28 = v21[74];
    if (v28)
    {
      v29 = *(v28 + 592);
      v28 = *(v28 + 600);
    }

    else
    {
      v29 = 0;
    }

    v45 = impl[251];
    v46 = v45[2].i64[1];
    if (*(v46 + 480) != 1)
    {
      goto LABEL_31;
    }

    v47 = v45[3];
    v48 = v45[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v47), vceqzq_s64(v48))))) & 1) == 0)
    {
      goto LABEL_31;
    }

    v49 = (v21 + *v13);
    if ((v49[1].i8[7] & 0x10) != 0)
    {
      v49 = v49->i64[0];
    }

    v50 = v49->i64[0];
    if (v50 && (v51 = *v50, v52 = v50[1], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v50), vceqzq_s64(v52))))) & 1) != 0))
    {
      v53 = vandq_s8(v52, v48);
      v54 = v53.u64[1];
      if (v53.i64[1])
      {
        v55 = 3;
LABEL_45:
        v71 = &v45->i8[8 * v55];
        v72 = __clz(v54) ^ 0x3F;
        v56 = (*(v71 + 10) >> v72) & 1;
        v57 = (*(v71 + 14) >> v72) & 1;
        goto LABEL_32;
      }

      v54 = v53.i64[0];
      if (v53.i64[0])
      {
        v55 = 2;
        goto LABEL_45;
      }

      v70 = vandq_s8(v51, v47);
      v54 = v70.u64[1];
      if (v70.i64[1])
      {
        v55 = 1;
        goto LABEL_45;
      }

      v55 = 0;
      v56 = 0;
      v57 = 0;
      v54 = v70.i64[0];
      if (v70.i64[0])
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_31:
      v56 = 0;
      v57 = 0;
    }

LABEL_32:
    v58 = v14 > 0x3F;
    v59 = (v46 + 8 * v58);
    v60 = 1 << v14;
    v59[6] = v59[6] & ~(1 << v14) | (v56 << v14);
    v59[26] = v59[26] & ~(1 << v14) | (v57 << v14);
    v59[46] &= ~(1 << v14);
    *&v9[8 * v15] = v21 + *v13;
    if (v29)
    {
      v29 += *v13;
    }

    *&v9[8 * v15 + 8] = v29;
    if (v28)
    {
      v28 += *v13;
    }

    v34 = v14;
    v61 = v14 & 0x3F;
    v62 = ~v60;
    *&v9[8 * v15 + 16] = v28;
    v63 = impl[2811] + (v14 << 7);
    v64 = *(v22 + 72);
    v65 = *(v22 + 88);
    v66 = *(v22 + 104);
    *(v63 + 544) = *(v22 + 120);
    *(v63 + 512) = v65;
    *(v63 + 528) = v66;
    *(v63 + 496) = v64;
    v44 = impl[2811];
    v67 = v44 + 8 * v58;
    *(v67 + 17888) |= v60;
    v68 = *(v22 + 584);
    if (v68)
    {
      v69 = *(v68 + 1304);
      *(v67 + 17904) = *(v67 + 17904) & v62 | ((v69 != 0) << v61);
      if (v69)
      {
        v68 = *(v22 + 409);
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      *(v67 + 17904) &= v62;
    }

    v16 = 8 * v58;
    *(v44 + v16 + 17920) = *(v44 + v16 + 17920) & v62 | (v68 << v61);
    v17 = *(v22 + 397) << 8;
    v19 = v17 == 512 || v17 == 1024;
    *&v10[v16] = (v19 << v61) | *&v10[v16] & v62;
    *&v11[v16] = *&v11[v16] & v62 | ((v17 == 768) << v61);
    v20 = *(v21[74] + 120);
    goto LABEL_17;
  }

LABEL_46:
  v73 = v79 + location;
  if (v79 + location == 128)
  {
    v74 = -1;
  }

  else
  {
    v74 = ~(-1 << (v79 + location));
  }

  if (v73 < 0x40)
  {
    v75 = ~(-1 << (v79 + location));
  }

  else
  {
    v75 = -1;
  }

  if (v73 >= 0x40)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0;
  }

  v77 = -1 << location;
  if (location < 0x40)
  {
    v77 = -1;
  }

  v78 = -1 << location;
  if (location >= 0x40)
  {
    v78 = 0;
  }

  impl[3447] |= v75 & v78;
  impl[3448] |= v76 & v77;
  *(impl + 6898) |= 2u;
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  impl = self->_impl;
  if (!texture)
  {
    impl[(3 * index) + 2882] = 0;
    impl[(3 * index + 1) + 2882] = 0;
    impl[(3 * index + 2) + 2882] = 0;
    v15 = index > 0x3F;
    v16 = index << 7;
    v17 = impl[2811] + v16;
    bzero((v17 + 496), 0x38uLL);
    *(v17 + 544) = 0;
    v18 = impl[2811];
    v19 = 8 * v15;
    v20 = (v18 + v19);
    v20[2236] = *(v18 + v19 + 17888) & ~(1 << indexCopy);
    v20[2238] = *(v18 + v19 + 17904) & ~(1 << indexCopy);
    v20[2240] = *(v18 + v19 + 17920) & ~(1 << indexCopy);
    v21 = *(impl[234] + 848);
    v22 = v18 + v16;
    v23 = *(v21 + 16496);
    *(v22 + 560) = *(v21 + 16480);
    *(v22 + 576) = v23;
    v24 = *(impl[234] + 848);
    v25 = impl[2811] + v16;
    v26 = *(v24 + 16528);
    *(v25 + 592) = *(v24 + 16512);
    *(v25 + 608) = v26;
    v27 = &impl[v19 / 8];
    v27[3439] = impl[v19 / 8 + 3439] & ~(1 << indexCopy);
    v27[3441] = impl[v19 / 8 + 3441] & ~(1 << indexCopy);
    *(impl[2811] + v16 + 552) = 0;
    return;
  }

  v7 = *(texture + 74);
  v8 = index << 7;
  v9 = impl[2811] + v8;
  v10 = v7[27];
  *(v9 + 560) = v7[26];
  *(v9 + 576) = v10;
  v11 = impl[2811] + v8;
  v12 = v7[29];
  *(v11 + 592) = v7[28];
  *(v11 + 608) = v12;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setTextureInternal<true>(impl, *(texture + 74), index);
  v13 = *(texture + 74);
  if (v13)
  {
    v14 = *(v13 + 592);
    v13 = *(v13 + 600);
  }

  else
  {
    v14 = 0;
  }

  v28 = impl[251];
  v29 = v28[2].i64[1];
  v30 = MEMORY[0x29EDC5638];
  if (*(v29 + 480) != 1)
  {
    goto LABEL_14;
  }

  v31 = v28[3];
  v32 = v28[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v31), vceqzq_s64(v32))))) & 1) == 0)
  {
    goto LABEL_14;
  }

  v33 = texture + *MEMORY[0x29EDC5638];
  if ((v33[23] & 0x10) != 0)
  {
    v33 = *v33;
  }

  v34 = *v33;
  if (!v34)
  {
    goto LABEL_15;
  }

  v35 = *(v34 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v34), vceqzq_s64(v35))))) & 1) == 0)
  {
LABEL_14:
    v34 = 0;
LABEL_15:
    v39 = 0;
    goto LABEL_16;
  }

  v36 = vandq_s8(v35, v32);
  v37 = v36.u64[1];
  if (v36.i64[1])
  {
    v38 = 3;
LABEL_30:
    v44 = &v28->i8[8 * v38];
    v45 = __clz(v37) ^ 0x3F;
    v34 = (*(v44 + 10) >> v45) & 1;
    v39 = (*(v44 + 14) >> v45) & 1;
    goto LABEL_16;
  }

  v37 = v36.i64[0];
  if (v36.i64[0])
  {
    v38 = 2;
    goto LABEL_30;
  }

  v43 = vandq_s8(*v34, v31);
  v37 = v43.u64[1];
  if (v43.i64[1])
  {
    v38 = 1;
    goto LABEL_30;
  }

  v38 = 0;
  v34 = 0;
  v39 = 0;
  v37 = v43.i64[0];
  if (v43.i64[0])
  {
    goto LABEL_30;
  }

LABEL_16:
  v40 = (v29 + 8 * (indexCopy > 0x3F));
  v40[6] = v40[6] & ~(1 << indexCopy) | (v34 << indexCopy);
  v40[26] = v40[26] & ~(1 << indexCopy) | (v39 << indexCopy);
  v40[46] &= ~(1 << indexCopy);
  v41 = 3 * indexCopy;
  v42 = impl + 2882;
  impl[3 * indexCopy + 2882] = texture + *v30;
  if (v14)
  {
    v14 += *v30;
  }

  v42[v41 + 1] = v14;
  if (v13)
  {
    v13 += *v30;
  }

  v42[v41 + 2] = v13;
  if (impl[237])
  {

    MTLResourceListAddResource();
  }
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  indexCopy = index;
  requiresRaytracingEmulation = [(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation];
  impl = self->_impl;
  impl[indexCopy + 3266] = 0;
  if (!requiresRaytracingEmulation)
  {
    if (!structure)
    {
      goto LABEL_8;
    }

    if (indexCopy > 0x1E)
    {
      v10 = (impl[2812] + 8 * (indexCopy - 31) + 1272);
    }

    else
    {
      v10 = (impl[2811] + 8 * indexCopy);
    }

    *v10 = *(structure + 90);
    buffer = [structure buffer];
    v40 = MEMORY[0x29EDC5638];
    v41 = *(buffer + *MEMORY[0x29EDC5638] + 8);
    v42 = *([structure buffer] + *v40 + 24);
    v43 = *([structure buffer] + *v40 + 16);
    v44 = &impl[indexCopy];
    v44[3301] = v41;
    v44[3370] = v42;
    if (indexCopy <= 0x1E)
    {
      v45 = impl[2811];
      *(v45 + 4 * indexCopy + 17516) = v43;
      v46 = (v45 + 8 * indexCopy + 17640);
      *v46 = v43;
      v46[1] = v41 >> 8;
    }

    buffer2 = [structure buffer];
    v44[2813] = buffer2 + *v40;
    v48 = impl[251];
    v49 = v48[2].i64[1];
    if (*(v49 + 480) == 1)
    {
      v50 = v48[3];
      v51 = v48[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v50), vceqzq_s64(v51))))))
      {
        v52 = buffer2 + *v40;
        if ((*(v52 + 23) & 0x10) != 0)
        {
          v52 = *v52;
        }

        v53 = *v52;
        if (!v53)
        {
          goto LABEL_39;
        }

        v54 = *(v53 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v53), vceqzq_s64(v54))))))
        {
          v55 = vandq_s8(v54, v51);
          v56 = v55.u64[1];
          if (v55.i64[1])
          {
            v57 = 3;
          }

          else
          {
            v56 = v55.i64[0];
            if (v55.i64[0])
            {
              v57 = 2;
            }

            else
            {
              v61 = vandq_s8(*v53, v50);
              v56 = v61.u64[1];
              if (v61.i64[1])
              {
                v57 = 1;
              }

              else
              {
                v57 = 0;
                v53 = 0;
                v58 = 0;
                v56 = v61.i64[0];
                if (!v61.i64[0])
                {
                  goto LABEL_40;
                }
              }
            }
          }

          v64 = &v48->i8[8 * v57];
          v65 = __clz(v56) ^ 0x3F;
          v53 = (*(v64 + 10) >> v65) & 1;
          v58 = (*(v64 + 14) >> v65) & 1;
LABEL_40:
          v59 = (v49 + 8 * (indexCopy > 0x3F));
          *v59 = *v59 & ~(1 << indexCopy) | (v53 << indexCopy);
          v59[20] = v59[20] & ~(1 << indexCopy) | (v58 << indexCopy);
          v59[40] &= ~(1 << indexCopy);
          if (impl[237])
          {
            MTLResourceListAddResource();
          }

          goto LABEL_42;
        }
      }
    }

    v53 = 0;
LABEL_39:
    v58 = 0;
    goto LABEL_40;
  }

  if (structure)
  {
    if (indexCopy > 0x1E)
    {
      v9 = (impl[2812] + 8 * (indexCopy - 31) + 1272);
    }

    else
    {
      v9 = (impl[2811] + 8 * indexCopy);
    }

    *v9 = *(structure + 84);
    buffer3 = [structure buffer];
    v18 = MEMORY[0x29EDC5638];
    v19 = *(buffer3 + *MEMORY[0x29EDC5638] + 8);
    v20 = *([structure buffer] + *v18 + 24);
    v21 = *([structure buffer] + *v18 + 16);
    v22 = &impl[indexCopy];
    v22[3301] = v19;
    v22[3370] = v20;
    if (indexCopy <= 0x1E)
    {
      v23 = impl[2811];
      *(v23 + 4 * indexCopy + 17516) = v21;
      v24 = (v23 + 8 * indexCopy + 17640);
      *v24 = v21;
      v24[1] = v19 >> 8;
    }

    buffer4 = [structure buffer];
    v22[2813] = buffer4 + *v18;
    v26 = impl[251];
    v27 = v26[2].i64[1];
    if (*(v27 + 480) == 1)
    {
      v28 = v26[3];
      v29 = v26[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v28), vceqzq_s64(v29))))))
      {
        v30 = buffer4 + *v18;
        if ((*(v30 + 23) & 0x10) != 0)
        {
          v30 = *v30;
        }

        v31 = *v30;
        if (!v31)
        {
          goto LABEL_23;
        }

        v32 = *(v31 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v31), vceqzq_s64(v32))))))
        {
          v33 = vandq_s8(v32, v29);
          v34 = v33.u64[1];
          if (v33.i64[1])
          {
            v35 = 3;
LABEL_53:
            v62 = &v26->i8[8 * v35];
            v63 = __clz(v34) ^ 0x3F;
            v31 = (*(v62 + 10) >> v63) & 1;
            v36 = (*(v62 + 14) >> v63) & 1;
            goto LABEL_24;
          }

          v34 = v33.i64[0];
          if (v33.i64[0])
          {
            v35 = 2;
            goto LABEL_53;
          }

          v60 = vandq_s8(*v31, v28);
          v34 = v60.u64[1];
          if (v60.i64[1])
          {
            v35 = 1;
            goto LABEL_53;
          }

          v35 = 0;
          v31 = 0;
          v36 = 0;
          v34 = v60.i64[0];
          if (v60.i64[0])
          {
            goto LABEL_53;
          }

LABEL_24:
          v37 = (v27 + 8 * (indexCopy > 0x3F));
          *v37 = *v37 & ~(1 << indexCopy) | (v31 << indexCopy);
          v37[20] = v37[20] & ~(1 << indexCopy) | (v36 << indexCopy);
          v37[40] &= ~(1 << indexCopy);
          if (impl[237])
          {
            MTLResourceListAddResource();
          }

          v38 = *(structure + 43);
          os_unfair_lock_lock(v38 + 194);
          os_unfair_lock_assert_owner((*(structure + 43) + 776));
          os_unfair_lock_unlock(v38 + 194);
LABEL_42:
          [structure buffer];
          goto LABEL_43;
        }
      }
    }

    v31 = 0;
LABEL_23:
    v36 = 0;
    goto LABEL_24;
  }

LABEL_8:
  v11 = &impl[indexCopy];
  v11[2813] = 0;
  v12 = impl[289];
  if (indexCopy >= 0x1F)
  {
    v16 = impl[2812] + 8 * (indexCopy - 31);
    *(v16 + 1272) = v12;
    *(v16 + 1576) = 0;
    v11[3301] = impl[289];
    v11[3370] = 0;
  }

  else
  {
    v13 = impl[2811];
    v14 = (v13 + 8 * indexCopy);
    *v14 = v12;
    v14[31] = 0;
    v15 = &impl[indexCopy];
    *(v15 + 3301) = impl[289];
    *(v15 + 3370) = 0;
    *(v13 + 4 * indexCopy + 17516) = 0;
    v14[2205] = 0;
  }

LABEL_43:
  impl[(indexCopy > 0x3F) + 3445] |= 1 << indexCopy;
  *(impl + 6898) |= 1u;
}

- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  impl = self->_impl;
  v6 = &impl[index];
  v7 = *(v6 + 3301);
  v8 = *(v6 + 3370);
  v9 = v7 + offset;
  if (index >= 0x1F)
  {
    v13 = impl[2812] + 8 * (index - 31);
    *(v13 + 1272) = v9;
    *(v13 + 1576) = v8 + offset;
  }

  else
  {
    v10 = impl[2811];
    v11 = v10 + 8 * index;
    *v11 = v9;
    *(v11 + 248) = v8 + offset;
    v12 = v10 + 4 * index;
    *(v12 + 17392) = stride;
    *(v11 + 17640) = *(v12 + 17516);
  }

  *(impl + 6898) |= 1u;
}

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  impl = self->_impl;
  v5 = &impl[index];
  v6 = *(v5 + 3301);
  v7 = *(v5 + 3370);
  v8 = v6 + offset;
  if (index >= 0x1F)
  {
    v12 = impl[2812] + 8 * (index - 31);
    *(v12 + 1272) = v8;
    *(v12 + 1576) = v7 + offset;
  }

  else
  {
    v9 = impl[2811];
    v10 = v9 + 8 * index;
    *v10 = v8;
    *(v10 + 248) = v7 + offset;
    v11 = v9 + 4 * index;
    *(v11 + 17392) = 0;
    *(v10 + 17640) = *(v11 + 17516);
  }

  *(impl + 6898) |= 1u;
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = AGXG18PFamilyComputeContext;
    [(IOGPUMetalComputeCommandEncoder *)&v9 setIntersectionFunctionTables:tables withBufferRange:location, length];
  }

  else
  {
    for (; length; --length)
    {
      v8 = *tables++;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setIntersectionFunctionTable(self->_impl, v8, location);
      LODWORD(location) = location + 1;
    }
  }
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation])
  {
    v8.receiver = self;
    v8.super_class = AGXG18PFamilyComputeContext;
    [(IOGPUMetalComputeCommandEncoder *)&v8 setIntersectionFunctionTable:table atBufferIndex:index];
  }

  else
  {
    impl = self->_impl;

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setIntersectionFunctionTable(impl, table, index);
  }
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer(self->_impl, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer(self->_impl, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index
{
  impl = self->_impl;
  if ((index + 68) > 0x1E)
  {
    v6 = impl[2812] + 8 * (index + 37);
    *(v6 + 1272) = i;
    *(v6 + 1576) = 0;
  }

  else
  {
    v5 = (impl[2811] + 8 * (index + 68));
    *v5 = i;
    v5[31] = 0;
  }
}

- (void)setComputePipelineState:(id)state
{
  impl = self->_impl;
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(impl, state + 112);
  *(impl + 2305) = 1;
}

- (void)insertCompressedTextureReinterpretationFlush
{
  impl = self->_impl;
  v3 = *(impl + 27613);
  v4 = impl[6906] != 0;
  v5 = impl[6907];
  v7 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 6), 4, v3, v4, v5, &v7);
  v6 = *(impl + 97);
  *v6 = 1610613116;
  *(impl + 97) = v6 + 1;
}

- (id)reInitWithCommandBuffer:(id)buffer
{
  impl = self->_impl;
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
    impl = self->_impl;
  }

  v6 = *(impl[234] + 848);
  v7 = *(v6 + 6320);
  if (*(impl + 6902) != v7)
  {
    v8 = *(v6 + 6832);
    if (v8)
    {
      do
      {
        IOGPUResourceListAddResource();
        v8 = *v8;
      }

      while (v8);
      v6 = *(impl[234] + 848);
    }

    for (i = *(v6 + 6664); i; i = *i)
    {
      IOGPUResourceListAddResource();
    }

    *(impl + 6902) = v7;
  }

  bufferCopy = buffer;
  v11 = *MEMORY[0x29EDBB780];
  *(&self->super.super.super.super.super.isa + v11) = bufferCopy;
  v12 = *(*(bufferCopy + 86) + 96);
  [(IOGPUMetalCommandEncoder *)self setLabel:&stru_2A23FAE10];
  v13 = self->_impl;
  if (*(v13 + 6906) >= 2u)
  {
    *(v13 + 6907) = 0;
    *(v13 + 3454) = 0;
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v13 + 3457));
    *(v13 + 3456) = v13 + 27656;
    *(v13 + 27656) = 0u;
  }

  [*(&self->super.super.super.super.super.isa + v11) setCurrentCommandEncoder:self];
  if ([*(&self->super.super.super.super.super.isa + v11) getSupportedAndEnabledErrorOptions])
  {
    [(MTLDevice *)[(_MTLCommandEncoder *)self device] deviceRef];
    self->_markerID = IOGPUDeviceGetNextGlobalTraceID();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::issueProgressMarkerDispatch(self->_impl, [(IOGPUMetalCommandEncoder *)self globalTraceObjectID], v12);
  }

  [buffer setPreviousComputeCommandEncoder:0];
  return self;
}

- (void)deferredEndEncoding
{
  if (self->_impl)
  {
    if (-[IOGPUMetalCommandEncoder globalTraceObjectID](self, "globalTraceObjectID") != self->_markerID && ([*self->_impl getSupportedAndEnabledErrorOptions] & 1) != 0)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::issueProgressMarkerDispatch(self->_impl, [(IOGPUMetalCommandEncoder *)self globalTraceObjectID], self->_markerID);
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(self->_impl, 0, 22);
  }

  [(AGXG18PFamilyComputeContext *)self destroyImpl];
}

- (void)endEncoding
{
  if (self->_impl)
  {
    v3 = *MEMORY[0x29EDBB780];
    v4 = *(&self->super.super.super.super.super.isa + v3);
    if (!v4)
    {
      MTLReportFailure();
      v4 = *(&self->super.super.super.super.super.isa + v3);
    }

    device = [v4 device];
    impl = self->_impl;
    v7 = impl[3529];
    v8 = impl[3530];
    atomic_fetch_or((device + 856), v7);
    atomic_fetch_or((device + 864), v8);
    v9 = self->_impl;
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
      v9 = self->_impl;
    }

    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::checkCoalescingMemoryThreshold(void)::coalescing_threshold_override = 0;
    }

    v10 = v9[239];
    v11 = *(v10 + 528);
    v12 = v11 - *(v10 + 520);
    v13 = v11 >> 4;
    if (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::checkCoalescingMemoryThreshold(void)::coalescing_threshold_override)
    {
      v13 = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::checkCoalescingMemoryThreshold(void)::coalescing_threshold_override;
    }

    if (v12 >= v13)
    {
      goto LABEL_51;
    }

    v14 = self->_impl;
    v15 = v14[507];
    v16 = v14[575];
    if ([(AGXG18PFamilyComputeContext *)self dispatchType]== 1)
    {
      v17 = v16 & v15;
      v18 = self->_impl;
      if (*(v18 + 574) == 1 && v17 == 0)
      {
        v20 = v18[3452];
        if (!v20)
        {
          operator new();
        }

        v21 = *(v20 + 24);
        if (v21)
        {
          v22 = *(v20 + 56);
          if (v22)
          {
            v23 = *(v20 + 48);
            v24 = v22 - 1;
            if ((v22 & (v22 - 1)) != 0)
            {
              do
              {
                v26 = v21[2];
                v27 = v26;
                if (v22 <= v26)
                {
                  v27 = v26 % v22;
                }

                v28 = *(v23 + 8 * v27);
                if (v28)
                {
                  while (1)
                  {
                    v28 = *v28;
                    if (!v28)
                    {
                      break;
                    }

                    v29 = v28[1];
                    if (v29 == v26)
                    {
                      if (*(v28 + 4) == v26)
                      {
                        if ((*(v28 + 20) & 2) == 0 && (v26 & 0x200000000) == 0)
                        {
                          break;
                        }

                        goto LABEL_49;
                      }
                    }

                    else
                    {
                      if (v29 >= v22)
                      {
                        v29 %= v22;
                      }

                      if (v29 != v27)
                      {
                        break;
                      }
                    }
                  }
                }

                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              v25 = v22 - 1;
              do
              {
                v30 = v21[2];
                v31 = v25 & v30;
                v32 = *(v23 + 8 * v31);
                if (v32)
                {
                  while (1)
                  {
                    v32 = *v32;
                    if (!v32)
                    {
                      break;
                    }

                    v33 = v32[1];
                    if (v33 == v30)
                    {
                      if (*(v32 + 4) == v30)
                      {
                        if ((*(v32 + 20) & 2) == 0 && (v30 & 0x200000000) == 0)
                        {
                          break;
                        }

                        goto LABEL_49;
                      }
                    }

                    else if ((v33 & v24) != v31)
                    {
                      break;
                    }
                  }
                }

                v21 = *v21;
              }

              while (v21);
            }
          }
        }

        if (*v20)
        {
          **v20 = 1610612736;
        }
      }
    }

LABEL_49:
    v34 = *(&self->super.super.super.super.super.isa + v3);
    if (v34[728])
    {
LABEL_51:
      [(AGXG18PFamilyComputeContext *)self deferredEndEncoding];
    }

    else
    {
      [v34 setPreviousComputeCommandEncoder:self];
    }
  }

  v35.receiver = self;
  v35.super_class = AGXG18PFamilyComputeContext;
  [(IOGPUMetalCommandEncoder *)&v35 endEncoding];
}

- (void)dealloc
{
  [(AGXG18PFamilyComputeContext *)self destroyImpl];
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyComputeContext;
  [(_MTLCommandEncoder *)&v3 dealloc];
}

- (void)destroyImpl
{
  if (self->_impl)
  {
    v3 = *([(_MTLCommandEncoder *)self device]+ 848);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::~ComputeContext(self->_impl);
    impl = self->_impl;
    if (impl)
    {
      os_unfair_lock_lock(v3 + 3951);
      os_unfair_lock_opaque = v3[3950]._os_unfair_lock_opaque;
      if (os_unfair_lock_opaque > 7)
      {
        os_unfair_lock_unlock(v3 + 3951);
        free(impl);
      }

      else
      {
        v3[3950]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
        *&v3[2 * os_unfair_lock_opaque + 3952]._os_unfair_lock_opaque = impl;
        os_unfair_lock_unlock(v3 + 3951);
      }
    }

    self->_impl = 0;
  }
}

- (AGXG18PFamilyComputeContext)initWithCommandBuffer:(id)buffer config:(EncoderComputeServiceConfigA *)config
{
  v24.receiver = self;
  v24.super_class = AGXG18PFamilyComputeContext;
  v6 = [(IOGPUMetalCommandEncoder *)&v24 initWithCommandBuffer:?];
  if (!v6)
  {
    return v6;
  }

  v7 = *([buffer device] + 848);
  if (*(v7 + 15792) >> 4 <= 0x6F6uLL)
  {
    v6->_impl = 0;
    goto LABEL_14;
  }

  os_unfair_lock_lock((v7 + 15804));
  v8 = *(v7 + 15800);
  if (!v8)
  {
    os_unfair_lock_unlock((v7 + 15804));
LABEL_7:
    v12 = malloc_type_calloc(*(v7 + 15792), 1uLL, 0x689CC946uLL);
    p_impl = &v6->_impl;
    v6->_impl = v12;
    if (v12)
    {
      v10 = v12;
      goto LABEL_9;
    }

LABEL_14:
    [(AGXG18PFamilyComputeContext *)v6 endEncoding];

    return 0;
  }

  v9 = v8 - 1;
  *(v7 + 15800) = v9;
  v10 = *(v7 + 8 * v9 + 15808);
  os_unfair_lock_unlock((v7 + 15804));
  if (!v10)
  {
    goto LABEL_7;
  }

  bzero(v10, *(v7 + 15792));
  p_impl = &v6->_impl;
  v6->_impl = v10;
LABEL_9:
  config->var2 = v6;
  var1 = config->var1;
  var0 = config->var0;
  var4 = config->var4;
  var5 = config->var5;
  var6 = config->var6;
  var7 = config->var7;
  *v29 = *(&config->var7 + 1);
  *&v29[3] = config->var8;
  var9 = config->var9;
  *v31 = *(&config->var9 + 1);
  *&v31[7] = config->var10;
  v23 = *&config->var3;
  numThisEncoder = [(_MTLCommandEncoder *)v6 numThisEncoder];
  v32[0] = var1;
  v32[1] = var4;
  v33 = var5;
  v34 = v23;
  v35 = numThisEncoder;
  v36 = var6;
  v37 = var7;
  v38 = var9;
  usedForRaytracingEmulation = [var4 usedForRaytracingEmulation];
  v25[0] = var0;
  v25[1] = var1;
  v25[2] = v6;
  v25[3] = v23;
  v25[4] = var4;
  v26 = var5;
  v27 = var6;
  v28 = var7;
  v30 = var9;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ComputeContext<AGX::HAL300::EncoderComputeServiceConfigA>(v10, v32, v25);
  v20 = *p_impl;
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
    v20 = *p_impl;
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginComputePass(v20, 0, 22);
  if ([*(&v6->super.super.super.super.super.isa + *MEMORY[0x29EDBB780]) getSupportedAndEnabledErrorOptions])
  {
    v6->_markerID = [(IOGPUMetalCommandEncoder *)v6 globalTraceObjectID];
  }

  return v6;
}

@end