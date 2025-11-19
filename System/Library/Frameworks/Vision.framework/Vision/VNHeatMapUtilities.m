@interface VNHeatMapUtilities
+ (BOOL)smoothedFloat32ImageBuffer:(vImage_Buffer *)a3 fromImageBuffer:(vImage_Buffer *)a4 originalImageSize:(CGSize)a5 sigmaX:(float)a6 sigmaY:(float)a7 nStd:(float)a8;
+ (float)maximumValueFromFloat32ImageBuffer:(vImage_Buffer *)a3;
+ (id)boundingBoxesFromFloat32ImageBuffer:(vImage_Buffer *)a3 thresholds:(id)a4 error:(id *)a5;
+ (id)boundingBoxesFromFloat32ImageBuffer:(vImage_Buffer *)a3 thresholds:(id)a4 relativeToMaximum:(BOOL)a5 applySmoothing:(BOOL)a6 originalImageSize:(CGSize)a7 sigmaX:(float)a8 sigmaY:(float)a9 nStd:(float)a10 error:(id *)a11;
+ (id)boundingBoxesFromFloat32PixelBuffer:(__CVBuffer *)a3 thresholds:(id)a4 relativeToMaximum:(BOOL)a5 applySmoothing:(BOOL)a6 originalImageSize:(CGSize)a7 sigmaX:(float)a8 sigmaY:(float)a9 nStd:(float)a10 error:(id *)a11;
+ (id)significantRegionsFromFloat32ImageBuffer:(vImage_Buffer *)a3 threshold:(float)a4;
+ (id)significantRegionsFromFloat32ImageBuffer:(vImage_Buffer *)a3 threshold:(float)a4 relativeToMaximum:(BOOL)a5;
+ (id)significantRegionsFromFloat32PixelBuffer:(__CVBuffer *)a3 threshold:(float)a4 relativeToMaximum:(BOOL)a5 error:(id *)a6;
@end

@implementation VNHeatMapUtilities

