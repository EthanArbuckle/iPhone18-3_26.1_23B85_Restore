@interface VNShotflowDetectorANODv5
+ (id)defaultFilterThresholds;
+ (id)filterThresholdsArrayForFilterThresholds:(id)a3 error:(id *)a4;
+ (id)supportedLabelKeys;
- (VNShotflowDetectorANODv5)initWithNetwork:(id)a3;
- (id)analyzePetFaces:(id)a3;
- (id)getIndexBoxes:(id)a3 filterThresholdIndex:(unint64_t)a4;
- (id)groupFaceBody:(id)a3;
- (id)nmsBoxes:(id)a3 usingThresholds:(id)a4;
- (id)processBoxes:(id)a3 withHeight:(float)a4 andWidth:(float)a5 filterThresholds:(id)a6;
@end

@implementation VNShotflowDetectorANODv5

+ (id)filterThresholdsArrayForFilterThresholds:(id)a3 error:(id *)a4
{
  v10[12] = *MEMORY[0x1E69E9840];
  v6 = a3;
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
  v8 = [(VNShotflowDetector *)a1 _filterThresholdsArrayFromKeys:v7 inFilterThresholds:v6 error:a4];

  return v8;
}

+ (id)defaultFilterThresholds
{
  if (+[VNShotflowDetectorANODv5 defaultFilterThresholds]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANODv5 defaultFilterThresholds]::onceToken, &__block_literal_global_302);
  }

  v3 = +[VNShotflowDetectorANODv5 defaultFilterThresholds]::filterThresholds;

  return v3;
}

void __51__VNShotflowDetectorANODv5_defaultFilterThresholds__block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v2[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v3[0] = &unk_1F19C2368;
  v3[1] = &unk_1F19C2388;
  v2[2] = @"VNShotflowDetectorFilterThresholdKey_HumanBody";
  v2[3] = @"VNShotflowDetectorFilterThresholdKey_CatBody";
  v3[2] = &unk_1F19C2398;
  v3[3] = &unk_1F19C23A8;
  v2[4] = @"VNShotflowDetectorFilterThresholdKey_DogBody";
  v2[5] = @"VNShotflowDetectorFilterThresholdKey_Other";
  v3[4] = &unk_1F19C23B8;
  v3[5] = &unk_1F19C22B8;
  v2[6] = @"VNShotflowDetectorFilterThresholdKey_Food";
  v2[7] = @"VNShotflowDetectorFilterThresholdKey_Drink";
  v3[6] = &unk_1F19C23C8;
  v3[7] = &unk_1F19C23D8;
  v2[8] = @"VNShotflowDetectorFilterThresholdKey_CatHead";
  v2[9] = @"VNShotflowDetectorFilterThresholdKey_DogHead";
  v3[8] = &unk_1F19C23E8;
  v3[9] = &unk_1F19C23F8;
  v2[10] = @"VNShotflowDetectorFilterThresholdKey_SportsBall";
  v2[11] = @"VNShotflowDetectorFilterThresholdKey_FullBody";
  v3[10] = &unk_1F19C2408;
  v3[11] = &unk_1F19C2418;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = +[VNShotflowDetectorANODv5 defaultFilterThresholds]::filterThresholds;
  +[VNShotflowDetectorANODv5 defaultFilterThresholds]::filterThresholds = v0;
}

+ (id)supportedLabelKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VNShotflowDetectorANODv5_supportedLabelKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNShotflowDetectorANODv5 supportedLabelKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowDetectorANODv5 supportedLabelKeys]::onceToken, block);
  }

  v2 = +[VNShotflowDetectorANODv5 supportedLabelKeys]::supportedLabelKeys;

  return v2;
}

void __46__VNShotflowDetectorANODv5_supportedLabelKeys__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___VNShotflowDetectorANODv5;
  v1 = objc_msgSendSuper2(&v3, sel_supportedLabelKeys);
  v2 = +[VNShotflowDetectorANODv5 supportedLabelKeys]::supportedLabelKeys;
  +[VNShotflowDetectorANODv5 supportedLabelKeys]::supportedLabelKeys = v1;
}

