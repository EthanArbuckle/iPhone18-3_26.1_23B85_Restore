@interface CIInpaintFilter
+ (BOOL)dumpInpaintImages;
+ (NSNumber)defaultMaskDilateSize;
+ (NSNumber)defaultMaskToSurroundRatio;
+ (NSNumber)defaultRefinementMultipass;
+ (double)getMaskMarginFactor;
+ (double)getRefineQualityBar;
+ (double)smallBlurSize;
+ (id)customAttributes;
+ (id)defaultExcludeMaskSurroundMultiplier;
+ (id)defaultFeatherAmount;
+ (id)defaultRefinementModel;
+ (id)loadModel:(id)a3;
+ (id)loadModelConfig;
+ (id)loadRefinementModel:(id)a3;
+ (id)refine:(id)a3 hires:(id)a4 mask:(id)a5 colorSpace:(CGColorSpace *)a6 orientation:(int)a7 hint:(id)a8 scale:(float)a9 dumpImageIndex:(int)a10;
+ (id)repairTile:(id)a3 mask:(id)a4 colorSpace:(CGColorSpace *)a5 orientation:(int)a6 hint:(id)a7 version:(int)a8 scale:(float)a9 dumpImageIndex:(int)a10 dumpTileIndex:(int)a11;
+ (id)userDefaults;
+ (int)modelDimensionForVersion:(int)a3 hint:(id)a4;
- (CGRect)outputMaskSurroundExtent;
- (double)maskCoverage;
- (double)maskToSurroundRatio;
- (float)dilateSize;
- (float)estimateFinalQuality;
- (float)featherAmount;
- (id)blendBack:(id)a3 mask:(id)a4;
- (id)outputImage;
- (id)outputImageAndRect:(CGRect *)a3 strategy:(id *)a4 allowDump:(BOOL)a5;
- (id)outputStrategy;
@end

@implementation CIInpaintFilter

+ (id)userDefaults
{
  if ((atomic_load_explicit(&qword_18D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18D50))
  {
    qword_18D48 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18D50);
  }

  v2 = qword_18D48;

  return v2;
}

+ (double)smallBlurSize
{
  if ((atomic_load_explicit(&qword_18D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18D60))
  {
    qword_18D58 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18D60);
  }

  v2 = [qword_18D58 dictionaryRepresentation];
  v3 = [v2 objectForKeyedSubscript:@"CIInpaintFilter.smallBlurSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v4 = 2.0, (objc_opt_isKindOfClass()))
  {
    [v3 doubleValue];
    v6 = v5;
    v7 = sub_A028();
    v4 = fmin(fmax(v6, 0.0), 10.0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.smallBlurSize default set to %g.", &v10, 0x16u);
    }
  }

  return v4;
}

+ (NSNumber)defaultRefinementMultipass
{
  v2 = [a1 userDefaults];
  v3 = [v2 dictionaryRepresentation];

  v4 = [v3 objectForKeyedSubscript:@"CIInpaintFilter.inputRefinementMultipass"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 BOOLValue]);

    v6 = sub_A028();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      v10 = 138543618;
      v11 = v7;
      v12 = 1024;
      v13 = [v5 BOOLValue];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputRefinementMultipass default set to %d.", &v10, 0x12u);
    }

    v4 = v5;
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NSNumber)defaultMaskDilateSize
{
  v2 = [a1 userDefaults];
  v3 = [v2 dictionaryRepresentation];

  v4 = [v3 objectForKeyedSubscript:@"CIInpaintFilter.inputMaskDilateSize"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue]);

    v6 = sub_A028();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      v10 = 138543618;
      v11 = v7;
      v12 = 1024;
      v13 = [v5 intValue];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputMaskDilateSize default set to %d.", &v10, 0x12u);
    }

    v4 = v5;
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)defaultFeatherAmount
{
  v2 = [a1 userDefaults];
  v3 = [v2 dictionaryRepresentation];

  v4 = [v3 objectForKeyedSubscript:@"CIInpaintFilter.inputFeatherAmount"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v4 floatValue];
    v5 = [NSNumber numberWithFloat:?];

    v6 = sub_A028();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      [v5 floatValue];
      v11 = 138543618;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputFeatherAmount default set to %f.", &v11, 0x16u);
    }

    v4 = v5;
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (NSNumber)defaultMaskToSurroundRatio
{
  v2 = [a1 userDefaults];
  v3 = [v2 dictionaryRepresentation];

  v4 = [v3 objectForKeyedSubscript:@"CIInpaintFilter.inputMaskToSurroundRatio"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v4 floatValue];
    v5 = [NSNumber numberWithFloat:?];

    v6 = sub_A028();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      [v5 floatValue];
      v11 = 138543618;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputMaskToSurroundRatio default set to %f.", &v11, 0x16u);
    }

    v4 = v5;
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)defaultExcludeMaskSurroundMultiplier
{
  v2 = [a1 userDefaults];
  v3 = [v2 dictionaryRepresentation];

  v4 = [v3 objectForKeyedSubscript:@"CIInpaintFilter.inputExcludeMaskSurroundMultiplier"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v4 floatValue];
    v5 = [NSNumber numberWithFloat:?];

    v6 = sub_A028();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      [v5 floatValue];
      v11 = 138543618;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputExcludeMaskSurroundMultiplier default set to %f.", &v11, 0x16u);
    }

    v4 = v5;
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)defaultRefinementModel
{
  v2 = [a1 userDefaults];
  v3 = [v2 dictionaryRepresentation];

  v4 = [v3 objectForKeyedSubscript:@"CIInpaintFilter.inputRefinementModel"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 BOOLValue]);

    v6 = sub_A028();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      v10 = 138543618;
      v11 = v7;
      v12 = 1024;
      v13 = [v5 BOOLValue];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputRefinementModel default set to %d.", &v10, 0x12u);
    }

    v4 = v5;
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)dumpInpaintImages
{
  v2 = [a1 userDefaults];
  v3 = [v2 dictionaryRepresentation];

  v4 = [v3 objectForKeyedSubscript:@"dumpInpaintImages"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 hasPrefix:@"/"] & 1) != 0 || (objc_msgSend(v4, "isEqual:", &__kCFBooleanTrue) & 1) != 0 || (objc_msgSend(v4, "isEqual:", &off_152D8))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:@"1"];
  }

  return v5;
}

