@interface CLKImageProvider
+ (CLKImageProvider)imageProviderWithImageViewCreationHandler:(id)handler;
+ (CLKImageProvider)imageProviderWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
+ (CLKImageProvider)imageProviderWithLayerMaskImage:(id)image;
+ (CLKImageProvider)imageProviderWithOnePieceImage:(UIImage *)onePieceImage twoPieceImageBackground:(UIImage *)twoPieceImageBackground twoPieceImageForeground:(UIImage *)twoPieceImageForeground;
+ (CLKImageProvider)new;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate;
- (CGSize)maxSize;
- (CLKImageProvider)initWithCoder:(id)coder;
- (CLKImageProvider)initWithForegroundAccentImage:(id)image;
- (CLKImageProvider)initWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
- (CLKImageProvider)initWithOnePieceImage:(UIImage *)onePieceImage twoPieceImageBackground:(UIImage *)twoPieceImageBackground twoPieceImageForeground:(UIImage *)twoPieceImageForeground;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPrivate;
- (unint64_t)hash;
- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)size andCornerRadius:(double)radius;
- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)size andMaskToCircle:(BOOL)circle;
- (void)encodeWithCoder:(id)coder;
- (void)finalizeWithMaxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius;
- (void)finalizeWithMaxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize maskToCircle:(BOOL)circle;
- (void)setOnePieceImage:(UIImage *)onePieceImage;
- (void)setTwoPieceImageBackground:(UIImage *)twoPieceImageBackground;
- (void)setTwoPieceImageForeground:(UIImage *)twoPieceImageForeground;
- (void)validate;
@end

@implementation CLKImageProvider

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = CLKImageProvider;
  result = [(CLKImageProvider *)&v3 init];
  if (result)
  {
    *(result + 10) = 1;
  }

  return result;
}

+ (CLKImageProvider)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CLKImageProvider;
  return objc_msgSendSuper2(&v3, "new");
}

- (CLKImageProvider)initWithOnePieceImage:(UIImage *)onePieceImage twoPieceImageBackground:(UIImage *)twoPieceImageBackground twoPieceImageForeground:(UIImage *)twoPieceImageForeground
{
  v8 = onePieceImage;
  v9 = twoPieceImageBackground;
  v10 = twoPieceImageForeground;
  initPrivate = [(CLKImageProvider *)self initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKImageProvider *)initPrivate setOnePieceImage:v8];
    [(CLKImageProvider *)v12 setTwoPieceImageBackground:v9];
    [(CLKImageProvider *)v12 setTwoPieceImageForeground:v10];
  }

  return v12;
}

- (CLKImageProvider)initWithForegroundAccentImage:(id)image
{
  imageCopy = image;
  initPrivate = [(CLKImageProvider *)self initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKImageProvider *)initPrivate setForegroundAccentImage:imageCopy];
  }

  return v6;
}

+ (CLKImageProvider)imageProviderWithOnePieceImage:(UIImage *)onePieceImage twoPieceImageBackground:(UIImage *)twoPieceImageBackground twoPieceImageForeground:(UIImage *)twoPieceImageForeground
{
  v8 = twoPieceImageForeground;
  v9 = twoPieceImageBackground;
  v10 = onePieceImage;
  v11 = [[self alloc] initWithOnePieceImage:v10 twoPieceImageBackground:v9 twoPieceImageForeground:v8];

  return v11;
}

+ (CLKImageProvider)imageProviderWithImageViewCreationHandler:(id)handler
{
  handlerCopy = handler;
  initPrivate = [[self alloc] initPrivate];
  [initPrivate setImageViewCreationHandler:handlerCopy];

  return initPrivate;
}

+ (CLKImageProvider)imageProviderWithLayerMaskImage:(id)image
{
  v3 = [self imageProviderWithOnePieceImage:image];
  [v3 setUseOnePieceAsLayerMask:1];

  return v3;
}

- (BOOL)validate
{
  if (self->_imageViewCreationHandler)
  {
    return 1;
  }

  if (!self->_onePieceImage)
  {
    v4 = CLKLoggingObjectForDomain(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [CLKImageProvider validate];
    }

    goto LABEL_13;
  }

  twoPieceImageForeground = self->_twoPieceImageForeground;
  if (self->_twoPieceImageBackground)
  {
    if (!twoPieceImageForeground)
    {
      v4 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [CLKImageProvider validate];
      }

LABEL_13:

      return 0;
    }
  }

  else if (twoPieceImageForeground)
  {
    v4 = CLKLoggingObjectForDomain(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [CLKImageProvider validate];
    }

    goto LABEL_13;
  }

  return 1;
}

