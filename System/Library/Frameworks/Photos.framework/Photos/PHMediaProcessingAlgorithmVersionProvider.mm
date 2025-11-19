@interface PHMediaProcessingAlgorithmVersionProvider
+ (id)descriptionForVersionProvider:(id)a3;
+ (id)dictionaryForVersionProvider:(id)a3;
+ (id)providerWithCurrentVersions;
- (NSString)description;
- (PHMediaProcessingAlgorithmVersionProvider)initWithProvider:(id)a3;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 mediaAnalysisVersion:(unint64_t)a9;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 mediaAnalysisVersion:(unint64_t)a9 mediaAnalysisImageVersion:(signed __int16)a10;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 vaLocationAnalysisVersion:(signed __int16)a9 mediaAnalysisVersion:(unint64_t)a10 mediaAnalysisImageVersion:(signed __int16)a11 captionGenerationVersion:(signed __int16)a12 imageEmbeddingVersion:(signed __int16)a13 videoEmbeddingVersion:(signed __int16)a14;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 vaLocationAnalysisVersion:(signed __int16)a9 mediaAnalysisVersion:(unint64_t)a10 mediaAnalysisImageVersion:(signed __int16)a11 captionGenerationVersion:(signed __int16)a12 imageEmbeddingVersion:(signed __int16)a13 videoEmbeddingVersion:(signed __int16)a14 videoSensitivityAnalysisVersion:(signed __int16)a15;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 vaLocationAnalysisVersion:(signed __int16)a9 mediaAnalysisVersion:(unint64_t)a10 mediaAnalysisImageVersion:(signed __int16)a11 captionGenerationVersion:(signed __int16)a12 imageEmbeddingVersion:(signed __int16)a13 videoEmbeddingVersion:(signed __int16)a14 videoSensitivityAnalysisVersion:(signed __int16)a15 textUnderstandingAlgorithmVersion:(signed __int16)a16 textUnderstandingGatingVersion:(signed __int16)a17;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 imageEmbeddingVersion:(signed __int16)a4 faceAnalysisVersion:(signed __int16)a5 characterRecognitionAlgorithmVersion:(signed __int16)a6 visualSearchAlgorithmVersion:(signed __int16)a7 stickerConfidenceAlgorithmVersion:(signed __int16)a8 vaAnalysisVersion:(signed __int16)a9 vaLocationAnalysisVersion:(signed __int16)a10 mediaAnalysisVersion:(unint64_t)a11 mediaAnalysisImageVersion:(signed __int16)a12;
- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 imageEmbeddingVersion:(signed __int16)a4 faceAnalysisVersion:(signed __int16)a5 characterRecognitionAlgorithmVersion:(signed __int16)a6 visualSearchAlgorithmVersion:(signed __int16)a7 stickerConfidenceAlgorithmVersion:(signed __int16)a8 vaAnalysisVersion:(signed __int16)a9 vaLocationAnalysisVersion:(signed __int16)a10 mediaAnalysisVersion:(unint64_t)a11 mediaAnalysisImageVersion:(signed __int16)a12 captionGenerationVersion:(signed __int16)a13;
- (id)copyWithZone:(_NSZone *)a3;
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
  v8 = [v3 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v3 objectForKeyedSubscript:v13];
        [v7 appendFormat:@" - %@: %@", v13, v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];

  return v15;
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithProvider:(id)a3
{
  v3 = a3;
  v28 = [v3 sceneAnalysisVersion];
  v27 = [v3 faceAnalysisVersion];
  v26 = [v3 characterRecognitionAlgorithmVersion];
  v25 = [v3 visualSearchAlgorithmVersion];
  v24 = [v3 stickerConfidenceAlgorithmVersion];
  v23 = [v3 vaAnalysisVersion];
  v4 = PHOptionalVALocationAnalysisVersion(v3);
  v5 = [v3 mediaAnalysisVersion];
  v6 = PHMediaAnalysisImageVersionUsingFallback(v3);
  v7 = PHOptionalCaptionGenerationVersion(v3);
  v8 = v3;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 imageEmbeddingVersion];
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 videoEmbeddingVersion];
  }

  else
  {
    v11 = 0;
  }

  v12 = v10;
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 videoSensitivityAnalysisVersion];
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;
  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 textUnderstandingAlgorithmVersion];
  }

  else
  {
    v15 = 0;
  }

  v16 = v14;
  if (objc_opt_respondsToSelector())
  {
    v17 = [v16 textUnderstandingGatingVersion];
  }

  else
  {
    v17 = 0;
  }

  WORD2(v22) = v17;
  WORD1(v22) = v15;
  LOWORD(v22) = v13;
  HIWORD(v21) = v11;
  WORD2(v21) = v9;
  WORD1(v21) = v7;
  LOWORD(v21) = v6;
  LOWORD(v20) = v4;
  v18 = [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:v28 characterRecognitionAlgorithmVersion:v27 visualSearchAlgorithmVersion:v26 stickerConfidenceAlgorithmVersion:v25 vaAnalysisVersion:v24 vaLocationAnalysisVersion:v23 mediaAnalysisVersion:v20 mediaAnalysisImageVersion:v5 captionGenerationVersion:v21 imageEmbeddingVersion:v22 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  WORD2(v7) = self->_textUnderstandingGatingVersion;
  LODWORD(v7) = *&self->_videoSensitivityAnalysisVersion;
  LOWORD(v6) = self->_vaLocationAnalysisVersion;
  return [v4 initWithSceneAnalysisVersion:self->_sceneAnalysisVersion faceAnalysisVersion:self->_faceAnalysisVersion characterRecognitionAlgorithmVersion:self->_characterRecognitionAlgorithmVersion visualSearchAlgorithmVersion:self->_visualSearchAlgorithmVersion stickerConfidenceAlgorithmVersion:self->_stickerConfidenceAlgorithmVersion vaAnalysisVersion:self->_vaAnalysisVersion vaLocationAnalysisVersion:v6 mediaAnalysisVersion:self->_mediaAnalysisVersion mediaAnalysisImageVersion:*&self->_mediaAnalysisImageVersion captionGenerationVersion:v7 imageEmbeddingVersion:? videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 vaLocationAnalysisVersion:(signed __int16)a9 mediaAnalysisVersion:(unint64_t)a10 mediaAnalysisImageVersion:(signed __int16)a11 captionGenerationVersion:(signed __int16)a12 imageEmbeddingVersion:(signed __int16)a13 videoEmbeddingVersion:(signed __int16)a14 videoSensitivityAnalysisVersion:(signed __int16)a15 textUnderstandingAlgorithmVersion:(signed __int16)a16 textUnderstandingGatingVersion:(signed __int16)a17
{
  v24.receiver = self;
  v24.super_class = PHMediaProcessingAlgorithmVersionProvider;
  result = [(PHMediaProcessingAlgorithmVersionProvider *)&v24 init];
  if (result)
  {
    result->_sceneAnalysisVersion = a3;
    result->_faceAnalysisVersion = a4;
    result->_characterRecognitionAlgorithmVersion = a5;
    result->_visualSearchAlgorithmVersion = a6;
    result->_stickerConfidenceAlgorithmVersion = a7;
    result->_vaAnalysisVersion = a8;
    result->_vaLocationAnalysisVersion = a9;
    result->_mediaAnalysisVersion = a10;
    result->_mediaAnalysisImageVersion = a11;
    result->_captionGenerationVersion = a12;
    result->_imageEmbeddingVersion = a13;
    result->_videoEmbeddingVersion = a14;
    result->_videoSensitivityAnalysisVersion = a15;
    result->_textUnderstandingAlgorithmVersion = a16;
    result->_textUnderstandingGatingVersion = a17;
  }

  return result;
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 vaLocationAnalysisVersion:(signed __int16)a9 mediaAnalysisVersion:(unint64_t)a10 mediaAnalysisImageVersion:(signed __int16)a11 captionGenerationVersion:(signed __int16)a12 imageEmbeddingVersion:(signed __int16)a13 videoEmbeddingVersion:(signed __int16)a14 videoSensitivityAnalysisVersion:(signed __int16)a15
{
  *(&v17 + 10) = 0;
  *(&v17 + 2) = __PAIR64__(__PAIR32__(a15, a14), __PAIR32__(a13, a12));
  LOWORD(v17) = a11;
  LOWORD(v16) = a9;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:a3 characterRecognitionAlgorithmVersion:a4 visualSearchAlgorithmVersion:a5 stickerConfidenceAlgorithmVersion:a6 vaAnalysisVersion:a7 vaLocationAnalysisVersion:a8 mediaAnalysisVersion:v16 mediaAnalysisImageVersion:a10 captionGenerationVersion:v17 imageEmbeddingVersion:? videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 vaLocationAnalysisVersion:(signed __int16)a9 mediaAnalysisVersion:(unint64_t)a10 mediaAnalysisImageVersion:(signed __int16)a11 captionGenerationVersion:(signed __int16)a12 imageEmbeddingVersion:(signed __int16)a13 videoEmbeddingVersion:(signed __int16)a14
{
  WORD2(v16) = 0;
  LODWORD(v16) = 0;
  LOWORD(v15) = a9;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:a3 characterRecognitionAlgorithmVersion:a4 visualSearchAlgorithmVersion:a5 stickerConfidenceAlgorithmVersion:a6 vaAnalysisVersion:a7 vaLocationAnalysisVersion:a8 mediaAnalysisVersion:v15 mediaAnalysisImageVersion:a10 captionGenerationVersion:__PAIR64__(__PAIR32__(a14 imageEmbeddingVersion:a13) videoEmbeddingVersion:__PAIR32__(a12 videoSensitivityAnalysisVersion:a11)) textUnderstandingAlgorithmVersion:v16 textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 imageEmbeddingVersion:(signed __int16)a4 faceAnalysisVersion:(signed __int16)a5 characterRecognitionAlgorithmVersion:(signed __int16)a6 visualSearchAlgorithmVersion:(signed __int16)a7 stickerConfidenceAlgorithmVersion:(signed __int16)a8 vaAnalysisVersion:(signed __int16)a9 vaLocationAnalysisVersion:(signed __int16)a10 mediaAnalysisVersion:(unint64_t)a11 mediaAnalysisImageVersion:(signed __int16)a12 captionGenerationVersion:(signed __int16)a13
{
  WORD2(v16) = 0;
  LODWORD(v16) = 0;
  HIWORD(v15) = a4;
  WORD2(v15) = a4;
  LODWORD(v15) = __PAIR32__(a13, a12);
  LOWORD(v14) = a10;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:a3 characterRecognitionAlgorithmVersion:a5 visualSearchAlgorithmVersion:a6 stickerConfidenceAlgorithmVersion:a7 vaAnalysisVersion:a8 vaLocationAnalysisVersion:a9 mediaAnalysisVersion:v14 mediaAnalysisImageVersion:a11 captionGenerationVersion:v15 imageEmbeddingVersion:v16 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 imageEmbeddingVersion:(signed __int16)a4 faceAnalysisVersion:(signed __int16)a5 characterRecognitionAlgorithmVersion:(signed __int16)a6 visualSearchAlgorithmVersion:(signed __int16)a7 stickerConfidenceAlgorithmVersion:(signed __int16)a8 vaAnalysisVersion:(signed __int16)a9 vaLocationAnalysisVersion:(signed __int16)a10 mediaAnalysisVersion:(unint64_t)a11 mediaAnalysisImageVersion:(signed __int16)a12
{
  WORD2(v15) = 0;
  LODWORD(v15) = 0;
  HIWORD(v14) = a4;
  WORD2(v14) = a4;
  WORD1(v14) = a12;
  LOWORD(v14) = a12;
  LOWORD(v13) = a10;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:a3 characterRecognitionAlgorithmVersion:a5 visualSearchAlgorithmVersion:a6 stickerConfidenceAlgorithmVersion:a7 vaAnalysisVersion:a8 vaLocationAnalysisVersion:a9 mediaAnalysisVersion:v13 mediaAnalysisImageVersion:a11 captionGenerationVersion:v14 imageEmbeddingVersion:v15 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 mediaAnalysisVersion:(unint64_t)a9 mediaAnalysisImageVersion:(signed __int16)a10
{
  WORD2(v13) = 0;
  LODWORD(v13) = 0;
  HIWORD(v12) = a10;
  LOWORD(v12) = a10;
  LOWORD(v11) = 0;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:a3 characterRecognitionAlgorithmVersion:a4 visualSearchAlgorithmVersion:a5 stickerConfidenceAlgorithmVersion:a6 vaAnalysisVersion:a7 vaLocationAnalysisVersion:a8 mediaAnalysisVersion:v11 mediaAnalysisImageVersion:a9 captionGenerationVersion:v12 imageEmbeddingVersion:v13 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

- (PHMediaProcessingAlgorithmVersionProvider)initWithSceneAnalysisVersion:(signed __int16)a3 faceAnalysisVersion:(signed __int16)a4 characterRecognitionAlgorithmVersion:(signed __int16)a5 visualSearchAlgorithmVersion:(signed __int16)a6 stickerConfidenceAlgorithmVersion:(signed __int16)a7 vaAnalysisVersion:(signed __int16)a8 mediaAnalysisVersion:(unint64_t)a9
{
  WORD2(v12) = 0;
  LODWORD(v12) = 0;
  HIWORD(v11) = a9;
  LOWORD(v11) = a9;
  LOWORD(v10) = 0;
  return [PHMediaProcessingAlgorithmVersionProvider initWithSceneAnalysisVersion:"initWithSceneAnalysisVersion:faceAnalysisVersion:characterRecognitionAlgorithmVersion:visualSearchAlgorithmVersion:stickerConfidenceAlgorithmVersion:vaAnalysisVersion:vaLocationAnalysisVersion:mediaAnalysisVersion:mediaAnalysisImageVersion:captionGenerationVersion:imageEmbeddingVersion:videoEmbeddingVersion:videoSensitivityAnalysisVersion:textUnderstandingAlgorithmVersion:textUnderstandingGatingVersion:" faceAnalysisVersion:a3 characterRecognitionAlgorithmVersion:a4 visualSearchAlgorithmVersion:a5 stickerConfidenceAlgorithmVersion:a6 vaAnalysisVersion:a7 vaLocationAnalysisVersion:a8 mediaAnalysisVersion:v10 mediaAnalysisImageVersion:a9 captionGenerationVersion:v11 imageEmbeddingVersion:v12 videoEmbeddingVersion:? videoSensitivityAnalysisVersion:? textUnderstandingAlgorithmVersion:? textUnderstandingGatingVersion:?];
}

+ (id)descriptionForVersionProvider:(id)a3
{
  v3 = MEMORY[0x1E696ACB0];
  v4 = [a1 dictionaryForVersionProvider:a3];
  v5 = [v3 dataWithJSONObject:v4 options:0 error:0];

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];

  return v6;
}

+ (id)dictionaryForVersionProvider:(id)a3
{
  v24[14] = *MEMORY[0x1E69E9840];
  v23[0] = @"scene";
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v22 = [v3 numberWithShort:{objc_msgSend(v4, "sceneAnalysisVersion")}];
  v24[0] = v22;
  v23[1] = @"face";
  v21 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v4, "faceAnalysisVersion")}];
  v24[1] = v21;
  v23[2] = @"ocr";
  v20 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v4, "characterRecognitionAlgorithmVersion")}];
  v24[2] = v20;
  v23[3] = @"tu";
  v19 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v4, "textUnderstandingAlgorithmVersion")}];
  v24[3] = v19;
  v23[4] = @"vsearch";
  v18 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v4, "visualSearchAlgorithmVersion")}];
  v24[4] = v18;
  v23[5] = @"sticker";
  v17 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v4, "stickerConfidenceAlgorithmVersion")}];
  v24[5] = v17;
  v23[6] = @"va";
  v5 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v4, "vaAnalysisVersion")}];
  v24[6] = v5;
  v23[7] = @"valoc";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:PHOptionalVALocationAnalysisVersion(v4)];
  v24[7] = v6;
  v23[8] = @"media";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "mediaAnalysisVersion")}];
  v24[8] = v7;
  v23[9] = @"mediai";
  v8 = [MEMORY[0x1E696AD98] numberWithShort:PHMediaAnalysisImageVersionUsingFallback(v4)];
  v24[9] = v8;
  v23[10] = @"caption";
  v9 = [MEMORY[0x1E696AD98] numberWithShort:PHOptionalCaptionGenerationVersion(v4)];
  v24[10] = v9;
  v23[11] = @"iembed";
  v10 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v4, "imageEmbeddingVersion")}];
  v24[11] = v10;
  v23[12] = @"vembed";
  v11 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v4, "videoEmbeddingVersion")}];
  v24[12] = v11;
  v23[13] = @"vsens";
  v12 = MEMORY[0x1E696AD98];
  v13 = [v4 videoSensitivityAnalysisVersion];

  v14 = [v12 numberWithShort:v13];
  v24[13] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:14];

  return v15;
}

