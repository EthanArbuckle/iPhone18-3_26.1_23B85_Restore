@interface CLKFullColorImageProvider
+ (CLKFullColorImageProvider)fullColorImageProviderWithImageViewClass:(Class)a3;
+ (CLKFullColorImageProvider)fullColorImageProviderWithJSONObjectRepresentation:(id)a3 bundle:(id)a4;
+ (CLKFullColorImageProvider)new;
+ (CLKFullColorImageProvider)providerWithFullColorImage:(id)a3 monochromeFilterType:(int64_t)a4 applyScalingAndCircularMasking:(BOOL)a5;
+ (CLKFullColorImageProvider)providerWithFullColorImage:(id)a3 tintedImageProvider:(id)a4 applyScalingAndCircularMasking:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate;
- (CLKFullColorImageProvider)initWithCoder:(id)a3;
- (CLKFullColorImageProvider)initWithFullColorImage:(id)a3 monochromeFilterType:(int64_t)a4 applyScalingAndCircularMasking:(BOOL)a5;
- (CLKFullColorImageProvider)initWithFullColorImage:(id)a3 tintedImageProvider:(id)a4 applyScalingAndCircularMasking:(BOOL)a5;
- (CLKFullColorImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initPrivate;
- (unint64_t)hash;
- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)a3 maxDeviceSize:(CGSize)a4 cornerRadius:(double)a5;
- (void)encodeWithCoder:(id)a3;
- (void)finalizeWithMaxSDKSize:(CGSize)a3 maxDeviceSize:(CGSize)a4 cornerRadius:(double)a5;
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
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CLKFullColorImageProvider;
  return objc_msgSendSuper2(&v3, "new");
}

- (CLKFullColorImageProvider)initWithFullColorImage:(id)a3 monochromeFilterType:(int64_t)a4 applyScalingAndCircularMasking:(BOOL)a5
{
  v9 = a3;
  v10 = [(CLKFullColorImageProvider *)self initPrivate];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 3, a3);
    v11->_applyScalingAndCircularMasking = a5;
    v11->_monochromeFilterType = a4;
  }

  return v11;
}

+ (CLKFullColorImageProvider)providerWithFullColorImage:(id)a3 monochromeFilterType:(int64_t)a4 applyScalingAndCircularMasking:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [[a1 alloc] initWithFullColorImage:v8 monochromeFilterType:a4 applyScalingAndCircularMasking:v5];

  return v9;
}

- (CLKFullColorImageProvider)initWithFullColorImage:(id)a3 tintedImageProvider:(id)a4 applyScalingAndCircularMasking:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(CLKFullColorImageProvider *)self initPrivate];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 3, a3);
    v12->_applyScalingAndCircularMasking = a5;
    objc_storeStrong(&v12->_tintedImageProvider, a4);
  }

  return v12;
}

+ (CLKFullColorImageProvider)providerWithFullColorImage:(id)a3 tintedImageProvider:(id)a4 applyScalingAndCircularMasking:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithFullColorImage:v9 tintedImageProvider:v8 applyScalingAndCircularMasking:v5];

  return v10;
}

+ (CLKFullColorImageProvider)fullColorImageProviderWithImageViewClass:(Class)a3
{
  v4 = [[a1 alloc] initPrivate];
  objc_storeStrong(v4 + 6, a3);

  return v4;
}

- (void)setAccessibilityLabel:(NSString *)accessibilityLabel
{
  objc_storeStrong(&self->_accessibilityLabel, accessibilityLabel);
  v5 = accessibilityLabel;
  v6 = [(CLKFullColorImageProvider *)self tintedImageProvider];
  [v6 setAccessibilityLabel:v5];
}

- (void)setTintedImageProvider:(CLKImageProvider *)tintedImageProvider
{
  v6 = tintedImageProvider;
  objc_storeStrong(&self->_tintedImageProvider, tintedImageProvider);
  v5 = [(CLKImageProvider *)v6 accessibilityLabel];

  if (!v5)
  {
    [(CLKImageProvider *)v6 setAccessibilityLabel:self->_accessibilityLabel];
  }
}

