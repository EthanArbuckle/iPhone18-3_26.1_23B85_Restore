@interface ASVTextureConversionEstimate
+ (id)conversionEstimatesFromTextureDescriptions:(id)descriptions toFitAvailableMemory:(unint64_t)memory withConverters:(id)converters preferredMaxTextureSize:(int64_t *)size outcome:;
+ (id)heaviestConversionEstimate:(id)estimate withMinimumDestinationSize:;
+ (id)textureDescription:(id)description downsampledToTryAndFitDestinationWithinSize:;
+ (unint64_t)peakMemoryForConversionEstimates:(id)estimates;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDelta;
- (ASVTextureConversionEstimate)initWithTextureDescription:(id)description converter:(id)converter;
- (id)debugDescription;
- (unint64_t)weight;
- (void)updateFromConverter:(id)converter;
@end

@implementation ASVTextureConversionEstimate

- (ASVTextureConversionEstimate)initWithTextureDescription:(id)description converter:(id)converter
{
  converterCopy = converter;
  descriptionCopy = description;
  name = [descriptionCopy name];
  [descriptionCopy originalSize];
  v9 = v8;
  originalPixelFormat = [descriptionCopy originalPixelFormat];
  v12 = v11;
  destinationPixelFormat = [descriptionCopy destinationPixelFormat];
  v15 = v14;
  downsamplingFactor = [descriptionCopy downsamplingFactor];
  fileType = [descriptionCopy fileType];
  generateMipmaps = [descriptionCopy generateMipmaps];

  v23.receiver = self;
  v23.super_class = ASVTextureConversionEstimate;
  v21 = generateMipmaps;
  v19 = [(ASVTextureDescription *)&v23 initWithName:name originalSize:originalPixelFormat originalPixelFormat:v12 destinationPixelFormat:destinationPixelFormat downsamplingFactor:v15 fileType:downsamplingFactor generateMipmaps:v9, fileType, v21];

  if (v19)
  {
    [(ASVTextureConversionEstimate *)v19 updateFromConverter:converterCopy];
  }

  return v19;
}

- (void)updateFromConverter:(id)converter
{
  converterCopy = converter;
  -[ASVTextureConversionEstimate setConverterType:](self, "setConverterType:", [converterCopy converterType]);
  v5 = [converterCopy estimatedMemoryDeltaForTextureWithDescription:self];
  v7 = v6;

  [(ASVTextureConversionEstimate *)self setEstimatedMemoryDelta:v5, v7];
}

- (unint64_t)weight
{
  [(ASVTextureDescription *)self destinationSize];
  v9 = v3;
  [(ASVTextureDescription *)self destinationSize];
  v5 = v4 * v9;
  destinationPixelFormat = [(ASVTextureDescription *)self destinationPixelFormat];
  return v5 * [ASVTextureDescription bytesPerPixelForPixelFormat:destinationPixelFormat, v7];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ASVTextureConversionEstimate;
  v4 = [(ASVTextureDescription *)&v9 debugDescription];
  converterType = [(ASVTextureConversionEstimate *)self converterType];
  [(ASVTextureConversionEstimate *)self estimatedMemoryDelta];
  v7 = [v3 stringWithFormat:@"%@ [converterType: %d, estimated: peak %llu / footprint %llu, weight: %lu]", v4, converterType, v6, -[ASVTextureConversionEstimate estimatedMemoryDelta](self, "estimatedMemoryDelta"), -[ASVTextureConversionEstimate weight](self, "weight")];

  return v7;
}

