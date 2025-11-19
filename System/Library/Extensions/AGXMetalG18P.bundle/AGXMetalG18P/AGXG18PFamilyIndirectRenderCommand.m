@interface AGXG18PFamilyIndirectRenderCommand
- (AGXG18PFamilyIndirectRenderCommand)initWithEncoder:(void *)a3 withIndex:(unsigned int)a4;
- (id)drawArguments;
- (id)drawIndexedArguments;
- (id)drawIndexedPatchesArguments;
- (id)drawMeshThreadgroupsArguments;
- (id)drawMeshThreadsArguments;
- (id)drawPatchesArguments;
- (id)getBlendColor;
- (id)getDepthBiasInfo;
- (id)getDepthTestBounds;
- (id)getScissorRects;
- (id)getStencilReferenceValues;
- (id)getTessellationFactorArguments;
- (id)getViewports;
- (unint64_t)getCommandType;
- (unint64_t)getVertexAttributeStrideAtIndex:(unint64_t)a3;
- (unint64_t)getVertexBufferAddressAtIndex:(unint64_t)a3;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)reset;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFragmentArguments:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4;
- (void)setStencilReferenceValue:(unsigned int)a3;
- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexArguments:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
@end

@implementation AGXG18PFamilyIndirectRenderCommand

- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5
{
  encoder = self->_encoder;
  index = self->_index;
  v7 = *(*encoder + *MEMORY[0x29EDC5638] + 24);
  if (a5)
  {
    *(v7 + *(encoder[1] + 220) + *(encoder[1] + 224) * index + 8 * a4) = a3;
    if ((a5 & 2) == 0)
    {
LABEL_3:
      if ((a5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a5 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v7 + *(encoder[1] + 244) + *(encoder[1] + 248) * index + 8 * a4) = a3;
  if ((a5 & 8) == 0)
  {
LABEL_4:
    if ((a5 & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    *(v7 + *(encoder[1] + 236) + *(encoder[1] + 240) * index + 8 * a4) = a3;
    return;
  }

LABEL_8:
  *(v7 + *(encoder[1] + 228) + *(encoder[1] + 232) * index + 8 * a4) = a3;
  if ((a5 & 0x10) != 0)
  {
    goto LABEL_9;
  }
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  encoder = self->_encoder;
  index = self->_index;
  v6 = MEMORY[0x29EDC5638];
  v8 = *encoder;
  v7 = encoder[1];
  *(*(v8 + *MEMORY[0x29EDC5638] + 24) + v7[95] + v7[96] * index + 4 * (a4 + 1)) = a3;
  v9 = *(v8 + *v6 + 24);
  v10 = v7[95] + v7[96] * index;
  v11 = *(v9 + v10);
  v12 = v7[108];
  if (v12)
  {
    v13 = (v9 + v7[97] + v7[98] * index);
    v14 = (v10 + v9 + 4);
    do
    {
      *v13++ = v11;
      v15 = *v14++;
      v11 += v15;
      --v12;
    }

    while (v12);
    v9 = *(v8 + *v6 + 24);
  }

  v16 = (v9 + v7[47] + v7[48] * index);
  v17 = (v11 + 63) & 0xFFFFFFC0;
  if (v17 == 0x10000)
  {
    v17 = 0;
  }

  v18 = *v16 & 0x17 | (v17 >> 6 << 11);
  v16[1] = (v17 >> 8) & 0xF8 | v16[1] & 0xFF07;
  *v16 = v18 | (8 * (v17 != 0));
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  encoder = self->_encoder;
  v6 = *MEMORY[0x29EDC5638];
  v7 = encoder[1];
  v8 = *(*encoder + v6 + 24);
  v9 = *(v7 + 196);
  v10 = *(v7 + 200);
  if (a3)
  {
    v11 = *(a3 + v6 + 8);
  }

  else
  {
    v11 = 0;
  }

  *(v8 + v9 + v10 * self->_index + 8 * a5) = v11 + a4;
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  encoder = self->_encoder;
  v6 = *MEMORY[0x29EDC5638];
  v7 = encoder[1];
  v8 = *(*encoder + v6 + 24);
  v9 = *(v7 + 212);
  v10 = *(v7 + 216);
  if (a3)
  {
    v11 = *(a3 + v6 + 8);
  }

  else
  {
    v11 = 0;
  }

  *(v8 + v9 + v10 * self->_index + 8 * a5) = v11 + a4;
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  encoder = self->_encoder;
  index = self->_index;
  var0_low = LODWORD(a3->var0);
  var1 = a3->var1;
  var2 = a3->var2;
  v32 = *a4;
  v10 = LODWORD(a5->var0);
  v11 = a5->var1;
  v12 = a5->var2;
  v13 = v10 | (v11 << 32);
  v14 = encoder[1];
  if (*(v14 + 396) == 1)
  {
    AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeCommonDrawMeshInherited(encoder, index);
    v14 = encoder[1];
  }

  v15 = (var0_low / v10) | ((var1 / v11) << 32);
  v16 = MEMORY[0x29EDC5638];
  v17 = *encoder + *MEMORY[0x29EDC5638];
  v18 = *(v17 + 24);
  v19 = v18 + *(v14 + 228) + *(v14 + 232) * index;
  v20 = *(v14 + 292) + *(v14 + 296) * index;
  v21 = *(v17 + 8) + v20;
  v22 = v18 + v20;
  *(v22 + 51) = 1;
  *v22 = var0_low | (var1 << 32);
  *(v22 + 8) = var2;
  *(v22 + 36) = v15;
  *(v22 + 44) = var2 / v12;
  *(v19 + 72) = v21;
  *(v22 + 12) = 0x100000001;
  *(v22 + 20) = 1;
  *(v19 + 80) = v21 + 12;
  v23 = *(*encoder + *v16 + 24) + *(encoder[1] + 292) + *(encoder[1] + 296) * index;
  *(v23 + 24) = v13;
  *(v23 + 32) = v12;
  v24 = encoder[1];
  v25 = *(*encoder + *v16 + 24) + *(v24 + 140) + *(v24 + 144) * index;
  v26 = 52;
  if (*(v24 + 396))
  {
    v26 = 36;
  }

  v28 = *(v24 + 128);
  v27 = *(v24 + 132);
  v29 = v28 + v26;
  v30 = (v25 + v27);
  if (v27 != v29 && v25 + v27 >= (v25 + v29))
  {
    __pattern4 = 0x20000000;
    memset_pattern4((v25 + v29), &__pattern4, v27 - v29);
  }

  v30->i32[0] = 1879048192;
  v30->i32[1] = var0_low;
  v30[1].i32[0] = var1;
  v30[1].i32[1] = var2;
  v30[2] = vmovn_s64(*&v32.var0);
  v30[3].i32[0] = v32.var2;
  v31 = *(*encoder + *v16 + 24) + *(encoder[1] + 136) + *(encoder[1] + 140) + *(encoder[1] + 144) * index;
  if (v31 > &v30[3] + 4)
  {
    v34 = 0x20000000;
    memset_pattern4(&v30[3] + 4, &v34, v31 - (v30 + 28));
  }
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  encoder = self->_encoder;
  index = self->_index;
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  v11 = a4->var0;
  v10 = a4->var1;
  v12 = a4->var2;
  v13 = a5->var2;
  v14 = LODWORD(a5->var0) | (a5->var1 << 32);
  v15 = v10 << 32;
  v16 = a4->var0 | (v10 << 32);
  v17 = a3->var0 | (var1 << 32);
  v18 = encoder[1];
  if (*(v18 + 396) == 1)
  {
    v44 = LODWORD(a5->var0) | (a5->var1 << 32);
    v45 = a4->var2;
    v19 = index;
    v46 = a4->var0;
    v20 = a4->var1;
    v21 = a5->var2;
    v22 = index;
    v23 = a3->var0;
    v11 = v15;
    AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeCommonDrawMeshInherited(encoder, v19);
    v15 = v11;
    LODWORD(var0) = v23;
    index = v22;
    v13 = v21;
    LODWORD(v10) = v20;
    v14 = v44;
    LODWORD(v12) = v45;
    LODWORD(v11) = v46;
    v18 = encoder[1];
  }

  v24 = MEMORY[0x29EDC5638];
  v25 = *encoder + *MEMORY[0x29EDC5638];
  v26 = *(v25 + 24);
  v27 = v26 + *(v18 + 228) + *(v18 + 232) * index;
  v28 = *(v18 + 292) + *(v18 + 296) * index;
  v29 = *(v25 + 8) + v28;
  v30 = v26 + v28;
  *(v30 + 51) = 0;
  *v30 = v17;
  *(v30 + 8) = var2;
  *(v30 + 36) = v17;
  *(v30 + 44) = var2;
  *(v27 + 72) = v29;
  *(v30 + 12) = v16;
  *(v30 + 20) = v12;
  *(v27 + 80) = v29 + 12;
  v31 = *(*encoder + *v24 + 24) + *(encoder[1] + 292) + *(encoder[1] + 296) * index;
  *(v31 + 24) = v14;
  *(v31 + 32) = v13;
  v32 = var0 * v11;
  v33 = v15 * var1;
  v34 = var2 * v12;
  v35 = encoder[1];
  v36 = *(*encoder + *v24 + 24) + *(v35 + 140) + *(v35 + 144) * index;
  v37 = 52;
  if (*(v35 + 396))
  {
    v37 = 36;
  }

  v39 = *(v35 + 128);
  v38 = *(v35 + 132);
  v40 = v39 + v37;
  v41 = (v36 + v38);
  if (v38 != v40 && v36 + v38 >= (v36 + v40))
  {
    __pattern4 = 0x20000000;
    v42 = v24;
    memset_pattern4((v36 + v40), &__pattern4, v38 - v40);
    v24 = v42;
  }

  *v41 = 1879048192;
  v41[1] = v32;
  v41[2] = HIDWORD(v33);
  v41[3] = v34;
  v41[4] = v11;
  v41[5] = v10;
  v41[6] = v12;
  v43 = *(*encoder + *v24 + 24) + *(encoder[1] + 136) + *(encoder[1] + 140) + *(encoder[1] + 144) * index;
  if (v43 > (v41 + 7))
  {
    v48 = 0x20000000;
    memset_pattern4(v41 + 7, &v48, v43 - (v41 + 7));
  }
}

- (id)drawMeshThreadsArguments
{
  v3 = objc_opt_new();
  encoder = self->_encoder;
  v5 = MEMORY[0x29EDC5638];
  v6 = *(*encoder + *MEMORY[0x29EDC5638] + 24) + *(encoder[1] + 132) + *(encoder[1] + 140) + *(encoder[1] + 144) * self->_index;
  v7 = *(v6 + 4);
  v8 = *(v6 + 12);
  *&v9 = v7;
  *(&v9 + 1) = HIDWORD(v7);
  v17 = v9;
  v18 = v8;
  [v3 setThreadsPerGrid:&v17];
  v10 = *(*self->_encoder + *v5 + 24) + *(*(self->_encoder + 1) + 292) + *(*(self->_encoder + 1) + 296) * self->_index;
  v11 = *(v10 + 20);
  v12 = *(v10 + 12);
  *&v9 = v12;
  *(&v9 + 1) = HIDWORD(v12);
  v17 = v9;
  v18 = v11;
  [v3 setThreadsPerObjectThreadgroup:&v17];
  v13 = *(*self->_encoder + *v5 + 24) + *(*(self->_encoder + 1) + 292) + *(*(self->_encoder + 1) + 296) * self->_index;
  v14 = *(v13 + 32);
  v15 = *(v13 + 24);
  *&v9 = v15;
  *(&v9 + 1) = HIDWORD(v15);
  v17 = v9;
  v18 = v14;
  [v3 setThreadsPerMeshThreadgroup:&v17];
  return v3;
}

- (id)drawMeshThreadgroupsArguments
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x29EDC5638];
  v5 = *(*self->_encoder + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 1) + 292) + *(*(self->_encoder + 1) + 296) * self->_index;
  v6 = *(v5 + 8);
  *&v7 = *v5;
  *(&v7 + 1) = HIDWORD(*v5);
  v15 = v7;
  v16 = v6;
  [v3 setThreadgroupsPerGrid:&v15];
  v8 = *(*self->_encoder + *v4 + 24) + *(*(self->_encoder + 1) + 292) + *(*(self->_encoder + 1) + 296) * self->_index;
  v9 = *(v8 + 20);
  v10 = *(v8 + 12);
  *&v7 = v10;
  *(&v7 + 1) = HIDWORD(v10);
  v15 = v7;
  v16 = v9;
  [v3 setThreadsPerObjectThreadgroup:&v15];
  v11 = *(*self->_encoder + *v4 + 24) + *(*(self->_encoder + 1) + 292) + *(*(self->_encoder + 1) + 296) * self->_index;
  v12 = *(v11 + 32);
  v13 = *(v11 + 24);
  *&v7 = v13;
  *(&v7 + 1) = HIDWORD(v13);
  v15 = v7;
  v16 = v12;
  [v3 setThreadsPerMeshThreadgroup:&v15];
  return v3;
}

- (id)drawIndexedPatchesArguments
{
  v3 = objc_opt_new();
  v4 = v3;
  encoder = self->_encoder;
  v6 = encoder[1];
  v7 = *(v6 + 224);
  v8 = MEMORY[0x29EDC5638];
  if (v7 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(v6 + 220) + v7 * self->_index + 124);
  }

  [v3 setNumberOfPatchControlPoints:v9];
  v10 = self->_encoder;
  [v4 setPatchStart:*(*(*v10 + *v8 + 24) + *(v10[1] + 132) + *(v10[1] + 140) + *(v10[1] + 144) * self->_index + 16)];
  v11 = self->_encoder;
  [v4 setPatchCount:*(*(*v11 + *v8 + 24) + *(v11[1] + 132) + *(v11[1] + 140) + *(v11[1] + 144) * self->_index + 8)];
  v12 = self->_encoder;
  v13 = v12[1];
  v14 = *(v13 + 224);
  if (v14 == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(*v12 + *v8 + 24) + *(v13 + 220) + v14 * self->_index + 32);
  }

  [v4 setPatchIndexBufferGPUVirtualAddress:v15];
  v16 = self->_encoder;
  v17 = v16[1];
  v18 = *(v17 + 224);
  if (v18 == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(*(*v16 + *v8 + 24) + *(v17 + 220) + v18 * self->_index + 40);
  }

  [v4 setControlPointIndexBufferGPUVirtualAddress:v19];
  v20 = self->_encoder;
  [v4 setInstanceCount:*(*(*v20 + *v8 + 24) + *(v20[1] + 132) + *(v20[1] + 140) + *(v20[1] + 144) * self->_index + 12)];
  v21 = self->_encoder;
  [v4 setBaseInstance:*(*(*v21 + *v8 + 24) + *(v21[1] + 132) + *(v21[1] + 140) + *(v21[1] + 144) * self->_index + 20)];

  return v4;
}