- (void)finalizeWithMaxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize maskToCircle:(BOOL)circle
{
  if (!self->_finalized)
  {
    self->_maxSize = deviceSize;
    [(CLKImageProvider *)self _resizeImagesIfNecessaryWithMaxSDKSize:circle andMaskToCircle:size.width, size.height];
    self->_finalized = 1;
  }
}

- (void)finalizeWithMaxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius
{
  if (!self->_finalized)
  {
    self->_maxSize = deviceSize;
    [(CLKImageProvider *)self _resizeImagesIfNecessaryWithMaxSDKSize:size.width andCornerRadius:size.height, radius];
    self->_finalized = 1;
  }
}

- (void)setOnePieceImage:(UIImage *)onePieceImage
{
  v6 = onePieceImage;
  if (([(UIImage *)v6 isEqual:self->_onePieceImage]& 1) == 0)
  {
    _imageThatSuppressesAccessibilityHairlineThickening = [(UIImage *)v6 _imageThatSuppressesAccessibilityHairlineThickening];
    v5 = self->_onePieceImage;
    self->_onePieceImage = _imageThatSuppressesAccessibilityHairlineThickening;
  }
}

- (void)setTwoPieceImageForeground:(UIImage *)twoPieceImageForeground
{
  v6 = twoPieceImageForeground;
  if (([(UIImage *)v6 isEqual:self->_twoPieceImageForeground]& 1) == 0)
  {
    _imageThatSuppressesAccessibilityHairlineThickening = [(UIImage *)v6 _imageThatSuppressesAccessibilityHairlineThickening];
    v5 = self->_twoPieceImageForeground;
    self->_twoPieceImageForeground = _imageThatSuppressesAccessibilityHairlineThickening;
  }
}

- (void)setTwoPieceImageBackground:(UIImage *)twoPieceImageBackground
{
  v6 = twoPieceImageBackground;
  if (([(UIImage *)v6 isEqual:self->_twoPieceImageBackground]& 1) == 0)
  {
    _imageThatSuppressesAccessibilityHairlineThickening = [(UIImage *)v6 _imageThatSuppressesAccessibilityHairlineThickening];
    v5 = self->_twoPieceImageBackground;
    self->_twoPieceImageBackground = _imageThatSuppressesAccessibilityHairlineThickening;
  }
}

- (void)encodeWithCoder:(id)coder
{
  onePieceImage = self->_onePieceImage;
  coderCopy = coder;
  [coderCopy encodeObject:onePieceImage forKey:@"OnePieceImage"];
  [coderCopy encodeObject:self->_twoPieceImageBackground forKey:@"TwoPieceImageBackground"];
  [coderCopy encodeObject:self->_twoPieceImageForeground forKey:@"TwoPieceImageForeground"];
  [coderCopy encodeObject:self->_tintColor forKey:@"TintColor"];
  [coderCopy encodeObject:self->_accessibilityLabel forKey:@"AccessibilityLabel"];
  [coderCopy encodeObject:self->_foregroundAccentImage forKey:@"ForegroundAccentImageKey"];
  [coderCopy encodeBool:self->_foregroundAccentImageTinted forKey:@"ForegroundAccentImageTintedKey"];
  [coderCopy encodeBool:self->_finalized forKey:@"Finalized"];
  [coderCopy encodeCGSize:@"MaxSize" forKey:{self->_maxSize.width, self->_maxSize.height}];
  [coderCopy encodeBool:self->_useOnePieceAsLayerMask forKey:@"UseOnePieceAsLayerMask"];
}

