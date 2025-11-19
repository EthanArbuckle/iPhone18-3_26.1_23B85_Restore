@interface FaceCoreDetector
+ (CGPoint)_makeYFlippedPointFromCoord:(coord *)a3 image:(id)a4;
+ (CGRect)_makeYFlippedRectFromRect:(CGRect)a3 image:(id)a4;
+ (Face)_createFaceFromFCRFace:(SEL)a3 image:(id)a4;
+ (float)_interpretAsFloat:(id)a3 withDefault:(float)a4;
+ (id)_convertRectsToString:(id)a3;
+ (id)_createFCRFaceFromFace:(void *)a3 image:(id)a4;
+ (id)_parseNumericOrBoolValue:(id)a3;
+ (id)_parseOption:(id)a3 value:(id)a4;
+ (id)_parseRegionOfInterestParam:(id)a3;
+ (id)_transformROIs:(id)a3 image:(id)a4 usingBlock:(id)a5;
+ (id)faceDetector;
+ (id)faceDetectorWithOptions:(id)a3;
+ (id)fastFaceDetector;
+ (id)keypointTrackingDetector;
+ (id)preciseFaceDetector;
+ (id)standardTrackingDetector;
+ (image)_createImage:(id)a3;
+ (int)findProfileInParameters:(id)a3;
+ (void)_addLandmarkOfType:(id)a3 fromMesh:(void *)a4 indexes:(id)a5 to:(id)a6 image:(id)a7;
+ (void)_updateFCRFace:(id)a3 fromFace:(void *)a4 image:(id)a5;
- (FaceCoreDetector)initWithOptions:(id)a3;
- (FaceCoreDetector)initWithProfile:(int)a3 parameters:(id)a4;
- (id)detectFacesInImage:(id)a3 options:(id)a4 error:(id *)a5;
- (id)extractDetailsForFaces:(id)a3 inImage:(id)a4 options:(id)a5 error:(id *)a6;
- (id)version;
- (void)_createFaceCoreLightApiWithProfile:(int)a3 parameters:(id)a4;
- (void)_setParam:(id)a3 toValue:(id)a4 withDefaultValue:(id)a5;
- (void)_updateDetectionParamsValues:(id)a3;
- (void)_updateExtractionParamsValues:(id)a3;
@end

@implementation FaceCoreDetector

+ (id)faceDetectorWithOptions:(id)a3
{
  v3 = a3;
  v4 = [[FaceCoreDetector alloc] initWithProfile:[FaceCoreDetector parameters:"findProfileInParameters:" findProfileInParameters:v3], v3];

  return v4;
}

+ (int)findProfileInParameters:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"FCRTrackingType"];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (([v4 isEqualToString:@"FCRTrackingTypeStandard"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"FCRTrackingTypeKeypoints"])
    {
      v6 = 4;
      goto LABEL_12;
    }

LABEL_6:
    v7 = [v3 objectForKey:@"FCRDetectorType"];
    v8 = v7;
    if (v7)
    {
      if ([v7 isEqualToString:@"FCRDetectorTypeFaceDetection"])
      {
        v6 = 2;
LABEL_11:

        goto LABEL_12;
      }

      if (([v8 isEqualToString:@"FCRDetectorTypeFastFaceDetection"] & 1) == 0)
      {
        if ([v8 isEqualToString:@"FCRDetectorTypePreciseFaceDetection"])
        {
          v6 = 0;
          goto LABEL_11;
        }

        if ([v8 isEqualToString:@"FCRDetectorTypePBM"])
        {
          v6 = 1;
          goto LABEL_11;
        }
      }
    }

    v6 = 3;
    goto LABEL_11;
  }

  v6 = 5;
LABEL_12:

  return v6;
}

+ (id)faceDetector
{
  v2 = FCRFaceDetectionParameters();
  v3 = [FaceCoreDetector faceDetectorWithOptions:v2];

  return v3;
}

+ (id)fastFaceDetector
{
  v2 = FCRFastFaceDetectionParameters();
  v3 = [FaceCoreDetector faceDetectorWithOptions:v2];

  return v3;
}

+ (id)preciseFaceDetector
{
  v2 = FCRPreciseDetectionParameters();
  v3 = [FaceCoreDetector faceDetectorWithOptions:v2];

  return v3;
}

+ (id)standardTrackingDetector
{
  v2 = FCRStandardTrackingParameters();
  v3 = [FaceCoreDetector faceDetectorWithOptions:v2];

  return v3;
}

