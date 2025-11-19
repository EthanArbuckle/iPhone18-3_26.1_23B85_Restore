@interface CLKFullColorSymbolImageProvider
+ (id)_symbolImageProviderWithSystemName:(id)a3;
+ (id)symbolImageProviderWithSystemName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CLKFullColorSymbolImageProvider)initWithCoder:(id)a3;
- (CLKFullColorSymbolImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4;
- (CLKFullColorSymbolImageProvider)initWithSystemName:(id)a3;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3;
- (id)_initWithSystemName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createSymbolImage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)finalizeWithPointSize:(id)a3 weight:(int64_t)a4 maxSDKSize:(CGSize)a5 maxDeviceSize:(CGSize)a6 cornerRadius:(double)a7;
- (void)setIgnoreHierarchicalLayers:(BOOL)a3;
- (void)setOverridePointSize:(id)a3;
@end

@implementation CLKFullColorSymbolImageProvider

- (CLKFullColorSymbolImageProvider)initWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D755B8] systemImageNamed:v4];
  symbolImage = self->_symbolImage;
  self->_symbolImage = v5;

  v7 = self->_symbolImage;
  v13.receiver = self;
  v13.super_class = CLKFullColorSymbolImageProvider;
  v8 = [(CLKFullColorImageProvider *)&v13 initWithFullColorImage:v7];
  if (v8)
  {
    v9 = [v4 copy];
    systemName = v8->_systemName;
    v8->_systemName = v9;

    v11 = [CLKSymbolImageProvider symbolImageProviderWithSystemName:v4];
    [(CLKFullColorImageProvider *)v8 setTintedImageProvider:v11];
  }

  return v8;
}

- (id)_initWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:v4];
  symbolImage = self->_symbolImage;
  self->_symbolImage = v5;

  v7 = self->_symbolImage;
  v13.receiver = self;
  v13.super_class = CLKFullColorSymbolImageProvider;
  v8 = [(CLKFullColorImageProvider *)&v13 initWithFullColorImage:v7];
  if (v8)
  {
    v9 = [v4 copy];
    privateSystemName = v8->_privateSystemName;
    v8->_privateSystemName = v9;

    objc_storeStrong(&v8->_systemName, v8->_privateSystemName);
    v11 = [CLKSymbolImageProvider _symbolImageProviderWithSystemName:v4];
    [(CLKFullColorImageProvider *)v8 setTintedImageProvider:v11];
  }

  return v8;
}

+ (id)symbolImageProviderWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSystemName:v4];

  return v5;
}

+ (id)_symbolImageProviderWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithSystemName:v4];

  return v5;
}

- (void)setOverridePointSize:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_overridePointSize, a3);
  v5 = [(CLKFullColorImageProvider *)self tintedImageProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    [v7 setOverridePointSize:v8];
  }
}

- (void)finalizeWithPointSize:(id)a3 weight:(int64_t)a4 maxSDKSize:(CGSize)a5 maxDeviceSize:(CGSize)a6 cornerRadius:(double)a7
{
  height = a6.height;
  width = a6.width;
  v10 = a5.height;
  v11 = a5.width;
  v15 = a3;
  v20.receiver = self;
  v20.super_class = CLKFullColorSymbolImageProvider;
  [(CLKFullColorImageProvider *)&v20 finalizeWithMaxSDKSize:v11 maxDeviceSize:v10 cornerRadius:width, height, a7];
  if (!self->_finalized)
  {
    self->_finalized = 1;
    objc_storeStrong(&self->_pointSize, a3);
    self->_weight = a4;
    v16 = [(CLKFullColorSymbolImageProvider *)self createSymbolImage];
    [(CLKFullColorImageProvider *)self setImage:v16];

    v17 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [(CLKFullColorImageProvider *)self tintedImageProvider];
      [v19 finalizeWithPointSize:v15 weight:a4 maxSDKSize:v11 maxDeviceSize:v10 cornerRadius:{width, height, a7}];
    }
  }
}

- (void)setIgnoreHierarchicalLayers:(BOOL)a3
{
  v3 = a3;
  self->_ignoreHierarchicalLayers = a3;
  v5 = [(CLKFullColorImageProvider *)self tintedImageProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    [v7 setIgnoreHierarchicalLayers:v3];
  }
}

