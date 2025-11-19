@interface PanicAndCrashHistoryInputs
- (BOOL)_applyAppBundleFilters:(id)a3;
- (BOOL)_applyLabelsMap:(id)a3;
- (BOOL)_applylogLineTypes:(id)a3;
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation PanicAndCrashHistoryInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v5 = [(PanicAndCrashHistoryInputs *)self _applylogLineTypes:v4];
  v9 = v5 | [(PanicAndCrashHistoryInputs *)self _applyAppBundleFilters:v4];
  v6 = [v4 dk_dictionaryFromKey:@"logLineReturnLabels" defaultValue:&__NSDictionary0__struct failed:&v9];

  v7 = [(PanicAndCrashHistoryInputs *)self _applyLabelsMap:v6];
  LOBYTE(self) = ((v9 | v7) & 1) == 0;
  v9 |= v7;

  return self;
}

- (BOOL)_applylogLineTypes:(id)a3
{
  v4 = a3;
  v22 = 0;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 dk_arrayFromKey:@"logLineTypes" types:v6 maxLength:0x7FFFFFFFFFFFFFFFLL defaultValue:&off_1000085E0 failed:&v22 validator:&stru_1000081F0];

  v8 = +[NSMutableSet set];
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
            v15 = [v14 stringValue];
            [v8 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  [(PanicAndCrashHistoryInputs *)self setLogIds:v8];
  v16 = v22;

  return v16;
}

- (BOOL)_applyAppBundleFilters:(id)a3
{
  v9 = 0;
  v4 = a3;
  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  v6 = [v4 dk_arrayFromKey:@"appBundleFilter" types:v5 maxLength:0x7FFFFFFFFFFFFFFFLL defaultValue:&off_1000085F8 failed:&v9 validator:&stru_100008210];

  v7 = [[NSSet alloc] initWithArray:v6];
  [(PanicAndCrashHistoryInputs *)self setApplicationFilters:v7];

  LOBYTE(self) = v9;
  return self;
}

- (BOOL)_applyLabelsMap:(id)a3
{
  v4 = a3;
  +[NSMutableDictionary dictionary];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000013C8;
  v11 = &unk_100008238;
  v5 = v13 = &v14;
  v12 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];
  v6 = *(v15 + 24);
  if ((v6 & 1) == 0)
  {
    [(PanicAndCrashHistoryInputs *)self setResultLabelFilters:v5, v8, v9, v10, v11];
  }

  _Block_object_dispose(&v14, 8);
  return v6;
}

@end