@interface VNShotflowDetector
+ (CGSize)getSuggestedImageSize:(CGSize)size;
+ (CGSize)inputImageSize;
+ (NSSet)supportedLabelKeys;
+ (NSString)inputLayerName;
+ (NSString)modelName;
+ (float)inputImageAspectRatio;
+ (float)inputImageMaxDimension;
+ (float)inputImageMinDimension;
+ (id)_filterThresholdsArrayFromKeys:(void *)keys inFilterThresholds:(void *)thresholds error:;
+ (id)processingDeviceDetectorWithEspressoNetwork:(id)network espressoPlan:(void *)plan;
+ (id)processingDeviceDetectorWithEspressoNetwork:(id)network espressoPlan:(void *)plan networkThreshold:(float)threshold;
+ (id)processingDeviceDetectorWithModelPath:(id)path networkThreshold:(float)threshold preferredDeviceID:(int)d engineID:(int)iD storageType:(int)type;
+ (id)processingDeviceDetectorWithModelPath:(id)path preferredDeviceID:(int)d engineID:(int)iD storageType:(int)type;
- (VNShotflowDetector)initWithNetwork:(id)network;
- (id)detect:(const vImage_Buffer *)detect inputIsBGR:(BOOL)r;
- (id)detectAndProcessObjects:(const vImage_Buffer *)objects filterThresholds:(id)thresholds inputIsBGR:(BOOL)r;
- (id)enforceSquareFaces:(id)faces withHeight:(float)height andWidth:(float)width;
- (id)filterBoxes:(id)boxes usingThresholds:(id)thresholds;
- (id)mergeBoxes:(id)boxes;
- (id)overlappingLowMergeCountSuppression:(id)suppression;
- (id)overlappingSmallFacesSuppression:(id)suppression;
- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds;
- (id)smartMergeBoxes:(id)boxes;
- (id)sortBoxes:(id)boxes filterThresholdIndex:(unint64_t)index;
@end

@implementation VNShotflowDetector

+ (NSString)modelName
{
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];

  return [vNShotflowNetworkClass modelName];
}

- (id)enforceSquareFaces:(id)faces withHeight:(float)height andWidth:(float)width
{
  v29 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  v8 = facesCopy;
  v9 = 0;
  if (height != 0.0 && width != 0.0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = facesCopy;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          if ([v14 label] == 1)
          {
            [v14 box];
            v16 = v15;
            v18 = v17;
            [v14 boxCenter];
            v19 = v16;
            v20 = v18;
            *&v21 = v21;
            *&v22 = v22;
            [v14 setBox:{(*&v21 - (((((v20 * height) + (v19 * width)) * 0.5) / width) * 0.5)), (*&v22 - (((((v20 * height) + (v19 * width)) * 0.5) / height) * 0.5)), ((((v20 * height) + (v19 * width)) * 0.5) / width), ((((v20 * height) + (v19 * width)) * 0.5) / height)}];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v9 = v10;
  }

  return v9;
}

- (id)detectAndProcessObjects:(const vImage_Buffer *)objects filterThresholds:(id)thresholds inputIsBGR:(BOOL)r
{
  thresholdsCopy = thresholds;
  v8 = [(VNShotflowDetector *)self detect:objects inputIsBGR:1];
  *&v9 = objects->height;
  *&v10 = objects->width;
  v11 = [(VNShotflowDetector *)self processBoxes:v8 withHeight:thresholdsCopy andWidth:v9 filterThresholds:v10];

  return v11;
}

- (id)processBoxes:(id)boxes withHeight:(float)height andWidth:(float)width filterThresholds:(id)thresholds
{
  v47 = *MEMORY[0x1E69E9840];
  boxesCopy = boxes;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(boxesCopy, "count")}];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = boxesCopy;
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v10)
  {
    v11 = *v43;
    heightCopy = height;
    widthCopy = width;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [v13 label] != 1;
        [v13 box];
        v16 = v15;
        [v13 box];
        v18 = v17;
        [v13 box];
        v20 = v19;
        [v13 box];
        v22 = v21;
        v23 = [VNANFDDetectedObject alloc];
        [v13 confidence];
        v25 = v24;
        [v13 rotationAngle];
        v27 = v26;
        [v13 yawAngle];
        v29 = v28;
        [v13 pitchAngle];
        v31 = v30;
        label = [v13 label];
        groupId = [v13 groupId];
        LODWORD(v34) = v27;
        LODWORD(v35) = v29;
        LODWORD(v36) = v31;
        v37 = [(VNANFDDetectedObject *)v23 initWithObjectType:v14 boundingBox:label confidence:groupId rotationAngle:v16 * widthCopy yawAngle:heightCopy - (v20 * heightCopy + v22 * heightCopy) pitchAngle:v18 * widthCopy labelKey:v22 * heightCopy groupId:COERCE_DOUBLE(__PAIR64__(HIDWORD(heightCopy), v25)), v34, v35, v36];
        [v8 addObject:v37];
      }

      v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)detect:(const vImage_Buffer *)detect inputIsBGR:(BOOL)r
{
  network = self->_network;
  v5 = *&detect->width;
  v8[0] = *&detect->data;
  v8[1] = v5;
  v6 = [(VNShotflowNetwork *)network resizeAndProcessVImage:v8 inputIsBGR:r];

  return v6;
}

