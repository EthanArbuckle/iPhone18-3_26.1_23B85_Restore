@interface CLTripSegmentInertialData
- (CLTripSegmentInertialData)initWithCoder:(id)coder;
- (CLTripSegmentInertialData)initWithTime:(id)time dataPeriodSec:(double)sec deltaCourseRad:(double)rad deltaSpeedMps:(double)mps deltaCourseVarRad2:(double)rad2 deltaSpeedVarMps2:(double)mps2 deltaCourseSpeedCovarRadMps:(double)radMps;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentInertialData

- (CLTripSegmentInertialData)initWithTime:(id)time dataPeriodSec:(double)sec deltaCourseRad:(double)rad deltaSpeedMps:(double)mps deltaCourseVarRad2:(double)rad2 deltaSpeedVarMps2:(double)mps2 deltaCourseSpeedCovarRadMps:(double)radMps
{
  v18.receiver = self;
  v18.super_class = CLTripSegmentInertialData;
  v16 = [(CLTripSegmentInertialData *)&v18 init];
  if (v16)
  {
    v16->_timestamp = time;
    v16->_dataPeriod_s = sec;
    v16->_deltaCourse_rad = rad;
    v16->_deltaSpeed_mps = mps;
    v16->_deltaCourseVar_rad2 = rad2;
    v16->_deltaSpeedVar_mps2 = mps2;
    v16->_deltaCourseSpeedCovar_radmps = radMps;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  timestamp = [(CLTripSegmentInertialData *)self timestamp];
  [(CLTripSegmentInertialData *)self dataPeriod_s];
  v7 = v6;
  [(CLTripSegmentInertialData *)self deltaCourse_rad];
  v9 = v8;
  [(CLTripSegmentInertialData *)self deltaSpeed_mps];
  v11 = v10;
  [(CLTripSegmentInertialData *)self deltaSpeedVar_mps2];
  v13 = v12;
  [(CLTripSegmentInertialData *)self deltaSpeedVar_mps2];
  v15 = v14;
  [(CLTripSegmentInertialData *)self deltaCourseSpeedCovar_radmps];

  return [v4 initWithTime:timestamp dataPeriodSec:v7 deltaCourseRad:v9 deltaSpeedMps:v11 deltaCourseVarRad2:v13 deltaSpeedVarMps2:v15 deltaCourseSpeedCovarRadMps:v16];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentInertialData;
  [(CLTripSegmentInertialData *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(NSDate *)[(CLTripSegmentInertialData *)self timestamp] timeIntervalSinceReferenceDate];
  v7 = v6;
  [(CLTripSegmentInertialData *)self dataPeriod_s];
  v9 = v8;
  [(CLTripSegmentInertialData *)self deltaCourse_rad];
  v11 = v10;
  [(CLTripSegmentInertialData *)self deltaSpeed_mps];
  v13 = v12;
  [(CLTripSegmentInertialData *)self deltaCourseVar_rad2];
  v15 = v14;
  [(CLTripSegmentInertialData *)self deltaSpeedVar_mps2];
  v17 = v16;
  [(CLTripSegmentInertialData *)self deltaCourseSpeedCovar_radmps];
  return [v3 stringWithFormat:@"%@, timestamp, %.2f, dataperiod, %.2f, deltaCourse, %.6f, deltaSpeed, %.4f, courseVar, %.6f, speedVar, %.6lf, courseSpeedCovar, %.6lf", v5, v7, v9, v11, v13, v15, v17, v18];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CLTripSegmentInertialData timestamp](self forKey:{"timestamp"), @"timestamp"}];
  [(CLTripSegmentInertialData *)self dataPeriod_s];
  [coder encodeDouble:@"dataPeriod" forKey:?];
  [(CLTripSegmentInertialData *)self deltaCourse_rad];
  [coder encodeDouble:@"deltaCourse" forKey:?];
  [(CLTripSegmentInertialData *)self deltaSpeed_mps];
  [coder encodeDouble:@"deltaSpeed" forKey:?];
  [(CLTripSegmentInertialData *)self deltaCourseVar_rad2];
  [coder encodeDouble:@"deltaCourseVar" forKey:?];
  [(CLTripSegmentInertialData *)self deltaSpeedVar_mps2];
  [coder encodeDouble:@"deltaSpeedVar" forKey:?];
  [(CLTripSegmentInertialData *)self deltaCourseSpeedCovar_radmps];

  [coder encodeDouble:@"deltaCourseSpeedCovar" forKey:?];
}

- (CLTripSegmentInertialData)initWithCoder:(id)coder
{
  v4 = [CLTripSegmentInertialData alloc];
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  [coder decodeDoubleForKey:@"dataPeriod"];
  v7 = v6;
  [coder decodeDoubleForKey:@"deltaCourse"];
  v9 = v8;
  [coder decodeDoubleForKey:@"deltaSpeed"];
  v11 = v10;
  [coder decodeDoubleForKey:@"deltaCourseVar"];
  v13 = v12;
  [coder decodeDoubleForKey:@"deltaSpeedVar"];
  v15 = v14;
  [coder decodeDoubleForKey:@"deltaCourseSpeedCovar"];

  return [(CLTripSegmentInertialData *)v4 initWithTime:v5 dataPeriodSec:v7 deltaCourseRad:v9 deltaSpeedMps:v11 deltaCourseVarRad2:v13 deltaSpeedVarMps2:v15 deltaCourseSpeedCovarRadMps:v16];
}

@end