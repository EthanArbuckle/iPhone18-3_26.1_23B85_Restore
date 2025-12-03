@interface VNFaceLandmarkDetector
+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error;
+ (_Geometry2D_point2D_)computeCentroidUsingPoints:(const _Geometry2D_point2D_ *)points indicies:(const int *)indicies numberOfIndicies:(int)ofIndicies;
+ (const)allLandmarksPointsIndexesForConstellation:(unint64_t)constellation;
+ (const)landmarksMeshPartsForConstellation:(unint64_t)constellation;
+ (id)configurationOptionKeysForDetectorKey;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)detectBlinkOnFaceImage:(const vImage_Buffer *)image faceObservation:(id)observation lumaRec2DInImageCoordinates:(_Geometry2D_rect2D_ *)coordinates landmarks:(const void *)landmarks warningRecorder:(id)recorder error:(id *)error;
- (BOOL)loadRefinersAndReturnError:(id *)error;
- (BOOL)postprocessLandmarkResultsForLandmarks:(const void *)landmarks imageBuffer:(id)buffer outputFace:(id)face options:(id)options warningRecorder:(id)recorder error:(id *)error;
- (CGRect)normalizedFaceBBoxForLandmarks:(id)landmarks;
- (id).cxx_construct;
- (id)computeLandmarksScoreOnImage:(const vImage_Buffer *)image withFaceBoundingBox:(const _Geometry2D_rect2D_ *)box andLandmarks:(const void *)landmarks error:(id *)error;
- (void)calculatePupilLocationAndUpdateLandmarkPoints:(void *)points;
- (void)dealloc;
@end

@implementation VNFaceLandmarkDetector

+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy specifyingRequestClass:objc_opt_class() error:error];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  requestRevision = [v6 requestRevision];
  if ((requestRevision - 1) < 2 || (requestRevision != 3 ? (v9 = requestRevision == 3737841664) : (v9 = 1), v9))
  {
    v10 = objc_opt_class();
    goto LABEL_12;
  }

  if (error)
  {
    [VNError errorForUnsupportedRequestSpecifier:v7];
    *error = v10 = 0;
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

LABEL_12:

  return v10;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VNFaceLandmarkDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNFaceLandmarkDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceLandmarkDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNFaceLandmarkDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __63__VNFaceLandmarkDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNFaceLandmarkDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorOption_OriginatingRequestSpecifier"];
  [v2 addObject:@"VNDetectorInitOption_ModelBackingStore"];
  v3 = [v2 copy];
  v4 = +[VNFaceLandmarkDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNFaceLandmarkDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (_Geometry2D_point2D_)computeCentroidUsingPoints:(const _Geometry2D_point2D_ *)points indicies:(const int *)indicies numberOfIndicies:(int)ofIndicies
{
  if (ofIndicies < 1)
  {
    v7 = 0;
  }

  else
  {
    ofIndiciesCopy = ofIndicies;
    v7 = 0;
    do
    {
      v8 = *indicies++;
      v5 = points[v8];
      v7 = vadd_f32(v7, v5);
      --ofIndiciesCopy;
    }

    while (ofIndiciesCopy);
  }

  v5.f32[0] = ofIndicies;
  v9 = vdiv_f32(v7, vdup_lane_s32(v5, 0));
  v10 = v9.f32[1];
  result.x = v9.f32[0];
  result.y = v10;
  return result;
}

+ (const)allLandmarksPointsIndexesForConstellation:(unint64_t)constellation
{
  if (constellation - 1 > 1)
  {
    constellation = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown constellation type: %lu", constellation];
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:constellation userInfo:0];
    objc_exception_throw(v11);
  }

  if (+[VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:]::onceToken, &__block_literal_global_40);
  }

  v4 = *(+[VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:]::allLandmarksPointsIndexesToConstellationMap + 8);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = +[VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:]::allLandmarksPointsIndexesToConstellationMap + 8;
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
  if (v5 == +[VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:]::allLandmarksPointsIndexesToConstellationMap + 8 || *(v5 + 32) > constellation)
  {
LABEL_12:
    v5 = +[VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:]::allLandmarksPointsIndexesToConstellationMap + 8;
  }

  return (v5 + 40);
}