+ (double)getRefineQualityBar
{
  if ((atomic_load_explicit(&qword_18D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18D70))
  {
    qword_18D68 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18D70);
  }

  v2 = [qword_18D68 dictionaryRepresentation];
  v3 = [v2 objectForKeyedSubscript:@"refineQualityBar"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v4 = 0.75, (objc_opt_isKindOfClass()))
  {
    [v3 doubleValue];
    v6 = v5;
    v7 = sub_A028();
    v4 = fmin(fmax(v6, 0.5), 1.0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.refineQualityBar default set to %g.", &v10, 0x16u);
    }
  }

  return v4;
}

+ (double)getMaskMarginFactor
{
  if ((atomic_load_explicit(&qword_18D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18D80))
  {
    qword_18D78 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18D80);
  }

  v2 = [qword_18D78 dictionaryRepresentation];
  v3 = [v2 objectForKeyedSubscript:@"maskMarginFactor"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v3 doubleValue];
    v5 = v4;
    v6 = sub_A028();
    v7 = fmin(fmax(v5, 1.0), 1.5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.maskMarginFactor default set to %g.", &v10, 0x16u);
    }
  }

  else
  {
    v7 = 1.05;
  }

  return v7;
}

+ (id)customAttributes
{
  v53[0] = @"inputVersion";
  v51[0] = kCIAttributeType;
  v51[1] = kCIAttributeMin;
  v52[0] = kCIAttributeTypeInteger;
  v52[1] = &off_152F0;
  v51[2] = kCIAttributeMax;
  v51[3] = kCIAttributeDefault;
  v52[2] = &off_152D8;
  v52[3] = &off_152D8;
  v32 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
  v54[0] = v32;
  v53[1] = @"inputMaskToSurroundRatio";
  v49[0] = kCIAttributeType;
  v49[1] = kCIAttributeMin;
  v50[0] = kCIAttributeTypeScalar;
  v50[1] = &off_15380;
  v50[2] = &off_15390;
  v49[2] = kCIAttributeMax;
  v49[3] = kCIAttributeDefault;
  v3 = [a1 defaultMaskToSurroundRatio];
  v4 = &off_153A0;
  v31 = v3;
  if (v3)
  {
    v4 = v3;
  }

  v50[3] = v4;
  v30 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
  v54[1] = v30;
  v53[2] = @"inputMaskCoverage";
  v47[0] = kCIAttributeType;
  v47[1] = kCIAttributeMin;
  v48[0] = kCIAttributeTypeScalar;
  v48[1] = &off_153B0;
  v47[2] = kCIAttributeMax;
  v47[3] = kCIAttributeDefault;
  v48[2] = &off_15390;
  v48[3] = &off_15390;
  v29 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
  v54[2] = v29;
  v53[3] = @"inputExcludeMaskSurroundMultiplier";
  v45[0] = kCIAttributeType;
  v45[1] = kCIAttributeMin;
  v46[0] = kCIAttributeTypeScalar;
  v46[1] = &off_15390;
  v46[2] = &off_153C0;
  v45[2] = kCIAttributeMax;
  v45[3] = kCIAttributeDefault;
  v5 = [a1 defaultExcludeMaskSurroundMultiplier];
  v6 = &off_153D0;
  v28 = v5;
  if (v5)
  {
    v6 = v5;
  }

  v46[3] = v6;
  v27 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];
  v54[3] = v27;
  v53[4] = @"inputMultipass";
  v43[0] = kCIAttributeType;
  v43[1] = kCIAttributeMin;
  v44[0] = kCIAttributeTypeInteger;
  v44[1] = &off_152F0;
  v43[2] = kCIAttributeMax;
  v43[3] = kCIAttributeDefault;
  v44[2] = &off_15308;
  v44[3] = &off_152F0;
  v26 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
  v54[4] = v26;
  v53[5] = @"inputMaskDilateSize";
  v41[0] = kCIAttributeType;
  v41[1] = kCIAttributeMin;
  v42[0] = kCIAttributeTypeInteger;
  v42[1] = &off_152F0;
  v42[2] = &off_15320;
  v41[2] = kCIAttributeMax;
  v41[3] = kCIAttributeDefault;
  v7 = +[CIInpaintFilter defaultMaskDilateSize];
  v25 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &off_152F0;
  }

  v42[3] = v8;
  v24 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
  v54[5] = v24;
  v53[6] = @"inputTileProgressive";
  v39[0] = kCIAttributeType;
  v39[1] = kCIAttributeMin;
  v40[0] = kCIAttributeTypeBoolean;
  v40[1] = &__kCFBooleanFalse;
  v39[2] = kCIAttributeMax;
  v39[3] = kCIAttributeDefault;
  v40[2] = &__kCFBooleanTrue;
  v40[3] = &__kCFBooleanFalse;
  v23 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
  v54[6] = v23;
  v53[7] = @"inputRefinementModel";
  v37 = kCIAttributeDefault;
  v9 = [a1 defaultRefinementModel];
  v22 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__kCFBooleanTrue;
  }

  v38 = v10;
  v21 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v54[7] = v21;
  v53[8] = @"inputRefinementMultipass";
  v35[0] = kCIAttributeType;
  v35[1] = kCIAttributeMin;
  v36[0] = kCIAttributeTypeBoolean;
  v36[1] = &__kCFBooleanFalse;
  v36[2] = &__kCFBooleanTrue;
  v35[2] = kCIAttributeMax;
  v35[3] = kCIAttributeDefault;
  v11 = [a1 defaultRefinementMultipass];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &__kCFBooleanTrue;
  }

  v36[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v54[8] = v14;
  v53[9] = @"inputFeatherAmount";
  v33[0] = kCIAttributeType;
  v33[1] = kCIAttributeMin;
  v34[0] = kCIAttributeTypeScalar;
  v34[1] = &off_153B0;
  v34[2] = &off_153E0;
  v33[2] = kCIAttributeMax;
  v33[3] = kCIAttributeDefault;
  v15 = [a1 defaultFeatherAmount];
  v16 = v15;
  v17 = &off_15338;
  if (v15)
  {
    v17 = v15;
  }

  v34[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
  v54[9] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:10];

  return v19;
}

+ (id)loadModelConfig
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3FCC;
  block[3] = &unk_144E0;
  block[4] = a1;
  if (qword_18D88 != -1)
  {
    dispatch_once(&qword_18D88, block);
  }

  v2 = qword_18D90;

  return v2;
}