- (CLKImageProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  initPrivate = [(CLKImageProvider *)self initPrivate];
  if (initPrivate)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OnePieceImage"];
    _imageThatSuppressesAccessibilityHairlineThickening = [v6 _imageThatSuppressesAccessibilityHairlineThickening];
    onePieceImage = initPrivate->_onePieceImage;
    initPrivate->_onePieceImage = _imageThatSuppressesAccessibilityHairlineThickening;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TwoPieceImageBackground"];
    _imageThatSuppressesAccessibilityHairlineThickening2 = [v9 _imageThatSuppressesAccessibilityHairlineThickening];
    twoPieceImageBackground = initPrivate->_twoPieceImageBackground;
    initPrivate->_twoPieceImageBackground = _imageThatSuppressesAccessibilityHairlineThickening2;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TwoPieceImageForeground"];
    _imageThatSuppressesAccessibilityHairlineThickening3 = [v12 _imageThatSuppressesAccessibilityHairlineThickening];
    twoPieceImageForeground = initPrivate->_twoPieceImageForeground;
    initPrivate->_twoPieceImageForeground = _imageThatSuppressesAccessibilityHairlineThickening3;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TintColor"];
    tintColor = initPrivate->_tintColor;
    initPrivate->_tintColor = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccessibilityLabel"];
    accessibilityLabel = initPrivate->_accessibilityLabel;
    initPrivate->_accessibilityLabel = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ForegroundAccentImageKey"];
    foregroundAccentImage = initPrivate->_foregroundAccentImage;
    initPrivate->_foregroundAccentImage = v19;

    initPrivate->_foregroundAccentImageTinted = [coderCopy decodeBoolForKey:@"ForegroundAccentImageTintedKey"];
    initPrivate->_finalized = [coderCopy decodeBoolForKey:@"Finalized"];
    if ([coderCopy containsValueForKey:@"MaxSize"])
    {
      [coderCopy decodeCGSizeForKey:@"MaxSize"];
      initPrivate->_maxSize.width = v21;
      initPrivate->_maxSize.height = v22;
    }

    initPrivate->_useOnePieceAsLayerMask = [coderCopy decodeBoolForKey:@"UseOnePieceAsLayerMask"];
  }

  return initPrivate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    onePieceImage = self->_onePieceImage;
    onePieceImage = [equalCopy onePieceImage];
    if (CLKEqualObjects(onePieceImage, onePieceImage))
    {
      twoPieceImageBackground = self->_twoPieceImageBackground;
      twoPieceImageBackground = [equalCopy twoPieceImageBackground];
      if (CLKEqualObjects(twoPieceImageBackground, twoPieceImageBackground))
      {
        twoPieceImageForeground = self->_twoPieceImageForeground;
        twoPieceImageForeground = [equalCopy twoPieceImageForeground];
        if (CLKEqualObjects(twoPieceImageForeground, twoPieceImageForeground))
        {
          tintColor = self->_tintColor;
          tintColor = [equalCopy tintColor];
          if (CLKEqualObjects(tintColor, tintColor))
          {
            foregroundAccentImage = self->_foregroundAccentImage;
            foregroundAccentImage = [equalCopy foregroundAccentImage];
            if (CLKEqualObjects(foregroundAccentImage, foregroundAccentImage) && (foregroundAccentImageTinted = self->_foregroundAccentImageTinted, foregroundAccentImageTinted == [equalCopy isForegroundAccentImageTinted]))
            {
              accessibilityLabel = self->_accessibilityLabel;
              accessibilityLabel = [equalCopy accessibilityLabel];
              if (CLKEqualObjects(accessibilityLabel, accessibilityLabel))
              {
                useOnePieceAsLayerMask = self->_useOnePieceAsLayerMask;
                v19 = useOnePieceAsLayerMask == [equalCopy useOnePieceAsLayerMask];
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  LOBYTE(v2) = self->_foregroundAccentImageTinted;
  v4 = [(UIImage *)self->_foregroundAccentImage hash]* 10000000.0 + v2 * 100000000.0;
  v5 = v4 + [(UIImage *)self->_onePieceImage hash]* 1000000.0;
  v6 = v5 + [(UIImage *)self->_twoPieceImageBackground hash]* 100000.0;
  v7 = v6 + [(UIImage *)self->_twoPieceImageForeground hash]* 10000.0;
  v8 = v7 + [(UIColor *)self->_tintColor hash]* 1000.0;
  v9 = [(NSString *)self->_accessibilityLabel hash];
  v10 = 0x4059000000000000;
  LOBYTE(v10) = self->_useOnePieceAsLayerMask;
  return (v8 + v9 * 100.0 + v10 * 10.0);
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
    [v5 setOnePieceImage:self->_onePieceImage];
    [v5 setTwoPieceImageBackground:self->_twoPieceImageBackground];
    [v5 setTwoPieceImageForeground:self->_twoPieceImageForeground];
    [v5 setTintColor:self->_tintColor];
    [v5 setAccessibilityLabel:self->_accessibilityLabel];
    [v5 setImageViewCreationHandler:self->_imageViewCreationHandler];
    [v5 setForegroundAccentImage:self->_foregroundAccentImage];
    [v5 setForegroundAccentImageTinted:self->_foregroundAccentImageTinted];
    [v5 setUseOnePieceAsLayerMask:self->_useOnePieceAsLayerMask];
    return v5;
  }
}

+ (CLKImageProvider)imageProviderWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  bundleCopy = bundle;
  if (imageProviderWithJSONObjectRepresentation_bundle__onceToken != -1)
  {
    +[CLKImageProvider imageProviderWithJSONObjectRepresentation:bundle:];
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
  if (!v10 || (v11 = v10, ([imageProviderWithJSONObjectRepresentation_bundle__allowedClasses containsObject:v10] & 1) == 0))
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"invalid CLKFullColorImageProvider subclass: %@", v9}];
LABEL_9:
    v11 = v7;
  }

  v12 = [[v11 alloc] initWithJSONObjectRepresentation:representationCopy bundle:bundleCopy];

  return v12;
}

void __69__CLKImageProvider_imageProviderWithJSONObjectRepresentation_bundle___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = imageProviderWithJSONObjectRepresentation_bundle__allowedClasses;
  imageProviderWithJSONObjectRepresentation_bundle__allowedClasses = v2;
}

