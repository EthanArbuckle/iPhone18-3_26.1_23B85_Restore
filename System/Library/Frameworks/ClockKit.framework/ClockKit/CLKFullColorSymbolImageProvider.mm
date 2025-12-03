@interface CLKFullColorSymbolImageProvider
+ (id)_symbolImageProviderWithSystemName:(id)name;
+ (id)symbolImageProviderWithSystemName:(id)name;
- (BOOL)isEqual:(id)equal;
- (CLKFullColorSymbolImageProvider)initWithCoder:(id)coder;
- (CLKFullColorSymbolImageProvider)initWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
- (CLKFullColorSymbolImageProvider)initWithSystemName:(id)name;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path;
- (id)_initWithSystemName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createSymbolImage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)finalizeWithPointSize:(id)size weight:(int64_t)weight maxSDKSize:(CGSize)kSize maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius;
- (void)setIgnoreHierarchicalLayers:(BOOL)layers;
- (void)setOverridePointSize:(id)size;
@end

@implementation CLKFullColorSymbolImageProvider

- (CLKFullColorSymbolImageProvider)initWithSystemName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy];
  symbolImage = self->_symbolImage;
  self->_symbolImage = v5;

  v7 = self->_symbolImage;
  v13.receiver = self;
  v13.super_class = CLKFullColorSymbolImageProvider;
  v8 = [(CLKFullColorImageProvider *)&v13 initWithFullColorImage:v7];
  if (v8)
  {
    v9 = [nameCopy copy];
    systemName = v8->_systemName;
    v8->_systemName = v9;

    v11 = [CLKSymbolImageProvider symbolImageProviderWithSystemName:nameCopy];
    [(CLKFullColorImageProvider *)v8 setTintedImageProvider:v11];
  }

  return v8;
}

- (id)_initWithSystemName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:nameCopy];
  symbolImage = self->_symbolImage;
  self->_symbolImage = v5;

  v7 = self->_symbolImage;
  v13.receiver = self;
  v13.super_class = CLKFullColorSymbolImageProvider;
  v8 = [(CLKFullColorImageProvider *)&v13 initWithFullColorImage:v7];
  if (v8)
  {
    v9 = [nameCopy copy];
    privateSystemName = v8->_privateSystemName;
    v8->_privateSystemName = v9;

    objc_storeStrong(&v8->_systemName, v8->_privateSystemName);
    v11 = [CLKSymbolImageProvider _symbolImageProviderWithSystemName:nameCopy];
    [(CLKFullColorImageProvider *)v8 setTintedImageProvider:v11];
  }

  return v8;
}

+ (id)symbolImageProviderWithSystemName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithSystemName:nameCopy];

  return v5;
}

+ (id)_symbolImageProviderWithSystemName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] _initWithSystemName:nameCopy];

  return v5;
}

- (void)setOverridePointSize:(id)size
{
  sizeCopy = size;
  objc_storeStrong(&self->_overridePointSize, size);
  tintedImageProvider = [(CLKFullColorImageProvider *)self tintedImageProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    tintedImageProvider2 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    [tintedImageProvider2 setOverridePointSize:sizeCopy];
  }
}

- (void)finalizeWithPointSize:(id)size weight:(int64_t)weight maxSDKSize:(CGSize)kSize maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius
{
  height = deviceSize.height;
  width = deviceSize.width;
  v10 = kSize.height;
  v11 = kSize.width;
  sizeCopy = size;
  v20.receiver = self;
  v20.super_class = CLKFullColorSymbolImageProvider;
  [(CLKFullColorImageProvider *)&v20 finalizeWithMaxSDKSize:v11 maxDeviceSize:v10 cornerRadius:width, height, radius];
  if (!self->_finalized)
  {
    self->_finalized = 1;
    objc_storeStrong(&self->_pointSize, size);
    self->_weight = weight;
    createSymbolImage = [(CLKFullColorSymbolImageProvider *)self createSymbolImage];
    [(CLKFullColorImageProvider *)self setImage:createSymbolImage];

    tintedImageProvider = [(CLKFullColorImageProvider *)self tintedImageProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      tintedImageProvider2 = [(CLKFullColorImageProvider *)self tintedImageProvider];
      [tintedImageProvider2 finalizeWithPointSize:sizeCopy weight:weight maxSDKSize:v11 maxDeviceSize:v10 cornerRadius:{width, height, radius}];
    }
  }
}

