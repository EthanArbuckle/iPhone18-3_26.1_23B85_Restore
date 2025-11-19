@interface SNKShotFeaturizerImpl
+ (BOOL)ensureIsValidHallucinatorV3Model:(id)a3 error:(id *)a4;
+ (id)featurizeFiles:(id)a3 hallucinatorModelURL:(id)a4 queue:(id)a5 completionHandler:(id)a6;
+ (id)featurizeFiles:(id)a3 hallucinatorModelURL:(id)a4 queue:(id)a5 resultHandler:(id)a6 completionHandler:(id)a7;
+ (id)featurizeFiles:(id)a3 randomNumberGenerator:(id)a4 hallucinatorModelURL:(id)a5 error:(id *)a6;
+ (id)labelFromNumberRepresentation:(id)a3 error:(id *)a4;
+ (id)performSegmentationRequest:(id)a3 error:(id *)a4;
+ (id)pseudoRandomNumberGeneratorWithSeed:(unsigned int)a3;
+ (id)readNumRepetitionsPerTimeShiftFromHallucinator:(id)a3 error:(id *)a4;
+ (id)readNumTimeShiftsPerSegmentFromHallucinator:(id)a3 error:(id *)a4;
+ (id)streamCompletionFromFeaturizationResult:(id)a3;
+ (id)streamResultWithEmbedding:(id)a3 label:(id)a4 dataset:(int64_t)a5 error:(id *)a6;
+ (id)streamResultsForDatasetType:(int64_t)a3 embeddings:(id)a4 labels:(id)a5 error:(id *)a6;
+ (id)streamResultsFromFeaturizationResult:(id)a3 error:(id *)a4;
@end

@implementation SNKShotFeaturizerImpl

+ (id)pseudoRandomNumberGeneratorWithSeed:(unsigned int)a3
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A5AE0C;
  aBlock[3] = &unk_1E8346CB0;
  aBlock[4] = v6;
  v3 = _Block_copy(aBlock);
  _Block_object_dispose(v6, 8);

  return v3;
}

+ (id)featurizeFiles:(id)a3 hallucinatorModelURL:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x1E695DF70];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A5C1C4;
  aBlock[3] = &unk_1E8346CD8;
  v18 = v14;
  v39 = v18;
  v19 = v15;
  v40 = v19;
  v20 = v16;
  v41 = v20;
  v21 = v17;
  v42 = v21;
  v22 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1C9A5C2A8;
  v32[3] = &unk_1E8346D00;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v9;
  v30 = v9;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = _Block_copy(v32);
  v28 = [a1 featurizeFiles:v13 hallucinatorModelURL:v12 queue:v11 resultHandler:v22 completionHandler:v27];

  return v28;
}

+ (id)featurizeFiles:(id)a3 hallucinatorModelURL:(id)a4 queue:(id)a5 resultHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  v17 = objc_alloc_init(SNBooleanCancellable);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1C9A5C50C;
  v26[3] = &unk_1E8346D28;
  v32 = a1;
  v27 = v12;
  v28 = v13;
  v18 = v17;
  v29 = v18;
  v30 = v14;
  v31 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v16, v26);

  v23 = v31;
  v24 = v18;

  return v18;
}

