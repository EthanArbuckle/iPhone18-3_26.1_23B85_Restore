@interface CPRouteLine
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRouteLine:(id)line;
- (CPRouteLine)initWithCoder:(id)coder;
- (CPRouteLine)initWithGeodeticSystem:(unsigned __int8)system originLocation:(id)location destinationLocation:(id)destinationLocation routeLegs:(id)legs;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPRouteLine

- (CPRouteLine)initWithGeodeticSystem:(unsigned __int8)system originLocation:(id)location destinationLocation:(id)destinationLocation routeLegs:(id)legs
{
  locationCopy = location;
  destinationLocationCopy = destinationLocation;
  legsCopy = legs;
  v20.receiver = self;
  v20.super_class = CPRouteLine;
  v14 = [(CPRouteLine *)&v20 init];
  if (v14)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v14->_identifier;
    v14->_identifier = uUID;

    v14->_geodeticSystem = system;
    objc_storeStrong(&v14->_originLocation, location);
    objc_storeStrong(&v14->_destinationLocation, destinationLocation);
    v17 = [legsCopy copy];
    routeLegs = v14->_routeLegs;
    v14->_routeLegs = v17;
  }

  return v14;
}

- (CPRouteLine)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CPRouteLine;
  v5 = [(CPRouteLine *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLineIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_geodeticSystem = [coderCopy decodeIntegerForKey:@"kCPRouteLineGeodeticSystemKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLineOriginKey"];
    originLocation = v5->_originLocation;
    v5->_originLocation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLineDestinationKey"];
    destinationLocation = v5->_destinationLocation;
    v5->_destinationLocation = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"kCPRouteLineRouteLegsKey"];
    routeLegs = v5->_routeLegs;
    v5->_routeLegs = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"kCPRouteLineIdentifier"];
  [coderCopy encodeInteger:self->_geodeticSystem forKey:@"kCPRouteLineGeodeticSystemKey"];
  [coderCopy encodeObject:self->_origin forKey:@"kCPRouteLineOriginKey"];
  [coderCopy encodeObject:self->_destination forKey:@"kCPRouteLineDestinationKey"];
  [coderCopy encodeObject:self->_routeLegs forKey:@"kCPRouteLineRouteLegsKey"];
}

- (BOOL)isEqualToRouteLine:(id)line
{
  lineCopy = line;
  identifier = [(CPRouteLine *)self identifier];
  identifier2 = [lineCopy identifier];

  LOBYTE(lineCopy) = [identifier isEqual:identifier2];
  return lineCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CPRouteLine;
    if ([(CPRouteLine *)&v7 isEqual:equalCopy])
    {
      v5 = [(CPRouteLine *)self isEqualToRouteLine:equalCopy];
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
  identifier = [(CPRouteLine *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end