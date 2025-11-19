@interface CLKImageProvider
+ (CLKImageProvider)imageProviderWithImageViewCreationHandler:(id)a3;
+ (CLKImageProvider)imageProviderWithJSONObjectRepresentation:(id)a3 bundle:(id)a4;
+ (CLKImageProvider)imageProviderWithLayerMaskImage:(id)a3;
+ (CLKImageProvider)imageProviderWithOnePieceImage:(UIImage *)onePieceImage twoPieceImageBackground:(UIImage *)twoPieceImageBackground twoPieceImageForeground:(UIImage *)twoPieceImageForeground;
+ (CLKImageProvider)new;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate;
- (CGSize)maxSize;
- (CLKImageProvider)initWithCoder:(id)a3;
- (CLKImageProvider)initWithForegroundAccentImage:(id)a3;
- (CLKImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4;
- (CLKImageProvider)initWithOnePieceImage:(UIImage *)onePieceImage twoPieceImageBackground:(UIImage *)twoPieceImageBackground twoPieceImageForeground:(UIImage *)twoPieceImageForeground;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initPrivate;
- (unint64_t)hash;
- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)a3 andCornerRadius:(double)a4;
- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)a3 andMaskToCircle:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)finalizeWithMaxSDKSize:(CGSize)a3 maxDeviceSize:(CGSize)a4 cornerRadius:(double)a5;
- (void)finalizeWithMaxSDKSize:(CGSize)a3 maxDeviceSize:(CGSize)a4 maskToCircle:(BOOL)a5;
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
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CLKImageProvider;
  return objc_msgSendSuper2(&v3, "new");
}

- (CLKImageProvider)initWithOnePieceImage:(UIImage *)onePieceImage twoPieceImageBackground:(UIImage *)twoPieceImageBackground twoPieceImageForeground:(UIImage *)twoPieceImageForeground
{
  v8 = onePieceImage;
  v9 = twoPieceImageBackground;
  v10 = twoPieceImageForeground;
  v11 = [(CLKImageProvider *)self initPrivate];
  v12 = v11;
  if (v11)
  {
    [(CLKImageProvider *)v11 setOnePieceImage:v8];
    [(CLKImageProvider *)v12 setTwoPieceImageBackground:v9];
    [(CLKImageProvider *)v12 setTwoPieceImageForeground:v10];
  }

  return v12;
}

- (CLKImageProvider)initWithForegroundAccentImage:(id)a3
{
  v4 = a3;
  v5 = [(CLKImageProvider *)self initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKImageProvider *)v5 setForegroundAccentImage:v4];
  }

  return v6;
}

+ (CLKImageProvider)imageProviderWithOnePieceImage:(UIImage *)onePieceImage twoPieceImageBackground:(UIImage *)twoPieceImageBackground twoPieceImageForeground:(UIImage *)twoPieceImageForeground
{
  v8 = twoPieceImageForeground;
  v9 = twoPieceImageBackground;
  v10 = onePieceImage;
  v11 = [[a1 alloc] initWithOnePieceImage:v10 twoPieceImageBackground:v9 twoPieceImageForeground:v8];

  return v11;
}

+ (CLKImageProvider)imageProviderWithImageViewCreationHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initPrivate];
  [v5 setImageViewCreationHandler:v4];

  return v5;
}

