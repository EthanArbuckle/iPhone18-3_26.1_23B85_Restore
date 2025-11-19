@interface AXShotflowDetector
+ (id)cpuDetectorWithModelPath:(id)a3 configuration:(id)a4 version:(int)a5;
+ (id)gpuDetectorWithModelPath:(id)a3 configuration:(id)a4 preferredMetalDeviceID:(int)a5 version:(int)a6 modelType:(int64_t)a7;
- (AXShotflowDetector)initWithNetwork:(id)a3 nmsThreshold:(float)a4 filterThreshold:(id)a5;
- (id)detect:(id)a3;
- (id)enforceSquareFaces:(id)a3 withHeight:(float)a4 andWidth:(float)a5;
- (id)filterBoxes:(id)a3;
- (id)mergeBoxes:(id)a3;
- (id)mergeHeadsBoxes:(id)a3;
- (id)nmsBoxes:(id)a3;
- (id)overlappingLowMergeCountSuppression:(id)a3;
- (id)overlappingSmallFacesSuppression:(id)a3;
- (id)processBoxes:(id)a3 withHeight:(float)a4 andWidth:(float)a5;
- (id)smartMergeBoxes:(id)a3;
@end

@implementation AXShotflowDetector

+ (id)cpuDetectorWithModelPath:(id)a3 configuration:(id)a4 version:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = [AXShotflowNetwork cpuNetworkWithModelPath:a3 configuration:v8 version:v5 modelType:1];
  v10 = [a1 alloc];
  v11 = [v8 nmsThreshold];
  [v11 floatValue];
  v13 = v12;
  v14 = [v8 filterThresholds];
  LODWORD(v15) = v13;
  v16 = [v10 initWithNetwork:v9 nmsThreshold:v14 filterThreshold:v15];

  return v16;
}

+ (id)gpuDetectorWithModelPath:(id)a3 configuration:(id)a4 preferredMetalDeviceID:(int)a5 version:(int)a6 modelType:(int64_t)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v12 = a4;
  v13 = [AXShotflowNetwork gpuNetworkWithModelPath:a3 configuration:v12 preferredMetalDeviceID:v9 version:v8 modelType:a7];
  v14 = [a1 alloc];
  v15 = [v12 nmsThreshold];
  [v15 floatValue];
  v17 = v16;
  v18 = [v12 filterThresholds];
  LODWORD(v19) = v17;
  v20 = [v14 initWithNetwork:v13 nmsThreshold:v18 filterThreshold:v19];

  return v20;
}

- (AXShotflowDetector)initWithNetwork:(id)a3 nmsThreshold:(float)a4 filterThreshold:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AXShotflowDetector;
  v11 = [(AXShotflowDetector *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_network, a3);
    v12->_nmsThreshold = a4;
    *&v12->_mergeHeadsThreshold = xmmword_1AE4516E0;
    v12->_olmcsMergeCountDelta = 5;
    *&v12->_smartThreshold = 0x3F8000003F19999ALL;
    objc_storeStrong(&v12->_filterThreshold, a5);
  }

  return v12;
}