+ (const)landmarksMeshPartsForConstellation:(unint64_t)constellation
{
  if (constellation - 1 > 1)
  {
    constellation = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown constellation type: %lu", constellation];
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:constellation userInfo:0];
    objc_exception_throw(v11);
  }

  if (+[VNFaceLandmarkDetector landmarksMeshPartsForConstellation:]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceLandmarkDetector landmarksMeshPartsForConstellation:]::onceToken, &__block_literal_global_4291);
  }

  v4 = *(+[VNFaceLandmarkDetector landmarksMeshPartsForConstellation:]::meshPartsToConstellationMap + 8);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = +[VNFaceLandmarkDetector landmarksMeshPartsForConstellation:]::meshPartsToConstellationMap + 8;
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
  if (v5 == +[VNFaceLandmarkDetector landmarksMeshPartsForConstellation:]::meshPartsToConstellationMap + 8 || *(v5 + 32) > constellation)
  {
LABEL_12:
    v5 = +[VNFaceLandmarkDetector landmarksMeshPartsForConstellation:]::meshPartsToConstellationMap + 8;
  }

  return *(v5 + 40);
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (BOOL)detectBlinkOnFaceImage:(const vImage_Buffer *)image faceObservation:(id)observation lumaRec2DInImageCoordinates:(_Geometry2D_rect2D_ *)coordinates landmarks:(const void *)landmarks warningRecorder:(id)recorder error:(id *)error
{
  v87[3] = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  recorderCopy = recorder;
  if (image)
  {
    _ZF = observationCopy == 0;
  }

  else
  {
    _ZF = 1;
  }

  v18 = _ZF || coordinates == 0 || landmarks == 0;
  v19 = !v18;
  if (v18)
  {
    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid parameters passed to blink score computation"];
    }
  }

  else
  {
    LODWORD(src.data) = 0;
    std::vector<float>::vector[abi:ne200100](&v80, 0x550uLL);
    memset(v79, 0, sizeof(v79));
    LOBYTE(src.data) = 0;
    std::vector<unsigned char>::vector[abi:ne200100](v78, 2304);
    LOBYTE(src.data) = 0;
    std::vector<unsigned char>::vector[abi:ne200100](__p, 2304);
    *&dest.height = vdupq_n_s64(0x30uLL);
    dest.rowBytes = 48;
    v75.data = __p[0];
    v75.rowBytes = 48;
    dest.data = v78[0];
    ptr = self->_faceAttributesPupilRefiner.__ptr_;
    *&v75.height = *&dest.height;
    v85 = 0;
    v86 = 0;
    LODWORD(src.data) = 0;
    std::vector<float>::vector[abi:ne200100](v84, 0x2A8uLL);
    LODWORD(src.data) = 0;
    std::vector<float>::vector[abi:ne200100](v87, 0x2A8uLL);
    y = coordinates->origin.y;
    v22 = coordinates->origin.x + *(*landmarks + 128);
    v23 = coordinates->origin.x + *(*landmarks + 160);
    v24 = (coordinates->origin.x + *(*landmarks + 96)) - (*(*landmarks + 64) + coordinates->origin.x);
    data = image->data;
    rowBytes = image->rowBytes;
    v27 = vmovn_s64(*&image->height);
    height = image->height;
    v29.f32[0] = height - (*(*landmarks + 68) + y);
    v30.f32[0] = height - (y + *(*landmarks + 100));
    v31.f32[0] = height - (y + *(*landmarks + 132));
    v32.f32[0] = height - (y + *(*landmarks + 164));
    v29.f32[1] = *(*landmarks + 64) + coordinates->origin.x;
    v30.f32[1] = coordinates->origin.x + *(*landmarks + 96);
    v33 = vmul_f32(vadd_f32(v29, v30), 0x3F0000003F000000);
    v29.f32[0] = sqrtf(((v30.f32[0] - v29.f32[0]) * (v30.f32[0] - v29.f32[0])) + (v24 * v24)) * 0.5;
    *v34.i32 = sqrtf(((v32.f32[0] - v31.f32[0]) * (v32.f32[0] - v31.f32[0])) + ((v23 - v22) * (v23 - v22))) * 0.5;
    v35 = vdup_lane_s32(v29, 0);
    v36 = vcvt_f32_u32(vmax_s32(vcvt_s32_f32(vrndp_f32(vsub_f32(v33, v35))), 0x100000001));
    v37 = v36.f32[1];
    v38 = image->data + rowBytes * v36.f32[0] + v36.f32[1];
    v74 = v36.f32[0];
    v39 = vsub_f32(vcvt_f32_s32(vmin_s32(vcvt_s32_f32(vrndp_f32(vadd_f32(v33, v35))), v27)), v36);
    __asm { FMOV            V6.2S, #1.0 }

    *&src.height = vcvtq_u64_f64(vcvtq_f64_f32(vadd_f32(v39, _D6)));
    v31.f32[1] = v22;
    v32.f32[1] = v23;
    src.data = v38;
    src.rowBytes = rowBytes;
    v44 = vmul_f32(vadd_f32(v31, v32), 0x3F0000003F000000);
    v45 = vdup_lane_s32(v34, 0);
    v46 = vcvt_f32_u32(vmax_s32(vcvt_s32_f32(vrndp_f32(vsub_f32(v44, v45))), 0x100000001));
    v47 = v46.f32[1];
    v73 = v46.f32[0];
    *&v82.height = vcvtq_u64_f64(vcvtq_f64_f32(vadd_f32(vsub_f32(vcvt_f32_s32(vmin_s32(vcvt_s32_f32(vrndp_f32(vadd_f32(v44, v45))), v27)), v46), _D6)));
    v82.data = &data[rowBytes * v46.f32[0] + v46.f32[1]];
    v82.rowBytes = rowBytes;
    vImageScale_Planar8(&src, &dest, 0, 0x20u);
    vImageScale_Planar8(&v82, &v75, 0, 0x20u);
    computePhogDescriptor(dest.data, v84);
    computePhogDescriptor(v75.data, v87);
    if (*(ptr + 6))
    {
      espresso_vision_compute_pupil_position();
      v49 = v48;
      v51 = v50;
      espresso_vision_compute_pupil_position();
      if (v49 < 0.15 || v49 > 0.85 || v51 < 0.15 || v51 > 0.85)
      {
        v51 = 0.5;
        v49 = 0.5;
      }

      if (v52 < 0.15 || v52 > 0.85 || v53 < 0.15 || v53 > 0.85)
      {
        v53 = 0.5;
        v52 = 0.5;
      }

      v54 = coordinates->origin.y;
      v55 = (v47 + (v82.width * v52)) - coordinates->origin.x;
      *&v86 = (v37 + (src.width * v49)) - coordinates->origin.x;
      *(&v86 + 1) = v55;
      v56 = image->height;
      *&v85 = (v56 - (v74 + (src.height * v51))) - v54;
      *(&v85 + 1) = (v56 - (v73 + (v82.height * v53))) - v54;
      std::vector<float>::push_back[abi:ne200100](v79, &v86);
      std::vector<float>::push_back[abi:ne200100](v79, &v85);
      std::vector<float>::push_back[abi:ne200100](v79, &v86 + 1);
      std::vector<float>::push_back[abi:ne200100](v79, &v85 + 1);
    }

    v57 = 0;
    v58 = v84[0];
    v59 = v80;
    v60 = v87[0];
    do
    {
      v61 = &v59[v57];
      *v61 = *&v58[v57];
      *(v61 + 680) = *&v60[v57];
      v57 += 4;
    }

    while (v57 != 2720);
    v87[1] = v60;
    operator delete(v60);
    if (v84[0])
    {
      v84[1] = v84[0];
      operator delete(v84[0]);
    }

    v62 = self->_faceAttributesPupilRefiner.__ptr_;
    v82.height = 0;
    v82.width = 0;
    v82.data = &v82.height;
    vision::mod::LandmarkAttributes::computePixelDistanceFeature(&src, coordinates, landmarks);
    v63 = src.height;
    src.height -= 4;
    v64 = v63 - src.data - 4;
    v65 = v64 >> 2;
    if (v64 >> 2 != *(v62 + 16) >> 2)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 2940;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v66 = *(v62 + 17);
    MEMORY[0x1AC5587F0](v66 + 2 * v64, 1, src.data, 1, src.data, 1, v64 >> 2);
    vDSP_vdiv((v66 + 12 * v65), 1, src.data, 1, src.data, 1, (src.height - src.data) >> 2);
    cblas_sgemv_NEWLAPACK();
    HIDWORD(v86) = 0;
    v84[0] = &v86 + 4;
    if (*(v87 + 1) <= 0.8)
    {
      *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v82, 0) + 8) = 0;
    }

    else
    {
      *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v82, 0) + 8) = 1065353216;
    }

    v67 = *(v62 + 20);
    v68 = v81 - v80;
    MEMORY[0x1AC5587F0](v67 + v81 - v80, 1, v80, 1, v80, 1, (v81 - v80) >> 2);
    vDSP_vdiv((v67 + 2 * v68), 1, v80, 1, v80, 1, (v81 - v80) >> 2);
    LODWORD(v72) = 1;
    cblas_sgemv_NEWLAPACK();
    LODWORD(v86) = 1;
    v84[0] = &v86;
    if (*(&v86 + 1) <= 0.1)
    {
      *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v82, 1) + 8) = 0;
    }

    else
    {
      *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v82, 1) + 8) = 1065353216;
    }

    if (src.data)
    {
      src.height = src.data;
      operator delete(src.data);
    }

    LODWORD(v84[0]) = 1;
    src.data = v84;
    [observationCopy setIsBlinking:{*(std::__tree<std::__value_type<vision::mod::_blinkType, float>, std::__map_value_compare<vision::mod::_blinkType, std::__value_type<vision::mod::_blinkType, float>, std::less<vision::mod::_blinkType>, true>, std::allocator<std::__value_type<vision::mod::_blinkType, float>>>::__emplace_unique_key_args<vision::mod::_blinkType, std::piecewise_construct_t const&, std::tuple<vision::mod::_blinkType&&>, std::tuple<>>(&v82, 1) + 8) > 0.1, &v86 + 4, v72}];
    LODWORD(v84[0]) = 1;
    src.data = v84;
    LODWORD(v69) = *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v82, 1) + 8);
    [observationCopy setBlinkScore:v69];
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v82.height);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v78[0])
    {
      v78[1] = v78[0];
      operator delete(v78[0]);
    }

    if (v79[0])
    {
      operator delete(v79[0]);
    }

    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }
  }

  return v19;
}

