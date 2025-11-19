id ANE_CreateBroadcastedConstantTensor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 descriptor];
  v6 = [v5 dimensionCount];

  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (v6 >= 3)
  {
    v8 = v6 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= v6)
  {
    v10 = 1;
  }

  else
  {
    if (v6 >= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v6;
    }

    v10 = 1;
    do
    {
      v11 = [v4 descriptor];
      v12 = [v11 shape];
      v13 = [v12 objectAtIndexedSubscript:v8];
      [v7 addObject:v13];

      v14 = [v4 descriptor];
      v15 = [v14 shape];
      v16 = [v15 objectAtIndexedSubscript:v8];
      v10 *= [v16 unsignedIntegerValue];

      ++v8;
      --v9;
    }

    while (v9);
  }

  v17 = [v3 data];
  v18 = [v17 bytes];

  v19 = [v3 descriptor];
  v20 = [v19 dataType];

  v21 = [MLCTensorDescriptor elementByteCount:v20];
  v22 = [v3 descriptor];
  v23 = [v22 tensorAllocationSizeInBytes];

  v24 = v23 / v21;
  v25 = v10 / (v23 / v21);
  if (v10 % (v23 / v21))
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateBroadcastedConstantTensor_cold_1();
    }

    v27 = 0;
  }

  else
  {
    v34 = v3;
    v28 = v21 * v10;
    v29 = malloc_type_malloc(v28, 0xFF131C7AuLL);
    v30 = [MLCTensorData dataWithBytesNoCopy:v29 length:v28 freeWhenDone:1];
    if (v24 <= v10)
    {
      v31 = 0;
      do
      {
        memcpy(v29, v18, v23);
        ++v31;
        v29 += v23;
      }

      while (v31 < v25);
    }

    v3 = v34;
    v32 = [v34 label];
    v27 = [_MLCANEPlistBuilder constantTensorWithShape:v7 data:v30 dataType:v20 tensorLabel:v32];
  }

  return v27;
}

unint64_t *hashCombine_6(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 6;
  do
  {
    v11 = v12;
    v12 += 8;
    v9 ^= *v11 + (v9 << 6) + (v9 >> 2) + 2654435769u;
    --v10;
  }

  while (v10);
  *result = v9;
  return result;
}

unint64_t *hashCombine_7(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 3;
  do
  {
    v11 = v12;
    v12 += 8;
    v9 ^= *v11 + (v9 << 6) + (v9 >> 2) + 2654435769u;
    --v10;
  }

  while (v10);
  *result = v9;
  return result;
}

id GPU_CreateSGDOptimizer(void *a1, uint64_t a2, void *a3, float a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [v7 deviceList];
  v10 = [v9 count];

  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12 = v11;
  if (v10)
  {
    v13 = 0;
    v14 = @"sgdMomentumOptimizerUpdate";
    if (a4 == 0.0)
    {
      v14 = @"sgdVanillaOptimizerUpdate";
    }

    v36 = v14;
    v35 = a2;
    v33 = v11;
    v34 = v10;
    do
    {
      v15 = [v7 deviceList];
      v16 = [v15 objectAtIndexedSubscript:v13];

      v17 = [v7 gpuLibrary];
      v18 = [v17 objectAtIndexedSubscript:v13];
      v19 = [v18 newFunctionWithName:v36];

      v20 = [v16 newComputePipelineStateWithFunction:v19 error:0];
      if (v20)
      {
        v21 = v20;
        v22 = [MLCDeviceOptimizer deviceOptimizerWithKernel:v20];
        if (v22)
        {
          [v12 addObject:v22];
        }

        [v22 setGpuOptimizerKernelType:2];
        [v22 setDescriptor:v8];
        [v8 learningRate];
        [v22 setLearningRate:?];
        *&v23 = a4;
        [v22 setMomentumScale:v23];
        [v22 setUsesNesterov:a2];
        [v22 setL2NormBuffer:0];
        if ([v8 gradientClippingType] == 2)
        {
          [v8 customGlobalNorm];
          if (v24 == 0.0)
          {
            v25 = [v7 gpuLibrary];
            v26 = [v25 objectAtIndexedSubscript:v13];
            v27 = [v26 newFunctionWithName:@"compute_l2norm"];

            v28 = [v16 newComputePipelineStateWithFunction:v27 error:0];
            [v22 setComputeL2NormKernel:v28];
            v29 = [v7 gpuLibrary];
            v30 = [v29 objectAtIndexedSubscript:v13];
            v19 = [v30 newFunctionWithName:@"sum_l2norm_values_in_buffer"];

            v12 = v33;
            v10 = v34;
            v21 = [v16 newComputePipelineStateWithFunction:v19 error:0];

            a2 = v35;
            [v22 setSumL2NormKernel:v21];
          }
        }
      }

      ++v13;
    }

    while (v10 != v13);
  }

  v31 = [v12 copy];

  return v31;
}

id GPU_CreateAdamOptimizer(void *a1, uint64_t a2, float a3, float a4, float a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a1;
  v15 = a8;
  v16 = [v14 deviceList];
  v17 = [v16 count];

  v44 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (v17)
  {
    v18 = 0;
    v19 = @"adamOptimizerUpdate";
    if (a2)
    {
      v19 = @"adamWithAmsGradOptimizerUpdate";
    }

    v45 = v19;
    v42 = a2;
    v43 = a7;
    v41 = v15;
    do
    {
      v20 = [v14 deviceList];
      v21 = [v20 objectAtIndexedSubscript:v18];

      v22 = [v14 gpuLibrary];
      v23 = [v22 objectAtIndexedSubscript:v18];
      v24 = [v23 newFunctionWithName:v45];

      v25 = [v21 newComputePipelineStateWithFunction:v24 error:0];
      if (v25)
      {
        v26 = v25;
        v27 = [MLCDeviceOptimizer deviceOptimizerWithKernel:v25];
        if (v27)
        {
          [v44 addObject:v27];
        }

        [v27 setGpuOptimizerKernelType:1];
        [v27 setDescriptor:v15];
        *&v28 = a3;
        [v27 setBeta1:v28];
        *&v29 = a4;
        [v27 setBeta2:v29];
        *&v30 = a5;
        [v27 setEpsilon:v30];
        [v27 setAmsgrad:a2];
        [v27 setDecoupleWeightDecay:a7];
        [v27 setL2NormBuffer:0];
        if ([v15 gradientClippingType] == 2)
        {
          [v15 customGlobalNorm];
          if (v31 == 0.0)
          {
            v32 = [v14 gpuLibrary];
            v33 = [v32 objectAtIndexedSubscript:v18];
            v34 = v17;
            v35 = [v33 newFunctionWithName:@"compute_l2norm"];

            v36 = [v21 newComputePipelineStateWithFunction:v35 error:0];
            [v27 setComputeL2NormKernel:v36];
            v37 = [v14 gpuLibrary];
            v38 = [v37 objectAtIndexedSubscript:v18];
            v24 = [v38 newFunctionWithName:@"sum_l2norm_values_in_buffer"];

            v17 = v34;
            v15 = v41;

            a2 = v42;
            v26 = [v21 newComputePipelineStateWithFunction:v24 error:0];

            a7 = v43;
            [v27 setSumL2NormKernel:v26];
          }
        }
      }

      ++v18;
    }

    while (v17 != v18);
  }

  v39 = [v44 copy];

  return v39;
}

id GPU_CreateRMSPropOptimizer(void *a1, uint64_t a2, void *a3, float a4, float a5, float a6)
{
  v11 = a1;
  v12 = a3;
  v13 = [v11 deviceList];
  v14 = [v13 count];

  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v16 = v15;
  if (v14)
  {
    v17 = 0;
    v41 = a2;
    v39 = v15;
    v40 = v12;
    do
    {
      v18 = [v11 deviceList];
      v19 = [v18 objectAtIndexedSubscript:v17];

      v20 = [v11 gpuLibrary];
      v21 = [v20 objectAtIndexedSubscript:v17];
      v22 = [v21 newFunctionWithName:@"rmsPropOptimizerUpdate"];

      v23 = [v19 newComputePipelineStateWithFunction:v22 error:0];
      if (v23)
      {
        v24 = v23;
        v25 = [MLCDeviceOptimizer deviceOptimizerWithKernel:v23];
        if (v25)
        {
          [v16 addObject:v25];
        }

        [v25 setGpuOptimizerKernelType:3];
        [v25 setDescriptor:v12];
        *&v26 = a6;
        [v25 setEpsilon:v26];
        *&v27 = a5;
        [v25 setAlpha:v27];
        [v25 setCentered:a2];
        *&v28 = a4;
        [v25 setMomentumScale:v28];
        [v25 setL2NormBuffer:0];
        if ([v12 gradientClippingType] == 2)
        {
          [v12 customGlobalNorm];
          if (v29 == 0.0)
          {
            v30 = [v11 gpuLibrary];
            v31 = [v30 objectAtIndexedSubscript:v17];
            v32 = v14;
            v33 = [v31 newFunctionWithName:@"compute_l2norm"];

            v34 = [v19 newComputePipelineStateWithFunction:v33 error:0];
            [v25 setComputeL2NormKernel:v34];
            v35 = [v11 gpuLibrary];
            v36 = [v35 objectAtIndexedSubscript:v17];
            v22 = [v36 newFunctionWithName:@"sum_l2norm_values_in_buffer"];

            v14 = v32;
            v12 = v40;

            v16 = v39;
            v24 = [v19 newComputePipelineStateWithFunction:v22 error:0];

            a2 = v41;
            [v25 setSumL2NormKernel:v24];
          }
        }
      }

      ++v17;
    }

    while (v14 != v17);
  }

  v37 = [v16 copy];

  return v37;
}

BOOL ANE_ConvertFp32ToInt16(float *a1, _WORD *a2)
{
  v7 = 0;
  v4 = [MLCDataHelper convertFp32toFp16:1 fp32Values:a1 fp16Values:&v7];
  if (v4)
  {
    *a2 = v7;
  }

  else
  {
    v5 = +[MLCLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ANE_ConvertFp32ToInt16_cold_1(a1);
    }
  }

  return v4;
}

