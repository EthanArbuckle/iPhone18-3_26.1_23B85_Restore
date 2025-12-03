@interface VNFaceLegacyFaceCore
+ (void)_setFaceExpressionFeatureScoreIfDetected:(id)detected features:(id)features detectionKey:(id)key scoreKey:(id)scoreKey featureKey:(id)featureKey;
- (BOOL)isEqual:(id)equal;
- (CGPoint)faceCenter;
- (CGPoint)leftEye;
- (CGPoint)mouth;
- (CGPoint)rightEye;
- (CGRect)faceBoundingBox;
- (VNFaceLegacyFaceCore)initWithCoder:(id)coder;
- (VNFaceLegacyFaceCore)initWithFace:(id)face;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceLegacyFaceCore

- (CGPoint)mouth
{
  x = self->_mouth.x;
  y = self->_mouth.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)rightEye
{
  x = self->_rightEye.x;
  y = self->_rightEye.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)leftEye
{
  x = self->_leftEye.x;
  y = self->_leftEye.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)faceBoundingBox
{
  x = self->_faceBoundingBox.origin.x;
  y = self->_faceBoundingBox.origin.y;
  width = self->_faceBoundingBox.size.width;
  height = self->_faceBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)faceCenter
{
  x = self->_faceCenter.x;
  y = self->_faceCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v5 = equalCopy;
  profile = [(VNFaceLegacyFaceCore *)self profile];
  if (profile != [(VNFaceLegacyFaceCore *)v5 profile])
  {
    goto LABEL_6;
  }

  [(VNFaceLegacyFaceCore *)self faceSize];
  v8 = v7;
  [(VNFaceLegacyFaceCore *)v5 faceSize];
  if (v8 != v9)
  {
    goto LABEL_6;
  }

  [(VNFaceLegacyFaceCore *)self faceAngle];
  v11 = v10;
  [(VNFaceLegacyFaceCore *)v5 faceAngle];
  if (v11 != v12)
  {
    goto LABEL_6;
  }

  [(VNFaceLegacyFaceCore *)self faceCenter];
  v16 = v15;
  v18 = v17;
  [(VNFaceLegacyFaceCore *)v5 faceCenter];
  v13 = 0;
  if (v16 != v20 || v18 != v19)
  {
    goto LABEL_7;
  }

  [(VNFaceLegacyFaceCore *)self faceBoundingBox];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(VNFaceLegacyFaceCore *)v5 faceBoundingBox];
  v56.origin.x = v29;
  v56.origin.y = v30;
  v56.size.width = v31;
  v56.size.height = v32;
  v55.origin.x = v22;
  v55.origin.y = v24;
  v55.size.width = v26;
  v55.size.height = v28;
  if (!CGRectEqualToRect(v55, v56))
  {
    goto LABEL_6;
  }

  [(VNFaceLegacyFaceCore *)self leftEye];
  v34 = v33;
  v36 = v35;
  [(VNFaceLegacyFaceCore *)v5 leftEye];
  v13 = 0;
  if (v34 != v38)
  {
    goto LABEL_7;
  }

  if (v36 != v37)
  {
    goto LABEL_7;
  }

  [(VNFaceLegacyFaceCore *)self rightEye];
  v40 = v39;
  v42 = v41;
  [(VNFaceLegacyFaceCore *)v5 rightEye];
  v13 = 0;
  if (v40 != v44)
  {
    goto LABEL_7;
  }

  if (v42 != v43)
  {
    goto LABEL_7;
  }

  [(VNFaceLegacyFaceCore *)self mouth];
  v46 = v45;
  v48 = v47;
  [(VNFaceLegacyFaceCore *)v5 mouth];
  v13 = 0;
  if (v46 != v50 || v48 != v49)
  {
    goto LABEL_7;
  }

  trackID = [(VNFaceLegacyFaceCore *)self trackID];
  if (trackID == [(VNFaceLegacyFaceCore *)v5 trackID]&& (v52 = [(VNFaceLegacyFaceCore *)self trackDuration], v52 == [(VNFaceLegacyFaceCore *)v5 trackDuration]))
  {
    features = [(VNFaceLegacyFaceCore *)self features];
    features2 = [(VNFaceLegacyFaceCore *)v5 features];
    v13 = [features isEqual:features2];
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

LABEL_7:

LABEL_10:
  return v13;
}

