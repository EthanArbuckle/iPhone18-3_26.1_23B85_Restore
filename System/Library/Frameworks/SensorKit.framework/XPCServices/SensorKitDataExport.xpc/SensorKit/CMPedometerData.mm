@interface CMPedometerData
- (id)sr_dictionaryRepresentation;
@end

@implementation CMPedometerData

- (id)sr_dictionaryRepresentation
{
  v36[0] = @"startDate";
  v3 = [(NSDate *)[(CMPedometerData *)self startDate] description];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1000106F8;
  }

  v37[0] = v4;
  v36[1] = @"endDate";
  v5 = [(NSDate *)[(CMPedometerData *)self endDate] description];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1000106F8;
  }

  v37[1] = v6;
  v36[2] = @"numberOfSteps";
  numberOfSteps = [(CMPedometerData *)self numberOfSteps];
  if (numberOfSteps)
  {
    v8 = numberOfSteps;
    [(NSNumber *)numberOfSteps doubleValue];
    if (fabs(v9) == INFINITY)
    {
      v10 = @"INFINITY";
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = &off_1000119E0;
  }

  v37[2] = v10;
  v36[3] = @"distance";
  distance = [(CMPedometerData *)self distance];
  if (distance)
  {
    v12 = distance;
    [(NSNumber *)distance doubleValue];
    if (fabs(v13) == INFINITY)
    {
      v14 = @"INFINITY";
    }

    else
    {
      v14 = v12;
    }
  }

  else
  {
    v14 = &off_1000119E0;
  }

  v37[3] = v14;
  v36[4] = @"floorsAscended";
  floorsAscended = [(CMPedometerData *)self floorsAscended];
  if (floorsAscended)
  {
    v16 = floorsAscended;
    [(NSNumber *)floorsAscended doubleValue];
    if (fabs(v17) == INFINITY)
    {
      v18 = @"INFINITY";
    }

    else
    {
      v18 = v16;
    }
  }

  else
  {
    v18 = &off_1000119E0;
  }

  v37[4] = v18;
  v36[5] = @"floorsDescended";
  floorsDescended = [(CMPedometerData *)self floorsDescended];
  if (floorsDescended)
  {
    v20 = floorsDescended;
    [(NSNumber *)floorsDescended doubleValue];
    if (fabs(v21) == INFINITY)
    {
      v22 = @"INFINITY";
    }

    else
    {
      v22 = v20;
    }
  }

  else
  {
    v22 = &off_1000119E0;
  }

  v37[5] = v22;
  v36[6] = @"currentPace";
  currentPace = [(CMPedometerData *)self currentPace];
  if (currentPace)
  {
    v24 = currentPace;
    [(NSNumber *)currentPace doubleValue];
    if (fabs(v25) == INFINITY)
    {
      v26 = @"INFINITY";
    }

    else
    {
      v26 = v24;
    }
  }

  else
  {
    v26 = &off_1000119E0;
  }

  v37[6] = v26;
  v36[7] = @"currentCadence";
  currentCadence = [(CMPedometerData *)self currentCadence];
  if (currentCadence)
  {
    v28 = currentCadence;
    [(NSNumber *)currentCadence doubleValue];
    if (fabs(v29) == INFINITY)
    {
      v30 = @"INFINITY";
    }

    else
    {
      v30 = v28;
    }
  }

  else
  {
    v30 = &off_1000119E0;
  }

  v37[7] = v30;
  v36[8] = @"averageActivePace";
  averageActivePace = [(CMPedometerData *)self averageActivePace];
  if (averageActivePace)
  {
    v32 = averageActivePace;
    [(NSNumber *)averageActivePace doubleValue];
    if (fabs(v33) == INFINITY)
    {
      v34 = @"INFINITY";
    }

    else
    {
      v34 = v32;
    }
  }

  else
  {
    v34 = &off_1000119E0;
  }

  v37[8] = v34;
  return [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:9];
}

@end