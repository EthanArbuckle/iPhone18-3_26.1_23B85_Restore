@interface ATXTimeEventLocation
- (ATXTimeEventLocation)initWithCoder:(id)a3;
- (ATXTimeEventLocation)initWithLocation:(id)a3 title:(id)a4 type:(int64_t)a5;
- (BOOL)isApproximatelyEqualTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeEventLocation

- (ATXTimeEventLocation)initWithLocation:(id)a3 title:(id)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ATXTimeEventLocation;
  v10 = [(ATXTimeEventLocation *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    geoLocation = v10->_geoLocation;
    v10->_geoLocation = v11;

    v13 = [v9 copy];
    title = v10->_title;
    v10->_title = v13;

    v10->_destinationLOIType = a5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  geoLocation = self->_geoLocation;
  v5 = a3;
  [v5 encodeObject:geoLocation forKey:@"geoLocation"];
  [v5 encodeObject:self->_title forKey:@"locationTitle"];
  [v5 encodeInteger:self->_destinationLOIType forKey:@"LOIType"];
}

- (ATXTimeEventLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXTimeEventLocation;
  v5 = [(ATXTimeEventLocation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geoLocation"];
    geoLocation = v5->_geoLocation;
    v5->_geoLocation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationTitle"];
    title = v5->_title;
    v5->_title = v8;

    v5->_destinationLOIType = [v4 decodeIntegerForKey:@"LOIType"];
  }

  return v5;
}

- (BOOL)isApproximatelyEqualTo:(id)a3
{
  v4 = a3;
  v5 = [v4 geoLocation];
  if (v5 && (v6 = v5, [(ATXTimeEventLocation *)self geoLocation], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v4 geoLocation];
    v9 = [(ATXTimeEventLocation *)self geoLocation];
    [v8 distanceFromLocation:v9];
    v11 = v10 < 1000.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end