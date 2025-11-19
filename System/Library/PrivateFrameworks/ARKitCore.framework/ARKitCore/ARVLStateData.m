@interface ARVLStateData
- (ARVLStateData)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)init:(double)a3 timeSinceInitialization:(double)a4 trackingStatus:(id)a5 fusedReplayLocation:(id)a6 fusedReplayLocationTimestamp:(double)a7 fusedReplayHeading:(double)a8 fusedReplayHeadingTimestamp:(double)a9 hasStartedAvailabilityCheck:(BOOL)a10 hasReturnedAvailabilityCheck:(BOOL)a11 hasStartedLocalization:(BOOL)a12 hasReturnedLocalization:(BOOL)a13;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARVLStateData

- (id)init:(double)a3 timeSinceInitialization:(double)a4 trackingStatus:(id)a5 fusedReplayLocation:(id)a6 fusedReplayLocationTimestamp:(double)a7 fusedReplayHeading:(double)a8 fusedReplayHeadingTimestamp:(double)a9 hasStartedAvailabilityCheck:(BOOL)a10 hasReturnedAvailabilityCheck:(BOOL)a11 hasStartedLocalization:(BOOL)a12 hasReturnedLocalization:(BOOL)a13
{
  v25 = a5;
  v26 = a6;
  v30.receiver = self;
  v30.super_class = ARVLStateData;
  v27 = [(ARVLStateData *)&v30 init];
  v28 = v27;
  if (v27)
  {
    v27->_timeSinceLastLocalization = a3;
    v27->_timeSinceInitialization = a4;
    objc_storeStrong(&v27->_trackingStatus, a5);
    objc_storeStrong(&v28->_fusedReplayLocation, a6);
    v28->_fusedReplayLocationTimestamp = a7;
    v28->_fusedReplayHeading = a8;
    v28->_fusedReplayHeadingTimestamp = a9;
    v28->_hasStartedAvailabilityCheck = a10;
    v28->_hasReturnedAvailabilityCheck = a11;
    v28->_hasStartedLocalization = a12;
    v28->_hasReturnedLocalization = a13;
  }

  return v28;
}