- (VNFaceLegacyFaceCore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = VNFaceLegacyFaceCore;
  v5 = [(VNFaceLegacyFaceCore *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VNFaceLegacyFaceCore"];
    v7 = v6;
    if (v6 && ![v6 unsignedIntValue])
    {
      v5->_profile = [coderCopy decodeIntForKey:@"fcr_profile"];
      [coderCopy decodeFloatForKey:@"fcr_size"];
      v5->_faceSize = v9;
      [coderCopy decodeFloatForKey:@"fcr_angle"];
      v5->_faceAngle = v10;
      [coderCopy vn_decodePointForKey:@"fcr_center"];
      v5->_faceCenter.x = v11;
      v5->_faceCenter.y = v12;
      [coderCopy vn_decodeRectForKey:@"fcr_bbox"];
      v5->_faceBoundingBox.origin.x = v13;
      v5->_faceBoundingBox.origin.y = v14;
      v5->_faceBoundingBox.size.width = v15;
      v5->_faceBoundingBox.size.height = v16;
      [coderCopy vn_decodePointForKey:@"fcr_lefteye"];
      v5->_leftEye.x = v17;
      v5->_leftEye.y = v18;
      [coderCopy vn_decodePointForKey:@"fcr_righteye"];
      v5->_rightEye.x = v19;
      v5->_rightEye.y = v20;
      [coderCopy vn_decodePointForKey:@"fcr_mouth"];
      v5->_mouth.x = v21;
      v5->_mouth.y = v22;
      v5->_trackID = [coderCopy decodeIntForKey:@"fcr_trackid"];
      v5->_trackDuration = [coderCopy decodeIntForKey:@"fcr_trackduration"];
      if ([coderCopy containsValueForKey:@"fcr_features"])
      {
        if ([VNFaceLegacyFaceCore initWithCoder:]::ourFeaturesClassSetOnceToken != -1)
        {
          dispatch_once(&[VNFaceLegacyFaceCore initWithCoder:]::ourFeaturesClassSetOnceToken, &__block_literal_global_23404);
        }

        v23 = [coderCopy decodeObjectOfClasses:-[VNFaceLegacyFaceCore initWithCoder:]::ourFeaturesClassSet forKey:@"fcr_features"];
      }

      else
      {
        v23 = [objc_alloc(MEMORY[0x1E695DF20]) initWithCoder:coderCopy];
      }

      features = v5->_features;
      v5->_features = v23;

      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __38__VNFaceLegacyFaceCore_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  -[VNFaceLegacyFaceCore initWithCoder:]::ourFeaturesClassSet = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [coderCopy encodeObject:v4 forKey:@"VNFaceLegacyFaceCore"];

  [coderCopy encodeInt:-[VNFaceLegacyFaceCore profile](self forKey:{"profile"), @"fcr_profile"}];
  [(VNFaceLegacyFaceCore *)self faceSize];
  *&v5 = v5;
  [coderCopy encodeFloat:@"fcr_size" forKey:v5];
  [(VNFaceLegacyFaceCore *)self faceAngle];
  *&v6 = v6;
  [coderCopy encodeFloat:@"fcr_angle" forKey:v6];
  [(VNFaceLegacyFaceCore *)self faceCenter];
  [coderCopy vn_encodePoint:@"fcr_center" forKey:?];
  [(VNFaceLegacyFaceCore *)self faceBoundingBox];
  [coderCopy vn_encodeRect:@"fcr_bbox" forKey:?];
  [(VNFaceLegacyFaceCore *)self leftEye];
  [coderCopy vn_encodePoint:@"fcr_lefteye" forKey:?];
  [(VNFaceLegacyFaceCore *)self rightEye];
  [coderCopy vn_encodePoint:@"fcr_righteye" forKey:?];
  [(VNFaceLegacyFaceCore *)self mouth];
  [coderCopy vn_encodePoint:@"fcr_mouth" forKey:?];
  [coderCopy encodeInt:-[VNFaceLegacyFaceCore trackID](self forKey:{"trackID"), @"fcr_trackid"}];
  [coderCopy encodeInt:-[VNFaceLegacyFaceCore trackDuration](self forKey:{"trackDuration"), @"fcr_trackduration"}];
  features = [(VNFaceLegacyFaceCore *)self features];
  [coderCopy encodeObject:features forKey:@"fcr_features"];
}

- (VNFaceLegacyFaceCore)initWithFace:(id)face
{
  faceCopy = face;
  v29.receiver = self;
  v29.super_class = VNFaceLegacyFaceCore;
  v5 = [(VNFaceLegacyFaceCore *)&v29 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  faceType = [faceCopy faceType];
  if (faceType >= 3)
  {
    VNValidatedLog(4, @"VNFaceLegacyFaceCore:initWithFace: unsupported face profile\n", v7, v8, v9, v10, v11, v12, v26);
LABEL_6:
    v15 = 0;
    goto LABEL_9;
  }

  *(v5 + 1) = faceType;
  [faceCopy faceSize];
  *(v5 + 2) = v13;
  [faceCopy faceAngle];
  *(v5 + 3) = v14;
  if (faceCopy)
  {
    [faceCopy face];
    *(v5 + 56) = v26;
    [faceCopy face];
    *(v5 + 120) = v27;
    *(v5 + 136) = v28;
    [faceCopy leftEye];
    *(v5 + 72) = v26;
    [faceCopy rightEye];
    *(v5 + 88) = v26;
    [faceCopy mouth];
  }

  else
  {
    *(v5 + 120) = 0u;
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    *(v5 + 136) = 0u;
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    *(v5 + 11) = 0;
    *(v5 + 12) = 0;
    v26 = 0u;
  }

  *(v5 + 104) = v26;
  *(v5 + 4) = [faceCopy trackID];
  *(v5 + 5) = [faceCopy trackDuration];
  v16 = objc_opt_class();
  v17 = MEMORY[0x1E695DF90];
  expressionFeatures = [faceCopy expressionFeatures];
  v19 = [v17 dictionaryWithCapacity:{objc_msgSend(expressionFeatures, "count")}];

  expressionFeatures2 = [faceCopy expressionFeatures];
  [v16 _setFaceExpressionFeatureScoreIfDetected:expressionFeatures2 features:v19 detectionKey:*MEMORY[0x1E6984A80] scoreKey:*MEMORY[0x1E6984A88] featureKey:@"VNFaceLegacyFaceCoreFeature_LeftEyeClosedScore"];

  expressionFeatures3 = [faceCopy expressionFeatures];
  [v16 _setFaceExpressionFeatureScoreIfDetected:expressionFeatures3 features:v19 detectionKey:*MEMORY[0x1E6984A90] scoreKey:*MEMORY[0x1E6984A98] featureKey:@"VNFaceLegacyFaceCoreFeature_RightEyeClosedScore"];

  expressionFeatures4 = [faceCopy expressionFeatures];
  [v16 _setFaceExpressionFeatureScoreIfDetected:expressionFeatures4 features:v19 detectionKey:*MEMORY[0x1E6984AA0] scoreKey:*MEMORY[0x1E6984AA8] featureKey:@"VNFaceLegacyFaceCoreFeature_SmileScore"];

  v23 = [v19 copy];
  v24 = *(v5 + 6);
  *(v5 + 6) = v23;

  v15 = v5;
LABEL_9:

  return v15;
}

+ (void)_setFaceExpressionFeatureScoreIfDetected:(id)detected features:(id)features detectionKey:(id)key scoreKey:(id)scoreKey featureKey:(id)featureKey
{
  detectedCopy = detected;
  featuresCopy = features;
  scoreKeyCopy = scoreKey;
  featureKeyCopy = featureKey;
  v14 = [detectedCopy objectForKey:key];
  v15 = v14;
  if (v14 && ([v14 isEqual:MEMORY[0x1E695E110]] & 1) == 0)
  {
    v16 = [detectedCopy objectForKey:scoreKeyCopy];
    if (v16)
    {
      [featuresCopy setObject:v16 forKeyedSubscript:featureKeyCopy];
    }
  }
}

@end