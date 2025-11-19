@interface AGXG18PFamilyBlitContext
- (AGXG18PFamilyBlitContext)initWithCommandBuffer:(id)a3 descriptor:(id)a4;
- (BOOL)commandBatchIdRangeMin:(unsigned int *)a3 max:(unsigned int *)a4;
- (BOOL)setMTLCounterSampleLocationWithBuffer:(id)a3 startIndex:(unsigned int)a4 endIndex:(unsigned int)a5;
- (__n128)copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:;
- (__n128)copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:;
- (__n128)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:;
- (__n128)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:;
- (__n128)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:;
- (__n128)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:;
- (__n128)copyFromTexture:sourceSlice:sourceLevel:toTexture:destinationSlice:destinationLevel:sliceCount:levelCount:;
- (__n128)fillBuffer:range:value:;
- (__n128)fillTexture:level:slice:region:bytes:length:;
- (__n128)invalidateCompressedTexture:slice:level:;
- (__n128)optimizeContentsForCPUAccess:slice:level:;
- (__n128)optimizeContentsForGPUAccess:slice:level:;
- (__n128)optimizeContentsForTexture:readAccessPattern:readAccessor:;
- (__n128)optimizeContentsForTexture:readAccessPattern:readAccessor:slice:level:;
- (id)reInitWithCommandBuffer:(id)a3;
- (uint64_t)generateMipmapsForTexture:;
- (uint64_t)invalidateCompressedTexture:;
- (uint64_t)optimizeContentsForCPUAccess:;
- (uint64_t)optimizeContentsForGPUAccess:;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:;
- (void)copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:;
- (void)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:;
- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:;
- (void)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:;
- (void)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:;
- (void)copyFromTexture:sourceSlice:sourceLevel:toTexture:destinationSlice:destinationLevel:sliceCount:levelCount:;
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
- (void)dealloc;
- (void)deferredEndEncoding;
- (void)endEncoding;
- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5;
- (void)fillBuffer:(id)a3 range:(_NSRange)a4 value:(unsigned __int8)a5;
- (void)fillBuffer:range:value:;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)fillTexture:level:slice:region:bytes:length:;
- (void)filterCounterRangeWithFirstBatch:(unsigned int)a3 lastBatch:(unsigned int)a4 filterIndex:(unsigned int)a5;
- (void)generateMipmapsForTexture:;
- (void)generateMipmapsForTexture:(id)a3;
- (void)getTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6 resetCounters:(BOOL)a7 countersBuffer:(id)a8 countersBufferOffset:(unint64_t)a9;
- (void)invalidateCompressedTexture:(id)a3;
- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)optimizeContentsForCPUAccess:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:(id)a3;
- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:slice:level:;
- (void)optimizeContentsForTexture:(id)a3 readAccessPattern:(int64_t)a4 readAccessor:(int64_t)a5;
- (void)optimizeContentsForTexture:(id)a3 readAccessPattern:(int64_t)a4 readAccessor:(int64_t)a5 slice:(unint64_t)a6 level:(unint64_t)a7;
- (void)optimizeContentsForTexture:readAccessPattern:readAccessor:;
- (void)optimizeContentsForTexture:readAccessPattern:readAccessor:slice:level:;
- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)resetTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6;
- (void)resolveCounters:(id)a3 inRange:(_NSRange)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6;
- (void)updateFence:(id)a3;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7;
- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8;
- (void)waitForFence:(id)a3;
@end

@implementation AGXG18PFamilyBlitContext

- (void)resolveCounters:(id)a3 inRange:(_NSRange)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  v37 = *MEMORY[0x29EDCA608];
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v14 = ctx_compute[6];
    if (*(v14 + 1240) && *(v14 + 1248))
    {
      goto LABEL_8;
    }

    v15 = ctx_compute[85];
    if (!v15)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_39;
      }

      v15 = ctx_compute[85];
    }

    v16 = v15 + 16;
    if ((v15 + 16) > ctx_compute[84])
    {
      v29 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v15 = ctx_compute[85];
      if (!v29)
      {
        goto LABEL_7;
      }

      v16 = v15 + 16;
      if ((v15 + 16) > ctx_compute[84])
      {
        goto LABEL_39;
      }
    }

    ctx_compute[86] = v16;
LABEL_7:
    ctx_compute[85] = v15 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v17 = ctx_compute[6];
    if (*(v17 + 1240) && *(v17 + 1248))
    {
      goto LABEL_14;
    }

    v18 = ctx_compute[85];
    if (!v18)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_39;
      }

      v18 = ctx_compute[85];
    }

    v19 = v18 + 16;
    if ((v18 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v30 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v18 = ctx_compute[85];
    if (!v30)
    {
      goto LABEL_13;
    }

    v19 = v18 + 16;
    if ((v18 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v19;
LABEL_13:
      ctx_compute[85] = v18 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_39:
    abort();
  }

LABEL_15:
  if (length)
  {
    impl = self->_impl;
    if (length + location <= [a3 sampleCount])
    {
      v21 = [a3 buffer];
      if (impl[58] != -1 && [a3 buffer] == *(impl + 28))
      {
        v26 = impl[58];
        if (v26 >= location && v26 < length + location)
        {
          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(impl, 0, v22, v23, v24, v25);
          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(impl, 0);
        }
      }

      *(impl + 240) = 1;
      v28 = [a3 sampleSize];
      AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToBuffer(impl, a5, a6, v21, v28 * location, v28 * length);
      *(impl + 240) = 0;
    }

    else
    {
      fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Cannot resolve MTLCounter data: out of bounds access\n", "agxa_blit_legacy_template.hpp", 3577, "resolveCounters");
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "agxa_blit_legacy_template.hpp";
        v33 = 1024;
        v34 = 3577;
        v35 = 2080;
        v36 = "resolveCounters";
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Cannot resolve MTLCounter data: out of bounds access\n", buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v32 = "agxa_blit_legacy_template.hpp";
        v33 = 1024;
        v34 = 3577;
        v35 = 2080;
        v36 = "resolveCounters";
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Cannot resolve MTLCounter data: out of bounds access\n", buf, 0x1Cu);
      }
    }
  }
}

- (BOOL)setMTLCounterSampleLocationWithBuffer:(id)a3 startIndex:(unsigned int)a4 endIndex:(unsigned int)a5
{
  if (self->encodingLegacyBlit)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_24:
    LOBYTE(v12) = 0;
    return v12;
  }

  ctx_compute = self->_ctx_compute;
  impl_compute = self->_impl_compute;
  v15 = ctx_compute[6];
  if (!*(v15 + 1240) || !*(v15 + 1248))
  {
    v16 = ctx_compute[85];
    if (!v16)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_35;
      }

      v16 = ctx_compute[85];
    }

    v17 = v16 + 16;
    if ((v16 + 16) > ctx_compute[84])
    {
      v21 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v16 = ctx_compute[85];
      if (!v21)
      {
        goto LABEL_16;
      }

      v17 = v16 + 16;
      if ((v16 + 16) > ctx_compute[84])
      {
        goto LABEL_35;
      }
    }

    ctx_compute[86] = v17;
LABEL_16:
    ctx_compute[85] = v16 + 16;
  }

  IOGPUResourceListAddResource();
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
  *(impl_compute + 1192) = 0;
  *(impl_compute + 2348) = 0;
  v18 = ctx_compute[6];
  if (!*(v18 + 1240) || !*(v18 + 1248))
  {
    v19 = ctx_compute[85];
    if (!v19)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_35;
      }

      v19 = ctx_compute[85];
    }

    v20 = v19 + 16;
    if ((v19 + 16) <= ctx_compute[84])
    {
      goto LABEL_21;
    }

    v22 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v19 = ctx_compute[85];
    if (!v22)
    {
      goto LABEL_22;
    }

    v20 = v19 + 16;
    if ((v19 + 16) <= ctx_compute[84])
    {
LABEL_21:
      ctx_compute[86] = v20;
LABEL_22:
      ctx_compute[85] = v19 + 16;
      goto LABEL_23;
    }

LABEL_35:
    abort();
  }

LABEL_23:
  IOGPUResourceListAddResource();
  self->encodingLegacyBlit = 1;
  if (!a3)
  {
    goto LABEL_24;
  }

