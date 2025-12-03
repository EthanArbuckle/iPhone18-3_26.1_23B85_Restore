@interface VNFgBgE5MLInstanceSegmenter
+ (id)instanceSegmenterWithConfiguration:(id)configuration error:(id *)error;
+ (id)instanceSegmenterWithRevision:(int64_t)revision error:(id *)error;
- (CGRect)getDetection:(const void *)detection mapSize:(CGSize)size isRotated:(BOOL)rotated;
- (ConnectedComponentResult)generateInstanceConnectedComponentsFromMLMultiArray:(SEL)array maskThreshold:(id)threshold queryID:(float)d inverseColor:(int)color;
- (ConnectedComponentResult)generateInstanceConnectedComponentsFromMask:(SEL)mask fillGapsAreaRatio:(vImage_Buffer *)ratio;
- (id)_initWithConfiguration:(id)configuration e5mlProcess:(id)process;
- (id)composeInstanceFeatures:(id)features miyoshiConfidence:(id)confidence cocoConfidence:(id)cocoConfidence predictionIoU:(id)u stabilityScore:(id)score decodeMatch:(id)match isRotated:(BOOL)rotated minimumMaskPixelCount:(unint64_t)self0 useInteractive:(BOOL)self1;
- (vImage_Buffer)generateMaskForInstanceFeatures:(SEL)features maskImageType:(id)type;
- (vImage_Buffer)generateMaskForLabel:(SEL)label fromConnectedComponents:(unint64_t)components error:(const void *)error;
- (vImage_Buffer)generateMaskFromInstanceFeatures:(SEL)features toCategory:(id)category drawBox:(int)box maskImageType:(BOOL)type;
- (vector<std::vector<CGPoint>,)computeSegmentation:(VNFgBgE5MLInstanceSegmenter *)self withQueryID:(SEL)d;
- (vector<std::vector<CGPoint>,)computeVectorConnectedComponentSegmentation:(VNFgBgE5MLInstanceSegmenter *)self minimumMaskPixelCount:(SEL)count withQueryID:(id)d;
- (void)computeConfidenceInput:(id)input confidence:(float *)confidence withQueryID:(int)d category:(int *)category invalidCategory:(int)invalidCategory;
- (void)modifyMask:(vImage_Buffer *)mask forLabel:(unint64_t)label fromConnectedComponents:(const void *)components error:(id *)error;
- (void)removeIsolatedShadow:(id)shadow;
@end

@implementation VNFgBgE5MLInstanceSegmenter

- (void)removeIsolatedShadow:(id)shadow
{
  shadowCopy = shadow;
  v58 = objc_alloc_init(MEMORY[0x1E696AD50]);
  for (i = 0; [shadowCopy count] > i; ++i)
  {
    v4 = [shadowCopy objectAtIndexedSubscript:i];
    cocoCategoryName = [v4 cocoCategoryName];
    v6 = [cocoCategoryName isEqualToString:@"shadow"];

    if (v6)
    {
      for (j = 0; [shadowCopy count] > j; ++j)
      {
        v8 = [shadowCopy objectAtIndexedSubscript:j];
        cocoCategoryName2 = [v8 cocoCategoryName];
        if ([cocoCategoryName2 isEqualToString:@"shadow"])
        {
        }

        else
        {
          v10 = [shadowCopy objectAtIndexedSubscript:j];
          miyoshiCategoryName = [v10 miyoshiCategoryName];
          v12 = [shadowCopy objectAtIndexedSubscript:i];
          miyoshiCategoryName2 = [v12 miyoshiCategoryName];
          v14 = [miyoshiCategoryName isEqualToString:miyoshiCategoryName2];

          if (v14)
          {
            v15 = [shadowCopy objectAtIndexedSubscript:i];
            [v15 bbox];
            v17 = v16;
            v18 = [shadowCopy objectAtIndexedSubscript:i];
            [v18 mapSize];
            v20 = v19;
            v21 = [shadowCopy objectAtIndexedSubscript:i];
            [v21 bbox];
            v23 = v22;
            v24 = [shadowCopy objectAtIndexedSubscript:i];
            [v24 mapSize];
            v65 = v25;
            v26 = [shadowCopy objectAtIndexedSubscript:i];
            [v26 bbox];
            v64 = v27;
            v28 = [shadowCopy objectAtIndexedSubscript:i];
            [v28 mapSize];
            v63 = v29;
            v30 = [shadowCopy objectAtIndexedSubscript:i];
            [v30 bbox];
            v62 = v31;
            v32 = [shadowCopy objectAtIndexedSubscript:i];
            [v32 mapSize];
            v61 = v33;

            v34 = [shadowCopy objectAtIndexedSubscript:j];
            [v34 bbox];
            v60 = v35;
            v36 = [shadowCopy objectAtIndexedSubscript:j];
            [v36 mapSize];
            v59 = v37;
            v38 = [shadowCopy objectAtIndexedSubscript:j];
            [v38 bbox];
            v40 = v39;
            v41 = [shadowCopy objectAtIndexedSubscript:j];
            [v41 mapSize];
            v43 = v42;
            v44 = [shadowCopy objectAtIndexedSubscript:j];
            [v44 bbox];
            v46 = v45;
            v47 = [shadowCopy objectAtIndexedSubscript:j];
            [v47 mapSize];
            v49 = v48;
            v50 = [shadowCopy objectAtIndexedSubscript:j];
            [v50 bbox];
            v52 = v51;
            v53 = [shadowCopy objectAtIndexedSubscript:j];
            [v53 mapSize];
            v54 = v40 * v43;
            v55 = v46 * v49;
            v57 = v52 * v56;

            v68.origin.x = fmax(v17 * v20 - v64 * v63 * 0.05, 0.0);
            v68.origin.y = fmax(v23 * v65 - v62 * v61 * 0.05, 0.0);
            v68.size.width = v64 * v63 + v64 * v63 * 0.05;
            v68.size.height = v62 * v61 + v62 * v61 * 0.05;
            v69.origin.x = fmax(v60 * v59 - v55 * 0.05, 0.0);
            v69.origin.y = fmax(v54 - v57 * 0.05, 0.0);
            v69.size.width = v55 + v55 * 0.05;
            v69.size.height = v57 + v57 * 0.05;
            if (CGRectIntersectsRect(v68, v69))
            {
              goto LABEL_12;
            }
          }
        }
      }

      [v58 addIndex:i];
    }

LABEL_12:
    ;
  }

  [shadowCopy removeObjectsAtIndexes:v58];
}

