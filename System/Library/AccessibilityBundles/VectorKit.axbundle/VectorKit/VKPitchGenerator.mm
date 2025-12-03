@interface VKPitchGenerator
+ (id)AXVectorKitBundle;
+ (id)defaultSoundFileURL;
+ (id)fourPitchesSoundFileArray;
+ (id)twoPitchesSoundFileArray;
- (VKPitchGenerator)initWithPitchMode:(int64_t)mode minDepth:(id)depth maxDepth:(id)maxDepth minPtich:(id)ptich maxPitch:(id)pitch twoPitchesThreshold:(id)threshold fourPitchesThresholdArray:(id)array;
- (float)pitchForDepth:(int)depth;
- (id)fileForDepthInUnit:(double)unit;
@end

@implementation VKPitchGenerator

+ (id)AXVectorKitBundle
{
  v2 = MEMORY[0x29EDB9F48];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)defaultSoundFileURL
{
  v2 = +[VKPitchGenerator AXVectorKitBundle];
  v3 = [v2 URLForResource:@"3beacon" withExtension:@"aiff"];

  return v3;
}

+ (id)fourPitchesSoundFileArray
{
  v12[4] = *MEMORY[0x29EDCA608];
  v2 = +[VKPitchGenerator AXVectorKitBundle];
  v3 = [v2 URLForResource:@"4beacon" withExtension:@"aiff"];

  v4 = +[VKPitchGenerator AXVectorKitBundle];
  v5 = [v4 URLForResource:@"3beacon" withExtension:@"aiff"];

  v6 = +[VKPitchGenerator AXVectorKitBundle];
  v7 = [v6 URLForResource:@"2beacon" withExtension:@"aiff"];

  v8 = +[VKPitchGenerator AXVectorKitBundle];
  v9 = [v8 URLForResource:@"1beacon" withExtension:@"aiff"];

  v12[0] = v3;
  v12[1] = v5;
  v12[2] = v7;
  v12[3] = v9;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:4];

  return v10;
}

+ (id)twoPitchesSoundFileArray
{
  v8[2] = *MEMORY[0x29EDCA608];
  v2 = +[VKPitchGenerator AXVectorKitBundle];
  v3 = [v2 URLForResource:@"4beacon" withExtension:@"aiff"];

  v4 = +[VKPitchGenerator AXVectorKitBundle];
  v5 = [v4 URLForResource:@"3beacon" withExtension:@"aiff"];

  v8[0] = v3;
  v8[1] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:2];

  return v6;
}

- (VKPitchGenerator)initWithPitchMode:(int64_t)mode minDepth:(id)depth maxDepth:(id)maxDepth minPtich:(id)ptich maxPitch:(id)pitch twoPitchesThreshold:(id)threshold fourPitchesThresholdArray:(id)array
{
  depthCopy = depth;
  maxDepthCopy = maxDepth;
  ptichCopy = ptich;
  pitchCopy = pitch;
  thresholdCopy = threshold;
  arrayCopy = array;
  v41.receiver = self;
  v41.super_class = VKPitchGenerator;
  v19 = [(VKPitchGenerator *)&v41 init];
  v20 = v19;
  if (v19)
  {
    v19->_pitchMode = mode;
    objc_storeStrong(&v19->_minPitch, ptich);
    objc_storeStrong(&v20->_maxPitch, pitch);
    objc_storeStrong(&v20->_twoPitchesThreshold, threshold);
    objc_storeStrong(&v20->_fourPitchesThresholdArray, array);
    if (maxDepthCopy && depthCopy && ptichCopy && pitchCopy)
    {
      [pitchCopy floatValue];
      v22 = v21;
      [ptichCopy floatValue];
      v24 = v23;
      [depthCopy floatValue];
      v26 = v25;
      [maxDepthCopy floatValue];
      v28 = (v22 - v24) / (v27 - v26);
      *&v29 = v24 - (v28 * v27);
      v30 = [MEMORY[0x29EDBA070] numberWithFloat:v29];
      intercept = v20->_intercept;
      v20->_intercept = v30;

      *&v32 = v28;
      v33 = [MEMORY[0x29EDBA070] numberWithFloat:v32];
      v34 = 48;
    }

    else
    {
      slope = v20->_slope;
      v20->_slope = 0;

      v33 = 0;
      v34 = 56;
    }

    v36 = *(&v20->super.isa + v34);
    *(&v20->super.isa + v34) = v33;

    v37 = v20;
  }

  return v20;
}

