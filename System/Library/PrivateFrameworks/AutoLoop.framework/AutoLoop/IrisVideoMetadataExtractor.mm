@interface IrisVideoMetadataExtractor
- (IrisVideoMetadataExtractor)init;
- (int)AddInfoFromMetadata:(id)metadata withTimeStamp:(id *)stamp toArray:(id)array;
- (int)processFile;
- (int)processStillFrameTimeForAsset:(id)asset toDictionary:(id)dictionary;
- (int)processVideoTrack:(id)track;
- (void)AddFrameDictionary:(id)dictionary withCMTime:(id *)time toArray:(id)array;
@end

@implementation IrisVideoMetadataExtractor

- (IrisVideoMetadataExtractor)init
{
  v8[20] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = IrisVideoMetadataExtractor;
  v2 = [(IrisVideoMetadataExtractor *)&v7 init];
  v8[0] = @"privDFArray";
  v8[1] = @"privECMVct";
  v8[2] = @"privEMBVct";
  v8[3] = @"privDFArray";
  v8[4] = @"privET";
  v8[5] = @"privTZF";
  v8[6] = @"privImgG";
  v8[7] = @"privAFS";
  v8[8] = @"privAFSt";
  v8[9] = @"privFM";
  v8[10] = @"privRefHom";
  v8[11] = @"catBodies";
  v8[12] = @"dogBodies";
  v8[13] = @"humanBodies";
  v8[14] = @"salientObjects";
  v8[15] = @"originalPTSInNanos";
  v8[16] = @"ptsInNanos";
  v8[17] = @"IrisSequenceAdjusterRecipe";
  v8[18] = @"IrisSequenceAdjusterDisplacement";
  v8[19] = @"InterpolatedFrame";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:20];
  v4 = [v3 mutableCopy];
  desiredIrisKeysArray = v2->desiredIrisKeysArray;
  v2->desiredIrisKeysArray = v4;

  v2->processedFile = 0;
  if (qword_281504A60 != -1)
  {
    sub_2418EBDA0();
  }

  return v2;
}

- (void)AddFrameDictionary:(id)dictionary withCMTime:(id *)time toArray:(id)array
{
  arrayCopy = array;
  v8 = [dictionary mutableCopy];
  v13 = *time;
  v9 = CMTimeCopyAsDictionary(&v13, 0);
  [v8 setObject:v9 forKeyedSubscript:@"PresentationTime"];

  v10 = MEMORY[0x277CCABB0];
  v13 = *time;
  Seconds = CMTimeGetSeconds(&v13);
  *&Seconds = Seconds;
  v12 = [v10 numberWithFloat:Seconds];
  [v8 setObject:v12 forKeyedSubscript:@"PresentationTimeSeconds"];

  [arrayCopy addObject:v8];
}

- (int)AddInfoFromMetadata:(id)metadata withTimeStamp:(id *)stamp toArray:(id)array
{
  v26 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  arrayCopy = array;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  time = *stamp;
  v11 = CMTimeCopyAsDictionary(&time, 0);
  [v10 setObject:v11 forKeyedSubscript:@"PresentationTime"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->desiredIrisKeysArray;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [metadataCopy objectForKeyedSubscript:{v17, v20}];
        if (v18)
        {
          [v10 setObject:v18 forKeyedSubscript:v17];
        }
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }

  [arrayCopy addObject:v10];
  return 0;
}