+ (id)keypointTrackingDetector
{
  v2 = FCRKeypointTrackingParameters();
  v3 = [FaceCoreDetector faceDetectorWithOptions:v2];

  return v3;
}

- (FaceCoreDetector)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(FaceCoreDetector *)self initWithProfile:[FaceCoreDetector parameters:"findProfileInParameters:" findProfileInParameters:v4], v4];

  return v5;
}

- (FaceCoreDetector)initWithProfile:(int)a3 parameters:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v11.receiver = self;
  v11.super_class = FaceCoreDetector;
  v7 = [(FaceCoreDetector *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(FaceCoreDetector *)v7 _createFaceCoreLightApiWithProfile:v4 parameters:v6];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)version
{
  v2 = MEMORY[0x277CCACA8];
  apple::vision::libraries::facecore::FaceCoreAPI::version(self->_api.__ptr_, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v4 = [v2 stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

- (void)_updateDetectionParamsValues:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v12 = v4;
  v5 = [v4 objectForKey:@"initial_angle"];
  [(FaceCoreDetector *)self _setParam:@"initial_angle" toValue:v5 withDefaultValue:&unk_284DF5458];

  v6 = [v12 objectForKey:@"eye_and_mouth"];
  [(FaceCoreDetector *)self _setParam:@"eye_and_mouth" toValue:v6 withDefaultValue:MEMORY[0x277CBEC28]];

  v7 = [v12 objectForKey:@"FCRDetectionRegion"];
  v8 = [FaceCoreDetector _parseRegionOfInterestParam:v7];

  if ([v8 count])
  {
    if ([v8 count] >= 0x65)
    {
      NSLog(&cfstr_ErrorLegacyfac.isa);
    }

    v9 = [FaceCoreDetector _convertRectsToString:v8];
    [(FaceCoreDetector *)self _setParam:@"FCRDetectionRegion" toValue:v9 withDefaultValue:0];
  }

  v10 = [v12 objectForKey:@"FCRTrackingModeKeypoints"];
  [(FaceCoreDetector *)self _setParam:@"FCRTrackingModeKeypoints" toValue:v10 withDefaultValue:MEMORY[0x277CBEC28]];

  v11 = [v12 objectForKey:@"kalman_filter"];
  [(FaceCoreDetector *)self _setParam:@"kalman_filter" toValue:v11 withDefaultValue:&unk_284DF5A40];
}

+ (id)_transformROIs:(id)a3 image:(id)a4 usingBlock:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    v13 = MEMORY[0x277CBF3A0];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = v13[1];
        v22 = *v13;
        v23 = v16;
        [v15 getValue:&v22];
        v20 = 0u;
        v21 = 0u;
        v31.origin.x = v9[2](v9, v8, *&v22, *(&v22 + 1), *&v23, *(&v23 + 1));
        *&v20 = v31.origin.x;
        *(&v20 + 1) = *&v31.origin.y;
        *&v21 = v31.size.width;
        *(&v21 + 1) = *&v31.size.height;
        if (CGRectIsEmpty(v31))
        {
          [MEMORY[0x277CCAE60] valueWithBytes:v13 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        }

        else
        {
          [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        }
        v17 = ;
        [v10 addObject:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  return v10;
}

+ (id)_parseRegionOfInterestParam:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObject:v3];
LABEL_7:
    v5 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_7;
  }

  NSLog(&cfstr_ErrorLegacyfac_0.isa);
  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_updateExtractionParamsValues:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v13 = v4;
  v5 = [v4 objectForKey:@"initial_angle"];
  [(FaceCoreDetector *)self _setParam:@"initial_angle" toValue:v5 withDefaultValue:&unk_284DF5458];

  v6 = [v13 objectForKey:@"FCRExtractFaceprint"];
  [(FaceCoreDetector *)self _setParam:@"FCRExtractFaceprint" toValue:v6 withDefaultValue:MEMORY[0x277CBEC28]];

  v7 = [v13 objectForKey:@"FCRExtractLandmarkPoints"];
  [(FaceCoreDetector *)self _setParam:@"FCRExtractLandmarkPoints" toValue:v7 withDefaultValue:MEMORY[0x277CBEC28]];

  v8 = [v13 objectForKey:@"FCRDetectBlink"];
  [(FaceCoreDetector *)self _setParam:@"FCRDetectBlink" toValue:v8 withDefaultValue:MEMORY[0x277CBEC28]];

  v9 = [v13 objectForKey:@"FCRDetectSmile"];
  [(FaceCoreDetector *)self _setParam:@"FCRDetectSmile" toValue:v9 withDefaultValue:MEMORY[0x277CBEC28]];

  v10 = [v13 objectForKey:@"eye_and_mouth"];
  [(FaceCoreDetector *)self _setParam:@"eye_and_mouth" toValue:v10 withDefaultValue:MEMORY[0x277CBEC28]];

  v11 = [v13 objectForKey:@"FCRExtractNaturalSmileFeatures"];
  [(FaceCoreDetector *)self _setParam:@"FCRExtractNaturalSmileFeatures" toValue:v11 withDefaultValue:MEMORY[0x277CBEC28]];

  v12 = [v13 objectForKey:@"kalman_filter"];
  [(FaceCoreDetector *)self _setParam:@"kalman_filter" toValue:v12 withDefaultValue:&unk_284DF5A40];
}

- (id)detectFacesInImage:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v18.var0 = [FaceCoreDetector _createImage:v7];
  *&v18.var1 = v9;
  [(FaceCoreDetector *)self _updateDetectionParamsValues:v8];
  apple::vision::libraries::facecore::FaceCoreAPI::detectFaces(self->_api.__ptr_, &v18, &v16);
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = [v10 initWithCapacity:0x8E38E38E38E38E39 * ((v17 - v16) >> 4)];
  v12 = v16;
  v13 = v17;
  while (v12 != v13)
  {
    v14 = [FaceCoreDetector _createFCRFaceFromFace:v12 image:v7];
    [v11 addObject:v14];

    v12 += 144;
  }

  v19 = &v16;
  std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](&v19);

  return v11;
}

