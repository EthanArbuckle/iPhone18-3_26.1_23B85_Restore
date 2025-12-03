@interface VNFaceLandmarkDetectorDNN
+ (NSArray)inputBlobNames;
+ (id)configurationOptionKeysForDetectorKey;
+ (int)_detectorConstellationForRequestConstellation:(unint64_t)constellation;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)getLandmarkErrorEstimates:(void *)estimates forRequestConstellation:(unint64_t)constellation error:(id *)error;
- (BOOL)getLandmarkPoints:(void *)points forRequestConstellation:(unint64_t)constellation error:(id *)error;
- (BOOL)requestConstellation:(unint64_t *)constellation cvmlConstellation:(int *)cvmlConstellation fromOptions:(id)options error:(id *)error;
- (BOOL)translateAndNormalizeLandmarkPointsWrtLLCofAlignedFaceBBox:(void *)box imageBuffer:(id)buffer outputFace:(id)face error:(id *)error;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (void)releaseResources;
@end

@implementation VNFaceLandmarkDetectorDNN

+ (int)_detectorConstellationForRequestConstellation:(unint64_t)constellation
{
  if (+[VNFaceLandmarkDetectorDNN _detectorConstellationForRequestConstellation:]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceLandmarkDetectorDNN _detectorConstellationForRequestConstellation:]::onceToken, &__block_literal_global_30713);
  }

  v4 = *(+[VNFaceLandmarkDetectorDNN _detectorConstellationForRequestConstellation:]::map + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = +[VNFaceLandmarkDetectorDNN _detectorConstellationForRequestConstellation:]::map + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= constellation;
    v8 = v6 < constellation;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != +[VNFaceLandmarkDetectorDNN _detectorConstellationForRequestConstellation:]::map + 8 && *(v5 + 32) <= constellation)
  {
    return *(v5 + 40);
  }

  else
  {
    return 0;
  }
}

+ (NSArray)inputBlobNames
{
  vision::mod::LandmarkDetectorDNN_Options::LandmarkDetectorDNN_Options(v4, [self landmarkDetectorDNNVersion]);
  memset(v3, 0, sizeof(v3));
  v5 = v3;
  v6 = 0;
  operator new();
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VNFaceLandmarkDetectorDNN_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNFaceLandmarkDetectorDNN configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceLandmarkDetectorDNN configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNFaceLandmarkDetectorDNN configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __66__VNFaceLandmarkDetectorDNN_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNFaceLandmarkDetectorDNN;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNFaceLandmarkDetectorDNNProcessOption_Constellation"];
  v3 = [v2 copy];
  v4 = +[VNFaceLandmarkDetectorDNN configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNFaceLandmarkDetectorDNN configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___VNFaceLandmarkDetectorDNN;
  objc_msgSendSuper2(&v7, sel_recordDefaultConfigurationOptionsInDictionary_, dictionaryCopy);
  inputBlobNames = [self inputBlobNames];
  [dictionaryCopy setObject:inputBlobNames forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];

  outputBlobNames = [self outputBlobNames];
  [dictionaryCopy setObject:outputBlobNames forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];

  [dictionaryCopy setObject:&unk_1F19C1A50 forKeyedSubscript:@"VNFaceLandmarkDetectorDNNProcessOption_Constellation"];
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  return self;
}

- (void)releaseResources
{
  p_landmarkDetector = &self->_landmarkDetector;
  cntrl = self->_landmarkDetector.__cntrl_;
  p_landmarkDetector->__ptr_ = 0;
  p_landmarkDetector->__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  self->_landmarkPoints65.__end_ = self->_landmarkPoints65.__begin_;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  VNCloneFaceObservationFromOptions(optionsCopy, error);
  if (objc_claimAutoreleasedReturnValue())
  {
    CVPixelBufferGetWidth(buffer);
    CVPixelBufferGetHeight(buffer);
    espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    [espressoResources network];
    [espressoResources plan];
    [objc_opt_class() landmarkDetectorDNNVersion];
    operator new();
  }

  return 0;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  v33[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredFaceObservationInOptions:optionsCopy error:error];
    if (v14)
    {
      width = [v13 width];
      height = [v13 height];
      [(VNFaceLandmarkDetector *)self normalizedFaceBBoxForLandmarks:v14];
      v21 = v20 * width;
      v22 = v18 * width;
      v23 = v17 * height;
      v24 = v19 * height;
      if (v22 < 1.0 || v24 < 1.0)
      {
        if (!error)
        {
LABEL_14:

          goto LABEL_15;
        }

        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"faceBB %f, %f, %f, %f has zero or near zero dimensions", *&v21, v17 * height, v18 * width, v19 * height];
        *error = [VNError errorWithCode:3 message:v26];
      }

      else
      {
        v31 = -1;
        if ([v14 getFaceEXIFOrientation:&v31 error:error])
        {
          v32[0] = @"VNImageBufferOption_FeatureOrientationRelativeToUpRight";
          v27 = [MEMORY[0x1E696AD98] numberWithInt:v31];
          v32[1] = @"VNImageBufferOption_CreateFromPixelBufferPool";
          v33[0] = v27;
          v33[1] = MEMORY[0x1E695E118];
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

          v29 = [v13 croppedBufferWithWidth:-[VNEspressoModelFileBasedDetector networkRequiredInputImageWidth](self height:"networkRequiredInputImageWidth") format:-[VNEspressoModelFileBasedDetector networkRequiredInputImageHeight](self cropRect:"networkRequiredInputImageHeight") options:1111970369 error:{v28, error, v21, v23, v22, v24}];
          *buffer = v29;
          LOBYTE(error) = v29 != 0;

          goto LABEL_14;
        }
      }
    }

    LOBYTE(error) = 0;
    goto LABEL_14;
  }

  LOBYTE(error) = 0;
