@interface ADCameraCalibration
+ (id)cameraCalibrationFromFile:(id)file;
+ (uint64_t)createIntrinsicsMatrixWithEFL:(double)l principalPointX:(double)x principalPointY:(double)y;
+ (void)transform:(unint64_t)transform points:with:outPoints:;
- (ADCameraCalibration)initWithDictionary:(id)dictionary;
- (ADCameraCalibration)initWithFile:(id)file;
- (ADNilDistortionModel)initWithIntrinsics:(__n128)intrinsics cameraToPlatformTransform:(__n128)transform pixelSize:(__n128)size referenceDimensions:(__n128)dimensions distortionModel:(__n128)model;
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToFile:(id)file atomically:(BOOL)atomically;
- (CGSize)referenceDimensions;
- (double)getTransformationTo:(int32x4_t *)to;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createDictionaryRepresentationWithHumanReadable:(BOOL)readable;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)backProject:(unint64_t)project undistortedPixels:(const CGPoint *)pixels withR:(const float *)r outPoints:;
- (void)project:(unint64_t)project points:outUndistortedPixels:outR:;
- (void)transform:(unint64_t)transform points:toCamera:outPoints:;
@end

@implementation ADCameraCalibration

- (CGSize)referenceDimensions
{
  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)writeToFile:(id)file atomically:(BOOL)atomically
{
  atomicallyCopy = atomically;
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v7 = [(ADCameraCalibration *)self createDictionaryRepresentationWithHumanReadable:1];
  lowercaseString = [fileCopy lowercaseString];
  v9 = [lowercaseString hasSuffix:@".json"];

  if (v9)
  {
    v15 = 0;
    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:1 error:&v15];
    v11 = v15;
    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = [v11 description];
        *buf = 138412290;
        v17 = v14;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed create camera calibration with error:%@", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v12 = [v10 writeToFile:fileCopy atomically:atomicallyCopy];
    }
  }

  else
  {
    v12 = [v7 writeToFile:fileCopy atomically:atomicallyCopy];
  }

  return v12;
}

- (ADCameraCalibration)initWithFile:(id)file
{
  v20 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = fileCopy;
  if (fileCopy)
  {
    lowercaseString = [fileCopy lowercaseString];
    v7 = [lowercaseString hasSuffix:@".json"];

    if (v7)
    {
      v17 = 0;
      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5 options:1 error:&v17];
      v9 = v17;
      v10 = v9;
      if (v8)
      {
        v16 = v9;
        v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:4 error:&v16];
        v12 = v16;

        v10 = v12;
        if (v12)
        {
LABEL_5:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v15 = [v10 description];
            *buf = 138412290;
            v19 = v15;
            _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed create camera calibration with error:%@", buf, 0xCu);
          }

          selfCopy = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
        if (v9)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
    }

    self = [(ADCameraCalibration *)self initWithDictionary:v11];
    selfCopy = self;
LABEL_13:

    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (id)createDictionaryRepresentationWithHumanReadable:(BOOL)readable
{
  readableCopy = readable;
  v59[9] = *MEMORY[0x277D85DE8];
  v56 = objc_opt_new();
  [v56 setObject:&unk_2852520E8 forKeyedSubscript:@"Version"];
  LODWORD(v4) = *self->_anon_10;
  v54 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v59[0] = v54;
  LODWORD(v5) = *&self->_anon_10[16];
  v52 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v59[1] = v52;
  LODWORD(v6) = *&self->_anon_10[32];
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v59[2] = v7;
  LODWORD(v8) = *&self->_anon_10[4];
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v59[3] = v9;
  LODWORD(v10) = *&self->_anon_10[20];
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v59[4] = v11;
  LODWORD(v12) = *&self->_anon_10[36];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v59[5] = v13;
  LODWORD(v14) = *&self->_anon_10[8];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v59[6] = v15;
  LODWORD(v16) = *&self->_anon_10[24];
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v59[7] = v17;
  LODWORD(v18) = *&self->_anon_10[40];
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v59[8] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:9];
  [v56 setObject:v20 forKeyedSubscript:@"intrinsicMatrix"];

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(self->_referenceDimensions);
  [v56 setObject:DictionaryRepresentation forKeyedSubscript:@"referenceDimensions"];

  LODWORD(v22) = *self->_anon_50;
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v58[0] = v55;
  LODWORD(v23) = *&self->_anon_50[16];
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v58[1] = v53;
  LODWORD(v24) = *&self->_anon_50[32];
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v58[2] = v51;
  LODWORD(v25) = *&self->_anon_50[48];
  v50 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v58[3] = v50;
  LODWORD(v26) = *&self->_anon_50[4];
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v58[4] = v49;
  LODWORD(v27) = *&self->_anon_50[20];
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v58[5] = v28;
  LODWORD(v29) = *&self->_anon_50[36];
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v58[6] = v30;
  LODWORD(v31) = *&self->_anon_50[52];
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v58[7] = v32;
  LODWORD(v33) = *&self->_anon_50[8];
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v58[8] = v34;
  LODWORD(v35) = *&self->_anon_50[24];
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  v58[9] = v36;
  LODWORD(v37) = *&self->_anon_50[40];
  v38 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
  v58[10] = v38;
  LODWORD(v39) = *&self->_anon_50[56];
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v58[11] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:12];
  [v56 setObject:v41 forKeyedSubscript:@"cameraToPlatformTransform"];

  *&v42 = self->_pixelSize;
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  [v56 setObject:v43 forKeyedSubscript:@"pixelSize"];

  if (objc_opt_respondsToSelector())
  {
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    [v56 setObject:v45 forKeyedSubscript:@"distortionType"];

    v46 = [(ADLensDistortionModel *)self->_distortionModel dictionaryRepresentation:readableCopy];
    [v56 addEntriesFromDictionary:v46];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "distortion model cannot be converted to dictionary. calibration will be missing distortion and won't be able to load from dictionary.", buf, 2u);
    }

    [v56 setObject:@"Unknown" forKeyedSubscript:@"distortionType"];
  }

  return v56;
}

