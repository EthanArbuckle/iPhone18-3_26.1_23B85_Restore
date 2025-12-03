@interface ARVLStateData
- (ARVLStateData)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)init:(double)init timeSinceInitialization:(double)initialization trackingStatus:(id)status fusedReplayLocation:(id)location fusedReplayLocationTimestamp:(double)timestamp fusedReplayHeading:(double)heading fusedReplayHeadingTimestamp:(double)headingTimestamp hasStartedAvailabilityCheck:(BOOL)self0 hasReturnedAvailabilityCheck:(BOOL)self1 hasStartedLocalization:(BOOL)self2 hasReturnedLocalization:(BOOL)self3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARVLStateData

- (id)init:(double)init timeSinceInitialization:(double)initialization trackingStatus:(id)status fusedReplayLocation:(id)location fusedReplayLocationTimestamp:(double)timestamp fusedReplayHeading:(double)heading fusedReplayHeadingTimestamp:(double)headingTimestamp hasStartedAvailabilityCheck:(BOOL)self0 hasReturnedAvailabilityCheck:(BOOL)self1 hasStartedLocalization:(BOOL)self2 hasReturnedLocalization:(BOOL)self3
{
  statusCopy = status;
  locationCopy = location;
  v30.receiver = self;
  v30.super_class = ARVLStateData;
  v27 = [(ARVLStateData *)&v30 init];
  v28 = v27;
  if (v27)
  {
    v27->_timeSinceLastLocalization = init;
    v27->_timeSinceInitialization = initialization;
    objc_storeStrong(&v27->_trackingStatus, status);
    objc_storeStrong(&v28->_fusedReplayLocation, location);
    v28->_fusedReplayLocationTimestamp = timestamp;
    v28->_fusedReplayHeading = heading;
    v28->_fusedReplayHeadingTimestamp = headingTimestamp;
    v28->_hasStartedAvailabilityCheck = check;
    v28->_hasReturnedAvailabilityCheck = availabilityCheck;
    v28->_hasStartedLocalization = localization;
    v28->_hasReturnedLocalization = returnedLocalization;
  }

  return v28;
}

