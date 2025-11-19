@interface VNFaceLandmarkDetector
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (_Geometry2D_point2D_)computeCentroidUsingPoints:(const _Geometry2D_point2D_ *)a3 indicies:(const int *)a4 numberOfIndicies:(int)a5;
+ (const)allLandmarksPointsIndexesForConstellation:(unint64_t)a3;
+ (const)landmarksMeshPartsForConstellation:(unint64_t)a3;
+ (id)configurationOptionKeysForDetectorKey;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)detectBlinkOnFaceImage:(const vImage_Buffer *)a3 faceObservation:(id)a4 lumaRec2DInImageCoordinates:(_Geometry2D_rect2D_ *)a5 landmarks:(const void *)a6 warningRecorder:(id)a7 error:(id *)a8;
- (BOOL)loadRefinersAndReturnError:(id *)a3;
- (BOOL)postprocessLandmarkResultsForLandmarks:(const void *)a3 imageBuffer:(id)a4 outputFace:(id)a5 options:(id)a6 warningRecorder:(id)a7 error:(id *)a8;
- (CGRect)normalizedFaceBBoxForLandmarks:(id)a3;
- (id).cxx_construct;
- (id)computeLandmarksScoreOnImage:(const vImage_Buffer *)a3 withFaceBoundingBox:(const _Geometry2D_rect2D_ *)a4 andLandmarks:(const void *)a5 error:(id *)a6;
- (void)calculatePupilLocationAndUpdateLandmarkPoints:(void *)a3;
- (void)dealloc;
@end

@implementation VNFaceLandmarkDetector

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 specifyingRequestClass:objc_opt_class() error:a4];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = [v6 requestRevision];
  if ((v8 - 1) < 2 || (v8 != 3 ? (v9 = v8 == 3737841664) : (v9 = 1), v9))
  {
    v10 = objc_opt_class();
    goto LABEL_12;
  }

  if (a4)
  {
    [VNError errorForUnsupportedRequestSpecifier:v7];
    *a4 = v10 = 0;
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
  block[4] = a1;
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

+ (_Geometry2D_point2D_)computeCentroidUsingPoints:(const _Geometry2D_point2D_ *)a3 indicies:(const int *)a4 numberOfIndicies:(int)a5
{
  if (a5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = a5;
    v7 = 0;
    do
    {
      v8 = *a4++;
      v5 = a3[v8];
      v7 = vadd_f32(v7, v5);
      --v6;
    }

    while (v6);
  }

  v5.f32[0] = a5;
  v9 = vdiv_f32(v7, vdup_lane_s32(v5, 0));
  v10 = v9.f32[1];
  result.x = v9.f32[0];
  result.y = v10;
  return result;
}

+ (const)allLandmarksPointsIndexesForConstellation:(unint64_t)a3
{
  if (a3 - 1 > 1)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown constellation type: %lu", a3];
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v10 userInfo:0];
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
    v7 = v6 >= a3;
    v8 = v6 < a3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == +[VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:]::allLandmarksPointsIndexesToConstellationMap + 8 || *(v5 + 32) > a3)
  {
LABEL_12:
    v5 = +[VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:]::allLandmarksPointsIndexesToConstellationMap + 8;
  }

  return (v5 + 40);
}

+ (const)landmarksMeshPartsForConstellation:(unint64_t)a3
{
  if (a3 - 1 > 1)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown constellation type: %lu", a3];
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v10 userInfo:0];
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
    v7 = v6 >= a3;
    v8 = v6 < a3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == +[VNFaceLandmarkDetector landmarksMeshPartsForConstellation:]::meshPartsToConstellationMap + 8 || *(v5 + 32) > a3)
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

