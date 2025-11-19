@interface VNFaceSegmentGenerator
+ (id)espressoModelFileNameForConfigurationOptions:(id)a3;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
- (BOOL)_fillFaceSegmentLabelToProbabilityMap:(id)a3 error:(id *)a4;
- (BOOL)_getFaceSegmenterInputImageSize:(CGSize *)a3 forRequestRevision:(unint64_t)a4 error:(id *)a5;
- (BOOL)_getNumberOfSupportedFaceSegments:(unint64_t *)a3 forRequestRevision:(unint64_t)a4 error:(id *)a5;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNFaceSegmentGenerator

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (BOOL)_fillFaceSegmentLabelToProbabilityMap:(id)a3 error:(id *)a4
{
  v33[4] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v5 = +[VNFaceSegments faceSegmentIndexToFlagMap];
  v6 = 0;
  while (1)
  {
    memset(&dest, 0, sizeof(dest));
    ptr = self->_faceSegmenterDNN.__ptr_;
    if (*(ptr + 248) != 1)
    {
      v24 = 8308;
      goto LABEL_22;
    }

    v8 = *(ptr + 28);
    v10 = *v8;
    v9 = v8[1];
    src.data = (*(ptr + 4) + 4 * v10 * v6 * v9);
    src.height = v9;
    src.width = v10;
    src.rowBytes = 4 * v10;
    v11 = *(ptr + 66);
    v12 = *(ptr + 65);
    dest.data = malloc_type_realloc(0, ((4 * v11 + 15) & 0xFFFFFFFFFFFFFFF0) * v12, 0x45F5D406uLL);
    if (!dest.data)
    {
      v24 = 4221;
      goto LABEL_22;
    }

    dest.width = v11;
    dest.rowBytes = (4 * v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    dest.height = v12;
    v13 = vImageScale_PlanarF(&src, &dest, 0, 0x80u);
    v14 = *(ptr + 37);
    if (v13 > *(ptr + 38))
    {
      break;
    }

LABEL_7:
    if (vImageScale_PlanarF(&src, &dest, v14, 0))
    {
      v24 = 8314;
      goto LABEL_22;
    }

    if (dest.width != 256 || dest.height != 256)
    {
      if (a4)
      {
        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v26 = [v25 initWithFormat:@"Expected labelConfidence map of %lu x %lu and got %lu x %lu", 256, 256, dest.width, dest.height];
        *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v26];
      }

      goto LABEL_24;
    }

    v15 = objc_alloc(MEMORY[0x1E695DEF0]);
    v16 = [v15 initWithBytesNoCopy:dest.data length:0x40000 freeWhenDone:1];
    v33[0] = v16;
    v32[0] = @"data";
    v32[1] = @"width";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:256];
    v33[1] = v17;
    v32[2] = @"height";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:256];
    v33[2] = v18;
    v32[3] = @"rowBytes";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:1024];
    v33[3] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v6];
    v22 = [v5 objectForKeyedSubscript:v21];

    if (!v22)
    {
      if (a4)
      {
        *a4 = [VNError errorForInternalErrorWithLocalizedDescription:@"cannot map face segments"];
      }

      goto LABEL_24;
    }

    [v29 setObject:v20 forKey:v22];

    if (++v6 == 15)
    {
      v23 = 1;
      goto LABEL_25;
    }
  }

  v14 = malloc_type_realloc(*(ptr + 37), v13, 0x100004077774924uLL);
  *(ptr + 37) = v14;
  if (v14)
  {
    *(ptr + 38) = v13;
    goto LABEL_7;
  }

  v24 = 8315;
LABEL_22:
  if (a4)
  {
    *a4 = VNErrorForCVMLStatus(v24);
  }

LABEL_24:
  v23 = 0;
