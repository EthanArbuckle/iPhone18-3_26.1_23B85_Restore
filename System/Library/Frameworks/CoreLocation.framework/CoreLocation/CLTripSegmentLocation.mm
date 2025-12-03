@interface CLTripSegmentLocation
- (BOOL)isCourseValid;
- (BOOL)isGoodGPSFixWithGoodCourse;
- (BOOL)isSpeedValid;
- (CLTripSegmentLocation)initWithCLLocation:(id)location;
- (CLTripSegmentLocation)initWithCoder:(id)coder;
- (double)distanceFromLocation:(id)location;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setRawLatitude:(double)latitude longitude:(double)longitude referenceFrame:(int)frame;
- (void)updateLatitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy referenceFrame:(int)frame;
@end

@implementation CLTripSegmentLocation

- (CLTripSegmentLocation)initWithCLLocation:(id)location
{
  timestamp = [location timestamp];
  [location coordinate];
  v23 = v6;
  [location coordinate];
  v8 = v7;
  [location horizontalAccuracy];
  v10 = v9;
  [location course];
  v12 = v11;
  [location courseAccuracy];
  v14 = v13;
  [location speed];
  v16 = v15;
  [location speedAccuracy];
  v18 = v17;
  [location altitude];
  v20 = v19;
  [location verticalAccuracy];
  return -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:signalEnvironmentType:](self, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:signalEnvironmentType:", timestamp, [location type], objc_msgSend(location, "referenceFrame"), objc_msgSend(location, "signalEnvironmentType"), v23, v8, v10, v12, v14, v16, v18, v20, v21);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 40) = [(CLTripSegmentLocation *)self timestamp];
  [(CLTripSegmentLocation *)self latitude];
  *(v4 + 48) = v5;
  [(CLTripSegmentLocation *)self longitude];
  *(v4 + 56) = v6;
  [(CLTripSegmentLocation *)self rawLatitude];
  *(v4 + 64) = v7;
  [(CLTripSegmentLocation *)self rawLongitude];
  *(v4 + 72) = v8;
  *(v4 + 12) = [(CLTripSegmentLocation *)self rawReferenceFrame];
  [(CLTripSegmentLocation *)self horizontalAccuracy];
  *(v4 + 80) = v9;
  [(CLTripSegmentLocation *)self course];
  *(v4 + 88) = v10;
  [(CLTripSegmentLocation *)self courseAccuracy];
  *(v4 + 96) = v11;
  [(CLTripSegmentLocation *)self speed];
  *(v4 + 104) = v12;
  [(CLTripSegmentLocation *)self speedAccuracy];
  *(v4 + 112) = v13;
  [(CLTripSegmentLocation *)self altitude];
  *(v4 + 120) = v14;
  [(CLTripSegmentLocation *)self altitudeAccuracy];
  *(v4 + 128) = v15;
  *(v4 + 24) = [(CLTripSegmentLocation *)self locType];
  *(v4 + 8) = [(CLTripSegmentLocation *)self referenceFrame];
  *(v4 + 16) = [(CLTripSegmentLocation *)self mapsRoadClass];
  *(v4 + 20) = [(CLTripSegmentLocation *)self mapsFormOfWay];
  *(v4 + 28) = [(CLTripSegmentLocation *)self locTypeStart];
  *(v4 + 32) = [(CLTripSegmentLocation *)self locTypeStop];
  *(v4 + 136) = [(CLTripSegmentLocation *)self reconstructionType];
  *(v4 + 36) = [(CLTripSegmentLocation *)self signalEnvironmentType];
  *(v4 + 144) = [(CLTripSegmentLocation *)self clRoadID];
  *(v4 + 152) = [(CLTripSegmentLocation *)self locationDataMask];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentLocation;
  [(CLTripSegmentLocation *)&v3 dealloc];
}

- (void)updateLatitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy referenceFrame:(int)frame
{
  self->_latitude = latitude;
  self->_longitude = longitude;
  self->_horizontalAccuracy = accuracy;
  self->_referenceFrame = frame;
}