- (id)filterBoxes:(id)boxes usingThresholds:(id)thresholds
{
  boxesCopy = boxes;
  thresholdsCopy = thresholds;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [thresholdsCopy count];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [thresholdsCopy objectAtIndexedSubscript:i];
      [v10 floatValue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__VNShotflowDetector_filterBoxes_usingThresholds___block_invoke;
      v15[3] = &__block_descriptor_44_e46_B24__0__VNShotflowDetection_8__NSDictionary_16l;
      v16 = v11;
      v15[4] = i;
      v12 = [MEMORY[0x1E696AE18] predicateWithBlock:v15];
      v13 = [boxesCopy filteredArrayUsingPredicate:v12];

      [v7 addObjectsFromArray:v13];
    }
  }

  return v7;
}

BOOL __50__VNShotflowDetector_filterBoxes_usingThresholds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 confidence];
  v5 = v4 >= *(a1 + 40) && [v3 label] == *(a1 + 32) + 1;

  return v5;
}

- (id)sortBoxes:(id)boxes filterThresholdIndex:(unint64_t)index
{
  v13[1] = *MEMORY[0x1E69E9840];
  boxesCopy = boxes;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__VNShotflowDetector_sortBoxes_filterThresholdIndex___block_invoke;
  v12[3] = &__block_descriptor_40_e46_B24__0__VNShotflowDetection_8__NSDictionary_16l;
  v12[4] = index;
  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:v12];
  v7 = [boxesCopy filteredArrayUsingPredicate:v6];

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [v7 sortedArrayUsingDescriptors:v9];

  return v10;
}