- (id)extractDetailsForFaces:(id)a3 inImage:(id)a4 options:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.var0 = [FaceCoreDetector _createImage:v10];
  *&v24.var1 = v12;
  [(FaceCoreDetector *)self _updateExtractionParamsValues:v11];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        [FaceCoreDetector _createFaceFromFCRFace:v17 image:v10];
        apple::vision::libraries::facecore::FaceCoreAPI::extractFaceDetails(self->_api.__ptr_, &v24, v19);
        [FaceCoreDetector _updateFCRFace:v17 fromFace:v19 image:v10];
        apple::vision::libraries::facecore::Face::~Face(v19);
      }

      v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }

  return v13;
}

+ (image)_createImage:(id)a3
{
  v3 = a3;
  v4 = [v3 width];
  v5 = [v3 height];
  v6 = [v3 alignedImageData];

  v7 = v6;
  v8 = v4 | (v5 << 32);
  result.var1 = v8;
  result.var2 = HIDWORD(v8);
  result.var0 = v7;
  return result;
}

+ (Face)_createFaceFromFCRFace:(SEL)a3 image:(id)a4
{
  v7 = a4;
  v8 = a5;
  *&retstr->var14 = 0;
  retstr->var17 = 0.0;
  retstr->var18 = 0;
  retstr->var19 = 0.0;
  retstr->var20 = 0;
  *&retstr->var0 = 0u;
  *&retstr->var2.var1 = 0u;
  *&retstr->var4.var1 = 0u;
  *&retstr->var8.var0 = 0u;
  *(&retstr->var8.var1 + 4) = 0u;
  retstr->var10.var1 = 0;
  retstr->var10.var2 = 0;
  retstr->var10.var0 = 0;
  *(&retstr->var10.var2 + 6) = 0;
  retstr->var16 = 0;
  [v7 faceSize];
  retstr->var0 = v9;
  [v7 faceAngle];
  retstr->var11 = v10;
  if (v7)
  {
    [v7 face];
    v12 = *(&v47 + 1);
    v11 = *&v47;
  }

  else
  {
    v51 = 0u;
    v55 = 0u;
    v47 = 0u;
    v12 = 0.0;
    v11 = 0.0;
  }

  retstr->var4 = [FaceCoreDetector _makeYFlippedCoordFromPoint:v8 image:v11, v12, v47, v51, v55];
  retstr->var7 = [v7 trackDuration];
  retstr->var6 = [v7 trackID];
  if (v7)
  {
    [v7 leftEye];
    v14 = *(&v48 + 1);
    v13 = *&v48;
  }

  else
  {
    v52 = 0u;
    v56 = 0u;
    v48 = 0u;
    v14 = 0.0;
    v13 = 0.0;
  }

  retstr->var1 = [FaceCoreDetector _makeYFlippedCoordFromPoint:v8 image:v13, v14, v48, v52, v56];
  if (v7)
  {
    [v7 rightEye];
    v16 = *(&v49 + 1);
    v15 = *&v49;
  }

  else
  {
    v53 = 0u;
    v57 = 0u;
    v49 = 0u;
    v16 = 0.0;
    v15 = 0.0;
  }

  retstr->var2 = [FaceCoreDetector _makeYFlippedCoordFromPoint:v8 image:v15, v16, v49, v53, v57];
  if (v7)
  {
    [v7 mouth];
    v18 = *(&v50 + 1);
    v17 = *&v50;
  }

  else
  {
    v54 = 0u;
    v58 = 0u;
    v50 = 0u;
    v18 = 0.0;
    v17 = 0.0;
  }

  retstr->var3 = [FaceCoreDetector _makeYFlippedCoordFromPoint:v8 image:v17, v18, v50, v54, v58];
  v19 = [v7 expressionFeatures];
  v20 = [v19 valueForKey:@"FCRFaceExpressionLeftEyeClosed"];
  retstr->var12 = v20 != 0;

  v21 = [v7 expressionFeatures];
  v22 = [v21 valueForKey:@"FCRFaceExpressionLeftEyeClosedScore"];
  [FaceCoreDetector _interpretAsFloat:v22 withDefault:0.0];
  retstr->var14 = v23;

  v24 = [v7 expressionFeatures];
  v25 = [v24 valueForKey:@"FCRFaceExpressionRightEyeClosed"];
  retstr->var13 = v25 != 0;

  v26 = [v7 expressionFeatures];
  v27 = [v26 valueForKey:@"FCRFaceExpressionRightEyeClosedScore"];
  [FaceCoreDetector _interpretAsFloat:v27 withDefault:0.0];
  retstr->var15 = v28;

  v29 = [v7 expressionFeatures];
  v30 = [v29 valueForKey:@"FCRFaceExpressionSmile"];
  retstr->var16 = v30 != 0;

  v31 = [v7 expressionFeatures];
  v32 = [v31 valueForKey:@"FCRFaceExpressionSmileScore"];
  [FaceCoreDetector _interpretAsFloat:v32 withDefault:0.0];
  retstr->var17 = v33;

  v34 = [v7 expressionFeatures];
  v35 = [v34 valueForKey:@"FCRFaceBlurred"];
  retstr->var18 = v35 != 0;

  v36 = [v7 expressionFeatures];
  v37 = [v36 valueForKey:@"FCRFaceBlurScore"];
  [FaceCoreDetector _interpretAsFloat:v37 withDefault:0.0];
  retstr->var19 = v38;

  v39 = [v7 faceprint];
  if (v39)
  {
    v40 = [v7 faceprint];
    v41 = [v40 length];

    if (v41)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPoint>::resize(&retstr->var8.var0, 0x254uLL);
      var0 = retstr->var8.var0;
      v43 = [v7 faceprint];
      memcpy(var0, [v43 bytes], 0x12A0uLL);
    }
  }

  v44 = [v7 faceType];
  v45 = v44 == 2;
  if (v44 == 1)
  {
    v45 = 2;
  }

  retstr->var9 = v45;

  return result;
}