- (BOOL)detectBlinkOnFaceImage:(const vImage_Buffer *)a3 faceObservation:(id)a4 lumaRec2DInImageCoordinates:(_Geometry2D_rect2D_ *)a5 landmarks:(const void *)a6 warningRecorder:(id)a7 error:(id *)a8
{
  v87[3] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a7;
  if (a3)
  {
    _ZF = v14 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v18 = _ZF || a5 == 0 || a6 == 0;
  v19 = !v18;
  if (v18)
  {
    if (a8)
    {
      *a8 = [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid parameters passed to blink score computation"];
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
    y = a5->origin.y;
    v22 = a5->origin.x + *(*a6 + 128);
    v23 = a5->origin.x + *(*a6 + 160);
    v24 = (a5->origin.x + *(*a6 + 96)) - (*(*a6 + 64) + a5->origin.x);
    data = a3->data;
    rowBytes = a3->rowBytes;
    v27 = vmovn_s64(*&a3->height);
    height = a3->height;
    v29.f32[0] = height - (*(*a6 + 68) + y);
    v30.f32[0] = height - (y + *(*a6 + 100));
    v31.f32[0] = height - (y + *(*a6 + 132));
    v32.f32[0] = height - (y + *(*a6 + 164));
    v29.f32[1] = *(*a6 + 64) + a5->origin.x;
    v30.f32[1] = a5->origin.x + *(*a6 + 96);
    v33 = vmul_f32(vadd_f32(v29, v30), 0x3F0000003F000000);
    v29.f32[0] = sqrtf(((v30.f32[0] - v29.f32[0]) * (v30.f32[0] - v29.f32[0])) + (v24 * v24)) * 0.5;
    *v34.i32 = sqrtf(((v32.f32[0] - v31.f32[0]) * (v32.f32[0] - v31.f32[0])) + ((v23 - v22) * (v23 - v22))) * 0.5;
    v35 = vdup_lane_s32(v29, 0);
    v36 = vcvt_f32_u32(vmax_s32(vcvt_s32_f32(vrndp_f32(vsub_f32(v33, v35))), 0x100000001));
    v37 = v36.f32[1];
    v38 = a3->data + rowBytes * v36.f32[0] + v36.f32[1];
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

      v54 = a5->origin.y;
      v55 = (v47 + (v82.width * v52)) - a5->origin.x;
      *&v86 = (v37 + (src.width * v49)) - a5->origin.x;
      *(&v86 + 1) = v55;
      v56 = a3->height;
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
    vision::mod::LandmarkAttributes::computePixelDistanceFeature(&src, a5, a6);
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
    [v14 setIsBlinking:{*(std::__tree<std::__value_type<vision::mod::_blinkType, float>, std::__map_value_compare<vision::mod::_blinkType, std::__value_type<vision::mod::_blinkType, float>, std::less<vision::mod::_blinkType>, true>, std::allocator<std::__value_type<vision::mod::_blinkType, float>>>::__emplace_unique_key_args<vision::mod::_blinkType, std::piecewise_construct_t const&, std::tuple<vision::mod::_blinkType&&>, std::tuple<>>(&v82, 1) + 8) > 0.1, &v86 + 4, v72}];
    LODWORD(v84[0]) = 1;
    src.data = v84;
    LODWORD(v69) = *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v82, 1) + 8);
    [v14 setBlinkScore:v69];
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

- (CGRect)normalizedFaceBBoxForLandmarks:(id)a3
{
  v3 = a3;
  [v3 alignedBoundingBoxAsCGRect];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectEqualToRect(v16, *MEMORY[0x1E695F058]))
  {
    [v3 boundingBox];
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

- (BOOL)postprocessLandmarkResultsForLandmarks:(const void *)a3 imageBuffer:(id)a4 outputFace:(id)a5 options:(id)a6 warningRecorder:(id)a7 error:(id *)a8
{
  v45[1] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v43 = 0;
  if ([VNValidationUtilities getBOOLValue:&v43 forKey:@"VNFaceLandmarkDetectorProcessOption_BlinkDetection" inOptions:v16 withDefaultValue:0 error:a8])
  {
    v42 = 0;
    if ([VNValidationUtilities getBOOLValue:&v42 forKey:@"VNFaceLandmarkDetectorProcessOption_CalculateLandmarkScore" inOptions:v16 withDefaultValue:0 error:a8])
    {
      if ((v43 & 1) == 0 && v42 != 1)
      {
        LOBYTE(v34) = 1;
        goto LABEL_15;
      }

      self->_requireFaceAttributesPupilRefiner = 1;
      if ([(VNFaceLandmarkDetector *)self loadRefinersAndReturnError:a8])
      {
        v41 = -1;
        if ([v15 getFaceEXIFOrientation:&v41 error:a8])
        {
          v44 = @"VNImageBufferOption_FeatureOrientationRelativeToUpRight";
          v18 = [MEMORY[0x1E696AD98] numberWithInt:v41];
          v45[0] = v18;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];

          v19 = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageWidth];
          v20 = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageHeight];
          [(VNFaceLandmarkDetector *)self normalizedFaceBBoxForLandmarks:v15];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v29 = [v14 width];
          v30 = [v14 height];
          v31 = [v14 croppedBufferWithWidth:v19 height:v20 format:1278226488 cropRect:v36 options:a8 error:{v22 * v29, v24 * v30, v26 * v29, v28 * v30}];
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
          v38 = v20;
          v39 = v19;
          if (v42 == 1)
          {
            v33 = [(VNFaceLandmarkDetector *)self computeLandmarksScoreOnImage:v40 withFaceBoundingBox:&v37 andLandmarks:a3 error:a8];
            v34 = v33;
            if (!v33)
            {
LABEL_19:
              CVPixelBufferUnlockBaseAddress(v32, 1uLL);
              CVPixelBufferRelease(v32);
              goto LABEL_20;
            }

            [v33 floatValue];
            [v15 setLandmarkScore:?];
          }

          LOBYTE(v34) = v43 != 1 || [(VNFaceLandmarkDetector *)self detectBlinkOnFaceImage:v40 faceObservation:v15 lumaRec2DInImageCoordinates:&v37 landmarks:a3 warningRecorder:v17 error:a8];
          goto LABEL_19;
        }
      }
    }
  }

  LOBYTE(v34) = 0;
LABEL_15:

  return v34;
}

- (id)computeLandmarksScoreOnImage:(const vImage_Buffer *)a3 withFaceBoundingBox:(const _Geometry2D_rect2D_ *)a4 andLandmarks:(const void *)a5 error:(id *)a6
{
  if (!a3 || !a4 || !a5)
  {
    if (a6)
    {
      v27 = [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid parameters passed to landmark score computation", a4, a5];
      v28 = v27;
      v29 = 0;
      *a6 = v27;
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_30;
  }

  ptr = self->_faceAttributesPupilRefiner.__ptr_;
  v11 = (*(a5 + 1) - *a5) >> 3;
  LODWORD(__p[0]) = 0;
  std::vector<float>::vector[abi:ne200100](&v47, (((v11 - 1) * v11) >> 1) + 1);
  v12 = (*(a5 + 1) - *a5) >> 3;
  v49 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, v12);
  v13 = *a5;
  if (*a5 == *(a5 + 1))
  {
    v26 = *a5;
  }

  else
  {
    v14 = 0;
    do
    {
      height = a3->height;
      v16 = *v13;
      v17 = v13[1];
      v13 += 2;
      v18 = llroundf(v16 + a4->origin.x);
      v19 = llroundf(height - (v17 + a4->origin.y));
      v20 = v18 & ~(v18 >> 31);
      width = a3->width;
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

      *(__p[0] + v14++) = *(a3->data + a3->rowBytes * v25 + v20);
    }

    while (v13 != *(a5 + 1));
    v26 = *a5;
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

- (void)calculatePupilLocationAndUpdateLandmarkPoints:(void *)a3
{
  [VNFaceLandmarkDetector computeCentroidUsingPoints:*a3 indicies:&unk_1A6050F90 numberOfIndicies:8];
  v8 = __PAIR64__(v5, v4);
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](a3, &v8);
  [VNFaceLandmarkDetector computeCentroidUsingPoints:*a3 indicies:&unk_1A6051110 numberOfIndicies:8];
  v8 = __PAIR64__(v7, v6);
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](a3, &v8);
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

- (BOOL)loadRefinersAndReturnError:(id *)a3
{
  if (self->_faceAttributesPupilRefiner.__ptr_)
  {
    return 1;
  }

  if (!self->_requireFaceAttributesPupilRefiner)
  {
    v6 = [(VNDetector *)self configurationOptions];
    v7 = [VNValidationUtilities originatingRequestSpecifierInOptions:v6 specifyingRequestClass:objc_opt_class() error:a3];
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
  v3 = VNExecuteBlock(v11, a3);

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

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v9.receiver = self;
  v9.super_class = VNFaceLandmarkDetector;
  if (![(VNEspressoModelFileBasedDetector *)&v9 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  v6 = [(VNDetector *)self configurationOptions];
  v7 = [VNValidationUtilities getBOOLValue:&self->_requireFaceAttributesPupilRefiner forKey:@"VNFaceLandmarkDetectorOption_LoadRefinersModel" inOptions:v6 withDefaultValue:0 error:a4]&& [(VNFaceLandmarkDetector *)self loadRefinersAndReturnError:a4];

  return v7;
}

@end