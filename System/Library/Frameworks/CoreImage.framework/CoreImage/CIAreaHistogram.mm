@interface CIAreaHistogram
+ (id)customAttributes;
- (BOOL)_inputsAreOK;
- (IRect)_netExtent;
- (id)outputData;
- (id)outputImage;
- (id)outputImageMPS;
- (id)outputImageNonMPS;
- (void)_inputsAreOK;
- (void)outputData;
@end

@implementation CIAreaHistogram

- (id)outputImageMPS
{
  v43[3] = *MEMORY[0x1E69E9840];
  v38 = 0uLL;
  v39 = 0;
  if (self)
  {
    [(CIAreaHistogram *)self _netExtent];
    v3 = *(&v38 + 1);
    v4 = v39;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 <= v4)
  {
    v3 = v4;
  }

  if (v3 > 0x1000)
  {
    return 0;
  }

  unsignedIntValue = [(NSNumber *)self->inputCount unsignedIntValue];
  v7 = unsignedIntValue;
  inputImage = self->inputImage;
  if (unsignedIntValue < 0x100)
  {
    v9 = 256;
LABEL_13:
    v12 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_CIAreaHistogramScaleAndClamp];
    [(CIImage *)inputImage extent];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    *&v13 = v7 / v9;
    v43[0] = inputImage;
    v43[1] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    v43[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9 - 1];
    inputImage = -[CIColorKernel applyWithExtent:arguments:](v12, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3], v14, v16, v18, v20);
    goto LABEL_14;
  }

  if ((unsignedIntValue & (unsignedIntValue - 1)) != 0)
  {
    v10 = (unsignedIntValue - 1) | ((unsignedIntValue - 1) >> 1) | (((unsignedIntValue - 1) | ((unsignedIntValue - 1) >> 1)) >> 2);
    v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
    v9 = (v11 | HIWORD(v11)) + 1;
    goto LABEL_13;
  }

  v9 = unsignedIntValue;
LABEL_14:
  v21 = *(&v38 + 1);
  v22 = v39;
  [(NSNumber *)self->inputScale floatValue];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __38__CIAreaHistogram_MPS__outputImageMPS__block_invoke;
  v32[3] = &__block_descriptor_68_e62_v24__0___CIImageProcessorInput__8___CIImageProcessorOutput__16l;
  v33 = v38;
  v34 = v39;
  v35 = v7;
  v36 = v9;
  v37 = v23 / (v22 * v21);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __38__CIAreaHistogram_MPS__outputImageMPS__block_invoke_2;
  v29[3] = &__block_descriptor_56_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v31 = v39;
  v30 = v38;
  XXH64_reset(v28, 0);
  LODWORD(__src) = v38;
  XXH64_update(v28, &__src, 4uLL);
  LODWORD(__src) = DWORD1(v38);
  XXH64_update(v28, &__src, 4uLL);
  __src = *(&v38 + 1);
  XXH64_update(v28, &__src, 8uLL);
  __src = v39;
  XXH64_update(v28, &__src, 8uLL);
  LODWORD(__src) = v7;
  XXH64_update(v28, &__src, 4uLL);
  v41[0] = @"kCIImageProcessorSynchronizeInputs";
  v41[1] = @"kCIImageProcessorAllowPartialOutputRegion";
  v42[0] = MEMORY[0x1E695E110];
  v42[1] = MEMORY[0x1E695E110];
  v41[2] = @"kCIImageProcessorOnlyUsesMetal";
  v42[2] = MEMORY[0x1E695E118];
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CIAreaHistogramMPS_%ubins", v7];
  v26 = XXH64_digest(v28);
  if (v7 <= 0x100)
  {
    v27 = 266;
  }

  else
  {
    v27 = 2056;
  }

  return [(CIImage *)inputImage imageWithExtent:v25 processorDescription:v26 argumentDigest:v27 inputFormat:2056 outputFormat:v24 options:v29 roiCallback:0.0 processor:0.0, v7, 1.0, v32];
}