uint64_t ANE_CompressSparseKernel(void *a1, uint64_t a2, NSObject **a3, void *a4, void *a5, float a6)
{
  v11 = a1;
  *a5 = 0;
  v12 = [v11 bytes];
  v13 = [MLCTensorDescriptor elementByteCount:a2];
  v14 = [v11 length];
  v16 = v14 / v13;
  if (v13 <= v14)
  {
    v17 = 0;
    do
    {
      v15 = fabsf(ANE_GetTensorValueInFloat(v12, a2, v17, v15));
      if (v15 > a6)
      {
        ++*a5;
      }

      ++v17;
    }

    while (v17 < v16);
  }

  if (((v16 - *a5) / v16) < 0.2)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      ANE_CompressSparseKernel_cold_2();
    }

    v19 = 0;
    goto LABEL_30;
  }

  v39 = a3;
  v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc((v16 + 7) >> 3 length:1uLL freeWhenDone:{0x100004077774924uLL), (v16 + 7) >> 3, 1}];
  v20 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_malloc(*a5 * v13 length:0xE7E83DC4uLL) freeWhenDone:{*a5 * v13, 1}];
  v21 = [v18 bytes];
  v22 = [v20 bytes];
  if (v13 > v14)
  {
LABEL_28:
    v35 = v18;
    *v39 = v18;
    v36 = v20;
    *a4 = v20;
    v19 = 1;
    goto LABEL_29;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if (a2 > 5)
    {
      if (a2 != 9)
      {
        if (a2 == 8)
        {
          LOBYTE(v25) = *(v12 + v24);
          v26 = fabsf(v25);
LABEL_22:
          if (v26 > a6)
          {
            *(v22 + v23) = v25;
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        if (a2 != 6)
        {
          break;
        }
      }

      v25 = *(v12 + v24);
      v26 = v25;
      goto LABEL_22;
    }

    if (a2 == 1)
    {
      v34 = *(v12 + 4 * v24);
      if (fabsf(v34) > a6)
      {
        *(v22 + 4 * v23) = v34;
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if (a2 != 3)
    {
      break;
    }

    v27 = *(v12 + 2 * v24);
    _H1 = fabsl(v27);
    __asm { FCVT            S1, H1 }

    if (_S1 > a6)
    {
      *(v22 + 2 * v23) = v27;
LABEL_26:
      ++v23;
      *(v21 + (v24 >> 3)) |= 1 << (v24 & 7);
    }

LABEL_27:
    if (++v24 >= v16)
    {
      goto LABEL_28;
    }
  }

  v38 = +[MLCLog framework];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    ANE_CompressSparseKernel_cold_1();
  }

  v19 = 0;
LABEL_29:

LABEL_30:
  return v19;
}

float ANE_GetTensorValueInFloat(uint64_t a1, int a2, uint64_t a3, float a4)
{
  if (a2 <= 5)
  {
    if (a2 == 1)
    {
      return *(a1 + 4 * a3);
    }

    if (a2 == 3)
    {
      _H0 = *(a1 + 2 * a3);
      __asm { FCVT            S0, H0 }

      return result;
    }

    if (a2 != 4)
    {
      goto LABEL_11;
    }

LABEL_9:
    LOBYTE(a4) = *(a1 + a3);
    return LODWORD(a4);
  }

  switch(a2)
  {
    case 9:
      goto LABEL_9;
    case 8:
      return *(a1 + a3);
    case 6:
      goto LABEL_9;
  }

LABEL_11:
  v5 = +[MLCLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    ANE_GetTensorValueInFloat_cold_1();
  }

  return NAN;
}

uint64_t ANE_CalculateImageSizeForTensor(void *a1)
{
  v1 = a1;
  v2 = [v1 descriptor];
  v3 = [v2 shape];
  v4 = [v3 count] != 1;

  v5 = [v1 descriptor];
  v6 = [v5 shape];
  v7 = [v6 count];

  v8 = 1;
  if (v7 > v4)
  {
    do
    {
      v9 = [v1 descriptor];
      v10 = [v9 shape];
      v11 = [v10 objectAtIndexedSubscript:v4];
      v8 *= [v11 unsignedIntegerValue];

      ++v4;
      v12 = [v1 descriptor];
      v13 = [v12 shape];
      v14 = [v13 count];
    }

    while (v4 < v14);
  }

  v15 = [v1 descriptor];
  v16 = [v15 elementByteCount];

  return v16 * v8;
}

void ANE_GetTensorWidthAndHeightWithOnePrepended(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [v5 descriptor];
  v7 = [v6 dimensionCount];

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v22 = [v5 descriptor];
      v23 = [v22 shape];
      v24 = [v23 objectAtIndexedSubscript:2];
      v11 = [v24 unsignedIntegerValue];

      v12 = [v5 descriptor];
      v13 = [v12 shape];
      v14 = v13;
      v15 = 1;
      goto LABEL_13;
    }

    if (v7 == 4)
    {
      v16 = [v5 descriptor];
      v17 = [v16 shape];
      v18 = [v17 objectAtIndexedSubscript:3];
      v11 = [v18 unsignedIntegerValue];

      v12 = [v5 descriptor];
      v13 = [v12 shape];
      v14 = v13;
      v15 = 2;
      goto LABEL_13;
    }
  }

  else
  {
    if (v7 == 1)
    {
      v12 = [v5 descriptor];
      v14 = [v12 shape];
      v20 = [v14 objectAtIndexedSubscript:0];
      v11 = [v20 unsignedIntegerValue];
      v21 = 1;
LABEL_14:

      *a2 = v11;
      *a3 = v21;
      goto LABEL_15;
    }

    if (v7 == 2)
    {
      v8 = [v5 descriptor];
      v9 = [v8 shape];
      v10 = [v9 objectAtIndexedSubscript:1];
      v11 = [v10 unsignedIntegerValue];

      v12 = [v5 descriptor];
      v13 = [v12 shape];
      v14 = v13;
      v15 = 0;
LABEL_13:
      v20 = [v13 objectAtIndexedSubscript:v15];
      v21 = [v20 unsignedIntegerValue];
      goto LABEL_14;
    }
  }

  v19 = +[MLCLog framework];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    ANE_GetTensorWidthAndHeightWithOnePrepended_cold_1();
  }

LABEL_15:
}

void ANE_GetTensorFeatureChannelsWithOnePrepended(void *a1, uint64_t *a2)
{
  v9 = a1;
  v3 = [v9 descriptor];
  v4 = [v3 dimensionCount];

  v5 = 1;
  if (v4 != 4)
  {
    if (v4 != 3)
    {
      goto LABEL_5;
    }

    v5 = 0;
  }

  v6 = [v9 descriptor];
  v7 = [v6 shape];
  v8 = [v7 objectAtIndexedSubscript:v5];
  v5 = [v8 unsignedIntegerValue];

LABEL_5:
  *a2 = v5;
}

void ANE_GetTensorBatchSizeWithOnePrepended(void *a1, void *a2)
{
  v7 = a1;
  v3 = [v7 descriptor];
  if ([v3 dimensionCount] == 4)
  {
    v4 = [v7 descriptor];
    v5 = [v4 shape];
    v6 = [v5 objectAtIndexedSubscript:0];
    *a2 = [v6 unsignedIntegerValue];
  }

  else
  {
    *a2 = 1;
  }
}

void ANE_GetTensor4DShapeWithOnePrepended(void *a1, void *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v11 = 1;
  v12 = 1;
  v9 = 1;
  v10 = 1;
  v3 = a1;
  ANE_GetTensorWidthAndHeightWithOnePrepended(v3, &v9, &v10);
  ANE_GetTensorFeatureChannelsWithOnePrepended(v3, &v11);
  ANE_GetTensorBatchSizeWithOnePrepended(v3, &v12);

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v13[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v13[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v13[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v13[3] = v7;
  *a2 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];

  v8 = *MEMORY[0x277D85DE8];
}

void ANE_GetDimensionIn4DWithOnePrepended(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (a1 >= 5)
  {
    v4 = +[MLCLog framework];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ANE_GetDimensionIn4DWithOnePrepended_cold_2();
    }

LABEL_11:
    v5 = -1;
    goto LABEL_12;
  }

  if (a2 >= a1)
  {
    v6 = +[MLCLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ANE_GetDimensionIn4DWithOnePrepended_cold_1();
    }

    goto LABEL_11;
  }

  *a3 = a2;
  if (a1 == 4)
  {
    return;
  }

  v5 = a2 - a1 + 4;
LABEL_12:
  *a3 = v5;
}

void ANE_GetTensorWidthAndHeightWithBatchFirst(void *a1, uint64_t *a2, uint64_t *a3)
{
  v15 = a1;
  v5 = [v15 descriptor];
  v6 = [v5 dimensionCount];

  if (v6 == 3)
  {
    v11 = [v15 descriptor];
    v12 = [v11 shape];
    v13 = [v12 objectAtIndexedSubscript:2];
    v10 = [v13 unsignedIntegerValue];
    v14 = 1;
    goto LABEL_5;
  }

  if (v6 == 4)
  {
    v7 = [v15 descriptor];
    v8 = [v7 shape];
    v9 = [v8 objectAtIndexedSubscript:3];
    v10 = [v9 unsignedIntegerValue];

    v11 = [v15 descriptor];
    v12 = [v11 shape];
    v13 = [v12 objectAtIndexedSubscript:2];
    v14 = [v13 unsignedIntegerValue];
LABEL_5:

    goto LABEL_7;
  }

  v14 = 1;
  v10 = 1;
LABEL_7:
  *a2 = v10;
  *a3 = v14;
}

void ANE_GetTensorFeatureChannelsWithBatchFirst(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = [v3 descriptor];
  v5 = [v4 dimensionCount];

  if ((v5 - 1) >= 4)
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ANE_GetTensorFeatureChannelsWithBatchFirst_cold_1();
    }
  }

  else
  {
    v6 = qword_238D45F08[v5 - 1];
    v7 = [v3 descriptor];
    v8 = [v7 shape];
    v9 = [v8 objectAtIndexedSubscript:v6];
    v10 = [v9 unsignedIntegerValue];

    *a2 = v10;
  }
}

void ANE_GetTensorBatchSizeWithBatchFirst(void *a1, void *a2)
{
  v7 = a1;
  v3 = [v7 descriptor];
  if ([v3 dimensionCount] == 1)
  {
    *a2 = 1;
  }

  else
  {
    v4 = [v7 descriptor];
    v5 = [v4 shape];
    v6 = [v5 objectAtIndexedSubscript:0];
    *a2 = [v6 unsignedIntegerValue];
  }
}

void ANE_GetTensor4DShapeWithBatchFirst(void *a1, void *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v11 = 1;
  v12 = 1;
  v9 = 1;
  v10 = 1;
  v3 = a1;
  ANE_GetTensorWidthAndHeightWithBatchFirst(v3, &v9, &v10);
  ANE_GetTensorFeatureChannelsWithBatchFirst(v3, &v11);
  ANE_GetTensorBatchSizeWithBatchFirst(v3, &v12);

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v13[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v13[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v13[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v13[3] = v7;
  *a2 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];

  v8 = *MEMORY[0x277D85DE8];
}

__CFString *ANE_GetANECIRDimension(unint64_t a1)
{
  if (a1 < 4)
  {
    return off_278A69618[a1];
  }

  v2 = +[MLCLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ANE_GetANECIRDimension_cold_1();
  }

  return 0;
}

__CFString *ANE_GetANECIRDataTypeWithMLCDataType(int a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 9 && ((0x1ADu >> v1))
  {
    return off_278A69638[v1];
  }

  v3 = +[MLCLog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ANE_GetANECIRDataTypeWithMLCDataType_cold_1();
  }

  return 0;
}

id ANE_FindUnitWithType(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"Type", v14}];
        if ([v10 isEqualToString:v3])
        {
          v11 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

BOOL ANE_ValidateInterleave(unint64_t a1, unint64_t a2, int a3)
{
  if (a1)
  {
    v4 = 0;
    while (kMLCANEIOInterleaves[v4] != a1)
    {
      if (++v4 == 5)
      {
        if (!a3)
        {
          return 0;
        }

        v5 = +[MLCLog framework];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          ANE_ValidateInterleave_cold_1();
        }

        goto LABEL_25;
      }
    }

    if (a2)
    {
      if (a1 <= a2)
      {
        result = a2 % a1 == 0;
        if (a2 % a1)
        {
          v7 = a3 == 0;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          return result;
        }

        v5 = +[MLCLog framework];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          ANE_ValidateInterleave_cold_2();
        }
      }

      else
      {
        if (!a3)
        {
          return 0;
        }

        v5 = +[MLCLog framework];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          ANE_ValidateInterleave_cold_3();
        }
      }
    }

    else
    {
      if (!a3)
      {
        return 0;
      }

      v5 = +[MLCLog framework];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateInterleave_cold_4();
      }
    }

    goto LABEL_25;
  }

  if (a3)
  {
    v5 = +[MLCLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ANE_ValidateInterleave_cold_5();
    }

LABEL_25:
  }

  return 0;
}

unint64_t ANE_GetANEElementByteCount(uint64_t a1)
{
  if (a1 <= 9)
  {
    if (((1 << a1) & 0x358) != 0)
    {
      v1 = a1;
LABEL_4:

      return [MLCTensorDescriptor elementByteCount:v1];
    }

    if (a1 == 1)
    {
      v1 = 3;
      goto LABEL_4;
    }
  }

  v3 = +[MLCLog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ANE_GetANEElementByteCount_cold_1();
  }

  return 0;
}

unint64_t ANE_CalculateRowStrideForTensor(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 descriptor];
  v12 = 1;
  v10 = 1;
  ANE_GetTensorWidthAndHeightWithOnePrepended(v3, &v12, &v11);
  ANE_GetTensorFeatureChannelsWithOnePrepended(v3, &v10);

  ANEElementByteCount = ANE_GetANEElementByteCount([v4 dataType]);
  if (!ANEElementByteCount)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ANE_CalculateRowStrideForTensor_cold_2();
    }

    goto LABEL_8;
  }

  v6 = ANEElementByteCount;
  if (!ANE_ValidateInterleave(a2, v10, 1))
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ANE_CalculateRowStrideForTensor_cold_1();
    }

LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = ((v6 * a2 * v12 + 63) / 0x40) << 6;
LABEL_9:

  return v7;
}

uint64_t ANE_CalculatePlaneStrideForTensor(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = ANE_CalculateRowStrideForTensor(v3, a2);
  if (v4)
  {
    v5 = v4;
    v9 = 1;
    ANE_GetTensorWidthAndHeightWithOnePrepended(v3, &v10, &v9);
    v6 = v9 * v5;
  }

  else
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ANE_CalculatePlaneStrideForTensor_cold_1();
    }

    v6 = 0;
  }

  return v6;
}

unint64_t ANE_CalculatePlaneCountForTensor(void *a1, unint64_t a2)
{
  v10 = 0;
  ANE_GetTensor4DShapeWithOnePrepended(a1, &v10);
  v3 = v10;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 unsignedIntegerValue];

  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [v6 unsignedIntegerValue];
  if (ANE_ValidateInterleave(a2, v7, 1))
  {
    return (a2 + v7 - 1) / a2 * v5;
  }

  v9 = +[MLCLog framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    ANE_CalculatePlaneCountForTensor_cold_1();
  }

  return 0;
}

