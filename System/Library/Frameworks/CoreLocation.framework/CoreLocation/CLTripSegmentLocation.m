@interface CLTripSegmentLocation
- (BOOL)isCourseValid;
- (BOOL)isGoodGPSFixWithGoodCourse;
- (BOOL)isSpeedValid;
- (CLTripSegmentLocation)initWithCLLocation:(id)a3;
- (CLTripSegmentLocation)initWithCoder:(id)a3;
- (double)distanceFromLocation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setRawLatitude:(double)a3 longitude:(double)a4 referenceFrame:(int)a5;
- (void)updateLatitude:(double)a3 longitude:(double)a4 horizontalAccuracy:(double)a5 referenceFrame:(int)a6;
@end

@implementation CLTripSegmentLocation

- (CLTripSegmentLocation)initWithCLLocation:(id)a3
{
  v5 = [a3 timestamp];
  [a3 coordinate];
  v23 = v6;
  [a3 coordinate];
  v8 = v7;
  [a3 horizontalAccuracy];
  v10 = v9;
  [a3 course];
  v12 = v11;
  [a3 courseAccuracy];
  v14 = v13;
  [a3 speed];
  v16 = v15;
  [a3 speedAccuracy];
  v18 = v17;
  [a3 altitude];
  v20 = v19;
  [a3 verticalAccuracy];
  return -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:signalEnvironmentType:](self, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:signalEnvironmentType:", v5, [a3 type], objc_msgSend(a3, "referenceFrame"), objc_msgSend(a3, "signalEnvironmentType"), v23, v8, v10, v12, v14, v16, v18, v20, v21);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)updateLatitude:(double)a3 longitude:(double)a4 horizontalAccuracy:(double)a5 referenceFrame:(int)a6
{
  self->_latitude = a3;
  self->_longitude = a4;
  self->_horizontalAccuracy = a5;
  self->_referenceFrame = a6;
}

- (void)setRawLatitude:(double)a3 longitude:(double)a4 referenceFrame:(int)a5
{
  self->_rawLatitude = a3;
  self->_rawLongitude = a4;
  self->_rawReferenceFrame = a5;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[CLTripSegmentLocation timestamp](self forKey:{"timestamp"), @"timestamp"}];
  [(CLTripSegmentLocation *)self latitude];
  [a3 encodeDouble:@"latitude" forKey:?];
  [(CLTripSegmentLocation *)self longitude];
  [a3 encodeDouble:@"longitude" forKey:?];
  [(CLTripSegmentLocation *)self horizontalAccuracy];
  [a3 encodeDouble:@"horizontalAccuracy" forKey:?];
  [(CLTripSegmentLocation *)self course];
  [a3 encodeDouble:@"course" forKey:?];
  [(CLTripSegmentLocation *)self courseAccuracy];
  [a3 encodeDouble:@"courseAccuracy" forKey:?];
  [(CLTripSegmentLocation *)self speed];
  [a3 encodeDouble:@"speed" forKey:?];
  [(CLTripSegmentLocation *)self speedAccuracy];
  [a3 encodeDouble:@"speedAccuracy" forKey:?];
  [(CLTripSegmentLocation *)self altitude];
  [a3 encodeDouble:@"altitude" forKey:?];
  [(CLTripSegmentLocation *)self altitudeAccuracy];
  [a3 encodeDouble:@"altitudeAccuracy" forKey:?];
  [a3 encodeInt:-[CLTripSegmentLocation mapsRoadClass](self forKey:{"mapsRoadClass"), @"mapsRoadClass"}];
  [a3 encodeInt:-[CLTripSegmentLocation mapsFormOfWay](self forKey:{"mapsFormOfWay"), @"mapsFormOfWay"}];
  [a3 encodeInt:-[CLTripSegmentLocation locType](self forKey:{"locType"), @"locType"}];
  [a3 encodeInt:-[CLTripSegmentLocation locTypeStart](self forKey:{"locTypeStart"), @"locTypeStart"}];
  [a3 encodeInt:-[CLTripSegmentLocation locTypeStop](self forKey:{"locTypeStop"), @"locTypeStop"}];
  [a3 encodeInt:-[CLTripSegmentLocation reconstructionType](self forKey:{"reconstructionType"), @"reconstructionType"}];
  [a3 encodeInt:-[CLTripSegmentLocation referenceFrame](self forKey:{"referenceFrame"), @"referenceFrame"}];
  [(CLTripSegmentLocation *)self rawLatitude];
  [a3 encodeDouble:@"rawLatitude" forKey:?];
  [(CLTripSegmentLocation *)self rawLongitude];
  [a3 encodeDouble:@"rawLongitude" forKey:?];
  [a3 encodeInt:-[CLTripSegmentLocation rawReferenceFrame](self forKey:{"rawReferenceFrame"), @"rawReferenceFrame"}];
  [a3 encodeInt:-[CLTripSegmentLocation signalEnvironmentType](self forKey:{"signalEnvironmentType"), @"signalEnvironmentType"}];
  [a3 encodeInt64:-[CLTripSegmentLocation clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  v5 = [(CLTripSegmentLocation *)self locationDataMask];

  [a3 encodeInt:v5 forKey:@"locationDataMask"];
}

- (CLTripSegmentLocation)initWithCoder:(id)a3
{
  v4 = [CLTripSegmentLocation alloc];
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  [a3 decodeDoubleForKey:@"latitude"];
  v27 = v6;
  [a3 decodeDoubleForKey:@"longitude"];
  v8 = v7;
  [a3 decodeDoubleForKey:@"horizontalAccuracy"];
  v10 = v9;
  [a3 decodeDoubleForKey:@"course"];
  v12 = v11;
  [a3 decodeDoubleForKey:@"courseAccuracy"];
  v14 = v13;
  [a3 decodeDoubleForKey:@"speed"];
  v16 = v15;
  [a3 decodeDoubleForKey:@"speedAccuracy"];
  v18 = v17;
  [a3 decodeDoubleForKey:@"altitude"];
  v20 = v19;
  [a3 decodeDoubleForKey:@"altitudeAccuracy"];
  v22 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:signalEnvironmentType:](v4, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:signalEnvironmentType:", v5, [a3 decodeIntForKey:@"locType"], objc_msgSend(a3, "decodeIntForKey:", @"referenceFrame"), objc_msgSend(a3, "decodeIntForKey:", @"signalEnvironmentType"), v27, v8, v10, v12, v14, v16, v18, v20, v21);
  [a3 decodeDoubleForKey:@"rawLatitude"];
  v24 = v23;
  [a3 decodeDoubleForKey:@"rawLongitude"];
  -[CLTripSegmentLocation setRawLatitude:longitude:referenceFrame:](v22, "setRawLatitude:longitude:referenceFrame:", [a3 decodeIntForKey:@"rawReferenceFrame"], v24, v25);
  -[CLTripSegmentLocation setStartLocationType:](v22, "setStartLocationType:", [a3 decodeIntForKey:@"locTypeStart"]);
  -[CLTripSegmentLocation setStopLocationType:](v22, "setStopLocationType:", [a3 decodeIntForKey:@"locTypeStop"]);
  -[CLTripSegmentLocation setLocationReconstructionType:](v22, "setLocationReconstructionType:", [a3 decodeIntForKey:@"reconstructionType"]);
  -[CLTripSegmentLocation setMapsRoadClass:](v22, "setMapsRoadClass:", [a3 decodeIntForKey:@"mapsRoadClass"]);
  -[CLTripSegmentLocation setMapsFormOfWay:](v22, "setMapsFormOfWay:", [a3 decodeIntForKey:@"mapsFormOfWay"]);
  -[CLTripSegmentLocation setCLRoadID:](v22, "setCLRoadID:", [a3 decodeInt64ForKey:@"clRoadID"]);
  -[CLTripSegmentLocation setLocationDataMask:](v22, "setLocationDataMask:", [a3 decodeIntForKey:@"locationDataMask"]);
  return v22;
}

- (double)distanceFromLocation:(id)a3
{
  if (!a3)
  {
    return -1.0;
  }

  latitude = self->_latitude;
  longitude = self->_longitude;
  [a3 latitude];
  v7 = v6;
  [a3 longitude];

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
  v3 = [(CLTripSegmentLocation *)self isGoodGPSFix];
  if (v3)
  {
    v3 = [(CLTripSegmentLocation *)self isCourseValid];
    if (v3)
    {
      LOBYTE(v3) = self->_courseAccuracy < 60.0;
    }
  }

  return v3;
}

@end