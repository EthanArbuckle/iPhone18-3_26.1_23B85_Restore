@interface AGXG18PFamilyTensor
- (AGXG18PFamilyTensor)initWithBuffer:(id)buffer device:(id)device rank:(unsigned __int8)rank dims:(unint64_t *)dims strides:(unint64_t *)strides offset:(unint64_t)offset dataType:(unsigned __int8)type usage:(unint64_t)self0 resourceIndex:(unint64_t)self1;
- (AGXG18PFamilyTensor)initWithDevice:(id)device length:(unint64_t)length rank:(unsigned __int8)rank dims:(unint64_t *)dims strides:(unint64_t *)strides offset:(unint64_t)offset dataType:(unsigned __int8)type usage:(unint64_t)self0 resourceIndex:(unint64_t)self1 storageMode:(unint64_t)self2 resourceOptions:(unint64_t)self3;
- (id)dimensions;
- (id)strides;
- (int64_t)dataType;
- (unint64_t)bufferOffset;
- (unint64_t)offset;
- (void)dealloc;
- (void)getBytes:(void *)bytes strides:(id)strides fromSlice:(MTLTensorSlice)slice;
- (void)getBytes:(void *)bytes strides:(id)strides fromSliceOrigin:(id)origin sliceDimensions:(id)dimensions;
- (void)replaceSlice:(MTLTensorSlice)slice withBytes:(const void *)bytes strides:(id)strides;
- (void)replaceSliceOrigin:(id)origin sliceDimensions:(id)dimensions withBytes:(const void *)bytes strides:(id)strides;
@end

@implementation AGXG18PFamilyTensor

- (int64_t)dataType
{
  v2 = *(self->_impl + 336);
  if (v2 > 8)
  {
    return 0;
  }

  else
  {
    return qword_29D2F78A0[v2];
  }
}

- (unint64_t)bufferOffset
{
  if (self->_buffer)
  {
    return *(self->_impl + 4) * AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(self->_impl + 336)];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)offset
{
  if (self->_buffer)
  {
    return *(self->_impl + 4) * AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(self->_impl + 336)];
  }

  else
  {
    return 0;
  }
}

- (id)strides
{
  if (!self->_buffer)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x29EDBB668]) initWithRank:*(self->_impl + 337) extents:self->_impl + 192];

  return v2;
}

- (id)dimensions
{
  v2 = [objc_alloc(MEMORY[0x29EDBB668]) initWithRank:*(self->_impl + 337) extents:self->_impl + 64];

  return v2;
}

- (void)dealloc
{
  internalMTLBuffer = self->_internalMTLBuffer;
  if (internalMTLBuffer)
  {
  }

  impl = self->_impl;
  if (impl)
  {
    if (*(impl + 10) && (*(impl + 56) & 1) == 0)
    {
      v5 = *(impl + 6);
      os_unfair_lock_lock(v5 + 194);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(impl + 6) + 720, *(impl + 10), *(impl + 10) + *(impl + 11) - 1);
      os_unfair_lock_unlock(v5 + 194);
    }

    MEMORY[0x29ED520D0](impl, 0x1030C408A363F2ELL);
  }

  v6.receiver = self;
  v6.super_class = AGXG18PFamilyTensor;
  [(IOGPUMetalTensor *)&v6 dealloc];
}

- (void)getBytes:(void *)bytes strides:(id)strides fromSlice:(MTLTensorSlice)slice
{
  var1 = slice.var1;
  var0 = slice.var0;
  tensorExtentsInternal = [strides tensorExtentsInternal];
  impl = self->_impl;
  v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(impl + 336)];
  v12 = impl[4] * v11;
  if (*(impl + 337))
  {
    v13 = tensorExtentsInternal;
    v14 = 0;
    do
    {
      tensorExtentsInternal2 = [var0 tensorExtentsInternal];
      v16 = self->_impl;
      v12 += *(tensorExtentsInternal2 + 8 * v14 + 8) * v11 * v16[v14 + 24];
      ++v14;
    }

    while (v14 < *(v16 + 337));
    v17 = (v16[1] + v12);
    if (*(v16 + 337))
    {
      recursiveGet(v16, bytes, v13, var1, v17, 0, 0, v11, *[var1 tensorExtentsInternal] - 1);
      return;
    }
  }

  else
  {
    v17 = (impl[1] + v12);
  }

  memcpy(bytes, v17, v11);
}