- (id)drawPatchesArguments
{
  v3 = objc_opt_new();
  v4 = v3;
  encoder = self->_encoder;
  v6 = encoder[1];
  v7 = *(v6 + 224);
  v8 = MEMORY[0x29EDC5638];
  if (v7 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(v6 + 220) + v7 * self->_index + 124);
  }

  [v3 setNumberOfPatchControlPoints:v9];
  v10 = self->_encoder;
  [v4 setPatchStart:*(*(*v10 + *v8 + 24) + *(v10[1] + 132) + *(v10[1] + 140) + *(v10[1] + 144) * self->_index + 16)];
  v11 = self->_encoder;
  [v4 setPatchCount:*(*(*v11 + *v8 + 24) + *(v11[1] + 132) + *(v11[1] + 140) + *(v11[1] + 144) * self->_index + 8)];
  v12 = self->_encoder;
  v13 = v12[1];
  v14 = *(v13 + 224);
  if (v14 == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(*v12 + *v8 + 24) + *(v13 + 220) + v14 * self->_index + 32);
  }

  [v4 setPatchIndexBufferGPUVirtualAddress:v15];
  [v4 setPatchIndexBufferOffset:0];
  v16 = self->_encoder;
  [v4 setInstanceCount:*(*(*v16 + *v8 + 24) + *(v16[1] + 132) + *(v16[1] + 140) + *(v16[1] + 144) * self->_index + 12)];
  v17 = self->_encoder;
  [v4 setBaseInstance:*(*(*v17 + *v8 + 24) + *(v17[1] + 132) + *(v17[1] + 140) + *(v17[1] + 144) * self->_index + 20)];

  return v4;
}

- (id)drawIndexedArguments
{
  v3 = objc_opt_new();
  v4 = v3;
  encoder = self->_encoder;
  v6 = MEMORY[0x29EDC5638];
  v7 = ((*(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(encoder[1] + 140) + *(encoder[1] + 144) * self->_index + *(encoder[1] + 132)) >> 8) & 0xF) - 1;
  if (v7 > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_29D2F7868[v7];
  }

  [v3 setPrimitiveType:v8];
  v9 = self->_encoder;
  [v4 setIndexCount:*(*(*v9 + *v6 + 24) + *(v9[1] + 132) + *(v9[1] + 140) + *(v9[1] + 144) * self->_index + 8)];
  v10 = self->_encoder;
  [v4 setIndexType:((*(*(*v10 + *v6 + 24) + *(v10[1] + 140) + *(v10[1] + 144) * self->_index + *(v10[1] + 132)) >> 17) & 3u) - 1];
  v11 = self->_encoder;
  v12 = (*(*v11 + *v6 + 24) + *(v11[1] + 132) + *(v11[1] + 140) + *(v11[1] + 144) * self->_index);
  [v4 setIndexBufferGPUVirtualAddress:*(v12 + 1) | (v12[24] << 40) | (*v12 << 32)];
  v13 = self->_encoder;
  [v4 setInstanceCount:*(*(*v13 + *v6 + 24) + *(v13[1] + 132) + *(v13[1] + 140) + *(v13[1] + 144) * self->_index + 12)];
  v14 = self->_encoder;
  [v4 setBaseVertex:*(*(*v14 + *v6 + 24) + *(v14[1] + 132) + *(v14[1] + 140) + *(v14[1] + 144) * self->_index + 16)];
  v15 = self->_encoder;
  v16 = v15[1];
  v17 = *(v16 + 224);
  if (v17 == -1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(*(*v15 + *v6 + 24) + *(v16 + 220) + v17 * self->_index + 24);
  }

  [v4 setBaseInstance:v18];

  return v4;
}

- (id)drawArguments
{
  v3 = objc_opt_new();
  v4 = v3;
  encoder = self->_encoder;
  v6 = MEMORY[0x29EDC5638];
  v7 = ((*(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(encoder[1] + 140) + *(encoder[1] + 144) * self->_index + *(encoder[1] + 132)) >> 8) & 0xF) - 1;
  if (v7 > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_29D2F7868[v7];
  }

  [v3 setPrimitiveType:v8];
  v9 = self->_encoder;
  [v4 setVertexStart:*(*(*v9 + *v6 + 24) + *(v9[1] + 132) + *(v9[1] + 140) + *(v9[1] + 144) * self->_index + 12)];
  v10 = self->_encoder;
  [v4 setVertexCount:*(*(*v10 + *v6 + 24) + *(v10[1] + 132) + *(v10[1] + 140) + *(v10[1] + 144) * self->_index + 4)];
  v11 = self->_encoder;
  [v4 setInstanceCount:*(*(*v11 + *v6 + 24) + *(v11[1] + 132) + *(v11[1] + 140) + *(v11[1] + 144) * self->_index + 8)];
  [v4 setBaseInstance:*(*(*self->_encoder + *v6 + 24) + *(*(self->_encoder + 1) + 220) + *(*(self->_encoder + 1) + 224) * self->_index + 24)];

  return v4;
}