- (id)groupFaceBody:(id)a3
{
  v157 = *MEMORY[0x1E69E9840];
  v104 = a3;
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_325];
  v103 = [v104 filteredArrayUsingPredicate:v3];

  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_327];
  v114 = [v104 filteredArrayUsingPredicate:v4];

  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_329];
  v113 = [v104 filteredArrayUsingPredicate:v5];

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  obj = v103;
  v6 = [obj countByEnumeratingWithState:&v146 objects:v156 count:16];
  if (v6)
  {
    v111 = *v147;
    v7 = 1;
    do
    {
      v115 = v6;
      for (i = 0; i != v115; ++i)
      {
        if (*v147 != v111)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v146 + 1) + 8 * i);
        [v9 setGroupId:v7];
        [v9 boxCenter];
        v11 = v10;
        v13 = v12;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v14 = v114;
        v15 = [v14 countByEnumeratingWithState:&v142 objects:v155 count:16];
        v119 = v7;
        if (v15)
        {
          v16 = 0;
          v17 = *v143;
          v20 = -1;
          v21 = 1000000.0;
          do
          {
            v22 = 0;
            v23 = v16;
            v16 += v15;
            do
            {
              if (*v143 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v24 = *(*(&v142 + 1) + 8 * v22);
              if (![v24 groupId])
              {
                [v24 associatedX];
                v26 = v25;
                [v24 associatedY];
                v18 = v11;
                v19 = v13;
                v28 = vabds_f32(v26, v18) + vabds_f32(v27, v19);
                if (v28 < v21)
                {
                  v20 = v23;
                  v21 = v28;
                }
              }

              ++v23;
              ++v22;
            }

            while (v15 != v22);
            v15 = [v14 countByEnumeratingWithState:&v142 objects:v155 count:16];
          }

          while (v15);
        }

        else
        {
          v20 = -1;
          v21 = 1000000.0;
        }

        [(VNShotflowDetectorANODv5 *)self faceBodyDistanceThreshold];
        if (v21 < v29 && (v20 & 0x80000000) == 0)
        {
          v30 = [v14 objectAtIndexedSubscript:v20];
          [v30 setGroupId:{objc_msgSend(v9, "groupId")}];
        }

        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v31 = v113;
        v32 = [v31 countByEnumeratingWithState:&v138 objects:v154 count:16];
        if (v32)
        {
          v33 = 0;
          v34 = *v139;
          v35 = v11;
          v36 = v13;
          v37 = -1;
          v38 = 1000000.0;
          do
          {
            v39 = 0;
            v40 = v33;
            v33 += v32;
            do
            {
              if (*v139 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v41 = *(*(&v138 + 1) + 8 * v39);
              if (![v41 groupId])
              {
                [v41 associatedX];
                v43 = v42;
                [v41 associatedY];
                v45 = vabds_f32(v43, v35) + vabds_f32(v44, v36);
                if (v45 < v38)
                {
                  v37 = v40;
                  v38 = v45;
                }
              }

              ++v40;
              ++v39;
            }

            while (v32 != v39);
            v32 = [v31 countByEnumeratingWithState:&v138 objects:v154 count:16];
          }

          while (v32);
        }

        else
        {
          v37 = -1;
          v38 = 1000000.0;
        }

        [(VNShotflowDetectorANODv5 *)self faceBodyDistanceThreshold];
        if (v38 < v46 && (v37 & 0x80000000) == 0)
        {
          v47 = [v31 objectAtIndexedSubscript:v37];
          [v47 setGroupId:{objc_msgSend(v9, "groupId")}];
        }

        v7 = (v119 + 1);
      }

      v6 = [obj countByEnumeratingWithState:&v146 objects:v156 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 1;
  }

  v48 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_331];
  v102 = [v104 filteredArrayUsingPredicate:v48];

  v49 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_333];
  v112 = [v104 filteredArrayUsingPredicate:v49];

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v106 = v102;
  v50 = [v106 countByEnumeratingWithState:&v134 objects:v153 count:16];
  if (v50)
  {
    v109 = *v135;
    do
    {
      v51 = 0;
      v116 = v50;
      do
      {
        if (*v135 != v109)
        {
          objc_enumerationMutation(v106);
        }

        v52 = *(*(&v134 + 1) + 8 * v51);
        [v52 setGroupId:v7];
        [v52 boxCenter];
        v54 = v53;
        v56 = v55;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v57 = v112;
        v58 = [v57 countByEnumeratingWithState:&v130 objects:v152 count:16];
        v120 = v7;
        if (v58)
        {
          v59 = 0;
          v60 = *v131;
          v61 = v54;
          v62 = v56;
          v63 = -1;
          v64 = 1000000.0;
          do
          {
            v65 = 0;
            v66 = v59;
            v59 += v58;
            do
            {
              if (*v131 != v60)
              {
                objc_enumerationMutation(v57);
              }

              v67 = *(*(&v130 + 1) + 8 * v65);
              if (![v67 groupId])
              {
                [v67 associatedX];
                v69 = v68;
                [v67 associatedY];
                v71 = vabds_f32(v69, v61) + vabds_f32(v70, v62);
                if (v71 < v64)
                {
                  v63 = v66;
                  v64 = v71;
                }
              }

              ++v66;
              ++v65;
            }

            while (v58 != v65);
            v58 = [v57 countByEnumeratingWithState:&v130 objects:v152 count:16];
          }

          while (v58);
        }

        else
        {
          v63 = -1;
          v64 = 1000000.0;
        }

        [(VNShotflowDetectorANODv5 *)self faceBodyDistanceThreshold];
        if (v64 < v72 && (v63 & 0x80000000) == 0)
        {
          v73 = [v57 objectAtIndexedSubscript:v63];
          [v73 setGroupId:{objc_msgSend(v52, "groupId")}];
        }

        v7 = (v120 + 1);
        ++v51;
      }

      while (v51 != v116);
      v50 = [v106 countByEnumeratingWithState:&v134 objects:v153 count:16];
    }

    while (v50);
  }

  v74 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_335];
  v101 = [v104 filteredArrayUsingPredicate:v74];

  v75 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_337];
  v110 = [v104 filteredArrayUsingPredicate:v75];

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v105 = v101;
  v76 = [v105 countByEnumeratingWithState:&v126 objects:v151 count:16];
  if (v76)
  {
    v107 = *v127;
    do
    {
      v77 = 0;
      v117 = v76;
      do
      {
        if (*v127 != v107)
        {
          objc_enumerationMutation(v105);
        }

        v78 = *(*(&v126 + 1) + 8 * v77);
        [v78 setGroupId:v7];
        [v78 boxCenter];
        v80 = v79;
        v82 = v81;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v83 = v110;
        v84 = [v83 countByEnumeratingWithState:&v122 objects:v150 count:16];
        v121 = v7;
        if (v84)
        {
          v85 = 0;
          v86 = *v123;
          v87 = v80;
          v88 = v82;
          v89 = -1;
          v90 = 1000000.0;
          do
          {
            v91 = 0;
            v92 = v85;
            v85 += v84;
            do
            {
              if (*v123 != v86)
              {
                objc_enumerationMutation(v83);
              }

              v93 = *(*(&v122 + 1) + 8 * v91);
              if (![v93 groupId])
              {
                [v93 associatedX];
                v95 = v94;
                [v93 associatedY];
                v97 = vabds_f32(v95, v87) + vabds_f32(v96, v88);
                if (v97 < v90)
                {
                  v90 = v97;
                  v89 = v92;
                }
              }

              ++v92;
              ++v91;
            }

            while (v84 != v91);
            v84 = [v83 countByEnumeratingWithState:&v122 objects:v150 count:16];
          }

          while (v84);
        }

        else
        {
          v89 = -1;
          v90 = 1000000.0;
        }

        [(VNShotflowDetectorANODv5 *)self faceBodyDistanceThreshold];
        if (v90 < v98 && (v89 & 0x80000000) == 0)
        {
          v99 = [v83 objectAtIndexedSubscript:v89];
          [v99 setGroupId:{objc_msgSend(v78, "groupId")}];
        }

        v7 = (v121 + 1);
        ++v77;
      }

      while (v77 != v117);
      v76 = [v105 countByEnumeratingWithState:&v126 objects:v151 count:16];
    }

    while (v76);
  }

  return v104;
}