- (void)getBytes:(void *)bytes strides:(id)strides fromSliceOrigin:(id)origin sliceDimensions:(id)dimensions
{
  tensorExtentsInternal = [strides tensorExtentsInternal];
  impl = self->_impl;
  v12 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(impl + 336)];
  v13 = impl[4] * v12;
  if (*(impl + 337))
  {
    v14 = tensorExtentsInternal;
    v15 = 0;
    do
    {
      tensorExtentsInternal2 = [origin tensorExtentsInternal];
      v17 = self->_impl;
      v13 += *(tensorExtentsInternal2 + 8 * v15 + 8) * v12 * v17[v15 + 24];
      ++v15;
    }

    while (v15 < *(v17 + 337));
    v18 = (v17[1] + v13);
    if (*(v17 + 337))
    {
      recursiveGet(v17, bytes, v14, dimensions, v18, 0, 0, v12, *[dimensions tensorExtentsInternal] - 1);
      return;
    }
  }

  else
  {
    v18 = (impl[1] + v13);
  }

  memcpy(bytes, v18, v12);
}

- (void)replaceSlice:(MTLTensorSlice)slice withBytes:(const void *)bytes strides:(id)strides
{
  var1 = slice.var1;
  var0 = slice.var0;
  tensorExtentsInternal = [strides tensorExtentsInternal];
  impl = self->_impl;
  v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(impl + 336)];
  v12 = impl[4] * v11;
  if (*(impl + 337))
  {
    v13 = tensorExtentsInternal;
    v14 = 0;
    do
    {
      tensorExtentsInternal2 = [var0 tensorExtentsInternal];
      v16 = self->_impl;
      v12 += *(tensorExtentsInternal2 + 8 * v14 + 8) * v11 * v16[v14 + 24];
      ++v14;
    }

    while (v14 < *(v16 + 337));
    v17 = (v16[1] + v12);
    if (*(v16 + 337))
    {
      recursiveReplace(v16, var1, bytes, v13, v17, 0, 0, v11, *[var1 tensorExtentsInternal] - 1);
      return;
    }
  }

  else
  {
    v17 = (impl[1] + v12);
  }

  memcpy(v17, bytes, v11);
}

- (void)replaceSliceOrigin:(id)origin sliceDimensions:(id)dimensions withBytes:(const void *)bytes strides:(id)strides
{
  tensorExtentsInternal = [strides tensorExtentsInternal];
  impl = self->_impl;
  v12 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(impl + 336)];
  v13 = impl[4] * v12;
  if (*(impl + 337))
  {
    v14 = tensorExtentsInternal;
    v15 = 0;
    do
    {
      tensorExtentsInternal2 = [origin tensorExtentsInternal];
      v17 = self->_impl;
      v13 += *(tensorExtentsInternal2 + 8 * v15 + 8) * v12 * v17[v15 + 24];
      ++v15;
    }

    while (v15 < *(v17 + 337));
    v18 = (v17[1] + v13);
    if (*(v17 + 337))
    {
      recursiveReplace(v17, dimensions, bytes, v14, v18, 0, 0, v12, *[dimensions tensorExtentsInternal] - 1);
      return;
    }
  }

  else
  {
    v18 = (impl[1] + v13);
  }

  memcpy(v18, bytes, v12);
}

- (AGXG18PFamilyTensor)initWithBuffer:(id)buffer device:(id)device rank:(unsigned __int8)rank dims:(unint64_t *)dims strides:(unint64_t *)strides offset:(unint64_t)offset dataType:(unsigned __int8)type usage:(unint64_t)self0 resourceIndex:(unint64_t)self1
{
  if (buffer)
  {
    [buffer length];
    v13 = [(IOGPUMetalTensor *)self initWithBuffer:buffer];
    if (v13)
    {
      operator new();
    }
  }

  else
  {
    v13 = 0;
  }

  v13->_usage = usage;
  v13->_buffer = buffer;
  return v13;
}

- (AGXG18PFamilyTensor)initWithDevice:(id)device length:(unint64_t)length rank:(unsigned __int8)rank dims:(unint64_t *)dims strides:(unint64_t *)strides offset:(unint64_t)offset dataType:(unsigned __int8)type usage:(unint64_t)self0 resourceIndex:(unint64_t)self1 storageMode:(unint64_t)self2 resourceOptions:(unint64_t)self3
{
  v16 = [objc_opt_new() init];
  [v16 setResourceOptions:(16 * (mode & 0xF)) | options];
  [v16 setLength:length];
  v17 = [device newBufferWithDescriptor:v16];

  if (v17)
  {
    if ([(IOGPUMetalTensor *)self initWithBuffer:v17])
    {
      operator new();
    }

    if ((usage & 4) != 0)
    {
      MEMORY[0x160] = v17;
    }

    else
    {
    }
  }

  else
  {
  }

  MEMORY[0x150] = usage;
  MEMORY[0x158] = 0;
  return 0;
}

@end