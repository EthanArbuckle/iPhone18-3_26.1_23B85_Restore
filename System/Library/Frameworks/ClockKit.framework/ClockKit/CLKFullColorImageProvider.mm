@interface CLKFullColorImageProvider
+ (CLKFullColorImageProvider)fullColorImageProviderWithImageViewClass:(Class)class;
+ (CLKFullColorImageProvider)fullColorImageProviderWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
+ (CLKFullColorImageProvider)new;
+ (CLKFullColorImageProvider)providerWithFullColorImage:(id)image monochromeFilterType:(int64_t)type applyScalingAndCircularMasking:(BOOL)masking;
+ (CLKFullColorImageProvider)providerWithFullColorImage:(id)image tintedImageProvider:(id)provider applyScalingAndCircularMasking:(BOOL)masking;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate;
- (CLKFullColorImageProvider)initWithCoder:(id)coder;
- (CLKFullColorImageProvider)initWithFullColorImage:(id)image monochromeFilterType:(int64_t)type applyScalingAndCircularMasking:(BOOL)masking;
- (CLKFullColorImageProvider)initWithFullColorImage:(id)image tintedImageProvider:(id)provider applyScalingAndCircularMasking:(BOOL)masking;
- (CLKFullColorImageProvider)initWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPrivate;
- (unint64_t)hash;
- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius;
- (void)encodeWithCoder:(id)coder;
- (void)finalizeWithMaxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius;
- (void)setAccessibilityLabel:(NSString *)accessibilityLabel;
- (void)setTintedImageProvider:(CLKImageProvider *)tintedImageProvider;
- (void)validate;
@end

@implementation CLKFullColorImageProvider

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = CLKFullColorImageProvider;
  result = [(CLKFullColorImageProvider *)&v3 init];
  if (result)
  {
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  return result;
}

+ (CLKFullColorImageProvider)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CLKFullColorImageProvider;
  return objc_msgSendSuper2(&v3, "new");
}

- (CLKFullColorImageProvider)initWithFullColorImage:(id)image monochromeFilterType:(int64_t)type applyScalingAndCircularMasking:(BOOL)masking
{
  imageCopy = image;
  initPrivate = [(CLKFullColorImageProvider *)self initPrivate];
  v11 = initPrivate;
  if (initPrivate)
  {
    objc_storeStrong(initPrivate + 3, image);
    v11->_applyScalingAndCircularMasking = masking;
    v11->_monochromeFilterType = type;
  }

  return v11;
}

+ (CLKFullColorImageProvider)providerWithFullColorImage:(id)image monochromeFilterType:(int64_t)type applyScalingAndCircularMasking:(BOOL)masking
{
  maskingCopy = masking;
  imageCopy = image;
  v9 = [[self alloc] initWithFullColorImage:imageCopy monochromeFilterType:type applyScalingAndCircularMasking:maskingCopy];

  return v9;
}

- (CLKFullColorImageProvider)initWithFullColorImage:(id)image tintedImageProvider:(id)provider applyScalingAndCircularMasking:(BOOL)masking
{
  imageCopy = image;
  providerCopy = provider;
  initPrivate = [(CLKFullColorImageProvider *)self initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    objc_storeStrong(initPrivate + 3, image);
    v12->_applyScalingAndCircularMasking = masking;
    objc_storeStrong(&v12->_tintedImageProvider, provider);
  }

  return v12;
}

+ (CLKFullColorImageProvider)providerWithFullColorImage:(id)image tintedImageProvider:(id)provider applyScalingAndCircularMasking:(BOOL)masking
{
  maskingCopy = masking;
  providerCopy = provider;
  imageCopy = image;
  v10 = [[self alloc] initWithFullColorImage:imageCopy tintedImageProvider:providerCopy applyScalingAndCircularMasking:maskingCopy];

  return v10;
}

+ (CLKFullColorImageProvider)fullColorImageProviderWithImageViewClass:(Class)class
{
  initPrivate = [[self alloc] initPrivate];
  objc_storeStrong(initPrivate + 6, class);

  return initPrivate;
}

- (void)setAccessibilityLabel:(NSString *)accessibilityLabel
{
  objc_storeStrong(&self->_accessibilityLabel, accessibilityLabel);
  v5 = accessibilityLabel;
  tintedImageProvider = [(CLKFullColorImageProvider *)self tintedImageProvider];
  [tintedImageProvider setAccessibilityLabel:v5];
}

- (void)setTintedImageProvider:(CLKImageProvider *)tintedImageProvider
{
  v6 = tintedImageProvider;
  objc_storeStrong(&self->_tintedImageProvider, tintedImageProvider);
  accessibilityLabel = [(CLKImageProvider *)v6 accessibilityLabel];

  if (!accessibilityLabel)
  {
    [(CLKImageProvider *)v6 setAccessibilityLabel:self->_accessibilityLabel];
  }
}

