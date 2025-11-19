@interface VNFaceObservation
+ (BOOL)_exifOrientationFromFaceRollAngle:(float)a3 exifOrientation:(int *)a4 error:(id *)a5;
+ (VNFaceObservation)faceObservationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox roll:(NSNumber *)roll yaw:(NSNumber *)yaw;
+ (VNFaceObservation)faceObservationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox roll:(NSNumber *)roll yaw:(NSNumber *)yaw pitch:(NSNumber *)pitch;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 alignedBoundingBox:(CGRect)a5 roll:(id)a6 yaw:(id)a7;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 alignedBoundingBox:(CGRect)a5 roll:(id)a6 yaw:(id)a7 pitch:(id)a8;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 andAlignedBoundingBox:(CGRect)a5;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 faceprint:(id)a5;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 roll:(id)a5 yaw:(id)a6 pitch:(id)a7 isBoundingBoxAligned:(BOOL)a8 alignedBoundingBox:(CGRect)a9 landmarks:(id)a10 landmarks65:(id)a11 landmarkScore:(float)a12 isBlinking:(BOOL)a13 blinkScore:(float)a14;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 roll:(id)a5 yaw:(id)a6 pitch:(id)a7 isBoundingBoxAligned:(BOOL)a8 alignedBoundingBox:(CGRect)a9 landmarks:(id)a10 landmarks65:(id)a11 landmarkScore:(float)a12 isBlinking:(BOOL)a13 blinkScore:(float)a14 faceOrientationIndex:(float)a15 faceJunkinessIndex:(float)a16;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 unalignedBoundingBox:(CGRect)a4 alignedBoundingBox:(CGRect)a5;
+ (VNFaceObservation)observationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4;
+ (uint64_t)computeYawPitchRollFromPoseMatrix:(__n128)a3 outputYaw:(__n128)a4 outputPitch:(uint64_t)a5 outputRoll:(uint64_t)a6;
- (BOOL)getComputedRectifyingTransform:(CGAffineTransform *)a3;
- (BOOL)getFaceEXIFOrientation:(int *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRevision1DetectedRectanglesCompatible;
- (CGRect)alignedBoundingBoxAsCGRect;
- (CGRect)unalignedBoundingBox;
- (NSDictionary)expressionsAndConfidence;
- (VNFaceLandmarks2D)landmarks;
- (VNFaceLandmarks2D)landmarks65;
- (VNFaceLandmarks3D)landmarks3d;
- (VNFaceObservation)initWithCoder:(id)a3;
- (VNFaceObservation)initWithRequestRevision:(unint64_t)a3;
- (_Geometry2D_rect2D_)alignedBoundingBox;
- (double)pose;
- (double)poseQuaternion;
- (float)landmarkScore;
- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)a3 error:(id *)a4;
- (id)VNPersonsModelFaceprintWithRequestRevision:(unint64_t)a3 error:(id *)a4;
- (id)debugQuickLookObject;
- (id)description;
- (id)expressionsAndDetections;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)_addPointsOfNamedRegion:(id)a3 inLandmarks:(id)a4 toPath:(CGPath *)a5 applyingAffineTransform:(CGAffineTransform *)a6;
- (void)_initLocks;
- (void)encodeWithCoder:(id)a3;
- (void)setFaceCaptureQuality:(float)a3 originatingRequestSpecifier:(id)a4;
- (void)setFaceScreenGaze:(id)a3;
- (void)setGaze:(id)a3;
- (void)setLandmark3DPointsData:(id)a3 originatingRequestSpecifier:(id)a4;
- (void)setLandmarkPoints65Data:(id)a3 originatingRequestSpecifier:(id)a4;
- (void)setLandmarkPointsData:(id)a3 originatingRequestSpecifier:(id)a4;
- (void)setLegacyFaceCore:(id)a3;
- (void)setPoseData:(id)a3 originatingRequestSpecifier:(id)a4;
@end

@implementation VNFaceObservation

- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 requestClassAndReturnError:a4];
  if (v7)
  {
    if (v7 == objc_opt_class())
    {
      v9 = [(VNFaceObservation *)self faceprint];
      if (!v9)
      {
        v10 = [(VNFaceObservation *)self faceTorsoprint];
        v9 = [v10 faceprint];
      }

      v11 = _validatedEntityPrintOriginatingRequestSpecifierCompatibility(self, @"faceprint", v9, v6, a4);
    }

    else
    {
      if (v7 != objc_opt_class())
      {
        v13.receiver = self;
        v13.super_class = VNFaceObservation;
        v8 = [(VNObservation *)&v13 VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:v6 error:a4];
        goto LABEL_11;
      }

      v9 = [(VNFaceObservation *)self torsoprint];
      v11 = _validatedEntityPrintOriginatingRequestSpecifierCompatibility(self, @"torsoprint", v9, v6, a4);
    }

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (id)VNPersonsModelFaceprintWithRequestRevision:(unint64_t)a3 error:(id *)a4
{
  v7 = [(VNFaceObservation *)self faceprint];
  if (v7 || (-[VNFaceObservation faceTorsoprint](self, "faceTorsoprint"), v8 = objc_claimAutoreleasedReturnValue(), [v8 faceprint], v7 = objc_claimAutoreleasedReturnValue(), v8, v7))
  {
    if (!a3 || [v7 requestRevision] == a3)
    {
      v7 = v7;
      v9 = v7;
      goto LABEL_13;
    }

    if (a4)
    {
      v10 = [VNError errorWithCode:14 message:@"incompatible faceprint revision"];
LABEL_10:
      v9 = 0;
      *a4 = v10;
      goto LABEL_13;
    }
  }

  else
  {
    if (a4)
    {
      v10 = [VNError errorForInvalidOperationWithLocalizedDescription:@"faceprint is not available from the observation"];
      v7 = 0;
      goto LABEL_10;
    }

    v7 = 0;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (CGRect)unalignedBoundingBox
{
  x = self->_unalignedBoundingBox.origin.x;
  y = self->_unalignedBoundingBox.origin.y;
  width = self->_unalignedBoundingBox.size.width;
  height = self->_unalignedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_Geometry2D_rect2D_)alignedBoundingBox
{
  x = self->_alignedBoundingBox.origin.x;
  y = self->_alignedBoundingBox.origin.y;
  height = self->_alignedBoundingBox.size.height;
  width = self->_alignedBoundingBox.size.width;
  result.size.width = width;
  result.size.height = height;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isRevision1DetectedRectanglesCompatible
{
  v3 = [(VNFaceObservation *)self roll];
  [v3 doubleValue];
  v5 = v4;

  if (fabs(v5) > 0.541052068)
  {
    return 0;
  }

  v7 = [(VNFaceObservation *)self pitch];
  [v7 doubleValue];
  v9 = v8;

  return fabs(v9) <= 0.436332313;
}

- (BOOL)getFaceEXIFOrientation:(int *)a3 error:(id *)a4
{
  v6 = [(VNFaceObservation *)self roll];
  [v6 floatValue];
  *&v8 = (v7 * 180.0) / 3.1416;
  LOBYTE(a4) = [VNFaceObservation _exifOrientationFromFaceRollAngle:a3 exifOrientation:a4 error:v8];

  return a4;
}

- (void)setGaze:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  gaze = self->_gaze;
  self->_gaze = v4;
}

- (void)setFaceScreenGaze:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  faceScreenGaze = self->_faceScreenGaze;
  self->_faceScreenGaze = v4;
}

- (void)setLegacyFaceCore:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  legacyFaceCore = self->_legacyFaceCore;
  self->_legacyFaceCore = v4;
}

- (id)debugQuickLookObject
{
  v34 = *MEMORY[0x1E69E9840];
  [(VNDetectedObjectObservation *)self boundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  Mutable = CGPathCreateMutable();
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  *&v31.a = *MEMORY[0x1E695EFD0];
  *&v31.c = v12;
  *&v31.tx = *(MEMORY[0x1E695EFD0] + 32);
  if ([VNFaceObservation debugQuickLookObject]::onceToken != -1)
  {
    dispatch_once(&[VNFaceObservation debugQuickLookObject]::onceToken, &__block_literal_global_16132);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [VNFaceObservation debugQuickLookObject]::regionNames;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [(VNFaceObservation *)self landmarks];
        v26 = v31;
        [(VNFaceObservation *)self _addPointsOfNamedRegion:v17 inLandmarks:v18 toPath:Mutable applyingAffineTransform:&v26];
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v14);
  }

  v25.receiver = self;
  v25.super_class = VNFaceObservation;
  v19 = [(VNDetectedObjectObservation *)&v25 debugQuickLookObject];
  if (v19)
  {
    memset(&v26, 0, sizeof(v26));
    CGAffineTransformMakeTranslation(&v26, v4, v6);
    v24 = v26;
    CGAffineTransformScale(&v32, &v24, v8, v10);
    v26 = v32;
    v20 = MEMORY[0x1AC555C10](Mutable, &v26);
    *&v32.a = xmmword_1A6052460;
    *&v32.c = unk_1A6052470;
    v21 = VNDebugColorFromValues(&v32.a);
    v22 = VNDebugImageRenderNormalizedCGPathOnImage(v20, v19, v21);
    CGPathRelease(v20);
  }

  else
  {
    v22 = VNDebugPathFromNormalizedCGPath(Mutable, 512.0, 512.0);
  }

  CGPathRelease(Mutable);

  return v22;
}

void __41__VNFaceObservation_debugQuickLookObject__block_invoke()
{
  v0 = [VNFaceObservation debugQuickLookObject]::regionNames;
  [VNFaceObservation debugQuickLookObject]::regionNames = &unk_1F19C2068;
}

- (void)_addPointsOfNamedRegion:(id)a3 inLandmarks:(id)a4 toPath:(CGPath *)a5 applyingAffineTransform:(CGAffineTransform *)a6
{
  v13 = [a4 valueForKey:a3];
  if (v13)
  {
    v8 = [v13 pointCount];
    if (v8)
    {
      v9 = [v13 normalizedPoints];
      v10 = [v13 pointsClassification];
      v11 = v10;
      if ((v10 - 1) >= 2)
      {
        if (!v10)
        {
          p_y = &v9->y;
          do
          {
            CGPathMoveToPoint(a5, a6, *(p_y - 1), *p_y);
            CGPathAddLineToPoint(a5, a6, *(p_y - 1), *p_y);
            p_y += 2;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        CGPathMoveToPoint(a5, a6, v9->x, v9->y);
        CGPathAddLines(a5, a6, v9, v8);
        if (v11 == 2)
        {
          CGPathAddLineToPoint(a5, a6, v9->x, v9->y);
          CGPathCloseSubpath(a5);
        }
      }
    }
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13.receiver = self;
  v13.super_class = VNFaceObservation;
  v4 = [(VNDetectedObjectObservation *)&v13 description];
  [v3 appendString:v4];

  v5 = [(VNFaceObservation *)self faceId];
  if (v5)
  {
    [v3 appendFormat:@" ID=%lu", v5];
  }

  v6 = [(VNFaceObservation *)self landmarks];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 constellation];
    v9 = @"VNRequestFaceLandmarksConstellationNotDefined";
    if (v8 == 1)
    {
      v9 = @"VNRequestFaceLandmarksConstellation65Points";
    }

    if (v8 == 2)
    {
      v9 = @"VNRequestFaceLandmarksConstellation76Points";
    }

    v10 = v9;
    [v7 confidence];
    [v3 appendFormat:@" VNFaceLandmarks2D [%@, confidence=%f]", v10, v11];
  }

  return v3;
}

- (float)landmarkScore
{
  v3 = [(VNFaceObservation *)self landmarkPoints];

  if (v3)
  {
    return self->_landmarkScore;
  }

  else
  {
    return -3.4028e38;
  }
}

- (void)setLandmark3DPointsData:(id)a3 originatingRequestSpecifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 copy];
  landmarkPoints3d = self->_landmarkPoints3d;
  self->_landmarkPoints3d = v7;

  landmarks3DOriginatingRequestSpecifier = self->_landmarks3DOriginatingRequestSpecifier;
  self->_landmarks3DOriginatingRequestSpecifier = v6;
}