- (ConnectedComponentResult)generateInstanceConnectedComponentsFromMLMultiArray:(SEL)array maskThreshold:(id)threshold queryID:(float)d inverseColor:(int)color
{
  thresholdCopy = threshold;
  shape = [thresholdCopy shape];
  v10 = [shape objectAtIndexedSubscript:1];
  intValue = [v10 intValue];

  shape2 = [thresholdCopy shape];
  v13 = [shape2 objectAtIndexedSubscript:2];
  LODWORD(shape) = [v13 intValue];

  apple::vision::fgbg::ConnectedComponentResult::ConnectedComponentResult(retstr, shape, intValue, 1, 1, 1);
}

- (vector<std::vector<CGPoint>,)computeVectorConnectedComponentSegmentation:(VNFgBgE5MLInstanceSegmenter *)self minimumMaskPixelCount:(SEL)count withQueryID:(id)d
{
  v6 = *&a6;
  dCopy = d;
  configuration = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  thresholds = [configuration thresholds];
  [thresholds maskThreshold];
  v14 = v13;

  configuration2 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  thresholds2 = [configuration2 thresholds];
  [thresholds2 defaultValidMinimumMaskPixelCount];

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  LODWORD(v17) = v14;
  [(VNFgBgE5MLInstanceSegmenter *)self generateInstanceConnectedComponentsFromMLMultiArray:dCopy maskThreshold:v6 queryID:0 inverseColor:v17];
  for (i = 0; i < (v27 - v26) >> 3; ++i)
  {
    if (*(v26 + i) > a5)
    {
      v19 = 0;
      v20 = 0;
      memset(__p, 0, sizeof(__p));
      do
      {
        v23 = *(*(v32 + 24 * i) + v19);
        std::vector<CGPoint>::push_back[abi:ne200100](__p, &v23);
        ++v20;
        v19 += 16;
      }

      while (*(v26 + i) > v20);
      std::vector<std::vector<CGPoint>>::push_back[abi:ne200100](&retstr->var0, __p);
      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }

  __p[0] = &v32;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  v21 = v25;
  v25 = 0;
  if (v21)
  {
    MEMORY[0x1AC556AE0](v21, 0x1000C8000313F17);
  }

  return result;
}

- (vImage_Buffer)generateMaskForInstanceFeatures:(SEL)features maskImageType:(id)type
{
  v35 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (a5)
  {
    *a5 = 1;
  }

  configuration = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  [configuration inputSize];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  *&retstr->data = 0u;
  *&retstr->width = 0u;
  ImageProcessing_reallocVImageBuffer(retstr, v11, v13, 1);
  data = retstr->data;
  if (v13)
  {
    v16 = retstr->data;
    v17 = v13;
    do
    {
      if (v14)
      {
        bzero(v16, v11);
      }

      v16 += v14;
      --v17;
    }

    while (v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = typeCopy;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v19)
  {
    v20 = *v31;
    v21 = v14;
    v22 = v13;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v30 + 1) + 8 * i);
        if (v24)
        {
          [v24 segmentation];
          for (j = v28; j != v29; j += 2)
          {
            if (*j < v21)
            {
              v26 = j[1];
              if (v26 < v22)
              {
                data[(*j + v26 * v21)] = -1;
              }
            }
          }

          if (v28)
          {
            v29 = v28;
            operator delete(v28);
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v19);
  }

  return result;
}

- (void)modifyMask:(vImage_Buffer *)mask forLabel:(unint64_t)label fromConnectedComponents:(const void *)components error:(id *)error
{
  data = mask->data;
  if (mask->data)
  {
    v7 = (*(components + 10) + 24 * (label - *(components + 30)));
    v8 = *v7;
    if (v7[1] != *v7)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        data[(*(v8 + v9) + *(v8 + v9 + 8) * *(components + 13))] = -1;
        ++v10;
        v8 = *(*(components + 10) + 24 * (label - *(components + 30)));
        v9 += 16;
      }

      while (v10 < (*(*(components + 10) + 24 * (label - *(components + 30)) + 8) - v8) >> 4);
    }
  }

  else if (error)
  {
    *error = [VNFgBgInstanceSegmenterError errorWithCode:-6 description:@"null mask image", components];
  }
}