- (ADCameraCalibration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = ADCameraCalibration;
  v5 = [(ADCameraCalibration *)&v39 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"intrinsicMatrix"];
    v7 = v6;
    if (v6 && [v6 count] == 9)
    {
      for (i = 0; i != 3; ++i)
      {
        v9 = 0;
        v10 = i;
        do
        {
          v11 = [v7 objectAtIndexedSubscript:v10];
          v12 = v11;
          if (!v11)
          {
            goto LABEL_28;
          }

          [v11 floatValue];
          v14 = v9;
          if ((v9 & 0xFFFFFFFE) != 0)
          {
            v14 = 2;
          }

          *&v5->_anon_10[16 * i + 4 * v14] = v13;

          ++v9;
          v10 += 3;
        }

        while (v9 != 3);
      }

      v15 = [dictionaryCopy objectForKeyedSubscript:@"referenceDimensions"];
      v37 = v15;
      if (v15 && CGSizeMakeWithDictionaryRepresentation(v15, &v5->_referenceDimensions))
      {
        v16 = [dictionaryCopy objectForKeyedSubscript:@"cameraToPlatformTransform"];
        if (v16 || ([dictionaryCopy objectForKeyedSubscript:@"extrinsicMatrix"], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          if ([v16 count] == 12)
          {
            v17 = 0;
            anon_50 = v5->_anon_50;
            v36 = v5->_anon_50;
            while (2)
            {
              v19 = 0;
              v20 = &anon_50[16 * v17];
              v21 = v17;
              do
              {
                v22 = [v16 objectAtIndexedSubscript:{v21, v36, v37}];
                v23 = v22;
                if (!v22)
                {
                  goto LABEL_33;
                }

                [v22 floatValue];
                v25 = v19;
                if ((v19 & 0xFFFFFFFE) != 0)
                {
                  v25 = 2;
                }

                *&v20[4 * v25] = v24;

                ++v19;
                v21 += 4;
              }

              while (v19 != 3);
              ++v17;
              anon_50 = v36;
              if (v17 != 4)
              {
                continue;
              }

              break;
            }

            v26 = [dictionaryCopy objectForKeyedSubscript:@"pixelSize"];
            v27 = v26;
            if (!v26)
            {
              v34 = 0;
              goto LABEL_41;
            }

            [v26 floatValue];
            v5->_pixelSize = v28;
            v29 = [dictionaryCopy objectForKeyedSubscript:@"distortionType"];
            v30 = allocateDistortionModelWithName(v29);
            distortionModel = v5->_distortionModel;
            v5->_distortionModel = v30;

            if (v5->_distortionModel && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v32 = [(ADLensDistortionModel *)v5->_distortionModel initWithDictionary:dictionaryCopy];
              v33 = v5->_distortionModel;
              v5->_distortionModel = v32;

              if (v5->_distortionModel)
              {
                v34 = v5;
LABEL_39:

LABEL_41:
                goto LABEL_34;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unknown distortion model or distortion model does not support loading from dictionary", buf, 2u);
            }

            v34 = 0;
            goto LABEL_39;
          }
        }

LABEL_33:
        v34 = 0;
LABEL_34:
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
LABEL_28:
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (void)backProject:(unint64_t)project undistortedPixels:(const CGPoint *)pixels withR:(const float *)r outPoints:
{
  if (project)
  {
    v6.i32[0] = LODWORD(self->_pixelSize);
    v7 = *self->_anon_10;
    v8 = v6.f32[0] * v7;
    v9 = COERCE_FLOAT(*&self->_anon_10[32]);
    v10 = COERCE_FLOAT(HIDWORD(*&self->_anon_10[32]));
    v6.f32[1] = v7 / *&self->_anon_10[20];
    v11 = vcvtq_f64_f32(v6);
    p_y = &pixels->y;
    do
    {
      v13.f64[0] = *(p_y - 1) - v9;
      v13.f64[1] = (*p_y - v10) * v11.f64[0];
      v14 = vmulq_f64(v13, v11);
      v15 = vcvt_f32_f64(v14);
      v16 = vmul_f32(v15, v15);
      v17 = *r++;
      v16.f32[0] = v17 / sqrtf(((v8 * v8) + v16.f32[0]) + v16.f32[1]);
      v5[1].f32[0] = v8 * v16.f32[0];
      *v5 = vcvt_f32_f64(vmulq_n_f64(v14, v16.f32[0]));
      v5 += 2;
      p_y += 2;
      --project;
    }

    while (project);
  }
}

- (void)project:(unint64_t)project points:outUndistortedPixels:outR:
{
  for (; project; --project)
  {
    v6 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*self->_anon_10, COERCE_FLOAT(*v3->f32)), *&self->_anon_10[16], *v3, 1), *&self->_anon_10[32], *v3->f32, 2);
    if (*&v6.i32[2] <= 0.0)
    {
      v4->f64[0] = 0.0;
      v4->f64[1] = 0.0;
      v8 = 0.0;
    }

    else
    {
      *v4 = vcvtq_f64_f32(vdiv_f32(*v6.i8, vdup_laneq_s32(v6, 2)));
      v7 = vmulq_f32(*v3->f32, *v3->f32);
      v8 = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
    }

    *v5++ = v8;
    ++v4;
    v3 += 2;
  }
}

- (void)transform:(unint64_t)transform points:toCamera:outPoints:
{
  v6 = v5;
  v7 = v3;
  v10 = v4;
  [(ADCameraCalibration *)self getTransformationTo:?];
  [ADCameraCalibration transform:transform points:v7 with:v6 outPoints:?];
}

- (double)getTransformationTo:(int32x4_t *)to
{
  v3 = 0;
  v4 = to[5];
  v5 = to[6];
  v6 = vdupq_lane_s32(*v5.i8, 1);
  v7 = vzip1q_s32(v4, v5);
  v7.i32[2] = to[7];
  v8 = vzip2q_s32(v4, v5);
  v8.i32[2] = to[7].i64[1];
  v9 = vzip2q_s32(vzip1q_s32(v4, to[7]), v6);
  v11[2] = *(self + 112);
  do
  {
    *(&v12 + v3 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(v11[v3])), v9, *&v11[v3], 1), v8, v11[v3], 2);
    ++v3;
  }

  while (v3 != 3);
  return *&v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  pixelSize = self->_pixelSize;
  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  v18 = *&self->_anon_10[32];
  v16 = *&self->_anon_10[16];
  v14 = *self->_anon_10;
  v19 = *&self->_anon_50[48];
  v17 = *&self->_anon_50[32];
  v15 = *&self->_anon_50[16];
  v13 = *self->_anon_50;
  v9 = [(ADLensDistortionModel *)self->_distortionModel copyWithZone:zone];
  *&v10 = pixelSize;
  v11 = [v5 initWithIntrinsics:v9 cameraToPlatformTransform:*&v14 pixelSize:*&v16 referenceDimensions:*&v18 distortionModel:{*&v13, *&v15, *&v17, *&v19, v10, *&width, *&height}];

  return v11;
}

