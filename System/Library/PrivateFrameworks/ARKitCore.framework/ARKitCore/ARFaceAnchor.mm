@interface ARFaceAnchor
+ (id)blendShapeMapping;
+ (id)blendShapeToMirroredBlendShapeMapping;
+ (id)mirroredBlendShapeMapping;
- (ARFaceAnchor)initWithAnchor:(id)a3;
- (ARFaceAnchor)initWithCoder:(id)a3;
- (ARFaceAnchor)initWithExistingFaceAnchor:(id)a3 tracked:(BOOL)a4 trackingError:(id)a5;
- (ARFaceAnchor)initWithIdentifier:(id)a3 faceTrackingData:(id)a4;
- (BOOL)isEqualToFaceAnchor:(id)a3;
- (id)copyWithTrackedState:(BOOL)a3;
- (simd_float4x4)leftEyeTransform;
- (simd_float4x4)rightEyeTransform;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARFaceAnchor

- (ARFaceAnchor)initWithIdentifier:(id)a3 faceTrackingData:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v32 = a4;
  if (ARFaceAnchorInitializeMaps(void)::onceToken != -1)
  {
    [ARFaceAnchor initWithIdentifier:faceTrackingData:];
  }

  if (!+[ARFaceTrackingTechnique isSupported](ARFaceTrackingTechnique, "isSupported", v30) && !+[ARFaceTrackingInternalTechnique isSupported])
  {
    if (_ARLogGeneral(void)::onceToken != -1)
    {
      [ARFaceAnchor initWithIdentifier:faceTrackingData:];
    }

    v19 = _ARLogGeneral(void)::logObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      v35 = v21;
      v36 = 2048;
      v37 = self;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Face tracking is not available.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  if (![v32 isValid])
  {
LABEL_17:
    v22 = 0;
    goto LABEL_23;
  }

  [v32 transform];
  v33.receiver = self;
  v33.super_class = ARFaceAnchor;
  v6 = [(ARAnchor *)&v33 initWithIdentifier:v31 transform:?];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    [(ARFaceAnchor *)v6 setIsTracked:1];
    objc_storeStrong(&v7->_trackingData, a4);
    v9 = [[ARFaceGeometry alloc] initWithFaceTrackingDataProtocol:v7->_trackingData];
    geometry = v8->_geometry;
    v8->_geometry = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[ARFaceTrackingDataProtocol blendShapeCoefficientsCount](v7->_trackingData, "blendShapeCoefficientsCount")}];
    v12 = [(ARFaceTrackingDataProtocol *)v7->_trackingData blendShapeCoefficients];
    for (i = 0; [(ARFaceTrackingDataProtocol *)v7->_trackingData blendShapeCoefficientsCount]> i; ++i)
    {
      v14 = _indexToBlendShapeLocationMap;
      v15 = [MEMORY[0x1E696AD98] numberWithInt:i];
      v16 = [v14 objectForKeyedSubscript:v15];

      if (v16)
      {
        LODWORD(v17) = *(v12 + 4 * i);
        v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
        [(NSDictionary *)v11 setObject:v18 forKey:v16];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v32;
      v24 = MEMORY[0x1E696AD98];
      [(NSError *)v23 tongueOut];
      v25 = [v24 numberWithFloat:?];
      v26 = [(NSError *)v23 trackingError];
      trackingError = v8->_trackingError;
      v8->_trackingError = v26;
    }

    else
    {
      v23 = v8->_trackingError;
      v8->_trackingError = 0;
      v25 = &unk_1F4258248;
    }

    [(NSDictionary *)v11 setObject:v25 forKey:@"tongueOut"];
    blendShapeCoefficientsDictionary = v8->_blendShapeCoefficientsDictionary;
    v8->_blendShapeCoefficientsDictionary = v11;
  }

  self = v8;
  v22 = self;
LABEL_23:

  return v22;
}

- (ARFaceAnchor)initWithExistingFaceAnchor:(id)a3 tracked:(BOOL)a4 trackingError:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(ARFaceAnchor *)self initWithAnchor:v8];
  v11 = v10;
  if (v10)
  {
    [(ARFaceAnchor *)v10 setIsTracked:v6];
    objc_storeStrong(&v11->_trackingError, a5);
  }

  return v11;
}

- (id)copyWithTrackedState:(BOOL)a3
{
  v3 = a3;
  v4 = [(ARFaceAnchor *)self copy];
  v5 = v4;
  if (v4 && [v4 isTracked] != v3)
  {
    [v5 setIsTracked:v3];
  }

  return v5;
}

