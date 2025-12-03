@interface MKMapConfiguration
+ ($F9C4767691F2EDF2F3162F5FE7B1523A)_cartographicConfigurationForMapConfiguration:(SEL)configuration;
+ (id)_mapConfigurationWithCartographicConfiguration:(id *)configuration;
+ (id)_potentiallyLossy_mapConfigurationWithCartographicConfiguration:(id *)configuration;
- (BOOL)isEqual:(id)equal;
- (MKMapConfiguration)initWithCoder:(id)coder;
- (MKMapConfiguration)initWithElevationStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addObserver:(id)observer options:(unint64_t)options context:(void *)context;
- (void)_removeObserver:(id)observer context:(void *)context;
- (void)_setInternalStateFromMapConfiguration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKMapConfiguration

- (void)_setInternalStateFromMapConfiguration:(id)configuration
{
  configurationCopy = configuration;
  -[MKMapConfiguration set_showsTraffic:](self, "set_showsTraffic:", [configurationCopy _showsTraffic]);
  -[MKMapConfiguration set_showsHiking:](self, "set_showsHiking:", [configurationCopy _showsHiking]);
  -[MKMapConfiguration set_showsTopographicFeatures:](self, "set_showsTopographicFeatures:", [configurationCopy _showsTopographicFeatures]);
  _pointOfInterestFilter = [configurationCopy _pointOfInterestFilter];

  [(MKMapConfiguration *)self set_pointOfInterestFilter:_pointOfInterestFilter];
}

- (void)_removeObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  [(MKMapConfiguration *)self removeObserver:observerCopy forKeyPath:@"elevationStyle" context:context];
  [(MKMapConfiguration *)self removeObserver:observerCopy forKeyPath:@"_showsTraffic" context:context];
  [(MKMapConfiguration *)self removeObserver:observerCopy forKeyPath:@"_pointOfInterestFilter" context:context];
  [(MKMapConfiguration *)self removeObserver:observerCopy forKeyPath:@"_showsHiking" context:context];
  [(MKMapConfiguration *)self removeObserver:observerCopy forKeyPath:@"_showsTopographicFeatures" context:context];
}

- (void)_addObserver:(id)observer options:(unint64_t)options context:(void *)context
{
  observerCopy = observer;
  [(MKMapConfiguration *)self addObserver:observerCopy forKeyPath:@"elevationStyle" options:options context:context];
  [(MKMapConfiguration *)self addObserver:observerCopy forKeyPath:@"_showsTraffic" options:options context:context];
  [(MKMapConfiguration *)self addObserver:observerCopy forKeyPath:@"_pointOfInterestFilter" options:options context:context];
  [(MKMapConfiguration *)self addObserver:observerCopy forKeyPath:@"_showsHiking" options:options context:context];
  [(MKMapConfiguration *)self addObserver:observerCopy forKeyPath:@"_showsTopographicFeatures" options:options context:context];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    elevationStyle = self->_elevationStyle;
    if (elevationStyle == [v5 elevationStyle] && (showsHiking = self->_showsHiking, showsHiking == objc_msgSend(v5, "_showsHiking")))
    {
      showsTopographicFeatures = self->_showsTopographicFeatures;
      v9 = showsTopographicFeatures == [v5 _showsTopographicFeatures];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_elevationStyle;
  *(v5 + 8) = self->_showsTraffic;
  *(v5 + 9) = self->_showsHiking;
  *(v5 + 10) = self->_showsTopographicFeatures;
  v6 = [(MKPointOfInterestFilter *)self->_pointOfInterestFilter copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (MKMapConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_elevationStyle = [coderCopy decodeIntegerForKey:@"MKMapConfigurationElevationStyle"];
  v5 = @"MKMapConfigurationShowsTraffic";
  if ([coderCopy containsValueForKey:@"MKMapConfigurationShowsTraffic"] & 1) != 0 || (v5 = @"MKHybridMapConfigurationShowsTraffic", (objc_msgSend(coderCopy, "containsValueForKey:", @"MKHybridMapConfigurationShowsTraffic")) || (v5 = @"MKStandardMapConfigurationShowsTraffic", objc_msgSend(coderCopy, "containsValueForKey:", @"MKStandardMapConfigurationShowsTraffic")))
  {
    self->_showsTraffic = [coderCopy decodeBoolForKey:v5];
  }

  v6 = @"MKMapConfigurationPointOfInterestFilter";
  if ([coderCopy containsValueForKey:@"MKMapConfigurationPointOfInterestFilter"] & 1) != 0 || (v6 = @"MKHybridMapConfigurationPointOfInterestFilter", (objc_msgSend(coderCopy, "containsValueForKey:", @"MKHybridMapConfigurationPointOfInterestFilter")) || (v6 = @"MKStandardMapConfigurationPointOfInterestFilter", objc_msgSend(coderCopy, "containsValueForKey:", @"MKStandardMapConfigurationPointOfInterestFilter")))
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v6];
    pointOfInterestFilter = self->_pointOfInterestFilter;
    self->_pointOfInterestFilter = v7;
  }

  self->_showsHiking = [coderCopy decodeBoolForKey:@"MKMapConfigurationShowsHiking"];
  self->_showsTopographicFeatures = [coderCopy decodeBoolForKey:@"MKMapConfigurationShowsTopographicFeatures"];
  v9 = [(MKMapConfiguration *)self initWithElevationStyle:self->_elevationStyle];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  elevationStyle = self->_elevationStyle;
  coderCopy = coder;
  [coderCopy encodeInteger:elevationStyle forKey:@"MKMapConfigurationElevationStyle"];
  [coderCopy encodeBool:self->_showsTraffic forKey:@"MKMapConfigurationShowsTraffic"];
  [coderCopy encodeBool:self->_showsHiking forKey:@"MKMapConfigurationShowsHiking"];
  [coderCopy encodeBool:self->_showsTopographicFeatures forKey:@"MKMapConfigurationShowsTopographicFeatures"];
  [coderCopy encodeObject:self->_pointOfInterestFilter forKey:@"MKMapConfigurationPointOfInterestFilter"];
}

- (MKMapConfiguration)initWithElevationStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = MKMapConfiguration;
  result = [(MKMapConfiguration *)&v5 init];
  if (result)
  {
    result->_elevationStyle = style;
  }

  return result;
}