+ (id)performSegmentationRequest:(id)a3 error:(id *)a4
{
  v230 = *MEMORY[0x1E69E9840];
  v153 = a3;
  v4 = sub_1C9A779E4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.start.value) = 0;
    _os_log_impl(&dword_1C9788000, v4, OS_LOG_TYPE_DEFAULT, "[Custom Sound Recognition Model Training] Starting segmentation.", &buf, 2u);
  }

  v152 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
  if (v153)
  {
    [v153 hangoverDuration];
    Seconds = CMTimeGetSeconds(&buf.start);
    [v153 minSegmentDuration];
  }

  else
  {
    memset(&buf, 0, 24);
    Seconds = CMTimeGetSeconds(&buf.start);
    memset(&buf, 0, 24);
  }

  v143 = CMTimeGetSeconds(&buf.start);
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  obj = [v153 fileURLs];
  v5 = [obj countByEnumeratingWithState:&v220 objects:v229 count:16];
  if (v5)
  {
    v6.f64[0] = Seconds;
    v6.f64[1] = v143;
    v7 = vcvt_s32_f32(vdiv_f32(vmul_f32(vcvt_f32_f64(v6), vdup_n_s32(0x467A0000u)), vdup_n_s32(0x43200000u)));
    v8 = *v221;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v221 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v220 + 1) + 8 * i);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_1C9A5E35C;
        aBlock[3] = &unk_1E8346D50;
        aBlock[4] = v10;
        v216 = 0x6000000010;
        v217 = 48;
        v214 = v153;
        v218 = v7;
        v219 = 1056964608;
        v215 = v152;
        v11 = _Block_copy(aBlock);
        v12 = objc_autoreleasePoolPush();
        v13 = v11[2](v11);
        objc_autoreleasePoolPop(v12);
        if (v13)
        {
          if (a4)
          {
            v44 = v13;
            *a4 = v13;
          }

          v45 = 0;
          goto LABEL_142;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v220 objects:v229 count:16];
    }

    while (v5);
  }

  v148 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v152, "count")}];
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v14 = v152;
  v15 = [v14 countByEnumeratingWithState:&v209 objects:v228 count:16];
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = *v210;
  do
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v210 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v209 + 1) + 8 * j);
      v206[0] = MEMORY[0x1E69E9820];
      v206[1] = 3221225472;
      v206[2] = sub_1C9A5F390;
      v206[3] = &unk_1E8346D78;
      v208 = a1;
      v206[4] = v18;
      v207 = v148;
      v19 = _Block_copy(v206);
      v20 = objc_autoreleasePoolPush();
      v21 = v19[2](v19);
      objc_autoreleasePoolPop(v20);
      if (v21)
      {
        if (a4)
        {
          v46 = v21;
          *a4 = v21;
        }

        goto LABEL_42;
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v209 objects:v228 count:16];
  }

  while (v15);