LABEL_25:

  return v23;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v82[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__VNFaceSegmentGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
  aBlock[3] = &unk_1E77B36A8;
  aBlock[4] = self;
  aBlock[5] = a4;
  v13 = _Block_copy(aBlock);
  if ((VNExecuteBlock(v13, a8) & 1) == 0)
  {
    goto LABEL_35;
  }

  *ptr = 0u;
  v80 = 0u;
  v14 = self->_faceSegmenterDNN.__ptr_;
  if (*(v14 + 248) != 1)
  {
    v37 = 8308;
    if (a8)
    {
LABEL_33:
      VNErrorForCVMLStatus(v37);
      *a8 = v38 = 0;
      goto LABEL_36;
    }

LABEL_35:
    v38 = 0;
    goto LABEL_36;
  }

  v77 = v12;
  v15 = *(v14 + 28);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = (*v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = malloc_type_realloc(*(v14 + 43), v19 * v17, 0x45F5D406uLL);
  *(v14 + 43) = v20;
  if (!v20)
  {
    goto LABEL_34;
  }

  *(v14 + 45) = v16;
  *(v14 + 46) = v19;
  *(v14 + 44) = v17;
  bzero(v20, v19 * v17);
  v12 = v77;
  if (v17)
  {
    v21 = 0;
    v22 = *(v14 + 4);
    v23 = *(v14 + 43);
    do
    {
      if (v16)
      {
        v24 = 0;
        v25 = v22;
        do
        {
          if (v18)
          {
            v26 = 0;
            v27 = 0;
            v28 = -3.4028e38;
            v29 = v25;
            do
            {
              if (v28 < *v29)
              {
                v28 = *v29;
                v27 = v26;
              }

              ++v26;
              v29 += v17 * v16;
            }

            while (v18 != v26);
          }

          else
          {
            v27 = 0;
          }

          *(v23 + v24++) = v27;
          ++v25;
        }

        while (v24 != v16);
      }

      v23 += *(v14 + 46);
      ++v21;
      v22 += v16;
    }

    while (v21 != v17);
  }

  v30 = ptr[0];
  if (!ptr[0])
  {
    v31 = *(v14 + 66);
    v32 = *(v14 + 65);
    v30 = malloc_type_realloc(0, ((v31 + 15) & 0xFFFFFFFFFFFFFFF0) * v32, 0x45F5D406uLL);
    ptr[0] = v30;
    if (v30)
    {
      *&v80 = v31;
      *(&v80 + 1) = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
      ptr[1] = v32;
      v12 = v77;
      goto LABEL_20;
    }

LABEL_34:
    v37 = 4221;
    v12 = v77;
    if (a8)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_20:
  if (!*(v14 + 43) || (v33 = *(v14 + 45)) == 0 || (v34 = *(v14 + 44)) == 0 || *(v14 + 46) < 2uLL || !v80 || (v35 = ptr[1]) == 0 || (v36 = *(&v80 + 1), *(&v80 + 1) < 2uLL))
  {
    v37 = 4220;
    if (a8)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (v34 == ptr[1] && v33 == v80)
  {
    ImageProcessing_copyVImageBufferData(v14 + 43, 1, ptr);
  }

  else
  {
    v40 = 0;
    v41 = v33 / v80;
    v42 = 1;
    v43 = v34 / ptr[1];
    do
    {
      v44 = llroundf(((v40 + 0.5) * v43) + -0.5);
      v45 = *(v14 + 44);
      if (v45 <= v44)
      {
        v46 = v45 - 1;
      }

      else
      {
        v46 = v44 & ~(v44 >> 63);
      }

      if (v42)
      {
        v47 = 0;
        v48 = *(v14 + 43) + v46 * *(v14 + 46);
        do
        {
          v49 = llroundf(((v47 + 0.5) * v41) + -0.5);
          v50 = *(v14 + 45);
          if (v50 <= v49)
          {
            v51 = v50 - 1;
          }

          else
          {
            v51 = v49 & ~(v49 >> 63);
          }

          v30[v47++] = *(v48 + v51);
          v42 = v80;
        }

        while (v47 < v80);
        v35 = ptr[1];
        v36 = *(&v80 + 1);
      }

      v30 += v36;
      ++v40;
    }

    while (v40 < v35);
  }

  v52 = self->_faceSegmenterDNN.__ptr_;
  v53 = *(v52 + 66);
  v54 = *(v52 + 65);
  v55 = objc_alloc(MEMORY[0x1E695DEF0]);
  v56 = [v55 initWithBytesNoCopy:ptr[0] length:((v53 + 15) & 0xFFFFFFFFFFFFFFF0) * v54];
  v57 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 specifyingRequestClass:objc_opt_class() error:a8];
  v58 = v57;
  if (v57 && (v59 = [v57 requestRevision], v78 = 0, -[VNFaceSegmentGenerator _getNumberOfSupportedFaceSegments:forRequestRevision:error:](self, "_getNumberOfSupportedFaceSegments:forRequestRevision:error:", &v78, v59, a8)))
  {
    v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([(VNFaceSegmentGenerator *)self _fillFaceSegmentLabelToProbabilityMap:v60 error:a8])
    {
      v76 = [v12 objectForKeyedSubscript:@"VNFaceSegmentGeneratorInternalProcessOption_FaceSegmentBBoxNormalized_X"];
      [v76 doubleValue];
      v62 = v61;
      v63 = [v12 objectForKeyedSubscript:@"VNFaceSegmentGeneratorInternalProcessOption_FaceSegmentBBoxNormalized_Y"];
      [v63 doubleValue];
      v65 = v64;
      v66 = [v12 objectForKeyedSubscript:@"VNFaceSegmentGeneratorInternalProcessOption_FaceSegmentBBoxNormalized_Width"];
      [v66 doubleValue];
      v68 = v67;
      v69 = [v12 objectForKeyedSubscript:@"VNFaceSegmentGeneratorInternalProcessOption_FaceSegmentBBoxNormalized_Height"];
      [v69 doubleValue];
      v71 = v70;

      v72 = [VNFaceSegments alloc];
      v73 = [(VNFaceSegments *)v72 initWithRequestRevision:v59 outputBufferWidth:v80 outputBufferHeight:ptr[1] outputBufferData:v56 numberOfFaceSegments:v78 faceSegmentBBox:v60 faceSegmentLabelToProbabilityMap:v62, v65, v68, v71];
      v74 = VNCloneFaceObservationFromOptions(v12, a8);
      v75 = v74;
      if (v74)
      {
        [v74 setFaceSegments:v73];
        v82[0] = v75;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

LABEL_36:

  return v38;
}

uint64_t __124__VNFaceSegmentGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 88);
  *(v4 + 248) = 0;
  v5 = *(v4 + 200);
  v6 = v5[1];
  v7 = *v5;
  Width = CVPixelBufferGetWidth(v3);
  Height = CVPixelBufferGetHeight(v3);
  if (Width != v7 || Height != v6)
  {
    v10 = 8316;
    if (!a2)
    {
      return 0;
    }

LABEL_8:
    v12 = VNErrorForCVMLStatus(v10);
    v13 = v12;
    result = 0;
    *a2 = v12;
    return result;
  }

  *(v4 + 252) = 0;
  *(v4 + 256) = 0;
  *(v4 + 260) = Height;
  *(v4 + 264) = Width;
  if (espresso_network_bind_input_cvpixelbuffer() || espresso_plan_execute_sync())
  {
    espresso_plan_get_error_info();
    v10 = 8283;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_8;
  }

  result = 1;
  *(v4 + 248) = 1;
  return result;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a4;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:v12 error:a8];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 width];
    v16 = [v14 height];
    v17 = [VNValidationUtilities requiredFaceObservationInOptions:v12 error:a8];
    v18 = v17;
    if (v17)
    {
      [v17 alignedBoundingBoxAsCGRect];
      v22 = v15;
      v24 = v23 * v15;
      if (v24 == 0.0 || (v25 = v16, v26 = v21 * v16, v26 == 0.0))
      {
        if (a8)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:@"One of the dimensions of the input face image is zero"];
          *a8 = v42 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v27 = v19;
        v28 = v20;
        v56 = 0.0;
        if ([VNValidationUtilities getFloatValue:&v56 forKey:@"VNFaceSegmentGeneratorProcessOption_FaceBoundingBoxExpansionRatio" inOptions:v12 error:a8])
        {
          v57.origin.x = v27 * v22;
          v57.origin.y = v28 * v25;
          v29 = (v56 + -1.0);
          v30 = -(v24 * v29) * 0.5;
          v31 = -(v26 * v29) * 0.5;
          v57.size.width = v24;
          v57.size.height = v26;
          v58 = CGRectInset(v57, v30, v31);
          x = v58.origin.x;
          y = v58.origin.y;
          width = v58.size.width;
          height = v58.size.height;
          [v14 orientation];
          if (VNSetFaceOrientationInOptionsDictionary(v18, v12, a8))
          {
            if (width >= height)
            {
              v36 = width / height;
            }

            else
            {
              v36 = height / width;
            }

            +[VNFaceSegmentGenerator _faceSegmenterMaximumInputImageAspectRatio];
            v37 = v36;
            if (v38 >= v37)
            {
              v44 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 specifyingRequestClass:objc_opt_class() error:a8];
              v41 = v44;
              if (v44 && (v45 = [v44 requestRevision], *v55 = *MEMORY[0x1E695F060], -[VNFaceSegmentGenerator _getFaceSegmenterInputImageSize:forRequestRevision:error:](self, "_getFaceSegmenterInputImageSize:forRequestRevision:error:", v55, v45, a8)) && (objc_msgSend(v12, "setObject:forKeyedSubscript:", MEMORY[0x1E695E118], @"VNImageBufferOption_CreateFromPixelBufferPool"), v46 = objc_msgSend(v14, "croppedBufferWithWidth:height:format:cropRect:options:error:", v55[0], v55[1], 1111970369, v12, a8, x, y, width, height), (*a7 = v46) != 0))
              {
                v47 = 0.0;
                v48 = 0.0;
                v49 = 0.0;
                if (v15)
                {
                  v48 = x / v22;
                  v49 = width / v22;
                }

                v50 = 0.0;
                if (v16)
                {
                  v47 = y / v25;
                  v50 = height / v25;
                }

                v51 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
                [v12 setObject:v51 forKeyedSubscript:@"VNFaceSegmentGeneratorInternalProcessOption_FaceSegmentBBoxNormalized_X"];

                v52 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
                [v12 setObject:v52 forKeyedSubscript:@"VNFaceSegmentGeneratorInternalProcessOption_FaceSegmentBBoxNormalized_Y"];

                v53 = [MEMORY[0x1E696AD98] numberWithDouble:v49];
                [v12 setObject:v53 forKeyedSubscript:@"VNFaceSegmentGeneratorInternalProcessOption_FaceSegmentBBoxNormalized_Width"];

                v54 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
                [v12 setObject:v54 forKeyedSubscript:@"VNFaceSegmentGeneratorInternalProcessOption_FaceSegmentBBoxNormalized_Height"];

                v42 = 1;
              }

              else
              {
                v42 = 0;
              }

              goto LABEL_28;
            }

            if (a8)
            {
              v39 = MEMORY[0x1E696AEC0];
              +[VNFaceSegmentGenerator _faceSegmenterMaximumInputImageAspectRatio];
              v41 = [v39 stringWithFormat:@"Input face aspect ratio > %f cannot be processed", v40];
              [VNError errorForInternalErrorWithLocalizedDescription:v41];
              *a8 = v42 = 0;
LABEL_28:

              goto LABEL_17;
            }
          }
        }
      }
    }

    v42 = 0;
    goto LABEL_17;
  }

  v42 = 0;
