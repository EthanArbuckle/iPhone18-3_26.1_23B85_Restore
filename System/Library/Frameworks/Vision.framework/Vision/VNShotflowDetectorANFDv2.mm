@interface VNShotflowDetectorANFDv2
+ (id)defaultFilterThresholds;
+ (id)filterThresholdsArrayForFilterThresholds:(id)thresholds error:(id *)error;
+ (id)supportedLabelKeys;
- (VNShotflowDetectorANFDv2)initWithNetwork:(id)network;
- (id)nmsBoxes:(id)boxes usingThresholds:(id)thresholds;
- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds;
@end

@implementation VNShotflowDetectorANFDv2

+ (id)filterThresholdsArrayForFilterThresholds:(id)thresholds error:(id *)error
{
  v10[5] = *MEMORY[0x1E69E9840];
  thresholdsCopy = thresholds;
  v10[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v10[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v10[2] = @"VNShotflowDetectorFilterThresholdKey_HumanBody";
  v10[3] = @"VNShotflowDetectorFilterThresholdKey_CatBody";
  v10[4] = @"VNShotflowDetectorFilterThresholdKey_DogBody";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  v8 = [(VNShotflowDetector *)self _filterThresholdsArrayFromKeys:v7 inFilterThresholds:thresholdsCopy error:error];

  return v8;
}

+ (id)defaultFilterThresholds
{
  if (+[VNShotflowDetectorANFDv2 defaultFilterThresholds]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANFDv2 defaultFilterThresholds]::onceToken, &__block_literal_global_198);
  }

  v3 = +[VNShotflowDetectorANFDv2 defaultFilterThresholds]::filterThresholds;

  return v3;
}

void __51__VNShotflowDetectorANFDv2_defaultFilterThresholds__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v2[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v3[0] = &unk_1F19C2238;
  v3[1] = &unk_1F19C2228;
  v2[2] = @"VNShotflowDetectorFilterThresholdKey_HumanBody";
  v2[3] = @"VNShotflowDetectorFilterThresholdKey_CatBody";
  v3[2] = &unk_1F19C2248;
  v3[3] = &unk_1F19C2258;
  v2[4] = @"VNShotflowDetectorFilterThresholdKey_DogBody";
  v3[4] = &unk_1F19C2268;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = +[VNShotflowDetectorANFDv2 defaultFilterThresholds]::filterThresholds;
  +[VNShotflowDetectorANFDv2 defaultFilterThresholds]::filterThresholds = v0;
}

+ (id)supportedLabelKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VNShotflowDetectorANFDv2_supportedLabelKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNShotflowDetectorANFDv2 supportedLabelKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANFDv2 supportedLabelKeys]::onceToken, block);
  }

  v2 = +[VNShotflowDetectorANFDv2 supportedLabelKeys]::supportedLabelKeys;

  return v2;
}

void __46__VNShotflowDetectorANFDv2_supportedLabelKeys__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___VNShotflowDetectorANFDv2;
  v1 = objc_msgSendSuper2(&v3, sel_supportedLabelKeys);
  v2 = +[VNShotflowDetectorANFDv2 supportedLabelKeys]::supportedLabelKeys;
  +[VNShotflowDetectorANFDv2 supportedLabelKeys]::supportedLabelKeys = v1;
}

- (id)nmsBoxes:(id)boxes usingThresholds:(id)thresholds
{
  boxesCopy = boxes;
  thresholdsCopy = thresholds;
  selfCopy = self;
  [(VNShotflowDetector *)self nmsThreshold];
  v7 = v6;
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = [thresholdsCopy count];
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      v9 = [(VNShotflowDetector *)selfCopy sortBoxes:boxesCopy filterThresholdIndex:i];
      v10 = [v9 count];
      std::vector<BOOL>::vector(&__p, v10);
      if (v10)
      {
        v11 = 0;
        v41 = i;
        do
        {
          v12 = v9;
          v13 = [v9 objectAtIndexedSubscript:v11];
          v15 = v11 >> 6;
          v16 = 1 << v11;
          v17 = *(__p + (v11++ >> 6));
          if ((v17 & v16) == 0)
          {
            if (v11 < v10)
            {
              v38 = v16;
              v18 = 0.0;
              v19 = v11;
              v20 = 0.0;
              v21 = 0.0;
              do
              {
                if ((*(__p + (v19 >> 6)) & (1 << v19)) == 0)
                {
                  v22 = [v12 objectAtIndexedSubscript:v19];
                  [v13 overlap:v22];
                  if (v23 > v7)
                  {
                    *(__p + (v19 >> 6)) |= 1 << v19;
                    if (!v41)
                    {
                      [v13 yawAngle];
                      v25 = v24;
                      [objc_msgSend(objc_opt_class() "VNShotflowNetworkClass")];
                      if (v25 == v26)
                      {
                        [v22 yawAngle];
                        v28 = v27;
                        [objc_msgSend(objc_opt_class() "VNShotflowNetworkClass")];
                        if (v28 < v29)
                        {
                          [v22 rotationAngle];
                          v31 = v30;
                          [v22 yawAngle];
                          v21 = v21 + v31;
                          v20 = v20 + v32;
                          v18 = v18 + 1.0;
                        }
                      }
                    }
                  }
                }

                ++v19;
              }

              while (v10 != v19);
              i = v41;
              v16 = v38;
              if (!v41 && v18 > 0.0)
              {
                *&v14 = v21 / v18;
                [v13 setRotationAngle:v14];
                *&v33 = v20 / v18;
                [v13 setYawAngle:v33];
              }
            }

            *(__p + v15) |= v16;
            [v39 addObject:v13];
          }

          v9 = v12;
        }

        while (v11 != v10);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v39;
}

- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds
{
  boxesCopy = boxes;
  thresholdsCopy = thresholds;
  v12 = objc_autoreleasePoolPush();
  v13 = [(VNShotflowDetectorANFDv2 *)self nmsBoxes:boxesCopy usingThresholds:thresholdsCopy];

  v14 = [(VNShotflowDetector *)self filterBoxes:v13 usingThresholds:thresholdsCopy];

  *&v15 = height;
  *&v16 = width;
  v17 = [(VNShotflowDetector *)self enforceSquareFaces:v14 withHeight:v15 andWidth:v16];

  v18 = [(VNShotflowDetectorANODBase *)self mergeHeadsBoxes:v17];

  objc_autoreleasePoolPop(v12);
  v23.receiver = self;
  v23.super_class = VNShotflowDetectorANFDv2;
  *&v19 = height;
  *&v20 = width;
  v21 = [(VNShotflowDetector *)&v23 processBoxes:v18 withHeight:thresholdsCopy andWidth:v19 filterThresholds:v20];

  return v21;
}

- (VNShotflowDetectorANFDv2)initWithNetwork:(id)network
{
  v7.receiver = self;
  v7.super_class = VNShotflowDetectorANFDv2;
  v3 = [(VNShotflowDetector *)&v7 initWithNetwork:network];
  v4 = v3;
  if (v3)
  {
    v3->super.super._nmsThreshold = 0.5;
    v5 = v3;
  }

  return v4;
}

@end