@interface AGXG18PFamilyIndirectComputeCommand
- ($BABEB1BE14C5C6B6BE38662F6CD5FDF9)getStageInRegion;
- (AGXG18PFamilyIndirectComputeCommand)initWithEncoder:(void *)encoder withIndex:(unsigned int)index;
- (id)dispatchThreadgroupsArguments;
- (id)dispatchThreadsArguments;
- (id)getImageBlockSize;
- (unint64_t)getCommandType;
- (unint64_t)getKernelAttributeStrideAtIndex:(unint64_t)index;
- (unint64_t)getPipelineStateUniqueIdentifier;
- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)reset;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setStageInRegion:(id *)region;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
@end

@implementation AGXG18PFamilyIndirectComputeCommand

- (unint64_t)getPipelineStateUniqueIdentifier
{
  encoder = self->_encoder;
  v3 = encoder[1];
  if (*(v3 + 24))
  {
    return 0;
  }

  else
  {
    return *(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(v3 + 100) + *(v3 + 104) * self->_index);
  }
}

- (id)dispatchThreadgroupsArguments
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x29EDC5638];
  v5 = (*(*self->_encoder + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 1) + 52) + *(*(self->_encoder + 1) + 56) * self->_index);
  v6 = v5[5] / (v5[8] & 0x7FFu);
  v7 = v5[6] / (v5[9] & 0x7FFu);
  v8 = v5[7] / (v5[10] & 0x7FFu);
  *&v14 = v6;
  *(&v14 + 1) = v7;
  v15 = v8;
  [v3 setThreadgroupsPerGrid:&v14];
  v9 = (*(*self->_encoder + *v4 + 24) + *(*(self->_encoder + 1) + 52) + *(*(self->_encoder + 1) + 56) * self->_index);
  v10 = v9[5].i32[0] & 0x7FF;
  v11 = vand_s8(v9[4], 0x700000007);
  *&v12 = v11.u32[0];
  *(&v12 + 1) = v11.u32[1];
  v14 = v12;
  v15 = v10;
  [v3 setThreadsPerThreadgroup:&v14];
  return v3;
}

- (unint64_t)getCommandType
{
  encoder = self->_encoder;
  index = self->_index;
  v4 = encoder[1];
  v5 = *(*encoder + *MEMORY[0x29EDC5638] + 24);
  v6 = v5 + v4[13] + v4[14] * index;
  if (!*(v6 + 20) && !*(v6 + 28) && !*(v6 + 32) && !*(v6 + 36) && !*(v6 + 40))
  {
    return 0;
  }

  if (*(v5 + v4[29] + v4[30] * index))
  {
    return 64;
  }

  return 32;
}

- (unint64_t)getKernelAttributeStrideAtIndex:(unint64_t)index
{
  encoder = self->_encoder;
  v4 = encoder[1];
  if (*(v4 + 160) != 1)
  {
    return -1;
  }

  result = *(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(v4 + 124) + *(v4 + 128) * self->_index + 4 * index);
  if (result == -1)
  {
    return -1;
  }

  return result;
}

- (id)dispatchThreadsArguments
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x29EDC5638];
  v5 = *(*self->_encoder + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 1) + 52) + *(*(self->_encoder + 1) + 56) * self->_index;
  v6 = *(v5 + 20);
  v7 = *(v5 + 28);
  *&v13 = v6;
  *(&v13 + 1) = HIDWORD(v6);
  v14 = v7;
  [v3 setThreadsPerGrid:&v13];
  v8 = (*(*self->_encoder + *v4 + 24) + *(*(self->_encoder + 1) + 52) + *(*(self->_encoder + 1) + 56) * self->_index);
  v9 = v8[5].i32[0] & 0x7FF;
  v10 = vand_s8(v8[4], 0x700000007);
  *&v11 = v10.u32[0];
  *(&v11 + 1) = v10.u32[1];
  v13 = v11;
  v14 = v9;
  [v3 setThreadsPerThreadgroup:&v13];
  return v3;
}

- (id)getImageBlockSize
{
  v3 = objc_opt_new();
  v4 = *(*(*self->_encoder + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 1) + 108) + *(*(self->_encoder + 1) + 112) * self->_index + 24);
  v5 = HIDWORD(v4);
  [v3 setWidth:v4];
  [v3 setHeight:v5];
  return v3;
}