- (CGRect)normalizedFaceBBoxForLandmarks:(id)landmarks
{
  landmarksCopy = landmarks;
  [landmarksCopy alignedBoundingBoxAsCGRect];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectEqualToRect(v16, *MEMORY[0x1E695F058]))
  {
    [landmarksCopy boundingBox];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)postprocessLandmarkResultsForLandmarks:(const void *)landmarks imageBuffer:(id)buffer outputFace:(id)face options:(id)options warningRecorder:(id)recorder error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  faceCopy = face;
  optionsCopy = options;
  recorderCopy = recorder;
  v43 = 0;
  if ([VNValidationUtilities getBOOLValue:&v43 forKey:@"VNFaceLandmarkDetectorProcessOption_BlinkDetection" inOptions:optionsCopy withDefaultValue:0 error:error])
  {
    v42 = 0;
    if ([VNValidationUtilities getBOOLValue:&v42 forKey:@"VNFaceLandmarkDetectorProcessOption_CalculateLandmarkScore" inOptions:optionsCopy withDefaultValue:0 error:error])
    {
      if ((v43 & 1) == 0 && v42 != 1)
      {
        LOBYTE(v34) = 1;
        goto LABEL_15;
      }

      self->_requireFaceAttributesPupilRefiner = 1;
      if ([(VNFaceLandmarkDetector *)self loadRefinersAndReturnError:error])
      {
        v41 = -1;
        if ([faceCopy getFaceEXIFOrientation:&v41 error:error])
        {
          v44 = @"VNImageBufferOption_FeatureOrientationRelativeToUpRight";
          v18 = [MEMORY[0x1E696AD98] numberWithInt:v41];
          v45[0] = v18;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];

          networkRequiredInputImageWidth = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageWidth];
          networkRequiredInputImageHeight = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageHeight];
          [(VNFaceLandmarkDetector *)self normalizedFaceBBoxForLandmarks:faceCopy];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          width = [bufferCopy width];
          height = [bufferCopy height];
          v31 = [bufferCopy croppedBufferWithWidth:networkRequiredInputImageWidth height:networkRequiredInputImageHeight format:1278226488 cropRect:v36 options:error error:{v22 * width, v24 * height, v26 * width, v28 * height}];
          v32 = v31;
          if (!v31)
          {
            LOBYTE(v34) = 0;
LABEL_20:

            goto LABEL_15;
          }

          CVPixelBufferLockBaseAddress(v31, 1uLL);
          v40[0] = CVPixelBufferGetBaseAddress(v32);
          v40[1] = CVPixelBufferGetHeight(v32);
          v40[2] = CVPixelBufferGetWidth(v32);
          v40[3] = CVPixelBufferGetBytesPerRow(v32);
          v37 = 0;
          v38 = networkRequiredInputImageHeight;
          v39 = networkRequiredInputImageWidth;
          if (v42 == 1)
          {
            v33 = [(VNFaceLandmarkDetector *)self computeLandmarksScoreOnImage:v40 withFaceBoundingBox:&v37 andLandmarks:landmarks error:error];
            v34 = v33;
            if (!v33)
            {
LABEL_19:
              CVPixelBufferUnlockBaseAddress(v32, 1uLL);
              CVPixelBufferRelease(v32);
              goto LABEL_20;
            }

            [v33 floatValue];
            [faceCopy setLandmarkScore:?];
          }

          LOBYTE(v34) = v43 != 1 || [(VNFaceLandmarkDetector *)self detectBlinkOnFaceImage:v40 faceObservation:faceCopy lumaRec2DInImageCoordinates:&v37 landmarks:landmarks warningRecorder:recorderCopy error:error];
          goto LABEL_19;
        }
      }
    }
  }

  LOBYTE(v34) = 0;
