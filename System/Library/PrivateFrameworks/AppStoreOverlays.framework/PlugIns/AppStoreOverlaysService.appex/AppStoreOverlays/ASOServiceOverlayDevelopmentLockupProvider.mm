@interface ASOServiceOverlayDevelopmentLockupProvider
+ (id)appDevelopmentLockupForConfiguration:(id)a3 serviceContext:(id)a4;
+ (id)ascArtworkForIcon:(id)a3 shape:(unint64_t)a4;
+ (id)log;
+ (id)parentAppDevelopmentLockupForConfiguration:(id)a3 serviceContext:(id)a4;
+ (id)parentApplicationRecordForConfiguration:(id)a3 serviceContext:(id)a4;
+ (id)placeholderAppDevelopmentLockupForConfiguration:(id)a3 serviceContext:(id)a4;
@end

@implementation ASOServiceOverlayDevelopmentLockupProvider

+ (id)log
{
  if (qword_10002C730 != -1)
  {
    sub_100017B0C();
  }

  v3 = qword_10002C738;

  return v3;
}

+ (id)placeholderAppDevelopmentLockupForConfiguration:(id)a3 serviceContext:(id)a4
{
  v5 = [ASOLocalizer defaultLocalizer:a3];
  v6 = +[ISIcon genericApplicationIcon];
  v7 = [ASCLockup alloc];
  v8 = [[ASCAdamID alloc] initWithInt64:0x8000000000000000];
  v9 = ASCLockupKindApp;
  v10 = [a1 ascArtworkForIcon:v6 shape:0];
  v11 = [v5 stringForKey:@"APP_CLIP_DEVELOPMENT_HEADING"];
  v12 = [NSString stringWithFormat:@"%@:::%@", @"appstore", v11];
  v13 = [v5 stringForKey:@"APP_CLIP_DEVELOPMENT_SUBTITLE"];
  v14 = [v7 initWithID:v8 kind:v9 metrics:0 icon:v10 heading:v12 title:0 subtitle:v13 ageRating:0 offer:0];

  return v14;
}

+ (id)appDevelopmentLockupForConfiguration:(id)a3 serviceContext:(id)a4
{
  v6 = a3;
  v7 = [a4 applicationRecord];
  v8 = v7;
  if (v7 && ([v7 applicationState], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isInstalled"), v9, (v10 & 1) != 0))
  {
    v11 = +[ASOLocalizer defaultLocalizer];
    v25 = [v8 localizedName];
    v12 = [ISIcon alloc];
    v13 = [v8 URL];
    v24 = [v12 initWithURL:v13];

    v14 = [ASCLockup alloc];
    v15 = [[ASCAdamID alloc] initWithInt64:0x8000000000000000];
    v16 = ASCLockupKindApp;
    v17 = [a1 ascArtworkForIcon:v24 shape:1];
    v18 = [v11 stringForKey:@"APP_CLIP_DEVELOPMENT_HEADING"];
    v19 = [NSString stringWithFormat:@"%@:::%@", @"appstore", v18];
    v20 = [v11 stringForKey:@"APP_CLIP_DEVELOPMENT_SUBTITLE"];
    v21 = [v14 initWithID:v15 kind:v16 metrics:0 icon:v17 heading:v19 title:v25 subtitle:v20 ageRating:0 offer:0];
  }

  else
  {
    v22 = +[ASOServiceOverlayDevelopmentLockupProvider log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Unable to build development app lockup for parent app: %@", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

+ (id)parentAppDevelopmentLockupForConfiguration:(id)a3 serviceContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 additionalValueForKey:ASOOverlayConfigurationPrivateParameterIgnoreParentApp serviceContext:v7];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [a1 parentApplicationRecordForConfiguration:v6 serviceContext:v7];
    v12 = v11;
    if (v11 && ([v11 applicationState], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isInstalled"), v13, (v14 & 1) != 0))
    {
      v15 = +[ASOLocalizer defaultLocalizer];
      v29 = [v12 localizedName];
      v16 = [ISIcon alloc];
      v17 = [v12 URL];
      v28 = [v16 initWithURL:v17];

      v27 = [ASCLockup alloc];
      v18 = [[ASCAdamID alloc] initWithInt64:0x8000000000000000];
      v19 = ASCLockupKindApp;
      v20 = [a1 ascArtworkForIcon:v28 shape:0];
      v26 = v15;
      v21 = [v15 stringForKey:@"APP_CLIP_DEVELOPMENT_HEADING"];
      v22 = [NSString stringWithFormat:@"%@:::%@", @"appstore", v21];
      v23 = [v15 stringForKey:@"APP_CLIP_DEVELOPMENT_SUBTITLE"];
      v10 = [v27 initWithID:v18 kind:v19 metrics:0 icon:v20 heading:v22 title:v29 subtitle:v23 ageRating:0 offer:0];
    }

    else
    {
      v24 = +[ASOServiceOverlayDevelopmentLockupProvider log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Unable to build development app lockup for parent app: %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  return v10;
}

+ (id)ascArtworkForIcon:(id)a3 shape:(unint64_t)a4
{
  v5 = kISImageDescriptorHomeScreen;
  v6 = a3;
  v7 = [ISImageDescriptor imageDescriptorNamed:v5];
  [v7 setShape:a4];
  v15 = v7;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  [v6 prepareImagesForImageDescriptors:v8];

  v9 = [v6 imageForDescriptor:v7];

  v10 = [v9 CGImage];
  [v9 scale];
  v11 = [UIImage imageWithCGImage:v10 scale:0 orientation:?];
  v12 = [ASCArtwork alloc];
  v13 = [v12 initWithImage:v11 decoration:ASCArtworkDecorationNone];

  return v13;
}

+ (id)parentApplicationRecordForConfiguration:(id)a3 serviceContext:(id)a4
{
  v5 = a4;
  v6 = [a3 additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideParentAppBundleIdentifier serviceContext:v5];
  if (v6)
  {
    v7 = [objc_msgSend(LSApplicationRecord "init")];
  }

  else
  {
    v7 = [v5 appClipParentApplicationRecord];
  }

  v8 = v7;

  return v8;
}

@end