+ (CLKImageProvider)imageProviderWithLayerMaskImage:(id)a3
{
  v3 = [a1 imageProviderWithOnePieceImage:a3];
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

- (void)finalizeWithMaxSDKSize:(CGSize)a3 maxDeviceSize:(CGSize)a4 maskToCircle:(BOOL)a5
{
  if (!self->_finalized)
  {
    self->_maxSize = a4;
    [(CLKImageProvider *)self _resizeImagesIfNecessaryWithMaxSDKSize:a5 andMaskToCircle:a3.width, a3.height];
    self->_finalized = 1;
  }
}

- (void)finalizeWithMaxSDKSize:(CGSize)a3 maxDeviceSize:(CGSize)a4 cornerRadius:(double)a5
{
  if (!self->_finalized)
  {
    self->_maxSize = a4;
    [(CLKImageProvider *)self _resizeImagesIfNecessaryWithMaxSDKSize:a3.width andCornerRadius:a3.height, a5];
    self->_finalized = 1;
  }
}

- (void)setOnePieceImage:(UIImage *)onePieceImage
{
  v6 = onePieceImage;
  if (([(UIImage *)v6 isEqual:self->_onePieceImage]& 1) == 0)
  {
    v4 = [(UIImage *)v6 _imageThatSuppressesAccessibilityHairlineThickening];
    v5 = self->_onePieceImage;
    self->_onePieceImage = v4;
  }
}

- (void)setTwoPieceImageForeground:(UIImage *)twoPieceImageForeground
{
  v6 = twoPieceImageForeground;
  if (([(UIImage *)v6 isEqual:self->_twoPieceImageForeground]& 1) == 0)
  {
    v4 = [(UIImage *)v6 _imageThatSuppressesAccessibilityHairlineThickening];
    v5 = self->_twoPieceImageForeground;
    self->_twoPieceImageForeground = v4;
  }
}

- (void)setTwoPieceImageBackground:(UIImage *)twoPieceImageBackground
{
  v6 = twoPieceImageBackground;
  if (([(UIImage *)v6 isEqual:self->_twoPieceImageBackground]& 1) == 0)
  {
    v4 = [(UIImage *)v6 _imageThatSuppressesAccessibilityHairlineThickening];
    v5 = self->_twoPieceImageBackground;
    self->_twoPieceImageBackground = v4;
  }
}

- (void)encodeWithCoder:(id)a3
{
  onePieceImage = self->_onePieceImage;
  v5 = a3;
  [v5 encodeObject:onePieceImage forKey:@"OnePieceImage"];
  [v5 encodeObject:self->_twoPieceImageBackground forKey:@"TwoPieceImageBackground"];
  [v5 encodeObject:self->_twoPieceImageForeground forKey:@"TwoPieceImageForeground"];
  [v5 encodeObject:self->_tintColor forKey:@"TintColor"];
  [v5 encodeObject:self->_accessibilityLabel forKey:@"AccessibilityLabel"];
  [v5 encodeObject:self->_foregroundAccentImage forKey:@"ForegroundAccentImageKey"];
  [v5 encodeBool:self->_foregroundAccentImageTinted forKey:@"ForegroundAccentImageTintedKey"];
  [v5 encodeBool:self->_finalized forKey:@"Finalized"];
  [v5 encodeCGSize:@"MaxSize" forKey:{self->_maxSize.width, self->_maxSize.height}];
  [v5 encodeBool:self->_useOnePieceAsLayerMask forKey:@"UseOnePieceAsLayerMask"];
}

- (CLKImageProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLKImageProvider *)self initPrivate];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OnePieceImage"];
    v7 = [v6 _imageThatSuppressesAccessibilityHairlineThickening];
    onePieceImage = v5->_onePieceImage;
    v5->_onePieceImage = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TwoPieceImageBackground"];
    v10 = [v9 _imageThatSuppressesAccessibilityHairlineThickening];
    twoPieceImageBackground = v5->_twoPieceImageBackground;
    v5->_twoPieceImageBackground = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TwoPieceImageForeground"];
    v13 = [v12 _imageThatSuppressesAccessibilityHairlineThickening];
    twoPieceImageForeground = v5->_twoPieceImageForeground;
    v5->_twoPieceImageForeground = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccessibilityLabel"];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ForegroundAccentImageKey"];
    foregroundAccentImage = v5->_foregroundAccentImage;
    v5->_foregroundAccentImage = v19;

    v5->_foregroundAccentImageTinted = [v4 decodeBoolForKey:@"ForegroundAccentImageTintedKey"];
    v5->_finalized = [v4 decodeBoolForKey:@"Finalized"];
    if ([v4 containsValueForKey:@"MaxSize"])
    {
      [v4 decodeCGSizeForKey:@"MaxSize"];
      v5->_maxSize.width = v21;
      v5->_maxSize.height = v22;
    }

    v5->_useOnePieceAsLayerMask = [v4 decodeBoolForKey:@"UseOnePieceAsLayerMask"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    onePieceImage = self->_onePieceImage;
    v6 = [v4 onePieceImage];
    if (CLKEqualObjects(onePieceImage, v6))
    {
      twoPieceImageBackground = self->_twoPieceImageBackground;
      v8 = [v4 twoPieceImageBackground];
      if (CLKEqualObjects(twoPieceImageBackground, v8))
      {
        twoPieceImageForeground = self->_twoPieceImageForeground;
        v10 = [v4 twoPieceImageForeground];
        if (CLKEqualObjects(twoPieceImageForeground, v10))
        {
          tintColor = self->_tintColor;
          v12 = [v4 tintColor];
          if (CLKEqualObjects(tintColor, v12))
          {
            foregroundAccentImage = self->_foregroundAccentImage;
            v14 = [v4 foregroundAccentImage];
            if (CLKEqualObjects(foregroundAccentImage, v14) && (foregroundAccentImageTinted = self->_foregroundAccentImageTinted, foregroundAccentImageTinted == [v4 isForegroundAccentImageTinted]))
            {
              accessibilityLabel = self->_accessibilityLabel;
              v17 = [v4 accessibilityLabel];
              if (CLKEqualObjects(accessibilityLabel, v17))
              {
                useOnePieceAsLayerMask = self->_useOnePieceAsLayerMask;
                v19 = useOnePieceAsLayerMask == [v4 useOnePieceAsLayerMask];
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

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

+ (CLKImageProvider)imageProviderWithJSONObjectRepresentation:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (imageProviderWithJSONObjectRepresentation_bundle__onceToken != -1)
  {
    +[CLKImageProvider imageProviderWithJSONObjectRepresentation:bundle:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", v5}];
  }

  v7 = objc_opt_class();
  v8 = [v5 objectForKeyedSubscript:@"class"];
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

  v12 = [[v11 alloc] initWithJSONObjectRepresentation:v5 bundle:v6];

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

- (CLKImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CLKImageProvider *)self initPrivate];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", v6}];
    }

    v9 = [v6 objectForKeyedSubscript:@"onePieceImage"];
    v10 = [MEMORY[0x277D755B8] imageWithJSONObjectRepresentation:v9 bundle:v7];
    v11 = [v10 _imageThatSuppressesAccessibilityHairlineThickening];
    onePieceImage = v8->_onePieceImage;
    v8->_onePieceImage = v11;

    v13 = [v6 objectForKeyedSubscript:@"twoPieceImageBackground"];
    v14 = [v6 objectForKeyedSubscript:@"twoPieceImageForeground"];
    v15 = v14;
    if (v13 && v14)
    {
      v16 = [MEMORY[0x277D755B8] imageWithJSONObjectRepresentation:v13 bundle:v7];
      v17 = [v16 _imageThatSuppressesAccessibilityHairlineThickening];
      twoPieceImageBackground = v8->_twoPieceImageBackground;
      v8->_twoPieceImageBackground = v17;

      v19 = [MEMORY[0x277D755B8] imageWithJSONObjectRepresentation:v15 bundle:v7];
      v20 = [v19 _imageThatSuppressesAccessibilityHairlineThickening];
      twoPieceImageForeground = v8->_twoPieceImageForeground;
      v8->_twoPieceImageForeground = v20;
    }

    v22 = [v6 objectForKeyedSubscript:@"tintColor"];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277D75348]) initWithJSONObjectRepresentation:v22];
      tintColor = v8->_tintColor;
      v8->_tintColor = v23;
    }

    v25 = [v6 objectForKeyedSubscript:@"accessibilityLabel"];
    if (v25)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"accessibilityLabel", v25}];
      }

      objc_storeStrong(&v8->_accessibilityLabel, v25);
    }
  }

  return v8;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(UIImage *)self->_onePieceImage JSONObjectRepresentationWritingResourcesToBundlePath:v4];
  [v5 setObject:v6 forKeyedSubscript:@"onePieceImage"];

  twoPieceImageBackground = self->_twoPieceImageBackground;
  if (twoPieceImageBackground && self->_twoPieceImageForeground)
  {
    v8 = [(UIImage *)twoPieceImageBackground JSONObjectRepresentationWritingResourcesToBundlePath:v4];
    [v5 setObject:v8 forKeyedSubscript:@"twoPieceImageBackground"];

    v9 = [(UIImage *)self->_twoPieceImageForeground JSONObjectRepresentationWritingResourcesToBundlePath:v4];
    [v5 setObject:v9 forKeyedSubscript:@"twoPieceImageForeground"];
  }

  [v5 setObject:self->_accessibilityLabel forKeyedSubscript:@"accessibilityLabel"];
  v10 = [(UIColor *)self->_tintColor JSONObjectRepresentation];
  [v5 setObject:v10 forKeyedSubscript:@"tintColor"];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v5 setObject:v12 forKeyedSubscript:@"class"];

  return v5;
}

- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)a3 andMaskToCircle:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
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
      v27 = [v25 imageForRawImage:self->_twoPieceImageBackground scale:v4 sdkDeviceScale:v26 maskMode:v24];
      twoPieceImageBackground = self->_twoPieceImageBackground;
      self->_twoPieceImageBackground = v27;

      v29 = [v33 imageForRawImage:self->_twoPieceImageForeground scale:v4 sdkDeviceScale:v26 maskMode:v24];
      twoPieceImageForeground = self->_twoPieceImageForeground;
      self->_twoPieceImageForeground = v29;

      v25 = v33;
    }

    if ((v21 < 1.0) | v23 & 1)
    {
      v31 = [v33 imageForRawImage:self->_onePieceImage scale:v4 sdkDeviceScale:fmin(v21 maskMode:{1.0), v24}];
      onePieceImage = self->_onePieceImage;
      self->_onePieceImage = v31;

      v25 = v33;
    }
  }
}

- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)a3 andCornerRadius:(double)a4
{
  height = a3.height;
  width = a3.width;
  v14 = +[CLKTreatedImageCache sharedInstance];
  v8 = [v14 imageForRawImage:self->_onePieceImage maxSDKSize:width maxDeviceSize:height cornerRadius:{self->_maxSize.width, self->_maxSize.height, a4}];
  onePieceImage = self->_onePieceImage;
  self->_onePieceImage = v8;

  v10 = [v14 imageForRawImage:self->_twoPieceImageBackground maxSDKSize:width maxDeviceSize:height cornerRadius:{self->_maxSize.width, self->_maxSize.height, a4}];
  twoPieceImageBackground = self->_twoPieceImageBackground;
  self->_twoPieceImageBackground = v10;

  v12 = [v14 imageForRawImage:self->_twoPieceImageForeground maxSDKSize:width maxDeviceSize:height cornerRadius:{self->_maxSize.width, self->_maxSize.height, a4}];
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