LABEL_18:

  return v42;
}

- (BOOL)_getNumberOfSupportedFaceSegments:(unint64_t *)a3 forRequestRevision:(unint64_t)a4 error:(id *)a5
{
  if (a3)
  {
    if (a4 == 1)
    {
      *a3 = *(*(self->_faceSegmenterDNN.__ptr_ + 28) + 16);
      return 1;
    }

    if (a5)
    {
      v7 = @"Unexpected request revision";
      goto LABEL_8;
    }
  }

  else if (a5)
  {
    v7 = @"Invalid parameter (numberOfSupportedFaceSegments)";
LABEL_8:
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7, a4];
    v9 = v8;
    result = 0;
    *a5 = v8;
    return result;
  }

  return 0;
}

- (BOOL)_getFaceSegmenterInputImageSize:(CGSize *)a3 forRequestRevision:(unint64_t)a4 error:(id *)a5
{
  if (a3)
  {
    if (a4 == 1)
    {
      *a3 = vcvtq_f64_f32(vcvt_f32_f64(vcvtq_f64_u64(**(self->_faceSegmenterDNN.__ptr_ + 25))));
      return 1;
    }

    if (a5)
    {
      v7 = @"Unexpected request revision";
      goto LABEL_8;
    }
  }

  else if (a5)
  {
    v7 = @"Invalid parameter (size)";
LABEL_8:
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7, a4];
    v9 = v8;
    result = 0;
    *a5 = v8;
    return result;
  }

  return 0;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v7.receiver = self;
  v7.super_class = VNFaceSegmentGenerator;
  if ([(VNEspressoModelFileBasedDetector *)&v7 completeInitializationForSession:a3 error:?])
  {
    v5 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    [v5 network];
    [v5 plan];
    operator new();
  }

  return 0;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  if (+[VNFaceSegmentGenerator espressoModelInputImageDimensionsBlobNameForConfigurationOptions:]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceSegmentGenerator espressoModelInputImageDimensionsBlobNameForConfigurationOptions:]::onceToken, &__block_literal_global_55);
  }

  v4 = +[VNFaceSegmentGenerator espressoModelInputImageDimensionsBlobNameForConfigurationOptions:]::inputBufferBlobName;

  return v4;
}

uint64_t __91__VNFaceSegmentGenerator_espressoModelInputImageDimensionsBlobNameForConfigurationOptions___block_invoke()
{
  +[VNFaceSegmentGenerator espressoModelInputImageDimensionsBlobNameForConfigurationOptions:]::inputBufferBlobName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"input__0"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)espressoModelFileNameForConfigurationOptions:(id)a3
{
  if (+[VNFaceSegmentGenerator espressoModelFileNameForConfigurationOptions:]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceSegmentGenerator espressoModelFileNameForConfigurationOptions:]::onceToken, &__block_literal_global_11177);
  }

  v4 = +[VNFaceSegmentGenerator espressoModelFileNameForConfigurationOptions:]::espressoModelName;

  return v4;
}

uint64_t __71__VNFaceSegmentGenerator_espressoModelFileNameForConfigurationOptions___block_invoke()
{
  +[VNFaceSegmentGenerator espressoModelFileNameForConfigurationOptions:]::espressoModelName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"faceSemantics_v1_15class_quant.espresso"];

  return MEMORY[0x1EEE66BB8]();
}

@end