+ (id)_createFCRFaceFromFace:(void *)a3 image:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(FaceCoreFace);
  [a1 _updateFCRFace:v7 fromFace:a3 image:v6];

  return v7;
}

+ (void)_updateFCRFace:(id)a3 fromFace:(void *)a4 image:(id)a5
{
  v56[11] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  [v8 setFaceSize:*a4];
  [v8 setFaceAngle:*(a4 + 26)];
  [a1 _makeYFlippedPointFromCoord:a4 + 28 image:v9];
  v11 = v10;
  v13 = v12;
  [a1 _makeYFlippedRectFromRect:v9 image:{(*(a4 + 7) - *a4), (*(a4 + 8) + *a4), (2 * *a4), (2 * *a4)}];
  v51 = v11;
  v52 = v13;
  *&v53 = v14;
  *(&v53 + 1) = v15;
  *&v54 = v16;
  *(&v54 + 1) = v17;
  [v8 setFace:&v51];
  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(a4 + 6) length:*(a4 + 7) - *(a4 + 6)];
  [v8 setFaceprint:v18];

  v19 = *(a4 + 18);
  if (v19 == 2)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2 * (v19 == 1);
  }

  [v8 setFaceType:v20];
  [v8 setTrackID:*(a4 + 10)];
  [v8 setTrackDuration:*(a4 + 11)];
  [a1 _makeYFlippedPointFromCoord:a4 + 4 image:v9];
  v54 = 0u;
  v53 = 0u;
  v51 = v21;
  v52 = v22;
  [v8 setLeftEye:&v51];
  [a1 _makeYFlippedPointFromCoord:a4 + 12 image:v9];
  v54 = 0u;
  v53 = 0u;
  v51 = v23;
  v52 = v24;
  [v8 setRightEye:&v51];
  [a1 _makeYFlippedPointFromCoord:a4 + 20 image:v9];
  v54 = 0u;
  v53 = 0u;
  v51 = v25;
  v52 = v26;
  [v8 setMouth:&v51];
  if (*(a4 + 10) != *(a4 + 11))
  {
    v55[0] = @"FCRFaceLandmarkEyebrowLeft";
    v55[1] = @"FCRFaceLandmarkEyebrowRight";
    v56[0] = &unk_284DF5A50;
    v56[1] = &unk_284DF5A68;
    v55[2] = @"FCRFaceLandmarkEyeLeft";
    v55[3] = @"FCRFaceLandmarkEyeRight";
    v56[2] = &unk_284DF5A80;
    v56[3] = &unk_284DF5A98;
    v55[4] = @"FCRFaceLandmarkLipUpper";
    v55[5] = @"FCRFaceLandmarkLipLower";
    v56[4] = &unk_284DF5AB0;
    v56[5] = &unk_284DF5AC8;
    v55[6] = @"FCRFaceLandmarkMouth";
    v55[7] = @"FCRFaceLandmarkContour";
    v56[6] = &unk_284DF5AE0;
    v56[7] = &unk_284DF5AF8;
    v55[8] = @"FCRFaceLandmarkNose";
    v55[9] = @"FCRFaceLandmarkNoseCenter";
    v56[8] = &unk_284DF5B10;
    v56[9] = &unk_284DF5B28;
    v55[10] = @"FCRFaceLandmarkNoseTip";
    v56[10] = &unk_284DF5B40;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:11];
    v51 = 0;
    v52 = &v51;
    *&v53 = 0x3032000000;
    *(&v53 + 1) = __Block_byref_object_copy__1;
    *&v54 = __Block_byref_object_dispose__1;
    *(&v54 + 1) = [MEMORY[0x277CBEB38] dictionary];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __50__FaceCoreDetector__updateFCRFace_fromFace_image___block_invoke;
    v46[3] = &unk_278B7A898;
    v49 = a1;
    v50 = a4;
    v48 = &v51;
    v47 = v9;
    [v27 enumerateKeysAndObjectsUsingBlock:v46];
    [v8 setFaceLandmarkPoints:v52[5]];

    _Block_object_dispose(&v51, 8);
  }

  v28 = [MEMORY[0x277CBEB38] dictionary];
  v30 = v28;
  if (*(a4 + 108) == 1)
  {
    [v28 setValue:MEMORY[0x277CBEC38] forKey:@"FCRFaceExpressionLeftEyeClosed"];
  }

  LODWORD(v29) = *(a4 + 28);
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  [v30 setValue:v31 forKey:@"FCRFaceExpressionLeftEyeClosedScore"];

  if (*(a4 + 109) == 1)
  {
    [v30 setValue:MEMORY[0x277CBEC38] forKey:@"FCRFaceExpressionRightEyeClosed"];
  }

  LODWORD(v32) = *(a4 + 29);
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  [v30 setValue:v33 forKey:@"FCRFaceExpressionRightEyeClosedScore"];

  if (*(a4 + 120) == 1)
  {
    [v30 setValue:MEMORY[0x277CBEC38] forKey:@"FCRFaceExpressionSmile"];
  }

  LODWORD(v34) = *(a4 + 31);
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  [v30 setValue:v35 forKey:@"FCRFaceExpressionSmileScore"];

  if (*(a4 + 128) == 1)
  {
    [v30 setValue:MEMORY[0x277CBEC38] forKey:@"FCRFaceBlurred"];
  }

  LODWORD(v36) = *(a4 + 33);
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  [v30 setValue:v37 forKey:@"FCRFaceBlurScore"];

  [v8 setExpressionFeatures:v30];
  if (*(a4 + 17))
  {
    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = [v8 additionalInfo];
    if (v39)
    {
      [v38 setValuesForKeysWithDictionary:v39];
    }

    v40 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:**(a4 + 17) length:*(*(a4 + 17) + 8)];
    [v38 setObject:v40 forKey:@"FCRSmileAndBlinkFeatures"];
    v41 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a4 + 17) + 16)];
    [v38 setObject:v41 forKey:@"FCRLeftEyeFeaturesOffset"];

    v42 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a4 + 17) + 20)];
    [v38 setObject:v42 forKey:@"FCRRightEyeFeaturesOffset"];

    v43 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a4 + 17) + 32)];
    [v38 setObject:v43 forKey:@"FCRSmileFeaturesOffset"];

    v44 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a4 + 17) + 24)];
    [v38 setObject:v44 forKey:@"FCRBlinkFeaturesSize"];

    v45 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a4 + 17) + 28)];
    [v38 setObject:v45 forKey:@"FCRSmileFeaturesSize"];

    [v8 setAdditionalInfo:v38];
  }
}

