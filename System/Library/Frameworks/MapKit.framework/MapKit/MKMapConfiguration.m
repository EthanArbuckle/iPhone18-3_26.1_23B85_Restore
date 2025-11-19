@interface MKMapConfiguration
+ ($F9C4767691F2EDF2F3162F5FE7B1523A)_cartographicConfigurationForMapConfiguration:(SEL)a3;
+ (id)_mapConfigurationWithCartographicConfiguration:(id *)a3;
+ (id)_potentiallyLossy_mapConfigurationWithCartographicConfiguration:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (MKMapConfiguration)initWithCoder:(id)a3;
- (MKMapConfiguration)initWithElevationStyle:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5;
- (void)_removeObserver:(id)a3 context:(void *)a4;
- (void)_setInternalStateFromMapConfiguration:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MKMapConfiguration

- (void)_setInternalStateFromMapConfiguration:(id)a3
{
  v4 = a3;
  -[MKMapConfiguration set_showsTraffic:](self, "set_showsTraffic:", [v4 _showsTraffic]);
  -[MKMapConfiguration set_showsHiking:](self, "set_showsHiking:", [v4 _showsHiking]);
  -[MKMapConfiguration set_showsTopographicFeatures:](self, "set_showsTopographicFeatures:", [v4 _showsTopographicFeatures]);
  v5 = [v4 _pointOfInterestFilter];

  [(MKMapConfiguration *)self set_pointOfInterestFilter:v5];
}

- (void)_removeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  [(MKMapConfiguration *)self removeObserver:v6 forKeyPath:@"elevationStyle" context:a4];
  [(MKMapConfiguration *)self removeObserver:v6 forKeyPath:@"_showsTraffic" context:a4];
  [(MKMapConfiguration *)self removeObserver:v6 forKeyPath:@"_pointOfInterestFilter" context:a4];
  [(MKMapConfiguration *)self removeObserver:v6 forKeyPath:@"_showsHiking" context:a4];
  [(MKMapConfiguration *)self removeObserver:v6 forKeyPath:@"_showsTopographicFeatures" context:a4];
}

- (void)_addObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  [(MKMapConfiguration *)self addObserver:v8 forKeyPath:@"elevationStyle" options:a4 context:a5];
  [(MKMapConfiguration *)self addObserver:v8 forKeyPath:@"_showsTraffic" options:a4 context:a5];
  [(MKMapConfiguration *)self addObserver:v8 forKeyPath:@"_pointOfInterestFilter" options:a4 context:a5];
  [(MKMapConfiguration *)self addObserver:v8 forKeyPath:@"_showsHiking" options:a4 context:a5];
  [(MKMapConfiguration *)self addObserver:v8 forKeyPath:@"_showsTopographicFeatures" options:a4 context:a5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_elevationStyle;
  *(v5 + 8) = self->_showsTraffic;
  *(v5 + 9) = self->_showsHiking;
  *(v5 + 10) = self->_showsTopographicFeatures;
  v6 = [(MKPointOfInterestFilter *)self->_pointOfInterestFilter copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (MKMapConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  self->_elevationStyle = [v4 decodeIntegerForKey:@"MKMapConfigurationElevationStyle"];
  v5 = @"MKMapConfigurationShowsTraffic";
  if ([v4 containsValueForKey:@"MKMapConfigurationShowsTraffic"] & 1) != 0 || (v5 = @"MKHybridMapConfigurationShowsTraffic", (objc_msgSend(v4, "containsValueForKey:", @"MKHybridMapConfigurationShowsTraffic")) || (v5 = @"MKStandardMapConfigurationShowsTraffic", objc_msgSend(v4, "containsValueForKey:", @"MKStandardMapConfigurationShowsTraffic")))
  {
    self->_showsTraffic = [v4 decodeBoolForKey:v5];
  }

  v6 = @"MKMapConfigurationPointOfInterestFilter";
  if ([v4 containsValueForKey:@"MKMapConfigurationPointOfInterestFilter"] & 1) != 0 || (v6 = @"MKHybridMapConfigurationPointOfInterestFilter", (objc_msgSend(v4, "containsValueForKey:", @"MKHybridMapConfigurationPointOfInterestFilter")) || (v6 = @"MKStandardMapConfigurationPointOfInterestFilter", objc_msgSend(v4, "containsValueForKey:", @"MKStandardMapConfigurationPointOfInterestFilter")))
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v6];
    pointOfInterestFilter = self->_pointOfInterestFilter;
    self->_pointOfInterestFilter = v7;
  }

  self->_showsHiking = [v4 decodeBoolForKey:@"MKMapConfigurationShowsHiking"];
  self->_showsTopographicFeatures = [v4 decodeBoolForKey:@"MKMapConfigurationShowsTopographicFeatures"];
  v9 = [(MKMapConfiguration *)self initWithElevationStyle:self->_elevationStyle];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  elevationStyle = self->_elevationStyle;
  v5 = a3;
  [v5 encodeInteger:elevationStyle forKey:@"MKMapConfigurationElevationStyle"];
  [v5 encodeBool:self->_showsTraffic forKey:@"MKMapConfigurationShowsTraffic"];
  [v5 encodeBool:self->_showsHiking forKey:@"MKMapConfigurationShowsHiking"];
  [v5 encodeBool:self->_showsTopographicFeatures forKey:@"MKMapConfigurationShowsTopographicFeatures"];
  [v5 encodeObject:self->_pointOfInterestFilter forKey:@"MKMapConfigurationPointOfInterestFilter"];
}

