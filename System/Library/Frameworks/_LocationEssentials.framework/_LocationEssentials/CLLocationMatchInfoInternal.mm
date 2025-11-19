@interface CLLocationMatchInfoInternal
- (CLLocationMatchInfoInternal)initWithMatchQuality:(int64_t)a3 matchCoordinate:(CLLocationCoordinate2D)a4 matchCourse:(double)a5 matchFormOfWay:(int)a6 matchRoadClass:(int)a7 matchShifted:(BOOL)a8 matchDataArray:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CLLocationMatchInfoInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationMatchInfoInternal;
  [(CLLocationMatchInfoInternal *)&v3 dealloc];
}

- (CLLocationMatchInfoInternal)initWithMatchQuality:(int64_t)a3 matchCoordinate:(CLLocationCoordinate2D)a4 matchCourse:(double)a5 matchFormOfWay:(int)a6 matchRoadClass:(int)a7 matchShifted:(BOOL)a8 matchDataArray:(id)a9
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v23.receiver = self;
  v23.super_class = CLLocationMatchInfoInternal;
  v17 = [(CLLocationMatchInfoInternal *)&v23 init];
  v21 = v17;
  if (v17)
  {
    v17->fMatchQuality = a3;
    v17->fMatchCoordinate.latitude = latitude;
    v17->fMatchCoordinate.longitude = longitude;
    v17->fMatchCourse = a5;
    v17->fMatchFormOfWay = a6;
    v17->fMatchRoadClass = a7;
    v17->fMatchShifted = a8;
    v17->fMatchDataArray = objc_msgSend_copy(a9, v18, v19, v20);
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, a3);
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