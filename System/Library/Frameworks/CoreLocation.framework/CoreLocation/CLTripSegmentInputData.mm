@interface CLTripSegmentInputData
- (CLTripSegmentInputData)initWithCoder:(id)a3;
- (CLTripSegmentInputData)initWithCommuteID:(id)a3 tripSegmentID:(id)a4 isFinalPart:(BOOL)a5 modeOfTransport:(int64_t)a6 tripLocations:(id)a7 startTripLocation:(id)a8 stopTripLocation:(id)a9 inertialOdometryData:(id)a10;
- (CLTripSegmentInputData)initWithTripSegmentID:(id)a3 isFinalPart:(BOOL)a4 modeOfTransport:(int64_t)a5 tripLocations:(id)a6 startTripLocation:(id)a7 stopTripLocation:(id)a8 inertialData:(id)a9;
- (CLTripSegmentInputData)initWithTripSegmentID:(id)a3 isFinalPart:(BOOL)a4 modeOfTransport:(int64_t)a5 tripLocations:(id)a6 startTripLocation:(id)a7 stopTripLocation:(id)a8 inertialOdometryData:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLTripSegmentInputData

- (CLTripSegmentInputData)initWithCommuteID:(id)a3 tripSegmentID:(id)a4 isFinalPart:(BOOL)a5 modeOfTransport:(int64_t)a6 tripLocations:(id)a7 startTripLocation:(id)a8 stopTripLocation:(id)a9 inertialOdometryData:(id)a10
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v16 = [(CLTripSegmentInputData *)&v19 init];
  if (v16)
  {
    v16->_commuteID = a3;
    v17 = a4;
    v16->_isFinalPart = a5;
    v16->_tripSegmentID = v17;
    v16->_modeOfTransport = a6;
    v16->_tripLocations = a7;
    v16->_startTripLocation = a8;
    v16->_stopTripLocation = a9;
    v16->_inertialData = 0;
    v16->_inertialOdometryData = a10;
  }

  return v16;
}

- (CLTripSegmentInputData)initWithTripSegmentID:(id)a3 isFinalPart:(BOOL)a4 modeOfTransport:(int64_t)a5 tripLocations:(id)a6 startTripLocation:(id)a7 stopTripLocation:(id)a8 inertialData:(id)a9
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v15 = [(CLTripSegmentInputData *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_commuteID = 0;
    v17 = a3;
    v16->_isFinalPart = a4;
    v16->_tripSegmentID = v17;
    v16->_modeOfTransport = a5;
    v16->_tripLocations = a6;
    v16->_startTripLocation = a7;
    v16->_stopTripLocation = a8;
    v16->_inertialData = a9;
    v16->_inertialOdometryData = 0;
  }

  return v16;
}

- (CLTripSegmentInputData)initWithTripSegmentID:(id)a3 isFinalPart:(BOOL)a4 modeOfTransport:(int64_t)a5 tripLocations:(id)a6 startTripLocation:(id)a7 stopTripLocation:(id)a8 inertialOdometryData:(id)a9
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v15 = [(CLTripSegmentInputData *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_commuteID = 0;
    v17 = a3;
    v16->_isFinalPart = a4;
    v16->_tripSegmentID = v17;
    v16->_modeOfTransport = a5;
    v16->_tripLocations = a6;
    v16->_startTripLocation = a7;
    v16->_stopTripLocation = a8;
    v16->_inertialData = 0;
    v16->_inertialOdometryData = a9;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithCommuteID:tripSegmentID:isFinalPart:modeOfTransport:tripLocations:startTripLocation:stopTripLocation:inertialOdometryData:", -[CLTripSegmentInputData commuteID](self, "commuteID"), -[CLTripSegmentInputData tripSegmentID](self, "tripSegmentID"), -[CLTripSegmentInputData isFinalPart](self, "isFinalPart"), -[CLTripSegmentInputData modeOfTransport](self, "modeOfTransport"), -[CLTripSegmentInputData tripLocations](self, "tripLocations"), -[CLTripSegmentInputData startTripLocation](self, "startTripLocation"), -[CLTripSegmentInputData stopTripLocation](self, "stopTripLocation"), -[CLTripSegmentInputData inertialOdometryData](self, "inertialOdometryData")}];
  v4[5] = [(CLTripSegmentInputData *)self inertialData];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentInputData;
  [(CLTripSegmentInputData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[CLTripSegmentInputData commuteID](self forKey:{"commuteID"), @"commuteID"}];
  [a3 encodeObject:-[CLTripSegmentInputData tripSegmentID](self forKey:{"tripSegmentID"), @"tripSegmentID"}];
  [a3 encodeBool:-[CLTripSegmentInputData isFinalPart](self forKey:{"isFinalPart"), @"isFinalPart"}];
  [a3 encodeInteger:-[CLTripSegmentInputData modeOfTransport](self forKey:{"modeOfTransport"), @"modeOfTransport"}];
  [a3 encodeObject:-[CLTripSegmentInputData inertialData](self forKey:{"inertialData"), @"inertialData"}];
  [a3 encodeObject:-[CLTripSegmentInputData tripLocations](self forKey:{"tripLocations"), @"tripLocations"}];
  [a3 encodeObject:-[CLTripSegmentInputData startTripLocation](self forKey:{"startTripLocation"), @"tripStartLocation"}];
  [a3 encodeObject:-[CLTripSegmentInputData stopTripLocation](self forKey:{"stopTripLocation"), @"tripStopLocation"}];
  v5 = [(CLTripSegmentInputData *)self inertialOdometryData];

  [a3 encodeObject:v5 forKey:@"inertialOdometryData"];
}

- (CLTripSegmentInputData)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = CLTripSegmentInputData;
  v4 = [(CLTripSegmentInputData *)&v12 init];
  if (v4)
  {
    v4->_commuteID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"commuteID"];
    v4->_tripSegmentID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"tripSegmentID"];
    v4->_isFinalPart = [a3 decodeBoolForKey:@"isFinalPart"];
    v4->_modeOfTransport = [a3 decodeIntegerForKey:@"modeOfTransport"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_tripLocations = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"tripLocations"}];
    v4->_startTripLocation = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"tripStartLocation"];
    v4->_stopTripLocation = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"tripStopLocation"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v4->_inertialData = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"inertialData"}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v4->_inertialOdometryData = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"inertialOdometryData"}];
  }

  return v4;
}

@end