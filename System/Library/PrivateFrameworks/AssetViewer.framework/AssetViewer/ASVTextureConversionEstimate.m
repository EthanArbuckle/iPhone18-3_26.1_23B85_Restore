@interface ASVTextureConversionEstimate
+ (id)conversionEstimatesFromTextureDescriptions:(id)a3 toFitAvailableMemory:(unint64_t)a4 withConverters:(id)a5 preferredMaxTextureSize:(int64_t *)a6 outcome:;
+ (id)heaviestConversionEstimate:(id)a3 withMinimumDestinationSize:;
+ (id)textureDescription:(id)a3 downsampledToTryAndFitDestinationWithinSize:;
+ (unint64_t)peakMemoryForConversionEstimates:(id)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDelta;
- (ASVTextureConversionEstimate)initWithTextureDescription:(id)a3 converter:(id)a4;
- (id)debugDescription;
- (unint64_t)weight;
- (void)updateFromConverter:(id)a3;
@end

@implementation ASVTextureConversionEstimate

- (ASVTextureConversionEstimate)initWithTextureDescription:(id)a3 converter:(id)a4
{
  v22 = a4;
  v6 = a3;
  v7 = [v6 name];
  [v6 originalSize];
  v9 = v8;
  v10 = [v6 originalPixelFormat];
  v12 = v11;
  v13 = [v6 destinationPixelFormat];
  v15 = v14;
  v16 = [v6 downsamplingFactor];
  v17 = [v6 fileType];
  v18 = [v6 generateMipmaps];

  v23.receiver = self;
  v23.super_class = ASVTextureConversionEstimate;
  v21 = v18;
  v19 = [(ASVTextureDescription *)&v23 initWithName:v7 originalSize:v10 originalPixelFormat:v12 destinationPixelFormat:v13 downsamplingFactor:v15 fileType:v16 generateMipmaps:v9, v17, v21];

  if (v19)
  {
    [(ASVTextureConversionEstimate *)v19 updateFromConverter:v22];
  }

  return v19;
}

- (void)updateFromConverter:(id)a3
{
  v4 = a3;
  -[ASVTextureConversionEstimate setConverterType:](self, "setConverterType:", [v4 converterType]);
  v5 = [v4 estimatedMemoryDeltaForTextureWithDescription:self];
  v7 = v6;

  [(ASVTextureConversionEstimate *)self setEstimatedMemoryDelta:v5, v7];
}

- (unint64_t)weight
{
  [(ASVTextureDescription *)self destinationSize];
  v9 = v3;
  [(ASVTextureDescription *)self destinationSize];
  v5 = v4 * v9;
  v6 = [(ASVTextureDescription *)self destinationPixelFormat];
  return v5 * [ASVTextureDescription bytesPerPixelForPixelFormat:v6, v7];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ASVTextureConversionEstimate;
  v4 = [(ASVTextureDescription *)&v9 debugDescription];
  v5 = [(ASVTextureConversionEstimate *)self converterType];
  [(ASVTextureConversionEstimate *)self estimatedMemoryDelta];
  v7 = [v3 stringWithFormat:@"%@ [converterType: %d, estimated: peak %llu / footprint %llu, weight: %lu]", v4, v5, v6, -[ASVTextureConversionEstimate estimatedMemoryDelta](self, "estimatedMemoryDelta"), -[ASVTextureConversionEstimate weight](self, "weight")];

  return v7;
}