- (unint64_t)getCommandType
{
  encoder = self->_encoder;
  index = self->_index;
  v4 = encoder[1];
  v5 = *(*encoder + *MEMORY[0x29EDC5638] + 24);
  v6 = v4[56];
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v5 + v4[55] + v6 * index + 40);
  }

  v8 = *(v5 + v4[35] + v4[36] * index + v4[33]);
  if ((v8 & 0xF0200000) == 0x60000000)
  {
    return 1;
  }

  if ((v8 & 0xF0200000) == 0x60200000)
  {
    return 2;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v10 = v8 & 0xE0000000;
  if (v7 == 0x1EEEE1111 && v10 == -1610612736)
  {
    return 4;
  }

  if (v7 != 0x1EEEE1111 && v10 == -1610612736)
  {
    return 8;
  }

LABEL_15:
  if (v8 >> 28 != 7)
  {
    return 0;
  }

  if (*(v5 + v4[73] + v4[74] * index + 51))
  {
    return 256;
  }

  return 128;
}

- (void)reset
{
  encoder = self->_encoder;
  index = self->_index;
  v4 = MEMORY[0x29EDC5638];
  v6 = *encoder;
  v5 = encoder[1];
  *(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(v5 + 364) + *(v5 + 368) * index) = 0;
  if ((*(v5 + 397) & 1) == 0)
  {
    bzero((*(v6 + *v4 + 24) + *(v5 + 164) + *(v5 + 168) * index), *(v5 + 168));
    v5 = encoder[1];
    if (*(v5 + 440) == 1)
    {
      bzero((*(*encoder + *v4 + 24) + *(v5 + 180) + *(v5 + 184) * index), *(v5 + 184));
      v5 = encoder[1];
    }

    if (*(v5 + 443) == 1)
    {
      bzero((*(*encoder + *v4 + 24) + *(v5 + 212) + *(v5 + 216) * index), *(v5 + 216));
      bzero((*(*encoder + *v4 + 24) + *(encoder[1] + 196) + *(encoder[1] + 200) * index), *(encoder[1] + 200));
      v5 = encoder[1];
    }

    v6 = *encoder;
    if (*(v5 + 445) == 1)
    {
      bzero((*(v6 + *v4 + 24) + *(v5 + 340) + *(v5 + 344) * index), *(v5 + 344));
      v6 = *encoder;
      v5 = encoder[1];
    }
  }

  v7 = *(v6 + *v4 + 24);
  v8 = *(v5 + 144);
  v9 = *(v5 + 140) + v8 * index;
  __pattern4 = 0x20000000;
  memset_pattern4((v7 + v9), &__pattern4, v8);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v10 = a7;
  v12 = a5;
  encoder = self->_encoder;
  index = self->_index;
  v16 = encoder[1];
  v17 = MEMORY[0x29EDC5638];
  v49 = a4;
  v50 = a8;
  if (*(v16 + 396) == 1)
  {
    AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeCommonDrawInherited(encoder, index, a3);
    goto LABEL_19;
  }

  v18 = *(*encoder + *MEMORY[0x29EDC5638] + 24);
  v19 = v18 + *(v16 + 148) + *(v16 + 152) * index;
  if ((*(v16 + 332) & 0x80) != 0)
  {
    v20 = (*(v18 + *(v16 + 324) + *(v16 + 328) * index + 16) >> 18) & 3;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v19 + 32) & 0xFF7FFFFF;
  *(v19 + 32) = v21;
  if (a3 > 8)
  {
    goto LABEL_16;
  }

  if (((1 << a3) & 0x1D8) == 0)
  {
    v23 = 0x1000000010000000;
    if (((1 << a3) & 0x26) != 0)
    {
LABEL_17:
      *(v19 + 36) = vorr_s8((*(v19 + 36) & 0xFFFFFFF0FFFFFFFLL), v23);
LABEL_18:
      *(v19 + 32) = v21 | 0x4000000;
      goto LABEL_19;
    }

LABEL_16:
    v23 = 0x4000000040000000;
    goto LABEL_17;
  }

  if (v20 == 2)
  {
    v22 = 1610612736;
  }

  else
  {
    v22 = 0;
  }

  if (v20 == 1)
  {
    v22 = 1342177280;
  }

  *(v19 + 36) = vorr_s8(vdup_n_s32(v22 | (v20 << 18)), vand_s8(*(v19 + 36), vdup_n_s32(0xFF3FFFFu)));
  if (v20 == 1)
  {
    goto LABEL_18;
  }

LABEL_19:
  v24 = *encoder;
  v25 = encoder[1];
  v26 = *encoder + *v17;
  v27 = *(v26 + 24);
  v28 = (v27 + *(v25 + 220) + *(v25 + 224) * index);
  v29 = *(v25 + 284) + *(v25 + 288) * index;
  v30 = *(v26 + 8) + v29;
  v31 = (v27 + v29);
  v28[1] = v30;
  v28[2] = v30 + 8;
  v28[3] = a10;
  *v31 = a9;
  v31[1] = a10;
  v32 = *v17;
  v33 = *(a6 + v32 + 8) + v10;
  v34 = (*(a6 + v32 + 16) + 3) >> 2;
  v36 = a3 == 4 || a3 == 2;
  v37 = *(v24 + v32 + 24) + *(v25 + 128) + *(v25 + 140) + *(v25 + 144) * index;
  v38 = 24;
  if (*(v25 + 396))
  {
    v38 = 12;
  }

  v39 = -3221225471;
  if (!v12)
  {
    v39 = 0xFFFF40000001;
  }

  *(v37 + v38) = v39;
  v40 = encoder[1];
  v41 = *(*encoder + *v17 + 24) + *(v40 + 140) + *(v40 + 144) * index;
  v42 = 32;
  if (*(v40 + 396))
  {
    v42 = 20;
  }

  v44 = *(v40 + 128);
  v43 = *(v40 + 132);
  v45 = v44 + v42;
  v46 = (v41 + v43);
  if (v43 != v45 && v41 + v43 >= (v41 + v45))
  {
    __pattern4 = 0x20000000;
    memset_pattern4((v41 + v45), &__pattern4, v43 - v45);
  }

  if (v36)
  {
    v47 = 0x10000;
  }

  else
  {
    v47 = 0;
  }

  *v46 = BYTE4(v33) | v47 | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a3] + (v12 << 17)) & 0xFFEEFF00 | 0x100000;
  v46[1] = v33;
  v46[2] = v49;
  v46[3] = v50;
  v46[4] = a9;
  v46[5] = v34 - 1;
  v46[6] = BYTE5(v33);
  v48 = *(*encoder + *v17 + 24) + *(encoder[1] + 136) + *(encoder[1] + 140) + *(encoder[1] + 144) * index;
  if (v48 > (v46 + 7))
  {
    v52 = 0x20000000;
    memset_pattern4(v46 + 7, &v52, v48 - (v46 + 7));
  }
}

- (id)getTessellationFactorArguments
{
  v3 = objc_opt_new();
  encoder = self->_encoder;
  v5 = MEMORY[0x29EDC5638];
  v6 = (*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(encoder[1] + 132) + *(encoder[1] + 140) + *(encoder[1] + 144) * self->_index);
  [v3 setGPUVirtualAddress:*(v6 + 1) | (*v6 << 32) | (v6[32] << 40)];
  v7 = self->_encoder;
  [v3 setInstanceStride:4 * (*(*(*v7 + *v5 + 24) + *(v7[1] + 132) + *(v7[1] + 140) + *(v7[1] + 144) * self->_index + 24) & 0x7FFFF)];
  v9 = self->_encoder;
  v10 = v9[1];
  v11 = *(v10 + 352);
  if (v11 == -1)
  {
    v8 = 0.0;
    goto LABEL_11;
  }

  v12 = *(*(*v9 + *v5 + 24) + *(v10 + 348) + v11 * self->_index + 4);
  v13 = v12 & 0x80000000;
  v14 = (v12 >> 10) & 0x1F;
  v15 = v12 << 13;
  v16 = v15 & 0x7FE000;
  if (v14 == 31)
  {
    v19 = v13 | v15 | 0x7FC00000;
    v18 = v13 | 0x7F800000;
    if (v16)
    {
      v18 = v19;
    }

    goto LABEL_10;
  }

  if (v14)
  {
LABEL_6:
    v18 = ((v16 | (v14 << 23)) + 939524096) | v13;
LABEL_10:
    LODWORD(v8) = v18;
    goto LABEL_11;
  }

  if (v16)
  {
    v17 = __clz(v16);
    v14 = 9 - v17;
    v16 = (v15 << (v17 - 8)) & 0x7FE000;
    goto LABEL_6;
  }

  *&v8 = 0x8000000080000000;
  if (!v13)
  {
    *&v8 = 0.0;
  }

LABEL_11:
  [v3 setScale:v8];

  return v3;
}

- (unint64_t)getVertexAttributeStrideAtIndex:(unint64_t)a3
{
  encoder = self->_encoder;
  v4 = encoder[1];
  if (*(v4 + 445) != 1)
  {
    return -1;
  }

  result = *(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(v4 + 340) + *(v4 + 344) * self->_index + 4 * a3);
  if (result == -1)
  {
    return -1;
  }

  return result;
}