- (MKMapConfiguration)initWithElevationStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MKMapConfiguration;
  result = [(MKMapConfiguration *)&v5 init];
  if (result)
  {
    result->_elevationStyle = a3;
  }

  return result;
}

+ ($F9C4767691F2EDF2F3162F5FE7B1523A)_cartographicConfigurationForMapConfiguration:(SEL)a3
{
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    v6 = [v5 emphasisStyle];
    if (!v6)
    {
LABEL_21:
      _MKCartographicConfigurationForMapType(v6, retstr);

      goto LABEL_22;
    }

    if ([v5 emphasisStyle] == 1)
    {
      v6 = 5;
      goto LABEL_21;
    }

    if ([v5 emphasisStyle] == 101)
    {
      v6 = 109;
      goto LABEL_21;
    }

    if ([v5 emphasisStyle] == 102)
    {
      v6 = 110;
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

+ (id)_potentiallyLossy_mapConfigurationWithCartographicConfiguration:(id *)a3
{
  v4 = a3->var3 - 1;
  v5 = _MKMapTypeForCartographicConfiguration(&a3->var0);
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
      v8 = *&a3->var2;
      v17[0] = *&a3->var0;
      v17[1] = v8;
      v17[2] = *&a3->var4;
      v18 = *&a3->var6;
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

+ (id)_mapConfigurationWithCartographicConfiguration:(id *)a3
{
  v5 = *&a3->var2;
  v14 = *&a3->var0;
  v15 = v5;
  v16 = *&a3->var4;
  v17 = *&a3->var6;
  v6 = [a1 _potentiallyLossy_mapConfigurationWithCartographicConfiguration:&v14];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (v17 = 0, v15 = 0u, v16 = 0u, v14 = 0u, [a1 _cartographicConfigurationForMapConfiguration:v6], _MKCartographicConfigurationEquals(&v14, a3)))
  {
    v7 = v6;
  }

  else
  {
    v8 = [_MKCartographicMapConfiguration alloc];
    v9 = *&a3->var2;
    v12[0] = *&a3->var0;
    v12[1] = v9;
    v12[2] = *&a3->var4;
    v13 = *&a3->var6;
    v7 = [(_MKCartographicMapConfiguration *)v8 initWithCartographicConfiguration:v12];
  }

  v10 = v7;

  return v10;
}

@end