- (int)processVideoTrack:(id)track
{
  trackCopy = track;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  if (trackCopy)
  {
    [trackCopy timeRange];
  }

  else
  {
    memset(v38, 0, sizeof(v38));
    v37 = 0u;
  }

  v39 = *(v38 + 8);
  formatDescriptions = [trackCopy formatDescriptions];
  if ([formatDescriptions count] && (v7 = objc_msgSend(formatDescriptions, "objectAtIndex:", 0)) != 0)
  {
    v8 = v7;
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v7, 0, 0);
    width = PresentationDimensions.width;
    height = PresentationDimensions.height;
  }

  else
  {
    [trackCopy naturalSize];
    width = v12;
    height = v13;
    v8 = 0;
  }

  Extension = CMFormatDescriptionGetExtension(v8, *MEMORY[0x277CC4BE8]);
  if (Extension)
  {
    v15 = Extension;
    Value = CFDictionaryGetValue(Extension, *MEMORY[0x277CC4BF8]);
    v17 = CFDictionaryGetValue(v15, *MEMORY[0x277CC4BD8]);
    if (v17)
    {
      v18 = Value == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = height;
    v20 = width;
    if (!v18)
    {
      v21 = v17;
      v35.value = 0;
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberNSIntegerType, &v35);
      CFNumberGetValue(v21, kCFNumberNSIntegerType, &valuePtr);
      v20 = v35.value;
      v19 = valuePtr;
    }
  }

  else
  {
    v19 = height;
    v20 = width;
  }

  v22 = MEMORY[0x277CCABB0];
  v35 = v39;
  Seconds = CMTimeGetSeconds(&v35);
  *&Seconds = Seconds;
  v24 = [v22 numberWithFloat:Seconds];
  [(NSMutableDictionary *)v5 setObject:v24 forKeyedSubscript:@"vidTrackTotalDur"];

  *&v25 = width;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  [(NSMutableDictionary *)v5 setObject:v26 forKeyedSubscript:@"vidTrackNaturalW"];

  *&v27 = height;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  [(NSMutableDictionary *)v5 setObject:v28 forKeyedSubscript:@"vidTrackNaturalH"];

  *&v29 = v20;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  [(NSMutableDictionary *)v5 setObject:v30 forKeyedSubscript:@"vidTrackCleanW"];

  *&v31 = v19;
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  [(NSMutableDictionary *)v5 setObject:v32 forKeyedSubscript:@"vidTrackCleanH"];

  videoTrackMetadataDict = self->videoTrackMetadataDict;
  self->videoTrackMetadataDict = v5;

  return 0;
}

- (int)processStillFrameTimeForAsset:(id)asset toDictionary:(id)dictionary
{
  v40 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  dictionaryCopy = dictionary;
  v7 = assetCopy;
  v33 = **&MEMORY[0x277CC0898];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [v7 tracksWithMediaType:*MEMORY[0x277CE5E70]];
  v9 = [v8 countByEnumeratingWithState:&v35 objects:&time count:16];
  if (!v9)
  {
    v18 = v8;
    goto LABEL_24;
  }

  v10 = v9;
  v32 = dictionaryCopy;
  v11 = *v36;
  v12 = *MEMORY[0x277CC1A70];
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v36 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v14 = *(*(&v35 + 1) + 8 * v13);
    formatDescriptions = [v14 formatDescriptions];
    firstObject = [formatDescriptions firstObject];

    if (!firstObject)
    {
      goto LABEL_9;
    }

    v17 = CMMetadataFormatDescriptionGetIdentifiers(firstObject);
    if ([v17 containsObject:v12])
    {
      break;
    }

LABEL_9:
    if (v10 == ++v13)
    {
      v10 = [v8 countByEnumeratingWithState:&v35 objects:&time count:16];
      if (v10)
      {
        goto LABEL_3;
      }

      v18 = v8;
      dictionaryCopy = v32;
      goto LABEL_24;
    }
  }

  v18 = v14;

  dictionaryCopy = v32;
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v18 outputSettings:0];
  v34 = 0;
  v20 = [MEMORY[0x277CE6410] assetReaderWithAsset:v7 error:&v34];
  v21 = v20;
  if (v20)
  {
    [v20 addOutput:v19];
    [v21 startReading];
    do
    {
      copyNextSampleBuffer = [v19 copyNextSampleBuffer];
      if (!copyNextSampleBuffer)
      {
        break;
      }

      v23 = copyNextSampleBuffer;
      if (CMSampleBufferGetNumSamples(copyNextSampleBuffer))
      {
        v24 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:v23];
        v25 = MEMORY[0x277CE6520];
        items = [v24 items];
        v27 = [v25 metadataItemsFromArray:items filteredByIdentifier:v12];
        firstObject2 = [v27 firstObject];

        if (firstObject2)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&v33, v23);
        }
      }

      CFRelease(v23);
    }

    while ((v33.flags & 1) == 0);
    [v21 cancelReading];
    dictionaryCopy = v32;
  }

