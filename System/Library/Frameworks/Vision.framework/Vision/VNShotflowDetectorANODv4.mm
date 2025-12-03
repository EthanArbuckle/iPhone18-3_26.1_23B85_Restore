@interface VNShotflowDetectorANODv4
+ (id)defaultFilterThresholds;
+ (id)filterThresholdsArrayForFilterThresholds:(id)thresholds error:(id *)error;
+ (id)supportedLabelKeys;
- (VNShotflowDetectorANODv4)initWithNetwork:(id)network;
- (id)getIndexBoxes:(id)boxes filterThresholdIndex:(unint64_t)index;
- (id)nmsBoxes:(id)boxes usingThresholds:(id)thresholds;
- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds;
@end

@implementation VNShotflowDetectorANODv4

+ (id)filterThresholdsArrayForFilterThresholds:(id)thresholds error:(id *)error
{
  v10[12] = *MEMORY[0x1E69E9840];
  thresholdsCopy = thresholds;
  v10[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v10[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v10[2] = @"VNShotflowDetectorFilterThresholdKey_HumanBody";
  v10[3] = @"VNShotflowDetectorFilterThresholdKey_CatBody";
  v10[4] = @"VNShotflowDetectorFilterThresholdKey_DogBody";
  v10[5] = @"VNShotflowDetectorFilterThresholdKey_Other";
  v10[6] = @"VNShotflowDetectorFilterThresholdKey_Food";
  v10[7] = @"VNShotflowDetectorFilterThresholdKey_Drink";
  v10[8] = @"VNShotflowDetectorFilterThresholdKey_CatHead";
  v10[9] = @"VNShotflowDetectorFilterThresholdKey_DogHead";
  v10[10] = @"VNShotflowDetectorFilterThresholdKey_SportsBall";
  v10[11] = @"VNShotflowDetectorFilterThresholdKey_FullBody";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:12];
  v8 = [(VNShotflowDetector *)self _filterThresholdsArrayFromKeys:v7 inFilterThresholds:thresholdsCopy error:error];

  return v8;
}

+ (id)defaultFilterThresholds
{
  if (+[VNShotflowDetectorANODv4 defaultFilterThresholds]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANODv4 defaultFilterThresholds]::onceToken, &__block_literal_global_240);
  }

  v3 = +[VNShotflowDetectorANODv4 defaultFilterThresholds]::filterThresholds;

  return v3;
}

void __51__VNShotflowDetectorANODv4_defaultFilterThresholds__block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v2[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v3[0] = &unk_1F19C22E8;
  v3[1] = &unk_1F19C22F8;
  v2[2] = @"VNShotflowDetectorFilterThresholdKey_HumanBody";
  v2[3] = @"VNShotflowDetectorFilterThresholdKey_CatBody";
  v3[2] = &unk_1F19C2308;
  v3[3] = &unk_1F19C2318;
  v2[4] = @"VNShotflowDetectorFilterThresholdKey_DogBody";
  v2[5] = @"VNShotflowDetectorFilterThresholdKey_Other";
  v3[4] = &unk_1F19C2328;
  v3[5] = &unk_1F19C22B8;
  v2[6] = @"VNShotflowDetectorFilterThresholdKey_Food";
  v2[7] = @"VNShotflowDetectorFilterThresholdKey_Drink";
  v3[6] = &unk_1F19C2248;
  v3[7] = &unk_1F19C2338;
  v2[8] = @"VNShotflowDetectorFilterThresholdKey_CatHead";
  v2[9] = @"VNShotflowDetectorFilterThresholdKey_DogHead";
  v3[8] = &unk_1F19C2348;
  v3[9] = &unk_1F19C2358;
  v2[10] = @"VNShotflowDetectorFilterThresholdKey_SportsBall";
  v2[11] = @"VNShotflowDetectorFilterThresholdKey_FullBody";
  v3[10] = &unk_1F19C2368;
  v3[11] = &unk_1F19C2378;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = +[VNShotflowDetectorANODv4 defaultFilterThresholds]::filterThresholds;
  +[VNShotflowDetectorANODv4 defaultFilterThresholds]::filterThresholds = v0;
}

+ (id)supportedLabelKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VNShotflowDetectorANODv4_supportedLabelKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNShotflowDetectorANODv4 supportedLabelKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANODv4 supportedLabelKeys]::onceToken, block);
  }

  v2 = +[VNShotflowDetectorANODv4 supportedLabelKeys]::supportedLabelKeys;

  return v2;
}

void __46__VNShotflowDetectorANODv4_supportedLabelKeys__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___VNShotflowDetectorANODv4;
  v1 = objc_msgSendSuper2(&v3, sel_supportedLabelKeys);
  v2 = +[VNShotflowDetectorANODv4 supportedLabelKeys]::supportedLabelKeys;
  +[VNShotflowDetectorANODv4 supportedLabelKeys]::supportedLabelKeys = v1;
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
      if (i)
      {
        v9 = [(VNShotflowDetectorANODv4 *)selfCopy getIndexBoxes:boxesCopy filterThresholdIndex:i];
        [v22 addObjectsFromArray:v9];
      }

      else
      {
        v9 = [(VNShotflowDetector *)selfCopy sortBoxes:boxesCopy filterThresholdIndex:0];
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
                    [v12 intersectionOverMinArea:v15];
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
  }

  return v22;
}

- (id)getIndexBoxes:(id)boxes filterThresholdIndex:(unint64_t)index
{
  boxesCopy = boxes;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__VNShotflowDetectorANODv4_getIndexBoxes_filterThresholdIndex___block_invoke;
  v9[3] = &__block_descriptor_40_e46_B24__0__VNShotflowDetection_8__NSDictionary_16l;
  v9[4] = index;
  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:v9];
  v7 = [boxesCopy filteredArrayUsingPredicate:v6];

  return v7;
}

- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds
{
  boxesCopy = boxes;
  thresholdsCopy = thresholds;
  v12 = objc_autoreleasePoolPush();
  v13 = [(VNShotflowDetector *)self filterBoxes:boxesCopy usingThresholds:thresholdsCopy];

  v14 = [(VNShotflowDetectorANODv4 *)self nmsBoxes:v13 usingThresholds:thresholdsCopy];

  *&v15 = height;
  *&v16 = width;
  v17 = [(VNShotflowDetector *)self enforceSquareFaces:v14 withHeight:v15 andWidth:v16];

  v18 = [(VNShotflowDetectorANODBase *)self mergeHeadsBoxes:v17];

  objc_autoreleasePoolPop(v12);
  v23.receiver = self;
  v23.super_class = VNShotflowDetectorANODv4;
  *&v19 = height;
  *&v20 = width;
  v21 = [(VNShotflowDetector *)&v23 processBoxes:v18 withHeight:thresholdsCopy andWidth:v19 filterThresholds:v20];

  return v21;
}

- (VNShotflowDetectorANODv4)initWithNetwork:(id)network
{
  v7.receiver = self;
  v7.super_class = VNShotflowDetectorANODv4;
  v3 = [(VNShotflowDetector *)&v7 initWithNetwork:network];
  v4 = v3;
  if (v3)
  {
    v3->super.super._nmsThreshold = 0.3;
    v5 = v3;
  }

  return v4;
}

@end