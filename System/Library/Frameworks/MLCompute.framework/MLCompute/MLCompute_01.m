id createTemporaryMatrixViews(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v26 = a2;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
  if (a4)
  {
    v10 = a4;
    v11 = 0;
    v22 = 4 * a4 * a6;
    do
    {
      v12 = [v8 descriptor];
      v13 = [v12 batchSizePerSequenceStep];
      v14 = a5;
      if (v13)
      {
        v15 = [v8 descriptor];
        v16 = [v15 batchSizePerSequenceStep];
        v17 = [v16 objectAtIndexedSubscript:v11];
        v14 = [v17 unsignedIntegerValue];
      }

      v18 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v14 columns:a6 rowBytes:v22 dataType:268435488];
      v19 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v26 matrixDescriptor:v18];
      [v19 setReadCount:{objc_msgSend(v19, "readCount") + a3}];
      [v9 addObject:v19];

      ++v11;
    }

    while (v10 != v11);
  }

  v20 = [v9 copy];

  return v20;
}

id createMatricesForTNCBufferNoOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1];
  if (a1)
  {
    v14 = 4 * a3;
    v15 = a1 - 1;
    do
    {
      v16 = a2;
      if (v11)
      {
        v17 = [v11 objectAtIndexedSubscript:v15];
        v16 = [v17 unsignedIntegerValue];
      }

      v18 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v16 columns:a4 rowBytes:v14 dataType:268435488];
      v19 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v12 descriptor:v18];
      [v13 addObject:v19];

      --v15;
    }

    while (v15 != -1);
  }

  v20 = [v13 copy];

  return v20;
}

void GPU_AllocateResourceForMultiGPUTraining(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 deviceList];
  v11 = [v10 count];

  v57 = v7;
  if (v11 > 1)
  {
    v14 = [v7 deviceList];
    v12 = [v14 objectAtIndexedSubscript:a4];

    v15 = MEMORY[0x277CBEBF8];
    v55 = [MEMORY[0x277CBEBF8] mutableCopy];
    v64 = [v15 mutableCopy];
    v63 = [v15 mutableCopy];
    v62 = [v15 mutableCopy];
    v56 = v8;
    v16 = [v8 rnnTrainableWeightGradients];
    v66 = [v16 count];
    v59 = v9;
    v60 = v16;
    if (v66)
    {
      v17 = v16;
    }

    else
    {
      v17 = v9;
    }

    v58 = [v17 count];
    if (!v58)
    {
LABEL_38:
      v50 = [v55 copy];
      v13 = v56;
      [v56 setRemoteGradientBuffers:v50];

      v51 = [v64 copy];
      [v56 setLocalGradientMatrices:v51];

      v52 = [v63 copy];
      [v56 setReceivedGradientMatrices:v52];

      v53 = [v62 copy];
      [v56 setMatrixSumKernels:v53];

      v54 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v56 setAllReducedGradientMatrices:v54];

      [v56 setMultiGPUReduction:1];
      v9 = v59;
      goto LABEL_39;
    }

    v18 = 0;
    v61 = 0;
    while (v66)
    {
      v19 = [v60 objectAtIndexedSubscript:v61];
      v20 = [v19 count];

      v65 = v20;
      if (v20)
      {
        goto LABEL_15;
      }

LABEL_12:
      if (++v61 == v58)
      {
        goto LABEL_38;
      }
    }

    v65 = 1;
LABEL_15:
    v21 = 0;
    while (v66)
    {
      v22 = [v60 objectAtIndexedSubscript:v61];
      v23 = [v22 objectAtIndexedSubscript:v21];

      v24 = [v23 data];
      v25 = [v24 allocatedSize];
      v26 = [v23 columns];
      v27 = [v23 rows];
      v28 = [v23 rowBytes];

      v29 = 268435488;
LABEL_36:

      v44 = [v12 newBufferWithLength:v25 options:32];
      v45 = [v12 newBufferWithLength:v25 options:+[MLCGPUHelper mtlResourceOptions]];
      v46 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v27 columns:v26 rowBytes:v28 dataType:v29];
      v47 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v44 descriptor:v46];
      v48 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v45 descriptor:v46];
      v49 = [objc_alloc(MEMORY[0x277CD76F8]) initWithDevice:v12 count:2 rows:v27 columns:v26 transpose:0];
      [v64 setObject:v47 atIndexedSubscript:v18];
      [v63 setObject:v48 atIndexedSubscript:v18];
      [v62 setObject:v49 atIndexedSubscript:v18++];

      if (++v21 == v65)
      {
        goto LABEL_12;
      }
    }

    v23 = [v59 objectAtIndexedSubscript:v18];
    v30 = [v23 descriptor];
    v25 = [v30 tensorAllocationSizeInBytes];

    v31 = [v23 descriptor];
    v32 = [v31 shape];
    v33 = [v32 count];

    if (v33)
    {
      v34 = 0;
      v26 = 1;
      do
      {
        v35 = [v23 descriptor];
        v36 = [v35 shape];
        v37 = [v36 objectAtIndexedSubscript:v34];
        v26 *= [v37 unsignedIntegerValue];

        ++v34;
        v38 = [v23 descriptor];
        v39 = [v38 shape];
        v40 = [v39 count];
      }

      while (v34 < v40);
    }

    else
    {
      v26 = 1;
    }

    v41 = [v23 descriptor];
    v42 = [v41 dataType];

    if (v42 > 3)
    {
      if (v42 == 4 || v42 == 6)
      {
        v29 = 1073741832;
        v28 = v26;
        goto LABEL_35;
      }
    }

    else
    {
      if (v42 == 1)
      {
        v28 = 4 * v26;
LABEL_34:
        v29 = 268435488;
        goto LABEL_35;
      }

      if (v42 == 3)
      {
        v28 = 2 * v26;
        v29 = 268435472;
LABEL_35:
        v27 = 1;
        goto LABEL_36;
      }
    }

    v43 = +[MLCLog framework];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      GPU_AllocateResourceForMultiGPUTraining_cold_1(&buf, v68, v43);
    }

    v28 = 0;
    goto LABEL_34;
  }

  v12 = +[MLCLog framework];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    GPU_AllocateResourceForMultiGPUTraining_cold_2(v57, v12);
  }

  v13 = v8;
LABEL_39:
}

id GPU_AllocateMemoryForMomentum(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v5 length];
  v8 = v7;
  v9 = 1;
  if (a3 != 268435472)
  {
    v9 = 2;
  }

  v10 = v7 >> v9;
  v11 = [v5 bytes];

  v12 = [v6 newBufferWithBytes:v11 length:v8 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
  v13 = [MEMORY[0x277CD72D0] vectorDescriptorWithLength:v10 dataType:a3];
  v14 = [objc_alloc(MEMORY[0x277CD72C8]) initWithBuffer:v12 descriptor:v13];

  return v14;
}

void rotateWeightsTensorBy180Degree(void *a1, void *a2, void *a3)
{
  v20 = a1;
  v5 = a3;
  v6 = [a2 bytes];
  v7 = [v5 bytes];
  v8 = 1;
  v9 = [v20 objectAtIndexedSubscript:1];
  v10 = [v9 unsignedIntegerValue];

  if ([v20 count] != 2)
  {
    if ([v20 count] == 3)
    {
      v11 = [v20 objectAtIndexedSubscript:2];
      v12 = [v11 unsignedIntegerValue];
      v13 = 1;
    }

    else
    {
      v14 = [v20 objectAtIndexedSubscript:3];
      v12 = [v14 unsignedIntegerValue];

      v11 = [v20 objectAtIndexedSubscript:2];
      v13 = [v11 unsignedIntegerValue];
    }

    v8 = v12 * v13;
  }

  if (v10)
  {
    LODWORD(v15) = 0;
    v16 = 0;
    do
    {
      if (v8)
      {
        v17 = 0;
        v18 = 1;
        do
        {
          *(v7 + 4 * v16 + 4 * v17) = *(v6 + 4 * v8 + 4 * v16 + 4 * ~v17);
          v17 = v18;
        }

        while (v8 > v18++);
      }

      v16 += v8;
      v15 = (v15 + 1);
    }

    while (v10 > v15);
  }
}

void GPU_SetPaddingPolicyForLayer(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v9 = a2;
  v10 = [v21 deviceList];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [v9 objectAtIndexedSubscript:v12];
      v14 = [v13 forwardKernel];
      if (a3 == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [_MLCGPUConvolutionTransposePadding convolutionTransposeZeroPaddingWithTopAmount:0 bottomAmount:0 leftAmount:0 rightAmount:0 outputPaddingX:0 outputPaddingY:0];
          [v14 setPadding:v20];

          break;
        }

        v16 = 1;
      }

      else
      {
        if (a3 == 2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [_MLCGPUConvolutionTransposePadding convolutionTransposeZeroPaddingWithTopAmount:a5 bottomAmount:a5 leftAmount:a4 rightAmount:a4 outputPaddingX:0 outputPaddingY:0];
          }

          else
          {
            [MEMORY[0x277CD7708] zeroPaddingWithTopAmount:a5 bottomAmount:a5 leftAmount:a4 rightAmount:a4];
          }
          v15 = ;
          goto LABEL_13;
        }

        v16 = 28;
      }

      v15 = [MEMORY[0x277CD7708] paddingWithMethod:v16];
LABEL_13:
      v17 = v15;
      [v14 setPadding:v15];

      ++v12;
      v18 = [v21 deviceList];
      v19 = [v18 count];
    }

    while (v12 < v19);
  }
}

uint64_t GPU_GetDataType(int a1)
{
  v5 = a1 - 1;
  if (a1 - 1) < 6 && ((0x2Du >> v5))
  {
    return dword_238D45DD0[v5];
  }

  v7 = [MLCLog framework:v2];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    GPU_GetDataType_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return 268435488;
}

uint64_t GPU_GetDataTypeFromMPSDataType(int a1)
{
  switch(a1)
  {
    case 8:
      return 6;
    case 268435488:
      return 1;
    case 268435472:
      return 3;
  }

  v2 = +[MLCLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    GPU_GetDataType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

id createArrayOfMPSMatrixSlicesFromBatch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [v4 matrices];
  v7 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v4 columns:"rows") matrices:objc_msgSend(v4 rowBytes:"columns") matrixBytes:1 dataType:{objc_msgSend(v4, "rowBytes"), objc_msgSend(v4, "matrixBytes"), objc_msgSend(v4, "dataType")}];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v3 offset:objc_msgSend(v4 descriptor:{"matrixBytes") * i, v7}];
      [v5 addObject:v9];
    }
  }

  return v5;
}

void convertNCHWToWHCN(void *a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 copy];
  [v1 removeAllObjects];
  v3 = [v2 objectAtIndexedSubscript:3];
  v9[0] = v3;
  v4 = [v2 objectAtIndexedSubscript:2];
  v9[1] = v4;
  v5 = [v2 objectAtIndexedSubscript:1];
  v9[2] = v5;
  v6 = [v2 objectAtIndexedSubscript:0];
  v9[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  [v1 addObjectsFromArray:v7];

  v8 = *MEMORY[0x277D85DE8];
}

id makeMPSNDArrayDescriptorFromTensor(void *a1, unint64_t a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 descriptor];
  v5 = [v4 shape];

  v6 = [v3 calculateBatchSizeToUse];
  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 / a2;
  }

  v8 = [v5 count];
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      v29[0] = v9;
      v10 = [v5 objectAtIndexedSubscript:1];
      v29[1] = v10;
      v29[2] = &unk_284BA5A80;
      v13 = [v5 objectAtIndexedSubscript:2];
      v29[3] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_11;
      }

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      v28[0] = v9;
      v10 = [v5 objectAtIndexedSubscript:1];
      v28[1] = v10;
      v13 = [v5 objectAtIndexedSubscript:2];
      v28[2] = v13;
      v14 = [v5 objectAtIndexedSubscript:3];
      v28[3] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    }

    goto LABEL_18;
  }

  if (v8 == 1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v31[0] = v9;
    v31[1] = &unk_284BA5A80;
    v31[2] = &unk_284BA5A80;
    v10 = [v5 objectAtIndexedSubscript:0];
    v31[3] = v10;
    v11 = MEMORY[0x277CBEA60];
    v12 = v31;
    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v30[0] = v9;
    v30[1] = &unk_284BA5A80;
    v30[2] = &unk_284BA5A80;
    v10 = [v5 objectAtIndexedSubscript:1];
    v30[3] = v10;
    v11 = MEMORY[0x277CBEA60];
    v12 = v30;
LABEL_15:
    v15 = [v11 arrayWithObjects:v12 count:4];
LABEL_18:

    goto LABEL_19;
  }

LABEL_11:
  v9 = +[MLCLog framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    makeMPSNDArrayDescriptorFromTensor_cold_1(v9, v16, v17, v18, v19, v20, v21, v22);
  }

  v15 = MEMORY[0x277CBEBF8];
LABEL_19:

  v23 = [v3 descriptor];
  DataType = GPU_GetDataType([v23 dataType]);

  v25 = [MEMORY[0x277CD7268] descriptorWithDataType:DataType shape:v15];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

id makeMPSNDArrayFromMTLBuffer(void *a1, void *a2, void *a3, void *a4, unint64_t a5, uint64_t a6)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = GPU_CreateMPSMatrixDescForNDArray(a1, a5, a6);
  v15 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v12 descriptor:v14];

  [v13 setPreferPackedRows:1];
  v16 = [v15 ndArrayWithCommandBuffer:v11 descriptor:v13 aliasing:1];

  return v16;
}

id GPU_CreateMPSMatrixDescForNDArray(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 descriptor];
  v7 = [v6 shape];

  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 1}];
    a3 = [v8 unsignedIntegerValue];

    v9 = 1;
  }

  else
  {
    if (!a3)
    {
      v10 = [v5 calculateBatchSizeToUse];
      if (v10 == 1)
      {
        a3 = 1;
      }

      else
      {
        a3 = v10 / a2;
      }
    }

    v11 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 1}];
    v9 = [v11 unsignedIntegerValue];

    if (([v7 count] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = 1;
      do
      {
        v13 = [v7 objectAtIndexedSubscript:v12];
        a3 *= [v13 unsignedIntegerValue];

        ++v12;
      }

      while (v12 < [v7 count] - 1);
    }
  }

  v14 = [v5 descriptor];
  v15 = GPU_CreateMPSMatrixDesc(a3, v9, 1, [v14 dataType]);

  return v15;
}

id makeMPSTemporaryNDArrayFromTensor(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = makeMPSNDArrayDescriptorFromTensor(a1, a2);
  v7 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v5 descriptor:v6];

  return v7;
}

void encodeMPSImageBatchToMPSTemporaryNDArray(void *a1, void *a2, uint64_t a3, void *a4, __int128 *a5)
{
  v9 = a4;
  v10 = a2;
  v11 = [a1 deviceMemory];
  v12 = [v11 objectAtIndexedSubscript:a3];
  v13 = [v12 count];

  v14 = [v11 objectAtIndexedSubscript:a3];
  v15 = [v14 subarrayWithRange:{0, v13}];

  v16 = *a5;
  v17 = *(a5 + 2);
  [v10 importDataWithCommandBuffer:v9 fromImages:v15 offset:&v16];
}

void encodeMPSTemporaryNDArrayToMPSImageBatch(void *a1, void *a2, uint64_t a3, void *a4, __int128 *a5)
{
  v9 = a4;
  v10 = a2;
  v11 = [a1 deviceMemory];
  v12 = [v11 objectAtIndexedSubscript:a3];
  v13 = [v12 count];

  v14 = [v11 objectAtIndexedSubscript:a3];
  v15 = [v14 subarrayWithRange:{0, v13}];

  v16 = *a5;
  v17 = *(a5 + 2);
  [v10 exportDataWithCommandBuffer:v9 toImages:v15 offset:&v16];
}

void GPU_GetTensorWidthAndHeight(void *a1, uint64_t *a2, uint64_t *a3)
{
  v18 = a1;
  v5 = [v18 descriptor];
  v6 = [v5 shape];
  v7 = [v6 count];

  v8 = [v18 descriptor];
  v9 = [v8 shape];
  v10 = v9;
  if (v7 == 4)
  {
    v11 = [v9 objectAtIndexedSubscript:3];
    v12 = [v11 unsignedIntegerValue];

    v13 = [v18 descriptor];
    v14 = [v13 shape];
    v15 = [v14 objectAtIndexedSubscript:2];
    v16 = [v15 unsignedIntegerValue];
LABEL_5:

    goto LABEL_7;
  }

  v17 = [v9 count];

  if (v17 == 3)
  {
    v13 = [v18 descriptor];
    v14 = [v13 shape];
    v15 = [v14 objectAtIndexedSubscript:2];
    v12 = [v15 unsignedIntegerValue];
    v16 = 1;
    goto LABEL_5;
  }

  v12 = 1;
  v16 = 1;
LABEL_7:
  *a2 = v12;
  *a3 = v16;
}

void GPU_GetTensorWidthAndHeightStrides(void *a1, uint64_t *a2, uint64_t *a3)
{
  v25 = a1;
  v5 = [v25 descriptor];
  v6 = [v5 dataType];

  v7 = [v25 descriptor];
  v8 = [v7 shape];
  v9 = [v8 count];

  if (v9 == 4)
  {
    v10 = [v25 descriptor];
    v11 = [v10 stride];
    v12 = [v11 objectAtIndexedSubscript:3];
    v13 = [v12 unsignedIntegerValue];

    v14 = [v25 descriptor];
    v15 = [v14 stride];
    v16 = [v15 objectAtIndexedSubscript:2];
    v17 = [v16 unsignedIntegerValue];
LABEL_10:

    goto LABEL_12;
  }

  v18 = 1;
  if (v6 == 3)
  {
    v18 = 2;
  }

  if (v6 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = v18;
  }

  v19 = [v25 descriptor];
  v20 = [v19 shape];
  v21 = [v20 count];

  if (v21 == 3)
  {
    v22 = [v25 descriptor];
    v23 = [v22 stride];
    v24 = [v23 objectAtIndexedSubscript:2];
    v13 = [v24 unsignedIntegerValue];

    v14 = [v25 descriptor];
    v15 = [v14 shape];
    v16 = [v15 objectAtIndexedSubscript:2];
    v17 = [v16 unsignedIntegerValue] * v13;
    goto LABEL_10;
  }

  v17 = v13;
LABEL_12:
  *a2 = v13;
  *a3 = v17;
}

