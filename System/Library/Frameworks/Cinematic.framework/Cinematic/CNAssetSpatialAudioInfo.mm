@interface CNAssetSpatialAudioInfo
+ (BOOL)isSupported;
+ (void)checkIfContainsSpatialAudio:(id)audio completionHandler:(id)handler;
+ (void)findAssociatedRemixMetadata:(id)metadata completionHandler:(id)handler;
+ (void)loadFromAsset:(id)asset completionHandler:(id)handler;
- (CNAssetSpatialAudioInfo)initWithSpatialAudioTrack:(id)track metadataBlob:(id)blob;
- (id)assetReaderOutputSettingsForContentType:(int64_t)type;
- (id)assetWriterInputSettingsForContentType:(int64_t)type;
- (id)audioMixWithEffectIntensity:(float)intensity renderingStyle:(int64_t)style;
@end

@implementation CNAssetSpatialAudioInfo

+ (void)findAssociatedRemixMetadata:(id)metadata completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  asset = [metadataCopy asset];
  v18 = 0;
  formatDescriptions = [metadataCopy formatDescriptions];
  getEligibleCinematicAudioVersion(formatDescriptions);

  v9 = *MEMORY[0x277CE5E70];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke;
  v13[3] = &unk_278A16070;
  v15 = metadataCopy;
  v16 = handlerCopy;
  v17 = 0;
  v14 = asset;
  v10 = metadataCopy;
  v11 = asset;
  v12 = handlerCopy;
  [v11 loadTracksWithMediaType:v9 completionHandler:v13];
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_1();
    }

LABEL_4:

    (*(*(a1 + 48) + 16))();
    goto LABEL_50;
  }

  if (![v5 count])
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_5();
    }

    goto LABEL_4;
  }

  v43 = v5;
  v44 = a1;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v52 + 1) + 8 * v11);
        v13 = [v12 formatDescriptions];
        if ([v13 count])
        {
          v14 = 0;
          while (1)
          {
            v15 = [v13 objectAtIndex:v14];
            if (CMFormatDescriptionGetMediaType(v15) == 1835365473 && CMFormatDescriptionGetMediaSubType(v15) == 1835360888)
            {
              Identifiers = CMMetadataFormatDescriptionGetIdentifiers(v15);
              v60.length = CFArrayGetCount(Identifiers);
              v60.location = 0;
              if (CFArrayContainsValue(Identifiers, v60, @"mdta/com.apple.quicktime.cinematic-audio"))
              {
                break;
              }
            }

            if (++v14 >= [v13 count])
            {
              goto LABEL_17;
            }
          }

          v17 = v12;

          if (v17)
          {

            v20 = (v44 + 32);
            v21 = *(v44 + 32);
            v56 = *MEMORY[0x277CC08F0];
            v57 = *(MEMORY[0x277CC08F0] + 16);
            v22 = [v17 makeSampleCursorWithPresentationTimeStamp:&v56];
            v23 = v22;
            obja = v21;
            if (v22)
            {
              v24 = [objc_alloc(MEMORY[0x277CE6628]) initWithStartCursor:v22];
              v25 = [objc_alloc(MEMORY[0x277CE6618]) initWithAsset:v21 timebase:0];
              [v24 setDirection:1];
              [v24 setPreferredMinSampleCount:1];
              [v24 setMaxSampleCount:1];
              v26 = [v25 createSampleBufferForRequest:v24 error:0];
              v27 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:v26];
              v28 = [v27 items];
              v29 = [v28 indexOfObjectPassingTest:&__block_literal_global_54];

              if (v29 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v30 = 0;
                v31 = 0;
                v32 = 0;
                goto LABEL_41;
              }

              v34 = [v27 items];
              v32 = [v34 objectAtIndex:v29];

              if (v32)
              {
                v33 = [v32 dataValue];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = v33;
                  v31 = 1;
                  v30 = v33;
                }

                else
                {
                  v30 = 0;
                  v31 = 0;
                }

                v20 = (v44 + 32);
                goto LABEL_40;
              }

              v30 = 0;
              v31 = 0;
              v20 = (v44 + 32);
            }

            else
            {
              v33 = _CNLogSystem();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_2(v33);
              }

              v30 = 0;
              v24 = 0;
              v25 = 0;
              v31 = 0;
              v32 = 0;
              v27 = 0;
LABEL_40:
            }

LABEL_41:

            v36 = v30;
            if ((v31 & 1) == 0)
            {
              v38 = _CNLogSystem();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_3(v20);
              }

              v37 = *(*(v44 + 48) + 16);
              goto LABEL_47;
            }

            if (*(v44 + 56) == 65537)
            {
              v37 = *(*(v44 + 48) + 16);
LABEL_47:
              v37();

              goto LABEL_49;
            }

            v39 = *MEMORY[0x277CE6198];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_1;
            v47[3] = &unk_278A16048;
            v48 = *(v44 + 40);
            v49 = *(v44 + 32);
            v40 = *(v44 + 48);
            v50 = v36;
            v51 = v40;
            v41 = v36;
            [v17 loadAssociatedTracksOfType:v39 completionHandler:v47];

            goto LABEL_49;
          }
        }

        else
        {
LABEL_17:
        }

        ++v11;
      }

      while (v11 != v9);
      v18 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      v9 = v18;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v19 = _CNLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_4();
  }

  (*(*(v44 + 48) + 16))();