LABEL_3:
  impl = self->_impl;
  v10 = *(*(impl + 1) + 1896);
  *(impl + 58) = a4;
  *(impl + 59) = a5;
  v11 = AGX::CounterSamplingContextGen1::validateSampleIndex(a3, impl + 58);
  v12 = AGX::CounterSamplingContextGen1::validateSampleIndex(a3, impl + 59);
  if ((v11 & 1) != 0 || v12)
  {
    v12 = AGX::CounterSamplingContextGen1::setCounterSampleBuffer((impl + 224), a3);
    if (v12)
    {
      if (*(impl + 28))
      {
        if (v10)
        {
          MTLResourceListAddResource();
        }

        IOGPUResourceListAddResource();
      }

      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (BOOL)commandBatchIdRangeMin:(unsigned int *)a3 max:(unsigned int *)a4
{
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v9 = ctx_compute[6];
    if (*(v9 + 1240) && *(v9 + 1248))
    {
      goto LABEL_8;
    }

    v10 = ctx_compute[85];
    if (!v10)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_27;
      }

      v10 = ctx_compute[85];
    }

    v11 = v10 + 16;
    if ((v10 + 16) > ctx_compute[84])
    {
      v17 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v10 = ctx_compute[85];
      if (!v17)
      {
        goto LABEL_7;
      }

      v11 = v10 + 16;
      if ((v10 + 16) > ctx_compute[84])
      {
        goto LABEL_27;
      }
    }

    ctx_compute[86] = v11;
LABEL_7:
    ctx_compute[85] = v10 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v12 = ctx_compute[6];
    if (*(v12 + 1240) && *(v12 + 1248))
    {
      goto LABEL_14;
    }

    v13 = ctx_compute[85];
    if (!v13)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_27;
      }

      v13 = ctx_compute[85];
    }

    v14 = v13 + 16;
    if ((v13 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v18 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v13 = ctx_compute[85];
    if (!v18)
    {
      goto LABEL_13;
    }

    v14 = v13 + 16;
    if ((v13 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v14;
LABEL_13:
      ctx_compute[85] = v13 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_27:
    abort();
  }

LABEL_15:
  v15 = *(self->_impl + 1);

  return AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::userDrawTokenIndex(v15, a3, a4);
}

- (void)filterCounterRangeWithFirstBatch:(unsigned int)a3 lastBatch:(unsigned int)a4 filterIndex:(unsigned int)a5
{
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v10 = ctx_compute[6];
    if (*(v10 + 1240) && *(v10 + 1248))
    {
      goto LABEL_8;
    }

    v11 = ctx_compute[85];
    if (!v11)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v11 = ctx_compute[85];
    }

    v12 = v11 + 16;
    if ((v11 + 16) > ctx_compute[84])
    {
      v17 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v11 = ctx_compute[85];
      if (!v17)
      {
        goto LABEL_7;
      }

      v12 = v11 + 16;
      if ((v11 + 16) > ctx_compute[84])
      {
        goto LABEL_25;
      }
    }

    ctx_compute[86] = v12;
LABEL_7:
    ctx_compute[85] = v11 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v13 = ctx_compute[6];
    if (*(v13 + 1240) && *(v13 + 1248))
    {
      goto LABEL_14;
    }

    v14 = ctx_compute[85];
    if (!v14)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v14 = ctx_compute[85];
    }

    v15 = v14 + 16;
    if ((v14 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v18 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v14 = ctx_compute[85];
    if (!v18)
    {
      goto LABEL_13;
    }

    v15 = v14 + 16;
    if ((v14 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v15;
LABEL_13:
      ctx_compute[85] = v14 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_25:
    abort();
  }

LABEL_15:
  v16 = *(self->_impl + 1);
  *(v16 + 1932) = a3;
  *(v16 + 1936) = a4;
}

- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v8 = a4.var1;
  v9 = a4.var0;
  v10 = self;
  switchContextIfNeededImpl(1, &self->encodingLegacyBlit, self->_impl_compute, self->_impl, self->_ctx_compute);
  impl_compute = v10->_impl_compute;
  v11 = *impl_compute;
  *(v11 + 1944) = *(*impl_compute + 1940);
  v12 = *(v11 + 168);
  v13 = v12 + 784;
  if ((v12 + 784) <= *(v11 + 160))
  {
LABEL_2:
    *(v11 + 176) = v13;
    goto LABEL_3;
  }

  v43 = AGX::DataBufferAllocator<44ul>::growNoInline(v11 + 24, 3, 0);
  v12 = *(v11 + 168);
  if (v43)
  {
    v13 = v12 + 784;
    if ((v12 + 784) > *(v11 + 160))
    {
      abort();
    }

    goto LABEL_2;
  }

LABEL_3:
  v48 = *(v11 + 184);
  *(v11 + 168) = v12 + 784;
  v14 = *[v8 tensorExtentsInternal];
  v15 = *[var1 tensorExtentsInternal];
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  *(v12 + 772) = v16;
  *(v12 + 776) = v14;
  *(v12 + 780) = v15;
  v50 = v12;
  if (v14)
  {
    v44 = v15;
    v45 = v11;
    v46 = a5;
    v47 = v10;
    v17 = 0;
    v18 = (v12 + 256);
    v19 = 1;
    v20 = 1;
    do
    {
      v21 = *([v8 tensorExtentsInternal] + 8 * v17 + 8);
      if (v21)
      {
        *(v18 - 32) = *([v9 tensorExtentsInternal] + 8 * v17 + 8);
        v20 *= v21;
        v18[32] = v20;
        *v18 = *(*(a3 + 41) + 8 * v17 + 192);
        v19 *= v21;
      }

      ++v17;
      ++v18;
    }

    while (v14 != v17);
  }

  else
  {
    if (*(*(a3 + 41) + 337))
    {
      goto LABEL_31;
    }

    v44 = v15;
    v45 = v11;
    v46 = a5;
    v47 = v10;
    v19 = 1;
    *(v12 + 776) = 1;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    *(v12 + 772) = v16;
    *v12 = 0;
    *(v12 + 512) = 1;
    *(v12 + 256) = 1;
  }

  if (v44)
  {
    v22 = 0;
    v23 = (v50 + 384);
    v24 = 1;
    v26 = v45;
    v25 = v46;
    do
    {
      v27 = *([var1 tensorExtentsInternal] + 8 * v22 + 8);
      if (v27)
      {
        *(v23 - 32) = *([var0 tensorExtentsInternal] + 8 * v22 + 8);
        v24 *= v27;
        v23[32] = v24;
        *v23 = *(v46[41] + 8 * v22 + 192);
      }

      ++v22;
      ++v23;
    }

    while (v44 != v22);
    v10 = v47;
    v28 = a3;
  }

  else
  {
    v25 = v46;
    v10 = v47;
    v26 = v45;
    v28 = a3;
    if (*(v46[41] + 337))
    {
      goto LABEL_31;
    }

    *(v50 + 780) = 1;
    v42 = *(v50 + 772);
    if (v42 <= 1)
    {
      v42 = 1;
    }

    *(v50 + 772) = v42;
    *(v50 + 128) = 0;
    *(v50 + 640) = 1;
    *(v50 + 384) = 1;
  }

  v29 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(v28[41] + 24)];
  *(v50 + 768) = v29;
  v54 = 103;
  v56 = 0;
  v57 = 0;
  __p = 0;
  v53 = &unk_2A23F7488;
  v58 = 0;
  TensorBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTensorBlitPipeline(*(impl_compute[7] + 848), &v53);
  v31 = *(*(TensorBlitPipeline + 16) + 4064);
  v32 = *impl_compute;
  v33 = *v28[41] + *(v28[41] + 32) * v29;
  v34 = MEMORY[0x29EDC5638];
  v35 = v28 + *MEMORY[0x29EDC5638];
  *(v32 + 26408) = v33;
  v36 = *(v32 + 22488);
  *v36 = v33;
  *(v32 + 22504) = v35;
  *(v32 + 27560) |= 1uLL;
  LODWORD(v35) = *(v32 + 27592) | 1;
  v37 = *v25[41] + *(v25[41] + 32) * v29;
  v38 = *v34;
  *(v32 + 26416) = v37;
  v36[1] = v37;
  *(v32 + 22512) = v25 + v38;
  *(v32 + 27560) |= 2uLL;
  v39 = *(*(v26 + 48) + 224) + v38;
  *(v32 + 26424) = v48 + v50;
  v36[2] = v48 + v50;
  *(v32 + 22520) = v39;
  *(v32 + 27560) |= 4uLL;
  *(v32 + 27592) = v35;
  *(v32 + 2060) |= 2u;
  if (v19 >= v31)
  {
    v40 = v31;
  }

  else
  {
    v40 = v19;
  }

  v61 = v19;
  v62 = vdupq_n_s64(1uLL);
  v59 = v40;
  v60 = v62;
  v41 = *(v32 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v32, TensorBlitPipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v32, 0x16u, &v61, &v59);
  if (*(v32 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v32, 22, 0, 0);
  }

  if (v41)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v32, v41);
  }

  v53 = &unk_2A23F74C8;
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

LABEL_31:
  *(*v10->_impl_compute + 1948) = *(*v10->_impl_compute + 1940);
}

- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4
{
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v7 = ctx_compute[6];
    if (*(v7 + 1240) && *(v7 + 1248))
    {
      goto LABEL_8;
    }

    v8 = ctx_compute[85];
    if (!v8)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v8 = ctx_compute[85];
    }

    v9 = v8 + 16;
    if ((v8 + 16) > ctx_compute[84])
    {
      v13 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v8 = ctx_compute[85];
      if (!v13)
      {
        goto LABEL_7;
      }

      v9 = v8 + 16;
      if ((v8 + 16) > ctx_compute[84])
      {
        goto LABEL_25;
      }
    }

    ctx_compute[86] = v9;
