@interface CPRouteLine
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRouteLine:(id)a3;
- (CPRouteLine)initWithCoder:(id)a3;
- (CPRouteLine)initWithGeodeticSystem:(unsigned __int8)a3 originLocation:(id)a4 destinationLocation:(id)a5 routeLegs:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPRouteLine

- (CPRouteLine)initWithGeodeticSystem:(unsigned __int8)a3 originLocation:(id)a4 destinationLocation:(id)a5 routeLegs:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = CPRouteLine;
  v14 = [(CPRouteLine *)&v20 init];
  if (v14)
  {
    v15 = [MEMORY[0x277CCAD78] UUID];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v14->_geodeticSystem = a3;
    objc_storeStrong(&v14->_originLocation, a4);
    objc_storeStrong(&v14->_destinationLocation, a5);
    v17 = [v13 copy];
    routeLegs = v14->_routeLegs;
    v14->_routeLegs = v17;
  }

  return v14;
}

- (CPRouteLine)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CPRouteLine;
  v5 = [(CPRouteLine *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLineIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_geodeticSystem = [v4 decodeIntegerForKey:@"kCPRouteLineGeodeticSystemKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLineOriginKey"];
    originLocation = v5->_originLocation;
    v5->_originLocation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLineDestinationKey"];
    destinationLocation = v5->_destinationLocation;
    v5->_destinationLocation = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"kCPRouteLineRouteLegsKey"];
    routeLegs = v5->_routeLegs;
    v5->_routeLegs = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"kCPRouteLineIdentifier"];
  [v5 encodeInteger:self->_geodeticSystem forKey:@"kCPRouteLineGeodeticSystemKey"];
  [v5 encodeObject:self->_origin forKey:@"kCPRouteLineOriginKey"];
  [v5 encodeObject:self->_destination forKey:@"kCPRouteLineDestinationKey"];
  [v5 encodeObject:self->_routeLegs forKey:@"kCPRouteLineRouteLegsKey"];
}

- (BOOL)isEqualToRouteLine:(id)a3
{
  v4 = a3;
  v5 = [(CPRouteLine *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CPRouteLine;
    if ([(CPRouteLine *)&v7 isEqual:v4])
    {
      v5 = [(CPRouteLine *)self isEqualToRouteLine:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(CPRouteLine *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end