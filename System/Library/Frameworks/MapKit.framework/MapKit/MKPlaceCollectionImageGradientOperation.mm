@interface MKPlaceCollectionImageGradientOperation
- (CGSize)desiredSize;
- (MKPlaceCollectionImageGradientOperation)initWithUrl:(id)url size:(CGSize)size contentSizeCategory:(id)category name:(id)name downloadCache:(id)cache gradientCache:(id)gradientCache isRTL:(BOOL)l screenScale:(double)self0 cacheId:(id)self1;
- (NSCache)blurCache;
- (NSCache)downloadCache;
- (void)main;
@end

@implementation MKPlaceCollectionImageGradientOperation

- (NSCache)blurCache
{
  WeakRetained = objc_loadWeakRetained(&self->_blurCache);

  return WeakRetained;
}

- (NSCache)downloadCache
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadCache);

  return WeakRetained;
}

- (CGSize)desiredSize
{
  width = self->_desiredSize.width;
  height = self->_desiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)main
{
  v149 = *MEMORY[0x1E69E9840];
  downloadCache = [(MKPlaceCollectionImageGradientOperation *)self downloadCache];
  v4 = [(MKPlaceCollectionImageGradientOperation *)self url];
  absoluteString = [v4 absoluteString];
  v6 = [downloadCache objectForKey:absoluteString];
  [(MKPlaceCollectionImageGradientOperation *)self setSourceImage:v6];

  if ([(MKPlaceCollectionImageGradientOperation *)self isCancelled])
  {
    date = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEBUG))
    {
      cacheId = [(MKPlaceCollectionImageGradientOperation *)self cacheId];
      *buf = 138412290;
      v146 = cacheId;
      v9 = "[Step-1]Blurring Operation is cancelled for: %@";
LABEL_8:
      _os_log_impl(&dword_1A2EA0000, date, OS_LOG_TYPE_DEBUG, v9, buf, 0xCu);
LABEL_11:
    }
  }

  else
  {
    sourceImage = [(MKPlaceCollectionImageGradientOperation *)self sourceImage];

    if (sourceImage)
    {
      isCancelled = [(MKPlaceCollectionImageGradientOperation *)self isCancelled];
      date = MKGetCuratedCollectionsLog();
      v12 = os_log_type_enabled(date, OS_LOG_TYPE_DEBUG);
      if (isCancelled)
      {
        if (v12)
        {
          cacheId = [(MKPlaceCollectionImageGradientOperation *)self cacheId];
          *buf = 138412290;
          v146 = cacheId;
          v9 = "[Step-2]Gradient Operation is cancelled for: %@";
          goto LABEL_8;
        }
      }

      else
      {
        if (v12)
        {
          sourceImage2 = [(MKPlaceCollectionImageGradientOperation *)self sourceImage];
          [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
          v15 = NSStringFromCGSize(v150);
          *buf = 138412546;
          v146 = sourceImage2;
          v147 = 2112;
          v148 = v15;
          _os_log_impl(&dword_1A2EA0000, date, OS_LOG_TYPE_DEBUG, "Starting gradient for Image: %@ with size: %@", buf, 0x16u);
        }

        date = [MEMORY[0x1E695DF00] date];
        v16 = +[MKSystemController sharedInstance];
        [v16 screenScale];
        v18 = v17;

        if (main___once != -1)
        {
          dispatch_once(&main___once, &__block_literal_global_17888);
        }

        v19 = objc_alloc(MEMORY[0x1E695F658]);
        sourceImage3 = [(MKPlaceCollectionImageGradientOperation *)self sourceImage];
        v21 = [v19 initWithImage:sourceImage3];

        [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
        v23 = v22;
        [v21 extent];
        v25 = v23 / v24;
        [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
        v27 = v26;
        [v21 extent];
        if (v25 <= v27 / v28)
        {
          v29 = v27 / v28;
        }

        else
        {
          v29 = v25;
        }

        v30 = [MEMORY[0x1E695F648] filterWithName:@"CILanczosScaleTransform"];
        v31 = *MEMORY[0x1E695FAB0];
        v136 = v21;
        [v30 setValue:v21 forKey:*MEMORY[0x1E695FAB0]];
        selfCopy = self;
        v32 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
        [v30 setValue:v32 forKey:*MEMORY[0x1E695FB20]];

        [v30 setValue:&unk_1F1610CE0 forKey:*MEMORY[0x1E695FA40]];
        outputImage = [v30 outputImage];
        [outputImage extent];
        v35 = v34;
        v37 = v36 * 0.5;
        [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
        v39 = v37 - v38 * 0.5;
        [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
        v41 = v35 * 0.5 - v40 * 0.5;
        [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
        v43 = v42;
        [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
        v45 = v44;
        v135 = outputImage;
        v46 = [outputImage imageByClampingToRect:{v39, v41, v43, v44}];
        v47 = [MEMORY[0x1E695F648] filterWithName:@"CIGaussianBlur"];
        [v47 setValue:v46 forKey:v31];
        v127 = v18;
        v48 = [MEMORY[0x1E696AD98] numberWithDouble:v18 + v18];
        [v47 setValue:v48 forKey:*MEMORY[0x1E695FB10]];

        v133 = v47;
        outputImage2 = [v47 outputImage];
        v126 = v39;
        v49 = [outputImage2 imageByCroppingToRect:{v39, v41, v43, v45}];
        [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
        v51 = v50;
        [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
        v53 = v52;
        v54 = v51 * 0.45;
        v55 = v51 * 0.25;
        v56 = [MEMORY[0x1E695F648] filterWithName:@"CILinearGradient"];
        v57 = [MEMORY[0x1E695F688] vectorWithX:v53 * 0.5 Y:v51 * 0.45];
        [v56 setValue:v57 forKey:@"inputPoint0"];

        v58 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        [v56 setValue:v58 forKey:@"inputColor0"];

        v59 = [MEMORY[0x1E695F688] vectorWithX:v53 * 0.5 Y:v51 * 0.25];
        [v56 setValue:v59 forKey:@"inputPoint1"];

        v60 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        [v56 setValue:v60 forKey:@"inputColor1"];

        v130 = v56;
        outputImage3 = [v56 outputImage];
        v62 = [outputImage3 imageByCroppingToRect:{0.0, 0.0, v53, v51}];

        v63 = [MEMORY[0x1E695F648] filterWithName:@"CIBlendWithMask"];
        v131 = v49;
        [v63 setValue:v49 forKey:v31];
        v134 = v46;
        v64 = *MEMORY[0x1E695FA48];
        [v63 setValue:v46 forKey:?];
        [v63 setValue:v62 forKey:*MEMORY[0x1E695FAC8]];
        outputImage4 = [v63 outputImage];
        v128 = v63;
        v129 = v62;
        if ([(MKPlaceCollectionImageGradientOperation *)self isCancelled])
        {
          v65 = v136;
          v66 = MKGetCuratedCollectionsLog();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            cacheId2 = [(MKPlaceCollectionImageGradientOperation *)self cacheId];
            *buf = 138412290;
            v146 = cacheId2;
            _os_log_impl(&dword_1A2EA0000, v66, OS_LOG_TYPE_DEBUG, "[Step-3]Gradient Operation is cancelled for: %@", buf, 0xCu);
          }

          v69 = v46;
          v68 = v135;
          v71 = outputImage2;
          v70 = v133;
          v73 = v130;
          v72 = v131;
        }

        else
        {
          v122 = v30;
          v123 = date;
          [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
          v75 = v74;
          [(MKPlaceCollectionImageGradientOperation *)self desiredSize];
          v77 = v76;
          v78 = v51 * 0.35;
          v79 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
          v80 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
          [v79 setValue:v80 forKey:@"inputColor"];

          v121 = v79;
          v124 = [v79 valueForKey:*MEMORY[0x1E695FB50]];
          v81 = [MEMORY[0x1E695F648] filterWithName:@"CILinearGradient"];
          v151.origin.x = 0.0;
          v151.origin.y = 0.0;
          v151.size.width = v75;
          v151.size.height = v77;
          v82 = [MEMORY[0x1E695F688] vectorWithX:CGRectGetMidX(v151) Y:v54];
          [v81 setValue:v82 forKey:@"inputPoint0"];

          v152.origin.x = 0.0;
          v152.origin.y = 0.0;
          v152.size.width = v75;
          v152.size.height = v77;
          v83 = [MEMORY[0x1E695F688] vectorWithX:CGRectGetMidX(v152) Y:v78];
          [v81 setValue:v83 forKey:@"inputPoint1"];

          v84 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
          [v81 setValue:v84 forKey:@"inputColor0"];

          v85 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.2];
          [v81 setValue:v85 forKey:@"inputColor1"];

          v86 = [MEMORY[0x1E695F648] filterWithName:@"CILinearGradient"];
          v153.origin.x = 0.0;
          v153.origin.y = 0.0;
          v153.size.width = v75;
          v153.size.height = v77;
          v87 = [MEMORY[0x1E695F688] vectorWithX:CGRectGetMidX(v153) Y:v78];
          [v86 setValue:v87 forKey:@"inputPoint0"];

          v154.origin.x = 0.0;
          v154.origin.y = 0.0;
          v154.size.width = v75;
          v154.size.height = v77;
          v88 = [MEMORY[0x1E695F688] vectorWithX:CGRectGetMidX(v154) Y:v55];
          [v86 setValue:v88 forKey:@"inputPoint1"];

          v89 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.2];
          [v86 setValue:v89 forKey:@"inputColor0"];

          v90 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.3];
          [v86 setValue:v90 forKey:@"inputColor1"];

          outputImage6 = v124;
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v119 = v86;
          v120 = v81;
          v143[0] = v81;
          v143[1] = v86;
          v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:2];
          v93 = [v92 countByEnumeratingWithState:&v139 objects:v144 count:16];
          v125 = outputImage6;
          if (v93)
          {
            v94 = v93;
            v95 = *v140;
            do
            {
              v96 = 0;
              v97 = outputImage6;
              do
              {
                if (*v140 != v95)
                {
                  objc_enumerationMutation(v92);
                }

                v98 = *(*(&v139 + 1) + 8 * v96);
                v99 = [MEMORY[0x1E695F648] filterWithName:@"CIAdditionCompositing"];
                outputImage5 = [v98 outputImage];
                [v99 setValue:outputImage5 forKey:v31];

                [v99 setValue:v97 forKey:v64];
                outputImage6 = [v99 outputImage];

                ++v96;
                v97 = outputImage6;
              }

              while (v94 != v96);
              v94 = [v92 countByEnumeratingWithState:&v139 objects:v144 count:16];
            }

            while (v94);
          }

          v101 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
          [v101 setValue:outputImage6 forKey:v31];
          [v101 setValue:outputImage4 forKey:v64];
          outputImage7 = [v101 outputImage];
          v103 = [main___sharedContext createCGImage:outputImage7 fromRect:{v126, v41, v43, v45}];
          blurCache = [(MKPlaceCollectionImageGradientOperation *)selfCopy blurCache];
          v105 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v103 scale:0 orientation:v127];
          cacheId3 = [(MKPlaceCollectionImageGradientOperation *)selfCopy cacheId];
          [blurCache setObject:v105 forKey:cacheId3];

          CGImageRelease(v103);
          v107 = MKGetCuratedCollectionsLog();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
          {
            blurCache2 = [(MKPlaceCollectionImageGradientOperation *)selfCopy blurCache];
            blurCache3 = [(MKPlaceCollectionImageGradientOperation *)selfCopy blurCache];
            allObjects = [blurCache3 allObjects];
            v111 = [allObjects count];
            *buf = 138412546;
            v146 = blurCache2;
            v147 = 2048;
            v148 = v111;
            _os_log_impl(&dword_1A2EA0000, v107, OS_LOG_TYPE_DEBUG, "Gradient cache %@ has %ld items.", buf, 0x16u);
          }

          v112 = MKGetCuratedCollectionsLog();
          date = v123;
          v73 = v130;
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
          {
            date2 = [MEMORY[0x1E695DF00] date];
            [date2 timeIntervalSinceDate:v123];
            v115 = v114;
            blurCache4 = [(MKPlaceCollectionImageGradientOperation *)selfCopy blurCache];
            cacheId4 = [(MKPlaceCollectionImageGradientOperation *)selfCopy cacheId];
            v118 = [blurCache4 objectForKey:cacheId4];
            *buf = 134218242;
            v146 = v115;
            v147 = 2112;
            v148 = v118;
            _os_log_impl(&dword_1A2EA0000, v112, OS_LOG_TYPE_DEBUG, "[⌛]Completed applying gradient in: %f seconds. Image: %@", buf, 0x16u);
          }

          v68 = v135;
          v65 = v136;
          v66 = v121;
          v30 = v122;
          v70 = v133;
          v69 = v134;
          v72 = v131;
          v71 = outputImage2;
        }
      }
    }

    else
    {
      date = MKGetCuratedCollectionsLog();
      if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
      {
        cacheId = [(MKPlaceCollectionImageGradientOperation *)self url];
        absoluteString2 = [cacheId absoluteString];
        *buf = 138412290;
        v146 = absoluteString2;
        _os_log_impl(&dword_1A2EA0000, date, OS_LOG_TYPE_ERROR, "[!]Operation shouldn't start unless we have source image. URL: %@", buf, 0xCu);

        goto LABEL_11;
      }
    }
  }
}

void __47__MKPlaceCollectionImageGradientOperation_main__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695F620];
  v1 = *MEMORY[0x1E695F9A8];
  v6[0] = *MEMORY[0x1E695F860];
  v6[1] = v1;
  v7[0] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DFB0] null];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [v0 contextWithOptions:v3];
  v5 = main___sharedContext;
  main___sharedContext = v4;
}

