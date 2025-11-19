@interface MLCDataHelper
+ (BOOL)convertFp16toFp32:(id)a1 fp16Values:(SEL)a2 fp32Values:(unint64_t)a3;
+ (BOOL)convertFp32toFp16:(unint64_t)a3 fp32Values:(const float *)a4 fp16Values:;
+ (BOOL)convertOIHWtoIOHW:(id)a3 sourceOIHW:(const void *)a4 resultIOHW:(void *)a5 inputFeatureChannelCount:(unint64_t)a6 outputFeatureChannelCount:(unint64_t)a7;
+ (BOOL)convertSourceHWIO:(const void *)a3 toResultOIHW:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 inputFeatureChannelCount:(unint64_t)a7 outputFeatureChannelCount:(unint64_t)a8 dataType:(int)a9;
+ (BOOL)convertSourceHWOI:(const void *)a3 toResultOIHW:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 inputFeatureChannelCount:(unint64_t)a7 outputFeatureChannelCount:(unint64_t)a8 dataType:(int)a9;
+ (BOOL)convertSourceOIHW:(const void *)a3 toResultHWIO:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 inputFeatureChannelCount:(unint64_t)a7 outputFeatureChannelCount:(unint64_t)a8 dataType:(int)a9;
+ (BOOL)convertSourceOIHW:(const void *)a3 toResultHWOI:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 inputFeatureChannelCount:(unint64_t)a7 outputFeatureChannelCount:(unint64_t)a8 dataType:(int)a9;
+ (id)createDataWithFloatValue:(float)a3 count:(unint64_t)a4;
+ (void)fillData:(id)a3 withFloatValue:(float)a4;
@end

@implementation MLCDataHelper

+ (id)createDataWithFloatValue:(float)a3 count:(unint64_t)a4
{
  v6 = 4 * a4;
  v7 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  if (a4)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v7[v8] = a3;
      v8 = v9++;
    }

    while (v8 < a4);
  }

  return [MLCTensorData dataWithBytesNoCopy:v7 length:v6 freeWhenDone:1];
}

+ (void)fillData:(id)a3 withFloatValue:(float)a4
{
  v15 = a3;
  v5 = v15;
  v6 = [v15 bytes];
  v7 = [v15 length];
  if (v7 >= 4)
  {
    v8 = ((v7 >> 2) + 3) & 0x7FFFFFFFFFFFFFFCLL;
    v9 = vdupq_n_s64((v7 >> 2) - 1);
    v10 = xmmword_238D45F90;
    v11 = xmmword_238D45D60;
    v12 = (v6 + 8);
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 2) = a4;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 1) = a4;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v12 = a4;
        v12[1] = a4;
      }

      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
      v8 -= 4;
    }

    while (v8);
  }
}

+ (BOOL)convertFp16toFp32:(id)a1 fp16Values:(SEL)a2 fp32Values:(unint64_t)a3
{
  src.data = v3;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 2 * a3;
  v6.data = v4;
  v6.height = 1;
  v6.width = a3;
  v6.rowBytes = 4 * a3;
  return vImageConvert_Planar16FtoPlanarF(&src, &v6, 0) == 0;
}

+ (BOOL)convertFp32toFp16:(unint64_t)a3 fp32Values:(const float *)a4 fp16Values:
{
  src.data = a4;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 4 * a3;
  v6.data = v4;
  v6.height = 1;
  v6.width = a3;
  v6.rowBytes = 2 * a3;
  return vImageConvert_PlanarFtoPlanar16F(&src, &v6, 0) == 0;
}

