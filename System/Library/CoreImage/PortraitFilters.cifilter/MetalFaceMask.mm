@interface MetalFaceMask
- (id)initForDevice:(id)device;
- (int)clearOutputTexture:(id)texture CommandBuffer:(id)buffer;
- (int)drawEyeMaskUsingQuads:(MetalFaceMaskEyeQuads_t *)quads OutputMaskTexture:(id)texture OutputRegion:(CGRect)region FaceBounds:(CGRect)bounds CommandBuffer:(id)buffer;
- (int)trainSkinMaskUsingInputTexture:(id)texture InputRegion:(CGRect)region QuadRegion:(CGPoint)quadRegion[4] CommandBuffer:(id)buffer;
- (uint64_t)findSkinMaskUsingInputTexture:(float64_t)texture InputRegion:(float64x2_t)region OutputMaskTexture:(float64_t)maskTexture OutputRegion:(float64x2_t)outputRegion FaceBounds:(float64_t)bounds SeedPoints:(float64x2_t)points NumberOfSeedPoints:(float64_t)seedPoints FillValue:(uint64_t)self0 CommandBuffer:(uint64_t)self1;
- (uint64_t)findToothMaskUsingInputTexture:(float64_t)texture InputRegion:(float64x2_t)region OutputMaskTexture:(float64_t)maskTexture OutputRegion:(float64x2_t)outputRegion TeethBounds:(float64_t)bounds SeedPoints:(float64x2_t)points NumberOfSeedPoints:(float64_t)seedPoints FillValue:(uint64_t)self0 CommandBuffer:(uint64_t)self1;
@end

@implementation MetalFaceMask

