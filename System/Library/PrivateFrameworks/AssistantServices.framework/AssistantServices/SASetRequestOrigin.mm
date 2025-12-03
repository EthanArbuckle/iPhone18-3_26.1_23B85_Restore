@interface SASetRequestOrigin
- (id)ad_deferredMetricsContext;
- (void)setPropertiesWithCLLocation:(id)location;
@end

@implementation SASetRequestOrigin

- (id)ad_deferredMetricsContext
{
  v7.receiver = self;
  v7.super_class = SASetRequestOrigin;
  ad_deferredMetricsContext = [(SASetRequestOrigin *)&v7 ad_deferredMetricsContext];
  [(SASetRequestOrigin *)self latitude];
  v4 = [NSNumber numberWithDouble:?];
  [ad_deferredMetricsContext setObject:v4 forKey:SASetRequestOriginLatitudePListKey];

  [(SASetRequestOrigin *)self longitude];
  v5 = [NSNumber numberWithDouble:?];
  [ad_deferredMetricsContext setObject:v5 forKey:SASetRequestOriginLongitudePListKey];

  return ad_deferredMetricsContext;
}

- (void)setPropertiesWithCLLocation:(id)location
{
  locationCopy = location;
  [locationCopy horizontalAccuracy];
  [(SASetRequestOrigin *)self setHorizontalAccuracy:?];
  [locationCopy verticalAccuracy];
  [(SASetRequestOrigin *)self setVerticalAccuracy:?];
  [locationCopy coordinate];
  [(SASetRequestOrigin *)self setLatitude:?];
  [locationCopy coordinate];
  [(SASetRequestOrigin *)self setLongitude:v5];
  [locationCopy altitude];
  [(SASetRequestOrigin *)self setAltitude:?];
  [locationCopy course];
  [(SASetRequestOrigin *)self setDirection:?];
  [locationCopy speed];
  [(SASetRequestOrigin *)self setSpeed:?];
  _af_age = [locationCopy _af_age];

  [(SASetRequestOrigin *)self setAge:_af_age];
}

@end