@interface CPNavigationWaypoint
- ($1AB5FA073B851C12C2339EC22442E995)centerPoint;
- (CPNavigationWaypoint)initWithCenterPoint:(id)point locationThreshold:(unsigned int)threshold name:(id)name address:(id)address entryPoints:(id *)points entryPointsCount:(unint64_t)count;
- (CPNavigationWaypoint)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPNavigationWaypoint

- (CPNavigationWaypoint)initWithCenterPoint:(id)point locationThreshold:(unsigned int)threshold name:(id)name address:(id)address entryPoints:(id *)points entryPointsCount:(unint64_t)count
{
  var2 = point.var2;
  var1 = point.var1;
  var0 = point.var0;
  nameCopy = name;
  addressCopy = address;
  v26.receiver = self;
  v26.super_class = CPNavigationWaypoint;
  v18 = [(CPNavigationWaypoint *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_centerPoint.latitude = var0;
    v18->_centerPoint.longitude = var1;
    v18->_centerPoint.altitude = var2;
    v18->_locationThreshold = threshold;
    v20 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v20;

    v22 = [addressCopy copy];
    address = v19->_address;
    v19->_address = v22;

    v19->_entryPoints = 0;
    v19->_entryPointsCount = 0;
    if (points)
    {
      if (count - 0xAAAAAAAAAAAAAABLL >= 0xF555555555555556)
      {
        v24 = malloc_type_malloc(24 * count, 0xBB43FBE5uLL);
        v19->_entryPoints = v24;
        if (v24)
        {
          memcpy(v24, points, 24 * count);
          v19->_entryPointsCount = count;
        }
      }
    }
  }

  return v19;
}

- (void)dealloc
{
  entryPoints = self->_entryPoints;
  if (entryPoints)
  {
    free(entryPoints);
    self->_entryPoints = 0;
  }

  v4.receiver = self;
  v4.super_class = CPNavigationWaypoint;
  [(CPNavigationWaypoint *)&v4 dealloc];
}

- (CPNavigationWaypoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CPNavigationWaypoint;
  v5 = [(CPNavigationWaypoint *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationWaypointCenterPointKey"];
    v7 = v6;
    if (v6 && [v6 length] == 24)
    {
      [v7 getBytes:&v5->_centerPoint length:24];
    }

    v5->_locationThreshold = [coderCopy decodeInt32ForKey:@"kCPNavigationWaypointLocationThresholdKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationWaypointNameKey"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationWaypointAddressKey"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationWaypointEntryPointsKey"];
    v13 = v12;
    v5->_entryPoints = 0;
    v5->_entryPointsCount = 0;
    if (v12)
    {
      if ([v12 length])
      {
        if (__ROR8__(0xAAAAAAAAAAAAAAABLL * [v13 length], 3) <= 0xAAAAAAAAAAAAAAAuLL)
        {
          v14 = [v13 length];
          v15 = malloc_type_malloc([v13 length], 0x9B36CF93uLL);
          v5->_entryPoints = v15;
          if (v15)
          {
            [v13 getBytes:v15 length:{objc_msgSend(v13, "length")}];
            v5->_entryPointsCount = v14 / 0x18;
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
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&self->_centerPoint length:24];
  [coderCopy encodeObject:v4 forKey:@"kCPNavigationWaypointCenterPointKey"];
  [coderCopy encodeInt32:self->_locationThreshold forKey:@"kCPNavigationWaypointLocationThresholdKey"];
  [coderCopy encodeObject:self->_name forKey:@"kCPNavigationWaypointNameKey"];
  [coderCopy encodeObject:self->_address forKey:@"kCPNavigationWaypointAddressKey"];
  if (self->_entryPoints && self->_entryPointsCount)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
    [coderCopy encodeObject:v5 forKey:@"kCPNavigationWaypointEntryPointsKey"];
  }
}

- ($1AB5FA073B851C12C2339EC22442E995)centerPoint
{
  latitude = self->_centerPoint.latitude;
  longitude = self->_centerPoint.longitude;
  altitude = self->_centerPoint.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end