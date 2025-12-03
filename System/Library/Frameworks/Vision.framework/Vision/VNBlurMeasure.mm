@interface VNBlurMeasure
+ (BOOL)computeApproximateBlurScore:(float *)score onGrayscaleImage:(__CVBuffer *)image sampledPixelsCount:(int)count insetFactor:(float)factor error:(id *)error;
+ (BOOL)computeApproximateBlurScore:(float *)score onRGBAImage:(__CVBuffer *)image sampledPixelsCount:(int)count insetFactor:(float)factor error:(id *)error;
+ (BOOL)computeBlurScore:(float *)score onGrayscaleImage:(__CVBuffer *)image andWithRegionOfInterestInImageCoordinates:(CGRect)coordinates andRegionOfInterestInsetFactor:(float)factor error:(id *)error;
+ (BOOL)computeBlurScore:(float *)score onGrayscaleImage:(__CVBuffer *)image insetFactor:(float)factor error:(id *)error;
+ (BOOL)computeBlurScore:(float *)score usingBlurSignature:(id)signature insetFactor:(float)factor imageROI:(CGRect)i error:(id *)error;
+ (BOOL)computeEdgeWidthBlurScore:(float *)score onGrayscaleImage:(__CVBuffer *)image error:(id *)error;
@end

@implementation VNBlurMeasure

+ (BOOL)computeApproximateBlurScore:(float *)score onRGBAImage:(__CVBuffer *)image sampledPixelsCount:(int)count insetFactor:(float)factor error:(id *)error
{
  HIDWORD(v21) = 1065353216;
  CVPixelBufferLockBaseAddress(image, 1uLL);
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  BytesPerRow = CVPixelBufferGetBytesPerRow(image);
  BaseAddress = CVPixelBufferGetBaseAddress(image);
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  if (v17 == 2688)
  {
    if (score)
    {
      *score = *(&v21 + 1);
    }
  }

  else if (error)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error while computing blur score: %s", CVML_getStatusDescription(v17)];
    *error = [VNError errorWithCode:3 message:v18];
  }

  return v17 == 2688;
}

+ (BOOL)computeApproximateBlurScore:(float *)score onGrayscaleImage:(__CVBuffer *)image sampledPixelsCount:(int)count insetFactor:(float)factor error:(id *)error
{
  HIDWORD(v21) = 1065353216;
  CVPixelBufferLockBaseAddress(image, 1uLL);
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  BytesPerRow = CVPixelBufferGetBytesPerRow(image);
  BaseAddress = CVPixelBufferGetBaseAddress(image);
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  if (v17 == 2688)
  {
    if (score)
    {
      *score = *(&v21 + 1);
    }
  }

  else if (error)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error while computing blur score: %s", CVML_getStatusDescription(v17)];
    *error = [VNError errorWithCode:3 message:v18];
  }

  return v17 == 2688;
}

+ (BOOL)computeEdgeWidthBlurScore:(float *)score onGrayscaleImage:(__CVBuffer *)image error:(id *)error
{
  CVPixelBufferLockBaseAddress(image, 1uLL);
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  v9 = malloc_type_malloc(Height * Width, 0x100004077774924uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(image, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(image, 0);
  v12 = Width - 2;
  v13 = Height - 2;
  if (Height == 2)
  {
    v37 = 0;
    v36 = 0;
    if (Width == 2)
    {
      goto LABEL_64;
    }

    goto LABEL_39;
  }

  v14 = 0;
  v15 = BaseAddressOfPlane + 1;
  v16 = BaseAddressOfPlane + 2;
  do
  {
    if (Width == 2)
    {
      v17 = v14 + 1;
    }

    else
    {
      v17 = v14 + 1;
      v18 = v14 + 2;
      v19 = &v9[v14 * Width];
      v20 = &v15[v14 * BytesPerRowOfPlane];
      v21 = &v16[BytesPerRowOfPlane * (v14 + 1)];
      v22 = &v16[BytesPerRowOfPlane * v18];
      v23 = Width - 2;
      v24 = v20;
      do
      {
        v25 = *(v20 - 1);
        v27 = *++v24;
        v26 = v27;
        v28 = *(v21 - 2);
        v29 = *v21++;
        v30 = *(v22 - 2);
        v31 = *v22;
        v32 = v26 - (v25 + v30) + v31 + 2 * (v29 - v28);
        v33 = v30 - (v26 + v25) + v31 + 2 * (*(v22 - 1) - *v20);
        v34 = (v32 * v32 + v33 * v33) >> 4;
        if (v34 >= 0xFF)
        {
          LOBYTE(v34) = -1;
        }

        *v19++ = v34;
        ++v22;
        v20 = v24;
        --v23;
      }

      while (v23);
    }

    v14 = v17;
  }

  while (v17 != v13);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = v9;
  do
  {
    if (Width != 2)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      do
      {
        v43 = v38[v39];
        v44 = v43 > 0x63;
        if (v43 < 0x64)
        {
          v49 = v40 && v41 > 0;
          if (v39 - v41 >= 3)
          {
            v50 = v39 + v37 - v41;
          }

          else
          {
            v50 = v37;
          }

          if (v39 - v41 < 3)
          {
            v51 = v36;
          }

          else
          {
            v51 = v36 + 1;
          }

          if (v49 == 1)
          {
            v37 = v50;
            v36 = v51;
          }
        }

        else
        {
          v45 = v37 + v39 - v41;
          if (v39 - v41 >= 3)
          {
            v46 = v36 + 1;
          }

          else
          {
            v45 = v37;
            v46 = v36;
          }

          if (v41 < 1)
          {
            v45 = v37;
            v46 = v36;
          }

          v47 = v42;
          v42 = v42;
          if (v47)
          {
            v45 = v37;
            v48 = v36;
          }

          else
          {
            v48 = v46;
          }

          if (v40)
          {
            v37 = v45;
            v36 = v48;
          }

          else
          {
            v42 = 1;
            v41 = v39;
          }
        }

        ++v39;
        v40 = v44;
      }

      while (v12 != v39);
    }

    ++v35;
    v38 += Width;
  }

  while (v35 != v13);
  if (Width != 2)
  {
LABEL_39:
    v52 = 0;
    v53 = v9;
    do
    {
      if (Height != 2)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = v53;
        do
        {
          v59 = *v58;
          v60 = v59 > 0x63;
          if (v59 < 0x64)
          {
            v64 = v57 && v56 > 0;
            if (v54 - v56 >= 3)
            {
              v65 = v54 + v37 - v56;
            }

            else
            {
              v65 = v37;
            }

            if (v54 - v56 < 3)
            {
              v66 = v36;
            }

            else
            {
              v66 = v36 + 1;
            }

            if (v64 == 1)
            {
              v37 = v65;
              v36 = v66;
            }
          }

          else
          {
            v61 = v37 + v54 - v56;
            if (v54 - v56 >= 3)
            {
              v62 = v36 + 1;
            }

            else
            {
              v61 = v37;
              v62 = v36;
            }

            if (v56 < 1)
            {
              v61 = v37;
              v62 = v36;
            }

            v47 = v55;
            v55 = v55;
            if (v47)
            {
              v61 = v37;
              v63 = v36;
            }

            else
            {
              v63 = v62;
            }

            if (v57)
            {
              v37 = v61;
              v36 = v63;
            }

            else
            {
              v56 = v54;
              v55 = 1;
            }
          }

          v58 += Width;
          ++v54;
          v57 = v60;
        }

        while (v13 != v54);
      }

      ++v52;
      ++v53;
    }

    while (v52 != v12);
  }

LABEL_64:
  v67 = 0.0;
  if (Height + Width <= v36)
  {
    v67 = 4.0 / (v37 / v36);
  }

  v68 = fmaxf(1.0 - v67, 0.0);
  if (v68 > 1.0)
  {
    v68 = 1.0;
  }

  *score = v68;
  free(v9);
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  return 1;
}