- (void)setLandmarkPoints65Data:(id)a3 originatingRequestSpecifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 copy];
  landmarkPoints65 = self->_landmarkPoints65;
  self->_landmarkPoints65 = v7;

  objc_storeStrong(&self->_landmarkPoints, self->_landmarkPoints65);
  landmarksOriginatingRequestSpecifier = self->_landmarksOriginatingRequestSpecifier;
  self->_landmarksOriginatingRequestSpecifier = v6;
}

- (void)setLandmarkPointsData:(id)a3 originatingRequestSpecifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 copy];
  landmarkPoints = self->_landmarkPoints;
  self->_landmarkPoints = v7;

  landmarksOriginatingRequestSpecifier = self->_landmarksOriginatingRequestSpecifier;
  self->_landmarksOriginatingRequestSpecifier = v6;
}

- (void)setFaceCaptureQuality:(float)a3 originatingRequestSpecifier:(id)a4
{
  v6 = a4;
  *&v7 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  faceCaptureQuality = self->_faceCaptureQuality;
  self->_faceCaptureQuality = v8;

  faceCaptureQualityOriginatingRequestSpecifier = self->_faceCaptureQualityOriginatingRequestSpecifier;
  self->_faceCaptureQualityOriginatingRequestSpecifier = v6;
}

