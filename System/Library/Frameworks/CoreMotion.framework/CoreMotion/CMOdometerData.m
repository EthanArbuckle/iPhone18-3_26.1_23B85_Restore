@interface CMOdometerData
- (CLLocationAccuracy)deltaDistanceAccuracy;
- (CLLocationAccuracy)verticalAccuracy;
- (CLLocationDistance)deltaAltitude;
- (CLLocationSpeed)speed;
- (CLLocationSpeedAccuracy)speedAccuracy;
- (CMOdometerData)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMOdometerData)initWithCoder:(id)a3;
- (CMOdometerData)initWithDeltaDistance:(double)a3 startDate:(id)a4 endDate:(id)a5 accuracy:(id)a6 rawSpeed:(id)a7 gpsSpeedAccuracy:(id)a8 timestampGps:(id)a9 deltaGroundAltitude:(id)a10 groundAltitudeUncertainty:(id)a11 originDevice:(int64_t)a12 slope:(id)a13 maxAbsSlope:(id)a14;
- (CMOdometerData)initWithDistance:(id)a3 startDate:(id)a4 endDate:(id)a5 currentSpeed:(id)a6 averageSpeed:(id)a7;
- (NSDate)gpsDate;
- (NSNumber)maxAbsSlope;
- (NSNumber)slope;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)relativeTimestampGps;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMOdometerData

- (CMOdometerData)initWithDeltaDistance:(double)a3 startDate:(id)a4 endDate:(id)a5 accuracy:(id)a6 rawSpeed:(id)a7 gpsSpeedAccuracy:(id)a8 timestampGps:(id)a9 deltaGroundAltitude:(id)a10 groundAltitudeUncertainty:(id)a11 originDevice:(int64_t)a12 slope:(id)a13 maxAbsSlope:(id)a14
{
  v25.receiver = self;
  v25.super_class = CMOdometerData;
  v21 = [(CMOdometerData *)&v25 init];
  if (v21)
  {
    *(v21 + 3) = a4;
    *(v21 + 4) = a5;
    *(v21 + 6) = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v22, v23, a3);
    *(v21 + 9) = a6;
    *(v21 + 11) = a7;
    *(v21 + 13) = a8;
    *(v21 + 14) = a9;
    *(v21 + 21) = a10;
    *(v21 + 16) = a11;
    *(v21 + 5) = a12;
    *(v21 + 1) = a13;
    *(v21 + 2) = a14;
    *(v21 + 10) = 0;
    *(v21 + 15) = 0;
    *(v21 + 7) = 0;
    *(v21 + 8) = 0;
    *(v21 + 136) = 0u;
    *(v21 + 152) = 0u;
  }

  return v21;
}