+ (BOOL)computeBlurScore:(float *)score usingBlurSignature:(id)signature insetFactor:(float)factor imageROI:(CGRect)i error:(id *)error
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  signatureCopy = signature;
  v21 = 1065353216;
  getSignatureData = [signatureCopy getSignatureData];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.height = height;
  v22.size.width = width;
  v17 = vision::mod::image_quality::BlurMeasure::computeEdgeBasedBlurForImageRegionUsingBlurSignature(getSignatureData, &v21, v22, 0, factor, 0, v16);
  v18 = v17;
  if (v17 == 2688)
  {
    if (score)
    {
      *score = v21;
    }
  }

  else if (error)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error while computing blur score: %s", CVML_getStatusDescription(v17)];
    *error = [VNError errorWithCode:3 message:v19];
  }

  return v18 == 2688;
}

+ (BOOL)computeBlurScore:(float *)score onGrayscaleImage:(__CVBuffer *)image insetFactor:(float)factor error:(id *)error
{
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  *&v13 = factor;

  return [self computeBlurScore:score onGrayscaleImage:image andWithRegionOfInterestInImageCoordinates:error andRegionOfInterestInsetFactor:0.0 error:{0.0, Width, Height, v13}];
}

+ (BOOL)computeBlurScore:(float *)score onGrayscaleImage:(__CVBuffer *)image andWithRegionOfInterestInImageCoordinates:(CGRect)coordinates andRegionOfInterestInsetFactor:(float)factor error:(id *)error
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  *v27 = 1065353216;
  CVPixelBufferLockBaseAddress(image, 1uLL);
  v15 = (y + height + 0.5);
  v16 = CVPixelBufferGetHeight(image);
  if (x >= 0.0)
  {
    v17 = (x + 0.5);
  }

  else
  {
    v17 = 0;
  }

  if (v16 >= v15)
  {
    v18 = v16 - v15;
  }

  else
  {
    v18 = 0;
  }

  if (height >= 0.0)
  {
    v19 = (height + 0.5);
  }

  else
  {
    v19 = 0;
  }

  if (width >= 0.0)
  {
    v20 = (width + 0.5);
  }

  else
  {
    v20 = 0;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(image);
  v26[0] = CVPixelBufferGetBaseAddress(image) + v18 * BytesPerRow + v17;
  v26[1] = v19;
  v26[2] = v20;
  v26[3] = BytesPerRow;
  v23 = vision::mod::image_quality::BlurMeasure::computeEdgeBasedBlurScoreForPlanar8Image(v26, v27, 0, factor, 0, 0, v22);
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  if (v23 == 2688)
  {
    if (score)
    {
      *score = *v27;
    }
  }

  else if (error)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error while computing blur score: %s", CVML_getStatusDescription(v23)];
    *error = [VNError errorWithCode:3 message:v24];
  }

  return v23 == 2688;
}

@end