- (id)expressionsAndDetections
{
  if (self->_expressionsAndScores)
  {
    v3 = [VNFaceExpressionDetector createExpressionDetectionDictionaryFromScores:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)alignedBoundingBoxAsCGRect
{
  x = self->_alignedBoundingBox.origin.x;
  y = self->_alignedBoundingBox.origin.y;
  width = self->_alignedBoundingBox.size.width;
  height = self->_alignedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)getComputedRectifyingTransform:(CGAffineTransform *)a3
{
  v83 = *MEMORY[0x1E69E9840];
  landmarkPoints65 = self->_landmarkPoints65;
  if (landmarkPoints65)
  {
    v5 = landmarkPoints65;
    v6 = v5;
    if (!a3)
    {
LABEL_42:

      return a3;
    }

    v7 = [(NSData *)v5 bytes];
    v36 = 0;
    v37 = 0;
    v38 = 0;
    Geometry2D_mallocCart2D(&v36, 63);
    v8 = v36;
    v9 = v37;
    v10 = v38;
    if (v36 && v37 && v38 >= 1)
    {
      v11 = 0;
      v12 = (v7 + 4);
      do
      {
        *&v8[v11] = *(v12 - 1);
        v13 = *v12;
        v12 += 2;
        *&v9[v11] = v13;
        v11 += 4;
      }

      while (v11 != 252);
    }

    else if (!v36)
    {
      goto LABEL_41;
    }

    if (!v9 || v10 != 63)
    {
      goto LABEL_41;
    }

    v45[0] = 0;
    v45[1] = 0;
    v46 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    Geometry2D_mallocCart2D(v45, 63);
    LOBYTE(v14) = 0;
    v15 = 0;
    if (!v45[0] || !v45[1] || v46 < 1)
    {
LABEL_39:
      free(v15);
      v42 = 0;
      free(v43);
      v43 = 0;
      LODWORD(v44) = 0;
      free(v39);
      v39 = 0;
      free(v40);
      v40 = 0;
      LODWORD(v41) = 0;
      free(v45[0]);
      v45[0] = 0;
      free(v45[1]);
      v8 = v36;
      if (v14)
      {
        free(v36);
        v36 = 0;
        free(v37);
        v37 = 0;
        LODWORD(v38) = 0;
        CGAffineTransformMakeTranslation(&v66, -v34, -v35);
        v31 = v66;
        CGAffineTransformScale(&v53, &v31, 1.0 / v33, 1.0 / v33);
        v66 = v53;
        v31 = v53;
        CGAffineTransformRotate(&v53, &v31, v32);
        v29 = *&v53.c;
        v28 = *&v53.tx;
        v66 = v53;
        *&a3->a = *&v53.a;
        *&a3->c = v29;
        *&a3->tx = v28;
        LOBYTE(a3) = 1;
        goto LABEL_42;
      }

LABEL_41:
      free(v8);
      v36 = 0;
      free(v37);
      LOBYTE(a3) = 0;
      goto LABEL_42;
    }

    v16 = 0;
    v76 = xmmword_1A603BCE0;
    v77 = unk_1A603BCF0;
    v78[0] = xmmword_1A603BD00;
    *(v78 + 12) = *(&xmmword_1A603BD00 + 12);
    v72 = xmmword_1A603BCA0;
    v73 = unk_1A603BCB0;
    v74 = xmmword_1A603BCC0;
    v75 = unk_1A603BCD0;
    v68 = xmmword_1A603BC60;
    v69 = unk_1A603BC70;
    v70 = xmmword_1A603BC80;
    v71 = unk_1A603BC90;
    v66 = *byte_1A603BC20;
    v67 = unk_1A603BC50;
    v63 = xmmword_1A603BDDC;
    v64 = unk_1A603BDEC;
    *v65 = xmmword_1A603BDFC;
    *&v65[12] = *(&xmmword_1A603BDFC + 12);
    v59 = xmmword_1A603BD9C;
    v60 = unk_1A603BDAC;
    v61 = xmmword_1A603BDBC;
    v62 = unk_1A603BDCC;
    v55 = xmmword_1A603BD5C;
    v56 = unk_1A603BD6C;
    v57 = xmmword_1A603BD7C;
    v58 = unk_1A603BD8C;
    v53 = *byte_1A603BD1C;
    v54 = unk_1A603BD4C;
    v49.realp = &v66;
    v49.imagp = &v53;
    v50 = 63;
    *&v31.a = &__C;
    *&v31.b = &v81;
    __A.realp = &v80;
    __A.imagp = &v79;
    *&v31.c = 2;
    v52 = 2;
    v17.i32[0] = 0;
    v18 = 0.0;
    v47 = 0;
    v48 = 0;
    do
    {
      v19 = *(&LandmarkDetector_faceMesh63Parts + v16 + 584);
      v18 = v18 + *(&v66.a + v19);
      v17.f32[0] = v17.f32[0] + *(&v53.a + v19);
      v16 += 4;
    }

    while (v16 != 32);
    v20 = 0;
    v21 = v18 * 0.125;
    v22 = 0.0;
    v23 = 0.0;
    do
    {
      v24 = *(&LandmarkDetector_faceMesh63Parts + v20 + 968);
      v23 = v23 + *(&v66.a + v24);
      v22 = v22 + *(&v53.a + v24);
      v20 += 4;
    }

    while (v20 != 32);
    v17.f32[1] = v22;
    *&__C.realp = v21;
    *(&__C.realp + 1) = v23 * 0.125;
    v80 = 0x3F2B851E3EA8F5C3;
    v81 = vmul_f32(v17, 0x3E0000003E000000);
    v79 = vdup_n_s32(0x3EA8F5C3u);
    v25 = Geometry2D_estimateRST(&v31, &__A, &v47);
    if ((v25 & 0x80) != 0)
    {
      if (!v45[0] || !v45[1] || v46 != 63)
      {
        goto LABEL_38;
      }

      if (fabsf(*&v47) > 0.00000011921 || fabsf(*(&v47 + 1) + -1.0) > 0.00000011921 || fabsf(*&v48) > 0.00000011921 || fabsf(*(&v48 + 1)) > 0.00000011921)
      {
        v26 = *(&v47 + 1);
        v27 = __sincosf_stret(*&v47);
        v81.f32[0] = v27.__cosval * v26;
        *&v80 = v27.__sinval * v26;
        *&v31.a = &v81;
        *&v31.b = &v80;
        __A = v49;
        __C = *v45;
        vDSP_zvzsml(&__A, 1, &v31, &__C, 1, 0x3FuLL);
        MEMORY[0x1AC558770](v45[0], 1, &v48, v45[0], 1, v46);
        MEMORY[0x1AC558770](v45[1], 1, &v48 + 4, v45[1], 1, v46);
LABEL_31:
        Geometry2D_cloneUsingIndicesCart2D(&v42, &v36);
        LOBYTE(v14) = 0;
        v15 = v42;
        if (v42)
        {
          if (v43)
          {
            if (v44 >= 1)
            {
              Geometry2D_cloneUsingIndicesCart2D(&v39, v45);
              LOBYTE(v14) = 0;
              if (v39)
              {
                if (v40 && v41 >= 1)
                {
                  v14 = (Geometry2D_estimateRST(&v39, &v42, &v32) >> 7) & 1;
                  v15 = v42;
                }
              }
            }
          }
        }

        goto LABEL_39;
      }

      v25 = Geometry2D_copyCart2D(&v49, v45);
    }

    if (v25 != 128)
    {
LABEL_38:
      v15 = 0;
      LOBYTE(v14) = 0;
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  LOBYTE(a3) = 0;
  return a3;
}

- (double)poseQuaternion
{
  if (a1[47])
  {
    [a1 pose];
    v5 = v4 + (*v1.i32 + *&v2.i32[1]);
    if (v5 >= 0.0)
    {
      v12 = sqrtf(v5 + 1.0);
      v13 = vrecpe_f32(COERCE_UNSIGNED_INT(v12 + v12));
      v14 = vmul_f32(v13, vrecps_f32(COERCE_UNSIGNED_INT(v12 + v12), v13));
      v24 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v2, v2, 8uLL), v3), vext_s8(v3, *&vextq_s8(v1, v1, 8uLL), 4uLL)), vmul_f32(v14, vrecps_f32(COERCE_UNSIGNED_INT(v12 + v12), v14)).f32[0]);
    }

    else if (*v1.i32 < *&v2.i32[1] || *v1.i32 < v4)
    {
      v7 = 1.0 - *v1.i32;
      if (*&v2.i32[1] >= v4)
      {
        v25 = sqrtf(*&v2.i32[1] + (v7 - v4));
        *&v26 = v25 + v25;
        v27 = vrecpe_f32(v26);
        v28 = vmul_f32(v27, vrecps_f32(v26, v27));
        v29.i32[0] = vmul_f32(v28, vrecps_f32(v26, v28)).u32[0];
        v28.f32[0] = *&v1.i32[1] + *v2.i32;
        v28.i32[1] = v26;
        v29.i32[1] = 0.25;
        v24 = vmul_f32(v28, v29);
      }

      else
      {
        v8 = sqrtf(v4 + (v7 - *&v2.i32[1]));
        v9 = vrecpe_f32(COERCE_UNSIGNED_INT(v8 + v8));
        v10 = vmul_f32(v9, vrecps_f32(COERCE_UNSIGNED_INT(v8 + v8), v9));
        v24 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v1, v1, 8uLL), *&vextq_s8(v2, v2, 8uLL)), v3), vmul_f32(v10, vrecps_f32(COERCE_UNSIGNED_INT(v8 + v8), v10)).f32[0]);
        __asm { FMOV            V0.2S, #0.25 }
      }
    }

    else
    {
      v15 = sqrtf(*v1.i32 + ((1.0 - *&v2.i32[1]) - v4));
      v16.f32[0] = v15 + v15;
      v17 = vrecpe_f32(v16.u32[0]);
      v18 = vmul_f32(v17, vrecps_f32(v16.u32[0], v17));
      v19 = vmul_f32(v18, vrecps_f32(v16.u32[0], v18)).u32[0];
      v16.f32[1] = *&v1.i32[1] + *v2.i32;
      __asm { FMOV            V5.2S, #0.25 }

      _D5.i32[1] = v19;
      v24 = vmul_f32(v16, _D5);
    }
  }

  else
  {
    v24 = _PromotedConst;
  }

  return *&v24;
}

- (void)setPoseData:(id)a3 originatingRequestSpecifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 copy];
  poseData = self->_poseData;
  self->_poseData = v7;

  poseOriginatingRequestSpecifier = self->_poseOriginatingRequestSpecifier;
  self->_poseOriginatingRequestSpecifier = v6;
}

- (double)pose
{
  v1 = *MEMORY[0x1E69E9B18];
  v2 = *(a1 + 376);
  if (v2)
  {
    *&v1 = *[v2 bytes];
  }

  return *&v1;
}

- (VNFaceLandmarks3D)landmarks3d
{
  os_unfair_lock_lock(&self->_cachedLandmarks3dLock);
  if (!self->_cachedLandmarks3d)
  {
    v3 = [(VNFaceObservation *)self landmarkPoints3d];
    if (v3)
    {
      v4 = [VNFaceLandmarks3D alloc];
      v5 = [(VNFaceObservation *)self landmarks3DOriginatingRequestSpecifier];
      [(VNDetectedObjectObservation *)self boundingBox];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(VNFaceObservation *)self alignedBoundingBox];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(VNFaceObservation *)self landmarkScore];
      LODWORD(v31) = v22;
      LODWORD(v23) = v15;
      LODWORD(v24) = v17;
      LODWORD(v25) = v19;
      LODWORD(v26) = v21;
      v27 = [(VNFaceLandmarks3D *)v4 initWithOriginatingRequestSpecifier:v5 pointsData:v3 pointCount:63 userFacingBBox:v7 alignedBBox:v9 landmarkScore:v11, v13, v23, v24, v25, v26, v31];
      cachedLandmarks3d = self->_cachedLandmarks3d;
      self->_cachedLandmarks3d = v27;
    }
  }

  os_unfair_lock_unlock(&self->_cachedLandmarks3dLock);
  v29 = self->_cachedLandmarks3d;

  return v29;
}

- (VNFaceLandmarks2D)landmarks65
{
  os_unfair_lock_lock(&self->_cachedLandmarks65Lock);
  if (!self->_cachedLandmarks65)
  {
    v3 = [(VNFaceObservation *)self landmarkPoints65];
    if (v3)
    {
      v4 = [VNFaceLandmarks2D alloc];
      v5 = [(VNFaceObservation *)self landmarksOriginatingRequestSpecifier];
      v6 = [v3 length];
      [(VNDetectedObjectObservation *)self boundingBox];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(VNFaceObservation *)self alignedBoundingBox];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(VNFaceObservation *)self landmarkScore];
      LODWORD(v32) = v23;
      LODWORD(v24) = v16;
      LODWORD(v25) = v18;
      LODWORD(v26) = v20;
      LODWORD(v27) = v22;
      v28 = [(VNFaceLandmarks2D *)v4 initWithOriginatingRequestSpecifier:v5 pointsData:v3 pointCount:v6 >> 3 constellation:1 precisionEstimatesPerPoint:0 userFacingBBox:v8 alignedBBox:v10 landmarkScore:v12, v14, v24, v25, v26, v27, v32];
      cachedLandmarks65 = self->_cachedLandmarks65;
      self->_cachedLandmarks65 = v28;
    }
  }

  os_unfair_lock_unlock(&self->_cachedLandmarks65Lock);
  v30 = self->_cachedLandmarks65;

  return v30;
}