uint64_t GPU_AdjustFeatureChannelBeyondMax(uint64_t *a1, uint64_t *a2, unint64_t *a3, void *a4)
{
  if (*a3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a1;
  *a3 >>= 1;
  *a1 = 2 * v5;
  if (a4)
  {
    *a4 *= 2;
  }

  v6 = *a3;
  if (*a3 > kMaxFeatureChannelMPSImage && ((v6 & 1) != 0 || (*a3 = v6 >> 1, *a2 = 2 * v4, *a3 > kMaxFeatureChannelMPSImage)))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

id deviceParameterWithVectors(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = +[MLCTensorOptimizerDeviceData optimizerDeviceData];
  [v8 setMomentumVectors:v7];

  [v8 setVelocityVectors:v6];
  [v8 setCenterWeightVectors:v5];

  return v8;
}

id GPU_GetDataSourceFromTensors(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        v6 = [v5 deviceDataSources];

        if (v6)
        {
          v2 = [v5 deviceDataSources];
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

void GPU_AssociateDataSourceToTensors(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setDeviceDataSources:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void GPU_ScaleMPSImageBatchWithKernel(void *a1, void *a2, void *a3, int a4)
{
  v10 = a1;
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    MPSImageBatchIncrementReadCount(v8, 1);
  }

  [v10 encodeBatchToCommandBuffer:v7 sourceImages:v9 destinationImages:v9];
}

void GPU_AllocateExportableRunningMeanVariancetatesWithDevice(void *a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v33 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 deviceMemory];
    v14 = [v13 count] <= a5;

    if (v12)
    {
LABEL_3:
      v15 = [v12 deviceMemory];
      v16 = [v15 count] <= a5;

      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  if (v14)
  {
    v17 = [v10 data];
    v18 = [v17 bytes];
    v19 = [v10 data];
    v20 = [v33 newBufferWithBytes:v18 length:objc_msgSend(v19 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    v21 = [v10 deviceMemory];
    [v21 setObject:v20 atIndexedSubscript:a5];
  }

  if (v16)
  {
    v22 = [v12 data];
    v23 = [v22 bytes];
    v24 = [v12 data];
    v25 = [v33 newBufferWithBytes:v23 length:objc_msgSend(v24 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    v26 = [v12 deviceMemory];
    [v26 setObject:v25 atIndexedSubscript:a5];
  }

  v27 = objc_alloc(MEMORY[0x277CD76C8]);
  v28 = [v10 deviceMemory];
  v29 = [v28 objectAtIndexedSubscript:a5];
  v30 = [v12 deviceMemory];
  v31 = [v30 objectAtIndexedSubscript:a5];
  v32 = [v27 initWithMean:v29 variance:v31];

  [v9 setMovingState:v32];
}

void GPU_AllocateExportableGammaBetaStatesWithDevice(void *a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v33 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!(v10 | v11))
  {
    [v9 setExportableState:0];
    goto LABEL_13;
  }

  if (!v10)
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v13 = [v10 deviceMemory];
  v14 = [v13 count] <= a5;

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = [v12 deviceMemory];
  v16 = [v15 count] <= a5;

LABEL_8:
  if (v14)
  {
    v17 = [v10 data];
    v18 = [v17 bytes];
    v19 = [v10 data];
    v20 = [v33 newBufferWithBytes:v18 length:objc_msgSend(v19 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    v21 = [v10 deviceMemory];
    [v21 setObject:v20 atIndexedSubscript:a5];
  }

  if (v16)
  {
    v22 = [v12 data];
    v23 = [v22 bytes];
    v24 = [v12 data];
    v25 = [v33 newBufferWithBytes:v23 length:objc_msgSend(v24 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    v26 = [v12 deviceMemory];
    [v26 setObject:v25 atIndexedSubscript:a5];
  }

  v27 = objc_alloc(MEMORY[0x277CD76C0]);
  v28 = [v12 deviceMemory];
  v29 = [v28 objectAtIndexedSubscript:a5];
  v30 = [v10 deviceMemory];
  v31 = [v30 objectAtIndexedSubscript:a5];
  v32 = [v27 initWithGamma:v29 beta:v31];

  [v9 setExportableState:v32];
LABEL_13:
}

BOOL GPU_isAppleFamily(void *a1)
{
  v1 = [a1 debugDescription];
  v2 = [v1 capitalizedString];

  v3 = [v2 rangeOfString:@"Name = Apple"] != 0x7FFFFFFFFFFFFFFFLL;
  return v3;
}

uint64_t GPU_CreateMPSMatrixDesc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4 - 1;
  if ((a4 - 1) > 5)
  {
    v5 = 268435488;
    v6 = 1;
  }

  else
  {
    v5 = dword_238D45DE8[v4];
    v6 = qword_238D45E00[v4];
  }

  return [MEMORY[0x277CD7258] matrixDescriptorWithRows:a1 columns:a2 matrices:a3 rowBytes:v6 * a2 matrixBytes:v6 * a2 * a1 dataType:v5];
}

void copyNDArrayToMTLBuffer(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  [v7 exportDataWithCommandBuffer:v5 toBuffer:v6 destinationDataType:objc_msgSend(v7 offset:"dataType") rowStrides:{0, 0}];
}

void GPU_clearTemporaryImageBatchReadCount(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          if (v7)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v7 readCount])
              {
                [v7 setReadCount:0];
              }
            }
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id CPU_CreateUpsampleLayer(uint64_t a1, int a2, char a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  if (a2 == 1)
  {
    LODWORD(v17[0]) = 1;
  }

  BYTE8(v18) = a3;
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:368];
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:176];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:176];
  v20[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v19 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v11 = [MLCCPUDeviceOps deviceOpsWithType:24 params:v6 inDeltaData:v9 outDeltaData:v10 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v11)
  {
    [v5 addObject:v11];
  }

  v12 = [v5 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t CPU_CompileUpsampleLayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = a3;
  v29 = [a1 objectAtIndexedSubscript:0];
  v28 = [v29 params];
  v6 = [v28 bytes];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 descriptor];
  v9 = [v8 shape];
  v10 = [v5 objectAtIndexedSubscript:0];
  v11 = [v10 descriptor];
  v12 = [v11 stride];
  v13 = [v5 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v26 = v6;
  LODWORD(v6) = CPU_BuildBNNSNDArrayDescriptor(v6 + 8, v9, v12, 0, [v14 dataType], 1, 0);

  if (!v6)
  {
    v22 = 0;
    v15 = v27;
LABEL_7:
    v23 = v29;
    goto LABEL_8;
  }

  v15 = v27;
  v16 = [v27 descriptor];
  v17 = [v16 shape];
  v18 = [v27 descriptor];
  v19 = [v18 stride];
  v20 = [v27 descriptor];
  v21 = CPU_BuildBNNSNDArrayDescriptor(v26 + 184, v17, v19, 0, [v20 dataType], 1, 0);

  if (!v21)
  {
    v22 = 0;
    goto LABEL_7;
  }

  memset(v30, 0, sizeof(v30));
  LODWORD(v30[0]) = 1;
  v22 = MEMORY[0x23EE75CF0](v26, v30);
  v23 = v29;
  if (v22)
  {
    v24 = [v5 objectAtIndexedSubscript:0];
    [v29 setSourceStride:CPU_SetBatchStride(v24)];

    [v29 setResultStride:CPU_SetBatchStride(v27)];
  }

LABEL_8:

  return v22;
}

unint64_t *hashCombine_2(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 9;
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

unint64_t *hashCombine_3(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 7;
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

uint64_t getBNNSConcatLayerTensorDataOffset(void *a1)
{
  v1 = a1;
  v2 = [v1 concatOffset];
  v3 = [v1 descriptor];
  v4 = [v3 stride];
  v5 = [v1 concatDimension];

  v6 = [v4 objectAtIndexedSubscript:v5];
  v7 = [v6 unsignedIntegerValue] * v2;

  return v7;
}

uint64_t getBNNSSplitLayerTensorDataOffset(void *a1)
{
  v1 = a1;
  v2 = [v1 splitOffset];
  v3 = [v1 descriptor];
  v4 = [v3 stride];
  v5 = [v1 splitDimension];

  v6 = [v4 objectAtIndexedSubscript:v5];
  v7 = [v6 unsignedIntegerValue] * v2;

  return v7;
}

uint64_t ANE_ValidateConcatUnit(void *a1, void *a2, int a3)
{
  v61[70] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateConcatUnit_onceToken != -1)
  {
    ANE_ValidateConcatUnit_cold_1();
  }

  if ((ANE_ValidateConcatUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 count];
    v9 = MEMORY[0x28223BE20]();
    if (v9)
    {
      v10 = 0;
      v11 = &v44[-64 * v9];
      while (1)
      {
        v12 = [v5 objectAtIndexedSubscript:v10];
        if (!ANE_BuildANECTensorDesc(v11, v12, a3))
        {
          break;
        }

        ++v10;
        v11 += 64;
        if (v8 == v10)
        {
          goto LABEL_9;
        }
      }

      v41 = +[MLCLog framework];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateConcatUnit_cold_2();
      }

      v7 = 0;
      goto LABEL_37;
    }

LABEL_9:
    v12 = [v6 objectForKeyedSubscript:@"Params"];
    v53 = 0;
    v54 = 0;
    ANECConcatLayerDescInitialize();
    v53 = [v12 objectForKeyedSubscript:@"Dimension"];

    v13 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v52 = 0;
    if (!ANE_CreateUnitValidator(&v52, v13))
    {
      v33 = +[MLCLog framework];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateConcatUnit_cold_3(v33, v34, v35, v36, v37, v38, v39, v40);
      }

      v7 = 0;
      goto LABEL_36;
    }

    v47 = v44;
    v50 = 0;
    v51 = 0;
    v14 = ANECValidateConcatLayer();
    v7 = v14 == 0;
    v48 = v6;
    if (v14)
    {
      v15 = v14;
      v45 = v14 == 0;
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v61[0]) = 136315906;
        *(v61 + 4) = "ANE_ValidateConcatUnit";
        WORD2(v61[1]) = 1024;
        *(&v61[1] + 6) = v15;
        WORD1(v61[2]) = 2112;
        *(&v61[2] + 4) = v13;
        WORD2(v61[3]) = 2112;
        *(&v61[3] + 6) = v6;
        _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", v61, 0x26u);
      }

      v46 = v13;

      v18 = v51;
      if (v51)
      {
        v19 = 0;
        *&v17 = 136315650;
        v49 = v17;
        do
        {
          memcpy(v61, (v50 + 552 * v19), 0x228uLL);
          v20 = v61[0];
          if (v61[0])
          {
            v21 = 0;
            do
            {
              v22 = +[MLCLog framework];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = v61[v21 + 1];
                v55 = v49;
                v56 = "ANE_ValidateConcatUnit";
                v57 = 2048;
                v58 = v21;
                v59 = 2112;
                v60 = v23;
                _os_log_error_impl(&dword_238C1D000, v22, OS_LOG_TYPE_ERROR, "%s: ANE hardware constraint violation %lu: %@", &v55, 0x20u);
              }

              ++v21;
            }

            while (v20 != v21);
            v18 = v51;
          }

          ++v19;
        }

        while (v19 < v18);
      }

      v24 = ANECUnitValidatorDelete();
      v13 = v46;
      v7 = v45;
      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = +[MLCLog framework];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_35:
        v6 = v48;
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }

      v25 = +[MLCLog framework];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    ANE_ValidateConcatUnit_cold_4(v25, v26, v27, v28, v29, v30, v31, v32);
    goto LABEL_34;
  }

  v7 = 0;
LABEL_38:

  v42 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL ANE_BuildANECTensorDesc(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 descriptor];
  if (a3)
  {
    v20 = 0;
    v7 = &v20;
    ANE_GetTensor4DShapeWithOnePrepended(v5, &v20);
  }

  else
  {
    v19 = 0;
    v7 = &v19;
    ANE_GetTensor4DShapeWithBatchFirst(v5, &v19);
  }

  v8 = *v7;
  ANECTensorDimsInitialize();
  v9 = [v8 objectAtIndexedSubscript:{0, 0, 0, 0, 0, 0}];
  *&v17 = [v9 longValue];

  v10 = [v8 objectAtIndexedSubscript:1];
  *(&v17 + 1) = [v10 longValue];

  v11 = [v8 objectAtIndexedSubscript:2];
  *&v18 = [v11 longValue];

  v12 = [v8 objectAtIndexedSubscript:3];
  *(&v18 + 1) = [v12 longValue];

  ANECTensorDescInitialize();
  v13 = ANE_GetANECIRDataTypeWithMLCDataType([v6 dataType]);
  v14 = v13;
  if (v13)
  {
    *a1 = v13;
    *(a1 + 8) = v17;
    *(a1 + 24) = v18;
    *(a1 + 40) = 1;
    [v5 setInterleave:1];
    *(a1 + 48) = 1;
    *(a1 + 57) = ([v5 computeFlags] & 2) != 0;
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ANE_BuildANECTensorDesc_cold_1(v6, v5, v15);
    }
  }

  return v14 != 0;
}

id softLinkClass_ANEDeviceInfo_1()
{
  if (softLinkClass_ANEDeviceInfo_onceToken_1 != -1)
  {
    softLinkClass_ANEDeviceInfo_cold_1_1();
  }

  v1 = softLinkClass_ANEDeviceInfo_softLinkClass_ANEDeviceInfo_1;

  return v1;
}

BOOL ANE_CreateUnitValidator(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ANECUnitValidatorCreate();
  if (v3 == 10)
  {
    v4 = +[MLCLog framework];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUnitValidator_cold_1();
    }
  }

  return v3 != 10;
}

uint64_t ANE_ValidateConvolutionUnit(void *a1, void *a2, int a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateConvolutionUnit_onceToken != -1)
  {
    ANE_ValidateConvolutionUnit_cold_1();
  }

  if ((ANE_ValidateConvolutionUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v75, 0, sizeof(v75));
    if (!ANE_BuildANECTensorDesc(v75, v8, a3))
    {
      v30 = +[MLCLog framework];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateConvolutionUnit_cold_2(v30, v31, v32, v33, v34, v35, v36, v37);
      }

      v7 = 0;
      goto LABEL_28;
    }

    v73 = 0uLL;
    v74 = 0;
    ANE_BuildANECKernelSize(&v73, v6);
    v71 = 0uLL;
    v72 = 0;
    ANE_BuildANECPadding(&v71, v6);
    v70 = 0;
    v69 = 0;
    ANE_BuildANECStep(&v69, v6);
    v9 = [v6 objectForKeyedSubscript:@"Params"];
    ANECKernelDilationRateInitialize();
    v67 = vdupq_n_s64(1uLL);
    v68 = 1;
    v10 = [v9 objectForKeyedSubscript:@"KernelDilationX"];

    if (v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"KernelDilationX"];
      v67.i64[0] = [v11 longValue];
    }

    v12 = [v9 objectForKeyedSubscript:@"KernelDilationY"];

    if (v12)
    {
      v13 = [v9 objectForKeyedSubscript:@"KernelDilationY"];
      v67.i64[1] = [v13 longValue];
    }

    v65 = 0u;
    v66 = 0u;
    ANECConvLayerDescInitialize();
    v49 = [v9 objectForKeyedSubscript:@"Type"];

    v50 = [v9 objectForKeyedSubscript:@"KernelMode"];

    v51 = [v9 objectForKeyedSubscript:@"KernelType"];

    v52 = [v9 objectForKeyedSubscript:@"PaddingMode"];

    v14 = [v6 objectForKeyedSubscript:@"OutputChannels"];
    v53 = [v14 longValue];

    v15 = [v6 objectForKeyedSubscript:@"NumGroups"];
    v54 = [v15 longValue];

    v16 = [v9 objectForKeyedSubscript:@"KernelGroupReuse"];
    v55 = [v16 BOOLValue];

    v56 = v73;
    v57 = v74;
    v58 = v69;
    v59 = v70;
    v60 = v71;
    v61 = v72;
    v17 = [v9 objectForKeyedSubscript:@"KernelMutable"];
    v62 = [v17 BOOLValue];

    v63 = v67;
    v64 = v68;
    v18 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v48 = 0;
    if (!ANE_CreateUnitValidator(&v48, v18))
    {
      v38 = +[MLCLog framework];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateConvolutionUnit_cold_3(v38, v39, v40, v41, v42, v43, v44, v45);
      }

      v7 = 0;
      goto LABEL_27;
    }

    v19 = ANECValidateConvLayer();
    v7 = v19 == 0;
    if (v19)
    {
      v20 = v19;
      v21 = +[MLCLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateConvolutionUnit";
        v77 = 1024;
        v78 = v20;
        v79 = 2112;
        v80 = v18;
        v81 = 2112;
        v82 = v6;
        _os_log_error_impl(&dword_238C1D000, v21, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_27;
      }

      v22 = +[MLCLog framework];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v22 = +[MLCLog framework];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    ANE_ValidateConvolutionUnit_cold_4(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_26;
  }

  v7 = 0;
LABEL_29:

  v46 = *MEMORY[0x277D85DE8];
  return v7;
}

void ANE_BuildANECKernelSize(uint64_t *a1, void *a2)
{
  v3 = a2;
  ANECKernelSizeInitialize();
  v11 = [v3 objectForKeyedSubscript:@"Params"];

  v4 = [v11 objectForKeyedSubscript:@"KernelWidth"];
  v5 = [v4 longValue];

  v6 = [v11 objectForKeyedSubscript:@"KernelHeight"];
  v7 = [v6 longValue];

  v8 = [v11 objectForKeyedSubscript:@"KernelDepth"];

  if (v8)
  {
    v9 = [v11 objectForKeyedSubscript:@"KernelDepth"];
    v10 = [v9 longValue];
  }

  else
  {
    v10 = 1;
  }

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v10;
}

void ANE_BuildANECPadding(_DWORD *a1, void *a2)
{
  v3 = a2;
  ANECPaddingInitialize();
  v12 = [v3 objectForKeyedSubscript:@"Params"];

  v4 = [v12 objectForKeyedSubscript:@"PadTop"];
  a1[2] = [v4 intValue];

  v5 = [v12 objectForKeyedSubscript:@"PadBot"];
  a1[3] = [v5 intValue];

  v6 = [v12 objectForKeyedSubscript:@"PadLeft"];
  *a1 = [v6 intValue];

  v7 = [v12 objectForKeyedSubscript:@"PadRight"];
  a1[1] = [v7 intValue];

  a1[4] = 0;
  v8 = [v12 objectForKeyedSubscript:@"PadFront"];

  if (v8)
  {
    v9 = [v12 objectForKeyedSubscript:@"PadFront"];
    a1[4] = [v9 intValue];
  }

  a1[5] = 0;
  v10 = [v12 objectForKeyedSubscript:@"PadBack"];

  if (v10)
  {
    v11 = [v12 objectForKeyedSubscript:@"PadBack"];
    a1[5] = [v11 intValue];
  }
}

void ANE_BuildANECStep(_DWORD *a1, void *a2)
{
  v3 = a2;
  ANECStepInitialize();
  v12 = [v3 objectForKeyedSubscript:@"Params"];

  v4 = [v12 objectForKeyedSubscript:@"Step"];
  v5 = [v4 objectAtIndexedSubscript:0];
  *a1 = [v5 intValue];

  v6 = [v12 objectForKeyedSubscript:@"Step"];
  v7 = [v6 objectAtIndexedSubscript:1];
  a1[1] = [v7 intValue];

  a1[2] = 1;
  v8 = [v12 objectForKeyedSubscript:@"Step"];
  v9 = [v8 count];

  if (v9 == 3)
  {
    v10 = [v12 objectForKeyedSubscript:@"Step"];
    v11 = [v10 objectAtIndexedSubscript:2];
    a1[2] = [v11 intValue];
  }
}

uint64_t ANE_ValidateInstanceNormUnit(void *a1, void *a2, int a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateInstanceNormUnit_onceToken != -1)
  {
    ANE_ValidateInstanceNormUnit_cold_1();
  }

  if ((ANE_ValidateInstanceNormUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v44, 0, sizeof(v44));
    if (!ANE_BuildANECTensorDesc(v44, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateInstanceNormUnit_cold_2(v9, v25, v26, v27, v28, v29, v30, v31);
      }

      v7 = 0;
      goto LABEL_27;
    }

    v9 = [v6 objectForKeyedSubscript:@"Params"];
    memset(&v43[1], 0, 56);
    ANECInstanceNormLayerDescInitialize();
    v10 = [v9 objectForKeyedSubscript:@"Dimension"];
    v43[1] = [v10 count];
    if ([v10 count])
    {
      v11 = 0;
      do
      {
        v12 = [v10 objectAtIndexedSubscript:v11];

        v43[v11++ + 2] = v12;
      }

      while (v11 < [v10 count]);
    }

    v13 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v43[0] = 0;
    if (!ANE_CreateUnitValidator(v43, v13))
    {
      v32 = +[MLCLog framework];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateInstanceNormUnit_cold_3(v32, v33, v34, v35, v36, v37, v38, v39);
      }

      v7 = 0;
      goto LABEL_26;
    }

    v42 = v8;
    v14 = ANECValidateInstanceNormLayer();
    v7 = v14 == 0;
    if (v14)
    {
      v15 = v14;
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateInstanceNormUnit";
        v46 = 1024;
        v47 = v15;
        v48 = 2112;
        v49 = v13;
        v50 = 2112;
        v51 = v6;
        _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v8 = v42;
      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_26;
      }

      v17 = +[MLCLog framework];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      v17 = +[MLCLog framework];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    ANE_ValidateInstanceNormUnit_cold_4(v17, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_25;
  }

  v7 = 0;
LABEL_28:

  v40 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateNeuronUnit(void *a1, void *a2, int a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateNeuronUnit_onceToken != -1)
  {
    ANE_ValidateNeuronUnit_cold_1();
  }

  if ((ANE_ValidateNeuronUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v51, 0, sizeof(v51));
    if (!ANE_BuildANECTensorDesc(v51, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateNeuronUnit_cold_2(v9, v30, v31, v32, v33, v34, v35, v36);
      }

      v7 = 0;
      goto LABEL_26;
    }

    v9 = [v6 objectForKeyedSubscript:@"Params"];
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    ANECNeuronLayerDescInitialize();
    *&v48 = [v9 objectForKeyedSubscript:@"Type"];

    if (v48 == @"LeakyReLU")
    {
      v10 = [v9 objectForKeyedSubscript:@"ReluSlope"];
      v11 = [v10 shortValue];

      _H0 = v11;
      __asm { FCVT            S0, H0 }

      DWORD2(v48) = _S0;
    }

    v18 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v47 = 0;
    if (!ANE_CreateUnitValidator(&v47, v18))
    {
      v37 = +[MLCLog framework];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateNeuronUnit_cold_3(v37, v38, v39, v40, v41, v42, v43, v44);
      }

      v7 = 0;
      goto LABEL_25;
    }

    v19 = ANECValidateNeuronLayer();
    v7 = v19 == 0;
    if (v19)
    {
      v20 = v19;
      v21 = +[MLCLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateNeuronUnit";
        v53 = 1024;
        v54 = v20;
        v55 = 2112;
        v56 = v18;
        v57 = 2112;
        v58 = v6;
        _os_log_error_impl(&dword_238C1D000, v21, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_25;
      }

      v22 = +[MLCLog framework];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v22 = +[MLCLog framework];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    ANE_ValidateNeuronUnit_cold_4(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_24;
  }

  v7 = 0;
LABEL_27:

  v45 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidatePoolingUnit(void *a1, void *a2, int a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidatePoolingUnit_onceToken != -1)
  {
    ANE_ValidatePoolingUnit_cold_1();
  }

  if ((ANE_ValidatePoolingUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v58, 0, sizeof(v58));
    if (!ANE_BuildANECTensorDesc(v58, v8, a3))
    {
      v24 = +[MLCLog framework];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidatePoolingUnit_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
      }

      v7 = 0;
      goto LABEL_24;
    }

    v56 = 0uLL;
    v57 = 0;
    ANE_BuildANECKernelSize(&v56, v6);
    v54 = 0uLL;
    v55 = 0;
    ANE_BuildANECPadding(&v54, v6);
    v53 = 0;
    v52 = 0;
    ANE_BuildANECStep(&v52, v6);
    v9 = [v6 objectForKeyedSubscript:@"Params"];
    *&v50[12] = 0u;
    v51 = 0u;
    ANECPoolLayerDescInitialize();
    v44 = [v9 objectForKeyedSubscript:@"Type"];

    v45 = [v9 objectForKeyedSubscript:@"PaddingMode"];

    v46 = v56;
    v47 = v57;
    v48 = v52;
    v49 = v53;
    *v50 = v54;
    *&v50[16] = v55;
    v10 = [v9 objectForKeyedSubscript:@"AverageCountExcludePadding"];
    v50[24] = [v10 BOOLValue];

    v11 = [v6 objectForKeyedSubscript:@"OutputChannels"];
    *&v51 = [v11 longValue];

    DWORD2(v51) = 1065353216;
    v12 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v43 = 0;
    if (!ANE_CreateUnitValidator(&v43, v12))
    {
      v32 = +[MLCLog framework];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidatePoolingUnit_cold_3(v32, v33, v34, v35, v36, v37, v38, v39);
      }

      v7 = 0;
      goto LABEL_23;
    }

    v42 = v12;
    v13 = ANECValidatePoolLayer();
    v7 = v13 == 0;
    if (v13)
    {
      v14 = v13;
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidatePoolingUnit";
        v60 = 1024;
        v61 = v14;
        v62 = 2112;
        v63 = v42;
        v64 = 2112;
        v65 = v6;
        _os_log_error_impl(&dword_238C1D000, v15, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v12 = v42;
      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_23;
      }

      v16 = +[MLCLog framework];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v16 = +[MLCLog framework];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    ANE_ValidatePoolingUnit_cold_4(v16, v17, v18, v19, v20, v21, v22, v23);
    goto LABEL_22;
  }

  v7 = 0;
LABEL_25:

  v40 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateSoftmaxUnit(void *a1, void *a2, int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateSoftmaxUnit_onceToken != -1)
  {
    ANE_ValidateSoftmaxUnit_cold_1();
  }

  if ((ANE_ValidateSoftmaxUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v43, 0, sizeof(v43));
    if (!ANE_BuildANECTensorDesc(v43, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateSoftmaxUnit_cold_2(v9, v23, v24, v25, v26, v27, v28, v29);
      }

      v7 = 0;
      goto LABEL_24;
    }

    v9 = [v6 objectForKeyedSubscript:@"Params"];
    v41 = 0u;
    v42 = 0u;
    ANECSoftmaxLayerDescInitialize();
    v40[1] = 1;
    v10 = [v9 objectForKeyedSubscript:@"Dimension"];

    v40[2] = v10;
    v11 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v40[0] = 0;
    if (!ANE_CreateUnitValidator(v40, v11))
    {
      v30 = +[MLCLog framework];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateSoftmaxUnit_cold_3(v30, v31, v32, v33, v34, v35, v36, v37);
      }

      v7 = 0;
      goto LABEL_23;
    }

    v12 = ANECValidateSoftmaxLayer();
    v7 = v12 == 0;
    if (v12)
    {
      v13 = v12;
      v14 = +[MLCLog framework];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateSoftmaxUnit";
        v45 = 1024;
        v46 = v13;
        v47 = 2112;
        v48 = v11;
        v49 = 2112;
        v50 = v6;
        _os_log_error_impl(&dword_238C1D000, v14, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_23;
      }

      v15 = +[MLCLog framework];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v15 = +[MLCLog framework];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    ANE_ValidateSoftmaxUnit_cold_4(v15, v16, v17, v18, v19, v20, v21, v22);
    goto LABEL_22;
  }

  v7 = 0;
LABEL_25:

  v38 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateReshapeUnit(void *a1, void *a2, int a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateReshapeUnit_onceToken != -1)
  {
    ANE_ValidateReshapeUnit_cold_1();
  }

  if ((ANE_ValidateReshapeUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v50, 0, sizeof(v50));
    if (!ANE_BuildANECTensorDesc(v50, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateReshapeUnit_cold_2(v9, v26, v27, v28, v29, v30, v31, v32);
      }

      v7 = 0;
      goto LABEL_24;
    }

    v9 = [v6 objectForKeyedSubscript:@"Params"];
    ANECTensorDimsInitialize();
    v10 = [v9 objectForKeyedSubscript:@"ReshapedBatch"];
    *&v47 = [v10 longValue];

    v49 = 1;
    v11 = [v9 objectForKeyedSubscript:@"ReshapedChannel"];
    *(&v47 + 1) = [v11 longValue];

    v12 = [v9 objectForKeyedSubscript:@"ReshapedHeight"];
    *&v48 = [v12 longValue];

    v13 = [v9 objectForKeyedSubscript:@"ReshapedWidth"];
    *(&v48 + 1) = [v13 longValue];

    ANECReshapeLayerDescInitialize();
    v44 = v47;
    v45 = v48;
    v46 = 1;
    v14 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v43 = 0;
    if (!ANE_CreateUnitValidator(&v43, v14))
    {
      v33 = +[MLCLog framework];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateReshapeUnit_cold_3(v33, v34, v35, v36, v37, v38, v39, v40);
      }

      v7 = 0;
      goto LABEL_23;
    }

    v15 = ANECValidateReshapeLayer();
    v7 = v15 == 0;
    if (v15)
    {
      v16 = v15;
      v17 = +[MLCLog framework];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateReshapeUnit";
        v52 = 1024;
        v53 = v16;
        v54 = 2112;
        v55 = v14;
        v56 = 2112;
        v57 = v6;
        _os_log_error_impl(&dword_238C1D000, v17, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_23;
      }

      v18 = +[MLCLog framework];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v18 = +[MLCLog framework];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    ANE_ValidateReshapeUnit_cold_4(v18, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_22;
  }

  v7 = 0;
LABEL_25:

  v41 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateTransposeUnit(void *a1, void *a2, int a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateTransposeUnit_onceToken != -1)
  {
    ANE_ValidateTransposeUnit_cold_1();
  }

  if ((ANE_ValidateTransposeUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v50, 0, sizeof(v50));
    if (!ANE_BuildANECTensorDesc(v50, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateTransposeUnit_cold_2(v9, v28, v29, v30, v31, v32, v33, v34);
      }

      v7 = 0;
      goto LABEL_27;
    }

    v47 = v8;
    v48 = v5;
    v9 = [v6 objectForKeyedSubscript:@"Params"];
    memset(&v49[1], 0, 88);
    ANECTransposeLayerDescInitialize();
    v10 = [v9 objectForKeyedSubscript:@"TransposeDimensions"];
    v49[1] = [v10 count];
    if ([v10 count])
    {
      v11 = 0;
      v12 = &v49[2];
      do
      {
        v13 = [v10 objectAtIndexedSubscript:v11];
        *__dst = 0;
        *&__dst[8] = 0;
        ANECDimensionMappingInitialize();
        v14 = [v13 objectForKeyedSubscript:@"TransposeSourceDimension"];
        *__dst = v14;
        v15 = [v13 objectForKeyedSubscript:@"TransposeDestinationDimension"];
        *&__dst[8] = v15;
        *v12++ = *__dst;

        ++v11;
      }

      while (v11 < [v10 count]);
    }

    v16 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v49[0] = 0;
    if (!ANE_CreateUnitValidator(v49, v16))
    {
      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateTransposeUnit_cold_3(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      v7 = 0;
      v8 = v47;
      v5 = v48;
      goto LABEL_26;
    }

    v46 = v16;
    v17 = ANECValidateTransposeLayer();
    v45 = v17 == 0;
    if (v17)
    {
      v18 = v17;
      v19 = +[MLCLog framework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315906;
        *&__dst[4] = "ANE_ValidateTransposeUnit";
        *&__dst[12] = 1024;
        *&__dst[14] = v18;
        v52 = 2112;
        v53 = v46;
        v54 = 2112;
        v55 = v6;
        _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v5 = v48;
      v16 = v46;
      v7 = v45;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_26;
      }

      v20 = +[MLCLog framework];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = v48;
      v7 = 1;
      if (!ANECUnitValidatorDelete())
      {
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      v20 = +[MLCLog framework];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    ANE_ValidateTransposeUnit_cold_4(v20, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_25;
  }

  v7 = 0;
LABEL_28:

  v43 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateReductionUnit(void *a1, void *a2, int a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateReductionUnit_onceToken != -1)
  {
    ANE_ValidateReductionUnit_cold_1();
  }

  if ((ANE_ValidateReductionUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v50, 0, sizeof(v50));
    if (!ANE_BuildANECTensorDesc(v50, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateReductionUnit_cold_2(v9, v25, v26, v27, v28, v29, v30, v31);
      }

      v7 = 0;
      goto LABEL_27;
    }

    v9 = [v6 objectForKeyedSubscript:@"Params"];
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    ANECReductionLayerDescInitialize();
    v44 = [v9 objectForKeyedSubscript:@"Type"];

    v45 = @"Bypass";
    v46 = 0x3727C5AC3F800000;
    v10 = [v9 objectForKeyedSubscript:@"Dimension"];
    v47 = [v10 count];
    if ([v10 count])
    {
      v11 = 0;
      do
      {
        v12 = [v10 objectAtIndexedSubscript:v11];
        *(v48 + v11) = v12;

        ++v11;
      }

      while (v11 < [v10 count]);
    }

    v13 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v43 = 0;
    if (!ANE_CreateUnitValidator(&v43, v13))
    {
      v32 = +[MLCLog framework];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateReductionUnit_cold_3(v32, v33, v34, v35, v36, v37, v38, v39);
      }

      v7 = 0;
      goto LABEL_26;
    }

    v42 = v8;
    v14 = ANECValidateReductionLayer();
    v7 = v14 == 0;
    if (v14)
    {
      v15 = v14;
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateReductionUnit";
        v52 = 1024;
        v53 = v15;
        v54 = 2112;
        v55 = v13;
        v56 = 2112;
        v57 = v6;
        _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v8 = v42;
      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_26;
      }

      v17 = +[MLCLog framework];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      v17 = +[MLCLog framework];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    ANE_ValidateReductionUnit_cold_4(v17, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_25;
  }

  v7 = 0;
LABEL_28:

  v40 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL ANE_ValidateBroadcastUnit(void *a1, void *a2, void *a3, int a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (ANE_ValidateBroadcastUnit_onceToken != -1)
  {
    ANE_ValidateBroadcastUnit_cold_1();
  }

  if ((ANE_ValidateBroadcastUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v11 = [v7 objectAtIndexedSubscript:0];
    memset(v52, 0, sizeof(v52));
    if (!ANE_BuildANECTensorDesc(v52, v11, a4))
    {
      v24 = +[MLCLog framework];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateBroadcastUnit_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
      }

      v10 = 0;
      goto LABEL_28;
    }

    memset(v51, 0, sizeof(v51));
    if (ANE_BuildANECTensorDesc(v51, v8, a4))
    {
      v12 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
      v50 = 0;
      if (ANE_CreateUnitValidator(&v50, v12))
      {
        v49 = v12;
        v13 = ANECValidateBroadcastLayer();
        v10 = v13 == 0;
        if (v13)
        {
          v14 = v13;
          v15 = +[MLCLog framework];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __dst[0] = 136315906;
            *&__dst[1] = "ANE_ValidateBroadcastUnit";
            v54 = 1024;
            v55 = v14;
            v56 = 2112;
            v57 = v49;
            v58 = 2112;
            v59 = v9;
            _os_log_error_impl(&dword_238C1D000, v15, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
          }

          v12 = v49;
          if (!ANECUnitValidatorDelete())
          {
            goto LABEL_27;
          }

          v16 = +[MLCLog framework];
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        if (ANECUnitValidatorDelete())
        {
          v16 = +[MLCLog framework];
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
LABEL_26:

            goto LABEL_27;
          }

LABEL_25:
          ANE_ValidateBroadcastUnit_cold_5(v16, v17, v18, v19, v20, v21, v22, v23);
          goto LABEL_26;
        }

LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v39 = +[MLCLog framework];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateBroadcastUnit_cold_4(v39, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    else
    {
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateBroadcastUnit_cold_3(v12, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    v10 = 0;
    goto LABEL_27;
  }

  v10 = 0;
LABEL_29:

  v47 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t ANE_ValidateElementWiseUnit(void *a1, void *a2, int a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateElementWiseUnit_onceToken != -1)
  {
    ANE_ValidateElementWiseUnit_cold_1();
  }

  if (ANE_ValidateElementWiseUnit_isAppleNeuralEngineAvailable)
  {
    v7 = 0;
    goto LABEL_37;
  }

  v8 = [v5 count];
  v65 = v60;
  v9 = MEMORY[0x28223BE20]();
  if (!v9)
  {
LABEL_9:
    v16 = [v6 objectForKeyedSubscript:@"Params"];
    __asm { FMOV            V0.2S, #1.0 }

    v69[1] = _D0;
    v70 = [v16 objectForKeyedSubscript:@"Type"];

    v22 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v69[0] = 0;
    if (!ANE_CreateUnitValidator(v69, v22))
    {
      v42 = +[MLCLog framework];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateElementWiseUnit_cold_3(v42, v43, v44, v45, v46, v47, v48, v49);
      }

      v7 = 0;
      goto LABEL_36;
    }

    v64 = v6;
    v67 = 0;
    v68 = 0;
    v23 = ANECValidateElementWiseLayer();
    v7 = v23 == 0;
    if (v23)
    {
      v24 = v23;
      v61 = v23 == 0;
      v63 = v16;
      v25 = +[MLCLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v77[0]) = 136315906;
        *(v77 + 4) = "ANE_ValidateElementWiseUnit";
        WORD6(v77[0]) = 1024;
        *(v77 + 14) = v24;
        WORD1(v77[1]) = 2112;
        *(&v77[1] + 4) = v22;
        WORD6(v77[1]) = 2112;
        *(&v77[1] + 14) = v64;
        _os_log_error_impl(&dword_238C1D000, v25, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", v77, 0x26u);
      }

      v62 = v22;

      v27 = v68;
      if (v68)
      {
        v28 = 0;
        *&v26 = 136315650;
        v66 = v26;
        do
        {
          memcpy(v77, (v67 + 552 * v28), 0x228uLL);
          v29 = *&v77[0];
          if (*&v77[0])
          {
            v30 = 0;
            do
            {
              v31 = +[MLCLog framework];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = *(v77 + v30 + 1);
                v71 = v66;
                v72 = "ANE_ValidateElementWiseUnit";
                v73 = 2048;
                v74 = v30;
                v75 = 2112;
                v76 = v32;
                _os_log_error_impl(&dword_238C1D000, v31, OS_LOG_TYPE_ERROR, "%s: ANE hardware constraint violation %lu: %@", &v71, 0x20u);
              }

              ++v30;
            }

            while (v29 != v30);
            v27 = v68;
          }

          ++v28;
        }

        while (v28 < v27);
      }

      v33 = ANECUnitValidatorDelete();
      v22 = v62;
      v16 = v63;
      v7 = v61;
      if (!v33)
      {
        goto LABEL_35;
      }

      v34 = +[MLCLog framework];
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_35:
        v6 = v64;
LABEL_36:

        goto LABEL_37;
      }

      v34 = +[MLCLog framework];
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    ANE_ValidateElementWiseUnit_cold_4(v34, v35, v36, v37, v38, v39, v40, v41);
    goto LABEL_34;
  }

  v10 = 0;
  v11 = &v60[-64 * v9];
  while (1)
  {
    memset(v77, 0, 64);
    v12 = [v5 objectAtIndexedSubscript:v10];
    v13 = ANE_BuildANECTensorDesc(v77, v12, a3);

    if (!v13)
    {
      break;
    }

    v14 = v77[1];
    *v11 = v77[0];
    v11[1] = v14;
    v15 = v77[3];
    v11[2] = v77[2];
    v11[3] = v15;
    ++v10;
    v11 += 4;
    if (v8 == v10)
    {
      goto LABEL_9;
    }
  }

  v50 = +[MLCLog framework];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    ANE_ValidateElementWiseUnit_cold_2(v50, v51, v52, v53, v54, v55, v56, v57);
  }

  v7 = 0;
LABEL_37:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateInputViewUnit(void *a1, void *a2, int a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateInputViewUnit_onceToken != -1)
  {
    ANE_ValidateInputViewUnit_cold_1();
  }

  if ((ANE_ValidateInputViewUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v48, 0, sizeof(v48));
    if (!ANE_BuildANECTensorDesc(v48, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateInputViewUnit_cold_2(v9, v26, v27, v28, v29, v30, v31, v32);
      }

      v7 = 0;
      goto LABEL_24;
    }

    v9 = [v6 objectForKeyedSubscript:@"Params"];
    v46 = 0;
    ANECInputViewLayerDescInitialize();
    v47 = [v9 objectForKeyedSubscript:@"Dimension"];

    v10 = [v9 objectForKeyedSubscript:@"Offset"];
    v11 = [v10 unsignedIntegerValue];

    v12 = [v9 objectForKeyedSubscript:@"Size"];
    v13 = [v12 unsignedIntegerValue];

    v44 = v11;
    v45 = v13;
    v14 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v43 = 0;
    if (!ANE_CreateUnitValidator(&v43, v14))
    {
      v33 = +[MLCLog framework];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateInputViewUnit_cold_3(v33, v34, v35, v36, v37, v38, v39, v40);
      }

      v7 = 0;
      goto LABEL_23;
    }

    v15 = ANECValidateInputViewLayer();
    v7 = v15 == 0;
    if (v15)
    {
      v16 = v15;
      v17 = +[MLCLog framework];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateInputViewUnit";
        v50 = 1024;
        v51 = v16;
        v52 = 2112;
        v53 = v14;
        v54 = 2112;
        v55 = v6;
        _os_log_error_impl(&dword_238C1D000, v17, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_23;
      }

      v18 = +[MLCLog framework];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v18 = +[MLCLog framework];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    ANE_ValidateInputViewUnit_cold_4(v18, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_22;
  }

  v7 = 0;
LABEL_25:

  v41 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL ANE_ValidateArgMinMaxUnit(void *a1, void *a2, int a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateArgMinMaxUnit_onceToken != -1)
  {
    ANE_ValidateArgMinMaxUnit_cold_1();
  }

  if ((ANE_ValidateArgMinMaxUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v50, 0, sizeof(v50));
    if (!ANE_BuildANECTensorDesc(v50, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateArgMinMaxUnit_cold_2(v9, v26, v27, v28, v29, v30, v31, v32);
      }

      v7 = 0;
      goto LABEL_29;
    }

    v9 = [v6 objectForKeyedSubscript:@"Params"];
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    ANECKernelSizeInitialize();
    ANECStepInitialize();
    ANECPaddingInitialize();
    *&v45 = [v9 objectForKeyedSubscript:@"Mode"];

    v10 = [v9 objectForKeyedSubscript:@"KernelHeight"];
    v11 = v10;
    if (v10)
    {
      *&v46 = [v10 longValue];
    }

    v12 = [v9 objectForKeyedSubscript:@"KernelWidth"];
    v13 = v12;
    if (v12)
    {
      *(&v45 + 1) = [v12 longValue];
    }

    v14 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v44 = 0;
    if (!ANE_CreateUnitValidator(&v44, v14))
    {
      v33 = +[MLCLog framework];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateArgMinMaxUnit_cold_3(v33, v34, v35, v36, v37, v38, v39, v40);
      }

      v7 = 0;
      goto LABEL_28;
    }

    v15 = ANECValidateArgMinMaxLayer();
    v43 = v15 == 0;
    if (v15)
    {
      v16 = v15;
      v17 = +[MLCLog framework];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateArgMinMaxUnit";
        v52 = 1024;
        v53 = v16;
        v54 = 2112;
        v55 = v14;
        v56 = 2112;
        v57 = v6;
        _os_log_error_impl(&dword_238C1D000, v17, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_27;
      }

      v18 = +[MLCLog framework];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_27:
        v7 = v43;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v18 = +[MLCLog framework];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    ANE_ValidateArgMinMaxUnit_cold_4(v18, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_26;
  }

  v7 = 0;
LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateGOCUnit(void *a1, void *a2, int a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateGOCUnit_onceToken != -1)
  {
    ANE_ValidateGOCUnit_cold_1();
  }

  if ((ANE_ValidateGOCUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v41, 0, sizeof(v41));
    if (!ANE_BuildANECTensorDesc(v41, v8, a3))
    {
      v21 = +[MLCLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateGOCUnit_cold_2(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      v7 = 0;
      goto LABEL_24;
    }

    v40 = 0;
    ANECGOCLayerDescInitialize();
    v9 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v39 = 0;
    if (!ANE_CreateUnitValidator(&v39, v9))
    {
      v29 = +[MLCLog framework];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateGOCUnit_cold_3(v29, v30, v31, v32, v33, v34, v35, v36);
      }

      v7 = 0;
      goto LABEL_23;
    }

    v10 = ANECValidateGOCLayer();
    v7 = v10 == 0;
    if (v10)
    {
      v11 = v10;
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateGOCUnit";
        v43 = 1024;
        v44 = v11;
        v45 = 2112;
        v46 = v9;
        v47 = 2112;
        v48 = v6;
        _os_log_error_impl(&dword_238C1D000, v12, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_23;
      }

      v13 = +[MLCLog framework];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v13 = +[MLCLog framework];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    ANE_ValidateGOCUnit_cold_4(v13, v14, v15, v16, v17, v18, v19, v20);
    goto LABEL_22;
  }

  v7 = 0;
LABEL_25:

  v37 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateMatrixMultUnit(void *a1, void *a2, int a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateMatrixMultUnit_onceToken != -1)
  {
    ANE_ValidateMatrixMultUnit_cold_1();
  }

  if (ANE_ValidateMatrixMultUnit_isAppleNeuralEngineAvailable)
  {
    v7 = 0;
    goto LABEL_37;
  }

  v8 = [v5 count];
  v62 = v57;
  v9 = MEMORY[0x28223BE20]();
  if (!v9)
  {
LABEL_9:
    v16 = [v6 objectForKeyedSubscript:@"Params"];
    v67 = 0;
    v68 = 0;
    ANECMatrixMultLayerDescInitialize();
    v17 = [v16 objectForKeyedSubscript:@"Bias"];
    LOBYTE(v67) = v17 != 0;

    v18 = [v6 objectForKeyedSubscript:@"OutputChannels"];
    v68 = [v18 longValue];

    v19 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v66 = 0;
    if (!ANE_CreateUnitValidator(&v66, v19))
    {
      v39 = +[MLCLog framework];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateMatrixMultUnit_cold_3(v39, v40, v41, v42, v43, v44, v45, v46);
      }

      v7 = 0;
      goto LABEL_36;
    }

    v61 = v6;
    v64 = 0;
    v65 = 0;
    v20 = ANECValidateMatrixMultLayer();
    v7 = v20 == 0;
    if (v20)
    {
      v21 = v20;
      v58 = v20 == 0;
      v60 = v16;
      v22 = +[MLCLog framework];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v75[0]) = 136315906;
        *(v75 + 4) = "ANE_ValidateMatrixMultUnit";
        WORD6(v75[0]) = 1024;
        *(v75 + 14) = v21;
        WORD1(v75[1]) = 2112;
        *(&v75[1] + 4) = v19;
        WORD6(v75[1]) = 2112;
        *(&v75[1] + 14) = v61;
        _os_log_error_impl(&dword_238C1D000, v22, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", v75, 0x26u);
      }

      v59 = v19;

      v24 = v65;
      if (v65)
      {
        v25 = 0;
        *&v23 = 136315650;
        v63 = v23;
        do
        {
          memcpy(v75, (v64 + 552 * v25), 0x228uLL);
          v26 = *&v75[0];
          if (*&v75[0])
          {
            v27 = 0;
            do
            {
              v28 = +[MLCLog framework];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = *(v75 + v27 + 1);
                v69 = v63;
                v70 = "ANE_ValidateMatrixMultUnit";
                v71 = 2048;
                v72 = v27;
                v73 = 2112;
                v74 = v29;
                _os_log_error_impl(&dword_238C1D000, v28, OS_LOG_TYPE_ERROR, "%s: ANE hardware constraint violation %lu: %@", &v69, 0x20u);
              }

              ++v27;
            }

            while (v26 != v27);
            v24 = v65;
          }

          ++v25;
        }

        while (v25 < v24);
      }

      v30 = ANECUnitValidatorDelete();
      v19 = v59;
      v16 = v60;
      v7 = v58;
      if (!v30)
      {
        goto LABEL_35;
      }

      v31 = +[MLCLog framework];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_35:
        v6 = v61;
LABEL_36:

        goto LABEL_37;
      }

      v31 = +[MLCLog framework];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    ANE_ValidateMatrixMultUnit_cold_4(v31, v32, v33, v34, v35, v36, v37, v38);
    goto LABEL_34;
  }

  v10 = 0;
  v11 = &v57[-64 * v9];
  while (1)
  {
    memset(v75, 0, 64);
    v12 = [v5 objectAtIndexedSubscript:v10];
    v13 = ANE_BuildANECTensorDesc(v75, v12, a3);

    if (!v13)
    {
      break;
    }

    v14 = v75[1];
    *v11 = v75[0];
    v11[1] = v14;
    v15 = v75[3];
    v11[2] = v75[2];
    v11[3] = v15;
    ++v10;
    v11 += 4;
    if (v8 == v10)
    {
      goto LABEL_9;
    }
  }

  v47 = +[MLCLog framework];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    ANE_ValidateMatrixMultUnit_cold_2(v47, v48, v49, v50, v51, v52, v53, v54);
  }

  v7 = 0;
LABEL_37:

  v55 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ANE_ValidateLayerNormUnit(void *a1, void *a2, int a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (ANE_ValidateLayerNormUnit_onceToken != -1)
  {
    ANE_ValidateLayerNormUnit_cold_1();
  }

  if ((ANE_ValidateLayerNormUnit_isAppleNeuralEngineAvailable & 1) == 0)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    memset(v50, 0, sizeof(v50));
    if (!ANE_BuildANECTensorDesc(v50, v8, a3))
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateLayerNormUnit_cold_2(v9, v13, v14, v15, v16, v17, v18, v19);
      }

      v7 = 0;
      goto LABEL_30;
    }

    v9 = [v6 objectForKeyedSubscript:@"Params"];
    v10 = [v6 objectForKeyedSubscript:@"NumGroups"];
    if (v10)
    {
      v11 = [v6 objectForKeyedSubscript:@"NumGroups"];
      v12 = [v11 unsignedIntegerValue];
    }

    else
    {
      v12 = 1;
    }

    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v47 = 0u;
    ANECLayerNormLayerDescInitialize();
    v20 = [v9 objectForKeyedSubscript:@"Dimension"];
    *&v47 = [v20 count];
    if ([v20 count])
    {
      v21 = 0;
      do
      {
        v22 = [v20 objectAtIndexedSubscript:v21];

        *(v48 + v21++) = v22;
      }

      while (v21 < [v20 count]);
    }

    *(&v47 + 1) = v12;
    v23 = [softLinkClass_ANEDeviceInfo_1() aneSubType];
    v46 = 0;
    if (!ANE_CreateUnitValidator(&v46, v23))
    {
      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        ANE_ValidateLayerNormUnit_cold_3(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      v7 = 0;
      goto LABEL_29;
    }

    v45 = v8;
    v24 = ANECValidateLayerNormLayer();
    v7 = v24 == 0;
    if (v24)
    {
      v25 = v24;
      v26 = +[MLCLog framework];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 136315906;
        *&__dst[1] = "ANE_ValidateLayerNormUnit";
        v52 = 1024;
        v53 = v25;
        v54 = 2112;
        v55 = v23;
        v56 = 2112;
        v57 = v6;
        _os_log_error_impl(&dword_238C1D000, v26, OS_LOG_TYPE_ERROR, "%s: error code=%d from ANEC validate API. ANE hardware constraints violated on archType=%@ by unit=%@", __dst, 0x26u);
      }

      v8 = v45;
      v7 = v7;
      if (!ANECUnitValidatorDelete())
      {
        goto LABEL_29;
      }

      v27 = +[MLCLog framework];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!ANECUnitValidatorDelete())
      {
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }

      v27 = +[MLCLog framework];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    ANE_ValidateLayerNormUnit_cold_4(v27, v28, v29, v30, v31, v32, v33, v34);
    goto LABEL_28;
  }

  v7 = 0;
LABEL_31:

  v43 = *MEMORY[0x277D85DE8];
  return v7;
}

void __isAppleNeuralEngineAPIAvailable_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_2 != -1)
  {
    __isAppleNeuralEngineAPIAvailable_block_invoke_cold_1();
  }

  if (AppleNeuralEngineLibrary_frameworkLibrary_2 && softLinkClass_ANEDeviceInfo_1())
  {
    v0 = 1;
  }

  else
  {
    v1 = +[MLCLog framework];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __isAppleNeuralEngineAPIAvailable_block_invoke_cold_2(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    v0 = 0;
  }

  isAppleNeuralEngineAPIAvailable_isAvailable = v0;
}

void *__AppleNeuralEngineLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleNeuralEngine.framework/AppleNeuralEngine", 1);
  AppleNeuralEngineLibrary_frameworkLibrary_2 = result;
  return result;
}

id ANE_BuildReductionParams(int a1, void *a2, unint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v7 = ANE_Get4DReductionDimensions(a3, v5);
  if (!v7)
  {
    v13 = 0;
    goto LABEL_27;
  }

  v24 = xmmword_278A69308;
  v25 = *off_278A69318;
  if ((a1 - 1) < 4)
  {
    [v6 setObject:@"Reduction" forKeyedSubscript:{kMLCANENetUnitType[0], v24, v25}];
    [v6 setObject:*(&v24 + (a1 - 1)) forKeyedSubscript:@"Type"];
    v8 = [MEMORY[0x277CBEBF8] mutableCopy];
    if ([v7 count])
    {
      v9 = 0;
      do
      {
        v10 = [v7 objectAtIndexedSubscript:v9];
        v11 = ANE_GetANECIRDimension([v10 unsignedIntegerValue]);

        [v8 addObject:v11];
        ++v9;
      }

      while (v9 < [v7 count]);
    }

    v12 = [v8 copy];
    [v6 setObject:v12 forKeyedSubscript:@"Dimension"];

    goto LABEL_20;
  }

  if ((a1 - 5) > 1)
  {
    v18 = [MLCLog framework:v24];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ANE_BuildReductionParams_cold_2();
    }
  }

  else
  {
    [v6 setObject:@"ArgMinMax" forKeyedSubscript:{kMLCANENetUnitType[0], v24, v25}];
    v14 = [v7 objectAtIndexedSubscript:0];
    v15 = [v14 unsignedIntegerValue];

    if ((v15 - 2) < 2)
    {
      v16 = @"SpatialArgMax";
      v17 = @"SpatialArgMin";
LABEL_16:
      if (a1 == 6)
      {
        v19 = v17;
      }

      else
      {
        v19 = v16;
      }

      [v6 setObject:v19 forKeyedSubscript:@"Mode"];
LABEL_20:
      v13 = [v6 copy];
      goto LABEL_25;
    }

    if (v15 == 1)
    {
      v16 = @"ChannelArgMax";
      v17 = @"ChannelArgMin";
      goto LABEL_16;
    }

    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ANE_BuildReductionParams_cold_1(v7);
    }
  }

  v13 = 0;
LABEL_25:
  for (i = 24; i != -8; i -= 8)
  {
  }

LABEL_27:

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

id ANE_Get4DReductionDimensions(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 < 5)
  {
    v4 = [MEMORY[0x277CBEBF8] mutableCopy];
    if ([v3 count])
    {
      v6 = 0;
      do
      {
        v7 = [v3 objectAtIndexedSubscript:v6];
        v8 = [v7 unsignedIntegerValue];

        v11 = 1;
        ANE_GetDimensionIn4DWithOnePrepended(a1, v8, &v11);
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        [v4 addObject:v9];

        ++v6;
      }

      while (v6 < [v3 count]);
    }

    v5 = [v4 copy];
  }

  else
  {
    v4 = +[MLCLog framework];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ANE_Get4DReductionDimensions_cold_1(v4);
    }

    v5 = 0;
  }

  return v5;
}

id ANE_CreateReductionLayer(int a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = ANE_BuildReductionParams(a1, v5, a3);

  if (v7)
  {
    v8 = [_MLCANEReductionParameters reductionUnitParametersWith:v7];
    v9 = [MLCANEDeviceOps deviceOpsWithType:30 params:v8];
    if (v9)
    {
      [v6 addObject:v9];
    }

    v10 = v6;
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateReductionLayer_cold_1(v11);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

id ANE_CompileReductionLayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [a3 parentLayers];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v6 objectAtIndexedSubscript:0];

  v10 = [v9 params];
  v11 = [v10 reductionParams];
  v12 = [v11 mutableCopy];

  v13 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = [v5 objectAtIndexedSubscript:0];
  v29 = 1;
  v30 = 1;
  ANE_GetTensorWidthAndHeightWithOnePrepended(v14, &v30, &v29);
  v15 = [v14 descriptor];
  v16 = [v15 shape];
  v17 = [v16 count];
  v18 = [v8 dimensions];
  v19 = ANE_Get4DReductionDimensions(v17, v18);

  v20 = [v8 reductionType];
  if ((v20 - 1) < 4)
  {
    v21 = [_MLCANEPlistBuilder createUnitWithLayer:v8 unitParams:v12];
    if ((ANE_ValidateReductionUnit(v5, v21, 1) & 1) == 0)
    {
      v22 = +[MLCLog framework];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

LABEL_14:
    [v13 addObject:v21];

    v27 = [v13 copy];
    goto LABEL_19;
  }

  if ((v20 - 5) > 1)
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileReductionLayer_cold_4(v8);
    }

    goto LABEL_18;
  }

  v23 = [v19 objectAtIndexedSubscript:0];
  v24 = [v23 unsignedIntegerValue];

  if (v24 != 1)
  {
    if (v24 == 3)
    {
      [v12 setObject:&unk_284BA5AB0 forKeyedSubscript:@"KernelHeight"];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
      [v12 setObject:v26 forKeyedSubscript:@"KernelWidth"];
    }

    else
    {
      if (v24 != 2)
      {
        v21 = +[MLCLog framework];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          ANE_CompileReductionLayer_cold_3(v19);
        }

        goto LABEL_18;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
      [v12 setObject:v25 forKeyedSubscript:@"KernelHeight"];

      [v12 setObject:&unk_284BA5AB0 forKeyedSubscript:@"KernelWidth"];
    }
  }

  v21 = [_MLCANEPlistBuilder createUnitWithLayer:v8 unitParams:v12];
  if (ANE_ValidateArgMinMaxUnit(v5, v21, 1))
  {
    goto LABEL_14;
  }

  v22 = +[MLCLog framework];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    ANE_CompileReductionLayer_cold_1();
  }

LABEL_17:

LABEL_18:
  v27 = 0;
LABEL_19:

  return v27;
}

id ANE_CreateSoftmaxLayer(int a1, unint64_t a2, unint64_t a3)
{
  v16 = 1;
  ANE_GetDimensionIn4DWithOnePrepended(a3, a2, &v16);
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  [v5 setObject:@"Softmax" forKeyedSubscript:kMLCANENetUnitType[0]];
  v6 = ANE_GetANECIRDimension(v16);
  [v5 setObject:v6 forKeyedSubscript:@"Dimension"];

  if (a1 == 1)
  {
    v7 = MEMORY[0x277CBEC10];
    v8 = [MEMORY[0x277CBEC10] mutableCopy];
    [v8 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
    [v8 setObject:@"Log2" forKeyedSubscript:@"Type"];
    v9 = [v7 mutableCopy];
    [v9 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
    v15 = 1060205080;
    v14 = 0;
    ANE_ConvertFp32ToInt16(&v15, &v14);
    v10 = [MEMORY[0x277CCABB0] numberWithShort:v14];
    [v9 setObject:v10 forKeyedSubscript:@"ScaleScalar"];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11 = [_MLCANESoftmaxParameters softmaxUnitParametersWith:v5 neuronParams:v8 gocParams:v9];
  v12 = [MLCANEDeviceOps deviceOpsWithType:12 params:v11];
  if (v12)
  {
    [v4 addObject:v12];
  }

  return v4;
}

id ANE_CompileSoftmaxLayer(void *a1, uint64_t a2, void *a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [a3 parentLayers];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [v4 objectAtIndexedSubscript:0];

  v8 = [v7 params];
  v9 = [v8 softmaxParams];
  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  v11 = [_MLCANEPlistBuilder createUnitWithLayer:v6 unitParams:v9];
  v12 = [v6 sourceTensors];
  v13 = ANE_ValidateSoftmaxUnit(v12, v11, 1);

  if ((v13 & 1) == 0)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileSoftmaxLayer_cold_1();
    }

    goto LABEL_10;
  }

  [v10 addObject:v11];
  if ([v6 operation] == 1)
  {
    v14 = [v6 label];
    v15 = [v14 stringByAppendingString:@"_0"];

    v16 = [v6 label];
    v17 = [v16 stringByAppendingString:@"_1"];

    v18 = [v6 label];
    v43 = [v18 stringByAppendingString:@"_2"];

    [v11 setObject:v15 forKeyedSubscript:@"Name"];
    v19 = [v8 neuronParams];
    if (v19)
    {
      v40 = v19;
      v20 = [_MLCANEPlistBuilder createUnitWithLayer:v6 unitParams:v19];
      v21 = v17;
      v22 = v20;
      v42 = v21;
      [v20 setObject:? forKeyedSubscript:?];
      v41 = v15;
      v45[0] = v15;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
      [v22 setObject:v23 forKeyedSubscript:@"Bottom"];

      v24 = [v6 sourceTensors];
      v25 = ANE_ValidateNeuronUnit(v24, v22, 1);

      if (v25)
      {
        [v10 addObject:v22];
        v26 = [v8 gocParams];
        if (v26)
        {
          v39 = v26;
          v27 = [_MLCANEPlistBuilder createUnitWithLayer:v6 unitParams:v26];
          [v27 setObject:v43 forKeyedSubscript:@"Name"];
          v44 = v42;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
          [v27 setObject:v28 forKeyedSubscript:@"Bottom"];

          v29 = [v6 sourceTensors];
          v30 = ANE_ValidateGOCUnit(v29, v27, 1);

          v38 = v30;
          if (v30)
          {
            [v10 addObject:v27];
            v31 = v41;
          }

          else
          {
            v35 = +[MLCLog framework];
            v31 = v41;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              ANE_CompileSoftmaxLayer_cold_1();
            }
          }

          if (v38)
          {
            goto LABEL_24;
          }

LABEL_11:
          v32 = 0;
          goto LABEL_25;
        }

        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          ANE_CompileSoftmaxLayer_cold_4(v34);
        }
      }

      else
      {
        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          ANE_CompileSoftmaxLayer_cold_1();
        }
      }

      goto LABEL_11;
    }

    v33 = +[MLCLog framework];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileSoftmaxLayer_cold_5(v33);
    }

