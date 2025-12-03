@interface CLKSymbolImageProvider
+ (id)_symbolImageProviderWithSystemName:(id)name;
+ (id)symbolImageProviderWithSystemName:(id)name;
- (BOOL)isEqual:(id)equal;
- (CLKSymbolImageProvider)initWithCoder:(id)coder;
- (CLKSymbolImageProvider)initWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
- (CLKSymbolImageProvider)initWithSystemName:(id)name;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path;
- (id)_configuration;
- (id)_createSymbolImageWithConfiguration:(id)configuration;
- (id)_createSymbolImageWithForeground:(id)foreground background:(id)background;
- (id)_initWithSystemName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createSymbolImage;
- (id)createSymbolImageForType:(int64_t)type color:(id)color;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)finalizeWithPointSize:(id)size weight:(int64_t)weight maxSDKSize:(CGSize)kSize maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius;
- (void)finalizeWithPointSize:(id)size weight:(int64_t)weight maxSDKSize:(CGSize)kSize maxDeviceSize:(CGSize)deviceSize maskToCircle:(BOOL)circle;
@end

@implementation CLKSymbolImageProvider

- (CLKSymbolImageProvider)initWithSystemName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy];
  if (!v5)
  {
    v6 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CLKSymbolImageProvider *)nameCopy initWithSystemName:v6];
    }
  }

  self->_hierarchicalSymbol = [v5 _isHierarchicalColorSymbolImage];
  v11.receiver = self;
  v11.super_class = CLKSymbolImageProvider;
  v7 = [(CLKImageProvider *)&v11 initWithOnePieceImage:v5];
  if (v7)
  {
    v8 = [nameCopy copy];
    systemName = v7->_systemName;
    v7->_systemName = v8;
  }

  return v7;
}

- (id)_initWithSystemName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:nameCopy];
  if (!v5)
  {
    v6 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CLKSymbolImageProvider *)nameCopy _initWithSystemName:v6];
    }
  }

  self->_hierarchicalSymbol = [v5 _isHierarchicalColorSymbolImage];
  v11.receiver = self;
  v11.super_class = CLKSymbolImageProvider;
  v7 = [(CLKImageProvider *)&v11 initWithOnePieceImage:v5];
  if (v7)
  {
    v8 = [nameCopy copy];
    privateSystemName = v7->_privateSystemName;
    v7->_privateSystemName = v8;

    objc_storeStrong(&v7->_systemName, v7->_privateSystemName);
  }

  return v7;
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

- (void)finalizeWithPointSize:(id)size weight:(int64_t)weight maxSDKSize:(CGSize)kSize maxDeviceSize:(CGSize)deviceSize maskToCircle:(BOOL)circle
{
  circleCopy = circle;
  height = deviceSize.height;
  width = deviceSize.width;
  v10 = kSize.height;
  v11 = kSize.width;
  sizeCopy = size;
  if (!self->_finalized)
  {
    createSymbolImage = [(CLKSymbolImageProvider *)self createSymbolImage];
    [(CLKImageProvider *)self setOnePieceImage:createSymbolImage];

    if ([(CLKSymbolImageProvider *)self isTwoPiece])
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v18 = [(CLKSymbolImageProvider *)self createSymbolImageForType:3 color:whiteColor];
      [(CLKImageProvider *)self setTwoPieceImageBackground:v18];

      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      v20 = [(CLKSymbolImageProvider *)self createSymbolImageForType:2 color:whiteColor2];
      [(CLKImageProvider *)self setTwoPieceImageForeground:v20];
    }
  }

  v21.receiver = self;
  v21.super_class = CLKSymbolImageProvider;
  [(CLKImageProvider *)&v21 finalizeWithMaxSDKSize:circleCopy maxDeviceSize:v11 maskToCircle:v10, width, height];
  if (!self->_finalized)
  {
    self->_finalized = 1;
    objc_storeStrong(&self->_pointSize, size);
    self->_weight = weight;
  }
}

- (void)finalizeWithPointSize:(id)size weight:(int64_t)weight maxSDKSize:(CGSize)kSize maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius
{
  height = deviceSize.height;
  width = deviceSize.width;
  v10 = kSize.height;
  v11 = kSize.width;
  sizeCopy = size;
  if (!self->_finalized)
  {
    createSymbolImage = [(CLKSymbolImageProvider *)self createSymbolImage];
    [(CLKImageProvider *)self setOnePieceImage:createSymbolImage];

    if ([(CLKSymbolImageProvider *)self isTwoPiece])
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v18 = [(CLKSymbolImageProvider *)self createSymbolImageForType:3 color:whiteColor];
      [(CLKImageProvider *)self setTwoPieceImageBackground:v18];

      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      v20 = [(CLKSymbolImageProvider *)self createSymbolImageForType:2 color:whiteColor2];
      [(CLKImageProvider *)self setTwoPieceImageForeground:v20];
    }
  }

  v21.receiver = self;
  v21.super_class = CLKSymbolImageProvider;
  [(CLKImageProvider *)&v21 finalizeWithMaxSDKSize:v11 maxDeviceSize:v10 cornerRadius:width, height, radius];
  if (!self->_finalized)
  {
    self->_finalized = 1;
    objc_storeStrong(&self->_pointSize, size);
    self->_weight = weight;
  }
}

- (id)_configuration
{
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

  return v5;
}

- (id)_createSymbolImageWithConfiguration:(id)configuration
{
  privateSystemName = self->_privateSystemName;
  if (privateSystemName)
  {
    [MEMORY[0x277D755B8] _systemImageNamed:privateSystemName withConfiguration:configuration];
  }

  else
  {
    [MEMORY[0x277D755B8] systemImageNamed:self->_systemName withConfiguration:configuration];
  }
  v6 = ;
  accessibilityLabel = [(CLKImageProvider *)self accessibilityLabel];
  [v6 setAccessibilityLabel:accessibilityLabel];

  return v6;
}