+ (id)textureDescription:(id)description downsampledToTryAndFitDestinationWithinSize:
{
  v27 = v3;
  descriptionCopy = description;
  v5 = descriptionCopy;
  if (v27.i32[0] && v27.i32[1] && (([descriptionCopy destinationSize], (vcgt_s32(v6, v27).u8[0] & 1) != 0) || (objc_msgSend(v5, "destinationSize"), (vcgt_s32(v7, v27).i32[1] & 1) != 0)))
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
    name = [v5 name];
    [v5 originalSize];
    v17 = v16;
    originalPixelFormat = [v5 originalPixelFormat];
    v20 = v19;
    destinationPixelFormat = [v5 destinationPixelFormat];
    v23 = v22;
    fileType = [v5 fileType];
    LOBYTE(v26) = [v5 generateMipmaps];
    v13 = [(ASVTextureDescription *)v14 initWithName:name originalSize:originalPixelFormat originalPixelFormat:v20 destinationPixelFormat:destinationPixelFormat downsamplingFactor:v23 fileType:i generateMipmaps:v17, fileType, v26];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

+ (id)conversionEstimatesFromTextureDescriptions:(id)descriptions toFitAvailableMemory:(unint64_t)memory withConverters:(id)converters preferredMaxTextureSize:(int64_t *)size outcome:
{
  v67 = v6;
  v85 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  convertersCopy = converters;
  if (size)
  {
    *size = 1;
  }

  sizeCopy = size;
  v60 = descriptionsCopy;
  if ([descriptionsCopy count])
  {
    if ([convertersCopy count])
    {
      v66 = objc_opt_new();
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v10 = descriptionsCopy;
      v11 = [v10 countByEnumeratingWithState:&v75 objects:v84 count:16];
      sizeCopy2 = size;
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
              if (sizeCopy2 && [v18 requiresDownsampling])
              {
                *sizeCopy2 = 2;
              }
            }

            else
            {
              v19 = v17;
            }

            v20 = [ASVTextureConverter preferredConverterFromConverters:convertersCopy forTextureDescription:v19];
            if (v20)
            {
              v21 = [[ASVTextureConversionEstimate alloc] initWithTextureDescription:v19 converter:v20];
              [v66 addObject:v21];

              sizeCopy2 = sizeCopy;
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v75 objects:v84 count:16];
        }

        while (v13);
      }

      v22 = [v66 copy];
      v23 = [self conversionEstimatesSortedByPeakMemoryUsage:v22];

      v24 = [ASVTextureConversionEstimate peakMemoryForConversionEstimates:v23];
      v25 = AssetViewerLogHandleForCategory(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v81 = v24;
        v82 = 2048;
        memoryCopy = memory;
        _os_log_impl(&dword_241215000, v25, OS_LOG_TYPE_DEFAULT, "peakMemory: %lu, availableMemory: %lu", buf, 0x16u);
      }

      v26 = AssetViewerLogHandleForCategory(1);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (memory && v24 > memory)
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
              name = [v29 name];
              [v29 originalSize];
              v33 = v32;
              originalPixelFormat = [v29 originalPixelFormat];
              v36 = v35;
              destinationPixelFormat = [v29 destinationPixelFormat];
              v39 = v38;
              downsamplingFactor = [v29 downsamplingFactor];
              fileType = [v29 fileType];
              LOBYTE(v59) = [v29 generateMipmaps];
              v42 = [(ASVTextureDescription *)v30 initWithName:name originalSize:originalPixelFormat originalPixelFormat:v36 destinationPixelFormat:destinationPixelFormat downsamplingFactor:v39 fileType:downsamplingFactor generateMipmaps:v33, fileType, v59];

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

              v46 = [ASVTextureConverter preferredConverterFromConverters:convertersCopy forTextureDescription:v42];
              v47 = [[ASVTextureConversionEstimate alloc] initWithTextureDescription:v42 converter:v46];
              [v65 addObject:v47];
            }

            v68 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
          }

          while (v68);
        }

        v48 = [self conversionEstimatesSortedByPeakMemoryUsage:v65];
        if ([ASVTextureConversionEstimate peakMemoryForConversionEstimates:v48]> memory)
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
            v53 = [ASVTextureConverter preferredConverterFromConverters:convertersCopy forTextureDescription:v52];
            [v52 updateFromConverter:v53];
            v54 = [self conversionEstimatesSortedByPeakMemoryUsage:v50];

            v55 = [ASVTextureConversionEstimate peakMemoryForConversionEstimates:v54];
            v49 = v54;
          }

          while (v55 > memory);
          if (sizeCopy)
          {
            *sizeCopy = 3;
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

+ (unint64_t)peakMemoryForConversionEstimates:(id)estimates
{
  v18 = *MEMORY[0x277D85DE8];
  estimatesCopy = estimates;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [estimatesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(estimatesCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 estimatedMemoryDelta];
        if (v7 <= v11 + v6)
        {
          v7 = v11 + v6;
        }

        v6 += [v10 estimatedMemoryDelta];
      }

      v5 = [estimatesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)heaviestConversionEstimate:(id)estimate withMinimumDestinationSize:
{
  v4 = v3;
  v24 = *MEMORY[0x277D85DE8];
  estimateCopy = estimate;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [estimateCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(estimateCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        weight = [v12 weight];
        if (weight > v8)
        {
          v14 = weight;
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

      v7 = [estimateCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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