+ (id)loadModel:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
LABEL_14:
    v9 = v5;
    goto LABEL_18;
  }

  if (v4)
  {
    v6 = sub_A028();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      sub_B690();
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_4450;
    v18[3] = &unk_144E0;
    v18[4] = a1;
    if (qword_18DA0 != -1)
    {
      dispatch_once(&qword_18DA0, v18);
    }

    v5 = qword_18D98;
    goto LABEL_14;
  }

  v7 = v4;
  v8 = [a1 loadModelConfig];
  v19 = 0;
  v9 = [MLModel modelWithContentsOfURL:v7 configuration:v8 error:&v19];
  v10 = v19;

  v11 = [v9 valueForKeyPath:@"modelDescription.metadata.MLModelDescriptionKey"];
  if (v9)
  {
    v12 = sub_A028();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_opt_class() description];
      v14 = [v7 path];
      *buf = 138543874;
      v21 = v13;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintFilter using inpaint model %{public}@ at path: %{public}@.", buf, 0x20u);
    }
  }

  else
  {
    v12 = sub_A028();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_opt_class() description];
      v16 = [v7 path];
      sub_B6D4(v15, v16, buf);
    }
  }

LABEL_18:

  return v9;
}

+ (id)loadRefinementModel:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v4;
  if ((isKindOfClass & 1) == 0)
  {
    if (v4 == &__kCFBooleanFalse || v4 == &off_152F0)
    {
      v8 = 0;
      goto LABEL_12;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4904;
    block[3] = &unk_144E0;
    block[4] = a1;
    if (qword_18DB0 != -1)
    {
      dispatch_once(&qword_18DB0, block);
    }

    v6 = qword_18DA8;
  }

  v8 = v6;
LABEL_12:

  return v8;
}

- (double)maskToSurroundRatio
{
  inputMaskToSurroundRatio = self->inputMaskToSurroundRatio;
  if (inputMaskToSurroundRatio)
  {
    [(NSNumber *)inputMaskToSurroundRatio doubleValue];
  }

  else
  {
    v3 = 0.25;
  }

  return fmin(fmax(v3, 0.1), 1.0);
}

- (double)maskCoverage
{
  inputMaskCoverage = self->inputMaskCoverage;
  v3 = 1.0;
  if (inputMaskCoverage)
  {
    [(NSNumber *)inputMaskCoverage doubleValue];
  }

  return fmin(fmax(v3, 0.0), 1.0);
}

- (float)featherAmount
{
  inputFeatherAmount = self->inputFeatherAmount;
  if (inputFeatherAmount)
  {
    [(NSNumber *)inputFeatherAmount floatValue];
  }

  else
  {
    v3 = 2.0;
  }

  return fminf(fmaxf(v3, 0.0), 10.0);
}

- (float)dilateSize
{
  inputMaskDilateSize = self->inputMaskDilateSize;
  v3 = 0.0;
  if (inputMaskDilateSize)
  {
    [(NSNumber *)inputMaskDilateSize floatValue];
  }

  return fminf(fmaxf(v3, 0.0), 500.0);
}

+ (int)modelDimensionForVersion:(int)a3 hint:(id)a4
{
  v5 = a4;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = [CIInpaintFilter loadModel:v5];
      v7 = sub_4E4C(v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 512;
  }

  return v7;
}

+ (id)repairTile:(id)a3 mask:(id)a4 colorSpace:(CGColorSpace *)a5 orientation:(int)a6 hint:(id)a7 version:(int)a8 scale:(float)a9 dumpImageIndex:(int)a10 dumpTileIndex:(int)a11
{
  v12 = *&a8;
  v88 = a3;
  v16 = a4;
  v17 = a7;
  v87 = v17;
  v18 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  space = v18;
  if (a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = v18;
  }

  v86 = v19;
  v20 = &ApplyOldInpaintModel__metaData;
  v21 = [CIInpaintFilter modelDimensionForVersion:v12 hint:v17];
  v22 = [v16 imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&off_15410];

  if (v12 != 1)
  {
    if (v12)
    {
      v49 = [v88 imageByInsertingIntermediate];
      goto LABEL_22;
    }

    v84 = [NSBundle bundleForClass:objc_opt_class()];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v17;
LABEL_15:
        v87 = v23;
        v24 = [v84 pathForResource:? ofType:?];
        v25 = [CIIF_EspressoWrapper cachedEspressoWrapper:v24];
        if (v25)
        {
          v51 = sub_A028();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [objc_opt_class() description];
            *buf = 138543618;
            v96 = v52;
            v97 = 2114;
            v98 = v24;
            _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintFilter using v0 inpaint model at path: %{public}@.", buf, 0x16u);
          }
        }

        else
        {
          v51 = sub_A028();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v53 = [objc_opt_class() description];
            sub_B800(v53, v24, buf);
          }
        }

        v49 = [ApplyOldInpaintModel apply:v88 mask:v22 tileSize:v21 model:v25];
        goto LABEL_21;
      }

      v50 = sub_A028();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        sub_B7BC();
      }
    }

    v23 = @"inp_gen_eds2_00_q16";
    goto LABEL_15;
  }

  v84 = [CIInpaintFilter loadModel:v17];
  v24 = [v88 imageByColorMatchingWorkingSpaceToColorSpace:v86];
  v20 = &CGAffineTransformMakeScale_ptr;
  v25 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_pre (__sample s, __sample mask) { float m = (mask.r > 0.01) ? 1.0 : 0.0 return vec4(0.5 - m, (clamp(s.rgb, 0.0, 1.0)*2.0 - 1.0)*(1.0 - m)); }"];;
  [v24 extent];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v94[0] = v24;
  v94[1] = v22;
  v34 = [NSArray arrayWithObjects:v94 count:2];
  v35 = [v25 applyWithExtent:v34 arguments:{v27, v29, v31, v33}];

  v92[0] = @"inputModel";
  v92[1] = @"_logName";
  v93[0] = v84;
  v93[1] = @"CIInpaintRepair";
  v36 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
  v37 = [v35 imageByApplyingFilter:@"CICoreMLModelFilter" withInputParameters:v36];

  v38 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_post (__sample s) __attribute__((preserves_opacity)) { return vec4((s.rgb+1.0)/2.0, s.a) }"];;
  [v37 extent];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v91 = v37;
  v47 = [NSArray arrayWithObjects:&v91 count:1];
  v48 = [v38 applyWithExtent:v47 arguments:{v40, v42, v44, v46}];

  v49 = [v48 imageByColorMatchingColorSpaceToWorkingSpace:v86];