- (void)encodeWithCoder:(id)coder
{
  tintColor = self->_tintColor;
  coderCopy = coder;
  [coderCopy encodeObject:tintColor forKey:@"_tintColorKey"];
  [coderCopy encodeObject:self->_image forKey:@"_ImageKey"];
  [coderCopy encodeBool:self->_applyScalingAndCircularMasking forKey:@"_ApplyScalingAndCircularMaskingKey"];
  [coderCopy encodeObject:self->_accessibilityLabel forKey:@"AccessibilityLabel"];
  [coderCopy encodeBool:self->_finalized forKey:@"Finalized"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
  [coderCopy encodeObject:self->_tintedImageProvider forKey:@"TintedImageProvider"];
  [coderCopy encodeInteger:self->_monochromeFilterType forKey:@"MonochromeFilterType"];
  [coderCopy encodeBool:self->_prefersFilterOverTransition forKey:@"PrefersFilterOverTransitionKey"];
}

- (CLKFullColorImageProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  initPrivate = [(CLKFullColorImageProvider *)self initPrivate];
  if (initPrivate)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tintColorKey"];
    tintColor = initPrivate->_tintColor;
    initPrivate->_tintColor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ImageKey"];
    image = initPrivate->_image;
    initPrivate->_image = v8;

    initPrivate->_applyScalingAndCircularMasking = [coderCopy decodeBoolForKey:@"_ApplyScalingAndCircularMaskingKey"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccessibilityLabel"];
    accessibilityLabel = initPrivate->_accessibilityLabel;
    initPrivate->_accessibilityLabel = v10;

    initPrivate->_finalized = [coderCopy decodeBoolForKey:@"Finalized"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v12 setWithObjects:{v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"Metadata"];
    metadata = initPrivate->_metadata;
    initPrivate->_metadata = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TintedImageProvider"];
    tintedImageProvider = initPrivate->_tintedImageProvider;
    initPrivate->_tintedImageProvider = v21;

    initPrivate->_monochromeFilterType = [coderCopy decodeIntegerForKey:@"MonochromeFilterType"];
    initPrivate->_prefersFilterOverTransition = [coderCopy decodeBoolForKey:@"PrefersFilterOverTransitionKey"];
  }

  return initPrivate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_applyScalingAndCircularMasking == equalCopy[16])
  {
    tintColor = self->_tintColor;
    tintColor = [equalCopy tintColor];
    if (CLKEqualObjects(tintColor, tintColor))
    {
      accessibilityLabel = self->_accessibilityLabel;
      accessibilityLabel = [equalCopy accessibilityLabel];
      if (CLKEqualObjects(accessibilityLabel, accessibilityLabel))
      {
        image = self->_image;
        image = [equalCopy image];
        if (CLKEqualObjects(image, image))
        {
          metadata = self->_metadata;
          metadata = [equalCopy metadata];
          if (CLKEqualObjects(metadata, metadata))
          {
            tintedImageProvider = self->_tintedImageProvider;
            tintedImageProvider = [equalCopy tintedImageProvider];
            if (CLKEqualObjects(tintedImageProvider, tintedImageProvider) && self->_monochromeFilterType == *(equalCopy + 8) && self->_prefersFilterOverTransition == equalCopy[19])
            {
              ImageViewClass = self->_ImageViewClass;
              v16 = ImageViewClass == [equalCopy ImageViewClass];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_prefersFilterOverTransition];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_monochromeFilterType];
  v6 = [v5 hash] * 1000000000.0 + v4 * 1.0e11;
  v7 = v6 + [(CLKImageProvider *)self->_tintedImageProvider hash]* 100000000.0;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_applyScalingAndCircularMasking];
  v9 = v7 + [v8 hash] * 10000000.0;
  v10 = v9 + [(UIImage *)self->_image hash]* 1000000.0;
  v11 = v10 + [(UIColor *)self->_tintColor hash]* 100000.0;
  v12 = v11 + [(NSString *)self->_accessibilityLabel hash]* 10000.0;
  v13 = v12 + [(NSDictionary *)self->_metadata hash]* 1000.0;
  v14 = (v13 + [(objc_class *)self->_ImageViewClass hash]* 100.0);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
    [v5 setImage:self->_image];
    objc_storeStrong((v5 + 8), self->_tintColor);
    *(v5 + 16) = self->_applyScalingAndCircularMasking;
    objc_storeStrong((v5 + 40), self->_accessibilityLabel);
    objc_storeStrong((v5 + 48), self->_ImageViewClass);
    v6 = [(NSDictionary *)self->_metadata copy];
    v7 = *(v5 + 56);
    *(v5 + 56) = v6;

    v8 = [(CLKImageProvider *)self->_tintedImageProvider copy];
    v9 = *(v5 + 32);
    *(v5 + 32) = v8;

    *(v5 + 64) = self->_monochromeFilterType;
    *(v5 + 19) = self->_prefersFilterOverTransition;
    return v5;
  }
}

+ (CLKFullColorImageProvider)fullColorImageProviderWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  bundleCopy = bundle;
  if (fullColorImageProviderWithJSONObjectRepresentation_bundle__onceToken != -1)
  {
    +[CLKFullColorImageProvider fullColorImageProviderWithJSONObjectRepresentation:bundle:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", representationCopy}];
  }

  v7 = objc_opt_class();
  v8 = [representationCopy objectForKeyedSubscript:@"class"];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = NSClassFromString(v8);
  if (!v10 || (v11 = v10, ([fullColorImageProviderWithJSONObjectRepresentation_bundle__allowedClasses containsObject:v10] & 1) == 0))
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"invalid CLKFullColorImageProvider subclass: %@", v9}];
LABEL_9:
    v11 = v7;
  }

  v12 = [[v11 alloc] initWithJSONObjectRepresentation:representationCopy bundle:bundleCopy];

  return v12;
}