- (unint64_t)getVertexBufferAddressAtIndex:(unint64_t)a3
{
  encoder = self->_encoder;
  v4 = encoder[1];
  v5 = *(v4 + 184);
  if (v5 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(*encoder + *MEMORY[0x29EDC5638] + 24) + *(v4 + 180) + v5 * self->_index + 8 * a3);
  }
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  encoder = self->_encoder;
  index = self->_index;
  v14 = encoder[1];
  v15 = MEMORY[0x29EDC5638];
  if (*(v14 + 396) == 1)
  {
    AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeCommonDrawInherited(self->_encoder, index, a3);
    goto LABEL_19;
  }

  v16 = *(*encoder + *MEMORY[0x29EDC5638] + 24);
  v17 = v16 + *(v14 + 148) + *(v14 + 152) * index;
  if ((*(v14 + 332) & 0x80) != 0)
  {
    v18 = (*(v16 + *(v14 + 324) + *(v14 + 328) * index + 16) >> 18) & 3;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v17 + 32) & 0xFF7FFFFF;
  *(v17 + 32) = v19;
  if (a3 > 8)
  {
    goto LABEL_16;
  }

  if (((1 << a3) & 0x1D8) == 0)
  {
    v21 = 0x1000000010000000;
    if (((1 << a3) & 0x26) != 0)
    {
LABEL_17:
      *(v17 + 36) = vorr_s8((*(v17 + 36) & 0xFFFFFFF0FFFFFFFLL), v21);
LABEL_18:
      *(v17 + 32) = v19 | 0x4000000;
      goto LABEL_19;
    }

LABEL_16:
    v21 = 0x4000000040000000;
    goto LABEL_17;
  }

  if (v18 == 2)
  {
    v20 = 1610612736;
  }

  else
  {
    v20 = 0;
  }

  if (v18 == 1)
  {
    v20 = 1342177280;
  }

  *(v17 + 36) = vorr_s8(vdup_n_s32(v20 | (v18 << 18)), vand_s8(*(v17 + 36), vdup_n_s32(0xFF3FFFFu)));
  if (v18 == 1)
  {
    goto LABEL_18;
  }

LABEL_19:
  v22 = *encoder;
  v23 = encoder[1];
  v24 = *encoder + *v15;
  v25 = *(v24 + 24);
  v26 = (v25 + *(v23 + 220) + *(v23 + 224) * index);
  v27 = *(v23 + 284) + *(v23 + 288) * index;
  v28 = *(v24 + 8) + v27;
  v29 = (v25 + v27);
  v26[1] = v28;
  v26[2] = v28 + 8;
  v26[3] = v7;
  *v29 = v10;
  v29[1] = v7;
  v30 = *(v22 + *v15 + 24) + *(v23 + 140) + *(v23 + 144) * index;
  v31 = 24;
  if (*(v23 + 396))
  {
    v31 = 12;
  }

  v33 = *(v23 + 128);
  v32 = *(v23 + 132);
  v34 = v33 + v31;
  v35 = (v30 + v32);
  if (v32 != v34 && v30 + v32 >= (v30 + v34))
  {
    __pattern4 = 0x20000000;
    memset_pattern4((v30 + v34), &__pattern4, v32 - v34);
  }

  *v35 = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[v11] & 0xFFFEFFFF;
  v35[1] = v9;
  v35[2] = v8;
  v35[3] = v10;
  v36 = *(*encoder + *v15 + 24) + *(encoder[1] + 136) + *(encoder[1] + 140) + *(encoder[1] + 144) * index;
  if (v36 > (v35 + 4))
  {
    v38 = 0x20000000;
    memset_pattern4(v35 + 4, &v38, v36 - (v35 + 4));
  }
}

- (void)setFragmentArguments:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  encoder = self->_encoder;
  v6 = *MEMORY[0x29EDC5638];
  v7 = encoder[1];
  v8 = *(*encoder + v6 + 24);
  v9 = *(v7 + 164);
  v10 = *(v7 + 168);
  if (a3)
  {
    v11 = *(a3 + v6 + 8);
  }

  else
  {
    v11 = 0;
  }

  *(v8 + v9 + v10 * self->_index + 8 * a5) = v11 + a4;
}

- (void)setVertexArguments:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  encoder = self->_encoder;
  index = self->_index;
  v7 = MEMORY[0x29EDC5638];
  v8 = *MEMORY[0x29EDC5638];
  v10 = *encoder;
  v9 = encoder[1];
  v11 = *(v10 + v8 + 24) + *(v9 + 180) + *(v9 + 184) * index;
  if (a3)
  {
    v12 = *(a3 + v8 + 8);
  }

  else
  {
    v12 = 0;
  }

  *(v11 + 8 * a5) = v12 + a4;
  if (*(v9 + 445) == 1)
  {
    *(*(v10 + *v7 + 24) + *(v9 + 340) + *(v9 + 344) * index + 4 * a5) = -1;
  }
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  encoder = self->_encoder;
  v6 = *MEMORY[0x29EDC5638];
  v7 = encoder[1];
  v8 = *(*encoder + v6 + 24);
  v9 = *(v7 + 164);
  v10 = *(v7 + 168);
  if (a3)
  {
    v11 = *(a3 + v6 + 8);
  }

  else
  {
    v11 = 0;
  }

  *(v8 + v9 + v10 * self->_index + 8 * a5) = v11 + a4;
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  encoder = self->_encoder;
  index = self->_index;
  v8 = MEMORY[0x29EDC5638];
  v9 = *MEMORY[0x29EDC5638];
  v11 = *encoder;
  v10 = encoder[1];
  v12 = *(v11 + v9 + 24) + *(v10 + 180) + *(v10 + 184) * index;
  if (a3)
  {
    v13 = *(a3 + v9 + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 8 * a6) = v13 + a4;
  if (*(v10 + 445) == 1)
  {
    *(*(v11 + *v8 + 24) + *(v10 + 340) + *(v10 + 344) * index + 4 * a6) = a5;
  }
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  encoder = self->_encoder;
  index = self->_index;
  v7 = MEMORY[0x29EDC5638];
  v8 = *MEMORY[0x29EDC5638];
  v10 = *encoder;
  v9 = encoder[1];
  v11 = *(v10 + v8 + 24) + *(v9 + 180) + *(v9 + 184) * index;
  if (a3)
  {
    v12 = *(a3 + v8 + 8);
  }

  else
  {
    v12 = 0;
  }

  *(v11 + 8 * a5) = v12 + a4;
  if (*(v9 + 445) == 1)
  {
    *(*(v10 + *v7 + 24) + *(v9 + 340) + *(v9 + 344) * index + 4 * a5) = -1;
  }
}

