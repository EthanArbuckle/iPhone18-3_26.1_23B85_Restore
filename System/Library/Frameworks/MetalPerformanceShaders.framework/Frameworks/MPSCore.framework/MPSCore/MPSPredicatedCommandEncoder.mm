@interface MPSPredicatedCommandEncoder
+ (id)predicatedEncoderWithMPSCommandBuffer:(id)buffer commandEncoder:(id)encoder mpsDevice:(void *)device;
- (BOOL)respondsToSelector:(SEL)selector;
- (MPSPredicatedCommandEncoder)initWithMPSCommandBuffer:(id)buffer commandEncoder:(id)encoder mpsDevice:(void *)device;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
@end

@implementation MPSPredicatedCommandEncoder

+ (id)predicatedEncoderWithMPSCommandBuffer:(id)buffer commandEncoder:(id)encoder mpsDevice:(void *)device
{
  v8 = [MPSPredicatedCommandEncoder alloc];
  v10 = objc_msgSend_initWithMPSCommandBuffer_commandEncoder_mpsDevice_(v8, v9, buffer, encoder, device);

  return v10;
}

- (MPSPredicatedCommandEncoder)initWithMPSCommandBuffer:(id)buffer commandEncoder:(id)encoder mpsDevice:(void *)device
{
  v10.receiver = self;
  v10.super_class = MPSPredicatedCommandEncoder;
  v8 = [(MPSPredicatedCommandEncoder *)&v10 init];
  if (v8)
  {
    v8->_owningMPSCommandBuffer = buffer;
    v8->_originalCommandEncoder = encoder;
    v8->_mpsDevice = device;
    *&v8->_userBoundPipelineState = 0u;
    *&v8->_userBinding1.userBoundBuffer_set = 0u;
    *&v8->_userBinding1.userBoundBytes_length = 0u;
    *&v8->_userBinding1.userBoundOffset = 0u;
    *&v8->_userBinding2.userBoundBuffer_set = 0u;
    *&v8->_userBinding2.userBoundBytes_length = 0u;
    *&v8->_userBinding2.userBoundOffset = 0u;
    *&v8->_userBinding3.userBoundBuffer_set = 0u;
    *&v8->_userBinding3.userBoundBytes_length = 0u;
    v8->_userBinding3.userBoundOffset = 0;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSPredicatedCommandEncoder;
  [(MPSPredicatedCommandEncoder *)&v3 dealloc];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  if (objc_msgSend_predicate(self->_owningMPSCommandBuffer, a2, threads, threadgroup, v4) && MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    MTLReportFailure();
  }

  originalCommandEncoder = self->_originalCommandEncoder;
  v15 = *&threads->var0;
  var2 = threads->var2;
  v13 = *&threadgroup->var0;
  v14 = threadgroup->var2;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(originalCommandEncoder, v8, &v15, &v13, v9, v12);
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  v8 = objc_msgSend_predicate(self->_owningMPSCommandBuffer, a2, threadgroups, threadgroup, v4);
  if (!v8)
  {
    objc_msgSend_setComputePipelineState_(self->_originalCommandEncoder, v9, self->_userBoundPipelineState, v10, v11);
    originalCommandEncoder = self->_originalCommandEncoder;
    v63 = *&threadgroups->var0;
    var2 = threadgroups->var2;
    *v62 = *&threadgroup->var0;
    *&v62[16] = threadgroup->var2;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(originalCommandEncoder, v49, &v63, v62, v50);
    return;
  }

  v12 = v8;
  v61 = 0;
  v13 = objc_msgSend_dispatchBufferWithOffset_(self->_owningMPSCommandBuffer, v9, &v61, v10, v11);
  v14 = *&threadgroups->var0;
  *&v14 = vmovn_s64(*&threadgroups->var0);
  DWORD2(v14) = threadgroups->var2;
  v60 = v14;
  v15 = self->_originalCommandEncoder;
  mpsDevice = self->_mpsDevice;
  v21 = objc_msgSend_predicateBuffer(v12, v17, v18, v19, v20);
  v26 = objc_msgSend_predicateOffset(v12, v22, v23, v24, v25);
  v27 = v61;
  v65 = v60;
  MPSLibrary_DoNotUse = MPSDevice::GetMPSLibrary_DoNotUse(mpsDevice, &stru_2787C0420, v28, v29, v30);
  ComputeState = MPSLibrary::GetComputeState(MPSLibrary_DoNotUse, 0, xmmword_22E37D5A0, 1, 0, 0, 0);
  if (ComputeState)
  {
    v36 = ComputeState;
    objc_msgSend_setComputePipelineState_(v15, v33, ComputeState, v34, v35);
    v41 = objc_msgSend_threadExecutionWidth(v36, v37, v38, v39, v40);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v42, v21, v26, 17);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v43, v13, v27, 18);
    objc_msgSend_setBytes_length_atIndex_(v15, v44, &v65, 16, 19);
    v63 = vdupq_n_s64(1uLL);
    var2 = 1;
    *v62 = v41;
    *&v62[8] = v63;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v15, v45, &v63, v62, v46);
  }

  if (self->_userBinding1.userBoundBuffer_set)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_originalCommandEncoder, v33, self->_userBinding1.userBoundBuffer, self->_userBinding1.userBoundOffset, 17);
  }

  else
  {
    if (self->_userBinding1.userBoundBytes_set)
    {
      userBoundBytes = self->_userBinding1.userBoundBytes;
      if (userBoundBytes)
      {
        objc_msgSend_setBytes_length_atIndex_(self->_originalCommandEncoder, v33, userBoundBytes, self->_userBinding1.userBoundBytes_length, 17);
        if (self->_userBinding2.userBoundBuffer_set)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }
    }

    objc_msgSend_setBuffer_offset_atIndex_(self->_originalCommandEncoder, v33, 0, 0, 18);
  }

  if (self->_userBinding2.userBoundBuffer_set)
  {
LABEL_18:
    objc_msgSend_setBuffer_offset_atIndex_(self->_originalCommandEncoder, v47, self->_userBinding2.userBoundBuffer, self->_userBinding2.userBoundOffset, 18);
    if (self->_userBinding3.userBoundBuffer_set)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (self->_userBinding3.userBoundBytes_set && (v54 = self->_userBinding3.userBoundBytes) != 0)
    {
      objc_msgSend_setBytes_length_atIndex_(self->_originalCommandEncoder, v53, v54, self->_userBinding3.userBoundBytes_length, 19);
    }

    else
    {
      objc_msgSend_setBuffer_offset_atIndex_(self->_originalCommandEncoder, v53, 0, 0, 19);
    }

    goto LABEL_23;
  }