LABEL_10:
    goto LABEL_11;
  }

LABEL_24:
  v32 = [v10 copy];
LABEL_25:

  v36 = *MEMORY[0x277D85DE8];

  return v32;
}

id buildBNNSDescInputWeightMomentumForOneGate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = 0u;
  v11 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v5 = a3 - 1;
  if (!a5)
  {
    a1 = a2;
  }

  if (a5)
  {
    v5 = 1;
  }

  v7 = 1;
  if (a4)
  {
    v7 = 2;
  }

  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = v7;
  *&v12 = v5;
  DWORD1(v20) = 1065353216;
  LODWORD(v19) = 65568;
  DWORD1(v10) = 131328;
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:176];

  return v8;
}

id buildBNNSDescHiddenWeightMomentumForOneGate(uint64_t a1, unint64_t a2, int a3)
{
  v6 = 0u;
  v7 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = 1;
  if (a3)
  {
    v3 = 2;
  }

  v13 = 0uLL;
  v14 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  *(&v6 + 1) = a1;
  *&v7 = a1;
  *(&v7 + 1) = v3;
  v8 = a2;
  DWORD1(v16) = 1065353216;
  LODWORD(v15) = 65568;
  DWORD1(v6) = 131328;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:176];

  return v4;
}

id createNewBNNSNDArrayForLSTM(size_t a1, _OWORD *a2)
{
  v2 = a2[9];
  v10 = a2[8];
  v11 = v2;
  v12 = a2[10];
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  *(&v10 + 1) = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:176];

  return v7;
}