- (id)nmsBoxes:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v24 = a3;
  v23 = [(NSArray *)self->_filterThreshold count];
  [(AXShotflowDetector *)self nmsThreshold];
  v5 = v4;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v23)
  {
    v6 = 0;
    v22 = MEMORY[0x1E69E9820];
    do
    {
      v29[0] = v22;
      v29[1] = 3221225472;
      v29[2] = __31__AXShotflowDetector_nmsBoxes___block_invoke;
      v29[3] = &__block_descriptor_40_e45_B24__0__AXElementDetection_8__NSDictionary_16l;
      v25 = v6;
      v29[4] = v6;
      v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v29];
      v26 = [v24 filteredArrayUsingPredicate:v7];

      v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
      v30[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v10 = [v26 sortedArrayUsingDescriptors:v9];

      v11 = [v10 count];
      std::vector<BOOL>::vector(&__p, v11);
      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = [v10 objectAtIndexedSubscript:v12];
          v14 = __p;
          v15 = v12 >> 6;
          v16 = 1 << v12;
          v17 = *(__p + (v12++ >> 6));
          if ((v17 & v16) == 0)
          {
            v18 = v12;
            if (v12 < v11)
            {
              do
              {
                if ((*(__p + (v18 >> 6)) & (1 << v18)) == 0)
                {
                  v19 = [v10 objectAtIndexedSubscript:v18];
                  [v13 overlap:v19];
                  if (v20 > v5)
                  {
                    *(__p + (v18 >> 6)) |= 1 << v18;
                  }
                }

                ++v18;
              }

              while (v11 != v18);
              v14 = __p;
              v17 = *(__p + v15);
            }

            v14[v15] = v17 | v16;
            [v27 addObject:v13];
          }
        }

        while (v12 != v11);
      }

      if (__p)
      {
        operator delete(__p);
      }

      v6 = v25 + 1;
    }

    while (v25 + 1 != v23);
  }

  return v27;
}

- (id)overlappingSmallFacesSuppression:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
  v23[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v6 = [v21 sortedArrayUsingDescriptors:v5];

  v7 = [v6 count];
  std::vector<BOOL>::vector(&__p, v7);
  [(AXShotflowDetector *)self osfsThreshold];
  v9 = v8;
  [(AXShotflowDetector *)self osfsSizeRatio];
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    v13 = 0;
    do
    {
      v14 = [v6 objectAtIndexedSubscript:v13];
      v15 = *(__p + (v13 >> 6));
      if ((v15 & (1 << v13)) != 0)
      {
        ++v13;
      }

      else
      {
        *(__p + (v13 >> 6)) = v15 | (1 << v13);
        [v12 addObject:v14];
        v16 = ++v13;
        if (v13 < v7)
        {
          do
          {
            if ((*(__p + (v16 >> 6)) & (1 << v16)) == 0)
            {
              v17 = [v6 objectAtIndexedSubscript:v16];
              LODWORD(v18) = v9;
              LODWORD(v19) = v11;
              if ([v14 isOverlappingSmallFace:v17 withOverlapThreshold:v18 withSizeRatio:v19])
              {
                *(__p + (v16 >> 6)) |= 1 << v16;
              }
            }

            ++v16;
          }

          while (v7 != v16);
        }
      }
    }

    while (v13 != v7);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

- (id)mergeHeadsBoxes:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v28 = a3;
  [(AXShotflowDetector *)self mergeHeadsThreshold];
  v5 = v4;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __38__AXShotflowDetector_mergeHeadsBoxes___block_invoke;
  v32[3] = &__block_descriptor_40_e45_B24__0__AXElementDetection_8__NSDictionary_16l;
  v32[4] = 2;
  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:v32];
  v27 = [v28 filteredArrayUsingPredicate:v6];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __38__AXShotflowDetector_mergeHeadsBoxes___block_invoke_2;
  v31[3] = &__block_descriptor_40_e45_B24__0__AXElementDetection_8__NSDictionary_16l;
  v31[4] = 1;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v31];
  v8 = [v28 filteredArrayUsingPredicate:v7];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __38__AXShotflowDetector_mergeHeadsBoxes___block_invoke_3;
  v30[3] = &__block_descriptor_40_e45_B24__0__AXElementDetection_8__NSDictionary_16l;
  v30[4] = 2;
  v9 = [MEMORY[0x1E696AE18] predicateWithBlock:v30];
  v10 = [v28 filteredArrayUsingPredicate:v9];

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
  v33[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v13 = [v27 sortedArrayUsingDescriptors:v12];

  v14 = [v13 count];
  v15 = [v8 count];
  if (v14)
  {
    v16 = v15;
    for (i = 0; i != v14; ++i)
    {
      v18 = [v13 objectAtIndexedSubscript:i];
      if (!v16)
      {
        goto LABEL_11;
      }

      v19 = 0;
      v20 = 1;
      do
      {
        while (!v20)
        {
          v20 = 0;
          if (++v19 == v16)
          {
            goto LABEL_12;
          }
        }

        v21 = [v8 objectAtIndexedSubscript:v19];
        [v18 iOa:v21];
        v23 = v22;
        v20 = v22 <= v5;

        ++v19;
      }

      while (v19 != v16);
      if (v23 <= v5)
      {
LABEL_11:
        [v29 addObject:v18];
      }

LABEL_12:
    }
  }

  for (j = 0; j < [v10 count]; ++j)
  {
    v25 = [v10 objectAtIndexedSubscript:j];
    [v29 addObject:v25];
  }

  return v29;
}

