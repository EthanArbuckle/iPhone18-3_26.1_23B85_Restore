@interface VNFgBgE5MLInstanceSegmenter
+ (id)instanceSegmenterWithConfiguration:(id)a3 error:(id *)a4;
+ (id)instanceSegmenterWithRevision:(int64_t)a3 error:(id *)a4;
- (CGRect)getDetection:(const void *)a3 mapSize:(CGSize)a4 isRotated:(BOOL)a5;
- (ConnectedComponentResult)generateInstanceConnectedComponentsFromMLMultiArray:(SEL)a3 maskThreshold:(id)a4 queryID:(float)a5 inverseColor:(int)a6;
- (ConnectedComponentResult)generateInstanceConnectedComponentsFromMask:(SEL)a3 fillGapsAreaRatio:(vImage_Buffer *)a4;
- (id)_initWithConfiguration:(id)a3 e5mlProcess:(id)a4;
- (id)composeInstanceFeatures:(id)a3 miyoshiConfidence:(id)a4 cocoConfidence:(id)a5 predictionIoU:(id)a6 stabilityScore:(id)a7 decodeMatch:(id)a8 isRotated:(BOOL)a9 minimumMaskPixelCount:(unint64_t)a10 useInteractive:(BOOL)a11;
- (vImage_Buffer)generateMaskForInstanceFeatures:(SEL)a3 maskImageType:(id)a4;
- (vImage_Buffer)generateMaskForLabel:(SEL)a3 fromConnectedComponents:(unint64_t)a4 error:(const void *)a5;
- (vImage_Buffer)generateMaskFromInstanceFeatures:(SEL)a3 toCategory:(id)a4 drawBox:(int)a5 maskImageType:(BOOL)a6;
- (vector<std::vector<CGPoint>,)computeSegmentation:(VNFgBgE5MLInstanceSegmenter *)self withQueryID:(SEL)a3;
- (vector<std::vector<CGPoint>,)computeVectorConnectedComponentSegmentation:(VNFgBgE5MLInstanceSegmenter *)self minimumMaskPixelCount:(SEL)a3 withQueryID:(id)a4;
- (void)computeConfidenceInput:(id)a3 confidence:(float *)a4 withQueryID:(int)a5 category:(int *)a6 invalidCategory:(int)a7;
- (void)modifyMask:(vImage_Buffer *)a3 forLabel:(unint64_t)a4 fromConnectedComponents:(const void *)a5 error:(id *)a6;
- (void)removeIsolatedShadow:(id)a3;
@end

@implementation VNFgBgE5MLInstanceSegmenter