+ (id)providerWithCurrentVersions
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(a1);
  v4 = [MEMORY[0x1E69BE5A0] currentSceneVersion];
  [v3 setSceneAnalysisVersion:{objc_msgSend(v4, "shortValue")}];

  v5 = [MEMORY[0x1E69BE5A0] currentFaceVersion];
  [v3 setFaceAnalysisVersion:{objc_msgSend(v5, "shortValue")}];

  v6 = [MEMORY[0x1E69BE5A0] currentOCRAlgorithmVersion];
  [v3 setCharacterRecognitionAlgorithmVersion:{objc_msgSend(v6, "shortValue")}];

  v7 = [MEMORY[0x1E69BE5A0] currentVisualSearchAlgorithmVersion];
  [v3 setVisualSearchAlgorithmVersion:{objc_msgSend(v7, "shortValue")}];

  v8 = [MEMORY[0x1E69BE5A0] currentStickerConfidenceAlgorithmVersion];
  [v3 setStickerConfidenceAlgorithmVersion:{objc_msgSend(v8, "shortValue")}];

  v9 = [MEMORY[0x1E69BE5A0] currentVaAnalysisAlgorithmVersion];
  [v3 setVaAnalysisVersion:{objc_msgSend(v9, "shortValue")}];

  v10 = [MEMORY[0x1E69BE5A0] currentVaLocationAnalysisAlgorithmVersion];
  [v3 setVaLocationAnalysisVersion:{objc_msgSend(v10, "shortValue")}];

  v11 = [MEMORY[0x1E69BE5A0] currentMediaAnalysisVersion];
  [v3 setMediaAnalysisVersion:{objc_msgSend(v11, "unsignedLongLongValue")}];

  v12 = [MEMORY[0x1E69BE5A0] currentMediaAnalysisImageVersion];
  [v3 setMediaAnalysisImageVersion:{objc_msgSend(v12, "shortValue")}];

  v13 = [MEMORY[0x1E69BE5A0] currentCaptionGenerationVersion];
  [v3 setCaptionGenerationVersion:{objc_msgSend(v13, "shortValue")}];

  v14 = [MEMORY[0x1E69BE5A0] currentImageEmbeddingVersion];
  [v3 setImageEmbeddingVersion:{objc_msgSend(v14, "shortValue")}];

  v15 = [MEMORY[0x1E69BE5A0] currentVideoEmbeddingVersion];
  [v3 setVideoEmbeddingVersion:{objc_msgSend(v15, "shortValue")}];

  v16 = [MEMORY[0x1E69BE5A0] currentVideoSensitivityAnalysisVersion];
  [v3 setVideoSensitivityAnalysisVersion:{objc_msgSend(v16, "shortValue")}];

  v17 = [MEMORY[0x1E69BE5A0] currentTUAlgorithmVersion];
  [v3 setTextUnderstandingAlgorithmVersion:{objc_msgSend(v17, "shortValue")}];

  v18 = [MEMORY[0x1E69BE5A0] currentTUGatingVersion];
  [v3 setTextUnderstandingGatingVersion:{objc_msgSend(v18, "shortValue")}];

  v19 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [a1 descriptionForVersionProvider:v3];
    v22 = 138412290;
    v23 = v20;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_INFO, "providerWithCurrentVersions: %@", &v22, 0xCu);
  }

  return v3;
}

@end