- (ADNilDistortionModel)initWithIntrinsics:(__n128)intrinsics cameraToPlatformTransform:(__n128)transform pixelSize:(__n128)size referenceDimensions:(__n128)dimensions distortionModel:(__n128)model
{
  selfCopy = a11;
  if (selfCopy || (selfCopy = objc_alloc_init(ADNilDistortionModel)) != 0)
  {
    v38.receiver = self;
    v38.super_class = ADCameraCalibration;
    v21 = [(ADCameraCalibration *)&v38 init:*&a2];
    v22 = v21;
    if (v21)
    {
      *v21->_anon_10 = v25;
      *&v21->_anon_10[16] = v27;
      *&v21->_anon_10[32] = v29;
      *v21->_anon_50 = v31;
      *&v21->_anon_50[16] = v33;
      *&v21->_anon_50[32] = v35;
      *&v21->_anon_50[48] = v37;
      v21->_pixelSize = a9;
      v21->_referenceDimensions.width = a12;
      v21->_referenceDimensions.height = a13;
      objc_storeStrong(&v21->_distortionModel, selfCopy);
    }

    self = v22;

    selfCopy = self;
  }

  return selfCopy;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [ADMutableCameraCalibration alloc];
  pixelSize = self->_pixelSize;
  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  v18 = *&self->_anon_10[32];
  v16 = *&self->_anon_10[16];
  v14 = *self->_anon_10;
  v19 = *&self->_anon_50[48];
  v17 = *&self->_anon_50[32];
  v15 = *&self->_anon_50[16];
  v13 = *self->_anon_50;
  v9 = [(ADLensDistortionModel *)self->_distortionModel copyWithZone:zone];
  *&v10 = pixelSize;
  v11 = [(ADCameraCalibration *)v5 initWithIntrinsics:v9 cameraToPlatformTransform:*&v14 pixelSize:*&v16 referenceDimensions:*&v18 distortionModel:*&v13, *&v15, *&v17, *&v19, v10, *&width, *&height];

  return v11;
}