- (void)encodeWithCoder:(id)a3
{
  tintColor = self->_tintColor;
  v5 = a3;
  [v5 encodeObject:tintColor forKey:@"_tintColorKey"];
  [v5 encodeObject:self->_image forKey:@"_ImageKey"];
  [v5 encodeBool:self->_applyScalingAndCircularMasking forKey:@"_ApplyScalingAndCircularMaskingKey"];
  [v5 encodeObject:self->_accessibilityLabel forKey:@"AccessibilityLabel"];
  [v5 encodeBool:self->_finalized forKey:@"Finalized"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
  [v5 encodeObject:self->_tintedImageProvider forKey:@"TintedImageProvider"];
  [v5 encodeInteger:self->_monochromeFilterType forKey:@"MonochromeFilterType"];
  [v5 encodeBool:self->_prefersFilterOverTransition forKey:@"PrefersFilterOverTransitionKey"];
}

- (CLKFullColorImageProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLKFullColorImageProvider *)self initPrivate];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tintColorKey"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ImageKey"];
    image = v5->_image;
    v5->_image = v8;

    v5->_applyScalingAndCircularMasking = [v4 decodeBoolForKey:@"_ApplyScalingAndCircularMaskingKey"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccessibilityLabel"];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v10;

    v5->_finalized = [v4 decodeBoolForKey:@"Finalized"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v12 setWithObjects:{v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"Metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TintedImageProvider"];
    tintedImageProvider = v5->_tintedImageProvider;
    v5->_tintedImageProvider = v21;

    v5->_monochromeFilterType = [v4 decodeIntegerForKey:@"MonochromeFilterType"];
    v5->_prefersFilterOverTransition = [v4 decodeBoolForKey:@"PrefersFilterOverTransitionKey"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_applyScalingAndCircularMasking == v4[16])
  {
    tintColor = self->_tintColor;
    v6 = [v4 tintColor];
    if (CLKEqualObjects(tintColor, v6))
    {
      accessibilityLabel = self->_accessibilityLabel;
      v8 = [v4 accessibilityLabel];
      if (CLKEqualObjects(accessibilityLabel, v8))
      {
        image = self->_image;
        v10 = [v4 image];
        if (CLKEqualObjects(image, v10))
        {
          metadata = self->_metadata;
          v12 = [v4 metadata];
          if (CLKEqualObjects(metadata, v12))
          {
            tintedImageProvider = self->_tintedImageProvider;
            v14 = [v4 tintedImageProvider];
            if (CLKEqualObjects(tintedImageProvider, v14) && self->_monochromeFilterType == *(v4 + 8) && self->_prefersFilterOverTransition == v4[19])
            {
              ImageViewClass = self->_ImageViewClass;
              v16 = ImageViewClass == [v4 ImageViewClass];
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

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

+ (CLKFullColorImageProvider)fullColorImageProviderWithJSONObjectRepresentation:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (fullColorImageProviderWithJSONObjectRepresentation_bundle__onceToken != -1)
  {
    +[CLKFullColorImageProvider fullColorImageProviderWithJSONObjectRepresentation:bundle:];
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
  if (!v10 || (v11 = v10, ([fullColorImageProviderWithJSONObjectRepresentation_bundle__allowedClasses containsObject:v10] & 1) == 0))
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"invalid CLKFullColorImageProvider subclass: %@", v9}];
LABEL_9:
    v11 = v7;
  }

  v12 = [[v11 alloc] initWithJSONObjectRepresentation:v5 bundle:v6];

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

- (CLKFullColorImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CLKFullColorImageProvider *)self initPrivate];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", v6}];
    }

    v9 = [v6 objectForKeyedSubscript:@"applyScalingAndCircularMask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8->_applyScalingAndCircularMasking = [v9 BOOLValue];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"applyScalingAndCircularMask" format:{@"value for key '%@' must be a number - invalid value: %@", @"applyScalingAndCircularMask", v9}];
    }

    v10 = [v6 objectForKeyedSubscript:@"fullColorImage"];
    objc_opt_class();
    v23 = v7;
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x277D755B8] imageWithJSONObjectRepresentation:v10 bundle:v7];
      image = v8->_image;
      v8->_image = v11;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value in key '%@' must be a dictionary - invalid value: %@", @"fullColorImage", v10}];
    }

    v13 = [v6 objectForKeyedSubscript:@"tintColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [objc_alloc(MEMORY[0x277D75348]) initWithJSONObjectRepresentation:v13];
      tintColor = v8->_tintColor;
      v8->_tintColor = v14;
    }

    else if (v13)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value in key '%@' must be a dictionary - invalid value: %@", @"tintColor", v13}];
    }

    v16 = [v6 objectForKeyedSubscript:@"accessibilityLabel"];
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"accessibilityLabel", v16}];
      }

      objc_storeStrong(&v8->_accessibilityLabel, v16);
    }

    v17 = [v6 objectForKeyedSubscript:@"tintedImageProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[CLKImageProvider alloc] initWithJSONObjectRepresentation:v17 bundle:v23];
      tintedImageProvider = v8->_tintedImageProvider;
      v8->_tintedImageProvider = v18;
    }

    else if (v17)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value in key '%@' must be a dictionary - invalid value: %@", @"tintedImageProvider", v17}];
    }

    v20 = [v6 objectForKeyedSubscript:@"monochromeFilterType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8->_monochromeFilterType = [v20 integerValue];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"monochromeFilterType" format:{@"value for key '%@' must be a number - invalid value: %@", @"monochromeFilterType", v20}];
    }

    v21 = [v6 objectForKeyedSubscript:@"prefersFilterOverTransition"];
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:@"prefersFilterOverTransition" format:{@"value for key '%@' must be a number - invalid value: %@", @"prefersFilterOverTransition", v21}];
    }

    else
    {
      v8->_prefersFilterOverTransition = [v21 BOOLValue];
    }

    v7 = v23;
  }

  return v8;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(UIImage *)self->_image JSONObjectRepresentationWritingResourcesToBundlePath:v4];
  [v5 setObject:v6 forKeyedSubscript:@"fullColorImage"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_applyScalingAndCircularMasking];
  [v5 setObject:v7 forKeyedSubscript:@"applyScalingAndCircularMask"];

  v8 = [(UIColor *)self->_tintColor JSONObjectRepresentation];
  [v5 setObject:v8 forKeyedSubscript:@"tintColor"];

  v9 = [(CLKImageProvider *)self->_tintedImageProvider JSONObjectRepresentationWritingResourcesToBundlePath:v4];

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