LABEL_7:
    ctx_compute[85] = v8 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v10 = ctx_compute[6];
    if (*(v10 + 1240) && *(v10 + 1248))
    {
      goto LABEL_14;
    }

    v11 = ctx_compute[85];
    if (!v11)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v11 = ctx_compute[85];
    }

    v12 = v11 + 16;
    if ((v11 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v14 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v11 = ctx_compute[85];
    if (!v14)
    {
      goto LABEL_13;
    }

    v12 = v11 + 16;
    if ((v11 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v12;
LABEL_13:
      ctx_compute[85] = v11 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      return;
    }

LABEL_25:
    abort();
  }
}

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  v6 = a6;
  length = a4.length;
  location = a4.location;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v14 = ctx_compute[6];
    if (*(v14 + 1240) && *(v14 + 1248))
    {
      goto LABEL_8;
    }

    v15 = ctx_compute[85];
    if (!v15)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_27;
      }

      v15 = ctx_compute[85];
    }

    v16 = v15 + 16;
    if ((v15 + 16) > ctx_compute[84])
    {
      v24 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v15 = ctx_compute[85];
      if (!v24)
      {
        goto LABEL_7;
      }

      v16 = v15 + 16;
      if ((v15 + 16) > ctx_compute[84])
      {
        goto LABEL_27;
      }
    }

    ctx_compute[86] = v16;