LABEL_22:

  v22 = objc_alloc(MEMORY[0x1E695FED0]);
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  v227[0] = v23;
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  v227[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v227 count:2];
  v144 = [v22 initWithShape:v25 dataType:65568 error:a4];

  if (!v144)
  {
    v14 = 0;
LABEL_42:
    obj = 0;
    v45 = 0;
    goto LABEL_141;
  }

  v26 = v144;
  obja = [v144 dataPointer];
  v27 = [v144 strides];
  v28 = [v27 objectAtIndexedSubscript:0];
  v139 = [v28 intValue];

  v29 = [v144 strides];
  v30 = [v29 objectAtIndexedSubscript:1];
  v141 = [v30 intValue];

  if (![v14 count])
  {
LABEL_30:
    if ([v14 count])
    {
      v39 = 0;
      v40 = 0;
      v41 = obja;
      do
      {
        v42 = *v41;
        [v153 similarityThreshold];
        if (v42 > v43)
        {
          ++v40;
        }

        ++v39;
        v41 += v141;
      }

      while ([v14 count] > v39);
    }

    else
    {
      v40 = 0;
    }

    if ([v14 count] < 2)
    {
      v47 = 0;
    }

    else
    {
      v47 = 0;
      v48 = &obja[v139];
      v49 = 1;
      do
      {
        if ([v14 count])
        {
          v50 = 0;
          v51 = 0;
          v52 = v48;
          do
          {
            v53 = *v52;
            [v153 similarityThreshold];
            if (v53 > v54)
            {
              ++v51;
            }

            ++v50;
            v52 += v141;
          }

          while ([v14 count] > v50);
        }

        else
        {
          v51 = 0;
        }

        if (v51 > v40)
        {
          v40 = v51;
          v47 = v49;
        }

        ++v49;
        v48 += v139;
      }

      while ([v14 count] > v49);
    }

    v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
    if ([v14 count])
    {
      v56 = 0;
      v57 = &obja[v47 * v139];
      do
      {
        v58 = *v57;
        [v153 similarityThreshold];
        if (v58 > v59)
        {
          if ([v55 count] && (objc_msgSend(v55, "lastObject"), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "url"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "objectAtIndexedSubscript:", v56), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "url"), v63 = objc_claimAutoreleasedReturnValue(), v64 = v61 == v63, v63, v62, v61, v60, v64))
          {
            v66 = [v55 lastObject];
            v65 = v66;
            if (v66)
            {
              [v66 timeRange];
            }

            else
            {
              v202 = 0u;
              v203 = 0u;
              v201 = 0u;
            }

            *&start.value = v201;
            start.epoch = v202;
            v67 = [v14 objectAtIndexedSubscript:v56];
            v68 = v67;
            if (v67)
            {
              [v67 timeRange];
            }

            else
            {
              memset(&buf, 0, sizeof(buf));
            }

            CMTimeRangeGetEnd(&end, &buf);
            CMTimeRangeFromTimeToTime(&v205, &start, &end);
            v69 = [v55 lastObject];
            buf = v205;
            [v69 setTimeRange:&buf];
          }

          else
          {
            v65 = [v14 objectAtIndexedSubscript:v56];
            [v55 addObject:v65];
          }

          v70 = [v14 objectAtIndexedSubscript:v56];
          v71 = v70;
          if (v70)
          {
            [v70 timeRange];
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          CMTimeRangeGetEnd(&start, &buf);
          v72 = CMTimeGetSeconds(&start);
          v73 = [v55 lastObject];
          v74 = v73;
          if (v73)
          {
            [v73 timeRange];
          }

          else
          {
            v197 = 0u;
            v198 = 0u;
            v196 = 0u;
          }

          *&buf.start.value = v196;
          buf.start.epoch = v197;
          v75 = v72 - CMTimeGetSeconds(&buf.start) > 10.0;

          if (v75)
          {
            memset(&start, 0, sizeof(start));
            v76 = [v55 lastObject];
            v77 = v76;
            if (v76)
            {
              [v76 timeRange];
            }

            else
            {
              memset(&buf, 0, sizeof(buf));
            }

            CMTimeRangeGetEnd(&start, &buf);

            CMTimeMake(&buf.start, start.value - 10 * start.timescale, start.timescale);
            end = start;
            CMTimeRangeFromTimeToTime(&v195, &buf.start, &end);
            v78 = [v55 lastObject];
            buf = v195;
            [v78 setTimeRange:&buf];
          }
        }

        ++v56;
        v57 += v141;
      }

      while ([v14 count] > v56);
    }

    v137 = [v55 sortedArrayUsingComparator:&unk_1F4951D80];
    v79 = ([v137 count] - 1) >> 1;
    v80 = [v137 objectAtIndexedSubscript:v79];
    v81 = v80;
    if (v80)
    {
      [v80 timeRange];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    CMTimeRangeGetEnd(&v194, &buf);
    value = v194.value;
    v83 = [v137 objectAtIndexedSubscript:v79];
    v84 = v83;
    if (v83)
    {
      [v83 timeRange];
      v85 = v191;
    }

    else
    {
      v85 = 0;
      v192 = 0u;
      v193 = 0u;
      v191 = 0u;
    }

    memset(&start, 0, sizeof(start));
    v86 = [v137 objectAtIndexedSubscript:v79];
    v87 = v86;
    if (v86)
    {
      [v86 timeRange];
      v88 = DWORD2(v188);
    }

    else
    {
      v88 = 0;
      v189 = 0u;
      v190 = 0u;
      v188 = 0u;
    }

    v134 = value - v85;
    CMTimeMake(&start, value - v85, v88);

    v89 = [v55 objectAtIndexedSubscript:0];
    if ([v55 count] >= 2)
    {
      v140 = 0;
      v90 = 1;
      while (1)
      {
        v91 = [v55 objectAtIndexedSubscript:v90];
        v92 = v91;
        if (v91)
        {
          [v91 timeRange];
          CMTimeRangeGetEnd(&v187, &buf);
          v93 = v187.value;
          [v92 timeRange];
          v94 = v184;
          if (!v89)
          {
            goto LABEL_100;
          }
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
          CMTimeRangeGetEnd(&v187, &buf);
          v94 = 0;
          v93 = v187.value;
          v184 = 0u;
          v185 = 0u;
          v186 = 0u;
          if (!v89)
          {
LABEL_100:
            memset(&buf, 0, sizeof(buf));
            CMTimeRangeGetEnd(&v183, &buf);
            v96 = 0;
            v95 = v183.value;
            v180 = 0u;
            v181 = 0u;
            v182 = 0u;
            goto LABEL_101;
          }
        }

        [v89 timeRange];
        CMTimeRangeGetEnd(&v183, &buf);
        v95 = v183.value;
        [v89 timeRange];
        v96 = v180;
LABEL_101:
        if (v93 - v94 < v95 - v96)
        {
          v97 = [v55 objectAtIndexedSubscript:v90];

          v140 = v90;
          v89 = v97;
        }

        if (v92)
        {
          [v92 timeRange];
        }

        else
        {
          memset(v179, 0, sizeof(v179));
          v178 = 0u;
        }

        *&buf.start.value = *&v179[1];
        buf.start.epoch = v179[3];
        if (v89)
        {
          [v89 timeRange];
        }

        else
        {
          memset(v177, 0, sizeof(v177));
          v176 = 0u;
        }

        end = *&v177[1];
        if (CMTimeCompare(&buf.start, &end) < 0)
        {
          if (v92)
          {
            [v92 timeRange];
            *&buf.start.value = v172;
            buf.start.epoch = v173;
            [v92 timeRange];
            v98 = DWORD2(v169);
          }

          else
          {
            v98 = 0;
            v173 = 0u;
            v174 = 0u;
            memset(&buf, 0, 24);
            v169 = 0u;
            v170 = 0u;
            v171 = 0u;
            v172 = 0u;
          }

          time = start;
          CMTimeConvertScale(&end, &time, v98, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          CMTimeRangeMake(&v175, &buf.start, &end);
          buf = v175;
          [v92 setTimeRange:&buf];
        }

        if ([v55 count] <= ++v90)
        {
          goto LABEL_117;
        }
      }
    }

    v140 = 0;
LABEL_117:
    CMTimeMake(&buf.start, 1, 1);
    v167 = 0;
    v135 = sub_1C9A5B7FC(a1, &buf.start.value, v89, &v167);
    v99 = v167;
    if (!v135)
    {
      obj = v99;
      [SNError populateClientError:"populateClientError:withCode:underlyingError:message:" withCode:a4 underlyingError:1 message:?];
      v45 = 0;
LABEL_139:

      goto LABEL_140;
    }

    v100 = v99;
    v166 = v99;
    v138 = sub_1C9A5BA38(a1, 2, v135, 0, &unk_1F49659B0, &v166);
    v131 = v166;

    if (!v138)
    {
      [SNError populateClientError:a4 withCode:1 underlyingError:v131 message:@"Error ensuring segment length."];
      v45 = 0;
LABEL_138:

      obj = v131;
      goto LABEL_139;
    }

    v101 = [v138 count];
    v136 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v101];
    if (v101 < 1)
    {
LABEL_123:
      v109 = MEMORY[0x1E695FED0];
      v110 = [v136 objectAtIndexedSubscript:{0, v131}];
      v142 = [v109 multiArrayByConcatenatingMultiArrays:v136 alongAxis:1 dataType:{objc_msgSend(v110, "dataType")}];

      v111 = [v138 count];
      v112 = objc_alloc(MEMORY[0x1E695FED0]);
      v113 = [MEMORY[0x1E696AD98] numberWithInt:48];
      v224[0] = v113;
      v133 = 96 * v111;
      v114 = [MEMORY[0x1E696AD98] numberWithInt:?];
      v224[1] = v114;
      v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v224 count:2];
      v106 = [v112 initWithShape:v115 dataType:65568 error:a4];

      if (!v106)
      {
        v45 = 0;
LABEL_137:

        goto LABEL_138;
      }

      v116 = v106;
      v132 = [v106 dataPointer];
      v117 = v142;
      vDSP_mtrans([v142 dataPointer], 1, v132, 1, 0x30uLL, v133);
      objb = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
      v118 = [v55 count];
      buf.start.value = 0;
      *&buf.start.timescale = &buf;
      buf.start.epoch = 0x2020000000;
      LODWORD(buf.duration.value) = v140;
      if (v118 < 1)
      {
LABEL_128:
        v45 = objc_alloc_init(SNKShotSegmentationResult);
        [(SNKShotSegmentationResult *)v45 setSegments:objb];
        v127 = [v148 objectAtIndexedSubscript:v140];
        [(SNKShotSegmentationResult *)v45 setExemplarEmbedding:v127];

        v128 = [MEMORY[0x1E696AD98] numberWithInteger:*(*&buf.start.timescale + 24)];
        [(SNKShotSegmentationResult *)v45 setExemplarIndex:v128];

        [SNUtils logKShotSegments:objb exemplarIndex:*(*&buf.start.timescale + 24)];
      }

      else
      {
        v119 = 0;
        v120 = v118 & 0x7FFFFFFF;
        while (1)
        {
          v121 = [v55 objectAtIndexedSubscript:v119];
          v154[0] = MEMORY[0x1E69E9820];
          v154[1] = 3221225472;
          v154[2] = sub_1C9A5F5E0;
          v154[3] = &unk_1E8346DC0;
          v122 = v121;
          v155 = v122;
          v161 = v119;
          v162 = v140;
          v123 = objb;
          v158 = v134;
          v159 = a1;
          v163 = 0x6000000010;
          v164 = 48;
          v165 = v133;
          v160 = v132;
          v156 = v123;
          p_buf = &buf;
          v124 = _Block_copy(v154);
          v125 = objc_autoreleasePoolPush();
          v126 = v124[2](v124);
          objc_autoreleasePoolPop(v125);
          if (v126)
          {
            break;
          }

          if (v120 == ++v119)
          {
            goto LABEL_128;
          }
        }

        if (a4)
        {
          v129 = v126;
          *a4 = v126;
        }

        v45 = 0;
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v102 = 0;
      v103 = v101 & 0x7FFFFFFF;
      while (1)
      {
        v104 = [v138 objectAtIndexedSubscript:{v102, v131}];
        v142 = [v104 featureVector];

        v226[0] = &unk_1F4965548;
        v226[1] = &unk_1F4965548;
        v105 = [MEMORY[0x1E696AD98] numberWithInt:16];
        v226[2] = v105;
        v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v226 count:3];

        v225[0] = &unk_1F4965560;
        v107 = [MEMORY[0x1E696AD98] numberWithInt:96];
        v225[1] = v107;
        v108 = [MEMORY[0x1E696AD98] numberWithInt:48];
        v225[2] = v108;
        objb = [MEMORY[0x1E695DEC8] arrayWithObjects:v225 count:3];

        v45 = [v142 sliceAtOrigin:v106 shape:objb squeeze:0 error:a4];
        if (!v45)
        {
          break;
        }

        [v136 addObject:v45];

        if (v103 == ++v102)
        {
          goto LABEL_123;
        }
      }
    }

    goto LABEL_137;
  }

  v31 = 0;
  v32 = obja;
  while (![v14 count])
  {
LABEL_29:
    ++v31;
    v32 += v139;
    if ([v14 count] <= v31)
    {
      goto LABEL_30;
    }
  }

  v33 = 0;
  v34 = v32;
  while (1)
  {
    v35 = [v148 objectAtIndexedSubscript:v31];
    v36 = [v148 objectAtIndexedSubscript:v33];
    v37 = [SNFeaturePrint cosineSimilarityBetweenOneFeatureVector:v35 andAnotherFeatureVector:v36 error:a4];

    if (!v37)
    {
      break;
    }

    [v37 floatValue];
    *v34 = v38;

    ++v33;
    v34 += v141;
    if ([v14 count] <= v33)
    {
      goto LABEL_29;
    }
  }

  obj = 0;
  v45 = 0;