- (void)finalizeWithMaxSDKSize:(CGSize)a3 maxDeviceSize:(CGSize)a4 cornerRadius:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  if (!self->_finalized)
  {
    if (self->_applyScalingAndCircularMasking)
    {
      [(CLKFullColorImageProvider *)self _resizeImagesIfNecessaryWithMaxSDKSize:a3.width maxDeviceSize:a3.height cornerRadius:a4.width, a4.height, a5];
    }

    self->_finalized = 1;
  }

  if ([(CLKFullColorImageProvider *)self isMemberOfClass:objc_opt_class()])
  {
    v11 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    [v11 finalizeWithMaxSDKSize:v9 maxDeviceSize:v8 cornerRadius:{width, height, a5}];
  }

  v12 = [(CLKFullColorImageProvider *)self tintedImageProvider];

  if (v12)
  {
    v13 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    v14 = [v13 foregroundAccentImage];

    v15 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 foregroundAccentImage];
    }

    else
    {
      v20 = [v15 twoPieceImageBackground];
      if (v20)
      {

        v23 = 0;
        goto LABEL_16;
      }

      v21 = [(CLKFullColorImageProvider *)self tintedImageProvider];
      v22 = [v21 twoPieceImageForeground];

      if (v22)
      {
        v18 = 0;
        goto LABEL_18;
      }

      v16 = [(CLKFullColorImageProvider *)self tintedImageProvider];
      v17 = [v16 onePieceImage];
    }

    v23 = v17;

    v18 = v23;
    if (!v23)
    {
LABEL_18:

      return;
    }

    v19 = [(CLKFullColorImageProvider *)self image];
    [(CLKFullColorImageProvider *)self setPrefersFilterOverTransition:v19 == v23];

    if ([(CLKFullColorImageProvider *)self prefersFilterOverTransition])
    {
LABEL_17:
      v18 = v23;
      goto LABEL_18;
    }

    v16 = [(CLKFullColorImageProvider *)self image];
    -[CLKFullColorImageProvider setPrefersFilterOverTransition:](self, "setPrefersFilterOverTransition:", [v16 isEqual:v23]);
LABEL_16:

    goto LABEL_17;
  }
}

- (void)_resizeImagesIfNecessaryWithMaxSDKSize:(CGSize)a3 maxDeviceSize:(CGSize)a4 cornerRadius:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  v13 = +[CLKTreatedImageCache sharedInstance];
  v11 = [v13 imageForRawImage:self->_image maxSDKSize:v9 maxDeviceSize:v8 cornerRadius:{width, height, a5}];
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