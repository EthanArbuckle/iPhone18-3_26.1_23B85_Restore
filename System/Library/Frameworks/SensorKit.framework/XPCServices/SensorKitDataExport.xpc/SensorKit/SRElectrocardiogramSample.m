@interface SRElectrocardiogramSample
- (id)sr_dictionaryRepresentation;
@end

@implementation SRElectrocardiogramSample

- (id)sr_dictionaryRepresentation
{
  v3 = [-[SRElectrocardiogramSample session](self "session")];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(-[SRElectrocardiogramSample data](self, "data"), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(SRElectrocardiogramSample *)self data];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) sr_dictionaryRepresentation];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v22[0] = @"timestamp";
  [-[SRElectrocardiogramSample date](self "date")];
  if (fabs(v11) == INFINITY)
  {
    v12 = @"INF";
  }

  else
  {
    v12 = [NSString stringWithFormat:@"%f", *&v11];
  }

  v23[0] = v12;
  v22[1] = @"frequency";
  [-[SRElectrocardiogramSample frequency](self "frequency")];
  if (fabs(v13) == INFINITY)
  {
    v14 = @"INF";
  }

  else
  {
    v14 = [NSString stringWithFormat:@"%f", *&v13];
  }

  v15 = &__NSDictionary0__struct;
  if (v3)
  {
    v15 = v3;
  }

  v23[1] = v14;
  v23[2] = v15;
  v22[2] = @"session";
  v22[3] = @"data";
  v23[3] = v4;
  v22[4] = @"lead";
  v23[4] = [NSNumber numberWithInteger:[(SRElectrocardiogramSample *)self lead]];
  v16 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:5];

  return v16;
}

@end