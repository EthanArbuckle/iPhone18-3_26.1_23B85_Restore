@interface AXMVisionFeatureFaceDetectionResult
+ (id)localizedStringFormatterForExpression:(id)expression;
+ (id)nameForFaceExpression:(int64_t)expression;
- (AXMVisionFeatureFaceDetectionResult)initWithCoder:(id)coder;
- (CGRect)frame;
- (__n128)setPose:(__n128)pose;
- (double)confidenceForExpression:(int64_t)expression;
- (id)_init;
- (id)descriptionForExpression:(int64_t)expression;
- (int64_t)_expressionForString:(id)string;
- (int64_t)likelyExpression;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionFeatureFaceDetectionResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(AXMVisionFeatureFaceDetectionResult *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"AXMFeatureFaceUUID"];

  [(AXMVisionFeatureFaceDetectionResult *)self frame];
  [coderCopy axmEncodeRect:@"AXMFeatureFaceRectangles" forKey:?];
  [(AXMVisionFeatureFaceDetectionResult *)self rectanglesConfidence];
  *&v6 = v6;
  [coderCopy encodeFloat:@"AXMFeatureFaceRectanglesConfidence" forKey:v6];
  name = [(AXMVisionFeatureFaceDetectionResult *)self name];
  [coderCopy encodeObject:name forKey:@"AXMFeatureFaceName"];

  [(AXMVisionFeatureFaceDetectionResult *)self nameConfidence];
  *&v8 = v8;
  [coderCopy encodeFloat:@"AXMFeatureFaceNameConfidence " forKey:v8];
  attributes = [(AXMVisionFeatureFaceDetectionResult *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"AXMFeatureFaceAttributes"];

  [(AXMVisionFeatureFaceDetectionResult *)self attributesConfidence];
  *&v10 = v10;
  [coderCopy encodeFloat:@"AXMFeatureFaceAttributesConfidence" forKey:v10];
  v11 = MEMORY[0x1E696ACC8];
  expressionsAndConfidence = [(AXMVisionFeatureFaceDetectionResult *)self expressionsAndConfidence];
  v24 = 0;
  v13 = [v11 archivedDataWithRootObject:expressionsAndConfidence requiringSecureCoding:1 error:&v24];
  v14 = v24;

  if (v14)
  {
    v15 = AXMediaLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(AXMVisionFeatureFaceDetectionResult *)v14 encodeWithCoder:v15];
    }
  }

  [coderCopy encodeObject:v13 forKey:@"AXMFeatureFaceExpressions"];
  [coderCopy encodeObject:self->_landmarks forKey:@"AXMFeatureFaceLandmarks"];
  [coderCopy encodeObject:self->_landmarks3d forKey:@"AXMFeatureFaceLandmarks3d"];
  [(AXMVisionFeatureFaceDetectionResult *)self landmarksConfidence];
  *&v16 = v16;
  [coderCopy encodeFloat:@"AXMFeatureFaceLandmarksConfidence" forKey:v16];
  [(AXMVisionFeatureFaceDetectionResult *)self pose];
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v20;
  v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v23 length:64];
  [coderCopy encodeObject:v21 forKey:@"AXMFeatureFacePose"];
  [(AXMVisionFeatureFaceDetectionResult *)self poseConfidence];
  *&v22 = v22;
  [coderCopy encodeFloat:@"AXMVisionFeatureCodingKeyFacePoseConfidence" forKey:v22];
}

