@interface MLCDataHelper
+ (BOOL)convertFp16toFp32:(id)fp32 fp16Values:(SEL)values fp32Values:(unint64_t)fp32Values;
+ (BOOL)convertFp32toFp16:(unint64_t)fp16 fp32Values:(const float *)values fp16Values:;
+ (BOOL)convertOIHWtoIOHW:(id)w sourceOIHW:(const void *)hW resultIOHW:(void *)oHW inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount;
+ (BOOL)convertSourceHWIO:(const void *)o toResultOIHW:(void *)w width:(unint64_t)width height:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount dataType:(int)type;
+ (BOOL)convertSourceHWOI:(const void *)i toResultOIHW:(void *)w width:(unint64_t)width height:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount dataType:(int)type;
+ (BOOL)convertSourceOIHW:(const void *)w toResultHWIO:(void *)o width:(unint64_t)width height:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount dataType:(int)type;
+ (BOOL)convertSourceOIHW:(const void *)w toResultHWOI:(void *)i width:(unint64_t)width height:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount dataType:(int)type;
+ (id)createDataWithFloatValue:(float)value count:(unint64_t)count;
+ (void)fillData:(id)data withFloatValue:(float)value;
@end

@implementation MLCDataHelper

+ (id)createDataWithFloatValue:(float)value count:(unint64_t)count
{
  v6 = 4 * count;
  v7 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
  if (count)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v7[v8] = value;
      v8 = v9++;
    }

    while (v8 < count);
  }

  return [MLCTensorData dataWithBytesNoCopy:v7 length:v6 freeWhenDone:1];
}

+ (void)fillData:(id)data withFloatValue:(float)value
{
  dataCopy = data;
  v5 = dataCopy;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];
  if (v7 >= 4)
  {
    v8 = ((v7 >> 2) + 3) & 0x7FFFFFFFFFFFFFFCLL;
    v9 = vdupq_n_s64((v7 >> 2) - 1);
    v10 = xmmword_238D45F90;
    v11 = xmmword_238D45D60;
    v12 = (bytes + 8);
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 2) = value;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 1) = value;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v12 = value;
        v12[1] = value;
      }

      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
      v8 -= 4;
    }

    while (v8);
  }
}

+ (BOOL)convertFp16toFp32:(id)fp32 fp16Values:(SEL)values fp32Values:(unint64_t)fp32Values
{
  src.data = v3;
  src.height = 1;
  src.width = fp32Values;
  src.rowBytes = 2 * fp32Values;
  v6.data = v4;
  v6.height = 1;
  v6.width = fp32Values;
  v6.rowBytes = 4 * fp32Values;
  return vImageConvert_Planar16FtoPlanarF(&src, &v6, 0) == 0;
}

+ (BOOL)convertFp32toFp16:(unint64_t)fp16 fp32Values:(const float *)values fp16Values:
{
  src.data = values;
  src.height = 1;
  src.width = fp16;
  src.rowBytes = 4 * fp16;
  v6.data = v4;
  v6.height = 1;
  v6.width = fp16;
  v6.rowBytes = 2 * fp16;
  return vImageConvert_PlanarFtoPlanar16F(&src, &v6, 0) == 0;
}

