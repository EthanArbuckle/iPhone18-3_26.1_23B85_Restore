@interface HMDCoreDataTransformerHMCameraActivityZone
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDCoreDataTransformerHMCameraActivityZone

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    if ([v7 count] > 5)
    {
      if (([v8 count] & 1) == 0)
      {
        v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count] >> 1);
        if ([v8 count])
        {
          v10 = 0;
          do
          {
            v11 = [v8 objectAtIndexedSubscript:v10];
            [v11 floatValue];
            v13 = v12;
            v14 = [v8 objectAtIndexedSubscript:v10 + 1];
            [v14 floatValue];
            v16 = v15;

            v17 = [[HMPoint alloc] initWithPoint:{v13, v16}];
            [v9 addObject:v17];

            v10 += 2;
          }

          while (v10 < [v8 count]);
        }

        v18 = [[HMCameraActivityZone alloc] initWithPoints:v9];
        goto LABEL_18;
      }

      if (a4)
      {
        [NSString stringWithFormat:@"Expected NSArray of even length to create HMCameraActivityZone: %@", v5];
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      [NSString stringWithFormat:@"Expected NSArray of at least 6 elements to create HMCameraActivityZone: %@", v5];
      v9 = LABEL_17:;
      [NSError hmfErrorWithCode:3 reason:v9];
      *a4 = v18 = 0;
LABEL_18:

      goto LABEL_20;
    }
  }

  else if (a4)
  {
    [NSString stringWithFormat:@"Expected NSArray value to create HMCameraActivityZone: %@", v5];
    goto LABEL_17;
  }

  v18 = 0;
LABEL_20:

  return v18;
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [NSMutableArray alloc];
  v6 = [v4 points];
  v7 = [v5 initWithCapacity:{2 * objc_msgSend(v6, "count")}];

  v8 = [v4 points];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100013F0C;
  v12[3] = &unk_100030BA8;
  v13 = v7;
  v9 = v7;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  v10 = [v9 copy];

  return v10;
}

@end