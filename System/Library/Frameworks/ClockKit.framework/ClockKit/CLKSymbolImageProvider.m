@interface CLKSymbolImageProvider
+ (id)_symbolImageProviderWithSystemName:(id)a3;
+ (id)symbolImageProviderWithSystemName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CLKSymbolImageProvider)initWithCoder:(id)a3;
- (CLKSymbolImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4;
- (CLKSymbolImageProvider)initWithSystemName:(id)a3;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3;
- (id)_configuration;
- (id)_createSymbolImageWithConfiguration:(id)a3;
- (id)_createSymbolImageWithForeground:(id)a3 background:(id)a4;
- (id)_initWithSystemName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createSymbolImage;
- (id)createSymbolImageForType:(int64_t)a3 color:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)finalizeWithPointSize:(id)a3 weight:(int64_t)a4 maxSDKSize:(CGSize)a5 maxDeviceSize:(CGSize)a6 cornerRadius:(double)a7;
- (void)finalizeWithPointSize:(id)a3 weight:(int64_t)a4 maxSDKSize:(CGSize)a5 maxDeviceSize:(CGSize)a6 maskToCircle:(BOOL)a7;
@end

@implementation CLKSymbolImageProvider

- (CLKSymbolImageProvider)initWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D755B8] systemImageNamed:v4];
  if (!v5)
  {
    v6 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CLKSymbolImageProvider *)v4 initWithSystemName:v6];
    }
  }

  self->_hierarchicalSymbol = [v5 _isHierarchicalColorSymbolImage];
  v11.receiver = self;
  v11.super_class = CLKSymbolImageProvider;
  v7 = [(CLKImageProvider *)&v11 initWithOnePieceImage:v5];
  if (v7)
  {
    v8 = [v4 copy];
    systemName = v7->_systemName;
    v7->_systemName = v8;
  }

  return v7;
}

- (id)_initWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:v4];
  if (!v5)
  {
    v6 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CLKSymbolImageProvider *)v4 _initWithSystemName:v6];
    }
  }

  self->_hierarchicalSymbol = [v5 _isHierarchicalColorSymbolImage];
  v11.receiver = self;
  v11.super_class = CLKSymbolImageProvider;
  v7 = [(CLKImageProvider *)&v11 initWithOnePieceImage:v5];
  if (v7)
  {
    v8 = [v4 copy];
    privateSystemName = v7->_privateSystemName;
    v7->_privateSystemName = v8;

    objc_storeStrong(&v7->_systemName, v7->_privateSystemName);
  }

  return v7;
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

- (void)finalizeWithPointSize:(id)a3 weight:(int64_t)a4 maxSDKSize:(CGSize)a5 maxDeviceSize:(CGSize)a6 maskToCircle:(BOOL)a7
{
  v7 = a7;
  height = a6.height;
  width = a6.width;
  v10 = a5.height;
  v11 = a5.width;
  v15 = a3;
  if (!self->_finalized)
  {
    v16 = [(CLKSymbolImageProvider *)self createSymbolImage];
    [(CLKImageProvider *)self setOnePieceImage:v16];

    if ([(CLKSymbolImageProvider *)self isTwoPiece])
    {
      v17 = [MEMORY[0x277D75348] whiteColor];
      v18 = [(CLKSymbolImageProvider *)self createSymbolImageForType:3 color:v17];
      [(CLKImageProvider *)self setTwoPieceImageBackground:v18];

      v19 = [MEMORY[0x277D75348] whiteColor];
      v20 = [(CLKSymbolImageProvider *)self createSymbolImageForType:2 color:v19];
      [(CLKImageProvider *)self setTwoPieceImageForeground:v20];
    }
  }

  v21.receiver = self;
  v21.super_class = CLKSymbolImageProvider;
  [(CLKImageProvider *)&v21 finalizeWithMaxSDKSize:v7 maxDeviceSize:v11 maskToCircle:v10, width, height];
  if (!self->_finalized)
  {
    self->_finalized = 1;
    objc_storeStrong(&self->_pointSize, a3);
    self->_weight = a4;
  }
}