uint64_t ANE_CalculateIOInterleave(void *a1)
{
  v1 = a1;
  v2 = [v1 descriptor];
  v15 = 1;
  v13 = 1;
  ANE_GetTensorWidthAndHeightWithOnePrepended(v1, &v15, &v14);
  ANE_GetTensorFeatureChannelsWithOnePrepended(v1, &v13);
  ANEElementByteCount = ANE_GetANEElementByteCount([v2 dataType]);
  if (ANEElementByteCount)
  {
    v4 = v15 * ANEElementByteCount;
    v5 = 1;
    if (v15 * ANEElementByteCount % 0x40)
    {
      v6 = ANE_CalculateRowStrideForTensor(v1, 1uLL) - v4;
      v7 = 4u;
      v8 = v13;
      do
      {
        v9 = kMLCANEIOInterleaves[v7];
        if (ANE_ValidateInterleave(v9, v8, 0))
        {
          v10 = ANE_CalculateRowStrideForTensor(v1, v9);
          if (v10 - v4 * v9 < v6)
          {
            v6 = v10 - v4 * v9;
            v5 = v9;
          }
        }

        --v7;
      }

      while (v7 * 8);
    }
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ANE_CalculateIOInterleave_cold_1();
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ANE_ConvertInputTensor(void *a1, void *a2, char *a3, uint64_t a4, char *a5, unint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = [v11 descriptor];
  v14 = [v13 tensorAllocationSizeInBytes];

  if (v14 == a4)
  {
    if ([v12 count])
    {
      v15 = [v11 descriptor];
      v92[0] = 0;
      ANE_GetTensor4DShapeWithOnePrepended(v11, v92);
      v16 = v92[0];
      v17 = [v16 objectAtIndexedSubscript:0];
      v69 = [v17 unsignedIntegerValue];

      v18 = [v16 objectAtIndexedSubscript:1];
      v70 = [v18 unsignedIntegerValue];

      v19 = [v16 objectAtIndexedSubscript:2];
      v81 = [v19 unsignedIntegerValue];

      v20 = [v16 objectAtIndexedSubscript:3];
      v91 = [v20 unsignedIntegerValue];

      v21 = [v15 dimensionCount];
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v70 = a6;
        }

        else
        {
          v69 = a6;
          if (v21 != 4)
          {
            goto LABEL_14;
          }
        }
      }

      else if (v21 != 1)
      {
        v81 = a6;
        if (v21 != 2)
        {
LABEL_14:
          v23 = +[MLCLog framework];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            ANE_ConvertInputTensor_cold_4(v15);
          }

LABEL_73:
          v22 = 0;
LABEL_84:

          goto LABEL_85;
        }
      }

      __src = a3;
      v85 = a5;
      v24 = [MLCTensorDescriptor elementByteCount:[v15 dataType]];
      v25 = [v15 dataType];
      v26 = [v12 objectForKeyedSubscript:@"Interleave"];
      v90 = [v26 unsignedIntegerValue];

      v27 = v25;
      v28 = [v12 objectForKeyedSubscript:@"RowStride"];
      v87 = [v28 unsignedIntegerValue];

      v29 = [v12 objectForKeyedSubscript:@"PlaneStride"];
      v86 = [v29 unsignedIntegerValue];

      v23 = [v12 objectForKeyedSubscript:@"Type"];
      v30 = ANE_ANECDataTypeToMLCDataType(v23);
      v31 = v30;
      if ((v27 & 0xFFFFFFFD) == 1 && v30 == 3 || v27 <= 9 && ((1 << v27) & 0x250) != 0 && (v30 | 2) == 6)
      {
        if ((v27 | 2) == 6)
        {
          v27 = 9;
        }

        if ((v30 | 2) == 6)
        {
          v31 = 9;
        }
      }

      else
      {
        if (v27 != 8 || v30 != 8)
        {
          v54 = +[MLCLog framework];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            ANE_ConvertInputTensor_cold_2();
          }

          goto LABEL_73;
        }

        v27 = 8;
      }

      v32 = [MLCTensorDescriptor elementByteCount:v31];
      v33 = v90;
      if (!v90)
      {
        v38 = +[MLCLog framework];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          ANE_ConvertInputTensor_cold_3();
        }

        goto LABEL_73;
      }

      v34 = v32;
      v80 = v87 / v32;
      if (v90 == 1)
      {
        v35 = v91;
        v36 = v81 * v91 * v70 * v69;
        v37 = v36 * v24;
        if (v31 == v27)
        {
          if (v91 == v80)
          {
            memcpy(v85, a3, v36 * v24);
          }

          else if (v37)
          {
            v67 = v23;
            v55 = 0;
            v56 = v24 * v91;
            v57 = v85;
            do
            {
              memcpy(v57, &a3[v55], v56);
              v55 += v56;
              v57 += v87;
            }

            while (v55 < v37);
            v22 = 1;
            v23 = v67;
            goto LABEL_84;
          }

          goto LABEL_83;
        }

        if (v91 == v80)
        {
          [MLCDataHelper convertFp32toFp16:"convertFp32toFp16:fp32Values:fp16Values:" fp32Values:? fp16Values:?];
          goto LABEL_83;
        }

        if (!v37)
        {
          goto LABEL_83;
        }

        v65 = v16;
        v66 = v23;
        v58 = 0;
        v59 = v24 * v91;
        v60 = v85;
        do
        {
          [MLCDataHelper convertFp32toFp16:v35 fp32Values:&a3[v58] fp16Values:v60];
          v35 = v91;
          v58 += v59;
          v60 += v87;
        }

        while (v58 < v37);
        v22 = 1;
      }

      else
      {
        v76 = v86 / v32;
        v39 = a3;
        v40 = v91;
        if (v31 == v27)
        {
          if (!v69)
          {
LABEL_83:
            v22 = 1;
            goto LABEL_84;
          }

          v65 = v16;
          v66 = v23;
          v62 = v15;
          v63 = v12;
          v64 = v11;
          v41 = v24 * v91 * v81;
          for (i = 0; i != v69; ++i)
          {
            __srca = v39;
            if (v33 <= v70)
            {
              v77 = v39;
              v78 = 0;
              v73 = i * v70 / v33;
              do
              {
                if (v81)
                {
                  v84 = 0;
                  v82 = v77;
                  do
                  {
                    if (v40)
                    {
                      v42 = 0;
                      v43 = v82;
                      do
                      {
                        v44 = 0;
                        v45 = v84 * v80 + v42 * v33;
                        v88 = v43;
                        v46 = v33;
                        do
                        {
                          memcpy(&v85[(v45 + v44++ + (v73 + v78) * v76) * v34], v43, v24);
                          v43 += v41;
                          --v46;
                        }

                        while (v46);
                        ++v42;
                        v33 = v90;
                        v43 = &v88[v24];
                        v40 = v91;
                      }

                      while (v42 != v91);
                    }

                    v82 += v24 * v91;
                    ++v84;
                  }

                  while (v84 != v81);
                }

                v77 += v41 * v90;
                ++v78;
              }

              while (v78 < v70 / v90);
            }

            v39 = &__srca[v41 * v70];
          }
        }

        else
        {
          if (!v69)
          {
            goto LABEL_83;
          }

          v65 = v16;
          v66 = v23;
          v62 = v15;
          v63 = v12;
          v64 = v11;
          for (j = 0; j != v69; ++j)
          {
            if (v33 <= v70)
            {
              v83 = 0;
              v79 = __src;
              v75 = j * v70 / v33;
              do
              {
                if (v81)
                {
                  v47 = 0;
                  v89 = v79;
                  do
                  {
                    if (v40)
                    {
                      v48 = 0;
                      v49 = v89;
                      do
                      {
                        v50 = 0;
                        v51 = &v85[2 * (v75 + v83) * v76 + 2 * v47 * v80 + 2 * v48 * v33];
                        v52 = v49;
                        v53 = v33;
                        do
                        {
                          [MLCDataHelper convertFp32toFp16:1 fp32Values:v52 fp16Values:v51 + 2 * v50++, v62, v63, v64];
                          v52 += 4 * v91 * v81;
                          --v53;
                        }

                        while (v53);
                        ++v48;
                        v49 += 4;
                        v33 = v90;
                        v40 = v91;
                      }

                      while (v48 != v91);
                    }

                    ++v47;
                    v89 += 4 * v91;
                  }

                  while (v47 != v81);
                }

                v79 += 4 * v91 * v81 * v90;
                ++v83;
              }

              while (v83 < v70 / v90);
            }

            __src += 4 * v91 * v81 * v70;
          }
        }

        v22 = 1;
        v12 = v63;
        v11 = v64;
        v15 = v62;
      }

      v16 = v65;
      v23 = v66;
      goto LABEL_84;
    }

    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ANE_ConvertInputTensor_cold_5();
    }
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ANE_ConvertInputTensor_cold_1(v11);
    }
  }

  v22 = 0;
LABEL_85:

  return v22;
}

uint64_t ANE_ANECDataTypeToMLCDataType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UInt8"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Int8"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"Float16"])
  {
    v2 = 3;
  }

  else
  {
    v3 = +[MLCLog framework];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ANE_ANECDataTypeToMLCDataType_cold_1();
    }

    v2 = 0;
  }

  return v2;
}