void __38__CIAreaHistogram_MPS__outputImageMPS__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 36);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 60);
  v11 = *(a1 + 64);
  v45 = *(a1 + 60);
  v46 = v9;
  v44 = v11;
  v12 = [a3 metalCommandBuffer];
  if (v12)
  {
    v13 = v12;
    v42[0] = v10;
    v42[1] = 1;
    v42[2] = 0;
    v42[3] = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v43 = _Q0;
    v19 = [objc_alloc(MEMORY[0x1E69745E0]) initWithDevice:objc_msgSend(v12 histogramInfo:{"device"), v42}];
    if (v19)
    {
      v20 = v19;
      [a2 region];
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;
      if (CGRectIsNull(v47))
      {
        LODWORD(v25) = 0;
        v26 = 0x7FFFFFFF;
        v27 = 0x7FFFFFFF;
      }

      else
      {
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        if (CGRectIsInfinite(v48))
        {
          LODWORD(v25) = -1;
          v26 = -2147483647;
          v27 = -2147483647;
        }

        else
        {
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          v50 = CGRectInset(v49, 0.000001, 0.000001);
          v51 = CGRectIntegral(v50);
          v26 = v51.origin.x;
          v27 = v51.origin.y;
          v25 = v51.size.height;
        }
      }

      v37 = v26 - v6;
      v38 = (v5 + v7 - (v27 + v25));
      v39 = v8;
      v40 = v7;
      v41 = 1;
      [v20 setClipRectSource:&v37];
      v28 = [v20 histogramSizeForSourceFormat:objc_msgSend(objc_msgSend(a2, "metalTexture"), "pixelFormat")];
      v29 = [objc_msgSend(v13 "commandQueue")];
      v30 = [v29 newBufferWithLength:v28 options:32];
      [v20 encodeToCommandBuffer:v13 sourceTexture:objc_msgSend(a2 histogram:"metalTexture") histogramOffset:{v30, 0}];
      Kernel = CI::AreaHistogram::loadKernel(v29, @"convertMPSHistogram");
      v32 = [v13 computeCommandEncoder];
      [v32 setComputePipelineState:Kernel];
      [v32 setBytes:&v46 length:4 atIndex:0];
      [v32 setBytes:&v45 length:4 atIndex:1];
      [v32 setBytes:&v44 length:4 atIndex:2];
      [v32 setBuffer:v30 offset:0 atIndex:3];
      [v32 setTexture:objc_msgSend(a3 atIndex:{"metalTexture"), 0}];
      v33 = (v46 - 1) | ((v46 - 1) >> 1) | (((v46 - 1) | ((v46 - 1) >> 1)) >> 2) | (((v46 - 1) | ((v46 - 1) >> 1) | (((v46 - 1) | ((v46 - 1) >> 1)) >> 2)) >> 4);
      v34 = (v33 | (v33 >> 8) | ((v33 | (v33 >> 8)) >> 16)) + 1;
      if ([Kernel maxTotalThreadsPerThreadgroup] <= v34)
      {
        v34 = [Kernel maxTotalThreadsPerThreadgroup];
      }

      v37 = v34;
      v38 = vdupq_n_s64(1uLL);
      v35 = (v34 + v46 - 1) / v34;
      v36 = v38;
      [v32 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
      [v32 endEncoding];
      v37 = MEMORY[0x1E69E9820];
      v38.i64[0] = 3221225472;
      v38.i64[1] = ___ZL16mpsAreaHistogramPU32objcproto21CIImageProcessorInput11objc_objectPU33objcproto22CIImageProcessorOutput11objc_object5IRectjjf_block_invoke;
      v39 = &unk_1E75C1D88;
      v40 = v30;
      [v13 addCompletedHandler:&v37];
    }
  }
}