- (id)createSymbolImage
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (self->_overridePointSize)
  {
    v3 = +[CLKDevice currentDevice];
    v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];

    [(NSNumber *)self->_overridePointSize doubleValue];
    [v4 scaledValue:?];
    v5 = [MEMORY[0x277D755D0] configurationWithPointSize:self->_weight weight:?];
  }

  else
  {
    pointSize = self->_pointSize;
    v7 = MEMORY[0x277D755D0];
    if (pointSize)
    {
      [(NSNumber *)pointSize doubleValue];
      [v7 configurationWithPointSize:self->_weight weight:?];
    }

    else
    {
      [MEMORY[0x277D755D0] configurationWithWeight:self->_weight];
    }
    v5 = ;
  }

  v8 = [(CLKFullColorImageProvider *)self tintColor];
  v9 = v8;
  if (v8 && !self->_ignoreHierarchicalLayers)
  {
    v16 = [(CLKFullColorSymbolImageProvider *)self _isHierarchicalSymbol];

    if (v16)
    {
      secondaryTintColor = self->_secondaryTintColor;
      if (secondaryTintColor)
      {
        v18 = secondaryTintColor;
      }

      else
      {
        v18 = [MEMORY[0x277D75348] whiteColor];
      }

      v19 = v18;
      v20 = MEMORY[0x277D755D0];
      v25[0] = v18;
      v21 = [(CLKFullColorImageProvider *)self tintColor];
      v25[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v23 = [v20 configurationWithPaletteColors:v22];

      v24 = [v5 configurationByApplyingConfiguration:v23];

      v5 = v24;
    }
  }

  else
  {
  }

  privateSystemName = self->_privateSystemName;
  if (privateSystemName)
  {
    [MEMORY[0x277D755B8] _systemImageNamed:privateSystemName withConfiguration:v5];
  }

  else
  {
    [MEMORY[0x277D755B8] systemImageNamed:self->_systemName withConfiguration:v5];
  }
  v11 = ;
  v12 = [(CLKFullColorImageProvider *)self tintColor];

  if (!v12)
  {
    v13 = [v11 imageWithRenderingMode:1];

    v11 = v13;
  }

  v14 = [(CLKFullColorImageProvider *)self accessibilityLabel];
  [v11 setAccessibilityLabel:v14];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKFullColorSymbolImageProvider;
  v4 = a3;
  [(CLKFullColorImageProvider *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_systemName forKey:{@"SystemName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_privateSystemName forKey:@"PrivateSystemName"];
  [v4 encodeObject:self->_pointSize forKey:@"PointSize"];
  [v4 encodeObject:self->_overridePointSize forKey:@"OverridePointSize"];
  [v4 encodeInteger:self->_weight forKey:@"Weight"];
  [v4 encodeObject:self->_secondaryTintColor forKey:@"SecondaryTintColor"];
  [v4 encodeBool:self->_ignoreHierarchicalLayers forKey:@"IgnoreHierarchicalLayers"];
}

- (CLKFullColorSymbolImageProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CLKFullColorSymbolImageProvider;
  v5 = [(CLKFullColorImageProvider *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SystemName"];
    systemName = v5->_systemName;
    v5->_systemName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivateSystemName"];
    privateSystemName = v5->_privateSystemName;
    v5->_privateSystemName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PointSize"];
    pointSize = v5->_pointSize;
    v5->_pointSize = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OverridePointSize"];
    overridePointSize = v5->_overridePointSize;
    v5->_overridePointSize = v12;

    v5->_weight = [v4 decodeIntegerForKey:@"Weight"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SecondaryTintColor"];
    secondaryTintColor = v5->_secondaryTintColor;
    v5->_secondaryTintColor = v14;

    v5->_ignoreHierarchicalLayers = [v4 decodeBoolForKey:@"IgnoreHierarchicalLayers"];
    if (v5->_privateSystemName)
    {
      [MEMORY[0x277D755B8] _systemImageNamed:?];
    }

    else
    {
      [MEMORY[0x277D755B8] systemImageNamed:v5->_systemName];
    }
    v16 = ;
    objc_storeStrong(&v5->_symbolImage, v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = CLKFullColorSymbolImageProvider, [(CLKFullColorImageProvider *)&v7 isEqual:v4]) && CLKEqualObjects(self->_systemName, v4[14]) && CLKEqualObjects(self->_privateSystemName, v4[10]) && CLKEqualObjects(self->_pointSize, v4[15]) && CLKEqualObjects(self->_overridePointSize, v4[13]) && self->_weight == v4[16] && CLKEqualObjects(self->_secondaryTintColor, v4[17]) && self->_ignoreHierarchicalLayers == *(v4 + 96);

  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = CLKFullColorSymbolImageProvider;
  v3 = [(CLKFullColorImageProvider *)&v12 hash];
  v4 = v3 + 2 * [(NSString *)self->_systemName hash];
  v5 = v4 + 4 * [(NSNumber *)self->_pointSize hash];
  v6 = v5 + 8 * [(NSNumber *)self->_overridePointSize hash]+ 16 * self->_weight;
  v7 = v6 + 32 * [(NSString *)self->_privateSystemName hash];
  v8 = v7 + ([(UIColor *)self->_secondaryTintColor hash]<< 6);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_ignoreHierarchicalLayers];
  v10 = v8 + ([v9 hash] << 7);

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17.receiver = self;
  v17.super_class = CLKFullColorSymbolImageProvider;
  v5 = [(CLKFullColorImageProvider *)&v17 copyWithZone:?];
  v6 = [(NSString *)self->_systemName copyWithZone:a3];
  v7 = v5[14];
  v5[14] = v6;

  v8 = [(NSString *)self->_privateSystemName copyWithZone:a3];
  v9 = v5[10];
  v5[10] = v8;

  v10 = [(NSNumber *)self->_pointSize copyWithZone:a3];
  v11 = v5[15];
  v5[15] = v10;

  v12 = [(NSNumber *)self->_overridePointSize copyWithZone:a3];
  v13 = v5[13];
  v5[13] = v12;

  v5[16] = self->_weight;
  v14 = [(UIColor *)self->_secondaryTintColor copyWithZone:a3];
  v15 = v5[17];
  v5[17] = v14;

  *(v5 + 96) = self->_ignoreHierarchicalLayers;
  return v5;
}

- (CLKFullColorSymbolImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = CLKFullColorSymbolImageProvider;
  v7 = [(CLKFullColorImageProvider *)&v25 initWithJSONObjectRepresentation:v6 bundle:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"SystemName"];
    systemName = v7->_systemName;
    v7->_systemName = v8;

    v10 = [v6 objectForKeyedSubscript:@"PrivateSystemName"];
    privateSystemName = v7->_privateSystemName;
    v7->_privateSystemName = v10;

    v12 = [v6 objectForKeyedSubscript:@"PointSize"];
    pointSize = v7->_pointSize;
    v7->_pointSize = v12;

    v14 = [v6 objectForKeyedSubscript:@"OverridePointSize"];
    overridePointSize = v7->_overridePointSize;
    v7->_overridePointSize = v14;

    v16 = [v6 objectForKeyedSubscript:@"Weight"];
    v7->_weight = [v16 integerValue];

    v17 = [v6 objectForKeyedSubscript:@"SecondaryTintColor"];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277D75348]);
      v19 = [v6 objectForKeyedSubscript:@"SecondaryTintColor"];
      v20 = [v18 initWithJSONObjectRepresentation:v19];
      secondaryTintColor = v7->_secondaryTintColor;
      v7->_secondaryTintColor = v20;
    }

    v22 = [v6 objectForKeyedSubscript:@"IgnoreHierarchicalLayers"];
    v7->_ignoreHierarchicalLayers = [v22 BOOLValue];

    if (v7->_privateSystemName)
    {
      [MEMORY[0x277D755B8] _systemImageNamed:?];
    }

    else
    {
      [MEMORY[0x277D755B8] systemImageNamed:v7->_systemName];
    }
    v23 = ;
    objc_storeStrong(&v7->_symbolImage, v23);
  }

  return v7;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3
{
  v15.receiver = self;
  v15.super_class = CLKFullColorSymbolImageProvider;
  v4 = [(CLKFullColorImageProvider *)&v15 JSONObjectRepresentationWritingResourcesToBundlePath:a3];
  v5 = [v4 mutableCopy];

  systemName = self->_systemName;
  if (systemName)
  {
    [v5 setObject:systemName forKeyedSubscript:@"SystemName"];
  }

  privateSystemName = self->_privateSystemName;
  if (privateSystemName)
  {
    [v5 setObject:privateSystemName forKeyedSubscript:@"PrivateSystemName"];
  }

  pointSize = self->_pointSize;
  if (pointSize)
  {
    [v5 setObject:pointSize forKeyedSubscript:@"PointSize"];
  }

  overridePointSize = self->_overridePointSize;
  if (overridePointSize)
  {
    [v5 setObject:overridePointSize forKeyedSubscript:@"OverridePointSize"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_weight];
  [v5 setObject:v10 forKeyedSubscript:@"Weight"];

  secondaryTintColor = self->_secondaryTintColor;
  if (secondaryTintColor)
  {
    v12 = [(UIColor *)secondaryTintColor JSONObjectRepresentation];
    [v5 setObject:v12 forKeyedSubscript:@"SecondaryTintColor"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_ignoreHierarchicalLayers];
  [v5 setObject:v13 forKeyedSubscript:@"IgnoreHierarchicalLayers"];

  return v5;
}

@end