+ (id)blendShapeMapping
{
  if (ARFaceAnchorInitializeMaps(void)::onceToken != -1)
  {
    [ARFaceAnchor initWithIdentifier:faceTrackingData:];
  }

  v3 = _blendShapeLocationToIndexMap;

  return v3;
}

+ (id)mirroredBlendShapeMapping
{
  if (+[ARFaceAnchor mirroredBlendShapeMapping]::onceToken != -1)
  {
    +[ARFaceAnchor mirroredBlendShapeMapping];
  }

  v3 = +[ARFaceAnchor mirroredBlendShapeMapping]::mirroredBlendShapeMapping;

  return v3;
}

void __41__ARFaceAnchor_mirroredBlendShapeMapping__block_invoke()
{
  v55[51] = *MEMORY[0x1E69E9840];
  v0 = +[ARFaceAnchor blendShapeMapping];
  v54[0] = @"browDown_L";
  v53 = [v0 objectForKeyedSubscript:@"browDown_R"];
  v55[0] = v53;
  v54[1] = @"browDown_R";
  v52 = [v0 objectForKeyedSubscript:@"browDown_L"];
  v55[1] = v52;
  v54[2] = @"browInnerUp";
  v51 = [v0 objectForKeyedSubscript:?];
  v55[2] = v51;
  v54[3] = @"browOuterUp_L";
  v50 = [v0 objectForKeyedSubscript:@"browOuterUp_R"];
  v55[3] = v50;
  v54[4] = @"browOuterUp_R";
  v49 = [v0 objectForKeyedSubscript:@"browOuterUp_L"];
  v55[4] = v49;
  v54[5] = @"cheekPuff";
  v48 = [v0 objectForKeyedSubscript:?];
  v55[5] = v48;
  v54[6] = @"cheekSquint_L";
  v47 = [v0 objectForKeyedSubscript:@"cheekSquint_R"];
  v55[6] = v47;
  v54[7] = @"cheekSquint_R";
  v46 = [v0 objectForKeyedSubscript:@"cheekSquint_L"];
  v55[7] = v46;
  v54[8] = @"eyeBlink_L";
  v45 = [v0 objectForKeyedSubscript:@"eyeBlink_R"];
  v55[8] = v45;
  v54[9] = @"eyeBlink_R";
  v44 = [v0 objectForKeyedSubscript:@"eyeBlink_L"];
  v55[9] = v44;
  v54[10] = @"eyeLookDown_L";
  v43 = [v0 objectForKeyedSubscript:@"eyeLookDown_R"];
  v55[10] = v43;
  v54[11] = @"eyeLookDown_R";
  v42 = [v0 objectForKeyedSubscript:@"eyeLookDown_L"];
  v55[11] = v42;
  v54[12] = @"eyeLookIn_L";
  v41 = [v0 objectForKeyedSubscript:@"eyeLookIn_R"];
  v55[12] = v41;
  v54[13] = @"eyeLookIn_R";
  v40 = [v0 objectForKeyedSubscript:@"eyeLookIn_L"];
  v55[13] = v40;
  v54[14] = @"eyeLookOut_L";
  v39 = [v0 objectForKeyedSubscript:@"eyeLookOut_R"];
  v55[14] = v39;
  v54[15] = @"eyeLookOut_R";
  v38 = [v0 objectForKeyedSubscript:@"eyeLookOut_L"];
  v55[15] = v38;
  v54[16] = @"eyeLookUp_L";
  v37 = [v0 objectForKeyedSubscript:@"eyeLookUp_R"];
  v55[16] = v37;
  v54[17] = @"eyeLookUp_R";
  v36 = [v0 objectForKeyedSubscript:@"eyeLookUp_L"];
  v55[17] = v36;
  v54[18] = @"eyeSquint_L";
  v35 = [v0 objectForKeyedSubscript:@"eyeSquint_R"];
  v55[18] = v35;
  v54[19] = @"eyeSquint_R";
  v34 = [v0 objectForKeyedSubscript:@"eyeSquint_L"];
  v55[19] = v34;
  v54[20] = @"eyeWide_L";
  v33 = [v0 objectForKeyedSubscript:@"eyeWide_R"];
  v55[20] = v33;
  v54[21] = @"eyeWide_R";
  v32 = [v0 objectForKeyedSubscript:@"eyeWide_L"];
  v55[21] = v32;
  v54[22] = @"jawForward";
  v31 = [v0 objectForKeyedSubscript:?];
  v55[22] = v31;
  v54[23] = @"jawLeft";
  v30 = [v0 objectForKeyedSubscript:@"jawRight"];
  v55[23] = v30;
  v54[24] = @"jawOpen";
  v29 = [v0 objectForKeyedSubscript:?];
  v55[24] = v29;
  v54[25] = @"jawRight";
  v28 = [v0 objectForKeyedSubscript:@"jawLeft"];
  v55[25] = v28;
  v54[26] = @"mouthClose";
  v27 = [v0 objectForKeyedSubscript:?];
  v55[26] = v27;
  v54[27] = @"mouthDimple_L";
  v26 = [v0 objectForKeyedSubscript:@"mouthDimple_R"];
  v55[27] = v26;
  v54[28] = @"mouthDimple_R";
  v25 = [v0 objectForKeyedSubscript:@"mouthDimple_L"];
  v55[28] = v25;
  v54[29] = @"mouthFrown_L";
  v24 = [v0 objectForKeyedSubscript:@"mouthFrown_R"];
  v55[29] = v24;
  v54[30] = @"mouthFrown_R";
  v23 = [v0 objectForKeyedSubscript:@"mouthFrown_L"];
  v55[30] = v23;
  v54[31] = @"mouthFunnel";
  v22 = [v0 objectForKeyedSubscript:?];
  v55[31] = v22;
  v54[32] = @"mouthLeft";
  v21 = [v0 objectForKeyedSubscript:@"mouthRight"];
  v55[32] = v21;
  v54[33] = @"mouthLowerDown_L";
  v20 = [v0 objectForKeyedSubscript:@"mouthLowerDown_R"];
  v55[33] = v20;
  v54[34] = @"mouthLowerDown_R";
  v19 = [v0 objectForKeyedSubscript:@"mouthLowerDown_L"];
  v55[34] = v19;
  v54[35] = @"mouthPress_L";
  v18 = [v0 objectForKeyedSubscript:@"mouthPress_R"];
  v55[35] = v18;
  v54[36] = @"mouthPress_R";
  v17 = [v0 objectForKeyedSubscript:@"mouthPress_L"];
  v55[36] = v17;
  v54[37] = @"mouthPucker";
  v16 = [v0 objectForKeyedSubscript:?];
  v55[37] = v16;
  v54[38] = @"mouthRight";
  v15 = [v0 objectForKeyedSubscript:@"mouthLeft"];
  v55[38] = v15;
  v54[39] = @"mouthRollLower";
  v14 = [v0 objectForKeyedSubscript:?];
  v55[39] = v14;
  v54[40] = @"mouthRollUpper";
  v13 = [v0 objectForKeyedSubscript:?];
  v55[40] = v13;
  v54[41] = @"mouthShrugLower";
  v12 = [v0 objectForKeyedSubscript:?];
  v55[41] = v12;
  v54[42] = @"mouthShrugUpper";
  v1 = [v0 objectForKeyedSubscript:?];
  v55[42] = v1;
  v54[43] = @"mouthSmile_L";
  v2 = [v0 objectForKeyedSubscript:@"mouthSmile_R"];
  v55[43] = v2;
  v54[44] = @"mouthSmile_R";
  v3 = [v0 objectForKeyedSubscript:@"mouthSmile_L"];
  v55[44] = v3;
  v54[45] = @"mouthStretch_L";
  v4 = [v0 objectForKeyedSubscript:@"mouthStretch_R"];
  v55[45] = v4;
  v54[46] = @"mouthStretch_R";
  v5 = [v0 objectForKeyedSubscript:@"mouthStretch_L"];
  v55[46] = v5;
  v54[47] = @"mouthUpperUp_L";
  v6 = [v0 objectForKeyedSubscript:@"mouthUpperUp_R"];
  v55[47] = v6;
  v54[48] = @"mouthUpperUp_R";
  v7 = [v0 objectForKeyedSubscript:@"mouthUpperUp_L"];
  v55[48] = v7;
  v54[49] = @"noseSneer_L";
  v8 = [v0 objectForKeyedSubscript:@"noseSneer_R"];
  v55[49] = v8;
  v54[50] = @"noseSneer_R";
  v9 = [v0 objectForKeyedSubscript:@"noseSneer_L"];
  v55[50] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:51];
  v11 = +[ARFaceAnchor mirroredBlendShapeMapping]::mirroredBlendShapeMapping;
  +[ARFaceAnchor mirroredBlendShapeMapping]::mirroredBlendShapeMapping = v10;
}

