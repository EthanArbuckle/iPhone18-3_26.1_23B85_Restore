@interface SASetRequestOrigin
- (id)ad_deferredMetricsContext;
- (void)setPropertiesWithCLLocation:(id)a3;
@end

@implementation SASetRequestOrigin

- (id)ad_deferredMetricsContext
{
  v7.receiver = self;
  v7.super_class = SASetRequestOrigin;
  v3 = [(SASetRequestOrigin *)&v7 ad_deferredMetricsContext];
  [(SASetRequestOrigin *)self latitude];
  v4 = [NSNumber numberWithDouble:?];
  [v3 setObject:v4 forKey:SASetRequestOriginLatitudePListKey];

  [(SASetRequestOrigin *)self longitude];
  v5 = [NSNumber numberWithDouble:?];
  [v3 setObject:v5 forKey:SASetRequestOriginLongitudePListKey];

  return v3;
}

- (void)setPropertiesWithCLLocation:(id)a3
{
  v4 = a3;
  [v4 horizontalAccuracy];
  [(SASetRequestOrigin *)self setHorizontalAccuracy:?];
  [v4 verticalAccuracy];
  [(SASetRequestOrigin *)self setVerticalAccuracy:?];
  [v4 coordinate];
  [(SASetRequestOrigin *)self setLatitude:?];
  [v4 coordinate];
  [(SASetRequestOrigin *)self setLongitude:v5];
  [v4 altitude];
  [(SASetRequestOrigin *)self setAltitude:?];
  [v4 course];
  [(SASetRequestOrigin *)self setDirection:?];
  [v4 speed];
  [(SASetRequestOrigin *)self setSpeed:?];
  v6 = [v4 _af_age];

  [(SASetRequestOrigin *)self setAge:v6];
}

@end