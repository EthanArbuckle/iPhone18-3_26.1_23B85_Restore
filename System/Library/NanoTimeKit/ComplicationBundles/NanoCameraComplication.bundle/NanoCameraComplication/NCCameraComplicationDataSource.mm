@interface NCCameraComplicationDataSource
+ (BOOL)_shouldUseFallbackImagesForDevice:(id)device;
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (id)localizedAppName;
- (id)_complicationImageNamed:(id)named;
- (id)_currentTimelineEntry;
- (id)_fullColorImageProviderWithFallbackImageName:(id)name;
- (id)_imageProviderWithFallbackImageName:(id)name;
- (id)_templateForFamily:(int64_t)family;
- (id)currentSwitcherTemplate;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation NCCameraComplicationDataSource

+ (id)localizedAppName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APP_NAME" value:@"Camera Remote" table:0];

  return v3;
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  v5 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoCamera.NanoCameraWidget" containerBundleIdentifier:@"com.apple.NanoCamera" kind:@"NanoCameraWidget" intent:0];
  completionCopy[2](completionCopy, v5);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v5 = [[NSUUID alloc] initWithUUIDString:@"B9EB8122-4210-4EFC-A48A-1EFEA037CDF0"];
  v6 = [deviceCopy supportsCapability:v5];

  return v6;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v6 = [[NSUUID alloc] initWithUUIDString:@"FAB030A8-8E57-49E3-AFE8-418FBB1F049A"];
  v7 = [deviceCopy supportsCapability:v6];

  if (v7)
  {
    v8 = CLKComplicationFamilySimpleText == family;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    LOBYTE(v9) = 0;
  }

  else if (CLKComplicationFamilyCircularMedium == family)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v9 = 0x1795u >> family;
    if (family > 0xC)
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9 & 1;
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_opt_new();
  [v7 setScheme:@"com.apple.NanoCamera"];
  v6 = [v7 URL];
  handlerCopy[2](handlerCopy, v6);
}

- (id)currentSwitcherTemplate
{
  family = [(NCCameraComplicationDataSource *)self family];

  return [(NCCameraComplicationDataSource *)self _templateForFamily:family];
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NCCameraComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
}

- (id)_currentTimelineEntry
{
  v3 = +[NSDate date];
  v4 = [(NCCameraComplicationDataSource *)self _templateForFamily:[(NCCameraComplicationDataSource *)self family]];
  v5 = [CLKComplicationTimelineEntry entryWithDate:v3 complicationTemplate:v4];

  return v5;
}

- (id)_templateForFamily:(int64_t)family
{
  if (CLKComplicationFamilySimpleText == family)
  {
    v3 = 0;
    goto LABEL_27;
  }

  if (CLKComplicationFamilyCircularMedium == family)
  {
    v6 = [(NCCameraComplicationDataSource *)self _imageProviderWithFallbackImageName:@"CircularMedium"];
    v3 = [CLKComplicationTemplateCircularMediumSimpleImage templateWithImageProvider:v6];
  }

  else
  {
    v3 = 0;
  }

  if (family > 7)
  {
    if (family > 9)
    {
      if (family == 10)
      {
        v7 = [(NCCameraComplicationDataSource *)self _fullColorImageProviderWithFallbackImageName:@"CircularMedium"];
        v13 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v7];

        v21 = NTKRichComplicationViewUsePlatterKey;
        v22 = &__kCFBooleanTrue;
        v14 = &v22;
        v15 = &v21;
      }

      else
      {
        if (family != 12)
        {
          goto LABEL_27;
        }

        v7 = [(NCCameraComplicationDataSource *)self _fullColorImageProviderWithFallbackImageName:@"GraphicXL"];
        v13 = [CLKComplicationTemplateGraphicExtraLargeCircularImage templateWithImageProvider:v7];

        v17 = NTKRichComplicationViewUsePlatterKey;
        v18 = &__kCFBooleanTrue;
        v14 = &v18;
        v15 = &v17;
      }
    }

    else
    {
      if (family != 8)
      {
        v9 = [(NCCameraComplicationDataSource *)self _fullColorImageProviderWithFallbackImageName:@"CircularMedium"];
        v10 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v9];
        v19 = NTKRichComplicationViewUsePlatterKey;
        v20 = &__kCFBooleanTrue;
        v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v10 setMetadata:v11];

        v12 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:v10];

        v3 = v12;
        goto LABEL_27;
      }

      v7 = [(NCCameraComplicationDataSource *)self _fullColorImageProviderWithFallbackImageName:@"GraphicCorner"];
      v13 = [CLKComplicationTemplateGraphicCornerCircularImage templateWithImageProvider:v7];

      v23 = NTKRichComplicationViewUsePlatterKey;
      v24 = &__kCFBooleanTrue;
      v14 = &v24;
      v15 = &v23;
    }

    v3 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:1];
    [v13 setMetadata:v3];
  }

  else
  {
    if (family > 3)
    {
      if (family == 4)
      {
        v7 = [(NCCameraComplicationDataSource *)self _imageProviderWithFallbackImageName:@"CircularSmall"];
        v8 = CLKComplicationTemplateCircularSmallSimpleImage;
      }

      else
      {
        if (family != 7)
        {
          goto LABEL_27;
        }

        v7 = [(NCCameraComplicationDataSource *)self _imageProviderWithFallbackImageName:@"ExtraLarge"];
        v8 = CLKComplicationTemplateExtraLargeSimpleImage;
      }
    }

    else if (family)
    {
      if (family != 2)
      {
        goto LABEL_27;
      }

      v7 = [(NCCameraComplicationDataSource *)self _imageProviderWithFallbackImageName:@"UtilityCorner"];
      v8 = CLKComplicationTemplateUtilitarianSmallSquare;
    }

    else
    {
      v7 = [(NCCameraComplicationDataSource *)self _imageProviderWithFallbackImageName:@"ModularSmall"];
      v8 = CLKComplicationTemplateModularSmallSimpleImage;
    }

    v13 = [v8 templateWithImageProvider:v7];
  }

  v3 = v13;