- (VNFaceLandmarks2D)landmarks
{
  os_unfair_lock_lock(&self->_cachedLandmarksLock);
  if (!self->_cachedLandmarks)
  {
    v3 = [(VNFaceObservation *)self landmarkPoints];
    if (v3)
    {
      v4 = [VNFaceLandmarks2D alloc];
      v5 = [(VNFaceObservation *)self landmarksOriginatingRequestSpecifier];
      v6 = [v3 length];
      v7 = [(VNFaceObservation *)self landmarksConstellation];
      v8 = [(VNFaceObservation *)self landmarkPrecisionEstimatesPerPoint];
      [(VNDetectedObjectObservation *)self boundingBox];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(VNFaceObservation *)self alignedBoundingBox];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [(VNFaceObservation *)self landmarkScore];
      LODWORD(v34) = v25;
      LODWORD(v26) = v18;
      LODWORD(v27) = v20;
      LODWORD(v28) = v22;
      LODWORD(v29) = v24;
      v30 = [(VNFaceLandmarks2D *)v4 initWithOriginatingRequestSpecifier:v5 pointsData:v3 pointCount:v6 >> 3 constellation:v7 precisionEstimatesPerPoint:v8 userFacingBBox:v10 alignedBBox:v12 landmarkScore:v14, v16, v26, v27, v28, v29, v34];
      cachedLandmarks = self->_cachedLandmarks;
      self->_cachedLandmarks = v30;
    }
  }

  os_unfair_lock_unlock(&self->_cachedLandmarksLock);
  v32 = self->_cachedLandmarks;

  return v32;
}

