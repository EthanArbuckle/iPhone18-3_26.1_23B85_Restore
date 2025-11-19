@interface SLImageDownsampling
+ ($0AC6E346AE4835514AAA8AC86D8F4844)imageSizeWithData:(id)a3;
+ (id)createThumbnailWithData:(id)a3 adjustSmallestSideToSize:(unint64_t)a4;
+ (id)downsampleImageData:(id)a3 toMaxByteSize:(unint64_t)a4;
+ (void)downsampleImageData:(id)a3 toMaxByteSize:(unint64_t)a4 resultsHandler:(id)a5;
+ (void)generateThumbnailFromImageData:(id)a3 adjustSmallestSideToSize:(unint64_t)a4 resultsHandler:(id)a5;
@end

@implementation SLImageDownsampling

+ (id)downsampleImageData:(id)a3 toMaxByteSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  _SLLog(v4, 7, @"SLImageDownsampling downsampleImageData: length %@ toMaxByteSize: %@");

  if ([v6 length] < a4)
  {
    _SLLog(v4, 6, @"SLImageDownsampling image is below threshold, returning original data");
    v8 = v6;
    goto LABEL_21;
  }

  if (!v6)
  {
    v27 = @"SLImageDownsampling image data is nil";
LABEL_20:
    _SLLog(v4, 3, v27);
    v8 = 0;
    goto LABEL_21;
  }

  v9 = a4;
  v10 = [SLImageDownsampling imageSizeWithData:v6];
  if (!v10 || (v12 = v11) == 0)
  {
    v27 = @"Image width and/or height is 0, returning nil";
    goto LABEL_20;
  }

  v13 = v10;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  _SLLog(v4, 7, @"SLImageDownsampling original image size width %@ height %@");

  v15 = sqrt(v9 / [v6 length]) * 0.95;
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  _SLLog(v4, 7, @"SLImageDownsampling scale %@");

  v16 = v13;
  v17 = v12;
  do
  {
    v18 = objc_autoreleasePoolPush();
    v19 = ceil(v15 * v16);
    if (v19 < 1.0)
    {
      v19 = 1.0;
    }

    v20 = v19;
    v21 = ceil(v15 * v17);
    if (v21 < 1.0)
    {
      v21 = 1.0;
    }

    v22 = v21;
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:{v15, v29}];
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
    _SLLog(v4, 7, @"SLImageDownsampling trying scale %@ width %@ height %@");

    v8 = SLDownSampledImageData(v6, v20, v22);
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:{v15, v23, v24, v34}];
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
    _SLLog(v4, 7, @"SLImageDownsampling scale %@ produced image data length %@");

    if ([v8 length] > v9)
    {
      if ([v8 length] * 0.9 <= v9)
      {
        v26 = 0.95;
      }

      else
      {
        v26 = 0.5;
      }

      v15 = v15 * v26;

      v8 = 0;
    }

    objc_autoreleasePoolPop(v18);
  }

  while (!v8);
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
  _SLLog(v4, 7, @"SLImageDownsampling returning final downsampled image data of length %@");

LABEL_21:

  return v8;
}

+ ($0AC6E346AE4835514AAA8AC86D8F4844)imageSizeWithData:(id)a3
{
  v4 = CGImageSourceCreateWithData(a3, 0);
  v5 = CGImageSourceCopyPropertiesAtIndex(v4, 0, 0);
  _SLLog(v3, 6, @"image props: %@");
  Value = CFDictionaryGetValue(v5, *MEMORY[0x1E696DED8]);
  v7 = CFDictionaryGetValue(v5, *MEMORY[0x1E696DEC8]);
  valuePtr = 0;
  v11 = 0;
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberIntType, &v11);
  }

  CFRelease(v4);
  CFRelease(v5);
  v8 = valuePtr;
  v9 = v11;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

+ (id)createThumbnailWithData:(id)a3 adjustSmallestSideToSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [SLImageDownsampling imageSizeWithData:v6];
  v9 = v8;
  _SLLog(v4, 6, @"Thumbnail source is %i x %i");
  if (v7 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = a4 / v10;
  v12 = v11 * v7;
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 * v9;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  _SLLog(v4, 6, @"Thumbnail destination is %i x %i");
  v16 = SLDownSampledImageData(v6, v13, v15);

  return v16;
}

+ (void)downsampleImageData:(id)a3 toMaxByteSize:(unint64_t)a4 resultsHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SLImageDownsampling_downsampleImageData_toMaxByteSize_resultsHandler___block_invoke;
  block[3] = &unk_1E81762D0;
  v14 = v8;
  v15 = a4;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __72__SLImageDownsampling_downsampleImageData_toMaxByteSize_resultsHandler___block_invoke(void *a1)
{
  v2 = [SLImageDownsampling downsampleImageData:a1[4] toMaxByteSize:a1[6]];
  (*(a1[5] + 16))();
}

+ (void)generateThumbnailFromImageData:(id)a3 adjustSmallestSideToSize:(unint64_t)a4 resultsHandler:(id)a5
{
  v7 = a3;
  v8 = [a5 copy];
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__SLImageDownsampling_generateThumbnailFromImageData_adjustSmallestSideToSize_resultsHandler___block_invoke;
  block[3] = &unk_1E81762D0;
  v13 = v7;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __94__SLImageDownsampling_generateThumbnailFromImageData_adjustSmallestSideToSize_resultsHandler___block_invoke(void *a1)
{
  v3 = a1[4];
  if (v3)
  {
    v5 = [SLImageDownsampling createThumbnailWithData:v3 adjustSmallestSideToSize:a1[6]];
    (*(a1[5] + 16))();
  }

  else
  {
    _SLLog(v1, 3, @"Cannot generate thumbnail - image data is nil");
    v4 = *(a1[5] + 16);

    v4();
  }
}

@end