+ (id)boundingBoxesFromFloat32PixelBuffer:(__CVBuffer *)a3 thresholds:(id)a4 relativeToMaximum:(BOOL)a5 applySmoothing:(BOOL)a6 originalImageSize:(CGSize)a7 sigmaX:(float)a8 sigmaY:(float)a9 nStd:(float)a10 error:(id *)a11
{
  height = a7.height;
  width = a7.width;
  v17 = a6;
  v18 = a5;
  v21 = a4;
  if (!a3)
  {
    if (a11)
    {
      v24 = @"pixelBuffer cannot be null";
LABEL_10:
      v23 = [VNError errorForInvalidArgumentWithLocalizedDescription:v24];
      goto LABEL_11;
    }

LABEL_12:
    v25 = 0;
    goto LABEL_14;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1278226534)
  {
    if (a11)
    {
      v24 = @"pixelBuffer is not in correct format. (Required format is one component, 32-float)";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v22 = CVPixelBufferLockBaseAddress(a3, 1uLL);
  if (v22)
  {
    if (a11)
    {
      v23 = [VNError errorForCVReturnCode:v22 localizedDescription:@"unable to lock base address of pixelBuffer"];
LABEL_11:
      v25 = 0;
      *a11 = v23;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v30[0] = CVPixelBufferGetBaseAddress(a3);
  v30[1] = CVPixelBufferGetHeight(a3);
  v30[2] = CVPixelBufferGetWidth(a3);
  v30[3] = CVPixelBufferGetBytesPerRow(a3);
  *&v26 = a8;
  *&v27 = a9;
  *&v28 = a10;
  v25 = [a1 boundingBoxesFromFloat32ImageBuffer:v30 thresholds:v21 relativeToMaximum:v18 applySmoothing:v17 originalImageSize:a11 sigmaX:width sigmaY:height nStd:v26 error:{v27, v28}];
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
LABEL_14:

  return v25;
}

+ (id)boundingBoxesFromFloat32ImageBuffer:(vImage_Buffer *)a3 thresholds:(id)a4 relativeToMaximum:(BOOL)a5 applySmoothing:(BOOL)a6 originalImageSize:(CGSize)a7 sigmaX:(float)a8 sigmaY:(float)a9 nStd:(float)a10 error:(id *)a11
{
  height = a7.height;
  width = a7.width;
  v16 = a6;
  v17 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v19 = a4;
  v40 = v19;
  if (v16)
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a3->height * a3->rowBytes];
    v20 = [v41 mutableBytes];
    v22 = a3->height;
    v21 = a3->width;
    rowBytes = a3->rowBytes;
    data = v20;
    v50 = v20;
    v51 = v22;
    v52 = v21;
    v53 = rowBytes;
    v24 = *&a3->width;
    v49[0] = *&a3->data;
    v49[1] = v24;
    *&v25 = a8;
    *&v26 = a9;
    *&v27 = a10;
    if (([a1 smoothedFloat32ImageBuffer:&v50 fromImageBuffer:v49 originalImageSize:width sigmaX:height sigmaY:v25 nStd:{v26, v27}] & 1) == 0)
    {
      if (a11)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to generate smoothed float-32 image buffer"];
        *a11 = v28 = 0;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v22 = a3->height;
    v41 = 0;
    data = a3->data;
    v21 = a3->width;
    rowBytes = a3->rowBytes;
  }

  if (v17)
  {
    v50 = data;
    v51 = v22;
    v52 = v21;
    v53 = rowBytes;
    [a1 maximumValueFromFloat32ImageBuffer:&v50];
    v30 = v29;
    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = v19;
    v33 = [v32 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v33)
    {
      v34 = *v46;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v32);
          }

          [*(*(&v45 + 1) + 8 * i) floatValue];
          *&v37 = v30 * v36;
          v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
          [v31 addObject:v38];
        }

        v33 = [v32 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v33);
    }
  }

  else
  {
    v31 = v19;
  }

  v50 = data;
  v51 = v22;
  v52 = v21;
  v53 = rowBytes;
  v28 = [a1 boundingBoxesFromFloat32ImageBuffer:&v50 thresholds:v31 error:a11];

LABEL_17:

  return v28;
}