+ (BOOL)convertOIHWtoIOHW:(id)w sourceOIHW:(const void *)hW resultIOHW:(void *)oHW inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount
{
  v57 = *MEMORY[0x277D85DE8];
  wCopy = w;
  descriptor = [wCopy descriptor];
  shape = [descriptor shape];
  v15 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  channelCountCopy = channelCount;
  v41 = unsignedIntegerValue;
  v42 = wCopy;
  v40 = channelCount * count;
  if (unsignedIntegerValue == channelCount * count)
  {
    descriptor2 = [wCopy descriptor];
    shape2 = [descriptor2 shape];
    v19 = [shape2 objectAtIndexedSubscript:3];
    aSelectora = [v19 unsignedIntegerValue];

    descriptor3 = [wCopy descriptor];
    shape3 = [descriptor3 shape];
    [shape3 objectAtIndexedSubscript:2];
    v22 = v44 = count;
    unsignedIntegerValue2 = [v22 unsignedIntegerValue];

    descriptor4 = [wCopy descriptor];
    dataType = [descriptor4 dataType];

    countCopy = count;
    v27 = [MLCTensorDescriptor elementByteCount:dataType];
    if (count)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = unsignedIntegerValue2 * aSelectora * v27;
      v32 = v27 * unsignedIntegerValue2 * aSelectora;
      v33 = v32 * countCopy;
      v43 = v32 * channelCountCopy;
      do
      {
        aSelectorb = v28;
        v34 = v29;
        for (i = channelCountCopy; i; --i)
        {
          [self copySource:hW toTarget:oHW sourceOffset:v34 targetOffset:v28 sizeToCopy:v31];
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
      v52 = unsignedIntegerValue;
      v53 = 2048;
      countCopy2 = count;
      v55 = 2048;
      channelCountCopy2 = channelCount;
      _os_log_error_impl(&dword_238C1D000, v36, OS_LOG_TYPE_ERROR, "%@: channel count of the weights=%lu does not match the multiplication of inputFeatureChannelCount=%lu and outputFeatureChannelCount=%lu", buf, 0x2Au);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v41 == v40;
}

+ (BOOL)convertSourceOIHW:(const void *)w toResultHWIO:(void *)o width:(unint64_t)width height:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount dataType:(int)type
{
  v13 = [MLCTensorDescriptor elementByteCount:type];
  channelCountCopy = channelCount;
  if (channelCount)
  {
    v14 = v13;
    v28 = 0;
    v29 = 0;
    v15 = 0;
    v25 = v13 * count * height * width;
    v36 = v13 * width;
    v31 = v13 * width * height;
    v30 = v13 * channelCount;
    v16 = v13 * channelCount * count;
    do
    {
      v27 = v15;
      if (count)
      {
        v17 = 0;
        v34 = v28;
        v35 = v29;
        do
        {
          v33 = v17;
          if (height)
          {
            v18 = 0;
            v20 = v34;
            v19 = v35;
            do
            {
              v39 = v18;
              v21 = v19;
              v22 = v20;
              for (i = width; i; --i)
              {
                [self copySource:w toTarget:o sourceOffset:v22 targetOffset:v21 sizeToCopy:{v14, v25}];
                v22 += v14;
                v21 += v16;
              }

              v18 = v39 + 1;
              v20 += v36;
              v19 += v16 * width;
            }

            while (v39 + 1 != height);
          }

          v17 = v33 + 1;
          v34 += v31;
          v35 += v30;
        }

        while (v33 + 1 != count);
      }

      v15 = v27 + 1;
      v28 += v25;
      v29 += v14;
    }

    while (v27 + 1 != channelCountCopy);
  }

  return 1;
}

+ (BOOL)convertSourceOIHW:(const void *)w toResultHWOI:(void *)i width:(unint64_t)width height:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount dataType:(int)type
{
  v13 = [MLCTensorDescriptor elementByteCount:type];
  channelCountCopy = channelCount;
  if (channelCount)
  {
    v14 = v13;
    v29 = 0;
    v30 = 0;
    v15 = 0;
    v25 = v13 * count * height * width;
    v26 = v13 * count;
    v36 = v13 * width;
    v31 = v13 * width * height;
    v16 = v13 * count * channelCount;
    do
    {
      v28 = v15;
      if (count)
      {
        v17 = 0;
        v34 = v29;
        v35 = v30;
        do
        {
          v33 = v17;
          if (height)
          {
            v18 = 0;
            v20 = v34;
            v19 = v35;
            do
            {
              v39 = v18;
              v21 = v19;
              v22 = v20;
              for (i = width; i; --i)
              {
                [self copySource:w toTarget:i sourceOffset:v22 targetOffset:v21 sizeToCopy:{v14, v25, v26}];
                v22 += v14;
                v21 += v16;
              }

              v18 = v39 + 1;
              v20 += v36;
              v19 += v16 * width;
            }

            while (v39 + 1 != height);
          }

          v17 = v33 + 1;
          v34 += v31;
          v35 += v14;
        }

        while (v33 + 1 != count);
      }

      v15 = v28 + 1;
      v29 += v25;
      v30 += v26;
    }

    while (v28 + 1 != channelCountCopy);
  }

  return 1;
}

+ (BOOL)convertSourceHWIO:(const void *)o toResultOIHW:(void *)w width:(unint64_t)width height:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount dataType:(int)type
{
  v13 = [MLCTensorDescriptor elementByteCount:type];
  channelCountCopy = channelCount;
  if (channelCount)
  {
    v14 = v13;
    v28 = 0;
    v29 = 0;
    v15 = 0;
    v25 = v13 * count * height * width;
    v36 = v13 * width;
    v31 = v13 * width * height;
    v30 = v13 * channelCount;
    v16 = v13 * channelCount * count;
    do
    {
      v27 = v15;
      if (count)
      {
        v17 = 0;
        v34 = v28;
        v35 = v29;
        do
        {
          v33 = v17;
          if (height)
          {
            v18 = 0;
            v20 = v34;
            v19 = v35;
            do
            {
              v39 = v18;
              v21 = v19;
              v22 = v20;
              for (i = width; i; --i)
              {
                [self copySource:o toTarget:w sourceOffset:v21 targetOffset:v22 sizeToCopy:{v14, v25}];
                v22 += v14;
                v21 += v16;
              }

              v18 = v39 + 1;
              v20 += v36;
              v19 += v16 * width;
            }

            while (v39 + 1 != height);
          }

          v17 = v33 + 1;
          v34 += v31;
          v35 += v30;
        }

        while (v33 + 1 != count);
      }

      v15 = v27 + 1;
      v28 += v25;
      v29 += v14;
    }

    while (v27 + 1 != channelCountCopy);
  }

  return 1;
}

+ (BOOL)convertSourceHWOI:(const void *)i toResultOIHW:(void *)w width:(unint64_t)width height:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount dataType:(int)type
{
  v13 = [MLCTensorDescriptor elementByteCount:type];
  channelCountCopy = channelCount;
  if (channelCount)
  {
    v14 = v13;
    v29 = 0;
    v30 = 0;
    v15 = 0;
    v25 = v13 * count * height * width;
    v26 = v13 * count;
    v36 = v13 * width;
    v31 = v13 * width * height;
    v16 = v13 * count * channelCount;
    do
    {
      v28 = v15;
      if (count)
      {
        v17 = 0;
        v34 = v29;
        v35 = v30;
        do
        {
          v33 = v17;
          if (height)
          {
            v18 = 0;
            v20 = v34;
            v19 = v35;
            do
            {
              v39 = v18;
              v21 = v19;
              v22 = v20;
              for (i = width; i; --i)
              {
                [self copySource:i toTarget:w sourceOffset:v21 targetOffset:v22 sizeToCopy:{v14, v25, v26}];
                v22 += v14;
                v21 += v16;
              }

              v18 = v39 + 1;
              v20 += v36;
              v19 += v16 * width;
            }

            while (v39 + 1 != height);
          }

          v17 = v33 + 1;
          v34 += v31;
          v35 += v14;
        }

        while (v33 + 1 != count);
      }

      v15 = v28 + 1;
      v29 += v25;
      v30 += v26;
    }

    while (v28 + 1 != channelCountCopy);
  }

  return 1;
}

@end