- (ARVLStateData)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ARVLStateData;
  v5 = [(ARVLStateData *)&v16 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timeSinceLastLocalization"];
    v5->_timeSinceLastLocalization = v6;
    [v4 decodeDoubleForKey:@"timeSinceInitialization"];
    v5->_timeSinceInitialization = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingStatus"];
    trackingStatus = v5->_trackingStatus;
    v5->_trackingStatus = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fusedReplayLocation"];
    fusedReplayLocation = v5->_fusedReplayLocation;
    v5->_fusedReplayLocation = v10;

    [v4 decodeDoubleForKey:@"fusedReplayLocationTimestamp"];
    v5->_fusedReplayLocationTimestamp = v12;
    [v4 decodeDoubleForKey:@"fusedReplayHeading"];
    v5->_fusedReplayHeading = v13;
    [v4 decodeDoubleForKey:@"fusedReplayHeadingTimestamp"];
    v5->_fusedReplayHeadingTimestamp = v14;
    v5->_hasStartedAvailabilityCheck = [v4 decodeBoolForKey:@"hasStartedAvailabilityCheck"];
    v5->_hasReturnedAvailabilityCheck = [v4 decodeBoolForKey:@"hasReturnedAvailabilityCheck"];
    v5->_hasStartedLocalization = [v4 decodeBoolForKey:@"hasStartedLocalization"];
    v5->_hasReturnedLocalization = [v4 decodeBoolForKey:@"hasReturnedLocalization"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timeSinceLastLocalization = self->_timeSinceLastLocalization;
  v5 = a3;
  [v5 encodeDouble:@"timeSinceLastLocalization" forKey:timeSinceLastLocalization];
  [v5 encodeDouble:@"timeSinceInitialization" forKey:self->_timeSinceInitialization];
  [v5 encodeObject:self->_trackingStatus forKey:@"trackingStatus"];
  [v5 encodeObject:self->_fusedReplayLocation forKey:@"fusedReplayLocation"];
  [v5 encodeDouble:@"fusedReplayLocationTimestamp" forKey:self->_fusedReplayLocationTimestamp];
  [v5 encodeDouble:@"fusedReplayHeading" forKey:self->_fusedReplayHeading];
  [v5 encodeDouble:@"fusedReplayHeadingTimestamp" forKey:self->_fusedReplayHeadingTimestamp];
  [v5 encodeBool:self->_hasStartedAvailabilityCheck forKey:@"hasStartedAvailabilityCheck"];
  [v5 encodeBool:self->_hasReturnedAvailabilityCheck forKey:@"hasReturnedAvailabilityCheck"];
  [v5 encodeBool:self->_hasStartedLocalization forKey:@"hasStartedLocalization"];
  [v5 encodeBool:self->_hasReturnedLocalization forKey:@"hasReturnedLocalization"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  if (result)
  {
    timeSinceLastLocalization = self->_timeSinceLastLocalization;
    timeSinceInitialization = self->_timeSinceInitialization;
    trackingStatus = self->_trackingStatus;
    v9 = result;
    v10 = [(ARGeoTrackingStatus *)trackingStatus copyWithZone:a3];
    v11 = [(CLLocation *)self->_fusedReplayLocation copyWithZone:a3];
    v12 = [v9 init:v10 timeSinceInitialization:v11 trackingStatus:self->_hasStartedAvailabilityCheck fusedReplayLocation:self->_hasReturnedAvailabilityCheck fusedReplayLocationTimestamp:self->_hasStartedLocalization fusedReplayHeading:self->_hasReturnedLocalization fusedReplayHeadingTimestamp:timeSinceLastLocalization hasStartedAvailabilityCheck:timeSinceInitialization hasReturnedAvailabilityCheck:self->_fusedReplayLocationTimestamp hasStartedLocalization:self->_fusedReplayHeading hasReturnedLocalization:self->_fusedReplayHeadingTimestamp];

    return v12;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    timeSinceLastLocalization = self->_timeSinceLastLocalization;
    [v5 timeSinceLastLocalization];
    if (timeSinceLastLocalization == v7 && (timeSinceInitialization = self->_timeSinceInitialization, [v5 timeSinceInitialization], timeSinceInitialization == v9))
    {
      trackingStatus = self->_trackingStatus;
      v11 = [v5 trackingStatus];
      if (-[ARGeoTrackingStatus isEqual:](trackingStatus, "isEqual:", v11) && (fusedReplayHeading = self->_fusedReplayHeading, [v5 fusedReplayHeading], fusedReplayHeading == v13) && (fusedReplayHeadingTimestamp = self->_fusedReplayHeadingTimestamp, objc_msgSend(v5, "fusedReplayHeadingTimestamp"), fusedReplayHeadingTimestamp == v15))
      {
        fusedReplayLocation = self->_fusedReplayLocation;
        v17 = [v5 fusedReplayLocation];
        if (-[CLLocation isEqual:](fusedReplayLocation, "isEqual:", v17) && (fusedReplayLocationTimestamp = self->_fusedReplayLocationTimestamp, [v5 fusedReplayLocationTimestamp], fusedReplayLocationTimestamp == v19) && (hasStartedAvailabilityCheck = self->_hasStartedAvailabilityCheck, hasStartedAvailabilityCheck == objc_msgSend(v5, "hasStartedAvailabilityCheck")) && (hasReturnedAvailabilityCheck = self->_hasReturnedAvailabilityCheck, hasReturnedAvailabilityCheck == objc_msgSend(v5, "hasReturnedAvailabilityCheck")) && (hasStartedLocalization = self->_hasStartedLocalization, hasStartedLocalization == objc_msgSend(v5, "hasStartedLocalization")))
        {
          hasReturnedLocalization = self->_hasReturnedLocalization;
          v24 = hasReturnedLocalization == [v5 hasReturnedLocalization];
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end