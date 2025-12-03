@interface CLLocationMatchInfoInternal
- (CLLocationMatchInfoInternal)initWithMatchQuality:(int64_t)quality matchCoordinate:(CLLocationCoordinate2D)coordinate matchCourse:(double)course matchFormOfWay:(int)way matchRoadClass:(int)class matchShifted:(BOOL)shifted matchDataArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CLLocationMatchInfoInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationMatchInfoInternal;
  [(CLLocationMatchInfoInternal *)&v3 dealloc];
}

- (CLLocationMatchInfoInternal)initWithMatchQuality:(int64_t)quality matchCoordinate:(CLLocationCoordinate2D)coordinate matchCourse:(double)course matchFormOfWay:(int)way matchRoadClass:(int)class matchShifted:(BOOL)shifted matchDataArray:(id)array
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v23.receiver = self;
  v23.super_class = CLLocationMatchInfoInternal;
  v17 = [(CLLocationMatchInfoInternal *)&v23 init];
  v21 = v17;
  if (v17)
  {
    v17->fMatchQuality = quality;
    v17->fMatchCoordinate.latitude = latitude;
    v17->fMatchCoordinate.longitude = longitude;
    v17->fMatchCourse = course;
    v17->fMatchFormOfWay = way;
    v17->fMatchRoadClass = class;
    v17->fMatchShifted = shifted;
    v17->fMatchDataArray = objc_msgSend_copy(array, v18, v19, v20);
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, zone);
  fMatchQuality = self->fMatchQuality;
  longitude = self->fMatchCoordinate.longitude;
  fMatchCourse = self->fMatchCourse;
  fMatchFormOfWay = self->fMatchFormOfWay;
  fMatchRoadClass = self->fMatchRoadClass;
  fMatchShifted = self->fMatchShifted;
  fMatchDataArray = self->fMatchDataArray;
  latitude = self->fMatchCoordinate.latitude;

  return objc_msgSend_initWithMatchQuality_matchCoordinate_matchCourse_matchFormOfWay_matchRoadClass_matchShifted_matchDataArray_(v9, v10, latitude, longitude, fMatchQuality, fMatchFormOfWay, fMatchRoadClass, fMatchShifted, fMatchDataArray, fMatchCourse);
}

@end