- (void)removeIsolatedShadow:(id)a3
{
  v66 = a3;
  v58 = objc_alloc_init(MEMORY[0x1E696AD50]);
  for (i = 0; [v66 count] > i; ++i)
  {
    v4 = [v66 objectAtIndexedSubscript:i];
    v5 = [v4 cocoCategoryName];
    v6 = [v5 isEqualToString:@"shadow"];

    if (v6)
    {
      for (j = 0; [v66 count] > j; ++j)
      {
        v8 = [v66 objectAtIndexedSubscript:j];
        v9 = [v8 cocoCategoryName];
        if ([v9 isEqualToString:@"shadow"])
        {
        }

        else
        {
          v10 = [v66 objectAtIndexedSubscript:j];
          v11 = [v10 miyoshiCategoryName];
          v12 = [v66 objectAtIndexedSubscript:i];
          v13 = [v12 miyoshiCategoryName];
          v14 = [v11 isEqualToString:v13];

          if (v14)
          {
            v15 = [v66 objectAtIndexedSubscript:i];
            [v15 bbox];
            v17 = v16;
            v18 = [v66 objectAtIndexedSubscript:i];
            [v18 mapSize];
            v20 = v19;
            v21 = [v66 objectAtIndexedSubscript:i];
            [v21 bbox];
            v23 = v22;
            v24 = [v66 objectAtIndexedSubscript:i];
            [v24 mapSize];
            v65 = v25;
            v26 = [v66 objectAtIndexedSubscript:i];
            [v26 bbox];
            v64 = v27;
            v28 = [v66 objectAtIndexedSubscript:i];
            [v28 mapSize];
            v63 = v29;
            v30 = [v66 objectAtIndexedSubscript:i];
            [v30 bbox];
            v62 = v31;
            v32 = [v66 objectAtIndexedSubscript:i];
            [v32 mapSize];
            v61 = v33;

            v34 = [v66 objectAtIndexedSubscript:j];
            [v34 bbox];
            v60 = v35;
            v36 = [v66 objectAtIndexedSubscript:j];
            [v36 mapSize];
            v59 = v37;
            v38 = [v66 objectAtIndexedSubscript:j];
            [v38 bbox];
            v40 = v39;
            v41 = [v66 objectAtIndexedSubscript:j];
            [v41 mapSize];
            v43 = v42;
            v44 = [v66 objectAtIndexedSubscript:j];
            [v44 bbox];
            v46 = v45;
            v47 = [v66 objectAtIndexedSubscript:j];
            [v47 mapSize];
            v49 = v48;
            v50 = [v66 objectAtIndexedSubscript:j];
            [v50 bbox];
            v52 = v51;
            v53 = [v66 objectAtIndexedSubscript:j];
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

  [v66 removeObjectsAtIndexes:v58];
}

- (ConnectedComponentResult)generateInstanceConnectedComponentsFromMLMultiArray:(SEL)a3 maskThreshold:(id)a4 queryID:(float)a5 inverseColor:(int)a6
{
  v8 = a4;
  v9 = [v8 shape];
  v10 = [v9 objectAtIndexedSubscript:1];
  v11 = [v10 intValue];

  v12 = [v8 shape];
  v13 = [v12 objectAtIndexedSubscript:2];
  LODWORD(v9) = [v13 intValue];

  apple::vision::fgbg::ConnectedComponentResult::ConnectedComponentResult(retstr, v9, v11, 1, 1, 1);
}

- (vector<std::vector<CGPoint>,)computeVectorConnectedComponentSegmentation:(VNFgBgE5MLInstanceSegmenter *)self minimumMaskPixelCount:(SEL)a3 withQueryID:(id)a4
{
  v6 = *&a6;
  v10 = a4;
  v11 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  v12 = [v11 thresholds];
  [v12 maskThreshold];
  v14 = v13;

  v15 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  v16 = [v15 thresholds];
  [v16 defaultValidMinimumMaskPixelCount];

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  LODWORD(v17) = v14;
  [(VNFgBgE5MLInstanceSegmenter *)self generateInstanceConnectedComponentsFromMLMultiArray:v10 maskThreshold:v6 queryID:0 inverseColor:v17];
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

- (vImage_Buffer)generateMaskForInstanceFeatures:(SEL)a3 maskImageType:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a5)
  {
    *a5 = 1;
  }

  v9 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  [v9 inputSize];
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
  v18 = v8;
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

- (void)modifyMask:(vImage_Buffer *)a3 forLabel:(unint64_t)a4 fromConnectedComponents:(const void *)a5 error:(id *)a6
{
  data = a3->data;
  if (a3->data)
  {
    v7 = (*(a5 + 10) + 24 * (a4 - *(a5 + 30)));
    v8 = *v7;
    if (v7[1] != *v7)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        data[(*(v8 + v9) + *(v8 + v9 + 8) * *(a5 + 13))] = -1;
        ++v10;
        v8 = *(*(a5 + 10) + 24 * (a4 - *(a5 + 30)));
        v9 += 16;
      }

      while (v10 < (*(*(a5 + 10) + 24 * (a4 - *(a5 + 30)) + 8) - v8) >> 4);
    }
  }

  else if (a6)
  {
    *a6 = [VNFgBgInstanceSegmenterError errorWithCode:-6 description:@"null mask image", a5];
  }
}

- (vImage_Buffer)generateMaskForLabel:(SEL)a3 fromConnectedComponents:(unint64_t)a4 error:(const void *)a5
{
  v9 = *(a5 + 13);
  v10 = *(a5 + 14);
  retstr->height = v10;
  retstr->width = v9;
  retstr->rowBytes = v9;
  result = malloc_type_calloc(v10 * v9, 1uLL, 0x100004077774924uLL);
  retstr->data = result;
  v12 = (*(a5 + 10) + 24 * (a4 - *(a5 + 30)));
  v13 = *v12;
  if (v12[1] != *v12)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      *(&result->data + (*(v13 + v14) + *(v13 + v14 + 8) * *(a5 + 13))) = -1;
      ++v15;
      v13 = *(*(a5 + 10) + 24 * (a4 - *(a5 + 30)));
      v14 += 16;
    }

    while (v15 < (*(*(a5 + 10) + 24 * (a4 - *(a5 + 30)) + 8) - v13) >> 4);
  }

  return result;
}

- (vImage_Buffer)generateMaskFromInstanceFeatures:(SEL)a3 toCategory:(id)a4 drawBox:(int)a5 maskImageType:(BOOL)a6
{
  v8 = a6;
  v128 = *MEMORY[0x1E69E9840];
  v97 = a4;
  if (a7)
  {
    *a7 = 1;
  }

  v12 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  [v12 inputSize];
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
        if ([v26 miyoshiCategory] == a5 && v26)
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

  if (v8)
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
      v99 = a5;
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
          if ([v37 miyoshiCategory] == a5)
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
              a5 = v99;
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

- (vector<std::vector<CGPoint>,)computeSegmentation:(VNFgBgE5MLInstanceSegmenter *)self withQueryID:(SEL)a3
{
  v25 = a4;
  v8 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  v9 = [v8 thresholds];
  [v9 maskThreshold];
  v11 = v10;

  v12 = [v25 shape];
  v13 = [v12 objectAtIndexedSubscript:1];
  v14 = [v13 intValue];

  v15 = [v25 shape];
  v16 = [v15 objectAtIndexedSubscript:2];
  v17 = [v16 intValue];

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  memset(__p, 0, sizeof(__p));
  v18 = [v25 dataPointer];
  if (v14 >= 1)
  {
    v19 = v18;
    v20 = 0;
    v21 = v14;
    v22 = v14 * v17 * a5;
    do
    {
      if (v17 >= 1)
      {
        for (i = 0; i != v17; ++i)
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
      v22 += v17;
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

- (void)computeConfidenceInput:(id)a3 confidence:(float *)a4 withQueryID:(int)a5 category:(int *)a6 invalidCategory:(int)a7
{
  v11 = a3;
  *a4 = 0.0;
  *a6 = a7;
  v21 = v11;
  v12 = [v21 dataPointer];
  for (i = 0; ; ++i)
  {
    v14 = [v21 shape];
    v15 = [v14 objectAtIndexedSubscript:1];
    v16 = [v15 intValue];

    if (i >= v16)
    {
      break;
    }

    v17 = [v21 shape];
    v18 = [v17 objectAtIndexedSubscript:1];
    v19 = i + [v18 intValue] * a5;

    v20 = *(v12 + 4 * v19);
    if (v20 > *a4)
    {
      *a4 = v20;
      *a6 = i;
    }
  }
}

- (CGRect)getDetection:(const void *)a3 mapSize:(CGSize)a4 isRotated:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v7 = *a3;
  v8 = *(a3 + 1);
  if (*a3 == v8)
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

  v13 = vcvtd_n_f64_s32(width + v10, 1uLL) / a4.width;
  v14 = vcvtd_n_f64_s32(height + v9, 1uLL) / a4.height;
  v15 = (v9 - height + 1) / a4.height;
  v16 = (v10 - width + 1) / a4.width;
  if (a5)
  {
    v17 = 1.0 - v14;
  }

  else
  {
    v17 = v13;
  }

  if (a5)
  {
    v18 = v15;
  }

  else
  {
    v18 = (v10 - width + 1) / a4.width;
  }

  if (a5)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (a5)
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

- (id)composeInstanceFeatures:(id)a3 miyoshiConfidence:(id)a4 cocoConfidence:(id)a5 predictionIoU:(id)a6 stabilityScore:(id)a7 decodeMatch:(id)a8 isRotated:(BOOL)a9 minimumMaskPixelCount:(unint64_t)a10 useInteractive:(BOOL)a11
{
  v91 = a3;
  v17 = a4;
  v99 = a5;
  v89 = a6;
  v88 = a7;
  v87 = a8;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
  v95 = [v19 thresholds];

  v20 = [v91 shape];
  v92 = v17;
  v98 = v18;
  v21 = [v20 objectAtIndexedSubscript:1];
  v22 = [v21 intValue];

  v23 = [v91 shape];
  v24 = [v23 objectAtIndexedSubscript:2];
  v25 = [v24 intValue];

  v97 = [v89 dataPointer];
  v96 = [v88 dataPointer];
  v94 = [v87 dataPointer];
  [v95 matchScoreThreshold];
  v93 = *&v26;
  v90 = 0xFFFFFFFFLL;
  if (a11 && *&v26 <= 0.0)
  {
    v27 = 0;
    v28 = -1;
    v29 = -3.4028e38;
    while (1)
    {
      v30 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
      v31 = [v30 queryNumber];

      if (v27 >= v31)
      {
        break;
      }

      LODWORD(v26) = *(v94 + 4 * v27);
      if (*&v26 > v29)
      {
        v28 = v27;
        v29 = *(v94 + 4 * v27);
      }

      ++v27;
    }

    v90 = v28;
  }

  v32 = 0;
  v33 = v25;
  v34 = v22;
  while (1)
  {
    v35 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
    v36 = [v35 queryNumber];

    if (v32 >= v36)
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v108 = 0;
    v37 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
    v38 = [v37 modelOutputInstanceInvalidMiyoshiCategory];
    v39 = [v38 objectAtIndexedSubscript:0];
    v40 = [v39 intValue];

    v107 = v40;
    v41 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
    v42 = [v41 modelOutputInstanceInvalidCocoCategory];
    v43 = [v42 objectAtIndexedSubscript:0];
    v44 = [v43 intValue];

    v106 = v44;
    [(VNFgBgE5MLInstanceSegmenter *)self computeConfidenceInput:v17 confidence:&v108 + 4 withQueryID:v32 category:&v107 invalidCategory:v107];
    [(VNFgBgE5MLInstanceSegmenter *)self computeConfidenceInput:v99 confidence:&v108 withQueryID:v32 category:&v106 invalidCategory:v106];
    v45 = *(v97 + 4 * v32);
    v46 = *(v96 + 4 * v32);
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

    v51 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
    v52 = [v51 modelOutputInstanceInvalidMiyoshiCategory];
    v53 = [MEMORY[0x1E696AD98] numberWithInt:v107];
    if ([v52 containsObject:v53])
    {

      v18 = v98;
      if (!a11)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v55 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
      v56 = [v55 modelOutputInstanceInvalidCocoCategory];
      v57 = [MEMORY[0x1E696AD98] numberWithInt:v106];
      if (([v56 containsObject:v57] & 1) != 0 || (objc_msgSend(v95, "IoUThreshold"), v45 <= v58) || (v59 = *(&v108 + 1), objc_msgSend(v95, "cocoConfidenceThreshold"), v59 <= v60))
      {
        v63 = 0;
      }

      else
      {
        v61 = *&v108;
        [v95 cocoConfidenceThreshold];
        v63 = v61 > v62;
      }

      v17 = v92;
      v18 = v98;
      if (!a11)
      {
        if (!v63)
        {
          goto LABEL_44;
        }

LABEL_37:
        v104 = 0uLL;
        v105 = 0;
        if (a10)
        {
          [(VNFgBgE5MLInstanceSegmenter *)self computeVectorConnectedComponentSegmentation:v91 minimumMaskPixelCount:a10 withQueryID:v32];
        }

        else
        {
          [(VNFgBgE5MLInstanceSegmenter *)self computeSegmentation:v91 withQueryID:v32];
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
          [(VNFgBgE5MLInstanceSegmenter *)self getDetection:i mapSize:a9 isRotated:v33, v34];
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
      v64 = *(v94 + 4 * v32);
      v65 = [(VNFgBgE5MLInstanceSegmenter *)self configuration];
      v66 = [v65 thresholds];
      [v66 matchScoreThreshold];
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

    [v95 stabilityScoreThreshold];
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

- (ConnectedComponentResult)generateInstanceConnectedComponentsFromMask:(SEL)a3 fillGapsAreaRatio:(vImage_Buffer *)a4
{
  v9 = *&a4->width;
  v47 = *&a4->data;
  v48 = v9;
  [(VNFgBgE5MLInstanceSegmenter *)self generateInstanceConnectedComponentsFromMask:&v47 inverseColor:1];
  v10 = *&a4->width;
  v47 = *&a4->data;
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

- (id)_initWithConfiguration:(id)a3 e5mlProcess:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VNFgBgE5MLInstanceSegmenter;
  v9 = [(VNFgBgE5MLInstanceSegmenter *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

+ (id)instanceSegmenterWithRevision:(int64_t)a3 error:(id *)a4
{
  v6 = [VNFgBgE5MLInstanceSegmenterConfiguration configurationForRevision:a3 error:?];
  if (v6)
  {
    v7 = [a1 instanceSegmenterWithConfiguration:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)instanceSegmenterWithConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 revision];
  if (v6 == 1)
  {
    v7 = objc_opt_class();
    v8 = [[VNFgBgE5MLProcess alloc] initWithConfiguration:v5];
    v9 = [[v7 alloc] _initWithConfiguration:v5 e5mlProcess:v8];
LABEL_5:

    goto LABEL_6;
  }

  if (a4)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Revision %lu is not supported", v6];
    [VNFgBgInstanceSegmenterError errorWithCode:-4 description:v8];
    *a4 = v9 = 0;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

@end