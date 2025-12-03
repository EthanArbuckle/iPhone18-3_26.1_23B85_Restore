@interface VNShotflowDetectorANSTv1
+ (id)defaultFilterThresholds;
+ (id)filterThresholdsArrayForFilterThresholds:(id)thresholds error:(id *)error;
+ (id)supportedLabelKeys;
- (VNShotflowDetectorANSTv1)initWithNetwork:(id)network;
- (id)getIndexBoxes:(id)boxes filterThresholdIndex:(unint64_t)index;
- (id)modifySmallFaceThreshold:(id)threshold withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds;
- (id)nmsBoxes:(id)boxes usingThresholds:(id)thresholds;
- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds;
@end

@implementation VNShotflowDetectorANSTv1

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
  if (+[VNShotflowDetectorANSTv1 defaultFilterThresholds]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANSTv1 defaultFilterThresholds]::onceToken, &__block_literal_global_269);
  }

  v3 = +[VNShotflowDetectorANSTv1 defaultFilterThresholds]::filterThresholds;

  return v3;
}

void __51__VNShotflowDetectorANSTv1_defaultFilterThresholds__block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v2[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v3[0] = &unk_1F19C2508;
  v3[1] = &unk_1F19C2518;
  v2[2] = @"VNShotflowDetectorFilterThresholdKey_HumanBody";
  v2[3] = @"VNShotflowDetectorFilterThresholdKey_CatBody";
  v3[2] = &unk_1F19C2528;
  v3[3] = &unk_1F19C2538;
  v2[4] = @"VNShotflowDetectorFilterThresholdKey_DogBody";
  v2[5] = @"VNShotflowDetectorFilterThresholdKey_Other";
  v3[4] = &unk_1F19C2548;
  v3[5] = &unk_1F19C22B8;
  v2[6] = @"VNShotflowDetectorFilterThresholdKey_Food";
  v2[7] = @"VNShotflowDetectorFilterThresholdKey_Drink";
  v3[6] = &unk_1F19C2558;
  v3[7] = &unk_1F19C2568;
  v2[8] = @"VNShotflowDetectorFilterThresholdKey_CatHead";
  v2[9] = @"VNShotflowDetectorFilterThresholdKey_DogHead";
  v3[8] = &unk_1F19C2578;
  v3[9] = &unk_1F19C2588;
  v2[10] = @"VNShotflowDetectorFilterThresholdKey_SportsBall";
  v2[11] = @"VNShotflowDetectorFilterThresholdKey_FullBody";
  v3[10] = &unk_1F19C2598;
  v3[11] = &unk_1F19C2378;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = +[VNShotflowDetectorANSTv1 defaultFilterThresholds]::filterThresholds;
  +[VNShotflowDetectorANSTv1 defaultFilterThresholds]::filterThresholds = v0;
}

+ (id)supportedLabelKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VNShotflowDetectorANSTv1_supportedLabelKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNShotflowDetectorANSTv1 supportedLabelKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANSTv1 supportedLabelKeys]::onceToken, block);
  }

  v2 = +[VNShotflowDetectorANSTv1 supportedLabelKeys]::supportedLabelKeys;

  return v2;
}

void __46__VNShotflowDetectorANSTv1_supportedLabelKeys__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___VNShotflowDetectorANSTv1;
  v1 = objc_msgSendSuper2(&v3, sel_supportedLabelKeys);
  v2 = +[VNShotflowDetectorANSTv1 supportedLabelKeys]::supportedLabelKeys;
  +[VNShotflowDetectorANSTv1 supportedLabelKeys]::supportedLabelKeys = v1;
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
        v9 = [(VNShotflowDetectorANSTv1 *)selfCopy getIndexBoxes:boxesCopy filterThresholdIndex:i];
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
  v9[2] = __63__VNShotflowDetectorANSTv1_getIndexBoxes_filterThresholdIndex___block_invoke;
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
  *&v13 = height;
  *&v14 = width;
  v15 = [(VNShotflowDetectorANSTv1 *)self modifySmallFaceThreshold:boxesCopy withHeight:thresholdsCopy andWidth:v13 filterThresholds:v14];

  v16 = [(VNShotflowDetector *)self filterBoxes:v15 usingThresholds:thresholdsCopy];

  v17 = [(VNShotflowDetectorANSTv1 *)self nmsBoxes:v16 usingThresholds:thresholdsCopy];

  *&v18 = height;
  *&v19 = width;
  v20 = [(VNShotflowDetector *)self enforceSquareFaces:v17 withHeight:v18 andWidth:v19];

  v21 = [(VNShotflowDetectorANODBase *)self mergeHeadsBoxes:v20];

  objc_autoreleasePoolPop(v12);
  v26.receiver = self;
  v26.super_class = VNShotflowDetectorANSTv1;
  *&v22 = height;
  *&v23 = width;
  v24 = [(VNShotflowDetector *)&v26 processBoxes:v21 withHeight:thresholdsCopy andWidth:v22 filterThresholds:v23];

  return v24;
}