- (vImage_Buffer)generateMaskForLabel:(SEL)label fromConnectedComponents:(unint64_t)components error:(const void *)error
{
  v9 = *(error + 13);
  v10 = *(error + 14);
  retstr->height = v10;
  retstr->width = v9;
  retstr->rowBytes = v9;
  result = malloc_type_calloc(v10 * v9, 1uLL, 0x100004077774924uLL);
  retstr->data = result;
  v12 = (*(error + 10) + 24 * (components - *(error + 30)));
  v13 = *v12;
  if (v12[1] != *v12)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      *(&result->data + (*(v13 + v14) + *(v13 + v14 + 8) * *(error + 13))) = -1;
      ++v15;
      v13 = *(*(error + 10) + 24 * (components - *(error + 30)));
      v14 += 16;
    }

    while (v15 < (*(*(error + 10) + 24 * (components - *(error + 30)) + 8) - v13) >> 4);
  }

  return result;
}

- (vImage_Buffer)generateMaskFromInstanceFeatures:(SEL)features toCategory:(id)category drawBox:(int)box maskImageType:(BOOL)type
{
  typeCopy = type;
  v128 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  if (a7)
  {
    *a7 = 1;
  }

  configuration = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  [configuration inputSize];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  *&retstr->data = 0u;
  *&retstr->width = 0u;
  ImageProcessing_reallocVImageBuffer(retstr, v14, v16, 1);
  data = retstr->data;
  if (v16)
  {
    v19 = retstr->data;
    v20 = v16;
    do
    {
      if (v17)
      {
        bzero(v19, v14);
      }

      v19 += v17;
      --v20;
    }

    while (v20);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v21 = v98;
  v22 = [v21 countByEnumeratingWithState:&v122 objects:v127 count:16];
  if (v22)
  {
    v23 = *v123;
    v24 = v17;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v123 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v122 + 1) + 8 * i);
        if ([v26 miyoshiCategory] == box && v26)
        {
          [v26 segmentation];
          v27 = __p;
          v28 = v121;
          if (__p != v121)
          {
            do
            {
              if (*v27 < v24)
              {
                v29 = v27[1];
                if (v29 < v18)
                {
                  data[(*v27 + v29 * v24)] = -1;
                }
              }

              v27 += 2;
            }

            while (v27 != v28);
            v27 = __p;
          }

          if (v27)
          {
            v121 = v27;
            operator delete(v27);
          }
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v122 objects:v127 count:16];
    }

    while (v22);
  }

  if (typeCopy)
  {
    v108 = v17;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = v21;
    v30 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (v30)
    {
      v111 = *v117;
      v31 = v17;
      v32 = (v17 - 1);
      v33 = v18;
      v34 = (v18 - 1);
      v35 = 16 * v17;
      v107 = v21;
      boxCopy = box;
      do
      {
        v36 = 0;
        v112 = v30;
        do
        {
          if (*v117 != v111)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v116 + 1) + 8 * v36);
          v113 = v36;
          if ([v37 miyoshiCategory] == box)
          {
            [v37 bbox];
            v39 = fmax(fmin(v38 * v31, v32), 0.0);
            v41 = fmax(fmin(v40 * v33, v34), 0.0);
            v43 = fmax(fmin((v38 + v42) * v31, v32), 0.0);
            v45 = fmax(fmin((v40 + v44) * v33, v34), 0.0);
            if (v39 < v43)
            {
              v46 = (~v39 + v43);
              memset(&data[v41 * v108 + v39], 255, v46 + 1);
              v47 = v46 + 1;
              v21 = v107;
              memset(&data[v45 * v108 + v39], 255, v47);
            }

            if (v41 < v45)
            {
              v48 = 0;
              v110 = &data[v108 * (v41 + 15)];
              v49 = &data[v108 * (v41 + 14)];
              v50 = v45 - v41;
              v115 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
              v51 = &data[v108 * (v41 + 5)];
              v52 = &data[v108 * (v41 + 4)];
              v53 = v108 * v41;
              v54 = vdupq_n_s64(v50 - 1);
              v55 = &data[v108 + v53];
              v56 = &data[v53];
              v57 = &data[v108 * (v41 + 2)];
              v58 = &data[v53];
              v59 = v55;
              v60 = v57;
              v61 = &data[v108 * (v41 + 3)];
              v62 = v61;
              v100 = v52;
              v101 = v51;
              v63 = &data[v108 * (v41 + 6)];
              v64 = v63;
              v102 = &data[v108 * (v41 + 7)];
              v103 = &data[v108 * (v41 + 8)];
              v65 = v102;
              v66 = v103;
              v67 = &data[v108 * (v41 + 9)];
              v68 = v67;
              v104 = &data[v108 * (v41 + 10)];
              v105 = &data[v108 * (v41 + 11)];
              v69 = v104;
              v70 = v105;
              v71 = &data[v108 * (v41 + 12)];
              v72 = v71;
              v73 = &data[v108 * (v41 + 13)];
              v74 = v73;
              v106 = v49;
              v75 = v49;
              v76 = v110;
              do
              {
                v77 = vdupq_n_s64(v48);
                v78 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(v77, xmmword_1A6027760)));
                if (vuzp1_s8(vuzp1_s16(v78, *v54.i8), *v54.i8).u8[0])
                {
                  v58[v39] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(v78, *&v54), *&v54).i8[1])
                {
                  v59[v39] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, vorrq_s8(v77, xmmword_1A6027770)))), *&v54).i8[2])
                {
                  v60[v39] = -1;
                  v62[v39] = -1;
                }

                v79 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(v77, xmmword_1A6027780)));
                if (vuzp1_s8(*&v54, vuzp1_s16(v79, *&v54)).i32[1])
                {
                  v52[v39] = -1;
                }

                if (vuzp1_s8(*&v54, vuzp1_s16(v79, *&v54)).i8[5])
                {
                  v51[v39] = -1;
                }

                if (vuzp1_s8(*&v54, vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, vorrq_s8(v77, xmmword_1A6027790))))).i8[6])
                {
                  v64[v39] = -1;
                  v65[v39] = -1;
                }

                v80 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(v77, xmmword_1A60277A0)));
                if (vuzp1_s8(vuzp1_s16(v80, *v54.i8), *v54.i8).u8[0])
                {
                  v66[v39] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(v80, *&v54), *&v54).i8[1])
                {
                  v68[v39] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, vorrq_s8(v77, xmmword_1A60277B0)))), *&v54).i8[2])
                {
                  v69[v39] = -1;
                  v70[v39] = -1;
                }

                v81 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(v77, xmmword_1A60277C0)));
                if (vuzp1_s8(*&v54, vuzp1_s16(v81, *&v54)).i32[1])
                {
                  v72[v39] = -1;
                }

                if (vuzp1_s8(*&v54, vuzp1_s16(v81, *&v54)).i8[5])
                {
                  v74[v39] = -1;
                }

                if (vuzp1_s8(*&v54, vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, vorrq_s8(v77, xmmword_1A60277D0))))).i8[6])
                {
                  v75[v39] = -1;
                  v76[v39] = -1;
                }

                v48 += 16;
                v76 += v35;
                v75 += v35;
                v74 += v35;
                v72 += v35;
                v70 += v35;
                v69 += v35;
                v68 += v35;
                v66 += v35;
                v65 += v35;
                v64 += v35;
                v51 += v35;
                v52 += v35;
                v62 += v35;
                v60 += v35;
                v59 += v35;
                v58 += v35;
              }

              while (v115 != v48);
              v82 = 0;
              box = boxCopy;
              v83 = v106;
              v21 = v107;
              v84 = v110;
              v86 = v104;
              v85 = v105;
              v88 = v102;
              v87 = v103;
              v90 = v100;
              v89 = v101;
              do
              {
                v91 = vdupq_n_s64(v82);
                v92 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(v91, xmmword_1A6027760)));
                if (vuzp1_s8(vuzp1_s16(v92, *v54.i8), *v54.i8).u8[0])
                {
                  v56[v43] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(v92, *&v54), *&v54).i8[1])
                {
                  v55[v43] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, vorrq_s8(v91, xmmword_1A6027770)))), *&v54).i8[2])
                {
                  v57[v43] = -1;
                  v61[v43] = -1;
                }

                v93 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(v91, xmmword_1A6027780)));
                if (vuzp1_s8(*&v54, vuzp1_s16(v93, *&v54)).i32[1])
                {
                  v90[v43] = -1;
                }

                if (vuzp1_s8(*&v54, vuzp1_s16(v93, *&v54)).i8[5])
                {
                  v89[v43] = -1;
                }

                if (vuzp1_s8(*&v54, vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, vorrq_s8(v91, xmmword_1A6027790))))).i8[6])
                {
                  v63[v43] = -1;
                  v88[v43] = -1;
                }

                v94 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(v91, xmmword_1A60277A0)));
                if (vuzp1_s8(vuzp1_s16(v94, *v54.i8), *v54.i8).u8[0])
                {
                  v87[v43] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(v94, *&v54), *&v54).i8[1])
                {
                  v67[v43] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, vorrq_s8(v91, xmmword_1A60277B0)))), *&v54).i8[2])
                {
                  v86[v43] = -1;
                  v85[v43] = -1;
                }

                v95 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(v91, xmmword_1A60277C0)));
                if (vuzp1_s8(*&v54, vuzp1_s16(v95, *&v54)).i32[1])
                {
                  v71[v43] = -1;
                }

                if (vuzp1_s8(*&v54, vuzp1_s16(v95, *&v54)).i8[5])
                {
                  v73[v43] = -1;
                }

                if (vuzp1_s8(*&v54, vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, vorrq_s8(v91, xmmword_1A60277D0))))).i8[6])
                {
                  v83[v43] = -1;
                  v84[v43] = -1;
                }

                v82 += 16;
                v84 += v35;
                v83 += v35;
                v73 += v35;
                v71 += v35;
                v85 += v35;
                v86 += v35;
                v67 += v35;
                v87 += v35;
                v88 += v35;
                v63 += v35;
                v89 += v35;
                v90 += v35;
                v61 += v35;
                v57 += v35;
                v55 += v35;
                v56 += v35;
              }

              while (v115 != v82);
            }
          }

          v36 = v113 + 1;
        }

        while (v113 + 1 != v112);
        v30 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
      }

      while (v30);
    }
  }

  return result;
}

