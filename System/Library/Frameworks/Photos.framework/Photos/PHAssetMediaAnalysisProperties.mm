@interface PHAssetMediaAnalysisProperties
+ (id)additionalPropertiesToFetchOnPrimaryObject;
+ (id)propertiesToFetch;
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)animatedStickerTimeRange;
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)bestVideoTimeRange;
- (CGRect)bestPlaybackRect;
- (PHAssetMediaAnalysisProperties)initWithDefaultValues;
- (PHAssetMediaAnalysisProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetMediaAnalysisProperties

- (CGRect)bestPlaybackRect
{
  x = self->_bestPlaybackRect.origin.x;
  y = self->_bestPlaybackRect.origin.y;
  width = self->_bestPlaybackRect.size.width;
  height = self->_bestPlaybackRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)animatedStickerTimeRange
{
  v3 = *&self[5].var0.var3;
  *&retstr->var0.var0 = *&self[5].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[5].var1.var1;
  return self;
}

- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)bestVideoTimeRange
{
  v3 = *&self[4].var0.var3;
  *&retstr->var0.var0 = *&self[4].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[4].var1.var1;
  return self;
}

- (PHAssetMediaAnalysisProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v179.receiver = self;
  v179.super_class = PHAssetMediaAnalysisProperties;
  v10 = [(PHAssetMediaAnalysisProperties *)&v179 init];

  if (!v10)
  {
    goto LABEL_174;
  }

  v175 = assetCopy;
  objc_storeWeak(&v10->super._asset, assetCopy);
  if (prefetchedCopy)
  {
    v11 = @"mediaAnalysisAttributes.mediaAnalysisTimeStamp";
  }

  else
  {
    v11 = @"mediaAnalysisTimeStamp";
  }

  v12 = [dictionaryCopy objectForKey:v11];

  if (!v12)
  {
    if (prefetchedCopy)
    {
      v98 = @"mediaAnalysisAttributes.blurrinessScore";
    }

    else
    {
      v98 = @"blurrinessScore";
    }

    [(PHAssetMediaAnalysisProperties *)v10 initWithDefaultValues];
    v99 = [dictionaryCopy objectForKeyedSubscript:v98];
    v100 = v99;
    if (v99)
    {
      [v99 floatValue];
      v10->_blurrinessScore = v101;
    }

    if (prefetchedCopy)
    {
      v102 = @"mediaAnalysisAttributes.exposureScore";
    }

    else
    {
      v102 = @"exposureScore";
    }

    v103 = [dictionaryCopy objectForKeyedSubscript:v102];
    v104 = v103;
    if (v103)
    {
      [v103 floatValue];
      v10->_exposureScore = v105;
    }

    if (prefetchedCopy)
    {
      v106 = @"mediaAnalysisAttributes.wallpaperScore";
    }

    else
    {
      v106 = @"wallpaperScore";
    }

    v107 = [dictionaryCopy objectForKeyedSubscript:v106];
    v108 = v107;
    if (v107)
    {
      [v107 floatValue];
      v10->_wallpaperScore = v109;
    }

    if (prefetchedCopy)
    {
      v110 = @"mediaAnalysisAttributes.syndicationProcessingValue";
    }

    else
    {
      v110 = @"syndicationProcessingValue";
    }

    v111 = [dictionaryCopy objectForKeyedSubscript:v110];
    v112 = v111;
    if (v111)
    {
      v10->_syndicationProcessingValue = [v111 unsignedShortValue];
    }

    if (prefetchedCopy)
    {
      v113 = @"mediaAnalysisAttributes.syndicationProcessingVersion";
    }

    else
    {
      v113 = @"syndicationProcessingVersion";
    }

    v114 = [dictionaryCopy objectForKeyedSubscript:v113];
    v115 = v114;
    if (v114)
    {
      v10->_syndicationProcessingVersion = [v114 unsignedLongLongValue];
    }

    v174 = v104;
    if (prefetchedCopy)
    {
      v116 = @"mediaAnalysisAttributes.colorNormalizationData";
    }

    else
    {
      v116 = @"colorNormalizationData";
    }

    v117 = [dictionaryCopy objectForKeyedSubscript:v116];
    if (v117)
    {
      objc_storeStrong(&v10->_colorNormalizationData, v117);
    }

    v118 = v100;
    if (prefetchedCopy)
    {
      v119 = @"mediaAnalysisAttributes.probableRotationDirection";
    }

    else
    {
      v119 = @"probableRotationDirection";
    }

    v120 = [dictionaryCopy objectForKeyedSubscript:v119];
    v121 = v120;
    if (v120)
    {
      v10->_probableRotationDirection = [v120 unsignedIntegerValue];
    }

    if (prefetchedCopy)
    {
      v122 = @"mediaAnalysisAttributes.probableRotationDirectionConfidence";
    }

    else
    {
      v122 = @"probableRotationDirectionConfidence";
    }

    v123 = [dictionaryCopy objectForKeyedSubscript:v122];
    v124 = v123;
    if (v123)
    {
      [v123 floatValue];
      v10->_probableRotationDirectionConfidence = v125;
    }

    if (prefetchedCopy)
    {
      goto LABEL_87;
    }

LABEL_129:
    v97 = @"mediaAnalysisVersion";
    goto LABEL_130;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:v11];
  mediaAnalysisTimeStamp = v10->_mediaAnalysisTimeStamp;
  v10->_mediaAnalysisTimeStamp = v13;

  if (prefetchedCopy)
  {
    v15 = @"mediaAnalysisAttributes.bestVideoRangeDurationTimeScale";
  }

  else
  {
    v15 = @"bestVideoRangeDurationTimeScale";
  }

  if (prefetchedCopy)
  {
    v16 = @"mediaAnalysisAttributes.bestVideoRangeDurationValue";
  }

  else
  {
    v16 = @"bestVideoRangeDurationValue";
  }

  if (prefetchedCopy)
  {
    v17 = @"mediaAnalysisAttributes.bestVideoRangeStartTimeScale";
  }

  else
  {
    v17 = @"bestVideoRangeStartTimeScale";
  }

  if (prefetchedCopy)
  {
    v18 = @"mediaAnalysisAttributes.bestVideoRangeStartValue";
  }

  else
  {
    v18 = @"bestVideoRangeStartValue";
  }

  if (prefetchedCopy)
  {
    v19 = @"mediaAnalysisAttributes.animatedStickerRangeDurationTimeScale";
  }

  else
  {
    v19 = @"animatedStickerRangeDurationTimeScale";
  }

  if (prefetchedCopy)
  {
    v20 = @"mediaAnalysisAttributes.animatedStickerRangeDurationValue";
  }

  else
  {
    v20 = @"animatedStickerRangeDurationValue";
  }

  if (prefetchedCopy)
  {
    v21 = @"mediaAnalysisAttributes.animatedStickerRangeStartTimeScale";
  }

  else
  {
    v21 = @"animatedStickerRangeStartTimeScale";
  }

  v22 = @"animatedStickerRangeStartValue";
  if (prefetchedCopy)
  {
    v22 = @"mediaAnalysisAttributes.animatedStickerRangeStartValue";
  }

  v168 = v21;
  v170 = v22;
  v23 = @"mediaAnalysisAttributes.packedBestPlaybackRect";
  if (!prefetchedCopy)
  {
    v23 = @"packedBestPlaybackRect";
  }

  v172 = v23;
  v24 = [dictionaryCopy objectForKeyedSubscript:v15];
  intValue = [v24 intValue];

  v26 = [dictionaryCopy objectForKeyedSubscript:v16];
  longLongValue = [v26 longLongValue];

  v28 = [dictionaryCopy objectForKeyedSubscript:v17];
  intValue2 = [v28 intValue];

  v30 = [dictionaryCopy objectForKeyedSubscript:v18];
  longLongValue2 = [v30 longLongValue];

  CMTimeMake(&start, longLongValue2, intValue2);
  CMTimeMake(&duration, longLongValue, intValue);
  CMTimeRangeMake(&v178, &start, &duration);
  v32 = *&v178.start.value;
  v33 = *&v178.duration.timescale;
  *&v10->_bestVideoTimeRange.start.epoch = *&v178.start.epoch;
  *&v10->_bestVideoTimeRange.duration.timescale = v33;
  *&v10->_bestVideoTimeRange.start.value = v32;
  v34 = [dictionaryCopy objectForKeyedSubscript:v19];
  intValue3 = [v34 intValue];

  v36 = [dictionaryCopy objectForKeyedSubscript:v20];
  longLongValue3 = [v36 longLongValue];

  v38 = [dictionaryCopy objectForKeyedSubscript:v168];
  LODWORD(longLongValue) = [v38 intValue];

  v39 = [dictionaryCopy objectForKeyedSubscript:v170];
  longLongValue4 = [v39 longLongValue];

  CMTimeMake(&start, longLongValue4, longLongValue);
  CMTimeMake(&duration, longLongValue3, intValue3);
  CMTimeRangeMake(&v178, &start, &duration);
  v41 = *&v178.start.value;
  v42 = *&v178.duration.timescale;
  *&v10->_animatedStickerTimeRange.start.epoch = *&v178.start.epoch;
  *&v10->_animatedStickerTimeRange.duration.timescale = v42;
  *&v10->_animatedStickerTimeRange.start.value = v41;
  v43 = [dictionaryCopy objectForKeyedSubscript:v172];
  longLongValue5 = [v43 longLongValue];

  if (longLongValue5)
  {
    PLSplitToCGRectFromInt64();
  }

  if (prefetchedCopy)
  {
    v45 = @"mediaAnalysisAttributes.blurrinessScore";
  }

  else
  {
    v45 = @"blurrinessScore";
  }

  if (prefetchedCopy)
  {
    v46 = @"mediaAnalysisAttributes.exposureScore";
  }

  else
  {
    v46 = @"exposureScore";
  }

  if (prefetchedCopy)
  {
    v47 = @"mediaAnalysisAttributes.wallpaperScore";
  }

  else
  {
    v47 = @"wallpaperScore";
  }

  if (prefetchedCopy)
  {
    v48 = @"mediaAnalysisAttributes.autoplaySuggestionScore";
  }

  else
  {
    v48 = @"autoplaySuggestionScore";
  }

  if (prefetchedCopy)
  {
    v49 = @"mediaAnalysisAttributes.videoStickerSuggestionScore";
  }

  else
  {
    v49 = @"videoStickerSuggestionScore";
  }

  if (prefetchedCopy)
  {
    v50 = @"mediaAnalysisAttributes.videoScore";
  }

  else
  {
    v50 = @"videoScore";
  }

  if (prefetchedCopy)
  {
    v51 = @"mediaAnalysisAttributes.activityScore";
  }

  else
  {
    v51 = @"activityScore";
  }

  v52 = @"mediaAnalysisAttributes.audioScore";
  if (!prefetchedCopy)
  {
    v52 = @"audioScore";
  }

  v158 = v52;
  v53 = @"settlingEffectScore";
  if (prefetchedCopy)
  {
    v53 = @"mediaAnalysisAttributes.settlingEffectScore";
  }

  v159 = v53;
  if (prefetchedCopy)
  {
    v54 = @"mediaAnalysisAttributes.faceCount";
  }

  else
  {
    v54 = @"faceCount";
  }

  v160 = v54;
  if (prefetchedCopy)
  {
    v55 = @"mediaAnalysisAttributes.audioClassification";
  }

  else
  {
    v55 = @"audioClassification";
  }

  v56 = @"probableRotationDirection";
  if (prefetchedCopy)
  {
    v56 = @"mediaAnalysisAttributes.probableRotationDirection";
  }

  v161 = v55;
  v162 = v56;
  if (prefetchedCopy)
  {
    v57 = @"mediaAnalysisAttributes.probableRotationDirectionConfidence";
  }

  else
  {
    v57 = @"probableRotationDirectionConfidence";
  }

  v58 = @"mediaAnalysisAttributes.colorNormalizationData";
  if (!prefetchedCopy)
  {
    v58 = @"colorNormalizationData";
  }

  v163 = v57;
  v164 = v58;
  v59 = @"screenTimeDeviceImageSensitivity";
  if (prefetchedCopy)
  {
    v59 = @"mediaAnalysisAttributes.screenTimeDeviceImageSensitivity";
  }

  v165 = v59;
  if (prefetchedCopy)
  {
    v60 = @"mediaAnalysisAttributes.syndicationProcessingValue";
  }

  else
  {
    v60 = @"syndicationProcessingValue";
  }

  v166 = v60;
  if (prefetchedCopy)
  {
    v61 = @"mediaAnalysisAttributes.syndicationProcessingVersion";
  }

  else
  {
    v61 = @"syndicationProcessingVersion";
  }

  v62 = @"vaAnalysisVersion";
  if (prefetchedCopy)
  {
    v62 = @"mediaAnalysisAttributes.vaAnalysisVersion";
  }

  v167 = v61;
  v169 = v62;
  if (prefetchedCopy)
  {
    v63 = @"mediaAnalysisAttributes.vaAnalysisTimestamp";
  }

  else
  {
    v63 = @"vaAnalysisTimestamp";
  }

  v64 = @"mediaAnalysisAttributes.vaLocationAnalysisVersion";
  if (!prefetchedCopy)
  {
    v64 = @"vaLocationAnalysisVersion";
  }

  v171 = v63;
  v173 = v64;
  v65 = [dictionaryCopy objectForKeyedSubscript:v45];
  [v65 floatValue];
  v10->_blurrinessScore = v66;

  v67 = [dictionaryCopy objectForKeyedSubscript:v46];
  [v67 floatValue];
  v10->_exposureScore = v68;

  v69 = [dictionaryCopy objectForKeyedSubscript:v47];
  [v69 floatValue];
  v10->_wallpaperScore = v70;

  v71 = [dictionaryCopy objectForKeyedSubscript:v48];
  [v71 floatValue];
  v10->_autoplaySuggestionScore = v72;

  v73 = [dictionaryCopy objectForKeyedSubscript:v49];
  [v73 floatValue];
  v10->_videoStickerSuggestionScore = v74;

  v75 = [dictionaryCopy objectForKeyedSubscript:v50];
  [v75 floatValue];
  v10->_videoScore = v76;

  v77 = [dictionaryCopy objectForKeyedSubscript:v51];
  [v77 floatValue];
  v10->_activityScore = v78;

  v79 = [dictionaryCopy objectForKeyedSubscript:v158];
  [v79 floatValue];
  v10->_audioScore = v80;

  v81 = [dictionaryCopy objectForKeyedSubscript:v159];
  [v81 floatValue];
  v10->_settlingEffectScore = v82;

  v83 = [dictionaryCopy objectForKeyedSubscript:v160];
  v10->_faceCount = [v83 unsignedIntegerValue];

  v84 = [dictionaryCopy objectForKeyedSubscript:v161];
  v10->_audioClassification = [v84 shortValue];

  v85 = [dictionaryCopy objectForKeyedSubscript:v162];
  v10->_probableRotationDirection = [v85 shortValue];

  v86 = [dictionaryCopy objectForKeyedSubscript:v163];
  [v86 floatValue];
  v10->_probableRotationDirectionConfidence = v87;

  v88 = [dictionaryCopy objectForKeyedSubscript:v164];
  colorNormalizationData = v10->_colorNormalizationData;
  v10->_colorNormalizationData = v88;

  v90 = [dictionaryCopy objectForKeyedSubscript:v165];
  v10->_screenTimeDeviceImageSensitivity = [v90 shortValue];

  v91 = [dictionaryCopy objectForKeyedSubscript:v166];
  v10->_syndicationProcessingValue = [v91 unsignedShortValue];

  v92 = [dictionaryCopy objectForKeyedSubscript:v167];
  v10->_syndicationProcessingVersion = [v92 unsignedLongLongValue];

  v93 = [dictionaryCopy objectForKeyedSubscript:v169];
  v10->_privateEncryptedComputeAnalysisVersion = [v93 integerValue];

  v94 = [dictionaryCopy objectForKeyedSubscript:v171];
  privateEncryptedComputeAnalysisTimestamp = v10->_privateEncryptedComputeAnalysisTimestamp;
  v10->_privateEncryptedComputeAnalysisTimestamp = v94;

  v96 = [dictionaryCopy objectForKeyedSubscript:v173];
  v10->_privateEncryptedComputeLocationAnalysisVersion = [v96 integerValue];

  if (!prefetchedCopy)
  {
    goto LABEL_129;
  }

LABEL_87:
  v97 = @"mediaAnalysisAttributes.mediaAnalysisVersion";
LABEL_130:
  v126 = [dictionaryCopy objectForKeyedSubscript:v97];
  v10->_mediaAnalysisVersion = [v126 unsignedLongLongValue];

  if (prefetchedCopy)
  {
    v127 = @"mediaAnalysisAttributes.mediaAnalysisImageVersion";
  }

  else
  {
    v127 = @"mediaAnalysisImageVersion";
  }

  if (prefetchedCopy)
  {
    v128 = @"mediaAnalysisAttributes.imageCaptionVersion";
  }

  else
  {
    v128 = @"imageCaptionVersion";
  }

  if (prefetchedCopy)
  {
    v129 = @"mediaAnalysisAttributes.videoCaptionVersion";
  }

  else
  {
    v129 = @"videoCaptionVersion";
  }

  if (prefetchedCopy)
  {
    v130 = @"mediaAnalysisAttributes.imageEmbeddingVersion";
  }

  else
  {
    v130 = @"imageEmbeddingVersion";
  }

  if (prefetchedCopy)
  {
    v131 = @"mediaAnalysisAttributes.videoEmbeddingVersion";
  }

  else
  {
    v131 = @"videoEmbeddingVersion";
  }

  if (prefetchedCopy)
  {
    v132 = @"videoKeyFrameTimeScale";
  }

  else
  {
    v132 = @"asset.videoKeyFrameTimeScale";
  }

  if (prefetchedCopy)
  {
    v133 = @"videoKeyFrameValue";
  }

  else
  {
    v133 = @"asset.videoKeyFrameValue";
  }

  v134 = [dictionaryCopy objectForKeyedSubscript:v127];
  v10->_mediaAnalysisImageVersion = [v134 shortValue];

  v135 = [dictionaryCopy objectForKeyedSubscript:v128];
  v10->_imageCaptionVersion = [v135 shortValue];

  v136 = [dictionaryCopy objectForKeyedSubscript:v129];
  v10->_videoCaptionVersion = [v136 shortValue];

  v137 = [dictionaryCopy objectForKeyedSubscript:v130];
  v10->_imageEmbeddingVersion = [v137 shortValue];

  v138 = [dictionaryCopy objectForKeyedSubscript:v131];
  v10->_videoEmbeddingVersion = [v138 shortValue];

  v139 = [dictionaryCopy objectForKeyedSubscript:v132];
  v140 = [dictionaryCopy objectForKeyedSubscript:v133];
  v141 = v140;
  p_bestKeyFrameTime = &v10->_bestKeyFrameTime;
  if (v140 && v139)
  {
    CMTimeMake(&v178.start, [v140 longLongValue], objc_msgSend(v139, "intValue"));
    v143 = *&v178.start.value;
    v10->_bestKeyFrameTime.epoch = v178.start.epoch;
    *&p_bestKeyFrameTime->value = v143;
  }

  else
  {
    v144 = MEMORY[0x1E6960C70];
    *&p_bestKeyFrameTime->value = *MEMORY[0x1E6960C70];
    v10->_bestKeyFrameTime.epoch = *(v144 + 16);
  }

  if (prefetchedCopy)
  {
    v145 = @"computeSyncAttributes.localAnalysisStage";
  }

  else
  {
    v145 = @"asset.computeSyncAttributes.localAnalysisStage";
  }

  v146 = [dictionaryCopy objectForKeyedSubscript:v145];
  v147 = v146;
  if (v146)
  {
    v10->_localAnalysisStage = [v146 integerValue];
  }

  if (prefetchedCopy)
  {
    v148 = @"computeSyncAttributes.localAnalysisMajorVersion";
  }

  else
  {
    v148 = @"asset.computeSyncAttributes.localAnalysisMajorVersion";
  }

  v149 = [dictionaryCopy objectForKeyedSubscript:v148];
  v150 = v149;
  if (v149)
  {
    v10->_localAnalysisMajorVersion = [v149 integerValue];
  }

  if (prefetchedCopy)
  {
    v151 = @"computeSyncAttributes.cloudComputeStateVersion";
  }

  else
  {
    v151 = @"asset.computeSyncAttributes.cloudComputeStateVersion";
  }

  v152 = [dictionaryCopy objectForKeyedSubscript:v151];
  v153 = [objc_alloc(MEMORY[0x1E6994B78]) initWithString:v152];
  if ([v153 majorVersion])
  {
    v10->_cloudAnalysisMajorVersion = [v153 majorVersion];
    v10->_cloudAnalysisStage = [v153 stage];
  }

  if (prefetchedCopy)
  {
    v154 = @"mediaAnalysisAttributes.videoSensitivityAnalysisVersion";
  }

  else
  {
    v154 = @"videoSensitivityAnalysisVersion";
  }

  v155 = [dictionaryCopy objectForKeyedSubscript:v154];
  v10->_videoSensitivityAnalysisVersion = [v155 shortValue];

  assetCopy = v175;
LABEL_174:
  v156 = v10;

  return v156;
}