uint64_t ANE_ReadOutputTensor(void *a1, void *a2, uint64_t a3, char *a4, unint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [v9 deviceMemory];
  v12 = [v11 count];

  if (v12)
  {
    if ([v9 deviceIndex] == a3)
    {
      v13 = [v9 deviceMemory];
      v14 = [v13 objectAtIndexedSubscript:a3];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        if ([v10 count])
        {
          __dst = a4;
          v16 = [v10 objectForKeyedSubscript:@"Interleave"];
          v91 = [v16 unsignedIntegerValue];

          v17 = [v10 objectForKeyedSubscript:@"RowStride"];
          v89 = [v17 unsignedIntegerValue];

          v18 = [v10 objectForKeyedSubscript:@"PlaneStride"];
          v85 = [v18 unsignedIntegerValue];

          v19 = [v10 objectForKeyedSubscript:@"Type"];
          v20 = ANE_ANECDataTypeToMLCDataType(v19);
          v21 = [MLCTensorDescriptor elementByteCount:?];
          v22 = [v9 descriptor];
          v93[0] = 0;
          ANE_GetTensor4DShapeWithOnePrepended(v9, v93);
          v23 = v93[0];
          v24 = [v23 objectAtIndexedSubscript:0];
          v70 = [v24 unsignedIntegerValue];

          v25 = [v23 objectAtIndexedSubscript:1];
          v71 = [v25 unsignedIntegerValue];

          v26 = [v23 objectAtIndexedSubscript:2];
          v82 = [v26 unsignedIntegerValue];

          v27 = [v23 objectAtIndexedSubscript:3];
          v92 = [v27 unsignedIntegerValue];

          v28 = [v22 dimensionCount];
          v68 = v23;
          if (v28 > 2)
          {
            if (v28 == 3)
            {
              v71 = a5;
            }

            else
            {
              v70 = a5;
              if (v28 != 4)
              {
                goto LABEL_21;
              }
            }
          }

          else if (v28 != 1)
          {
            v82 = a5;
            if (v28 != 2)
            {
LABEL_21:
              v31 = +[MLCLog framework];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                ANE_ReadOutputTensor_cold_6(v22);
              }

LABEL_68:

              v29 = 0;
LABEL_95:

              goto LABEL_18;
            }
          }

          v87 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [v22 dataType]);
          v32 = [v22 dataType];
          if (v20 == 3 && (v32 & 0xFFFFFFFD) == 1)
          {
            v67 = v22;
            v33 = 3;
          }

          else
          {
            if (v32 > 9 || ((1 << v32) & 0x250) == 0 || (v20 | 2) != 6)
            {
              if (v20 != 8 || v32 != 8)
              {
                v31 = +[MLCLog framework];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  ANE_ReadOutputTensor_cold_3();
                }

                goto LABEL_68;
              }

              v67 = v22;
              v83 = 8;
              v34 = 8;
LABEL_37:
              v35 = [v9 deviceMemory];
              v36 = [v35 objectAtIndexedSubscript:a3];
              v37 = [v36 ioSurfaceObject];
              v38 = [v37 ioSurface];

              if (v38)
              {
                IOSurfaceLock(v38, 0, 0);
                BaseAddress = IOSurfaceGetBaseAddress(v38);
                v40 = v91;
                if (v91)
                {
                  v41 = BaseAddress;
                  v81 = v89 / v21;
                  if (v91 == 1)
                  {
                    v42 = v92;
                    v43 = v82 * v92 * v71 * v70;
                    v44 = v43 * v87;
                    if (v83 == v34)
                    {
                      if (v81 == v92)
                      {
                        memcpy(__dst, BaseAddress, v43 * v87);
                      }

                      else if (v44)
                      {
                        v60 = 0;
                        v61 = v87 * v92;
                        do
                        {
                          memcpy(&__dst[v60], v41, v61);
                          v60 += v61;
                          v41 += v89;
                        }

                        while (v60 < v44);
                      }
                    }

                    else if (v81 == v92)
                    {
                      [MLCDataHelper convertFp16toFp32:"convertFp16toFp32:fp16Values:fp32Values:" fp16Values:? fp32Values:?];
                    }

                    else if (v44)
                    {
                      v62 = 0;
                      do
                      {
                        [MLCDataHelper convertFp16toFp32:v42 fp16Values:v41 fp32Values:&__dst[v62]];
                        v42 = v92;
                        v62 += v87 * v92;
                        v41 += v89;
                      }

                      while (v62 < v44);
                    }

                    IOSurfaceUnlock(v38, 0, 0);
                    v29 = 1;
                  }

                  else
                  {
                    buffer = v38;
                    v64 = v19;
                    v65 = v10;
                    v66 = v9;
                    v76 = v85 / v21;
                    v47 = v92;
                    if (v83 == v34)
                    {
                      if (v70)
                      {
                        for (i = 0; i != v70; ++i)
                        {
                          if (v40 <= v71)
                          {
                            v77 = __dst;
                            v78 = 0;
                            v73 = i * v71 / v40;
                            do
                            {
                              if (v82)
                              {
                                v86 = 0;
                                v84 = v77;
                                do
                                {
                                  if (v47)
                                  {
                                    v48 = 0;
                                    v49 = v84;
                                    do
                                    {
                                      v50 = 0;
                                      v51 = v86 * v81 + v48 * v40;
                                      v52 = v49;
                                      v53 = v40;
                                      do
                                      {
                                        memcpy(v52, &v41[(v51 + v50++ + (v73 + v78) * v76) * v21], v21);
                                        v52 += v87 * v92 * v82;
                                        --v53;
                                      }

                                      while (v53);
                                      ++v48;
                                      v49 += v87;
                                      v40 = v91;
                                      v47 = v92;
                                    }

                                    while (v48 != v92);
                                  }

                                  v84 += v87 * v92;
                                  ++v86;
                                }

                                while (v86 != v82);
                              }

                              v77 += v87 * v92 * v82 * v91;
                              ++v78;
                            }

                            while (v78 < v71 / v91);
                          }

                          __dst += v87 * v92 * v82 * v71;
                        }
                      }
                    }

                    else if (v70)
                    {
                      for (j = 0; j != v70; ++j)
                      {
                        if (v40 <= v71)
                        {
                          v79 = __dst;
                          v80 = 0;
                          v75 = j * v71 / v40;
                          do
                          {
                            if (v82)
                            {
                              v90 = 0;
                              v88 = v79;
                              do
                              {
                                if (v47)
                                {
                                  v54 = 0;
                                  v55 = v88;
                                  do
                                  {
                                    v56 = 0;
                                    v57 = &v41[2 * (v75 + v80) * v76 + 2 * v90 * v81 + 2 * v54 * v40];
                                    v58 = v55;
                                    v59 = v40;
                                    do
                                    {
                                      [MLCDataHelper convertFp16toFp32:1 fp16Values:v57 + 2 * v56++ fp32Values:v58, buffer];
                                      v58 += 4 * v92 * v82;
                                      --v59;
                                    }

                                    while (v59);
                                    ++v54;
                                    v55 += 4;
                                    v40 = v91;
                                    v47 = v92;
                                  }

                                  while (v54 != v92);
                                }

                                v88 += 4 * v92;
                                ++v90;
                              }

                              while (v90 != v82);
                            }

                            v79 += 4 * v92 * v82 * v91;
                            ++v80;
                          }

                          while (v80 < v71 / v91);
                        }

                        __dst += 4 * v92 * v82 * v71;
                      }
                    }

                    IOSurfaceUnlock(buffer, 0, 0);
                    v29 = 1;
                    v10 = v65;
                    v9 = v66;
                    v19 = v64;
                  }

                  goto LABEL_94;
                }

                v46 = +[MLCLog framework];
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  ANE_ReadOutputTensor_cold_4();
                }

                IOSurfaceUnlock(v38, 0, 0);
              }

              else
              {
                v45 = +[MLCLog framework];
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  ANE_ReadOutputTensor_cold_5();
                }
              }

              v29 = 0;
LABEL_94:
              v22 = v67;
              goto LABEL_95;
            }

            v67 = v22;
            v33 = 9;
          }

          v83 = v33;
          if ((v32 | 2) == 6)
          {
            v34 = 9;
          }

          else
          {
            v34 = v32;
          }

          goto LABEL_37;
        }

        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          ANE_ReadOutputTensor_cold_7();
        }
      }

      else
      {
        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          ANE_ReadOutputTensor_cold_2();
        }
      }
    }

    else
    {
      v19 = +[MLCLog framework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ANE_ReadOutputTensor_cold_1(v9);
      }
    }
  }

  else
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ANE_ReadOutputTensor_cold_8();
    }
  }

  v29 = 0;
LABEL_18:

  return v29;
}

id ANE_GetDeviceMemoryData(void *a1)
{
  v1 = a1;
  v2 = [v1 deviceMemory];
  v3 = [v1 deviceIndex];

  v4 = [v2 objectAtIndexedSubscript:v3];

  return v4;
}

uint64_t ANE_CanProgramANECConstantTensorUnit(void *a1)
{
  v1 = a1;
  v2 = [v1 computeFlags];
  v4 = 1;
  ANE_GetTensorBatchSizeWithOnePrepended(v1, &v4);

  return (v4 == 1) & (v2 >> 1);
}

BOOL ANE_IsPaddingLayerAndNotCompiledForANE(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = (objc_opt_isKindOfClass() & 1) != 0 && !ANE_IsAneCompiledLayer(v1);

  return v2;
}

BOOL ANE_IsAneCompiledLayer(void *a1)
{
  v1 = a1;
  v2 = [v1 device];
  if (v2)
  {
    v3 = [v1 device];
    v4 = [v3 type] == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ANE_ApplyPaddingSizes(void *a1, void *a2)
{
  v23 = a2;
  v3 = a1;
  v4 = [v23 objectForKeyedSubscript:@"Params"];
  v5 = [v4 mutableCopy];

  v22 = [v3 paddingTop];
  v6 = [v5 objectForKeyedSubscript:@"PadTop"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v3 paddingBottom];
  v9 = [v5 objectForKeyedSubscript:@"PadBot"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v3 paddingLeft];
  v12 = [v5 objectForKeyedSubscript:@"PadLeft"];
  v13 = [v12 unsignedIntegerValue];

  v14 = [v3 paddingRight];
  v15 = [v5 objectForKeyedSubscript:@"PadRight"];
  v16 = [v15 unsignedIntegerValue];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + v22];
  [v5 setObject:v17 forKeyedSubscript:@"PadTop"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10 + v8];
  [v5 setObject:v18 forKeyedSubscript:@"PadBot"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13 + v11];
  [v5 setObject:v19 forKeyedSubscript:@"PadLeft"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16 + v14];
  [v5 setObject:v20 forKeyedSubscript:@"PadRight"];

  v21 = [v5 objectForKeyedSubscript:@"PaddingMode"];
  if ([v21 isEqualToString:@"Negative"])
  {
    [v5 setObject:@"Zero" forKeyedSubscript:@"PaddingMode"];
  }

  [v23 setObject:v5 forKeyedSubscript:@"Params"];
}

id ANE_ComputeLiveOutputs(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = v1;
  v23 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v23)
  {
    v22 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v3);
        }

        v24 = v4;
        v5 = *(*(&v35 + 1) + 8 * v4);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v6 = [v5 resultTensors];
        v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v32;
          v25 = v6;
          v26 = v5;
          do
          {
            v10 = 0;
            do
            {
              if (*v32 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v31 + 1) + 8 * v10);
              v12 = [v11 childLayers];
              if (![v12 count] || (objc_msgSend(v5, "isDebuggingEnabled") & 1) != 0)
              {
LABEL_24:

LABEL_25:
                [v2 addObject:v11];
                goto LABEL_26;
              }

              v13 = [v11 computeFlags];

              if (v13)
              {
                goto LABEL_25;
              }

              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v12 = [v11 childLayers];
              v14 = [v12 countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v28;
                while (2)
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v28 != v16)
                    {
                      objc_enumerationMutation(v12);
                    }

                    if (![v3 containsObject:*(*(&v27 + 1) + 8 * i)])
                    {
                      v6 = v25;
                      v5 = v26;
                      goto LABEL_24;
                    }
                  }

                  v15 = [v12 countByEnumeratingWithState:&v27 objects:v39 count:16];
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }

                v6 = v25;
                v5 = v26;
              }

              else
              {
              }

LABEL_26:
              ++v10;
            }

            while (v10 != v8);
            v18 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
            v8 = v18;
          }

          while (v18);
        }

        v4 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v23);
  }

  v19 = [v2 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id ANE_ComputeLiveInputs(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = v1;
  v27 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v27)
  {
    v4 = *v34;
    v26 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v28 = v5;
        v6 = *(*(&v33 + 1) + 8 * v5);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v7 = [v6 sourceTensors];
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              v13 = [v12 parentLayers];
              v14 = [v13 count];

              if (v14 >= 2)
              {
                v23 = +[MLCLog framework];
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  ANE_ComputeLiveInputs_cold_1(v12);
                }

                v22 = [MEMORY[0x277CBEB98] set];

                goto LABEL_24;
              }

              v15 = [v12 parentLayers];
              v16 = [v15 count];

              if (v16)
              {
                v17 = [v12 parentLayers];
                v18 = [v17 objectAtIndexedSubscript:0];
                v19 = [v3 containsObject:v18];

                if (v19)
                {
                  continue;
                }
              }

              v20 = v12;
              if (v20)
              {
                v21 = v20;
                [v2 addObject:v20];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v5 = v28 + 1;
        v4 = v26;
      }

      while (v28 + 1 != v27);
      v27 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v27);
  }

  v22 = [v2 copy];
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t ANE_WriteANEModelFiles(void *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  LODWORD(a2) = arc4random();
  v5 = MEMORY[0x277CCACA8];
  v6 = +[MLCStrings tempDirectoryForANEModels];
  v7 = [v5 stringWithFormat:@"%@%@-%lu/", v6, @"net", a2];

  v8 = [v7 stringByAppendingPathComponent:@"net.plist"];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v38 = 0;
  if ([v9 fileExistsAtPath:v7 isDirectory:&v38])
  {
    if ((v38 & 1) == 0)
    {
      v10 = +[MLCLog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ANE_WriteANEModelFiles_cold_2(v7, &v38);
      }

LABEL_23:

      ANE_DeleteANEModelDirectory(v7);
LABEL_24:
      v25 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v37 = 0;
    v11 = [v9 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v37];
    v12 = v37;
    v13 = v12;
    if ((v11 & 1) == 0)
    {
      v26 = +[MLCLog framework];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        ANE_WriteANEModelFiles_cold_1();
      }

      goto LABEL_24;
    }
  }

  if (([v3 writeToFile:v8 atomically:1] & 1) == 0)
  {
    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ANE_WriteANEModelFiles_cold_3();
    }

    goto LABEL_23;
  }

  v30 = v9;
  v31 = v8;
  v32 = v3;
  [v4 allKeys];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v36 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v4 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
        v20 = [v19 allKeys];
        v21 = [v20 firstObject];

        v22 = [v7 stringByAppendingPathComponent:v21];
        v23 = [v19 objectForKeyedSubscript:v21];
        if (([v23 writeToFile:v22 atomically:1] & 1) == 0)
        {
          v27 = +[MLCLog framework];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            ANE_WriteANEModelFiles_cold_4();
          }

          ANE_DeleteANEModelDirectory(v7);
          v25 = 0;
          v24 = v14;
          goto LABEL_28;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v24 = +[MLCLog framework];
  v25 = 1;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v40 = "ANE_WriteANEModelFiles";
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&dword_238C1D000, v24, OS_LOG_TYPE_INFO, "%s: wrote ANE Model to directory = %@", buf, 0x16u);
  }

LABEL_28:
  v8 = v31;
  v3 = v32;
  v9 = v30;

LABEL_29:
  v28 = *MEMORY[0x277D85DE8];
  return v25;
}