LABEL_15:

  return v34;
}

- (id)computeLandmarksScoreOnImage:(const vImage_Buffer *)image withFaceBoundingBox:(const _Geometry2D_rect2D_ *)box andLandmarks:(const void *)landmarks error:(id *)error
{
  if (!image || !box || !landmarks)
  {
    if (error)
    {
      landmarks = [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid parameters passed to landmark score computation", box, landmarks];
      v28 = landmarks;
      v29 = 0;
      *error = landmarks;
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_30;
  }

  ptr = self->_faceAttributesPupilRefiner.__ptr_;
  v11 = (*(landmarks + 1) - *landmarks) >> 3;
  LODWORD(__p[0]) = 0;
  std::vector<float>::vector[abi:ne200100](&v47, (((v11 - 1) * v11) >> 1) + 1);
  v12 = (*(landmarks + 1) - *landmarks) >> 3;
  v49 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, v12);
  v13 = *landmarks;
  if (*landmarks == *(landmarks + 1))
  {
    v26 = *landmarks;
  }

  else
  {
    v14 = 0;
    do
    {
      height = image->height;
      v16 = *v13;
      v17 = v13[1];
      v13 += 2;
      v18 = llroundf(v16 + box->origin.x);
      v19 = llroundf(height - (v17 + box->origin.y));
      v20 = v18 & ~(v18 >> 31);
      width = image->width;
      v22 = v20 < width;
      v23 = width - 1;
      if (!v22)
      {
        v20 = v23;
      }

      v24 = v19 & ~(v19 >> 31);
      if (v24 >= height)
      {
        v25 = height - 1;
      }

      else
      {
        v25 = v24;
      }

      *(__p[0] + v14++) = *(image->data + image->rowBytes * v25 + v20);
    }

    while (v13 != *(landmarks + 1));
    v26 = *landmarks;
  }

  v30 = v13 - v26;
  v31 = (v13 - v26) >> 3;
  v32 = v47;
  v33 = __p[0];
  if (v31 >= 2)
  {
    v34 = 0;
    LODWORD(v35) = 0;
    v36 = (v31 - 1);
    v37 = ((v30 >> 3) & 0x7FFFFFFF) - 1;
    v38 = 1;
    do
    {
      v35 = v35;
      v39 = v33;
      v40 = v37;
      do
      {
        v32[v35++] = (v33[v34] - v39[v38]);
        ++v39;
        --v40;
      }

      while (v40);
      ++v34;
      ++v38;
      --v37;
    }

    while (v34 != v36);
    v32[v35] = 1.0;
    goto LABEL_23;
  }

  *v47 = 1065353216;
  if (v33)
  {
LABEL_23:
    __p[1] = v33;
    operator delete(v33);
  }

  v41 = v48 - v47;
  if ((v48 - v47) >> 2 != *(ptr + 3) / 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 2940;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v42 = *(ptr + 4);
  MEMORY[0x1AC5587F0](v42 + v41, 1, v47, 1, v47, 1);
  vDSP_vdiv((v42 + 2 * v41), 1, v47, 1, v47, 1, (v48 - v47) >> 2);
  LODWORD(__p[0]) = 0;
  vDSP_dotpr(v47, 1, v42, 1, __p, (v48 - v47) >> 2);
  v44 = __p[0];
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  LODWORD(v43) = v44;
  v29 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
LABEL_30:

  return v29;
}

- (void)calculatePupilLocationAndUpdateLandmarkPoints:(void *)points
{
  [VNFaceLandmarkDetector computeCentroidUsingPoints:*points indicies:&unk_1A6050F90 numberOfIndicies:8];
  v8 = __PAIR64__(v5, v4);
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](points, &v8);
  [VNFaceLandmarkDetector computeCentroidUsingPoints:*points indicies:&unk_1A6051110 numberOfIndicies:8];
  v8 = __PAIR64__(v7, v6);
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](points, &v8);
}