BOOL CPU_BuildBNNSLSTMInputAndOutput(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a1[2] = a2;
  a1[4] = a3;
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[3];
  v12 = *(a1 + 11);
  v13 = a5;
  v14 = [v13 combinedInputsBuffer];
  v31 = [v13 combinedOutputsBuffer];

  if (v10 == a4)
  {
    v15 = v12 & 1;
    v29 = v12 & 1;
    if (v12)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    a1[29] = a4;
    a1[30] = a2;
    a1[31] = a3;
    *(a1 + 92) = 65568;
    a1[51] = v9;
    a1[52] = a2;
    a1[53] = v16;
    a1[54] = v11;
    *(a1 + 136) = 65568;
    a1[73] = v9;
    a1[74] = a2;
    a1[75] = v16;
    a1[76] = v11;
    v28 = v14;
    v17 = v9 * a2 * (v11 << v15);
    *(a1 + 180) = 65568;
    v30 = a4;
    v27 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v17 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v17, 1}];
    a1[89] = [v27 bytes];
    v25 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v17 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v17, 1}];
    a1[67] = [v25 bytes];
    v26 = a3 * a2;
    v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(a3 * a2 * a4 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * a3 * a2 * a4, 1}];
    a1[45] = [v18 bytes];
    a1[95] = v9;
    a1[96] = v16;
    a1[97] = a2;
    a1[98] = a3;
    *(a1 + 224) = 65568;
    a1[117] = v9;
    a1[118] = a2;
    a1[119] = v16;
    a1[120] = v11;
    *(a1 + 268) = 65568;
    a1[139] = v9;
    a1[140] = a2;
    a1[141] = v16;
    a1[142] = v11;
    *(a1 + 312) = 65568;
    v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v17 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v17, 1}];
    a1[133] = [v19 bytes];
    v20 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v17 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v17, 1}];
    a1[155] = [v20 bytes];
    [v28 addObject:v18];
    [v28 addObject:v25];
    [v28 addObject:v27];
    v21 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_malloc(4 * v9 * (v26 << v29) length:0x100004052888210uLL) freeWhenDone:{4 * v9 * (v26 << v29), 1}];
    a1[111] = [v21 bytes];
    v22 = v31;
    [v31 addObject:v21];
    [v31 addObject:v19];
    [v31 addObject:v20];

    a4 = v30;
    v14 = v28;
  }

  else
  {
    v22 = v31;
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      CPU_BuildBNNSLSTMInputAndOutput_cold_1(v10, a4, v23);
    }
  }

  return v10 == a4;
}

void setBiasOptimizerData(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v32 = a2;
  v7 = [v27 numLayers];
  v8 = [v27 biDirectional];
  v9 = [v27 hiddenSize];
  v10 = [v27 biasMomentumData];
  v26 = a4;
  v11 = [v10 objectAtIndexedSubscript:a4];

  v25 = v11;
  v12 = v8;
  __n = 4 * v9;
  v31 = *([v11 bytes] + 136);
  v13 = v7;
  if (v7)
  {
    v14 = v9;
    v15 = 0;
    do
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = v17;
        v19 = (v31 + 4 * (v16 + (v15 << v12)) * v14);
        v20 = [v32 objectAtIndexedSubscript:a3 + 4 * (v15 + v16 * v13)];
        v21 = [v20 optimizerData];
        v22 = [v21 objectAtIndexedSubscript:a5];
        memcpy(v19, [v22 bytes], __n);

        if (!v12)
        {
          break;
        }

        v17 = 0;
        v16 = 1;
      }

      while ((v18 & 1) != 0);
      ++v15;
    }

    while (v15 != v13);
  }

  v23 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v31 length:__n * (v13 << v12) freeWhenDone:0];
  v24 = [v27 biasMomentumDataBytes];
  [v24 setObject:v23 atIndexedSubscript:v26];
}

void setBNNSLSTMGateDesc(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 inputSize];
  v5 = [v3 hiddenSize];
  v6 = [v3 isBidirectional];
  v7 = v6;
  if (v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v3 layerCount];
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = 1;
  *(a1 + 360) = v5;
  *(a1 + 368) = v5;
  *(a1 + 376) = v8;
  *(a1 + 384) = v9;
  *(a1 + 516) = 1065353216;
  *(a1 + 164) = 1065353216;
  *(a1 + 144) = 65568;
  *(a1 + 496) = 65568;
  *(a1 + 4) = 131328;
  *(a1 + 356) = 131328;
  v10 = [v3 usesBiases];

  if (v10)
  {
    *(a1 + 712) = v5;
    *(a1 + 720) = v8;
    *(a1 + 728) = v9;
    *(a1 + 776) = 1;
    *(a1 + 784) = v5;
    *(a1 + 792) = v5 << v7;
    *(a1 + 868) = 1065353216;
    *(a1 + 848) = 65568;
    *(a1 + 708) = 229376;
  }

  if (v9 >= 2)
  {
    *(a1 + 184) = v5;
    *(a1 + 192) = v5;
    *(a1 + 200) = v8;
    *(a1 + 208) = v9 - 1;
    *(a1 + 340) = 1065353216;
    *(a1 + 320) = 65568;
    *(a1 + 180) = 131328;
  }
}

void addInputWeightPointersToGate(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, void *a6, int a7)
{
  v13 = a2;
  v14 = a6;
  if (a7)
  {
    if (a3)
    {
      v15 = 16;
    }

    else
    {
      v15 = 8;
    }

    v16 = malloc_type_malloc(v15, 0x80040B8603338uLL);
    if (v16)
    {
      v17 = v16;
      v18 = [v13 objectAtIndexedSubscript:a5];
      v19 = [v18 data];
      *v17 = [v19 bytes];

      if (a3)
      {
        v20 = [v13 objectAtIndexedSubscript:a5 + 4 * a4];
        v21 = [v20 data];
        v17[1] = [v21 bytes];
      }

      v22 = 136;
LABEL_21:
      *(a1 + v22) = v17;
      v32 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v17 length:v15 freeWhenDone:1];
      [v14 addObject:v32];
      goto LABEL_22;
    }

    v32 = +[MLCLog framework];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      addInputWeightPointersToGate_cold_1(v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }

  else
  {
    v42 = a1;
    v23 = a4 - 1;
    v15 = 8 * ((a4 - 1) << a3);
    v24 = malloc_type_malloc(v15, 0x80040B8603338uLL);
    if (v24)
    {
      v17 = v24;
      if (a4 < 2)
      {
        v22 = 312;
        a1 = v42;
      }

      else
      {
        v40 = 8 * ((a4 - 1) << a3);
        v41 = v14;
        v25 = 0;
        v26 = a5 + 4;
        v43 = 4 * a4;
        do
        {
          v27 = [v13 objectAtIndexedSubscript:{v26, v40, v41}];
          v28 = [v27 data];
          v29 = &v17[v25 << a3];
          *v29 = [v28 bytes];

          if (a3)
          {
            v30 = [v13 objectAtIndexedSubscript:v43 + v26];
            v31 = [v30 data];
            v29[1] = [v31 bytes];
          }

          v26 += 4;
          ++v25;
        }

        while (v23 != v25);
        v14 = v41;
        a1 = v42;
        v15 = v40;
        v22 = 312;
      }

      goto LABEL_21;
    }

    v32 = +[MLCLog framework];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

LABEL_22:
}

id createParameterPointersForGate(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  v11 = malloc_type_malloc(8 * (a3 << a4), 0x80040B8603338uLL);
  if (v11)
  {
    v12 = v11;
    v29 = v10;
    if (a3)
    {
      v13 = 0;
      do
      {
        v14 = [v9 objectAtIndexedSubscript:a2];
        v15 = [v14 data];
        v16 = &v12[8 * (v13 << a4)];
        *v16 = [v15 bytes];

        if (a4)
        {
          v17 = [v9 objectAtIndexedSubscript:4 * a3 + a2];
          v18 = [v17 data];
          *(v16 + 1) = [v18 bytes];
        }

        ++v13;
        a2 += 4;
      }

      while (a3 != v13);
    }

    v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v12 length:8 * (a3 << a4) freeWhenDone:1];
    v10 = v29;
    [v29 addObject:v19];
  }

  else
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      createParameterPointersForGate_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v19 = 0;
  }

  return v19;
}

id createBiDirectionalAndStackedGateWeightData(size_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v22 = a1;
  v23 = a7;
  v26 = malloc_type_malloc(a1, 0xBB3D39FCuLL);
  if (a4)
  {
    v13 = 0;
    v24 = 4 * a4;
    do
    {
      v14 = &v26[4 * (v13 << a3)];
      v15 = [v12 objectAtIndexedSubscript:a5];
      v16 = [v15 data];
      memcpy(v14, [v16 bytes], 4 * a6);

      if (a3)
      {
        v17 = &v14[4 * a6];
        v18 = [v12 objectAtIndexedSubscript:v24 + a5];
        v19 = [v18 data];
        memcpy(v17, [v19 bytes], 4 * a6);
      }

      a5 += 4;
      v13 += a6;
      --a4;
    }

    while (a4);
  }

  v20 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v26 length:v22 freeWhenDone:1];
  [v23 addObject:v20];

  return v20;
}

NSObject *ANE_CreatePoolingLayer(void *a1, void *a2)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ([v3 dilationRateInX] <= 1 && objc_msgSend(v3, "dilationRateInY") < 2)
  {
    v4 = [MEMORY[0x277CBEBF8] mutableCopy];
    v6 = [MEMORY[0x277CBEC10] mutableCopy];
    [v6 setObject:@"Pooling" forKeyedSubscript:kMLCANENetUnitType[0]];
    v7 = [v3 poolingType];
    switch(v7)
    {
      case 1:
        v9 = @"Max";
        v10 = @"Negative";
        goto LABEL_13;
      case 3:
        v11 = +[MLCLog framework];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          ANE_CreatePoolingLayer_cold_1(v3);
        }

        break;
      case 2:
        v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "countIncludesPadding") ^ 1}];
        [v6 setObject:v8 forKeyedSubscript:@"AverageCountExcludePadding"];

        v9 = @"Avg";
        v10 = @"Zero";
LABEL_13:
        [v6 setObject:v9 forKeyedSubscript:@"Type"];
        [v6 setObject:v10 forKeyedSubscript:@"PaddingMode"];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "kernelWidth")}];
        [v6 setObject:v12 forKeyedSubscript:@"KernelWidth"];

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "kernelHeight")}];
        [v6 setObject:v13 forKeyedSubscript:@"KernelHeight"];

        [v6 setObject:&unk_284BA5AC8 forKeyedSubscript:@"KernelDepth"];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "strideInX")}];
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "strideInY", v14)}];
        v24[1] = v15;
        v24[2] = &unk_284BA5AC8;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];

        [v6 setObject:v11 forKeyedSubscript:@"Step"];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*a2];
        [v6 setObject:v16 forKeyedSubscript:@"PadLeft"];

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2[1]];
        [v6 setObject:v17 forKeyedSubscript:@"PadRight"];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2[2]];
        [v6 setObject:v18 forKeyedSubscript:@"PadTop"];

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2[3]];
        [v6 setObject:v19 forKeyedSubscript:@"PadBot"];

        [v6 setObject:&unk_284BA5AE0 forKeyedSubscript:@"PadFront"];
        [v6 setObject:&unk_284BA5AE0 forKeyedSubscript:@"PadBack"];
        v20 = [_MLCANEPoolingParameters poolingUnitParametersWith:v6];
        v21 = [MLCANEDeviceOps deviceOpsWithType:11 params:v20];
        if (v21)
        {
          [v4 addObject:v21];
        }

        v5 = v4;

        goto LABEL_19;
      default:
        v11 = +[MLCLog framework];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        break;
    }

    v5 = MEMORY[0x277CBEBF8];
LABEL_19:

    goto LABEL_20;
  }

  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ANE_CreatePoolingLayer_cold_3();
  }

  v5 = MEMORY[0x277CBEBF8];
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t ANE_ValidatePoolingLayer(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sourceTensors];
  v5 = ANE_ValidatePoolingUnit(v4, v3, 1);

  return v5;
}

