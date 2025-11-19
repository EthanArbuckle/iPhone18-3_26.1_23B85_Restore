@interface VNFaceLegacyFaceCore
+ (void)_setFaceExpressionFeatureScoreIfDetected:(id)a3 features:(id)a4 detectionKey:(id)a5 scoreKey:(id)a6 featureKey:(id)a7;
- (BOOL)isEqual:(id)a3;
- (CGPoint)faceCenter;
- (CGPoint)leftEye;
- (CGPoint)mouth;
- (CGPoint)rightEye;
- (CGRect)faceBoundingBox;
- (VNFaceLegacyFaceCore)initWithCoder:(id)a3;
- (VNFaceLegacyFaceCore)initWithFace:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = [(VNFaceLegacyFaceCore *)self profile];
  if (v6 != [(VNFaceLegacyFaceCore *)v5 profile])
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

  v51 = [(VNFaceLegacyFaceCore *)self trackID];
  if (v51 == [(VNFaceLegacyFaceCore *)v5 trackID]&& (v52 = [(VNFaceLegacyFaceCore *)self trackDuration], v52 == [(VNFaceLegacyFaceCore *)v5 trackDuration]))
  {
    v53 = [(VNFaceLegacyFaceCore *)self features];
    v54 = [(VNFaceLegacyFaceCore *)v5 features];
    v13 = [v53 isEqual:v54];
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

- (VNFaceLegacyFaceCore)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = VNFaceLegacyFaceCore;
  v5 = [(VNFaceLegacyFaceCore *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VNFaceLegacyFaceCore"];
    v7 = v6;
    if (v6 && ![v6 unsignedIntValue])
    {
      v5->_profile = [v4 decodeIntForKey:@"fcr_profile"];
      [v4 decodeFloatForKey:@"fcr_size"];
      v5->_faceSize = v9;
      [v4 decodeFloatForKey:@"fcr_angle"];
      v5->_faceAngle = v10;
      [v4 vn_decodePointForKey:@"fcr_center"];
      v5->_faceCenter.x = v11;
      v5->_faceCenter.y = v12;
      [v4 vn_decodeRectForKey:@"fcr_bbox"];
      v5->_faceBoundingBox.origin.x = v13;
      v5->_faceBoundingBox.origin.y = v14;
      v5->_faceBoundingBox.size.width = v15;
      v5->_faceBoundingBox.size.height = v16;
      [v4 vn_decodePointForKey:@"fcr_lefteye"];
      v5->_leftEye.x = v17;
      v5->_leftEye.y = v18;
      [v4 vn_decodePointForKey:@"fcr_righteye"];
      v5->_rightEye.x = v19;
      v5->_rightEye.y = v20;
      [v4 vn_decodePointForKey:@"fcr_mouth"];
      v5->_mouth.x = v21;
      v5->_mouth.y = v22;
      v5->_trackID = [v4 decodeIntForKey:@"fcr_trackid"];
      v5->_trackDuration = [v4 decodeIntForKey:@"fcr_trackduration"];
      if ([v4 containsValueForKey:@"fcr_features"])
      {
        if ([VNFaceLegacyFaceCore initWithCoder:]::ourFeaturesClassSetOnceToken != -1)
        {
          dispatch_once(&[VNFaceLegacyFaceCore initWithCoder:]::ourFeaturesClassSetOnceToken, &__block_literal_global_23404);
        }

        v23 = [v4 decodeObjectOfClasses:-[VNFaceLegacyFaceCore initWithCoder:]::ourFeaturesClassSet forKey:@"fcr_features"];
      }

      else
      {
        v23 = [objc_alloc(MEMORY[0x1E695DF20]) initWithCoder:v4];
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [v8 encodeObject:v4 forKey:@"VNFaceLegacyFaceCore"];

  [v8 encodeInt:-[VNFaceLegacyFaceCore profile](self forKey:{"profile"), @"fcr_profile"}];
  [(VNFaceLegacyFaceCore *)self faceSize];
  *&v5 = v5;
  [v8 encodeFloat:@"fcr_size" forKey:v5];
  [(VNFaceLegacyFaceCore *)self faceAngle];
  *&v6 = v6;
  [v8 encodeFloat:@"fcr_angle" forKey:v6];
  [(VNFaceLegacyFaceCore *)self faceCenter];
  [v8 vn_encodePoint:@"fcr_center" forKey:?];
  [(VNFaceLegacyFaceCore *)self faceBoundingBox];
  [v8 vn_encodeRect:@"fcr_bbox" forKey:?];
  [(VNFaceLegacyFaceCore *)self leftEye];
  [v8 vn_encodePoint:@"fcr_lefteye" forKey:?];
  [(VNFaceLegacyFaceCore *)self rightEye];
  [v8 vn_encodePoint:@"fcr_righteye" forKey:?];
  [(VNFaceLegacyFaceCore *)self mouth];
  [v8 vn_encodePoint:@"fcr_mouth" forKey:?];
  [v8 encodeInt:-[VNFaceLegacyFaceCore trackID](self forKey:{"trackID"), @"fcr_trackid"}];
  [v8 encodeInt:-[VNFaceLegacyFaceCore trackDuration](self forKey:{"trackDuration"), @"fcr_trackduration"}];
  v7 = [(VNFaceLegacyFaceCore *)self features];
  [v8 encodeObject:v7 forKey:@"fcr_features"];
}

- (VNFaceLegacyFaceCore)initWithFace:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = VNFaceLegacyFaceCore;
  v5 = [(VNFaceLegacyFaceCore *)&v29 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 faceType];
  if (v6 >= 3)
  {
    VNValidatedLog(4, @"VNFaceLegacyFaceCore:initWithFace: unsupported face profile\n", v7, v8, v9, v10, v11, v12, v26);
LABEL_6:
    v15 = 0;
    goto LABEL_9;
  }

  *(v5 + 1) = v6;
  [v4 faceSize];
  *(v5 + 2) = v13;
  [v4 faceAngle];
  *(v5 + 3) = v14;
  if (v4)
  {
    [v4 face];
    *(v5 + 56) = v26;
    [v4 face];
    *(v5 + 120) = v27;
    *(v5 + 136) = v28;
    [v4 leftEye];
    *(v5 + 72) = v26;
    [v4 rightEye];
    *(v5 + 88) = v26;
    [v4 mouth];
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
  *(v5 + 4) = [v4 trackID];
  *(v5 + 5) = [v4 trackDuration];
  v16 = objc_opt_class();
  v17 = MEMORY[0x1E695DF90];
  v18 = [v4 expressionFeatures];
  v19 = [v17 dictionaryWithCapacity:{objc_msgSend(v18, "count")}];

  v20 = [v4 expressionFeatures];
  [v16 _setFaceExpressionFeatureScoreIfDetected:v20 features:v19 detectionKey:*MEMORY[0x1E6984A80] scoreKey:*MEMORY[0x1E6984A88] featureKey:@"VNFaceLegacyFaceCoreFeature_LeftEyeClosedScore"];

  v21 = [v4 expressionFeatures];
  [v16 _setFaceExpressionFeatureScoreIfDetected:v21 features:v19 detectionKey:*MEMORY[0x1E6984A90] scoreKey:*MEMORY[0x1E6984A98] featureKey:@"VNFaceLegacyFaceCoreFeature_RightEyeClosedScore"];

  v22 = [v4 expressionFeatures];
  [v16 _setFaceExpressionFeatureScoreIfDetected:v22 features:v19 detectionKey:*MEMORY[0x1E6984AA0] scoreKey:*MEMORY[0x1E6984AA8] featureKey:@"VNFaceLegacyFaceCoreFeature_SmileScore"];

  v23 = [v19 copy];
  v24 = *(v5 + 6);
  *(v5 + 6) = v23;

  v15 = v5;
LABEL_9:

  return v15;
}

+ (void)_setFaceExpressionFeatureScoreIfDetected:(id)a3 features:(id)a4 detectionKey:(id)a5 scoreKey:(id)a6 featureKey:(id)a7
{
  v17 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = [v17 objectForKey:a5];
  v15 = v14;
  if (v14 && ([v14 isEqual:MEMORY[0x1E695E110]] & 1) == 0)
  {
    v16 = [v17 objectForKey:v12];
    if (v16)
    {
      [v11 setObject:v16 forKeyedSubscript:v13];
    }
  }
}

@end