void ANE_DeleteANEModelDirectory(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v6 = 0;
    v3 = [v2 removeItemAtPath:v1 error:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[MLCLog framework];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ANE_DeleteANEModelDirectory_cold_1();
      }
    }
  }
}

id CPU_CreateOptimizerDeviceDataForTensor(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[MLCTensorOptimizerDeviceData optimizerDeviceData];
  v7 = [v4 descriptor];
  v8 = [v7 shape];
  v9 = [v4 descriptor];
  v10 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v8, 0, [v9 dataType], 0);
  [v6 setSourceBNNSDesc:v10];

  v11 = [v4 descriptor];
  v12 = [v11 shape];
  v13 = [v4 descriptor];
  v14 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v12, 0, [v13 dataType], 0);
  [v6 setGradientBNNSDesc:v14];

  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v6 setMomentumData:v15];

  for (i = 0; i != 3; ++i)
  {
    v17 = [v4 descriptor];
    v18 = [v17 shape];
    v19 = [v4 descriptor];
    v20 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v18, 0, [v19 dataType], 0);
    v21 = [v6 momentumData];
    [v21 setObject:v20 atIndexedSubscript:i];
  }

  v22 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v6 setMomentumDataBytes:v22];

  if ([v5 count])
  {
    v23 = 0;
    do
    {
      v24 = MEMORY[0x277CBEA90];
      v25 = [v5 objectAtIndexedSubscript:v23];
      v26 = [v25 bytes];
      v27 = [v5 objectAtIndexedSubscript:v23];
      v28 = [v24 dataWithBytesNoCopy:v26 length:objc_msgSend(v27 freeWhenDone:{"length"), 0}];
      v29 = [v6 momentumDataBytes];
      [v29 setObject:v28 atIndexedSubscript:v23];

      v30 = [v6 momentumData];
      v31 = [v30 objectAtIndexedSubscript:v23];

      v32 = [v31 bytes];
      v33 = [v5 objectAtIndexedSubscript:v23];
      *(v32 + 136) = [v33 bytes];

      ++v23;
    }

    while (v23 < [v5 count]);
  }

  v34 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v34 addObject:v6];
  v35 = [v34 copy];

  return v35;
}

void OUTLINED_FUNCTION_0_9(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void *saveOrRestoreLSTMWeightsAndAccumulatorsHelper(uint64_t a1, uint64_t a2, void *__src, size_t __n, int a5)
{
  v5 = (a1 + 4 * a2);
  if (a5)
  {
    v6 = __src;
  }

  else
  {
    v6 = v5;
    v5 = __src;
  }

  return memcpy(v6, v5, __n);
}

unint64_t *hashCombine_8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 14;
  do
  {
    v11 = v12;
    v12 += 8;
    v9 ^= *v11 + (v9 << 6) + (v9 >> 2) + 2654435769u;
    --v10;
  }

  while (v10);
  *result = v9;
  return result;
}

id CPU_CreateSGDOptimizer(float a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v8 = malloc_type_calloc(0x30uLL, 1uLL, 0xA20E8993uLL);
  v8[7] = 0;
  if ([v6 appliesGradientClipping])
  {
    v9 = [v6 gradientClippingType];
    if (v9 >= 3)
    {
      v21 = +[MLCLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        CPU_CreateSGDOptimizer_cold_1(v6);
      }

      goto LABEL_14;
    }

    v8[7] = v9 + 1;
  }

  [v6 gradientClipMin];
  v8[8] = v10;
  [v6 gradientClipMax];
  v8[9] = v11;
  [v6 maximumClippingNorm];
  v8[10] = v12;
  [v6 customGlobalNorm];
  v8[11] = v13;
  *(v8 + 16) = a3;
  v14 = [v6 regularizationType];
  if (v14 >= 3)
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CPU_CreateSGDOptimizer_cold_2(v6);
    }

LABEL_14:

    v20 = [v7 copy];
    goto LABEL_15;
  }

  v8[5] = v14;
  [v6 learningRate];
  *v8 = v15;
  *(v8 + 1) = a1;
  [v6 gradientRescale];
  v8[2] = v16;
  [v6 regularizationScale];
  v8[3] = v17;
  if (a3)
  {
    v8[6] = 1;
  }

  v18 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:48];
  v19 = [MLCDeviceOptimizer deviceOptimizerWithFunction:7 optimizerAlgFields:v18 accumulatorBufferCount:1];
  if (v19)
  {
    [v7 addObject:v19];
  }

  free(v8);
  v20 = [v7 copy];

LABEL_15:

  return v20;
}

id CPU_CreateAdamOptimizer(float a1, float a2, float a3, uint64_t a4, int a5, unint64_t a6, int a7, void *a8)
{
  v14 = a8;
  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v16 = malloc_type_calloc(0x34uLL, 1uLL, 0xF51119C6uLL);
  v16[8] = 0.0;
  if ([v14 appliesGradientClipping])
  {
    v17 = [v14 gradientClippingType];
    if (v17 >= 3)
    {
      v33 = +[MLCLog framework];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        CPU_CreateAdamOptimizer_cold_1(v14);
      }

      goto LABEL_24;
    }

    *(v16 + 8) = v17 + 1;
  }

  [v14 gradientClipMin];
  *(v16 + 9) = v18;
  [v14 gradientClipMax];
  *(v16 + 10) = v19;
  [v14 maximumClippingNorm];
  *(v16 + 11) = v20;
  [v14 customGlobalNorm];
  *(v16 + 12) = v21;
  v22 = [v14 regularizationType];
  if (v22 >= 3)
  {
    v33 = +[MLCLog framework];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      CPU_CreateAdamOptimizer_cold_2(v14);
    }

LABEL_24:

    v32 = [v15 copy];
    goto LABEL_25;
  }

  *(v16 + 7) = v22;
  [v14 learningRate];
  *v16 = v23;
  v16[1] = a1;
  v16[2] = a2;
  v16[3] = a6;
  v16[4] = a3;
  [v14 gradientRescale];
  *(v16 + 5) = v24;
  [v14 regularizationScale];
  *(v16 + 6) = v25;
  v26 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:52];
  if (a5)
  {
    v27 = 12;
  }

  else
  {
    v27 = 10;
  }

  if (a5)
  {
    v28 = 11;
  }

  else
  {
    v28 = 8;
  }

  if (a5)
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  if (a7)
  {
    v30 = v27;
  }

  else
  {
    v30 = v28;
  }

  v31 = [MLCDeviceOptimizer deviceOptimizerWithFunction:v30 optimizerAlgFields:v26 accumulatorBufferCount:v29];
  if (v31)
  {
    [v15 addObject:v31];
  }

  free(v16);
  v32 = [v15 copy];

LABEL_25:

  return v32;
}

id CPU_CreateRMSPropOptimizer(float a1, float a2, float a3, uint64_t a4, int a5, void *a6)
{
  v10 = a6;
  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12 = malloc_type_calloc(0x34uLL, 1uLL, 0x70B32C03uLL);
  v12[8] = 0.0;
  if ([v10 appliesGradientClipping])
  {
    v13 = [v10 gradientClippingType];
    if (v13 >= 3)
    {
      v27 = +[MLCLog framework];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        CPU_CreateRMSPropOptimizer_cold_1(v10);
      }

      goto LABEL_17;
    }

    *(v12 + 8) = v13 + 1;
  }

  [v10 gradientClipMin];
  *(v12 + 9) = v14;
  [v10 gradientClipMax];
  *(v12 + 10) = v15;
  [v10 maximumClippingNorm];
  *(v12 + 11) = v16;
  [v10 customGlobalNorm];
  *(v12 + 12) = v17;
  v18 = [v10 regularizationType];
  if (v18 >= 3)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      CPU_CreateRMSPropOptimizer_cold_2(v10);
    }

LABEL_17:

    v26 = [v11 copy];
    goto LABEL_18;
  }

  *(v12 + 7) = v18;
  [v10 learningRate];
  *v12 = v19;
  v12[1] = a2;
  v12[2] = a3;
  *(v12 + 12) = a5;
  v12[4] = a1;
  [v10 gradientRescale];
  *(v12 + 5) = v20;
  [v10 regularizationScale];
  *(v12 + 6) = v21;
  v22 = 1;
  if (a5)
  {
    v22 = 2;
  }

  if (a1 == 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  v24 = [MEMORY[0x277CBEA90] dataWithBytes:v12 length:52];
  v25 = [MLCDeviceOptimizer deviceOptimizerWithFunction:9 optimizerAlgFields:v24 accumulatorBufferCount:v23];
  if (v25)
  {
    [v11 addObject:v25];
  }

  free(v12);
  v26 = [v11 copy];

LABEL_18:

  return v26;
}

id CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(void *a1, void *a2, int a3, int a4)
{
  memset(v7, 0, sizeof(v7));
  v4 = CPU_BuildBNNSNDArrayDescriptor(v7, a1, 0, a2, a3, 1, a4);
  v5 = 0;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:176];
  }

  return v5;
}

uint64_t CPU_BuildBNNSNormalizationParams(unsigned int a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, float a8, float a9)
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  if (v20)
  {
    v22 = [v20 data];
    v23 = [v20 descriptor];
    v24 = CPU_BuildBNNSNDArrayDescriptor(a2 + 352, v17, 0, v22, [v23 dataType], 1, a1 == 2);

    if (!v24)
    {
      goto LABEL_11;
    }
  }

  if (v21)
  {
    v25 = [v21 data];
    v26 = [v21 descriptor];
    v27 = CPU_BuildBNNSNDArrayDescriptor(a2 + 528, v17, 0, v25, [v26 dataType], 1, a1 == 2);

    if (!v27)
    {
      goto LABEL_11;
    }
  }

  if (a1 > 1)
  {
    goto LABEL_10;
  }

  if (v18)
  {
    v28 = [v18 data];
    v29 = [v18 descriptor];
    v30 = CPU_BuildBNNSNDArrayDescriptor(a2 + 704, v17, 0, v28, [v29 dataType], 1, 0);

    if (!v30)
    {
      goto LABEL_11;
    }
  }

  if (v19 && ([v19 data], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "descriptor"), v32 = objc_claimAutoreleasedReturnValue(), v33 = CPU_BuildBNNSNDArrayDescriptor(a2 + 880, v17, 0, v31, objc_msgSend(v32, "dataType"), 1, 0), v32, v31, !v33))
  {
LABEL_11:
    v34 = 0;
  }

  else
  {
LABEL_10:
    *(a2 + 1056) = a9;
    *(a2 + 1060) = a8;
    v34 = 1;
  }

  return v34;
}

uint64_t CPU_BuildBNNSNormalizationInputOutputParams(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 objectAtIndexedSubscript:0];
  v10 = [v9 descriptor];
  v11 = [v10 shape];
  v12 = [v11 mutableCopy];

  v13 = [v7 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v15 = [v14 stride];
  v16 = [v15 mutableCopy];

  v17 = [v12 count];
  if (a4 == 2)
  {
    if (v17 != 4)
    {
      v18 = 0;
      do
      {
        [v12 insertObject:&unk_284BA5E88 atIndex:1];
        v19 = [v16 objectAtIndexedSubscript:0];
        [v16 insertObject:v19 atIndex:1];

        ++v18;
      }

      while (v18 < 4 - [v12 count]);
    }
  }

  else if (v17 == 2)
  {
    [v12 insertObject:&unk_284BA5E88 atIndex:2];
    v20 = [v16 objectAtIndexedSubscript:1];
    [v16 insertObject:v20 atIndex:2];
  }

  v21 = [v7 objectAtIndexedSubscript:0];
  v22 = [v21 descriptor];
  v23 = CPU_BuildBNNSNDArrayDescriptor(a1, v12, v16, 0, [v22 dataType], 1, 0);

  if (v23)
  {
    v24 = [v8 descriptor];
    v25 = [v24 shape];
    v26 = [v25 mutableCopy];

    v27 = [v8 descriptor];
    v28 = [v27 stride];
    v29 = [v28 mutableCopy];

    v30 = [v26 count];
    if (a4 == 2)
    {
      if (v30 != 4)
      {
        v31 = 0;
        do
        {
          [v26 insertObject:&unk_284BA5E88 atIndex:1];
          v32 = [v29 objectAtIndexedSubscript:0];
          [v29 insertObject:v32 atIndex:1];

          ++v31;
        }

        while (v31 < 4 - [v26 count]);
      }
    }

    else if (v30 == 2)
    {
      [v26 insertObject:&unk_284BA5E88 atIndex:2];
      v34 = [v29 objectAtIndexedSubscript:1];
      [v29 insertObject:v34 atIndex:2];
    }

    v35 = [v8 descriptor];
    v33 = CPU_BuildBNNSNDArrayDescriptor(a1 + 176, v26, v29, 0, [v35 dataType], 1, 0);
  }

  else
  {
    v33 = 0;
    v26 = v12;
    v29 = v16;
  }

  return v33;
}