void __87__CLKFullColorImageProvider_fullColorImageProviderWithJSONObjectRepresentation_bundle___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = fullColorImageProviderWithJSONObjectRepresentation_bundle__allowedClasses;
  fullColorImageProviderWithJSONObjectRepresentation_bundle__allowedClasses = v2;
}

- (CLKFullColorImageProvider)initWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  bundleCopy = bundle;
  initPrivate = [(CLKFullColorImageProvider *)self initPrivate];
  if (initPrivate)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", representationCopy}];
    }

    v9 = [representationCopy objectForKeyedSubscript:@"applyScalingAndCircularMask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      initPrivate->_applyScalingAndCircularMasking = [v9 BOOLValue];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"applyScalingAndCircularMask" format:{@"value for key '%@' must be a number - invalid value: %@", @"applyScalingAndCircularMask", v9}];
    }

    v10 = [representationCopy objectForKeyedSubscript:@"fullColorImage"];
    objc_opt_class();
    v23 = bundleCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x277D755B8] imageWithJSONObjectRepresentation:v10 bundle:bundleCopy];
      image = initPrivate->_image;
      initPrivate->_image = v11;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value in key '%@' must be a dictionary - invalid value: %@", @"fullColorImage", v10}];
    }

    v13 = [representationCopy objectForKeyedSubscript:@"tintColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [objc_alloc(MEMORY[0x277D75348]) initWithJSONObjectRepresentation:v13];
      tintColor = initPrivate->_tintColor;
      initPrivate->_tintColor = v14;
    }

    else if (v13)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value in key '%@' must be a dictionary - invalid value: %@", @"tintColor", v13}];
    }

    v16 = [representationCopy objectForKeyedSubscript:@"accessibilityLabel"];
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"accessibilityLabel", v16}];
      }

      objc_storeStrong(&initPrivate->_accessibilityLabel, v16);
    }

    v17 = [representationCopy objectForKeyedSubscript:@"tintedImageProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[CLKImageProvider alloc] initWithJSONObjectRepresentation:v17 bundle:v23];
      tintedImageProvider = initPrivate->_tintedImageProvider;
      initPrivate->_tintedImageProvider = v18;
    }

    else if (v17)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value in key '%@' must be a dictionary - invalid value: %@", @"tintedImageProvider", v17}];
    }

    v20 = [representationCopy objectForKeyedSubscript:@"monochromeFilterType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      initPrivate->_monochromeFilterType = [v20 integerValue];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"monochromeFilterType" format:{@"value for key '%@' must be a number - invalid value: %@", @"monochromeFilterType", v20}];
    }

    v21 = [representationCopy objectForKeyedSubscript:@"prefersFilterOverTransition"];
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:@"prefersFilterOverTransition" format:{@"value for key '%@' must be a number - invalid value: %@", @"prefersFilterOverTransition", v21}];
    }

    else
    {
      initPrivate->_prefersFilterOverTransition = [v21 BOOLValue];
    }

    bundleCopy = v23;
  }

  return initPrivate;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_new();
  v6 = [(UIImage *)self->_image JSONObjectRepresentationWritingResourcesToBundlePath:pathCopy];
  [v5 setObject:v6 forKeyedSubscript:@"fullColorImage"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_applyScalingAndCircularMasking];
  [v5 setObject:v7 forKeyedSubscript:@"applyScalingAndCircularMask"];

  jSONObjectRepresentation = [(UIColor *)self->_tintColor JSONObjectRepresentation];
  [v5 setObject:jSONObjectRepresentation forKeyedSubscript:@"tintColor"];

  v9 = [(CLKImageProvider *)self->_tintedImageProvider JSONObjectRepresentationWritingResourcesToBundlePath:pathCopy];

  [v5 setObject:v9 forKeyedSubscript:@"tintedImageProvider"];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_monochromeFilterType];
  [v5 setObject:v10 forKeyedSubscript:@"monochromeFilterType"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_prefersFilterOverTransition];
  [v5 setObject:v11 forKeyedSubscript:@"prefersFilterOverTransition"];

  [v5 setObject:self->_accessibilityLabel forKeyedSubscript:@"accessibilityLabel"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v5 setObject:v13 forKeyedSubscript:@"class"];

  return v5;
}