- (AXMVisionFeatureFaceDetectionResult)initWithCoder:(id)coder
{
  v32 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = AXMVisionFeatureFaceDetectionResult;
  v5 = [(AXMVisionFeatureFaceDetectionResult *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXMFeatureFaceUUID"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setUuid:v6];

    [coderCopy axmDecodeRectForKey:@"AXMFeatureFaceRectangles"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setFrame:?];
    [coderCopy decodeFloatForKey:@"AXMFeatureFaceRectanglesConfidence"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setRectanglesConfidence:v7];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXMFeatureFaceName"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setName:v8];

    [coderCopy decodeFloatForKey:@"AXMFeatureFaceNameConfidence "];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setNameConfidence:v9];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXMFeatureFaceAttributes"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setAttributes:v10];

    [coderCopy decodeFloatForKey:@"AXMFeatureFaceAttributesConfidence"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setAttributesConfidence:v11];
    v12 = AXMSecureCodingClasses();
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"AXMFeatureFaceExpressions"];

    if (v13)
    {
      v14 = MEMORY[0x1E696ACD0];
      v15 = objc_opt_class();
      v16 = AXMSecureCodingClasses();
      v26 = 0;
      v17 = [v14 axmSecurelyUnarchiveData:v13 withExpectedClass:v15 otherAllowedClasses:v16 error:&v26];
      v18 = v26;

      if (v18)
      {
        v19 = AXMediaLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v18;
          _os_log_impl(&dword_1AE37B000, v19, OS_LOG_TYPE_DEFAULT, "Error decoding face expression dict: %@", buf, 0xCu);
        }
      }

      else
      {
        [(AXMVisionFeatureFaceDetectionResult *)v5 setExpressionsAndConfidence:v17];
      }
    }

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXMFeatureFaceLandmarks"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setLandmarks:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXMFeatureFaceLandmarks3d"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setLandmarks3d:v21];

    [coderCopy decodeFloatForKey:@"AXMFeatureFaceLandmarksConfidence"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setLandmarksConfidence:v22];
    v30 = 0u;
    *v31 = 0u;
    *buf = 0u;
    v29 = 0u;
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXMFeatureFacePose"];
    [v23 getBytes:buf length:64];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setPose:*buf, *&v29, *&v30, v31[0]];
    [coderCopy decodeFloatForKey:@"AXMVisionFeatureCodingKeyFacePoseConfidence"];
    [(AXMVisionFeatureFaceDetectionResult *)v5 setPoseConfidence:v24];
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXMVisionFeatureFaceDetectionResult;
  result = [(AXMVisionFeatureFaceDetectionResult *)&v3 init];
  if (result)
  {
    *(result + 1) = 0;
  }

  return result;
}

+ (id)nameForFaceExpression:(int64_t)expression
{
  if ((expression - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A1D6B0[expression - 1];
  }
}

- (double)confidenceForExpression:(int64_t)expression
{
  v4 = [(AXMVisionFeatureFaceDetectionResult *)self descriptionForExpression:expression];
  if (v4)
  {
    expressionsAndConfidence = [(AXMVisionFeatureFaceDetectionResult *)self expressionsAndConfidence];
    v6 = [expressionsAndConfidence objectForKey:v4];
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (int64_t)likelyExpression
{
  v22 = *MEMORY[0x1E69E9840];
  likelyExpression = self->_likelyExpression;
  if (!likelyExpression)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    expressionsAndConfidence = [(AXMVisionFeatureFaceDetectionResult *)self expressionsAndConfidence];
    allKeys = [expressionsAndConfidence allKeys];

    v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      likelyExpression = 0;
      v8 = *v18;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          expressionsAndConfidence2 = [(AXMVisionFeatureFaceDetectionResult *)self expressionsAndConfidence];
          v13 = [expressionsAndConfidence2 objectForKey:v11];
          [v13 floatValue];
          v15 = v14;

          if (v9 < v15)
          {
            likelyExpression = [(AXMVisionFeatureFaceDetectionResult *)self _expressionForString:v11];
            v9 = v15;
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      likelyExpression = 0;
    }

    self->_likelyExpression = likelyExpression;
  }

  return likelyExpression;
}

+ (id)localizedStringFormatterForExpression:(id)expression
{
  v3 = [expression integerValue] - 1;
  if (v3 <= 5 && ((0x3Du >> v3) & 1) != 0)
  {
    v4 = off_1E7A1D680[v3];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)descriptionForExpression:(int64_t)expression
{
  if ((expression - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1D6B0[expression - 1];
  }
}

- (int64_t)_expressionForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Disgust"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Neutral"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Scream"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Smile"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"Surprise"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"Suspicious"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)setPose:(__n128)pose
{
  result[9] = a2;
  result[10] = pose;
  result[11] = a4;
  result[12] = a5;
  return result;
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Failed to archive expressionsAndConfidence data: %@", &v2, 0xCu);
}

@end