LABEL_24:
LABEL_25:

  if (v33.flags)
  {
    v29 = *MEMORY[0x277CBECE8];
    time = v33;
    v30 = CMTimeCopyAsDictionary(&time, v29);
    [dictionaryCopy setObject:v30 forKeyedSubscript:@"vidTrackStillFrameTime"];
  }

  return 0;
}

- (int)processFile
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = qword_281504A68;
  v4 = qword_281504A70;
  [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  obj = v60 = 0;
  v5 = 0;
  if (self->saveAllMetadata)
  {
    v60 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  }

  inMovieAsset = self->inMovieAsset;
  if (!inMovieAsset)
  {
    Code = -6000;
    goto LABEL_13;
  }

  v7 = [(AVAsset *)inMovieAsset tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v8 = v7;
  if (!v7)
  {
    NSLog(&cfstr_AssetHasNoVide.isa);
    v9 = 0;
    Code = -6100;
    goto LABEL_12;
  }

  if (![v7 count])
  {
    v9 = 0;
    Code = -6101;
    goto LABEL_12;
  }

  v9 = [v8 objectAtIndex:0];
  v10 = [(IrisVideoMetadataExtractor *)self processVideoTrack:v9];
  if (!v10)
  {
    v10 = [(IrisVideoMetadataExtractor *)self processStillFrameTimeForAsset:self->inMovieAsset toDictionary:self->videoTrackMetadataDict];
    if (!v10)
    {
      v54 = v8;
      v55 = v9;
      v59 = v5;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      selfCopy = self;
      v62 = *MEMORY[0x277CE5E70];
      v15 = [(AVAsset *)self->inMovieAsset tracksWithMediaType:?];
      v16 = [v15 countByEnumeratingWithState:&v75 objects:v80 count:16];
      if (!v16)
      {
        goto LABEL_30;
      }

      v17 = v16;
      v18 = *v76;
LABEL_22:
      v19 = 0;
      while (1)
      {
        if (*v76 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v75 + 1) + 8 * v19);
        formatDescriptions = [v20 formatDescriptions];
        firstObject = [formatDescriptions firstObject];

        if (!firstObject)
        {
          goto LABEL_28;
        }

        v23 = CMMetadataFormatDescriptionGetIdentifiers(firstObject);
        if ([v23 containsObject:qword_281504A68])
        {
          break;
        }

LABEL_28:
        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v75 objects:v80 count:16];
          if (!v17)
          {
LABEL_30:

            goto LABEL_60;
          }

          goto LABEL_22;
        }
      }

      v24 = v20;

      if (!v24)
      {
LABEL_60:
        NSLog(&cfstr_AssetHasNoLive.isa);
        self = selfCopy;
        v48 = [(AVAsset *)selfCopy->inMovieAsset tracksWithMediaType:v62];
        v49 = [v48 count];

        if (v49)
        {
          Code = 0;
        }

        else
        {
          Code = -6001;
        }

        v5 = v59;
        v8 = v54;
        v9 = v55;
        goto LABEL_12;
      }

      self = selfCopy;
      v25 = [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:selfCopy->inMovieAsset error:0];
      v26 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v24 outputSettings:0];
      [v26 setAlwaysCopiesSampleData:0];
      v5 = v59;
      v9 = v55;
      if ([v25 canAddOutput:v26])
      {
        [v25 addOutput:v26];
        v27 = [MEMORY[0x277CE6420] assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:v26];
        if ([v25 startReading])
        {
          v50 = v26;
          v51 = v25;
          v52 = v24;
          v28 = objc_autoreleasePoolPush();
          nextTimedMetadataGroup = [v27 nextTimedMetadataGroup];
          Code = 0;
          if (!nextTimedMetadataGroup)
          {
            goto LABEL_59;
          }

          v63 = *MEMORY[0x277CC05B0];
          allocator = *MEMORY[0x277CBECE8];
          v53 = v27;
          while (1)
          {
            v56 = nextTimedMetadataGroup;
            context = v28;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            items = [nextTimedMetadataGroup items];
            v31 = [items countByEnumeratingWithState:&v71 objects:v79 count:16];
            if (!v31)
            {
              goto LABEL_58;
            }

            v32 = v31;
            v33 = *v72;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v72 != v33)
                {
                  objc_enumerationMutation(items);
                }

                v35 = *(*(&v71 + 1) + 8 * i);
                v69 = 0;
                error = 0;
                v68 = 0uLL;
                if (v35)
                {
                  [v35 time];
                }

                identifier = [v35 identifier];
                v37 = [identifier isEqualToString:v3];

                if (v37)
                {
                  v67 = 0;
                  dataType = [v35 dataType];
                  v39 = [dataType isEqualToString:v4];

                  if (v39)
                  {
                    value = [v35 value];
                    Code = sub_2418EA9F4(value, &v67);

                    v41 = v67;
                    if (v67)
                    {
                      if (v60)
                      {
                        v65 = v68;
                        v66 = v69;
                        [(IrisVideoMetadataExtractor *)selfCopy AddFrameDictionary:v67 withCMTime:&v65 toArray:?];
                      }

                      v65 = v68;
                      v66 = v69;
                      [(IrisVideoMetadataExtractor *)selfCopy AddInfoFromMetadata:v41 withTimeStamp:&v65 toArray:obj];
                      goto LABEL_53;
                    }
                  }
                }

                else
                {
                  identifier2 = [v35 identifier];
                  v43 = [identifier2 isEqualToString:@"mdta/com.apple.quicktime.camera-debug-info"];

                  if (v43)
                  {
                    dataType2 = [v35 dataType];
                    v45 = [dataType2 isEqualToString:v63];

                    if (v45)
                    {
                      if (v59)
                      {
                        value2 = [v35 value];
                        v41 = CFPropertyListCreateWithData(allocator, value2, 0, 0, &error);

                        v65 = v68;
                        v66 = v69;
                        [(IrisVideoMetadataExtractor *)selfCopy AddFrameDictionary:v41 withCMTime:&v65 toArray:v59];
LABEL_53:
                        CFRelease(v41);
                      }
                    }
                  }
                }

                if (error)
                {
                  Code = CFErrorGetCode(error);
                  CFRelease(error);
                }
              }

              v32 = [items countByEnumeratingWithState:&v71 objects:v79 count:16];
            }

            while (v32);
