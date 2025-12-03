@interface MKHybridMapConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHybridMapConfiguration:(id)configuration;
- (MKHybridMapConfiguration)init;
- (MKHybridMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle;
@end

@implementation MKHybridMapConfiguration

- (BOOL)isEqualToHybridMapConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy && (v13.receiver = self, v13.super_class = MKHybridMapConfiguration, [(MKMapConfiguration *)&v13 isEqual:configurationCopy]))
  {
    pointOfInterestFilter = [(MKHybridMapConfiguration *)self pointOfInterestFilter];
    pointOfInterestFilter2 = [configurationCopy pointOfInterestFilter];
    v7 = pointOfInterestFilter;
    v8 = pointOfInterestFilter2;
    if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      showsTraffic = [(MKHybridMapConfiguration *)self showsTraffic];
      v11 = showsTraffic ^ [configurationCopy showsTraffic] ^ 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKHybridMapConfiguration *)self isEqualToHybridMapConfiguration:equalCopy];

  return v5;
}

- (MKHybridMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle
{
  v4 = [(MKHybridMapConfiguration *)self init];
  v5 = v4;
  if (v4)
  {
    [(MKMapConfiguration *)v4 setElevationStyle:elevationStyle];
  }

  return v5;
}

- (MKHybridMapConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MKHybridMapConfiguration;
  return [(MKMapConfiguration *)&v3 initWithElevationStyle:0];
}

@end