@interface PHMediaProcessingAlgorithmVersionProvider
+ (id)descriptionForVersionProvider:(id)provider;
+ (id)dictionaryForVersionProvider:(id)provider;
+ (id)providerWithCurrentVersions;
- (NSString)description;
- (PHMediaProcessingAlgorithmVersionProvider)initWithProvider:(id)provider;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion mediaAnalysisVersion:(unint64_t)mediaAnalysisVersion;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion mediaAnalysisVersion:(unint64_t)mediaAnalysisVersion mediaAnalysisImageVersion:(signed __int16)self0;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)locationAnalysisVersion mediaAnalysisVersion:(unint64_t)self0 mediaAnalysisImageVersion:(signed __int16)self1 captionGenerationVersion:(signed __int16)self2 imageEmbeddingVersion:(signed __int16)self3 videoEmbeddingVersion:(signed __int16)self4;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)locationAnalysisVersion mediaAnalysisVersion:(unint64_t)self0 mediaAnalysisImageVersion:(signed __int16)self1 captionGenerationVersion:(signed __int16)self2 imageEmbeddingVersion:(signed __int16)self3 videoEmbeddingVersion:(signed __int16)self4 videoSensitivityAnalysisVersion:(signed __int16)self5;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)locationAnalysisVersion mediaAnalysisVersion:(unint64_t)self0 mediaAnalysisImageVersion:(signed __int16)self1 captionGenerationVersion:(signed __int16)self2 imageEmbeddingVersion:(signed __int16)self3 videoEmbeddingVersion:(signed __int16)self4 videoSensitivityAnalysisVersion:(signed __int16)self5 textUnderstandingAlgorithmVersion:(signed __int16)self6 textUnderstandingGatingVersion:(signed __int16)self7;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version imageEmbeddingVersion:(signed __int16)embeddingVersion faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)self0 mediaAnalysisVersion:(unint64_t)self1 mediaAnalysisImageVersion:(signed __int16)self2;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version imageEmbeddingVersion:(signed __int16)embeddingVersion faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)self0 mediaAnalysisVersion:(unint64_t)self1 mediaAnalysisImageVersion:(signed __int16)self2 captionGenerationVersion:(signed __int16)self3;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PHMediaProcessingAlgorithmVersionProvider

