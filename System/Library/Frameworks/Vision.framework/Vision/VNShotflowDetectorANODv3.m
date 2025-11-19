@interface VNShotflowDetectorANODv3
+ (id)defaultFilterThresholds;
+ (id)filterThresholdsArrayForFilterThresholds:(id)a3 error:(id *)a4;
+ (id)supportedLabelKeys;
- (VNShotflowDetectorANODv3)initWithNetwork:(id)a3;
- (id)getIndexBoxes:(id)a3 filterThresholdIndex:(unint64_t)a4;
- (id)nmsBoxes:(id)a3 usingThresholds:(id)a4;
- (id)processBoxes:(id)a3 withHeight:(float)a4 andWidth:(float)a5 filterThresholds:(id)a6;
@end

@implementation VNShotflowDetectorANODv3

+ (id)filterThresholdsArrayForFilterThresholds:(id)a3 error:(id *)a4
{
  v10[8] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v10[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v10[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v10[2] = @"VNShotflowDetectorFilterThresholdKey_HumanBody";
  v10[3] = @"VNShotflowDetectorFilterThresholdKey_CatBody";
  v10[4] = @"VNShotflowDetectorFilterThresholdKey_DogBody";
  v10[5] = @"VNShotflowDetectorFilterThresholdKey_Other";
  v10[6] = @"VNShotflowDetectorFilterThresholdKey_Food";
  v10[7] = @"VNShotflowDetectorFilterThresholdKey_Drink";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:8];
  v8 = [(VNShotflowDetector *)a1 _filterThresholdsArrayFromKeys:v7 inFilterThresholds:v6 error:a4];

  return v8;
}

+ (id)defaultFilterThresholds
{
  if (+[VNShotflowDetectorANODv3 defaultFilterThresholds]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANODv3 defaultFilterThresholds]::onceToken, &__block_literal_global_214);
  }

  v3 = +[VNShotflowDetectorANODv3 defaultFilterThresholds]::filterThresholds;

  return v3;
}

void __51__VNShotflowDetectorANODv3_defaultFilterThresholds__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v2[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v3[0] = &unk_1F19C2278;
  v3[1] = &unk_1F19C2288;
  v2[2] = @"VNShotflowDetectorFilterThresholdKey_HumanBody";
  v2[3] = @"VNShotflowDetectorFilterThresholdKey_CatBody";
  v3[2] = &unk_1F19C2298;
  v3[3] = &unk_1F19C2298;
  v2[4] = @"VNShotflowDetectorFilterThresholdKey_DogBody";
  v2[5] = @"VNShotflowDetectorFilterThresholdKey_Other";
  v3[4] = &unk_1F19C22A8;
  v3[5] = &unk_1F19C22B8;
  v2[6] = @"VNShotflowDetectorFilterThresholdKey_Food";
  v2[7] = @"VNShotflowDetectorFilterThresholdKey_Drink";
  v3[6] = &unk_1F19C22C8;
  v3[7] = &unk_1F19C22D8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = +[VNShotflowDetectorANODv3 defaultFilterThresholds]::filterThresholds;
  +[VNShotflowDetectorANODv3 defaultFilterThresholds]::filterThresholds = v0;
}

+ (id)supportedLabelKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VNShotflowDetectorANODv3_supportedLabelKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNShotflowDetectorANODv3 supportedLabelKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANODv3 supportedLabelKeys]::onceToken, block);
  }

  v2 = +[VNShotflowDetectorANODv3 supportedLabelKeys]::supportedLabelKeys;

  return v2;
}

void __46__VNShotflowDetectorANODv3_supportedLabelKeys__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___VNShotflowDetectorANODv3;
  v1 = objc_msgSendSuper2(&v3, sel_supportedLabelKeys);
  v2 = +[VNShotflowDetectorANODv3 supportedLabelKeys]::supportedLabelKeys;
  +[VNShotflowDetectorANODv3 supportedLabelKeys]::supportedLabelKeys = v1;
}

- (id)nmsBoxes:(id)a3 usingThresholds:(id)a4
{
  v21 = a3;
  v18 = a4;
  v20 = self;
  [(VNShotflowDetector *)self nmsThreshold];
  v7 = v6;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [v18 count];
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (i > 1)
      {
        v9 = [(VNShotflowDetectorANODv3 *)v20 getIndexBoxes:v21 filterThresholdIndex:i];
        [v22 addObjectsFromArray:v9];
      }

      else
      {
        v9 = [(VNShotflowDetector *)v20 sortBoxes:v21 filterThresholdIndex:i];
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
  }

  return v22;
}

- (id)getIndexBoxes:(id)a3 filterThresholdIndex:(unint64_t)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__VNShotflowDetectorANODv3_getIndexBoxes_filterThresholdIndex___block_invoke;
  v9[3] = &__block_descriptor_40_e46_B24__0__VNShotflowDetection_8__NSDictionary_16l;
  v9[4] = a4;
  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:v9];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  return v7;
}

- (id)processBoxes:(id)a3 withHeight:(float)a4 andWidth:(float)a5 filterThresholds:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [(VNShotflowDetector *)self filterBoxes:v10 usingThresholds:v11];

  v14 = [(VNShotflowDetectorANODv3 *)self nmsBoxes:v13 usingThresholds:v11];

  *&v15 = a4;
  *&v16 = a5;
  v17 = [(VNShotflowDetector *)self enforceSquareFaces:v14 withHeight:v15 andWidth:v16];

  v18 = [(VNShotflowDetectorANODBase *)self mergeHeadsBoxes:v17];

  objc_autoreleasePoolPop(v12);
  v23.receiver = self;
  v23.super_class = VNShotflowDetectorANODv3;
  *&v19 = a4;
  *&v20 = a5;
  v21 = [(VNShotflowDetector *)&v23 processBoxes:v18 withHeight:v11 andWidth:v19 filterThresholds:v20];

  return v21;
}

- (VNShotflowDetectorANODv3)initWithNetwork:(id)a3
{
  v7.receiver = self;
  v7.super_class = VNShotflowDetectorANODv3;
  v3 = [(VNShotflowDetector *)&v7 initWithNetwork:a3];
  v4 = v3;
  if (v3)
  {
    v3->super.super._nmsThreshold = 0.3;
    v5 = v3;
  }

  return v4;
}

@end