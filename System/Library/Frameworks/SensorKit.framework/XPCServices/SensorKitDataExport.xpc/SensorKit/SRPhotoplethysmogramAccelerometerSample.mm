@interface SRPhotoplethysmogramAccelerometerSample
- (id)sr_dictionaryRepresentation;
@end

@implementation SRPhotoplethysmogramAccelerometerSample

- (id)sr_dictionaryRepresentation
{
  v16[0] = @"nanosecondsSinceStart";
  v17[0] = [NSNumber numberWithLongLong:[(SRPhotoplethysmogramAccelerometerSample *)self nanosecondsSinceStart]];
  v16[1] = @"frequency";
  v3 = [(SRPhotoplethysmogramAccelerometerSample *)self samplingFrequency];
  if (v3)
  {
    [v3 doubleValue];
    if (fabs(v4) == INFINITY)
    {
      v5 = @"INF";
    }

    else
    {
      v5 = [NSString stringWithFormat:@"%f", *&v4];
    }
  }

  else
  {
    v5 = @"(null)";
  }

  v17[1] = v5;
  v16[2] = @"x";
  v6 = [(SRPhotoplethysmogramAccelerometerSample *)self x];
  if (v6)
  {
    [v6 doubleValue];
    if (fabs(v7) == INFINITY)
    {
      v8 = @"INF";
    }

    else
    {
      v8 = [NSString stringWithFormat:@"%f", *&v7];
    }
  }

  else
  {
    v8 = @"(null)";
  }

  v17[2] = v8;
  v16[3] = @"y";
  v9 = [(SRPhotoplethysmogramAccelerometerSample *)self y];
  if (v9)
  {
    [v9 doubleValue];
    if (fabs(v10) == INFINITY)
    {
      v11 = @"INF";
    }

    else
    {
      v11 = [NSString stringWithFormat:@"%f", *&v10];
    }
  }

  else
  {
    v11 = @"(null)";
  }

  v17[3] = v11;
  v16[4] = @"z";
  v12 = [(SRPhotoplethysmogramAccelerometerSample *)self z];
  if (v12)
  {
    [v12 doubleValue];
    if (fabs(v13) == INFINITY)
    {
      v14 = @"INF";
    }

    else
    {
      v14 = [NSString stringWithFormat:@"%f", *&v13];
    }
  }

  else
  {
    v14 = @"(null)";
  }

  v17[4] = v14;
  return [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
}

@end