+ ($F9C4767691F2EDF2F3162F5FE7B1523A)_cartographicConfigurationForMapConfiguration:(SEL)configuration
{
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    emphasisStyle = [v5 emphasisStyle];
    if (!emphasisStyle)
    {
LABEL_21:
      _MKCartographicConfigurationForMapType(emphasisStyle, retstr);

      goto LABEL_22;
    }

    if ([v5 emphasisStyle] == 1)
    {
      emphasisStyle = 5;
      goto LABEL_21;
    }

    if ([v5 emphasisStyle] == 101)
    {
      emphasisStyle = 109;
      goto LABEL_21;
    }

    if ([v5 emphasisStyle] == 102)
    {
      emphasisStyle = 110;
      goto LABEL_21;
    }

LABEL_27:
    *&retstr->var0 = xmmword_1A30F6EC0;
    retstr->var2 = 0;
    retstr->var3 = 0;
    *&retstr->var4 = xmmword_1A30F6EF0;
    retstr->var6 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 elevationStyle])
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

LABEL_13:
    _MKCartographicConfigurationForMapType(v7, retstr);
LABEL_22:
    v8 = v10;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 elevationStyle])
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_27;
  }

  v8 = v10;
  if (v10)
  {
    [v10 cartographicConfiguration];
    goto LABEL_22;
  }

  *&retstr->var6 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
LABEL_23:

  return result;
}

+ (id)_potentiallyLossy_mapConfigurationWithCartographicConfiguration:(id *)configuration
{
  v4 = configuration->var3 - 1;
  v5 = _MKMapTypeForCartographicConfiguration(&configuration->var0);
  if (v5 > 103)
  {
    if ((v5 - 104) < 5)
    {
      goto LABEL_7;
    }

    if (v5 == 109)
    {
      v11 = [MKStandardMapConfiguration alloc];
      v12 = v4 < 2;
      v13 = 101;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_7;
      }

      v11 = [MKStandardMapConfiguration alloc];
      v12 = v4 < 2;
      v13 = 102;
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v10 = MKImageryMapConfiguration;
        }

        else
        {
          if (v5 != 2)
          {
            goto LABEL_7;
          }

          v10 = MKHybridMapConfiguration;
        }

        v14 = [v10 alloc];
        v15 = 0;
      }

      else
      {
        v14 = [MKStandardMapConfiguration alloc];
        v15 = v4 < 2;
      }

LABEL_23:
      v9 = [(MKStandardMapConfiguration *)v14 initWithElevationStyle:v15];
      goto LABEL_26;
    }

    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        v6 = MKImageryMapConfiguration;
      }

      else
      {
        v6 = MKHybridMapConfiguration;
      }

      v14 = [v6 alloc];
      v15 = 1;
      goto LABEL_23;
    }

    if (v5 != 5)
    {
LABEL_7:
      v7 = [_MKCartographicMapConfiguration alloc];
      v8 = *&configuration->var2;
      v17[0] = *&configuration->var0;
      v17[1] = v8;
      v17[2] = *&configuration->var4;
      v18 = *&configuration->var6;
      v9 = [(_MKCartographicMapConfiguration *)v7 initWithCartographicConfiguration:v17];
      goto LABEL_26;
    }

    v11 = [MKStandardMapConfiguration alloc];
    v12 = v4 < 2;
    v13 = 1;
  }

  v9 = [(MKStandardMapConfiguration *)v11 initWithElevationStyle:v12 emphasisStyle:v13];
LABEL_26:

  return v9;
}

+ (id)_mapConfigurationWithCartographicConfiguration:(id *)configuration
{
  v5 = *&configuration->var2;
  v14 = *&configuration->var0;
  v15 = v5;
  v16 = *&configuration->var4;
  v17 = *&configuration->var6;
  v6 = [self _potentiallyLossy_mapConfigurationWithCartographicConfiguration:&v14];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (v17 = 0, v15 = 0u, v16 = 0u, v14 = 0u, [self _cartographicConfigurationForMapConfiguration:v6], _MKCartographicConfigurationEquals(&v14, configuration)))
  {
    v7 = v6;
  }

  else
  {
    v8 = [_MKCartographicMapConfiguration alloc];
    v9 = *&configuration->var2;
    v12[0] = *&configuration->var0;
    v12[1] = v9;
    v12[2] = *&configuration->var4;
    v13 = *&configuration->var6;
    v7 = [(_MKCartographicMapConfiguration *)v8 initWithCartographicConfiguration:v12];
  }

  v10 = v7;

  return v10;
}

@end