- (vector<std::vector<CGPoint>,)computeSegmentation:(VNFgBgE5MLInstanceSegmenter *)self withQueryID:(SEL)d
{
  v25 = a4;
  configuration = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  thresholds = [configuration thresholds];
  [thresholds maskThreshold];
  v11 = v10;

  shape = [v25 shape];
  v13 = [shape objectAtIndexedSubscript:1];
  intValue = [v13 intValue];

  shape2 = [v25 shape];
  v16 = [shape2 objectAtIndexedSubscript:2];
  intValue2 = [v16 intValue];

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  memset(__p, 0, sizeof(__p));
  dataPointer = [v25 dataPointer];
  if (intValue >= 1)
  {
    v19 = dataPointer;
    v20 = 0;
    v21 = intValue;
    v22 = intValue * intValue2 * a5;
    do
    {
      if (intValue2 >= 1)
      {
        for (i = 0; i != intValue2; ++i)
        {
          if (*(v19 + 4 * v22 + 4 * i) > v11)
          {
            *&v26 = i;
            *(&v26 + 1) = v20;
            std::vector<CGPoint>::push_back[abi:ne200100](__p, &v26);
          }
        }
      }

      ++v20;
      v22 += intValue2;
    }

    while (v20 != v21);
  }

  std::vector<std::vector<CGPoint>>::push_back[abi:ne200100](&retstr->var0, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return result;
}

- (void)computeConfidenceInput:(id)input confidence:(float *)confidence withQueryID:(int)d category:(int *)category invalidCategory:(int)invalidCategory
{
  inputCopy = input;
  *confidence = 0.0;
  *category = invalidCategory;
  v21 = inputCopy;
  dataPointer = [v21 dataPointer];
  for (i = 0; ; ++i)
  {
    shape = [v21 shape];
    v15 = [shape objectAtIndexedSubscript:1];
    intValue = [v15 intValue];

    if (i >= intValue)
    {
      break;
    }

    shape2 = [v21 shape];
    v18 = [shape2 objectAtIndexedSubscript:1];
    v19 = i + [v18 intValue] * d;

    v20 = *(dataPointer + 4 * v19);
    if (v20 > *confidence)
    {
      *confidence = v20;
      *category = i;
    }
  }
}

- (CGRect)getDetection:(const void *)detection mapSize:(CGSize)size isRotated:(BOOL)rotated
{
  height = size.height;
  width = size.width;
  v7 = *detection;
  v8 = *(detection + 1);
  if (*detection == v8)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v12 = *v7;
      v11 = v7[1];
      v7 += 2;
      if (v11 < height)
      {
        height = v11;
      }

      if (v11 > v9)
      {
        v9 = v11;
      }

      if (v12 < width)
      {
        width = v12;
      }

      if (v12 > v10)
      {
        v10 = v12;
      }
    }

    while (v7 != v8);
  }

  v13 = vcvtd_n_f64_s32(width + v10, 1uLL) / size.width;
  v14 = vcvtd_n_f64_s32(height + v9, 1uLL) / size.height;
  v15 = (v9 - height + 1) / size.height;
  v16 = (v10 - width + 1) / size.width;
  if (rotated)
  {
    v17 = 1.0 - v14;
  }

  else
  {
    v17 = v13;
  }

  if (rotated)
  {
    v18 = v15;
  }

  else
  {
    v18 = (v10 - width + 1) / size.width;
  }

  if (rotated)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (rotated)
  {
    v15 = v16;
  }

  v20 = v17;
  v21 = v18;
  v22 = v20 + v18 * -0.5;
  v23 = v15;
  v24 = v19 + v15 * -0.5;
  v25 = v24;
  v26 = v22;
  v27 = v26;
  result.size.height = v23;
  result.size.width = v21;
  result.origin.y = v25;
  result.origin.x = v27;
  return result;
}