- (id)smartMergeBoxes:(id)boxes
{
  v123[1] = *MEMORY[0x1E69E9840];
  boxesCopy = boxes;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"smartDistance" ascending:1];
  v123[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:1];
  v6 = [boxesCopy sortedArrayUsingDescriptors:v5];

  v7 = [v6 count];
  std::vector<BOOL>::vector(&__p, v7);
  [(VNShotflowDetector *)self smartThreshold];
  v117 = v8;
  [(VNShotflowDetector *)self smartDistanceFactor];
  v116 = v9;
  array = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    v10 = 0;
    v115 = (1.0 - v117);
    do
    {
      v11 = [v6 objectAtIndexedSubscript:v10];
      v12 = v11;
      v13 = *(__p + (v10 >> 6));
      if ((v13 & (1 << v10)) != 0)
      {
        ++v10;
      }

      else
      {
        *(__p + (v10 >> 6)) = v13 | (1 << v10);
        [v11 confidence];
        v114 = v14;
        [v12 box];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [v12 boxCenter];
        v118 = v24;
        v119 = v23;
        *&v23 = v20;
        v25 = v114 * *&v23;
        *&v23 = v22;
        v112 = v114 * *&v23;
        v113 = v25;
        *&v23 = v18;
        v26 = v114 * *&v23;
        *&v23 = v16;
        v110 = v114 * *&v23;
        v111 = v26;
        ++v10;
        v27 = 1;
        if (v10 < v7)
        {
          v28 = v10;
          do
          {
            if ((*(__p + (v28 >> 6)) & (1 << v28)) == 0)
            {
              v29 = [v6 objectAtIndexedSubscript:v28];
              [v29 boxCenter];
              v31 = v30;
              v33 = v32;
              [v12 overlap:v29];
              v35 = v34;
              [v12 box];
              v37 = v36;
              [v12 box];
              v39 = v38;
              [v29 box];
              v41 = v40;
              [v29 box];
              v43 = v42;
              [v12 box];
              v45 = v44;
              [v12 box];
              v47 = v41 + v43;
              v48 = v45 + v46;
              if (v47 >= v48)
              {
                v49 = v45 + v46;
              }

              else
              {
                v49 = v41 + v43;
              }

              [v29 box];
              v51 = v50;
              v121 = v49;
              [v12 box];
              v52 = v51;
              v54 = v53;
              if (v52 >= v54)
              {
                v54 = v51;
              }

              v120 = v54;
              [v29 box];
              v56 = v55;
              [v29 box];
              v58 = v57;
              [v12 box];
              v60 = v59;
              [v12 box];
              v62 = v56 + v58;
              v63 = v60 + v61;
              if (v62 >= v63)
              {
                v64 = v60 + v61;
              }

              else
              {
                v64 = v56 + v58;
              }

              [v29 box];
              v66 = v65;
              [v12 box];
              v67 = sqrt((v119 - v31) * (v119 - v31) + (v118 - v33) * (v118 - v33));
              v68 = fmin(v37, v39);
              v69 = v66;
              v71 = v70;
              if (v69 >= v71)
              {
                v72 = v66;
              }

              else
              {
                v72 = v71;
              }

              if (((1.0 - sqrtf(v35)) + ((v116 * v67) / v68)) < v117)
              {
                [v12 box];
                if (v73 * v115 <= fmaxf(v121 - v120, 0.0))
                {
                  [v12 box];
                  if (v74 * v115 <= fmaxf(v64 - v72, 0.0))
                  {
                    *(__p + (v28 >> 6)) |= 1 << v28;
                    [v29 box];
                    v76 = v75;
                    v78 = v77;
                    v80 = v79;
                    v82 = v81;
                    [v29 confidence];
                    v83 = v76;
                    v85 = v110 + (v84 * v83);
                    v86 = v78;
                    v110 = v85;
                    v111 = v111 + (v84 * v86);
                    v87 = v80;
                    v88 = v113 + (v84 * v87);
                    v89 = v82;
                    v112 = v112 + (v84 * v89);
                    v113 = v88;
                    v114 = v114 + v84;
                    v27 = (v27 + 1);
                  }
                }
              }
            }

            ++v28;
          }

          while (v7 != v28);
        }

        v90 = [VNShotflowDetection alloc];
        [v12 defaultBox];
        v92 = v91;
        v94 = v93;
        v96 = v95;
        v98 = v97;
        [v12 confidence];
        v100 = v99;
        scale = [v12 scale];
        [v12 rotationAngle];
        v103 = v102;
        [v12 yawAngle];
        LODWORD(v107) = v104;
        v105 = -[VNShotflowDetection initWithBox:defaultBox:confidence:scale:rotationAngle:yawAngle:mergesCount:hasLabel:label:](v90, "initWithBox:defaultBox:confidence:scale:rotationAngle:yawAngle:mergesCount:hasLabel:label:", scale, v27, [v12 hasLabel], objc_msgSend(v12, "label"), (v110 / v114), (v111 / v114), (v113 / v114), (v112 / v114), v92, v94, v96, v98, __PAIR64__(v103, v100), v107);
        [array addObject:v105];
      }
    }

    while (v10 != v7);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return array;
}