- (NSString)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() dictionaryForVersionProvider:self];
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ %p>", v6, self];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [v3 allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v3 objectForKeyedSubscript:v13];
        [v7 appendFormat:@" - %@: %@", v13, v14];
      }

      v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];

  return v15;
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithProvider:(id)provider
{
  providerCopy = provider;
  sceneAnalysisVersion = [providerCopy sceneAnalysisVersion];
  faceAnalysisVersion = [providerCopy faceAnalysisVersion];
  characterRecognitionAlgorithmVersion = [providerCopy characterRecognitionAlgorithmVersion];
  visualSearchAlgorithmVersion = [providerCopy visualSearchAlgorithmVersion];
  stickerConfidenceAlgorithmVersion = [providerCopy stickerConfidenceAlgorithmVersion];
  vaAnalysisVersion = [providerCopy vaAnalysisVersion];
  v4 = PHOptionalVALocationAnalysisVersion(providerCopy);
  mediaAnalysisVersion = [providerCopy mediaAnalysisVersion];
  v6 = PHMediaAnalysisImageVersionUsingFallback(providerCopy);
  v7 = PHOptionalCaptionGenerationVersion(providerCopy);
  v8 = providerCopy;
  if (objc_opt_respondsToSelector())
  {
    imageEmbeddingVersion = [v8 imageEmbeddingVersion];
  }

  else
  {
    imageEmbeddingVersion = 0;
  }

  v10 = v8;
  if (objc_opt_respondsToSelector())
  {
    videoEmbeddingVersion = [v10 videoEmbeddingVersion];
  }

  else
  {
    videoEmbeddingVersion = 0;
  }

  v12 = v10;
  if (objc_opt_respondsToSelector())
  {
    videoSensitivityAnalysisVersion = [v12 videoSensitivityAnalysisVersion];
  }

  else
  {
    videoSensitivityAnalysisVersion = 0;
  }

  v14 = v12;
  if (objc_opt_respondsToSelector())
  {
    textUnderstandingAlgorithmVersion = [v14 textUnderstandingAlgorithmVersion];
  }

  else
  {
    textUnderstandingAlgorithmVersion = 0;
  }

  v16 = v14;
  if (objc_opt_respondsToSelector())
  {
    textUnderstandingGatingVersion = [v16 textUnderstandingGatingVersion];
  }

  else
  {
    textUnderstandingGatingVersion = 0;
  }

  WORD2(v22) = textUnderstandingGatingVersion;
  WORD1(v22) = textUnderstandingAlgorithmVersion;
  LOWORD(v22) = videoSensitivityAnalysisVersion;
  HIWORD(v21) = videoEmbeddingVersion;
  WORD2(v21) = imageEmbeddingVersion;
  WORD1(v21) = v7;
  LOWORD(v21) = v6;
  LOWORD(v20) = v4;
  v18 = [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:sceneAnalysisVersion characterRecognitionAlgorithmVersion:faceAnalysisVersion visualSearchAlgorithmVersion:characterRecognitionAlgorithmVersion stickerConfidenceAlgorithmVersion:visualSearchAlgorithmVersion vaAnalysisVersion:stickerConfidenceAlgorithmVersion vaLocationAnalysisVersion:vaAnalysisVersion mediaAnalysisVersion:v20 mediaAnalysisImageVersion:mediaAnalysisVersion captionGenerationVersion:v21 imageEmbeddingVersion:v22 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  WORD2(v7) = self->_textUnderstandingGatingVersion;
  LODWORD(v7) = *&self->_videoSensitivityAnalysisVersion;
  LOWORD(v6) = self->_vaLocationAnalysisVersion;
  return [v4 initWithSceneAnalysisVersion:self->_sceneAnalysisVersion faceAnalysisVersion:self->_faceAnalysisVersion characterRecognitionAlgorithmVersion:self->_characterRecognitionAlgorithmVersion visualSearchAlgorithmVersion:self->_visualSearchAlgorithmVersion stickerConfidenceAlgorithmVersion:self->_stickerConfidenceAlgorithmVersion vaAnalysisVersion:self->_vaAnalysisVersion vaLocationAnalysisVersion:v6 mediaAnalysisVersion:self->_mediaAnalysisVersion mediaAnalysisImageVersion:*&self->_mediaAnalysisImageVersion captionGenerationVersion:v7 imageEmbeddingVersion:? videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)locationAnalysisVersion mediaAnalysisVersion:(unint64_t)self0 mediaAnalysisImageVersion:(signed __int16)self1 captionGenerationVersion:(signed __int16)self2 imageEmbeddingVersion:(signed __int16)self3 videoEmbeddingVersion:(signed __int16)self4 videoSensitivityAnalysisVersion:(signed __int16)self5 textUnderstandingAlgorithmVersion:(signed __int16)self6 textUnderstandingGatingVersion:(signed __int16)self7
{
  v24.receiver = self;
  v24.super_class = PHMediaProcessingAlgorithmVersionProvider;
  result = [(PHMediaProcessingAlgorithmVersionProvider *)&v24 init];
  if (result)
  {
    result->_sceneAnalysisVersion = version;
    result->_faceAnalysisVersion = analysisVersion;
    result->_characterRecognitionAlgorithmVersion = algorithmVersion;
    result->_visualSearchAlgorithmVersion = searchAlgorithmVersion;
    result->_stickerConfidenceAlgorithmVersion = confidenceAlgorithmVersion;
    result->_vaAnalysisVersion = vaAnalysisVersion;
    result->_vaLocationAnalysisVersion = locationAnalysisVersion;
    result->_mediaAnalysisVersion = mediaAnalysisVersion;
    result->_mediaAnalysisImageVersion = imageVersion;
    result->_captionGenerationVersion = generationVersion;
    result->_imageEmbeddingVersion = embeddingVersion;
    result->_videoEmbeddingVersion = videoEmbeddingVersion;
    result->_videoSensitivityAnalysisVersion = sensitivityAnalysisVersion;
    result->_textUnderstandingAlgorithmVersion = understandingAlgorithmVersion;
    result->_textUnderstandingGatingVersion = gatingVersion;
  }

  return result;
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)locationAnalysisVersion mediaAnalysisVersion:(unint64_t)self0 mediaAnalysisImageVersion:(signed __int16)self1 captionGenerationVersion:(signed __int16)self2 imageEmbeddingVersion:(signed __int16)self3 videoEmbeddingVersion:(signed __int16)self4 videoSensitivityAnalysisVersion:(signed __int16)self5
{
  *(&v17 + 10) = 0;
  *(&v17 + 2) = __PAIR64__(__PAIR32__(sensitivityAnalysisVersion, videoEmbeddingVersion), __PAIR32__(embeddingVersion, generationVersion));
  LOWORD(v17) = imageVersion;
  LOWORD(v16) = locationAnalysisVersion;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:version characterRecognitionAlgorithmVersion:analysisVersion visualSearchAlgorithmVersion:algorithmVersion stickerConfidenceAlgorithmVersion:searchAlgorithmVersion vaAnalysisVersion:confidenceAlgorithmVersion vaLocationAnalysisVersion:vaAnalysisVersion mediaAnalysisVersion:v16 mediaAnalysisImageVersion:mediaAnalysisVersion captionGenerationVersion:v17 imageEmbeddingVersion:? videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)locationAnalysisVersion mediaAnalysisVersion:(unint64_t)self0 mediaAnalysisImageVersion:(signed __int16)self1 captionGenerationVersion:(signed __int16)self2 imageEmbeddingVersion:(signed __int16)self3 videoEmbeddingVersion:(signed __int16)self4
{
  WORD2(v16) = 0;
  LODWORD(v16) = 0;
  LOWORD(v15) = locationAnalysisVersion;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:version characterRecognitionAlgorithmVersion:analysisVersion visualSearchAlgorithmVersion:algorithmVersion stickerConfidenceAlgorithmVersion:searchAlgorithmVersion vaAnalysisVersion:confidenceAlgorithmVersion vaLocationAnalysisVersion:vaAnalysisVersion mediaAnalysisVersion:v15 mediaAnalysisImageVersion:mediaAnalysisVersion captionGenerationVersion:__PAIR64__(__PAIR32__(videoEmbeddingVersion imageEmbeddingVersion:embeddingVersion) videoEmbeddingVersion:__PAIR32__(generationVersion videoSensitivityAnalysisVersion:imageVersion)) textUnderstandingAlgorithmVersion:v16 textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version imageEmbeddingVersion:(signed __int16)embeddingVersion faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)self0 mediaAnalysisVersion:(unint64_t)self1 mediaAnalysisImageVersion:(signed __int16)self2 captionGenerationVersion:(signed __int16)self3
{
  WORD2(v16) = 0;
  LODWORD(v16) = 0;
  HIWORD(v15) = embeddingVersion;
  WORD2(v15) = embeddingVersion;
  LODWORD(v15) = __PAIR32__(generationVersion, imageVersion);
  LOWORD(v14) = locationAnalysisVersion;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:version characterRecognitionAlgorithmVersion:analysisVersion visualSearchAlgorithmVersion:algorithmVersion stickerConfidenceAlgorithmVersion:searchAlgorithmVersion vaAnalysisVersion:confidenceAlgorithmVersion vaLocationAnalysisVersion:vaAnalysisVersion mediaAnalysisVersion:v14 mediaAnalysisImageVersion:mediaAnalysisVersion captionGenerationVersion:v15 imageEmbeddingVersion:v16 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version imageEmbeddingVersion:(signed __int16)embeddingVersion faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion vaLocationAnalysisVersion:(signed __int16)self0 mediaAnalysisVersion:(unint64_t)self1 mediaAnalysisImageVersion:(signed __int16)self2
{
  WORD2(v15) = 0;
  LODWORD(v15) = 0;
  HIWORD(v14) = embeddingVersion;
  WORD2(v14) = embeddingVersion;
  WORD1(v14) = imageVersion;
  LOWORD(v14) = imageVersion;
  LOWORD(v13) = locationAnalysisVersion;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:version characterRecognitionAlgorithmVersion:analysisVersion visualSearchAlgorithmVersion:algorithmVersion stickerConfidenceAlgorithmVersion:searchAlgorithmVersion vaAnalysisVersion:confidenceAlgorithmVersion vaLocationAnalysisVersion:vaAnalysisVersion mediaAnalysisVersion:v13 mediaAnalysisImageVersion:mediaAnalysisVersion captionGenerationVersion:v14 imageEmbeddingVersion:v15 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion mediaAnalysisVersion:(unint64_t)mediaAnalysisVersion mediaAnalysisImageVersion:(signed __int16)self0
{
  WORD2(v13) = 0;
  LODWORD(v13) = 0;
  HIWORD(v12) = imageVersion;
  LOWORD(v12) = imageVersion;
  LOWORD(v11) = 0;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:version characterRecognitionAlgorithmVersion:analysisVersion visualSearchAlgorithmVersion:algorithmVersion stickerConfidenceAlgorithmVersion:searchAlgorithmVersion vaAnalysisVersion:confidenceAlgorithmVersion vaLocationAnalysisVersion:vaAnalysisVersion mediaAnalysisVersion:v11 mediaAnalysisImageVersion:mediaAnalysisVersion captionGenerationVersion:v12 imageEmbeddingVersion:v13 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)version faceAnalysisVersion:(signed __int16)analysisVersion characterRecognitionAlgorithmVersion:(signed __int16)algorithmVersion visualSearchAlgorithmVersion:(signed __int16)searchAlgorithmVersion stickerConfidenceAlgorithmVersion:(signed __int16)confidenceAlgorithmVersion vaAnalysisVersion:(signed __int16)vaAnalysisVersion mediaAnalysisVersion:(unint64_t)mediaAnalysisVersion
{
  WORD2(v12) = 0;
  LODWORD(v12) = 0;
  HIWORD(v11) = mediaAnalysisVersion;
  LOWORD(v11) = mediaAnalysisVersion;
  LOWORD(v10) = 0;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:version characterRecognitionAlgorithmVersion:analysisVersion visualSearchAlgorithmVersion:algorithmVersion stickerConfidenceAlgorithmVersion:searchAlgorithmVersion vaAnalysisVersion:confidenceAlgorithmVersion vaLocationAnalysisVersion:vaAnalysisVersion mediaAnalysisVersion:v10 mediaAnalysisImageVersion:mediaAnalysisVersion captionGenerationVersion:v11 imageEmbeddingVersion:v12 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

+ (id)descriptionForVersionProvider:(id)provider
{
  v3 = MEMORY[0x1E696ACB0];
  v4 = [self dictionaryForVersionProvider:provider];
  v5 = [v3 dataWithJSONObject:v4 options:0 error:0];

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];

  return v6;
}

+ (id)dictionaryForVersionProvider:(id)provider
{
  v24[14] = *MEMORY[0x1E69E9840];
  v23[0] = @"scene";
  v3 = MEMORY[0x1E696AD98];
  providerCopy = provider;
  v22 = [v3 numberWithShort:{objc_msgSend(providerCopy, "sceneAnalysisVersion")}];
  v24[0] = v22;
  v23[1] = @"face";
  v21 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "faceAnalysisVersion")}];
  v24[1] = v21;
  v23[2] = @"ocr";
  v20 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "characterRecognitionAlgorithmVersion")}];
  v24[2] = v20;
  v23[3] = @"tu";
  v19 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "textUnderstandingAlgorithmVersion")}];
  v24[3] = v19;
  v23[4] = @"vsearch";
  v18 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "visualSearchAlgorithmVersion")}];
  v24[4] = v18;
  v23[5] = @"sticker";
  v17 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "stickerConfidenceAlgorithmVersion")}];
  v24[5] = v17;
  v23[6] = @"va";
  v5 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "vaAnalysisVersion")}];
  v24[6] = v5;
  v23[7] = @"valoc";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:PHOptionalVALocationAnalysisVersion(providerCopy)];
  v24[7] = v6;
  v23[8] = @"media";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(providerCopy, "mediaAnalysisVersion")}];
  v24[8] = v7;
  v23[9] = @"mediai";
  v8 = [MEMORY[0x1E696AD98] numberWithShort:PHMediaAnalysisImageVersionUsingFallback(providerCopy)];
  v24[9] = v8;
  v23[10] = @"caption";
  v9 = [MEMORY[0x1E696AD98] numberWithShort:PHOptionalCaptionGenerationVersion(providerCopy)];
  v24[10] = v9;
  v23[11] = @"iembed";
  v10 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "imageEmbeddingVersion")}];
  v24[11] = v10;
  v23[12] = @"vembed";
  v11 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "videoEmbeddingVersion")}];
  v24[12] = v11;
  v23[13] = @"vsens";
  v12 = MEMORY[0x1E696AD98];
  videoSensitivityAnalysisVersion = [providerCopy videoSensitivityAnalysisVersion];

  v14 = [v12 numberWithShort:videoSensitivityAnalysisVersion];
  v24[13] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:14];

  return v15;
}

