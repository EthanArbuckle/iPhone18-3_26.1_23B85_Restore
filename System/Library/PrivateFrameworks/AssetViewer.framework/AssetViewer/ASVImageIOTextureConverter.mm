@interface ASVImageIOTextureConverter
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDeltaForTextureWithDescription:(id)description;
- (int64_t)maxNativeDownsamplingFactorForDownsamplingFactor:(int64_t)factor fileType:(int64_t)type;
@end

@implementation ASVImageIOTextureConverter

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDeltaForTextureWithDescription:(id)description
{
  v64 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  originalPixelFormat = [descriptionCopy originalPixelFormat];
  v7 = v6;
  if (originalPixelFormat == 1)
  {
    if ([descriptionCopy fileType] >= 8)
    {
      originalPixelFormat = 1;
    }

    else
    {
      originalPixelFormat = 2;
    }
  }

  [descriptionCopy originalSize];
  v42 = v8;
  [descriptionCopy destinationSize];
  v44 = v9;
  destinationPixelFormat = [descriptionCopy destinationPixelFormat];
  v12 = v11;
  v13 = [ASVTextureDescription bytesPerPixelForPixelFormat:originalPixelFormat, v7];
  v14 = [ASVTextureDescription bytesPerPixelForPixelFormat:destinationPixelFormat, v12];
  generateMipmaps = [descriptionCopy generateMipmaps];
  v16 = v44 * SHIDWORD(v44);
  v17 = v14 * v16;
  v18 = 1.33333333;
  if (!generateMipmaps)
  {
    v18 = 1.0;
  }

  v19 = [(ASVTextureConverter *)self alignUp:(v18 * (v14 * v16)) toAlignment:getpagesize()];
  v20 = v42 * SHIDWORD(v42);
  v21 = v13 * v20;
  if ([descriptionCopy originalPixelFormat] == 6)
  {
    if ([descriptionCopy destinationPixelFormat] == 4)
    {
LABEL_9:
      v22 = v17 + v21;
      goto LABEL_28;
    }

    if ([descriptionCopy destinationPixelFormat] == 2)
    {
      v22 = v14 * (v16 + v20);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if ([descriptionCopy fileType] == 1)
    {
      v23 = -[ASVImageIOTextureConverter maxNativeDownsamplingFactorForDownsamplingFactor:fileType:](self, "maxNativeDownsamplingFactorForDownsamplingFactor:fileType:", [descriptionCopy downsamplingFactor], 1);
      v22 = v21 / (v23 * v23) + v17;
      goto LABEL_28;
    }

    if ([descriptionCopy fileType] == 7)
    {
      v24 = -[ASVImageIOTextureConverter maxNativeDownsamplingFactorForDownsamplingFactor:fileType:](self, "maxNativeDownsamplingFactorForDownsamplingFactor:fileType:", [descriptionCopy downsamplingFactor], 7);
      [descriptionCopy originalPixelFormat];
      v22 = (v21 / (v24 * v24) + v17) << (v25 == 2);
      goto LABEL_28;
    }

    if ([descriptionCopy fileType] == 4)
    {
      v26 = -[ASVImageIOTextureConverter maxNativeDownsamplingFactorForDownsamplingFactor:fileType:](self, "maxNativeDownsamplingFactorForDownsamplingFactor:fileType:", [descriptionCopy downsamplingFactor], 4);
      v27 = v21 / (v26 * v26);
      v28 = 2 * v27;
      v29 = v27 + v17;
      if (v28 <= v29)
      {
        v22 = v29;
      }

      else
      {
        v22 = v28;
      }

      goto LABEL_28;
    }

    if ([descriptionCopy fileType] != 2)
    {
      if ([descriptionCopy fileType] == 5)
      {
        if (v17 + v21 <= v21 + v20)
        {
          v22 = v21 + v20;
        }

        else
        {
          v22 = v17 + v21;
        }

        goto LABEL_28;
      }

      if ([descriptionCopy fileType] != 3)
      {
        goto LABEL_9;
      }
    }

    if (![descriptionCopy requiresDownsampling])
    {
      goto LABEL_9;
    }

    v22 = v17 + SHIDWORD(v44) * v42 * v13;
  }

LABEL_28:
  if ([descriptionCopy fileType] == 1)
  {
    v22 += 35968;
  }

  else if ([descriptionCopy fileType] == 4)
  {
    v22 += 1572864;
  }

  v30 = AssetViewerLogHandleForCategory(1);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    fileType = [descriptionCopy fileType];
    downsamplingFactor = [descriptionCopy downsamplingFactor];
    [descriptionCopy originalSize];
    v45 = v33;
    [descriptionCopy originalSize];
    v43 = v34;
    [descriptionCopy destinationSize];
    v41 = v35;
    [descriptionCopy destinationSize];
    v40 = v36;
    name = [descriptionCopy name];
    *buf = 134220034;
    v47 = fileType;
    v48 = 2048;
    v49 = downsamplingFactor;
    v50 = 2048;
    v51 = v22 >> 10;
    v52 = 2048;
    v53 = v19 >> 10;
    v54 = 1024;
    v55 = v45;
    v56 = 1024;
    v57 = v43;
    v58 = 1024;
    v59 = v41;
    v60 = 1024;
    v61 = v40;
    v62 = 2112;
    v63 = name;
    _os_log_impl(&dword_241215000, v30, OS_LOG_TYPE_DEFAULT, "fileType: %lu. factor: %lu,\tpeak: %lluKB,\tfootprint: %lluKB, (%d x %d) -> (%d x %d) - '%@'", buf, 0x4Cu);
  }

  v38 = v19;
  v39 = v22;
  result.var1 = v39;
  result.var0 = v38;
  return result;
}

- (int64_t)maxNativeDownsamplingFactorForDownsamplingFactor:(int64_t)factor fileType:(int64_t)type
{
  if ((type - 1) > 6)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_241364760[type - 1];
  }

  if (v4 >= factor)
  {
    return factor;
  }

  else
  {
    return v4;
  }
}

@end