double __38__CIAreaHistogram_MPS__outputImageMPS__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 36);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v1 == -2147483647)
  {
    if (v2 != -2147483647 || v3 != 0xFFFFFFFFLL || v4 != 0xFFFFFFFFLL)
    {
      return v1;
    }

    v8 = MEMORY[0x1E695F040];
  }

  else
  {
    if (v1 != 0x7FFFFFFF || v2 != 0x7FFFFFFF || v3 != 0 || v4 != 0)
    {
      return v1;
    }

    v8 = MEMORY[0x1E695F050];
  }

  return *v8;
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryReduction";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"8";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.5";
  v8[3] = @"inputCount";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082A38;
  v6[1] = &unk_1F1082A48;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1082A58;
  v6[3] = &unk_1F1082A68;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1082A78;
  v6[5] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082A88;
  v4[1] = &unk_1F1082A88;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082A38;
  v4[3] = &unk_1F1082A38;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (IRect)_netExtent
{
  [(CIImage *)self->inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CIVector *)self->inputExtent CGRectValue];
  v34.origin.x = v13;
  v34.origin.y = v14;
  v34.size.width = v15;
  v34.size.height = v16;
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  v27 = CGRectIntersection(v26, v34);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  result = CGRectIsEmpty(v27);
  if (result || (v28.origin.x = x, v28.origin.y = y, v28.size.width = width, v28.size.height = height, v29 = CGRectIntegral(v28), v22 = v29.origin.x, v23 = v29.origin.y, v24 = v29.size.width, v25 = v29.size.height, result = CGRectIsNull(v29), result))
  {
    retstr->var1.var1 = 0;
    *&retstr->var0.var0 = IRectNull;
  }

  else
  {
    v30.origin.x = v22;
    v30.origin.y = v23;
    v30.size.width = v24;
    v30.size.height = v25;
    result = CGRectIsInfinite(v30);
    if (result)
    {
      *&retstr->var0.var0 = IRectInfinite;
      retstr->var1.var1 = 0xFFFFFFFFLL;
    }

    else
    {
      v31.origin.x = v22;
      v31.origin.y = v23;
      v31.size.width = v24;
      v31.size.height = v25;
      v32 = CGRectInset(v31, 0.000001, 0.000001);
      v33 = CGRectIntegral(v32);
      retstr->var0.var0 = v33.origin.x;
      retstr->var0.var1 = v33.origin.y;
      retstr->var1.var0 = v33.size.width;
      retstr->var1.var1 = v33.size.height;
    }
  }

  return result;
}

- (BOOL)_inputsAreOK
{
  if (self->inputImage)
  {
    if ([(NSNumber *)self->inputCount intValue]- 2049 > 0xFFFFF7FF)
    {
      [(CIVector *)self->inputExtent CGRectValue];
      if (!CGRectIsEmpty(v7))
      {
        [(CIAreaHistogram *)self _netExtent];
        return 1;
      }

      v4 = ci_logger_filter();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [CIAreaHistogram _inputsAreOK];
      }
    }

    else
    {
      v3 = ci_logger_filter();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [CIAreaHistogram _inputsAreOK];
      }
    }
  }

  return 0;
}

- (id)outputData
{
  v11 = *MEMORY[0x1E69E9840];
  if (![(CIAreaHistogram *)self _inputsAreOK])
  {
    return 0;
  }

  intValue = [(NSNumber *)self->inputCount intValue];
  if (intValue - 257 <= 0xFFFFFEFF)
  {
    v4 = ci_logger_filter();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CIAreaHistogram outputData];
    }

    return 0;
  }

  v7 = intValue;
  if (intValue <= 0xFF)
  {
    -[CIImage filteredImage:keysAndValues:](self->inputImage, "filteredImage:keysAndValues:", @"CIExposureAdjust", @"inputEV", [MEMORY[0x1E696AD98] numberWithDouble:{log2(vcvtd_n_f64_u32(intValue, 8uLL))}], 0);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  [(CIAreaHistogram *)self _netExtent];
  v5 = [MEMORY[0x1E695DF88] dataWithLength:16 * v7];
  bzero([v5 mutableBytes], objc_msgSend(v5, "length"));
  return v5;
}