- (id)initForDevice:(id)device
{
  if (!device)
  {
    sub_49C98();
  }

  v57.receiver = self;
  v57.super_class = MetalFaceMask;
  v4 = [(MetalFaceMask *)&v57 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_lumaDilateRadius = xmmword_54B20;
    v4->_mtlDevice = device;
    v56 = 0;
    v6 = [(MTLDevice *)v4->_mtlDevice newDefaultLibraryWithBundle:[NSBundle error:"bundleForClass:" bundleForClass:?], &v56];
    v5->_mtlLibrary = v6;
    if (!v6)
    {
      sub_49C6C();
    }

    v7 = [(MTLLibrary *)v6 newFunctionWithName:@"MetalFaceMask_Clear"];
    if (!v7)
    {
      sub_49C40();
    }

    v8 = v7;
    v5->_mtlKernel_Clear = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v7 error:0];

    if (!v5->_mtlKernel_Clear)
    {
      sub_49C14();
    }

    v9 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_InitMinMax"];
    if (!v9)
    {
      sub_49BE8();
    }

    v10 = v9;
    v5->_mtlKernel_InitMinMax = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v9 error:0];

    if (!v5->_mtlKernel_InitMinMax)
    {
      sub_49BBC();
    }

    v11 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_MinMax"];
    if (!v11)
    {
      sub_49B90();
    }

    v12 = v11;
    v5->_mtlKernel_MinMax = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v11 error:0];

    if (!v5->_mtlKernel_MinMax)
    {
      sub_49B64();
    }

    v13 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_CalcCubeInputScaling"];
    if (!v13)
    {
      sub_49B38();
    }

    v14 = v13;
    v5->_mtlKernel_CalcCubeInputScaling = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v13 error:0];

    if (!v5->_mtlKernel_CalcCubeInputScaling)
    {
      sub_49B0C();
    }

    v15 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_PopulateCube"];
    if (!v15)
    {
      sub_49AE0();
    }

    v16 = v15;
    v5->_mtlKernel_PopulateCube = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v15 error:0];

    if (!v5->_mtlKernel_PopulateCube)
    {
      sub_49AB4();
    }

    v17 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_DilateCubeLuma"];
    if (!v17)
    {
      sub_49A88();
    }

    v18 = v17;
    v5->_mtlKernel_DilateCubeLuma = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v17 error:0];

    if (!v5->_mtlKernel_DilateCubeLuma)
    {
      sub_49A5C();
    }

    v19 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_DilateCubeChroma1"];
    if (!v19)
    {
      sub_49A30();
    }

    v20 = v19;
    v5->_mtlKernel_DilateCubeChroma1 = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v19 error:0];

    if (!v5->_mtlKernel_DilateCubeChroma1)
    {
      sub_49A04();
    }

    v21 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_DilateCubeChroma2"];
    if (!v21)
    {
      sub_499D8();
    }

    v22 = v21;
    v5->_mtlKernel_DilateCubeChroma2 = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v21 error:0];

    if (!v5->_mtlKernel_DilateCubeChroma2)
    {
      sub_499AC();
    }

    v23 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_ErodeCubeLuma"];
    if (!v23)
    {
      sub_49980();
    }

    v24 = v23;
    v5->_mtlKernel_ErodeCubeLuma = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v23 error:0];

    if (!v5->_mtlKernel_ErodeCubeLuma)
    {
      sub_49954();
    }

    v25 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_ErodeCubeChroma1"];
    if (!v25)
    {
      sub_49928();
    }

    v26 = v25;
    v5->_mtlKernel_ErodeCubeChroma1 = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v25 error:0];

    if (!v5->_mtlKernel_ErodeCubeChroma1)
    {
      sub_498FC();
    }

    v27 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_ErodeCubeChroma2"];
    if (!v27)
    {
      sub_498D0();
    }

    v28 = v27;
    v5->_mtlKernel_ErodeCubeChroma2 = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v27 error:0];

    if (!v5->_mtlKernel_ErodeCubeChroma2)
    {
      sub_498A4();
    }

    v29 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_InitSpanTable"];
    if (!v29)
    {
      sub_49878();
    }

    v30 = v29;
    v5->_mtlKernel_InitSpanTable = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v29 error:0];

    if (!v5->_mtlKernel_InitSpanTable)
    {
      sub_4984C();
    }

    v31 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_GenerateMask"];
    if (!v31)
    {
      sub_49820();
    }

    v32 = v31;
    v5->_mtlKernel_GenerateMask = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v31 error:0];

    if (!v5->_mtlKernel_GenerateMask)
    {
      sub_497F4();
    }

    v33 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_GenerateToothMask"];
    if (!v33)
    {
      sub_497C8();
    }

    v34 = v33;
    v5->_mtlKernel_GenerateToothMask = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v33 error:0];

    if (!v5->_mtlKernel_GenerateToothMask)
    {
      sub_4979C();
    }

    v35 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_ConnectSpans"];
    if (!v35)
    {
      sub_49770();
    }

    v36 = v35;
    v5->_mtlKernel_ConnectSpans = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v35 error:0];

    if (!v5->_mtlKernel_ConnectSpans)
    {
      sub_49744();
    }

    v37 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_PropagateParents"];
    if (!v37)
    {
      sub_49718();
    }

    v38 = v37;
    v5->_mtlKernel_PropagateParents = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v37 error:0];

    if (!v5->_mtlKernel_PropagateParents)
    {
      sub_496EC();
    }

    v39 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_PropogateAssociations"];
    if (!v39)
    {
      sub_496C0();
    }

    v40 = v39;
    v5->_mtlKernel_PropogateAssociations = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v39 error:0];

    if (!v5->_mtlKernel_PropogateAssociations)
    {
      sub_49694();
    }

    v41 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_ResolveAssociations"];
    if (!v41)
    {
      sub_49668();
    }

    v42 = v41;
    v5->_mtlKernel_ResolveAssociations = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v41 error:0];

    if (!v5->_mtlKernel_ResolveAssociations)
    {
      sub_4963C();
    }

    v43 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_AddSeedPoint"];
    if (!v43)
    {
      sub_49610();
    }

    v44 = v43;
    v5->_mtlKernel_AddSeedPoint = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v43 error:0];

    if (!v5->_mtlKernel_AddSeedPoint)
    {
      sub_495E4();
    }

    v45 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_DrawSpans"];
    if (!v45)
    {
      sub_495B8();
    }

    v46 = v45;
    v5->_mtlKernel_DrawSpans = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v45 error:0];

    if (!v5->_mtlKernel_DrawSpans)
    {
      sub_4958C();
    }

    v47 = [(MTLLibrary *)v5->_mtlLibrary newFunctionWithName:@"MetalFaceMask_DrawEye"];
    if (!v47)
    {
      sub_49560();
    }

    v48 = v47;
    v5->_mtlKernel_DrawEye = [(MTLDevice *)v5->_mtlDevice newComputePipelineStateWithFunction:v47 error:0];

    if (!v5->_mtlKernel_DrawEye)
    {
      sub_49534();
    }

    v49 = [(MTLDevice *)v5->_mtlDevice newBufferWithLength:24 options:32];
    v5->_minMaxAtomicBuf = v49;
    if (!v49)
    {
      sub_49508();
    }

    v50 = [(MTLDevice *)v5->_mtlDevice newBufferWithLength:32 options:32];
    v5->_inputScalingBuf = v50;
    if (!v50)
    {
      sub_494DC();
    }

    v51 = [(MTLDevice *)v5->_mtlDevice newBufferWithLength:0x2000 options:32];
    v5->_labellingRowStartIdxBuf = v51;
    if (!v51)
    {
      sub_494B0();
    }

    v52 = [(MTLDevice *)v5->_mtlDevice newBufferWithLength:1179628 options:32];
    v5->_labellingSpanTableBuf = v52;
    if (!v52)
    {
      sub_49484();
    }

    v53 = objc_alloc_init(MTLTextureDescriptor);
    [v53 setTextureType:7];
    [v53 setPixelFormat:10];
    [v53 setWidth:32];
    [v53 setHeight:32];
    [v53 setDepth:32];
    [v53 setMipmapLevelCount:1];
    [v53 setSampleCount:1];
    [v53 setArrayLength:1];
    [v53 setResourceOptions:32];
    [v53 setCpuCacheMode:0];
    [v53 setStorageMode:2];
    [v53 setUsage:19];
    v54 = [(MTLDevice *)v5->_mtlDevice newTextureWithDescriptor:v53];
    v5->_colorCubeTex = v54;
    if (!v54)
    {
      sub_49458();
    }

    v5->_tempColorCubeTex = [(MTLDevice *)v5->_mtlDevice newTextureWithDescriptor:v53];

    if (!v5->_tempColorCubeTex)
    {
      sub_4942C();
    }
  }

  return v5;
}