LABEL_15:

  return error;
}

- (BOOL)translateAndNormalizeLandmarkPointsWrtLLCofAlignedFaceBBox:(void *)box imageBuffer:(id)buffer outputFace:(id)face error:(id *)error
{
  bufferCopy = buffer;
  faceCopy = face;
  width = [bufferCopy width];
  height = [bufferCopy height];
  [(VNFaceLandmarkDetector *)self normalizedFaceBBoxForLandmarks:faceCopy];
  v57 = v14;
  v58 = v15;
  v17 = v16;
  v19 = v18;
  [faceCopy alignedBoundingBoxAsCGRect];
  v21 = v20 * width;
  v23 = v22 * width;
  v25 = v24 * height;
  v27 = v26 * height;
  v62.origin.x = v21;
  v62.origin.y = v25;
  v62.size.width = v23;
  v62.size.height = v27;
  v28 = CGRectEqualToRect(v62, *MEMORY[0x1E695F058]);
  v29 = v17 * width;
  v30 = v19 * height;
  if (v28)
  {
    v31 = v19 * height;
  }

  else
  {
    v31 = v27;
  }

  if (v28)
  {
    v32 = v17 * width;
  }

  else
  {
    v32 = v23;
  }

  if (v28)
  {
    v33 = v58 * height;
  }

  else
  {
    v33 = v25;
  }

  if (v28)
  {
    v21 = v57 * width;
  }

  v34 = v57 * width;
  v61 = -1;
  v35 = [faceCopy getFaceEXIFOrientation:&v61 error:error];
  if (v35)
  {
    networkRequiredInputImageWidth = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageWidth];
    networkRequiredInputImageHeight = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageHeight];
    memset(&v60, 0, sizeof(v60));
    if (v61 <= 4)
    {
      switch(v61)
      {
        case 2:
          v59.a = -1.0;
          v59.b = 0.0;
          v59.c = 0.0;
          __asm { FMOV            V0.2D, #1.0 }

          *&v59.d = _Q0;
          v59.ty = 0.0;
          goto LABEL_31;
        case 3:
          v59.a = -1.0;
          v59.b = 0.0;
          v59.c = 0.0;
          *&v59.d = xmmword_1A6038E40;
          v59.ty = 1.0;
LABEL_31:
          CGAffineTransformInvert(&v60, &v59);
          v44 = *box;
          v45 = *(box + 1);
          if (*box != v45)
          {
            a = v60.a;
            b = v60.b;
            c = v60.c;
            d = v60.d;
            tx = v60.tx;
            ty = v60.ty;
            do
            {
              v52 = 1.0 / networkRequiredInputImageWidth * *v44;
              v53 = 1.0 / networkRequiredInputImageHeight * v44[1];
              v54 = tx + v53 * c + a * v52;
              v55 = ty + v53 * d + b * v52;
              *&v53 = (v29 * v54 - (v21 - v34)) / v32;
              *&v55 = (v30 * v55 - (v33 - v58 * height)) / v31;
              *v44 = *&v53;
              v44[1] = *&v55;
              v44 += 2;
            }

            while (v44 != v45);
          }

          goto LABEL_34;
        case 4:
          v59.a = 1.0;
          v59.b = 0.0;
          v59.c = 0.0;
          *&v59.d = xmmword_1A6038B90;
          v59.ty = 1.0;
          goto LABEL_31;
      }
    }

    else
    {
      if (v61 <= 6)
      {
        if (v61 != 5)
        {
          *&v59.a = xmmword_1A6038B80;
          v59.c = 1.0;
          v59.d = 0.0;
          v59.tx = 0.0;
          v59.ty = 1.0;
          goto LABEL_31;
        }

        *&v59.a = xmmword_1A6038B80;
        *&v59.c = xmmword_1A6038B90;
        __asm { FMOV            V0.2D, #1.0 }

        goto LABEL_27;
      }

      if (v61 == 7)
      {
        *&v59.a = xmmword_1A6038B70;
        v59.c = 1.0;
        v59.d = 0.0;
        goto LABEL_29;
      }

      if (v61 == 8)
      {
        *&v59.a = xmmword_1A6038B70;
        *&v59.c = xmmword_1A6038B90;
        _Q0 = xmmword_1A6038E50;
LABEL_27:
        *&v59.tx = _Q0;
        goto LABEL_31;
      }
    }

    v59.b = 0.0;
    v59.c = 0.0;
    v59.a = 1.0;
    v59.d = 1.0;
LABEL_29:
    v59.tx = 0.0;
    v59.ty = 0.0;
    goto LABEL_31;
  }

LABEL_34:

  return v35;
}