LABEL_21:
LABEL_22:
  if (a10)
  {
    v54 = sub_58F8(a10, a11, "inpaint");
    LODWORD(v20) = llroundf(a9 * 100.0);
    v55 = [NSString stringWithFormat:@"%@_inrgb_scale%d.png", v54, v20];
    v56 = sub_59F8(v22);
    v57 = v88;
    v58 = v56;
    [v57 extent];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    [v58 extent];
    v103.origin.x = v67;
    v103.origin.y = v68;
    v103.size.width = v69;
    v103.size.height = v70;
    v101.origin.x = v60;
    v101.origin.y = v62;
    v101.size.width = v64;
    v101.size.height = v66;
    v102 = CGRectIntersection(v101, v103);
    x = v102.origin.x;
    y = v102.origin.y;
    width = v102.size.width;
    height = v102.size.height;
    if (CGRectIsEmpty(v102))
    {
      v75 = +[CIImage emptyImage];
    }

    else
    {
      v76 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_timesMask (__sample a, __sample b) { return a * b.r }"];;
      v99[0] = v57;
      v99[1] = v58;
      v77 = [NSArray arrayWithObjects:v99 count:2];
      v75 = [v76 applyWithExtent:v77 arguments:{x, y, width, height}];
    }

    sub_5B28(v75, v86, v55, a6);
    v78 = [NSString stringWithFormat:@"%@_inmask_scale%d.png", v54, v20];

    sub_5D84(v22, v78, a6);
    v89[0] = kCIInputBackgroundImageKey;
    v89[1] = kCIInputMaskImageKey;
    v90[0] = v57;
    v90[1] = v22;
    v79 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
    v80 = [v49 imageByApplyingFilter:@"CIBlendWithRedMask" withInputParameters:v79];

    v81 = [NSString stringWithFormat:@"%@_outblend_scale%d.png", v54, v20];

    sub_5B28(v80, v86, v81, a6);
  }

  CGColorSpaceRelease(space);

  return v49;
}