+ (void)_addLandmarkOfType:(id)a3 fromMesh:(void *)a4 indexes:(id)a5 to:(id)a6 image:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v26 = a6;
  v14 = a7;
  v25 = v13;
  std::vector<CGPoint>::vector[abi:ne200100](__p, [v13 count]);
  v15 = __p[0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v25;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v17)
  {
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v27 = *(*a4 + 8 * [*(*(&v28 + 1) + 8 * i) unsignedIntegerValue]);
        [a1 _makeYFlippedPointFromCoord:&v27 image:v14];
        v20 = v15 + 2;
        *v15 = v21;
        v15[1] = v22;
        v15 += 2;
      }

      v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v15 = v20;
    }

    while (v17);
  }

  v23 = [v16 count];
  v24 = [FaceCoreLandmark landmarkWithType:v12 pointCount:v23 points:__p[0]];
  [v26 setObject:v24 forKey:v12];

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)_createFaceCoreLightApiWithProfile:(int)a3 parameters:(id)a4
{
  a4;
  if (a3 >= 6)
  {
    NSLog(&cfstr_ErrorLegacyfac_1.isa);
  }

  operator new();
}

+ (CGPoint)_makeYFlippedPointFromCoord:(coord *)a3 image:(id)a4
{
  var0 = a3->var0;
  v6 = [a4 height];
  v7 = var0;
  v8 = (v6 + ~a3->var1);
  result.y = v8;
  result.x = v7;
  return result;
}

