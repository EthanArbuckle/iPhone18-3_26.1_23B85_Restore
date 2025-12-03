@interface MKLookAroundGroundViewInfo
- (BOOL)isHeadingInRange:(double)range;
- (MKLookAroundGroundViewInfo)initWithStartHeading:(double)heading endHeading:(double)endHeading localityName:(id)name locationName:(id)locationName secondaryLocationName:(id)secondaryLocationName;
@end

@implementation MKLookAroundGroundViewInfo

- (BOOL)isHeadingInRange:(double)range
{
  [(MKLookAroundGroundViewInfo *)self startHeading];
  v6 = v5;
  [(MKLookAroundGroundViewInfo *)self endHeading];
  if (v6 >= v7)
  {
    if (v6 <= v7)
    {
      return 0;
    }

    if (v6 <= range && v7 < range)
    {
      return 1;
    }

    v8 = range >= 0.0;
  }

  else
  {
    v8 = v6 <= range;
  }

  return v7 > range && v8;
}

- (MKLookAroundGroundViewInfo)initWithStartHeading:(double)heading endHeading:(double)endHeading localityName:(id)name locationName:(id)locationName secondaryLocationName:(id)secondaryLocationName
{
  nameCopy = name;
  locationNameCopy = locationName;
  secondaryLocationNameCopy = secondaryLocationName;
  v23.receiver = self;
  v23.super_class = MKLookAroundGroundViewInfo;
  v15 = [(MKLookAroundGroundViewInfo *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_startHeading = heading;
    v15->_endHeading = endHeading;
    v17 = objc_alloc_init(MEMORY[0x1E69A1E78]);
    locationInfo = v16->_locationInfo;
    v16->_locationInfo = v17;

    v19 = [nameCopy copy];
    [(GEOLocationInfo *)v16->_locationInfo setLocalityName:v19];

    v20 = [locationNameCopy copy];
    [(GEOLocationInfo *)v16->_locationInfo setLocationName:v20];

    v21 = [secondaryLocationNameCopy copy];
    [(GEOLocationInfo *)v16->_locationInfo setSecondaryLocationName:v21];
  }

  return v16;
}

@end