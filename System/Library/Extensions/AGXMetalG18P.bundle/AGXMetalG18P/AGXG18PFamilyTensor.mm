@interface AGXG18PFamilyTensor
- (AGXG18PFamilyTensor)initWithBuffer:(id)a3 device:(id)a4 rank:(unsigned __int8)a5 dims:(unint64_t *)a6 strides:(unint64_t *)a7 offset:(unint64_t)a8 dataType:(unsigned __int8)a9 usage:(unint64_t)a10 resourceIndex:(unint64_t)a11;
- (AGXG18PFamilyTensor)initWithDevice:(id)a3 length:(unint64_t)a4 rank:(unsigned __int8)a5 dims:(unint64_t *)a6 strides:(unint64_t *)a7 offset:(unint64_t)a8 dataType:(unsigned __int8)a9 usage:(unint64_t)a10 resourceIndex:(unint64_t)a11 storageMode:(unint64_t)a12 resourceOptions:(unint64_t)a13;
- (id)dimensions;
- (id)strides;
- (int64_t)dataType;
- (unint64_t)bufferOffset;
- (unint64_t)offset;
- (void)dealloc;
- (void)getBytes:(void *)a3 strides:(id)a4 fromSlice:(MTLTensorSlice)a5;
- (void)getBytes:(void *)a3 strides:(id)a4 fromSliceOrigin:(id)a5 sliceDimensions:(id)a6;
- (void)replaceSlice:(MTLTensorSlice)a3 withBytes:(const void *)a4 strides:(id)a5;
- (void)replaceSliceOrigin:(id)a3 sliceDimensions:(id)a4 withBytes:(const void *)a5 strides:(id)a6;
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

- (void)getBytes:(void *)a3 strides:(id)a4 fromSlice:(MTLTensorSlice)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = [a4 tensorExtentsInternal];
  impl = self->_impl;
  v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(impl + 336)];
  v12 = impl[4] * v11;
  if (*(impl + 337))
  {
    v13 = v9;
    v14 = 0;
    do
    {
      v15 = [var0 tensorExtentsInternal];
      v16 = self->_impl;
      v12 += *(v15 + 8 * v14 + 8) * v11 * v16[v14 + 24];
      ++v14;
    }

    while (v14 < *(v16 + 337));
    v17 = (v16[1] + v12);
    if (*(v16 + 337))
    {
      recursiveGet(v16, a3, v13, var1, v17, 0, 0, v11, *[var1 tensorExtentsInternal] - 1);
      return;
    }
  }

  else
  {
    v17 = (impl[1] + v12);
  }

  memcpy(a3, v17, v11);
}

- (void)getBytes:(void *)a3 strides:(id)a4 fromSliceOrigin:(id)a5 sliceDimensions:(id)a6
{
  v10 = [a4 tensorExtentsInternal];
  impl = self->_impl;
  v12 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(impl + 336)];
  v13 = impl[4] * v12;
  if (*(impl + 337))
  {
    v14 = v10;
    v15 = 0;
    do
    {
      v16 = [a5 tensorExtentsInternal];
      v17 = self->_impl;
      v13 += *(v16 + 8 * v15 + 8) * v12 * v17[v15 + 24];
      ++v15;
    }

    while (v15 < *(v17 + 337));
    v18 = (v17[1] + v13);
    if (*(v17 + 337))
    {
      recursiveGet(v17, a3, v14, a6, v18, 0, 0, v12, *[a6 tensorExtentsInternal] - 1);
      return;
    }
  }

  else
  {
    v18 = (impl[1] + v13);
  }

  memcpy(a3, v18, v12);
}

- (void)replaceSlice:(MTLTensorSlice)a3 withBytes:(const void *)a4 strides:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = [a5 tensorExtentsInternal];
  impl = self->_impl;
  v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(impl + 336)];
  v12 = impl[4] * v11;
  if (*(impl + 337))
  {
    v13 = v9;
    v14 = 0;
    do
    {
      v15 = [var0 tensorExtentsInternal];
      v16 = self->_impl;
      v12 += *(v15 + 8 * v14 + 8) * v11 * v16[v14 + 24];
      ++v14;
    }

    while (v14 < *(v16 + 337));
    v17 = (v16[1] + v12);
    if (*(v16 + 337))
    {
      recursiveReplace(v16, var1, a4, v13, v17, 0, 0, v11, *[var1 tensorExtentsInternal] - 1);
      return;
    }
  }

  else
  {
    v17 = (impl[1] + v12);
  }

  memcpy(v17, a4, v11);
}

- (void)replaceSliceOrigin:(id)a3 sliceDimensions:(id)a4 withBytes:(const void *)a5 strides:(id)a6
{
  v10 = [a6 tensorExtentsInternal];
  impl = self->_impl;
  v12 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(impl + 336)];
  v13 = impl[4] * v12;
  if (*(impl + 337))
  {
    v14 = v10;
    v15 = 0;
    do
    {
      v16 = [a3 tensorExtentsInternal];
      v17 = self->_impl;
      v13 += *(v16 + 8 * v15 + 8) * v12 * v17[v15 + 24];
      ++v15;
    }

    while (v15 < *(v17 + 337));
    v18 = (v17[1] + v13);
    if (*(v17 + 337))
    {
      recursiveReplace(v17, a4, a5, v14, v18, 0, 0, v12, *[a4 tensorExtentsInternal] - 1);
      return;
    }
  }

  else
  {
    v18 = (impl[1] + v13);
  }

  memcpy(v18, a5, v12);
}

- (AGXG18PFamilyTensor)initWithBuffer:(id)a3 device:(id)a4 rank:(unsigned __int8)a5 dims:(unint64_t *)a6 strides:(unint64_t *)a7 offset:(unint64_t)a8 dataType:(unsigned __int8)a9 usage:(unint64_t)a10 resourceIndex:(unint64_t)a11
{
  if (a3)
  {
    [a3 length];
    v13 = [(IOGPUMetalTensor *)self initWithBuffer:a3];
    if (v13)
    {
      operator new();
    }
  }

  else
  {
    v13 = 0;
  }

  v13->_usage = a10;
  v13->_buffer = a3;
  return v13;
}

- (AGXG18PFamilyTensor)initWithDevice:(id)a3 length:(unint64_t)a4 rank:(unsigned __int8)a5 dims:(unint64_t *)a6 strides:(unint64_t *)a7 offset:(unint64_t)a8 dataType:(unsigned __int8)a9 usage:(unint64_t)a10 resourceIndex:(unint64_t)a11 storageMode:(unint64_t)a12 resourceOptions:(unint64_t)a13
{
  v16 = [objc_opt_new() init];
  [v16 setResourceOptions:(16 * (a12 & 0xF)) | a13];
  [v16 setLength:a4];
  v17 = [a3 newBufferWithDescriptor:v16];

  if (v17)
  {
    if ([(IOGPUMetalTensor *)self initWithBuffer:v17])
    {
      operator new();
    }

    if ((a10 & 4) != 0)
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

  MEMORY[0x150] = a10;
  MEMORY[0x158] = 0;
  return 0;
}

@end