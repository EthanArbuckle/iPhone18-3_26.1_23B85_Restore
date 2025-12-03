@interface CMOdometerData
- (id)sr_dictionaryRepresentation;
@end

@implementation CMOdometerData

- (id)sr_dictionaryRepresentation
{
  v28[0] = @"startTime";
  [(NSDate *)[(CMOdometerData *)self startDate] timeIntervalSinceReferenceDate];
  v29[0] = [NSNumber numberWithDouble:?];
  v28[1] = @"endTime";
  [(NSDate *)[(CMOdometerData *)self endDate] timeIntervalSinceReferenceDate];
  v29[1] = [NSNumber numberWithDouble:?];
  v28[2] = @"deltaDistance";
  [(CMOdometerData *)self deltaDistance];
  v29[2] = [NSNumber numberWithDouble:?];
  v28[3] = @"currentSpeed";
  currentSpeed = [(CMOdometerData *)self currentSpeed];
  if (currentSpeed)
  {
    v4 = currentSpeed;
  }

  else
  {
    v4 = &off_1000119F8;
  }

  v29[3] = v4;
  v28[4] = @"averageSpeed";
  averageSpeed = [(CMOdometerData *)self averageSpeed];
  if (averageSpeed)
  {
    v6 = averageSpeed;
  }

  else
  {
    v6 = &off_1000119F8;
  }

  v29[4] = v6;
  v28[5] = @"deltaDistanceAccuracy";
  [(CMOdometerData *)self deltaDistanceAccuracy];
  v29[5] = [NSNumber numberWithDouble:?];
  v28[6] = @"gpsAltitude";
  gpsAltitude = [(CMOdometerData *)self gpsAltitude];
  if (gpsAltitude)
  {
    v8 = gpsAltitude;
  }

  else
  {
    v8 = &off_1000119F8;
  }

  v29[6] = v8;
  v28[7] = @"speed";
  [(CMOdometerData *)self speed];
  v29[7] = [NSNumber numberWithDouble:?];
  v28[8] = @"odometer";
  odometer = [(CMOdometerData *)self odometer];
  if (odometer)
  {
    v10 = odometer;
  }

  else
  {
    v10 = &off_1000119F8;
  }

  v29[8] = v10;
  v28[9] = @"speedAccuracy";
  [(CMOdometerData *)self speedAccuracy];
  v29[9] = [NSNumber numberWithDouble:?];
  v28[10] = @"gpsDate";
  [(NSDate *)[(CMOdometerData *)self gpsDate] timeIntervalSinceReferenceDate];
  v29[10] = [NSNumber numberWithDouble:?];
  v28[11] = @"groundAltitude";
  groundAltitude = [(CMOdometerData *)self groundAltitude];
  if (groundAltitude)
  {
    v12 = groundAltitude;
  }

  else
  {
    v12 = &off_1000119F8;
  }

  v29[11] = v12;
  v28[12] = @"groundAltitudeUncertainty";
  groundAltitudeUncertainty = [(CMOdometerData *)self groundAltitudeUncertainty];
  if (groundAltitudeUncertainty)
  {
    v14 = groundAltitudeUncertainty;
  }

  else
  {
    v14 = &off_1000119F8;
  }

  v29[12] = v14;
  v28[13] = @"smoothedGPSAltitude";
  smoothedGPSAltitude = [(CMOdometerData *)self smoothedGPSAltitude];
  if (smoothedGPSAltitude)
  {
    v16 = smoothedGPSAltitude;
  }

  else
  {
    v16 = &off_1000119F8;
  }

  v29[13] = v16;
  v28[14] = @"smoothedGPSAltitudeUncertainty";
  smoothedGPSAltitudeUncertainty = [(CMOdometerData *)self smoothedGPSAltitudeUncertainty];
  if (smoothedGPSAltitudeUncertainty)
  {
    v18 = smoothedGPSAltitudeUncertainty;
  }

  else
  {
    v18 = &off_1000119F8;
  }

  v29[14] = v18;
  v28[15] = @"gpsCourseRadians";
  gpsCourseRadians = [(CMOdometerData *)self gpsCourseRadians];
  if (gpsCourseRadians)
  {
    v20 = gpsCourseRadians;
  }

  else
  {
    v20 = &off_1000119F8;
  }

  v29[15] = v20;
  v28[16] = @"gpsCourseAccuracy";
  gpsCourseAccuracy = [(CMOdometerData *)self gpsCourseAccuracy];
  if (gpsCourseAccuracy)
  {
    v22 = gpsCourseAccuracy;
  }

  else
  {
    v22 = &off_1000119F8;
  }

  v29[16] = v22;
  v28[17] = @"originDevice";
  v29[17] = [NSNumber numberWithInteger:[(CMOdometerData *)self originDevice]];
  v28[18] = @"deltaAltitude";
  [(CMOdometerData *)self deltaAltitude];
  v29[18] = [NSNumber numberWithDouble:?];
  v28[19] = @"slope";
  slope = [(CMOdometerData *)self slope];
  if (slope)
  {
    v24 = slope;
  }

  else
  {
    v24 = &off_1000119F8;
  }

  v29[19] = v24;
  v28[20] = @"maxAbsSlope";
  maxAbsSlope = [(CMOdometerData *)self maxAbsSlope];
  if (maxAbsSlope)
  {
    v26 = maxAbsSlope;
  }

  else
  {
    v26 = &off_1000119F8;
  }

  v29[20] = v26;
  return [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:21];
}

@end