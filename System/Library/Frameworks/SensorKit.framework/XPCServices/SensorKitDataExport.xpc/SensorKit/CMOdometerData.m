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
  v3 = [(CMOdometerData *)self currentSpeed];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &off_1000119F8;
  }

  v29[3] = v4;
  v28[4] = @"averageSpeed";
  v5 = [(CMOdometerData *)self averageSpeed];
  if (v5)
  {
    v6 = v5;
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
  v7 = [(CMOdometerData *)self gpsAltitude];
  if (v7)
  {
    v8 = v7;
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
  v9 = [(CMOdometerData *)self odometer];
  if (v9)
  {
    v10 = v9;
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
  v11 = [(CMOdometerData *)self groundAltitude];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &off_1000119F8;
  }

  v29[11] = v12;
  v28[12] = @"groundAltitudeUncertainty";
  v13 = [(CMOdometerData *)self groundAltitudeUncertainty];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &off_1000119F8;
  }

  v29[12] = v14;
  v28[13] = @"smoothedGPSAltitude";
  v15 = [(CMOdometerData *)self smoothedGPSAltitude];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &off_1000119F8;
  }

  v29[13] = v16;
  v28[14] = @"smoothedGPSAltitudeUncertainty";
  v17 = [(CMOdometerData *)self smoothedGPSAltitudeUncertainty];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = &off_1000119F8;
  }

  v29[14] = v18;
  v28[15] = @"gpsCourseRadians";
  v19 = [(CMOdometerData *)self gpsCourseRadians];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = &off_1000119F8;
  }

  v29[15] = v20;
  v28[16] = @"gpsCourseAccuracy";
  v21 = [(CMOdometerData *)self gpsCourseAccuracy];
  if (v21)
  {
    v22 = v21;
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
  v23 = [(CMOdometerData *)self slope];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &off_1000119F8;
  }

  v29[19] = v24;
  v28[20] = @"maxAbsSlope";
  v25 = [(CMOdometerData *)self maxAbsSlope];
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = &off_1000119F8;
  }

  v29[20] = v26;
  return [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:21];
}

@end