- (void)dealloc
{
  if (self->_modelFilesWereMemmapped)
  {
    v3 = VNBinModelFilePathFromModelNameAndThrow(@"landmarkRefinerAndPupil_v2");
    v4 = +[VNModelFilesCache sharedInstance];
    [v4 unload:v3];
  }

  v5.receiver = self;
  v5.super_class = VNFaceLandmarkDetector;
  [(VNDetector *)&v5 dealloc];
}

- (BOOL)loadRefinersAndReturnError:(id *)error
{
  if (self->_faceAttributesPupilRefiner.__ptr_)
  {
    return 1;
  }

  if (!self->_requireFaceAttributesPupilRefiner)
  {
    configurationOptions = [(VNDetector *)self configurationOptions];
    v7 = [VNValidationUtilities originatingRequestSpecifierInOptions:configurationOptions specifyingRequestClass:objc_opt_class() error:error];
    v8 = v7;
    v3 = v7 != 0;
    if (!v7 || ([v7 requestRevision] - 1) >= 2)
    {

      return v3;
    }

    self->_requireFaceAttributesPupilRefiner = 1;
  }

  self->_modelFilesWereMemmapped = [(VNDetector *)self backingStore]< 2;
  v9 = VNBinModelFilePathFromModelNameAndThrow(@"landmarkRefinerAndPupil_v2");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__VNFaceLandmarkDetector_loadRefinersAndReturnError___block_invoke;
  v13[3] = &unk_1E77B6430;
  v13[4] = self;
  v14 = v9;
  v10 = v9;
  v11 = _Block_copy(v13);
  v3 = VNExecuteBlock(v11, error);

  return v3;
}

