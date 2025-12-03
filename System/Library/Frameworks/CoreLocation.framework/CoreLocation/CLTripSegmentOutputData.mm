@interface CLTripSegmentOutputData
- (CLTripSegmentOutputData)initWithCoder:(id)coder;
- (CLTripSegmentOutputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part startDate:(id)date endDate:(id)endDate duration:(double)duration modeOfTransport:(int64_t)transport distance:(double)distance distanceUnc:(double)self0 tripLocations:(id)self1 routeRoads:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentOutputData

- (CLTripSegmentOutputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part startDate:(id)date endDate:(id)endDate duration:(double)duration modeOfTransport:(int64_t)transport distance:(double)distance distanceUnc:(double)self0 tripLocations:(id)self1 routeRoads:(id)self2
{
  v24.receiver = self;
  v24.super_class = CLTripSegmentOutputData;
  v21 = [(CLTripSegmentOutputData *)&v24 init];
  if (v21)
  {
    dCopy = d;
    v21->_isFinalPart = part;
    v21->_tripSegmentID = dCopy;
    v21->_modeOfTransport = transport;
    v21->_startDate = date;
    v21->_endDate = endDate;
    v21->_duration_s = duration;
    v21->_distance_m = distance;
    v21->_distanceUnc_m = unc;
    v21->_tripLocations = locations;
    v21->_routeRoads = roads;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  tripSegmentID = [(CLTripSegmentOutputData *)self tripSegmentID];
  isFinalPart = [(CLTripSegmentOutputData *)self isFinalPart];
  startDate = [(CLTripSegmentOutputData *)self startDate];
  endDate = [(CLTripSegmentOutputData *)self endDate];
  [(CLTripSegmentOutputData *)self duration_s];
  v10 = v9;
  modeOfTransport = [(CLTripSegmentOutputData *)self modeOfTransport];
  [(CLTripSegmentOutputData *)self distance_m];
  v13 = v12;
  [(CLTripSegmentOutputData *)self distanceUnc_m];
  return [v4 initWithTripSegmentID:tripSegmentID isFinalPart:isFinalPart startDate:startDate endDate:endDate duration:modeOfTransport modeOfTransport:-[CLTripSegmentOutputData tripLocations](self distance:"tripLocations") distanceUnc:v10 tripLocations:v13 routeRoads:{v14, -[CLTripSegmentOutputData routeRoads](self, "routeRoads")}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentOutputData;
  [(CLTripSegmentOutputData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CLTripSegmentOutputData tripSegmentID](self forKey:{"tripSegmentID"), @"tripSegmentID"}];
  [coder encodeBool:-[CLTripSegmentOutputData isFinalPart](self forKey:{"isFinalPart"), @"isFinalPart"}];
  [coder encodeInteger:-[CLTripSegmentOutputData modeOfTransport](self forKey:{"modeOfTransport"), @"modeOfTransport"}];
  [coder encodeObject:-[CLTripSegmentOutputData startDate](self forKey:{"startDate"), @"startDate"}];
  [coder encodeObject:-[CLTripSegmentOutputData endDate](self forKey:{"endDate"), @"endDate"}];
  [(CLTripSegmentOutputData *)self duration_s];
  [coder encodeDouble:@"duration" forKey:?];
  [(CLTripSegmentOutputData *)self distance_m];
  [coder encodeDouble:@"distance" forKey:?];
  [(CLTripSegmentOutputData *)self distanceUnc_m];
  [coder encodeDouble:@"distanceUnc" forKey:?];
  [coder encodeObject:-[CLTripSegmentOutputData tripLocations](self forKey:{"tripLocations"), @"tripLocations"}];
  routeRoads = [(CLTripSegmentOutputData *)self routeRoads];

  [coder encodeObject:routeRoads forKey:@"routeRoads"];
}

- (CLTripSegmentOutputData)initWithCoder:(id)coder
{
  v21 = [CLTripSegmentOutputData alloc];
  v4 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"tripSegmentID"];
  v5 = [coder decodeBoolForKey:@"isFinalPart"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  [coder decodeDoubleForKey:@"duration"];
  v9 = v8;
  v10 = [coder decodeIntegerForKey:@"modeOfTransport"];
  [coder decodeDoubleForKey:@"distance"];
  v12 = v11;
  [coder decodeDoubleForKey:@"distanceUnc"];
  v14 = v13;
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [coder decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithObjects:", v16, objc_opt_class(), 0), @"tripLocations"}];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  return -[CLTripSegmentOutputData initWithTripSegmentID:isFinalPart:startDate:endDate:duration:modeOfTransport:distance:distanceUnc:tripLocations:routeRoads:](v21, "initWithTripSegmentID:isFinalPart:startDate:endDate:duration:modeOfTransport:distance:distanceUnc:tripLocations:routeRoads:", v4, v5, v6, v7, v10, v17, v9, v12, v14, [coder decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithObjects:", v19, objc_opt_class(), 0), @"routeRoads"}]);
}

@end