BOOL __42__VNShotflowDetectorANODv5_groupFaceBody___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 label] == 14 || objc_msgSend(v2, "label") == 10;

  return v3;
}

BOOL __42__VNShotflowDetectorANODv5_groupFaceBody___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 label] == 13 || objc_msgSend(v2, "label") == 9;

  return v3;
}

BOOL __42__VNShotflowDetectorANODv5_groupFaceBody___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 label] == 1 || objc_msgSend(v2, "label") == 2;

  return v3;
}

- (id)analyzePetFaces:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        if ([v8 label] == 10)
        {
          [v8 petFaceScore];
          v10 = v9;
          [(VNShotflowDetectorANODv5 *)self petFaceThreshold];
          if (v10 > v11)
          {
            [v8 setLabel:14];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        if ([v16 label] == 9)
        {
          [v16 petFaceScore];
          v18 = v17;
          [(VNShotflowDetectorANODv5 *)self petFaceThreshold];
          if (v18 > v19)
          {
            [v16 setLabel:13];
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  return v12;
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
      if (i)
      {
        v9 = [(VNShotflowDetectorANODv5 *)v20 getIndexBoxes:v21 filterThresholdIndex:i];
        [v22 addObjectsFromArray:v9];
      }

      else
      {
        v9 = [(VNShotflowDetector *)v20 sortBoxes:v21 filterThresholdIndex:0];
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

- (id)getIndexBoxes:(id)a3 filterThresholdIndex:(unint64_t)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__VNShotflowDetectorANODv5_getIndexBoxes_filterThresholdIndex___block_invoke;
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

  v14 = [(VNShotflowDetectorANODv5 *)self nmsBoxes:v13 usingThresholds:v11];

  *&v15 = a4;
  *&v16 = a5;
  v17 = [(VNShotflowDetector *)self enforceSquareFaces:v14 withHeight:v15 andWidth:v16];

  v18 = [(VNShotflowDetectorANODBase *)self mergeHeadsBoxes:v17];

  v19 = [(VNShotflowDetectorANODv5 *)self analyzePetFaces:v18];

  v20 = [(VNShotflowDetectorANODv5 *)self groupFaceBody:v19];

  objc_autoreleasePoolPop(v12);
  v25.receiver = self;
  v25.super_class = VNShotflowDetectorANODv5;
  *&v21 = a4;
  *&v22 = a5;
  v23 = [(VNShotflowDetector *)&v25 processBoxes:v20 withHeight:v11 andWidth:v21 filterThresholds:v22];

  return v23;
}

- (VNShotflowDetectorANODv5)initWithNetwork:(id)a3
{
  v7.receiver = self;
  v7.super_class = VNShotflowDetectorANODv5;
  v3 = [(VNShotflowDetector *)&v7 initWithNetwork:a3];
  v4 = v3;
  if (v3)
  {
    v3->super.super._nmsThreshold = 0.3;
    v3->_petFaceThreshold = 0.7;
    v3->_faceBodyDistanceThreshold = 0.07;
    v5 = v3;
  }

  return v4;
}

@end