- ($BABEB1BE14C5C6B6BE38662F6CD5FDF9)getStageInRegion
{
  v3 = (*(*self->var0.var1 + *MEMORY[0x29EDC5638] + 24) + (*(*(self->var0.var1 + 8) + 68) + *(*(self->var0.var1 + 8) + 72) * LODWORD(self->var0.var2)));
  v4 = v3[6];
  v5 = v3[7];
  *&v6 = v4;
  *(&v6 + 1) = HIDWORD(v4);
  v7 = v6;
  *&v6 = v5;
  *(&v6 + 1) = HIDWORD(v5);
  *&retstr->var0.var0 = v7;
  *&retstr->var0.var2 = v6;
  *&v7 = v3[8];
  *&v6 = v7;
  *(&v6 + 1) = DWORD1(v7);
  *&retstr->var1.var1 = v6;
  return self;
}

- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  encoder = self->_encoder;
  index = self->_index;
  var1 = threads->var1;
  var2 = threads->var2;
  v8 = threadgroup->var2;
  v9 = MEMORY[0x29EDC5638];
  v10 = (*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(encoder[1] + 52) + *(encoder[1] + 56) * index);
  v11 = threads->var0 | (var1 << 32);
  v12 = vmovn_s64(*&threadgroup->var0);
  v10[2].i32[1] = threads->var0;
  v10[3].i32[0] = var1;
  v10[3].i32[1] = var2;
  v10[4] = vand_s8(v12, 0x700000007);
  v10[5].i32[0] = v8 & 0x7FF;
  v13 = *(*encoder + *v9 + 24) + *(encoder[1] + 108) + *(encoder[1] + 112) * index;
  *v13 = v11;
  *(v13 + 8) = var2;
  *(v13 + 12) = 0x100000001;
  *(v13 + 20) = 1;
  v14 = *(*encoder + *v9 + 24);
  v15 = *(encoder[1] + 116) + *(encoder[1] + 120) * index;
  *(v14 + v15) |= 1u;
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  widthCopy = width;
  encoder = self->_encoder;
  index = self->_index;
  v7 = *encoder;
  v8 = encoder[1];
  v9 = *(*encoder + *MEMORY[0x29EDC5638] + 24) + *(v8 + 108) + *(v8 + 112) * index;
  *(v9 + 24) = widthCopy;
  *(v9 + 28) = height;
  if ((*(v8 + 24) & 1) == 0)
  {
    AGX::IndirectComputeCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::recalculateThreadgroupOffsets(v7, v8, index);
  }
}

- (void)setStageInRegion:(id *)region
{
  v3 = *(*self->_encoder + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 1) + 68) + *(*(self->_encoder + 1) + 72) * self->_index;
  *(v3 + 48) = vuzp1q_s32(*&region->var0.var0, *&region->var0.var2);
  *(v3 + 64) = vmovn_s64(*&region->var1.var1);
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  encoder = self->_encoder;
  index = self->_index;
  v6 = *encoder;
  v7 = encoder[1];
  *(*(*encoder + *MEMORY[0x29EDC5638] + 24) + v7[23] + v7[24] * index + 4 * index) = length;
  AGX::IndirectComputeCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::recalculateThreadgroupOffsets(v6, v7, index);
}

- (void)reset
{
  encoder = self->_encoder;
  index = self->_index;
  v4 = MEMORY[0x29EDC5638];
  v5 = *MEMORY[0x29EDC5638];
  v7 = *encoder;
  v6 = encoder[1];
  v8 = *(*encoder + v5 + 24);
  v9 = v8 + *(v6 + 52) + *(v6 + 56) * index;
  if ((*(v6 + 25) & 1) == 0)
  {
    bzero((v8 + *(v6 + 60) + *(v6 + 64) * index), *(v6 + 64));
    v7 = *encoder;
    v6 = encoder[1];
    LODWORD(v5) = *v4;
  }

  if (*(v6 + 160) == 1)
  {
    bzero((*(v7 + v5 + 24) + *(v6 + 124) + *(v6 + 128) * index), *(v6 + 128));
    v7 = *encoder;
    v6 = encoder[1];
    LODWORD(v5) = *v4;
  }

  v10 = (*(v7 + v5 + 24) + *(v6 + 68) + *(v6 + 72) * index);
  v10[6] = 0;
  v10[7] = 0;
  v10[8] = 0;
  bzero((*(*encoder + *v4 + 24) + *(encoder[1] + 92) + *(encoder[1] + 96) * index), *(encoder[1] + 96));
  *(v9 + 28) = 0;
  *(v9 + 20) = 0;
  *(v9 + 36) = 0;
  *v9 = 1610612736;
  v11 = encoder[1];
  if ((*(v11 + 24) & 1) == 0)
  {
    v12 = *encoder;
    *(*(*encoder + *v4 + 24) + *(v11 + 100) + *(v11 + 104) * index) = 0;
    v13 = *(v11 + 80);
    v14 = (*(v12 + *v4 + 24) + *(v11 + 76) + v13 * index);

    bzero(v14, v13);
  }
}

- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  encoder = self->_encoder;
  index = self->_index;
  var0 = threadgroups->var0;
  var1 = threadgroups->var1;
  var2 = threadgroups->var2;
  v9 = threadgroup->var0;
  v10 = threadgroup->var1;
  v11 = threadgroup->var2;
  v12 = MEMORY[0x29EDC5638];
  v13 = (*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(encoder[1] + 52) + *(encoder[1] + 56) * index);
  v14 = threadgroup->var0 * threadgroups->var0;
  v15 = threadgroup->var0 & 0x7FF;
  v13[5] = v14;
  v13[6] = (v10 * (var1 << 32)) >> 32;
  v13[7] = v11 * var2;
  v13[8] = v15;
  v13[9] = v10 & 0x7FF;
  v13[10] = v11 & 0x7FF;
  v16 = var0 | (var1 << 32);
  v17 = *(*encoder + *v12 + 24) + *(encoder[1] + 108) + *(encoder[1] + 112) * index;
  *v17 = v16;
  *(v17 + 8) = var2;
  *(v17 + 12) = v9 | (v10 << 32);
  *(v17 + 20) = v11;
  v18 = *(*encoder + *v12 + 24);
  v19 = *(encoder[1] + 116) + *(encoder[1] + 120) * index;
  *(v18 + v19) &= ~1u;
}

- (void)setComputePipelineState:(id)state
{
  encoder = self->_encoder;
  index = self->_index;
  v5 = MEMORY[0x29EDC5638];
  v6 = *(*encoder + *MEMORY[0x29EDC5638] + 24) + *(encoder[1] + 52) + *(encoder[1] + 56) * index;
  v7 = state + 112;
  v8 = *(state + 16);
  v9 = *(v8 + 3272);
  v10 = *(v6 + 8);
  *(v6 + 4) = *(v6 + 4) & 0xFFFF8007 | (8 * (*(v9 + 324) & 0xFFF));
  *(v6 + 8) = v10 & 0xFFE00007 | (8 * (*(v9 + 320) & 0x3FFFF));
  v11 = encoder[1];
  v12 = v11[21] + v11[22] * index;
  v13 = *(*encoder + *v5 + 24) + v11[11];
  v14 = *(v8 + 3264);
  v22 = 0u;
  *v23 = 0u;
  v25 = v14 & 0xFFFFFFFFFFFFLL;
  *&v23[12] = 0x300000008;
  v24 = 1;
  AGXIotoInstruction_B_1::emit(&v22, (v13 + v12));
  v15 = *encoder;
  v16 = encoder[1];
  v17 = *(*encoder + *v5 + 24) + v16[23] + v16[24] * index;
  *(v17 + 144) = 4 * *(v8 + 3912);
  *(v17 + 148) = (*(v8 + 4084) + 3) >> 2;
  AGX::IndirectComputeCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::recalculateThreadgroupOffsets(v15, v16, index);
  v18 = *encoder;
  v19 = encoder[1];
  *(*(*encoder + *v5 + 24) + v19[25] + v19[26] * index) = *(v7 + 4);
  v20 = *(v7 + 6);
  v21 = (*(v18 + *v5 + 24) + v19[19] + v19[20] * index);
  *v21 = v20[11];
  v21[1] = v20[12];
  v21[2] = v20[13];
}

- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  encoder = self->_encoder;
  index = self->_index;
  v8 = MEMORY[0x29EDC5638];
  v9 = *MEMORY[0x29EDC5638];
  v11 = *encoder;
  v10 = encoder[1];
  v12 = *(v11 + v9 + 24) + *(v10 + 60) + *(v10 + 64) * index;
  if (buffer)
  {
    v13 = *(buffer + v9 + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 8 * index) = v13 + offset;
  if (*(v10 + 160) == 1)
  {
    *(*(v11 + *v8 + 24) + *(v10 + 124) + *(v10 + 128) * index + 4 * index) = stride;
  }
}

- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  encoder = self->_encoder;
  index = self->_index;
  v7 = MEMORY[0x29EDC5638];
  v8 = *MEMORY[0x29EDC5638];
  v10 = *encoder;
  v9 = encoder[1];
  v11 = *(v10 + v8 + 24) + *(v9 + 60) + *(v9 + 64) * index;
  if (buffer)
  {
    v12 = *(buffer + v8 + 8);
  }

  else
  {
    v12 = 0;
  }

  *(v11 + 8 * index) = v12 + offset;
  if (*(v9 + 160) == 1)
  {
    *(*(v10 + *v7 + 24) + *(v9 + 124) + *(v9 + 128) * index + 4 * index) = -1;
  }
}

- (AGXG18PFamilyIndirectComputeCommand)initWithEncoder:(void *)encoder withIndex:(unsigned int)index
{
  self->_encoder = encoder;
  self->_index = index;
  return self;
}

@end