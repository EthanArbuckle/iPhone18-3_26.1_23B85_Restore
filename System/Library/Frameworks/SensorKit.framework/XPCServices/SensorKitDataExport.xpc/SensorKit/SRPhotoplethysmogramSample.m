@interface SRPhotoplethysmogramSample
- (id)sr_dictionaryRepresentation;
@end

@implementation SRPhotoplethysmogramSample

- (id)sr_dictionaryRepresentation
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(-[SRPhotoplethysmogramSample opticalSamples](self, "opticalSamples"), "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(SRPhotoplethysmogramSample *)self opticalSamples];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v28 + 1) + 8 * i) sr_dictionaryRepresentation];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v6);
  }

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(-[SRPhotoplethysmogramSample accelerometerSamples](self, "accelerometerSamples"), "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [(SRPhotoplethysmogramSample *)self accelerometerSamples];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v24 + 1) + 8 * j) sr_dictionaryRepresentation];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v13);
  }

  v32[0] = @"startDate";
  [-[SRPhotoplethysmogramSample startDate](self "startDate")];
  if (fabs(v17) == INFINITY)
  {
    v18 = @"INF";
  }

  else
  {
    v18 = [NSString stringWithFormat:@"%f", *&v17];
  }

  v33[0] = v18;
  v32[1] = @"nanosecondsSinceStart";
  v33[1] = [NSNumber numberWithLongLong:[(SRPhotoplethysmogramSample *)self nanosecondsSinceStart]];
  v32[2] = @"usage";
  v33[2] = [(SRPhotoplethysmogramSample *)self usage];
  v33[3] = v3;
  v32[3] = @"opticalSamples";
  v32[4] = @"accelerometerSamples";
  v33[4] = v10;
  v32[5] = @"temperature";
  v19 = [(SRPhotoplethysmogramSample *)self temperature];
  if (v19)
  {
    [v19 doubleValue];
    if (fabs(v20) == INFINITY)
    {
      v21 = @"INF";
    }

    else
    {
      v21 = [NSString stringWithFormat:@"%f", *&v20];
    }
  }

  else
  {
    v21 = @"(null)";
  }

  v33[5] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:6];

  return v22;
}

@end