- (id)mergeBoxes:(id)boxes
{
  v69[1] = *MEMORY[0x1E69E9840];
  boxesCopy = boxes;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
  v69[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v6 = [boxesCopy sortedArrayUsingDescriptors:v5];

  v7 = [v6 count];
  std::vector<BOOL>::vector(&__p, v7);
  [(VNShotflowDetector *)self nmsThreshold];
  v67 = v8;
  array = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
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
        v14 = v13;
        [v11 box];
        *&v15 = v15;
        v16 = v14 * *&v15;
        *&v15 = v17;
        v18 = v14 * *&v15;
        *&v15 = v19;
        v20 = v14 * *&v15;
        *&v15 = v21;
        v22 = v14 * *&v15;
        ++v9;
        v23 = 1;
        if (v9 < v7)
        {
          v24 = v9;
          do
          {
            if ((*(__p + (v24 >> 6)) & (1 << v24)) == 0)
            {
              v25 = [v6 objectAtIndexedSubscript:v24];
              [v11 overlap:v25];
              if (v26 > v67)
              {
                v65 = v14;
                v27 = v20;
                v28 = v18;
                v29 = v16;
                *(__p + (v24 >> 6)) |= 1 << v24;
                [v25 box];
                v31 = v30;
                v33 = v32;
                v35 = v34;
                v37 = v36;
                [v25 confidence];
                v38 = v31;
                v16 = v29 + (v39 * v38);
                v40 = v33;
                v18 = v28 + (v39 * v40);
                v41 = v35;
                v22 = v22 + (v39 * v41);
                v42 = v37;
                v20 = v27 + (v39 * v42);
                v14 = v65 + v39;
                v23 = (v23 + 1);
              }
            }

            ++v24;
          }

          while (v7 != v24);
        }

        v43 = v16;
        v44 = v22;
        v45 = v18;
        v46 = [VNShotflowDetection alloc];
        [v11 defaultBox];
        v64 = v48;
        v66 = v47;
        v62 = v50;
        v63 = v49;
        [v11 confidence];
        v52 = v51;
        scale = [v11 scale];
        [v11 rotationAngle];
        v55 = v54;
        [v11 yawAngle];
        LODWORD(v59) = v56;
        v57 = -[VNShotflowDetection initWithBox:defaultBox:confidence:scale:rotationAngle:yawAngle:mergesCount:hasLabel:label:](v46, "initWithBox:defaultBox:confidence:scale:rotationAngle:yawAngle:mergesCount:hasLabel:label:", scale, v23, [v11 hasLabel], objc_msgSend(v11, "label"), (v43 / v14), (v45 / v14), (v44 / v14), (v20 / v14), v66, v64, v63, v62, __PAIR64__(v55, v52), v59);
        [array addObject:v57];
      }
    }

    while (v9 != v7);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return array;
}