- (float)pitchForDepth:(int)depth
{
  if (self->_pitchMode)
  {
    return 1.0;
  }

  if (!self->_minPitch)
  {
    return 1.0;
  }

  maxPitch = self->_maxPitch;
  if (!maxPitch || !self->_slope || !self->_intercept)
  {
    return 1.0;
  }

  [(NSNumber *)maxPitch floatValue];
  v8 = v7;
  [(NSNumber *)self->_minPitch floatValue];
  v10 = v9;
  [(NSNumber *)self->_slope floatValue];
  v12 = v11;
  depthCopy = depth;
  [(NSNumber *)self->_intercept floatValue];
  if (v10 <= (v14 + (v12 * depth)))
  {
    [(NSNumber *)self->_slope floatValue];
    v17 = v16;
    [(NSNumber *)self->_intercept floatValue];
    v15 = v18 + (v17 * depthCopy);
  }

  else
  {
    [(NSNumber *)self->_minPitch floatValue];
  }

  if (v8 >= v15)
  {
    [(NSNumber *)self->_minPitch floatValue];
    v21 = v20;
    [(NSNumber *)self->_slope floatValue];
    v23 = v22;
    [(NSNumber *)self->_intercept floatValue];
    if (v21 <= (v24 + (v23 * depthCopy)))
    {
      [(NSNumber *)self->_slope floatValue];
      v26 = v25;
      [(NSNumber *)self->_intercept floatValue];
      return v27 + (v26 * depthCopy);
    }

    minPitch = self->_minPitch;
  }

  else
  {
    minPitch = self->_maxPitch;
  }

  [(NSNumber *)minPitch floatValue];
  return result;
}

- (id)fileForDepthInUnit:(double)unit
{
  selfCopy = self;
  pitchMode = self->_pitchMode;
  switch(pitchMode)
  {
    case 2:
      fourPitchesThresholdArray = self->_fourPitchesThresholdArray;
      if (!fourPitchesThresholdArray)
      {
        goto LABEL_13;
      }

      lastObject = [(NSArray *)fourPitchesThresholdArray lastObject];
      [lastObject doubleValue];
      v15 = v14;

      if (v15 >= unit)
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy__4;
        v23 = __Block_byref_object_dispose__4;
        v24 = 0;
        fourPitchesThresholdArray = [selfCopy fourPitchesThresholdArray];
        v18[0] = MEMORY[0x29EDCA5F8];
        v18[1] = 3221225472;
        v18[2] = __39__VKPitchGenerator_fileForDepthInUnit___block_invoke;
        v18[3] = &unk_29F318BD8;
        *&v18[5] = unit;
        v18[4] = &v19;
        [fourPitchesThresholdArray enumerateObjectsUsingBlock:v18];

        selfCopy = v20[5];
        _Block_object_dispose(&v19, 8);

        break;
      }

      v9 = +[VKPitchGenerator fourPitchesSoundFileArray];
      v10 = v9;
      goto LABEL_11;
    case 1:
      twoPitchesThreshold = self->_twoPitchesThreshold;
      if (!twoPitchesThreshold)
      {
        goto LABEL_13;
      }

      [(NSNumber *)twoPitchesThreshold doubleValue];
      v8 = v7;
      v9 = +[VKPitchGenerator twoPitchesSoundFileArray];
      v10 = v9;
      if (v8 >= unit)
      {
        firstObject = [v9 firstObject];
LABEL_12:
        selfCopy = firstObject;

        break;
      }

LABEL_11:
      firstObject = [v9 lastObject];
      goto LABEL_12;
    case 0:
LABEL_13:
      selfCopy = +[VKPitchGenerator defaultSoundFileURL];
      break;
  }

  return selfCopy;
}

void __39__VKPitchGenerator_fileForDepthInUnit___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  [a2 doubleValue];
  if (v7 <= v8)
  {
    v9 = +[VKPitchGenerator fourPitchesSoundFileArray];
    v10 = [v9 objectAtIndexedSubscript:a3];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

@end