LABEL_27:

  return v3;
}

- (id)_complicationImageNamed:(id)named
{
  namedCopy = named;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIImage imageNamed:namedCopy inBundle:v4 withConfiguration:0];

  return v5;
}

- (id)_imageProviderWithFallbackImageName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_class();
  device = [(NCCameraComplicationDataSource *)self device];
  LODWORD(v5) = [v5 _shouldUseFallbackImagesForDevice:device];

  if (v5)
  {
    v7 = [nameCopy stringByAppendingString:@"-Color"];
    v8 = [(NCCameraComplicationDataSource *)self _complicationImageNamed:v7];
    v9 = [nameCopy stringByAppendingString:@"-Background"];
    v10 = [(NCCameraComplicationDataSource *)self _complicationImageNamed:v9];
    v11 = [nameCopy stringByAppendingString:@"-Foreground"];
    v12 = [(NCCameraComplicationDataSource *)self _complicationImageNamed:v11];
    v13 = [CLKImageProvider imageProviderWithOnePieceImage:v8 twoPieceImageBackground:v10 twoPieceImageForeground:v12];

    v14 = [nameCopy stringByAppendingString:@"-Color"];
    v15 = [(NCCameraComplicationDataSource *)self _complicationImageNamed:v14];
    [v13 setForegroundAccentImage:v15];
  }

  else
  {
    v13 = [CLKSymbolImageProvider symbolImageProviderWithSystemName:@"camera.shutter.button.fill"];
    v16 = +[UIColor systemGrayColor];
    [v13 setTintColor:v16];

    v14 = +[UIColor systemYellowColor];
    [v13 setSecondaryTintColor:v14];
  }

  return v13;
}

- (id)_fullColorImageProviderWithFallbackImageName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_class();
  device = [(NCCameraComplicationDataSource *)self device];
  LODWORD(v5) = [v5 _shouldUseFallbackImagesForDevice:device];

  if (v5)
  {
    v7 = [nameCopy stringByAppendingString:@"-Color"];
    v17 = [(NCCameraComplicationDataSource *)self _complicationImageNamed:v7];
    v18 = [nameCopy stringByAppendingString:@"-Color"];
    v8 = [(NCCameraComplicationDataSource *)self _complicationImageNamed:v18];
    v9 = [nameCopy stringByAppendingString:@"-Background"];
    v10 = [(NCCameraComplicationDataSource *)self _complicationImageNamed:v9];
    v11 = [nameCopy stringByAppendingString:@"-Foreground"];
    v12 = [(NCCameraComplicationDataSource *)self _complicationImageNamed:v11];
    v13 = [CLKImageProvider imageProviderWithOnePieceImage:v8 twoPieceImageBackground:v10 twoPieceImageForeground:v12];
    v14 = [CLKFullColorImageProvider providerWithFullColorImage:v17 tintedImageProvider:v13];
  }

  else
  {
    v14 = [CLKFullColorSymbolImageProvider symbolImageProviderWithSystemName:@"camera.shutter.button.fill"];
    v15 = +[UIColor systemGrayColor];
    [v14 setTintColor:v15];

    v7 = +[UIColor systemYellowColor];
    [v14 setSecondaryTintColor:v7];
  }

  return v14;
}

+ (BOOL)_shouldUseFallbackImagesForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NSUUID alloc] initWithUUIDString:@"436C3C42-1855-4417-BD50-BD3D1B870E0F"];
  v5 = [deviceCopy supportsCapability:v4];

  return v5 ^ 1;
}

@end