- (id)composeInstanceFeatures:(id)features miyoshiConfidence:(id)confidence cocoConfidence:(id)cocoConfidence predictionIoU:(id)u stabilityScore:(id)score decodeMatch:(id)match isRotated:(BOOL)rotated minimumMaskPixelCount:(unint64_t)self0 useInteractive:(BOOL)self1
{
  featuresCopy = features;
  confidenceCopy = confidence;
  cocoConfidenceCopy = cocoConfidence;
  uCopy = u;
  scoreCopy = score;
  matchCopy = match;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  configuration = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  thresholds = [configuration thresholds];

  shape = [featuresCopy shape];
  v92 = confidenceCopy;
  v98 = v18;
  v21 = [shape objectAtIndexedSubscript:1];
  intValue = [v21 intValue];

  shape2 = [featuresCopy shape];
  v24 = [shape2 objectAtIndexedSubscript:2];
  intValue2 = [v24 intValue];

  dataPointer = [uCopy dataPointer];
  dataPointer2 = [scoreCopy dataPointer];
  dataPointer3 = [matchCopy dataPointer];
  [thresholds matchScoreThreshold];
  v93 = *&v26;
  v90 = 0xFFFFFFFFLL;
  if (interactive && *&v26 <= 0.0)
  {
    v27 = 0;
    v28 = -1;
    v29 = -3.4028e38;
    while (1)
    {
      configuration2 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
      queryNumber = [configuration2 queryNumber];

      if (v27 >= queryNumber)
      {
        break;
      }

      LODWORD(v26) = *(dataPointer3 + 4 * v27);
      if (*&v26 > v29)
      {
        v28 = v27;
        v29 = *(dataPointer3 + 4 * v27);
      }

      ++v27;
    }

    v90 = v28;
  }

  v32 = 0;
  v33 = intValue2;
  v34 = intValue;
  while (1)
  {
    configuration3 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
    queryNumber2 = [configuration3 queryNumber];

    if (v32 >= queryNumber2)
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v108 = 0;
    configuration4 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
    modelOutputInstanceInvalidMiyoshiCategory = [configuration4 modelOutputInstanceInvalidMiyoshiCategory];
    v39 = [modelOutputInstanceInvalidMiyoshiCategory objectAtIndexedSubscript:0];
    intValue3 = [v39 intValue];

    v107 = intValue3;
    configuration5 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
    modelOutputInstanceInvalidCocoCategory = [configuration5 modelOutputInstanceInvalidCocoCategory];
    v43 = [modelOutputInstanceInvalidCocoCategory objectAtIndexedSubscript:0];
    intValue4 = [v43 intValue];

    v106 = intValue4;
    [(VNFgBgE5MLInstanceSegmenter *)self computeConfidenceInput:confidenceCopy confidence:&v108 + 4 withQueryID:v32 category:&v107 invalidCategory:v107];
    [(VNFgBgE5MLInstanceSegmenter *)self computeConfidenceInput:cocoConfidenceCopy confidence:&v108 withQueryID:v32 category:&v106 invalidCategory:v106];
    v45 = *(dataPointer + 4 * v32);
    v46 = *(dataPointer2 + 4 * v32);
    v47 = v107;
    if (_categoryMiyoshiNameForCategoryIndex(int)::onceToken != -1)
    {
      dispatch_once(&_categoryMiyoshiNameForCategoryIndex(int)::onceToken, &__block_literal_global_2234);
    }

    if ([_categoryMiyoshiNameForCategoryIndex(int)::categoryNames count] <= v47)
    {
      v48 = 0;
    }

    else
    {
      v48 = [_categoryMiyoshiNameForCategoryIndex(int)::categoryNames objectAtIndex:v47];
    }

    v49 = v106;
    if (_categoryCocoNameForCategoryIndex(int)::onceToken != -1)
    {
      dispatch_once(&_categoryCocoNameForCategoryIndex(int)::onceToken, &__block_literal_global_86);
    }

    v101 = v48;
    if ([_categoryCocoNameForCategoryIndex(int)::categoryNames count] <= v49)
    {
      v50 = 0;
    }

    else
    {
      v50 = [_categoryCocoNameForCategoryIndex(int)::categoryNames objectAtIndex:v49];
    }

    configuration6 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
    modelOutputInstanceInvalidMiyoshiCategory2 = [configuration6 modelOutputInstanceInvalidMiyoshiCategory];
    v53 = [MEMORY[0x1E696AD98] numberWithInt:v107];
    if ([modelOutputInstanceInvalidMiyoshiCategory2 containsObject:v53])
    {

      v18 = v98;
      if (!interactive)
      {
        goto LABEL_44;
      }
    }

    else
    {
      configuration7 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
      modelOutputInstanceInvalidCocoCategory2 = [configuration7 modelOutputInstanceInvalidCocoCategory];
      v57 = [MEMORY[0x1E696AD98] numberWithInt:v106];
      if (([modelOutputInstanceInvalidCocoCategory2 containsObject:v57] & 1) != 0 || (objc_msgSend(thresholds, "IoUThreshold"), v45 <= v58) || (v59 = *(&v108 + 1), objc_msgSend(thresholds, "cocoConfidenceThreshold"), v59 <= v60))
      {
        v63 = 0;
      }

      else
      {
        v61 = *&v108;
        [thresholds cocoConfidenceThreshold];
        v63 = v61 > v62;
      }

      confidenceCopy = v92;
      v18 = v98;
      if (!interactive)
      {
        if (!v63)
        {
          goto LABEL_44;
        }

LABEL_37:
        v104 = 0uLL;
        v105 = 0;
        if (count)
        {
          [(VNFgBgE5MLInstanceSegmenter *)self computeVectorConnectedComponentSegmentation:featuresCopy minimumMaskPixelCount:count withQueryID:v32];
        }

        else
        {
          [(VNFgBgE5MLInstanceSegmenter *)self computeSegmentation:featuresCopy withQueryID:v32];
        }

        std::vector<std::vector<CGPoint>>::__vdeallocate(&v104);
        v104 = v102;
        v105 = v103;
        v103 = 0;
        v102 = 0uLL;
        v109 = &v102;
        std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v109);
        v71 = *(&v104 + 1);
        for (i = v104; i != v71; i += 24)
        {
          [(VNFgBgE5MLInstanceSegmenter *)self getDetection:i mapSize:rotated isRotated:v33, v34];
          v73 = v72;
          v75 = v74;
          v77 = v76;
          v79 = v78;
          v80 = [VNFgBgE5MLInstanceFeature alloc];
          LODWORD(v81) = HIDWORD(v108);
          LODWORD(v82) = v108;
          *&v83 = v45;
          *&v84 = v46;
          v85 = [(VNFgBgE5MLInstanceFeature *)v80 initWithQueryID:v32 miyoshiConfidence:v107 cocoConfidence:v106 IoU:v101 stabilityScore:v50 miyoshiCategory:i cocoCategory:v81 miyoshiCategoryName:v82 cocoCategoryName:v83 bbox:v84 mapSize:v73 segmentation:v75, v77, v79, *&v33, *&v34];
          [v18 addObject:v85];
        }

        *&v102 = &v104;
        std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v102);
        goto LABEL_44;
      }
    }

    *&v54 = v93;
    if (v93 > 0.0)
    {
      v64 = *(dataPointer3 + 4 * v32);
      configuration8 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
      thresholds2 = [configuration8 thresholds];
      [thresholds2 matchScoreThreshold];
      v68 = v67;

      if (v64 <= v68)
      {
        goto LABEL_44;
      }
    }

    else if (v32 != v90)
    {
      goto LABEL_44;
    }

    [thresholds stabilityScoreThreshold];
    if (v46 > v69)
    {
      goto LABEL_37;
    }