LABEL_49:
  v6 = 0;
  v5 = v43;
LABEL_50:

  v42 = *MEMORY[0x277D85DE8];
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_1(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = *MEMORY[0x277CE5E48];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 mediaType];
          if ([v14 isEqualToString:v11])
          {
            v15 = [v13 isEqual:a1[4]];

            if (v15)
            {

              v16 = a1[6];
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_1_cold_1(v6, a1);
    }
  }

LABEL_17:
  (*(a1[7] + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isSupported
{
  if (isSupported_checkDeviceSupportsOnce != -1)
  {
    +[CNAssetSpatialAudioInfo isSupported];
  }

  return isSupported_audioMixIsSupported != 0;
}

void __38__CNAssetSpatialAudioInfo_isSupported__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    isSupported_audioMixIsSupported = [v0 BOOLValue];
    v0 = v1;
  }
}

- (CNAssetSpatialAudioInfo)initWithSpatialAudioTrack:(id)track metadataBlob:(id)blob
{
  trackCopy = track;
  blobCopy = blob;
  v12.receiver = self;
  v12.super_class = CNAssetSpatialAudioInfo;
  v9 = [(CNAssetSpatialAudioInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_spatialAudioTrack, track);
    objc_storeStrong(&v10->_metadataBlob, blob);
  }

  return v10;
}

+ (void)loadFromAsset:(id)asset completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  if (!+[CNAssetSpatialAudioInfo isSupported])
  {
    v9 = _CNLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CNAssetSpatialAudioInfo loadFromAsset:completionHandler:];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = _CNLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CNAssetSpatialAudioInfo loadFromAsset:completionHandler:];
    }

LABEL_8:

    v8 = _CNCinematicError(5, 0);
    handlerCopy[2](handlerCopy, 0, v8);
    goto LABEL_9;
  }

  v7 = *MEMORY[0x277CE5E48];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke;
  v10[3] = &unk_278A16018;
  v11 = assetCopy;
  v12 = handlerCopy;
  [v11 loadTracksWithMediaType:v7 completionHandler:v10];

  v8 = v11;
LABEL_9:
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v36 = 0;
  if (v6)
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_cold_1(v6, a1);
    }

    v8 = *(a1 + 40);
    v9 = _CNCinematicError(2, v6);
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v27 = a1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * v14);
        v16 = [v15 formatDescriptions];
        EligibleCinematicAudioVersion = getEligibleCinematicAudioVersion(v16);

        if (EligibleCinematicAudioVersion)
        {
          v18 = [v15 formatDescriptions];
          v19 = [v18 objectAtIndexedSubscript:0];

          mFormatID = CMAudioFormatDescriptionGetRichestDecodableFormat(v19)->mASBD.mFormatID;
          v21 = mFormatID == 1634754915 || mFormatID == 1902211171;
          v22 = v21 || mFormatID == 1667330147;
          if (v22 && HIWORD(v36) << 16 == 0x10000)
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_22;
        }
      }

      v23 = v15;

      if (!v23)
      {
        goto LABEL_25;
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11;
      v28[3] = &unk_278A160E0;
      v29 = v23;
      v31 = *(v27 + 40);
      v30 = *(v27 + 32);
      v9 = v23;
      [v9 loadValuesAsynchronouslyForKeys:&unk_284A06F88 completionHandler:v28];

      v6 = 0;
    }

    else
    {
LABEL_22:

LABEL_25:
      v24 = _CNLogSystem();
      v6 = 0;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_cold_2(v27);
      }

      v25 = *(v27 + 40);
      v9 = _CNCinematicError(3, 0);
      (*(v25 + 16))(v25, 0, v9);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 statusOfValueForKey:@"playable" error:&v12];
  v4 = v12;
  if (v3 != 2)
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11_cold_1(v4, a1);
    }

    goto LABEL_8;
  }

  if (![*(a1 + 32) isPlayable])
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11_cold_2(a1);
    }

LABEL_8:

    v8 = *(a1 + 48);
    v6 = _CNCinematicError(3, 0);
    (*(v8 + 16))(v8, 0, v6);
    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_2;
  v9[3] = &unk_278A160B8;
  v11 = *(a1 + 48);
  v10 = *(a1 + 32);
  [CNAssetSpatialAudioInfo findAssociatedRemixMetadata:v5 completionHandler:v9];

  v6 = v11;
