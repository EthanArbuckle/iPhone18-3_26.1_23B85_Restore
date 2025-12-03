@interface CLTripSegmentInputData
- (CLTripSegmentInputData)initWithCoder:(id)coder;
- (CLTripSegmentInputData)initWithCommuteID:(id)d tripSegmentID:(id)iD isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialOdometryData:(id)self0;
- (CLTripSegmentInputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialData:(id)data;
- (CLTripSegmentInputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialOdometryData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentInputData

- (CLTripSegmentInputData)initWithCommuteID:(id)d tripSegmentID:(id)iD isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialOdometryData:(id)self0
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v16 = [(CLTripSegmentInputData *)&v19 init];
  if (v16)
  {
    v16->_commuteID = d;
    iDCopy = iD;
    v16->_isFinalPart = part;
    v16->_tripSegmentID = iDCopy;
    v16->_modeOfTransport = transport;
    v16->_tripLocations = locations;
    v16->_startTripLocation = location;
    v16->_stopTripLocation = tripLocation;
    v16->_inertialData = 0;
    v16->_inertialOdometryData = data;
  }

  return v16;
}

- (CLTripSegmentInputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialData:(id)data
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v15 = [(CLTripSegmentInputData *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_commuteID = 0;
    dCopy = d;
    v16->_isFinalPart = part;
    v16->_tripSegmentID = dCopy;
    v16->_modeOfTransport = transport;
    v16->_tripLocations = locations;
    v16->_startTripLocation = location;
    v16->_stopTripLocation = tripLocation;
    v16->_inertialData = data;
    v16->_inertialOdometryData = 0;
  }

  return v16;
}

- (CLTripSegmentInputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialOdometryData:(id)data
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v15 = [(CLTripSegmentInputData *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_commuteID = 0;
    dCopy = d;
    v16->_isFinalPart = part;
    v16->_tripSegmentID = dCopy;
    v16->_modeOfTransport = transport;
    v16->_tripLocations = locations;
    v16->_startTripLocation = location;
    v16->_stopTripLocation = tripLocation;
    v16->_inertialData = 0;
    v16->_inertialOdometryData = data;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithCommuteID:tripSegmentID:isFinalPart:modeOfTransport:tripLocations:startTripLocation:stopTripLocation:inertialOdometryData:", -[CLTripSegmentInputData commuteID](self, "commuteID"), -[CLTripSegmentInputData tripSegmentID](self, "tripSegmentID"), -[CLTripSegmentInputData isFinalPart](self, "isFinalPart"), -[CLTripSegmentInputData modeOfTransport](self, "modeOfTransport"), -[CLTripSegmentInputData tripLocations](self, "tripLocations"), -[CLTripSegmentInputData startTripLocation](self, "startTripLocation"), -[CLTripSegmentInputData stopTripLocation](self, "stopTripLocation"), -[CLTripSegmentInputData inertialOdometryData](self, "inertialOdometryData")}];
  v4[5] = [(CLTripSegmentInputData *)self inertialData];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentInputData;
  [(CLTripSegmentInputData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CLTripSegmentInputData commuteID](self forKey:{"commuteID"), @"commuteID"}];
  [coder encodeObject:-[CLTripSegmentInputData tripSegmentID](self forKey:{"tripSegmentID"), @"tripSegmentID"}];
  [coder encodeBool:-[CLTripSegmentInputData isFinalPart](self forKey:{"isFinalPart"), @"isFinalPart"}];
  [coder encodeInteger:-[CLTripSegmentInputData modeOfTransport](self forKey:{"modeOfTransport"), @"modeOfTransport"}];
  [coder encodeObject:-[CLTripSegmentInputData inertialData](self forKey:{"inertialData"), @"inertialData"}];
  [coder encodeObject:-[CLTripSegmentInputData tripLocations](self forKey:{"tripLocations"), @"tripLocations"}];
  [coder encodeObject:-[CLTripSegmentInputData startTripLocation](self forKey:{"startTripLocation"), @"tripStartLocation"}];
  [coder encodeObject:-[CLTripSegmentInputData stopTripLocation](self forKey:{"stopTripLocation"), @"tripStopLocation"}];
  inertialOdometryData = [(CLTripSegmentInputData *)self inertialOdometryData];

  [coder encodeObject:inertialOdometryData forKey:@"inertialOdometryData"];
}

- (CLTripSegmentInputData)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CLTripSegmentInputData;
  v4 = [(CLTripSegmentInputData *)&v12 init];
  if (v4)
  {
    v4->_commuteID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"commuteID"];
    v4->_tripSegmentID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"tripSegmentID"];
    v4->_isFinalPart = [coder decodeBoolForKey:@"isFinalPart"];
    v4->_modeOfTransport = [coder decodeIntegerForKey:@"modeOfTransport"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_tripLocations = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"tripLocations"}];
    v4->_startTripLocation = [coder decodeObjectOfClass:objc_opt_class() forKey:@"tripStartLocation"];
    v4->_stopTripLocation = [coder decodeObjectOfClass:objc_opt_class() forKey:@"tripStopLocation"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v4->_inertialData = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"inertialData"}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v4->_inertialOdometryData = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"inertialOdometryData"}];
  }

  return v4;
}

@end