@interface CLTripSegmentOutputData
- (CLTripSegmentOutputData)initWithCoder:(id)a3;
- (CLTripSegmentOutputData)initWithTripSegmentID:(id)a3 isFinalPart:(BOOL)a4 startDate:(id)a5 endDate:(id)a6 duration:(double)a7 modeOfTransport:(int64_t)a8 distance:(double)a9 distanceUnc:(double)a10 tripLocations:(id)a11 routeRoads:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLTripSegmentOutputData

- (CLTripSegmentOutputData)initWithTripSegmentID:(id)a3 isFinalPart:(BOOL)a4 startDate:(id)a5 endDate:(id)a6 duration:(double)a7 modeOfTransport:(int64_t)a8 distance:(double)a9 distanceUnc:(double)a10 tripLocations:(id)a11 routeRoads:(id)a12
{
  v24.receiver = self;
  v24.super_class = CLTripSegmentOutputData;
  v21 = [(CLTripSegmentOutputData *)&v24 init];
  if (v21)
  {
    v22 = a3;
    v21->_isFinalPart = a4;
    v21->_tripSegmentID = v22;
    v21->_modeOfTransport = a8;
    v21->_startDate = a5;
    v21->_endDate = a6;
    v21->_duration_s = a7;
    v21->_distance_m = a9;
    v21->_distanceUnc_m = a10;
    v21->_tripLocations = a11;
    v21->_routeRoads = a12;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CLTripSegmentOutputData *)self tripSegmentID];
  v6 = [(CLTripSegmentOutputData *)self isFinalPart];
  v7 = [(CLTripSegmentOutputData *)self startDate];
  v8 = [(CLTripSegmentOutputData *)self endDate];
  [(CLTripSegmentOutputData *)self duration_s];
  v10 = v9;
  v11 = [(CLTripSegmentOutputData *)self modeOfTransport];
  [(CLTripSegmentOutputData *)self distance_m];
  v13 = v12;
  [(CLTripSegmentOutputData *)self distanceUnc_m];
  return [v4 initWithTripSegmentID:v5 isFinalPart:v6 startDate:v7 endDate:v8 duration:v11 modeOfTransport:-[CLTripSegmentOutputData tripLocations](self distance:"tripLocations") distanceUnc:v10 tripLocations:v13 routeRoads:{v14, -[CLTripSegmentOutputData routeRoads](self, "routeRoads")}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentOutputData;
  [(CLTripSegmentOutputData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[CLTripSegmentOutputData tripSegmentID](self forKey:{"tripSegmentID"), @"tripSegmentID"}];
  [a3 encodeBool:-[CLTripSegmentOutputData isFinalPart](self forKey:{"isFinalPart"), @"isFinalPart"}];
  [a3 encodeInteger:-[CLTripSegmentOutputData modeOfTransport](self forKey:{"modeOfTransport"), @"modeOfTransport"}];
  [a3 encodeObject:-[CLTripSegmentOutputData startDate](self forKey:{"startDate"), @"startDate"}];
  [a3 encodeObject:-[CLTripSegmentOutputData endDate](self forKey:{"endDate"), @"endDate"}];
  [(CLTripSegmentOutputData *)self duration_s];
  [a3 encodeDouble:@"duration" forKey:?];
  [(CLTripSegmentOutputData *)self distance_m];
  [a3 encodeDouble:@"distance" forKey:?];
  [(CLTripSegmentOutputData *)self distanceUnc_m];
  [a3 encodeDouble:@"distanceUnc" forKey:?];
  [a3 encodeObject:-[CLTripSegmentOutputData tripLocations](self forKey:{"tripLocations"), @"tripLocations"}];
  v5 = [(CLTripSegmentOutputData *)self routeRoads];

  [a3 encodeObject:v5 forKey:@"routeRoads"];
}

- (CLTripSegmentOutputData)initWithCoder:(id)a3
{
  v21 = [CLTripSegmentOutputData alloc];
  v4 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"tripSegmentID"];
  v5 = [a3 decodeBoolForKey:@"isFinalPart"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  [a3 decodeDoubleForKey:@"duration"];
  v9 = v8;
  v10 = [a3 decodeIntegerForKey:@"modeOfTransport"];
  [a3 decodeDoubleForKey:@"distance"];
  v12 = v11;
  [a3 decodeDoubleForKey:@"distanceUnc"];
  v14 = v13;
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [a3 decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithObjects:", v16, objc_opt_class(), 0), @"tripLocations"}];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  return -[CLTripSegmentOutputData initWithTripSegmentID:isFinalPart:startDate:endDate:duration:modeOfTransport:distance:distanceUnc:tripLocations:routeRoads:](v21, "initWithTripSegmentID:isFinalPart:startDate:endDate:duration:modeOfTransport:distance:distanceUnc:tripLocations:routeRoads:", v4, v5, v6, v7, v10, v17, v9, v12, v14, [a3 decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithObjects:", v19, objc_opt_class(), 0), @"routeRoads"}]);
}

@end