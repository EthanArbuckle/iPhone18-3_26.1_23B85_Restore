@interface CIHighlightRecoveryProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)compilePipelineForDevice:(id)a3 functionName:(id)a4 constantValues:(id)a5;
+ (id)functionConstantValuesTuningParameters:(id)a3;
@end

@implementation CIHighlightRecoveryProcessor

+ (id)compilePipelineForDevice:(id)a3 functionName:(id)a4 constantValues:(id)a5
{
  v12 = 0;
  v8 = [a3 newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", a1), &v12}];
  v9 = [v8 newFunctionWithName:a4 constantValues:a5 error:&v12];
  v10 = [a3 newComputePipelineStateWithFunction:v9 error:&v12];

  return v10;
}

+ (id)functionConstantValuesTuningParameters:(id)a3
{
  [objc_msgSend(a3 objectForKeyedSubscript:{@"maxIntensityT0", "floatValue"}];
  v5 = v4;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"maxIntensityT1", "floatValue"}];
  v7 = v6;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"minIntensityT0", "floatValue"}];
  v9 = v8;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"minIntensityT1", "floatValue"}];
  v10 = 1.0 / (v7 - v5);
  v12 = 1.0 / (v11 - v9);
  v13 = objc_alloc_init(MEMORY[0x1E6974060]);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __71__CIHighlightRecoveryProcessor_functionConstantValuesTuningParameters___block_invoke;
  v22 = &unk_1E75C37E8;
  v23 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = __71__CIHighlightRecoveryProcessor_functionConstantValuesTuningParameters___block_invoke_2;
  v17 = &unk_1E75C3810;
  v18 = v13;
  v24 = 8;
  [v13 setConstantValue:&v24 type:41 withName:@"V3HLR::kXhlrbTileSize"];
  __71__CIHighlightRecoveryProcessor_functionConstantValuesTuningParameters___block_invoke_2(v15, @"V3HLR::kXhlrbMaxIntensityThresholdM", v10);
  v16(v15, @"V3HLR::kXhlrbMaxIntensityThresholdC", -(v10 * v5));
  v16(v15, @"V3HLR::kXhlrbMinIntensityThresholdM", v12);
  v16(v15, @"V3HLR::kXhlrbMinIntensityThresholdC", -(v12 * v9));
  return v13;
}