+ (BOOL)convertOIHWtoIOHW:(id)a3 sourceOIHW:(const void *)a4 resultIOHW:(void *)a5 inputFeatureChannelCount:(unint64_t)a6 outputFeatureChannelCount:(unint64_t)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = [v12 descriptor];
  v14 = [v13 shape];
  v15 = [v14 objectAtIndexedSubscript:1];
  v16 = [v15 unsignedIntegerValue];

  v45 = a7;
  v41 = v16;
  v42 = v12;
  v40 = a7 * a6;
  if (v16 == a7 * a6)
  {
    v17 = [v12 descriptor];
    v18 = [v17 shape];
    v19 = [v18 objectAtIndexedSubscript:3];
    aSelectora = [v19 unsignedIntegerValue];

    v20 = [v12 descriptor];
    v21 = [v20 shape];
    [v21 objectAtIndexedSubscript:2];
    v22 = v44 = a6;
    v23 = [v22 unsignedIntegerValue];

    v24 = [v12 descriptor];
    v25 = [v24 dataType];

    v26 = a6;
    v27 = [MLCTensorDescriptor elementByteCount:v25];
    if (a6)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = v23 * aSelectora * v27;
      v32 = v27 * v23 * aSelectora;
      v33 = v32 * v26;
      v43 = v32 * v45;
      do
      {
        aSelectorb = v28;
        v34 = v29;
        for (i = v45; i; --i)
        {
          [a1 copySource:a4 toTarget:a5 sourceOffset:v34 targetOffset:v28 sizeToCopy:v31];
          v34 += v33;
          v28 += v31;
        }

        ++v30;
        v29 += v31;
        v28 = &aSelectorb[v43];
      }

      while (v30 != v44);
    }
  }

  else
  {
    v36 = +[MLCLog framework];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      *buf = 138413058;
      v50 = v39;
      v51 = 2048;
      v52 = v16;
      v53 = 2048;
      v54 = a6;
      v55 = 2048;
      v56 = a7;
      _os_log_error_impl(&dword_238C1D000, v36, OS_LOG_TYPE_ERROR, "%@: channel count of the weights=%lu does not match the multiplication of inputFeatureChannelCount=%lu and outputFeatureChannelCount=%lu", buf, 0x2Au);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v41 == v40;
}

+ (BOOL)convertSourceOIHW:(const void *)a3 toResultHWIO:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 inputFeatureChannelCount:(unint64_t)a7 outputFeatureChannelCount:(unint64_t)a8 dataType:(int)a9
{
  v13 = [MLCTensorDescriptor elementByteCount:a9];
  v26 = a8;
  if (a8)
  {
    v14 = v13;
    v28 = 0;
    v29 = 0;
    v15 = 0;
    v25 = v13 * a7 * a6 * a5;
    v36 = v13 * a5;
    v31 = v13 * a5 * a6;
    v30 = v13 * a8;
    v16 = v13 * a8 * a7;
    do
    {
      v27 = v15;
      if (a7)
      {
        v17 = 0;
        v34 = v28;
        v35 = v29;
        do
        {
          v33 = v17;
          if (a6)
          {
            v18 = 0;
            v20 = v34;
            v19 = v35;
            do
            {
              v39 = v18;
              v21 = v19;
              v22 = v20;
              for (i = a5; i; --i)
              {
                [a1 copySource:a3 toTarget:a4 sourceOffset:v22 targetOffset:v21 sizeToCopy:{v14, v25}];
                v22 += v14;
                v21 += v16;
              }

              v18 = v39 + 1;
              v20 += v36;
              v19 += v16 * a5;
            }

            while (v39 + 1 != a6);
          }

          v17 = v33 + 1;
          v34 += v31;
          v35 += v30;
        }

        while (v33 + 1 != a7);
      }

      v15 = v27 + 1;
      v28 += v25;
      v29 += v14;
    }

    while (v27 + 1 != v26);
  }

  return 1;
}