LABEL_7:
    ctx_compute[85] = v15 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v17 = ctx_compute[6];
    if (*(v17 + 1240) && *(v17 + 1248))
    {
      goto LABEL_14;
    }

    v18 = ctx_compute[85];
    if (!v18)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_27;
      }

      v18 = ctx_compute[85];
    }

    v19 = v18 + 16;
    if ((v18 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v25 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v18 = ctx_compute[85];
    if (!v25)
    {
      goto LABEL_13;
    }

    v19 = v18 + 16;
    if ((v18 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v19;
LABEL_13:
      ctx_compute[85] = v18 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_27:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  v21 = *(a5 + 52);
  v22 = *(a3 + 52);
  v23 = *(a3 + 102) == 0;

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCopyICBWithTA(impl, v21, v6, v22, location, length, v23);
}

- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v10 = ctx_compute[6];
    if (*(v10 + 1240) && *(v10 + 1248))
    {
      goto LABEL_8;
    }

    v11 = ctx_compute[85];
    if (!v11)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_27;
      }

      v11 = ctx_compute[85];
    }

    v12 = v11 + 16;
    if ((v11 + 16) > ctx_compute[84])
    {
      v19 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v11 = ctx_compute[85];
      if (!v19)
      {
        goto LABEL_7;
      }

      v12 = v11 + 16;
      if ((v11 + 16) > ctx_compute[84])
      {
        goto LABEL_27;
      }
    }

    ctx_compute[86] = v12;
LABEL_7:
    ctx_compute[85] = v11 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v13 = ctx_compute[6];
    if (*(v13 + 1240) && *(v13 + 1248))
    {
      goto LABEL_14;
    }

    v14 = ctx_compute[85];
    if (!v14)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_27;
      }

      v14 = ctx_compute[85];
    }

    v15 = v14 + 16;
    if ((v14 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v20 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v14 = ctx_compute[85];
    if (!v20)
    {
      goto LABEL_13;
    }

    v15 = v14 + 16;
    if ((v14 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v15;
LABEL_13:
      ctx_compute[85] = v14 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_27:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  v17 = *(a3 + 52);
  v18 = *(a3 + 102) == 0;

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitResetICBWithTA(impl, v17, location, length, v18);
}

- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v13 = a4;
  v27[0] = *a6;
  v27[1] = *a7;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v18 = ctx_compute[6];
    if (*(v18 + 1240) && *(v18 + 1248))
    {
      goto LABEL_8;
    }

    v19 = ctx_compute[85];
    if (!v19)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v19 = ctx_compute[85];
    }

    v20 = v19 + 16;
    if ((v19 + 16) > ctx_compute[84])
    {
      v25 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v19 = ctx_compute[85];
      if (!v25)
      {
        goto LABEL_7;
      }

      v20 = v19 + 16;
      if ((v19 + 16) > ctx_compute[84])
      {
        goto LABEL_25;
      }
    }

    ctx_compute[86] = v20;
LABEL_7:
    ctx_compute[85] = v19 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v21 = ctx_compute[6];
    if (*(v21 + 1240) && *(v21 + 1248))
    {
      goto LABEL_14;
    }

    v22 = ctx_compute[85];
    if (!v22)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v22 = ctx_compute[85];
    }

    v23 = v22 + 16;
    if ((v22 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v26 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v22 = ctx_compute[85];
    if (!v26)
    {
      goto LABEL_13;
    }

    v23 = v22 + 16;
    if ((v22 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v23;
LABEL_13:
      ctx_compute[85] = v22 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_25:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  *(impl[1] + 1944) = *(impl[1] + 1940);
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, a3, v27, a5, v13, 0, 0, 0, 0, a8, a11, a10, a9, 0, 0);
  *(*(self->_impl + 1) + 1948) = *(*(self->_impl + 1) + 1940);
}

- (void)resetTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6
{
  v6 = a6;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v13 = ctx_compute[6];
    if (*(v13 + 1240) && *(v13 + 1248))
    {
      goto LABEL_8;
    }

    v14 = ctx_compute[85];
    if (!v14)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v14 = ctx_compute[85];
    }

    v15 = v14 + 16;
    if ((v14 + 16) > ctx_compute[84])
    {
      v20 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v14 = ctx_compute[85];
      if (!v20)
      {
        goto LABEL_7;
      }

      v15 = v14 + 16;
      if ((v14 + 16) > ctx_compute[84])
      {
        goto LABEL_25;
      }
    }

    ctx_compute[86] = v15;
LABEL_7:
    ctx_compute[85] = v14 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v16 = ctx_compute[6];
    if (*(v16 + 1240) && *(v16 + 1248))
    {
      goto LABEL_14;
    }

    v17 = ctx_compute[85];
    if (!v17)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v17 = ctx_compute[85];
    }

    v18 = v17 + 16;
    if ((v17 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v21 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v17 = ctx_compute[85];
    if (!v21)
    {
      goto LABEL_13;
    }

    v18 = v17 + 16;
    if ((v17 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v18;
LABEL_13:
      ctx_compute[85] = v17 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_25:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  *(impl[1] + 1944) = *(impl[1] + 1940);
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, a3, a4, a5, v6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
  *(*(self->_impl + 1) + 1948) = *(*(self->_impl + 1) + 1940);
}

- (void)getTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6 resetCounters:(BOOL)a7 countersBuffer:(id)a8 countersBufferOffset:(unint64_t)a9
{
  v9 = a6;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v16 = ctx_compute[6];
    v28 = a7;
    if (*(v16 + 1240) && *(v16 + 1248))
    {
      goto LABEL_8;
    }

    v17 = ctx_compute[85];
    if (!v17)
    {
      v24 = a8;
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v17 = ctx_compute[85];
      a8 = v24;
    }

    v18 = v17 + 16;
    if ((v17 + 16) > ctx_compute[84])
    {
      v25 = a8;
      v26 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v17 = ctx_compute[85];
      if (!v26)
      {
        a8 = v25;
        goto LABEL_7;
      }

      v18 = v17 + 16;
      a8 = v25;
      if ((v17 + 16) > ctx_compute[84])
      {
        goto LABEL_25;
      }
    }

    ctx_compute[86] = v18;
LABEL_7:
    ctx_compute[85] = v17 + 16;
LABEL_8:
    v19 = a8;
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v20 = ctx_compute[6];
    if (*(v20 + 1240) && *(v20 + 1248))
    {
      goto LABEL_14;
    }

    v21 = ctx_compute[85];
    if (!v21)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v21 = ctx_compute[85];
    }

    v22 = v21 + 16;
    if ((v21 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v27 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v21 = ctx_compute[85];
    if (!v27)
    {
      goto LABEL_13;
    }

    v22 = v21 + 16;
    if ((v21 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v22;
LABEL_13:
      ctx_compute[85] = v21 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      a8 = v19;
      *&a7 = v28;
      goto LABEL_15;
    }

LABEL_25:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  *(impl[1] + 1944) = *(impl[1] + 1940);
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, a3, a4, a5, v9, 0, a7, a8, a9, 0, 0, 0, 0, 0, 0);
  *(*(self->_impl + 1) + 1948) = *(*(self->_impl + 1) + 1940);
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6
{
  v6 = a6;
  v8 = a4;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v13 = ctx_compute[6];
    if (*(v13 + 1240) && *(v13 + 1248))
    {
      goto LABEL_8;
    }

    v14 = ctx_compute[85];
    if (!v14)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v14 = ctx_compute[85];
    }

    v15 = v14 + 16;
    if ((v14 + 16) > ctx_compute[84])
    {
      v20 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v14 = ctx_compute[85];
      if (!v20)
      {
        goto LABEL_7;
      }

      v15 = v14 + 16;
      if ((v14 + 16) > ctx_compute[84])
      {
        goto LABEL_25;
      }
    }

    ctx_compute[86] = v15;
LABEL_7:
    ctx_compute[85] = v14 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v16 = ctx_compute[6];
    if (*(v16 + 1240) && *(v16 + 1248))
    {
      goto LABEL_14;
    }

    v17 = ctx_compute[85];
    if (!v17)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v17 = ctx_compute[85];
    }

    v18 = v17 + 16;
    if ((v17 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v21 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v17 = ctx_compute[85];
    if (!v21)
    {
      goto LABEL_13;
    }

    v18 = v17 + 16;
    if ((v17 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v18;
LABEL_13:
      ctx_compute[85] = v17 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_25:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  *(impl[1] + 1944) = *(impl[1] + 1940);
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureIndirect(impl, a3, a5, v6, v8);
  *(*(self->_impl + 1) + 1948) = *(*(self->_impl + 1) + 1940);
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7
{
  v7 = a7;
  v10 = a4;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v15 = ctx_compute[6];
    if (*(v15 + 1240) && *(v15 + 1248))
    {
      goto LABEL_8;
    }

    v16 = ctx_compute[85];
    if (!v16)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v16 = ctx_compute[85];
    }

    v17 = v16 + 16;
    if ((v16 + 16) > ctx_compute[84])
    {
      v22 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v16 = ctx_compute[85];
      if (!v22)
      {
        goto LABEL_7;
      }

      v17 = v16 + 16;
      if ((v16 + 16) > ctx_compute[84])
      {
        goto LABEL_25;
      }
    }

    ctx_compute[86] = v17;
LABEL_7:
    ctx_compute[85] = v16 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v18 = ctx_compute[6];
    if (*(v18 + 1240) && *(v18 + 1248))
    {
      goto LABEL_14;
    }

    v19 = ctx_compute[85];
    if (!v19)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v19 = ctx_compute[85];
    }

    v20 = v19 + 16;
    if ((v19 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v23 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v19 = ctx_compute[85];
    if (!v23)
    {
      goto LABEL_13;
    }

    v20 = v19 + 16;
    if ((v19 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v20;
LABEL_13:
      ctx_compute[85] = v19 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_25:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  *(impl[1] + 1944) = *(impl[1] + 1940);
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, a3, a5, a6, v7, v10, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  *(*(self->_impl + 1) + 1948) = *(*(self->_impl + 1) + 1940);
}

- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8
{
  v11 = a4;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    v31 = a8;
    impl_compute = self->_impl_compute;
    v16 = ctx_compute[6];
    if (*(v16 + 1240) && *(v16 + 1248))
    {
      goto LABEL_8;
    }

    v17 = ctx_compute[85];
    if (!v17)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_28;
      }

      v17 = ctx_compute[85];
    }

    v18 = v17 + 16;
    if ((v17 + 16) > ctx_compute[84])
    {
      v29 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v17 = ctx_compute[85];
      if (!v29)
      {
        goto LABEL_7;
      }

      v18 = v17 + 16;
      if ((v17 + 16) > ctx_compute[84])
      {
        goto LABEL_28;
      }
    }

    ctx_compute[86] = v18;
LABEL_7:
    ctx_compute[85] = v17 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v19 = ctx_compute[6];
    if (*(v19 + 1240) && *(v19 + 1248))
    {
      goto LABEL_14;
    }

    v20 = ctx_compute[85];
    if (!v20)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_28;
      }

      v20 = ctx_compute[85];
    }

    v21 = v20 + 16;
    if ((v20 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v30 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v20 = ctx_compute[85];
    if (!v30)
    {
      goto LABEL_13;
    }

    v21 = v20 + 16;
    if ((v20 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v21;
LABEL_13:
      ctx_compute[85] = v20 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      LODWORD(a8) = v31;
      goto LABEL_15;
    }

LABEL_28:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  v23 = impl[1];
  v24 = v23[485];
  v23[486] = v24;
  v25 = a8;
  if (a8)
  {
    do
    {
      v27 = *a6++;
      v26 = v27;
      v28 = *a7++;
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, a3, a5++, v26, v28, v11, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      --v25;
    }

    while (v25);
    v23 = *(self->_impl + 1);
    v24 = v23[485];
  }

  v23[487] = v24;
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  if (self->encodingLegacyBlit)
  {
    v6 = (*(self->_impl + 1) + 2028);

    AGX::BarrierTracker::addBackFacingBarrier(v6, a3, a4, 1);
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v7 = *self->_impl_compute;
    if (AGX::BarrierTracker::addBackFacingBarrier((v7 + 2028), a3, a4, 1))
    {
      v9 = 0;
      agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, 0, 0, 0, &v9);
      v8 = *(v7 + 776);
      *v8 = 1610744318;
      *(v7 + 776) = v8 + 1;
    }
  }
}

- (void)waitForFence:(id)a3
{
  if (self->encodingLegacyBlit)
  {
    impl = self->_impl;
    if (*(*(impl + 1) + 1896))
    {
      MTLResourceListAddResource();
    }

    v5 = *(impl + 27);
    if (!v5)
    {
      operator new();
    }
  }

  else
  {
    impl_compute = self->_impl_compute;
    v7 = *impl_compute;
    if (*(*impl_compute + 1896))
    {
      MTLResourceListAddResource();
    }

    v5 = *(v7 + 27552);
    if (!v5)
    {
      operator new();
    }
  }

  v8 = *(a3 + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v5, v8);
}

- (void)updateFence:(id)a3
{
  if (self->encodingLegacyBlit)
  {
    impl = self->_impl;
    if (*(*(impl + 1) + 1896))
    {
      MTLResourceListAddResource();
    }

    v5 = *(impl + 26);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a3 + *MEMORY[0x29EDC5610]);

    AGX::FenceList::insertFence(v5, v6);
  }

  else
  {
    impl_compute = self->_impl_compute;
    v8 = *impl_compute;
    if (*(*impl_compute + 1896))
    {
      MTLResourceListAddResource();
    }

    v9 = *(v8 + 27544);
    if (!v9)
    {
      operator new();
    }

    AGX::FenceList::insertFence(v9, *(a3 + *MEMORY[0x29EDC5610]));
    *(v8 + 2304) = 1;
  }
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  if (!AGX::BlitUtil::requireLegacyBlit<false>(a6))
  {
    AGX::BlitUtil::requireLegacyBlit<false>(a3);
  }

  operator new();
}

- (void)copyFromTexture:sourceSlice:sourceLevel:toTexture:destinationSlice:destinationLevel:sliceCount:levelCount:
{
  v3 = *a2;
  *(**a2 + 1944) = *(**a2 + 1940);
  v4 = **(a1 + 8);
  v5 = **(a1 + 32);
  v97 = **(a1 + 48);
  v98 = **(a1 + 24);
  v99 = **(a1 + 64);
  v6 = *(v5 + 592);
  v7 = *(v4 + 592);
  if (*(v6 + 236))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + 236) == 0;
  }

  v101 = **(a1 + 16);
  v100 = **(a1 + 40);
  v96 = **(a1 + 56);
  v9 = *(*(v6 + 208) + 24);
  if (*(*(v7 + 208) + 24) < v9)
  {
    v9 = *(*(v7 + 208) + 24);
  }

  v90 = v9;
  v10 = *(v7 + 32);
  v11 = *(v6 + 32);
  v13 = v10 == 260 && v11 == 261;
  v15 = v11 == 260 && v10 == 261;
  v88 = v15;
  v89 = v13;
  v102 = **(a1 + 8);
  if (v8 && *(v6 + 396) == *(v7 + 396))
  {
    v84 = *(v7 + 584) != 0;
    v86 = v3;
    v91 = *(v6 + 584);
    v162 = 0;
    v163 = &v162;
    a3.n128_u64[0] = 0x2020000000;
    v164 = 0x2020000000;
    v165 = 0;
    v157[0] = MEMORY[0x29EDCA5F8];
    v157[1] = 3221225472;
    v158 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_3;
    v159 = &unk_29F341AF0;
    v160 = &v162;
    v161 = 1;
    if (v90 && v99)
    {
      for (i = 0; i != v90; ++i)
      {
        v17 = v97;
        v18 = v98;
        v19 = v99;
        do
        {
          v110 = v4;
          LODWORD(v111) = i + v89;
          HIDWORD(v111) = v101;
          LODWORD(v112) = v18;
          v144 = v5;
          LODWORD(v145) = i + v88;
          HIDWORD(v145) = v100;
          LODWORD(v146) = v17;
          v158(v157, &v110, &v144);
          ++v17;
          ++v18;
          --v19;
        }

        while (v19);
      }
    }

    if (v91)
    {
      v153[0] = MEMORY[0x29EDCA5F8];
      v153[1] = 3221225472;
      v154 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_4;
      v155 = &unk_29F341B18;
      v156 = &v162;
      if (v90)
      {
        if (v99)
        {
          for (j = 0; j != v90; ++j)
          {
            v21 = v97;
            v22 = v98;
            v23 = v99;
            do
            {
              v110 = v4;
              LODWORD(v111) = j + v89;
              HIDWORD(v111) = v101;
              LODWORD(v112) = v22;
              v144 = v5;
              LODWORD(v145) = j + v88;
              HIDWORD(v145) = v100;
              LODWORD(v146) = v21;
              v154(v153, &v110, &v144);
              ++v21;
              ++v22;
              --v23;
            }

            while (v23);
          }
        }
      }
    }

    v24 = v90 * v96 * *(v163 + 6);
    v144 = 0;
    v145 = &v144;
    v146 = 0x4812000000;
    v147 = __Block_byref_object_copy__3082;
    v148 = __Block_byref_object_dispose__3083;
    v149 = &unk_29D31B497;
    v151 = 0;
    v152 = 0;
    v150 = 0;
    if (v24)
    {
      operator new();
    }

    v138[0] = MEMORY[0x29EDCA5F8];
    v138[1] = 3221225472;
    v139 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_241;
    v140 = &unk_29F341B60;
    v143 = 1;
    v141 = &__block_literal_global_236;
    v142 = &v144;
    if (v90 && v96 && v99)
    {
      v25 = 0;
      do
      {
        v26 = 0;
        v27 = v25 + v89;
        v92 = v25;
        v28 = v25 + v88;
        do
        {
          v30 = v97;
          v29 = v98;
          v31 = v99;
          do
          {
            v110 = v4;
            LODWORD(v111) = v27;
            HIDWORD(v111) = v26 + v101;
            LODWORD(v112) = v29;
            v123 = v5;
            LODWORD(v124) = v28;
            HIDWORD(v124) = v26 + v100;
            LODWORD(v125) = v30;
            v139(v138, &v110, &v123);
            ++v30;
            ++v29;
            --v31;
          }

          while (v31);
          ++v26;
        }

        while (v26 != v96);
        v25 = v92 + 1;
      }

      while (v92 + 1 != v90);
    }

    if (v91)
    {
      v132[0] = MEMORY[0x29EDCA5F8];
      v132[1] = 3221225472;
      v133 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2_242;
      v134 = &unk_29F341B60;
      v137 = 1;
      v136 = &v144;
      v135 = &__block_literal_global_236;
      if (v90)
      {
        if (v96 && v99)
        {
          v32 = 0;
          do
          {
            v33 = 0;
            v34 = v32 + v89;
            v93 = v32;
            v35 = v32 + v88;
            do
            {
              v37 = v97;
              v36 = v98;
              v38 = v99;
              do
              {
                v110 = v4;
                LODWORD(v111) = v34;
                HIDWORD(v111) = v33 + v101;
                LODWORD(v112) = v36;
                v123 = v5;
                LODWORD(v124) = v35;
                HIDWORD(v124) = v33 + v100;
                LODWORD(v125) = v37;
                v133(v132, &v110, &v123);
                ++v37;
                ++v36;
                --v38;
              }

              while (v38);
              ++v33;
            }

            while (v33 != v96);
            v32 = v93 + 1;
          }

          while (v93 + 1 != v90);
        }
      }
    }

    v39 = v145[6];
    v40 = v145[7];
    v41 = 126 - 2 * __clz(v40 - v39);
    if (v40 == v39)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    v43 = std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*,false>(v39, v40, v42, 1, a3);
    v45 = v145[6];
    v44 = v145[7];
    if (v45 == v44)
    {
      v47 = v4;
    }

    else
    {
      v46 = v145[6];
      v47 = v4;
      do
      {
        v48 = *v46++;
        v43 = v48;
        *v45 = v48;
        if (v46 != v44)
        {
          v49 = v45->n128_u64[1];
          do
          {
            if (v49 != v46->n128_u64[0])
            {
              break;
            }

            v49 = v46->n128_u64[1];
            v45->n128_u64[1] = v49;
            ++v46;
          }

          while (v46 != v44);
        }

        ++v45;
      }

      while (v46 != v44);
      if (v45 != v145[7])
      {
        v145[7] = v45;
      }
    }

    v123 = 0;
    v124 = &v123;
    v125 = 0x4812000000;
    v126 = __Block_byref_object_copy__243;
    v127 = __Block_byref_object_dispose__244;
    v128 = &unk_29D31B497;
    v130 = 0;
    v131 = 0;
    __p = 0;
    v110 = MEMORY[0x29EDCA5F8];
    v111 = 3221225472;
    v112 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2_250;
    v113 = &unk_29F341BA8;
    v119 = &v123;
    v120 = v86;
    v121 = v84;
    v122 = 1;
    v116 = &__block_literal_global_249;
    v117 = &__block_literal_global_236;
    v118 = &v144;
    v114 = v47;
    v115 = v5;
    if (v90 && v96 && v99)
    {
      v61 = 0;
      do
      {
        v62 = 0;
        v63 = v61 + v89;
        v95 = v61;
        v64 = v61 + v88;
        do
        {
          v66 = v97;
          v65 = v98;
          v67 = v99;
          do
          {
            v103 = v4;
            LODWORD(v104) = v63;
            HIDWORD(v104) = v62 + v101;
            LODWORD(v105) = v65;
            *&v166 = v5;
            DWORD2(v166) = v64;
            HIDWORD(v166) = v62 + v100;
            LODWORD(v167) = v66;
            v112(&v110, &v103, &v166);
            ++v66;
            ++v65;
            --v67;
          }

          while (v67);
          ++v62;
        }

        while (v62 != v96);
        v61 = v95 + 1;
      }

      while (v95 + 1 != v90);
    }

    v68 = v124[6];
    v69 = v124[7];
    v70 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3));
    if (v69 == v68)
    {
      v71 = 0;
    }

    else
    {
      v71 = v70;
    }

    std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*,false>(v68, v69, v71, 1, v43);
    v72 = v124;
    v73 = v124[6];
    v74 = v124[7];
    v75 = v73;
    if (v73 != v74)
    {
      do
      {
        v76 = *v73;
        v75[2] = *(v73 + 2);
        *v75 = v76;
        v73 = (v73 + 24);
        if (v73 != v74)
        {
          v77 = *v75;
          v78 = v75[1];
          v79 = v75[2];
          do
          {
            if (v79 + v77 != *v73 || v79 + v78 != *(v73 + 1))
            {
              break;
            }

            v79 += *(v73 + 2);
            v75[2] = v79;
            v73 = (v73 + 24);
          }

          while (v73 != v74);
        }

        v75 += 3;
      }

      while (v73 != v74);
      v72 = v124;
      v73 = v124[6];
      v74 = v124[7];
    }

    if (v75 != v74)
    {
      v72[7] = v75;
      v74 = v72[7];
    }

    if (v73 != v74)
    {
      v103 = MEMORY[0x29EDCA5F8];
      v104 = 3221225472;
      v105 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_3_251;
      v106 = &unk_29F341BD0;
      v108 = v5;
      v109 = v86;
      v107 = v4;
      v81 = v72[6];
      if (*(v81 + 1) <= *v81)
      {
        if (v74 != v81)
        {
          do
          {
            v83 = *(v74 - 24);
            v167 = *(v74 - 1);
            v166 = v83;
            v105(&v103, &v166);
            v74 = (v74 - 24);
          }

          while (v74 != v124[6]);
        }
      }

      else if (v81 != v74)
      {
        do
        {
          v82 = *v81;
          v167 = *(v81 + 2);
          v166 = v82;
          v105(&v103, &v166);
          v81 = (v81 + 24);
        }

        while (v81 != v124[7]);
      }
    }

    _Block_object_dispose(&v123, 8);
    if (__p)
    {
      v130 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v144, 8);
    if (v150)
    {
      v151 = v150;
      operator delete(v150);
    }

    _Block_object_dispose(&v162, 8);
  }

  else
  {
    v110 = MEMORY[0x29EDCA5F8];
    v111 = 3221225472;
    v112 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2;
    v113 = &unk_29F341AC8;
    v115 = v5;
    v116 = v3;
    v114 = v4;
    if (v90)
    {
      v50 = v96 == 0;
    }

    else
    {
      v50 = 1;
    }

    if (!v50 && v99 != 0)
    {
      v52 = 0;
      do
      {
        v53 = 0;
        v54 = v52 + v89;
        v87 = v52;
        v55 = v52 + v88;
        do
        {
          v56 = v53 + v101;
          v94 = v53;
          v57 = v53 + v100;
          v59 = v97;
          v58 = v98;
          v60 = v99;
          do
          {
            v144 = v102;
            v145 = __PAIR64__(v56, v54);
            LODWORD(v146) = v58;
            v123 = v5;
            v124 = __PAIR64__(v57, v55);
            LODWORD(v125) = v59;
            v112(&v110, &v144, &v123);
            ++v59;
            ++v58;
            --v60;
          }

          while (v60);
          v53 = v94 + 1;
        }

        while (v94 + 1 != v96);
        v52 = v87 + 1;
      }

      while (v87 + 1 != v90);
    }
  }

  *(**a2 + 1948) = *(**a2 + 1940);
}

- (__n128)copyFromTexture:sourceSlice:sourceLevel:toTexture:destinationSlice:destinationLevel:sliceCount:levelCount:
{
  *a2 = &unk_2A23F63E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = a4;
  v12 = a3;
  v9 = a7;
  v10 = a5;
  v8 = a8;
  AGX::BlitUtil::requireLegacyBlit<false>(a3);
  operator new();
}

- (void)fillTexture:level:slice:region:bytes:length:
{
  v3 = *a2;
  *(**a2 + 1944) = *(**a2 + 1940);
  v4 = **(a1 + 8);
  v5 = **(a1 + 16);
  v6 = *(a1 + 32);
  v7 = **(a1 + 24);
  v8 = v6[1];
  v9[0] = *v6;
  v9[1] = v8;
  v9[2] = v6[2];
  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::fillTexture(v3, v4, v5, v7, v9, **(a1 + 40), **(a1 + 48));
  *(**a2 + 1948) = *(**a2 + 1940);
}

- (__n128)fillTexture:level:slice:region:bytes:length:
{
  *a2 = &unk_2A23F6350;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5
{
  length = a4.length;
  location = a4.location;
  if (!self->encodingLegacyBlit)
  {
    ctx_compute = self->_ctx_compute;
    impl_compute = self->_impl_compute;
    v12 = ctx_compute[6];
    if (*(v12 + 1240) && *(v12 + 1248))
    {
      goto LABEL_8;
    }

    v13 = ctx_compute[85];
    if (!v13)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v13 = ctx_compute[85];
    }

    v14 = v13 + 16;
    if ((v13 + 16) > ctx_compute[84])
    {
      v19 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
      v13 = ctx_compute[85];
      if (!v19)
      {
        goto LABEL_7;
      }

      v14 = v13 + 16;
      if ((v13 + 16) > ctx_compute[84])
      {
        goto LABEL_25;
      }
    }

    ctx_compute[86] = v14;
LABEL_7:
    ctx_compute[85] = v13 + 16;
LABEL_8:
    IOGPUResourceListAddResource();
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
    *(impl_compute + 1192) = 0;
    *(impl_compute + 2348) = 0;
    v15 = ctx_compute[6];
    if (*(v15 + 1240) && *(v15 + 1248))
    {
      goto LABEL_14;
    }

    v16 = ctx_compute[85];
    if (!v16)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v16 = ctx_compute[85];
    }

    v17 = v16 + 16;
    if ((v16 + 16) <= ctx_compute[84])
    {
      goto LABEL_12;
    }

    v20 = AGX::DataBufferAllocator<44ul>::growNoInline(ctx_compute + 3, 19, 0);
    v16 = ctx_compute[85];
    if (!v20)
    {
      goto LABEL_13;
    }

    v17 = v16 + 16;
    if ((v16 + 16) <= ctx_compute[84])
    {
LABEL_12:
      ctx_compute[86] = v17;
LABEL_13:
      ctx_compute[85] = v16 + 16;
LABEL_14:
      IOGPUResourceListAddResource();
      self->encodingLegacyBlit = 1;
      goto LABEL_15;
    }

LABEL_25:
    abort();
  }

LABEL_15:
  impl = self->_impl;
  *(impl[1] + 1944) = *(impl[1] + 1940);
  v21 = a5;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillBuffer(impl, a3, location, length, &v21, 4uLL);
  *(*(self->_impl + 1) + 1948) = *(*(self->_impl + 1) + 1940);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v14 = *a6;
  v13 = *a7;
  v12 = *a11;
  [(AGXG18PFamilyBlitContext *)self copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v14 sourceSize:&v13 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v12];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a4;
  v15 = a3;
  v12 = a8;
  v13 = a5;
  AGX::BlitUtil::requireLegacyBlit<false>(a3);
  operator new();
}

- (void)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:
{
  v3 = *a2;
  *(**a2 + 1944) = *(**a2 + 1940);
  v4 = **(a1 + 8);
  v5 = **(a1 + 16);
  v6 = **(a1 + 24);
  v7 = **(a1 + 32);
  v8 = **(a1 + 40);
  v9 = **(a1 + 48);
  v10 = *(a1 + 64);
  v11 = **(a1 + 56);
  v16 = *v10;
  v17 = *(v10 + 2);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *v12;
  v15 = *(v12 + 2);
  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToBuffer(v3, v4, v5, v6, v7, v8, v9, v11, &v16, &v14, *v13);
  *(**a2 + 1948) = *(**a2 + 1940);
}

- (__n128)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:
{
  *a2 = &unk_2A23F62C0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = a4;
  v16 = a3;
  v13 = a6;
  v14 = a5;
  v12 = a8;
  AGX::BlitUtil::requireLegacyBlit<false>(a8);
  operator new();
}

- (void)copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:
{
  v3 = *a2;
  *(**a2 + 1944) = *(**a2 + 1940);
  v4 = **(a1 + 8);
  v5 = **(a1 + 16);
  v6 = *(a1 + 32);
  v7 = **(a1 + 24);
  v12 = *v6;
  v13 = *(v6 + 2);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *v8;
  v11 = *(v8 + 2);
  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToTexture(v3, v4, v5, v7, &v12, &v10, *v9, **(a1 + 56), **(a1 + 64), **(a1 + 72), **(a1 + 80));
  *(**a2 + 1948) = *(**a2 + 1940);
}

- (__n128)copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:
{
  *a2 = &unk_2A23F6230;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

- (void)fillBuffer:(id)a3 range:(_NSRange)a4 value:(unsigned __int8)a5
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v6 = a3;
  v5 = a5;
  AGX::BlitUtil::requireLegacyBlit<false>(0);
  operator new();
}

- (void)fillBuffer:range:value:
{
  v3 = *a2 + 8;
  *(**a2 + 1944) = *(**a2 + 1940);
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  v7 = *v4;
  v6 = v4[1];
  v8 = **(a1 + 24);
  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer(v3, v5, *(v5 + *MEMORY[0x29EDC5638] + 72) + v7, 0, 0, v6, &v8, 1uLL);
  *(**a2 + 1948) = *(**a2 + 1940);
}

- (__n128)fillBuffer:range:value:
{
  *a2 = &unk_2A23F61A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)generateMipmapsForTexture:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = a3;
  (*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDBB780]))[89] |= 0x100uLL;
  v4 = AGX::BlitUtil::requireLegacyBlit<false>(a3);
  v5 = v4;
  v11[0] = &unk_2A23F6110;
  v11[1] = &v8;
  v12 = v11;
  v9[0] = &unk_2A23F6158;
  v9[1] = &v8;
  v10 = v9;
  switchContextIfNeededImpl(!v4, &self->encodingLegacyBlit, self->_impl_compute, self->_impl, self->_ctx_compute);
  if (v5)
  {
    v6 = v10;
    if (v10)
    {
      v7 = (*v10 + 48);
      goto LABEL_6;
    }

LABEL_15:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v6 = v12;
  if (!v12)
  {
    goto LABEL_15;
  }

  v7 = (*v12 + 48);
LABEL_6:
  (*v7)(v6);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }
}

- (void)generateMipmapsForTexture:
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = **a2;
  v5 = v4[485];
  v4[486] = v5;
  v6 = *v2;
  v7 = *(*v2 + 592);
  if (!*(v7 + 168))
  {
    v8 = *(v7 + 32);
    v9 = (v8 - 624) > 0x1A || ((1 << (v8 - 112)) & 0x400000F) == 0;
    if (v9 && (v8 - 550) >= 2 && (*(*(v7 + 208) + 60) & 3) != 0)
    {
      v28 = *(v7 + 180);
      v29 = *(v7 + 176);
      v27 = *(v7 + 184);
      if (*(v7 + 24) == 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(v7 + 108);
      v22 = *(v7 + 152);
      v23 = v10;
      v21 = *(v7 + 160);
      v36[0] = 1;
      {
        v35[0] = 0;
        findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", v35);
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v35[0];
      }

      v20 = v11 - 1;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
      {
        v12 = *(v7 + 584);
        if (v12)
        {
          if (*(v12 + 1304))
          {
            v36[0] |= 8u;
          }
        }
      }

      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
      }

      if (v11 != 1)
      {
        v13 = 0;
        v26 = (v7 + 396);
        do
        {
          v14 = 0;
          v24 = v13++;
          if (*(v7 + 136) >> (*(v7 + 144) + v13) <= 1u)
          {
            v15 = 1;
          }

          else
          {
            v15 = *(v7 + 136) >> (*(v7 + 144) + v13);
          }

          v25 = v13;
          while (1)
          {
            v16 = *v26 & 0xFF00;
            if ((*v26 & 0x10000) != 0 || v16 == 1024)
            {
              break;
            }

            if (v14)
            {
              goto LABEL_21;
            }

LABEL_34:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v35, v7, v23, v8, *(v7 + 40), *(v7 + 56), *(v7 + 324), v14, v24, 0, 0, v22, v21, 0, v29, v28, v27, 0, 0);
            v13 = v25;
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v32, v7, v23, v8, *(v7 + 40), *(v7 + 56), *(v7 + 324), v14, v25, 0, 0, v22, v21, 0, v29, v28, v27, 0, 0);
            v18 = 0;
            do
            {
              v30[0] = vmax_u32(vshl_u32(v33, vdup_lane_s32(vneg_s32(v34), 0)), 0x100000001);
              v30[1] = 0;
              v30[2] = 0;
              v31 = v18;
              AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToTexture(v3 + 1, v6, v6, v32, v6, v6, v35, v36, v18++, v30);
            }

            while (v15 != v18);
            AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v32);
            AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v35);
            ++v14;
          }

          if (v16 == 1024)
          {
            v17 = 6 * *(v7 + 392);
          }

          else
          {
            v17 = *(v7 + 392);
          }

          if (v14 < v17)
          {
            goto LABEL_34;
          }

LABEL_21:
          ;
        }

        while (v13 != v20);
      }

      v4 = **a2;
      v5 = v4[485];
    }
  }

  v4[487] = v5;
}