- (id)outputImageNonMPS
{
  v37[2] = *MEMORY[0x1E69E9840];
  v34 = 0uLL;
  v35 = 0.0;
  if (self)
  {
    [(CIAreaHistogram *)self _netExtent];
  }

  intValue = [(NSNumber *)self->inputCount intValue];
  [(NSNumber *)self->inputScale doubleValue];
  v5 = v4;
  v6 = *(&v34 + 1);
  v7 = *&v35;
  inputImage = self->inputImage;
  if (intValue >= 256)
  {
    v19 = intValue;
  }

  else
  {
    v9 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_CIAreaHistogramScale];
    [(CIImage *)inputImage extent];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = vcvtd_n_f64_s32(intValue, 8uLL);
    *&v18 = v18;
    v37[0] = inputImage;
    v37[1] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    inputImage = -[CIColorKernel applyWithExtent:arguments:](v9, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2], v11, v13, v15, v17);
    v19 = intValue;
  }

  if (intValue <= 256)
  {
    v20 = 266;
  }

  else
  {
    v20 = 2056;
  }

  XXH64_reset(v33, 0);
  LODWORD(__src) = v34;
  XXH64_update(v33, &__src, 4uLL);
  LODWORD(__src) = DWORD1(v34);
  XXH64_update(v33, &__src, 4uLL);
  __src = *(&v34 + 1);
  XXH64_update(v33, &__src, 8uLL);
  __src = v35;
  XXH64_update(v33, &__src, 8uLL);
  LODWORD(__src) = intValue;
  XXH64_update(v33, &__src, 4uLL);
  v21 = v5 / (v6 * v7);
  __src = v21;
  XXH64_update(v33, &__src, 8uLL);
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CIAreaHistogram_%dbins", intValue];
  v23 = XXH64_digest(v33);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __36__CIAreaHistogram_outputImageNonMPS__block_invoke;
  v30[3] = &__block_descriptor_56_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v31 = v34;
  v32 = v35;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __36__CIAreaHistogram_outputImageNonMPS__block_invoke_2;
  v25[3] = &__block_descriptor_68_e62_v24__0___CIImageProcessorInput__8___CIImageProcessorOutput__16l;
  v29 = intValue;
  v26 = v34;
  v27 = v35;
  v28 = v21;
  return [(CIImage *)inputImage imageWithExtent:v22 processorDescription:v23 argumentDigest:v20 inputFormat:2056 outputFormat:0 options:v30 roiCallback:0.0 processor:0.0, v19, 1.0, v25];
}

double __36__CIAreaHistogram_outputImageNonMPS__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 36);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v1 == -2147483647)
  {
    if (v2 != -2147483647 || v3 != 0xFFFFFFFFLL || v4 != 0xFFFFFFFFLL)
    {
      return v1;
    }

    v8 = MEMORY[0x1E695F040];
  }

  else
  {
    if (v1 != 0x7FFFFFFF || v2 != 0x7FFFFFFF || v3 != 0 || v4 != 0)
    {
      return v1;
    }

    v8 = MEMORY[0x1E695F050];
  }

  return *v8;
}