- (void)setRawLatitude:(double)latitude longitude:(double)longitude referenceFrame:(int)frame
{
  self->_rawLatitude = latitude;
  self->_rawLongitude = longitude;
  self->_rawReferenceFrame = frame;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CLTripSegmentLocation timestamp](self forKey:{"timestamp"), @"timestamp"}];
  [(CLTripSegmentLocation *)self latitude];
  [coder encodeDouble:@"latitude" forKey:?];
  [(CLTripSegmentLocation *)self longitude];
  [coder encodeDouble:@"longitude" forKey:?];
  [(CLTripSegmentLocation *)self horizontalAccuracy];
  [coder encodeDouble:@"horizontalAccuracy" forKey:?];
  [(CLTripSegmentLocation *)self course];
  [coder encodeDouble:@"course" forKey:?];
  [(CLTripSegmentLocation *)self courseAccuracy];
  [coder encodeDouble:@"courseAccuracy" forKey:?];
  [(CLTripSegmentLocation *)self speed];
  [coder encodeDouble:@"speed" forKey:?];
  [(CLTripSegmentLocation *)self speedAccuracy];
  [coder encodeDouble:@"speedAccuracy" forKey:?];
  [(CLTripSegmentLocation *)self altitude];
  [coder encodeDouble:@"altitude" forKey:?];
  [(CLTripSegmentLocation *)self altitudeAccuracy];
  [coder encodeDouble:@"altitudeAccuracy" forKey:?];
  [coder encodeInt:-[CLTripSegmentLocation mapsRoadClass](self forKey:{"mapsRoadClass"), @"mapsRoadClass"}];
  [coder encodeInt:-[CLTripSegmentLocation mapsFormOfWay](self forKey:{"mapsFormOfWay"), @"mapsFormOfWay"}];
  [coder encodeInt:-[CLTripSegmentLocation locType](self forKey:{"locType"), @"locType"}];
  [coder encodeInt:-[CLTripSegmentLocation locTypeStart](self forKey:{"locTypeStart"), @"locTypeStart"}];
  [coder encodeInt:-[CLTripSegmentLocation locTypeStop](self forKey:{"locTypeStop"), @"locTypeStop"}];
  [coder encodeInt:-[CLTripSegmentLocation reconstructionType](self forKey:{"reconstructionType"), @"reconstructionType"}];
  [coder encodeInt:-[CLTripSegmentLocation referenceFrame](self forKey:{"referenceFrame"), @"referenceFrame"}];
  [(CLTripSegmentLocation *)self rawLatitude];
  [coder encodeDouble:@"rawLatitude" forKey:?];
  [(CLTripSegmentLocation *)self rawLongitude];
  [coder encodeDouble:@"rawLongitude" forKey:?];
  [coder encodeInt:-[CLTripSegmentLocation rawReferenceFrame](self forKey:{"rawReferenceFrame"), @"rawReferenceFrame"}];
  [coder encodeInt:-[CLTripSegmentLocation signalEnvironmentType](self forKey:{"signalEnvironmentType"), @"signalEnvironmentType"}];
  [coder encodeInt64:-[CLTripSegmentLocation clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  locationDataMask = [(CLTripSegmentLocation *)self locationDataMask];

  [coder encodeInt:locationDataMask forKey:@"locationDataMask"];
}

- (CLTripSegmentLocation)initWithCoder:(id)coder
{
  v4 = [CLTripSegmentLocation alloc];
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  [coder decodeDoubleForKey:@"latitude"];
  v27 = v6;
  [coder decodeDoubleForKey:@"longitude"];
  v8 = v7;
  [coder decodeDoubleForKey:@"horizontalAccuracy"];
  v10 = v9;
  [coder decodeDoubleForKey:@"course"];
  v12 = v11;
  [coder decodeDoubleForKey:@"courseAccuracy"];
  v14 = v13;
  [coder decodeDoubleForKey:@"speed"];
  v16 = v15;
  [coder decodeDoubleForKey:@"speedAccuracy"];
  v18 = v17;
  [coder decodeDoubleForKey:@"altitude"];
  v20 = v19;
  [coder decodeDoubleForKey:@"altitudeAccuracy"];
  v22 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:signalEnvironmentType:](v4, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:signalEnvironmentType:", v5, [coder decodeIntForKey:@"locType"], objc_msgSend(coder, "decodeIntForKey:", @"referenceFrame"), objc_msgSend(coder, "decodeIntForKey:", @"signalEnvironmentType"), v27, v8, v10, v12, v14, v16, v18, v20, v21);
  [coder decodeDoubleForKey:@"rawLatitude"];
  v24 = v23;
  [coder decodeDoubleForKey:@"rawLongitude"];
  -[CLTripSegmentLocation setRawLatitude:longitude:referenceFrame:](v22, "setRawLatitude:longitude:referenceFrame:", [coder decodeIntForKey:@"rawReferenceFrame"], v24, v25);
  -[CLTripSegmentLocation setStartLocationType:](v22, "setStartLocationType:", [coder decodeIntForKey:@"locTypeStart"]);
  -[CLTripSegmentLocation setStopLocationType:](v22, "setStopLocationType:", [coder decodeIntForKey:@"locTypeStop"]);
  -[CLTripSegmentLocation setLocationReconstructionType:](v22, "setLocationReconstructionType:", [coder decodeIntForKey:@"reconstructionType"]);
  -[CLTripSegmentLocation setMapsRoadClass:](v22, "setMapsRoadClass:", [coder decodeIntForKey:@"mapsRoadClass"]);
  -[CLTripSegmentLocation setMapsFormOfWay:](v22, "setMapsFormOfWay:", [coder decodeIntForKey:@"mapsFormOfWay"]);
  -[CLTripSegmentLocation setCLRoadID:](v22, "setCLRoadID:", [coder decodeInt64ForKey:@"clRoadID"]);
  -[CLTripSegmentLocation setLocationDataMask:](v22, "setLocationDataMask:", [coder decodeIntForKey:@"locationDataMask"]);
  return v22;
}

- (double)distanceFromLocation:(id)location
{
  if (!location)
  {
    return -1.0;
  }

  latitude = self->_latitude;
  longitude = self->_longitude;
  [location latitude];
  v7 = v6;
  [location longitude];

  MEMORY[0x1EEDE89A0](latitude, longitude, v7, v8);
  return result;
}

- (BOOL)isCourseValid
{
  if ((*&self->_course & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = self->_course >= 0.0 && (*&self->_courseAccuracy & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  return self->_courseAccuracy > 0.0 && v4;
}

- (BOOL)isSpeedValid
{
  if ((*&self->_speed & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = self->_speed >= 0.0 && (*&self->_speedAccuracy & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  return self->_speedAccuracy > 0.0 && v4;
}

- (BOOL)isGoodGPSFixWithGoodCourse
{
  isGoodGPSFix = [(CLTripSegmentLocation *)self isGoodGPSFix];
  if (isGoodGPSFix)
  {
    isGoodGPSFix = [(CLTripSegmentLocation *)self isCourseValid];
    if (isGoodGPSFix)
    {
      LOBYTE(isGoodGPSFix) = self->_courseAccuracy < 60.0;
    }
  }

  return isGoodGPSFix;
}

@end