- (CLKImageProvider)initWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  bundleCopy = bundle;
  initPrivate = [(CLKImageProvider *)self initPrivate];
  if (initPrivate)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", representationCopy}];
    }

    v9 = [representationCopy objectForKeyedSubscript:@"onePieceImage"];
    v10 = [MEMORY[0x277D755B8] imageWithJSONObjectRepresentation:v9 bundle:bundleCopy];
    _imageThatSuppressesAccessibilityHairlineThickening = [v10 _imageThatSuppressesAccessibilityHairlineThickening];
    onePieceImage = initPrivate->_onePieceImage;
    initPrivate->_onePieceImage = _imageThatSuppressesAccessibilityHairlineThickening;

    v13 = [representationCopy objectForKeyedSubscript:@"twoPieceImageBackground"];
    v14 = [representationCopy objectForKeyedSubscript:@"twoPieceImageForeground"];
    v15 = v14;
    if (v13 && v14)
    {
      v16 = [MEMORY[0x277D755B8] imageWithJSONObjectRepresentation:v13 bundle:bundleCopy];
      _imageThatSuppressesAccessibilityHairlineThickening2 = [v16 _imageThatSuppressesAccessibilityHairlineThickening];
      twoPieceImageBackground = initPrivate->_twoPieceImageBackground;
      initPrivate->_twoPieceImageBackground = _imageThatSuppressesAccessibilityHairlineThickening2;

      v19 = [MEMORY[0x277D755B8] imageWithJSONObjectRepresentation:v15 bundle:bundleCopy];
      _imageThatSuppressesAccessibilityHairlineThickening3 = [v19 _imageThatSuppressesAccessibilityHairlineThickening];
      twoPieceImageForeground = initPrivate->_twoPieceImageForeground;
      initPrivate->_twoPieceImageForeground = _imageThatSuppressesAccessibilityHairlineThickening3;
    }

    v22 = [representationCopy objectForKeyedSubscript:@"tintColor"];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277D75348]) initWithJSONObjectRepresentation:v22];
      tintColor = initPrivate->_tintColor;
      initPrivate->_tintColor = v23;
    }

    v25 = [representationCopy objectForKeyedSubscript:@"accessibilityLabel"];
    if (v25)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"accessibilityLabel", v25}];
      }

      objc_storeStrong(&initPrivate->_accessibilityLabel, v25);
    }
  }

  return initPrivate;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_new();
  v6 = [(UIImage *)self->_onePieceImage JSONObjectRepresentationWritingResourcesToBundlePath:pathCopy];
  [v5 setObject:v6 forKeyedSubscript:@"onePieceImage"];

  twoPieceImageBackground = self->_twoPieceImageBackground;
  if (twoPieceImageBackground && self->_twoPieceImageForeground)
  {
    v8 = [(UIImage *)twoPieceImageBackground JSONObjectRepresentationWritingResourcesToBundlePath:pathCopy];
    [v5 setObject:v8 forKeyedSubscript:@"twoPieceImageBackground"];

    v9 = [(UIImage *)self->_twoPieceImageForeground JSONObjectRepresentationWritingResourcesToBundlePath:pathCopy];
    [v5 setObject:v9 forKeyedSubscript:@"twoPieceImageForeground"];
  }

  [v5 setObject:self->_accessibilityLabel forKeyedSubscript:@"accessibilityLabel"];
  jSONObjectRepresentation = [(UIColor *)self->_tintColor JSONObjectRepresentation];
  [v5 setObject:jSONObjectRepresentation forKeyedSubscript:@"tintColor"];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v5 setObject:v12 forKeyedSubscript:@"class"];

  return v5;
}

- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)size andMaskToCircle:(BOOL)circle
{
  circleCopy = circle;
  height = size.height;
  width = size.width;
  [(UIImage *)self->_onePieceImage size];
  v9 = v8;
  v11 = v10;
  [(UIImage *)self->_twoPieceImageBackground size];
  v13 = v12;
  v15 = v14;
  [(UIImage *)self->_twoPieceImageForeground size];
  v18 = 1.0;
  if (v13 > width)
  {
    v18 = fmin(width / v13, 1.0);
  }

  if (v16 > width)
  {
    v19 = width / v16;
    if (v18 > v19)
    {
      v18 = v19;
    }
  }

  if (v15 > height && v18 > height / v15)
  {
    v18 = height / v15;
  }

  if (v17 > height && v18 > height / v17)
  {
    v18 = height / v17;
  }

  v20 = v9 <= width && v11 <= height;
  v21 = 1.0;
  if (!v20)
  {
    if (width / v9 <= height / v11)
    {
      v21 = width / v9;
    }

    else
    {
      v21 = height / v11;
    }
  }

  v22 = CLKSizeEqualsSize(self->_maxSize.width, self->_maxSize.height, width, height);
  v23 = !v22;
  if (v18 < 1.0 || v21 < 1.0 || v23)
  {
    v24 = 1.0;
    if (!v22)
    {
      if (self->_maxSize.width / width <= self->_maxSize.height / height)
      {
        v24 = self->_maxSize.width / width;
      }

      else
      {
        v24 = self->_maxSize.height / height;
      }
    }

    v25 = +[CLKTreatedImageCache sharedInstance];
    v33 = v25;
    if ((v18 < 1.0) | v23 & 1)
    {
      v26 = fmin(v18, 1.0);
      v27 = [v25 imageForRawImage:self->_twoPieceImageBackground scale:circleCopy sdkDeviceScale:v26 maskMode:v24];
      twoPieceImageBackground = self->_twoPieceImageBackground;
      self->_twoPieceImageBackground = v27;

      v29 = [v33 imageForRawImage:self->_twoPieceImageForeground scale:circleCopy sdkDeviceScale:v26 maskMode:v24];
      twoPieceImageForeground = self->_twoPieceImageForeground;
      self->_twoPieceImageForeground = v29;

      v25 = v33;
    }

    if ((v21 < 1.0) | v23 & 1)
    {
      v31 = [v33 imageForRawImage:self->_onePieceImage scale:circleCopy sdkDeviceScale:fmin(v21 maskMode:{1.0), v24}];
      onePieceImage = self->_onePieceImage;
      self->_onePieceImage = v31;

      v25 = v33;
    }
  }
}

- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)size andCornerRadius:(double)radius
{
  height = size.height;
  width = size.width;
  v14 = +[CLKTreatedImageCache sharedInstance];
  v8 = [v14 imageForRawImage:self->_onePieceImage maxSDKSize:width maxDeviceSize:height cornerRadius:{self->_maxSize.width, self->_maxSize.height, radius}];
  onePieceImage = self->_onePieceImage;
  self->_onePieceImage = v8;

  v10 = [v14 imageForRawImage:self->_twoPieceImageBackground maxSDKSize:width maxDeviceSize:height cornerRadius:{self->_maxSize.width, self->_maxSize.height, radius}];
  twoPieceImageBackground = self->_twoPieceImageBackground;
  self->_twoPieceImageBackground = v10;

  v12 = [v14 imageForRawImage:self->_twoPieceImageForeground maxSDKSize:width maxDeviceSize:height cornerRadius:{self->_maxSize.width, self->_maxSize.height, radius}];
  twoPieceImageForeground = self->_twoPieceImageForeground;
  self->_twoPieceImageForeground = v12;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)validate
{
  v0 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v2 = v1;
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end