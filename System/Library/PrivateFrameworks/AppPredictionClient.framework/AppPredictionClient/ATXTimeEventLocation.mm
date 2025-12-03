@interface ATXTimeEventLocation
- (ATXTimeEventLocation)initWithCoder:(id)coder;
- (ATXTimeEventLocation)initWithLocation:(id)location title:(id)title type:(int64_t)type;
- (BOOL)isApproximatelyEqualTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeEventLocation

- (ATXTimeEventLocation)initWithLocation:(id)location title:(id)title type:(int64_t)type
{
  locationCopy = location;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = ATXTimeEventLocation;
  v10 = [(ATXTimeEventLocation *)&v16 init];
  if (v10)
  {
    v11 = [locationCopy copy];
    geoLocation = v10->_geoLocation;
    v10->_geoLocation = v11;

    v13 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v13;

    v10->_destinationLOIType = type;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  geoLocation = self->_geoLocation;
  coderCopy = coder;
  [coderCopy encodeObject:geoLocation forKey:@"geoLocation"];
  [coderCopy encodeObject:self->_title forKey:@"locationTitle"];
  [coderCopy encodeInteger:self->_destinationLOIType forKey:@"LOIType"];
}

- (ATXTimeEventLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ATXTimeEventLocation;
  v5 = [(ATXTimeEventLocation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoLocation"];
    geoLocation = v5->_geoLocation;
    v5->_geoLocation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationTitle"];
    title = v5->_title;
    v5->_title = v8;

    v5->_destinationLOIType = [coderCopy decodeIntegerForKey:@"LOIType"];
  }

  return v5;
}

- (BOOL)isApproximatelyEqualTo:(id)to
{
  toCopy = to;
  geoLocation = [toCopy geoLocation];
  if (geoLocation && (v6 = geoLocation, [(ATXTimeEventLocation *)self geoLocation], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    geoLocation2 = [toCopy geoLocation];
    geoLocation3 = [(ATXTimeEventLocation *)self geoLocation];
    [geoLocation2 distanceFromLocation:geoLocation3];
    v11 = v10 < 1000.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end