id CPU_CreateNormalizationLayer(int a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, float a9, float a10, void *a11)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v67 = a6;
  v68 = a7;
  v69 = a8;
  v23 = a11;
  v66 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v72, 0x468uLL);
  v24 = [v22 mutableCopy];
  if (a1 == 2 && [v22 count] != 3)
  {
    v25 = 0;
    do
    {
      [v24 insertObject:&unk_284BA5E88 atIndex:0];
      ++v25;
    }

    while (v25 < 3 - [v22 count]);
  }

  v26 = v67;
  v27 = v68;
  v28 = v69;
  if (!CPU_BuildBNNSNormalizationParams(a1, v72, v24, v67, v68, v69, v23, a9, a10))
  {
    goto LABEL_27;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v29 = 2;
      if (!v21)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (a1 == 1)
    {
      v29 = 20;
      if (!v21)
      {
        goto LABEL_23;
      }

LABEL_21:
      if (setBNNSActivation(v73, v21))
      {
        v29 = dword_238D46050[a1];
        goto LABEL_23;
      }

LABEL_27:
      v30 = MEMORY[0x277CBEBF8];
      goto LABEL_46;
    }

    goto LABEL_15;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v73[6] = a5;
      v29 = 33;
      if (!v21)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_15:
    v65 = +[MLCLog framework];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      CPU_CreateNormalizationLayer_cold_1(a1, v65);
    }

    v30 = MEMORY[0x277CBEBF8];
    goto LABEL_45;
  }

  v73[7] = 3 - [v22 count];
  v29 = 28;
  if (v21)
  {
    goto LABEL_21;
  }

LABEL_23:
  v57 = v29;
  v65 = [MEMORY[0x277CBEA90] dataWithBytes:v72 length:1128];
  memset(v71, 0, sizeof(v71));
  memset(v70, 0, sizeof(v70));
  v64 = [MEMORY[0x277CBEA90] dataWithBytes:v71 length:176];
  v63 = [MEMORY[0x277CBEA90] dataWithBytes:v70 length:176];
  if ([v24 count])
  {
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = [v24 objectAtIndexedSubscript:v31];
      v32 *= [v33 unsignedIntegerValue];

      ++v31;
    }

    while (v31 < [v24 count]);
  }

  else
  {
    v32 = 1;
  }

  v59 = v20;
  v34 = [MEMORY[0x277CBEBF8] mutableCopy];
  v58 = v21;
  if (v69)
  {
    v35 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v32 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v32, 1}];
    v36 = [v69 descriptor];
    v62 = v35;
    v61 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v24, v35, [v36 dataType], a1 == 2);

    for (i = 0; i != 3; ++i)
    {
      v38 = [v28 descriptor];
      v39 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v24, 0, [v38 dataType], a1 == 2);
      [v34 setObject:v39 atIndexedSubscript:i];

      v28 = v69;
    }
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v40 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (v23)
  {
    v41 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v32 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v32, 1}];
    v42 = [v23 descriptor];
    v60 = v41;
    v56 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v24, v41, [v42 dataType], a1 == 2);

    for (j = 0; j != 3; ++j)
    {
      v44 = [v23 descriptor];
      v45 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v24, 0, [v44 dataType], a1 == 2);
      [v40 setObject:v45 atIndexedSubscript:j];
    }

    v46 = v56;
  }

  else
  {
    v46 = 0;
    v60 = 0;
  }

  v75[0] = v64;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
  v74 = v63;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
  v49 = v61;
  v50 = [MLCCPUDeviceOps deviceOpsWithType:v57 params:v65 inDeltaData:v47 outDeltaData:v48 betaDeltaData:v61 gammaDeltaData:v46 betaMomentumData:v34 gammaMomentumData:v40];

  if (v50)
  {
    [v66 addObject:v50];
    [v50 setBetaDeltaData:v61];
    [v50 setGammaDeltaData:v46];
    [v50 setBetaDeltaDataBytes:v62];
    [v50 setGammaDeltaDataBytes:v60];
    v51 = MEMORY[0x277CBEBF8];
    v52 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v50 setBetaMomentumDataBytes:v52];

    v53 = [v51 mutableCopy];
    [v50 setGammaMomentumDataBytes:v53];

    if (v67)
    {
      [v50 setMovingMean:?];
    }

    v49 = v61;
    if (v68)
    {
      [v50 setMovingVariance:v68];
    }
  }

  v30 = [v66 copy];

  v21 = v58;
  v20 = v59;
  v26 = v67;
  v27 = v68;
  v28 = v69;
LABEL_45:

LABEL_46:
  v54 = *MEMORY[0x277D85DE8];

  return v30;
}

void *CPU_CompileNormalizationLayer(unsigned int a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 objectAtIndexedSubscript:0];
  v10 = [v9 params];
  v11 = [v10 bytes];
  v12 = 0;
  if (CPU_BuildBNNSNormalizationInputOutputParams(v11, v7, v8, a1))
  {
    memset(&v15, 0, sizeof(v15));
    v15.flags = 1;
    if (a1 > 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = BNNSFilterCreateLayerNormalization((a1 + 2), v11, &v15);
      if (v12)
      {
        v13 = [v7 objectAtIndexedSubscript:{0, *&v15.flags, *&v15.alloc_memory}];
        [v9 setSourceStride:CPU_SetBatchStride(v13)];

        [v9 setResultStride:CPU_SetBatchStride(v8)];
      }
    }
  }

  return v12;
}

uint64_t CPU_SetOptimizerDataForNormalizationLayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 objectAtIndexedSubscript:0];
  if (v5)
  {
    v8 = [v5 optimizerData];
    if ([v8 count])
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x277CBEA90];
        v11 = [v8 objectAtIndexedSubscript:v9];
        v12 = [v11 bytes];
        v13 = [v8 objectAtIndexedSubscript:v9];
        v14 = [v10 dataWithBytesNoCopy:v12 length:objc_msgSend(v13 freeWhenDone:{"length"), 0}];
        v15 = [v7 betaMomentumDataBytes];
        [v15 setObject:v14 atIndexedSubscript:v9];

        v16 = [v7 betaMomentumData];
        v17 = [v16 objectAtIndexedSubscript:v9];

        v18 = [v17 bytes];
        v19 = [v8 objectAtIndexedSubscript:v9];
        *(v18 + 136) = [v19 bytes];

        ++v9;
      }

      while (v9 < [v8 count]);
    }
  }

  if (v6)
  {
    v20 = [v6 optimizerData];
    if ([v20 count])
    {
      v21 = 0;
      do
      {
        v22 = MEMORY[0x277CBEA90];
        v23 = [v20 objectAtIndexedSubscript:v21];
        v24 = [v23 bytes];
        v25 = [v20 objectAtIndexedSubscript:v21];
        v26 = [v22 dataWithBytesNoCopy:v24 length:objc_msgSend(v25 freeWhenDone:{"length"), 0}];
        v27 = [v7 gammaMomentumDataBytes];
        [v27 setObject:v26 atIndexedSubscript:v21];

        v28 = [v7 gammaMomentumData];
        v29 = [v28 objectAtIndexedSubscript:v21];

        v30 = [v29 bytes];
        v31 = [v20 objectAtIndexedSubscript:v21];
        *(v30 + 136) = [v31 bytes];

        ++v21;
      }

      while (v21 < [v20 count]);
    }
  }

  return 1;
}

id ANE_BuildTransposeParams(void *a1)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v4 = [v1 count];
  if (v4 == 4)
  {
    v20 = [v1 objectAtIndexedSubscript:0];
    [v3 setObject:v20 atIndexedSubscript:0];

    v21 = [v1 objectAtIndexedSubscript:1];
    [v3 setObject:v21 atIndexedSubscript:1];

    v22 = [v1 objectAtIndexedSubscript:2];
    [v3 setObject:v22 atIndexedSubscript:2];

    v18 = [v1 objectAtIndexedSubscript:3];
    [v3 setObject:v18 atIndexedSubscript:3];
  }

  else
  {
    v5 = 4 - v2;
    if (v4 == 3)
    {
      [v3 setObject:&unk_284BA5EA0 atIndexedSubscript:0];
      v12 = MEMORY[0x277CCABB0];
      v13 = [v1 objectAtIndexedSubscript:0];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "unsignedIntegerValue") + v5}];
      [v3 setObject:v14 atIndexedSubscript:1];

      v15 = MEMORY[0x277CCABB0];
      v16 = [v1 objectAtIndexedSubscript:1];
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + v5}];
      [v3 setObject:v17 atIndexedSubscript:2];

      v9 = MEMORY[0x277CCABB0];
      v10 = v1;
      v11 = 2;
    }

    else
    {
      if (v4 != 2)
      {
        v23 = +[MLCLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          ANE_BuildTransposeParams_cold_2(v1, v23);
        }

        v33 = 0;
        goto LABEL_23;
      }

      [v3 setObject:&unk_284BA5EA0 atIndexedSubscript:0];
      [v3 setObject:&unk_284BA5EB8 atIndexedSubscript:1];
      v6 = MEMORY[0x277CCABB0];
      v7 = [v1 objectAtIndexedSubscript:0];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "unsignedIntegerValue") + v5}];
      [v3 setObject:v8 atIndexedSubscript:2];

      v9 = MEMORY[0x277CCABB0];
      v10 = v1;
      v11 = 1;
    }

    v18 = [v10 objectAtIndexedSubscript:v11];
    v19 = [v9 numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue") + v5}];
    [v3 setObject:v19 atIndexedSubscript:3];
  }

  v23 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (![v3 count])
  {
LABEL_15:
    v28 = [MEMORY[0x277CBEC10] mutableCopy];
    [v28 setObject:@"Transpose" forKeyedSubscript:kMLCANENetUnitType[0]];
    v32 = [v23 copy];
    [v28 setObject:v32 forKeyedSubscript:@"TransposeDimensions"];

    v33 = [v28 copy];
    goto LABEL_22;
  }

  v24 = 0;
  while (1)
  {
    v25 = [v3 objectAtIndexedSubscript:v24];
    v26 = [v25 unsignedIntegerValue];

    if (v24 != v26)
    {
      break;
    }

LABEL_14:
    if (++v24 >= [v3 count])
    {
      goto LABEL_15;
    }
  }

  v27 = [v3 objectAtIndexedSubscript:v24];
  v28 = ANE_GetANECIRDimension([v27 unsignedIntegerValue]);

  v29 = ANE_GetANECIRDimension(v24);
  v30 = v29;
  if (v28 && v29)
  {
    v37[0] = @"TransposeSourceDimension";
    v37[1] = @"TransposeDestinationDimension";
    v38[0] = v28;
    v38[1] = v29;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v23 addObject:v31];

    goto LABEL_14;
  }

  v34 = +[MLCLog framework];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    ANE_BuildTransposeParams_cold_1(v34);
  }

  v33 = 0;
LABEL_22:

LABEL_23:
  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