- (id)overlappingLowMergeCountSuppression:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v18 = a3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mergesCount" ascending:0];
  v21[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v6 = [v18 sortedArrayUsingDescriptors:v5];

  v7 = [v6 count];
  std::vector<BOOL>::vector(&__p, v7);
  [(AXShotflowDetector *)self olmcsThreshold];
  v9 = v8;
  v10 = [(AXShotflowDetector *)self olmcsMergeCountDelta];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    v11 = 0;
    do
    {
      v12 = [v6 objectAtIndexedSubscript:v11];
      v13 = *(__p + (v11 >> 6));
      if ((v13 & (1 << v11)) != 0)
      {
        ++v11;
      }

      else
      {
        *(__p + (v11 >> 6)) = v13 | (1 << v11);
        [v19 addObject:v12];
        ++v11;
        if ([v12 mergesCount] >= 11)
        {
          v14 = v11;
          if (v11 < v7)
          {
            do
            {
              if ((*(__p + (v14 >> 6)) & (1 << v14)) == 0)
              {
                v15 = [v6 objectAtIndexedSubscript:v14];
                LODWORD(v16) = v9;
                if ([v12 isOverlappingLowMergeDet:v15 withOverlapThreshold:v10 withMergeCountDelta:v16])
                {
                  *(__p + (v14 >> 6)) |= 1 << v14;
                }
              }

              ++v14;
            }

            while (v7 != v14);
          }
        }
      }
    }

    while (v11 != v7);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v19;
}

- (id)mergeBoxes:(id)a3
{
  v68[1] = *MEMORY[0x1E69E9840];
  v60 = a3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
  v68[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
  v66 = [v60 sortedArrayUsingDescriptors:v5];

  v6 = [v66 count];
  std::vector<BOOL>::vector(&__p, v6);
  [(AXShotflowDetector *)self nmsThreshold];
  v65 = v7;
  v61 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [v66 objectAtIndexedSubscript:v8];
      v10 = v9;
      v11 = *(__p + (v8 >> 6));
      if ((v11 & (1 << v8)) != 0)
      {
        ++v8;
      }

      else
      {
        *(__p + (v8 >> 6)) = v11 | (1 << v8);
        [v9 confidence];
        v13 = v12;
        [v10 box];
        *&v14 = v14;
        v15 = v13 * *&v14;
        *&v14 = v16;
        v17 = v13 * *&v14;
        *&v14 = v18;
        v19 = v13 * *&v14;
        *&v14 = v20;
        v21 = v13 * *&v14;
        ++v8;
        v22 = 1;
        if (v8 < v6)
        {
          v23 = v8;
          do
          {
            if ((*(__p + (v23 >> 6)) & (1 << v23)) == 0)
            {
              v24 = [v66 objectAtIndexedSubscript:v23];
              [v10 overlap:v24];
              if (v25 > v65)
              {
                v63 = v13;
                v26 = v19;
                v27 = v15;
                *(__p + (v23 >> 6)) |= 1 << v23;
                [v24 box];
                v29 = v28;
                v31 = v30;
                v33 = v32;
                v35 = v34;
                [v24 confidence];
                v36 = v29;
                v15 = v27 + (v37 * v36);
                v38 = v31;
                v17 = v17 + (v37 * v38);
                v39 = v33;
                v21 = v21 + (v37 * v39);
                v40 = v35;
                v19 = v26 + (v37 * v40);
                v13 = v63 + v37;
                v22 = (v22 + 1);
              }
            }

            ++v23;
          }

          while (v6 != v23);
        }

        v62 = v21;
        v64 = v19;
        v41 = v15;
        v42 = [AXElementDetection alloc];
        [v10 defaultBox];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        [v10 confidence];
        v52 = v51;
        v53 = [v10 scale];
        v54 = [v10 hasLabel];
        v55 = [v10 label];
        v56 = [v10 labelName];
        LODWORD(v59) = v52;
        v57 = [(AXElementDetection *)v42 initWithBox:v53 defaultBox:v22 confidence:v54 scale:v55 mergesCount:v56 hasLabel:(v41 / v13) label:(v17 / v13) labelName:(v62 / v13), (v64 / v13), v44, v46, v48, v50, v59];

        [v61 addObject:v57];
      }
    }

    while (v8 != v6);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v61;
}