- (CMOdometerData)initWithDistance:(id)a3 startDate:(id)a4 endDate:(id)a5 currentSpeed:(id)a6 averageSpeed:(id)a7
{
  v15.receiver = self;
  v15.super_class = CMOdometerData;
  v12 = [(CMOdometerData *)&v15 init];
  if (v12)
  {
    *(v12 + 3) = a4;
    *(v12 + 4) = a5;
    *(v12 + 7) = a6;
    *(v12 + 8) = a7;
    v13 = a3;
    *(v12 + 5) = 0;
    *(v12 + 6) = v13;
    *(v12 + 1) = 0;
    *(v12 + 2) = 0;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0u;
    *(v12 + 136) = 0u;
    *(v12 + 152) = 0u;
    *(v12 + 21) = 0;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometerData;
  [(CMOdometerData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  started = objc_msgSend_initWithDistance_startDate_endDate_currentSpeed_averageSpeed_(v7, v8, self->_distance, self->_startDate, self->_endDate, self->_currentSpeed, self->_averageSpeed);
  started[9] = objc_msgSend_copy(self->_accuracy, v10, v11);
  started[10] = objc_msgSend_copy(self->_gpsAltitude, v12, v13);
  started[11] = objc_msgSend_copy(self->_rawSpeed, v14, v15);
  started[12] = objc_msgSend_copy(self->_odometer, v16, v17);
  started[13] = objc_msgSend_copy(self->_gpsSpeedAccuracy, v18, v19);
  started[14] = objc_msgSend_copy(self->_timestampGps, v20, v21);
  started[15] = objc_msgSend_copy(self->_groundAltitude, v22, v23);
  started[16] = objc_msgSend_copy(self->_groundAltitudeUncertainty, v24, v25);
  started[17] = objc_msgSend_copy(self->_smoothedGPSAltitude, v26, v27);
  started[18] = objc_msgSend_copy(self->_smoothedGPSAltitudeUncertainty, v28, v29);
  started[19] = objc_msgSend_copy(self->_gpsCourseRadians, v30, v31);
  started[20] = objc_msgSend_copy(self->_gpsCourseAccuracy, v32, v33);
  started[5] = self->_originDevice;
  started[21] = objc_msgSend_copy(self->_deltaGroundAltitude, v34, v35);
  started[1] = objc_msgSend_copy(self->_slope, v36, v37);
  started[2] = objc_msgSend_copy(self->_maxAbsSlope, v38, v39);
  return started;
}

- (CMOdometerData)initWithCoder:(id)a3
{
  v47.receiver = self;
  v47.super_class = CMOdometerData;
  v4 = [(CMOdometerData *)&v47 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_startDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMOdometerDataCodingKeyStartDate");
    v7 = objc_opt_class();
    v4->_endDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMOdometerDataCodingKeyEndDate");
    v9 = objc_opt_class();
    v4->_distance = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"kCMOdometerDataCodingKeyDistance");
    v11 = objc_opt_class();
    v4->_currentSpeed = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMOdometerDataCodingKeyCurrentSpeed");
    v13 = objc_opt_class();
    v4->_averageSpeed = objc_msgSend_decodeObjectOfClass_forKey_(a3, v14, v13, @"kCMOdometerDataCodingKeyAverageSpeed");
    v15 = objc_opt_class();
    v4->_accuracy = objc_msgSend_decodeObjectOfClass_forKey_(a3, v16, v15, @"kCMOdometerDataCodingKeyAccuracy");
    v17 = objc_opt_class();
    v4->_gpsAltitude = objc_msgSend_decodeObjectOfClass_forKey_(a3, v18, v17, @"kCMOdometerDataCodingKeyGPSAltitude");
    v19 = objc_opt_class();
    v4->_rawSpeed = objc_msgSend_decodeObjectOfClass_forKey_(a3, v20, v19, @"kCMOdometerDataCodingKeyRawSpeed");
    v21 = objc_opt_class();
    v4->_odometer = objc_msgSend_decodeObjectOfClass_forKey_(a3, v22, v21, @"kCMOdometerDataCodingKeyOdometer");
    v23 = objc_opt_class();
    v4->_gpsSpeedAccuracy = objc_msgSend_decodeObjectOfClass_forKey_(a3, v24, v23, @"kCMOdometerDataCodingKeyGPSSpeedAccuracy");
    v25 = objc_opt_class();
    v4->_timestampGps = objc_msgSend_decodeObjectOfClass_forKey_(a3, v26, v25, @"kCMOdometerDataCodingKeyTimestampGPS");
    v27 = objc_opt_class();
    v4->_groundAltitude = objc_msgSend_decodeObjectOfClass_forKey_(a3, v28, v27, @"kCMOdometerDataCodingKeyGroundAltitude");
    v29 = objc_opt_class();
    v4->_groundAltitudeUncertainty = objc_msgSend_decodeObjectOfClass_forKey_(a3, v30, v29, @"kCMOdometerDataCodingKeyGroundAltitudeUncertainty");
    v31 = objc_opt_class();
    v4->_smoothedGPSAltitude = objc_msgSend_decodeObjectOfClass_forKey_(a3, v32, v31, @"kCMOdometerDataCodingKeySmoothedGPSAltitude");
    v33 = objc_opt_class();
    v4->_smoothedGPSAltitudeUncertainty = objc_msgSend_decodeObjectOfClass_forKey_(a3, v34, v33, @"kCMOdometerDataCodingKeySmoothedGPSAltitudeUncertainty");
    v35 = objc_opt_class();
    v4->_gpsCourseRadians = objc_msgSend_decodeObjectOfClass_forKey_(a3, v36, v35, @"kCMOdometerDataCodingKeyGPSCourseRadians");
    v37 = objc_opt_class();
    v4->_gpsCourseAccuracy = objc_msgSend_decodeObjectOfClass_forKey_(a3, v38, v37, @"kCMOdometerDataCodingKeyGPSCourseAccuracy");
    v4->_originDevice = objc_msgSend_decodeIntegerForKey_(a3, v39, @"kCMOdometerDataCodingKeyOriginDevice");
    v40 = objc_opt_class();
    v4->_deltaGroundAltitude = objc_msgSend_decodeObjectOfClass_forKey_(a3, v41, v40, @"kCMOdometerDataCodingKeyDeltaGroundAltitude");
    v42 = objc_opt_class();
    v4->_slope = objc_msgSend_decodeObjectOfClass_forKey_(a3, v43, v42, @"kCMOdometerDataCodingKeySlope");
    v44 = objc_opt_class();
    v4->_maxAbsSlope = objc_msgSend_decodeObjectOfClass_forKey_(a3, v45, v44, @"kCMOdometerDataCodingKeyMaxAbsSlope");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_startDate, @"kCMOdometerDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->_endDate, @"kCMOdometerDataCodingKeyEndDate");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->_distance, @"kCMOdometerDataCodingKeyDistance");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->_currentSpeed, @"kCMOdometerDataCodingKeyCurrentSpeed");
  objc_msgSend_encodeObject_forKey_(a3, v8, self->_averageSpeed, @"kCMOdometerDataCodingKeyAverageSpeed");
  objc_msgSend_encodeObject_forKey_(a3, v9, self->_accuracy, @"kCMOdometerDataCodingKeyAccuracy");
  objc_msgSend_encodeObject_forKey_(a3, v10, self->_gpsAltitude, @"kCMOdometerDataCodingKeyGPSAltitude");
  objc_msgSend_encodeObject_forKey_(a3, v11, self->_rawSpeed, @"kCMOdometerDataCodingKeyRawSpeed");
  objc_msgSend_encodeObject_forKey_(a3, v12, self->_odometer, @"kCMOdometerDataCodingKeyOdometer");
  objc_msgSend_encodeObject_forKey_(a3, v13, self->_gpsSpeedAccuracy, @"kCMOdometerDataCodingKeyGPSSpeedAccuracy");
  objc_msgSend_encodeObject_forKey_(a3, v14, self->_timestampGps, @"kCMOdometerDataCodingKeyTimestampGPS");
  objc_msgSend_encodeObject_forKey_(a3, v15, self->_groundAltitude, @"kCMOdometerDataCodingKeyGroundAltitude");
  objc_msgSend_encodeObject_forKey_(a3, v16, self->_groundAltitudeUncertainty, @"kCMOdometerDataCodingKeyGroundAltitudeUncertainty");
  objc_msgSend_encodeObject_forKey_(a3, v17, self->_smoothedGPSAltitude, @"kCMOdometerDataCodingKeySmoothedGPSAltitude");
  objc_msgSend_encodeObject_forKey_(a3, v18, self->_smoothedGPSAltitudeUncertainty, @"kCMOdometerDataCodingKeySmoothedGPSAltitudeUncertainty");
  objc_msgSend_encodeObject_forKey_(a3, v19, self->_gpsCourseRadians, @"kCMOdometerDataCodingKeyGPSCourseRadians");
  objc_msgSend_encodeObject_forKey_(a3, v20, self->_gpsCourseAccuracy, @"kCMOdometerDataCodingKeyGPSCourseAccuracy");
  objc_msgSend_encodeInteger_forKey_(a3, v21, self->_originDevice, @"kCMOdometerDataCodingKeyOriginDevice");
  objc_msgSend_encodeObject_forKey_(a3, v22, self->_deltaGroundAltitude, @"kCMOdometerDataCodingKeyDeltaGroundAltitude");
  objc_msgSend_encodeObject_forKey_(a3, v23, self->_slope, @"kCMOdometerDataCodingKeySlope");
  maxAbsSlope = self->_maxAbsSlope;

  objc_msgSend_encodeObject_forKey_(a3, v24, maxAbsSlope, @"kCMOdometerDataCodingKeyMaxAbsSlope");
}

- (CLLocationAccuracy)deltaDistanceAccuracy
{
  accuracy = self->_accuracy;
  if (!accuracy)
  {
    return -1.0;
  }

  objc_msgSend_doubleValue(accuracy, a2, v2);
  return result;
}

- (CLLocationSpeed)speed
{
  rawSpeed = self->_rawSpeed;
  if (!rawSpeed)
  {
    return -1.0;
  }

  objc_msgSend_doubleValue(rawSpeed, a2, v2);
  return result;
}

- (CLLocationSpeedAccuracy)speedAccuracy
{
  gpsSpeedAccuracy = self->_gpsSpeedAccuracy;
  if (!gpsSpeedAccuracy)
  {
    return -1.0;
  }

  objc_msgSend_doubleValue(gpsSpeedAccuracy, a2, v2);
  return result;
}

- (NSDate)gpsDate
{
  timestampGps = self->_timestampGps;
  v4 = MEMORY[0x1E695DF00];
  if (timestampGps)
  {
    objc_msgSend_doubleValue(timestampGps, a2, v2);

    return objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v4, v5, v6);
  }

  else
  {
    v8 = MEMORY[0x1E695DF00];

    return objc_msgSend_date(v8, a2, v2);
  }
}

- (CLLocationDistance)deltaAltitude
{
  deltaGroundAltitude = self->_deltaGroundAltitude;
  if (!deltaGroundAltitude)
  {
    return 0.0;
  }

  objc_msgSend_doubleValue(deltaGroundAltitude, a2, v2);
  return result;
}

- (CLLocationAccuracy)verticalAccuracy
{
  if (!self->_deltaGroundAltitude)
  {
    return -1.0;
  }

  groundAltitudeUncertainty = self->_groundAltitudeUncertainty;
  if (!groundAltitudeUncertainty)
  {
    return -1.0;
  }

  objc_msgSend_doubleValue(groundAltitudeUncertainty, a2, v2);
  return result;
}

- (NSNumber)slope
{
  result = self->_groundAltitudeUncertainty;
  if (result)
  {
    objc_msgSend_doubleValue(result, a2, v2);
    if (v5 <= 0.0)
    {
      return 0;
    }

    else
    {
      return self->_slope;
    }
  }

  return result;
}

- (NSNumber)maxAbsSlope
{
  result = self->_groundAltitudeUncertainty;
  if (result)
  {
    objc_msgSend_doubleValue(result, a2, v2);
    if (v5 <= 0.0)
    {
      return 0;
    }

    else
    {
      return self->_maxAbsSlope;
    }
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  objc_msgSend_deltaDistance(self, v12, v13);
  v15 = v14;
  objc_msgSend_deltaDistanceAccuracy(self, v16, v17);
  v19 = v18;
  objc_msgSend_speed(self, v20, v21);
  v23 = v22;
  objc_msgSend_speedAccuracy(self, v24, v25);
  v27 = v26;
  v30 = objc_msgSend_gpsDate(self, v28, v29);
  objc_msgSend_deltaAltitude(self, v31, v32);
  v34 = v33;
  objc_msgSend_verticalAccuracy(self, v35, v36);
  v38 = v37;
  v41 = objc_msgSend_originDevice(self, v39, v40);
  v44 = objc_msgSend_deltaGroundAltitude(self, v42, v43);
  v47 = objc_msgSend_slope(self, v45, v46);
  v50 = objc_msgSend_maxAbsSlope(self, v48, v49);
  return objc_msgSend_stringWithFormat_(v3, v51, @"%@,<startDate %@, endDate %@, deltaDistance %f, deltaDistanceAccuracy %f, speed %f, speedAccuracy %f, gpsDate %@, deltaAltitude %f, verticalAccuracy %f, originDevice %d, deltaGroundAltitude %@, currentSlope %@, maxAbsoluteSlope %@>", v5, started, v11, v15, v19, v23, v27, v30, v34, v38, v41, v44, v47, v50);
}

- (id)relativeTimestampGps
{
  if (!objc_msgSend_startDate(self, a2, v2) || !objc_msgSend_timestampGps(self, v4, v5))
  {
    return 0;
  }

  started = objc_msgSend_startDate(self, v6, v7);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_timestampGps(self, v13, v14);
  objc_msgSend_doubleValue(v15, v16, v17);
  v21 = v12 - v20;
  v22 = MEMORY[0x1E696AD98];

  return objc_msgSend_numberWithDouble_(v22, v18, v19, v21);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMOdometerData)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMOdometerData;
    v7 = [(CMOdometerData *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, a3, 0);
      if (v11)
      {
        v12 = v11;

        return v12;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

@end