- (ARVLStateData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ARVLStateData;
  v5 = [(ARVLStateData *)&v16 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timeSinceLastLocalization"];
    v5->_timeSinceLastLocalization = v6;
    [coderCopy decodeDoubleForKey:@"timeSinceInitialization"];
    v5->_timeSinceInitialization = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingStatus"];
    trackingStatus = v5->_trackingStatus;
    v5->_trackingStatus = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fusedReplayLocation"];
    fusedReplayLocation = v5->_fusedReplayLocation;
    v5->_fusedReplayLocation = v10;

    [coderCopy decodeDoubleForKey:@"fusedReplayLocationTimestamp"];
    v5->_fusedReplayLocationTimestamp = v12;
    [coderCopy decodeDoubleForKey:@"fusedReplayHeading"];
    v5->_fusedReplayHeading = v13;
    [coderCopy decodeDoubleForKey:@"fusedReplayHeadingTimestamp"];
    v5->_fusedReplayHeadingTimestamp = v14;
    v5->_hasStartedAvailabilityCheck = [coderCopy decodeBoolForKey:@"hasStartedAvailabilityCheck"];
    v5->_hasReturnedAvailabilityCheck = [coderCopy decodeBoolForKey:@"hasReturnedAvailabilityCheck"];
    v5->_hasStartedLocalization = [coderCopy decodeBoolForKey:@"hasStartedLocalization"];
    v5->_hasReturnedLocalization = [coderCopy decodeBoolForKey:@"hasReturnedLocalization"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timeSinceLastLocalization = self->_timeSinceLastLocalization;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timeSinceLastLocalization" forKey:timeSinceLastLocalization];
  [coderCopy encodeDouble:@"timeSinceInitialization" forKey:self->_timeSinceInitialization];
  [coderCopy encodeObject:self->_trackingStatus forKey:@"trackingStatus"];
  [coderCopy encodeObject:self->_fusedReplayLocation forKey:@"fusedReplayLocation"];
  [coderCopy encodeDouble:@"fusedReplayLocationTimestamp" forKey:self->_fusedReplayLocationTimestamp];
  [coderCopy encodeDouble:@"fusedReplayHeading" forKey:self->_fusedReplayHeading];
  [coderCopy encodeDouble:@"fusedReplayHeadingTimestamp" forKey:self->_fusedReplayHeadingTimestamp];
  [coderCopy encodeBool:self->_hasStartedAvailabilityCheck forKey:@"hasStartedAvailabilityCheck"];
  [coderCopy encodeBool:self->_hasReturnedAvailabilityCheck forKey:@"hasReturnedAvailabilityCheck"];
  [coderCopy encodeBool:self->_hasStartedLocalization forKey:@"hasStartedLocalization"];
  [coderCopy encodeBool:self->_hasReturnedLocalization forKey:@"hasReturnedLocalization"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  if (result)
  {
    timeSinceLastLocalization = self->_timeSinceLastLocalization;
    timeSinceInitialization = self->_timeSinceInitialization;
    trackingStatus = self->_trackingStatus;
    v9 = result;
    v10 = [(ARGeoTrackingStatus *)trackingStatus copyWithZone:zone];
    v11 = [(CLLocation *)self->_fusedReplayLocation copyWithZone:zone];
    v12 = [v9 init:v10 timeSinceInitialization:v11 trackingStatus:self->_hasStartedAvailabilityCheck fusedReplayLocation:self->_hasReturnedAvailabilityCheck fusedReplayLocationTimestamp:self->_hasStartedLocalization fusedReplayHeading:self->_hasReturnedLocalization fusedReplayHeadingTimestamp:timeSinceLastLocalization hasStartedAvailabilityCheck:timeSinceInitialization hasReturnedAvailabilityCheck:self->_fusedReplayLocationTimestamp hasStartedLocalization:self->_fusedReplayHeading hasReturnedLocalization:self->_fusedReplayHeadingTimestamp];

    return v12;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timeSinceLastLocalization = self->_timeSinceLastLocalization;
    [v5 timeSinceLastLocalization];
    if (timeSinceLastLocalization == v7 && (timeSinceInitialization = self->_timeSinceInitialization, [v5 timeSinceInitialization], timeSinceInitialization == v9))
    {
      trackingStatus = self->_trackingStatus;
      trackingStatus = [v5 trackingStatus];
      if (-[ARGeoTrackingStatus isEqual:](trackingStatus, "isEqual:", trackingStatus) && (fusedReplayHeading = self->_fusedReplayHeading, [v5 fusedReplayHeading], fusedReplayHeading == v13) && (fusedReplayHeadingTimestamp = self->_fusedReplayHeadingTimestamp, objc_msgSend(v5, "fusedReplayHeadingTimestamp"), fusedReplayHeadingTimestamp == v15))
      {
        fusedReplayLocation = self->_fusedReplayLocation;
        fusedReplayLocation = [v5 fusedReplayLocation];
        if (-[CLLocation isEqual:](fusedReplayLocation, "isEqual:", fusedReplayLocation) && (fusedReplayLocationTimestamp = self->_fusedReplayLocationTimestamp, [v5 fusedReplayLocationTimestamp], fusedReplayLocationTimestamp == v19) && (hasStartedAvailabilityCheck = self->_hasStartedAvailabilityCheck, hasStartedAvailabilityCheck == objc_msgSend(v5, "hasStartedAvailabilityCheck")) && (hasReturnedAvailabilityCheck = self->_hasReturnedAvailabilityCheck, hasReturnedAvailabilityCheck == objc_msgSend(v5, "hasReturnedAvailabilityCheck")) && (hasStartedLocalization = self->_hasStartedLocalization, hasStartedLocalization == objc_msgSend(v5, "hasStartedLocalization")))
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