@interface ASOServiceOverlayDevelopmentLockupProvider
+ (id)appDevelopmentLockupForConfiguration:(id)configuration serviceContext:(id)context;
+ (id)ascArtworkForIcon:(id)icon shape:(unint64_t)shape;
+ (id)log;
+ (id)parentAppDevelopmentLockupForConfiguration:(id)configuration serviceContext:(id)context;
+ (id)parentApplicationRecordForConfiguration:(id)configuration serviceContext:(id)context;
+ (id)placeholderAppDevelopmentLockupForConfiguration:(id)configuration serviceContext:(id)context;
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

+ (id)placeholderAppDevelopmentLockupForConfiguration:(id)configuration serviceContext:(id)context
{
  v5 = [ASOLocalizer defaultLocalizer:configuration];
  v6 = +[ISIcon genericApplicationIcon];
  v7 = [ASCLockup alloc];
  v8 = [[ASCAdamID alloc] initWithInt64:0x8000000000000000];
  v9 = ASCLockupKindApp;
  v10 = [self ascArtworkForIcon:v6 shape:0];
  v11 = [v5 stringForKey:@"APP_CLIP_DEVELOPMENT_HEADING"];
  v12 = [NSString stringWithFormat:@"%@:::%@", @"appstore", v11];
  v13 = [v5 stringForKey:@"APP_CLIP_DEVELOPMENT_SUBTITLE"];
  v14 = [v7 initWithID:v8 kind:v9 metrics:0 icon:v10 heading:v12 title:0 subtitle:v13 ageRating:0 offer:0];

  return v14;
}

+ (id)appDevelopmentLockupForConfiguration:(id)configuration serviceContext:(id)context
{
  configurationCopy = configuration;
  applicationRecord = [context applicationRecord];
  v8 = applicationRecord;
  if (applicationRecord && ([applicationRecord applicationState], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isInstalled"), v9, (v10 & 1) != 0))
  {
    v11 = +[ASOLocalizer defaultLocalizer];
    localizedName = [v8 localizedName];
    v12 = [ISIcon alloc];
    v13 = [v8 URL];
    v24 = [v12 initWithURL:v13];

    v14 = [ASCLockup alloc];
    v15 = [[ASCAdamID alloc] initWithInt64:0x8000000000000000];
    v16 = ASCLockupKindApp;
    v17 = [self ascArtworkForIcon:v24 shape:1];
    v18 = [v11 stringForKey:@"APP_CLIP_DEVELOPMENT_HEADING"];
    v19 = [NSString stringWithFormat:@"%@:::%@", @"appstore", v18];
    v20 = [v11 stringForKey:@"APP_CLIP_DEVELOPMENT_SUBTITLE"];
    v21 = [v14 initWithID:v15 kind:v16 metrics:0 icon:v17 heading:v19 title:localizedName subtitle:v20 ageRating:0 offer:0];
  }

  else
  {
    v22 = +[ASOServiceOverlayDevelopmentLockupProvider log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Unable to build development app lockup for parent app: %@", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

+ (id)parentAppDevelopmentLockupForConfiguration:(id)configuration serviceContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v8 = [configurationCopy additionalValueForKey:ASOOverlayConfigurationPrivateParameterIgnoreParentApp serviceContext:contextCopy];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = 0;
  }

  else
  {
    v11 = [self parentApplicationRecordForConfiguration:configurationCopy serviceContext:contextCopy];
    v12 = v11;
    if (v11 && ([v11 applicationState], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isInstalled"), v13, (v14 & 1) != 0))
    {
      v15 = +[ASOLocalizer defaultLocalizer];
      localizedName = [v12 localizedName];
      v16 = [ISIcon alloc];
      v17 = [v12 URL];
      v28 = [v16 initWithURL:v17];

      v27 = [ASCLockup alloc];
      v18 = [[ASCAdamID alloc] initWithInt64:0x8000000000000000];
      v19 = ASCLockupKindApp;
      v20 = [self ascArtworkForIcon:v28 shape:0];
      v26 = v15;
      v21 = [v15 stringForKey:@"APP_CLIP_DEVELOPMENT_HEADING"];
      v22 = [NSString stringWithFormat:@"%@:::%@", @"appstore", v21];
      v23 = [v15 stringForKey:@"APP_CLIP_DEVELOPMENT_SUBTITLE"];
      v10 = [v27 initWithID:v18 kind:v19 metrics:0 icon:v20 heading:v22 title:localizedName subtitle:v23 ageRating:0 offer:0];
    }

    else
    {
      v24 = +[ASOServiceOverlayDevelopmentLockupProvider log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = configurationCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Unable to build development app lockup for parent app: %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  return v10;
}

+ (id)ascArtworkForIcon:(id)icon shape:(unint64_t)shape
{
  v5 = kISImageDescriptorHomeScreen;
  iconCopy = icon;
  v7 = [ISImageDescriptor imageDescriptorNamed:v5];
  [v7 setShape:shape];
  v15 = v7;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  [iconCopy prepareImagesForImageDescriptors:v8];

  v9 = [iconCopy imageForDescriptor:v7];

  cGImage = [v9 CGImage];
  [v9 scale];
  v11 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];
  v12 = [ASCArtwork alloc];
  v13 = [v12 initWithImage:v11 decoration:ASCArtworkDecorationNone];

  return v13;
}

+ (id)parentApplicationRecordForConfiguration:(id)configuration serviceContext:(id)context
{
  contextCopy = context;
  v6 = [configuration additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideParentAppBundleIdentifier serviceContext:contextCopy];
  if (v6)
  {
    appClipParentApplicationRecord = [objc_msgSend(LSApplicationRecord "init")];
  }

  else
  {
    appClipParentApplicationRecord = [contextCopy appClipParentApplicationRecord];
  }

  v8 = appClipParentApplicationRecord;

  return v8;
}

@end