- (BOOL)getLandmarkErrorEstimates:(void *)estimates forRequestConstellation:(unint64_t)constellation error:(id *)error
{
  v8 = [objc_opt_class() _detectorConstellationForRequestConstellation:constellation];
  v9 = std::map<vision::mod::_constellationType,std::pair<std::string,BOOL>>::at(*(self->_landmarkDetector.__ptr_ + 15), v8);
  v10 = *(v9 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = v9[1];
  }

  if (!v10)
  {
    return 1;
  }

  ptr = self->_landmarkDetector.__ptr_;
  if ((*ptr & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 2932;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v12 = std::map<vision::mod::_constellationType,std::pair<std::string,BOOL>>::at(*(ptr + 15), v8);
  v13 = std::map<std::string,std::vector<float>>::at(ptr + 160, v12);
  v14 = *v13;
  v15 = v13[12];
  vision::mod::LandmarkDetectorDNN::checkConstellation(v15, v8);
  std::vector<float>::vector[abi:ne200100](&__p, v15);
  if (v15)
  {
    v16 = __p;
    do
    {
      v17 = *v14++;
      *v16++ = v17;
      --v15;
    }

    while (v15);
  }

  if (v8 <= 2)
  {
    v18 = vision::mod::constellationTypeSize[v8];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 == (v25 - __p) >> 2;
  if (v18 == (v25 - __p) >> 2)
  {
    if (&__p != estimates)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(estimates, __p, v25, v18);
    }
  }

  else if (error)
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = [v20 initWithFormat:@"Unexpected number of error estimates for Landmark points (%lu) while processing Face Landmarks request. Expected: %lu", (v25 - __p) >> 2, v18];
    *error = [VNError errorForInternalErrorWithLocalizedDescription:v21];
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  return v19;
}

- (BOOL)getLandmarkPoints:(void *)points forRequestConstellation:(unint64_t)constellation error:(id *)error
{
  v8 = [objc_opt_class() _detectorConstellationForRequestConstellation:constellation];
  v9 = std::map<vision::mod::_constellationType,std::pair<std::string,BOOL>>::at(*(self->_landmarkDetector.__ptr_ + 12), v8);
  v10 = *(v9 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = v9[1];
  }

  if (v10)
  {
    ptr = self->_landmarkDetector.__ptr_;
    if ((*ptr & 1) == 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 2932;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v13 = *(ptr + 25);
    v12 = *(ptr + 26);
    v14 = std::map<vision::mod::_constellationType,std::pair<std::string,BOOL>>::at(*(ptr + 12), v8);
    v15 = std::map<std::string,std::vector<float>>::at(ptr + 160, v14);
    v16 = *v15;
    v17 = v15[12];
    v18 = v17 >> 1;
    vision::mod::LandmarkDetectorDNN::checkConstellation(v17 >> 1, v8);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    Geometry2D_mallocCart2D(&v42, v17 >> 1);
    if (v17 >= 2)
    {
      v20 = (v16 + 4);
      v21 = v17 >> 1;
      v22 = v42;
      v23 = v43;
      do
      {
        *v22++ = *(v20 - 1) * v13;
        v24 = *v20;
        v20 += 2;
        *v23++ = v24 * v12;
        --v21;
      }

      while (v21);
      v39 = 0;
      v40 = 0;
      v41 = 0;
      vision::mod::ImageProcessing_Preprocessor::mapCoordinatesDestinationToSource(&v39, *(ptr + 29), &v42);
      free(v42);
      v42 = 0;
      free(v43);
      v43 = 0;
      LODWORD(v44) = 0;
      std::vector<_Geometry2D_point2D_>::vector[abi:ne200100](&__p, v17 >> 1);
      v25 = v39;
      v26 = v40;
      v27 = (__p + 4);
      do
      {
        v28 = *v25++;
        v29 = v28;
        v30 = *v26++;
        v31 = *(ptr + 48) - v30;
        *(v27 - 1) = v29;
        *v27 = v31;
        v27 += 2;
        --v18;
      }

      while (v18);
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      vision::mod::ImageProcessing_Preprocessor::mapCoordinatesDestinationToSource(&v39, *(ptr + 29), &v42);
      free(v42);
      v42 = 0;
      free(v43);
      v43 = 0;
      LODWORD(v44) = 0;
      std::vector<_Geometry2D_point2D_>::vector[abi:ne200100](&__p, v17 >> 1);
    }

    free(v39);
    v39 = 0;
    free(v40);
    v32 = 0;
    v33 = (v38 - __p) >> 3;
    if (v8 <= 2)
    {
      v32 = vision::mod::constellationTypeSize[v8];
    }

    v19 = v33 == v32;
    if (v33 == v32)
    {
      if (&__p != points)
      {
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(points, __p, v38, (v38 - __p) >> 3);
      }
    }

    else if (error)
    {
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected number of Landmark points (%lu) while processing Face Landmarks request. Expected: %lu", v33, v32];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v34];
    }

    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }
  }

  else if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Could not compute Landmarks using Landmark Detector due to internal error"];
    *error = v19 = 0;
  }

  else
  {
    return 0;
  }

  return v19;
}

- (BOOL)requestConstellation:(unint64_t *)constellation cvmlConstellation:(int *)cvmlConstellation fromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  if (constellation)
  {
    v10 = cvmlConstellation == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  [VNError VNAssert:v11 log:@"Input parameter cannot be NULL"];
  v14 = 0;
  v12 = [VNValidationUtilities getNSUIntegerValue:&v14 forKey:@"VNFaceLandmarkDetectorDNNProcessOption_Constellation" inOptions:optionsCopy error:error];
  if (v12)
  {
    *constellation = v14;
    *cvmlConstellation = [objc_opt_class() _detectorConstellationForRequestConstellation:v14];
  }

  return v12;
}

@end