- (PHAssetMediaAnalysisProperties)initWithDefaultValues
{
  self->_mediaAnalysisVersion = 0;
  self->_mediaAnalysisImageVersion = 0;
  mediaAnalysisTimeStamp = self->_mediaAnalysisTimeStamp;
  self->_mediaAnalysisTimeStamp = 0;

  self->_imageCaptionVersion = 0;
  self->_videoCaptionVersion = 0;
  self->_imageEmbeddingVersion = 0;
  self->_videoEmbeddingVersion = 0;
  v4 = MEMORY[0x1E6960C98];
  v5 = *MEMORY[0x1E6960C98];
  v6 = *(MEMORY[0x1E6960C98] + 16);
  *&self->_bestVideoTimeRange.start.value = *MEMORY[0x1E6960C98];
  *&self->_bestVideoTimeRange.start.epoch = v6;
  v7 = *(v4 + 32);
  *&self->_bestVideoTimeRange.duration.timescale = v7;
  *&self->_animatedStickerTimeRange.start.value = v5;
  *&self->_animatedStickerTimeRange.start.epoch = v6;
  *&self->_animatedStickerTimeRange.duration.timescale = v7;
  self->_bestKeyFrameTime = **&MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E695F050] + 16);
  self->_bestPlaybackRect.origin = *MEMORY[0x1E695F050];
  self->_bestPlaybackRect.size = v8;
  self->_blurrinessScore = 0.5;
  self->_exposureScore = 0.5;
  self->_wallpaperScore = 0.5;
  self->_autoplaySuggestionScore = 0.5;
  self->_videoStickerSuggestionScore = *MEMORY[0x1E69BEA10];
  self->_videoScore = 0.5;
  self->_activityScore = 0.5;
  [objc_opt_class() defaultAudioScore];
  self->_audioScore = v9;
  self->_settlingEffectScore = -1.0;
  self->_faceCount = 0;
  self->_audioClassification = 0;
  self->_probableRotationDirection = 0;
  self->_probableRotationDirectionConfidence = 0.0;
  colorNormalizationData = self->_colorNormalizationData;
  self->_colorNormalizationData = 0;

  self->_syndicationProcessingValue = 0;
  self->_syndicationProcessingVersion = 0;
  self->_localAnalysisStage = 0;
  self->_localAnalysisMajorVersion = 0;
  self->_cloudAnalysisMajorVersion = 0;
  self->_cloudAnalysisStage = 0;
  self->_privateEncryptedComputeAnalysisVersion = 0;
  privateEncryptedComputeAnalysisTimestamp = self->_privateEncryptedComputeAnalysisTimestamp;
  self->_privateEncryptedComputeAnalysisTimestamp = 0;

  self->_videoSensitivityAnalysisVersion = 0;
  return result;
}