- (id)_createSymbolImageWithForeground:(id)foreground background:(id)background
{
  v16[2] = *MEMORY[0x277D85DE8];
  backgroundCopy = background;
  foregroundCopy = foreground;
  _configuration = [(CLKSymbolImageProvider *)self _configuration];
  v9 = MEMORY[0x277D755D0];
  v16[0] = foregroundCopy;
  v16[1] = backgroundCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v11 = [v9 configurationWithPaletteColors:v10];

  v12 = [_configuration configurationByApplyingConfiguration:v11];

  v13 = [(CLKSymbolImageProvider *)self _createSymbolImageWithConfiguration:v12];
  [v13 size];
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  [v13 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v14 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();

  return v14;
}

- (id)createSymbolImage
{
  _configuration = [(CLKSymbolImageProvider *)self _configuration];
  v4 = [(CLKSymbolImageProvider *)self _createSymbolImageWithConfiguration:_configuration];

  return v4;
}

- (id)createSymbolImageForType:(int64_t)type color:(id)color
{
  colorCopy = color;
  if (type > 1)
  {
    if (type == 2)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      selfCopy2 = self;
      v10 = colorCopy;
      v11 = clearColor;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_9;
      }

      clearColor = [MEMORY[0x277D75348] clearColor];
      selfCopy2 = self;
      v10 = clearColor;
      v11 = colorCopy;
    }

    createSymbolImage = [(CLKSymbolImageProvider *)selfCopy2 _createSymbolImageWithForeground:v10 background:v11];
  }

  else if (type <= 1)
  {
    createSymbolImage = [(CLKSymbolImageProvider *)self createSymbolImage];
  }

LABEL_9:

  return createSymbolImage;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKSymbolImageProvider;
  coderCopy = coder;
  [(CLKImageProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_systemName forKey:{@"SystemName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_privateSystemName forKey:@"PrivateSystemName"];
  [coderCopy encodeObject:self->_pointSize forKey:@"PointSize"];
  [coderCopy encodeObject:self->_overridePointSize forKey:@"OverridePointSize"];
  [coderCopy encodeInteger:self->_weight forKey:@"Weight"];
  [coderCopy encodeObject:self->_secondaryTintColor forKey:@"SecondaryTintColor"];
  [coderCopy encodeBool:self->_ignoreHierarchicalLayers forKey:@"IgnoreHierarchicalLayers"];
  [coderCopy encodeBool:self->_hierarchicalSymbol forKey:@"HierarchicalSymbol"];
}

- (CLKSymbolImageProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CLKSymbolImageProvider;
  v5 = [(CLKImageProvider *)&v17 initWithCoder:coderCopy];
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
    v5->_hierarchicalSymbol = [coderCopy decodeBoolForKey:@"HierarchicalSymbol"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = CLKSymbolImageProvider, [(CLKImageProvider *)&v7 isEqual:equalCopy]) && CLKEqualObjects(self->_systemName, equalCopy[16]) && CLKEqualObjects(self->_privateSystemName, equalCopy[13]) && CLKEqualObjects(self->_pointSize, equalCopy[17]) && CLKEqualObjects(self->_overridePointSize, equalCopy[15]) && self->_weight == equalCopy[18] && CLKEqualObjects(self->_secondaryTintColor, equalCopy[19]) && self->_ignoreHierarchicalLayers == *(equalCopy + 113);

  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = CLKSymbolImageProvider;
  v3 = [(CLKImageProvider *)&v12 hash];
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
  v17.super_class = CLKSymbolImageProvider;
  v5 = [(CLKImageProvider *)&v17 copyWithZone:?];
  v6 = [(NSString *)self->_systemName copyWithZone:zone];
  v7 = v5[16];
  v5[16] = v6;

  v8 = [(NSString *)self->_privateSystemName copyWithZone:zone];
  v9 = v5[13];
  v5[13] = v8;

  v10 = [(NSNumber *)self->_pointSize copyWithZone:zone];
  v11 = v5[17];
  v5[17] = v10;

  v12 = [(NSNumber *)self->_overridePointSize copyWithZone:zone];
  v13 = v5[15];
  v5[15] = v12;

  v5[18] = self->_weight;
  v14 = [(UIColor *)self->_secondaryTintColor copyWithZone:zone];
  v15 = v5[19];
  v5[19] = v14;

  *(v5 + 113) = self->_ignoreHierarchicalLayers;
  *(v5 + 112) = self->_hierarchicalSymbol;
  return v5;
}

- (CLKSymbolImageProvider)initWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  v25.receiver = self;
  v25.super_class = CLKSymbolImageProvider;
  v7 = [(CLKImageProvider *)&v25 initWithJSONObjectRepresentation:representationCopy bundle:bundle];
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

    v23 = [representationCopy objectForKeyedSubscript:@"HierarchicalSymbol"];
    v7->_hierarchicalSymbol = [v23 BOOLValue];
  }

  return v7;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path
{
  v16.receiver = self;
  v16.super_class = CLKSymbolImageProvider;
  v4 = [(CLKImageProvider *)&v16 JSONObjectRepresentationWritingResourcesToBundlePath:path];
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

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_hierarchicalSymbol];
  [v5 setObject:v14 forKeyedSubscript:@"HierarchicalSymbol"];

  return v5;
}

- (void)initWithSystemName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "Attempted to create symbol image provider with invalid symbol %@", &v2, 0xCu);
}

- (void)_initWithSystemName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "Attempted to create private symbol image provider with invalid symbol %@", &v2, 0xCu);
}

@end