+ (id)refine:(id)a3 hires:(id)a4 mask:(id)a5 colorSpace:(CGColorSpace *)a6 orientation:(int)a7 hint:(id)a8 scale:(float)a9 dumpImageIndex:(int)a10
{
  v14 = a3;
  v15 = a4;
  v178 = a5;
  v173 = a8;
  v16 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  space = v16;
  if (a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = v16;
  }

  v18 = sub_7148(v14, v17);

  v181 = sub_7148(v15, v17);
  v180 = v18;

  v170 = [CIInpaintFilter loadRefinementModel:v173];
  v182 = sub_4E4C(v170);
  v188 = [CIFilter filterWithName:@"CICoreMLModelFilter"];
  [v188 setValue:v170 forKey:@"inputModel"];
  [v188 setValue:@"CIInpaintRefine" forKey:@"_logName"];
  v19 = [CIImage imageYCC444:v18 matrix:601 fullRange:1 precision:8 colorSpace:0];
  v20 = [CIImage imageYCC444:v181 matrix:601 fullRange:1 precision:8 colorSpace:0];
  v21 = sub_71B4(v19);

  v176 = sub_71B4(v20);
  v179 = v21;

  +[CIInpaintFilter smallBlurSize];
  v23 = v22;
  v171 = sub_72F0(v21);
  [v171 extent];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v171 imageByClampingToExtent];

  v33 = [CIVector vectorWithValues:&unk_DAE8 count:25];
  v199 = v17;
  *&v205.a = @"inputWeights";
  *&v206.a = v33;
  v34 = [NSDictionary dictionaryWithObjects:&v206 forKeys:&v205 count:1];
  v35 = [v32 imageByApplyingFilter:@"CIConvolution5X5" withInputParameters:v34];

  v177 = [v35 imageByCroppingToRect:{v25, v27, v29, v31}];

  [v181 extent];
  v37 = v182;
  v183 = llround(v38 / v182);
  v39 = v17;
  v40 = a10;
  v41 = 0;
  if (v183 >= 1)
  {
    v42 = 0;
    v43 = 1;
    LODWORD(v36) = llroundf(a9 * 100.0);
    v194 = v36;
    v44 = v183;
    do
    {
      v175 = v42;
      v45 = (v42 * v182);
      v46 = 0;
      v174 = v43;
      v198 = v43;
      do
      {
        v185 = v44;
        v186 = v46;
        v47 = v46;
        v190 = sub_742C(v180, v46, v45, v37, v37);
        v189 = v41;
        v197 = sub_742C(v181, v47, v45, v37, v37);
        v196 = sub_742C(v178, v47, v45, v37, v37);
        v48 = sub_7510(v196, 0.125);
        if (v40)
        {
          if (v183 == 1)
          {
            v49 = 0;
          }

          else
          {
            v49 = v198;
          }

          v50 = sub_58F8(v40, v49, "refine");
          v51 = [NSString stringWithFormat:@"%@_inlr_scale%d.png", v50, v194];
          v52 = sub_75B4(v190, v39);
          sub_5B28(v52, v39, v51, a7);

          v53 = [NSString stringWithFormat:@"%@_inhr_scale%d.png", v50, v194];

          v54 = sub_75B4(v197, v199);
          sub_5B28(v54, v199, v53, a7);

          v55 = [NSString stringWithFormat:@"%@_inmask_scale%d.png", v50, v194];

          sub_5D84(v196, v55, a7);
        }

        v193 = sub_742C(v179, v47, v45, v37, v37);
        v187 = sub_742C(v177, v47, v45, v37, v37);
        v192 = sub_742C(v176, v47, v45, v37, v37);
        v56 = v48;
        v57 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_threshNegInf (__sample s) __attribute__((outputFormat(kCIFormatRh))) { float negInf = -1.0E20 float v = (s.r>0.01) ? negInf : 0.0; return vec4(v, 0, 0, 1); }"];;
        [v56 extent];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        *&v206.a = v56;
        v66 = [NSArray arrayWithObjects:&v206 count:1];
        v191 = [v57 applyWithExtent:v66 arguments:{v59, v61, v63, v65}];

        v203[0] = @"in_img_1";
        v203[1] = @"in_img_2";
        v204[0] = v193;
        v204[1] = v192;
        v203[2] = @"in_attn_mask";
        v204[2] = v191;
        v67 = [NSDictionary dictionaryWithObjects:v204 forKeys:v203 count:3];
        [v188 setValue:v67 forKey:@"inputImage"];

        v68 = [v188 outputImage];
        v69 = sub_72F0(v68);

        v200 = v69;
        [v200 extent];
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;
        v78 = [v200 imageByClampingToExtent];

        v79 = [v78 imageByApplyingGaussianBlurWithSigma:v23];

        v80 = [v79 imageByCroppingToRect:{v71, v73, v75, v77}];

        v81 = v200;
        v82 = v80;
        v83 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_y_diff (__sample a, __sample b) __attribute__((outputFormat(kCIFormatRh))) { return vec4(a.r - b.r, 0.0, 0.0, 1.0) }"];;
        [v81 extent];
        v85 = v84;
        v87 = v86;
        v89 = v88;
        v91 = v90;
        *&v206.a = v81;
        *&v206.b = v82;
        v92 = [NSArray arrayWithObjects:&v206 count:2];
        v93 = [v83 applyWithExtent:v92 arguments:{v85, v87, v89, v91}];
        v184 = v81;

        v94 = v187;
        v95 = v93;
        v96 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_y_plus_y (__sample a, __sample b) __attribute__((outputFormat(kCIFormatRh))) { return vec4(a.r + b.r, 0.0, 0.0, 1.0) }"];;
        [v94 extent];
        v98 = v97;
        v100 = v99;
        v102 = v101;
        v104 = v103;
        [v95 extent];
        v210.origin.x = v105;
        v210.origin.y = v106;
        v210.size.width = v107;
        v210.size.height = v108;
        v208.origin.x = v98;
        v208.origin.y = v100;
        v208.size.width = v102;
        v208.size.height = v104;
        v209 = CGRectUnion(v208, v210);
        x = v209.origin.x;
        y = v209.origin.y;
        width = v209.size.width;
        height = v209.size.height;
        *&v206.a = v94;
        *&v206.b = v95;
        v113 = [NSArray arrayWithObjects:&v206 count:2];
        v114 = [v96 applyWithExtent:v113 arguments:{x, y, width, height}];

        v115 = v114;
        v116 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_y_clamp_m1p1 (__sample a) __attribute__((outputFormat(kCIFormatRh))) { float Y = clamp(a.r, -1.0, 1.0) return vec4(Y, 0.0, 0.0, 1.0); }"];;
        [v115 extent];
        v118 = v117;
        v120 = v119;
        v122 = v121;
        v124 = v123;
        *&v206.a = v115;
        v125 = [NSArray arrayWithObjects:&v206 count:1];
        v126 = [v116 applyWithExtent:v125 arguments:{v118, v120, v122, v124}];

        v127 = v193;
        v128 = v126;
        v129 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_replace_y (__sample a, __sample b) __attribute__((preserves_opacity)) { return vec4(b.r * a.a, a.gb, a.a) }"];;
        [v127 extent];
        v131 = v130;
        v133 = v132;
        v135 = v134;
        v137 = v136;
        *&v206.a = v127;
        *&v206.b = v128;
        v138 = [NSArray arrayWithObjects:&v206 count:2];
        v139 = [v129 applyWithExtent:v138 arguments:{v131, v133, v135, v137}];

        v140 = v139;
        v141 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_ycc_neg1pos1_to_01 (__sample s) __attribute__((preserves_opacity)) { s.rgb = (s.rgb + 1.0) / 2.0 s.rgb = clamp(s.rgb, 0.0, s.a); return s; }"];;
        [v140 extent];
        v143 = v142;
        v145 = v144;
        v147 = v146;
        v149 = v148;
        *&v206.a = v140;
        v150 = [NSArray arrayWithObjects:&v206 count:1];
        v151 = [v141 applyWithExtent:v150 arguments:{v143, v145, v147, v149}];

        v152 = [CIImage imageWithYCCImage:v151 matrix:601 fullRange:1 precision:8 colorSpace:0];

        if (a10)
        {
          if (v183 == 1)
          {
            v153 = 0;
          }

          else
          {
            v153 = v198;
          }

          v154 = sub_58F8(a10, v153, "refine");
          v155 = [NSString stringWithFormat:@"%@_out_scale%d.png", v154, v194];
          v156 = sub_75B4(v152, v199);
          sub_5B28(v156, v199, v155, a7);

          v201[0] = kCIInputBackgroundImageKey;
          v201[1] = kCIInputMaskImageKey;
          v202[0] = v197;
          v202[1] = v196;
          v157 = [NSDictionary dictionaryWithObjects:v202 forKeys:v201 count:2];
          v158 = [v152 imageByApplyingFilter:@"CIBlendWithRedMask" withInputParameters:v157];

          v159 = [NSString stringWithFormat:@"%@_outblend_scale%d.png", v154, v194];

          v160 = sub_75B4(v158, v199);
          sub_5B28(v160, v199, v159, a7);
        }

        v161 = v152;
        memset(&v206, 0, sizeof(v206));
        CGAffineTransformMakeTranslation(&v206, v47, v45);
        v205 = v206;
        v162 = [v161 imageByApplyingTransform:&v205];

        if (v189)
        {
          v163 = [v162 imageByCompositingOverImage:?];
        }

        else
        {
          v163 = v162;
        }

        v46 = v186 + v182;
        ++v198;
        v44 = v185 - 1;
        v41 = v163;
        v39 = v199;
        v40 = a10;
      }

      while (v185 != 1);
      v42 = v175 + 1;
      v43 = v174 + 2;
      v44 = v183;
    }

    while (v175 + 1 != v183);
  }

  if (v40)
  {
    v164 = sub_58F8(v40, 0, "refine");
    v165 = [NSString stringWithFormat:@"%@_result_scale%d.png", v164, llroundf(a9 * 200.0)];
    v166 = sub_75B4(v41, v39);
    sub_5B28(v166, v39, v165, a7);

    v39 = v199;
  }

  v167 = sub_75B4(v41, v39);

  CGColorSpaceRelease(space);

  return v167;
}