id ANE_CompilePoolingLayer(void *a1, void *a2, void *a3)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v45 = [MEMORY[0x277CBEBF8] mutableCopy];
  v8 = [v6 parentLayers];
  v9 = [v8 objectAtIndexedSubscript:0];

  v10 = [v7 objectAtIndexedSubscript:0];

  v44 = v10;
  v11 = [v10 params];
  v12 = [v11 poolingParams];
  v13 = [v12 mutableCopy];

  v14 = [v5 objectAtIndexedSubscript:0];
  v15 = [v14 descriptor];
  v16 = [v15 dimensionCount];

  if (v16 != 4)
  {
    if (v16 != 3)
    {
      v29 = +[MLCLog framework];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        ANE_CompilePoolingLayer_cold_6();
      }

LABEL_17:

      v30 = 0;
      v27 = v45;
      goto LABEL_22;
    }

    [v13 setObject:&unk_284BA5AC8 forKeyedSubscript:@"KernelHeight"];
    v17 = [v13 objectForKeyedSubscript:@"Step"];
    v18 = [v17 mutableCopy];

    [v18 setObject:&unk_284BA5AC8 atIndexedSubscript:1];
    v19 = [v18 copy];
    [v13 setObject:v19 forKeyedSubscript:@"Step"];

    [v13 setObject:&unk_284BA5AE0 forKeyedSubscript:@"PadTop"];
    [v13 setObject:&unk_284BA5AE0 forKeyedSubscript:@"PadBot"];
  }

  v20 = [v13 objectForKeyedSubscript:@"KernelWidth"];
  v21 = [v20 unsignedIntegerValue];

  v22 = [v13 objectForKeyedSubscript:@"KernelHeight"];
  v23 = [v22 unsignedIntegerValue];

  v48 = 0;
  v49 = 0;
  v24 = [v5 objectAtIndexedSubscript:0];
  ANE_GetTensorWidthAndHeightWithBatchFirst(v24, &v49, &v48);

  v46 = 0;
  v47 = 0;
  ANE_GetTensorWidthAndHeightWithBatchFirst(v6, &v47, &v46);
  if (v21 == v49 && v23 == v48 && v47 == 1 && v46 == 1)
  {
    if ([MLCPlatformInfo isAneSubTypeVersionGreaterThanOrEqualTo:13])
    {
      v25 = [v9 descriptor];
      v26 = [v25 poolingType];

      if (v26 == 1)
      {
        v28 = 3;
        v27 = v45;
      }

      else
      {
        v27 = v45;
        if (v26 != 2)
        {
          v42 = +[MLCLog framework];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            ANE_CompilePoolingLayer_cold_5();
          }

          goto LABEL_21;
        }

        v28 = 2;
      }

      if (v16 == 4)
      {
        v29 = &unk_284BA6098;
      }

      else
      {
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
        v50[0] = v37;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
      }

      v38 = ANE_BuildReductionParams(v28, v29, v16);
      if (v38)
      {
        v31 = v38;
        v39 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v38];
        v40 = [v9 sourceTensors];
        v41 = ANE_ValidateReductionUnit(v40, v39, 1);

        if (v41)
        {
          v27 = v45;
          [v45 addObject:v39];

          goto LABEL_37;
        }

        v43 = +[MLCLog framework];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          ANE_CompilePoolingLayer_cold_3(v39, v9, v43);
        }

        goto LABEL_17;
      }

      v31 = +[MLCLog framework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        ANE_CompilePoolingLayer_cold_4();
      }
    }

    else
    {
      v34 = [v13 objectForKeyedSubscript:@"Step"];
      v29 = [v34 mutableCopy];

      [v29 setObject:&unk_284BA5AC8 atIndexedSubscript:0];
      [v29 setObject:&unk_284BA5AC8 atIndexedSubscript:1];
      v35 = [v29 copy];
      [v13 setObject:v35 forKeyedSubscript:@"Step"];

      v31 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v13];
      if (ANE_ValidatePoolingLayer(v9, v31))
      {
        v27 = v45;
        [v45 addObject:v31];
LABEL_37:

        goto LABEL_14;
      }

      v36 = +[MLCLog framework];
      v27 = v45;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        ANE_CompilePoolingLayer_cold_1();
      }
    }
  }

  else
  {
    v29 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v13];
    if (ANE_ValidatePoolingLayer(v9, v29))
    {
      v27 = v45;
      [v45 addObject:v29];
LABEL_14:

      v30 = [v27 copy];
      goto LABEL_22;
    }

    v31 = +[MLCLog framework];
    v27 = v45;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      ANE_CompilePoolingLayer_cold_1();
    }
  }

LABEL_21:
  v30 = 0;
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

id CPU_CreateLossLayer(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v4 = [v2 lossType];
  v5 = v4;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      LODWORD(v21[0]) = v7;
      DWORD2(v22) = getBNNSLossReductionFunction([v2 reductionType]);
      goto LABEL_18;
    }

    if (!v4)
    {
      v6 = 9;
      goto LABEL_24;
    }

    if (v4 == 1)
    {
      v6 = 3;
      goto LABEL_24;
    }
  }

  else
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        v6 = 10;
      }

      else
      {
        v6 = 8;
      }

      goto LABEL_24;
    }

    switch(v4)
    {
      case 6:
        LODWORD(v21[0]) = 4;
        DWORD2(v22) = getBNNSLossReductionFunction([v2 reductionType]);
LABEL_20:
        [v2 delta];
        goto LABEL_21;
      case 7:
        v6 = 7;
        goto LABEL_24;
      case 8:
        v6 = 6;
LABEL_24:
        LODWORD(v21[0]) = v6;
        DWORD2(v22) = getBNNSLossReductionFunction([v2 reductionType]);
        goto LABEL_25;
    }
  }

  v18 = +[MLCLog framework];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    CPU_CreateLossLayer_cold_1();
  }

  LODWORD(v21[0]) = 1;
  DWORD2(v22) = getBNNSLossReductionFunction([v2 reductionType]);
  if (v5 == 6)
  {
    goto LABEL_20;
  }

  if (v5 == 3 || v5 == 2)
  {
LABEL_18:
    [v2 labelSmoothing];
LABEL_21:
    HIDWORD(v22) = v8;
  }

LABEL_25:
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:368];
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:176];
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:176];
  v24[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v23 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v14 = [MLCCPUDeviceOps deviceOpsWithType:12 params:v9 inDeltaData:v12 outDeltaData:v13 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v14)
  {
    [v2 weight];
    [v14 setLossWeight:?];
    [v3 addObject:v14];
  }

  v15 = [v3 copy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t getBNNSLossReductionFunction(unsigned int a1)
{
  if (a1 < 3)
  {
    return dword_238D45E8C[a1];
  }

  v2 = +[MLCLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    getBNNSLossReductionFunction_cold_1();
  }

  return 0;
}

id CPU_CreateYOLOLossLayer(uint64_t a1, void *a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  LODWORD(v25[0]) = 5;
  v4 = [v2 spatialSizeLossDescriptor];
  [v4 delta];
  v28 = v5;

  BNNSLossReductionFunction = getBNNSLossReductionFunction([v2 reductionType]);
  v31 = [v2 shouldRescore];
  [v2 scaleSpatialPositionLoss];
  v32 = v6;
  [v2 scaleSpatialSizeLoss];
  v33 = v7;
  [v2 scaleObjectConfidenceLoss];
  v34 = v8;
  [v2 scaleNoObjectConfidenceLoss];
  v35 = v9;
  [v2 scaleClassLoss];
  v36 = v10;
  [v2 minimumIOUForObjectPresence];
  v37 = v11;
  [v2 maximumIOUForObjectAbsence];
  v38 = v12;
  *&v30 = [v2 anchorBoxCount];
  v13 = [v2 anchorBoxes];

  v39 = [v13 bytes];
  v14 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:440];
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:176];
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:176];
  v41[0] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v40 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v19 = [MLCCPUDeviceOps deviceOpsWithType:18 params:v14 inDeltaData:v17 outDeltaData:v18 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v19)
  {
    [v3 addObject:v19];
  }

  v20 = [v3 copy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t CPU_CompileLossLayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v24 = a3;
  v25 = [a1 objectAtIndexedSubscript:0];
  v26 = [v25 params];
  v23 = [v26 bytes];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 descriptor];
  v8 = [v7 shape];
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [v9 descriptor];
  v11 = [v10 stride];
  v12 = [v5 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(v23 + 8, v8, v11, 0, [v13 dataType], 1, 0);

  v14 = [v24 descriptor];
  v15 = [v14 shape];
  v16 = [v24 descriptor];
  v17 = [v16 stride];
  v18 = [v24 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(v23 + 184, v15, v17, 0, [v18 dataType], 1, 0);

  v19 = v5;
  memset(v27, 0, sizeof(v27));
  LODWORD(v27[0]) = 1;
  v20 = MEMORY[0x23EE75C80](v23, v27);
  if (v20)
  {
    v21 = [v19 objectAtIndexedSubscript:0];
    [v25 setSourceStride:CPU_SetBatchStride(v21)];

    [v25 setResultStride:CPU_SetBatchStride(v24)];
  }

  return v20;
}

uint64_t CPU_CompileYOLOLossLayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v61 = a3;
  v60 = [a1 objectAtIndexedSubscript:0];
  v59 = [v60 params];
  v6 = [v59 bytes];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 descriptor];
  v9 = [v8 shape];
  v10 = [v9 objectAtIndexedSubscript:3];
  *(v6 + 376) = [v10 unsignedIntegerValue];

  v11 = [v5 objectAtIndexedSubscript:0];
  v12 = [v11 descriptor];
  v13 = [v12 shape];
  v14 = [v13 objectAtIndexedSubscript:2];
  *(v6 + 368) = [v14 unsignedIntegerValue];

  v15 = [v5 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v16 shape];
  v18 = [v17 objectAtIndexedSubscript:1];
  *(v6 + 392) = [v18 unsignedIntegerValue] / *(v6 + 384);

  *(v6 + 12) = 0x10000;
  v19 = v5;
  v57 = [v5 objectAtIndexedSubscript:0];
  v55 = [v57 descriptor];
  v54 = [v55 shape];
  v53 = [v54 objectAtIndexedSubscript:3];
  v20 = [v53 unsignedIntegerValue];
  v62 = v19;
  v21 = [v19 objectAtIndexedSubscript:0];
  v22 = [v21 descriptor];
  v23 = [v22 shape];
  v24 = [v23 objectAtIndexedSubscript:2];
  v25 = [v24 unsignedIntegerValue] * v20;
  v26 = [v19 objectAtIndexedSubscript:0];
  v27 = [v26 descriptor];
  v28 = [v27 shape];
  v29 = [v28 objectAtIndexedSubscript:1];
  *(v6 + 16) = v25 * [v29 unsignedIntegerValue];

  *(v6 + 80) = 1;
  *(v6 + 172) = 1065353216;
  v30 = [v62 objectAtIndexedSubscript:0];
  v31 = [v30 descriptor];
  v32 = [v31 dataType];

  v33 = 65552;
  if (v32 == 1)
  {
    v33 = 65568;
  }

  else if (v32 != 3)
  {
    v34 = +[MLCLog framework];
    v35 = v62;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      CPU_CompileYOLOLossLayer_cold_2(v62);
    }

    v36 = 0;
    v38 = v59;
    v37 = v60;
    goto LABEL_15;
  }

  *(v6 + 152) = v33;
  *(v6 + 188) = 0x10000;
  v58 = [v61 descriptor];
  v56 = [v58 shape];
  v39 = [v56 objectAtIndexedSubscript:3];
  v40 = [v39 unsignedIntegerValue];
  v41 = [v61 descriptor];
  v42 = [v41 shape];
  v43 = [v42 objectAtIndexedSubscript:2];
  v44 = [v43 unsignedIntegerValue] * v40;
  v45 = [v61 descriptor];
  v46 = [v45 shape];
  v47 = [v46 objectAtIndexedSubscript:1];
  *(v6 + 192) = v44 * [v47 unsignedIntegerValue];

  *(v6 + 256) = 1;
  *(v6 + 348) = 1065353216;
  v48 = [v61 descriptor];
  v49 = [v48 dataType];

  if (v49 == 1)
  {
    v50 = 65568;
    v38 = v59;
    v37 = v60;
  }

  else
  {
    v38 = v59;
    v37 = v60;
    v50 = 65552;
    if (v49 != 3)
    {
      v51 = +[MLCLog framework];
      v35 = v62;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        CPU_CompileYOLOLossLayer_cold_1(v61);
      }

      v36 = 0;
      goto LABEL_15;
    }
  }

  *(v6 + 328) = v50;
  memset(v63, 0, sizeof(v63));
  LODWORD(v63[0]) = 1;
  v36 = MEMORY[0x23EE75C80](v6, v63);
  v35 = v62;
  if (v36)
  {
    [v37 setSourceStride:*(v6 + 80) * *(v6 + 16)];
    [v37 setResultStride:*(v6 + 256) * *(v6 + 192)];
  }

LABEL_15:

  return v36;
}

NSString *__cdecl MLCActivationTypeDebugDescription(MLCActivationType activationType)
{
  if ((activationType - 1) > 0x14)
  {
    return @"None";
  }

  else
  {
    return &off_278A69328[activationType - 1]->isa;
  }
}

NSString *__cdecl MLCArithmeticOperationDebugDescription(MLCArithmeticOperation operation)
{
  if ((operation - 1) > 0x1D)
  {
    return @"Add";
  }

  else
  {
    return &off_278A693D0[operation - 1]->isa;
  }
}

__CFString *MLCPredicateTypeDebugDescription(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Equal";
  }

  else
  {
    return off_278A694C0[a1 - 1];
  }
}

NSString *__cdecl MLCComparisonOperationDebugDescription(MLCComparisonOperation operation)
{
  if ((operation - 1) > 0xB)
  {
    return @"Equal";
  }

  else
  {
    return &off_278A694F0[operation - 1]->isa;
  }
}

NSString *__cdecl MLCPaddingPolicyDebugDescription(MLCPaddingPolicy paddingPolicy)
{
  v1 = @"Same";
  if (paddingPolicy == MLCPaddingPolicyValid)
  {
    v1 = @"Valid";
  }

  if (paddingPolicy == MLCPaddingPolicyUsePaddingSize)
  {
    return @"Use Padding Size";
  }

  else
  {
    return &v1->isa;
  }
}

NSString *__cdecl MLCLossTypeDebugDescription(MLCLossType lossType)
{
  if ((lossType - 1) > 8)
  {
    return @"Absolute Error";
  }

  else
  {
    return &off_278A69550[lossType - 1]->isa;
  }
}

NSString *__cdecl MLCReductionTypeDebugDescription(MLCReductionType reductionType)
{
  if ((reductionType - 1) > 9)
  {
    return @"None";
  }

  else
  {
    return &off_278A69598[reductionType - 1]->isa;
  }
}

NSString *__cdecl MLCPaddingTypeDebugDescription(MLCPaddingType paddingType)
{
  if ((paddingType - 1) > 2)
  {
    return @"Zero";
  }

  else
  {
    return &off_278A695E8[paddingType - 1]->isa;
  }
}

NSString *__cdecl MLCConvolutionTypeDebugDescription(MLCConvolutionType convolutionType)
{
  v1 = @"Standard";
  if (convolutionType == MLCConvolutionTypeTransposed)
  {
    v1 = @"Transposed";
  }

  if (convolutionType == MLCConvolutionTypeDepthwise)
  {
    return @"Depthwise";
  }

  else
  {
    return &v1->isa;
  }
}

NSString *__cdecl MLCPoolingTypeDebugDescription(MLCPoolingType poolingType)
{
  if ((poolingType - 2) > 2)
  {
    return @"Max";
  }

  else
  {
    return &off_278A69600[poolingType - 2]->isa;
  }
}

NSString *__cdecl MLCSoftmaxOperationDebugDescription(MLCSoftmaxOperation operation)
{
  if (operation)
  {
    return @"Log Softmax";
  }

  else
  {
    return @"Softmax";
  }
}

NSString *__cdecl MLCSampleModeDebugDescription(MLCSampleMode mode)
{
  if (mode)
  {
    return @"Linear";
  }

  else
  {
    return @"Nearest";
  }
}

NSString *__cdecl MLCLSTMResultModeDebugDescription(MLCLSTMResultMode mode)
{
  if (mode)
  {
    return @"Output and States";
  }

  else
  {
    return @"Output";
  }
}

NSString *__cdecl MLCGradientClippingTypeDebugDescription(MLCGradientClippingType gradientClippingType)
{
  v1 = @"By Value";
  if (gradientClippingType == MLCGradientClippingTypeByNorm)
  {
    v1 = @"By Norm";
  }

  if (gradientClippingType == MLCGradientClippingTypeByGlobalNorm)
  {
    return @"By Global Norm";
  }

  else
  {
    return &v1->isa;
  }
}

id CPU_CreateFusedConvolutionNormalizationAndNeuronLayer(float a1, float a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, unsigned int a13)
{
  v117[1] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v102 = a9;
  v103 = a10;
  v26 = v22;
  v27 = a11;
  v99 = [MEMORY[0x277CBEBF8] mutableCopy];
  v100 = v27;
  v101 = v25;
  if (a13 <= 0x24)
  {
    if (((1 << a13) & 0xC00000) != 0)
    {
      v29 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    if (((1 << a13) & 0xC0000000) != 0)
    {
      v29 = 0;
      v28 = 2;
      goto LABEL_10;
    }

    if (((1 << a13) & 0x1800000000) != 0)
    {
      v28 = 3;
      v29 = 1;
LABEL_10:
      bzero(v110, 0x348uLL);
      CPU_BuildBNNSConvolutionWeightAndBiasParams(v110, v23, v21, v26);
      bzero(v108, 0x468uLL);
      v30 = [v23 outputFeatureChannelCount];
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
      v117[0] = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:1];
      v33 = CPU_BuildBNNSNormalizationParams(v28, v108, v32, v101, v102, v103, v100, a1, a2);

      if (v33 && (!v24 || setBNNSActivation(v109, v24)))
      {
        v84 = v24;
        if (v29)
        {
          v109[6] = a12;
        }

        v97 = [MEMORY[0x277CBEA90] dataWithBytes:v110 length:840];
        v90 = [MEMORY[0x277CBEA90] dataWithBytes:v108 length:1128];
        memset(v107, 0, sizeof(v107));
        memset(v106, 0, sizeof(v106));
        v96 = [MEMORY[0x277CBEA90] dataWithBytes:v107 length:176];
        v95 = [MEMORY[0x277CBEA90] dataWithBytes:v106 length:176];
        v34 = [v21 descriptor];
        v94 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:", v23, 0, 0, [v34 dataType]);

        v35 = [MEMORY[0x277CBEBF8] mutableCopy];
        v36 = 3;
        for (i = 0; i != 3; ++i)
        {
          v38 = [v21 descriptor];
          v39 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:", v23, 0, 0, [v38 dataType]);
          [v35 setObject:v39 atIndexedSubscript:i];
        }

        v93 = v35;
        v86 = v21;
        v83 = v23;
        if (v26)
        {
          v40 = [v26 descriptor];
          v92 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:", v23, 0, [v40 dataType]);

          v91 = [MEMORY[0x277CBEBF8] mutableCopy];
          for (j = 0; j != 3; ++j)
          {
            v42 = [v26 descriptor];
            v43 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:", v23, 0, [v42 dataType]);
            [v91 setObject:v43 atIndexedSubscript:j];
          }
        }

        else
        {
          v91 = 0;
          v92 = 0;
        }

        v85 = v26;
        v47 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v30 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v30, 1}];
        v98 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v30 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v30, 1}];
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
        v116 = v48;
        v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
        v50 = v103;
        v51 = [v103 descriptor];
        v89 = v47;
        v88 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v49, v47, [v51 dataType], 0);

        v52 = 0x277CBE000uLL;
        v53 = v30;
        v105 = [MEMORY[0x277CBEBF8] mutableCopy];
        if (v103)
        {
          v54 = 0;
          do
          {
            v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v53];
            v115 = v55;
            v56 = [*(v52 + 2656) arrayWithObjects:&v115 count:1];
            [v50 descriptor];
            v57 = v36;
            v58 = v50;
            v59 = v53;
            v61 = v60 = v52;
            v62 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v56, 0, [v61 dataType], 0);
            [v105 setObject:v62 atIndexedSubscript:v54];

            v52 = v60;
            v53 = v59;
            v50 = v58;
            v36 = v57;

            ++v54;
          }

          while (v57 != v54);
        }

        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v53];
        v114 = v63;
        v64 = [*(v52 + 2656) arrayWithObjects:&v114 count:1];
        v65 = v52;
        v66 = [v100 descriptor];
        v87 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v64, v98, [v66 dataType], 0);

        v104 = [MEMORY[0x277CBEBF8] mutableCopy];
        if (v100)
        {
          for (k = 0; k != v36; ++k)
          {
            v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v53];
            v113 = v68;
            v69 = [*(v65 + 2656) arrayWithObjects:&v113 count:1];
            v70 = [v100 descriptor];
            v71 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v69, 0, [v70 dataType], 0);
            [v104 setObject:v71 atIndexedSubscript:k];
          }
        }

        v112 = v96;
        v72 = [*(v65 + 2656) arrayWithObjects:&v112 count:1];
        v111 = v95;
        v73 = [*(v65 + 2656) arrayWithObjects:&v111 count:1];
        v74 = [MLCCPUDeviceOps deviceOpsWithType:a13 params:v97 inDeltaData:v72 outDeltaData:v73 weightsDeltaData:v94 biasDeltaData:v92 weightsMomentumData:v93 biasMomentumData:v91];

        v24 = v84;
        v26 = v85;
        v25 = v101;
        v45 = v102;
        v23 = v83;
        if (v74)
        {
          [v99 addObject:v74];
          [v74 setFusedPrimitiveParams:v90];
          [v74 setBetaDeltaData:v88];
          [v74 setGammaDeltaData:v87];
          [v74 setBetaDeltaDataBytes:v89];
          [v74 setGammaDeltaDataBytes:v98];
          v75 = [MEMORY[0x277CBEBF8] mutableCopy];
          [v74 setWeightsMomentumDataBytes:v75];

          if (v85)
          {
            v76 = [MEMORY[0x277CBEBF8] mutableCopy];
            [v74 setBiasMomentumDataBytes:v76];
          }

          [v74 setBetaMomentumData:v105];
          [v74 setGammaMomentumData:v104];
          v77 = MEMORY[0x277CBEBF8];
          v78 = [MEMORY[0x277CBEBF8] mutableCopy];
          [v74 setBetaMomentumDataBytes:v78];

          v79 = [v77 mutableCopy];
          [v74 setGammaMomentumDataBytes:v79];

          if (v101)
          {
            [v74 setMovingMean:v101];
          }

          if (v102)
          {
            [v74 setMovingVariance:v102];
          }

          [v74 setPaddingPolicy:{objc_msgSend(v83, "paddingPolicy")}];
        }

        v44 = [v99 copy];

        v21 = v86;
        v46 = v103;
        v27 = v100;
      }

      else
      {
        v44 = MEMORY[0x277CBEBF8];
        v25 = v101;
        v45 = v102;
        v46 = v103;
        v27 = v100;
      }

      goto LABEL_41;
    }
  }

  if (a13 - 6 < 2)
  {
    v29 = 0;
    v28 = 0;
    goto LABEL_10;
  }

  v80 = +[MLCLog framework];
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    CPU_CreateFusedConvolutionNormalizationAndNeuronLayer_cold_1();
  }

  v44 = MEMORY[0x277CBEBF8];
  v45 = v102;
  v46 = v103;
LABEL_41:

  v81 = *MEMORY[0x277D85DE8];

  return v44;
}

