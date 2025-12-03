@interface ARGeoAnchor
- (ARGeoAnchor)initWithAnchor:(id)anchor;
- (ARGeoAnchor)initWithCoder:(id)coder;
- (ARGeoAnchor)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (ARGeoAnchor)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(CLLocationDistance)altitude;
- (ARGeoAnchor)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude altitudeSource:(int64_t)source isAltitudeAvailable:(BOOL)available undulation:(double)undulation;
- (ARGeoAnchor)initWithName:(NSString *)name coordinate:(CLLocationCoordinate2D)coordinate;
- (ARGeoAnchor)initWithName:(NSString *)name coordinate:(CLLocationCoordinate2D)coordinate altitude:(CLLocationDistance)altitude;
- (CLLocationCoordinate2D)coordinate;
- (NSString)description;
- (__n128)ecefFromAnchor;
- (__n128)locationECEF;
- (__n128)locationLLA;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARGeoAnchor

- (ARGeoAnchor)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v8.receiver = self;
  v8.super_class = ARGeoAnchor;
  v5 = [(ARAnchor *)&v8 initWithTransform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
  v6 = v5;
  if (v5)
  {
    [(ARGeoAnchor *)v5 initWithCoordinate:0 altitude:0 altitudeSource:latitude isAltitudeAvailable:longitude undulation:0.0, 0.0];
  }

  return v6;
}

- (ARGeoAnchor)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(CLLocationDistance)altitude
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v10.receiver = self;
  v10.super_class = ARGeoAnchor;
  v7 = [(ARAnchor *)&v10 initWithTransform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
  v8 = v7;
  if (v7)
  {
    [(ARGeoAnchor *)v7 initWithCoordinate:3 altitude:0 altitudeSource:latitude isAltitudeAvailable:longitude undulation:altitude, 0.0];
  }

  return v8;
}

- (ARGeoAnchor)initWithName:(NSString *)name coordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9.receiver = self;
  v9.super_class = ARGeoAnchor;
  v6 = [(ARAnchor *)&v9 initWithName:name transform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
  v7 = v6;
  if (v6)
  {
    [(ARGeoAnchor *)v6 initWithCoordinate:0 altitude:0 altitudeSource:latitude isAltitudeAvailable:longitude undulation:0.0, 0.0];
  }

  return v7;
}

- (ARGeoAnchor)initWithName:(NSString *)name coordinate:(CLLocationCoordinate2D)coordinate altitude:(CLLocationDistance)altitude
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v11.receiver = self;
  v11.super_class = ARGeoAnchor;
  v8 = [(ARAnchor *)&v11 initWithName:name transform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
  v9 = v8;
  if (v8)
  {
    [(ARGeoAnchor *)v8 initWithCoordinate:3 altitude:0 altitudeSource:latitude isAltitudeAvailable:longitude undulation:altitude, 0.0];
  }

  return v9;
}