- (id)blendBack:(id)a3 mask:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CIImage *)self->inputImage extent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(CIImage *)self->inputExcludeMask imageByCroppingToRect:?];
  [v16 extent];
  if (CGRectIsEmpty(v48))
  {
    v17 = v7;
  }

  else
  {
    v18 = sub_59F8(self->inputExcludeMask);
    v19 = v7;
    v20 = v18;
    [v19 extent];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v20 extent];
    v51.origin.x = v29;
    v51.origin.y = v30;
    v51.size.width = v31;
    v51.size.height = v32;
    v49.origin.x = v22;
    v49.origin.y = v24;
    v49.size.width = v26;
    v49.size.height = v28;
    v50 = CGRectIntersection(v49, v51);
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    if (CGRectIsEmpty(v50))
    {
      v17 = +[CIImage emptyImage];
    }

    else
    {
      v37 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_andMasks (__sample a, __sample b) __attribute__((outputFormat(kCIFormatRh))) { return vec4(clamp(a.x, 0.0, 1.0) * clamp(b.x, 0.0, 1.0), 0.0, 0.0, 1.0) }"];;
      v46[0] = v19;
      v46[1] = v20;
      v38 = [NSArray arrayWithObjects:v46 count:2];
      v17 = [v37 applyWithExtent:v38 arguments:{x, y, width, height}];
    }
  }

  inputImage = self->inputImage;
  v44[0] = kCIInputBackgroundImageKey;
  v44[1] = kCIInputMaskImageKey;
  v45[0] = inputImage;
  v45[1] = v17;
  v40 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  v41 = [v6 imageByApplyingFilter:@"CIBlendWithRedMask" withInputParameters:v40];

  v42 = [v41 imageByCroppingToRect:{v9, v11, v13, v15}];

  return v42;
}

- (float)estimateFinalQuality
{
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = self->inputMaskImage;
  v46 = v6;
  v47 = v4;
  v45 = v8;
  r2 = v10;
  v12 = [(CIImage *)v11 imageByCroppingToRect:v4, v6, v8, v10];

  [v12 extent];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  v17 = 0.0;
  if (!CGRectIsEmpty(v50))
  {
    v18 = [(CIImage *)self->inputExcludeMask imageByCroppingToRect:v4, v6, v8, r2];
    [v18 extent];
    v19 = v51.origin.x;
    v20 = v51.origin.y;
    v21 = v51.size.width;
    v44 = v51.size.height;
    IsEmpty = CGRectIsEmpty(v51);
    inputVersion = self->inputVersion;
    if (inputVersion)
    {
      v24 = [(NSNumber *)inputVersion intValue];
    }

    else
    {
      v24 = 1;
    }

    v43 = v19;
    v25 = [CIInpaintFilter modelDimensionForVersion:v24 hint:self->inputModel];
    v17 = 0.0;
    if (v25)
    {
      [(CIInpaintFilter *)self maskToSurroundRatio];
      v42 = v26;
      [(CIInpaintFilter *)self maskCoverage];
      v41 = v27;
      v28 = [(CIInpaintFilter *)self inputExcludeMaskSurroundMultiplier];
      [v28 doubleValue];
      v30 = v29;

      v31 = v30 <= 1.0 || IsEmpty;
      if ((v31 & 1) == 0)
      {
        v32 = fmin(width, height);
        v33 = -(v32 - 1.0 / sqrt(v42) * v32) * -0.5;
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        v53 = CGRectInset(v52, v33, v33);
        v57.origin.x = v43;
        v57.size.height = v44;
        v57.origin.y = v20;
        v57.size.width = v21;
        if (CGRectIntersectsRect(v53, v57))
        {
          v54.origin.x = sub_9DF8(x, y, width, height, ceil(width * v30));
          v58.origin.y = v46;
          v58.origin.x = v47;
          v58.size.width = v45;
          v58.size.height = r2;
          v55 = CGRectIntersection(v54, v58);
          x = v55.origin.x;
          y = v55.origin.y;
          width = v55.size.width;
          height = v55.size.height;
        }
      }

      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v56.size.height = height;
      if (!CGRectIsEmpty(v56))
      {
        v34 = [(NSNumber *)self->inputRefinementMultipass BOOLValue];
        v35 = [(CIInpaintFilter *)self inputRefinementModel];
        v36 = [CIInpaintFilter loadRefinementModel:v35];

        +[CIInpaintFilter getRefineQualityBar];
        v38 = v37;
        memset(v49, 0, sizeof(v49));
        sub_7CEC(v25, v49, x, y, width, height, v47, v46, v45, r2, v42, v41);
        v39 = *v49;
        if (*v49 <= v38)
        {
          if (v36)
          {
            v39 = fmin(*v49 + *v49, 1.0);
            if (((v39 <= v38) & v34) == 1)
            {
              v39 = fmin(v39 + v39, 1.0);
            }
          }
        }

        v17 = v39;
      }
    }
  }

  return v17;
}