LABEL_10:
  if (self->_userBinding2.userBoundBytes_set && (v52 = self->_userBinding2.userBoundBytes) != 0)
  {
    objc_msgSend_setBytes_length_atIndex_(self->_originalCommandEncoder, v47, v52, self->_userBinding2.userBoundBytes_length, 18);
    if (!self->_userBinding3.userBoundBuffer_set)
    {
      goto LABEL_13;
    }
  }

  else
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_originalCommandEncoder, v47, 0, 0, 18);
    if (!self->_userBinding3.userBoundBuffer_set)
    {
      goto LABEL_13;
    }
  }

LABEL_21:
  objc_msgSend_setBuffer_offset_atIndex_(self->_originalCommandEncoder, v53, self->_userBinding3.userBoundBuffer, self->_userBinding3.userBoundOffset, 19);
LABEL_23:
  objc_msgSend_setComputePipelineState_(self->_originalCommandEncoder, v55, self->_userBoundPipelineState, v56, v57);
  v58 = self->_originalCommandEncoder;
  v63 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v58, v59, v13, v61, &v63);
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  switch(index)
  {
    case 0x13uLL:
      self->_userBinding3.userBoundBuffer = buffer;
      self->_userBinding3.userBoundOffset = offset;
      self->_userBinding3.userBoundBuffer_set = 1;
      self->_userBinding3.userBoundBytes = 0;
      self->_userBinding3.userBoundBytes_length = 0;
      self->_userBinding3.userBoundBytes_set = 0;
      break;
    case 0x12uLL:
      self->_userBinding2.userBoundBuffer = buffer;
      self->_userBinding2.userBoundOffset = offset;
      self->_userBinding2.userBoundBuffer_set = 1;
      self->_userBinding2.userBoundBytes = 0;
      self->_userBinding2.userBoundBytes_length = 0;
      self->_userBinding2.userBoundBytes_set = 0;
      break;
    case 0x11uLL:
      self->_userBinding1.userBoundBuffer = buffer;
      self->_userBinding1.userBoundOffset = offset;
      self->_userBinding1.userBoundBuffer_set = 1;
      self->_userBinding1.userBoundBytes = 0;
      self->_userBinding1.userBoundBytes_length = 0;
      self->_userBinding1.userBoundBytes_set = 0;
      break;
    default:
      objc_msgSend_setBuffer_offset_atIndex_(self->_originalCommandEncoder, a2, buffer, offset, index);
      break;
  }
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.location <= 0x11 && range.length >= 0x11)
  {
    v5 = offsets[17 - range.location];
    self->_userBinding1.userBoundBuffer = buffers[17 - range.location];
    self->_userBinding1.userBoundOffset = v5;
    self->_userBinding1.userBoundBuffer_set = 1;
    self->_userBinding1.userBoundBytes = 0;
    self->_userBinding1.userBoundBytes_length = 0;
    self->_userBinding1.userBoundBytes_set = 0;
  }

  if (range.location <= 0x12 && range.length >= 0x12)
  {
    v6 = offsets[18 - range.location];
    self->_userBinding2.userBoundBuffer = buffers[18 - range.location];
    self->_userBinding2.userBoundOffset = v6;
    self->_userBinding2.userBoundBuffer_set = 1;
    self->_userBinding2.userBoundBytes = 0;
    self->_userBinding2.userBoundBytes_length = 0;
    self->_userBinding2.userBoundBytes_set = 0;
  }

  if (range.location <= 0x13 && range.length >= 0x13)
  {
    v7 = offsets[19 - range.location];
    self->_userBinding3.userBoundBuffer = buffers[19 - range.location];
    self->_userBinding3.userBoundOffset = v7;
    self->_userBinding3.userBoundBuffer_set = 1;
    self->_userBinding3.userBoundBytes = 0;
    self->_userBinding3.userBoundBytes_length = 0;
    self->_userBinding3.userBoundBytes_set = 0;
  }

  MEMORY[0x2821F9670](self->_originalCommandEncoder, sel_setBuffers_offsets_withRange_, buffers, offsets, range.location);
}

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  switch(index)
  {
    case 0x13uLL:
      self->_userBinding3.userBoundOffset = offset;
      break;
    case 0x12uLL:
      self->_userBinding2.userBoundOffset = offset;
      break;
    case 0x11uLL:
      self->_userBinding1.userBoundOffset = offset;
      break;
    default:
      (MEMORY[0x2821F9670])(self->_originalCommandEncoder, sel_setBufferOffset_atIndex_, offset, index);
      break;
  }
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  switch(index)
  {
    case 0x13uLL:
      self->_userBinding3.userBoundBuffer = 0;
      self->_userBinding3.userBoundBuffer_set = 0;
      self->_userBinding3.userBoundBytes = bytes;
      self->_userBinding3.userBoundBytes_length = length;
      self->_userBinding3.userBoundOffset = 0;
      self->_userBinding3.userBoundBytes_set = 1;
      break;
    case 0x12uLL:
      self->_userBinding2.userBoundBuffer = 0;
      self->_userBinding2.userBoundBuffer_set = 0;
      self->_userBinding2.userBoundBytes = bytes;
      self->_userBinding2.userBoundBytes_length = length;
      self->_userBinding2.userBoundOffset = 0;
      self->_userBinding2.userBoundBytes_set = 1;
      break;
    case 0x11uLL:
      self->_userBinding1.userBoundBuffer = 0;
      self->_userBinding1.userBoundBuffer_set = 0;
      self->_userBinding1.userBoundBytes = bytes;
      self->_userBinding1.userBoundBytes_length = length;
      self->_userBinding1.userBoundOffset = 0;
      self->_userBinding1.userBoundBytes_set = 1;
      break;
    default:
      objc_msgSend_setBytes_length_atIndex_(self->_originalCommandEncoder, a2, bytes, length, index);
      break;
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    return self->_originalCommandEncoder;
  }

  else
  {
    return 0;
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MPSPredicatedCommandEncoder;
  return [(MPSPredicatedCommandEncoder *)&v6 respondsToSelector:selector];
}

@end