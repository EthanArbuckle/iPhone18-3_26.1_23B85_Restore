@interface VisionCoreNamedObjects(VNInternalAdditions)
- (uint64_t)VNEnumerateFloatValuesAtIndexes:()VNInternalAdditions asTensor:usingBlock:error:;
- (uint64_t)VNGetConfidenceValue:()VNInternalAdditions asTensor:error:;
@end

@implementation VisionCoreNamedObjects(VNInternalAdditions)

- (uint64_t)VNGetConfidenceValue:()VNInternalAdditions asTensor:error:
{
  v8 = a4;
  v9 = [v8 shape];
  v10 = [v9 elementCount];

  if (v10 == 1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__VisionCoreNamedObjects_VNInternalAdditions__VNGetConfidenceValue_asTensor_error___block_invoke;
    aBlock[3] = &unk_1E77B41C0;
    aBlock[4] = &v16;
    v11 = _Block_copy(aBlock);
    v12 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:0];
    a5 = [a1 VNEnumerateFloatValuesAtIndexes:v12 asTensor:v8 usingBlock:v11 error:a5];

    if (a5)
    {
      *a3 = *(v17 + 6);
    }

    _Block_object_dispose(&v16, 8);
  }

  else if (a5)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ does not provide a single confidence value", v8];
    *a5 = [VNError errorForDataUnavailableWithLocalizedDescription:v13];

    a5 = 0;
  }

  return a5;
}

- (uint64_t)VNEnumerateFloatValuesAtIndexes:()VNInternalAdditions asTensor:usingBlock:error:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 shape];
  v32 = 0;
  if (([v13 getOneDimensionalArrayDimensionIndex:&v32 error:a6] & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = [v13 elementCount];
  v15 = [v10 firstIndex];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [v10 lastIndex];
    if (v15 < v14 && v17 < v14)
    {
      v18 = [v11 dataType];
      v19 = [v13 rank];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __105__VisionCoreNamedObjects_VNInternalAdditions__VNEnumerateFloatValuesAtIndexes_asTensor_usingBlock_error___block_invoke;
      aBlock[3] = &unk_1E77B4198;
      v29 = v19;
      v26 = v10;
      v30 = v32;
      v20 = v11;
      v27 = v20;
      v31 = v18;
      v28 = v12;
      v21 = _Block_copy(aBlock);
      v22 = [v20 name];
      v16 = [a1 accessReadOnlyDataForName:v22 usingBlock:v21 error:a6];

      v23 = v26;
LABEL_9:

      goto LABEL_11;
    }

    if (a6)
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Value indexes of %@ are out of bounds of [0..%ld]", v10, v14 - 1];
      [VNError errorForInvalidArgumentWithLocalizedDescription:v23];
      *a6 = v16 = 0;
      goto LABEL_9;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 1;
LABEL_11:

  return v16;
}

@end