- (MKPlaceCollectionImageGradientOperation)initWithUrl:(id)url size:(CGSize)size contentSizeCategory:(id)category name:(id)name downloadCache:(id)cache gradientCache:(id)gradientCache isRTL:(BOOL)l screenScale:(double)self0 cacheId:(id)self1
{
  height = size.height;
  width = size.width;
  urlCopy = url;
  categoryCopy = category;
  nameCopy = name;
  cacheCopy = cache;
  gradientCacheCopy = gradientCache;
  idCopy = id;
  v30.receiver = self;
  v30.super_class = MKPlaceCollectionImageGradientOperation;
  v24 = [(MKPlaceCollectionImageGradientOperation *)&v30 self];

  if (v24)
  {
    objc_storeStrong((v24 + 272), url);
    *(v24 + 328) = width;
    *(v24 + 336) = height;
    objc_storeStrong((v24 + 296), category);
    objc_storeStrong((v24 + 280), name);
    objc_storeWeak((v24 + 312), cacheCopy);
    objc_storeWeak((v24 + 320), gradientCacheCopy);
    *(v24 + 248) = l;
    *(v24 + 288) = scale;
    objc_storeStrong((v24 + 304), id);
    absoluteString = [urlCopy absoluteString];
    [v24 setName:absoluteString];
  }

  return v24;
}

@end