LABEL_44:

    objc_autoreleasePoolPop(context);
    ++v32;
  }

  [(VNFgBgE5MLInstanceSegmenter *)self removeIsolatedShadow:v18];

  return v18;
}

- (ConnectedComponentResult)generateInstanceConnectedComponentsFromMask:(SEL)mask fillGapsAreaRatio:(vImage_Buffer *)ratio
{
  v9 = *&ratio->width;
  v47 = *&ratio->data;
  v48 = v9;
  [(VNFgBgE5MLInstanceSegmenter *)self generateInstanceConnectedComponentsFromMask:&v47 inverseColor:1];
  v10 = *&ratio->width;
  v47 = *&ratio->data;
  v48 = v10;
  [(VNFgBgE5MLInstanceSegmenter *)self generateInstanceConnectedComponentsFromMask:&v47 inverseColor:0];
  for (i = 0; i < (v51 - v50) >> 3; ++i)
  {
    if (((v56[3] * a5) * v56[4]) >= *(v50 + i))
    {
      v12 = 0;
      v13 = (v52 + 32 * i);
      v14 = v13[2];
      v15 = v14;
      v16 = *v13;
      v17 = (v13[3] - v14 + 1);
      v18 = (v13[1] - *v13 + 1);
      v19 = -1;
      while (v19 + 1 < (retstr->var1.__end_ - retstr->var1.__begin_))
      {
        v20 = (retstr->var2.var0 + v12);
        v21 = v20[2];
        v57.origin.x = v21;
        v57.origin.y = *v20;
        v57.size.width = (v20[3] - v21 + 1);
        v57.size.height = (v20[1] - *v20 + 1);
        v58.origin.x = v15;
        v58.origin.y = v16;
        v58.size.width = v17;
        v58.size.height = v18;
        ++v19;
        v12 += 32;
        if (CGRectContainsRect(v57, v58))
        {
          v22 = v50;
          retstr->var8 += *(v50 + i);
          retstr->var1.__begin_[v19] += v22[i];
          v23 = v56[0] + 24 * i;
          v25 = *v23;
          v24 = *(v23 + 8);
          v26 = v24 - v25;
          v27 = (v24 - v25) >> 4;
          if (v27 >= 1)
          {
            v28 = retstr->var4.var0 + 24 * v19;
            v30 = *(v28 + 1);
            v29 = *(v28 + 2);
            if (v29 - v30 >= v26)
            {
              if (v25 != v24)
              {
                memmove(*(v28 + 1), v25, v24 - v25);
              }

              *(v28 + 1) = &v30[v26];
            }

            else
            {
              v31 = *v28;
              v32 = &v30[-*v28];
              v33 = v27 + (v32 >> 4);
              if (v33 >> 60)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v34 = v29 - v31;
              v35 = (v29 - v31) >> 3;
              if (v35 > v33)
              {
                v33 = v35;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v36 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v33;
              }

              if (v36)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v36);
              }

              v37 = 16 * (v32 >> 4);
              v38 = (v37 + v26);
              v39 = v37;
              do
              {
                v40 = *v25;
                v25 += 16;
                *v39++ = v40;
                v26 -= 16;
              }

              while (v26);
              memcpy(v38, v30, *(v28 + 1) - v30);
              v41 = *v28;
              v42 = &v38[*(v28 + 1) - v30];
              *(v28 + 1) = v30;
              v43 = v30 - v41;
              v44 = (v37 - (v30 - v41));
              memcpy(v44, v41, v43);
              v45 = *v28;
              *v28 = v44;
              *(v28 + 1) = v42;
              *(v28 + 2) = 0;
              if (v45)
              {
                operator delete(v45);
              }
            }
          }

          break;
        }
      }
    }
  }

  *&v47 = v56;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v47);
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  result = v49;
  v49 = 0;
  if (result)
  {
    return MEMORY[0x1AC556AE0](result, 0x1000C8000313F17);
  }

  return result;
}

- (id)_initWithConfiguration:(id)configuration e5mlProcess:(id)process
{
  configurationCopy = configuration;
  processCopy = process;
  v12.receiver = self;
  v12.super_class = VNFgBgE5MLInstanceSegmenter;
  v9 = [(VNFgBgE5MLInstanceSegmenter *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(p_isa + 2, process);
  }

  return p_isa;
}

+ (id)instanceSegmenterWithRevision:(int64_t)revision error:(id *)error
{
  v6 = [VNFgBgE5MLInstanceSegmenterConfiguration configurationForRevision:revision error:?];
  if (v6)
  {
    v7 = [self instanceSegmenterWithConfiguration:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)instanceSegmenterWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  revision = [configurationCopy revision];
  if (revision == 1)
  {
    v7 = objc_opt_class();
    v8 = [[VNFgBgE5MLProcess alloc] initWithConfiguration:configurationCopy];
    v9 = [[v7 alloc] _initWithConfiguration:configurationCopy e5mlProcess:v8];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Revision %lu is not supported", revision];
    [VNFgBgInstanceSegmenterError errorWithCode:-4 description:v8];
    *error = v9 = 0;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

@end