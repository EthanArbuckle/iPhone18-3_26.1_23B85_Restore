@interface VNFaceObservation
+ (BOOL)_exifOrientationFromFaceRollAngle:(float)angle exifOrientation:(int *)orientation error:(id *)error;
+ (VNFaceObservation)faceObservationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox roll:(NSNumber *)roll yaw:(NSNumber *)yaw;
+ (VNFaceObservation)faceObservationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox roll:(NSNumber *)roll yaw:(NSNumber *)yaw pitch:(NSNumber *)pitch;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box alignedBoundingBox:(CGRect)boundingBox roll:(id)roll yaw:(id)yaw;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box alignedBoundingBox:(CGRect)boundingBox roll:(id)roll yaw:(id)yaw pitch:(id)pitch;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box andAlignedBoundingBox:(CGRect)boundingBox;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box faceprint:(id)faceprint;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box roll:(id)roll yaw:(id)yaw pitch:(id)pitch isBoundingBoxAligned:(BOOL)aligned alignedBoundingBox:(CGRect)boundingBox landmarks:(id)self0 landmarks65:(id)self1 landmarkScore:(float)self2 isBlinking:(BOOL)self3 blinkScore:(float)self4;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box roll:(id)roll yaw:(id)yaw pitch:(id)pitch isBoundingBoxAligned:(BOOL)aligned alignedBoundingBox:(CGRect)boundingBox landmarks:(id)self0 landmarks65:(id)self1 landmarkScore:(float)self2 isBlinking:(BOOL)self3 blinkScore:(float)self4 faceOrientationIndex:(float)self5 faceJunkinessIndex:(float)self6;
+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision unalignedBoundingBox:(CGRect)box alignedBoundingBox:(CGRect)boundingBox;
+ (VNFaceObservation)observationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box;
+ (uint64_t)computeYawPitchRollFromPoseMatrix:(__n128)matrix outputYaw:(__n128)yaw outputPitch:(uint64_t)pitch outputRoll:(uint64_t)roll;
- (BOOL)getComputedRectifyingTransform:(CGAffineTransform *)transform;
- (BOOL)getFaceEXIFOrientation:(int *)orientation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRevision1DetectedRectanglesCompatible;
- (CGRect)alignedBoundingBoxAsCGRect;
- (CGRect)unalignedBoundingBox;
- (NSDictionary)expressionsAndConfidence;
- (VNFaceLandmarks2D)landmarks;
- (VNFaceLandmarks2D)landmarks65;
- (VNFaceLandmarks3D)landmarks3d;
- (VNFaceObservation)initWithCoder:(id)coder;
- (VNFaceObservation)initWithRequestRevision:(unint64_t)revision;
- (_Geometry2D_rect2D_)alignedBoundingBox;
- (double)pose;
- (double)poseQuaternion;
- (float)landmarkScore;
- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)specifier error:(id *)error;
- (id)VNPersonsModelFaceprintWithRequestRevision:(unint64_t)revision error:(id *)error;
- (id)debugQuickLookObject;
- (id)description;
- (id)expressionsAndDetections;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)_addPointsOfNamedRegion:(id)region inLandmarks:(id)landmarks toPath:(CGPath *)path applyingAffineTransform:(CGAffineTransform *)transform;
- (void)_initLocks;
- (void)encodeWithCoder:(id)coder;
- (void)setFaceCaptureQuality:(float)quality originatingRequestSpecifier:(id)specifier;
- (void)setFaceScreenGaze:(id)gaze;
- (void)setGaze:(id)gaze;
- (void)setLandmark3DPointsData:(id)data originatingRequestSpecifier:(id)specifier;
- (void)setLandmarkPoints65Data:(id)data originatingRequestSpecifier:(id)specifier;
- (void)setLandmarkPointsData:(id)data originatingRequestSpecifier:(id)specifier;
- (void)setLegacyFaceCore:(id)core;
- (void)setPoseData:(id)data originatingRequestSpecifier:(id)specifier;
@end

@implementation VNFaceObservation

- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)specifier error:(id *)error
{
  specifierCopy = specifier;
  v7 = [specifierCopy requestClassAndReturnError:error];
  if (v7)
  {
    if (v7 == objc_opt_class())
    {
      faceprint = [(VNFaceObservation *)self faceprint];
      if (!faceprint)
      {
        faceTorsoprint = [(VNFaceObservation *)self faceTorsoprint];
        faceprint = [faceTorsoprint faceprint];
      }

      v11 = _validatedEntityPrintOriginatingRequestSpecifierCompatibility(self, @"faceprint", faceprint, specifierCopy, error);
    }

    else
    {
      if (v7 != objc_opt_class())
      {
        v13.receiver = self;
        v13.super_class = VNFaceObservation;
        v8 = [(VNObservation *)&v13 VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:specifierCopy error:error];
        goto LABEL_11;
      }

      faceprint = [(VNFaceObservation *)self torsoprint];
      v11 = _validatedEntityPrintOriginatingRequestSpecifierCompatibility(self, @"torsoprint", faceprint, specifierCopy, error);
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

- (id)VNPersonsModelFaceprintWithRequestRevision:(unint64_t)revision error:(id *)error
{
  faceprint = [(VNFaceObservation *)self faceprint];
  if (faceprint || (-[VNFaceObservation faceTorsoprint](self, "faceTorsoprint"), v8 = objc_claimAutoreleasedReturnValue(), [v8 faceprint], faceprint = objc_claimAutoreleasedReturnValue(), v8, faceprint))
  {
    if (!revision || [faceprint requestRevision] == revision)
    {
      faceprint = faceprint;
      v9 = faceprint;
      goto LABEL_13;
    }

    if (error)
    {
      v10 = [VNError errorWithCode:14 message:@"incompatible faceprint revision"];
LABEL_10:
      v9 = 0;
      *error = v10;
      goto LABEL_13;
    }
  }

  else
  {
    if (error)
    {
      v10 = [VNError errorForInvalidOperationWithLocalizedDescription:@"faceprint is not available from the observation"];
      faceprint = 0;
      goto LABEL_10;
    }

    faceprint = 0;
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
  roll = [(VNFaceObservation *)self roll];
  [roll doubleValue];
  v5 = v4;

  if (fabs(v5) > 0.541052068)
  {
    return 0;
  }

  pitch = [(VNFaceObservation *)self pitch];
  [pitch doubleValue];
  v9 = v8;

  return fabs(v9) <= 0.436332313;
}

- (BOOL)getFaceEXIFOrientation:(int *)orientation error:(id *)error
{
  roll = [(VNFaceObservation *)self roll];
  [roll floatValue];
  *&v8 = (v7 * 180.0) / 3.1416;
  LOBYTE(error) = [VNFaceObservation _exifOrientationFromFaceRollAngle:orientation exifOrientation:error error:v8];

  return error;
}

- (void)setGaze:(id)gaze
{
  gazeCopy = gaze;
  v4 = [gazeCopy copy];
  gaze = self->_gaze;
  self->_gaze = v4;
}

- (void)setFaceScreenGaze:(id)gaze
{
  gazeCopy = gaze;
  v4 = [gazeCopy copy];
  faceScreenGaze = self->_faceScreenGaze;
  self->_faceScreenGaze = v4;
}

- (void)setLegacyFaceCore:(id)core
{
  coreCopy = core;
  v4 = [coreCopy copy];
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
        landmarks = [(VNFaceObservation *)self landmarks];
        v26 = v31;
        [(VNFaceObservation *)self _addPointsOfNamedRegion:v17 inLandmarks:landmarks toPath:Mutable applyingAffineTransform:&v26];
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v14);
  }

  v25.receiver = self;
  v25.super_class = VNFaceObservation;
  debugQuickLookObject = [(VNDetectedObjectObservation *)&v25 debugQuickLookObject];
  if (debugQuickLookObject)
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
    v22 = VNDebugImageRenderNormalizedCGPathOnImage(v20, debugQuickLookObject, v21);
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

- (void)_addPointsOfNamedRegion:(id)region inLandmarks:(id)landmarks toPath:(CGPath *)path applyingAffineTransform:(CGAffineTransform *)transform
{
  v13 = [landmarks valueForKey:region];
  if (v13)
  {
    pointCount = [v13 pointCount];
    if (pointCount)
    {
      normalizedPoints = [v13 normalizedPoints];
      pointsClassification = [v13 pointsClassification];
      v11 = pointsClassification;
      if ((pointsClassification - 1) >= 2)
      {
        if (!pointsClassification)
        {
          p_y = &normalizedPoints->y;
          do
          {
            CGPathMoveToPoint(path, transform, *(p_y - 1), *p_y);
            CGPathAddLineToPoint(path, transform, *(p_y - 1), *p_y);
            p_y += 2;
            --pointCount;
          }

          while (pointCount);
        }
      }

      else
      {
        CGPathMoveToPoint(path, transform, normalizedPoints->x, normalizedPoints->y);
        CGPathAddLines(path, transform, normalizedPoints, pointCount);
        if (v11 == 2)
        {
          CGPathAddLineToPoint(path, transform, normalizedPoints->x, normalizedPoints->y);
          CGPathCloseSubpath(path);
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

  faceId = [(VNFaceObservation *)self faceId];
  if (faceId)
  {
    [v3 appendFormat:@" ID=%lu", faceId];
  }

  landmarks = [(VNFaceObservation *)self landmarks];
  v7 = landmarks;
  if (landmarks)
  {
    constellation = [landmarks constellation];
    v9 = @"VNRequestFaceLandmarksConstellationNotDefined";
    if (constellation == 1)
    {
      v9 = @"VNRequestFaceLandmarksConstellation65Points";
    }

    if (constellation == 2)
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
  landmarkPoints = [(VNFaceObservation *)self landmarkPoints];

  if (landmarkPoints)
  {
    return self->_landmarkScore;
  }

  else
  {
    return -3.4028e38;
  }
}

- (void)setLandmark3DPointsData:(id)data originatingRequestSpecifier:(id)specifier
{
  dataCopy = data;
  specifierCopy = specifier;
  v7 = [dataCopy copy];
  landmarkPoints3d = self->_landmarkPoints3d;
  self->_landmarkPoints3d = v7;

  landmarks3DOriginatingRequestSpecifier = self->_landmarks3DOriginatingRequestSpecifier;
  self->_landmarks3DOriginatingRequestSpecifier = specifierCopy;
}

- (void)setLandmarkPoints65Data:(id)data originatingRequestSpecifier:(id)specifier
{
  dataCopy = data;
  specifierCopy = specifier;
  v7 = [dataCopy copy];
  landmarkPoints65 = self->_landmarkPoints65;
  self->_landmarkPoints65 = v7;

  objc_storeStrong(&self->_landmarkPoints, self->_landmarkPoints65);
  landmarksOriginatingRequestSpecifier = self->_landmarksOriginatingRequestSpecifier;
  self->_landmarksOriginatingRequestSpecifier = specifierCopy;
}

- (void)setLandmarkPointsData:(id)data originatingRequestSpecifier:(id)specifier
{
  dataCopy = data;
  specifierCopy = specifier;
  v7 = [dataCopy copy];
  landmarkPoints = self->_landmarkPoints;
  self->_landmarkPoints = v7;

  landmarksOriginatingRequestSpecifier = self->_landmarksOriginatingRequestSpecifier;
  self->_landmarksOriginatingRequestSpecifier = specifierCopy;
}

- (void)setFaceCaptureQuality:(float)quality originatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  *&v7 = quality;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  faceCaptureQuality = self->_faceCaptureQuality;
  self->_faceCaptureQuality = v8;

  faceCaptureQualityOriginatingRequestSpecifier = self->_faceCaptureQualityOriginatingRequestSpecifier;
  self->_faceCaptureQualityOriginatingRequestSpecifier = specifierCopy;
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

- (BOOL)getComputedRectifyingTransform:(CGAffineTransform *)transform
{
  v83 = *MEMORY[0x1E69E9840];
  landmarkPoints65 = self->_landmarkPoints65;
  if (landmarkPoints65)
  {
    v5 = landmarkPoints65;
    v6 = v5;
    if (!transform)
    {
LABEL_42:

      return transform;
    }

    bytes = [(NSData *)v5 bytes];
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
      v12 = (bytes + 4);
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
        *&transform->a = *&v53.a;
        *&transform->c = v29;
        *&transform->tx = v28;
        LOBYTE(transform) = 1;
        goto LABEL_42;
      }

LABEL_41:
      free(v8);
      v36 = 0;
      free(v37);
      LOBYTE(transform) = 0;
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

  LOBYTE(transform) = 0;
  return transform;
}

- (double)poseQuaternion
{
  if (self[47])
  {
    [self pose];
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

- (void)setPoseData:(id)data originatingRequestSpecifier:(id)specifier
{
  dataCopy = data;
  specifierCopy = specifier;
  v7 = [dataCopy copy];
  poseData = self->_poseData;
  self->_poseData = v7;

  poseOriginatingRequestSpecifier = self->_poseOriginatingRequestSpecifier;
  self->_poseOriginatingRequestSpecifier = specifierCopy;
}

- (double)pose
{
  v1 = *MEMORY[0x1E69E9B18];
  v2 = *(self + 376);
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
    landmarkPoints3d = [(VNFaceObservation *)self landmarkPoints3d];
    if (landmarkPoints3d)
    {
      v4 = [VNFaceLandmarks3D alloc];
      landmarks3DOriginatingRequestSpecifier = [(VNFaceObservation *)self landmarks3DOriginatingRequestSpecifier];
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
      v27 = [(VNFaceLandmarks3D *)v4 initWithOriginatingRequestSpecifier:landmarks3DOriginatingRequestSpecifier pointsData:landmarkPoints3d pointCount:63 userFacingBBox:v7 alignedBBox:v9 landmarkScore:v11, v13, v23, v24, v25, v26, v31];
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
    landmarkPoints65 = [(VNFaceObservation *)self landmarkPoints65];
    if (landmarkPoints65)
    {
      v4 = [VNFaceLandmarks2D alloc];
      landmarksOriginatingRequestSpecifier = [(VNFaceObservation *)self landmarksOriginatingRequestSpecifier];
      v6 = [landmarkPoints65 length];
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
      v28 = [(VNFaceLandmarks2D *)v4 initWithOriginatingRequestSpecifier:landmarksOriginatingRequestSpecifier pointsData:landmarkPoints65 pointCount:v6 >> 3 constellation:1 precisionEstimatesPerPoint:0 userFacingBBox:v8 alignedBBox:v10 landmarkScore:v12, v14, v24, v25, v26, v27, v32];
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
    landmarkPoints = [(VNFaceObservation *)self landmarkPoints];
    if (landmarkPoints)
    {
      v4 = [VNFaceLandmarks2D alloc];
      landmarksOriginatingRequestSpecifier = [(VNFaceObservation *)self landmarksOriginatingRequestSpecifier];
      v6 = [landmarkPoints length];
      landmarksConstellation = [(VNFaceObservation *)self landmarksConstellation];
      landmarkPrecisionEstimatesPerPoint = [(VNFaceObservation *)self landmarkPrecisionEstimatesPerPoint];
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
      v30 = [(VNFaceLandmarks2D *)v4 initWithOriginatingRequestSpecifier:landmarksOriginatingRequestSpecifier pointsData:landmarkPoints pointCount:v6 >> 3 constellation:landmarksConstellation precisionEstimatesPerPoint:landmarkPrecisionEstimatesPerPoint userFacingBBox:v10 alignedBBox:v12 landmarkScore:v14, v16, v26, v27, v28, v29, v34];
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
  vn_cloneObject = [(VNDetectedObjectObservation *)&v54 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSData *)self->_alignedMeanShape copy];
    v5 = *(vn_cloneObject + 440);
    *(vn_cloneObject + 440) = v4;

    v6 = [(NSData *)self->_landmarkPoints copy];
    v7 = *(vn_cloneObject + 336);
    *(vn_cloneObject + 336) = v6;

    v8 = [(NSData *)self->_landmarkPoints65 copy];
    v9 = *(vn_cloneObject + 344);
    *(vn_cloneObject + 344) = v8;

    *(vn_cloneObject + 352) = self->_landmarksConstellation;
    v10 = [(NSArray *)self->_landmarkPrecisionEstimatesPerPoint copy];
    v11 = *(vn_cloneObject + 360);
    *(vn_cloneObject + 360) = v10;

    v12 = [(NSData *)self->_landmarkPoints3d copy];
    v13 = *(vn_cloneObject + 368);
    *(vn_cloneObject + 368) = v12;

    v14 = [(NSData *)self->_poseData copy];
    v15 = *(vn_cloneObject + 376);
    *(vn_cloneObject + 376) = v14;

    v16 = [(VNRequestSpecifier *)self->_poseOriginatingRequestSpecifier copy];
    v17 = *(vn_cloneObject + 384);
    *(vn_cloneObject + 384) = v16;

    v18 = [(NSDictionary *)self->_expressionsAndScores copy];
    v19 = *(vn_cloneObject + 272);
    *(vn_cloneObject + 272) = v18;

    v20 = [(VNFaceprint *)self->_faceprint copy];
    v21 = *(vn_cloneObject + 224);
    *(vn_cloneObject + 224) = v20;

    v22 = [(VNTorsoprint *)self->_torsoprint copy];
    v23 = *(vn_cloneObject + 232);
    *(vn_cloneObject + 232) = v22;

    v24 = [(VNFaceTorsoprint *)self->_faceTorsoprint copy];
    v25 = *(vn_cloneObject + 240);
    *(vn_cloneObject + 240) = v24;

    v26 = [(VNFaceRegionMap *)self->_faceRegionMap copy];
    v27 = *(vn_cloneObject + 208);
    *(vn_cloneObject + 208) = v26;

    v28 = [(VNFaceSegments *)self->_faceSegments copy];
    v29 = *(vn_cloneObject + 248);
    *(vn_cloneObject + 248) = v28;

    size = self->_unalignedBoundingBox.size;
    *(vn_cloneObject + 304) = self->_unalignedBoundingBox.origin;
    *(vn_cloneObject + 320) = size;
    *(vn_cloneObject + 408) = self->_boundingBoxAligned;
    *(vn_cloneObject + 288) = self->_alignedBoundingBox;
    *(vn_cloneObject + 412) = self->_alignedRotationAngle;
    v31 = [(NSNumber *)self->_roll copy];
    v32 = *(vn_cloneObject + 416);
    *(vn_cloneObject + 416) = v31;

    v33 = [(NSNumber *)self->_yaw copy];
    v34 = *(vn_cloneObject + 424);
    *(vn_cloneObject + 424) = v33;

    v35 = [(NSNumber *)self->_pitch copy];
    v36 = *(vn_cloneObject + 432);
    *(vn_cloneObject + 432) = v35;

    *(vn_cloneObject + 256) = self->_landmarkScore;
    *(vn_cloneObject + 260) = self->_isBlinking;
    *(vn_cloneObject + 264) = self->_blinkScore;
    *(vn_cloneObject + 400) = self->_faceId;
    *(vn_cloneObject + 392) = self->_faceIdConfidence;
    v37 = [(NSNumber *)self->_faceCaptureQuality copy];
    v38 = *(vn_cloneObject + 448);
    *(vn_cloneObject + 448) = v37;

    v39 = [(VNRequestSpecifier *)self->_faceCaptureQualityOriginatingRequestSpecifier copy];
    v40 = *(vn_cloneObject + 456);
    *(vn_cloneObject + 456) = v39;

    *(vn_cloneObject + 280) = self->_faceJunkinessIndex;
    *(vn_cloneObject + 284) = self->_faceOrientationIndex;
    v41 = [(VNRequestSpecifier *)self->_landmarksOriginatingRequestSpecifier copy];
    v42 = *(vn_cloneObject + 464);
    *(vn_cloneObject + 464) = v41;

    v43 = [(VNRequestSpecifier *)self->_landmarks3DOriginatingRequestSpecifier copy];
    v44 = *(vn_cloneObject + 472);
    *(vn_cloneObject + 472) = v43;

    v45 = [(VNFaceLegacyFaceCore *)self->_legacyFaceCore copy];
    v46 = *(vn_cloneObject + 480);
    *(vn_cloneObject + 480) = v45;

    v47 = [(VNFaceGaze *)self->_gaze copy];
    v48 = *(vn_cloneObject + 488);
    *(vn_cloneObject + 488) = v47;

    v49 = [(VNFaceScreenGaze *)self->_faceScreenGaze copy];
    v50 = *(vn_cloneObject + 496);
    *(vn_cloneObject + 496) = v49;

    v51 = [(VNFaceAttributes *)self->_faceAttributes copy];
    v52 = *(vn_cloneObject + 216);
    *(vn_cloneObject + 216) = v51;
  }

  return vn_cloneObject;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    v98.receiver = self;
    v98.super_class = VNFaceObservation;
    if ([(VNDetectedObjectObservation *)&v98 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
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
            faceScreenGaze = [(VNFaceObservation *)self faceScreenGaze];
            faceScreenGaze2 = [(VNFaceObservation *)v5 faceScreenGaze];
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
  landmarkPoints = [(VNFaceObservation *)self landmarkPoints];
  v13 = [landmarkPoints hash];

  landmarkPoints65 = [(VNFaceObservation *)self landmarkPoints65];
  v15 = [landmarkPoints65 hash];

  landmarksConstellation = [(VNFaceObservation *)self landmarksConstellation];
  landmarkPrecisionEstimatesPerPoint = [(VNFaceObservation *)self landmarkPrecisionEstimatesPerPoint];
  v18 = [landmarkPrecisionEstimatesPerPoint hash];

  landmarkPoints3d = [(VNFaceObservation *)self landmarkPoints3d];
  v20 = [landmarkPoints3d hash];

  poseData = [(VNFaceObservation *)self poseData];
  v22 = [poseData hash];

  poseOriginatingRequestSpecifier = [(VNFaceObservation *)self poseOriginatingRequestSpecifier];
  v24 = [poseOriginatingRequestSpecifier hash];

  expressionsAndScores = [(VNFaceObservation *)self expressionsAndScores];
  v81 = [expressionsAndScores hash];

  faceId = [(VNFaceObservation *)self faceId];
  [(VNFaceObservation *)self faceIdConfidence];
  v27 = v26;
  faceprint = [(VNFaceObservation *)self faceprint];
  v79 = [faceprint hash];

  torsoprint = [(VNFaceObservation *)self torsoprint];
  v78 = [torsoprint hash];

  faceTorsoprint = [(VNFaceObservation *)self faceTorsoprint];
  v77 = [faceTorsoprint hash];

  isBoundingBoxAligned = [(VNFaceObservation *)self isBoundingBoxAligned];
  [(VNFaceObservation *)self alignedRotationAngle];
  v32 = v31;
  faceRegionMap = [(VNFaceObservation *)self faceRegionMap];
  v75 = [faceRegionMap hash];

  faceAttributes = [(VNFaceObservation *)self faceAttributes];
  v74 = [faceAttributes hash];

  faceSegments = [(VNFaceObservation *)self faceSegments];
  v73 = [faceSegments hash];
  v72 = v9;

  isBlinking = [(VNFaceObservation *)self isBlinking];
  alignedMeanShape = [(VNFaceObservation *)self alignedMeanShape];
  v70 = [alignedMeanShape hash];
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
  landmarksOriginatingRequestSpecifier = [(VNFaceObservation *)self landmarksOriginatingRequestSpecifier];
  v46 = [landmarksOriginatingRequestSpecifier hash];
  v47 = v13;

  landmarks3DOriginatingRequestSpecifier = [(VNFaceObservation *)self landmarks3DOriginatingRequestSpecifier];
  v49 = [landmarks3DOriginatingRequestSpecifier hash];

  gaze = [(VNFaceObservation *)self gaze];
  v51 = [gaze hash];

  faceScreenGaze = [(VNFaceObservation *)self faceScreenGaze];
  v53 = [faceScreenGaze hash];
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

  v65 = v53 ^ __ROR8__(v51 ^ __ROR8__(v49 ^ __ROR8__(v46 ^ __ROR8__(v54 ^ __ROR8__(v55 ^ __ROR8__(v56 ^ __ROR8__(v70 ^ __ROR8__(isBlinking ^ __ROR8__(v73 ^ __ROR8__(v74 ^ __ROR8__(v75 ^ __ROR8__(v57 ^ __ROR8__(isBoundingBoxAligned ^ __ROR8__(v77 ^ __ROR8__(v78 ^ __ROR8__(v79 ^ __ROR8__(v58 ^ __ROR8__(faceId ^ __ROR8__(v81 ^ __ROR8__(v67 ^ __ROR8__(v68 ^ __ROR8__(v69 ^ __ROR8__(v37 ^ __ROR8__(landmarksConstellation ^ __ROR8__(v38 ^ __ROR8__(v47 ^ __ROR8__(v64 ^ __ROR8__(v63, 51) ^ __ROR8__(v3, 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51);

  return v65;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = VNFaceObservation;
  [(VNDetectedObjectObservation *)&v17 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNFaceObservation"];
  *&v5 = self->_alignedBoundingBox.origin.x;
  [coderCopy encodeFloat:@"alignedBBX" forKey:v5];
  *&v6 = self->_alignedBoundingBox.origin.y;
  [coderCopy encodeFloat:@"alignedBBY" forKey:v6];
  *&v7 = self->_alignedBoundingBox.size.width;
  [coderCopy encodeFloat:@"alignedBBW" forKey:v7];
  *&v8 = self->_alignedBoundingBox.size.height;
  [coderCopy encodeFloat:@"alignedBBH" forKey:v8];
  [coderCopy encodeDouble:@"unalignedBBXAsDouble" forKey:self->_unalignedBoundingBox.origin.x];
  [coderCopy encodeDouble:@"unalignedBBYAsDouble" forKey:self->_unalignedBoundingBox.origin.y];
  [coderCopy encodeDouble:@"unalignedBBWAsDouble" forKey:self->_unalignedBoundingBox.size.width];
  [coderCopy encodeDouble:@"unalignedBBHAsDouble" forKey:self->_unalignedBoundingBox.size.height];
  [coderCopy encodeObject:self->_landmarkPoints forKey:@"landmarks"];
  v9 = self->_landmarkPoints;
  v10 = VisionCoreEqualOrNilObjects();

  if ((v10 & 1) == 0)
  {
    [coderCopy encodeObject:self->_landmarkPoints65 forKey:@"landmarks65"];
  }

  [coderCopy encodeObject:self->_landmarkPrecisionEstimatesPerPoint forKey:@"precisionEstimates"];
  [coderCopy encodeInteger:self->_landmarksConstellation forKey:@"landmarksConstellation"];
  [coderCopy encodeObject:self->_landmarkPoints3d forKey:@"landmarks3D"];
  [coderCopy encodeObject:self->_poseData forKey:@"pose"];
  [coderCopy encodeObject:self->_poseOriginatingRequestSpecifier forKey:@"poseOrigReq"];
  [coderCopy encodeObject:self->_expressionsAndScores forKey:@"expressions"];
  *&v11 = self->_faceIdConfidence;
  [coderCopy encodeFloat:@"faceIDConfidence" forKey:v11];
  [coderCopy encodeInteger:self->_faceId forKey:@"faceID"];
  [coderCopy encodeObject:self->_faceprint forKey:@"faceprint"];
  [coderCopy encodeObject:self->_torsoprint forKey:@"torsoprint"];
  [coderCopy encodeObject:self->_faceTorsoprint forKey:@"faceTorsoprint"];
  [coderCopy encodeBool:self->_boundingBoxAligned forKey:@"hasAlignedBBox"];
  *&v12 = self->_alignedRotationAngle;
  [coderCopy encodeFloat:@"alignedRotAngle" forKey:v12];
  [coderCopy encodeObject:self->_roll forKey:@"roll"];
  [coderCopy encodeObject:self->_yaw forKey:@"yaw"];
  [coderCopy encodeObject:self->_pitch forKey:@"pitch"];
  [coderCopy encodeObject:self->_faceRegionMap forKey:@"faceRegionMap"];
  [coderCopy encodeObject:self->_faceAttributes forKey:@"faceAttributes"];
  [coderCopy encodeObject:self->_faceSegments forKey:@"faceSmntcSegments"];
  [coderCopy encodeBool:self->_isBlinking forKey:@"blinking"];
  [coderCopy encodeObject:self->_alignedMeanShape forKey:@"alignedMeanShape"];
  *&v13 = self->_blinkScore;
  [coderCopy encodeFloat:@"blinkScore" forKey:v13];
  *&v14 = self->_landmarkScore;
  [coderCopy encodeFloat:@"landmarksScore" forKey:v14];
  [coderCopy encodeObject:self->_faceCaptureQuality forKey:@"faceCaptureQuality"];
  [coderCopy encodeObject:self->_faceCaptureQualityOriginatingRequestSpecifier forKey:@"faceCQOReq"];
  *&v15 = self->_faceJunkinessIndex;
  [coderCopy encodeFloat:@"faceJunkinessIndex" forKey:v15];
  *&v16 = self->_faceOrientationIndex;
  [coderCopy encodeFloat:@"faceOrientationIndex" forKey:v16];
  [coderCopy encodeObject:self->_landmarksOriginatingRequestSpecifier forKey:@"faceLMOReq"];
  [coderCopy encodeObject:self->_landmarks3DOriginatingRequestSpecifier forKey:@"faceLM3DOReq"];
  [coderCopy encodeObject:self->_gaze forKey:@"gaze"];
  [coderCopy encodeObject:self->_faceScreenGaze forKey:@"screengaze"];
}

- (VNFaceObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v104.receiver = self;
  v104.super_class = VNFaceObservation;
  v5 = [(VNDetectedObjectObservation *)&v104 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  if ([coderCopy vn_decodeCodingVersionForKey:@"VNFaceObservation"])
  {
    goto LABEL_22;
  }

  [coderCopy decodeFloatForKey:@"alignedBBX"];
  v5->_alignedBoundingBox.origin.x = v9;
  [coderCopy decodeFloatForKey:@"alignedBBY"];
  v5->_alignedBoundingBox.origin.y = v10;
  [coderCopy decodeFloatForKey:@"alignedBBW"];
  v5->_alignedBoundingBox.size.width = v11;
  [coderCopy decodeFloatForKey:@"alignedBBH"];
  v5->_alignedBoundingBox.size.height = v12;
  if ([coderCopy containsValueForKey:@"unalignedBBX"] && objc_msgSend(coderCopy, "containsValueForKey:", @"unalignedBBY") && objc_msgSend(coderCopy, "containsValueForKey:", @"unalignedBBW"))
  {
    v13 = [coderCopy containsValueForKey:@"unalignedBBH"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [coderCopy containsValueForKey:@"unalignedBBXAsDouble"];
  if (v14)
  {
    v14 = [coderCopy containsValueForKey:@"unalignedBBYAsDouble"];
    if (v14)
    {
      v14 = [coderCopy containsValueForKey:@"unalignedBBWAsDouble"];
      if (v14)
      {
        v14 = [coderCopy containsValueForKey:@"unalignedBBHAsDouble"];
      }
    }
  }

  if (v13)
  {
    [coderCopy decodeFloatForKey:@"unalignedBBX"];
    p_unalignedBoundingBox = &v5->_unalignedBoundingBox;
    v5->_unalignedBoundingBox.origin.x = v21;
    [coderCopy decodeFloatForKey:@"unalignedBBY"];
    v5->_unalignedBoundingBox.origin.y = v23;
    [coderCopy decodeFloatForKey:@"unalignedBBW"];
    v5->_unalignedBoundingBox.size.width = v24;
    [coderCopy decodeFloatForKey:@"unalignedBBH"];
    v26 = v25;
  }

  else if (v14)
  {
    [coderCopy decodeDoubleForKey:@"unalignedBBXAsDouble"];
    p_unalignedBoundingBox = &v5->_unalignedBoundingBox;
    v5->_unalignedBoundingBox.origin.x = v27;
    [coderCopy decodeDoubleForKey:@"unalignedBBYAsDouble"];
    v5->_unalignedBoundingBox.origin.y = v28;
    [coderCopy decodeDoubleForKey:@"unalignedBBWAsDouble"];
    v5->_unalignedBoundingBox.size.width = v29;
    [coderCopy decodeDoubleForKey:@"unalignedBBHAsDouble"];
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
  v34 = [coderCopy decodeObjectOfClass:v6 forKey:@"landmarks"];
  landmarkPoints = v5->_landmarkPoints;
  v5->_landmarkPoints = v34;

  v36 = [coderCopy decodeObjectOfClass:v6 forKey:@"landmarks65"];
  landmarkPoints65 = v5->_landmarkPoints65;
  v5->_landmarkPoints65 = v36;

  if (!v5->_landmarkPoints65)
  {
    objc_storeStrong(&v5->_landmarkPoints65, v5->_landmarkPoints);
  }

  v38 = [coderCopy decodeArrayOfObjectsOfClass:v7 forKey:@"precisionEstimates"];
  landmarkPrecisionEstimatesPerPoint = v5->_landmarkPrecisionEstimatesPerPoint;
  v5->_landmarkPrecisionEstimatesPerPoint = v38;

  v40 = [coderCopy decodeIntegerForKey:@"landmarksConstellation"];
  v5->_landmarksConstellation = v40;
  if (v40 < 3)
  {
    v45 = [coderCopy decodeObjectOfClass:v6 forKey:@"landmarks3D"];
    landmarkPoints3d = v5->_landmarkPoints3d;
    v5->_landmarkPoints3d = v45;

    v47 = [coderCopy decodeObjectOfClass:v6 forKey:@"pose"];
    poseData = v5->_poseData;
    v5->_poseData = v47;

    v49 = v5->_poseData;
    if (v49)
    {
      if ([(NSData *)v49 length]!= 48)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"invalid pose data"];
      }

      if ([coderCopy containsValueForKey:@"poseOrigReq"])
      {
        v50 = [coderCopy decodeObjectOfClass:v8 forKey:@"poseOrigReq"];
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
          [coderCopy failWithError:v53];

          goto LABEL_22;
        }
      }
    }

    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), v7, 0}];
    v58 = [coderCopy decodeObjectOfClasses:v57 forKey:@"expressions"];
    expressionsAndScores = v5->_expressionsAndScores;
    v5->_expressionsAndScores = v58;

    [coderCopy decodeFloatForKey:@"faceIDConfidence"];
    v5->_faceIdConfidence = v60;
    v5->_faceId = [coderCopy decodeIntegerForKey:@"faceID"];
    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceprint"];
    faceprint = v5->_faceprint;
    v5->_faceprint = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"torsoprint"];
    torsoprint = v5->_torsoprint;
    v5->_torsoprint = v63;

    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceTorsoprint"];
    faceTorsoprint = v5->_faceTorsoprint;
    v5->_faceTorsoprint = v65;

    v5->_boundingBoxAligned = [coderCopy decodeBoolForKey:@"hasAlignedBBox"];
    [coderCopy decodeFloatForKey:@"alignedRotAngle"];
    v5->_alignedRotationAngle = v67;
    v68 = [coderCopy decodeObjectOfClass:v7 forKey:@"roll"];
    roll = v5->_roll;
    v5->_roll = v68;

    v70 = [coderCopy decodeObjectOfClass:v7 forKey:@"yaw"];
    yaw = v5->_yaw;
    v5->_yaw = v70;

    v72 = [coderCopy decodeObjectOfClass:v7 forKey:@"pitch"];
    pitch = v5->_pitch;
    v5->_pitch = v72;

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceRegionMap"];
    faceRegionMap = v5->_faceRegionMap;
    v5->_faceRegionMap = v74;

    v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceAttributes"];
    faceAttributes = v5->_faceAttributes;
    v5->_faceAttributes = v76;

    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceSmntcSegments"];
    faceSegments = v5->_faceSegments;
    v5->_faceSegments = v78;

    v5->_isBlinking = [coderCopy decodeBoolForKey:@"blinking"];
    [coderCopy decodeFloatForKey:@"blinkScore"];
    v5->_blinkScore = v80;
    v81 = [coderCopy decodeObjectOfClass:v6 forKey:@"alignedMeanShape"];
    alignedMeanShape = v5->_alignedMeanShape;
    v5->_alignedMeanShape = v81;

    [coderCopy decodeFloatForKey:@"landmarksScore"];
    v5->_landmarkScore = v83;
    [coderCopy decodeFloatForKey:@"faceJunkinessIndex"];
    v5->_faceJunkinessIndex = v84;
    v85 = [coderCopy decodeObjectOfClass:v7 forKey:@"faceCaptureQuality"];
    faceCaptureQuality = v5->_faceCaptureQuality;
    v5->_faceCaptureQuality = v85;

    v87 = [coderCopy decodeObjectOfClass:v8 forKey:@"faceCQOReq"];
    faceCaptureQualityOriginatingRequestSpecifier = v5->_faceCaptureQualityOriginatingRequestSpecifier;
    v5->_faceCaptureQualityOriginatingRequestSpecifier = v87;

    [coderCopy decodeFloatForKey:@"faceOrientationIndex"];
    v5->_faceOrientationIndex = v89;
    if ([coderCopy containsValueForKey:@"faceLMOReq"])
    {
      v90 = [coderCopy decodeObjectOfClass:v8 forKey:@"faceLMOReq"];
      landmarksOriginatingRequestSpecifier = v5->_landmarksOriginatingRequestSpecifier;
      v5->_landmarksOriginatingRequestSpecifier = v90;
    }

    else
    {
      if (![coderCopy containsValueForKey:@"faceLMRequestRev"])
      {
        goto LABEL_37;
      }

      v102 = 0;
      v91 = +[VNRequestSpecifier specifierForRequestClass:revision:error:](VNRequestSpecifier, "specifierForRequestClass:revision:error:", objc_opt_class(), [coderCopy decodeIntegerForKey:@"faceLMRequestRev"], &v102);
      landmarksOriginatingRequestSpecifier = v102;
      v92 = v5->_landmarksOriginatingRequestSpecifier;
      v5->_landmarksOriginatingRequestSpecifier = v91;

      if (!v5->_landmarksOriginatingRequestSpecifier)
      {
        [coderCopy failWithError:landmarksOriginatingRequestSpecifier];
        goto LABEL_21;
      }
    }

LABEL_37:
    if ([coderCopy containsValueForKey:@"faceLM3DOReq"])
    {
      v93 = [coderCopy decodeObjectOfClass:v8 forKey:@"faceLM3DOReq"];
      landmarksOriginatingRequestSpecifier = v5->_landmarks3DOriginatingRequestSpecifier;
      v5->_landmarks3DOriginatingRequestSpecifier = v93;
    }

    else
    {
      if (![coderCopy containsValueForKey:@"faceLM3DRequestRev"])
      {
LABEL_42:
        v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gaze"];
        gaze = v5->_gaze;
        v5->_gaze = v96;

        v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screengaze"];
        faceScreenGaze = v5->_faceScreenGaze;
        v5->_faceScreenGaze = v98;

        [(VNFaceObservation *)v5 _initLocks];
        v43 = v5;
        goto LABEL_23;
      }

      v101 = 0;
      v94 = +[VNRequestSpecifier specifierForRequestClass:revision:error:](VNRequestSpecifier, "specifierForRequestClass:revision:error:", objc_opt_class(), [coderCopy decodeIntegerForKey:@"faceLM3DRequestRev"], &v101);
      landmarksOriginatingRequestSpecifier = v101;
      landmarks3DOriginatingRequestSpecifier = v5->_landmarks3DOriginatingRequestSpecifier;
      v5->_landmarks3DOriginatingRequestSpecifier = v94;

      if (!v5->_landmarks3DOriginatingRequestSpecifier)
      {
        [coderCopy failWithError:landmarksOriginatingRequestSpecifier];
        goto LABEL_21;
      }
    }

    goto LABEL_42;
  }

  landmarksOriginatingRequestSpecifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when un-archiving landmarks constellation. Un-archived constellation is out of range: %lu", v5->_landmarksConstellation];
  v42 = [VNError errorForInternalErrorWithLocalizedDescription:landmarksOriginatingRequestSpecifier];
  [coderCopy failWithError:v42];

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

- (VNFaceObservation)initWithRequestRevision:(unint64_t)revision
{
  v7.receiver = self;
  v7.super_class = VNFaceObservation;
  v3 = [(VNObservation *)&v7 initWithRequestRevision:revision];
  v4 = v3;
  if (v3)
  {
    [(VNFaceObservation *)v3 _initLocks];
    v5 = v4;
  }

  return v4;
}

+ (uint64_t)computeYawPitchRollFromPoseMatrix:(__n128)matrix outputYaw:(__n128)yaw outputPitch:(uint64_t)pitch outputRoll:(uint64_t)roll
{
  v12 = 0;
  v13 = *MEMORY[0x1E69E9B18];
  v15 = *(MEMORY[0x1E69E9B18] + 16);
  v13.i32[0] = 1.0;
  v16 = *(MEMORY[0x1E69E9B18] + 32);
  v14 = *(MEMORY[0x1E69E9B18] + 48);
  v15.i32[1] = -1.0;
  v16.i32[2] = -1.0;
  v26[0] = self;
  v26[1] = a2;
  v26[2] = matrix;
  v26[3] = yaw;
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

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box alignedBoundingBox:(CGRect)boundingBox roll:(id)roll yaw:(id)yaw
{
  v7 = [self faceObservationWithRequestRevision:revision boundingBox:roll alignedBoundingBox:yaw roll:0 yaw:box.origin.x pitch:{box.origin.y, box.size.width, box.size.height, boundingBox.origin.x, boundingBox.origin.y, boundingBox.size.width, boundingBox.size.height}];

  return v7;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box alignedBoundingBox:(CGRect)boundingBox roll:(id)roll yaw:(id)yaw pitch:(id)pitch
{
  height = boundingBox.size.height;
  width = boundingBox.size.width;
  y = boundingBox.origin.y;
  x = boundingBox.origin.x;
  v14 = box.size.height;
  v15 = box.size.width;
  v16 = box.origin.y;
  v17 = box.origin.x;
  rollCopy = roll;
  yawCopy = yaw;
  pitchCopy = pitch;
  v22 = [objc_opt_class() faceObservationWithRequestRevision:revision boundingBox:v17 andAlignedBoundingBox:{v16, v15, v14, x, y, width, height}];
  [v22 setRoll:rollCopy];
  [v22 setYaw:yawCopy];
  [v22 setPitch:pitchCopy];

  return v22;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox roll:(NSNumber *)roll yaw:(NSNumber *)yaw
{
  v6 = [self faceObservationWithRequestRevision:requestRevision boundingBox:roll roll:yaw yaw:0 pitch:{boundingBox.origin.x, boundingBox.origin.y, boundingBox.size.width, boundingBox.size.height}];

  return v6;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box roll:(id)roll yaw:(id)yaw pitch:(id)pitch isBoundingBoxAligned:(BOOL)aligned alignedBoundingBox:(CGRect)boundingBox landmarks:(id)self0 landmarks65:(id)self1 landmarkScore:(float)self2 isBlinking:(BOOL)self3 blinkScore:(float)self4 faceOrientationIndex:(float)self5 faceJunkinessIndex:(float)self6
{
  alignedCopy = aligned;
  height = boundingBox.size.height;
  width = boundingBox.size.width;
  y = boundingBox.origin.y;
  x = boundingBox.origin.x;
  v24 = box.size.height;
  v25 = box.size.width;
  v26 = box.origin.y;
  v27 = box.origin.x;
  rollCopy = roll;
  yawCopy = yaw;
  pitchCopy = pitch;
  landmarksCopy = landmarks;
  landmarks65Copy = landmarks65;
  if (rollCopy)
  {
    [rollCopy floatValue];
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

    rollCopy = v36;
  }

LABEL_7:
  if (!yawCopy)
  {
    goto LABEL_13;
  }

  [yawCopy floatValue];
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

  yawCopy = v38;
LABEL_13:
  if (!pitchCopy)
  {
    goto LABEL_19;
  }

  [pitchCopy floatValue];
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

  pitchCopy = v40;
LABEL_19:
  v41 = [[self alloc] initWithRequestRevision:revision boundingBox:{v27, v26, v25, v24}];
  [v41 setUnalignedBoundingBox:{v27, v26, v25, v24}];
  [v41 setRoll:rollCopy];
  [v41 setYaw:yawCopy];
  [v41 setPitch:pitchCopy];
  if (alignedCopy)
  {
    [v41 setBoundingBoxAligned:1];
    *&v43 = x;
    *&v44 = y;
    *&v45 = height;
    *&v46 = width;
    [v41 setAlignedBoundingBox:{v43, v44, v45, v46}];
  }

  if (landmarks65Copy)
  {
    pointsData = [landmarks65Copy pointsData];
    originatingRequestSpecifier = [landmarks65Copy originatingRequestSpecifier];
    [v41 setLandmarkPoints65Data:pointsData originatingRequestSpecifier:originatingRequestSpecifier];
  }

  if (landmarksCopy)
  {
    pointsData2 = [landmarksCopy pointsData];
    originatingRequestSpecifier2 = [landmarksCopy originatingRequestSpecifier];
    [v41 setLandmarkPointsData:pointsData2 originatingRequestSpecifier:originatingRequestSpecifier2];

    [v41 setLandmarksConstellation:{objc_msgSend(landmarksCopy, "constellation")}];
    precisionEstimatesPerPoint = [landmarksCopy precisionEstimatesPerPoint];
    [v41 setLandmarkPrecisionEstimatesPerPoint:precisionEstimatesPerPoint];
  }

  *&v42 = score;
  [v41 setLandmarkScore:v42];
  [v41 setIsBlinking:blinking];
  *&v52 = blinkScore;
  [v41 setBlinkScore:v52];
  *&v53 = index;
  [v41 setFaceOrientationIndex:v53];
  *&v54 = junkinessIndex;
  [v41 setFaceJunkinessIndex:v54];

  return v41;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box roll:(id)roll yaw:(id)yaw pitch:(id)pitch isBoundingBoxAligned:(BOOL)aligned alignedBoundingBox:(CGRect)boundingBox landmarks:(id)self0 landmarks65:(id)self1 landmarkScore:(float)self2 isBlinking:(BOOL)self3 blinkScore:(float)self4
{
  LODWORD(v17) = 0;
  BYTE4(v16) = blinking;
  *&v16 = score;
  v14 = [self faceObservationWithRequestRevision:revision boundingBox:roll roll:yaw yaw:pitch pitch:aligned isBoundingBoxAligned:landmarks alignedBoundingBox:box.origin.x landmarks:box.origin.y landmarks65:box.size.width landmarkScore:box.size.height isBlinking:boundingBox.origin.x blinkScore:boundingBox.origin.y faceOrientationIndex:boundingBox.size.width faceJunkinessIndex:{boundingBox.size.height, landmarks65, v16, LODWORD(blinkScore), v17}];

  return v14;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox roll:(NSNumber *)roll yaw:(NSNumber *)yaw pitch:(NSNumber *)pitch
{
  LODWORD(v10) = 0;
  BYTE4(v9) = 0;
  LODWORD(v9) = 0;
  v7 = [self faceObservationWithRequestRevision:requestRevision boundingBox:roll roll:yaw yaw:pitch pitch:0 isBoundingBoxAligned:0 alignedBoundingBox:boundingBox.origin.x landmarks:boundingBox.origin.y landmarks65:boundingBox.size.width landmarkScore:boundingBox.size.height isBlinking:*MEMORY[0x1E695F050] blinkScore:*(MEMORY[0x1E695F050] + 8) faceOrientationIndex:*(MEMORY[0x1E695F050] + 16) faceJunkinessIndex:{*(MEMORY[0x1E695F050] + 24), 0, v9, 0, v10}];

  return v7;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box faceprint:(id)faceprint
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  faceprintCopy = faceprint;
  v12 = [[self alloc] initWithRequestRevision:revision boundingBox:{x, y, width, height}];
  [v12 setUnalignedBoundingBox:{x, y, width, height}];
  [v12 setFaceprint:faceprintCopy];

  return v12;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision unalignedBoundingBox:(CGRect)box alignedBoundingBox:(CGRect)boundingBox
{
  height = boundingBox.size.height;
  width = boundingBox.size.width;
  y = boundingBox.origin.y;
  x = boundingBox.origin.x;
  v9 = box.size.height;
  v10 = box.size.width;
  v11 = box.origin.y;
  v12 = box.origin.x;
  v13 = [[self alloc] initWithRequestRevision:revision boundingBox:{boundingBox.origin.x, boundingBox.origin.y, boundingBox.size.width, boundingBox.size.height}];
  [v13 setUnalignedBoundingBox:{v12, v11, v10, v9}];
  *&v14 = x;
  *&v15 = y;
  *&v16 = width;
  *&v17 = height;
  [v13 setAlignedBoundingBox:{v14, v15, v17, v16}];
  [v13 setBoundingBoxAligned:1];

  return v13;
}

+ (VNFaceObservation)faceObservationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box andAlignedBoundingBox:(CGRect)boundingBox
{
  height = boundingBox.size.height;
  width = boundingBox.size.width;
  y = boundingBox.origin.y;
  x = boundingBox.origin.x;
  v9 = box.size.height;
  v10 = box.size.width;
  v11 = box.origin.y;
  v12 = box.origin.x;
  v13 = [[self alloc] initWithRequestRevision:revision boundingBox:{box.origin.x, box.origin.y, box.size.width, box.size.height}];
  [v13 setUnalignedBoundingBox:{v12, v11, v10, v9}];
  *&v14 = x;
  *&v15 = y;
  *&v16 = width;
  *&v17 = height;
  [v13 setAlignedBoundingBox:{v14, v15, v17, v16}];
  [v13 setBoundingBoxAligned:1];

  return v13;
}

+ (VNFaceObservation)observationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___VNFaceObservation;
  v4 = objc_msgSendSuper2(&v6, sel_observationWithRequestRevision_boundingBox_, revision, box.origin.x, box.origin.y, box.size.width, box.size.height);
  [v4 boundingBox];
  [v4 setUnalignedBoundingBox:?];

  return v4;
}

+ (BOOL)_exifOrientationFromFaceRollAngle:(float)angle exifOrientation:(int *)orientation error:(id *)error
{
  if (orientation)
  {
    if (angle >= -45.0 && angle < 45.0)
    {
      result = 1;
      *orientation = 1;
      return result;
    }

    if (angle >= -135.0 && angle < -45.0)
    {
      v8 = 8;
      goto LABEL_19;
    }

    if (angle < -135.0 && angle >= -180.0 || angle >= 135.0 && angle < 180.0)
    {
      v8 = 3;
LABEL_19:
      *orientation = v8;
      return 1;
    }

    if (angle >= 45.0 && angle < 135.0)
    {
      v8 = 6;
      goto LABEL_19;
    }

    if (error)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      *error = [VNError errorForInvalidArgument:v12 named:@"face orientation"];
    }
  }

  else if (error)
  {
    v9 = [VNError errorWithCode:14 message:@"exifOrientation cannot be null"];
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

@end