LABEL_140:
  v14 = v144;
LABEL_141:

LABEL_142:

  return v45;
}

+ (id)featurizeFiles:(id)a3 randomNumberGenerator:(id)a4 hallucinatorModelURL:(id)a5 error:(id *)a6
{
  v9 = MEMORY[0x1E695DF70];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v9);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(SNBooleanCancellable);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A610D4;
  aBlock[3] = &unk_1E8346CD8;
  v18 = v13;
  v34 = v18;
  v19 = v14;
  v35 = v19;
  v20 = v15;
  v36 = v20;
  v21 = v16;
  v37 = v21;
  v22 = _Block_copy(aBlock);
  v28 = v17;
  v23 = sub_1C9A5C5C4(a1, v12, v11, v10, v17, v22, a6);

  if (v23)
  {
    v24 = objc_alloc_init(SNKShotFeaturizationResult);
    [(SNKShotFeaturizationResult *)v24 setTrainingDataEmbeddings:v18];
    [(SNKShotFeaturizationResult *)v24 setTrainingDataLabels:v19];
    [(SNKShotFeaturizationResult *)v24 setValidationDataEmbeddings:v20];
    [(SNKShotFeaturizationResult *)v24 setValidationDataLabels:v21];
    [v23 inferenceWindowSize];
    v29 = v31;
    v30 = v32;
    [(SNKShotFeaturizationResult *)v24 setInferenceWindowSize:&v29];
    v25 = [v23 exemplar];
    [(SNKShotFeaturizationResult *)v24 setExemplar:v25];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)readNumRepetitionsPerTimeShiftFromHallucinator:(id)a3 error:(id *)a4
{
  v5 = [a3 modelDescription];
  v6 = [v5 metadata];
  v7 = [v6 objectForKeyedSubscript:@"MLModelCreatorDefinedKey"];
  v8 = [v7 objectForKeyedSubscript:@"iterationsPerTimeshift"];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not read key from hallucinator metadata: %@", @"iterationsPerTimeshift"];
    [SNError populateClientError:a4 withCode:4 underlyingError:0 message:v10];

    v9 = 0;
  }

  return v9;
}