- (id)smartMergeBoxes:(id)a3
{
  v176[1] = *MEMORY[0x1E69E9840];
  v161 = a3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"smartDistance" ascending:1];
  v176[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:1];
  v173 = [v161 sortedArrayUsingDescriptors:v5];

  v6 = [v173 count];
  std::vector<BOOL>::vector(&__p, v6);
  [(AXShotflowDetector *)self smartThreshold];
  v170 = v7;
  [(AXShotflowDetector *)self smartDistanceFactor];
  v169 = v8;
  v162 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    v9 = 0;
    v168 = (1.0 - v170);
    do
    {
      v10 = [v173 objectAtIndexedSubscript:v9];
      v11 = v10;
      v12 = *(__p + (v9 >> 6));
      if ((v12 & (1 << v9)) != 0)
      {
        ++v9;
      }

      else
      {
        *(__p + (v9 >> 6)) = v12 | (1 << v9);
        [v10 confidence];
        v167 = v13;
        [v11 box];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v11 boxCenter];
        v171 = v23;
        v172 = v22;
        *&v22 = v19;
        v24 = v167 * *&v22;
        *&v22 = v21;
        v165 = v167 * *&v22;
        v166 = v24;
        *&v22 = v17;
        v25 = v167 * *&v22;
        *&v22 = v15;
        v163 = v167 * *&v22;
        v164 = v25;
        ++v9;
        v26 = 1;
        if (v9 < v6)
        {
          v27 = v9;
          do
          {
            if ((*(__p + (v27 >> 6)) & (1 << v27)) == 0)
            {
              v28 = [v173 objectAtIndexedSubscript:v27];
              [v28 boxCenter];
              v30 = v29;
              v32 = v31;
              [v11 overlap:v28];
              v34 = v33;
              [v11 box];
              v36 = v35;
              [v11 box];
              v38 = v37;
              [v28 box];
              v40 = v39;
              [v28 box];
              v42 = v41;
              [v11 box];
              v44 = v43;
              [v11 box];
              v45 = v40 + v42;
              v47 = v44 + v46;
              if (v45 >= v47)
              {
                [v11 box];
                v49 = v51;
                [v11 box];
              }

              else
              {
                [v28 box];
                v49 = v48;
                [v28 box];
              }

              v52 = v50;
              [v28 box];
              v54 = v53;
              [v11 box];
              v55 = v54;
              *&v56 = v56;
              if (v55 <= *&v56)
              {
                [v11 box];
              }

              else
              {
                [v28 box];
              }

              v58 = v49 + v52;
              v59 = v57;
              v174 = 0.0;
              if (v58 >= v59)
              {
                [v28 box];
                v61 = v60;
                [v28 box];
                v63 = v62;
                [v11 box];
                v65 = v64;
                [v11 box];
                v66 = v61 + v63;
                v68 = v65 + v67;
                if (v66 >= v68)
                {
                  [v11 box];
                  v70 = v72;
                  [v11 box];
                }

                else
                {
                  [v28 box];
                  v70 = v69;
                  [v28 box];
                }

                v73 = v71;
                [v28 box];
                v75 = v74;
                [v11 box];
                v76 = v75;
                *&v77 = v77;
                if (v76 <= *&v77)
                {
                  [v11 box];
                }

                else
                {
                  [v28 box];
                }

                v79 = v70 + v73;
                v80 = v78;
                v174 = (v79 - v80);
              }

              [v28 box];
              v82 = v81;
              [v28 box];
              v84 = v83;
              [v11 box];
              v86 = v85;
              [v11 box];
              v87 = v82 + v84;
              v89 = v86 + v88;
              if (v87 >= v89)
              {
                [v11 box];
                v91 = v93;
                [v11 box];
              }

              else
              {
                [v28 box];
                v91 = v90;
                [v28 box];
              }

              v94 = v92;
              [v28 box];
              v96 = v95;
              [v11 box];
              v97 = v96;
              *&v98 = v98;
              if (v97 <= *&v98)
              {
                [v11 box];
              }

              else
              {
                [v28 box];
              }

              v100 = v91 + v94;
              v101 = v99;
              v102 = 0.0;
              if (v100 >= v101)
              {
                [v28 box];
                v104 = v103;
                [v28 box];
                v106 = v105;
                [v11 box];
                v108 = v107;
                [v11 box];
                v109 = v104 + v106;
                v111 = v108 + v110;
                if (v109 >= v111)
                {
                  [v11 box];
                  v113 = v115;
                  [v11 box];
                }

                else
                {
                  [v28 box];
                  v113 = v112;
                  [v28 box];
                }

                v116 = v114;
                [v28 box];
                v118 = v117;
                [v11 box];
                v119 = v118;
                *&v120 = v120;
                if (v119 <= *&v120)
                {
                  [v11 box];
                }

                else
                {
                  [v28 box];
                }

                v122 = v113 + v116;
                v123 = v121;
                v102 = (v122 - v123);
              }

              v124 = sqrt((v172 - v30) * (v172 - v30) + (v171 - v32) * (v171 - v32));
              v125 = fmin(v36, v38);
              if (((1.0 - sqrtf(v34)) + ((v169 * v124) / v125)) < v170)
              {
                [v11 box];
                if (v174 >= v126 * v168)
                {
                  [v11 box];
                  if (v102 >= v127 * v168)
                  {
                    *(__p + (v27 >> 6)) |= 1 << v27;
                    [v28 box];
                    v129 = v128;
                    v131 = v130;
                    v133 = v132;
                    v135 = v134;
                    [v28 confidence];
                    v136 = v129;
                    v138 = v163 + (v137 * v136);
                    v139 = v131;
                    v163 = v138;
                    v164 = v164 + (v137 * v139);
                    v140 = v133;
                    v141 = v166 + (v137 * v140);
                    v142 = v135;
                    v165 = v165 + (v137 * v142);
                    v166 = v141;
                    v167 = v167 + v137;
                    v26 = (v26 + 1);
                  }
                }
              }
            }

            ++v27;
          }

          while (v6 != v27);
        }

        v143 = [AXElementDetection alloc];
        [v11 defaultBox];
        v145 = v144;
        v147 = v146;
        v149 = v148;
        v151 = v150;
        [v11 confidence];
        v153 = v152;
        v154 = [v11 scale];
        v155 = [v11 hasLabel];
        v156 = [v11 label];
        v157 = [v11 labelName];
        LODWORD(v160) = v153;
        v158 = [(AXElementDetection *)v143 initWithBox:v154 defaultBox:v26 confidence:v155 scale:v156 mergesCount:v157 hasLabel:(v163 / v167) label:(v164 / v167) labelName:(v166 / v167), (v165 / v167), v145, v147, v149, v151, v160];

        [v162 addObject:v158];
      }
    }

    while (v9 != v6);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v162;
}