- (ARGeoAnchor)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude altitudeSource:(int64_t)source isAltitudeAvailable:(BOOL)available undulation:(double)undulation
{
  v38 = *MEMORY[0x1E69E9840];
  self->_altitudeSource = source;
  self->_isAltitudeAvailable = available;
  self->_undulation = undulation;
  self->_coordinate = coordinate;
  latitude = coordinate.latitude;
  longitude = coordinate.longitude;
  v10 = coordinate.longitude;
  *self->_locationLLA = coordinate;
  *&self->_locationLLA[16] = *&altitude;
  if (_ARLogTechnique_onceToken_18 != -1)
  {
    [ARGeoAnchor initWithCoordinate:altitude:altitudeSource:isAltitudeAvailable:undulation:];
  }

  v11 = _ARLogTechnique_logObj_18;
  if (os_log_type_enabled(_ARLogTechnique_logObj_18, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138544387;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2049;
    *&buf[24] = latitude;
    *v33 = 2049;
    *&v33[2] = longitude;
    *&v33[10] = 2048;
    *&v33[12] = source;
    _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GeoAnchor<- %{private}.8f,%{private}.8f,%li", buf, 0x34u);
  }

  v26 = *self->_locationLLA;
  v28 = *&self->_locationLLA[16];
  v15 = ARMSLToWGS84Altitude(altitude, undulation);
  *(&v16 + 1) = *(&v28 + 1);
  *&v16 = v15;
  v29 = v16;
  *buf = v26;
  *&buf[16] = v16;
  ARLLAToECEF(v31);
  v17 = v31[1];
  *self->_locationECEF = v31[0];
  *&self->_locationECEF[16] = v17;
  v18 = self + 1;
  v30[0] = v26;
  v30[1] = v29;
  ARAnchorToECEFTransform(v30, buf);
  v20 = v35;
  *&v18->super._anon_30[16] = v34;
  *&v18->super._anon_30[32] = v20;
  v21 = v37;
  *&v18->super._anon_30[48] = v36;
  *v18->_anon_70 = v21;
  v22 = *&buf[16];
  *&v18->super.super.isa = *buf;
  *&v18->super._identifier = v22;
  v23 = *&v33[16];
  *&v18->super._sessionIdentifier = *v33;
  *v18->super._anon_30 = v23;
  return result;
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = ARGeoAnchor;
  v3 = [(ARAnchor *)&v17 description];
  v4 = [v3 length];
  v5 = MEMORY[0x1E696AEC0];
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  [(ARGeoAnchor *)self altitude];
  v9 = v8;
  altitudeSource = [(ARGeoAnchor *)self altitudeSource];
  if (altitudeSource > ARAltitudeSourceUserDefined)
  {
    v11 = @"???";
  }

  else
  {
    v11 = off_1E817D688[altitudeSource];
  }

  isAltitudeAvailable = [(ARGeoAnchor *)self isAltitudeAvailable];
  [(ARGeoAnchor *)self undulation];
  v14 = [v5 stringWithFormat:@" coordinate=(%f, %f, %f) altitudeSource=%@ isAltitudeAvailable=%d undulation=%f>", *&latitude, *&longitude, v9, v11, isAltitudeAvailable, v13];
  v15 = [v3 stringByReplacingCharactersInRange:v4 - 1 withString:{1, v14}];

  return v15;
}

- (ARGeoAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v16.receiver = self;
  v16.super_class = ARGeoAnchor;
  v5 = [(ARAnchor *)&v16 initWithAnchor:anchorCopy];
  if (v5)
  {
    [anchorCopy coordinate];
    v7 = v6;
    v9 = v8;
    [anchorCopy altitude];
    v11 = v10;
    altitudeSource = [anchorCopy altitudeSource];
    isAltitudeAvailable = [anchorCopy isAltitudeAvailable];
    [anchorCopy undulation];
    [(ARGeoAnchor *)v5 initWithCoordinate:altitudeSource altitude:isAltitudeAvailable altitudeSource:v7 isAltitudeAvailable:v9 undulation:v11, v14];
    -[ARGeoAnchor setIsTracked:](v5, "setIsTracked:", [anchorCopy isTracked]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ARGeoAnchor;
  coderCopy = coder;
  [(ARAnchor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"latitude" forKey:{self->_coordinate.latitude, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"longitude" forKey:self->_coordinate.longitude];
  [(ARGeoAnchor *)self altitude];
  [coderCopy encodeDouble:@"altitude" forKey:?];
  [coderCopy encodeInteger:self->_altitudeSource forKey:@"altitudeSource"];
  [coderCopy encodeBool:self->_isAltitudeAvailable forKey:@"isAltitudeAvailable"];
  [coderCopy encodeDouble:@"undulation" forKey:self->_undulation];
  [coderCopy encodeBool:self->_isTracked forKey:@"tracked"];
}

- (ARGeoAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ARGeoAnchor;
  v5 = [(ARAnchor *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"latitude"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"longitude"];
    v9 = v8;
    [coderCopy decodeDoubleForKey:@"altitude"];
    v11 = v10;
    v12 = [coderCopy decodeIntegerForKey:@"altitudeSource"];
    v13 = [coderCopy decodeBoolForKey:@"isAltitudeAvailable"];
    [coderCopy decodeDoubleForKey:@"undulation"];
    [(ARGeoAnchor *)v5 initWithCoordinate:v12 altitude:v13 altitudeSource:v7 isAltitudeAvailable:v9 undulation:v11, v14];
    v5->_isTracked = [coderCopy decodeBoolForKey:@"tracked"];
  }

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (__n128)locationLLA
{
  result = self[14];
  a2[1].n128_u64[0] = self[15].n128_u64[0];
  *a2 = result;
  return result;
}

- (__n128)locationECEF
{
  result = self[16];
  a2[1].n128_u64[0] = self[17].n128_u64[0];
  *a2 = result;
  return result;
}

- (__n128)ecefFromAnchor
{
  v2 = *(self + 368);
  *(a2 + 64) = *(self + 352);
  *(a2 + 80) = v2;
  v3 = *(self + 400);
  *(a2 + 96) = *(self + 384);
  *(a2 + 112) = v3;
  v4 = *(self + 304);
  *a2 = *(self + 288);
  *(a2 + 16) = v4;
  result = *(self + 320);
  v6 = *(self + 336);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

@end