- (BOOL)validate
{
  if (self->_image)
  {
    return 1;
  }

  ImageViewClass = self->_ImageViewClass;
  if (ImageViewClass && ImageViewClass != objc_opt_class())
  {
    return 1;
  }

  v5 = CLKLoggingObjectForDomain(10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(CLKFullColorImageProvider *)self validate];
  }

  return 0;
}

- (void)finalizeWithMaxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius
{
  height = deviceSize.height;
  width = deviceSize.width;
  v8 = size.height;
  v9 = size.width;
  if (!self->_finalized)
  {
    if (self->_applyScalingAndCircularMasking)
    {
      [(CLKFullColorImageProvider *)self _resizeImagesIfNecessaryWithMaxSDKSize:size.width maxDeviceSize:size.height cornerRadius:deviceSize.width, deviceSize.height, radius];
    }

    self->_finalized = 1;
  }

  if ([(CLKFullColorImageProvider *)self isMemberOfClass:objc_opt_class()])
  {
    tintedImageProvider = [(CLKFullColorImageProvider *)self tintedImageProvider];
    [tintedImageProvider finalizeWithMaxSDKSize:v9 maxDeviceSize:v8 cornerRadius:{width, height, radius}];
  }

  tintedImageProvider2 = [(CLKFullColorImageProvider *)self tintedImageProvider];

  if (tintedImageProvider2)
  {
    tintedImageProvider3 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    foregroundAccentImage = [tintedImageProvider3 foregroundAccentImage];

    tintedImageProvider4 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    tintedImageProvider6 = tintedImageProvider4;
    if (foregroundAccentImage)
    {
      foregroundAccentImage2 = [tintedImageProvider4 foregroundAccentImage];
    }

    else
    {
      twoPieceImageBackground = [tintedImageProvider4 twoPieceImageBackground];
      if (twoPieceImageBackground)
      {

        v23 = 0;
        goto LABEL_16;
      }

      tintedImageProvider5 = [(CLKFullColorImageProvider *)self tintedImageProvider];
      twoPieceImageForeground = [tintedImageProvider5 twoPieceImageForeground];

      if (twoPieceImageForeground)
      {
        v18 = 0;
        goto LABEL_18;
      }

      tintedImageProvider6 = [(CLKFullColorImageProvider *)self tintedImageProvider];
      foregroundAccentImage2 = [tintedImageProvider6 onePieceImage];
    }

    v23 = foregroundAccentImage2;

    v18 = v23;
    if (!v23)
    {
LABEL_18:

      return;
    }

    image = [(CLKFullColorImageProvider *)self image];
    [(CLKFullColorImageProvider *)self setPrefersFilterOverTransition:image == v23];

    if ([(CLKFullColorImageProvider *)self prefersFilterOverTransition])
    {
LABEL_17:
      v18 = v23;
      goto LABEL_18;
    }

    tintedImageProvider6 = [(CLKFullColorImageProvider *)self image];
    -[CLKFullColorImageProvider setPrefersFilterOverTransition:](self, "setPrefersFilterOverTransition:", [tintedImageProvider6 isEqual:v23]);
LABEL_16:

    goto LABEL_17;
  }
}

- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius
{
  height = deviceSize.height;
  width = deviceSize.width;
  v8 = size.height;
  v9 = size.width;
  v13 = +[CLKTreatedImageCache sharedInstance];
  v11 = [v13 imageForRawImage:self->_image maxSDKSize:v9 maxDeviceSize:v8 cornerRadius:{width, height, radius}];
  image = self->_image;
  self->_image = v11;
}

- (void)validate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = v3;
  v6 = 138412802;
  v7 = @"image";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = objc_opt_class();
  v5 = v11;
  _os_log_fault_impl(&dword_23702D000, a2, OS_LOG_TYPE_FAULT, "Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", &v6, 0x20u);
}

@end