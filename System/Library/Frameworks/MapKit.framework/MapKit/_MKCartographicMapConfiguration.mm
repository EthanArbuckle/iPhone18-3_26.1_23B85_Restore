@interface _MKCartographicMapConfiguration
- ($F9C4767691F2EDF2F3162F5FE7B1523A)cartographicConfiguration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCartographicMapConfiguration:(id)configuration;
- (_MKCartographicMapConfiguration)initWithCartographicConfiguration:(id *)configuration;
- (_MKCartographicMapConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addObserver:(id)observer options:(unint64_t)options context:(void *)context;
- (void)_removeObserver:(id)observer context:(void *)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MKCartographicMapConfiguration

- ($F9C4767691F2EDF2F3162F5FE7B1523A)cartographicConfiguration
{
  v3 = *&self->var6;
  *&retstr->var0 = *&self->var4;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[1].var1;
  *&retstr->var6 = self[1].var3;
  return self;
}

- (void)_removeObserver:(id)observer context:(void *)context
{
  v7.receiver = self;
  v7.super_class = _MKCartographicMapConfiguration;
  observerCopy = observer;
  [(MKMapConfiguration *)&v7 _removeObserver:observerCopy context:context];
  [(_MKCartographicMapConfiguration *)self removeObserver:observerCopy forKeyPath:@"cartographicConfiguration" context:context, v7.receiver, v7.super_class];
}

- (void)_addObserver:(id)observer options:(unint64_t)options context:(void *)context
{
  v9.receiver = self;
  v9.super_class = _MKCartographicMapConfiguration;
  observerCopy = observer;
  [(MKMapConfiguration *)&v9 _addObserver:observerCopy options:options context:context];
  [(_MKCartographicMapConfiguration *)self addObserver:observerCopy forKeyPath:@"cartographicConfiguration" options:options context:context, v9.receiver, v9.super_class];
}

- (BOOL)isEqualToCartographicMapConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy && (v8.receiver = self, v8.super_class = _MKCartographicMapConfiguration, -[MKMapConfiguration isEqual:](&v8, sel_isEqual_, configurationCopy)) && (v5 = -[_MKCartographicMapConfiguration showsTraffic](self, "showsTraffic"), v5 == [configurationCopy showsTraffic]) && _MKCartographicConfigurationEquals(&self->_cartographicConfiguration, configurationCopy + 32);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_MKCartographicMapConfiguration *)self isEqualToCartographicMapConfiguration:equalCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _MKCartographicMapConfiguration;
  result = [(MKMapConfiguration *)&v8 copyWithZone:zone];
  v6 = *&self->_cartographicConfiguration.projection;
  v5 = *&self->_cartographicConfiguration.mapkitUsage;
  v7 = *&self->_cartographicConfiguration.style;
  *(result + 10) = *&self->_cartographicConfiguration.gridOnly;
  *(result + 3) = v6;
  *(result + 4) = v5;
  *(result + 2) = v7;
  return result;
}

- (_MKCartographicMapConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = _MKCartographicMapConfiguration;
  v5 = [(MKMapConfiguration *)&v25 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    p_cartographicConfiguration = &v5->_cartographicConfiguration;
    v8 = @"MKCartographicMapConfigurationCartographicConfiguration_";
    v9 = coderCopy;
    v10 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationStyle"];
    v24 = [v9 decodeIntegerForKey:v10];

    v11 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationEmphasis"];
    v23 = [v9 decodeIntegerForKey:v11];

    v12 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationProjection"];
    v13 = [v9 decodeIntegerForKey:v12];

    v14 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationTerrainMode"];
    v15 = [v9 decodeIntegerForKey:v14];

    v16 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationMapKitUsage"];
    v17 = [v9 decodeIntegerForKey:v16];

    v18 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationMapKitClientMode"];
    v19 = [v9 decodeIntegerForKey:v18];

    v20 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationGridOnly"];

    v21 = [v9 decodeBoolForKey:v20];
    p_cartographicConfiguration->style = v24;
    v6->_cartographicConfiguration.emphasis = v23;
    v6->_cartographicConfiguration.projection = v13;
    v6->_cartographicConfiguration.terrainMode = v15;
    v6->_cartographicConfiguration.mapkitUsage = v17;
    v6->_cartographicConfiguration.mapkitClientMode = v19;
    *&v6->_cartographicConfiguration.gridOnly = v21;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v21.receiver = self;
  v21.super_class = _MKCartographicMapConfiguration;
  coderCopy = coder;
  [(MKMapConfiguration *)&v21 encodeWithCoder:coderCopy];
  style = self->_cartographicConfiguration.style;
  emphasis = self->_cartographicConfiguration.emphasis;
  projection = self->_cartographicConfiguration.projection;
  terrainMode = self->_cartographicConfiguration.terrainMode;
  mapkitUsage = self->_cartographicConfiguration.mapkitUsage;
  mapkitClientMode = self->_cartographicConfiguration.mapkitClientMode;
  gridOnly = self->_cartographicConfiguration.gridOnly;
  v12 = @"MKCartographicMapConfigurationCartographicConfiguration_";
  v13 = coderCopy;
  v14 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:{@"MKCartographicConfigurationStyle", v21.receiver, v21.super_class}];
  [v13 encodeInteger:style forKey:v14];

  v15 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationEmphasis"];
  [v13 encodeInteger:emphasis forKey:v15];

  v16 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationProjection"];
  [v13 encodeInteger:projection forKey:v16];

  v17 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationTerrainMode"];
  [v13 encodeInteger:terrainMode forKey:v17];

  v18 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationMapKitUsage"];
  [v13 encodeInteger:mapkitUsage forKey:v18];

  v19 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationMapKitClientMode"];
  [v13 encodeInteger:mapkitClientMode forKey:v19];

  v20 = [@"MKCartographicMapConfigurationCartographicConfiguration_" stringByAppendingString:@"MKCartographicConfigurationGridOnly"];

  [v13 encodeBool:gridOnly forKey:v20];
}

- (_MKCartographicMapConfiguration)initWithCartographicConfiguration:(id *)configuration
{
  v4 = (configuration->var3 - 1) < 2;
  v9.receiver = self;
  v9.super_class = _MKCartographicMapConfiguration;
  result = [(MKMapConfiguration *)&v9 initWithElevationStyle:v4];
  if (result)
  {
    v7 = *&configuration->var2;
    v6 = *&configuration->var4;
    v8 = *&configuration->var0;
    *&result->_cartographicConfiguration.gridOnly = *&configuration->var6;
    *&result->_cartographicConfiguration.projection = v7;
    *&result->_cartographicConfiguration.mapkitUsage = v6;
    *&result->_cartographicConfiguration.style = v8;
  }

  return result;
}

@end