void CPU_BuildBNNSConvolutionWeightAndBiasParams(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = a2;
  v7 = a3;
  v8 = a4;
  *(a1 + 752) = [v37 strideInX];
  *(a1 + 760) = [v37 strideInY];
  *(a1 + 768) = [v37 dilationRateInX];
  *(a1 + 776) = [v37 dilationRateInY];
  if ([v37 usesDepthwiseConvolution])
  {
    v9 = [v37 inputFeatureChannelCount];
  }

  else
  {
    v9 = [v37 groupCount];
  }

  *(a1 + 800) = v9;
  *(a1 + 180) = 0x40000;
  v10 = [v7 descriptor];
  v11 = [v10 shape];
  v12 = [v11 count];

  if (v12 == 2)
  {
    *(a1 + 184) = vdupq_n_s64(1uLL);
  }

  else
  {
    v13 = [v7 descriptor];
    v14 = [v13 shape];
    v15 = [v14 count];

    v16 = [v7 descriptor];
    v17 = [v16 shape];
    v18 = v17;
    if (v15 == 3)
    {
      v19 = [v17 objectAtIndexedSubscript:2];
      *(a1 + 184) = [v19 unsignedIntegerValue];

      *(a1 + 192) = 1;
    }

    else
    {
      v20 = [v17 objectAtIndexedSubscript:3];
      *(a1 + 184) = [v20 unsignedIntegerValue];

      v21 = [v7 descriptor];
      v22 = [v21 shape];
      v23 = [v22 objectAtIndexedSubscript:2];
      *(a1 + 192) = [v23 unsignedIntegerValue];
    }
  }

  v24 = *(a1 + 800);
  v25 = [v37 inputFeatureChannelCount];
  if (v24 >= 2)
  {
    v25 /= *(a1 + 800);
  }

  *(a1 + 200) = v25;
  *(a1 + 208) = [v37 outputFeatureChannelCount];
  v26 = *(a1 + 184);
  v27 = *(a1 + 192);
  *(a1 + 248) = 1;
  *(a1 + 256) = v26;
  v28 = v27 * v26;
  v29 = *(a1 + 200) * v27 * v26;
  *(a1 + 264) = v28;
  *(a1 + 272) = v29;
  v30 = [v7 data];
  *(a1 + 312) = [v30 bytes];

  v31 = [v7 descriptor];
  *(a1 + 320) = CPU_BNNSDataType([v31 dataType]);

  *(a1 + 340) = 1065353216;
  if (v8)
  {
    *(a1 + 532) = 0x10000;
    v32 = [v8 descriptor];
    v33 = [v32 shape];
    v34 = [v33 objectAtIndexedSubscript:1];
    *(a1 + 536) = [v34 unsignedIntegerValue];

    v35 = [v8 data];
    *(a1 + 664) = [v35 bytes];

    v36 = [v8 descriptor];
    *(a1 + 672) = CPU_BNNSDataType([v36 dataType]);

    *(a1 + 692) = 1065353216;
  }

  if ([v37 paddingPolicy] == 2)
  {
    *(a1 + 784) = [v37 paddingSizeInX];
    *(a1 + 792) = [v37 paddingSizeInY];
  }
}

void *CPU_CompileFusedConvolutionNormalizationAndNeuronLayer(void *a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1 objectAtIndexedSubscript:0];
  v8 = [v7 params];
  v9 = [v8 bytes];
  v10 = [v7 deviceOpType];
  if (v10 > 29)
  {
    if (v10 > 34)
    {
      if (v10 != 35)
      {
        if (v10 == 36)
        {
          v11 = 0x500000006;
          goto LABEL_16;
        }

        goto LABEL_27;
      }

      v12 = 0;
      v11 = 0x500000000;
    }

    else
    {
      if (v10 != 30)
      {
        if (v10 == 31)
        {
          v11 = 0x400000006;
          goto LABEL_16;
        }

LABEL_27:
        v24 = +[MLCLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          CPU_CompileFusedConvolutionNormalizationAndNeuronLayer_cold_2(v7, v24);
        }

        goto LABEL_30;
      }

      v12 = 0;
      v11 = 0x400000000;
    }
  }

  else if (v10 > 21)
  {
    if (v10 != 22)
    {
      if (v10 == 23)
      {
        v11 = 0x300000006;
        goto LABEL_16;
      }

      goto LABEL_27;
    }

    v12 = 0;
    v11 = 0x300000000;
  }

  else
  {
    if (v10 != 6)
    {
      if (v10 == 7)
      {
        v11 = 0x200000006;
LABEL_16:
        v12 = 1;
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    v12 = 0;
    v11 = 0x200000000;
  }

LABEL_17:
  *&v13 = CPU_BuildBNNSConvolutionInputOutputParams(v9, v5, v6, v12, [v7 paddingPolicy]);
  v14 = [v7 fusedPrimitiveParams];

  v8 = v14;
  v15 = [v14 bytes];
  v30[0] = v6;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v17 = CPU_BuildBNNSNormalizationInputOutputParams(v15, v16, v6, 0);

  if (!v17)
  {
LABEL_30:
    v21 = 0;
    goto LABEL_31;
  }

  v18 = [v6 descriptor];
  v19 = [v18 shape];
  v20 = [v19 objectAtIndexedSubscript:1];
  v15[3] = [v20 unsignedIntegerValue];

  memset(&v27, 0, sizeof(v27));
  v27.flags = 1;
  *filter_type = v11;
  layer_params[0] = v9;
  layer_params[1] = v15;
  v21 = BNNSFilterCreateFusedLayer(2uLL, filter_type, layer_params, &v27);
  if (v21)
  {
    v22 = [v5 objectAtIndexedSubscript:0];
    [v7 setSourceStride:CPU_SetBatchStride(v22)];

    [v7 setResultStride:CPU_SetBatchStride(v6)];
    [v7 setIsFusedBNNSFilter:1];
  }

  else
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      CPU_CompileFusedConvolutionNormalizationAndNeuronLayer_cold_1(v23);
    }
  }

LABEL_31:

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

float CPU_BuildBNNSConvolutionInputOutputParams(void *a1, void *a2, void *a3, int a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v9 descriptor];
  v11 = [v10 shape];
  v12 = [v8 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 stride];
  v15 = [v8 objectAtIndexedSubscript:0];

  v16 = [v15 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(a1, v11, v14, 0, [v16 dataType], 1, 0);

  v17 = [v7 descriptor];
  v18 = [v17 shape];
  v19 = [v7 descriptor];
  v20 = [v19 stride];
  v21 = [v7 descriptor];

  CPU_BuildBNNSNDArrayDescriptor((a1 + 44), v18, v20, 0, [v21 dataType], 1, 0);
  if (a5 != 2)
  {
    if (a4)
    {
      v23 = a1[2];
      v24 = a1[24];
      v25 = a1[46];
      v26 = ((((a1[1] - 1) * a1[94]) + ((a1[23] - 1) * a1[96])) + 1.0) - a1[45];
      v27 = (v26 * 0.5);
      a1[101] = v27;
      v28 = v26 - v27;
      v29 = ((v23 - 1) * a1[95]);
      v30 = (v24 - 1) * a1[97];
      a1[102] = v28;
      v31 = ((v29 + v30) + 1.0) - v25;
    }

    else
    {
      v32 = a1[46];
      v33 = a1[2];
      v34 = a1[24];
      v35 = (a1[94] * a1[45]) - ((a1[1] - ((a1[23] - 1) * a1[96] + 1)) + a1[94]);
      if (v35 < 0.0)
      {
        v35 = 0.0;
      }

      v36 = (v35 * 0.5);
      a1[101] = v36;
      a1[102] = (v35 - v36);
      v31 = (a1[95] * v32) - ((v33 - ((v34 - 1) * a1[97] + 1)) + a1[95]);
      if (v31 < 0.0)
      {
        v31 = 0.0;
      }
    }

    v37 = (v31 * 0.5);
    a1[103] = v37;
    result = v31 - v37;
    a1[104] = result;
  }

  return result;
}

uint64_t CPU_SetOptimizerDataForConvolutionLayer(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [a2 optimizerData];
  v8 = [v5 objectAtIndexedSubscript:0];
  if ([v7 count])
  {
    v9 = 0;
    do
    {
      v10 = MEMORY[0x277CBEA90];
      v11 = [v7 objectAtIndexedSubscript:v9];
      v12 = [v11 bytes];
      v13 = [v7 objectAtIndexedSubscript:v9];
      v14 = [v10 dataWithBytesNoCopy:v12 length:objc_msgSend(v13 freeWhenDone:{"length"), 0}];
      v15 = [v8 weightsMomentumDataBytes];
      [v15 setObject:v14 atIndexedSubscript:v9];

      v16 = [v8 weightsMomentumData];
      v17 = [v16 objectAtIndexedSubscript:v9];

      v18 = [v17 bytes];
      v19 = [v7 objectAtIndexedSubscript:v9];
      *(v18 + 136) = [v19 bytes];

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  if (v6)
  {
    v33 = v5;
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
        v27 = [v8 biasMomentumDataBytes];
        [v27 setObject:v26 atIndexedSubscript:v21];

        v28 = [v8 biasMomentumData];
        v29 = [v28 objectAtIndexedSubscript:v21];

        v30 = [v29 bytes];
        v31 = [v20 objectAtIndexedSubscript:v21];
        *(v30 + 136) = [v31 bytes];

        ++v21;
      }

      while (v21 < [v20 count]);
    }

    v5 = v33;
  }

  return 1;
}

id CPU_CreateTransposeLayer(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  memset(v25, 0, sizeof(v25));
  v4 = [v2 count];
  if (v4 == 4)
  {
    v5 = v27 + 8;
    v9 = 3;
    v12 = [v2 objectAtIndexedSubscript:3];
    *&v26 = 3 - [v12 unsignedIntegerValue];

    v13 = [v2 objectAtIndexedSubscript:2];
    *(&v26 + 1) = 3 - [v13 unsignedIntegerValue];

    v11 = [v2 objectAtIndexedSubscript:1];
    *&v27[0] = 3 - [v11 unsignedIntegerValue];
    goto LABEL_7;
  }

  if (v4 == 3)
  {
    v5 = v27;
    v9 = 2;
    v10 = [v2 objectAtIndexedSubscript:2];
    *&v26 = 2 - [v10 unsignedIntegerValue];

    v11 = [v2 objectAtIndexedSubscript:1];
    *(&v26 + 1) = 2 - [v11 unsignedIntegerValue];
LABEL_7:

    v7 = [v2 objectAtIndexedSubscript:0];
    v8 = v9 - [v7 unsignedIntegerValue];
    goto LABEL_8;
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v5 = &v26 + 8;
  v6 = [v2 objectAtIndexedSubscript:1];
  *&v26 = [v6 unsignedIntegerValue] != 1;

  v7 = [v2 objectAtIndexedSubscript:0];
  v8 = [v7 unsignedIntegerValue] != 1;
LABEL_8:
  *v5 = v8;

LABEL_9:
  v14 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:416];
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:176];
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:176];
  v29[0] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v28 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v19 = [MLCCPUDeviceOps deviceOpsWithType:39 params:v14 inDeltaData:v17 outDeltaData:v18 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v19)
  {
    [v3 addObject:v19];
  }

  v20 = [v3 copy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t CPU_CompileTransposeLayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = a3;
  v29 = [a1 objectAtIndexedSubscript:0];
  v28 = [v29 params];
  v6 = [v28 bytes];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 descriptor];
  v9 = [v8 shape];
  v10 = [v5 objectAtIndexedSubscript:0];
  v11 = [v10 descriptor];
  v12 = [v11 stride];
  v13 = [v5 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v26 = v6;
  LODWORD(v6) = CPU_BuildPermuteBNNSNDArrayDescriptor(v6, v9, v12, 0, [v14 dataType]);

  if (!v6)
  {
    v22 = 0;
    v15 = v27;
LABEL_7:
    v23 = v29;
    goto LABEL_8;
  }

  v15 = v27;
  v16 = [v27 descriptor];
  v17 = [v16 shape];
  v18 = [v27 descriptor];
  v19 = [v18 stride];
  v20 = [v27 descriptor];
  v21 = CPU_BuildPermuteBNNSNDArrayDescriptor(v26 + 176, v17, v19, 0, [v20 dataType]);

  if (!v21)
  {
    v22 = 0;
    goto LABEL_7;
  }

  memset(v30, 0, sizeof(v30));
  LODWORD(v30[0]) = 1;
  v22 = MEMORY[0x23EE75CC0](v26, v30);
  v23 = v29;
  if (v22)
  {
    v24 = [v5 objectAtIndexedSubscript:0];
    [v29 setSourceStride:CPU_SetBatchStride(v24)];

    [v29 setResultStride:CPU_SetBatchStride(v27)];
  }

LABEL_8:

  return v22;
}

id CPU_CreatePaddingLayer(float a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  _S8 = a1;
  v46[1] = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v44 = 0;
  HIWORD(_S0) = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(v33, 0, sizeof(v33));
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v17 = 2;
      goto LABEL_13;
    }

    if (a3 != 3)
    {
      goto LABEL_10;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v17 = 1;
LABEL_13:
      LODWORD(v44) = v17;
      goto LABEL_15;
    }

LABEL_10:
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      CPU_CreatePaddingLayer_cold_2();
    }

LABEL_20:
    v28 = 0;
    goto LABEL_21;
  }

  if (a8 == 3)
  {
    __asm { FCVT            H0, S8 }

    HIDWORD(v44) = _S0;
    goto LABEL_15;
  }

  if (a8 != 1)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      CPU_CreatePaddingLayer_cold_1();
    }

    goto LABEL_20;
  }

  *(&v44 + 1) = _S8;
LABEL_15:
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:488];
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  v23 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:176];
  v24 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:176];
  v46[0] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v45 = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v27 = [MLCCPUDeviceOps deviceOpsWithType:14 params:v18 inDeltaData:v25 outDeltaData:v26 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v27)
  {
    [v15 addObject:v27];
  }

  v28 = [v15 copy];

LABEL_21:
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t CPU_CompilePaddingLayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = a3;
  v29 = [a1 objectAtIndexedSubscript:0];
  v28 = [v29 params];
  v6 = [v28 bytes];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 descriptor];
  v9 = [v8 shape];
  v10 = [v5 objectAtIndexedSubscript:0];
  v11 = [v10 descriptor];
  v12 = [v11 stride];
  v13 = [v5 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v26 = v6;
  LODWORD(v6) = CPU_BuildBNNSNDArrayDescriptor(v6, v9, v12, 0, [v14 dataType], 1, 0);

  if (!v6)
  {
    v22 = 0;
    v15 = v27;
LABEL_7:
    v23 = v29;
    goto LABEL_8;
  }

  v15 = v27;
  v16 = [v27 descriptor];
  v17 = [v16 shape];
  v18 = [v27 descriptor];
  v19 = [v18 stride];
  v20 = [v27 descriptor];
  v21 = CPU_BuildBNNSNDArrayDescriptor(v26 + 176, v17, v19, 0, [v20 dataType], 1, 0);

  if (!v21)
  {
    v22 = 0;
    goto LABEL_7;
  }

  memset(v30, 0, sizeof(v30));
  LODWORD(v30[0]) = 1;
  v22 = MEMORY[0x23EE75CB0](v26, v30);
  v23 = v29;
  if (v22)
  {
    v24 = [v5 objectAtIndexedSubscript:0];
    [v29 setSourceStride:CPU_SetBatchStride(v24)];

    [v29 setResultStride:CPU_SetBatchStride(v27)];
  }

LABEL_8:

  return v22;
}

unint64_t *hashCombine_4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 10;
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

unint64_t *hashCombine_5(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 15;
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

id ANE_CreateMatMulLayer(void *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  v3 = v1;
  if ([v3 transposesX])
  {
    v4 = &unk_284BA6140;
  }

  else
  {
    v4 = &unk_284BA6128;
  }

  v5 = ANE_BuildTransposeParams(v4);
  if ([v3 transposesY])
  {
    v6 = &unk_284BA6140;
  }

  else
  {
    v6 = &unk_284BA6128;
  }

  v7 = ANE_BuildTransposeParams(v6);
  v8 = ANE_BuildTransposeParams(&unk_284BA6128);
  v24 = kMLCANENetUnitType[0];
  v25[0] = @"MatrixMultiplication";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [v3 alpha];
  if (fabsf(v10 + -1.0) <= 0.000001)
  {
    v13 = 0;
    goto LABEL_11;
  }

  [v3 alpha];
  v21 = v11;
  v20 = 0;
  if (ANE_ConvertFp32ToInt16(&v21, &v20))
  {
    v22[1] = @"ScaleScalar";
    v23[0] = @"GOC";
    v22[0] = kMLCANENetUnitType[0];
    v12 = [MEMORY[0x277CCABB0] numberWithShort:v20];
    v23[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

LABEL_11:
    v14 = [_MLCANEMatMulParameters matMulUnitParametersWith:v9 transposeXParams:v5 transposeYParams:v7 finalTransposeParams:v8 gocParams:v13];

    goto LABEL_15;
  }

  v15 = +[MLCLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateMatMulLayer_cold_1(&v21);
  }

  v14 = 0;
LABEL_15:

  if (v14)
  {
    v16 = [MLCANEDeviceOps deviceOpsWithType:32 params:v14];
    if (v16)
    {
      [v2 addObject:v16];
    }

    v17 = v2;
  }

  else
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateMatMulLayer_cold_2();
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id ANE_CompileMatMulLayer(void *a1, void *a2, void *a3)
{
  v186[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v154 = a2;
  v6 = a3;
  v7 = [v6 parentLayers];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [v9 params];
  v11 = v8;
  v12 = v10;
  v13 = objc_autoreleasePoolPush();
  v162 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = [v11 descriptor];
  v15 = [v11 sourceTensors];
  v16 = [v11 resultTensors];
  v17 = [v16 objectAtIndexedSubscript:0];

  v156 = v17;
  v18 = [v17 descriptor];
  LODWORD(v17) = [v18 dataType];

  v150 = v17;
  v155 = ANE_GetANECIRDataTypeWithMLCDataType(v17);
  if (!v155)
  {
    v80 = v154;
    v153 = +[MLCLog framework];
    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileMatMulLayer_cold_11();
    }

    v152 = 0;
    v111 = v15;
    goto LABEL_30;
  }

  v160 = v15;
  v161 = v11;
  v143 = v13;
  v145 = v9;
  v146 = v6;
  v141 = v5;
  v19 = [v12 transposeXParams];
  v20 = [v12 transposeYParams];
  v147 = [v12 finalTransposeParams];
  v149 = [v12 matMulParams];
  v144 = v12;
  v148 = [v12 gocParams];
  v153 = v19;
  v186[0] = v19;
  v186[1] = v20;
  v140 = v20;
  v159 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:2];
  v168 = [v14 transposesX];
  v142 = v14;
  v167 = [v14 transposesY];
  v21 = MEMORY[0x277CBEBF8];
  v157 = [MEMORY[0x277CBEBF8] mutableCopy];
  v158 = [v21 mutableCopy];
  v22 = 0;
  v23 = &v168;
  v24 = 1;
  v25 = v162;
  do
  {
    v26 = v24;
    v27 = [v160 objectAtIndexedSubscript:v22];
    v166 = 0;
    ANE_GetTensor4DShapeWithOnePrepended(v27, &v166);
    v28 = v166;
    v29 = [v28 mutableCopy];
    if (*v23 == 1)
    {
      v30 = [v28 objectAtIndexedSubscript:3];
      [v29 setObject:v30 atIndexedSubscript:1];

      v31 = 1;
      v32 = 2;
      v33 = 3;
    }

    else
    {
      v31 = 2;
      v32 = 1;
      v33 = 2;
    }

    v34 = [v28 objectAtIndexedSubscript:v31];
    [v29 setObject:v34 atIndexedSubscript:v32];

    v35 = [v28 objectAtIndexedSubscript:v32];
    [v29 setObject:v35 atIndexedSubscript:v33];

    v36 = [v159 objectAtIndexedSubscript:v22];
    v37 = [_MLCANEPlistBuilder createUnitWithLayer:v161 unitParams:v36];

    v38 = [v161 label];
    v39 = [v38 stringByAppendingFormat:@"_%lu", objc_msgSend(v25, "count")];
    [v37 setObject:v39 forKeyedSubscript:@"Name"];

    v40 = [v27 label];
    v185 = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v185 count:1];
    [v37 setObject:v41 forKeyedSubscript:@"Bottom"];

    v42 = [v27 descriptor];
    v43 = [v42 dataType];

    v44 = ANE_GetANECIRDataTypeWithMLCDataType(v43);
    if (!v44)
    {
      v112 = +[MLCLog framework];
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileMatMulLayer_cold_10();
      }

      goto LABEL_28;
    }

    [v158 addObject:v44];
    v184 = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v184 count:1];
    [v37 setObject:v45 forKeyedSubscript:@"InputType"];

    v46 = MEMORY[0x277CCABB0];
    v47 = [v29 objectAtIndexedSubscript:1];
    v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(v47, "unsignedIntegerValue")}];
    [v37 setObject:v48 forKeyedSubscript:@"OutputChannels"];

    v183 = v27;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v183 count:1];
    LOBYTE(v48) = ANE_ValidateTransposeUnit(v49, v37, 1);

    if ((v48 & 1) == 0)
    {
      v112 = +[MLCLog framework];
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileMatMulLayer_cold_1();
      }

LABEL_28:
      v80 = v154;
      v111 = v160;
      v113 = v140;

      v152 = 0;
      v69 = v147;
      goto LABEL_29;
    }

    v25 = v162;
    [v162 addObject:v37];
    v50 = [MLCTensor tensorWithShape:v29 dataType:v43];
    [v157 addObject:v50];

    v24 = 0;
    v23 = &v167;
    v22 = 1;
  }

  while ((v26 & 1) != 0);
  v165 = 0;
  ANE_GetTensor4DShapeWithOnePrepended(v156, &v165);
  v51 = v165;
  v52 = [v51 mutableCopy];
  v53 = [v51 objectAtIndexedSubscript:2];
  [v52 setObject:v53 atIndexedSubscript:1];

  v54 = [v51 objectAtIndexedSubscript:1];
  [v52 setObject:v54 atIndexedSubscript:2];

  v139 = v51;
  v55 = [v51 objectAtIndexedSubscript:1];
  v138 = [v55 unsignedIntegerValue];

  v56 = [_MLCANEPlistBuilder createUnitWithLayer:v161 unitParams:v149];
  v57 = [v161 label];
  v58 = [v57 stringByAppendingFormat:@"_%lu", objc_msgSend(v162, "count")];
  v59 = v162;
  [v56 setObject:v58 forKeyedSubscript:@"Name"];

  v60 = [v162 objectAtIndexedSubscript:0];
  v61 = [v60 objectForKeyedSubscript:@"Name"];
  v182[0] = v61;
  v62 = [v162 objectAtIndexedSubscript:1];
  v63 = [v62 objectForKeyedSubscript:@"Name"];
  v182[1] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:2];
  [v56 setObject:v64 forKeyedSubscript:@"Bottom"];

  v65 = [v158 copy];
  [v56 setObject:v65 forKeyedSubscript:@"InputType"];

  v66 = MEMORY[0x277CCABB0];
  v67 = [v52 objectAtIndexedSubscript:1];
  v68 = [v66 numberWithUnsignedInteger:{objc_msgSend(v67, "unsignedIntegerValue")}];
  [v56 setObject:v68 forKeyedSubscript:@"OutputChannels"];

  if ((ANE_ValidateMatrixMultUnit(v157, v56, 1) & 1) == 0)
  {
    v29 = v56;
    v28 = v52;
    v37 = +[MLCLog framework];
    v80 = v154;
    v69 = v147;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileMatMulLayer_cold_2();
    }

    v152 = 0;
    v113 = v140;
    v5 = v141;
    v111 = v160;
    v27 = v139;
    goto LABEL_29;
  }

  [v162 addObject:v56];
  v137 = v52;
  v37 = [MLCTensor tensorWithShape:v52 dataType:v150];
  v69 = v147;
  v70 = [_MLCANEPlistBuilder createUnitWithLayer:v161 unitParams:v147];
  v71 = [v161 label];
  v72 = [v71 stringByAppendingFormat:@"_%lu", objc_msgSend(v162, "count")];
  [v70 setObject:v72 forKeyedSubscript:@"Name"];

  v135 = v56;
  v73 = v56;
  v74 = v70;
  v75 = [v73 objectForKeyedSubscript:@"Name"];
  v181 = v75;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];
  [v70 setObject:v76 forKeyedSubscript:@"Bottom"];

  v180 = v155;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v180 count:1];
  [v70 setObject:v77 forKeyedSubscript:@"InputType"];

  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v138];
  [v70 setObject:v78 forKeyedSubscript:@"OutputChannels"];

  v179 = v37;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v179 count:1];
  LOBYTE(v76) = ANE_ValidateTransposeUnit(v79, v70, 1);

  v80 = v154;
  v136 = v74;
  if ((v76 & 1) == 0)
  {
    v116 = +[MLCLog framework];
    v111 = v160;
    v113 = v140;
    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileMatMulLayer_cold_1();
    }

    v152 = 0;
    v5 = v141;
    goto LABEL_49;
  }

  [v162 addObject:v74];
  if (!v148)
  {
    goto LABEL_14;
  }

  v81 = [_MLCANEPlistBuilder createUnitWithLayer:v161 unitParams:v148];
  v82 = [v161 label];
  v83 = [v82 stringByAppendingFormat:@"_%lu", objc_msgSend(v162, "count")];
  [v81 setObject:v83 forKeyedSubscript:@"Name"];

  v84 = [v74 objectForKeyedSubscript:@"Name"];
  v178 = v84;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v178 count:1];
  [v81 setObject:v85 forKeyedSubscript:@"Bottom"];

  v177 = v155;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:&v177 count:1];
  [v81 setObject:v86 forKeyedSubscript:@"InputType"];

  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v138];
  [v81 setObject:v87 forKeyedSubscript:@"OutputChannels"];

  v176 = v156;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
  LOBYTE(v85) = ANE_ValidateGOCUnit(v88, v81, 0);

  if ((v85 & 1) == 0)
  {
    v117 = +[MLCLog framework];
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileMatMulLayer_cold_4();
    }

    v152 = 0;
    v113 = v140;
    v5 = v141;
    v111 = v160;
    v69 = v147;
    goto LABEL_49;
  }

  [v162 addObject:v81];

  v69 = v147;