id ANE_CreateTransposeLayer(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  v3 = ANE_BuildTransposeParams(v1);
  if (v3)
  {
    v4 = [_MLCANETransposeParameters transposeUnitParametersWith:v3];
    v5 = [MLCANEDeviceOps deviceOpsWithType:28 params:v4];
    if (v5)
    {
      [v2 addObject:v5];
    }

    v6 = v2;
  }

  else
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateTransposeLayer_cold_1();
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

id ANE_CompileTransposeLayer(void *a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1;
  v7 = [a3 parentLayers];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v6 objectAtIndexedSubscript:0];

  v10 = [v9 params];
  v11 = [v10 transposeParams];

  v12 = [_MLCANEPlistBuilder createUnitWithLayer:v8 unitParams:v11];
  v13 = ANE_ValidateTransposeUnit(v5, v12, 1);

  if (v13)
  {
    v18[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileTransposeLayer_cold_1();
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_238D10238(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 104), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

unint64_t *hashCombine_9(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = &a9;
  v9 = *result;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = v13;
    v13 += 8;
    v9 ^= *v12 + (v9 << 6) + (v9 >> 2) + 2654435769u;
    v10 = 0;
  }

  while ((v11 & 1) != 0);
  *result = v9;
  return result;
}

id ANE_CreateFullyConnectedLayer()
{
  v0 = [MEMORY[0x277CBEBF8] mutableCopy];
  v1 = [MLCANEDeviceOps deviceOpsWithType:7 params:MEMORY[0x277CBEC10]];
  if (v1)
  {
    [v0 addObject:v1];
  }

  return v0;
}

id ANE_CompileFullyConnectedLayer(void *a1, void *a2, void *a3)
{
  v114[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1 objectAtIndexedSubscript:0];
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  v9 = [v6 parentLayers];
  v10 = [v9 objectAtIndexedSubscript:0];

  v11 = [v5 objectAtIndexedSubscript:0];
  v12 = [v11 descriptor];
  v110 = v10;
  v107 = v11;
  if ([v12 dimensionCount] == 4)
  {
    v13 = [v11 descriptor];
    v14 = [v13 shape];
    v15 = [v14 objectAtIndexedSubscript:2];
    if ([v15 unsignedIntegerValue] == 1)
    {
      [v11 descriptor];
      v16 = v104 = v8;
      v17 = [v16 shape];
      v18 = [v17 objectAtIndexedSubscript:3];
      v102 = v7;
      v19 = [v18 unsignedIntegerValue];

      v10 = v110;
      v8 = v104;

      v20 = v19 == 1;
      v7 = v102;
      if (!v20)
      {
        goto LABEL_12;
      }

      v21 = v110;
      v22 = [v21 descriptor];
      v23 = [v21 weights];
      v24 = [v21 biases];
      v25 = [MEMORY[0x277CBEC10] mutableCopy];
      if (ANE_BuildConvolutionParams(v25, v22, v23))
      {
        if (v24)
        {
          v26 = [_MLCANEPlistBuilder buildBiasParamsWithBiases:v24];
          if (!v26)
          {
            v26 = +[MLCLog framework];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              ANE_CompileFullyConnectedLayer_cold_6();
            }

LABEL_73:
            v55 = 0;
LABEL_81:

            v8 = v104;
            if (v55)
            {
              goto LABEL_63;
            }

            v96 = +[MLCLog framework];
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              ANE_CompileFullyConnectedLayer_cold_8();
            }

            goto LABEL_67;
          }
        }

        else
        {
          v26 = 0;
        }

        v93 = ANE_CreateUnitsWithConvolutionLayer(v21, v25, v26);
        v55 = v93;
        if (v93)
        {
          v94 = v93;
        }

        else
        {
          v95 = +[MLCLog framework];
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            ANE_CompileFullyConnectedLayer_cold_7();
          }

          v7 = v102;
        }

        goto LABEL_81;
      }

      v26 = +[MLCLog framework];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileFullyConnectedLayer_cold_5();
      }

      goto LABEL_73;
    }
  }

LABEL_12:
  v27 = v10;
  v109 = v7;
  v106 = [MEMORY[0x277CBEBF8] mutableCopy];
  v28 = v27;
  v29 = [v28 descriptor];
  v30 = [v28 sourceTensors];
  v108 = [v30 objectAtIndexedSubscript:0];

  v111 = [v28 weights];
  v31 = [v111 descriptor];
  v32 = [v31 dataType];

  v33 = [v28 biases];
  v34 = v33;
  if (v33)
  {
    v35 = [v33 descriptor];
    v36 = v8;
    v37 = v28;
    v38 = v34;
    v39 = v7;
    v40 = v6;
    v41 = v5;
    v42 = v29;
    v43 = [v35 dataType];

    v20 = v43 == v32;
    v29 = v42;
    v5 = v41;
    v6 = v40;
    v7 = v39;
    v34 = v38;
    v28 = v37;
    v8 = v36;
    if (!v20)
    {
      v53 = +[MLCLog framework];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileFullyConnectedLayer_cold_1(v34, v32, v53);
      }

      v55 = 0;
      goto LABEL_62;
    }
  }

  v103 = v7;
  v105 = v8;
  v99 = v6;
  v100 = v5;
  v44 = [v29 inputFeatureChannelCount];
  v98 = v29;
  v45 = [v29 outputFeatureChannelCount];
  if (v34)
  {
    v46 = v44 + 1;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 * v45 * [MLCTensorDescriptor elementByteCount:v32];
  v48 = malloc_type_malloc(v47, 0x2FEC0D5uLL);
  v101 = [MLCTensorData dataWithBytesNoCopy:v48 length:v47 freeWhenDone:1];
  v49 = [v111 data];
  v50 = [v49 bytes];

  if (v34)
  {
    v51 = [v34 data];
    v52 = [v51 bytes];

    if (!v46)
    {
      goto LABEL_50;
    }

    goto LABEL_25;
  }

  v52 = 0;
  if (v46)
  {
LABEL_25:
    v56 = 0;
    v57 = 0;
    if (v45 <= 1)
    {
      v58 = 1;
    }

    else
    {
      v58 = v45;
    }

    v59 = v50;
    v60 = v50;
    while (!v45)
    {
LABEL_49:
      ++v57;
      ++v60;
      v59 += 4;
      v50 += 2;
      v56 += v45;
      if (v57 == v46)
      {
        goto LABEL_50;
      }
    }

    if ((v32 - 1) > 8 || ((0x1A5u >> (v32 - 1)) & 1) == 0)
    {
      v97 = +[MLCLog framework];
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileFullyConnectedLayer_cold_2();
      }

      v55 = 0;
      v6 = v99;
      v5 = v100;
      v7 = v103;
      goto LABEL_61;
    }

    v61 = v56;
    v62 = v50;
    v63 = v59;
    v64 = v60;
    v65 = v58;
    v66 = v52;
    v67 = v52;
    v68 = v52;
    while (1)
    {
      if (v32 > 5)
      {
        goto LABEL_40;
      }

      if (v32 == 1)
      {
        if (v57 == v44)
        {
          v71 = v67;
        }

        else
        {
          v71 = v63;
        }

        v48[v61] = *v71;
        goto LABEL_48;
      }

      if (v32 == 3)
      {
        if (v57 == v44)
        {
          v69 = v66;
        }

        else
        {
          v69 = v62;
        }

        *(v48 + v61) = *v69;
      }

      else
      {
LABEL_40:
        if (v57 == v44)
        {
          v70 = v68;
        }

        else
        {
          v70 = v64;
        }

        *(v48 + v61) = *v70;
      }

LABEL_48:
      ++v68;
      ++v67;
      ++v66;
      v64 += v44;
      v63 += v44;
      v62 += v44;
      ++v61;
      if (!--v65)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
  v114[0] = v72;
  v114[1] = &unk_284BA5F00;
  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
  v114[2] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:3];

  v75 = [v111 label];
  v97 = v74;
  v76 = [_MLCANEPlistBuilder constantTensorWithShape:v74 data:v101 dataType:v32 tensorLabel:v75];

  v77 = [v109 constantTensors];
  [v77 addObject:v76];

  v78 = [MEMORY[0x277CBEC10] mutableCopy];
  [v78 setObject:@"MatrixMultiplication" forKeyedSubscript:kMLCANENetUnitType[0]];
  if (v34)
  {
    LODWORD(v113[0]) = 1065353216;
    v112 = 0;
    ANE_ConvertFp32ToInt16(v113, &v112);
    v79 = [MEMORY[0x277CCABB0] numberWithShort:v112];
    [v78 setObject:v79 forKeyedSubscript:@"Bias"];
  }

  v80 = [_MLCANEPlistBuilder createUnitWithLayer:v28 unitParams:v78];
  v81 = [v80 objectForKeyedSubscript:@"Bottom"];
  v82 = [v76 label];
  [v81 addObject:v82];

  v83 = [v80 objectForKeyedSubscript:@"InputType"];
  v84 = [v76 descriptor];
  v85 = ANE_GetANECIRDataTypeWithMLCDataType([v84 dataType]);

  [v83 addObject:v85];
  v113[0] = v108;
  v113[1] = v76;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
  v87 = ANE_ValidateMatrixMultUnit(v86, v80, 1);

  if (v87)
  {
    [v106 addObject:v80];
    v55 = [v106 copy];
  }

  else
  {
    v88 = +[MLCLog framework];
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileFullyConnectedLayer_cold_3();
    }

    v55 = 0;
  }

  v7 = v103;

  v6 = v99;
  v5 = v100;
LABEL_61:
  v8 = v105;
  v29 = v98;
  v53 = v101;

LABEL_62:
  if (v55)
  {
LABEL_63:
    [v8 addObjectsFromArray:v55];

    v89 = [v8 copy];
    goto LABEL_68;
  }

  v90 = +[MLCLog framework];
  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
  {
    ANE_CompileFullyConnectedLayer_cold_4();
  }

LABEL_67:
  v89 = 0;
LABEL_68:

  v91 = *MEMORY[0x277D85DE8];

  return v89;
}

void ANE_BuildNeuronParams_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v1, v2, "%s: failed to convert FP32 value=%f to int16", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_BuildNeuronParams_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_BuildNeuronParams_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v1, v2, "%s: failed to convert float value=%f to int16", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_BuildNeuronParams_cold_10(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 activationType];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: failed to build the parameters for activation type=%d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_BuildNeuronParams_cold_13(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 activationType];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: unsupported activation type=%d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_BuildLinearParams_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v1, v2, "%s: failed to convert FP32 value=%f to int16", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_BuildLinearParams_cold_3(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 a];
  v4[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_238C1D000, a2, OS_LOG_TYPE_DEBUG, "%s: descriptor value a=%.10f is too small(< 1e-4f)", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithNeuronLayer_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: unit=%@ of layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithNeuronLayer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithNeuronLayer_cold_6()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: failed to create the ANEC IR units of layer=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithNeuronLayer_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithNeuronLayer_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithNeuronLayer_cold_16()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsOfLinear_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsOfLinear_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: unit=%@ of layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsOfLinear_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: neuron unit=%@ failed validation", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void GPU_CreateLossLayer_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 reductionType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown reduction type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void GPU_CreateLossLayer_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 lossType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown loss type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void CPU_BNNSDataTypeSizeInBytes_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: Unsupported data type", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void CPU_BNNSDataType_cold_1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "CPU_BNNSDataType";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: Unsupported sources data type (%d)", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void CPU_BuildBNNSNDArrayLastMajorDescriptor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: Unsupported shape dimensions", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void CPU_BuildBNNSNDArrayDescriptor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: Unsupported shape dimensions", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void CPU_BuildPermuteBNNSNDArrayDescriptor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: Unsupported shape dimensions", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void CPU_BuildBNNSNDArrayDescriptorRowMajor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: Unsupported shape dimensions", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void CPU_BuildBNNSNDArrayDescriptorColMajor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: Unsupported shape dimensions", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void convertDataLayout_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: tensor layout conversion with mismatching source and result tensor", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void convertDataLayout_cold_2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: unsupported format for converting", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void convertDataLayout_cold_3()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: tensorDesc not matching data in layout conversion", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void convertDataLayout_cold_4()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: tensor layout conversion without allocation", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void convertNCHWtoTNC_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [a1 descriptor];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v4, v5, "%@: height should be 1 for LSTM input tensor of shape NCHW", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleLayer_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ANE_CreateUpsampleLayer";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: only nearest sample mode is supported", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleLayer_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: scaleFactorX=%f is not a power-of-2 value and not supported", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleLayer_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: scaleFactorY=%f is not a power-of-2 value and not supported", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CompileUpsampleLayer_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: failed to create upsample units for layer=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CompileUpsampleLayer_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: failed to create two reshape units for layer=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CompileUpsampleLayer_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: failed to create the upsample units of layer=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CompileUpsampleLayer_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: unsupported source tensor shape count=%lu", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleUnits_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: failed to create the upsample units each that performs 2x2 upsampling of layer=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleUnits_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: failed to create the upsample units each that performs 2x1 upsampling of layer=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleUnits_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: failed to create the upsample units each that performs 1x2 upsampling of layer=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleUnits_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: failed to create the upsample unit that performs 1x1 upsampling of layer=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleUnits_cold_5(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "ANE_CreateUpsampleUnits";
  v6 = 1024;
  v7 = a2;
  v8 = 2112;
  v9 = a1;
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: unsupported data type=%d for tensor=%@", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUpsampleUnitsWithParams_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_238C1D000, v2, OS_LOG_TYPE_ERROR, "%s: the unit=%@ of layer=%@ failed validation", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CreateSliceLayer_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ANE_CreateSliceLayer";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: only stride of 1 is supported", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CreateSliceLayer_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ANE_CreateSliceLayer";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: failed to get ANEC IR dimension", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CreateSliceLayer_cold_3(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  v4[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: the number of dimensions=%lu is unsupported", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSliceLayer_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "ANE_CompileSliceLayer";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: unit=%@ of layer=%@ failed validation", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSliceLayer_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: unsupported dimension=%lu", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CreateComparisonLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileComparisonLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileComparisonLayer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileComparisonLayer_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileComparisonLayer_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileComparisonLayer_cold_5()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: the unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileComparisonLayer_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileComparisonLayer_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileComparisonLayer_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ConnectBroadcastUnits_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileReshapeLayer_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: layer=%@ failed validation", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CompileReshapeLayer_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_238C1D000, v2, OS_LOG_TYPE_ERROR, "%s: unsupported shape=%@ for result tensor=%@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void GPU_CreateOptimizerDeviceDataForTensor_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "GPU_CreateOptimizerDeviceDataForTensor";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: momentum creation failed", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void GPU_CreateOptimizerDeviceVectorDataForTensor_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "GPU_CreateOptimizerDeviceVectorDataForTensor";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: momentum creation failed", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_BuildArithmeticParams_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateArithmeticLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_4()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: unit=%@ of layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_10()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: the neuron unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_11()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: the elementwise unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithArithmeticOpeartion_cold_16()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileArithmeticLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_IsSupportedLayer_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 descriptor];
  [v3 poolingType];
  v5 = 136315394;
  v6 = "includePaddingLayer";
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_238C1D000, a2, OS_LOG_TYPE_DEBUG, "%s: unsupported pooling type=%d", &v5, 0x12u);

  v4 = *MEMORY[0x277D85DE8];
}