+ (id)readNumTimeShiftsPerSegmentFromHallucinator:(id)a3 error:(id *)a4
{
  v5 = [a3 modelDescription];
  v6 = [v5 metadata];
  v7 = [v6 objectForKeyedSubscript:@"MLModelCreatorDefinedKey"];
  v8 = [v7 objectForKeyedSubscript:@"timeshiftsPerSegment"];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not read key from hallucinator metadata: %@", @"timeshiftsPerSegment"];
    [SNError populateClientError:a4 withCode:4 underlyingError:0 message:v10];

    v9 = 0;
  }

  return v9;
}

+ (BOOL)ensureIsValidHallucinatorV3Model:(id)a3 error:(id *)a4
{
  v64[7] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 modelDescription];
  v8 = [v7 inputDescriptionsByName];

  v9 = [v6 modelDescription];
  v10 = [v9 outputDescriptionsByName];

  v11 = [a1 readNumRepetitionsPerTimeShiftFromHallucinator:v6 error:a4];

  if (v11)
  {
    v12 = [a1 readNumTimeShiftsPerSegmentFromHallucinator:v6 error:a4];

    if (v12)
    {
      v64[0] = @"foreground";
      v64[1] = @"background";
      v64[2] = @"shiftIteration";
      v64[3] = @"stateIn";
      v64[4] = @"set";
      v64[5] = @"shiftedSamples";
      v64[6] = @"segmentLength";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:7];
      v63[0] = @"embedding";
      v63[1] = @"label";
      v63[2] = @"stateOut";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
      v15 = [v6 modelDescription];
      v16 = [SNValidateModel ensureModelDescription:v15 hasInputFeatureNames:v13 hasOutputFeatureNames:v14 error:a4];

      if (v16)
      {
        v17 = [MEMORY[0x1E696B098] valueWithRange:{1, 0x7FFFFFFFFFFFFFFFLL}];
        v62[0] = v17;
        v18 = [MEMORY[0x1E696B098] valueWithRange:{1, 1}];
        v62[1] = v18;
        v19 = [MEMORY[0x1E696B098] valueWithRange:{1000, 319001}];
        v62[2] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];

        v21 = @"foreground";
        v22 = [v8 objectForKeyedSubscript:@"foreground"];
        v60 = 0;
        v23 = [SNValidateModel ensureFeatureWithDescription:v22 isOptional:0 isMultiArrayWithDataType:65568 dimensionSizeRanges:v20 error:&v60];
        v24 = v60;
        v25 = v24;
        if (v23 && (v24, v22, v20, [MEMORY[0x1E696B098] valueWithRange:{1, 0x7FFFFFFFFFFFFFFFLL}], v26 = objc_claimAutoreleasedReturnValue(), v61[0] = v26, objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", 1, 1), v27 = objc_claimAutoreleasedReturnValue(), v61[1] = v27, objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", 1000, 319001), v28 = objc_claimAutoreleasedReturnValue(), v61[2] = v28, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v61, 3), v20 = objc_claimAutoreleasedReturnValue(), v28, v27, v26, v21 = @"background", objc_msgSend(v8, "objectForKeyedSubscript:", @"background"), v22 = objc_claimAutoreleasedReturnValue(), v59 = 0, v29 = +[SNValidateModel ensureFeatureWithDescription:isOptional:isMultiArrayWithDataType:dimensionSizeRanges:error:](SNValidateModel, "ensureFeatureWithDescription:isOptional:isMultiArrayWithDataType:dimensionSizeRanges:error:", v22, 0, 65568, v20, &v59), v30 = v59, v25 = v30, v29))
        {

          v31 = @"shiftIteration";
          v20 = [v8 objectForKeyedSubscript:@"shiftIteration"];
          v58 = 0;
          v32 = [SNValidateModel ensureFeatureWithDescription:v20 isOptional:0 isMultiArrayWithDataType:65568 shapeOptions:&unk_1F49655A8 error:&v58];
          v33 = v58;
          v22 = v33;
          if (v32 && (v33, v20, v31 = @"stateIn", [v8 objectForKeyedSubscript:@"stateIn"], v20 = objc_claimAutoreleasedReturnValue(), v57 = 0, v34 = +[SNValidateModel ensureFeatureWithDescription:isOptional:error:](SNValidateModel, "ensureFeatureWithDescription:isOptional:error:", v20, 1, &v57), v35 = v57, v22 = v35, v34) && (v35, v20, v31 = @"set", objc_msgSend(v8, "objectForKeyedSubscript:", @"set"), v20 = objc_claimAutoreleasedReturnValue(), v56 = 0, v36 = +[SNValidateModel ensureFeatureWithDescription:isOptional:isMultiArrayWithDataType:shapeOptions:error:](SNValidateModel, "ensureFeatureWithDescription:isOptional:isMultiArrayWithDataType:shapeOptions:error:", v20, 1, 65568, &unk_1F49655D8, &v56), v37 = v56, v22 = v37, v36) && (v37, v20, v31 = @"shiftedSamples", objc_msgSend(v8, "objectForKeyedSubscript:", @"shiftedSamples"), v20 = objc_claimAutoreleasedReturnValue(), v55 = 0, v38 = +[SNValidateModel ensureFeatureWithDescription:isOptional:isMultiArrayWithDataType:shapeOptions:error:](SNValidateModel, "ensureFeatureWithDescription:isOptional:isMultiArrayWithDataType:shapeOptions:error:", v20, 1, 65568, &unk_1F4965608, &v55), v39 = v55, v22 = v39, v38) && (v39, v20, v31 = @"segmentLength", objc_msgSend(v8, "objectForKeyedSubscript:", @"segmentLength"), v20 = objc_claimAutoreleasedReturnValue(), v54 = 0, v40 = +[SNValidateModel ensureFeatureWithDescription:isOptional:isMultiArrayWithDataType:shapeOptions:error:](SNValidateModel, "ensureFeatureWithDescription:isOptional:isMultiArrayWithDataType:shapeOptions:error:", v20, 1, 65568, &unk_1F4965638, &v54), v41 = v54, v22 = v41, v40))
          {

            v42 = @"embedding";
            v20 = [v10 objectForKeyedSubscript:@"embedding"];
            v53 = 0;
            v43 = [SNValidateModel ensureFeatureWithDescription:v20 isOptional:0 isFreelyShapedMultiArrayWithDataType:65568 error:&v53];
            v44 = v53;
            v22 = v44;
            if (v43)
            {

              v42 = @"label";
              v20 = [v10 objectForKeyedSubscript:@"label"];
              v52 = 0;
              v45 = [SNValidateModel ensureFeatureWithDescription:v20 isOptional:0 isMultiArrayWithDataType:65568 shapeOptions:&unk_1F4965668 error:&v52];
              v46 = v52;
              v22 = v46;
              if (v45)
              {

                v42 = @"stateOut";
                v20 = [v10 objectForKeyedSubscript:@"stateOut"];
                v51 = 0;
                v47 = [SNValidateModel ensureFeatureWithDescription:v20 isOptional:0 error:&v51];
                v22 = v51;
                if (v47)
                {
                  v48 = 1;
LABEL_21:

                  goto LABEL_16;
                }
              }
            }

            [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid specification for output feature: '%@'", v42];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid specification for input feature: '%@'", v31];
          }
          v25 = ;
          [SNError populateClientError:a4 withCode:4 underlyingError:v22 message:v25];
        }

        else
        {
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid specification for input feature: '%@'", v21];
          [SNError populateClientError:a4 withCode:4 underlyingError:v25 message:v50];
        }

        v48 = 0;
        goto LABEL_21;
      }
    }
  }

  v48 = 0;