uint64_t __71__CIHighlightRecoveryProcessor_functionConstantValuesTuningParameters___block_invoke_2(uint64_t a1, uint64_t a2, float _S0)
{
  __asm { FCVT            H0, S0 }

  v9 = _H0;
  return [*(a1 + 32) setConstantValue:&v9 type:16 withName:a2];
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v9 = [a3 objectAtIndexedSubscript:{0, a4, a5, a6}];
  v10 = [a5 metalCommandBuffer];
  v11 = [objc_msgSend(v10 "commandQueue")];
  v12 = [a1 functionConstantValuesTuningParameters:a4];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"blurRadiusT0", "floatValue"}];
  v14 = v13;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"blurRadiusT1", "floatValue"}];
  v16 = v15;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"maxBlur", "floatValue"}];
  v18 = v17;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"apertureScaling", "floatValue"}];
  v20 = (v14 * v19) / v18;
  v69[0] = 1.0 / (((v16 * v19) / v18) - v20);
  v69[1] = -(v69[0] * v20);
  v21 = [a1 compilePipelineForDevice:v11 functionName:@"sparserendering_xhlrb_scan" constantValues:v12];
  v22 = [a1 compilePipelineForDevice:v11 functionName:@"sparserendering_xhlrb_diffuse" constantValues:v12];
  v23 = [a1 compilePipelineForDevice:v11 functionName:@"sparserendering_xhlrb_copy_back" constantValues:v12];
  v24 = v23;
  if (v21)
  {
    v25 = v22 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25 || v23 == 0;
  result = !v26;
  if (!v26)
  {
    v57 = result;
    v58 = a5;
    [v9 region];
    v60 = v10;
    v29 = v28;
    [v9 region];
    v31 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v32 = v30 & 0xFFFFFFFFFFFFFFFELL;
    v33 = log2f(fminf([v21 maxTotalThreadsPerThreadgroup], fminf(objc_msgSend(v22, "maxTotalThreadsPerThreadgroup"), objc_msgSend(v24, "maxTotalThreadsPerThreadgroup"))));
    v34 = exp2f(floorf(v33));
    if (v34 >= 0x40)
    {
      v35 = 8;
    }

    else
    {
      v35 = v34 >> 3;
    }

    v54 = v32;
    v56 = (v32 + 7) >> 3;
    v36 = v9;
    v59 = v9;
    v37 = [v11 newBufferWithLength:((v31 + 7) & 0xFFFFFFFFFFFFFFF8) * v56 + 16 options:32];
    v38 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:v31 height:v32 mipmapped:0];
    [v38 setUsage:3];
    [v38 setStorageMode:2];
    v55 = v21;
    v39 = [v11 newTextureWithDescriptor:v38];
    v40 = [v11 newTextureWithDescriptor:v38];
    v41 = [v60 blitCommandEncoder];
    [v60 setLabel:@"XHLRBComputeBlit"];
    v67 = 0;
    v68 = 0uLL;
    v65 = v31;
    *&v66 = v54;
    *(&v66 + 1) = 1;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    [v41 copyFromTexture:objc_msgSend(v36 sourceSlice:"metalTexture") sourceLevel:0 sourceOrigin:0 sourceSize:&v67 toTexture:&v65 destinationSlice:v39 destinationLevel:0 destinationOrigin:{0, &v62}];
    [v41 fillBuffer:v37 range:0 value:{objc_msgSend(v37, "length"), 0}];
    [v41 endEncoding];
    v42 = [v60 computeCommandEncoder];
    [v42 setLabel:@"XHLRBComputeCompute"];
    [v42 setComputePipelineState:v55];
    [v42 setBytes:v69 length:8 atIndex:0];
    [v42 setBuffer:v37 offset:0 atIndex:1];
    [v42 setTexture:objc_msgSend(v59 atIndex:{"metalTexture"), 0}];
    v67 = (v31 + 7) >> 3;
    *&v68 = v56;
    *(&v68 + 1) = 1;
    v65 = v35;
    v66 = xmmword_19CF288E0;
    [v42 dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
    v43 = [objc_msgSend(a4 objectForKeyedSubscript:{@"iterations", "unsignedIntValue"}];
    if (v43)
    {
      v44 = v43;
      do
      {
        [v42 setComputePipelineState:v22];
        [v42 setBytes:v69 length:8 atIndex:0];
        [v42 setBuffer:v37 offset:0 atIndex:1];
        [v42 setTexture:v39 atIndex:0];
        [v42 setTexture:v40 atIndex:1];
        v67 = v35;
        v68 = xmmword_19CF288E0;
        [v42 dispatchThreadgroupsWithIndirectBuffer:v37 indirectBufferOffset:0 threadsPerThreadgroup:&v67];
        [v42 setComputePipelineState:v24];
        [v42 setBuffer:v37 offset:0 atIndex:0];
        [v42 setTexture:v40 atIndex:0];
        [v42 setTexture:v39 atIndex:1];
        v67 = v35;
        v68 = xmmword_19CF288E0;
        [v42 dispatchThreadgroupsWithIndirectBuffer:v37 indirectBufferOffset:0 threadsPerThreadgroup:&v67];
        --v44;
      }

      while (v44);
    }

    [v42 endEncoding];
    v45 = [v60 blitCommandEncoder];
    [v60 setLabel:@"XHLRBComputeBlit"];
    [v59 region];
    MinX = CGRectGetMinX(v70);
    [v59 region];
    MaxY = CGRectGetMaxY(v71);
    [v58 region];
    v48 = CGRectGetMinX(v72);
    [v58 region];
    v49 = CGRectGetMaxY(v73);
    v67 = (v48 - MinX);
    *&v68 = -(v49 - MaxY);
    *(&v68 + 1) = 0;
    [v58 region];
    v51 = v50;
    [v58 region];
    v65 = v51;
    *&v66 = v52;
    *(&v66 + 1) = 1;
    v53 = [v58 metalTexture];
    v62 = 0;
    v63 = 0;
    v64 = 0;
    [v45 copyFromTexture:v39 sourceSlice:0 sourceLevel:0 sourceOrigin:&v67 sourceSize:&v65 toTexture:v53 destinationSlice:0 destinationLevel:0 destinationOrigin:&v62];
    [v45 endEncoding];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __73__CIHighlightRecoveryProcessor_processWithInputs_arguments_output_error___block_invoke;
    v61[3] = &unk_1E75C3838;
    v61[4] = v37;
    v61[5] = v39;
    v61[6] = v40;
    [v60 addCompletedHandler:v61];
    return v57;
  }

  return result;
}

void __73__CIHighlightRecoveryProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v17 = CGRectIntegral(a5);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxX = CGRectGetMaxX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MinY = CGRectGetMinY(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetMaxY(v20) + 7;
  v13 = (MinX & 0xFFFFFFFFFFFFFFF8);
  v14 = (MinY & 0xFFFFFFFFFFFFFFF8);
  v15 = (MaxX + 7 - (MinX & 0xFFFFFFFFFFFFFFF8 | (MaxX + 7) & 7));
  v16 = (v12 - (MinY & 0xFFFFFFFFFFFFFFF8 | v12 & 7));
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end