- (uint64_t)generateMipmapsForTexture:
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F6110;
  a2[1] = v2;
  return result;
}

- (void)optimizeContentsForTexture:(id)a3 readAccessPattern:(int64_t)a4 readAccessor:(int64_t)a5 slice:(unint64_t)a6 level:(unint64_t)a7
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = a4;
  v11 = a3;
  v8 = a6;
  v9 = a5;
  v7 = a7;
  AGX::BlitUtil::requireLegacyBlit<false>(a3);
  operator new();
}

- (void)optimizeContentsForTexture:readAccessPattern:readAccessor:slice:level:
{
  v2 = *a2;
  v3 = **(a1 + 8);
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  if (v3 != 2)
  {
    return;
  }

  if (**(a1 + 16) == 2)
  {
LABEL_4:
    v4 = **(a1 + 24);
    v5 = **(a1 + 32);
    v6 = **(a1 + 40);

    AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::optimizeContentsForUncompressedAccess(v2, v4, v5, v6);
  }

  else
  {
    v7 = **(a1 + 24);
    v8 = **(a1 + 32);
    v9 = **(a1 + 40);
    v10 = *(v7 + 592);
    if (!*&v10[6] || (v10[5].i8[0] & 2) != 0)
    {
      v11 = v10[73];
      if (*&v11 && *(*&v11 + 1304) > v9 && !v10[7].i8[1])
      {
        v12 = v10[17].i32[0] >> (v10[18].i8[0] + v9);
        v13 = v12 <= 1 ? 1 : v12;
        v14 = *(*&v10[26] + 24);
        if (v14)
        {
          v15 = 0;
          v16 = vmax_u32(vshl_u32(v10[16], vneg_s32(vdup_n_s32(v10[18].i32[0] + v9))), 0x100000001);
          *&v17 = v16.u32[0];
          *(&v17 + 1) = v16.u32[1];
          v18 = v17;
          do
          {
            v23 = 0uLL;
            v24 = 0;
            v21 = 0uLL;
            v22 = 0;
            v19 = v18;
            v20 = v13;
            AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTextureImpl(v2, v7, v15, v8, v9, &v23, v7, v15, v8, v9, &v21, &v19);
            ++v15;
          }

          while (v14 != v15);
        }
      }
    }
  }
}