LABEL_14:
  v89 = v160;
  if ([v160 count] != 3)
  {
LABEL_48:
    v152 = [v59 copy];
    v111 = v89;
    v113 = v140;
    v5 = v141;
LABEL_49:
    v28 = v137;
    v27 = v139;
    v29 = v135;
    goto LABEL_50;
  }

  v90 = [v160 objectAtIndexedSubscript:2];
  v91 = [v90 descriptor];
  v92 = [v91 dataType];

  v174[0] = kMLCANENetUnitType[0];
  v174[1] = @"Type";
  v175[0] = @"ElementWise";
  v175[1] = @"Add";
  v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:2];
  v93 = [_MLCANEPlistBuilder createUnitWithLayer:v161 unitParams:?];
  v94 = [v161 label];
  v95 = [v94 stringByAppendingFormat:@"_%lu", objc_msgSend(v162, "count")];
  [v93 setObject:v95 forKeyedSubscript:@"Name"];

  v96 = [v162 objectAtIndexedSubscript:{objc_msgSend(v162, "count") - 1}];
  v97 = [v96 objectForKeyedSubscript:@"Name"];
  v173[0] = v97;
  v151 = v90;
  v98 = [v90 label];
  v173[1] = v98;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:2];
  [v93 setObject:v99 forKeyedSubscript:@"Bottom"];

  v100 = ANE_GetANECIRDataTypeWithMLCDataType(v92);
  if (!v100)
  {
    v118 = v93;
    v119 = +[MLCLog framework];
    v69 = v147;
    v28 = v137;
    v29 = v135;
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileMatMulLayer_cold_9();
    }

    v152 = 0;
    v113 = v140;
    v5 = v141;
    v111 = v160;
    v80 = v154;
    v27 = v139;
    goto LABEL_50;
  }

  v101 = v100;
  v172[0] = v155;
  v172[1] = v100;
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:2];
  [v93 setObject:v102 forKeyedSubscript:@"InputType"];

  v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v138];
  [v93 setObject:v103 forKeyedSubscript:@"OutputChannels"];

  v163 = 0;
  v164 = 0;
  v104 = v90;
  v27 = v139;
  v105 = [_MLCANEPlistBuilder createBroadcastUnitWithSourceTensor:v90 targetShape:v139 layer:v161 broadcastUnit:&v164 broadcastResultTensor:&v163];
  v106 = v164;
  v132 = v101;
  v133 = v163;
  v131 = v106;
  if (v105 == 2)
  {
    if (!v106)
    {
      v109 = v93;
      v110 = +[MLCLog framework];
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileMatMulLayer_cold_6();
      }

      v113 = v140;
      v69 = v147;
      v80 = v154;
      goto LABEL_60;
    }

    v120 = [v161 label];
    v121 = [v120 stringByAppendingFormat:@"_%lu", objc_msgSend(v162, "count")];
    [v106 setObject:v121 forKeyedSubscript:@"Name"];

    v122 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v138];
    [v106 setObject:v122 forKeyedSubscript:@"OutputChannels"];

    [v162 addObject:v106];
    v123 = [v161 label];
    v124 = [v123 stringByAppendingFormat:@"_%lu", objc_msgSend(v162, "count")];
    [v93 setObject:v124 forKeyedSubscript:@"Name"];

    v125 = [v162 objectAtIndexedSubscript:{objc_msgSend(v162, "count") - 2}];
    v126 = [v125 objectForKeyedSubscript:@"Name"];
    v170 = v126;
    v127 = [v106 objectForKeyedSubscript:@"Name"];
    v171 = v127;
    v128 = [MEMORY[0x277CBEA60] arrayWithObjects:&v170 count:2];
    [v93 setObject:v128 forKeyedSubscript:@"Bottom"];

    v104 = v151;
    v169[0] = v156;
    v169[1] = v133;
    v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:2];
    LOBYTE(v125) = ANE_ValidateElementWiseUnit(v129, v93, 1);

    v69 = v147;
    v80 = v154;
    if ((v125 & 1) == 0)
    {
      v109 = v93;
      v110 = +[MLCLog framework];
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

LABEL_47:
    v89 = v160;
    v130 = v104;
    v59 = v162;
    [v162 addObject:v93];

    goto LABEL_48;
  }

  if (v105 != 1)
  {
    v109 = v93;
    v110 = +[MLCLog framework];
    v69 = v147;
    v80 = v154;
    v28 = v137;
    v29 = v135;
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileMatMulLayer_cold_8();
    }

    v113 = v140;
    goto LABEL_61;
  }

  v170 = v156;
  v171 = v151;
  v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v170 count:2];
  v108 = ANE_ValidateElementWiseUnit(v107, v93, 1);

  v69 = v147;
  v80 = v154;
  if (v108)
  {
    goto LABEL_47;
  }

  v109 = v93;
  v110 = +[MLCLog framework];
  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
  {
LABEL_58:
    ANE_CompileMatMulLayer_cold_5();
  }

LABEL_59:
  v113 = v140;
LABEL_60:
  v28 = v137;
  v29 = v135;
LABEL_61:

  v152 = 0;
  v5 = v141;
  v111 = v160;
LABEL_50:

LABEL_29:
  v9 = v145;
  v6 = v146;
  v11 = v161;
  v13 = v143;
  v12 = v144;
  v14 = v142;
LABEL_30:

  objc_autoreleasePoolPop(v13);
  v114 = *MEMORY[0x277D85DE8];

  return v152;
}

id ANE_CreateConcatLayer(unint64_t a1, unint64_t a2)
{
  v9 = 1;
  ANE_GetDimensionIn4DWithOnePrepended(a2, a1, &v9);
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  [v3 setObject:@"Concat" forKeyedSubscript:kMLCANENetUnitType[0]];
  v4 = ANE_GetANECIRDimension(v9);
  [v3 setObject:v4 forKeyedSubscript:@"Dimension"];

  v5 = [_MLCANEConcatParameters concatUnitParametersWith:v3];
  v6 = [MLCANEDeviceOps deviceOpsWithType:31 params:v5];
  if (v6)
  {
    [v2 addObject:v6];
  }

  v7 = [v2 copy];

  return v7;
}

uint64_t ANE_ValidateConcatLayer(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sourceTensors];
  v5 = ANE_ValidateConcatUnit(v4, v3, 1);

  return v5;
}

id ANE_CompileConcatLayer(void *a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1;
  v7 = [a3 parentLayers];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v6 objectAtIndexedSubscript:0];

  if ([v5 count] != 1)
  {
    v10 = [v9 params];
    v13 = [v10 concatParams];
    v11 = [_MLCANEPlistBuilder createUnitWithLayer:v8 unitParams:v13];

    if ((ANE_ValidateConcatLayer(v8, v11) & 1) == 0)
    {
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileConcatLayer_cold_1();
      }

      goto LABEL_9;
    }

LABEL_6:

    v17 = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    goto LABEL_10;
  }

  v18[0] = kMLCANENetUnitType[0];
  v18[1] = @"BiasScalar";
  v19[0] = @"GOC";
  v19[1] = &unk_284BA5CD8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [_MLCANEPlistBuilder createUnitWithLayer:v8 unitParams:v10];
  if (ANE_ValidateGOCUnit(v5, v11, 1))
  {
    goto LABEL_6;
  }

  v12 = +[MLCLog framework];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    ANE_CompileConcatLayer_cold_1();
  }

LABEL_9:

  v14 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id ANE_CreateNormalizationLayer(int a1, void *a2, void *a3, float a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v108 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [MEMORY[0x277CBEBF8] mutableCopy];
  v23 = v22;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v101 = 0;
      v50 = ANE_BuildBatchNormalizationParams(&v101, v17, v18, v19, v20, v21, a4);
      v49 = v101;
      if (v50)
      {
        v100 = v23;
        v98 = v18;
        v51 = 0;
        v52 = 2;
        if (v16)
        {
          goto LABEL_87;
        }

        goto LABEL_23;
      }

      v62 = +[MLCLog framework];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateNormalizationLayer_cold_15();
      }

LABEL_36:
      v63 = MEMORY[0x277CBEBF8];
      goto LABEL_103;
    }

    if (a1 == 1)
    {
      v24 = v17;
      v25 = v18;
      v95 = v19;
      v92 = v20;
      v90 = v21;
      v98 = v18;
      v99 = v19;
      v100 = v23;
      v88 = v24;
      if ([v24 count] == 1)
      {
        v26 = [v24 objectAtIndexedSubscript:0];
        v27 = [v26 unsignedIntegerValue];

        if (v25 && v95)
        {
          v105 = 0;
          v28 = ANE_BuildBatchNormalizationParams(&v105, v88, v25, v95, v92, v90, a4);
          v29 = v105;
          if (v28)
          {
            v30 = 0;
LABEL_9:
            v31 = v29;
            v32 = v30;

            v33 = 1;
            v34 = v29;
LABEL_74:

            v49 = v34;
            v51 = v30;
            if (v33)
            {
              v52 = 13;
              goto LABEL_86;
            }

            v78 = +[MLCLog framework];
            v19 = v99;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              ANE_CreateNormalizationLayer_cold_14();
            }

            v63 = MEMORY[0x277CBEBF8];
            v18 = v98;
            goto LABEL_94;
          }

          v30 = +[MLCLog framework];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateNormalizationLayer_cold_13();
          }
        }

        else
        {
          v87 = v27;
          v29 = [MEMORY[0x277CBEC10] mutableCopy];
          [v29 setObject:@"InstanceNormalization" forKeyedSubscript:kMLCANENetUnitType[0]];
          v105 = @"Height";
          v106 = @"Width";
          v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:2];
          [v29 setObject:v67 forKeyedSubscript:@"Dimension"];

          v104 = a4;
          v103 = 0;
          if (ANE_ConvertFp32ToInt16(&v104, &v103))
          {
            v68 = [MEMORY[0x277CCABB0] numberWithShort:v103];
            [v29 setObject:v68 forKeyedSubscript:@"Epsilon"];

            v30 = 0;
            if (!v92 || !v90)
            {
              goto LABEL_9;
            }

            v102 = 0;
            v69 = ANE_BuildGocParams(&v102, v87, v92, v90);
            v30 = v102;
            if (v69)
            {
              if (ANE_CalculateScaleAndBiasForInstanceNorm(v87, v92, v90, a4))
              {
                goto LABEL_9;
              }

              v70 = +[MLCLog framework];
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                ANE_CreateNormalizationLayer_cold_12();
              }
            }

            else
            {
              v70 = +[MLCLog framework];
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                ANE_CreateNormalizationLayer_cold_11();
              }
            }
          }

          else
          {
            v30 = +[MLCLog framework];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              ANE_CreateNormalizationLayer_cold_10(&v104);
            }
          }
        }
      }

      else
      {
        v29 = +[MLCLog framework];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateNormalizationLayer_cold_9(v24);
        }
      }

      v34 = 0;
      v30 = 0;
      v33 = 0;
      goto LABEL_74;
    }

LABEL_19:
    v49 = +[MLCLog framework];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateNormalizationLayer_cold_16();
    }

    goto LABEL_36;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      goto LABEL_19;
    }

    v98 = v18;
    v35 = v17;
    v36 = v20;
    v93 = v21;
    v99 = v19;
    v100 = v23;
    v96 = v36;
    if ([v35 count] != 1)
    {
      v39 = +[MLCLog framework];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateNormalizationLayer_cold_1(v35);
      }

      v47 = 0;
      v48 = 0;
      v46 = 0;
      goto LABEL_84;
    }

    v91 = v16;
    v37 = [v35 objectAtIndexedSubscript:0];
    v38 = [v37 unsignedIntegerValue];

    v39 = [MEMORY[0x277CBEC10] mutableCopy];
    [v39 setObject:@"LayerNormalization" forKeyedSubscript:kMLCANENetUnitType[0]];
    v105 = @"Channel";
    v106 = @"Height";
    v107 = @"Width";
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:3];
    [v39 setObject:v40 forKeyedSubscript:@"Dimension"];

    v104 = a4;
    v103 = 0;
    if (ANE_ConvertFp32ToInt16(&v104, &v103))
    {
      v89 = v38;
      v41 = [MEMORY[0x277CCABB0] numberWithShort:v103];
      [v39 setObject:v41 forKeyedSubscript:@"Epsilon"];

      v42 = 0;
      if (!v96 || !v93)
      {
        goto LABEL_18;
      }

      v102 = 0;
      v43 = ANE_BuildGocParams(&v102, v89, v96, v93);
      v42 = v102;
      if (v43)
      {
        if (ANE_CalculateScaleAndBiasForInstanceNorm(v89, v96, v93, a4))
        {
LABEL_18:
          v44 = v39;
          v45 = v42;
          v46 = 1;
          v47 = v39;
          v48 = v42;
LABEL_83:

          v16 = v91;
LABEL_84:

          v49 = v47;
          v51 = v48;
          if (v46)
          {
            v52 = 23;
LABEL_86:
            v19 = v99;
            if (v16)
            {
LABEL_87:
              v79 = ANE_BuildNeuronParams(v16);
              if (!v79)
              {
                v56 = +[MLCLog framework];
                v23 = v100;
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  ANE_CreateNormalizationLayer_cold_17();
                }

                v63 = MEMORY[0x277CBEBF8];
                goto LABEL_102;
              }

              v56 = v79;
              if (a1)
              {
                if (a1 != 1)
                {
                  v86 = +[MLCLog framework];
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                  {
                    ANE_CreateNormalizationLayer_cold_16();
                  }

                  v63 = MEMORY[0x277CBEBF8];
                  v23 = v100;
                  goto LABEL_102;
                }

                v94 = v17;
                v97 = v21;
                v53 = v20;
                v54 = v19;
                v55 = v16;
                v52 = 14;
              }

              else
              {
                v94 = v17;
                v97 = v21;
                v53 = v20;
                v54 = v19;
                v55 = v16;
                v52 = 3;
              }

LABEL_99:
              v81 = [_MLCANENormalizationParameters normalizationUnitParametersWith:v49 gocParams:v51 neuronParams:v56];
              v82 = [MLCANEDeviceOps deviceOpsWithType:v52 params:v81];
              if (v82)
              {
                [v100 addObject:v82];
              }

              v63 = v100;

              v16 = v55;
              v19 = v54;
              v83 = v53;
              v17 = v94;
              v21 = v97;
              v23 = v100;
              v20 = v83;
LABEL_102:

              v18 = v98;
              goto LABEL_103;
            }

LABEL_23:
            v94 = v17;
            v97 = v21;
            v53 = v20;
            v54 = v19;
            v55 = v16;
            v56 = 0;
            goto LABEL_99;
          }

          v80 = +[MLCLog framework];
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateNormalizationLayer_cold_5();
          }

          v63 = MEMORY[0x277CBEBF8];
          v18 = v98;
          v19 = v99;
LABEL_94:
          v23 = v100;
          goto LABEL_103;
        }

        v77 = +[MLCLog framework];
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateNormalizationLayer_cold_4();
        }
      }

      else
      {
        v77 = +[MLCLog framework];
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateNormalizationLayer_cold_3();
        }
      }
    }

    else
    {
      v42 = +[MLCLog framework];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateNormalizationLayer_cold_2(&v104);
      }
    }

    v47 = 0;
    v48 = 0;
    v46 = 0;
    goto LABEL_83;
  }

  v100 = v22;
  v57 = v17;
  v58 = [MEMORY[0x277CBEC10] mutableCopy];
  v59 = [v57 count];

  *&v102 = a4;
  LOWORD(v104) = 0;
  v99 = v19;
  if (!ANE_ConvertFp32ToInt16(&v102, &v104))
  {
    v64 = +[MLCLog framework];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateNormalizationLayer_cold_6(&v102);
    }

    goto LABEL_40;
  }

  if ((v59 - 1) < 2)
  {
    [v58 setObject:@"InstanceNormalization" forKeyedSubscript:kMLCANENetUnitType[0]];
    v23 = v100;
    if (v59 == 1)
    {
      v105 = @"Width";
      v60 = MEMORY[0x277CBEA60];
      v61 = 1;
    }

    else
    {
      v105 = @"Height";
      v106 = @"Width";
      v60 = MEMORY[0x277CBEA60];
      v61 = 2;
    }

    v73 = [v60 arrayWithObjects:&v105 count:v61];
    [v58 setObject:v73 forKeyedSubscript:@"Dimension"];

    v72 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v104)];
    goto LABEL_56;
  }

  if (v59 != 3)
  {
    v76 = +[MLCLog framework];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateNormalizationLayer_cold_7();
    }

LABEL_40:
    v65 = 0;
    v66 = 0;
    v23 = v100;
    goto LABEL_57;
  }

  [v58 setObject:@"LayerNormalization" forKeyedSubscript:kMLCANENetUnitType[0]];
  v105 = @"Channel";
  v106 = @"Height";
  v107 = @"Width";
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:3];
  [v58 setObject:v71 forKeyedSubscript:@"Dimension"];

  v72 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v104)];
  v23 = v100;
LABEL_56:
  [v58 setObject:v72 forKeyedSubscript:@"Epsilon"];

  v74 = v58;
  v66 = 1;
  v65 = v58;
LABEL_57:

  v49 = v65;
  if (v66)
  {
    v98 = v18;
    v51 = 0;
    v52 = 19;
    goto LABEL_86;
  }

  v75 = +[MLCLog framework];
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateNormalizationLayer_cold_8();
  }

  v63 = MEMORY[0x277CBEBF8];
  v19 = v99;
LABEL_103:

  v84 = *MEMORY[0x277D85DE8];

  return v63;
}

uint64_t ANE_BuildBatchNormalizationParams(NSObject **a1, void *a2, void *a3, void *a4, void *a5, void *a6, float a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if ([v13 count] != 1)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ANE_BuildBatchNormalizationParams_cold_1(v13);
    }

    goto LABEL_33;
  }

  v83[0] = 0;
  v18 = [v13 objectAtIndexedSubscript:0];
  v19 = ANE_BuildGocParams(v83, [v18 unsignedIntegerValue], v14, v15);
  v20 = v83[0];

  if ((v19 & 1) == 0)
  {
    v65 = +[MLCLog framework];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      ANE_BuildBatchNormalizationParams_cold_2();
    }

    goto LABEL_32;
  }

  v68 = a1;
  v74 = v20;
  v79 = v13;
  v73 = [v13 objectAtIndexedSubscript:0];
  v21 = [v73 unsignedIntegerValue];
  v78 = v14;
  v22 = v14;
  v77 = v15;
  v23 = v15;
  v76 = v16;
  v24 = v16;
  v75 = v17;
  v25 = v17;
  v26 = [v22 descriptor];
  v27 = [v26 dataType];

  v72 = v22;
  v28 = [v22 data];
  v82 = [v28 bytes];

  v80 = malloc_type_malloc([MLCTensorDescriptor elementByteCount:v27]* v21, 0xB1A6464BuLL);
  v70 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
  v29 = [v23 descriptor];
  v30 = [v29 dataType];

  v71 = v23;
  v31 = [v23 data];
  v81 = [v31 bytes];

  v32 = [MLCTensorDescriptor elementByteCount:v30]* v21;
  v33 = malloc_type_malloc(v32, 0x61D42796uLL);
  v69 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v33 length:v32 freeWhenDone:1];
  if (!v21)
  {
LABEL_21:
    v61 = [v72 deviceMemory];
    [v61 setObject:v70 atIndexedSubscript:{objc_msgSend(v72, "deviceIndex")}];

    v62 = [v71 deviceMemory];
    [v62 setObject:v69 atIndexedSubscript:{objc_msgSend(v71, "deviceIndex")}];

    v20 = v74;
    v63 = v74;
    *v68 = v74;
    v64 = 1;
    v14 = v78;
    v13 = v79;
    v16 = v76;
    v15 = v77;
    v17 = v75;
    goto LABEL_34;
  }

  v35 = v21;
  v36 = 0;
  v37 = a7;
  v38 = a7 + 1.0;
  while (1)
  {
    TensorValueInFloat = ANE_GetTensorValueInFloat(v82, v27, v36, *&_D0);
    v40 = ANE_GetTensorValueInFloat(v81, v30, v36, TensorValueInFloat);
    v41 = 1.0;
    if (v25)
    {
      v42 = [v25 data];
      v43 = [v42 bytes];
      v44 = [v25 descriptor];
      v45 = [v44 dataType];
      v41 = ANE_GetTensorValueInFloat(v43, v45, v36, v46);
    }

    if (v24)
    {
      v47 = [v24 data];
      v48 = [v47 bytes];
      v49 = [v24 descriptor];
      v50 = [v49 dataType];
      v52 = ANE_GetTensorValueInFloat(v48, v50, v36, v51);
    }

    else
    {
      v52 = 0.0;
    }

    _D0 = 1.0 / sqrt(v37 + v40) * v41;
    v53 = v38 / (fabs(_D0) + v37);
    if (_D0 < 0.0)
    {
      v53 = -v53;
    }

    _D1 = -(TensorValueInFloat - v52 * v53);
    if (v27 == 3)
    {
      __asm { FCVT            H1, D1 }

      v80[v36] = _H1;
    }

    else
    {
      if (v27 != 1)
      {
        v66 = +[MLCLog framework];
        if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      v55 = _D1;
      *&v80[2 * v36] = v55;
    }

    if (v30 == 3)
    {
      __asm { FCVT            H0, D0 }

      v33[v36] = LOWORD(_D0);
      goto LABEL_20;
    }

    if (v30 != 1)
    {
      break;
    }

    *&_D0 = _D0;
    *&v33[2 * v36] = LODWORD(_D0);
LABEL_20:
    if (v35 == ++v36)
    {
      goto LABEL_21;
    }
  }

  v66 = +[MLCLog framework];
  if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_30;
  }

LABEL_29:
  ANE_BuildBatchNormalizationParams_cold_3();
LABEL_30:
  v14 = v78;
  v13 = v79;
  v16 = v76;
  v15 = v77;
  v20 = v74;
  v17 = v75;

  v65 = +[MLCLog framework];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    ANE_BuildBatchNormalizationParams_cold_5();
  }