- (id)outputImageAndRect:(CGRect *)a3 strategy:(id *)a4 allowDump:(BOOL)a5
{
  v150 = a5;
  [(CIImage *)self->inputImage extent];
  v157 = v7;
  v158 = v6;
  v155 = v9;
  v156 = v8;
  [(CIInpaintFilter *)self estimateFinalQuality];
  v11 = v10;
  [(CIInpaintFilter *)self featherAmount];
  v13 = v12 / v11;
  if (v11 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = roundf(v13);
  if (v13 >= 3.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  [(CIInpaintFilter *)self dilateSize];
  v17 = fmaxf(v15, v16);
  v18 = self->inputMaskImage;
  if (v17 == 0.0)
  {
    v154 = 0;
  }

  else
  {
    v163 = @"inputMaximumDistance";
    *&v19 = v17;
    v20 = [NSNumber numberWithFloat:v19];
    v164 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v164 forKeys:&v163 count:1];
    v22 = [(CIImage *)v18 imageByApplyingFilter:@"CIDistanceGradientFromRedMask" withInputParameters:v21];

    [(CIImage *)v18 extent];
    v167 = CGRectInset(v166, -v17, -v17);
    v168 = CGRectIntegral(v167);
    x = v168.origin.x;
    y = v168.origin.y;
    width = v168.size.width;
    height = v168.size.height;
    v27 = sub_59F8(v22);
    v154 = [v27 imageByCroppingToRect:{x, y, width, height}];

    v28 = [(CIImage *)v154 imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&off_15410];

    v18 = v28;
  }

  v29 = [(CIImage *)v18 imageByCroppingToRect:v158, v157, v156, v155];

  [v29 extent];
  v30 = v169.origin.x;
  v31 = v169.origin.y;
  v32 = v169.size.width;
  v33 = v169.size.height;
  if (CGRectIsEmpty(v169))
  {
    v34 = self->inputImage;
    goto LABEL_68;
  }

  v148 = [(CIImage *)self->inputExcludeMask imageByCroppingToRect:v158, v157, v156, v155];
  [v148 extent];
  v144 = v170.origin.y;
  v146 = v170.origin.x;
  v139 = v170.size.height;
  v142 = v170.size.width;
  IsEmpty = CGRectIsEmpty(v170);
  v36 = +[CIImage blackImage];
  v37 = [v29 imageByCompositingOverImage:v36];
  v38 = [v37 imageByCroppingToRect:{v158, v157, v156, v155}];

  v29 = v38;
  v152 = v29;
  if (!IsEmpty)
  {
    v39 = [(CIInpaintFilter *)self inputExcludeMask];
    v40 = v29;
    v41 = v39;
    v153 = v40;
    [v40 extent];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [v41 extent];
    v183.origin.x = v50;
    v183.origin.y = v51;
    v183.size.width = v52;
    v183.size.height = v53;
    v171.origin.x = v43;
    v171.origin.y = v45;
    v171.size.width = v47;
    v171.size.height = v49;
    v172 = CGRectUnion(v171, v183);
    v54 = v172.origin.x;
    v55 = v172.origin.y;
    v56 = v172.size.width;
    v57 = v172.size.height;
    if (CGRectIsEmpty(v172))
    {
      v58 = +[CIImage emptyImage];
    }

    else
    {
      [v40 extent];
      if (CGRectIsEmpty(v173))
      {
        v58 = v41;
      }

      else
      {
        [v41 extent];
        if (!CGRectIsEmpty(v174))
        {
          v132 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_orMasks (__sample a, __sample b) __attribute__((outputFormat(kCIFormatRh))) { return vec4(1.0 - clamp(1.0-a.x, 0.0, 1.0) * clamp(1.0-b.x, 0.0, 1.0), 0.0, 0.0, 1.0) }"];;
          *buf = v40;
          *&buf[8] = v41;
          v133 = [NSArray arrayWithObjects:buf count:2];
          v59 = [v132 applyWithExtent:v133 arguments:{v54, v55, v56, v57}];

          goto LABEL_19;
        }

        v58 = v40;
      }
    }

    v59 = v58;
LABEL_19:

    v60 = sub_9200(v59);

    v152 = v60;
  }

  inputVersion = self->inputVersion;
  if (inputVersion)
  {
    v62 = [(NSNumber *)inputVersion intValue];
  }

  else
  {
    v62 = 1;
  }

  v63 = [CIInpaintFilter modelDimensionForVersion:v62 hint:self->inputModel];
  if (!v63)
  {
    size = CGRectNull.size;
    a3->origin = CGRectNull.origin;
    a3->size = size;
    v75 = sub_A028();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      sub_B858();
    }

    v34 = 0;
    goto LABEL_67;
  }

  [(CIInpaintFilter *)self maskToSurroundRatio];
  v65 = v64;
  [(CIInpaintFilter *)self maskCoverage];
  v67 = v66;
  v68 = [(CIInpaintFilter *)self inputExcludeMaskSurroundMultiplier];
  [v68 doubleValue];
  v70 = v69;

  v71 = v70 <= 1.0 || IsEmpty;
  if ((v71 & 1) == 0)
  {
    v72 = fmin(v32, v33);
    v73 = -(v72 - 1.0 / sqrt(v65) * v72) * -0.5;
    v175.origin.x = v30;
    v175.origin.y = v31;
    v175.size.width = v32;
    v175.size.height = v33;
    v176 = CGRectInset(v175, v73, v73);
    v184.origin.y = v144;
    v184.origin.x = v146;
    v184.size.height = v139;
    v184.size.width = v142;
    if (CGRectIntersectsRect(v176, v184))
    {
      v177.origin.x = sub_9DF8(v30, v31, v32, v33, ceil(v32 * v70));
      v185.origin.y = v157;
      v185.origin.x = v158;
      v185.size.height = v155;
      v185.size.width = v156;
      v178 = CGRectIntersection(v177, v185);
      v30 = v178.origin.x;
      v31 = v178.origin.y;
      v32 = v178.size.width;
      v33 = v178.size.height;
    }
  }

  v179.origin.x = v30;
  v179.origin.y = v31;
  v179.size.width = v32;
  v179.size.height = v33;
  if (!CGRectIsEmpty(v179))
  {
    inputColorSpace = self->inputColorSpace;
    v77 = +[NSNull null];
    if (inputColorSpace == v77)
    {
    }

    else
    {
      v78 = self->inputColorSpace;

      if (!v78 || (v79 = CFGetTypeID(v78), v79 == CGColorSpaceGetTypeID()) && CGColorSpaceGetModel(v78) == kCGColorSpaceModelRGB)
      {
LABEL_42:
        v80 = [(CIImage *)self->inputImage properties];
        v81 = [v80 objectForKeyedSubscript:@"Orientation"];
        v147 = [v81 intValue];

        LOBYTE(v80) = [(NSNumber *)self->inputRefinementMultipass BOOLValue];
        v82 = [(CIInpaintFilter *)self inputRefinementModel];
        v140 = v80;
        v83 = [CIInpaintFilter loadRefinementModel:v82];

        if (+[CIInpaintFilter dumpInpaintImages]&& v150)
        {
          v84 = ++dword_18DD8;
        }

        else
        {
          v84 = 0;
        }

        +[CIInpaintFilter getRefineQualityBar];
        v86 = v85;
        v162 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_7CEC(v63, buf, v30, v31, v32, v33, v158, v157, v156, v155, v65, v67);
        v87 = *&buf[16];
        v88 = *&v162;
        v90 = *buf;
        v89 = *&buf[8];
        v91 = *(&v162 + 1);
        v145 = sub_939C(self->inputImage, *(&v162 + 1), 1, *&buf[8], *&buf[16], *&buf[24], *&v162, *buf);
        v92 = sub_939C(v152, v91, 0, v89, *&v87, *(&v87 + 1), v88, v90);
        v93 = v90;
        *&v94 = v93;
        v143 = v92;
        v95 = [CIInpaintFilter repairTile:v145 mask:v92 colorSpace:v78 orientation:v147 hint:self->inputModel version:v62 scale:v94 dumpImageIndex:v84 dumpTileIndex:?];
        v96 = v95;
        if (v90 <= v86 && v83)
        {
          v97 = v90 + v90;
          v138 = sub_939C(self->inputImage, 2 * v91, 1, v89, *&v87, *(&v87 + 1), v88, v90 + v90);
          v137 = sub_939C(v152, 2 * v91, 1, v89, *&v87, *(&v87 + 1), v88, v90 + v90);
          sub_7510(v96, 2.0);
          v136 = LODWORD(v134) = v84;
          *&v98 = v90;
          v99 = [CIInpaintFilter refine:"refine:hires:mask:colorSpace:orientation:hint:scale:dumpImageIndex:" hires:v98 mask:v134 colorSpace:? orientation:? hint:? scale:? dumpImageIndex:?];

          v100 = fmin(v90 + v90, 1.0);
          if (((v100 <= v86) & v140) == 1)
          {
            v101 = v90 * 4.0;
            v102 = 4 * v91;
            v141 = sub_939C(self->inputImage, v102, 1, v89, *&v87, *(&v87 + 1), v88, v101);
            v103 = sub_939C(v152, v102, 1, v89, *&v87, *(&v87 + 1), v88, v101);
            v104 = sub_7510(v99, 2.0);
            *&v105 = v97;
            LODWORD(v135) = v84;
            v106 = v103;
            v96 = [CIInpaintFilter refine:v104 hires:v141 mask:v103 colorSpace:v78 orientation:v147 hint:self->inputRefinementModel scale:v105 dumpImageIndex:v135];

            v107 = sub_951C(v96, v89, *&v87, *(&v87 + 1), v88, 1.0 / v101);
            *a4 = [NSString stringWithFormat:@"One Tile, Refined4, Scale %.3f", fmin(v100 + v100, 1.0)];
          }

          else
          {
            v107 = sub_951C(v99, v89, *&v87, *(&v87 + 1), v88, 1.0 / v97);
            *a4 = [NSString stringWithFormat:@"One Tile, Refined, Scale %.3f", *&v100];
            v96 = v99;
          }
        }

        else
        {
          v107 = sub_951C(v95, v89, *&v87, *(&v87 + 1), v88, 1.0 / v90);
          *a4 = [NSString stringWithFormat:@"One Tile, Scale %.3f", *&v90];
        }

        inputMaskImage = v154;
        if (!v154)
        {
          inputMaskImage = self->inputMaskImage;
        }

        v34 = [(CIInpaintFilter *)self blendBack:v107 mask:inputMaskImage];
        v109 = *&buf[8];
        v111 = *&buf[16];
        v110 = *&v162;

        if (v84)
        {
          v112 = [(CIImage *)self->inputImage imageByCroppingToRect:v109, v111, v110];
          v180.origin.y = v157;
          v180.origin.x = v158;
          v180.size.height = v155;
          v180.size.width = v156;
          v186.origin.x = v109;
          *&v186.origin.y = v111;
          v186.size.height = v110;
          if (!CGRectContainsRect(v180, v186))
          {
            v113 = sub_9644(self->inputImage, v158, v157, v156, v155);
            v114 = [v113 imageByCroppingToRect:{v109, v111, v110}];

            v112 = v114;
          }

          v115 = sub_58F8(v84, 0, "inpaint");
          v116 = [NSString stringWithFormat:@"%@_in_full.png", v115];
          sub_5B28(v112, v78, v116, v147);
          v117 = [v152 imageByCroppingToRect:{v109, v111, v110}];
          v181.origin.y = v157;
          v181.origin.x = v158;
          v181.size.height = v155;
          v181.size.width = v156;
          v187.origin.x = v109;
          *&v187.origin.y = v111;
          v187.size.height = v110;
          if (!CGRectContainsRect(v181, v187))
          {
            v118 = sub_9644(v117, v158, v157, v156, v155);
            v119 = [v118 imageByCroppingToRect:{v109, v111, v110}];

            v117 = v119;
          }

          v120 = [NSString stringWithFormat:@"%@_mask_full.png", v115];

          sub_5D84(v117, v120, v147);
        }

        if ([(NSNumber *)self->inputShowSurround BOOLValue])
        {
          v182.origin.x = v109;
          *&v182.origin.y = v111;
          v182.size.height = v110;
          if (!CGRectIsEmpty(v182))
          {
            v159[0] = kCIInputExtentKey;
            v121 = [CIVector vectorWithCGRect:v109, v111, v110];
            v160[0] = v121;
            v160[1] = &off_15350;
            v159[1] = kCIInputRadiusKey;
            v159[2] = kCIInputColorKey;
            v122 = +[CIColor redColor];
            v159[3] = kCIInputWidthKey;
            v160[2] = v122;
            v160[3] = &off_15368;
            v123 = [NSDictionary dictionaryWithObjects:v160 forKeys:v159 count:4];
            v124 = [CIFilter filterWithName:@"CIRoundedRectangleStrokeGenerator" withInputParameters:v123];
            v125 = [v124 outputImage];

            v126 = [v125 imageByCompositingOverImage:v34];

            v127 = [(CIInpaintFilter *)self inputImage];
            [v127 extent];
            v34 = [v126 imageByCroppingToRect:?];
          }
        }

        a3->origin.x = v109;
        *&a3->origin.y = v111;
        a3->size.height = v110;
        if (v150)
        {
          v128 = sub_A028();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            v129 = [objc_opt_class() description];
            v130 = *a4;
            *buf = 138543618;
            *&buf[4] = v129;
            *&buf[12] = 2114;
            *&buf[14] = v130;
            _os_log_impl(&dword_0, v128, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@\n", buf, 0x16u);
          }
        }

        goto LABEL_67;
      }
    }

    v78 = 0;
    goto LABEL_42;
  }

  v34 = self->inputImage;
LABEL_67:

LABEL_68:

  return v34;
}

- (id)outputImage
{
  memset(v5, 0, sizeof(v5));
  v4 = 0;
  v2 = [(CIInpaintFilter *)self outputImageAndRect:v5 strategy:&v4 allowDump:1];

  return v2;
}

- (id)outputStrategy
{
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  v2 = [(CIInpaintFilter *)self outputImageAndRect:v6 strategy:&v5 allowDump:0];
  v3 = v5;

  return v3;
}

- (CGRect)outputMaskSurroundExtent
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0;
  v2 = [(CIInpaintFilter *)self outputImageAndRect:&v8 strategy:&v7 allowDump:0];
  v4 = *(&v8 + 1);
  v3 = *&v8;
  v6 = *(&v9 + 1);
  v5 = *&v9;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end