- (__n128)optimizeContentsForTexture:readAccessPattern:readAccessor:slice:level:
{
  *a2 = &unk_2A23F6080;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)optimizeContentsForTexture:(id)a3 readAccessPattern:(int64_t)a4 readAccessor:(int64_t)a5
{
  v8 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = a3;
  v5 = a5;
  AGX::BlitUtil::requireLegacyBlit<false>(a3);
  operator new();
}

- (void)optimizeContentsForTexture:readAccessPattern:readAccessor:
{
  v2 = *a2;
  v3 = *a1[1];
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  if (v3 != 2)
  {
    return;
  }

  if (*a1[2] == 2)
  {
LABEL_4:
    v4 = *a1[3];
    v5 = *(v4 + 592);
    if (*(v5 + 48) || !*(v5 + 584))
    {
      return;
    }

    v6 = *(v5 + 396) & 0xFF00;
    if ((*(v5 + 396) & 0x10000) != 0 || v6 == 1024)
    {
      if (v6 == 1024)
      {
        v7 = 6 * *(v5 + 392);
      }

      else
      {
        v7 = *(v5 + 392);
      }

      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = 1;
    }

    v9 = *(v5 + 108);
    if (v9)
    {
      for (i = 0; i != v7; ++i)
      {
        for (j = 0; j != v9; ++j)
        {
          v12 = *(v5 + 584);
          if (v12 && *(v12 + 1304) > j && !*(v5 + 57))
          {
            AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::optimizeContentsForUncompressedAccess(v2, v4, i, j);
          }
        }
      }
    }
  }

  else
  {
    v8 = *a1[3];

    AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::optimizeContentsForCompressedAccess(v2, v8);
  }
}