- (void)setDepthStencilState:(id)a3
{
  v3 = 488636415;
  encoder = self->_encoder;
  index = self->_index;
  v6 = MEMORY[0x29EDC5638];
  v7 = (*(encoder[2] + *MEMORY[0x29EDC5638] + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index);
  v8 = a3 + 24;
  v9 = v7 + 3;
  v10 = v7[3] & 0xFFF7FFFF | (((*(a3 + 16) >> 19) & 1) << 19);
  v7[3] = v10;
  v7[3] = v10 & 0xFFFBFFFF | (((*(a3 + 16) >> 18) & 1) << 18);
  v11 = *(a3 + 17) >> 21;
  v12 = v7[5];
  v13 = v7[4] & 0xFFDFFFFF | ((v11 & 1) << 21);
  v7[4] = v13;
  v14 = v13 & 0xF8FFFFFF | ((HIBYTE(v8[11]) & 7) << 24);
  v7[4] = v14;
  v15 = v12 & 0xFFDFFFFF | (((v8[11] >> 21) & 1) << 21);
  v7[5] = v15;
  v7[5] = v15 & 0xF8FFFFFF | ((HIBYTE(v8[11]) & 7) << 24);
  v7[6] = v8[12];
  v7[7] = v8[13];
  v16 = encoder[3];
  v17 = (*(encoder[2] + *v6 + 24) + *(v16 + 148) + *(v16 + 152) * index);
  v18 = v14 & 0xF3FFFFF;
  if (*(v16 + 396) == 1)
  {
    v19 = v17[4];
    v20 = v17[5];
    v21 = v17 + 4;
    v22 = v21[2];
    v21[1] = v18 | v20 & 0xF0C00000;
    v21[2] = v7[5] & 0xF3FFFFF | v22 & 0xF0C00000;
    v23 = v19 & 0xE2E00000;
  }

  else
  {
    v24 = v17[16];
    v21 = v17 + 16;
    v25 = *(v21 - 8);
    *(v21 - 7) = v18 | *(v21 - 7) & 0xF0C00000;
    *(v21 - 6) = v7[5] & 0xF3FFFFF | *(v21 - 6) & 0xF0C00000;
    *(v21 - 8) = v7[3] & 0x1D1FFFFF | v25 & 0xE2E00000;
    v23 = v24 & 0x23020;
    v9 = v7 + 14;
    v3 = -143393;
  }

  *v21 = *v9 & v3 | v23;
  v27 = encoder[2];
  v26 = encoder[3];
  v28 = *(v27 + *v6 + 24);
  v29 = *(v26 + 148) + *(v26 + 152) * index;
  v30 = *(v26 + 396) == 0;
  v31 = 84;
  if (!v30)
  {
    v31 = 28;
  }

  AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::FlexiblePSOUpdateToken::emit(v7, (v28 + v31 + v29));
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  v6 = (*(*(self->_encoder + 2) + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 3) + 244) + *(*(self->_encoder + 3) + 248) * self->_index);
  v6[32] = a3;
  v6[33] = a4;
  v6[34] = a5;
  v6[35] = a6;
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  v3 = 488636415;
  encoder = self->_encoder;
  index = self->_index;
  v6 = MEMORY[0x29EDC5638];
  v7 = *(encoder[2] + *MEMORY[0x29EDC5638] + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index;
  v8 = vorr_s8((*(v7 + 16) & 0xFFF3FFFFFFF3FFFFLL), vdup_n_s32((a3 & 3) << 18));
  *(v7 + 16) = v8;
  v9 = encoder[3];
  v10 = (*(encoder[2] + *v6 + 24) + *(v9 + 148) + *(v9 + 152) * index);
  v11 = v8.i32[0] & 0xF3FFFFF;
  if (*(v9 + 396) == 1)
  {
    v13 = v10[4];
    v14 = v10[5];
    v12 = v10 + 4;
    v15 = (v7 + 12);
    v16 = v12[2];
    v12[1] = v11 | v14 & 0xF0C00000;
    v12[2] = *(v7 + 20) & 0xF3FFFFF | v16 & 0xF0C00000;
    v17 = v13 & 0xE2E00000;
  }

  else
  {
    v18 = v10[16];
    v12 = v10 + 16;
    v19 = *(v12 - 8);
    *(v12 - 7) = v11 | *(v12 - 7) & 0xF0C00000;
    *(v12 - 6) = *(v7 + 20) & 0xF3FFFFF | *(v12 - 6) & 0xF0C00000;
    *(v12 - 8) = *(v7 + 12) & 0x1D1FFFFF | v19 & 0xE2E00000;
    v17 = v18 & 0x23020;
    v15 = (v7 + 56);
    v3 = -143393;
  }

  *v12 = *v15 & v3 | v17;
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  v3 = -255852544;
  v4 = -488636416;
  v5 = 488636415;
  encoder = self->_encoder;
  index = self->_index;
  v8 = MEMORY[0x29EDC5638];
  v9 = *(encoder[2] + *MEMORY[0x29EDC5638] + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index;
  v10 = 255852543;
  *(v9 + 56) = *(v9 + 56) & 0xFFFEFFFF | ((a3 & 1) << 16);
  v11 = encoder[3];
  v12 = (*(encoder[2] + *v8 + 24) + *(v11 + 148) + *(v11 + 152) * index);
  v13 = *(v11 + 396);
  v14 = *(v9 + 16) & 0xF3FFFFF;
  v15 = (v9 + 20);
  v16 = (v9 + 12);
  if (v13 == 1)
  {
    v12[5] = v14 | v12[5] & 0xF0C00000;
    v17 = 4;
    v18 = 6;
  }

  else
  {
    v19 = v12[10];
    v12[9] = v14 | v12[9] & 0xF0C00000;
    v20 = *v15 & 0xF3FFFFF | v19 & 0xF0C00000;
    v17 = 16;
    v18 = 8;
    v3 = -488636416;
    v15 = (v9 + 12);
    v12[10] = v20;
    v10 = 488636415;
    v4 = 143392;
    v16 = (v9 + 56);
    v5 = -143393;
  }

  v12[v18] = *v15 & v10 | v12[v18] & v3;
  v12[v17] = *v16 & v5 | v12[v17] & v4;
  v22 = encoder[2];
  v21 = encoder[3];
  v23 = *(v22 + *v8 + 24);
  v24 = *(v21 + 148) + *(v21 + 152) * index;
  v25 = *(v21 + 396) == 0;
  v26 = 84;
  if (!v25)
  {
    v26 = 28;
  }

  AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::FlexiblePSOUpdateToken::emit(v9, (v23 + v26 + v24));
}

- (void)setStencilReferenceValue:(unsigned int)a3
{
  v3 = 488636415;
  encoder = self->_encoder;
  index = self->_index;
  v6 = MEMORY[0x29EDC5638];
  v7 = *(encoder[2] + *MEMORY[0x29EDC5638] + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index;
  v8 = vorr_s8((*(v7 + 16) & 0xFFFFFF00FFFFFF00), vdup_n_s32(a3));
  *(v7 + 16) = v8;
  v9 = encoder[3];
  v10 = (*(encoder[2] + *v6 + 24) + *(v9 + 148) + *(v9 + 152) * index);
  v11 = v8.i32[0] & 0xF3FFFFF;
  if (*(v9 + 396) == 1)
  {
    v13 = v10[4];
    v14 = v10[5];
    v12 = v10 + 4;
    v15 = (v7 + 12);
    v16 = v12[2];
    v12[1] = v11 | v14 & 0xF0C00000;
    v12[2] = *(v7 + 20) & 0xF3FFFFF | v16 & 0xF0C00000;
    v17 = v13 & 0xE2E00000;
  }

  else
  {
    v18 = v10[16];
    v12 = v10 + 16;
    v19 = *(v12 - 8);
    *(v12 - 7) = v11 | *(v12 - 7) & 0xF0C00000;
    *(v12 - 6) = *(v7 + 20) & 0xF3FFFFF | *(v12 - 6) & 0xF0C00000;
    *(v12 - 8) = *(v7 + 12) & 0x1D1FFFFF | v19 & 0xE2E00000;
    v17 = v18 & 0x23020;
    v15 = (v7 + 56);
    v3 = -143393;
  }

  *v12 = *v15 & v3 | v17;
}

- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4
{
  v4 = 488636415;
  encoder = self->_encoder;
  index = self->_index;
  v7 = MEMORY[0x29EDC5638];
  v8 = (*(encoder[2] + *MEMORY[0x29EDC5638] + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index);
  v9 = vbsl_s8(0xFFFFFF00FFFFFF00, v8[2], __PAIR64__(a4, a3));
  v8[2] = v9;
  v10 = encoder[3];
  v11 = (*(encoder[2] + *v7 + 24) + *(v10 + 148) + *(v10 + 152) * index);
  v12 = v9.i32[0] & 0xF3FFFFF;
  if (*(v10 + 396) == 1)
  {
    v14 = v11[4];
    v15 = v11[5];
    v13 = v11 + 4;
    v16 = (v8 + 12);
    v17 = v13[2];
    v13[1] = v12 | v15 & 0xF0C00000;
    v13[2] = v8[2].i32[1] & 0xF3FFFFF | v17 & 0xF0C00000;
    v18 = v14 & 0xE2E00000;
  }

  else
  {
    v19 = v11[16];
    v13 = v11 + 16;
    v20 = *(v13 - 8);
    *(v13 - 7) = v12 | *(v13 - 7) & 0xF0C00000;
    *(v13 - 6) = v8[2].i32[1] & 0xF3FFFFF | *(v13 - 6) & 0xF0C00000;
    *(v13 - 8) = v8[1].i32[1] & 0x1D1FFFFF | v20 & 0xE2E00000;
    v18 = v19 & 0x23020;
    v16 = v8 + 7;
    v4 = -143393;
  }

  *v13 = v16->i32[0] & v4 | v18;
}

- (void)setCullMode:(unint64_t)a3
{
  v3 = -255852544;
  v4 = -488636416;
  v5 = 488636415;
  encoder = self->_encoder;
  index = self->_index;
  v8 = MEMORY[0x29EDC5638];
  v9 = *(encoder[2] + *MEMORY[0x29EDC5638] + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index;
  v10 = 255852543;
  *(v9 + 56) = *(v9 + 56) & 0xFFFFFFFC | a3 & 3;
  v11 = encoder[3];
  v12 = (*(encoder[2] + *v8 + 24) + *(v11 + 148) + *(v11 + 152) * index);
  v13 = *(v11 + 396);
  v14 = *(v9 + 16) & 0xF3FFFFF;
  v15 = (v9 + 20);
  v16 = (v9 + 12);
  if (v13 == 1)
  {
    v12[5] = v14 | v12[5] & 0xF0C00000;
    v17 = 4;
    v18 = 6;
  }

  else
  {
    v19 = v12[10];
    v12[9] = v14 | v12[9] & 0xF0C00000;
    v20 = *v15 & 0xF3FFFFF | v19 & 0xF0C00000;
    v17 = 16;
    v18 = 8;
    v3 = -488636416;
    v15 = (v9 + 12);
    v12[10] = v20;
    v10 = 488636415;
    v4 = 143392;
    v16 = (v9 + 56);
    v5 = -143393;
  }

  v12[v18] = *v15 & v10 | v12[v18] & v3;
  v12[v17] = *v16 & v5 | v12[v17] & v4;
  v22 = encoder[2];
  v21 = encoder[3];
  v23 = *(v22 + *v8 + 24);
  v24 = *(v21 + 148) + *(v21 + 152) * index;
  v25 = *(v21 + 396) == 0;
  v26 = 84;
  if (!v25)
  {
    v26 = 28;
  }

  AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::FlexiblePSOUpdateToken::emit(v9, (v23 + v26 + v24));
}

- (void)setDepthClipMode:(unint64_t)a3
{
  encoder = self->_encoder;
  index = self->_index;
  v5 = MEMORY[0x29EDC5638];
  v6 = *(encoder[2] + *MEMORY[0x29EDC5638] + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index;
  *(v6 + 56) = *(v6 + 56) & 0xFFFFF3FF | ((((1024 << a3) >> 10) & 3) << 10);
  v7 = encoder[3];
  if ((*(v7 + 333) & 2) != 0)
  {
    AGX::IndirectRenderCommandEncoderGen4_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::handleScissorUpdate(encoder, index, v6);
    v7 = encoder[3];
  }

  v8 = -255852544;
  v9 = -488636416;
  v10 = 488636415;
  v11 = 255852543;
  v12 = (*(encoder[2] + *v5 + 24) + *(v7 + 148) + *(v7 + 152) * index);
  v13 = *(v7 + 396);
  v14 = *(v6 + 16) & 0xF3FFFFF;
  v15 = (v6 + 20);
  v16 = (v6 + 12);
  if (v13 == 1)
  {
    v12[5] = v14 | v12[5] & 0xF0C00000;
    v17 = 4;
    v18 = 6;
  }

  else
  {
    v19 = v12[10];
    v12[9] = v14 | v12[9] & 0xF0C00000;
    v20 = *v15 & 0xF3FFFFF | v19 & 0xF0C00000;
    v17 = 16;
    v18 = 8;
    v8 = -488636416;
    v15 = (v6 + 12);
    v12[10] = v20;
    v11 = 488636415;
    v9 = 143392;
    v16 = (v6 + 56);
    v10 = -143393;
  }

  v12[v18] = *v15 & v11 | v12[v18] & v8;
  v12[v17] = *v16 & v10 | v12[v17] & v9;
  v21 = encoder[3];
  v22 = *(v21 + 148) + *(v21 + 152) * index;
  v23 = *(v21 + 396) == 0;
  v24 = 84;
  if (!v23)
  {
    v24 = 28;
  }

  v25 = (*(encoder[2] + *v5 + 24) + v24 + v22);

  AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::FlexiblePSOUpdateToken::emit(v6, v25);
}

- (void)setScissorRect:(id *)a3
{
  encoder = self->_encoder;
  index = self->_index;
  v5 = (*(encoder[2] + *MEMORY[0x29EDC5638] + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index);
  var1 = a3->var1;
  v7 = LODWORD(a3->var2) + LODWORD(a3->var0);
  v8 = LODWORD(a3->var3) + var1;
  v5[15] = a3->var0;
  v5[16] = v7;
  v5[17] = var1;
  v5[18] = v8;
  AGX::IndirectRenderCommandEncoderGen4_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::handleScissorUpdate(encoder, index, v5);
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  encoder = self->_encoder;
  index = self->_index;
  v8 = *(encoder[2] + *MEMORY[0x29EDC5638] + 24);
  v9 = *(encoder[3] + 324) + *(encoder[3] + 328) * index;
  v10 = v8 + v9;
  if (a4)
  {
    if (a4 < 4uLL)
    {
      v11 = 0;
LABEL_7:
      v16 = a4 - v11;
      p_var2 = &a3[v11].var2;
      v18 = (v9 + 16 * v11 + v8 + 72);
      do
      {
        v19 = *(p_var2 - 4);
        v20 = *(p_var2 - 2);
        v21 = *p_var2 + v19;
        v22 = *(p_var2 + 2) + v20;
        *(v18 - 3) = v19;
        *(v18 - 2) = v21;
        *(v18 - 1) = v20;
        *v18 = v22;
        p_var2 += 4;
        v18 += 4;
        --v16;
      }

      while (v16);
      goto LABEL_9;
    }

    v12 = (v10 + 60);
    v11 = a4 - (a4 & 3);
    v13 = a3;
    v14 = v11;
    do
    {
      p_var0 = &v13->var0;
      v23 = vld4q_f64(p_var0);
      p_var0 += 8;
      v24 = vld4q_f64(p_var0);
      v25.val[0] = vuzp1q_s32(v23.val[0], v24.val[0]);
      v25.val[2] = vuzp1q_s32(v23.val[1], v24.val[1]);
      v25.val[1] = vaddq_s32(vuzp1q_s32(v23.val[2], v24.val[2]), v25.val[0]);
      v25.val[3] = vaddq_s32(vuzp1q_s32(v23.val[3], v24.val[3]), v25.val[2]);
      vst4q_f32(v12, v25);
      v12 += 16;
      v13 += 4;
      v14 -= 4;
    }

    while (v14);
    if ((a4 & 3) != 0)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  AGX::IndirectRenderCommandEncoderGen4_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::handleScissorUpdate(encoder, index, v10);
}

- (id)getBlendColor
{
  v3 = objc_opt_new();
  v4 = (*(*(self->_encoder + 2) + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 3) + 244) + *(*(self->_encoder + 3) + 248) * self->_index);
  LODWORD(v5) = v4[32];
  v6 = v4[33];
  v7 = v4[34];
  v8 = v4[35];
  [v3 setRed:v5];
  LODWORD(v9) = v6;
  [v3 setGreen:v9];
  LODWORD(v10) = v7;
  [v3 setBlue:v10];
  LODWORD(v11) = v8;
  [v3 setAlpha:v11];

  return v3;
}

- (id)getViewports
{
  encoder = self->_encoder;
  v3 = *(encoder[2] + *MEMORY[0x29EDC5638] + 24);
  v4 = *(encoder[3] + 324) + *(encoder[3] + 328) * self->_index;
  v5 = *(v3 + v4 + 5);
  v6 = *(v3 + v4 + 4);
  v7 = [objc_alloc(MEMORY[0x29EDBB718]) initWithCount:v5];
  if (v5)
  {
    v8 = 0;
    v9 = 48 * v5;
    v10 = (16 * v6 + v4 + v3 + 80);
    do
    {
      v11 = *(v10 - 5);
      *([v7 viewports] + v8) = v11;
      v12 = *(v10 - 4);
      *([v7 viewports] + v8 + 8) = v12;
      v13 = *(v10 - 3);
      *([v7 viewports] + v8 + 16) = v13;
      v14 = *(v10 - 2);
      *([v7 viewports] + v8 + 24) = v14;
      v15 = *(v10 - 1);
      *([v7 viewports] + v8 + 32) = v15;
      v16 = *v10;
      v10 += 6;
      *([v7 viewports] + v8 + 40) = v16;
      v8 += 48;
    }

    while (v9 != v8);
  }

  return v7;
}

- (id)getScissorRects
{
  v2 = *(*(self->_encoder + 2) + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 3) + 324) + *(*(self->_encoder + 3) + 328) * self->_index;
  v3 = *(v2 + 4);
  v4 = [objc_alloc(MEMORY[0x29EDBB700]) initWithCount:v3];
  if (v3)
  {
    v5 = 0;
    v6 = (v2 + 60);
    v7 = 32 * v3;
    do
    {
      v8 = *v6;
      *([v4 scissorRects] + v5) = v8;
      v9 = v6[2];
      *([v4 scissorRects] + v5 + 8) = v9;
      v10 = v6[1] - *v6;
      *([v4 scissorRects] + v5 + 16) = v10;
      v11 = v6[3] - v6[2];
      *([v4 scissorRects] + v5 + 24) = v11;
      v5 += 32;
      v6 += 4;
    }

    while (v7 != v5);
  }

  return v4;
}

- (id)getStencilReferenceValues
{
  v2 = *(*(self->_encoder + 2) + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 3) + 324) + *(*(self->_encoder + 3) + 328) * self->_index;
  v3 = *(v2 + 16);
  v4 = *(v2 + 20);
  v5 = objc_opt_new();
  [v5 setFrontReferenceValue:v3];
  [v5 setBackReferenceValue:v4];

  return v5;
}

- (id)getDepthBiasInfo
{
  v2 = (*(*(self->_encoder + 2) + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 3) + 300) + *(*(self->_encoder + 3) + 304) * self->_index);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = objc_opt_new();
  LODWORD(v7) = v3;
  [v6 setDepthBias:v7];
  LODWORD(v8) = v4;
  [v6 setSlopeScale:v8];
  LODWORD(v9) = v5;
  [v6 setClamp:v9];

  return v6;
}

- (id)getDepthTestBounds
{
  v2 = (*(*(self->_encoder + 2) + *MEMORY[0x29EDC5638] + 24) + *(*(self->_encoder + 3) + 308) + *(*(self->_encoder + 3) + 312) * self->_index);
  v3 = *v2;
  v4 = v2[1];
  v5 = objc_opt_new();
  LODWORD(v6) = v3;
  [v5 setMinBounds:v6];
  LODWORD(v7) = v4;
  [v5 setMaxBounds:v7];

  return v5;
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  v4 = 488636415;
  encoder = self->_encoder;
  index = self->_index;
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  if (a3 > a4)
  {
    a3 = a4;
  }

  v7 = a4 == 1.0 && a3 == 0.0;
  v8 = a4;
  v9 = *&a3;
  if (v7)
  {
    v9 = 0x3F80000000000000;
  }

  v10 = MEMORY[0x29EDC5638];
  v11 = *(encoder[3] + 308) + *(encoder[3] + 312) * index;
  *(*(encoder[2] + *MEMORY[0x29EDC5638] + 24) + v11) = v9;
  v12 = encoder[2] + *v10;
  v13 = (*(v12 + 24) + *(encoder[3] + 324) + *(encoder[3] + 328) * index);
  v14 = *(v12 + 8) + v11;
  v15 = v13 + 3;
  v13[3] |= 0x1000000u;
  v13[12] = (v14 >> 16) & 0xFFFF0000;
  v13[13] = v14 & 0xFFFFFFFC;
  v16 = encoder[3];
  v17 = *(v16 + 148) + *(v16 + 152) * index;
  v7 = *(v16 + 396) == 0;
  v18 = 84;
  if (!v7)
  {
    v18 = 28;
  }

  AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::FlexiblePSOUpdateToken::emit(v13, (*(encoder[2] + *v10 + 24) + v18 + v17));
  v19 = encoder[3];
  v20 = (*(encoder[2] + *v10 + 24) + *(v19 + 148) + *(v19 + 152) * index);
  v21 = v13[4] & 0xF3FFFFF;
  if (*(v19 + 396) == 1)
  {
    v23 = v20[4];
    v24 = v20[5];
    v22 = v20 + 4;
    v25 = v22[2];
    v22[1] = v21 | v24 & 0xF0C00000;
    v22[2] = v13[5] & 0xF3FFFFF | v25 & 0xF0C00000;
    v26 = v23 & 0xE2E00000;
  }

  else
  {
    v27 = v20[16];
    v22 = v20 + 16;
    v28 = *(v22 - 8);
    *(v22 - 7) = v21 | *(v22 - 7) & 0xF0C00000;
    *(v22 - 6) = v13[5] & 0xF3FFFFF | *(v22 - 6) & 0xF0C00000;
    *(v22 - 8) = v13[3] & 0x1D1FFFFF | v28 & 0xE2E00000;
    v26 = v27 & 0x23020;
    v15 = v13 + 14;
    v4 = -143393;
  }

  *v22 = *v15 & v4 | v26;
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  v5 = 488636415;
  encoder = self->_encoder;
  index = self->_index;
  v9 = encoder[2];
  v8 = encoder[3];
  v10 = v8[75] + v8[76] * index;
  v11 = MEMORY[0x29EDC5638];
  v12 = (*(v9 + *MEMORY[0x29EDC5638] + 24) + v10);
  *v12 = a3;
  v12[1] = a4;
  v12[2] = a5;
  v13 = v9 + *v11;
  v14 = (*(v13 + 24) + v8[81] + v8[82] * index);
  v15 = *(v13 + 8) + v10;
  v16 = v14 + 3;
  v14[3] |= 0x20000u;
  v14[8] = (v15 >> 16) & 0xFFFF0000;
  v14[9] = v15 & 0xFFFFFFFC;
  v17 = encoder[3];
  v18 = *(v17 + 148) + *(v17 + 152) * index;
  v19 = *(v17 + 396) == 0;
  v20 = 84;
  if (!v19)
  {
    v20 = 28;
  }

  AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::FlexiblePSOUpdateToken::emit(v14, (*(encoder[2] + *v11 + 24) + v20 + v18));
  v21 = encoder[3];
  v22 = (*(encoder[2] + *v11 + 24) + *(v21 + 148) + *(v21 + 152) * index);
  v23 = v14[4] & 0xF3FFFFF;
  if (*(v21 + 396) == 1)
  {
    v25 = v22[4];
    v26 = v22[5];
    v24 = v22 + 4;
    v27 = v24[2];
    v24[1] = v23 | v26 & 0xF0C00000;
    v24[2] = v14[5] & 0xF3FFFFF | v27 & 0xF0C00000;
    v28 = v25 & 0xE2E00000;
  }

  else
  {
    v29 = v22[16];
    v24 = v22 + 16;
    v30 = *(v24 - 8);
    *(v24 - 7) = v23 | *(v24 - 7) & 0xF0C00000;
    *(v24 - 6) = v14[5] & 0xF3FFFFF | *(v24 - 6) & 0xF0C00000;
    *(v24 - 8) = v14[3] & 0x1D1FFFFF | v30 & 0xE2E00000;
    v28 = v29 & 0x23020;
    v16 = v14 + 14;
    v5 = -143393;
  }

  *v24 = *v16 & v5 | v28;
}

- (void)setRenderPipelineState:(id)a3
{
  encoder = self->_encoder;
  index = self->_index;
  v9 = (a3 + 240);
  v10 = MEMORY[0x29EDC5638];
  v12 = *encoder;
  v11 = encoder[1];
  v13 = *encoder + *MEMORY[0x29EDC5638];
  v14 = *(v13 + 8);
  v15 = v11[39];
  v16 = v11[40];
  v17 = *(v13 + 24);
  if (*(a3 + 1029) == 1)
  {
    v18 = *(a3 + 148);
  }

  else
  {
    v18 = a3 + 240;
  }

  *(v17 + v11[91] + v11[92] * index) = v18;
  v19 = *(a3 + 267) & 0x20000;
  v20 = *(a3 + 34);
  if (v20)
  {
    v21 = v14 + v11[47] + v11[48] * index;
    v22 = v14 + v11[51] + v11[52] * index;
    v23 = *(a3 + 33);
    v5 = *(v23 + 3748);
    v24 = v9[113].i32[1];
    if (v24)
    {
      v5 = v5 & 0xFFFFFF80 | ((v24 + 1023) >> 10) & 0x7F;
    }

    v25 = *(v20 + 3880);
    v26 = *(v20 + 3888);
    v27 = *(v20 + 3892);
    v4 = *(v20 + 3764);
    v166 = *(v20 + 3784);
    v167 = *(v20 + 3768) & 0xFFFFFFDF | (v19 >> 12);
    v3 = *(v20 + 3772) & 0xFFF0000 | *(v23 + 3736) & 0xFFF;
    v28 = *(v20 + 3896);
    v29 = *(v20 + 3904);
    v6 = *(v20 + 3792);
    v30 = *(v23 + 3740) & 0x3FFFFB | (v21 >> 16) & 0xFFC00000;
    v31 = v21 >> 6;
    v32 = *(v20 + 3776) & 0x3FFFFB | (v22 >> 16) & 0xFFC00000;
    v170 = v22 >> 6;
    v171 = v31;
    v33 = *(v12 + *v10 + 24);
    v34 = (v33 + v11[73] + v11[74] * index);
    v34[50] = *(v23 + 3946);
    v35 = *(v20 + 3820);
    v36 = v35 == 1;
    if (v35 == 3)
    {
      v36 = 6;
    }

    v34[48] = v36;
    if (v35 >= 4)
    {
      v37 = 0;
    }

    else
    {
      v37 = 0x104u >> (8 * v35);
    }

    v34[49] = v37;
    *(v33 + v11[59] + v11[60] * index + 144) = 4 * *(v20 + 4024);
    *(*(v12 + *v10 + 24) + v11[95] + v11[96] * index) = 4 * *(v23 + 3792);
    v38 = *v10;
    v39 = *(v12 + v38 + 24);
    v40 = v11[95] + v11[96] * index;
    v41 = *(v39 + v40);
    v42 = v11[108];
    if (v42)
    {
      v43 = (v39 + v11[97] + v11[98] * index);
      v44 = (v40 + v39 + 4);
      do
      {
        *v43++ = v41;
        v45 = *v44++;
        v41 += v45;
        --v42;
      }

      while (v42);
      v38 = *v10;
    }

    v46 = (*(*encoder + v38 + 24) + *(encoder[1] + 188) + *(encoder[1] + 192) * index);
    v47 = (v41 + 63) & 0xFFFFFFC0;
    if (v47 == 0x10000)
    {
      v47 = 0;
    }

    v48 = *v46 & 0x17 | (v47 >> 6 << 11);
    v46[1] = (v47 >> 8) & 0xF8 | v46[1] & 0xFF07;
    *v46 = v48 | (8 * (v47 != 0));
    v49 = v30 | 4;
    v50 = v32 | 4;
    v168 = v46;
    LODWORD(v169) = v46;
    if (v19)
    {
LABEL_19:
      v51 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v52 = v14 + v11[43] + v11[44] * index;
    v53 = *(a3 + 31);
    v25 = *(v53 + 4112);
    v27 = *(v53 + 4120);
    v28 = *(v53 + 4124);
    v29 = *(v53 + 4132);
    v54 = v53 + 28 * ((v19 >> 17) ^ 1);
    v168 = (v52 >> 16) & 0xFFC00000 | *(v54 + 3904) & 0x3FFFFF;
    v169 = v52 >> 6;
    v164 = *(v54 + 3896) & 0xFFFFFFDF;
    v165 = *(v54 + 3900);
    v177 = *(v54 + 3912);
    v26 = *(v53 + 4264);
    if (v26)
    {
      v26 = 0;
      v55 = *(v12 + *v10 + 24);
      v56 = *(a3 + 252);
      v57 = *(a3 + 251);
      v58 = v9[98].i32[0];
      v59 = v9[97].i32[0];
      v60 = v11[87] + v11[88] * index;
      v61 = vand_s8(vshl_u32(v9[97], 0x300000001), 0x800000006);
      v62 = v9[97].i32[1];
      *(v55 + v60) = *(v55 + v60) & 0xF0 | *(v53 + 4256) & 1 | v61.i8[0] | v61.i8[4];
      if (*(v53 + 4269))
      {
        v63 = 0x10000;
      }

      else
      {
        v63 = 0;
      }

      v64 = (((v58 - (v56 == 2)) << 23) + 528482304) & 0x1F800000 | (v56 << 30) | ((v57 & 1) << 29) | v63 & 0xFFE1FFFF | ((v59 & 3) << 17) & 0xFFE7FFFF | ((v62 & 1) << 19) & 0xFFEFFFFF | ((*(v53 + 4256) & 1) << 20) | 0x200000;
      v65 = (*(*encoder + *v10 + 24) + *(encoder[1] + 128) + *(encoder[1] + 140) + *(encoder[1] + 144) * index);
      v65[6] = 1073741968;
      v65[7] = v64;
      LODWORD(v11) = 15360;
      v65[8] = 15360;
    }

    v49 = -1;
    v171 = v11;
    v50 = -1;
    LODWORD(v170) = v11;
    if (v19)
    {
      goto LABEL_19;
    }
  }

  v51 = *v9;
LABEL_27:
  v66 = *(*encoder + *v10 + 24) + *(encoder[1] + 148) + *(encoder[1] + 152) * index;
  if (v51)
  {
    v67 = v14 + v15 + v16 * index;
    v68 = *(*v9 + 3808);
    v69 = *(*v9 + 3820);
    v70 = (v67 >> 16) & 0xFFC00000 | *(*v9 + 3812) & 0x3FFFFF;
    v71 = v67 >> 6;
    v72 = vand_s8(*(*v9 + 3800), 0x3FFFF0000);
    v73 = v9[463];
    if (v73)
    {
      v74.i32[0] = *(*&v73 + 36);
      v74.i32[1] = *(*&v73 + 32);
    }

    else
    {
      v76 = *(*v9 + 3824);
      v74.i32[0] = *(v76 + 36);
      v74.i32[1] = *(v76 + 32);
    }

    *v66 = *(*v9 + 3796);
    *(v66 + 4) = vorr_s8(v72, vand_s8(v74, 0xFFFFFFFC0000FFFFLL));
    *(v66 + 12) = v68;
    *(v66 + 16) = v70;
    *(v66 + 20) = v71;
    *(v66 + 24) = v69;
    v75 = *(*&v51 + 3848) & 0xE10000;
  }

  else
  {
    v75 = 0;
  }

  if (v9[4])
  {
    v77 = v26;
  }

  else
  {
    v77 = 0;
  }

  v78 = HIDWORD(v25);
  v79 = v75 | v25 & 0xF1C00FF;
  *(v66 + 28) = 0;
  v80 = v9[102].i32[1] & 0xFBFFFFFF | v27 & 0xF3D7FFFF | 0x8280000;
  *(v66 + 28) = v80;
  *(v66 + 44) = v9[103].i32[0];
  v81 = v9[103].i32[1];
  v82 = *(v66 + 64) & 0xFFFDCFDF | v81;
  *(v66 + 48) = v79;
  *(v66 + 72) = v78;
  *(v66 + 60) = v77;
  *(v66 + 64) = v82;
  *(v66 + 52) = v28;
  *(v66 + 76) = v29;
  v83 = *(v66 + 32) & 0xD1FFFFF;
  *(v66 + 28) = v9[100].i32[0] | v80;
  v84 = v9[100].i32[1];
  *(v66 + 32) = v84;
  v85 = v84 | v83;
  v86 = *(v66 + 36);
  v87 = v9[101].i32[0];
  *(v66 + 36) = v87;
  v88 = v9[101].i32[1];
  *(v66 + 40) = v88;
  *(v66 + 68) = v9[102].i32[0];
  v89.i32[0] = v87 & 0xFFFFFFF;
  v89.i32[1] = v88 & 0xFFFFFFF;
  v90 = vorr_s8(v89, (v86 & 0xFF3FFFFFFF3FFFFFLL));
  *(v66 + 36) = v90;
  v91 = v85 | 0x10000000;
  *(v66 + 32) = v91;
  v92 = v9[4];
  if (v92)
  {
    v93 = *(*&v92 + 3820);
    v91 &= ~0x800000u;
    *(v66 + 32) = v91;
    if (v93 <= 8)
    {
      v94 = 1 << v93;
      if ((v94 & 0x1D8) != 0)
      {
        v90 = vand_s8(v90, vdup_n_s32(0xFF3FFFFu));
LABEL_43:
        *(v66 + 36) = v90;
        goto LABEL_44;
      }

      if ((v94 & 0x26) != 0)
      {
        v90.i32[0] = v90.i32[0] & 0xFFFFFFF | 0x10000000;
        v90.i32[1] = v90.i32[1] & 0xFFFFFFF | 0x10000000;
        goto LABEL_43;
      }
    }

    v90.i32[0] = v90.i32[0] & 0xFFFFFFF | 0x40000000;
    v90.i32[1] = v90.i32[1] & 0xFFFFFFF | 0x40000000;
    goto LABEL_43;
  }

LABEL_44:
  v95 = encoder[1];
  if (v95[83])
  {
    v96 = (*(*encoder + *v10 + 24) + v95[81] + v95[82] * index);
    *(v66 + 36) = v96[4] & 0xF3FFFFF | v90.i32[0] & 0xF0C00000;
    *(v66 + 40) = v96[5] & 0xF3FFFFF | v90.i32[1] & 0xF0C00000;
    *(v66 + 32) = v96[3] & 0x1D1FFFFF | v91 & 0xE2E00000;
    *(v66 + 64) = v96[14] & 0xFFFDCFDF | v81 & 0x23020;
    v95 = encoder[1];
  }

  v97 = *encoder + *v10;
  v98 = *(v97 + 8) + v95[37] + v95[38] * index;
  v99 = (*(v97 + 24) + v95[35] + v95[36] * index + v95[31]);
  v172 = v51;
  if (v51)
  {
    *v99 = __ROR8__(v98 - 0x1000000000, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  }

  else
  {
    LODWORD(__pattern4) = 0x20000000;
    v162 = encoder;
    v163 = v9;
    v100 = index;
    v101 = v49;
    v102 = v50;
    memset_pattern4(v99, &__pattern4, 8uLL);
    v50 = v102;
    v49 = v101;
    index = v100;
    encoder = v162;
    v9 = v163;
    v10 = MEMORY[0x29EDC5638];
  }

  v99[1] = ((v98 - 0xFFFFFFFE4) >> 32) | 0xE00 | (((v98 - 0xFFFFFFFE4) >> 2) << 34);
  v103 = *(encoder[1] + 332);
  if (v103)
  {
    v104 = (v103 >> 9) & 1 | ((v103 & 0x400) >> 10);
    v105 = HIDWORD(v103);
    if ((v103 & 0x400) != 0)
    {
      LOWORD(v105) = HIDWORD(v103) >> 8;
    }

    v106 = 8 * v105;
    v107 = (((24 * BYTE5(v103)) | 4) & ((v103 << 21) >> 31)) + ((2 * v103) & 8) + ((4 * v103) & 8) + 8 * (v103 & 1) + 8 * v104;
    if (v104)
    {
      v108 = v106;
    }

    else
    {
      v108 = 0;
    }

    v99[2] = (((v107 + v108) << 6) + 256) & 0xFF00 | ((v98 - 0xFFFFFFFACLL) >> 32) | (((v98 - 0xFFFFFFFACLL) >> 2) << 34);
  }

  v109 = *(*encoder + *v10 + 24);
  if (v9[4])
  {
    v110 = v109 + *(encoder[1] + 140) + *(encoder[1] + 144) * index + *(encoder[1] + 128);
    *v110 = 1073745164;
    *(v110 + 4) = v4;
    *(v110 + 8) = v167;
    *(v110 + 12) = v3;
    *(v110 + 16) = v49;
    *(v110 + 20) = v171;
    *(v110 + 24) = v50;
    *(v110 + 28) = v170;
    *(v110 + 32) = v5;
    *(v110 + 36) = v166;
    *(v110 + 40) = 0;
    *(v110 + 44) = v6;
    v111 = encoder[1];
    v112 = v109 + v111[47] + v111[48] * index;
    v113 = *(*&v9[3] + 3264);
    v114 = v111[26];
    __pattern4 = 0u;
    *v174 = 0u;
    v176 = v113 & 0xFFFFFFFFFFFFLL;
    *&v174[12] = 0x300000008;
    v175 = 1;
    v115 = AGXIotoInstruction_B_1::emit(&__pattern4, (v112 + v114));
    v116 = v109 + *(encoder[1] + 188) + *(encoder[1] + 192) * index + *(encoder[1] + 192) - v115;
    v117 = v116 & 0xFFFFFFFFFFFFFFFCLL;
    v118 = v116 & 3;
    LODWORD(__pattern4) = 0;
    memset_pattern4(v115, &__pattern4, v116 & 0xFFFFFFFFFFFFFFFCLL);
    if (v118)
    {
      *&v115[v117] = 0;
    }

    v119 = encoder[1];
    v120 = v109 + v119[51] + v119[52] * index;
    v121 = *(*&v9[4] + 3264);
    v122 = v119[30];
    __pattern4 = 0u;
    *v174 = 0u;
    v176 = v121 & 0xFFFFFFFFFFFFLL;
    *&v174[12] = 0x300000008;
    v175 = 1;
    v123 = AGXIotoInstruction_B_1::emit(&__pattern4, (v120 + v122));
    v124 = v123;
    v125 = encoder[1];
    v127 = *(v125 + 204);
    v126 = *(v125 + 208);
  }

  else
  {
    v128 = v109 + *(encoder[1] + 140) + *(encoder[1] + 144) * index + *(encoder[1] + 128);
    *v128 = v164;
    *(v128 + 4) = v165;
    *(v128 + 8) = v168 | 4;
    *(v128 + 12) = v169;
    *(v128 + 16) = v177;
    v129 = encoder[1];
    v130 = v109 + v129[43] + v129[44] * index;
    v131 = *(*&v9[1] + 3264);
    v132 = v129[11];
    __pattern4 = 0u;
    *v174 = 0u;
    v176 = v131 & 0xFFFFFFFFFFFFLL;
    *&v174[12] = 0x300000008;
    v175 = 1;
    v123 = AGXIotoInstruction_B_1::emit(&__pattern4, (v130 + v132));
    v124 = v123;
    v133 = encoder[1];
    v127 = *(v133 + 172);
    v126 = *(v133 + 176);
  }

  v134 = v109 + v127 + v126 * index + v126 - v123;
  v135 = v134 & 0xFFFFFFFFFFFFFFFCLL;
  v136 = v134 & 3;
  LODWORD(__pattern4) = 0;
  memset_pattern4(v123, &__pattern4, v134 & 0xFFFFFFFFFFFFFFFCLL);
  if (v136)
  {
    *&v124[v135] = 0;
  }

  if (v172)
  {
    v137 = *(*&v172 + 3272);
    v138 = encoder[1];
    v139 = v109 + v138[39] + v138[40] * index;
    v140 = v138[10];
    __pattern4 = 0u;
    *v174 = 0u;
    v176 = v137 & 0xFFFFFFFFFFFFLL;
    *&v174[12] = 0x300000008;
    v175 = 1;
    v141 = AGXIotoInstruction_B_1::emit(&__pattern4, (v139 + v140));
    v142 = v109 + *(encoder[1] + 156) + *(encoder[1] + 160) * index + *(encoder[1] + 160) - v141;
    v143 = v142 & 0xFFFFFFFFFFFFFFFCLL;
    v144 = v142 & 3;
    LODWORD(__pattern4) = 0;
    memset_pattern4(v141, &__pattern4, v142 & 0xFFFFFFFFFFFFFFFCLL);
    if (v144)
    {
      *&v141[v143] = 0;
    }
  }

  v145 = v9[168];
  v146 = v9[170];
  v147 = encoder[1];
  v148 = (v109 + v147[69] + v147[70] * index);
  if (v145)
  {
    v145 = *(*&v145 + 56);
  }

  *v148 = v145;
  if (v146)
  {
    v146 = *(*&v146 + 56);
  }

  v148[1] = v146;
  v149 = v9[457].i32[0];
  if ((v149 & 2) != 0)
  {
    v150 = *(*&v9[452] + 56);
  }

  else
  {
    v150 = 0;
  }

  v148[2] = v150;
  if (!*&v9[4])
  {
    v155 = v9[129];
    v156 = v9[131];
    v157 = (v109 + v147[63] + v147[64] * index);
    if (v155)
    {
      v155 = *(*&v155 + 56);
    }

    *v157 = v155;
    if (v156)
    {
      v156 = *(*&v156 + 56);
    }

    v157[1] = v156;
    if ((v149 & 1) == 0)
    {
      goto LABEL_92;
    }

    v158 = 451;
LABEL_94:
    v161 = *(*&v9[v158] + 56);
    goto LABEL_95;
  }

  v151 = v9[246];
  v152 = v9[248];
  v153 = (v109 + v147[65] + v147[66] * index);
  if (v151)
  {
    v151 = *(*&v151 + 56);
  }

  *v153 = v151;
  if (v152)
  {
    v152 = *(*&v152 + 56);
  }

  v153[1] = v152;
  if ((v149 & 8) != 0)
  {
    v154 = *(*&v9[454] + 56);
  }

  else
  {
    v154 = 0;
  }

  v153[2] = v154;
  v159 = v9[285];
  v160 = v9[287];
  v157 = (v109 + v147[67] + v147[68] * index);
  if (v159)
  {
    v159 = *(*&v159 + 56);
  }

  *v157 = v159;
  if (v160)
  {
    v160 = *(*&v160 + 56);
  }

  v157[1] = v160;
  if ((v149 & 0x10) != 0)
  {
    v158 = 455;
    goto LABEL_94;
  }

LABEL_92:
  v161 = 0;
LABEL_95:
  v157[2] = v161;
}

- (AGXG18PFamilyIndirectRenderCommand)initWithEncoder:(void *)a3 withIndex:(unsigned int)a4
{
  self->_encoder = a3;
  self->_index = a4;
  return self;
}

@end