+ (id)blendShapeToMirroredBlendShapeMapping
{
  if (+[ARFaceAnchor blendShapeToMirroredBlendShapeMapping]::onceToken != -1)
  {
    +[ARFaceAnchor blendShapeToMirroredBlendShapeMapping];
  }

  v3 = +[ARFaceAnchor blendShapeToMirroredBlendShapeMapping]::blendShapeToMirroredBlendShapeMapping;

  return v3;
}

void __53__ARFaceAnchor_blendShapeToMirroredBlendShapeMapping__block_invoke()
{
  v0 = +[ARFaceAnchor blendShapeMapping];
  v1 = +[ARFaceAnchor mirroredBlendShapeMapping];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = +[ARFaceAnchor blendShapeToMirroredBlendShapeMapping]::blendShapeToMirroredBlendShapeMapping;
  +[ARFaceAnchor blendShapeToMirroredBlendShapeMapping]::blendShapeToMirroredBlendShapeMapping = v2;

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ARFaceAnchor_blendShapeToMirroredBlendShapeMapping__block_invoke_2;
  v5[3] = &unk_1E817D620;
  v4 = v1;
  v6 = v4;
  [v0 enumerateKeysAndObjectsUsingBlock:v5];
}

void __53__ARFaceAnchor_blendShapeToMirroredBlendShapeMapping__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [+[ARFaceAnchor blendShapeToMirroredBlendShapeMapping]::blendShapeToMirroredBlendShapeMapping setObject:v5 forKeyedSubscript:v6];
}