- (NSDictionary)expressionsAndConfidence
{
  if (self->_expressionsAndScores)
  {
    v3 = [VNFaceExpressionDetector createExpressionAndConfidencesDictionaryFromScores:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vn_cloneObject
{
  v54.receiver = self;
  v54.super_class = VNFaceObservation;
  v3 = [(VNDetectedObjectObservation *)&v54 vn_cloneObject];
  if (v3)
  {
    v4 = [(NSData *)self->_alignedMeanShape copy];
    v5 = *(v3 + 440);
    *(v3 + 440) = v4;

    v6 = [(NSData *)self->_landmarkPoints copy];
    v7 = *(v3 + 336);
    *(v3 + 336) = v6;

    v8 = [(NSData *)self->_landmarkPoints65 copy];
    v9 = *(v3 + 344);
    *(v3 + 344) = v8;

    *(v3 + 352) = self->_landmarksConstellation;
    v10 = [(NSArray *)self->_landmarkPrecisionEstimatesPerPoint copy];
    v11 = *(v3 + 360);
    *(v3 + 360) = v10;

    v12 = [(NSData *)self->_landmarkPoints3d copy];
    v13 = *(v3 + 368);
    *(v3 + 368) = v12;

    v14 = [(NSData *)self->_poseData copy];
    v15 = *(v3 + 376);
    *(v3 + 376) = v14;

    v16 = [(VNRequestSpecifier *)self->_poseOriginatingRequestSpecifier copy];
    v17 = *(v3 + 384);
    *(v3 + 384) = v16;

    v18 = [(NSDictionary *)self->_expressionsAndScores copy];
    v19 = *(v3 + 272);
    *(v3 + 272) = v18;

    v20 = [(VNFaceprint *)self->_faceprint copy];
    v21 = *(v3 + 224);
    *(v3 + 224) = v20;

    v22 = [(VNTorsoprint *)self->_torsoprint copy];
    v23 = *(v3 + 232);
    *(v3 + 232) = v22;

    v24 = [(VNFaceTorsoprint *)self->_faceTorsoprint copy];
    v25 = *(v3 + 240);
    *(v3 + 240) = v24;

    v26 = [(VNFaceRegionMap *)self->_faceRegionMap copy];
    v27 = *(v3 + 208);
    *(v3 + 208) = v26;

    v28 = [(VNFaceSegments *)self->_faceSegments copy];
    v29 = *(v3 + 248);
    *(v3 + 248) = v28;

    size = self->_unalignedBoundingBox.size;
    *(v3 + 304) = self->_unalignedBoundingBox.origin;
    *(v3 + 320) = size;
    *(v3 + 408) = self->_boundingBoxAligned;
    *(v3 + 288) = self->_alignedBoundingBox;
    *(v3 + 412) = self->_alignedRotationAngle;
    v31 = [(NSNumber *)self->_roll copy];
    v32 = *(v3 + 416);
    *(v3 + 416) = v31;

    v33 = [(NSNumber *)self->_yaw copy];
    v34 = *(v3 + 424);
    *(v3 + 424) = v33;

    v35 = [(NSNumber *)self->_pitch copy];
    v36 = *(v3 + 432);
    *(v3 + 432) = v35;

    *(v3 + 256) = self->_landmarkScore;
    *(v3 + 260) = self->_isBlinking;
    *(v3 + 264) = self->_blinkScore;
    *(v3 + 400) = self->_faceId;
    *(v3 + 392) = self->_faceIdConfidence;
    v37 = [(NSNumber *)self->_faceCaptureQuality copy];
    v38 = *(v3 + 448);
    *(v3 + 448) = v37;

    v39 = [(VNRequestSpecifier *)self->_faceCaptureQualityOriginatingRequestSpecifier copy];
    v40 = *(v3 + 456);
    *(v3 + 456) = v39;

    *(v3 + 280) = self->_faceJunkinessIndex;
    *(v3 + 284) = self->_faceOrientationIndex;
    v41 = [(VNRequestSpecifier *)self->_landmarksOriginatingRequestSpecifier copy];
    v42 = *(v3 + 464);
    *(v3 + 464) = v41;

    v43 = [(VNRequestSpecifier *)self->_landmarks3DOriginatingRequestSpecifier copy];
    v44 = *(v3 + 472);
    *(v3 + 472) = v43;

    v45 = [(VNFaceLegacyFaceCore *)self->_legacyFaceCore copy];
    v46 = *(v3 + 480);
    *(v3 + 480) = v45;

    v47 = [(VNFaceGaze *)self->_gaze copy];
    v48 = *(v3 + 488);
    *(v3 + 488) = v47;

    v49 = [(VNFaceScreenGaze *)self->_faceScreenGaze copy];
    v50 = *(v3 + 496);
    *(v3 + 496) = v49;

    v51 = [(VNFaceAttributes *)self->_faceAttributes copy];
    v52 = *(v3 + 216);
    *(v3 + 216) = v51;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    v98.receiver = self;
    v98.super_class = VNFaceObservation;
    if ([(VNDetectedObjectObservation *)&v98 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      [(VNFaceObservation *)self alignedBoundingBox];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(VNFaceObservation *)v5 alignedBoundingBox];
      v17 = 0;
      if (v7 == v18 && v9 == v14)
      {
        v17 = 0;
        if (v13 == v16 && v11 == v15)
        {
          if (CGRectEqualToRect(self->_unalignedBoundingBox, v5->_unalignedBoundingBox)
            && ([(VNFaceObservation *)self landmarkPoints], v19 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 landmarkPoints], v20 = objc_claimAutoreleasedReturnValue(), v21 = VisionCoreEqualOrNilObjects(), v20, v19, (v21 & 1) != 0)
            && ([(VNFaceObservation *)self landmarkPoints65], v22 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 landmarkPoints65], v23 = objc_claimAutoreleasedReturnValue(), v24 = VisionCoreEqualOrNilObjects(), v23, v22, (v24 & 1) != 0)
            && (v25 = [(VNFaceObservation *)self landmarksConstellation], v25 == [(VNFaceObservation *)v5 landmarksConstellation])
            && ([(VNFaceObservation *)self landmarkPrecisionEstimatesPerPoint], v26 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 landmarkPrecisionEstimatesPerPoint], v27 = objc_claimAutoreleasedReturnValue(), v28 = VisionCoreEqualOrNilObjects(), v27, v26, (v28 & 1) != 0)
            && ([(VNFaceObservation *)self landmarkPoints3d], v29 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 landmarkPoints3d], v30 = objc_claimAutoreleasedReturnValue(), v31 = VisionCoreEqualOrNilObjects(), v30, v29, (v31 & 1) != 0)
            && ([(VNFaceObservation *)self poseData], v32 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 poseData], v33 = objc_claimAutoreleasedReturnValue(), v34 = VisionCoreEqualOrNilObjects(), v33, v32, (v34 & 1) != 0)
            && ([(VNFaceObservation *)self poseOriginatingRequestSpecifier], v35 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 poseOriginatingRequestSpecifier], v36 = objc_claimAutoreleasedReturnValue(), v37 = VisionCoreEqualOrNilObjects(), v36, v35, (v37 & 1) != 0)
            && ([(VNFaceObservation *)self expressionsAndScores], v38 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 expressionsAndScores], v39 = objc_claimAutoreleasedReturnValue(), v40 = VisionCoreEqualOrNilObjects(), v39, v38, (v40 & 1) != 0)
            && (v41 = [(VNFaceObservation *)self faceId], v41 == [(VNFaceObservation *)v5 faceId])
            && ([(VNFaceObservation *)self faceIdConfidence], v43 = v42, [(VNFaceObservation *)v5 faceIdConfidence], v43 == v44)
            && ([(VNFaceObservation *)self faceprint], v45 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 faceprint], v46 = objc_claimAutoreleasedReturnValue(), v47 = VisionCoreEqualOrNilObjects(), v46, v45, (v47 & 1) != 0)
            && ([(VNFaceObservation *)self torsoprint], v48 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 torsoprint], v49 = objc_claimAutoreleasedReturnValue(), v50 = VisionCoreEqualOrNilObjects(), v49, v48, (v50 & 1) != 0)
            && ([(VNFaceObservation *)self faceTorsoprint], v51 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 faceTorsoprint], v52 = objc_claimAutoreleasedReturnValue(), v53 = VisionCoreEqualOrNilObjects(), v52, v51, (v53 & 1) != 0)
            && (v54 = [(VNFaceObservation *)self isBoundingBoxAligned], v54 == [(VNFaceObservation *)v5 isBoundingBoxAligned])
            && ([(VNFaceObservation *)self alignedRotationAngle], v56 = v55, [(VNFaceObservation *)v5 alignedRotationAngle], v56 == v57)
            && ([(VNFaceObservation *)self faceRegionMap], v58 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 faceRegionMap], v59 = objc_claimAutoreleasedReturnValue(), v60 = VisionCoreEqualOrNilObjects(), v59, v58, (v60 & 1) != 0)
            && ([(VNFaceObservation *)self faceAttributes], v61 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 faceAttributes], v62 = objc_claimAutoreleasedReturnValue(), v63 = VisionCoreEqualOrNilObjects(), v62, v61, (v63 & 1) != 0)
            && ([(VNFaceObservation *)self faceSegments], v64 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 faceSegments], v65 = objc_claimAutoreleasedReturnValue(), v66 = VisionCoreEqualOrNilObjects(), v65, v64, (v66 & 1) != 0)
            && (v67 = [(VNFaceObservation *)self isBlinking], v67 == [(VNFaceObservation *)v5 isBlinking])
            && ([(VNFaceObservation *)self alignedMeanShape], v68 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 alignedMeanShape], v69 = objc_claimAutoreleasedReturnValue(), v70 = VisionCoreEqualOrNilObjects(), v69, v68, (v70 & 1) != 0)
            && ([(VNFaceObservation *)self landmarkScore], v72 = v71, [(VNFaceObservation *)v5 landmarkScore], v72 == v73)
            && ([(VNFaceObservation *)self faceJunkinessIndex], v75 = v74, [(VNFaceObservation *)v5 faceJunkinessIndex], v75 == v76)
            && ([(VNFaceObservation *)self faceOrientationIndex], v78 = v77, [(VNFaceObservation *)v5 faceOrientationIndex], v78 == v79)
            && ([(VNFaceObservation *)self faceCaptureQuality], v80 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 faceCaptureQuality], v81 = objc_claimAutoreleasedReturnValue(), v82 = VisionCoreEqualOrNilObjects(), v81, v80, (v82 & 1) != 0)
            && ([(VNFaceObservation *)self faceCaptureQualityOriginatingRequestSpecifier], v83 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 faceCaptureQualityOriginatingRequestSpecifier], v84 = objc_claimAutoreleasedReturnValue(), v85 = VisionCoreEqualOrNilObjects(), v84, v83, (v85 & 1) != 0)
            && ([(VNFaceObservation *)self landmarksOriginatingRequestSpecifier], v86 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 landmarksOriginatingRequestSpecifier], v87 = objc_claimAutoreleasedReturnValue(), v88 = VisionCoreEqualOrNilObjects(), v87, v86, (v88 & 1) != 0)
            && ([(VNFaceObservation *)self landmarks3DOriginatingRequestSpecifier], v89 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 landmarks3DOriginatingRequestSpecifier], v90 = objc_claimAutoreleasedReturnValue(), v91 = VisionCoreEqualOrNilObjects(), v90, v89, (v91 & 1) != 0)
            && ([(VNFaceObservation *)self gaze], v92 = objc_claimAutoreleasedReturnValue(), [(VNFaceObservation *)v5 gaze], v93 = objc_claimAutoreleasedReturnValue(), v94 = VisionCoreEqualOrNilObjects(), v93, v92, (v94 & 1) != 0))
          {
            v95 = [(VNFaceObservation *)self faceScreenGaze];
            v96 = [(VNFaceObservation *)v5 faceScreenGaze];
            v17 = VisionCoreEqualOrNilObjects();
          }

          else
          {
            v17 = 0;
          }
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v82.receiver = self;
  v82.super_class = VNFaceObservation;
  v3 = [(VNDetectedObjectObservation *)&v82 hash];
  [(VNFaceObservation *)self alignedBoundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(VNFaceObservation *)self landmarkPoints];
  v13 = [v12 hash];

  v14 = [(VNFaceObservation *)self landmarkPoints65];
  v15 = [v14 hash];

  v16 = [(VNFaceObservation *)self landmarksConstellation];
  v17 = [(VNFaceObservation *)self landmarkPrecisionEstimatesPerPoint];
  v18 = [v17 hash];

  v19 = [(VNFaceObservation *)self landmarkPoints3d];
  v20 = [v19 hash];

  v21 = [(VNFaceObservation *)self poseData];
  v22 = [v21 hash];

  v23 = [(VNFaceObservation *)self poseOriginatingRequestSpecifier];
  v24 = [v23 hash];

  v25 = [(VNFaceObservation *)self expressionsAndScores];
  v81 = [v25 hash];

  v80 = [(VNFaceObservation *)self faceId];
  [(VNFaceObservation *)self faceIdConfidence];
  v27 = v26;
  v28 = [(VNFaceObservation *)self faceprint];
  v79 = [v28 hash];

  v29 = [(VNFaceObservation *)self torsoprint];
  v78 = [v29 hash];

  v30 = [(VNFaceObservation *)self faceTorsoprint];
  v77 = [v30 hash];

  v76 = [(VNFaceObservation *)self isBoundingBoxAligned];
  [(VNFaceObservation *)self alignedRotationAngle];
  v32 = v31;
  v33 = [(VNFaceObservation *)self faceRegionMap];
  v75 = [v33 hash];

  v34 = [(VNFaceObservation *)self faceAttributes];
  v74 = [v34 hash];

  v35 = [(VNFaceObservation *)self faceSegments];
  v73 = [v35 hash];
  v72 = v9;

  v71 = [(VNFaceObservation *)self isBlinking];
  v36 = [(VNFaceObservation *)self alignedMeanShape];
  v70 = [v36 hash];
  v67 = v24;
  v68 = v22;
  v69 = v20;
  v37 = v18;
  v38 = v15;

  [(VNFaceObservation *)self landmarkScore];
  v40 = v39;
  [(VNFaceObservation *)self faceJunkinessIndex];
  v42 = v41;
  [(VNFaceObservation *)self faceOrientationIndex];
  v44 = v43;
  v45 = [(VNFaceObservation *)self landmarksOriginatingRequestSpecifier];
  v46 = [v45 hash];
  v47 = v13;

  v48 = [(VNFaceObservation *)self landmarks3DOriginatingRequestSpecifier];
  v49 = [v48 hash];

  v50 = [(VNFaceObservation *)self gaze];
  v51 = [v50 hash];

  v52 = [(VNFaceObservation *)self faceScreenGaze];
  v53 = [v52 hash];
  v54 = LODWORD(v44);
  if (v44 == 0.0)
  {
    v54 = 0;
  }

  v55 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v55 = 0;
  }

  v56 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v56 = 0;
  }

  v57 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v57 = 0;
  }

  v58 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v58 = 0;
  }

  v59 = LODWORD(v5) << 13;
  if (v5 == 0.0)
  {
    v59 = 0;
  }

  v60 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v60 = 0;
  }

  v61 = v59 ^ v60;
  v62 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v62 = 0;
  }

  v63 = v62 ^ (v61 << 13);
  v64 = LODWORD(v72);
  if (v72 == 0.0)
  {
    v64 = 0;
  }

  v65 = v53 ^ __ROR8__(v51 ^ __ROR8__(v49 ^ __ROR8__(v46 ^ __ROR8__(v54 ^ __ROR8__(v55 ^ __ROR8__(v56 ^ __ROR8__(v70 ^ __ROR8__(v71 ^ __ROR8__(v73 ^ __ROR8__(v74 ^ __ROR8__(v75 ^ __ROR8__(v57 ^ __ROR8__(v76 ^ __ROR8__(v77 ^ __ROR8__(v78 ^ __ROR8__(v79 ^ __ROR8__(v58 ^ __ROR8__(v80 ^ __ROR8__(v81 ^ __ROR8__(v67 ^ __ROR8__(v68 ^ __ROR8__(v69 ^ __ROR8__(v37 ^ __ROR8__(v16 ^ __ROR8__(v38 ^ __ROR8__(v47 ^ __ROR8__(v64 ^ __ROR8__(v63, 51) ^ __ROR8__(v3, 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51);

  return v65;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VNFaceObservation;
  [(VNDetectedObjectObservation *)&v17 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNFaceObservation"];
  *&v5 = self->_alignedBoundingBox.origin.x;
  [v4 encodeFloat:@"alignedBBX" forKey:v5];
  *&v6 = self->_alignedBoundingBox.origin.y;
  [v4 encodeFloat:@"alignedBBY" forKey:v6];
  *&v7 = self->_alignedBoundingBox.size.width;
  [v4 encodeFloat:@"alignedBBW" forKey:v7];
  *&v8 = self->_alignedBoundingBox.size.height;
  [v4 encodeFloat:@"alignedBBH" forKey:v8];
  [v4 encodeDouble:@"unalignedBBXAsDouble" forKey:self->_unalignedBoundingBox.origin.x];
  [v4 encodeDouble:@"unalignedBBYAsDouble" forKey:self->_unalignedBoundingBox.origin.y];
  [v4 encodeDouble:@"unalignedBBWAsDouble" forKey:self->_unalignedBoundingBox.size.width];
  [v4 encodeDouble:@"unalignedBBHAsDouble" forKey:self->_unalignedBoundingBox.size.height];
  [v4 encodeObject:self->_landmarkPoints forKey:@"landmarks"];
  v9 = self->_landmarkPoints;
  v10 = VisionCoreEqualOrNilObjects();

  if ((v10 & 1) == 0)
  {
    [v4 encodeObject:self->_landmarkPoints65 forKey:@"landmarks65"];
  }

  [v4 encodeObject:self->_landmarkPrecisionEstimatesPerPoint forKey:@"precisionEstimates"];
  [v4 encodeInteger:self->_landmarksConstellation forKey:@"landmarksConstellation"];
  [v4 encodeObject:self->_landmarkPoints3d forKey:@"landmarks3D"];
  [v4 encodeObject:self->_poseData forKey:@"pose"];
  [v4 encodeObject:self->_poseOriginatingRequestSpecifier forKey:@"poseOrigReq"];
  [v4 encodeObject:self->_expressionsAndScores forKey:@"expressions"];
  *&v11 = self->_faceIdConfidence;
  [v4 encodeFloat:@"faceIDConfidence" forKey:v11];
  [v4 encodeInteger:self->_faceId forKey:@"faceID"];
  [v4 encodeObject:self->_faceprint forKey:@"faceprint"];
  [v4 encodeObject:self->_torsoprint forKey:@"torsoprint"];
  [v4 encodeObject:self->_faceTorsoprint forKey:@"faceTorsoprint"];
  [v4 encodeBool:self->_boundingBoxAligned forKey:@"hasAlignedBBox"];
  *&v12 = self->_alignedRotationAngle;
  [v4 encodeFloat:@"alignedRotAngle" forKey:v12];
  [v4 encodeObject:self->_roll forKey:@"roll"];
  [v4 encodeObject:self->_yaw forKey:@"yaw"];
  [v4 encodeObject:self->_pitch forKey:@"pitch"];
  [v4 encodeObject:self->_faceRegionMap forKey:@"faceRegionMap"];
  [v4 encodeObject:self->_faceAttributes forKey:@"faceAttributes"];
  [v4 encodeObject:self->_faceSegments forKey:@"faceSmntcSegments"];
  [v4 encodeBool:self->_isBlinking forKey:@"blinking"];
  [v4 encodeObject:self->_alignedMeanShape forKey:@"alignedMeanShape"];
  *&v13 = self->_blinkScore;
  [v4 encodeFloat:@"blinkScore" forKey:v13];
  *&v14 = self->_landmarkScore;
  [v4 encodeFloat:@"landmarksScore" forKey:v14];
  [v4 encodeObject:self->_faceCaptureQuality forKey:@"faceCaptureQuality"];
  [v4 encodeObject:self->_faceCaptureQualityOriginatingRequestSpecifier forKey:@"faceCQOReq"];
  *&v15 = self->_faceJunkinessIndex;
  [v4 encodeFloat:@"faceJunkinessIndex" forKey:v15];
  *&v16 = self->_faceOrientationIndex;
  [v4 encodeFloat:@"faceOrientationIndex" forKey:v16];
  [v4 encodeObject:self->_landmarksOriginatingRequestSpecifier forKey:@"faceLMOReq"];
  [v4 encodeObject:self->_landmarks3DOriginatingRequestSpecifier forKey:@"faceLM3DOReq"];
  [v4 encodeObject:self->_gaze forKey:@"gaze"];
  [v4 encodeObject:self->_faceScreenGaze forKey:@"screengaze"];
}

- (VNFaceObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v104.receiver = self;
  v104.super_class = VNFaceObservation;
  v5 = [(VNDetectedObjectObservation *)&v104 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  if ([v4 vn_decodeCodingVersionForKey:@"VNFaceObservation"])
  {
    goto LABEL_22;
  }

  [v4 decodeFloatForKey:@"alignedBBX"];
  v5->_alignedBoundingBox.origin.x = v9;
  [v4 decodeFloatForKey:@"alignedBBY"];
  v5->_alignedBoundingBox.origin.y = v10;
  [v4 decodeFloatForKey:@"alignedBBW"];
  v5->_alignedBoundingBox.size.width = v11;
  [v4 decodeFloatForKey:@"alignedBBH"];
  v5->_alignedBoundingBox.size.height = v12;
  if ([v4 containsValueForKey:@"unalignedBBX"] && objc_msgSend(v4, "containsValueForKey:", @"unalignedBBY") && objc_msgSend(v4, "containsValueForKey:", @"unalignedBBW"))
  {
    v13 = [v4 containsValueForKey:@"unalignedBBH"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v4 containsValueForKey:@"unalignedBBXAsDouble"];
  if (v14)
  {
    v14 = [v4 containsValueForKey:@"unalignedBBYAsDouble"];
    if (v14)
    {
      v14 = [v4 containsValueForKey:@"unalignedBBWAsDouble"];
      if (v14)
      {
        v14 = [v4 containsValueForKey:@"unalignedBBHAsDouble"];
      }
    }
  }

  if (v13)
  {
    [v4 decodeFloatForKey:@"unalignedBBX"];
    p_unalignedBoundingBox = &v5->_unalignedBoundingBox;
    v5->_unalignedBoundingBox.origin.x = v21;
    [v4 decodeFloatForKey:@"unalignedBBY"];
    v5->_unalignedBoundingBox.origin.y = v23;
    [v4 decodeFloatForKey:@"unalignedBBW"];
    v5->_unalignedBoundingBox.size.width = v24;
    [v4 decodeFloatForKey:@"unalignedBBH"];
    v26 = v25;
  }

  else if (v14)
  {
    [v4 decodeDoubleForKey:@"unalignedBBXAsDouble"];
    p_unalignedBoundingBox = &v5->_unalignedBoundingBox;
    v5->_unalignedBoundingBox.origin.x = v27;
    [v4 decodeDoubleForKey:@"unalignedBBYAsDouble"];
    v5->_unalignedBoundingBox.origin.y = v28;
    [v4 decodeDoubleForKey:@"unalignedBBWAsDouble"];
    v5->_unalignedBoundingBox.size.width = v29;
    [v4 decodeDoubleForKey:@"unalignedBBHAsDouble"];
    v26 = v30;
  }

  else
  {
    VNValidatedLog(1, @"Unaligned face bounding box is not archived, initializing _unalignedBoundingBox with _boundingBox", v15, v16, v17, v18, v19, v20, v100);
    [(VNDetectedObjectObservation *)v5 boundingBox];
    p_unalignedBoundingBox = &v5->_unalignedBoundingBox;
    v5->_unalignedBoundingBox.origin.x = v31;
    v5->_unalignedBoundingBox.origin.y = v32;
    v5->_unalignedBoundingBox.size.width = v33;
  }

  p_unalignedBoundingBox->size.height = v26;
  v34 = [v4 decodeObjectOfClass:v6 forKey:@"landmarks"];
  landmarkPoints = v5->_landmarkPoints;
  v5->_landmarkPoints = v34;

  v36 = [v4 decodeObjectOfClass:v6 forKey:@"landmarks65"];
  landmarkPoints65 = v5->_landmarkPoints65;
  v5->_landmarkPoints65 = v36;

  if (!v5->_landmarkPoints65)
  {
    objc_storeStrong(&v5->_landmarkPoints65, v5->_landmarkPoints);
  }

  v38 = [v4 decodeArrayOfObjectsOfClass:v7 forKey:@"precisionEstimates"];
  landmarkPrecisionEstimatesPerPoint = v5->_landmarkPrecisionEstimatesPerPoint;
  v5->_landmarkPrecisionEstimatesPerPoint = v38;

  v40 = [v4 decodeIntegerForKey:@"landmarksConstellation"];
  v5->_landmarksConstellation = v40;
  if (v40 < 3)
  {
    v45 = [v4 decodeObjectOfClass:v6 forKey:@"landmarks3D"];
    landmarkPoints3d = v5->_landmarkPoints3d;
    v5->_landmarkPoints3d = v45;

    v47 = [v4 decodeObjectOfClass:v6 forKey:@"pose"];
    poseData = v5->_poseData;
    v5->_poseData = v47;

    v49 = v5->_poseData;
    if (v49)
    {
      if ([(NSData *)v49 length]!= 48)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"invalid pose data"];
      }

      if ([v4 containsValueForKey:@"poseOrigReq"])
      {
        v50 = [v4 decodeObjectOfClass:v8 forKey:@"poseOrigReq"];
        poseOriginatingRequestSpecifier = v5->_poseOriginatingRequestSpecifier;
        v5->_poseOriginatingRequestSpecifier = v50;

        if (!v5->_poseOriginatingRequestSpecifier)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v103 = 0;
        v52 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:&v103];
        v53 = v103;
        v54 = v5->_poseOriginatingRequestSpecifier;
        v5->_poseOriginatingRequestSpecifier = v52;

        if (!v5->_poseOriginatingRequestSpecifier)
        {
          [v4 failWithError:v53];

          goto LABEL_22;
        }
      }
    }

    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), v7, 0}];
    v58 = [v4 decodeObjectOfClasses:v57 forKey:@"expressions"];
    expressionsAndScores = v5->_expressionsAndScores;
    v5->_expressionsAndScores = v58;

    [v4 decodeFloatForKey:@"faceIDConfidence"];
    v5->_faceIdConfidence = v60;
    v5->_faceId = [v4 decodeIntegerForKey:@"faceID"];
    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceprint"];
    faceprint = v5->_faceprint;
    v5->_faceprint = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"torsoprint"];
    torsoprint = v5->_torsoprint;
    v5->_torsoprint = v63;

    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceTorsoprint"];
    faceTorsoprint = v5->_faceTorsoprint;
    v5->_faceTorsoprint = v65;

    v5->_boundingBoxAligned = [v4 decodeBoolForKey:@"hasAlignedBBox"];
    [v4 decodeFloatForKey:@"alignedRotAngle"];
    v5->_alignedRotationAngle = v67;
    v68 = [v4 decodeObjectOfClass:v7 forKey:@"roll"];
    roll = v5->_roll;
    v5->_roll = v68;

    v70 = [v4 decodeObjectOfClass:v7 forKey:@"yaw"];
    yaw = v5->_yaw;
    v5->_yaw = v70;

    v72 = [v4 decodeObjectOfClass:v7 forKey:@"pitch"];
    pitch = v5->_pitch;
    v5->_pitch = v72;

    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceRegionMap"];
    faceRegionMap = v5->_faceRegionMap;
    v5->_faceRegionMap = v74;

    v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceAttributes"];
    faceAttributes = v5->_faceAttributes;
    v5->_faceAttributes = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceSmntcSegments"];
    faceSegments = v5->_faceSegments;
    v5->_faceSegments = v78;

    v5->_isBlinking = [v4 decodeBoolForKey:@"blinking"];
    [v4 decodeFloatForKey:@"blinkScore"];
    v5->_blinkScore = v80;
    v81 = [v4 decodeObjectOfClass:v6 forKey:@"alignedMeanShape"];
    alignedMeanShape = v5->_alignedMeanShape;
    v5->_alignedMeanShape = v81;

    [v4 decodeFloatForKey:@"landmarksScore"];
    v5->_landmarkScore = v83;
    [v4 decodeFloatForKey:@"faceJunkinessIndex"];
    v5->_faceJunkinessIndex = v84;
    v85 = [v4 decodeObjectOfClass:v7 forKey:@"faceCaptureQuality"];
    faceCaptureQuality = v5->_faceCaptureQuality;
    v5->_faceCaptureQuality = v85;

    v87 = [v4 decodeObjectOfClass:v8 forKey:@"faceCQOReq"];
    faceCaptureQualityOriginatingRequestSpecifier = v5->_faceCaptureQualityOriginatingRequestSpecifier;
    v5->_faceCaptureQualityOriginatingRequestSpecifier = v87;

    [v4 decodeFloatForKey:@"faceOrientationIndex"];
    v5->_faceOrientationIndex = v89;
    if ([v4 containsValueForKey:@"faceLMOReq"])
    {
      v90 = [v4 decodeObjectOfClass:v8 forKey:@"faceLMOReq"];
      landmarksOriginatingRequestSpecifier = v5->_landmarksOriginatingRequestSpecifier;
      v5->_landmarksOriginatingRequestSpecifier = v90;
    }

    else
    {
      if (![v4 containsValueForKey:@"faceLMRequestRev"])
      {
        goto LABEL_37;
      }

      v102 = 0;
      v91 = +[VNRequestSpecifier specifierForRequestClass:revision:error:](VNRequestSpecifier, "specifierForRequestClass:revision:error:", objc_opt_class(), [v4 decodeIntegerForKey:@"faceLMRequestRev"], &v102);
      landmarksOriginatingRequestSpecifier = v102;
      v92 = v5->_landmarksOriginatingRequestSpecifier;
      v5->_landmarksOriginatingRequestSpecifier = v91;

      if (!v5->_landmarksOriginatingRequestSpecifier)
      {
        [v4 failWithError:landmarksOriginatingRequestSpecifier];
        goto LABEL_21;
      }
    }

LABEL_37:
    if ([v4 containsValueForKey:@"faceLM3DOReq"])
    {
      v93 = [v4 decodeObjectOfClass:v8 forKey:@"faceLM3DOReq"];
      landmarksOriginatingRequestSpecifier = v5->_landmarks3DOriginatingRequestSpecifier;
      v5->_landmarks3DOriginatingRequestSpecifier = v93;
    }

    else
    {
      if (![v4 containsValueForKey:@"faceLM3DRequestRev"])
      {
LABEL_42:
        v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gaze"];
        gaze = v5->_gaze;
        v5->_gaze = v96;

        v98 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"screengaze"];
        faceScreenGaze = v5->_faceScreenGaze;
        v5->_faceScreenGaze = v98;

        [(VNFaceObservation *)v5 _initLocks];
        v43 = v5;
        goto LABEL_23;
      }

      v101 = 0;
      v94 = +[VNRequestSpecifier specifierForRequestClass:revision:error:](VNRequestSpecifier, "specifierForRequestClass:revision:error:", objc_opt_class(), [v4 decodeIntegerForKey:@"faceLM3DRequestRev"], &v101);
      landmarksOriginatingRequestSpecifier = v101;
      landmarks3DOriginatingRequestSpecifier = v5->_landmarks3DOriginatingRequestSpecifier;
      v5->_landmarks3DOriginatingRequestSpecifier = v94;

      if (!v5->_landmarks3DOriginatingRequestSpecifier)
      {
        [v4 failWithError:landmarksOriginatingRequestSpecifier];
        goto LABEL_21;
      }
    }

    goto LABEL_42;
  }

  landmarksOriginatingRequestSpecifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when un-archiving landmarks constellation. Un-archived constellation is out of range: %lu", v5->_landmarksConstellation];
  v42 = [VNError errorForInternalErrorWithLocalizedDescription:landmarksOriginatingRequestSpecifier];
  [v4 failWithError:v42];

LABEL_21:
LABEL_22:
  v43 = 0;
LABEL_23:

  return v43;
}

- (void)_initLocks
{
  self->_cachedLandmarksLock._os_unfair_lock_opaque = 0;
  self->_cachedLandmarks65Lock._os_unfair_lock_opaque = 0;
  self->_cachedLandmarks3dLock._os_unfair_lock_opaque = 0;
}

- (VNFaceObservation)initWithRequestRevision:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = VNFaceObservation;
  v3 = [(VNObservation *)&v7 initWithRequestRevision:a3];
  v4 = v3;
  if (v3)
  {
    [(VNFaceObservation *)v3 _initLocks];
    v5 = v4;
  }

  return v4;
}

+ (uint64_t)computeYawPitchRollFromPoseMatrix:(__n128)a3 outputYaw:(__n128)a4 outputPitch:(uint64_t)a5 outputRoll:(uint64_t)a6
{
  v12 = 0;
  v13 = *MEMORY[0x1E69E9B18];
  v15 = *(MEMORY[0x1E69E9B18] + 16);
  v13.i32[0] = 1.0;
  v16 = *(MEMORY[0x1E69E9B18] + 32);
  v14 = *(MEMORY[0x1E69E9B18] + 48);
  v15.i32[1] = -1.0;
  v16.i32[2] = -1.0;
  v26[0] = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  do
  {
    *&v27[v12 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v26[v12 / 0x10])), v15, *&v26[v12 / 0x10], 1), v16, v26[v12 / 0x10], 2), v14, v26[v12 / 0x10], 3);
    v12 += 16;
  }

  while (v12 != 64);
  if (fabsf(fabsf(*(&v30 + 1)) + -1.0) <= 0.00000011921)
  {
    if (fabsf(*(&v30 + 1) + -1.0) <= 0.00000011921)
    {
      v21 = atan2f(v28, v27[0]);
      v20 = 0.0;
      v18 = 1.5708;
    }

    else
    {
      v21 = atan2f(-v28, -v27[0]);
      v20 = 0.0;
      v18 = -1.5708;
    }
  }

  else
  {
    v23 = v27[1];
    v24 = v29;
    v25 = v30;
    v17 = asinf(*(&v30 + 1));
    v18 = -v17;
    v19 = cosf(v17);
    v20 = atan2f(v23 / v19, v24 / v19);
    v21 = atan2f(*&v25 / v19, *(&v25 + 2) / v19);
  }

  *a7 = v21;
  *a8 = v18;
  *a9 = v20;
  return 1;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 alignedBoundingBox:(CGRect)a5 roll:(id)a6 yaw:(id)a7
{
  v7 = [a1 faceObservationWithRequestRevision:a3 boundingBox:a6 alignedBoundingBox:a7 roll:0 yaw:a4.origin.x pitch:{a4.origin.y, a4.size.width, a4.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];

  return v7;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 alignedBoundingBox:(CGRect)a5 roll:(id)a6 yaw:(id)a7 pitch:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4.size.height;
  v15 = a4.size.width;
  v16 = a4.origin.y;
  v17 = a4.origin.x;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [objc_opt_class() faceObservationWithRequestRevision:a3 boundingBox:v17 andAlignedBoundingBox:{v16, v15, v14, x, y, width, height}];
  [v22 setRoll:v19];
  [v22 setYaw:v20];
  [v22 setPitch:v21];

  return v22;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox roll:(NSNumber *)roll yaw:(NSNumber *)yaw
{
  v6 = [a1 faceObservationWithRequestRevision:requestRevision boundingBox:roll roll:yaw yaw:0 pitch:{boundingBox.origin.x, boundingBox.origin.y, boundingBox.size.width, boundingBox.size.height}];

  return v6;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 roll:(id)a5 yaw:(id)a6 pitch:(id)a7 isBoundingBoxAligned:(BOOL)a8 alignedBoundingBox:(CGRect)a9 landmarks:(id)a10 landmarks65:(id)a11 landmarkScore:(float)a12 isBlinking:(BOOL)a13 blinkScore:(float)a14 faceOrientationIndex:(float)a15 faceJunkinessIndex:(float)a16
{
  v17 = a8;
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v24 = a4.size.height;
  v25 = a4.size.width;
  v26 = a4.origin.y;
  v27 = a4.origin.x;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a10;
  v34 = a11;
  if (v30)
  {
    [v30 floatValue];
    if (v35 >= -3.1416)
    {
      if (v35 < 3.1416)
      {
        goto LABEL_7;
      }

      v36 = &unk_1F19C2468;
    }

    else
    {
      v36 = &unk_1F19C2458;
    }

    v30 = v36;
  }

LABEL_7:
  if (!v31)
  {
    goto LABEL_13;
  }

  [v31 floatValue];
  if (v37 <= -1.5708)
  {
    v38 = &unk_1F19C2478;
  }

  else
  {
    if (v37 < 1.5708)
    {
      goto LABEL_13;
    }

    v38 = &unk_1F19C2488;
  }

  v31 = v38;
LABEL_13:
  if (!v32)
  {
    goto LABEL_19;
  }

  [v32 floatValue];
  if (v39 <= -1.5708)
  {
    v40 = &unk_1F19C2478;
  }

  else
  {
    if (v39 < 1.5708)
    {
      goto LABEL_19;
    }

    v40 = &unk_1F19C2488;
  }

  v32 = v40;
LABEL_19:
  v41 = [[a1 alloc] initWithRequestRevision:a3 boundingBox:{v27, v26, v25, v24}];
  [v41 setUnalignedBoundingBox:{v27, v26, v25, v24}];
  [v41 setRoll:v30];
  [v41 setYaw:v31];
  [v41 setPitch:v32];
  if (v17)
  {
    [v41 setBoundingBoxAligned:1];
    *&v43 = x;
    *&v44 = y;
    *&v45 = height;
    *&v46 = width;
    [v41 setAlignedBoundingBox:{v43, v44, v45, v46}];
  }

  if (v34)
  {
    v47 = [v34 pointsData];
    v48 = [v34 originatingRequestSpecifier];
    [v41 setLandmarkPoints65Data:v47 originatingRequestSpecifier:v48];
  }

  if (v33)
  {
    v49 = [v33 pointsData];
    v50 = [v33 originatingRequestSpecifier];
    [v41 setLandmarkPointsData:v49 originatingRequestSpecifier:v50];

    [v41 setLandmarksConstellation:{objc_msgSend(v33, "constellation")}];
    v51 = [v33 precisionEstimatesPerPoint];
    [v41 setLandmarkPrecisionEstimatesPerPoint:v51];
  }

  *&v42 = a12;
  [v41 setLandmarkScore:v42];
  [v41 setIsBlinking:a13];
  *&v52 = a14;
  [v41 setBlinkScore:v52];
  *&v53 = a15;
  [v41 setFaceOrientationIndex:v53];
  *&v54 = a16;
  [v41 setFaceJunkinessIndex:v54];

  return v41;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 roll:(id)a5 yaw:(id)a6 pitch:(id)a7 isBoundingBoxAligned:(BOOL)a8 alignedBoundingBox:(CGRect)a9 landmarks:(id)a10 landmarks65:(id)a11 landmarkScore:(float)a12 isBlinking:(BOOL)a13 blinkScore:(float)a14
{
  LODWORD(v17) = 0;
  BYTE4(v16) = a13;
  *&v16 = a12;
  v14 = [a1 faceObservationWithRequestRevision:a3 boundingBox:a5 roll:a6 yaw:a7 pitch:a8 isBoundingBoxAligned:a10 alignedBoundingBox:a4.origin.x landmarks:a4.origin.y landmarks65:a4.size.width landmarkScore:a4.size.height isBlinking:a9.origin.x blinkScore:a9.origin.y faceOrientationIndex:a9.size.width faceJunkinessIndex:{a9.size.height, a11, v16, LODWORD(a14), v17}];

  return v14;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox roll:(NSNumber *)roll yaw:(NSNumber *)yaw pitch:(NSNumber *)pitch
{
  LODWORD(v10) = 0;
  BYTE4(v9) = 0;
  LODWORD(v9) = 0;
  v7 = [a1 faceObservationWithRequestRevision:requestRevision boundingBox:roll roll:yaw yaw:pitch pitch:0 isBoundingBoxAligned:0 alignedBoundingBox:boundingBox.origin.x landmarks:boundingBox.origin.y landmarks65:boundingBox.size.width landmarkScore:boundingBox.size.height isBlinking:*MEMORY[0x1E695F050] blinkScore:*(MEMORY[0x1E695F050] + 8) faceOrientationIndex:*(MEMORY[0x1E695F050] + 16) faceJunkinessIndex:{*(MEMORY[0x1E695F050] + 24), 0, v9, 0, v10}];

  return v7;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 faceprint:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = [[a1 alloc] initWithRequestRevision:a3 boundingBox:{x, y, width, height}];
  [v12 setUnalignedBoundingBox:{x, y, width, height}];
  [v12 setFaceprint:v11];

  return v12;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 unalignedBoundingBox:(CGRect)a4 alignedBoundingBox:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v13 = [[a1 alloc] initWithRequestRevision:a3 boundingBox:{a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  [v13 setUnalignedBoundingBox:{v12, v11, v10, v9}];
  *&v14 = x;
  *&v15 = y;
  *&v16 = width;
  *&v17 = height;
  [v13 setAlignedBoundingBox:{v14, v15, v17, v16}];
  [v13 setBoundingBoxAligned:1];

  return v13;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 andAlignedBoundingBox:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v13 = [[a1 alloc] initWithRequestRevision:a3 boundingBox:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
  [v13 setUnalignedBoundingBox:{v12, v11, v10, v9}];
  *&v14 = x;
  *&v15 = y;
  *&v16 = width;
  *&v17 = height;
  [v13 setAlignedBoundingBox:{v14, v15, v17, v16}];
  [v13 setBoundingBoxAligned:1];

  return v13;
}

+ (VNFaceObservation)observationWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___VNFaceObservation;
  v4 = objc_msgSendSuper2(&v6, sel_observationWithRequestRevision_boundingBox_, a3, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  [v4 boundingBox];
  [v4 setUnalignedBoundingBox:?];

  return v4;
}

+ (BOOL)_exifOrientationFromFaceRollAngle:(float)a3 exifOrientation:(int *)a4 error:(id *)a5
{
  if (a4)
  {
    if (a3 >= -45.0 && a3 < 45.0)
    {
      result = 1;
      *a4 = 1;
      return result;
    }

    if (a3 >= -135.0 && a3 < -45.0)
    {
      v8 = 8;
      goto LABEL_19;
    }

    if (a3 < -135.0 && a3 >= -180.0 || a3 >= 135.0 && a3 < 180.0)
    {
      v8 = 3;
LABEL_19:
      *a4 = v8;
      return 1;
    }

    if (a3 >= 45.0 && a3 < 135.0)
    {
      v8 = 6;
      goto LABEL_19;
    }

    if (a5)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      *a5 = [VNError errorForInvalidArgument:v12 named:@"face orientation"];
    }
  }

  else if (a5)
  {
    v9 = [VNError errorWithCode:14 message:@"exifOrientation cannot be null"];
    v10 = v9;
    result = 0;
    *a5 = v9;
    return result;
  }

  return 0;
}

@end