- (__n128)optimizeContentsForTexture:readAccessPattern:readAccessor:
{
  *a2 = &unk_2A23F5FF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v8 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = a3;
  v5 = a5;
  AGX::BlitUtil::requireLegacyBlit<false>(a3);
  operator new();
}

- (__n128)optimizeContentsForCPUAccess:slice:level:
{
  *a2 = &unk_2A23F5F60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)optimizeContentsForCPUAccess:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v4 = AGX::BlitUtil::requireLegacyBlit<false>(a3);
  v5 = v4;
  v11[0] = &unk_2A23F5ED0;
  v11[1] = &v8;
  v12 = v11;
  v9[0] = &unk_2A23F5F18;
  v9[1] = &v8;
  v10 = v9;
  switchContextIfNeededImpl(!v4, &self->encodingLegacyBlit, self->_impl_compute, self->_impl, self->_ctx_compute);
  if (v5)
  {
    v6 = v10;
    if (v10)
    {
      v7 = (*v10 + 48);
      goto LABEL_6;
    }

LABEL_15:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v6 = v12;
  if (!v12)
  {
    goto LABEL_15;
  }

  v7 = (*v12 + 48);
LABEL_6:
  (*v7)(v6);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }
}

- (uint64_t)optimizeContentsForCPUAccess:
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F5ED0;
  a2[1] = v2;
  return result;
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v8 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = a3;
  v5 = a5;
  AGX::BlitUtil::requireLegacyBlit<false>(a3);
  operator new();
}

- (void)optimizeContentsForGPUAccess:slice:level:
{
  v2 = *a2;
  v3 = **(a1 + 8);
  v4 = **(a1 + 16);
  v5 = **(a1 + 24);
  v6 = *(v3 + 592);
  if (!*&v6[6] || (v6[5].i8[0] & 2) != 0)
  {
    v7 = v6[73];
    if (v7)
    {
      if (*(*&v7 + 1304) > v5 && !v6[7].i8[1])
      {
        v8 = v6[17].i32[0] >> (v6[18].i8[0] + v5);
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        v10 = *(*&v6[26] + 24);
        if (v10)
        {
          v11 = 0;
          v12 = vmax_u32(vshl_u32(v6[16], vneg_s32(vdup_n_s32(v6[18].i32[0] + v5))), 0x100000001);
          *&v13 = v12.u32[0];
          *(&v13 + 1) = v12.u32[1];
          v14 = v13;
          do
          {
            v19 = 0uLL;
            v20 = 0;
            v17 = 0uLL;
            v18 = 0;
            v15 = v14;
            v16 = v9;
            AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTextureImpl(v2, v3, v11, v4, v5, &v19, v3, v11, v4, v5, &v17, &v15);
            ++v11;
          }

          while (v10 != v11);
        }
      }
    }
  }
}

- (__n128)optimizeContentsForGPUAccess:slice:level:
{
  *a2 = &unk_2A23F5E40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)optimizeContentsForGPUAccess:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v4 = AGX::BlitUtil::requireLegacyBlit<false>(a3);
  v5 = v4;
  v11[0] = &unk_2A23F5DB0;
  v11[1] = &v8;
  v12 = v11;
  v9[0] = &unk_2A23F5DF8;
  v9[1] = &v8;
  v10 = v9;
  switchContextIfNeededImpl(!v4, &self->encodingLegacyBlit, self->_impl_compute, self->_impl, self->_ctx_compute);
  if (v5)
  {
    v6 = v10;
    if (v10)
    {
      v7 = (*v10 + 48);
      goto LABEL_6;
    }

LABEL_15:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v6 = v12;
  if (!v12)
  {
    goto LABEL_15;
  }

  v7 = (*v12 + 48);
LABEL_6:
  (*v7)(v6);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }
}

- (uint64_t)optimizeContentsForGPUAccess:
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F5DB0;
  a2[1] = v2;
  return result;
}

- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v8 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = a3;
  v5 = a5;
  AGX::BlitUtil::requireLegacyBlit<false>(a3);
  operator new();
}

- (__n128)invalidateCompressedTexture:slice:level:
{
  *a2 = &unk_2A23F5D20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)invalidateCompressedTexture:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v4 = AGX::BlitUtil::requireLegacyBlit<false>(a3);
  v5 = v4;
  v11[0] = &unk_2A23F5C90;
  v11[1] = &v8;
  v12 = v11;
  v9[0] = &unk_2A23F5CD8;
  v9[1] = &v8;
  v10 = v9;
  switchContextIfNeededImpl(!v4, &self->encodingLegacyBlit, self->_impl_compute, self->_impl, self->_ctx_compute);
  if (v5)
  {
    v6 = v10;
    if (v10)
    {
      v7 = (*v10 + 48);
      goto LABEL_6;
    }

LABEL_15:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v6 = v12;
  if (!v12)
  {
    goto LABEL_15;
  }

  v7 = (*v12 + 48);
LABEL_6:
  (*v7)(v6);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }
}

- (uint64_t)invalidateCompressedTexture:
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F5C90;
  a2[1] = v2;
  return result;
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  v15 = *MEMORY[0x29EDCA608];
  v13 = a4;
  v14 = a3;
  v11 = a8;
  v12 = a5;
  AGX::BlitUtil::requireLegacyBlit<false>(a3);
  operator new();
}