void __36__CIAreaHistogram_outputImageNonMPS__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v63 = *(a1 + 40);
  v61 = *(a1 + 48);
  v7 = *(a1 + 56);
  v57 = [a2 baseAddress];
  [a2 region];
  x = v70.origin.x;
  y = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;
  if (CGRectIsNull(v70))
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    if (CGRectIsInfinite(v71))
    {
      v12 = -2147483647;
    }

    else
    {
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = width;
      v72.size.height = height;
      v73 = CGRectInset(v72, 0.000001, 0.000001);
      v12 = COERCE_DOUBLE(CGRectIntegral(v73));
    }
  }

  v58 = v12;
  v60 = [a2 bytesPerRow];
  if (v5 <= 256)
  {
    v13 = 256;
  }

  else
  {
    v13 = v5;
  }

  v14 = 4 * v13;
  v68[0] = malloc_type_calloc((4 * v13), 8uLL, 0x100004000313F17uLL);
  v68[1] = &v68[0][v13];
  v15 = (2 * v13);
  v16 = &v68[0][v15];
  v17 = (3 * v13);
  v62 = v68[0];
  v68[2] = v16;
  v68[3] = &v68[0][v17];
  if ([a2 format] == 2056)
  {
    v56 = a3;
    v18 = malloc_type_calloc((4 * v13), 8uLL, 0x100004000313F17uLL);
    histogram[0] = v18;
    histogram[1] = &v18[v13];
    histogram[2] = &v18[v15];
    histogram[3] = &v18[v17];
    v19 = malloc_type_malloc(16 * v63, 0x100004052888210uLL);
    v20 = 8 * (v6 - v58);
    if (v6 <= v58)
    {
      v20 = 0;
    }

    if (v61)
    {
      v21 = 0;
      v22 = v57 + v20;
      v23 = vshlq_u64(vdupq_n_s64(v63), xmmword_19CF22E30);
      if (v14 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v14;
      }

      v59 = v23;
      v25 = v23.i64[0];
      do
      {
        src.data = (v22 + v21 * v60);
        src.height = 1;
        *&src.width = v59;
        dest.data = v19;
        dest.height = 1;
        dest.width = v25;
        dest.rowBytes = 16 * v63;
        vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
        v64.data = v19;
        v64.height = 1;
        v64.width = v63;
        v64.rowBytes = 16 * v63;
        vImageHistogramCalculation_ARGBFFFF(&v64, histogram, v13, 0.0, 1.0, 0x10u);
        v26 = v18;
        v27 = v62;
        v28 = v24;
        do
        {
          v29 = *v26++;
          *v27++ += v29;
          --v28;
        }

        while (v28);
        v21 = (v21 + 1);
      }

      while (v21 != v61);
    }

    free(v18);
    if (v19)
    {
      free(v19);
    }

    a3 = v56;
  }

  else if ([a2 format] == 264)
  {
    v30 = 4 * (v6 - v58);
    if (v6 <= v58)
    {
      v30 = 0;
    }

    histogram[0] = (v57 + v30);
    histogram[1] = v61;
    histogram[2] = v63;
    histogram[3] = v60;
    vImageHistogramCalculation_ARGB8888(histogram, v68, 0x10u);
  }

  else if ([a2 format] == 266)
  {
    v31 = 4 * (v6 - v58);
    if (v6 <= v58)
    {
      v31 = 0;
    }

    histogram[0] = (v57 + v31);
    histogram[1] = v61;
    histogram[2] = v63;
    histogram[3] = v60;
    vImageHistogramCalculation_ARGB8888(histogram, v68, 0x10u);
    v68[2] = v62;
    v68[0] = v16;
  }

  if (v5 <= 255)
  {
    v32 = v5 - 1;
    v33 = v68[0];
    v34 = v68[1];
    v35 = v68[2];
    v36 = v68[3];
    do
    {
      v33[v32] += v33[v5];
      v34[v32] += v34[v5];
      v35[v32] += v35[v5];
      v36[v32] += v36[v5++];
    }

    while (v5 != 256);
  }

  v37 = [a3 baseAddress];
  [a3 region];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [a3 bytesPerRow];
  v45 = CI_FLIP_IMAGE_PROCESSOR();
  if (v43 <= 1.0 || v45 == 0)
  {
    v47 = 0;
  }

  else
  {
    v47 = (v44 * (v43 + -1.0)) >> 1;
  }

  v48 = (v39 + v41);
  v49 = v48 - v39;
  if (v48 > v39)
  {
    v50 = (v37 + 2 * v47);
    v51 = v39;
    do
    {
      v52 = v7 * v68[0][v51];
      *&dest.data = v52;
      v53 = v7 * v68[1][v51];
      *(&dest.data + 1) = v53;
      v54 = v7 * v68[2][v51];
      *&dest.height = v54;
      v55 = v7 * v68[3][v51];
      *(&dest.height + 1) = v55;
      histogram[0] = &dest;
      *&histogram[1] = xmmword_19CF23040;
      histogram[3] = 16;
      src.data = v50;
      *&src.height = xmmword_19CF23040;
      src.rowBytes = 8;
      vImageConvert_PlanarFtoPlanar16F(histogram, &src, 0);
      v50 += 8;
      ++v51;
      --v49;
    }

    while (v49);
  }

  free(v62);
}

- (id)outputImage
{
  if (![(CIAreaHistogram *)self _inputsAreOK])
  {
    return 0;
  }

  if (self)
  {
    [(CIAreaHistogram *)self _netExtent];
  }

  return [+[CIImage imageWithColor:](CIImage imageByCroppingToRect:+[CIColor clearColor]), "imageByCroppingToRect:", 0.0, 0.0, [(NSNumber *)self->inputCount intValue], 1.0];
}

- (void)_inputsAreOK
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_19CC36000, v0, v1, "%{public}@: requires inputCount >= 1 and <= 2048\n", v2, v3, v4, v5, v6);
}

- (void)outputData
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_19CC36000, v0, v1, "%{public}@: requires inputCount >= 1 and <= 256\n", v2, v3, v4, v5, v6);
}

@end