+ (id)additionalPropertiesToFetchOnPrimaryObject
{
  pl_dispatch_once();
  v2 = additionalPropertiesToFetchOnPrimaryObject_pl_once_object_61;

  return v2;
}

void __76__PHAssetMediaAnalysisProperties_additionalPropertiesToFetchOnPrimaryObject__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"videoKeyFrameTimeScale";
  v3[1] = @"videoKeyFrameValue";
  v3[2] = @"computeSyncAttributes.localAnalysisStage";
  v3[3] = @"computeSyncAttributes.localAnalysisMajorVersion";
  v3[4] = @"computeSyncAttributes.cloudComputeStateVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = [v0 copy];
  v2 = additionalPropertiesToFetchOnPrimaryObject_pl_once_object_61;
  additionalPropertiesToFetchOnPrimaryObject_pl_once_object_61 = v1;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_60;

  return v2;
}

void __51__PHAssetMediaAnalysisProperties_propertiesToFetch__block_invoke()
{
  v3[37] = *MEMORY[0x1E69E9840];
  v3[0] = @"mediaAnalysisTimeStamp";
  v3[1] = @"mediaAnalysisVersion";
  v3[2] = @"mediaAnalysisImageVersion";
  v3[3] = @"imageCaptionVersion";
  v3[4] = @"videoCaptionVersion";
  v3[5] = @"imageEmbeddingVersion";
  v3[6] = @"videoEmbeddingVersion";
  v3[7] = @"bestVideoRangeDurationTimeScale";
  v3[8] = @"bestVideoRangeDurationValue";
  v3[9] = @"bestVideoRangeStartTimeScale";
  v3[10] = @"bestVideoRangeStartValue";
  v3[11] = @"animatedStickerRangeDurationTimeScale";
  v3[12] = @"animatedStickerRangeDurationValue";
  v3[13] = @"animatedStickerRangeStartTimeScale";
  v3[14] = @"animatedStickerRangeStartValue";
  v3[15] = @"packedBestPlaybackRect";
  v3[16] = @"blurrinessScore";
  v3[17] = @"exposureScore";
  v3[18] = @"wallpaperScore";
  v3[19] = @"autoplaySuggestionScore";
  v3[20] = @"videoStickerSuggestionScore";
  v3[21] = @"videoScore";
  v3[22] = @"activityScore";
  v3[23] = @"audioScore";
  v3[24] = @"settlingEffectScore";
  v3[25] = @"faceCount";
  v3[26] = @"audioClassification";
  v3[27] = @"probableRotationDirection";
  v3[28] = @"probableRotationDirectionConfidence";
  v3[29] = @"colorNormalizationData";
  v3[30] = @"screenTimeDeviceImageSensitivity";
  v3[31] = @"syndicationProcessingValue";
  v3[32] = @"syndicationProcessingVersion";
  v3[33] = @"vaAnalysisVersion";
  v3[34] = @"vaAnalysisTimestamp";
  v3[35] = @"vaLocationAnalysisVersion";
  v3[36] = @"videoSensitivityAnalysisVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:37];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_60;
  propertiesToFetch_pl_once_object_60 = v1;
}

@end