LABEL_32:

LABEL_33:
  v64 = 0;
LABEL_34:

  return v64;
}

id ANE_CompileNormalizationLayer(unsigned int a1, void *a2, void *a3, void *a4)
{
  v172[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectAtIndexedSubscript:0];
  v164 = v9;
  v11 = [v9 parentLayers];
  v165 = [v11 objectAtIndexedSubscript:0];

  v12 = [v10 params];
  v13 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = [v12 normalizationParams];
  v15 = [v14 mutableCopy];

  v16 = [v12 gocParams];
  v17 = [v12 neuronParams];
  if (a1 < 2)
  {
    goto LABEL_4;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      v31 = +[MLCLog framework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileNormalizationLayer_cold_16();
      }

      goto LABEL_64;
    }

LABEL_4:
    v160 = v7;
    v18 = v165;
    v158 = v15;
    v156 = v16;
    v19 = [MEMORY[0x277CBEBF8] mutableCopy];
    objc_opt_class();
    v163 = v8;
    if (objc_opt_isKindOfClass())
    {
      v149 = v12;
      v151 = v17;
      v20 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v149 = v12;
        v151 = v17;
        v20 = 1;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v155 = +[MLCLog framework];
          if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
          {
            ANE_CompileNormalizationLayer_cold_9();
          }

          goto LABEL_57;
        }

        v149 = v12;
        v151 = v17;
        v20 = 3;
      }
    }

    v32 = [v18 sourceTensors];
    v33 = [v32 objectAtIndexedSubscript:0];

    v155 = v33;
    v34 = [v33 descriptor];
    v35 = [v34 dimensionCount];

    if ((v35 - 2) < 2)
    {
      v148 = v15;
      v36 = objc_autoreleasePoolPush();
      v172[0] = 0;
      v171[0] = 0;
      v37 = [_MLCANEPlistBuilder createReshapeUnitsWithLayer:v18 reshapeUnits:v172 reshapeResultTensors:v171];
      v38 = v172[0];
      v39 = v171[0];
      if (v37)
      {
        contexta = v36;
        v144 = v10;
        v40 = [v18 label];
        v41 = [v40 stringByAppendingFormat:@"_%lu", objc_msgSend(v19, "count")];
        v42 = [v38 objectAtIndexedSubscript:0];
        [v42 setObject:v41 forKeyedSubscript:@"Name"];

        v43 = [v38 objectAtIndexedSubscript:0];
        [v19 addObject:v43];

        v44 = [v39 objectAtIndexedSubscript:0];
        v45 = ANE_CreateNormUnits(v20, v44, v18, v158, v156);

        v141 = v39;
        if (v45)
        {
          v139 = v38;
          v135 = v13;
          if ([v45 count])
          {
            v46 = 0;
            do
            {
              v47 = [v45 objectAtIndexedSubscript:v46];
              v48 = [v18 label];
              v49 = [v48 stringByAppendingFormat:@"_%lu", objc_msgSend(v19, "count")];
              [v47 setObject:v49 forKeyedSubscript:@"Name"];

              v50 = [v19 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - 1}];
              v51 = [v50 objectForKeyedSubscript:@"Name"];
              v170[0] = v51;
              v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:1];
              [v47 setObject:v52 forKeyedSubscript:@"Bottom"];

              [v19 addObject:v47];
              ++v46;
            }

            while (v46 < [v45 count]);
          }

          v53 = [v18 label];
          v54 = [v53 stringByAppendingFormat:@"_%lu", objc_msgSend(v19, "count")];
          v38 = v139;
          v55 = [v139 objectAtIndexedSubscript:1];
          [v55 setObject:v54 forKeyedSubscript:@"Name"];

          v56 = [v19 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - 1}];
          v57 = [v56 objectForKeyedSubscript:@"Name"];
          v169[0] = v57;
          v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:1];
          v59 = [v139 objectAtIndexedSubscript:1];
          [v59 setObject:v58 forKeyedSubscript:@"Bottom"];

          v60 = [v139 objectAtIndexedSubscript:1];
          [v19 addObject:v60];
          v10 = v144;
          v15 = v148;
          v13 = v135;
        }

        else
        {
          v60 = +[MLCLog framework];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            ANE_CompileNormalizationLayer_cold_10();
          }

          v10 = v144;
          v15 = v148;
        }

        v17 = v151;

        objc_autoreleasePoolPop(contexta);
        if (!v45)
        {
          v64 = 0;
          goto LABEL_59;
        }

LABEL_53:
        v64 = [v19 copy];
LABEL_59:
        v12 = v149;
        goto LABEL_60;
      }

      v63 = +[MLCLog framework];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileNormalizationLayer_cold_11();
      }

      objc_autoreleasePoolPop(v36);
      v64 = 0;
      v12 = v149;
      v17 = v151;
      v15 = v148;
LABEL_60:

      v7 = v160;
      if (!v64)
      {
        v101 = +[MLCLog framework];
        v8 = v163;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          ANE_CompileNormalizationLayer_cold_8();
        }

LABEL_64:
        v102 = 0;
LABEL_89:
        v121 = v164;
        goto LABEL_90;
      }

      goto LABEL_85;
    }

    if (v35 != 4)
    {
      v65 = +[MLCLog framework];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileNormalizationLayer_cold_13();
      }

      v64 = 0;
      v12 = v149;
      v17 = v151;
      goto LABEL_60;
    }

    v61 = ANE_CreateNormUnits(v20, v155, v18, v158, v156);
    if (v61)
    {
      v62 = v61;
      [v19 addObjectsFromArray:v61];

      v17 = v151;
      goto LABEL_53;
    }

    v100 = +[MLCLog framework];
    v12 = v149;
    v17 = v151;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileNormalizationLayer_cold_10();
    }

LABEL_57:
    v64 = 0;
    goto LABEL_60;
  }

  v163 = v8;
  v21 = v165;
  v147 = v15;
  v22 = v15;
  v140 = v10;
  v159 = [MEMORY[0x277CBEBF8] mutableCopy];
  v23 = v21;
  v24 = [v23 normalizedShape];
  v25 = [v24 count];

  v157 = [v23 gamma];
  v154 = [v23 beta];
  v138 = v23;
  context = v22;
  if ((v25 - 1) < 2)
  {
    v26 = v23;
    v27 = v17;
    v28 = [_MLCANEPlistBuilder createUnitWithLayer:v26 unitParams:v22];
    v29 = [v26 sourceTensors];
    v30 = ANE_ValidateInstanceNormUnit(v29, v28, 1);

    if (v30)
    {
      v15 = v147;
      goto LABEL_34;
    }

    v98 = +[MLCLog framework];
    v17 = v27;
    v23 = v138;
    v15 = v147;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileNormalizationLayer_cold_2();
    }

LABEL_48:
    v64 = 0;
    goto LABEL_84;
  }

  if (v25 != 3)
  {
    v99 = +[MLCLog framework];
    v15 = v147;
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileNormalizationLayer_cold_7();
    }

    goto LABEL_48;
  }

  v66 = v23;
  v27 = v17;
  v28 = [_MLCANEPlistBuilder createUnitWithLayer:v66 unitParams:v22];
  v67 = [v66 sourceTensors];
  v68 = ANE_ValidateLayerNormUnit(v67, v28, 1);

  v15 = v147;
  if ((v68 & 1) == 0)
  {
    v103 = +[MLCLog framework];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileNormalizationLayer_cold_1();
    }

    v64 = 0;
    v17 = v27;
    goto LABEL_83;
  }

LABEL_34:
  [v159 addObject:v28];

  v17 = v27;
  if (!v157 || !v154)
  {
    goto LABEL_79;
  }

  v161 = v7;
  v137 = v16;
  v69 = v138;
  v70 = v157;
  v132 = v154;
  v71 = v159;
  v134 = v140;
  v131 = v70;
  v133 = v69;
  if ([v71 count])
  {
    v152 = v17;
    v136 = v13;
    v72 = [v71 objectAtIndexedSubscript:{objc_msgSend(v71, "count") - 1}];
    v73 = [v69 label];
    v74 = [v73 stringByAppendingFormat:@"_%lu", objc_msgSend(v71, "count") - 1];
    v130 = v72;
    [v72 setObject:v74 forKeyedSubscript:@"Name"];

    v75 = [v69 sourceTensors];
    v76 = [v75 objectAtIndexedSubscript:0];

    v77 = ANE_CreateBroadcastedConstantTensor(v70, v76);
    v128 = v77;
    v129 = v76;
    if (v77)
    {
      v78 = v77;
      v79 = [v134 constantTensors];
      [v79 addObject:v78];

      v80 = v132;
      v81 = ANE_CreateBroadcastedConstantTensor(v132, v76);
      v127 = v81 != 0;
      if (v81)
      {
        v82 = [v134 constantTensors];
        [v82 addObject:v81];

        v171[0] = kMLCANENetUnitType[0];
        v171[1] = @"Type";
        v172[0] = @"ElementWise";
        v172[1] = @"Mult";
        v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:2];
        v125 = [_MLCANEPlistBuilder createUnitWithLayer:v133 unitParams:v83];
        [v133 label];
        v85 = v84 = v78;
        [v85 stringByAppendingFormat:@"_%lu", objc_msgSend(v71, "count")];
        v86 = v145 = v10;
        [v125 setObject:v86 forKeyedSubscript:?];

        v87 = [v130 objectForKeyedSubscript:@"Name"];
        v170[0] = v87;
        v88 = v84;
        v89 = v83;
        v80 = v132;
        v90 = [v88 label];
        v170[1] = v90;
        v150 = v12;
        v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
        [v125 setObject:v91 forKeyedSubscript:@"Bottom"];

        [v71 addObject:v125];
        v168[0] = kMLCANENetUnitType[0];
        v168[1] = @"Type";
        v169[0] = @"ElementWise";
        v169[1] = @"Add";
        v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:2];
        v92 = [_MLCANEPlistBuilder createUnitWithLayer:v133 unitParams:v126];
        v93 = [v133 label];
        v94 = [v93 stringByAppendingFormat:@"_%lu", objc_msgSend(v71, "count")];
        [v92 setObject:v94 forKeyedSubscript:@"Name"];

        v95 = [v125 objectForKeyedSubscript:@"Name"];
        v167[0] = v95;
        v96 = [v81 label];
        v167[1] = v96;
        v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:2];
        [v92 setObject:v97 forKeyedSubscript:@"Bottom"];

        v12 = v150;
        v15 = v147;

        [v71 addObject:v92];
        v10 = v145;
      }

      else
      {
        v89 = +[MLCLog framework];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          ANE_CompileNormalizationLayer_cold_3();
        }
      }

      v17 = v152;
      v107 = v134;
      v106 = v80;
    }

    else
    {
      v81 = +[MLCLog framework];
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileNormalizationLayer_cold_4();
      }

      v127 = 0;
      v17 = v152;
      v106 = v132;
      v107 = v134;
    }

    v13 = v136;
    v105 = v127;
    v108 = v130;
  }

  else
  {
    v153 = v71;
    v104 = +[MLCLog framework];
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileNormalizationLayer_cold_5();
      v105 = 0;
      v106 = v132;
      v108 = v104;
      v107 = v134;
    }

    else
    {
      v105 = 0;
      v106 = v132;
      v107 = v134;
      v108 = v104;
    }

    v71 = v153;
  }

  v16 = v137;
  v7 = v161;
  if (!v105)
  {
    v109 = +[MLCLog framework];
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileNormalizationLayer_cold_6();
    }

    v64 = 0;
  }

  else
  {
LABEL_79:
    v64 = [v159 copy];
  }

LABEL_83:
  v23 = v138;
LABEL_84:

  if (!v64)
  {
    v124 = +[MLCLog framework];
    v8 = v163;
    v121 = v164;
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileNormalizationLayer_cold_8();
    }

    goto LABEL_95;
  }

LABEL_85:
  [v13 addObjectsFromArray:v64];

  if (!v17)
  {
LABEL_88:
    v102 = [v13 copy];
    v8 = v163;
    goto LABEL_89;
  }

  v146 = v10;
  v110 = [v165 fusedLayers];
  v111 = [v110 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v113 = [v165 fusedLayers];
    v114 = [v113 objectAtIndexedSubscript:0];

    v115 = [v114 descriptor];
    v116 = ANE_CreateUnitsWithNeuronLayer(v114, v17, [v115 activationType]);

    v117 = [v165 label];
    v166 = v117;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
    v162 = v7;
    v119 = v118 = v17;
    v120 = [v116 objectAtIndexedSubscript:0];
    [v120 setObject:v119 forKeyedSubscript:@"Bottom"];

    v10 = v146;
    v17 = v118;
    v7 = v162;

    [v13 addObjectsFromArray:v116];
    goto LABEL_88;
  }

  v124 = +[MLCLog framework];
  v8 = v163;
  v121 = v164;
  if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
  {
    ANE_CompileNormalizationLayer_cold_14(v165);
  }

LABEL_95:

  v102 = 0;
LABEL_90:

  v122 = *MEMORY[0x277D85DE8];

  return v102;
}

uint64_t ANE_BuildGocParams(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEC10];
  v10 = [MEMORY[0x277CBEC10] mutableCopy];
  [v10 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
  v11 = [v9 mutableCopy];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v11 setObject:v12 forKeyedSubscript:@"BiasMutable"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v11 setObject:v13 forKeyedSubscript:@"BiasCount"];

  v14 = [v7 descriptor];
  v15 = [v14 dataType];

  v16 = ANE_GetANECIRDataTypeWithMLCDataType(v15);
  if (!v16)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ANE_BuildGocParams_cold_1();
    }

    goto LABEL_9;
  }

  [v11 setObject:v16 forKeyedSubscript:@"BiasType"];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v11 setObject:v17 forKeyedSubscript:@"ScaleMutable"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v11 setObject:v18 forKeyedSubscript:@"ScaleCount"];

  v19 = [v8 descriptor];
  LODWORD(v17) = [v19 dataType];

  v20 = ANE_GetANECIRDataTypeWithMLCDataType(v17);
  if (!v20)
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      ANE_BuildGocParams_cold_1();
    }

LABEL_9:
    v22 = 0;
    goto LABEL_10;
  }

  [v11 setObject:v20 forKeyedSubscript:@"ScaleType"];
  [v10 setObject:v11 forKeyedSubscript:@"BiasScaleGroupData"];
  v21 = v10;
  *a1 = v10;
  v22 = 1;
LABEL_10:

  return v22;
}

uint64_t ANE_CalculateScaleAndBiasForInstanceNorm(uint64_t a1, void *a2, void *a3, float a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 descriptor];
  v10 = [v9 dataType];

  v11 = [v7 data];
  v12 = [v11 bytes];

  v13 = [MLCTensorDescriptor elementByteCount:v10]* a1;
  v14 = malloc_type_malloc(v13, 0x910D58C2uLL);
  v37 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v14 length:v13 freeWhenDone:1];
  v15 = [v8 descriptor];
  v16 = [v15 dataType];

  v17 = [v8 data];
  v18 = [v17 bytes];

  v19 = [MLCTensorDescriptor elementByteCount:v16]* a1;
  v20 = malloc_type_malloc(v19, 0xB44C10AuLL);
  v36 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:v19 freeWhenDone:1];
  if (!a1)
  {
LABEL_12:
    v29 = [v7 deviceMemory];
    v30 = v37;
    [v29 setObject:v37 atIndexedSubscript:{objc_msgSend(v7, "deviceIndex")}];

    v31 = [v8 deviceMemory];
    v32 = v36;
    [v31 setObject:v36 atIndexedSubscript:{objc_msgSend(v8, "deviceIndex")}];

    v33 = 1;
    goto LABEL_18;
  }

  v22 = 0;
  v23 = a4;
  while (1)
  {
    _S8 = ANE_GetTensorValueInFloat(v18, v16, v22, *&_D0);
    _D0 = ANE_GetTensorValueInFloat(v12, v10, v22, _S8) / (v23 + _S8);
    if (v10 == 3)
    {
      __asm { FCVT            H0, D0 }

      v14[v22] = LOWORD(_D0);
    }

    else
    {
      if (v10 != 1)
      {
        v34 = +[MLCLog framework];
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      *&_D0 = _D0;
      *&v14[2 * v22] = LODWORD(_D0);
    }

    if (v16 == 3)
    {
      __asm { FCVT            H0, S8 }

      v20[v22] = LOWORD(_D0);
      goto LABEL_11;
    }

    if (v16 != 1)
    {
      break;
    }

    *&v20[2 * v22] = _S8;
LABEL_11:
    if (a1 == ++v22)
    {
      goto LABEL_12;
    }
  }

  v34 = +[MLCLog framework];
  if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_17;
  }

LABEL_16:
  ANE_CalculateScaleAndBiasForInstanceNorm_cold_1();
LABEL_17:

  v33 = 0;
  v30 = v37;
  v32 = v36;
LABEL_18:

  return v33;
}

id ANE_CreateNormUnits(int a1, void *a2, void *a3, void *a4, void *a5)
{
  v88[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a1 == 3)
  {
    v84 = v10;
    v35 = v10;
    v36 = v13;
    v37 = v11;
    v38 = [MEMORY[0x277CBEBF8] mutableCopy];
    v39 = v35;
    v85 = 0;
    ANE_GetTensor4DShapeWithBatchFirst(v9, &v85);
    v80 = v85;
    v40 = [v80 objectAtIndexedSubscript:1];
    v41 = [v40 unsignedIntegerValue];

    v82 = v37;
    v42 = [_MLCANEPlistBuilder createUnitWithLayer:v39 unitParams:v37];
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
    [v42 setObject:v43 forKeyedSubscript:@"OutputChannels"];

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v39, "groupCount")}];
    [v42 setObject:v44 forKeyedSubscript:@"NumGroups"];

    v88[0] = v9;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:1];
    LOBYTE(v37) = ANE_ValidateLayerNormUnit(v45, v42, 0);

    if ((v37 & 1) == 0)
    {
      v72 = +[MLCLog framework];
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateNormUnits_cold_1();
      }

      v21 = 0;
      goto LABEL_38;
    }

    [v38 addObject:v42];
    if (v36)
    {
      v78 = v13;
      v46 = [_MLCANEPlistBuilder createUnitWithLayer:v39 unitParams:v36];
      v47 = [v39 label];
      v48 = [v47 stringByAppendingString:@"_0"];
      [v42 setObject:v48 forKeyedSubscript:@"Name"];

      v49 = [v39 label];
      v50 = [v49 stringByAppendingString:@"_1"];
      [v46 setObject:v50 forKeyedSubscript:@"Name"];

      v51 = [v42 objectForKeyedSubscript:@"Name"];
      v87 = v51;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
      [v46 setObject:v52 forKeyedSubscript:@"Bottom"];

      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
      [v46 setObject:v53 forKeyedSubscript:@"OutputChannels"];

      v86 = v9;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      LOBYTE(v52) = ANE_ValidateGOCUnit(v54, v46, 0);

      if ((v52 & 1) == 0)
      {
        v74 = +[MLCLog framework];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateNormUnits_cold_2();
        }

        v21 = 0;
        v13 = v78;
        goto LABEL_38;
      }

      [v38 addObject:v46];

      v13 = v78;
    }

    v21 = [v38 copy];
LABEL_38:

    v11 = v82;
    v10 = v84;
    goto LABEL_45;
  }

  if (a1 == 1)
  {
    v22 = v10;
    v23 = v11;
    v83 = v13;
    v81 = [MEMORY[0x277CBEBF8] mutableCopy];
    v24 = v22;
    v85 = 0;
    ANE_GetTensor4DShapeWithBatchFirst(v9, &v85);
    v25 = v85;
    v26 = [v24 mean];
    if (v26 && (v27 = v26, [v24 variance], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v28))
    {
      v29 = [_MLCANEPlistBuilder createUnitWithLayer:v24 unitParams:v23];
      v30 = MEMORY[0x277CCABB0];
      v31 = [v25 objectAtIndexedSubscript:1];
      v32 = [v30 numberWithUnsignedInteger:{objc_msgSend(v31, "unsignedIntegerValue")}];
      [v29 setObject:v32 forKeyedSubscript:@"OutputChannels"];

      v88[0] = v9;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:1];
      LOBYTE(v31) = ANE_ValidateGOCUnit(v33, v29, 0);

      if (v31)
      {
        v34 = v81;
        [v81 addObject:v29];
LABEL_22:
        v60 = v83;
        goto LABEL_39;
      }

      v61 = +[MLCLog framework];
      v60 = v83;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateNormUnits_cold_3();
      }
    }

    else
    {
      v79 = v13;
      v29 = [_MLCANEPlistBuilder createUnitWithLayer:v24 unitParams:v23];
      v56 = MEMORY[0x277CCABB0];
      v57 = [v25 objectAtIndexedSubscript:1];
      v58 = [v56 numberWithUnsignedInteger:{objc_msgSend(v57, "unsignedIntegerValue")}];
      [v29 setObject:v58 forKeyedSubscript:@"OutputChannels"];

      v88[0] = v9;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:1];
      LOBYTE(v57) = ANE_ValidateInstanceNormUnit(v59, v29, 0);

      if (v57)
      {
        v34 = v81;
        [v81 addObject:v29];
        v60 = v83;
        if (!v83)
        {
LABEL_39:

          v21 = [v34 copy];
LABEL_44:

          goto LABEL_45;
        }

        v61 = [_MLCANEPlistBuilder createUnitWithLayer:v24 unitParams:v83];
        v62 = [v24 label];
        v63 = [v62 stringByAppendingString:@"_0"];
        [v29 setObject:v63 forKeyedSubscript:@"Name"];

        v64 = [v24 label];
        v65 = [v64 stringByAppendingString:@"_1"];
        [v61 setObject:v65 forKeyedSubscript:@"Name"];

        v66 = [v29 objectForKeyedSubscript:@"Name"];
        v87 = v66;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
        [v61 setObject:v67 forKeyedSubscript:@"Bottom"];

        v68 = MEMORY[0x277CCABB0];
        v69 = [v25 objectAtIndexedSubscript:1];
        v70 = [v68 numberWithUnsignedInteger:{objc_msgSend(v69, "unsignedIntegerValue")}];
        [v61 setObject:v70 forKeyedSubscript:@"OutputChannels"];

        v86 = v9;
        v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
        LOBYTE(v69) = ANE_ValidateGOCUnit(v71, v61, 0);

        if (v69)
        {
          [v81 addObject:v61];

          v34 = v81;
          v13 = v79;
          goto LABEL_22;
        }

        v75 = +[MLCLog framework];
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateNormUnits_cold_3();
        }

        v13 = v79;
        v60 = v83;
      }

      else
      {
        v61 = +[MLCLog framework];
        v60 = v83;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateNormUnits_cold_4();
        }
      }
    }

    v21 = 0;
    v34 = v81;
    goto LABEL_44;
  }

  if (a1)
  {
    v55 = +[MLCLog framework];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateNormUnits_cold_7();
    }

    v21 = 0;
  }

  else
  {
    v14 = v12;
    v85 = 0;
    ANE_GetTensor4DShapeWithBatchFirst(v9, &v85);
    v15 = v85;
    v16 = [_MLCANEPlistBuilder createUnitWithLayer:v10 unitParams:v11];
    v17 = MEMORY[0x277CCABB0];
    v18 = [v15 objectAtIndexedSubscript:1];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue")}];
    [v16 setObject:v19 forKeyedSubscript:@"OutputChannels"];

    v88[0] = v9;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:1];
    LOBYTE(v18) = ANE_ValidateGOCUnit(v20, v16, 0);

    if (v18)
    {
      v87 = v16;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    }

    else
    {
      v73 = +[MLCLog framework];
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateNormUnits_cold_6();
      }

      v21 = 0;
    }

    v13 = v14;
  }

LABEL_45:

  v76 = *MEMORY[0x277D85DE8];

  return v21;
}