LABEL_16:

  return v48;
}

+ (id)labelFromNumberRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if (v6 == 1)
  {
    v7 = [[SNKShotLabel alloc] initAsPositiveLabel];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [[SNKShotLabel alloc] initAsNegativeLabel];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not translate number to label: %@", v5];
  [SNError populateClientError:a4 withCode:1 underlyingError:0 message:v9];

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)streamResultWithEmbedding:(id)a3 label:(id)a4 dataset:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [a1 labelFromNumberRepresentation:a4 error:a6];
  if (v11)
  {
    v12 = objc_alloc_init(SNKShotFeaturizationStreamResult);
    [(SNKShotFeaturizationStreamResult *)v12 setDatasetType:a5];
    [(SNKShotFeaturizationStreamResult *)v12 setData:v10];
    [(SNKShotFeaturizationStreamResult *)v12 setLabel:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)streamResultsForDatasetType:(int64_t)a3 embeddings:(id)a4 labels:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF70] array];
  if ([v10 count])
  {
    v13 = 0;
    while (1)
    {
      v14 = [v10 objectAtIndexedSubscript:v13];
      v15 = [v11 objectAtIndexedSubscript:v13];
      if (!v15 || !v14)
      {
        [SNError populateClientError:a6 withCode:1 underlyingError:0 message:@"expected same number of embeddings and labels"];
        goto LABEL_10;
      }

      v16 = [a1 streamResultWithEmbedding:v14 label:v15 dataset:a3 error:a6];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      [v12 addObject:v16];

      if ([v10 count] <= ++v13)
      {
        goto LABEL_11;
      }
    }

    v12 = 0;
LABEL_10:
  }

LABEL_11:

  return v12;
}

+ (id)streamResultsFromFeaturizationResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 trainingDataEmbeddings];
  v8 = [v6 trainingDataLabels];
  v9 = [a1 streamResultsForDatasetType:0 embeddings:v7 labels:v8 error:a4];

  if (v9)
  {
    v10 = [v6 validationDataEmbeddings];
    v11 = [v6 validationDataLabels];
    v12 = [a1 streamResultsForDatasetType:1 embeddings:v10 labels:v11 error:a4];

    if (v12)
    {
      v13 = [v9 arrayByAddingObjectsFromArray:v12];
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

+ (id)streamCompletionFromFeaturizationResult:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SNKShotFeaturizationStreamCompletion);
  if (v3)
  {
    [v3 inferenceWindowSize];
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
  }

  v7 = v9;
  v8 = v10;
  [(SNKShotFeaturizationStreamCompletion *)v4 setInferenceWindowSize:&v7];
  v5 = [v3 exemplar];
  [(SNKShotFeaturizationStreamCompletion *)v4 setExemplar:v5];

  return v4;
}

@end