+ (id)textureDescription:(id)a3 downsampledToTryAndFitDestinationWithinSize:
{
  v27 = v3;
  v4 = a3;
  v5 = v4;
  if (v27.i32[0] && v27.i32[1] && (([v4 destinationSize], (vcgt_s32(v6, v27).u8[0] & 1) != 0) || (objc_msgSend(v5, "destinationSize"), (vcgt_s32(v7, v27).i32[1] & 1) != 0)))
  {
    for (i = [v5 downsamplingFactor]; ; i *= 2)
    {
      [v5 originalSize];
      v10.i32[0] = v9 / i;
      v10.i32[1] = v11 / i;
      v12 = vcgt_s32(v10, v27);
      if ((v12.i8[0] & 1) == 0 && (v12.i8[4] & 1) == 0)
      {
        break;
      }
    }

    v14 = [ASVTextureDescription alloc];
    v15 = [v5 name];
    [v5 originalSize];
    v17 = v16;
    v18 = [v5 originalPixelFormat];
    v20 = v19;
    v21 = [v5 destinationPixelFormat];
    v23 = v22;
    v24 = [v5 fileType];
    LOBYTE(v26) = [v5 generateMipmaps];
    v13 = [(ASVTextureDescription *)v14 initWithName:v15 originalSize:v18 originalPixelFormat:v20 destinationPixelFormat:v21 downsamplingFactor:v23 fileType:i generateMipmaps:v17, v24, v26];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

+ (id)conversionEstimatesFromTextureDescriptions:(id)a3 toFitAvailableMemory:(unint64_t)a4 withConverters:(id)a5 preferredMaxTextureSize:(int64_t *)a6 outcome:
{
  v67 = v6;
  v85 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v70 = a5;
  if (a6)
  {
    *a6 = 1;
  }

  v69 = a6;
  v60 = v9;
  if ([v9 count])
  {
    if ([v70 count])
    {
      v66 = objc_opt_new();
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v75 objects:v84 count:16];
      v12 = a6;
      if (v11)
      {
        v13 = v11;
        v14 = *v76;
        v15 = vorr_s8(vdup_lane_s32(v67, 1), v67).u32[0];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v76 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v75 + 1) + 8 * i);
            if (v15)
            {
              v18 = [ASVTextureConversionEstimate textureDescription:v17 downsampledToTryAndFitDestinationWithinSize:*&v67];
              v19 = v18;
              if (v12 && [v18 requiresDownsampling])
              {
                *v12 = 2;
              }
            }

            else
            {
              v19 = v17;
            }

            v20 = [ASVTextureConverter preferredConverterFromConverters:v70 forTextureDescription:v19];
            if (v20)
            {
              v21 = [[ASVTextureConversionEstimate alloc] initWithTextureDescription:v19 converter:v20];
              [v66 addObject:v21];

              v12 = v69;
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v75 objects:v84 count:16];
        }

        while (v13);
      }

      v22 = [v66 copy];
      v23 = [a1 conversionEstimatesSortedByPeakMemoryUsage:v22];

      v24 = [ASVTextureConversionEstimate peakMemoryForConversionEstimates:v23];
      v25 = AssetViewerLogHandleForCategory(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v81 = v24;
        v82 = 2048;
        v83 = a4;
        _os_log_impl(&dword_241215000, v25, OS_LOG_TYPE_DEFAULT, "peakMemory: %lu, availableMemory: %lu", buf, 0x16u);
      }

      v26 = AssetViewerLogHandleForCategory(1);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (a4 && v24 > a4)
      {
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_241215000, v26, OS_LOG_TYPE_DEFAULT, "Need to downsample, calculating...", buf, 2u);
        }

        v65 = objc_opt_new();
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = v23;
        v68 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
        if (v68)
        {
          v64 = *v72;
          do
          {
            for (j = 0; j != v68; ++j)
            {
              if (*v72 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v71 + 1) + 8 * j);
              v30 = [ASVTextureDescription alloc];
              v31 = [v29 name];
              [v29 originalSize];
              v33 = v32;
              v34 = [v29 originalPixelFormat];
              v36 = v35;
              v37 = [v29 destinationPixelFormat];
              v39 = v38;
              v40 = [v29 downsamplingFactor];
              v41 = [v29 fileType];
              LOBYTE(v59) = [v29 generateMipmaps];
              v42 = [(ASVTextureDescription *)v30 initWithName:v31 originalSize:v34 originalPixelFormat:v36 destinationPixelFormat:v37 downsamplingFactor:v39 fileType:v40 generateMipmaps:v33, v41, v59];

              [(ASVTextureDescription *)v42 destinationSize];
              if (v43 >= 17)
              {
                do
                {
                  [(ASVTextureDescription *)v42 destinationSize];
                  if (v44 < 17)
                  {
                    break;
                  }

                  [(ASVTextureDescription *)v42 setDownsamplingFactor:2 * [(ASVTextureDescription *)v42 downsamplingFactor]];
                  [(ASVTextureDescription *)v42 destinationSize];
                }

                while (v45 > 16);
              }

              v46 = [ASVTextureConverter preferredConverterFromConverters:v70 forTextureDescription:v42];
              v47 = [[ASVTextureConversionEstimate alloc] initWithTextureDescription:v42 converter:v46];
              [v65 addObject:v47];
            }

            v68 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
          }

          while (v68);
        }

        v48 = [a1 conversionEstimatesSortedByPeakMemoryUsage:v65];
        if ([ASVTextureConversionEstimate peakMemoryForConversionEstimates:v48]> a4)
        {
LABEL_48:
          v56 = 0;
        }

        else
        {
          v49 = obj;
          do
          {
            v50 = v49;
            v51 = [ASVTextureConversionEstimate heaviestConversionEstimate:v49 withMinimumDestinationSize:COERCE_DOUBLE(0x1000000010)];
            if (!v51)
            {
              obj = v50;
              goto LABEL_48;
            }

            v52 = v51;
            [v51 setDownsamplingFactor:{2 * objc_msgSend(v51, "downsamplingFactor")}];
            v53 = [ASVTextureConverter preferredConverterFromConverters:v70 forTextureDescription:v52];
            [v52 updateFromConverter:v53];
            v54 = [a1 conversionEstimatesSortedByPeakMemoryUsage:v50];

            v55 = [ASVTextureConversionEstimate peakMemoryForConversionEstimates:v54];
            v49 = v54;
          }

          while (v55 > a4);
          if (v69)
          {
            *v69 = 3;
          }

          v56 = v54;
          obj = v56;
        }

        v57 = obj;
      }

      else
      {
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_241215000, v26, OS_LOG_TYPE_DEFAULT, "No need to downsample, returning", buf, 2u);
        }

        v57 = v23;
        v56 = v57;
      }
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = MEMORY[0x277CBEBF8];
  }

  return v56;
}

+ (unint64_t)peakMemoryForConversionEstimates:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 estimatedMemoryDelta];
        if (v7 <= v11 + v6)
        {
          v7 = v11 + v6;
        }

        v6 += [v10 estimatedMemoryDelta];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)heaviestConversionEstimate:(id)a3 withMinimumDestinationSize:
{
  v4 = v3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 weight];
        if (v13 > v8)
        {
          v14 = v13;
          [v12 destinationSize];
          if ((vcgt_s32(v4, v15).u8[0] & 1) == 0)
          {
            [v12 destinationSize];
            if ((vcgt_s32(v4, v16).i32[1] & 1) == 0)
            {
              v17 = v12;

              v8 = v14;
              v9 = v17;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __75__ASVTextureConversionEstimate_conversionEstimatesSortedByPeakMemoryUsage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 estimatedMemoryDelta];
  v6 = v5;
  [v4 estimatedMemoryDelta];
  v8 = v7;

  if (v6 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDelta
{
  p_estimatedMemoryDelta = &self->_estimatedMemoryDelta;
  footprint = self->_estimatedMemoryDelta.footprint;
  peak = p_estimatedMemoryDelta->peak;
  result.var1 = peak;
  result.var0 = footprint;
  return result;
}

@end