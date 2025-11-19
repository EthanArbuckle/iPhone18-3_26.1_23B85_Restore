@interface NSArray(AVTExtension)
+ (id)avt_arrayWithFloat3:()AVTExtension;
+ (id)avt_arrayWithFloat3:()AVTExtension roundingBehavior:;
+ (id)avt_arrayWithFloat4:()AVTExtension;
+ (id)avt_arrayWithFloat4:()AVTExtension roundingBehavior:;
+ (id)avt_arrayWithFloat4x4:()AVTExtension;
+ (id)avt_arrayWithFloat4x4:()AVTExtension roundingBehavior:;
- (__n128)avt_float3;
- (__n128)avt_float4;
- (__n128)avt_float4x4;
- (id)avt_mutableContainersCopy;
- (id)avt_randomObject;
@end

@implementation NSArray(AVTExtension)

+ (id)avt_arrayWithFloat4x4:()AVTExtension
{
  v37[4] = *MEMORY[0x1E69E9840];
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v36[0] = v27;
  HIDWORD(v4) = a1.n128_u32[1];
  LODWORD(v4) = a1.n128_u32[1];
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v36[1] = v26;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v36[2] = v25;
  a1.n128_u64[0] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];
  v36[3] = a1.n128_u64[0];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  v37[0] = v24;
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:a2.n128_f64[0]];
  v35[0] = v23;
  HIDWORD(v5) = a2.n128_u32[1];
  LODWORD(v5) = a2.n128_u32[1];
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v35[1] = v22;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v35[2] = v21;
  a2.n128_u64[0] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v35[3] = a2.n128_u64[0];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  v37[1] = v20;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:a3.n128_f64[0]];
  v34[0] = v19;
  HIDWORD(v6) = a3.n128_u32[1];
  LODWORD(v6) = a3.n128_u32[1];
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v34[1] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v34[2] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  v34[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  v37[2] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:a4.n128_f64[0]];
  v33[0] = v11;
  HIDWORD(v12) = a4.n128_u32[1];
  LODWORD(v12) = a4.n128_u32[1];
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v33[1] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  v33[2] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  v33[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  v37[3] = v16;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];

  v17 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)avt_arrayWithFloat4x4:()AVTExtension roundingBehavior:
{
  v42[4] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = a7;
  v33 = [v7 avt_numberWithFloat:v8 roundingBehavior:a1.n128_f64[0]];
  v41[0] = v33;
  HIDWORD(v9) = a1.n128_u32[1];
  LODWORD(v9) = a1.n128_u32[1];
  v32 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:v9];
  v41[1] = v32;
  v31 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v41[2] = v31;
  a1.n128_u64[0] = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];
  v41[3] = a1.n128_u64[0];
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  v42[0] = v30;
  v29 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:a2.n128_f64[0]];
  v40[0] = v29;
  HIDWORD(v10) = a2.n128_u32[1];
  LODWORD(v10) = a2.n128_u32[1];
  v28 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:v10];
  v40[1] = v28;
  v27 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v40[2] = v27;
  a2.n128_u64[0] = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v40[3] = a2.n128_u64[0];
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v42[1] = v26;
  v25 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:a3.n128_f64[0]];
  v39[0] = v25;
  HIDWORD(v11) = a3.n128_u32[1];
  LODWORD(v11) = a3.n128_u32[1];
  v12 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:v11];
  v39[1] = v12;
  v13 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v39[2] = v13;
  v14 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  v39[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  v42[2] = v15;
  v16 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:a4.n128_f64[0]];
  v38[0] = v16;
  HIDWORD(v17) = a4.n128_u32[1];
  LODWORD(v17) = a4.n128_u32[1];
  v18 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:v17];
  v38[1] = v18;
  v19 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  v38[2] = v19;
  v20 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v8 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];

  v38[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  v42[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (__n128)avt_float4x4
{
  if ([a1 count] == 4)
  {
    v2 = a1;
    v43 = [v2 objectAtIndexedSubscript:0];
    v42 = [v43 objectAtIndexedSubscript:0];
    [v42 floatValue];
    v46 = v3;
    v41 = [v2 objectAtIndexedSubscript:0];
    v40 = [v41 objectAtIndexedSubscript:1];
    [v40 floatValue];
    v45 = v4;
    v39 = [v2 objectAtIndexedSubscript:0];
    v38 = [v39 objectAtIndexedSubscript:2];
    [v38 floatValue];
    v44 = v5;
    v37 = [v2 objectAtIndexedSubscript:0];
    v36 = [v37 objectAtIndexedSubscript:3];
    [v36 floatValue];
    *&v6 = __PAIR64__(v45, v46);
    *(&v6 + 1) = __PAIR64__(v7, v44);
    v47 = v6;
    v35 = [v2 objectAtIndexedSubscript:1];
    v34 = [v35 objectAtIndexedSubscript:0];
    [v34 floatValue];
    v33 = [v2 objectAtIndexedSubscript:1];
    v32 = [v33 objectAtIndexedSubscript:1];
    [v32 floatValue];
    v31 = [v2 objectAtIndexedSubscript:1];
    v30 = [v31 objectAtIndexedSubscript:2];
    [v30 floatValue];
    v29 = [v2 objectAtIndexedSubscript:1];
    v28 = [v29 objectAtIndexedSubscript:3];
    [v28 floatValue];
    v27 = [v2 objectAtIndexedSubscript:2];
    v26 = [v27 objectAtIndexedSubscript:0];
    [v26 floatValue];
    v25 = [v2 objectAtIndexedSubscript:2];
    v24 = [v25 objectAtIndexedSubscript:1];
    [v24 floatValue];
    v23 = [v2 objectAtIndexedSubscript:2];
    v22 = [v23 objectAtIndexedSubscript:2];
    [v22 floatValue];
    v8 = [v2 objectAtIndexedSubscript:2];
    v9 = [v8 objectAtIndexedSubscript:3];
    [v9 floatValue];
    v10 = [v2 objectAtIndexedSubscript:3];
    v11 = [v10 objectAtIndexedSubscript:0];
    [v11 floatValue];
    v12 = [v2 objectAtIndexedSubscript:3];
    v13 = [v12 objectAtIndexedSubscript:1];
    [v13 floatValue];
    v14 = [v2 objectAtIndexedSubscript:3];
    v15 = [v14 objectAtIndexedSubscript:2];
    [v15 floatValue];
    v16 = [v2 objectAtIndexedSubscript:3];

    v17 = [v16 objectAtIndexedSubscript:3];
    [v17 floatValue];

    return v47;
  }

  else
  {
    result = *MEMORY[0x1E69E9B18];
    v19 = *(MEMORY[0x1E69E9B18] + 16);
    v20 = *(MEMORY[0x1E69E9B18] + 32);
    v21 = *(MEMORY[0x1E69E9B18] + 48);
  }

  return result;
}

+ (id)avt_arrayWithFloat3:()AVTExtension
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v9[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v9[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)avt_arrayWithFloat3:()AVTExtension roundingBehavior:
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  v5 = a4;
  v6 = [v4 avt_numberWithFloat:v5 roundingBehavior:a1.n128_f64[0]];
  v14[0] = v6;
  HIDWORD(v7) = a1.n128_u32[1];
  LODWORD(v7) = a1.n128_u32[1];
  v8 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v5 roundingBehavior:v7];
  v14[1] = v8;
  v9 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v5 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];

  v14[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)avt_arrayWithFloat4:()AVTExtension
{
  v10[4] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v10[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v10[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v10[2] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)avt_arrayWithFloat4:()AVTExtension roundingBehavior:
{
  v15[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  v5 = a4;
  v6 = [v4 avt_numberWithFloat:v5 roundingBehavior:a1.n128_f64[0]];
  v15[0] = v6;
  HIDWORD(v7) = a1.n128_u32[1];
  LODWORD(v7) = a1.n128_u32[1];
  v8 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v5 roundingBehavior:v7];
  v15[1] = v8;
  v9 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v5 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v15[2] = v9;
  v10 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v5 roundingBehavior:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (__n128)avt_float3
{
  v2 = [a1 count];
  result.n128_u64[0] = 0;
  if (v2 >= 3)
  {
    v4 = a1;
    v5 = [v4 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v13 = v6;
    v7 = [v4 objectAtIndexedSubscript:1];
    [v7 floatValue];
    v12 = v8;
    v9 = [v4 objectAtIndexedSubscript:2];

    [v9 floatValue];
    v10 = v13;
    DWORD1(v10) = v12;
    DWORD2(v10) = v11;
    v14 = v10;

    return v14;
  }

  return result;
}

- (__n128)avt_float4
{
  v2 = [a1 count];
  result.n128_u64[0] = 0;
  if (v2 >= 4)
  {
    v4 = a1;
    v5 = [v4 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v16 = v6;
    v7 = [v4 objectAtIndexedSubscript:1];
    [v7 floatValue];
    v15 = v8;
    v9 = [v4 objectAtIndexedSubscript:2];
    [v9 floatValue];
    v14 = v10;
    v11 = [v4 objectAtIndexedSubscript:3];

    [v11 floatValue];
    *&v12 = __PAIR64__(v15, v16);
    *(&v12 + 1) = __PAIR64__(v13, v14);
    v17 = v12;

    return v17;
  }

  return result;
}

- (id)avt_randomObject
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 objectAtIndexedSubscript:arc4random_uniform(v2)];
  }

  return v2;
}

- (id)avt_mutableContainersCopy
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__NSArray_AVTExtension__avt_mutableContainersCopy__block_invoke;
  v5[3] = &unk_1E7F48E18;
  v3 = v2;
  v6 = v3;
  [a1 enumerateObjectsUsingBlock:v5];

  return v3;
}

@end