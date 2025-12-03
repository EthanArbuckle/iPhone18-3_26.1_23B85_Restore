@interface LSRSpeechAssets
+ (id)assetConfigParameters:(id)parameters;
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)_geoLMCompatibleWithMainAsset:(id)asset geoAssetConfig:(id)config;
- (id)installedGeoLMRegionSpecificAssetForLanguage:(id)language clientID:(id)d regionId:(id)id mainAssetConfig:(id)config;
- (id)installedHammerConfigFileForLanguage:(id)language assetType:(unint64_t)type clientID:(id)d;
- (id)installedLanguageDetectorAssetWithClientID:(id)d;
- (void)installedLanguagesForAssetType:(unint64_t)type completion:(id)completion;
@end

@implementation LSRSpeechAssets

- (id)installedLanguageDetectorAssetWithClientID:(id)d
{
  dCopy = d;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:kSFSpeechRecognizerCustomLIDAssetPathKey];

  if (v5 && [v5 length] && SFIsInternalInstall())
  {
    v6 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[LSRSpeechAssets installedLanguageDetectorAssetWithClientID:]";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Custom Language Detection asset path: %@", &v12, 0x16u);
    }

    v7 = v5;
  }

  else
  {
    v8 = SFEntitledAssetConfigForLanguageDetector();
    v9 = +[SFEntitledAssetManager sharedInstance];
    v7 = [v9 installedAssetWithConfig:v8 regionId:0 shouldSubscribe:1 subscriberId:dCopy expiration:0];

    v10 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[LSRSpeechAssets installedLanguageDetectorAssetWithClientID:]";
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Language Detection asset path: %@", &v12, 0x16u);
    }
  }

  return v7;
}

- (BOOL)_geoLMCompatibleWithMainAsset:(id)asset geoAssetConfig:(id)config
{
  assetCopy = asset;
  configCopy = config;
  v7 = [[_EARSpeechModelInfo alloc] initWithConfig:assetCopy];
  v8 = [[_EARSpeechModelInfo alloc] initWithConfig:configCopy];
  version = [v7 version];
  version2 = [v8 version];
  v11 = [version isEqualToString:version2];

  if (v11)
  {

    v12 = 1;
  }

  else
  {
    v13 = SFLogConnection;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      version3 = [v7 version];
      version4 = [v8 version];
      v17 = 136316162;
      v18 = "[LSRSpeechAssets _geoLMCompatibleWithMainAsset:geoAssetConfig:]";
      v19 = 2112;
      v20 = version3;
      v21 = 2112;
      v22 = version4;
      v23 = 2112;
      v24 = assetCopy;
      v25 = 2112;
      v26 = configCopy;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s GeoLM: model-info.version doesn't match. mainASRModelInfo.version=%@ geoLMModelInfo.version=%@ mainAssetConfig=%@ geoAssetConfig=%@", &v17, 0x34u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)installedGeoLMRegionSpecificAssetForLanguage:(id)language clientID:(id)d regionId:(id)id mainAssetConfig:(id)config
{
  languageCopy = language;
  idCopy = id;
  configCopy = config;
  dCopy = d;
  v14 = [[SFEntitledAssetConfig alloc] initWithLanguage:languageCopy assetType:5];
  v15 = +[SFEntitledAssetManager sharedInstance];
  v16 = [v15 installedAssetWithConfig:v14 regionId:idCopy shouldSubscribe:1 subscriberId:dCopy expiration:0];

  if ([v16 length])
  {
    v17 = [SFEntitledAssetManager jsonFilenameForAssetType:5];
    v18 = [v16 stringByAppendingPathComponent:v17];

    if ([(LSRSpeechAssets *)self _geoLMCompatibleWithMainAsset:configCopy geoAssetConfig:v18])
    {
      v19 = v18;
    }

    else
    {
      v21 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_FAULT))
      {
        v23 = 136315395;
        v24 = "[LSRSpeechAssets installedGeoLMRegionSpecificAssetForLanguage:clientID:regionId:mainAssetConfig:]";
        v25 = 2113;
        v26 = idCopy;
        _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s GeoLM: Region specific asset for %{private}@ is incompatible with the main asset.", &v23, 0x16u);
      }

      v19 = 0;
    }
  }

  else
  {
    v20 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      v23 = 136315651;
      v24 = "[LSRSpeechAssets installedGeoLMRegionSpecificAssetForLanguage:clientID:regionId:mainAssetConfig:]";
      v25 = 2112;
      v26 = languageCopy;
      v27 = 2113;
      v28 = idCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s GeoLM: No region specific asset found for language: %@, regionId: %{private}@", &v23, 0x20u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)installedHammerConfigFileForLanguage:(id)language assetType:(unint64_t)type clientID:(id)d
{
  languageCopy = language;
  if (type == 7)
  {
    v8 = 0;
  }

  else
  {
    dCopy = d;
    v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:languageCopy assetType:1];
    v11 = +[SFEntitledAssetManager sharedInstance];
    v12 = [v11 installedAssetWithConfig:v10 regionId:0 shouldSubscribe:1 subscriberId:dCopy expiration:0];

    if ([v12 length])
    {
      v13 = [SFEntitledAssetManager jsonFilenameForAssetType:1];
      v14 = [v12 stringByAppendingPathComponent:v13];

      v15 = [[_EARSpeechModelInfo alloc] initWithConfig:v14];
      if (v15)
      {
        v8 = v14;
      }

      else
      {
        v17 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_FAULT))
        {
          v19 = 136315394;
          v20 = "[LSRSpeechAssets installedHammerConfigFileForLanguage:assetType:clientID:]";
          v21 = 2112;
          v22 = v14;
          _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%s Failed to read Hammer config file at path: %@", &v19, 0x16u);
        }

        v8 = 0;
      }
    }

    else
    {
      v16 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        v19 = 136315394;
        v20 = "[LSRSpeechAssets installedHammerConfigFileForLanguage:assetType:clientID:]";
        v21 = 2112;
        v22 = languageCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s No Hammer asset found for language: %@", &v19, 0x16u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)installedLanguagesForAssetType:(unint64_t)type completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = +[SFEntitledAssetManager sharedInstance];
    v7 = [v6 installedLanguagesForAssetType:type];

    v8 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = SFEntitledAssetTypeToString();
      v11 = 136315650;
      v12 = "[LSRSpeechAssets installedLanguagesForAssetType:completion:]";
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Installed languages for %@: %@", &v11, 0x20u);
    }

    completionCopy[2](completionCopy, v7);
  }
}

+ (id)assetConfigParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [[NSData alloc] initWithContentsOfFile:parametersCopy];
  if (v4)
  {
    v13 = 0;
    v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v13];
    v6 = v13;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = v5;
    }

    else
    {
      v9 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "+[LSRSpeechAssets assetConfigParameters:]";
        v16 = 2112;
        v17 = parametersCopy;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to parse json config file:%@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "+[LSRSpeechAssets assetConfigParameters:]";
      v16 = 2112;
      v17 = parametersCopy;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to read json file: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)sharedInstance
{
  if (qword_100071420 != -1)
  {
    dispatch_once(&qword_100071420, &stru_1000662F8);
  }

  v3 = qword_100071418;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    SFLogInitIfNeeded();
  }
}

@end