+ (id)cameraCalibrationFromFile:(id)file
{
  fileCopy = file;
  v4 = [[ADCameraCalibration alloc] initWithFile:fileCopy];

  return v4;
}

+ (void)transform:(unint64_t)transform points:with:outPoints:
{
  if (transform)
  {
    v9 = (v3 + 8);
    v10.i64[0] = 0x3F0000003FLL;
    v10.i64[1] = 0x3F0000003FLL;
    v11 = vnegq_f32(v10);
    do
    {
      v12 = v11;
      if (*v9 != 0.0)
      {
        v12 = vaddq_f32(v8, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*(v9 - 2))), v6, *(v9 - 2), 1), v7, *(v9 - 2), 2));
      }

      *v4++ = v12;
      v9 += 4;
      --transform;
    }

    while (transform);
  }
}

+ (uint64_t)createIntrinsicsMatrixWithEFL:(double)l principalPointX:(double)x principalPointY:(double)y
{
  LODWORD(a6) = LODWORD(y);
  LODWORD(y) = LODWORD(x);
  LODWORD(x) = LODWORD(l);
  return [self createIntrinsicsMatrixWithEflX:l eflY:x principalPointX:y principalPointY:a6];
}

- (unint64_t)hash
{
  anon_10 = self->_anon_10;
  v4 = objc_opt_new();
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      LODWORD(v5) = *&anon_10[16 * i + 4 * (j & 3)];
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
      [v4 addObject:v8];
    }
  }

  v10 = ADCommonUtils::hashArray(v4, v9);

  v11 = objc_opt_new();
  for (k = 0; k != 4; ++k)
  {
    for (m = 0; m != 3; ++m)
    {
      LODWORD(v12) = *&self->_anon_50[16 * k + 4 * (m & 3)];
      v15 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
      [v11 addObject:v15];
    }
  }

  v17 = ADCommonUtils::hashArray(v11, v16);

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_referenceDimensions.width];
  v19 = [v18 hash];

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_referenceDimensions.height];
  v21 = [v20 hash];

  *&v22 = self->_pixelSize;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v24 = v10 ^ (2 * v17) ^ (3 * v19) ^ (4 * v21) ^ (5 * [v23 hash]);

  return v24 ^ (6 * [(ADLensDistortionModel *)self->_distortionModel hash]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_8;
  }

  if (self == equalCopy)
  {
    v16 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_10;
  }

  v6 = v5;
  v27 = *&self->_anon_10[16];
  v29 = *self->_anon_10;
  v31 = *&self->_anon_10[32];
  [(ADCameraCalibration *)v6 intrinsicMatrix];
  v10 = vandq_s8(vandq_s8(vceqq_f32(v29, v7), vceqq_f32(v27, v8)), vceqq_f32(v31, v9));
  v10.i32[3] = v10.i32[2];
  if ((vminvq_u32(v10) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v26 = *&self->_anon_50[16];
  v28 = *self->_anon_50;
  v30 = *&self->_anon_50[48];
  v32 = *&self->_anon_50[32];
  [(ADCameraCalibration *)v6 cameraToPlatformTransform];
  v15 = vandq_s8(vandq_s8(vceqq_f32(v28, v11), vceqq_f32(v26, v12)), vandq_s8(vceqq_f32(v32, v13), vceqq_f32(v30, v14)));
  v15.i32[3] = v15.i32[2];
  if ((vminvq_u32(v15) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  [(ADCameraCalibration *)v6 referenceDimensions];
  v16 = 0;
  if (width != v21 || height != v20)
  {
    goto LABEL_7;
  }

  pixelSize = self->_pixelSize;
  [(ADCameraCalibration *)v6 pixelSize];
  if (pixelSize == v23)
  {
    distortionModel = self->_distortionModel;
    distortionModel = [(ADCameraCalibration *)v6 distortionModel];
    v16 = [(ADLensDistortionModel *)distortionModel isEqual:distortionModel];
  }

  else
  {
LABEL_6:
    v16 = 0;
  }

LABEL_7:

LABEL_10:
  return v16;
}

@end