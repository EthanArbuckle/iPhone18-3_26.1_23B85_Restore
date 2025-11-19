@interface CLTripSegmentInertialData
- (CLTripSegmentInertialData)initWithCoder:(id)a3;
- (CLTripSegmentInertialData)initWithTime:(id)a3 dataPeriodSec:(double)a4 deltaCourseRad:(double)a5 deltaSpeedMps:(double)a6 deltaCourseVarRad2:(double)a7 deltaSpeedVarMps2:(double)a8 deltaCourseSpeedCovarRadMps:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLTripSegmentInertialData

- (CLTripSegmentInertialData)initWithTime:(id)a3 dataPeriodSec:(double)a4 deltaCourseRad:(double)a5 deltaSpeedMps:(double)a6 deltaCourseVarRad2:(double)a7 deltaSpeedVarMps2:(double)a8 deltaCourseSpeedCovarRadMps:(double)a9
{
  v18.receiver = self;
  v18.super_class = CLTripSegmentInertialData;
  v16 = [(CLTripSegmentInertialData *)&v18 init];
  if (v16)
  {
    v16->_timestamp = a3;
    v16->_dataPeriod_s = a4;
    v16->_deltaCourse_rad = a5;
    v16->_deltaSpeed_mps = a6;
    v16->_deltaCourseVar_rad2 = a7;
    v16->_deltaSpeedVar_mps2 = a8;
    v16->_deltaCourseSpeedCovar_radmps = a9;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CLTripSegmentInertialData *)self timestamp];
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

  return [v4 initWithTime:v5 dataPeriodSec:v7 deltaCourseRad:v9 deltaSpeedMps:v11 deltaCourseVarRad2:v13 deltaSpeedVarMps2:v15 deltaCourseSpeedCovarRadMps:v16];
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[CLTripSegmentInertialData timestamp](self forKey:{"timestamp"), @"timestamp"}];
  [(CLTripSegmentInertialData *)self dataPeriod_s];
  [a3 encodeDouble:@"dataPeriod" forKey:?];
  [(CLTripSegmentInertialData *)self deltaCourse_rad];
  [a3 encodeDouble:@"deltaCourse" forKey:?];
  [(CLTripSegmentInertialData *)self deltaSpeed_mps];
  [a3 encodeDouble:@"deltaSpeed" forKey:?];
  [(CLTripSegmentInertialData *)self deltaCourseVar_rad2];
  [a3 encodeDouble:@"deltaCourseVar" forKey:?];
  [(CLTripSegmentInertialData *)self deltaSpeedVar_mps2];
  [a3 encodeDouble:@"deltaSpeedVar" forKey:?];
  [(CLTripSegmentInertialData *)self deltaCourseSpeedCovar_radmps];

  [a3 encodeDouble:@"deltaCourseSpeedCovar" forKey:?];
}

- (CLTripSegmentInertialData)initWithCoder:(id)a3
{
  v4 = [CLTripSegmentInertialData alloc];
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  [a3 decodeDoubleForKey:@"dataPeriod"];
  v7 = v6;
  [a3 decodeDoubleForKey:@"deltaCourse"];
  v9 = v8;
  [a3 decodeDoubleForKey:@"deltaSpeed"];
  v11 = v10;
  [a3 decodeDoubleForKey:@"deltaCourseVar"];
  v13 = v12;
  [a3 decodeDoubleForKey:@"deltaSpeedVar"];
  v15 = v14;
  [a3 decodeDoubleForKey:@"deltaCourseSpeedCovar"];

  return [(CLTripSegmentInertialData *)v4 initWithTime:v5 dataPeriodSec:v7 deltaCourseRad:v9 deltaSpeedMps:v11 deltaCourseVarRad2:v13 deltaSpeedVarMps2:v15 deltaCourseSpeedCovarRadMps:v16];
}

@end