+ (id)providerWithCurrentVersions
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(self);
  currentSceneVersion = [MEMORY[0x1E69BE5A0] currentSceneVersion];
  [v3 setSceneAnalysisVersion:{objc_msgSend(currentSceneVersion, "shortValue")}];

  currentFaceVersion = [MEMORY[0x1E69BE5A0] currentFaceVersion];
  [v3 setFaceAnalysisVersion:{objc_msgSend(currentFaceVersion, "shortValue")}];

  currentOCRAlgorithmVersion = [MEMORY[0x1E69BE5A0] currentOCRAlgorithmVersion];
  [v3 setCharacterRecognitionAlgorithmVersion:{objc_msgSend(currentOCRAlgorithmVersion, "shortValue")}];

  currentVisualSearchAlgorithmVersion = [MEMORY[0x1E69BE5A0] currentVisualSearchAlgorithmVersion];
  [v3 setVisualSearchAlgorithmVersion:{objc_msgSend(currentVisualSearchAlgorithmVersion, "shortValue")}];

  currentStickerConfidenceAlgorithmVersion = [MEMORY[0x1E69BE5A0] currentStickerConfidenceAlgorithmVersion];
  [v3 setStickerConfidenceAlgorithmVersion:{objc_msgSend(currentStickerConfidenceAlgorithmVersion, "shortValue")}];

  currentVaAnalysisAlgorithmVersion = [MEMORY[0x1E69BE5A0] currentVaAnalysisAlgorithmVersion];
  [v3 setVaAnalysisVersion:{objc_msgSend(currentVaAnalysisAlgorithmVersion, "shortValue")}];

  currentVaLocationAnalysisAlgorithmVersion = [MEMORY[0x1E69BE5A0] currentVaLocationAnalysisAlgorithmVersion];
  [v3 setVaLocationAnalysisVersion:{objc_msgSend(currentVaLocationAnalysisAlgorithmVersion, "shortValue")}];

  currentMediaAnalysisVersion = [MEMORY[0x1E69BE5A0] currentMediaAnalysisVersion];
  [v3 setMediaAnalysisVersion:{objc_msgSend(currentMediaAnalysisVersion, "unsignedLongLongValue")}];

  currentMediaAnalysisImageVersion = [MEMORY[0x1E69BE5A0] currentMediaAnalysisImageVersion];
  [v3 setMediaAnalysisImageVersion:{objc_msgSend(currentMediaAnalysisImageVersion, "shortValue")}];

  currentCaptionGenerationVersion = [MEMORY[0x1E69BE5A0] currentCaptionGenerationVersion];
  [v3 setCaptionGenerationVersion:{objc_msgSend(currentCaptionGenerationVersion, "shortValue")}];

  currentImageEmbeddingVersion = [MEMORY[0x1E69BE5A0] currentImageEmbeddingVersion];
  [v3 setImageEmbeddingVersion:{objc_msgSend(currentImageEmbeddingVersion, "shortValue")}];

  currentVideoEmbeddingVersion = [MEMORY[0x1E69BE5A0] currentVideoEmbeddingVersion];
  [v3 setVideoEmbeddingVersion:{objc_msgSend(currentVideoEmbeddingVersion, "shortValue")}];

  currentVideoSensitivityAnalysisVersion = [MEMORY[0x1E69BE5A0] currentVideoSensitivityAnalysisVersion];
  [v3 setVideoSensitivityAnalysisVersion:{objc_msgSend(currentVideoSensitivityAnalysisVersion, "shortValue")}];

  currentTUAlgorithmVersion = [MEMORY[0x1E69BE5A0] currentTUAlgorithmVersion];
  [v3 setTextUnderstandingAlgorithmVersion:{objc_msgSend(currentTUAlgorithmVersion, "shortValue")}];

  currentTUGatingVersion = [MEMORY[0x1E69BE5A0] currentTUGatingVersion];
  [v3 setTextUnderstandingGatingVersion:{objc_msgSend(currentTUGatingVersion, "shortValue")}];

  v19 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [self descriptionForVersionProvider:v3];
    v22 = 138412290;
    v23 = v20;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_INFO, "providerWithCurrentVersions: %@", &v22, 0xCu);
  }

  return v3;
}

@end