LABEL_58:

            objc_autoreleasePoolPop(context);
            v28 = objc_autoreleasePoolPush();
            v27 = v53;
            nextTimedMetadataGroup2 = [v53 nextTimedMetadataGroup];

            nextTimedMetadataGroup = nextTimedMetadataGroup2;
            if (!nextTimedMetadataGroup2)
            {
LABEL_59:
              objc_autoreleasePoolPop(v28);
              v25 = v51;
              [v51 cancelReading];
              self = selfCopy;
              v5 = v59;
              v9 = v55;
              v24 = v52;
              v26 = v50;
              goto LABEL_66;
            }
          }
        }

        NSLog(&cfstr_AvassetreaderF.isa);
        Code = -6003;
LABEL_66:
      }

      else
      {
        NSLog(&cfstr_AvassetreaderC.isa);
        Code = -6002;
      }

      v8 = v54;

      goto LABEL_12;
    }
  }

  Code = v10;
LABEL_12:

LABEL_13:
  objc_storeStrong(&self->_framesMetadataArray, obj);
  if (self->saveAllMetadata)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    [(NSDictionary *)v12 setObject:self->videoTrackMetadataDict forKeyedSubscript:@"VideoTrackMetadata"];
    [(NSDictionary *)v12 setObject:v60 forKeyedSubscript:@"PerFrameMetadataPrivate"];
    if ([v5 count])
    {
      [(NSDictionary *)v12 setObject:v5 forKeyedSubscript:@"PerFrameMetadataDebug"];
    }

    allMetadata = self->allMetadata;
    self->allMetadata = v12;
  }

  if (!Code)
  {
    self->processedFile = 1;
  }

  return Code;
}

@end