- (id)overlappingLowMergeCountSuppression:(id)suppression
{
  v21[1] = *MEMORY[0x1E69E9840];
  suppressionCopy = suppression;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mergesCount" ascending:0];
  v21[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v6 = [suppressionCopy sortedArrayUsingDescriptors:v5];

  v7 = [v6 count];
  std::vector<BOOL>::vector(&__p, v7);
  [(VNShotflowDetector *)self olmcsThreshold];
  v9 = v8;
  olmcsMergeCountDelta = [(VNShotflowDetector *)self olmcsMergeCountDelta];
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
                if ([v12 isOverlappingLowMergeDet:v15 withOverlapThreshold:olmcsMergeCountDelta withMergeCountDelta:v16])
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

- (id)overlappingSmallFacesSuppression:(id)suppression
{
  v23[1] = *MEMORY[0x1E69E9840];
  suppressionCopy = suppression;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
  v23[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v6 = [suppressionCopy sortedArrayUsingDescriptors:v5];

  v7 = [v6 count];
  std::vector<BOOL>::vector(&__p, v7);
  [(VNShotflowDetector *)self osfsThreshold];
  v9 = v8;
  [(VNShotflowDetector *)self osfsSizeRatio];
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

- (VNShotflowDetector)initWithNetwork:(id)network
{
  networkCopy = network;
  v9.receiver = self;
  v9.super_class = VNShotflowDetector;
  v6 = [(VNShotflowDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_network, network);
    v7->_nmsThreshold = 0.45;
    *&v7->_osfsThreshold = 0x3F4CCCCD3F0CCCCDLL;
    *&v7->_olmcsThreshold = 0x53E99999ALL;
    *&v7->_smartThreshold = 0x3F8000003F19999ALL;
  }

  return v7;
}

+ (CGSize)getSuggestedImageSize:(CGSize)size
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (size.width >= size.height)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  if (size.height >= size.width)
  {
    width = size.height;
  }

  else
  {
    width = size.width;
  }

  if (height != 0.0 && width != 0.0)
  {
    v7 = size.height;
    v8 = size.width;
    [self inputImageMinDimension];
    if (v10 != 0.0)
    {
      [self inputImageMaxDimension];
      v12 = v11;
      [self inputImageMinDimension];
      if (width / height >= (v12 / v13))
      {
        [self inputImageMaxDimension];
        height = width;
      }

      else
      {
        [self inputImageMinDimension];
      }

      v15 = v14 / height;
      v3 = round(v8 * v15);
      v4 = round(v7 * v15);
    }
  }

  v16 = v3;
  v17 = v4;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (id)processingDeviceDetectorWithEspressoNetwork:(id)network espressoPlan:(void *)plan
{
  v5 = *&network.var1;
  var0 = network.var0;
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];
  [self networkThreshold];
  v9 = [vNShotflowNetworkClass processingDeviceDetectorWithEspressoNetwork:var0 espressoPlan:v5 threshold:plan];
  v10 = [[self alloc] initWithNetwork:v9];

  return v10;
}

+ (id)processingDeviceDetectorWithEspressoNetwork:(id)network espressoPlan:(void *)plan networkThreshold:(float)threshold
{
  v7 = *&network.var1;
  var0 = network.var0;
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];
  *&v11 = threshold;
  v12 = [vNShotflowNetworkClass processingDeviceDetectorWithEspressoNetwork:var0 espressoPlan:v7 threshold:{plan, v11}];
  v13 = [[self alloc] initWithNetwork:v12];

  return v13;
}

+ (id)processingDeviceDetectorWithModelPath:(id)path preferredDeviceID:(int)d engineID:(int)iD storageType:(int)type
{
  v6 = *&type;
  v7 = *&iD;
  v8 = *&d;
  pathCopy = path;
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];
  [self networkThreshold];
  v12 = [vNShotflowNetworkClass processingDeviceNetworkWithModelPath:pathCopy threshold:v8 preferredDeviceID:v7 engineID:v6 storageType:?];
  v13 = [[self alloc] initWithNetwork:v12];

  return v13;
}

+ (id)processingDeviceDetectorWithModelPath:(id)path networkThreshold:(float)threshold preferredDeviceID:(int)d engineID:(int)iD storageType:(int)type
{
  v7 = *&type;
  v8 = *&iD;
  v9 = *&d;
  pathCopy = path;
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];
  *&v14 = threshold;
  v15 = [vNShotflowNetworkClass processingDeviceNetworkWithModelPath:pathCopy threshold:v9 preferredDeviceID:v8 engineID:v7 storageType:v14];
  v16 = [[self alloc] initWithNetwork:v15];

  return v16;
}

+ (NSSet)supportedLabelKeys
{
  v2 = [objc_msgSend(self "VNShotflowNetworkClass")];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:(v2[1] - *v2) >> 3];
  v4 = *v2;
  v5 = v2[1];
  if (*v2 != v5)
  {
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*v4];
      [v3 addObject:v6];

      ++v4;
    }

    while (v4 != v5);
  }

  v7 = [v3 copy];

  return v7;
}

+ (float)inputImageAspectRatio
{
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];

  [vNShotflowNetworkClass inputImageAspectRatio];
  return result;
}

+ (float)inputImageMaxDimension
{
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];

  [vNShotflowNetworkClass inputImageMaxDimension];
  return result;
}

+ (float)inputImageMinDimension
{
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];

  [vNShotflowNetworkClass inputImageMinDimension];
  return result;
}

+ (CGSize)inputImageSize
{
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];

  [vNShotflowNetworkClass inputImageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (NSString)inputLayerName
{
  vNShotflowNetworkClass = [self VNShotflowNetworkClass];

  return [vNShotflowNetworkClass inputLayerName];
}

+ (id)_filterThresholdsArrayFromKeys:(void *)keys inFilterThresholds:(void *)thresholds error:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  keysCopy = keys;
  objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [keysCopy objectForKeyedSubscript:v13];
        if (!v14)
        {
          if (thresholds)
          {
            v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not obtain the threshold value for %@", v13];
            *thresholds = [VNError errorForInternalErrorWithLocalizedDescription:v16];
          }

          v15 = 0;
          goto LABEL_13;
        }

        [v8 addObject:v14];
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = v8;
LABEL_13:

  return v15;
}

@end