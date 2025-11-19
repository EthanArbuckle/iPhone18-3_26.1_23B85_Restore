@interface PHAssetMediaAnalysisProperties
+ (id)additionalPropertiesToFetchOnPrimaryObject;
+ (id)propertiesToFetch;
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)animatedStickerTimeRange;
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)bestVideoTimeRange;
- (CGRect)bestPlaybackRect;
- (PHAssetMediaAnalysisProperties)initWithDefaultValues;
- (PHAssetMediaAnalysisProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
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

- (PHAssetMediaAnalysisProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v179.receiver = self;
  v179.super_class = PHAssetMediaAnalysisProperties;
  v10 = [(PHAssetMediaAnalysisProperties *)&v179 init];

  if (!v10)
  {
    goto LABEL_174;
  }

  v175 = v9;
  objc_storeWeak(&v10->super._asset, v9);
  if (v5)
  {
    v11 = @"mediaAnalysisAttributes.mediaAnalysisTimeStamp";
  }

  else
  {
    v11 = @"mediaAnalysisTimeStamp";
  }

  v12 = [v8 objectForKey:v11];

  if (!v12)
  {
    if (v5)
    {
      v98 = @"mediaAnalysisAttributes.blurrinessScore";
    }

    else
    {
      v98 = @"blurrinessScore";
    }

    [(PHAssetMediaAnalysisProperties *)v10 initWithDefaultValues];
    v99 = [v8 objectForKeyedSubscript:v98];
    v100 = v99;
    if (v99)
    {
      [v99 floatValue];
      v10->_blurrinessScore = v101;
    }

    if (v5)
    {
      v102 = @"mediaAnalysisAttributes.exposureScore";
    }

    else
    {
      v102 = @"exposureScore";
    }

    v103 = [v8 objectForKeyedSubscript:v102];
    v104 = v103;
    if (v103)
    {
      [v103 floatValue];
      v10->_exposureScore = v105;
    }

    if (v5)
    {
      v106 = @"mediaAnalysisAttributes.wallpaperScore";
    }

    else
    {
      v106 = @"wallpaperScore";
    }

    v107 = [v8 objectForKeyedSubscript:v106];
    v108 = v107;
    if (v107)
    {
      [v107 floatValue];
      v10->_wallpaperScore = v109;
    }

    if (v5)
    {
      v110 = @"mediaAnalysisAttributes.syndicationProcessingValue";
    }

    else
    {
      v110 = @"syndicationProcessingValue";
    }

    v111 = [v8 objectForKeyedSubscript:v110];
    v112 = v111;
    if (v111)
    {
      v10->_syndicationProcessingValue = [v111 unsignedShortValue];
    }

    if (v5)
    {
      v113 = @"mediaAnalysisAttributes.syndicationProcessingVersion";
    }

    else
    {
      v113 = @"syndicationProcessingVersion";
    }

    v114 = [v8 objectForKeyedSubscript:v113];
    v115 = v114;
    if (v114)
    {
      v10->_syndicationProcessingVersion = [v114 unsignedLongLongValue];
    }

    v174 = v104;
    if (v5)
    {
      v116 = @"mediaAnalysisAttributes.colorNormalizationData";
    }

    else
    {
      v116 = @"colorNormalizationData";
    }

    v117 = [v8 objectForKeyedSubscript:v116];
    if (v117)
    {
      objc_storeStrong(&v10->_colorNormalizationData, v117);
    }

    v118 = v100;
    if (v5)
    {
      v119 = @"mediaAnalysisAttributes.probableRotationDirection";
    }

    else
    {
      v119 = @"probableRotationDirection";
    }

    v120 = [v8 objectForKeyedSubscript:v119];
    v121 = v120;
    if (v120)
    {
      v10->_probableRotationDirection = [v120 unsignedIntegerValue];
    }

    if (v5)
    {
      v122 = @"mediaAnalysisAttributes.probableRotationDirectionConfidence";
    }

    else
    {
      v122 = @"probableRotationDirectionConfidence";
    }

    v123 = [v8 objectForKeyedSubscript:v122];
    v124 = v123;
    if (v123)
    {
      [v123 floatValue];
      v10->_probableRotationDirectionConfidence = v125;
    }

    if (v5)
    {
      goto LABEL_87;
    }

LABEL_129:
    v97 = @"mediaAnalysisVersion";
    goto LABEL_130;
  }

  v13 = [v8 objectForKeyedSubscript:v11];
  mediaAnalysisTimeStamp = v10->_mediaAnalysisTimeStamp;
  v10->_mediaAnalysisTimeStamp = v13;

  if (v5)
  {
    v15 = @"mediaAnalysisAttributes.bestVideoRangeDurationTimeScale";
  }

  else
  {
    v15 = @"bestVideoRangeDurationTimeScale";
  }

  if (v5)
  {
    v16 = @"mediaAnalysisAttributes.bestVideoRangeDurationValue";
  }

  else
  {
    v16 = @"bestVideoRangeDurationValue";
  }

  if (v5)
  {
    v17 = @"mediaAnalysisAttributes.bestVideoRangeStartTimeScale";
  }

  else
  {
    v17 = @"bestVideoRangeStartTimeScale";
  }

  if (v5)
  {
    v18 = @"mediaAnalysisAttributes.bestVideoRangeStartValue";
  }

  else
  {
    v18 = @"bestVideoRangeStartValue";
  }

  if (v5)
  {
    v19 = @"mediaAnalysisAttributes.animatedStickerRangeDurationTimeScale";
  }

  else
  {
    v19 = @"animatedStickerRangeDurationTimeScale";
  }

  if (v5)
  {
    v20 = @"mediaAnalysisAttributes.animatedStickerRangeDurationValue";
  }

  else
  {
    v20 = @"animatedStickerRangeDurationValue";
  }

  if (v5)
  {
    v21 = @"mediaAnalysisAttributes.animatedStickerRangeStartTimeScale";
  }

  else
  {
    v21 = @"animatedStickerRangeStartTimeScale";
  }

  v22 = @"animatedStickerRangeStartValue";
  if (v5)
  {
    v22 = @"mediaAnalysisAttributes.animatedStickerRangeStartValue";
  }

  v168 = v21;
  v170 = v22;
  v23 = @"mediaAnalysisAttributes.packedBestPlaybackRect";
  if (!v5)
  {
    v23 = @"packedBestPlaybackRect";
  }

  v172 = v23;
  v24 = [v8 objectForKeyedSubscript:v15];
  v25 = [v24 intValue];

  v26 = [v8 objectForKeyedSubscript:v16];
  v27 = [v26 longLongValue];

  v28 = [v8 objectForKeyedSubscript:v17];
  v29 = [v28 intValue];

  v30 = [v8 objectForKeyedSubscript:v18];
  v31 = [v30 longLongValue];

  CMTimeMake(&start, v31, v29);
  CMTimeMake(&duration, v27, v25);
  CMTimeRangeMake(&v178, &start, &duration);
  v32 = *&v178.start.value;
  v33 = *&v178.duration.timescale;
  *&v10->_bestVideoTimeRange.start.epoch = *&v178.start.epoch;
  *&v10->_bestVideoTimeRange.duration.timescale = v33;
  *&v10->_bestVideoTimeRange.start.value = v32;
  v34 = [v8 objectForKeyedSubscript:v19];
  v35 = [v34 intValue];

  v36 = [v8 objectForKeyedSubscript:v20];
  v37 = [v36 longLongValue];

  v38 = [v8 objectForKeyedSubscript:v168];
  LODWORD(v27) = [v38 intValue];

  v39 = [v8 objectForKeyedSubscript:v170];
  v40 = [v39 longLongValue];

  CMTimeMake(&start, v40, v27);
  CMTimeMake(&duration, v37, v35);
  CMTimeRangeMake(&v178, &start, &duration);
  v41 = *&v178.start.value;
  v42 = *&v178.duration.timescale;
  *&v10->_animatedStickerTimeRange.start.epoch = *&v178.start.epoch;
  *&v10->_animatedStickerTimeRange.duration.timescale = v42;
  *&v10->_animatedStickerTimeRange.start.value = v41;
  v43 = [v8 objectForKeyedSubscript:v172];
  v44 = [v43 longLongValue];

  if (v44)
  {
    PLSplitToCGRectFromInt64();
  }

  if (v5)
  {
    v45 = @"mediaAnalysisAttributes.blurrinessScore";
  }

  else
  {
    v45 = @"blurrinessScore";
  }

  if (v5)
  {
    v46 = @"mediaAnalysisAttributes.exposureScore";
  }

  else
  {
    v46 = @"exposureScore";
  }

  if (v5)
  {
    v47 = @"mediaAnalysisAttributes.wallpaperScore";
  }

  else
  {
    v47 = @"wallpaperScore";
  }

  if (v5)
  {
    v48 = @"mediaAnalysisAttributes.autoplaySuggestionScore";
  }

  else
  {
    v48 = @"autoplaySuggestionScore";
  }

  if (v5)
  {
    v49 = @"mediaAnalysisAttributes.videoStickerSuggestionScore";
  }

  else
  {
    v49 = @"videoStickerSuggestionScore";
  }

  if (v5)
  {
    v50 = @"mediaAnalysisAttributes.videoScore";
  }

  else
  {
    v50 = @"videoScore";
  }

  if (v5)
  {
    v51 = @"mediaAnalysisAttributes.activityScore";
  }

  else
  {
    v51 = @"activityScore";
  }

  v52 = @"mediaAnalysisAttributes.audioScore";
  if (!v5)
  {
    v52 = @"audioScore";
  }

  v158 = v52;
  v53 = @"settlingEffectScore";
  if (v5)
  {
    v53 = @"mediaAnalysisAttributes.settlingEffectScore";
  }

  v159 = v53;
  if (v5)
  {
    v54 = @"mediaAnalysisAttributes.faceCount";
  }

  else
  {
    v54 = @"faceCount";
  }

  v160 = v54;
  if (v5)
  {
    v55 = @"mediaAnalysisAttributes.audioClassification";
  }

  else
  {
    v55 = @"audioClassification";
  }

  v56 = @"probableRotationDirection";
  if (v5)
  {
    v56 = @"mediaAnalysisAttributes.probableRotationDirection";
  }

  v161 = v55;
  v162 = v56;
  if (v5)
  {
    v57 = @"mediaAnalysisAttributes.probableRotationDirectionConfidence";
  }

  else
  {
    v57 = @"probableRotationDirectionConfidence";
  }

  v58 = @"mediaAnalysisAttributes.colorNormalizationData";
  if (!v5)
  {
    v58 = @"colorNormalizationData";
  }

  v163 = v57;
  v164 = v58;
  v59 = @"screenTimeDeviceImageSensitivity";
  if (v5)
  {
    v59 = @"mediaAnalysisAttributes.screenTimeDeviceImageSensitivity";
  }

  v165 = v59;
  if (v5)
  {
    v60 = @"mediaAnalysisAttributes.syndicationProcessingValue";
  }

  else
  {
    v60 = @"syndicationProcessingValue";
  }

  v166 = v60;
  if (v5)
  {
    v61 = @"mediaAnalysisAttributes.syndicationProcessingVersion";
  }

  else
  {
    v61 = @"syndicationProcessingVersion";
  }

  v62 = @"vaAnalysisVersion";
  if (v5)
  {
    v62 = @"mediaAnalysisAttributes.vaAnalysisVersion";
  }

  v167 = v61;
  v169 = v62;
  if (v5)
  {
    v63 = @"mediaAnalysisAttributes.vaAnalysisTimestamp";
  }

  else
  {
    v63 = @"vaAnalysisTimestamp";
  }

  v64 = @"mediaAnalysisAttributes.vaLocationAnalysisVersion";
  if (!v5)
  {
    v64 = @"vaLocationAnalysisVersion";
  }

  v171 = v63;
  v173 = v64;
  v65 = [v8 objectForKeyedSubscript:v45];
  [v65 floatValue];
  v10->_blurrinessScore = v66;

  v67 = [v8 objectForKeyedSubscript:v46];
  [v67 floatValue];
  v10->_exposureScore = v68;

  v69 = [v8 objectForKeyedSubscript:v47];
  [v69 floatValue];
  v10->_wallpaperScore = v70;

  v71 = [v8 objectForKeyedSubscript:v48];
  [v71 floatValue];
  v10->_autoplaySuggestionScore = v72;

  v73 = [v8 objectForKeyedSubscript:v49];
  [v73 floatValue];
  v10->_videoStickerSuggestionScore = v74;

  v75 = [v8 objectForKeyedSubscript:v50];
  [v75 floatValue];
  v10->_videoScore = v76;

  v77 = [v8 objectForKeyedSubscript:v51];
  [v77 floatValue];
  v10->_activityScore = v78;

  v79 = [v8 objectForKeyedSubscript:v158];
  [v79 floatValue];
  v10->_audioScore = v80;

  v81 = [v8 objectForKeyedSubscript:v159];
  [v81 floatValue];
  v10->_settlingEffectScore = v82;

  v83 = [v8 objectForKeyedSubscript:v160];
  v10->_faceCount = [v83 unsignedIntegerValue];

  v84 = [v8 objectForKeyedSubscript:v161];
  v10->_audioClassification = [v84 shortValue];

  v85 = [v8 objectForKeyedSubscript:v162];
  v10->_probableRotationDirection = [v85 shortValue];

  v86 = [v8 objectForKeyedSubscript:v163];
  [v86 floatValue];
  v10->_probableRotationDirectionConfidence = v87;

  v88 = [v8 objectForKeyedSubscript:v164];
  colorNormalizationData = v10->_colorNormalizationData;
  v10->_colorNormalizationData = v88;

  v90 = [v8 objectForKeyedSubscript:v165];
  v10->_screenTimeDeviceImageSensitivity = [v90 shortValue];

  v91 = [v8 objectForKeyedSubscript:v166];
  v10->_syndicationProcessingValue = [v91 unsignedShortValue];

  v92 = [v8 objectForKeyedSubscript:v167];
  v10->_syndicationProcessingVersion = [v92 unsignedLongLongValue];

  v93 = [v8 objectForKeyedSubscript:v169];
  v10->_privateEncryptedComputeAnalysisVersion = [v93 integerValue];

  v94 = [v8 objectForKeyedSubscript:v171];
  privateEncryptedComputeAnalysisTimestamp = v10->_privateEncryptedComputeAnalysisTimestamp;
  v10->_privateEncryptedComputeAnalysisTimestamp = v94;

  v96 = [v8 objectForKeyedSubscript:v173];
  v10->_privateEncryptedComputeLocationAnalysisVersion = [v96 integerValue];

  if (!v5)
  {
    goto LABEL_129;
  }

LABEL_87:
  v97 = @"mediaAnalysisAttributes.mediaAnalysisVersion";
LABEL_130:
  v126 = [v8 objectForKeyedSubscript:v97];
  v10->_mediaAnalysisVersion = [v126 unsignedLongLongValue];

  if (v5)
  {
    v127 = @"mediaAnalysisAttributes.mediaAnalysisImageVersion";
  }

  else
  {
    v127 = @"mediaAnalysisImageVersion";
  }

  if (v5)
  {
    v128 = @"mediaAnalysisAttributes.imageCaptionVersion";
  }

  else
  {
    v128 = @"imageCaptionVersion";
  }

  if (v5)
  {
    v129 = @"mediaAnalysisAttributes.videoCaptionVersion";
  }

  else
  {
    v129 = @"videoCaptionVersion";
  }

  if (v5)
  {
    v130 = @"mediaAnalysisAttributes.imageEmbeddingVersion";
  }

  else
  {
    v130 = @"imageEmbeddingVersion";
  }

  if (v5)
  {
    v131 = @"mediaAnalysisAttributes.videoEmbeddingVersion";
  }

  else
  {
    v131 = @"videoEmbeddingVersion";
  }

  if (v5)
  {
    v132 = @"videoKeyFrameTimeScale";
  }

  else
  {
    v132 = @"asset.videoKeyFrameTimeScale";
  }

  if (v5)
  {
    v133 = @"videoKeyFrameValue";
  }

  else
  {
    v133 = @"asset.videoKeyFrameValue";
  }

  v134 = [v8 objectForKeyedSubscript:v127];
  v10->_mediaAnalysisImageVersion = [v134 shortValue];

  v135 = [v8 objectForKeyedSubscript:v128];
  v10->_imageCaptionVersion = [v135 shortValue];

  v136 = [v8 objectForKeyedSubscript:v129];
  v10->_videoCaptionVersion = [v136 shortValue];

  v137 = [v8 objectForKeyedSubscript:v130];
  v10->_imageEmbeddingVersion = [v137 shortValue];

  v138 = [v8 objectForKeyedSubscript:v131];
  v10->_videoEmbeddingVersion = [v138 shortValue];

  v139 = [v8 objectForKeyedSubscript:v132];
  v140 = [v8 objectForKeyedSubscript:v133];
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

  if (v5)
  {
    v145 = @"computeSyncAttributes.localAnalysisStage";
  }

  else
  {
    v145 = @"asset.computeSyncAttributes.localAnalysisStage";
  }

  v146 = [v8 objectForKeyedSubscript:v145];
  v147 = v146;
  if (v146)
  {
    v10->_localAnalysisStage = [v146 integerValue];
  }

  if (v5)
  {
    v148 = @"computeSyncAttributes.localAnalysisMajorVersion";
  }

  else
  {
    v148 = @"asset.computeSyncAttributes.localAnalysisMajorVersion";
  }

  v149 = [v8 objectForKeyedSubscript:v148];
  v150 = v149;
  if (v149)
  {
    v10->_localAnalysisMajorVersion = [v149 integerValue];
  }

  if (v5)
  {
    v151 = @"computeSyncAttributes.cloudComputeStateVersion";
  }

  else
  {
    v151 = @"asset.computeSyncAttributes.cloudComputeStateVersion";
  }

  v152 = [v8 objectForKeyedSubscript:v151];
  v153 = [objc_alloc(MEMORY[0x1E6994B78]) initWithString:v152];
  if ([v153 majorVersion])
  {
    v10->_cloudAnalysisMajorVersion = [v153 majorVersion];
    v10->_cloudAnalysisStage = [v153 stage];
  }

  if (v5)
  {
    v154 = @"mediaAnalysisAttributes.videoSensitivityAnalysisVersion";
  }

  else
  {
    v154 = @"videoSensitivityAnalysisVersion";
  }

  v155 = [v8 objectForKeyedSubscript:v154];
  v10->_videoSensitivityAnalysisVersion = [v155 shortValue];

  v9 = v175;
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