- (void)finalizeWithPointSize:(id)a3 weight:(int64_t)a4 maxSDKSize:(CGSize)a5 maxDeviceSize:(CGSize)a6 cornerRadius:(double)a7
{
  height = a6.height;
  width = a6.width;
  v10 = a5.height;
  v11 = a5.width;
  v15 = a3;
  if (!self->_finalized)
  {
    v16 = [(CLKSymbolImageProvider *)self createSymbolImage];
    [(CLKImageProvider *)self setOnePieceImage:v16];

    if ([(CLKSymbolImageProvider *)self isTwoPiece])
    {
      v17 = [MEMORY[0x277D75348] whiteColor];
      v18 = [(CLKSymbolImageProvider *)self createSymbolImageForType:3 color:v17];
      [(CLKImageProvider *)self setTwoPieceImageBackground:v18];

      v19 = [MEMORY[0x277D75348] whiteColor];
      v20 = [(CLKSymbolImageProvider *)self createSymbolImageForType:2 color:v19];
      [(CLKImageProvider *)self setTwoPieceImageForeground:v20];
    }
  }

  v21.receiver = self;
  v21.super_class = CLKSymbolImageProvider;
  [(CLKImageProvider *)&v21 finalizeWithMaxSDKSize:v11 maxDeviceSize:v10 cornerRadius:width, height, a7];
  if (!self->_finalized)
  {
    self->_finalized = 1;
    objc_storeStrong(&self->_pointSize, a3);
    self->_weight = a4;
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

- (id)_createSymbolImageWithConfiguration:(id)a3
{
  privateSystemName = self->_privateSystemName;
  if (privateSystemName)
  {
    [MEMORY[0x277D755B8] _systemImageNamed:privateSystemName withConfiguration:a3];
  }

  else
  {
    [MEMORY[0x277D755B8] systemImageNamed:self->_systemName withConfiguration:a3];
  }
  v6 = ;
  v7 = [(CLKImageProvider *)self accessibilityLabel];
  [v6 setAccessibilityLabel:v7];

  return v6;
}

- (id)_createSymbolImageWithForeground:(id)a3 background:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(CLKSymbolImageProvider *)self _configuration];
  v9 = MEMORY[0x277D755D0];
  v16[0] = v7;
  v16[1] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v11 = [v9 configurationWithPaletteColors:v10];

  v12 = [v8 configurationByApplyingConfiguration:v11];

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
  v3 = [(CLKSymbolImageProvider *)self _configuration];
  v4 = [(CLKSymbolImageProvider *)self _createSymbolImageWithConfiguration:v3];

  return v4;
}

- (id)createSymbolImageForType:(int64_t)a3 color:(id)a4
{
  v7 = a4;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = [MEMORY[0x277D75348] clearColor];
      v9 = self;
      v10 = v7;
      v11 = v8;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_9;
      }

      v8 = [MEMORY[0x277D75348] clearColor];
      v9 = self;
      v10 = v8;
      v11 = v7;
    }

    v4 = [(CLKSymbolImageProvider *)v9 _createSymbolImageWithForeground:v10 background:v11];
  }

  else if (a3 <= 1)
  {
    v4 = [(CLKSymbolImageProvider *)self createSymbolImage];
  }

LABEL_9:

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKSymbolImageProvider;
  v4 = a3;
  [(CLKImageProvider *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_systemName forKey:{@"SystemName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_privateSystemName forKey:@"PrivateSystemName"];
  [v4 encodeObject:self->_pointSize forKey:@"PointSize"];
  [v4 encodeObject:self->_overridePointSize forKey:@"OverridePointSize"];
  [v4 encodeInteger:self->_weight forKey:@"Weight"];
  [v4 encodeObject:self->_secondaryTintColor forKey:@"SecondaryTintColor"];
  [v4 encodeBool:self->_ignoreHierarchicalLayers forKey:@"IgnoreHierarchicalLayers"];
  [v4 encodeBool:self->_hierarchicalSymbol forKey:@"HierarchicalSymbol"];
}

- (CLKSymbolImageProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CLKSymbolImageProvider;
  v5 = [(CLKImageProvider *)&v17 initWithCoder:v4];
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
    v5->_hierarchicalSymbol = [v4 decodeBoolForKey:@"HierarchicalSymbol"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = CLKSymbolImageProvider, [(CLKImageProvider *)&v7 isEqual:v4]) && CLKEqualObjects(self->_systemName, v4[16]) && CLKEqualObjects(self->_privateSystemName, v4[13]) && CLKEqualObjects(self->_pointSize, v4[17]) && CLKEqualObjects(self->_overridePointSize, v4[15]) && self->_weight == v4[18] && CLKEqualObjects(self->_secondaryTintColor, v4[19]) && self->_ignoreHierarchicalLayers == *(v4 + 113);

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

- (id)copyWithZone:(_NSZone *)a3
{
  v17.receiver = self;
  v17.super_class = CLKSymbolImageProvider;
  v5 = [(CLKImageProvider *)&v17 copyWithZone:?];
  v6 = [(NSString *)self->_systemName copyWithZone:a3];
  v7 = v5[16];
  v5[16] = v6;

  v8 = [(NSString *)self->_privateSystemName copyWithZone:a3];
  v9 = v5[13];
  v5[13] = v8;

  v10 = [(NSNumber *)self->_pointSize copyWithZone:a3];
  v11 = v5[17];
  v5[17] = v10;

  v12 = [(NSNumber *)self->_overridePointSize copyWithZone:a3];
  v13 = v5[15];
  v5[15] = v12;

  v5[18] = self->_weight;
  v14 = [(UIColor *)self->_secondaryTintColor copyWithZone:a3];
  v15 = v5[19];
  v5[19] = v14;

  *(v5 + 113) = self->_ignoreHierarchicalLayers;
  *(v5 + 112) = self->_hierarchicalSymbol;
  return v5;
}

- (CLKSymbolImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = CLKSymbolImageProvider;
  v7 = [(CLKImageProvider *)&v25 initWithJSONObjectRepresentation:v6 bundle:a4];
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

    v23 = [v6 objectForKeyedSubscript:@"HierarchicalSymbol"];
    v7->_hierarchicalSymbol = [v23 BOOLValue];
  }

  return v7;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3
{
  v16.receiver = self;
  v16.super_class = CLKSymbolImageProvider;
  v4 = [(CLKImageProvider *)&v16 JSONObjectRepresentationWritingResourcesToBundlePath:a3];
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