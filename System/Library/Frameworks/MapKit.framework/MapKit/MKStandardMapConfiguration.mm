@interface MKStandardMapConfiguration
+ (BOOL)_overlayRequiresModernMap:(id)map;
+ (BOOL)_overlaySupportsElevation:(id)elevation;
+ (BOOL)_overlaysRequireModernMap:(id)map;
+ (BOOL)_overlaysSupportElevation:(id)elevation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStandardMapConfiguration:(id)configuration;
- (MKStandardMapConfiguration)init;
- (MKStandardMapConfiguration)initWithCoder:(id)coder;
- (MKStandardMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle;
- (MKStandardMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle emphasisStyle:(MKStandardMapEmphasisStyle)emphasisStyle;
- (MKStandardMapConfiguration)initWithEmphasisStyle:(MKStandardMapEmphasisStyle)emphasisStyle;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addObserver:(id)observer options:(unint64_t)options context:(void *)context;
- (void)_removeObserver:(id)observer context:(void *)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKStandardMapConfiguration

- (MKStandardMapConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MKStandardMapConfiguration;
  return [(MKMapConfiguration *)&v3 initWithElevationStyle:0];
}

- (void)_removeObserver:(id)observer context:(void *)context
{
  v7.receiver = self;
  v7.super_class = MKStandardMapConfiguration;
  observerCopy = observer;
  [(MKMapConfiguration *)&v7 _removeObserver:observerCopy context:context];
  [(MKStandardMapConfiguration *)self removeObserver:observerCopy forKeyPath:@"emphasisStyle" context:context, v7.receiver, v7.super_class];
}

- (void)_addObserver:(id)observer options:(unint64_t)options context:(void *)context
{
  v9.receiver = self;
  v9.super_class = MKStandardMapConfiguration;
  observerCopy = observer;
  [(MKMapConfiguration *)&v9 _addObserver:observerCopy options:options context:context];
  [(MKStandardMapConfiguration *)self addObserver:observerCopy forKeyPath:@"emphasisStyle" options:options context:context, v9.receiver, v9.super_class];
}

- (BOOL)isEqualToStandardMapConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy && (v14.receiver = self, v14.super_class = MKStandardMapConfiguration, -[MKMapConfiguration isEqual:](&v14, sel_isEqual_, configurationCopy)) && (emphasisStyle = self->_emphasisStyle, emphasisStyle == [configurationCopy emphasisStyle]))
  {
    pointOfInterestFilter = [(MKStandardMapConfiguration *)self pointOfInterestFilter];
    pointOfInterestFilter2 = [configurationCopy pointOfInterestFilter];
    v8 = pointOfInterestFilter;
    v9 = pointOfInterestFilter2;
    if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      showsTraffic = [(MKStandardMapConfiguration *)self showsTraffic];
      v12 = showsTraffic ^ [configurationCopy showsTraffic] ^ 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKStandardMapConfiguration *)self isEqualToStandardMapConfiguration:equalCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = MKStandardMapConfiguration;
  result = [(MKMapConfiguration *)&v5 copyWithZone:zone];
  *(result + 4) = self->_emphasisStyle;
  return result;
}

- (MKStandardMapConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MKStandardMapConfiguration;
  v5 = [(MKMapConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_emphasisStyle = [coderCopy decodeIntegerForKey:@"MKStandardMapConfigurationEmphasisStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MKStandardMapConfiguration;
  coderCopy = coder;
  [(MKMapConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_emphasisStyle forKey:{@"MKStandardMapConfigurationEmphasisStyle", v5.receiver, v5.super_class}];
}

- (MKStandardMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle emphasisStyle:(MKStandardMapEmphasisStyle)emphasisStyle
{
  v6 = [(MKStandardMapConfiguration *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_emphasisStyle = emphasisStyle;
    [(MKMapConfiguration *)v6 setElevationStyle:elevationStyle];
  }

  return v7;
}

- (MKStandardMapConfiguration)initWithEmphasisStyle:(MKStandardMapEmphasisStyle)emphasisStyle
{
  result = [(MKStandardMapConfiguration *)self init];
  if (result)
  {
    result->_emphasisStyle = emphasisStyle;
  }

  return result;
}

- (MKStandardMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle
{
  v4 = [(MKStandardMapConfiguration *)self init];
  v5 = v4;
  if (v4)
  {
    [(MKMapConfiguration *)v4 setElevationStyle:elevationStyle];
  }

  return v5;
}

+ (BOOL)_overlaysSupportElevation:(id)elevation
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  elevationCopy = elevation;
  v5 = [elevationCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(elevationCopy);
        }

        if (![self _overlaySupportsElevation:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [elevationCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

+ (BOOL)_overlaySupportsElevation:(id)elevation
{
  elevationCopy = elevation;
  v5 = ([self _overlayRequiresModernMap:elevationCopy] & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(elevationCopy, "elevations") != 0;

  return v5;
}

+ (BOOL)_overlaysRequireModernMap:(id)map
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mapCopy = map;
  v5 = [mapCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(mapCopy);
        }

        if ([self _overlayRequiresModernMap:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [mapCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (BOOL)_overlayRequiresModernMap:(id)map
{
  mapCopy = map;
  if (objc_opt_respondsToSelector())
  {
    _requiresModernMap = [mapCopy _requiresModernMap];
  }

  else
  {
    _requiresModernMap = 0;
  }

  return _requiresModernMap;
}

@end