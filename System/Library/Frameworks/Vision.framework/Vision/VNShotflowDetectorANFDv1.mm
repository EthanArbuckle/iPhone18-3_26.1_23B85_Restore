@interface VNShotflowDetectorANFDv1
+ (id)defaultFilterThresholds;
+ (id)filterThresholdsArrayForFilterThresholds:(id)thresholds error:(id *)error;
+ (id)supportedLabelKeys;
- (VNShotflowDetectorANFDv1)initWithNetwork:(id)network;
- (id)nmsBoxes:(id)boxes usingThresholds:(id)thresholds;
- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds;
@end

@implementation VNShotflowDetectorANFDv1

+ (id)filterThresholdsArrayForFilterThresholds:(id)thresholds error:(id *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  thresholdsCopy = thresholds;
  v10[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [(VNShotflowDetector *)self _filterThresholdsArrayFromKeys:v7 inFilterThresholds:thresholdsCopy error:error];

  return v8;
}

+ (id)defaultFilterThresholds
{
  if (+[VNShotflowDetectorANFDv1 defaultFilterThresholds]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANFDv1 defaultFilterThresholds]::onceToken, &__block_literal_global_11843);
  }

  v3 = +[VNShotflowDetectorANFDv1 defaultFilterThresholds]::filterThresholds;

  return v3;
}

void __51__VNShotflowDetectorANFDv1_defaultFilterThresholds__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v3[0] = &unk_1F19C2228;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = +[VNShotflowDetectorANFDv1 defaultFilterThresholds]::filterThresholds;
  +[VNShotflowDetectorANFDv1 defaultFilterThresholds]::filterThresholds = v0;
}

+ (id)supportedLabelKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VNShotflowDetectorANFDv1_supportedLabelKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNShotflowDetectorANFDv1 supportedLabelKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANFDv1 supportedLabelKeys]::onceToken, block);
  }

  v2 = +[VNShotflowDetectorANFDv1 supportedLabelKeys]::supportedLabelKeys;

  return v2;
}

void __46__VNShotflowDetectorANFDv1_supportedLabelKeys__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___VNShotflowDetectorANFDv1;
  v1 = objc_msgSendSuper2(&v3, sel_supportedLabelKeys);
  v2 = +[VNShotflowDetectorANFDv1 supportedLabelKeys]::supportedLabelKeys;
  +[VNShotflowDetectorANFDv1 supportedLabelKeys]::supportedLabelKeys = v1;
}

- (id)nmsBoxes:(id)boxes usingThresholds:(id)thresholds
{
  boxesCopy = boxes;
  thresholdsCopy = thresholds;
  selfCopy = self;
  [(VNShotflowDetector *)self nmsThreshold];
  v7 = v6;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [thresholdsCopy count];
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      v9 = [(VNShotflowDetector *)selfCopy sortBoxes:boxesCopy filterThresholdIndex:i];
      v10 = [v9 count];
      std::vector<BOOL>::vector(&__p, v10);
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = [v9 objectAtIndexedSubscript:v11];
          v13 = *(__p + (v11 >> 6));
          if ((v13 & (1 << v11)) != 0)
          {
            ++v11;
          }

          else
          {
            *(__p + (v11 >> 6)) = v13 | (1 << v11);
            [v22 addObject:v12];
            v14 = ++v11;
            if (v11 < v10)
            {
              do
              {
                if ((*(__p + (v14 >> 6)) & (1 << v14)) == 0)
                {
                  v15 = [v9 objectAtIndexedSubscript:v14];
                  [v12 overlap:v15];
                  if (v16 > v7)
                  {
                    *(__p + (v14 >> 6)) |= 1 << v14;
                  }
                }

                ++v14;
              }

              while (v10 != v14);
            }
          }
        }

        while (v11 != v10);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v22;
}

- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds
{
  boxesCopy = boxes;
  thresholdsCopy = thresholds;
  v12 = objc_autoreleasePoolPush();
  v13 = [(VNShotflowDetector *)self smartMergeBoxes:boxesCopy];

  v14 = [(VNShotflowDetectorANFDv1 *)self nmsBoxes:v13 usingThresholds:thresholdsCopy];

  v15 = [(VNShotflowDetector *)self overlappingSmallFacesSuppression:v14];

  v16 = [(VNShotflowDetector *)self overlappingLowMergeCountSuppression:v15];

  v17 = [(VNShotflowDetector *)self filterBoxes:v16 usingThresholds:thresholdsCopy];

  *&v18 = height;
  *&v19 = width;
  v20 = [(VNShotflowDetector *)self enforceSquareFaces:v17 withHeight:v18 andWidth:v19];

  objc_autoreleasePoolPop(v12);
  v25.receiver = self;
  v25.super_class = VNShotflowDetectorANFDv1;
  *&v21 = height;
  *&v22 = width;
  v23 = [(VNShotflowDetector *)&v25 processBoxes:v20 withHeight:thresholdsCopy andWidth:v21 filterThresholds:v22];

  return v23;
}

- (VNShotflowDetectorANFDv1)initWithNetwork:(id)network
{
  v7.receiver = self;
  v7.super_class = VNShotflowDetectorANFDv1;
  v3 = [(VNShotflowDetector *)&v7 initWithNetwork:network];
  v4 = v3;
  if (v3)
  {
    v3->super._nmsThreshold = 0.45;
    v5 = v3;
  }

  return v4;
}

@end