+ (BOOL)convertSourceOIHW:(const void *)a3 toResultHWOI:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 inputFeatureChannelCount:(unint64_t)a7 outputFeatureChannelCount:(unint64_t)a8 dataType:(int)a9
{
  v13 = [MLCTensorDescriptor elementByteCount:a9];
  v27 = a8;
  if (a8)
  {
    v14 = v13;
    v29 = 0;
    v30 = 0;
    v15 = 0;
    v25 = v13 * a7 * a6 * a5;
    v26 = v13 * a7;
    v36 = v13 * a5;
    v31 = v13 * a5 * a6;
    v16 = v13 * a7 * a8;
    do
    {
      v28 = v15;
      if (a7)
      {
        v17 = 0;
        v34 = v29;
        v35 = v30;
        do
        {
          v33 = v17;
          if (a6)
          {
            v18 = 0;
            v20 = v34;
            v19 = v35;
            do
            {
              v39 = v18;
              v21 = v19;
              v22 = v20;
              for (i = a5; i; --i)
              {
                [a1 copySource:a3 toTarget:a4 sourceOffset:v22 targetOffset:v21 sizeToCopy:{v14, v25, v26}];
                v22 += v14;
                v21 += v16;
              }

              v18 = v39 + 1;
              v20 += v36;
              v19 += v16 * a5;
            }

            while (v39 + 1 != a6);
          }

          v17 = v33 + 1;
          v34 += v31;
          v35 += v14;
        }

        while (v33 + 1 != a7);
      }

      v15 = v28 + 1;
      v29 += v25;
      v30 += v26;
    }

    while (v28 + 1 != v27);
  }

  return 1;
}

+ (BOOL)convertSourceHWIO:(const void *)a3 toResultOIHW:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 inputFeatureChannelCount:(unint64_t)a7 outputFeatureChannelCount:(unint64_t)a8 dataType:(int)a9
{
  v13 = [MLCTensorDescriptor elementByteCount:a9];
  v26 = a8;
  if (a8)
  {
    v14 = v13;
    v28 = 0;
    v29 = 0;
    v15 = 0;
    v25 = v13 * a7 * a6 * a5;
    v36 = v13 * a5;
    v31 = v13 * a5 * a6;
    v30 = v13 * a8;
    v16 = v13 * a8 * a7;
    do
    {
      v27 = v15;
      if (a7)
      {
        v17 = 0;
        v34 = v28;
        v35 = v29;
        do
        {
          v33 = v17;
          if (a6)
          {
            v18 = 0;
            v20 = v34;
            v19 = v35;
            do
            {
              v39 = v18;
              v21 = v19;
              v22 = v20;
              for (i = a5; i; --i)
              {
                [a1 copySource:a3 toTarget:a4 sourceOffset:v21 targetOffset:v22 sizeToCopy:{v14, v25}];
                v22 += v14;
                v21 += v16;
              }

              v18 = v39 + 1;
              v20 += v36;
              v19 += v16 * a5;
            }

            while (v39 + 1 != a6);
          }

          v17 = v33 + 1;
          v34 += v31;
          v35 += v30;
        }

        while (v33 + 1 != a7);
      }

      v15 = v27 + 1;
      v28 += v25;
      v29 += v14;
    }

    while (v27 + 1 != v26);
  }

  return 1;
}

+ (BOOL)convertSourceHWOI:(const void *)a3 toResultOIHW:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 inputFeatureChannelCount:(unint64_t)a7 outputFeatureChannelCount:(unint64_t)a8 dataType:(int)a9
{
  v13 = [MLCTensorDescriptor elementByteCount:a9];
  v27 = a8;
  if (a8)
  {
    v14 = v13;
    v29 = 0;
    v30 = 0;
    v15 = 0;
    v25 = v13 * a7 * a6 * a5;
    v26 = v13 * a7;
    v36 = v13 * a5;
    v31 = v13 * a5 * a6;
    v16 = v13 * a7 * a8;
    do
    {
      v28 = v15;
      if (a7)
      {
        v17 = 0;
        v34 = v29;
        v35 = v30;
        do
        {
          v33 = v17;
          if (a6)
          {
            v18 = 0;
            v20 = v34;
            v19 = v35;
            do
            {
              v39 = v18;
              v21 = v19;
              v22 = v20;
              for (i = a5; i; --i)
              {
                [a1 copySource:a3 toTarget:a4 sourceOffset:v21 targetOffset:v22 sizeToCopy:{v14, v25, v26}];
                v22 += v14;
                v21 += v16;
              }

              v18 = v39 + 1;
              v20 += v36;
              v19 += v16 * a5;
            }

            while (v39 + 1 != a6);
          }

          v17 = v33 + 1;
          v34 += v31;
          v35 += v14;
        }

        while (v33 + 1 != a7);
      }

      v15 = v28 + 1;
      v29 += v25;
      v30 += v26;
    }

    while (v28 + 1 != v27);
  }

  return 1;
}

@end