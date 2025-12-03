@interface AppCrashHistoryInputs
- (BOOL)_applyCrashTypesParameter:(id)parameter;
- (BOOL)_applyWhitelistParameter:(id)parameter;
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation AppCrashHistoryInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [(AppCrashHistoryInputs *)self _applyCrashTypesParameter:parametersCopy];
  v6 = 1;
  if ((v5 & 1) == 0)
  {
    v6 = [(AppCrashHistoryInputs *)self _applyWhitelistParameter:parametersCopy];
  }

  v11 = v6;
  v7 = [parametersCopy dk_numberFromKey:@"minCrashesToConsider" lowerBound:&off_100004418 upperBound:&off_100004430 defaultValue:&off_100004418 failed:&v11];
  -[AppCrashHistoryInputs setMinCrashesToConsider:](self, "setMinCrashesToConsider:", [v7 intValue]);

  v8 = [parametersCopy dk_numberFromKey:@"avgCrashesToConsider" lowerBound:&off_100004418 upperBound:&off_100004430 defaultValue:&off_100004418 failed:&v11];
  -[AppCrashHistoryInputs setAvgCrashesToConsider:](self, "setAvgCrashesToConsider:", [v8 intValue]);

  v9 = v11;
  return (v9 & 1) == 0;
}

- (BOOL)_applyCrashTypesParameter:(id)parameter
{
  parameterCopy = parameter;
  v22 = 0;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [parameterCopy dk_arrayFromKey:@"crashTypes" types:v6 maxLength:10 defaultValue:&off_100004488 failed:&v22 validator:&stru_1000041C0];

  v8 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 addObject:v14];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringValue = [v14 stringValue];
            [v8 addObject:stringValue];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  [(AppCrashHistoryInputs *)self setLogIds:v8];
  v16 = v22;

  return v16;
}

- (BOOL)_applyWhitelistParameter:(id)parameter
{
  v9 = 0;
  parameterCopy = parameter;
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [parameterCopy dk_arrayFromKey:@"whitelistedAppNames" types:v5 maxLength:10000 defaultValue:&__NSArray0__struct failed:&v9 validator:&stru_1000041E0];

  v7 = [NSSet setWithArray:v6];
  [(AppCrashHistoryInputs *)self setWhitelist:v7];

  LOBYTE(self) = v9;
  return self;
}

@end