- (id)modifySmallFaceThreshold:(id)threshold withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds
{
  v82 = *MEMORY[0x1E69E9840];
  thresholdCopy = threshold;
  thresholdsCopy = thresholds;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = thresholdCopy;
  v9 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v9)
  {
    v10 = *v77;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v77 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v76 + 1) + 8 * i);
        if ([v12 label] == 1 || objc_msgSend(v12, "label") == 2)
        {
          [v12 box];
          v14 = v13;
          [v12 box];
          v16 = v14 * v15;
          if (v16 < 0.005)
          {
            [v12 confidence];
            v18 = v17;
            v19 = [thresholdsCopy objectAtIndexedSubscript:{(objc_msgSend(v12, "label") - 1)}];
            [v19 floatValue];
            if (v18 < v20)
            {
              [v12 confidence];
              v22 = v21;
              v23 = [thresholdsCopy objectAtIndexedSubscript:{(objc_msgSend(v12, "label") - 1)}];
              [v23 floatValue];
              v25 = v24;
              v26 = [&unk_1F19C1FC0 objectAtIndexedSubscript:{objc_msgSend(v12, "label")}];
              [v26 floatValue];
              v28 = v22 > (v25 - v27);

              if (!v28)
              {
                continue;
              }

              [v12 box];
              v30 = v29;
              [v12 box];
              v32 = v31;
              [v12 box];
              v34 = v33;
              [v12 box];
              v36 = v35;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v19 = obj;
              v37 = [v19 countByEnumeratingWithState:&v72 objects:v80 count:16];
              if (v37)
              {
                v38 = v30 + v32 * 0.5;
                v39 = v34 + v36 * 0.5;
                v40 = *v73;
                v71 = v16;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v73 != v40)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v42 = *(*(&v72 + 1) + 8 * j);
                    if ([v42 label] == 3)
                    {
                      [v42 confidence];
                      if (v43 > 0.635)
                      {
                        [v42 box];
                        v45 = v44;
                        [v42 box];
                        v47 = v46;
                        [v42 box];
                        v49 = v48;
                        [v42 box];
                        v51 = v50;
                        [v42 box];
                        v53 = v52;
                        [v42 box];
                        v54 = v45;
                        v58 = v53 + v57;
                        if (v54 < v38)
                        {
                          v56 = v49 + v51;
                          v59 = v38 < v56;
                        }

                        else
                        {
                          v59 = 0;
                        }

                        if (v59)
                        {
                          v55 = v47;
                          v60 = v55 < v39;
                        }

                        else
                        {
                          v60 = 0;
                        }

                        if (v60 && v39 < v58)
                        {
                          [v42 box];
                          v63 = v62;
                          [v42 box];
                          v65 = v71 / (v63 * v64);
                          if (v65 > 0.03)
                          {
                            v66 = [thresholdsCopy objectAtIndexedSubscript:{(objc_msgSend(v12, "label") - 1)}];
                            [v66 floatValue];
                            *&v68 = v67 + 0.001;
                            [v12 setConfidence:v68];
                          }
                        }
                      }
                    }
                  }

                  v37 = [v19 countByEnumeratingWithState:&v72 objects:v80 count:16];
                }

                while (v37);
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v9);
  }

  return obj;
}

- (VNShotflowDetectorANSTv1)initWithNetwork:(id)network
{
  v7.receiver = self;
  v7.super_class = VNShotflowDetectorANSTv1;
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