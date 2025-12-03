@interface AXMVisionFeatureFaceLandmarks
+ (id)unitTestingFaceLandmarksIs3D:(BOOL)d;
- (AXMVisionFeatureFaceLandmarks)initWithCoder:(id)coder;
- (AXMVisionFeatureFaceLandmarks)initWithVisionFaceLandmarks:(id)landmarks;
- (id)localizedStringForLandmarkType:(unint64_t)type;
- (id)pointValuesForFaceLandmarkType:(unint64_t)type;
- (id)pointsArrayForRegion:(id)region;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionFeatureFaceLandmarks

- (AXMVisionFeatureFaceLandmarks)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = AXMVisionFeatureFaceLandmarks;
  v5 = [(AXMVisionFeatureFaceLandmarks *)&v16 init];
  if (v5)
  {
    -[AXMVisionFeatureFaceLandmarks setIs3DLandmarks:](v5, "setIs3DLandmarks:", [coderCopy decodeBoolForKey:@"AXMVisionFeatureFaceLandmarksIs3DLandmarks"]);
    v6 = AXMSecureCodingClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"AXMVisionFeatureFaceLandmarksResults"];

    v8 = MEMORY[0x1E696ACD0];
    v9 = objc_opt_class();
    v10 = AXMSecureCodingClasses();
    v15 = 0;
    v11 = [v8 axmSecurelyUnarchiveData:v7 withExpectedClass:v9 otherAllowedClasses:v10 error:&v15];
    v12 = v15;

    if (v12)
    {
      v13 = AXMediaLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_1AE37B000, v13, OS_LOG_TYPE_DEFAULT, "Error decoding face landmark dict: %@", buf, 0xCu);
      }
    }

    else
    {
      [(AXMVisionFeatureFaceLandmarks *)v5 setResults:v11];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AXMVisionFeatureFaceLandmarks is3DLandmarks](self forKey:{"is3DLandmarks"), @"AXMVisionFeatureFaceLandmarksIs3DLandmarks"}];
  v5 = MEMORY[0x1E696ACC8];
  results = [(AXMVisionFeatureFaceLandmarks *)self results];
  v10 = 0;
  v7 = [v5 archivedDataWithRootObject:results requiringSecureCoding:1 error:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = AXMediaLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AXMVisionFeatureFaceLandmarks *)v8 encodeWithCoder:v9];
    }
  }

  [coderCopy encodeObject:v7 forKey:@"AXMVisionFeatureFaceLandmarksResults"];
}

- (AXMVisionFeatureFaceLandmarks)initWithVisionFaceLandmarks:(id)landmarks
{
  landmarksCopy = landmarks;
  v33.receiver = self;
  v33.super_class = AXMVisionFeatureFaceLandmarks;
  v5 = [(AXMVisionFeatureFaceLandmarks *)&v33 init];
  if (v5)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v6 = getVNFaceLandmarks2DClass_softClass;
    v38 = getVNFaceLandmarks2DClass_softClass;
    if (!getVNFaceLandmarks2DClass_softClass)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __getVNFaceLandmarks2DClass_block_invoke;
      v34[3] = &unk_1E7A1C700;
      v34[4] = &v35;
      __getVNFaceLandmarks2DClass_block_invoke(v34);
      v6 = v36[3];
    }

    v7 = v6;
    _Block_object_dispose(&v35, 8);
    [(AXMVisionFeatureFaceLandmarks *)v5 setIs3DLandmarks:(objc_opt_isKindOfClass() & 1) == 0];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (![(AXMVisionFeatureFaceLandmarks *)v5 is3DLandmarks])
    {
      v9 = landmarksCopy;
      leftEye = [v9 leftEye];
      v11 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:leftEye];
      [v8 setObject:v11 forKey:&unk_1F240AFD8];

      rightEye = [v9 rightEye];
      v13 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:rightEye];
      [v8 setObject:v13 forKey:&unk_1F240AFF0];

      leftEyebrow = [v9 leftEyebrow];
      v15 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:leftEyebrow];
      [v8 setObject:v15 forKey:&unk_1F240B008];

      rightEyebrow = [v9 rightEyebrow];
      v17 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:rightEyebrow];
      [v8 setObject:v17 forKey:&unk_1F240B020];

      nose = [v9 nose];
      v19 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:nose];
      [v8 setObject:v19 forKey:&unk_1F240B038];

      noseCrest = [v9 noseCrest];
      v21 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:noseCrest];
      [v8 setObject:v21 forKey:&unk_1F240B050];

      medianLine = [v9 medianLine];
      v23 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:medianLine];
      [v8 setObject:v23 forKey:&unk_1F240B068];

      outerLips = [v9 outerLips];
      v25 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:outerLips];
      [v8 setObject:v25 forKey:&unk_1F240B080];

      innerLips = [v9 innerLips];
      v27 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:innerLips];
      [v8 setObject:v27 forKey:&unk_1F240B098];

      leftPupil = [v9 leftPupil];
      v29 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:leftPupil];
      [v8 setObject:v29 forKey:&unk_1F240B0B0];

      rightPupil = [v9 rightPupil];

      v31 = [(AXMVisionFeatureFaceLandmarks *)v5 pointsArrayForRegion:rightPupil];
      [v8 setObject:v31 forKey:&unk_1F240B0C8];
    }

    [(AXMVisionFeatureFaceLandmarks *)v5 setResults:v8];
  }

  return v5;
}

- (id)pointsArrayForRegion:(id)region
{
  regionCopy = region;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([regionCopy pointCount])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      normalizedPoints = [regionCopy normalizedPoints];
      v8 = [MEMORY[0x1E696B098] axmValueWithCGPoint:{*(normalizedPoints + v5), *(normalizedPoints + v5 + 8)}];
      [v4 addObject:v8];

      ++v6;
      v5 += 16;
    }

    while (v6 < [regionCopy pointCount]);
  }

  return v4;
}

- (id)pointValuesForFaceLandmarkType:(unint64_t)type
{
  if ([(AXMVisionFeatureFaceLandmarks *)self is3DLandmarks])
  {
    v5 = 0;
  }

  else
  {
    results = [(AXMVisionFeatureFaceLandmarks *)self results];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    v5 = [results objectForKey:v7];
  }

  return v5;
}

- (id)localizedStringForLandmarkType:(unint64_t)type
{
  if (type > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E7A1E4C0[type];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  return v5;
}

+ (id)unitTestingFaceLandmarksIs3D:(BOOL)d
{
  dCopy = d;
  v4 = objc_alloc_init(AXMVisionFeatureFaceLandmarks);
  v5 = objc_alloc_init(MEMORY[0x1E695DF20]);
  [(AXMVisionFeatureFaceLandmarks *)v4 setResults:v5];

  [(AXMVisionFeatureFaceLandmarks *)v4 setIs3DLandmarks:dCopy];

  return v4;
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Failed to archive face landmark results: %@", &v2, 0xCu);
}

@end