@interface MKLookAroundGroundViewInfo
- (BOOL)isHeadingInRange:(double)a3;
- (MKLookAroundGroundViewInfo)initWithStartHeading:(double)a3 endHeading:(double)a4 localityName:(id)a5 locationName:(id)a6 secondaryLocationName:(id)a7;
@end

@implementation MKLookAroundGroundViewInfo

- (BOOL)isHeadingInRange:(double)a3
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

    if (v6 <= a3 && v7 < a3)
    {
      return 1;
    }

    v8 = a3 >= 0.0;
  }

  else
  {
    v8 = v6 <= a3;
  }

  return v7 > a3 && v8;
}

- (MKLookAroundGroundViewInfo)initWithStartHeading:(double)a3 endHeading:(double)a4 localityName:(id)a5 locationName:(id)a6 secondaryLocationName:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = MKLookAroundGroundViewInfo;
  v15 = [(MKLookAroundGroundViewInfo *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_startHeading = a3;
    v15->_endHeading = a4;
    v17 = objc_alloc_init(MEMORY[0x1E69A1E78]);
    locationInfo = v16->_locationInfo;
    v16->_locationInfo = v17;

    v19 = [v12 copy];
    [(GEOLocationInfo *)v16->_locationInfo setLocalityName:v19];

    v20 = [v13 copy];
    [(GEOLocationInfo *)v16->_locationInfo setLocationName:v20];

    v21 = [v14 copy];
    [(GEOLocationInfo *)v16->_locationInfo setSecondaryLocationName:v21];
  }

  return v16;
}

@end