+ (CGRect)_makeYFlippedRectFromRect:(CGRect)a3 image:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    y = ([v8 height] - 1) - y;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_setParam:(id)a3 toValue:(id)a4 withDefaultValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  ptr = self->_api.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(v18, [v8 UTF8String]);
  v15 = [FaceCoreDetector _parseOption:v8 value:v13];
  std::string::basic_string[abi:ne200100]<0>(__p, [v15 UTF8String]);
  (**ptr)(ptr, v18, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

+ (float)_interpretAsFloat:(id)a3 withDefault:(float)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    a4 = v7;
  }

  return a4;
}

+ (id)_parseOption:(id)a3 value:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 _parseNumericOrBoolValue:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)_parseNumericOrBoolValue:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 isEqualToString:@"__NSCFBoolean"];

  if (v6)
  {
    v7 = [v3 BOOLValue];
    v8 = @"false";
    if (v7)
    {
      v8 = @"true";
    }

    v9 = v8;
  }

  else
  {
    v9 = [v3 stringValue];
  }

  v10 = v9;

  return v10;
}

+ (id)_convertRectsToString:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CCAB68] stringWithFormat:&stru_284DF4C60];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      v8 = MEMORY[0x277CBF3A0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = v8[1];
          v14 = *v8;
          v15 = v11;
          [v10 getValue:&v14];
          [v4 appendFormat:@"%d, %d, %d, %d, ", *&v14, *(&v14 + 1), *&v15, *(&v15 + 1)];
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v12 = [v4 substringWithRange:{0, objc_msgSend(v4, "length") - 1}];
  }

  else
  {
    v12 = @"0,0,0,0";
  }

  return v12;
}

@end