- (void)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:
{
  v3 = *a2;
  *(**a2 + 1944) = *(**a2 + 1940);
  v4 = **(a1 + 8);
  v5 = **(a1 + 16);
  v6 = **(a1 + 24);
  v7 = **(a1 + 32);
  v8 = **(a1 + 40);
  v9 = **(a1 + 48);
  v10 = *(a1 + 64);
  v11 = **(a1 + 56);
  v15 = *v10;
  v16 = *(v10 + 2);
  v12 = *(a1 + 72);
  v13 = *v12;
  v14 = *(v12 + 2);
  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToBuffer(v3, v4, v5, v6, v7, v8, v9, v11, &v15, &v13, 0);
  *(**a2 + 1948) = *(**a2 + 1940);
}

- (__n128)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:
{
  *a2 = &unk_2A23F5C00;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = a4;
  v11 = a3;
  v8 = a6;
  v9 = a5;
  v7 = a7;
  AGX::BlitUtil::requireLegacyBlit<false>(0);
  operator new();
}

- (void)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:
{
  v3 = *a2;
  *(**a2 + 1944) = *(**a2 + 1940);
  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToBufferImpl(v3, **(a1 + 8), *(**(a1 + 8) + *MEMORY[0x29EDC5638] + 72) + **(a1 + 16), **(a1 + 24), (*(**(a1 + 24) + *MEMORY[0x29EDC5638] + 72) + **(a1 + 32)), **(a1 + 40));
  *(**a2 + 1948) = *(**a2 + 1940);
}

- (__n128)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:
{
  *a2 = &unk_2A23F5B70;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a4;
  v15 = a3;
  v12 = a6;
  v13 = a5;
  v11 = a8;
  AGX::BlitUtil::requireLegacyBlit<false>(a8);
  operator new();
}

- (void)copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:
{
  v3 = *a2;
  *(**a2 + 1944) = *(**a2 + 1940);
  v4 = **(a1 + 8);
  v5 = **(a1 + 16);
  v6 = *(a1 + 32);
  v7 = **(a1 + 24);
  v12 = *v6;
  v13 = *(v6 + 2);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *v8;
  v11 = *(v8 + 2);
  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToTexture(v3, v4, v5, v7, &v12, &v10, *v9, **(a1 + 56), **(a1 + 64), **(a1 + 72), 0);
  *(**a2 + 1948) = *(**a2 + 1940);
}

- (__n128)copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:
{
  *a2 = &unk_2A23F5AE0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  if (!AGX::BlitUtil::requireLegacyBlit<false>(a8))
  {
    AGX::BlitUtil::requireLegacyBlit<false>(a3);
  }

  operator new();
}

- (void)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:
{
  v2 = *a2;
  v3 = **a2;
  v4 = v3[485];
  v3[486] = v4;
  v5 = **(a1 + 8);
  v6 = **(a1 + 16);
  v7 = *(a1 + 32);
  v8 = **(a1 + 24);
  v30 = *v7;
  v31 = *(v7 + 16);
  v9 = **(a1 + 40);
  v10 = **(a1 + 48);
  v11 = *(a1 + 64);
  v12 = **(a1 + 56);
  v28 = *v11;
  v29 = *(v11 + 16);
  v13 = *(a1 + 72);
  v26 = *v13;
  v27 = *(v13 + 2);
  v14 = *(v9 + 592);
  v15 = *(v5 + 592);
  if (*(*(v14 + 208) + 24) >= *(*(v15 + 208) + 24))
  {
    v16 = *(*(v15 + 208) + 24);
  }

  else
  {
    v16 = *(*(v14 + 208) + 24);
  }

  if (v16)
  {
    v17 = *(v14 + 32);
    v18 = *(v15 + 32);
    v19 = v17 == 261;
    v20 = v18 == 260;
    v21 = v18 == 261;
    v22 = v17 == 260;
    if (v19 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v21 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    do
    {
      v36 = v30;
      v37 = v31;
      v34 = v28;
      v35 = v29;
      v32 = v26;
      v33 = v27;
      AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTextureImpl(v2, v5, v23++, v6, v8, &v36, v9, v24++, v10, v12, &v34, &v32);
      --v16;
    }

    while (v16);
    v3 = **a2;
    v4 = v3[485];
  }

  v3[487] = v4;
}

- (__n128)copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:
{
  *a2 = &unk_2A23F5A50;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

- (void)endEncoding
{
  if (self->_impl)
  {
    v3 = *MEMORY[0x29EDBB780];
    v4 = [*(&self->super.super.super.super.super.isa + v3) device];
    impl = self->_impl;
    v7 = impl[31];
    v6 = impl[32];
    atomic_fetch_or((v4 + 856), v7);
    atomic_fetch_or((v4 + 864), v6);
    if ([*(&self->super.super.super.super.super.isa + v3) disableDeferredEndEncoding])
    {
      [(AGXG18PFamilyBlitContext *)self deferredEndEncoding];
    }

    else
    {
      [*(&self->super.super.super.super.super.isa + v3) setPreviousBlitCommandEncoder:self];
    }
  }

  v8.receiver = self;
  v8.super_class = AGXG18PFamilyBlitContext;
  [(IOGPUMetalCommandEncoder *)&v8 endEncoding];
}

- (void)deferredEndEncoding
{
  impl = self->_impl;
  if (impl)
  {
    if (self->encodingLegacyBlit)
    {
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::commit(impl, v2, v3, v4, v5);
    }

    else
    {
      impl_compute = self->_impl_compute;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*impl_compute, 0, 22);
      *(impl_compute + 1192) = 0;
      *(impl_compute + 2348) = 0;
    }

    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContextGen2(self->_impl);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::~ComputeContext(self->_ctx_compute);
    free(self->_impl);
    self->_impl_compute = 0;
    self->_impl = 0;
    self->_ctx_compute = 0;
  }
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContextGen2(impl);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::~ComputeContext(self->_ctx_compute);
    free(self->_impl);
    self->_impl_compute = 0;
    self->_impl = 0;
    self->_ctx_compute = 0;
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyBlitContext;
  [(_MTLCommandEncoder *)&v4 dealloc];
}

- (id)reInitWithCommandBuffer:(id)a3
{
  v5 = a3;
  *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDBB780]) = v5;
  [(objc_class *)v5 setCurrentCommandEncoder:self];
  [a3 setPreviousBlitCommandEncoder:0];
  return self;
}

- (AGXG18PFamilyBlitContext)initWithCommandBuffer:(id)a3 descriptor:(id)a4
{
  v19.receiver = self;
  v19.super_class = AGXG18PFamilyBlitContext;
  v6 = [(IOGPUMetalCommandEncoder *)&v19 initWithCommandBuffer:?];
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x9560uLL, 0x10A0040B5290DBEuLL);
    *(v6 + 12) = v7;
    *(v6 + 13) = v7 + 5008;
    *(v6 + 11) = v7 + 33536;
    if (v7)
    {
      v8 = [a3 protectionOptions];
      v9 = *([*&v6[*MEMORY[0x29EDBB780]] device] + 848) + 7008;
      block = MEMORY[0x29EDCA5F8];
      v21 = 3221225472;
      v22 = ___ZN3AGX18BlitUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0l;
      v24 = v9;
      if (AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
      {
        dispatch_once(&AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
      }

      v10 = [a3 device];
      v11 = (*(*(v10 + 848) + 16456) & 0x1000) == 0;
      v12 = *(v6 + 13);
      v27 = v8;
      v29 = &AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
      v13 = [v6 numThisEncoder];
      v30[0] = a3;
      v30[1] = 0;
      v31 = 2;
      v32 = v11;
      v33 = v13;
      v34 = 0;
      v35 = 1;
      v36 = [0 usedForRaytracingEmulation];
      block = v10;
      v21 = a3;
      v22 = v6;
      LODWORD(v23) = v11;
      v24 = 0;
      v25 = 2;
      v26 = 1;
      v28 = 0;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ComputeContext<AGX::HAL300::EncoderComputeServiceConfigA>(v12, v30, &block);
      v14 = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::BlitDispatchContext(*(v6 + 12), *(v6 + 13), a4, 0, 0);
      *(v14 + 4896) = 0;
      *(v14 + 4960) = 0;
      *(v14 + 4968) = 0;
      *(v14 + 4912) = 0u;
      *(v14 + 4928) = 0u;
      *v14 = &unk_2A23F7410;
      *(v14 + 4992) = *(*(v14 + 8) + 1872);
      *(v14 + 5000) = 0;
      v15 = *(v6 + 11);
      v16 = *(v6 + 13);
      *v15 = v16;
      v17 = *(v16 + 1872);
      *(v15 + 16) = v17;
      *(v15 + 24) = v16;
      *(v15 + 32) = 1;
      *(v15 + 40) = v15 + 80;
      *(v15 + 56) = v17;
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;
      *(v15 + 2384) = 0;
      *(v15 + 4696) = 0;
      v6[112] = 1;
      if (!AGX::BlitUtil::requireLegacyBlit<false>(0))
      {
        v6[112] = 0;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginComputePass(**(v6 + 11), 0, 22);
      }
    }

    else
    {
      [v6 endEncoding];

      return 0;
    }
  }

  return v6;
}

@end