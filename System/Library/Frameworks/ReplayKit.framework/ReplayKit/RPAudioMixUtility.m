@interface RPAudioMixUtility
+ (id)exportPresetForAVAsset:(id)a3;
+ (id)tempFileURL;
+ (id)videoCodecTypeForAVAsset:(id)a3;
+ (void)mixAudioForMovie:(id)a3 finalMovieURL:(id)a4 outputFileType:(id)a5 withCompletionHandler:(id)a6;
+ (void)mixAudioForMovie:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation RPAudioMixUtility

+ (void)mixAudioForMovie:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[RPAudioMixUtility tempFileURL];
  v8 = *MEMORY[0x277CE5D98];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__RPAudioMixUtility_mixAudioForMovie_withCompletionHandler___block_invoke;
  v11[3] = &unk_278B62378;
  v12 = v7;
  v13 = v5;
  v9 = v7;
  v10 = v5;
  [RPAudioMixUtility mixAudioForMovie:v6 finalMovieURL:v9 outputFileType:v8 withCompletionHandler:v11];
}

uint64_t __60__RPAudioMixUtility_mixAudioForMovie_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

+ (void)mixAudioForMovie:(id)a3 finalMovieURL:(id)a4 outputFileType:(id)a5 withCompletionHandler:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v40 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
        v41 = 1024;
        v42 = 33;
        v43 = 2112;
        v44 = v9;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d movieURL  %@", buf, 0x1Cu);
      }

      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v40 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
        v41 = 1024;
        v42 = 34;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d finalMovieURL %@", buf, 0x1Cu);
      }
    }

    v30 = v9;
    v13 = [MEMORY[0x277CE63D8] assetWithURL:v9];
    v27 = [RPAudioMixUtility exportPresetForAVAsset:v13];
    v14 = [objc_alloc(MEMORY[0x277CE6400]) initWithAsset:v13 presetName:v27];
    v29 = v10;
    [v14 setOutputURL:v10];
    v28 = v11;
    [v14 setOutputFileType:v11];
    v15 = [v13 tracksWithMediaType:*MEMORY[0x277CE5E48]];
    v16 = [MEMORY[0x277CBEB18] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          v23 = [MEMORY[0x277CE6540] audioMixInputParameters];
          [v23 setTrackID:{objc_msgSend(v22, "trackID")}];
          [v16 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v19);
    }

    v24 = [MEMORY[0x277CE6538] audioMix];
    [v24 setInputParameters:v16];
    [v14 setAudioMix:v24];
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v40 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
      v41 = 1024;
      v42 = 63;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d starting export session", buf, 0x12u);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __89__RPAudioMixUtility_mixAudioForMovie_finalMovieURL_outputFileType_withCompletionHandler___block_invoke;
    v31[3] = &unk_278B61D70;
    v32 = v14;
    v33 = v12;
    v25 = v14;
    [v25 exportAsynchronouslyWithCompletionHandler:v31];

    v10 = v29;
    v9 = v30;
    v11 = v28;
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:];
    }

    v13 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5818 userInfo:0];
    (*(v12 + 2))(v12, v13);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __89__RPAudioMixUtility_mixAudioForMovie_finalMovieURL_outputFileType_withCompletionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) status];
  if (v2 == 5)
  {
    if (__RPLogLevel > 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v8 = 136446466;
    *&v8[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v8[12] = 1024;
    *&v8[14] = 72;
    v3 = MEMORY[0x277D86220];
    v4 = " [INFO] %{public}s:%d AVAssetExportSessionStatusCancelled";
    goto LABEL_9;
  }

  if (v2 == 4)
  {
    if (__RPLogLevel > 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v8 = 136446466;
    *&v8[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v8[12] = 1024;
    *&v8[14] = 67;
    v3 = MEMORY[0x277D86220];
    v4 = " [INFO] %{public}s:%d AVAssetExportSessionFailed";
LABEL_9:
    _os_log_impl(&dword_23A863000, v3, OS_LOG_TYPE_DEFAULT, v4, v8, 0x12u);
LABEL_10:
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5818 userInfo:{0, *v8, *&v8[16]}];
    (*(v5 + 16))(v5, v6);

    goto LABEL_15;
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 136446466;
    *&v8[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v8[12] = 1024;
    *&v8[14] = 77;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAssetExportSession returned with no errors", v8, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_15:
  v7 = *MEMORY[0x277D85DE8];
}

+ (id)tempFileURL
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 _srTempPath];
  v5 = [v2 stringWithFormat:@"%@/RPReplay_Final", v4];

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  v9 = [v6 stringWithFormat:@"%ld", v8];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v5, v9, @".mp4"];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];

  return v11;
}

+ (id)videoCodecTypeForAVAsset:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  if ([v3 count] != 1)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RPAudioMixUtility videoCodecTypeForAVAsset:];
    }

    v5 = 0;
    v4 = 0;
    goto LABEL_14;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 formatDescriptions];
  if ([v5 count] != 1)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RPAudioMixUtility videoCodecTypeForAVAsset:];
    }

LABEL_14:
    v8 = 0;
    goto LABEL_6;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  MediaSubType = CMFormatDescriptionGetMediaSubType(v6);

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:RPStringUtility_FourccToCStr(MediaSubType)];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446722;
    v13 = "+[RPAudioMixUtility videoCodecTypeForAVAsset:]";
    v14 = 1024;
    v15 = 111;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d videoCodecType=%@", &v12, 0x1Cu);
  }

LABEL_6:
  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)exportPresetForAVAsset:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE5C00];
  v5 = [RPAudioMixUtility videoCodecTypeForAVAsset:a3];
  v6 = v5;
  if (!v5)
  {
    [(RPAudioMixUtility *)v4 exportPresetForAVAsset:v13];
    v4 = *v13;
    goto LABEL_7;
  }

  if (![v5 isEqualToString:*MEMORY[0x277CE6300]])
  {
    if ([v6 isEqualToString:*MEMORY[0x277CE62F8]])
    {
      if (__RPLogLevel > 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v13 = 136446466;
      *&v13[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
      v14 = 1024;
      v15 = 124;
      v10 = MEMORY[0x277D86220];
      v11 = " [INFO] %{public}s:%d AVAssetExportPresetHighestQuality for H264";
      v12 = 18;
    }

    else
    {
      if (__RPLogLevel > 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v13 = 136446722;
      *&v13[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
      v14 = 1024;
      v15 = 127;
      v16 = 2112;
      v17 = v6;
      v10 = MEMORY[0x277D86220];
      v11 = " [INFO] %{public}s:%d videoCodecType=%@, use default preset";
      v12 = 28;
    }

    _os_log_impl(&dword_23A863000, v10, OS_LOG_TYPE_DEFAULT, v11, v13, v12);
    goto LABEL_7;
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 136446466;
    *&v13[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
    v14 = 1024;
    v15 = 121;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAssetExportPresetHEVCHighestQuality for HEVC", v13, 0x12u);
  }

  v7 = *MEMORY[0x277CE5BF8];

  v4 = v7;
LABEL_7:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d video URL is nil", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)videoCodecTypeForAVAsset:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Asset should only contain 1 video track", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)videoCodecTypeForAVAsset:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Asset Video Track constains more than one formatDescscriptions", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)exportPresetForAVAsset:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v5, " [ERROR] %{public}s:%d Failed to get videoCodecType for asset", v6, v7, v8, v9, v10);
  }

  *a2 = a1;
  v4 = *MEMORY[0x277D85DE8];
}

@end