uint64_t __53__VNFaceLandmarkDetector_loadRefinersAndReturnError___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 105) != 1)
  {
    [*(a1 + 40) UTF8String];
    operator new();
  }

  v4 = +[VNModelFilesCache sharedInstance];
  v5 = [v4 load:*(a1 + 40)];
  if (v5)
  {
    memset(v9, 0, sizeof(v9));
    v10 = 1065353216;
    cvml::util::binserialized_table_of_contents::init(v9, [v5 baseAddress], objc_msgSend(v5, "length"));
    memset(v7, 0, sizeof(v7));
    v8 = 1065353216;
    cvml::util::binserialized_contents::init_model_values(v7, v9, 0, vision::mod::LandmarkAttributes::sModelFileInfo);
    operator new();
  }

  if (a2)
  {
    *a2 = [VNError errorWithCode:9 message:@"Could not read landmark refiner model data"];
  }

  return 0;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v9.receiver = self;
  v9.super_class = VNFaceLandmarkDetector;
  if (![(VNEspressoModelFileBasedDetector *)&v9 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  configurationOptions = [(VNDetector *)self configurationOptions];
  v7 = [VNValidationUtilities getBOOLValue:&self->_requireFaceAttributesPupilRefiner forKey:@"VNFaceLandmarkDetectorOption_LoadRefinersModel" inOptions:configurationOptions withDefaultValue:0 error:error]&& [(VNFaceLandmarkDetector *)self loadRefinersAndReturnError:error];

  return v7;
}

@end