LABEL_9:
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6 = v3;
  if (v3)
  {
    v5 = [[CNAssetSpatialAudioInfo alloc] initWithSpatialAudioTrack:*(a1 + 32) metadataBlob:v3];
    (*(v4 + 16))(v4, v5, 0);
  }

  else
  {
    v5 = _CNCinematicError(3, 0);
    (*(v4 + 16))(v4, 0, v5);
  }
}

+ (void)checkIfContainsSpatialAudio:(id)audio completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CNAssetSpatialAudioInfo_checkIfContainsSpatialAudio_completionHandler___block_invoke;
  v7[3] = &unk_278A16108;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [CNAssetSpatialAudioInfo loadFromAsset:audio completionHandler:v7];
}

uint64_t __73__CNAssetSpatialAudioInfo_checkIfContainsSpatialAudio_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v3 + 16))(v3, v5);
}

- (id)audioMixWithEffectIntensity:(float)intensity renderingStyle:(int64_t)style
{
  v18[1] = *MEMORY[0x277D85DE8];
  audioMix = [MEMORY[0x277CE6538] audioMix];
  v8 = objc_alloc_init(MEMORY[0x277CE6540]);
  [v8 setTrackID:{-[AVAssetTrack trackID](self->_spatialAudioTrack, "trackID")}];
  v16 = *MEMORY[0x277CC08F0];
  v15 = v16;
  v17 = *(MEMORY[0x277CC08F0] + 16);
  v9 = v17;
  [v8 setDialogMixBias:&v16 atTime:{COERCE_DOUBLE(__PAIR64__(DWORD1(v16), LODWORD(intensity)))}];
  *&v10 = style;
  v16 = v15;
  v17 = v9;
  [v8 setRenderingStyle:&v16 atTime:v10];
  v11 = [MEMORY[0x277CE6488] cinematicAudioEffectWithData:self->_metadataBlob];
  [v8 addEffect:v11];

  v18[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [audioMix setInputParameters:v12];

  v13 = *MEMORY[0x277D85DE8];

  return audioMix;
}

- (id)assetReaderOutputSettingsForContentType:(int64_t)type
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v5 = FOAPlusDialogChannelLayoutAsData();
  }

  else
  {
    v11[0] = xmmword_236F67F70;
    v11[1] = unk_236F67F80;
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:32];
  }

  v6 = v5;
  [dictionary setValue:v5 forKey:*MEMORY[0x277CB8250]];

LABEL_6:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1819304813];
  [dictionary setValue:v7 forKey:*MEMORY[0x277CB8280]];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:32];
  [dictionary setValue:v8 forKey:*MEMORY[0x277CB8288]];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [dictionary setValue:v9 forKey:*MEMORY[0x277CB82A0]];

  return dictionary;
}

- (id)assetWriterInputSettingsForContentType:(int64_t)type
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  formatDescriptions = [(AVAssetTrack *)self->_spatialAudioTrack formatDescriptions];
  v7 = [formatDescriptions objectAtIndexedSubscript:0];

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v7);
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v9 = FOAPlusDialogChannelLayoutAsData();
    [dictionary setValue:v9 forKey:*MEMORY[0x277CB8250]];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:StreamBasicDescription->mFormatID];
    [dictionary setValue:v10 forKey:*MEMORY[0x277CB8280]];

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:StreamBasicDescription->mSampleRate];
    [dictionary setValue:v11 forKey:*MEMORY[0x277CB82E0]];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:480000];
    [dictionary setValue:v12 forKey:*MEMORY[0x277CB8258]];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    v14 = MEMORY[0x277CB8270];
  }

  else
  {
    v19[0] = xmmword_236F67F70;
    v19[1] = unk_236F67F80;
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:32];
    [dictionary setValue:v15 forKey:*MEMORY[0x277CB8250]];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1633772320];
    [dictionary setValue:v16 forKey:*MEMORY[0x277CB8280]];

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:StreamBasicDescription->mSampleRate];
    [dictionary setValue:v17 forKey:*MEMORY[0x277CB82E0]];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:128000];
    v14 = MEMORY[0x277CB8258];
  }

  [dictionary setValue:v13 forKey:*v14];

LABEL_6:

  return dictionary;
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_2(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = **&MEMORY[0x277CC08F0];
  Seconds = CMTimeGetSeconds(&v4);
  LODWORD(v4.value) = 134217984;
  *(&v4.value + 4) = Seconds;
  _os_log_error_impl(&dword_236F52000, a1, OS_LOG_TYPE_ERROR, "failed to create cursor at cursorTime %0.3f, bad movie", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_3(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_1_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_236F52000, v3, v4, "Error: (%@) no eligible referent tracks found for metadata track %@");
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)loadFromAsset:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_236F52000, v3, v4, "Error: (%@) loading video tracks in asset %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_236F52000, v3, v4, "Error: (%@) failed to load playable property of asset %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end