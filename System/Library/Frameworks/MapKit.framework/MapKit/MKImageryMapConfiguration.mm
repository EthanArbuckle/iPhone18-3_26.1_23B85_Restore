@interface MKImageryMapConfiguration
- (BOOL)isEqual:(id)equal;
- (MKImageryMapConfiguration)init;
- (MKImageryMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle;
@end

@implementation MKImageryMapConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7.receiver = self;
    v7.super_class = MKImageryMapConfiguration;
    v5 = [(MKMapConfiguration *)&v7 isEqual:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MKImageryMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle
{
  v4 = [(MKImageryMapConfiguration *)self init];
  v5 = v4;
  if (v4)
  {
    [(MKMapConfiguration *)v4 setElevationStyle:elevationStyle];
  }

  return v5;
}

- (MKImageryMapConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MKImageryMapConfiguration;
  return [(MKMapConfiguration *)&v3 initWithElevationStyle:0];
}

@end