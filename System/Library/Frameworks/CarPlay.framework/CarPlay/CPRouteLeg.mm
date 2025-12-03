@interface CPRouteLeg
- (CPRouteLeg)initWithCoder:(id)coder;
- (CPRouteLeg)initWithOrigin:(id)origin destination:(id)destination coordinates3D:(id *)d coordinates3DCount:(unint64_t)count;
- (CPRouteLeg)initWithOriginLocation:(id)location destinationLocation:(id)destinationLocation coordinates3D:(id *)d coordinates3DCount:(unint64_t)count;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPRouteLeg

- (CPRouteLeg)initWithOriginLocation:(id)location destinationLocation:(id)destinationLocation coordinates3D:(id *)d coordinates3DCount:(unint64_t)count
{
  locationCopy = location;
  destinationLocationCopy = destinationLocation;
  v17.receiver = self;
  v17.super_class = CPRouteLeg;
  v13 = [(CPRouteLeg *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_originLocation, location);
    objc_storeStrong(&v14->_destinationLocation, destinationLocation);
    v14->_coordinates3D = 0;
    v14->_coordinates3DCount = 0;
    if (d)
    {
      if (count - 0xAAAAAAAAAAAAAABLL >= 0xF555555555555556)
      {
        v15 = malloc_type_malloc(24 * count, 0x760FBADEuLL);
        v14->_coordinates3D = v15;
        if (v15)
        {
          memcpy(v15, d, 24 * count);
          v14->_coordinates3DCount = count;
        }
      }
    }
  }

  return v14;
}

- (CPRouteLeg)initWithOrigin:(id)origin destination:(id)destination coordinates3D:(id *)d coordinates3DCount:(unint64_t)count
{
  originCopy = origin;
  destinationCopy = destination;
  v13 = [[CPNavigationWaypoint alloc] initWithMapItem:originCopy locationThreshold:0 entryPoints:0 entryPointsCount:0];
  v14 = [[CPNavigationWaypoint alloc] initWithMapItem:destinationCopy locationThreshold:0 entryPoints:0 entryPointsCount:0];
  v15 = [(CPRouteLeg *)self initWithOriginLocation:v13 destinationLocation:v14 coordinates3D:d coordinates3DCount:count];

  if (v15)
  {
    objc_storeStrong(&v15->_origin, origin);
    objc_storeStrong(&v15->_destination, destination);
  }

  return v15;
}

- (void)dealloc
{
  coordinates3D = self->_coordinates3D;
  if (coordinates3D)
  {
    free(coordinates3D);
    self->_coordinates3D = 0;
  }

  v4.receiver = self;
  v4.super_class = CPRouteLeg;
  [(CPRouteLeg *)&v4 dealloc];
}

- (CPRouteLeg)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CPRouteLeg;
  v5 = [(CPRouteLeg *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLegOriginKey"];
    origin = v5->_origin;
    v5->_origin = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLegDestinationKey"];
    destination = v5->_destination;
    v5->_destination = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPRouteLegCoordinates3DKey"];
    v11 = v10;
    v5->_coordinates3D = 0;
    v5->_coordinates3DCount = 0;
    if (v10)
    {
      if ([v10 length])
      {
        if (__ROR8__(0xAAAAAAAAAAAAAAABLL * [v11 length], 3) <= 0xAAAAAAAAAAAAAAAuLL)
        {
          v12 = [v11 length];
          v13 = malloc_type_malloc([v11 length], 0xFE1FE428uLL);
          v5->_coordinates3D = v13;
          if (v13)
          {
            [v11 getBytes:v13 length:{objc_msgSend(v11, "length")}];
            v5->_coordinates3DCount = v12 / 0x18;
          }
        }
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_origin forKey:@"kCPRouteLegOriginKey"];
  [coderCopy encodeObject:self->_destination forKey:@"kCPRouteLegDestinationKey"];
  if (self->_coordinates3D && self->_coordinates3DCount)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
    [coderCopy encodeObject:v4 forKey:@"kCPRouteLegCoordinates3DKey"];
  }
}

@end