- (simd_float4x4)leftEyeTransform
{
  [(ARFaceTrackingDataProtocol *)self->_trackingData leftEyeTransform];
  result.columns[3].i64[1] = v9;
  result.columns[3].i64[0] = v8;
  result.columns[2].i64[1] = v7;
  result.columns[2].i64[0] = v6;
  result.columns[1].i64[1] = v5;
  result.columns[1].i64[0] = v4;
  result.columns[0].i64[1] = v3;
  result.columns[0].i64[0] = v2;
  return result;
}

- (simd_float4x4)rightEyeTransform
{
  [(ARFaceTrackingDataProtocol *)self->_trackingData rightEyeTransform];
  result.columns[3].i64[1] = v9;
  result.columns[3].i64[0] = v8;
  result.columns[2].i64[1] = v7;
  result.columns[2].i64[0] = v6;
  result.columns[1].i64[1] = v5;
  result.columns[1].i64[0] = v4;
  result.columns[0].i64[1] = v3;
  result.columns[0].i64[0] = v2;
  return result;
}

- (ARFaceAnchor)initWithAnchor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARFaceAnchor;
  v5 = [(ARAnchor *)&v8 initWithAnchor:v4];
  v6 = v5;
  if (v5)
  {
    v5->_isTracked = *(v4 + 184);
    objc_storeStrong(&v5->_trackingData, *(v4 + 25));
    objc_storeStrong(&v6->_geometry, *(v4 + 24));
    objc_storeStrong(&v6->_blendShapeCoefficientsDictionary, *(v4 + 22));
    objc_storeStrong(&v6->_trackingError, *(v4 + 26));
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = ARFaceAnchor;
  [(ARAnchor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_blendShapeCoefficientsDictionary forKey:@"blendShapeCoefficientsDictionary"];
  [v4 encodeObject:self->_trackingData forKey:@"trackingData"];
  [v4 encodeBool:self->_isTracked forKey:@"isTracked"];
  [v4 encodeObject:self->_trackingError forKey:@"trackingError"];
}

- (ARFaceAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ARFaceAnchor;
  v5 = [(ARAnchor *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"blendShapeCoefficientsDictionary"];
    blendShapeCoefficientsDictionary = v5->_blendShapeCoefficientsDictionary;
    v5->_blendShapeCoefficientsDictionary = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingData"];
    trackingData = v5->_trackingData;
    v5->_trackingData = v13;

    v5->_isTracked = [v4 decodeBoolForKey:@"isTracked"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    geometry = v5->_geometry;
    v5->_geometry = v15;

    if (!v5->_geometry)
    {
      v17 = [[ARFaceGeometry alloc] initWithFaceTrackingDataProtocol:v5->_trackingData];
      v18 = v5->_geometry;
      v5->_geometry = v17;
    }

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingError"];
    trackingError = v5->_trackingError;
    v5->_trackingError = v19;
  }

  return v5;
}

- (BOOL)isEqualToFaceAnchor:(id)a3
{
  v4 = a3;
  if ([v4[22] isEqualToDictionary:self->_blendShapeCoefficientsDictionary] && objc_msgSend(v4[25], "isEqual:", self->_trackingData) && objc_msgSend(v4[24], "isEqual:", self->_geometry))
  {
    v5 = [v4 isTracked];
    v6 = v5 ^ [(ARFaceAnchor *)self isTracked]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end