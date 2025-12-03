@interface CLKComplicationTemplateModularSmallStackImage
+ (CLKComplicationTemplateModularSmallStackImage)templateWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
+ (void)imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
- (CLKComplicationTemplateModularSmallStackImage)initWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path;
- (id)initPrivateWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateModularSmallStackImage

- (CLKComplicationTemplateModularSmallStackImage)initWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line1ImageProvider;
  v7 = line2TextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateModularSmallStackImage;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularSmallStackImage *)initPrivate setLine1ImageProvider:v6];
    [(CLKComplicationTemplateModularSmallStackImage *)v9 setLine2TextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateModularSmallStackImage)templateWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line2TextProvider;
  v7 = line1ImageProvider;
  v8 = [[self alloc] initWithLine1ImageProvider:v7 line2TextProvider:v6];

  return v8;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)block
{
  v9 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  blockCopy = block;
  [objc_opt_class() imageSDKSize:&v7 deviceSize:&v5 forSDKVersion:{-[CLKComplicationTemplate sdkVersion](self, "sdkVersion")}];
  (*(blockCopy + 2))(blockCopy, @"line1ImageProvider", 0, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
}

- (id)initPrivateWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = CLKComplicationTemplateModularSmallStackImage;
  v7 = [(CLKComplicationTemplate *)&v10 initPrivateWithJSONObjectRepresentation:representationCopy bundle:bundle];
  if (v7)
  {
    v8 = [representationCopy objectForKeyedSubscript:@"highlightLine2"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"highlightLine2", v8}];
      }

      [v7 setHighlightLine2:{objc_msgSend(v8, "BOOLValue")}];
    }
  }

  return v7;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path
{
  v7.receiver = self;
  v7.super_class = CLKComplicationTemplateModularSmallStackImage;
  v4 = [(CLKComplicationTemplate *)&v7 JSONObjectRepresentationWritingResourcesToBundlePath:path purpose:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CLKComplicationTemplateModularSmallStackImage highlightLine2](self, "highlightLine2")}];
  [v4 setObject:v5 forKeyedSubscript:@"highlightLine2"];

  return v4;
}

+ (void)imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  v8 = +[CLKRenderingContext sharedRenderingContext];
  device = [v8 device];
  v14 = [CLKDeviceMetrics metricsWithDevice:device identitySizeClass:2];

  if (deviceSize)
  {
    deviceSize->width = __87__CLKComplicationTemplateModularSmallStackImage_imageSDKSize_deviceSize_forSDKVersion___block_invoke(v10, v14);
    deviceSize->height = v11;
  }

  if (size)
  {
    v12 = v14;
    if (!version)
    {
      [v14 setNewestAllowedSizeClass:&unk_284A34128];
      v12 = v14;
    }

    size->width = __87__CLKComplicationTemplateModularSmallStackImage_imageSDKSize_deviceSize_forSDKVersion___block_invoke(v12, v12);
    size->height = v13;
  }
}

double __87__CLKComplicationTemplateModularSmallStackImage_imageSDKSize_deviceSize_forSDKVersion___block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = &unk_284A34110;
  v2 = MEMORY[0x277CCAE60];
  v3 = a2;
  v4 = [v2 valueWithCGSize:{26.0, 14.0}];
  v10[1] = &unk_284A34128;
  v11[0] = v4;
  v5 = [MEMORY[0x277CCAE60] valueWithCGSize:{32.0, 17.0}];
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v3 scaledSize:v6 withOverrides:{29.0, 15.0}];
  v8 = v7;

  return v8;
}

@end