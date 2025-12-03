@interface RPAudioMixUtility
+ (id)exportPresetForAVAsset:(id)asset;
+ (id)tempFileURL;
+ (id)videoCodecTypeForAVAsset:(id)asset;
+ (void)mixAudioForMovie:(id)movie finalMovieURL:(id)l outputFileType:(id)type withCompletionHandler:(id)handler;
+ (void)mixAudioForMovie:(id)movie withCompletionHandler:(id)handler;
@end

@implementation RPAudioMixUtility

+ (void)mixAudioForMovie:(id)movie withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  movieCopy = movie;
  +[RPAudioMixUtility tempFileURL];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000119C;
  v10 = v9[3] = &unk_1000184C0;
  v11 = handlerCopy;
  v7 = v10;
  v8 = handlerCopy;
  [RPAudioMixUtility mixAudioForMovie:movieCopy finalMovieURL:v7 outputFileType:AVFileTypeMPEG4 withCompletionHandler:v9];
}

+ (void)mixAudioForMovie:(id)movie finalMovieURL:(id)l outputFileType:(id)type withCompletionHandler:(id)handler
{
  movieCopy = movie;
  lCopy = l;
  typeCopy = type;
  handlerCopy = handler;
  if (movieCopy)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
        v40 = 1024;
        v41 = 33;
        v42 = 2112;
        v43 = movieCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d movieURL  %@", buf, 0x1Cu);
      }

      if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
        v40 = 1024;
        v41 = 34;
        v42 = 2112;
        v43 = lCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d finalMovieURL %@", buf, 0x1Cu);
      }
    }

    v29 = movieCopy;
    v13 = [AVAsset assetWithURL:movieCopy];
    v26 = [RPAudioMixUtility exportPresetForAVAsset:v13];
    v14 = [[AVAssetExportSession alloc] initWithAsset:v13 presetName:v26];
    v28 = lCopy;
    [v14 setOutputURL:lCopy];
    v27 = typeCopy;
    [v14 setOutputFileType:typeCopy];
    v15 = [v13 tracksWithMediaType:AVMediaTypeAudio];
    v16 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          v23 = +[AVMutableAudioMixInputParameters audioMixInputParameters];
          [v23 setTrackID:{objc_msgSend(v22, "trackID")}];
          [v16 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    v24 = +[AVMutableAudioMix audioMix];
    [v24 setInputParameters:v16];
    [v14 setAudioMix:v24];
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
      v40 = 1024;
      v41 = 63;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d starting export session", buf, 0x12u);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100001670;
    v30[3] = &unk_1000184E8;
    v31 = v14;
    v32 = handlerCopy;
    v25 = v14;
    [v25 exportAsynchronouslyWithCompletionHandler:v30];

    lCopy = v28;
    movieCopy = v29;
    typeCopy = v27;
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B314();
    }

    v13 = [NSError _rpUserErrorForCode:-5818 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

+ (id)tempFileURL
{
  v2 = +[NSFileManager defaultManager];
  _srTempPath = [v2 _srTempPath];
  v4 = [NSString stringWithFormat:@"%@/RPReplay_Final", _srTempPath];

  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  v7 = [NSString stringWithFormat:@"%ld", v6];

  v8 = [NSString stringWithFormat:@"%@%@%@", v4, v7, @".mp4"];
  v9 = [NSURL fileURLWithPath:v8];

  return v9;
}

+ (id)videoCodecTypeForAVAsset:(id)asset
{
  v3 = [asset tracksWithMediaType:AVMediaTypeVideo];
  if ([v3 count] != 1)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B394();
    }

    formatDescriptions = 0;
    v4 = 0;
    goto LABEL_14;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  formatDescriptions = [v4 formatDescriptions];
  if ([formatDescriptions count] != 1)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B414();
    }

LABEL_14:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [formatDescriptions objectAtIndexedSubscript:0];
  CMFormatDescriptionGetMediaSubType(v6);

  v7 = [NSString stringWithUTF8String:RPStringUtility_FourccToCStr()];
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446722;
    v11 = "+[RPAudioMixUtility videoCodecTypeForAVAsset:]";
    v12 = 1024;
    v13 = 111;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d videoCodecType=%@", &v10, 0x1Cu);
  }

LABEL_6:
  v8 = v7;

  return v7;
}

+ (id)exportPresetForAVAsset:(id)asset
{
  v4 = AVAssetExportPresetHighestQuality;
  v5 = [RPAudioMixUtility videoCodecTypeForAVAsset:asset];
  v6 = v5;
  if (!v5)
  {
    sub_10000B494(v4, v11);
    v4 = *v11;
    goto LABEL_7;
  }

  if (![v5 isEqualToString:AVVideoCodecTypeHEVC])
  {
    if ([v6 isEqualToString:AVVideoCodecTypeH264])
    {
      if (__RPLogLevel > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v11 = 136446466;
      *&v11[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
      v12 = 1024;
      v13 = 124;
      v9 = " [INFO] %{public}s:%d AVAssetExportPresetHighestQuality for H264";
      v10 = 18;
    }

    else
    {
      if (__RPLogLevel > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v11 = 136446722;
      *&v11[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
      v12 = 1024;
      v13 = 127;
      v14 = 2112;
      v15 = v6;
      v9 = " [INFO] %{public}s:%d videoCodecType=%@, use default preset";
      v10 = 28;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, v11, v10);
    goto LABEL_7;
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136446466;
    *&v11[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
    v12 = 1024;
    v13 = 121;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAssetExportPresetHEVCHighestQuality for HEVC", v11, 0x12u);
  }

  v7 = AVAssetExportPresetHEVCHighestQuality;

  v4 = v7;
LABEL_7:

  return v4;
}

@end