- (int)clearOutputTexture:(id)texture CommandBuffer:(id)buffer
{
  width = [texture width];
  height = [texture height];
  v9 = [(MTLComputePipelineState *)self->_mtlKernel_Clear maxTotalThreadsPerThreadgroup]>> 5;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_mtlKernel_Clear];
  [computeCommandEncoder setTexture:texture atIndex:0];
  v13[0] = (width + 31) >> 5;
  v13[1] = (v9 + height - 1) / v9;
  v13[2] = 1;
  v12[0] = 32;
  v12[1] = v9;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];
  return 0;
}

- (int)trainSkinMaskUsingInputTexture:(id)texture InputRegion:(CGRect)region QuadRegion:(CGPoint)quadRegion[4] CommandBuffer:(id)buffer
{
  v8 = vaddvq_s32(*&self->_lumaDilateRadius);
  v9 = 192;
  if (v8)
  {
    v10 = 192;
  }

  else
  {
    v10 = 200;
  }

  if (v8)
  {
    v9 = 200;
  }

  v11 = *(&self->super.isa + v9);
  v12 = *(&self->super.isa + v10);
  v13 = vmovn_s64(vcvtq_s64_f64(quadRegion[1]));
  v71[0] = vmovn_s64(vcvtq_s64_f64(*quadRegion));
  v71[1] = v13;
  v14 = vmovn_s64(vcvtq_s64_f64(quadRegion[3]));
  v72 = vmovn_s64(vcvtq_s64_f64(quadRegion[2]));
  v73 = v14;
  *&v15 = vmin_s32(vmin_s32(v71[0], v13), vmin_s32(v72, v14));
  v16 = vmax_s32(vmax_s32(v71[0], v13), vmax_s32(v72, v14));
  v17 = vsub_s32(v16, *&v15);
  *(&v15 + 1) = v16;
  y = region.origin.y;
  height = region.size.height;
  *v20.f32 = vrndm_f32(vcvt_f32_f64(region.origin));
  v21 = vaddq_f64(region.origin, region.size);
  __asm { FMOV            V2.2D, #-1.0 }

  *&v20.u32[2] = vrndp_f32(vcvt_f32_f64(vaddq_f64(v21, _Q2)));
  v69 = vcvtq_s32_f32(v20);
  v70 = v15;
  v27 = v17.u32[1];
  v28 = v17.i32[0];
  v29 = (v17.i32[0] + 3) >> 2;
  v30 = (v17.i32[1] + 3) >> 2;
  v31 = [(MTLComputePipelineState *)self->_mtlKernel_MinMax maxTotalThreadsPerThreadgroup]>> 5;
  v54 = [(MTLComputePipelineState *)self->_mtlKernel_PopulateCube maxTotalThreadsPerThreadgroup]>> 5;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_mtlKernel_InitMinMax];
  [computeCommandEncoder setBuffer:self->_minMaxAtomicBuf offset:0 atIndex:0];
  v53 = vdupq_n_s64(1uLL);
  v67 = v53;
  v68 = 1;
  v65 = v53;
  v66 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
  [computeCommandEncoder setComputePipelineState:self->_mtlKernel_MinMax];
  [computeCommandEncoder setBytes:&v70 length:16 atIndex:0];
  [computeCommandEncoder setBytes:&v69 length:16 atIndex:1];
  [computeCommandEncoder setBuffer:self->_minMaxAtomicBuf offset:0 atIndex:2];
  [computeCommandEncoder setBytes:v71 length:32 atIndex:3];
  [computeCommandEncoder setTexture:texture atIndex:0];
  v67.i64[0] = (v29 + 31) >> 5;
  v67.i64[1] = (v30 + v31 - 1) / v31;
  v68 = 1;
  v65.i64[0] = 32;
  v65.i64[1] = v31;
  v66 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
  [computeCommandEncoder setComputePipelineState:self->_mtlKernel_CalcCubeInputScaling];
  [computeCommandEncoder setBuffer:self->_minMaxAtomicBuf offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_inputScalingBuf offset:0 atIndex:1];
  v67 = v53;
  v68 = 1;
  v65 = v53;
  v66 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
  [computeCommandEncoder setComputePipelineState:self->_mtlKernel_PopulateCube];
  [computeCommandEncoder setBytes:&v70 length:16 atIndex:0];
  [computeCommandEncoder setBytes:&v69 length:16 atIndex:1];
  [computeCommandEncoder setBuffer:self->_inputScalingBuf offset:0 atIndex:2];
  [computeCommandEncoder setBytes:v71 length:32 atIndex:3];
  [computeCommandEncoder setTexture:texture atIndex:0];
  [computeCommandEncoder setTexture:v11 atIndex:1];
  v67.i64[0] = (v28 + 31) >> 5;
  v67.i64[1] = (v27 + v54 - 1) / v54;
  v68 = 1;
  v65.i64[0] = 32;
  v65.i64[1] = v54;
  v66 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
  if (self->_lumaDilateRadius < 1)
  {
    v34 = v12;
  }

  else
  {
    v33 = 0;
    v55 = vdupq_n_s64(8uLL);
    v60 = vdupq_n_s64(4uLL);
    do
    {
      v34 = v11;
      [computeCommandEncoder setComputePipelineState:self->_mtlKernel_DilateCubeLuma];
      [computeCommandEncoder setTexture:v11 atIndex:0];
      [computeCommandEncoder setTexture:v12 atIndex:1];
      v67 = v60;
      v68 = 4;
      v65 = v55;
      v66 = 8;
      [computeCommandEncoder dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
      ++v33;
      v11 = v12;
      v12 = v34;
    }

    while (v33 < self->_lumaDilateRadius);
  }

  chromaDilateRadius = self->_chromaDilateRadius;
  chromaErodeRadius = self->_chromaErodeRadius;
  _VF = __OFSUB__(chromaDilateRadius, chromaErodeRadius);
  v38 = chromaDilateRadius - chromaErodeRadius;
  v37 = (v38 < 0) ^ _VF | (v38 == 0);
  v39 = v38 + 1;
  if (v37)
  {
    v40 = 1.0;
  }

  else
  {
    v40 = v39;
  }

  if (chromaDilateRadius < 1)
  {
    v42 = v34;
  }

  else
  {
    v41 = 0;
    v56 = vdupq_n_s64(8uLL);
    v61 = vdupq_n_s64(4uLL);
    do
    {
      v42 = v11;
      v43 = self->_chromaErodeRadius;
      v44 = -1.0;
      _VF = __OFSUB__(v41, v43);
      v45 = v41 - v43;
      if (v45 < 0 == _VF)
      {
        v44 = (v45 + 1) / v40;
      }

      v64 = v44;
      if (v41)
      {
        v46 = 80;
      }

      else
      {
        v46 = 72;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v46)];
      [computeCommandEncoder setBuffer:self->_inputScalingBuf offset:0 atIndex:0];
      [computeCommandEncoder setBytes:&v64 length:4 atIndex:1];
      [computeCommandEncoder setTexture:v11 atIndex:0];
      [computeCommandEncoder setTexture:v34 atIndex:1];
      v67 = v61;
      v68 = 4;
      v65 = v56;
      v66 = 8;
      [computeCommandEncoder dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
      ++v41;
      v11 = v34;
      v34 = v42;
    }

    while (v41 < self->_chromaDilateRadius);
  }

  if (self->_lumaErodeRadius < 1)
  {
    v48 = v42;
  }

  else
  {
    v47 = 0;
    v57 = vdupq_n_s64(8uLL);
    v62 = vdupq_n_s64(4uLL);
    do
    {
      v48 = v11;
      [computeCommandEncoder setComputePipelineState:self->_mtlKernel_ErodeCubeLuma];
      [computeCommandEncoder setTexture:v11 atIndex:0];
      [computeCommandEncoder setTexture:v42 atIndex:1];
      v67 = v62;
      v68 = 4;
      v65 = v57;
      v66 = 8;
      [computeCommandEncoder dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
      ++v47;
      v11 = v42;
      v42 = v48;
    }

    while (v47 < self->_lumaErodeRadius);
  }

  if (self->_chromaErodeRadius >= 1)
  {
    v49 = 0;
    v58 = vdupq_n_s64(8uLL);
    v63 = vdupq_n_s64(4uLL);
    do
    {
      v50 = v11;
      if (v49)
      {
        v51 = 104;
      }

      else
      {
        v51 = 96;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v51)];
      [computeCommandEncoder setTexture:v11 atIndex:0];
      [computeCommandEncoder setTexture:v48 atIndex:1];
      v67 = v63;
      v68 = 4;
      v65 = v58;
      v66 = 8;
      [computeCommandEncoder dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
      ++v49;
      v11 = v48;
      v48 = v50;
    }

    while (v49 < self->_chromaErodeRadius);
  }

  [computeCommandEncoder endEncoding];
  return 0;
}

- (uint64_t)findSkinMaskUsingInputTexture:(float64_t)texture InputRegion:(float64x2_t)region OutputMaskTexture:(float64_t)maskTexture OutputRegion:(float64x2_t)outputRegion FaceBounds:(float64_t)bounds SeedPoints:(float64x2_t)points NumberOfSeedPoints:(float64_t)seedPoints FillValue:(uint64_t)self0 CommandBuffer:(uint64_t)self1
{
  a2.f64[1] = texture;
  *v23.f32 = vrndm_f32(vcvt_f32_f64(a2));
  region.f64[1] = maskTexture;
  v24 = vaddq_f64(a2, region);
  __asm { FMOV            V2.2D, #-1.0 }

  *v24.f32 = vrndp_f32(vcvt_f32_f64(vaddq_f64(v24, _Q2)));
  v30 = vcvt_s32_f32(*v24.f32);
  v23.i64[1] = v24.i64[0];
  v57 = vcvtq_s32_f32(v23);
  outputRegion.f64[1] = bounds;
  *v24.f32 = vrndm_f32(vcvt_f32_f64(outputRegion));
  points.f64[1] = seedPoints;
  *&v24.u32[2] = vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(outputRegion, points), _Q2)));
  v56 = vcvtq_s32_f32(v24);
  *v24.f32 = vmax_s32(vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(a17))), vcvt_s32_f32(*v23.f32));
  *&v24.u32[2] = vmin_s32(vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(a17, a18), _Q2)))), v30);
  v58[0] = v24;
  v31 = vsub_s32(*(&v24 + 8), *&v24).i32[1];
  v32 = v31 + 1;
  v33 = log2f((v31 + 1));
  threadExecutionWidth = [*(self + 120) threadExecutionWidth];
  v35 = [*(self + 120) threadExecutionWidth] + v31;
  v36 = v35 / [*(self + 120) threadExecutionWidth];
  threadExecutionWidth2 = [*(self + 144) threadExecutionWidth];
  threadExecutionWidth3 = [*(self + 144) threadExecutionWidth];
  threadExecutionWidth4 = [*(self + 144) threadExecutionWidth];
  computeCommandEncoder = [a16 computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:*(self + 112)];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:0];
  v46 = vdupq_n_s64(1uLL);
  *v55 = v46;
  *&v55[16] = 1;
  *v54 = v46;
  *&v54[16] = 1;
  [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  [computeCommandEncoder setComputePipelineState:*(self + 120)];
  [computeCommandEncoder setBytes:v58 length:16 atIndex:0];
  [computeCommandEncoder setBytes:&v57 length:16 atIndex:1];
  [computeCommandEncoder setBuffer:*(self + 216) offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:4];
  [computeCommandEncoder setTexture:*(self + 192) atIndex:0];
  [computeCommandEncoder setTexture:buffer atIndex:1];
  *v55 = v36;
  *&v55[8] = v46;
  *v54 = threadExecutionWidth;
  *&v54[8] = v46;
  [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  [computeCommandEncoder setComputePipelineState:*(self + 136)];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:1];
  *v55 = v36;
  *&v55[8] = v46;
  *v54 = threadExecutionWidth;
  *&v54[8] = v46;
  [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  v53 = 2;
  v52 = 0x100000001;
  if (v32 >= 2)
  {
    v47 = vdupq_n_s64(1uLL);
    v39 = (threadExecutionWidth3 + (1 << vcvtms_s32_f32(v33)) - 1) / threadExecutionWidth4;
    do
    {
      [computeCommandEncoder setComputePipelineState:*(self + 144)];
      [computeCommandEncoder setBytes:&v52 length:12 atIndex:0];
      [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:1];
      [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:2];
      *v55 = v39;
      *&v55[8] = v47;
      *v54 = threadExecutionWidth2;
      *&v54[8] = v47;
      [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
      v52 = vadd_s32(v52, v52);
      v53 *= 2;
    }

    while (v52.i32[0] < v32);
  }

  [computeCommandEncoder setComputePipelineState:*(self + 152)];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:0];
  v48 = vdupq_n_s64(1uLL);
  *v55 = v48;
  *&v55[16] = 1;
  *v54 = [*(self + 152) maxTotalThreadsPerThreadgroup];
  *&v54[8] = v48;
  [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  [computeCommandEncoder setComputePipelineState:*(self + 160)];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:0];
  *v55 = v48;
  *&v55[16] = 1;
  *v54 = v48;
  *&v54[16] = 1;
  [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  v52.i32[0] = 0;
  v52.i32[1] = v32;
  v53 = v32;
  [computeCommandEncoder setComputePipelineState:*(self + 144)];
  [computeCommandEncoder setBytes:&v52 length:12 atIndex:0];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:2];
  *v55 = v36;
  *&v55[8] = v48;
  *v54 = threadExecutionWidth;
  *&v54[8] = v48;
  [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  if (a14)
  {
    v49 = vdupq_n_s64(1uLL);
    do
    {
      v40 = *a13++;
      v50 = vmovn_s64(vcvtq_s64_f64(v40));
      v51 = a15;
      [computeCommandEncoder setComputePipelineState:*(self + 168)];
      [computeCommandEncoder setBytes:v58 length:16 atIndex:0];
      [computeCommandEncoder setBytes:&v57 length:16 atIndex:1];
      [computeCommandEncoder setBytes:&v50 length:12 atIndex:2];
      [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:3];
      [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:4];
      *v55 = v49;
      *&v55[16] = 1;
      *v54 = v49;
      *&v54[16] = 1;
      [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
      --a14;
    }

    while (a14);
  }

  [computeCommandEncoder setComputePipelineState:*(self + 176)];
  [computeCommandEncoder setBytes:&v56 length:16 atIndex:0];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:2];
  [computeCommandEncoder setTexture:a12 atIndex:0];
  *v55 = v36;
  *&v55[8] = vdupq_n_s64(1uLL);
  *v54 = threadExecutionWidth;
  *&v54[8] = *&v55[8];
  [computeCommandEncoder dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  [computeCommandEncoder endEncoding];
  return 0;
}

- (uint64_t)findToothMaskUsingInputTexture:(float64_t)texture InputRegion:(float64x2_t)region OutputMaskTexture:(float64_t)maskTexture OutputRegion:(float64x2_t)outputRegion TeethBounds:(float64_t)bounds SeedPoints:(float64x2_t)points NumberOfSeedPoints:(float64_t)seedPoints FillValue:(uint64_t)self0 CommandBuffer:(uint64_t)self1
{
  a2.f64[1] = texture;
  *v18.f32 = vrndm_f32(vcvt_f32_f64(a2));
  v19 = vcvt_s32_f32(*v18.f32);
  region.f64[1] = maskTexture;
  v20 = vaddq_f64(a2, region);
  __asm { FMOV            V2.2D, #-1.0 }

  *&v18.u32[2] = vrndp_f32(vcvt_f32_f64(vaddq_f64(v20, _Q2)));
  *&v20.f64[0] = vcvt_s32_f32(*&v18.u32[2]);
  v62 = vcvtq_s32_f32(v18);
  outputRegion.f64[1] = bounds;
  *v18.f32 = vrndm_f32(vcvt_f32_f64(outputRegion));
  points.f64[1] = seedPoints;
  *&v18.u32[2] = vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(outputRegion, points), _Q2)));
  *&v26 = vmax_s32(vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(a17))), v19);
  *&_Q2.f64[0] = vmin_s32(vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(a17, a18), _Q2)))), *&v20.f64[0]);
  v27 = vsub_s32(*&_Q2.f64[0], *&v26);
  *(&v26 + 1) = *&_Q2.f64[0];
  v61 = vcvtq_s32_f32(v18);
  v63[0] = v26;
  *v18.f32 = vcgt_u32(0x8000000080000000, v27);
  if ((vpmin_u32(*v18.f32, *v18.f32).u32[0] & 0x80000000) == 0)
  {
    sub_49CC4();
  }

  v33 = v27.i32[1];
  v34 = v27.i32[1] + 1;
  v35 = log2f((v27.i32[1] + 1));
  threadExecutionWidth = [*(self + 128) threadExecutionWidth];
  v37 = [*(self + 128) threadExecutionWidth] + v33;
  v38 = v37 / [*(self + 128) threadExecutionWidth];
  threadExecutionWidth2 = [*(self + 144) threadExecutionWidth];
  threadExecutionWidth3 = [*(self + 144) threadExecutionWidth];
  threadExecutionWidth4 = [*(self + 144) threadExecutionWidth];
  blitCommandEncoder = [a16 blitCommandEncoder];
  [blitCommandEncoder fillBuffer:*(self + 224) range:0 value:{1179628, 0}];
  [blitCommandEncoder fillBuffer:*(self + 232) range:0 value:{0x2000, 0}];
  [blitCommandEncoder endEncoding];
  computeCommandEncoder = [a16 computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:*(self + 112)];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:0];
  v51 = vdupq_n_s64(1uLL);
  *v60 = v51;
  *&v60[16] = 1;
  *v59 = v51;
  *&v59[16] = 1;
  [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
  [computeCommandEncoder setComputePipelineState:*(self + 128)];
  [computeCommandEncoder setBytes:v63 length:16 atIndex:0];
  [computeCommandEncoder setBytes:&v62 length:16 atIndex:1];
  [computeCommandEncoder setBuffer:*(self + 216) offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:4];
  [computeCommandEncoder setTexture:buffer atIndex:0];
  *v60 = v38;
  *&v60[8] = v51;
  *v59 = threadExecutionWidth;
  *&v59[8] = v51;
  [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
  [computeCommandEncoder setComputePipelineState:*(self + 136)];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:1];
  v49 = v38;
  *v60 = v38;
  *&v60[8] = v51;
  v42 = threadExecutionWidth;
  *v59 = threadExecutionWidth;
  *&v59[8] = v51;
  [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
  v58 = 2;
  v57 = 0x100000001;
  if (v34 >= 2)
  {
    v52 = vdupq_n_s64(1uLL);
    v43 = (threadExecutionWidth3 + (1 << vcvtms_s32_f32(v35)) - 1) / threadExecutionWidth4;
    do
    {
      [computeCommandEncoder setComputePipelineState:*(self + 144)];
      [computeCommandEncoder setBytes:&v57 length:12 atIndex:0];
      [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:1];
      [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:2];
      *v60 = v43;
      *&v60[8] = v52;
      *v59 = threadExecutionWidth2;
      *&v59[8] = v52;
      [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
      v57 = vadd_s32(v57, v57);
      v58 *= 2;
    }

    while (v57.i32[0] < v34);
  }

  [computeCommandEncoder setComputePipelineState:*(self + 152)];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:0];
  v53 = vdupq_n_s64(1uLL);
  *v60 = v53;
  *&v60[16] = 1;
  *v59 = [*(self + 152) maxTotalThreadsPerThreadgroup];
  *&v59[8] = v53;
  [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
  [computeCommandEncoder setComputePipelineState:*(self + 160)];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:0];
  *v60 = v53;
  *&v60[16] = 1;
  *v59 = v53;
  *&v59[16] = 1;
  [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
  v57.i32[0] = 0;
  v57.i32[1] = v34;
  v58 = v34;
  [computeCommandEncoder setComputePipelineState:*(self + 144)];
  [computeCommandEncoder setBytes:&v57 length:12 atIndex:0];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:2];
  *v60 = v49;
  *&v60[8] = v53;
  *v59 = v42;
  *&v59[8] = v53;
  [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
  if (a14)
  {
    v54 = vdupq_n_s64(1uLL);
    do
    {
      v44 = *a13++;
      v55 = vmovn_s64(vcvtq_s64_f64(v44));
      v56 = a15;
      [computeCommandEncoder setComputePipelineState:*(self + 168)];
      [computeCommandEncoder setBytes:v63 length:16 atIndex:0];
      [computeCommandEncoder setBytes:&v62 length:16 atIndex:1];
      [computeCommandEncoder setBytes:&v55 length:12 atIndex:2];
      [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:3];
      [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:4];
      *v60 = v54;
      *&v60[16] = 1;
      *v59 = v54;
      *&v59[16] = 1;
      [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
      --a14;
    }

    while (a14);
  }

  [computeCommandEncoder setComputePipelineState:*(self + 176)];
  [computeCommandEncoder setBytes:&v61 length:16 atIndex:0];
  [computeCommandEncoder setBuffer:*(self + 224) offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:*(self + 232) offset:0 atIndex:2];
  [computeCommandEncoder setTexture:a12 atIndex:0];
  *v60 = v49;
  *&v60[8] = vdupq_n_s64(1uLL);
  *v59 = v42;
  *&v59[8] = *&v60[8];
  [computeCommandEncoder dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
  [computeCommandEncoder endEncoding];
  return 0;
}

- (int)drawEyeMaskUsingQuads:(MetalFaceMaskEyeQuads_t *)quads OutputMaskTexture:(id)texture OutputRegion:(CGRect)region FaceBounds:(CGRect)bounds CommandBuffer:(id)buffer
{
  if (!quads)
  {
    sub_49D1C();
  }

  var0 = quads->var0;
  if (var0 > 0x10)
  {
    sub_49CF0();
  }

  v12 = xmmword_54B30;
  if (var0)
  {
    p_var1 = &quads[3].var1;
    do
    {
      v14 = *(p_var1 - 3);
      v15 = *(p_var1 - 2);
      v16 = *(p_var1 - 1);
      v17.i64[0] = v12.i32[0];
      v17.i64[1] = v12.i32[1];
      v18 = vcvtq_f64_s64(v17);
      v17.i64[0] = v14;
      v17.i64[1] = SHIDWORD(v14);
      v19 = vcvtq_f64_s64(v17);
      *&v18.f64[0] = vmovn_s64(vcvtq_s64_f64(vminnmq_f64(v18, v19)));
      v17.i64[0] = SLODWORD(v18.f64[0]);
      v17.i64[1] = SHIDWORD(v18.f64[0]);
      v20 = vcvtq_f64_s64(v17);
      v17.i64[0] = v15;
      v17.i64[1] = SHIDWORD(v15);
      v21 = vcvtq_f64_s64(v17);
      *&v20.f64[0] = vmovn_s64(vcvtq_s64_f64(vminnmq_f64(v20, v21)));
      v17.i64[0] = SLODWORD(v20.f64[0]);
      v17.i64[1] = SHIDWORD(v20.f64[0]);
      v22 = vcvtq_f64_s64(v17);
      v17.i64[0] = v16;
      v17.i64[1] = SHIDWORD(v16);
      v23 = vcvtq_f64_s64(v17);
      *&v22.f64[0] = vmovn_s64(vcvtq_s64_f64(vminnmq_f64(v22, v23)));
      v17.i64[0] = SLODWORD(v22.f64[0]);
      v17.i64[1] = SHIDWORD(v22.f64[0]);
      v24 = vcvtq_f64_s64(v17);
      v17.i64[0] = *p_var1;
      v17.i64[1] = HIDWORD(*p_var1);
      v25 = vcvtq_f64_s64(v17);
      v17.i64[0] = v12.i32[2];
      v17.i64[1] = v12.i32[3];
      v26 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vcvtq_f64_s64(v17), v19)));
      v17.i64[0] = v26.i32[0];
      v17.i64[1] = v26.i32[1];
      v27 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vcvtq_f64_s64(v17), v21)));
      v17.i64[0] = v27.i32[0];
      v17.i64[1] = v27.i32[1];
      v28 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vcvtq_f64_s64(v17), v23)));
      v17.i64[0] = v28.i32[0];
      v17.i64[1] = v28.i32[1];
      v12 = vuzp1q_s32(vcvtq_s64_f64(vminnmq_f64(v24, v25)), vcvtq_s64_f64(vmaxnmq_f64(vcvtq_f64_s64(v17), v25)));
      p_var1 += 8;
      --var0;
    }

    while (var0);
  }

  y = region.origin.y;
  *v30.f32 = vrndm_f32(vcvt_f32_f64(region.origin));
  v31 = vcvt_s32_f32(*v30.f32);
  height = region.size.height;
  v33 = vaddq_f64(region.origin, region.size);
  __asm { FMOV            V2.2D, #-1.0 }

  *&v33.f64[0] = vrndp_f32(vcvt_f32_f64(vaddq_f64(v33, _Q2)));
  *&_Q2.f64[0] = vcvt_s32_f32(*&v33.f64[0]);
  v30.i64[1] = *&v33.f64[0];
  v39 = vcvtq_s32_f32(v30);
  v40 = &quads->var1;
  *v30.f32 = vld1_dup_f32(v40);
  *&v41 = vmax_s32(vsub_s32(*v12.i8, *v30.f32), v31);
  *(&v41 + 1) = vmax_s32(*&v41, vmin_s32(vadd_s32(*&vextq_s8(v12, v12, 8uLL), *v30.f32), *&_Q2.f64[0]));
  v52 = v39;
  v53 = v41;
  v42 = vsub_s32(*(&v41 + 8), *&v41).i32[1] + 1;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_mtlKernel_DrawEye threadExecutionWidth];
  v44 = [(MTLComputePipelineState *)self->_mtlKernel_GenerateToothMask threadExecutionWidth]+ v42 - 1;
  v45 = v44 / [(MTLComputePipelineState *)self->_mtlKernel_GenerateToothMask threadExecutionWidth];
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_mtlKernel_DrawEye];
  [computeCommandEncoder setBytes:&v53 length:16 atIndex:0];
  [computeCommandEncoder setBytes:&v52 length:16 atIndex:1];
  [computeCommandEncoder setBytes:quads length:528 atIndex:2];
  [computeCommandEncoder setBuffer:self->_labellingSpanTableBuf offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:self->_labellingRowStartIdxBuf offset:0 atIndex:4];
  [computeCommandEncoder setTexture:texture atIndex:0];
  v50 = v45;
  v51 = vdupq_n_s64(1uLL);
  v48 = threadExecutionWidth;
  v49 = v51;
  [computeCommandEncoder dispatchThreadgroups:&v50 threadsPerThreadgroup:&v48];
  [computeCommandEncoder endEncoding];
  return 0;
}

@end