- (id)filterBoxes:(id)a3
{
  v4 = a3;
  if ([(AXShotflowNetwork *)self->_network modelType]== 1 || [(AXShotflowNetwork *)self->_network modelType]== 2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(NSArray *)self->_filterThreshold count];
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSArray *)self->_filterThreshold objectAtIndexedSubscript:i];
        [v8 floatValue];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __34__AXShotflowDetector_filterBoxes___block_invoke;
        v15[3] = &__block_descriptor_44_e45_B24__0__AXElementDetection_8__NSDictionary_16l;
        v16 = v9;
        v15[4] = i;
        v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v15];
        v11 = [v4 filteredArrayUsingPredicate:v10];

        for (j = 0; j < [v11 count]; ++j)
        {
          v13 = [v11 objectAtIndexedSubscript:j];
          [v5 addObject:v13];
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __34__AXShotflowDetector_filterBoxes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 confidence];
  v5 = v4 >= *(a1 + 40) && *(a1 + 32) + 1 == [v3 label];

  return v5;
}

- (id)enforceSquareFaces:(id)a3 withHeight:(float)a4 andWidth:(float)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v45 = a3;
  if ([(AXShotflowNetwork *)self->_network version]== 6 || [(AXShotflowNetwork *)self->_network version]>= 9)
  {
    v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v45;
    v6 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v6)
    {
      v7 = *v52;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v52 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v51 + 1) + 8 * i);
          if ([v9 label] == 1)
          {
            [v9 box];
            v11 = v10;
            v13 = v12;
            [v9 boxCenter];
            v15 = v14;
            v17 = v16;
            v18 = [AXElementDetection alloc];
            [v9 defaultBox];
            v49 = v19;
            v21 = v20;
            v23 = v22;
            v25 = v24;
            [v9 confidence];
            v27 = v26;
            v28 = [v9 scale];
            v29 = [v9 mergesCount];
            v30 = [v9 hasLabel];
            v31 = [v9 label];
            v32 = [v9 labelName];
            v33 = v11;
            v34 = v13;
            v35 = ((v34 * a4) + (v33 * a5)) * 0.5;
            v36 = v35 / a5;
            v37 = v35 / a4;
            v38 = v15;
            v39 = v36;
            v40 = v38 + v36 * -0.5;
            v41 = v17;
            LODWORD(v44) = v27;
            v42 = [(AXElementDetection *)v18 initWithBox:v28 defaultBox:v29 confidence:v30 scale:v31 mergesCount:v32 hasLabel:v40 label:(v41 - (v37 * 0.5)) labelName:v39, v37, v21, v23, v49, v25, v44];

            [v50 addObject:v42];
          }

          else
          {
            [v50 addObject:v9];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v50 = v45;
  }

  return v50;
}

- (id)detect:(id)a3
{
  v3 = [(AXShotflowNetwork *)self->_network processCIImage:a3];

  return v3;
}

- (id)processBoxes:(id)a3 withHeight:(float)a4 andWidth:(float)a5
{
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [(AXShotflowDetector *)self nmsBoxes:v8];

  v11 = [(AXShotflowDetector *)self filterBoxes:v10];

  *&v12 = a4;
  *&v13 = a5;
  v14 = [(AXShotflowDetector *)self enforceSquareFaces:v11 withHeight:v12 andWidth:v13];

  v15 = [(AXShotflowDetector *)self mergeHeadsBoxes:v14];

  objc_autoreleasePoolPop(v9);

  return v15;
}

@end