+ (id)boundingBoxesFromFloat32ImageBuffer:(vImage_Buffer *)a3 thresholds:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v40 = a4;
  v7 = [v40 count];
  v8 = v7;
  if (v7)
  {
    v9 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    v11 = 0;
    do
    {
      v12 = objc_alloc_init(VNHeatMapExtrema);
      [v10 addObject:v12];
      v13 = [v40 objectAtIndexedSubscript:v11];
      [v13 floatValue];
      v9[v11] = v14;

      ++v11;
    }

    while (v8 != v11);
    height = a3->height;
    if (height)
    {
      v16 = 0;
      data = a3->data;
      width = a3->width;
      do
      {
        if (width)
        {
          v19 = 0;
          v20 = data;
          do
          {
            v21 = 0;
            v22 = *v20;
            do
            {
              if (v22 >= *&v9[v21])
              {
                v23 = [v10 objectAtIndexedSubscript:v21];
                *&v24 = v22;
                [v23 updateExtrema:v19 x:v16 y:v24];
              }

              ++v21;
            }

            while (v8 != v21);
            ++v20;
            ++v19;
            width = a3->width;
          }

          while (v19 < width);
          height = a3->height;
        }

        data = (data + a3->rowBytes);
        ++v16;
      }

      while (v16 < height);
    }

    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v40;
    v26 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v26)
    {
      v27 = 0;
      v28 = *v46;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v45 + 1) + 8 * i) floatValue];
          v31 = v30;
          v32 = [v10 objectAtIndexedSubscript:v27];
          v43 = 0u;
          v44 = 0u;
          v33 = *&a3->width;
          v42[0] = *&a3->data;
          v42[1] = v33;
          [v32 computeRectFromExtremaUsingThreshold:v42 vImage:{COERCE_DOUBLE(__PAIR64__(DWORD1(v42[0]), v31))}];
          *&v43 = v34;
          *(&v43 + 1) = v35;
          *&v44 = v36;
          *(&v44 + 1) = v37;
          v38 = [MEMORY[0x1E696B098] value:&v43 withObjCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v25 addObject:v38];

          ++v27;
        }

        v26 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v26);
    }

    free(v9);
  }

  else if (a5)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"thresholds not provided"];
    *a5 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)significantRegionsFromFloat32PixelBuffer:(__CVBuffer *)a3 threshold:(float)a4 relativeToMaximum:(BOOL)a5 error:(id *)a6
{
  if (!a3)
  {
    if (a6)
    {
      v13 = @"pixelBuffer cannot be null";
LABEL_10:
      v12 = [VNError errorForInvalidArgumentWithLocalizedDescription:v13, a5];
      goto LABEL_11;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_14;
  }

  v7 = a5;
  if (CVPixelBufferGetPixelFormatType(a3) != 1278226534)
  {
    if (a6)
    {
      v13 = @"pixelBuffer is not in correct format. (Required format is one component, 32-float)";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v11 = CVPixelBufferLockBaseAddress(a3, 1uLL);
  if (v11)
  {
    if (a6)
    {
      v12 = [VNError errorForCVReturnCode:v11 localizedDescription:@"unable to lock base address of pixelBuffer"];
LABEL_11:
      v14 = 0;
      *a6 = v12;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v17[0] = CVPixelBufferGetBaseAddress(a3);
  v17[1] = CVPixelBufferGetHeight(a3);
  v17[2] = CVPixelBufferGetWidth(a3);
  v17[3] = CVPixelBufferGetBytesPerRow(a3);
  *&v15 = a4;
  v14 = [a1 significantRegionsFromFloat32ImageBuffer:v17 threshold:v7 relativeToMaximum:v15];
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
LABEL_14:

  return v14;
}

+ (id)significantRegionsFromFloat32ImageBuffer:(vImage_Buffer *)a3 threshold:(float)a4 relativeToMaximum:(BOOL)a5
{
  if (a5)
  {
    v8 = *&a3->width;
    v13 = *&a3->data;
    v14 = v8;
    [a1 maximumValueFromFloat32ImageBuffer:&v13];
    a4 = v9 * a4;
  }

  v10 = *&a3->width;
  v13 = *&a3->data;
  v14 = v10;
  v11 = [a1 significantRegionsFromFloat32ImageBuffer:&v13 threshold:{COERCE_DOUBLE(__PAIR64__(DWORD1(v13), LODWORD(a4)))}];

  return v11;
}

+ (id)significantRegionsFromFloat32ImageBuffer:(vImage_Buffer *)a3 threshold:(float)a4
{
  v6 = a3->height * a3->width;
  LOBYTE(v44) = 0;
  std::vector<BOOL>::vector(__p, v6);
  height = a3->height;
  if (height)
  {
    v41 = 0;
    v8 = 0;
    width = a3->width;
    do
    {
      if (width)
      {
        v10 = 0;
        v11 = __p[0];
        do
        {
          v12 = v10 + width * v8;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if ((v11[v13] & (1 << v12)) == 0 && *(a3->data + 4 * v10 + a3->rowBytes * v8) > a4)
          {
            x = *MEMORY[0x1E695F050];
            y = *(MEMORY[0x1E695F050] + 8);
            v18 = *(MEMORY[0x1E695F050] + 16);
            v17 = *(MEMORY[0x1E695F050] + 24);
            v19 = __p[1];
            v45 = 0u;
            v46 = 0u;
            v44 = 0u;
            v43 = __PAIR64__(v8, v10);
            std::deque<std::pair<unsigned int,unsigned int>>::emplace_back<std::pair<unsigned int,unsigned int>>(&v44, &v43);
            while (*(&v46 + 1))
            {
              v20 = *(*(*(&v44 + 1) + ((v46 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v46 & 0x1FF));
              *&v46 = v46 + 1;
              --*(&v46 + 1);
              if (v46 >= 0x400)
              {
                operator delete(**(&v44 + 1));
                *(&v44 + 1) += 8;
                *&v46 = v46 - 512;
              }

              v21 = HIDWORD(v20);
              v22 = v20 + a3->width * HIDWORD(v20);
              if (v19 > v22)
              {
                v23 = v22 >> 6;
                v24 = 1 << (v20 + LOBYTE(a3->width) * BYTE4(v20));
                v25 = *(__p[0] + v23);
                if ((v25 & v24) == 0)
                {
                  *(__p[0] + v23) = v25 | v24;
                  if (*(a3->data + 4 * v20 + a3->rowBytes * v21) > a4)
                  {
                    v51.origin.x = v20;
                    v51.origin.y = HIDWORD(v20);
                    v51.size.width = 0.0;
                    v51.size.height = 0.0;
                    v48.origin.x = x;
                    v48.origin.y = y;
                    v48.size.width = v18;
                    v48.size.height = v17;
                    v49 = CGRectUnion(v48, v51);
                    x = v49.origin.x;
                    y = v49.origin.y;
                    v18 = v49.size.width;
                    v17 = v49.size.height;
                    if (a3->width > (v20 + 1))
                    {
                      LODWORD(v43) = v20 + 1;
                      HIDWORD(v43) = HIDWORD(v20);
                      std::deque<std::pair<unsigned int,unsigned int>>::emplace_back<std::pair<unsigned int,unsigned int>>(&v44, &v43);
                    }

                    if (v20)
                    {
                      LODWORD(v43) = v20 - 1;
                      HIDWORD(v43) = HIDWORD(v20);
                      std::deque<std::pair<unsigned int,unsigned int>>::emplace_back<std::pair<unsigned int,unsigned int>>(&v44, &v43);
                    }

                    if (a3->height > (HIDWORD(v20) + 1))
                    {
                      v43 = v20 + 0x100000000;
                      std::deque<std::pair<unsigned int,unsigned int>>::emplace_back<std::pair<unsigned int,unsigned int>>(&v44, &v43);
                    }

                    if (v21)
                    {
                      v43 = v20 - 0x100000000;
                      std::deque<std::pair<unsigned int,unsigned int>>::emplace_back<std::pair<unsigned int,unsigned int>>(&v44, &v43);
                    }
                  }
                }
              }
            }

            v26 = a3->height - (y + v17);
            std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v44);
            v50.origin.x = x;
            v50.origin.y = v26;
            v50.size.width = v18;
            v50.size.height = v17;
            if (!CGRectIsEmpty(v50))
            {
              v27 = v41;
              v28 = v41 >> 5;
              if (((v41 >> 5) + 1) >> 59)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              if (v41 >> 5 != -1)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>((v41 >> 5) + 1);
              }

              v29 = 32 * v28;
              *v29 = x;
              *(v29 + 8) = v26;
              *(v29 + 16) = v18;
              *(v29 + 24) = v17;
              v41 = 32 * v28 + 32;
              memcpy(0, 0, v27);
            }
          }

          v11 = __p[0];
          *(__p[0] + v13) |= v14;
          ++v10;
          width = a3->width;
        }

        while (v10 < width);
        height = a3->height;
      }

      ++v8;
    }

    while (v8 < height);
  }

  else
  {
    v41 = 0;
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v41 >> 5];
  if (v41)
  {
    if ((v41 >> 5) <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v41 >> 5;
    }

    v32 = 16;
    do
    {
      v44 = 0u;
      v45 = 0u;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      v36 = a3->width;
      if (v36)
      {
        v34 = *(v32 - 16) / v36;
        v35 = *v32 / v36;
      }

      v37 = a3->height;
      v38 = 0.0;
      if (v37)
      {
        v33 = *(v32 - 8) / v37;
        v38 = *(v32 + 8) / v37;
      }

      *&v44 = v34;
      *(&v44 + 1) = v33;
      *&v45 = v35;
      *(&v45 + 1) = v38;
      v39 = [MEMORY[0x1E696B098] value:&v44 withObjCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [v30 addObject:v39];

      v32 += 32;
      --v31;
    }

    while (v31);
    operator delete(0);
  }

  return v30;
}

+ (float)maximumValueFromFloat32ImageBuffer:(vImage_Buffer *)a3
{
  __C = 1.1755e-38;
  width = a3->width;
  if (a3->rowBytes == 4 * width)
  {
    vDSP_maxv(a3->data, 1, &__C, a3->height * width);
    return __C;
  }

  else if (a3->height)
  {
    v6 = 0;
    data = a3->data;
    v5 = 1.1755e-38;
    do
    {
      v9 = 1.1755e-38;
      vDSP_maxv(data, 1, &v9, a3->width);
      if (v9 > v5)
      {
        v5 = v9;
      }

      ++v6;
      data = (data + a3->rowBytes);
    }

    while (v6 < a3->height);
  }

  else
  {
    return 1.1755e-38;
  }

  return v5;
}

+ (BOOL)smoothedFloat32ImageBuffer:(vImage_Buffer *)a3 fromImageBuffer:(vImage_Buffer *)a4 originalImageSize:(CGSize)a5 sigmaX:(float)a6 sigmaY:(float)a7 nStd:(float)a8
{
  if (!a3->data)
  {
    LOBYTE(v14) = 0;
    return v14;
  }

  width = a5.width;
  v12 = a4->width * a6;
  if (a5.height <= width)
  {
    v12 = a5.height * v12 / width;
    v13 = a4->height * a7;
  }

  else
  {
    v13 = width * a7 * a4->height / a5.height;
  }

  v29 = 0;
  kernel = 0;
  *kernel_width = 0;
  if (ImageProcessing_smoothGaussian_createKernelForPlanarF(&kernel, &kernel_width[1], v12, a8) == 4224)
  {
    v15 = ImageProcessing_smoothGaussian_createKernelForPlanarF(&v29, kernel_width, v13, a8);
    v16 = kernel;
    if (v15 != 4224 || kernel == 0 || v29 == 0)
    {
      v19 = 0;
      v14 = 0;
      goto LABEL_23;
    }

    v20 = a4->width;
    dest.height = a4->height;
    dest.width = v20;
    dest.rowBytes = (4 * v20 + 15) & 0xFFFFFFFFFFFFFFF0;
    v21 = dest.rowBytes * dest.height;
    v22 = kernel_width[1];
    v23 = vImageConvolve_PlanarF(a4, a3, 0, 0, 0, 0, 1u, kernel_width[1], 0.0, 0x88u);
    v24 = vImageConvolve_PlanarF(a4, a3, 0, 0, 0, 0, kernel_width[0], 1u, 0.0, 0x88u);
    if (v23 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    v19 = malloc_type_malloc(v25 + v21, 0xE8E6B94CuLL);
    dest.data = v19;
    if (!vImageConvolve_PlanarF(a4, &dest, &v19[v21], 0, 0, kernel, 1u, v22, 0.0, 8u))
    {
      v14 = vImageConvolve_PlanarF(&dest, a3, &v19[v21], 0, 0, v29, kernel_width[0], 1u, 0.0, 8u) == 0;
      goto LABEL_22;
    }
  }

  else
  {
    v19 = 0;
  }

  v14 = 0;
LABEL_22:
  v16 = kernel;
LABEL_23:
  free(v16);
  free(v29);
  if (v14)
  {
    free(v19);
  }

  return v14;
}

@end