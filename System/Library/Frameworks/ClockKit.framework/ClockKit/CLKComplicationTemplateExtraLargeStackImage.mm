@interface CLKComplicationTemplateExtraLargeStackImage
+ (CLKComplicationTemplateExtraLargeStackImage)templateWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
+ (void)imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
- (CLKComplicationTemplateExtraLargeStackImage)initWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path;
- (id)initPrivateWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateExtraLargeStackImage

- (CLKComplicationTemplateExtraLargeStackImage)initWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line1ImageProvider;
  v7 = line2TextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateExtraLargeStackImage;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateExtraLargeStackImage *)initPrivate setLine1ImageProvider:v6];
    [(CLKComplicationTemplateExtraLargeStackImage *)v9 setLine2TextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateExtraLargeStackImage)templateWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
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
  v10.super_class = CLKComplicationTemplateExtraLargeStackImage;
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
  v7.super_class = CLKComplicationTemplateExtraLargeStackImage;
  v4 = [(CLKComplicationTemplate *)&v7 JSONObjectRepresentationWritingResourcesToBundlePath:path purpose:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CLKComplicationTemplateExtraLargeStackImage highlightLine2](self, "highlightLine2")}];
  [v4 setObject:v5 forKeyedSubscript:@"highlightLine2"];

  return v4;
}

+ (void)imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  [CLKComplicationTemplateModularSmallStackImage imageSDKSize:size deviceSize:deviceSize forSDKVersion:version];
  __asm { FMOV            V0.2D, #3.0 }

  if (size)
  {
    *size = vmulq_f64(*size, _Q0);
  }

  if (deviceSize)
  {
    *deviceSize = vmulq_f64(*deviceSize, _Q0);
  }
}

@end