- (void)setIgnoreHierarchicalLayers:(BOOL)layers
{
  layersCopy = layers;
  self->_ignoreHierarchicalLayers = layers;
  tintedImageProvider = [(CLKFullColorImageProvider *)self tintedImageProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    tintedImageProvider2 = [(CLKFullColorImageProvider *)self tintedImageProvider];
    [tintedImageProvider2 setIgnoreHierarchicalLayers:layersCopy];
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

  tintColor = [(CLKFullColorImageProvider *)self tintColor];
  v9 = tintColor;
  if (tintColor && !self->_ignoreHierarchicalLayers)
  {
    _isHierarchicalSymbol = [(CLKFullColorSymbolImageProvider *)self _isHierarchicalSymbol];

    if (_isHierarchicalSymbol)
    {
      secondaryTintColor = self->_secondaryTintColor;
      if (secondaryTintColor)
      {
        whiteColor = secondaryTintColor;
      }

      else
      {
        whiteColor = [MEMORY[0x277D75348] whiteColor];
      }

      v19 = whiteColor;
      v20 = MEMORY[0x277D755D0];
      v25[0] = whiteColor;
      tintColor2 = [(CLKFullColorImageProvider *)self tintColor];
      v25[1] = tintColor2;
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
  tintColor3 = [(CLKFullColorImageProvider *)self tintColor];

  if (!tintColor3)
  {
    v13 = [v11 imageWithRenderingMode:1];

    v11 = v13;
  }

  accessibilityLabel = [(CLKFullColorImageProvider *)self accessibilityLabel];
  [v11 setAccessibilityLabel:accessibilityLabel];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKFullColorSymbolImageProvider;
  coderCopy = coder;
  [(CLKFullColorImageProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_systemName forKey:{@"SystemName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_privateSystemName forKey:@"PrivateSystemName"];
  [coderCopy encodeObject:self->_pointSize forKey:@"PointSize"];
  [coderCopy encodeObject:self->_overridePointSize forKey:@"OverridePointSize"];
  [coderCopy encodeInteger:self->_weight forKey:@"Weight"];
  [coderCopy encodeObject:self->_secondaryTintColor forKey:@"SecondaryTintColor"];
  [coderCopy encodeBool:self->_ignoreHierarchicalLayers forKey:@"IgnoreHierarchicalLayers"];
}

- (CLKFullColorSymbolImageProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CLKFullColorSymbolImageProvider;
  v5 = [(CLKFullColorImageProvider *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SystemName"];
    systemName = v5->_systemName;
    v5->_systemName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivateSystemName"];
    privateSystemName = v5->_privateSystemName;
    v5->_privateSystemName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PointSize"];
    pointSize = v5->_pointSize;
    v5->_pointSize = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OverridePointSize"];
    overridePointSize = v5->_overridePointSize;
    v5->_overridePointSize = v12;

    v5->_weight = [coderCopy decodeIntegerForKey:@"Weight"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SecondaryTintColor"];
    secondaryTintColor = v5->_secondaryTintColor;
    v5->_secondaryTintColor = v14;

    v5->_ignoreHierarchicalLayers = [coderCopy decodeBoolForKey:@"IgnoreHierarchicalLayers"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = CLKFullColorSymbolImageProvider, [(CLKFullColorImageProvider *)&v7 isEqual:equalCopy]) && CLKEqualObjects(self->_systemName, equalCopy[14]) && CLKEqualObjects(self->_privateSystemName, equalCopy[10]) && CLKEqualObjects(self->_pointSize, equalCopy[15]) && CLKEqualObjects(self->_overridePointSize, equalCopy[13]) && self->_weight == equalCopy[16] && CLKEqualObjects(self->_secondaryTintColor, equalCopy[17]) && self->_ignoreHierarchicalLayers == *(equalCopy + 96);

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

- (id)copyWithZone:(_NSZone *)zone
{
  v17.receiver = self;
  v17.super_class = CLKFullColorSymbolImageProvider;
  v5 = [(CLKFullColorImageProvider *)&v17 copyWithZone:?];
  v6 = [(NSString *)self->_systemName copyWithZone:zone];
  v7 = v5[14];
  v5[14] = v6;

  v8 = [(NSString *)self->_privateSystemName copyWithZone:zone];
  v9 = v5[10];
  v5[10] = v8;

  v10 = [(NSNumber *)self->_pointSize copyWithZone:zone];
  v11 = v5[15];
  v5[15] = v10;

  v12 = [(NSNumber *)self->_overridePointSize copyWithZone:zone];
  v13 = v5[13];
  v5[13] = v12;

  v5[16] = self->_weight;
  v14 = [(UIColor *)self->_secondaryTintColor copyWithZone:zone];
  v15 = v5[17];
  v5[17] = v14;

  *(v5 + 96) = self->_ignoreHierarchicalLayers;
  return v5;
}

- (CLKFullColorSymbolImageProvider)initWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  v25.receiver = self;
  v25.super_class = CLKFullColorSymbolImageProvider;
  v7 = [(CLKFullColorImageProvider *)&v25 initWithJSONObjectRepresentation:representationCopy bundle:bundle];
  if (v7)
  {
    v8 = [representationCopy objectForKeyedSubscript:@"SystemName"];
    systemName = v7->_systemName;
    v7->_systemName = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"PrivateSystemName"];
    privateSystemName = v7->_privateSystemName;
    v7->_privateSystemName = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"PointSize"];
    pointSize = v7->_pointSize;
    v7->_pointSize = v12;

    v14 = [representationCopy objectForKeyedSubscript:@"OverridePointSize"];
    overridePointSize = v7->_overridePointSize;
    v7->_overridePointSize = v14;

    v16 = [representationCopy objectForKeyedSubscript:@"Weight"];
    v7->_weight = [v16 integerValue];

    v17 = [representationCopy objectForKeyedSubscript:@"SecondaryTintColor"];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277D75348]);
      v19 = [representationCopy objectForKeyedSubscript:@"SecondaryTintColor"];
      v20 = [v18 initWithJSONObjectRepresentation:v19];
      secondaryTintColor = v7->_secondaryTintColor;
      v7->_secondaryTintColor = v20;
    }

    v22 = [representationCopy objectForKeyedSubscript:@"IgnoreHierarchicalLayers"];
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

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path
{
  v15.receiver = self;
  v15.super_class = CLKFullColorSymbolImageProvider;
  v4 = [(CLKFullColorImageProvider *)&v15 JSONObjectRepresentationWritingResourcesToBundlePath:path];
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
    jSONObjectRepresentation = [(UIColor *)secondaryTintColor JSONObjectRepresentation];
    [v5 setObject:jSONObjectRepresentation forKeyedSubscript:@"SecondaryTintColor"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_ignoreHierarchicalLayers];
  [v5 setObject:v13 forKeyedSubscript:@"IgnoreHierarchicalLayers"];

  return v5;
}

@end