void buildANESubgraph_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "getParentLayers";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: Cannot find parents for a layer", buf, 0xCu);
}

void setBNNSActivation_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 activationType];
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown neuron type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_BuildConvolutionParams_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_BuildConvolutionParams_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 dataType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_BuildConvolutionParams_cold_3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 convolutionType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateConvolutionLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateConvolutionLayer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithConvolutionLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithConvolutionLayer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithConvolutionLayer_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithConvolutionLayer_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_238C1D000, v2, OS_LOG_TYPE_ERROR, "%s: unit=%@ of layer=%@ failed validation", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitsWithConvolutionLayer_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileConvolutionLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileConvolutionLayer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileConvolutionLayer_cold_4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 fusedLayers];
  v2 = [v1 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void ANE_CompileConvolutionLayer_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileConvolutionLayer_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSelectionLayer_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: the number of arithmetic parameters must be 4", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSelectionLayer_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: broadcasting is needed but not supported", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSelectionLayer_cold_3(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "ANE_CompileSelectionLayer";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: invalid broadcast status=%d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSelectionLayer_cold_4()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSelectionLayer_cold_8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: the data types of source tensors are not supported", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void VerifyTensorBeforeRead_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "VerifyTensorBeforeRead";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: Tensor's device memory was not converted to ANE data structure", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void VerifyTensorBeforeRead_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: empty liveIOStatus in tensor=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void VerifyTensorBeforeRead_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: device memory not allocated for tensor=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void GPU_AllocateResourceForMultiGPUTraining_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "Unsupported data type.", buf, 2u);
}

void GPU_AllocateResourceForMultiGPUTraining_cold_2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 deviceList];
  v5 = 134217984;
  v6 = [v3 count];
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "2 GPUs are expected but only %lu GPU is available", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateConcatUnit_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: failed to build ANECTensorDesc for sourceTensor=%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateConcatUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateConcatUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_BuildANECTensorDesc_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 136315650;
  v7 = "ANE_BuildANECTensorDesc";
  v8 = 1024;
  v9 = [a1 dataType];
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%s: unsupported data type=%d for tensor=%@", &v6, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateUnitValidator_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: incorrect platform=%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateConvolutionUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateConvolutionUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateConvolutionUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInstanceNormUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInstanceNormUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInstanceNormUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateNeuronUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateNeuronUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateNeuronUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidatePoolingUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidatePoolingUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidatePoolingUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateSoftmaxUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateSoftmaxUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateSoftmaxUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateReshapeUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateReshapeUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateReshapeUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateTransposeUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateTransposeUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateTransposeUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateReductionUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateReductionUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateReductionUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateBroadcastUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build input ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateBroadcastUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build output ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateBroadcastUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateBroadcastUnit_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateElementWiseUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateElementWiseUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateElementWiseUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInputViewUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInputViewUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInputViewUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateArgMinMaxUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateArgMinMaxUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateArgMinMaxUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateGOCUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateGOCUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateGOCUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateMatrixMultUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateMatrixMultUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateMatrixMultUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateLayerNormUnit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to build ANECTensorDesc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateLayerNormUnit_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to create ANEC unit validator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateLayerNormUnit_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: unable to delete the validator instance", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __isAppleNeuralEngineAPIAvailable_block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: no AppleNeuralEngine framework API available", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_BuildReductionParams_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void ANE_BuildReductionParams_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: unsupported reduction type=%d", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_Get4DReductionDimensions_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ANE_Get4DReductionDimensions";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: only suppport a source tensor with up to 4 dimensions", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CreateReductionLayer_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ANE_CreateReductionLayer";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: failed to build the reduction parameters", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CompileReductionLayer_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: unit=%@ of layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileReductionLayer_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void ANE_CompileReductionLayer_cold_4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 reductionType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSoftmaxLayer_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: unit=%@ of layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSoftmaxLayer_cold_4(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ANE_CompileSoftmaxLayer";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: nil GOC unit parameters", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CompileSoftmaxLayer_cold_5(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ANE_CompileSoftmaxLayer";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: nil neuron unit parameters", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void CPU_BuildBNNSLSTMInputAndOutput_cold_1(int a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "CPU_BuildBNNSLSTMInputAndOutput";
  v6 = 1024;
  v7 = a1;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: LSTM input feature size is %d but source tensor input feature size is %d", &v4, 0x18u);
  v3 = *MEMORY[0x277D85DE8];
}

void addInputWeightPointersToGate_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to allocate pointed weight for first input weight", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void createParameterPointersForGate_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_238C1D000, a1, a3, "%s: failed to allocate pointed weight for either hidden weights or bias terms", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ANE_CreatePoolingLayer_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 poolingType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: unsupported pooling type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_CreatePoolingLayer_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompilePoolingLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompilePoolingLayer_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "ANE_CompilePoolingLayer";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: reduction unit=%@ for layer=%@ failed validation", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CompilePoolingLayer_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompilePoolingLayer_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompilePoolingLayer_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void CPU_CreateLossLayer_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: Unknown loss type %d", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void getBNNSLossReductionFunction_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: Unknown reduction type %d", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void CPU_CompileYOLOLossLayer_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 descriptor];
  [v1 dataType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v2, v3, "%s: Unsupported result data type (%d)", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void CPU_CompileYOLOLossLayer_cold_2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectAtIndexedSubscript:0];
  v2 = [v1 descriptor];
  [v2 dataType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v3, v4, "%s: Unsupported sources data type %d", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void CPU_CreateFusedConvolutionNormalizationAndNeuronLayer_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: Unsupported operation type (%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void CPU_CompileFusedConvolutionNormalizationAndNeuronLayer_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "CPU_CompileFusedConvolutionNormalizationAndNeuronLayer";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: BNNS filter could not be created", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void CPU_CompileFusedConvolutionNormalizationAndNeuronLayer_cold_2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 deviceOpType];
  v4[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: Unsupported operation type (%d)", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void CPU_CreatePaddingLayer_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: Unsupported data type %d", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void CPU_CreatePaddingLayer_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: Unsupported padding type %d", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CreateMatMulLayer_cold_1(float *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateMatMulLayer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: transpose unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: matrix mult unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_4()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: GOC unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_5()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: elementWise add unit=%@ for layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_6()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: broadcasting bias tensor is needed but not supported. bias tensor=%@, result tensor=%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileMatMulLayer_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileConcatLayer_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_238C1D000, v0, v1, "%s: unit=%@ of layer=%@ failed validation", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_3(&dword_238C1D000, v1, v2, "%s: unsupported shape dimensions=%lu for group normalization", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_9(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_3(&dword_238C1D000, v1, v2, "%s: unsupported shape dimensions=%lu for instance normalization", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_10(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_16()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormalizationLayer_cold_17()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_BuildBatchNormalizationParams_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_3(&dword_238C1D000, v1, v2, "%s: unsupported shape dimensions=%lu for batch normalization", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_BuildBatchNormalizationParams_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_BuildBatchNormalizationParams_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_BuildBatchNormalizationParams_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_14(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 fusedLayers];
  v2 = [v1 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_238C1D000, v3, v4, "%s: the fused layer is not a neuron layer.The fused layer=%@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void ANE_CompileNormalizationLayer_cold_16()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_BuildGocParams_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CalculateScaleAndBiasForInstanceNorm_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormUnits_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormUnits_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormUnits_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormUnits_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormUnits_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateNormUnits_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CreateBroadcastedConstantTensor_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ConvertFp32ToInt16_cold_1(float *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_CompressSparseKernel_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompressSparseKernel_cold_2()
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = 136315650;
  OUTLINED_FUNCTION_2_2();
  v6 = v0;
  v7 = v1;
  v8 = v2;
  _os_log_debug_impl(&dword_238C1D000, v3, OS_LOG_TYPE_DEBUG, "%s: not a sparse kernel because sparsity=%f is below sparsityThreshold=%f", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

void ANE_GetTensorValueInFloat_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_GetTensorWidthAndHeightWithOnePrepended_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_GetDimensionIn4DWithOnePrepended_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_GetDimensionIn4DWithOnePrepended_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_GetTensorFeatureChannelsWithBatchFirst_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_GetANECIRDimension_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_GetANECIRDataTypeWithMLCDataType_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInterleave_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInterleave_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInterleave_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInterleave_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ValidateInterleave_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_GetANEElementByteCount_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CalculateRowStrideForTensor_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CalculateRowStrideForTensor_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CalculatePlaneStrideForTensor_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CalculatePlaneCountForTensor_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CalculateIOInterleave_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ConvertInputTensor_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 descriptor];
  [v1 tensorAllocationSizeInBytes];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void ANE_ConvertInputTensor_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ConvertInputTensor_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ConvertInputTensor_cold_4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 dimensionCount];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_ConvertInputTensor_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ANECDataTypeToMLCDataType_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ReadOutputTensor_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 deviceIndex];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_ReadOutputTensor_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ReadOutputTensor_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ReadOutputTensor_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ReadOutputTensor_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ReadOutputTensor_cold_6(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 dimensionCount];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ANE_ReadOutputTensor_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ReadOutputTensor_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_ComputeLiveInputs_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 parentLayers];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void ANE_WriteANEModelFiles_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_WriteANEModelFiles_cold_2(uint64_t a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void ANE_WriteANEModelFiles_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_WriteANEModelFiles_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_DeleteANEModelDirectory_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void CPU_CreateSGDOptimizer_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 regularizationType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown gradient clipping type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void CPU_CreateSGDOptimizer_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 regularizationType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown regularization type type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void CPU_CreateAdamOptimizer_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 regularizationType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown gradient clipping type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void CPU_CreateAdamOptimizer_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 regularizationType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown regularization type type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void CPU_CreateRMSPropOptimizer_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 regularizationType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown gradient clipping type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void CPU_CreateRMSPropOptimizer_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 regularizationType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v1, v2, "%s: Unknown regularization type type %d", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void CPU_CreateNormalizationLayer_cold_1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "CPU_CreateNormalizationLayer";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: Unsupported norm type (%d)", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void ANE_BuildTransposeParams_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ANE_BuildTransposeParams";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: failed to get ANEC IR dimension", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_BuildTransposeParams_cold_2(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136315394;
  v5 = "ANE_BuildTransposeParams";
  v6 = 2048;
  v7 = [a1 count];
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: unsupported shape count=%lu", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CreateTransposeLayer_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: failed to build the transpose parameteres for shape=%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CompileTransposeLayer_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: layer=%@ failed validation", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void ANE_CompileFullyConnectedLayer_cold_1(void *a1, int a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 descriptor];
  v7 = 136315650;
  v8 = "ANE_CreateMatMulUnitsWithFullyConnectedLayer";
  v9 = 1024;
  v10 = a2;
  v11 = 1024;
  v12 = [v5 dataType];
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%s: different data types between weights and biases are not supported. weight data type=%d, bias data type=%d", &v7, 0x18u);

  v6 = *MEMORY[0x277D85DE8];
}

void ANE_CompileFullyConnectedLayer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileFullyConnectedLayer_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_238C1D000, v2, OS_LOG_TYPE_ERROR, "%s: unit=%@ of layer=%@ failed validation", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void ANE_CompileFullyConnectedLayer_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileFullyConnectedLayer_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileFullyConnectedLayer_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileFullyConnectedLayer_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ANE_CompileFullyConnectedLayer_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}