@interface HMDCoreDataTransformerHMDTriggerRecurrences
+ (id)allowedTopLevelClasses;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation HMDCoreDataTransformerHMDTriggerRecurrences

- (id)reverseTransformedValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    v7 = objc_opt_isKindOfClass() & 1;
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v7)
    {
      v18 = _HMFPreconditionFailure();
      return [(HMDCoreDataTransformerHMDTriggerRecurrences *)v18 transformedValue:v19, v20];
    }

    v10 = [v6 unsignedIntegerValue];
    if (v10)
    {
      v11 = v10;
      v12 = [[NSMutableArray alloc] initWithCapacity:7];
      for (i = 1; i != 8; ++i)
      {
        if ((v11 & (1 << (i - 1))) != 0)
        {
          v14 = objc_alloc_init(NSDateComponents);
          [v14 setWeekday:i];
          [v12 addObject:v14];
        }
      }

      v15 = [v12 copy];

      v21.receiver = self;
      v21.super_class = HMDCoreDataTransformerHMDTriggerRecurrences;
      v16 = [(HMDCoreDataTransformerHMDTriggerRecurrences *)&v21 reverseTransformedValue:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _HMFPreconditionFailure();
    }

    v19.receiver = self;
    v19.super_class = HMDCoreDataTransformerHMDTriggerRecurrences;
    v5 = [(HMDSecureUnarchiveFromDataTransformer *)&v19 transformedValue:v4];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v21;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 calendar];
          v13 = v12;
          if (!v12 || ([v12 maximumRangeOfUnit:512] == 1 ? (v15 = v14 == 7) : (v15 = 0), v15))
          {
            v16 = [v11 weekday];
            if ((v16 - 8) >= 0xFFFFFFFFFFFFFFF9)
            {
              v8 |= (1 << (v16 - 1));
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v17 = [NSNumber numberWithUnsignedInteger:v8];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)allowedTopLevelClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

@end