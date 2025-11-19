@interface AMSMetricsIdentifierCore
+ (BOOL)_shouldReplaceInfo:(id)a3 withInfo:(id)a4 isServerRecord:(BOOL)a5;
+ (BOOL)_shouldUpdateDatabaseFor:(id)a3 consumerIDResetInterval:(double)a4;
+ (id)_removeU13Identifier:(id)a3 account:(id)a4;
@end

@implementation AMSMetricsIdentifierCore

+ (id)_removeU13Identifier:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && (([v6 ams_accountFlagValueForAccountFlag:AMSAccountFlagUnderThirteen], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v9 = 0) : (v9 = v8), v8, v10 = objc_msgSend(v9, "BOOLValue"), v9, (v10 & 1) != 0))
  {
    v11 = [v5 copy];
    [v11 setValue:&stru_1F071BA78];
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

+ (BOOL)_shouldUpdateDatabaseFor:(id)a3 consumerIDResetInterval:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 serverProvidedAt];

    if (v7)
    {
      v8 = [v6 expires];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;

      v7 = [v6 serverProvidedAt];
      v11 = [v7 dateByAddingTimeInterval:a4];
      [v11 timeIntervalSinceReferenceDate];
      v13 = v12;

      LOBYTE(v7) = v10 != v13;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)_shouldReplaceInfo:(id)a3 withInfo:(id)a4 isServerRecord:(BOOL)a5
{
  LODWORD(v5) = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 serverProvidedAt];
  if (v9)
  {
  }

  else
  {
    v10 = [v8 serverProvidedAt];

    if (!v10)
    {
      v28 = [v7 modified];
      [v28 timeIntervalSinceReferenceDate];
      v30 = v29;
      v31 = [v8 modified];
      [v31 timeIntervalSinceReferenceDate];
      v33 = v32;

      if (v30 > v33)
      {
        if (!v5)
        {
          goto LABEL_16;
        }

        if ([v7 deleted])
        {
          LOBYTE(v5) = 0;
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v11 = [v7 serverProvidedAt];

  if (!v11)
  {
    goto LABEL_15;
  }

  v5 = [v8 serverProvidedAt];

  if (v5)
  {
    v12 = [v7 value];
    if (!v12 || (v13 = v12, [v7 value], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "value"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v13, !v16))
    {
      v23 = [v7 serverProvidedAt];
      [v23 timeIntervalSinceReferenceDate];
      v25 = v24;
      v26 = [v8 serverProvidedAt];
      [v26 timeIntervalSinceReferenceDate];
      LOBYTE(v5) = v25 <= v27;

      goto LABEL_16;
    }

    v17 = [v7 serverProvidedAt];
    [v17 timeIntervalSinceReferenceDate];
    v19 = v18;
    v20 = [v8 serverProvidedAt];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;

    if (v19 <= v22)
    {
      LOBYTE(v5) = [v7 isEqualIgnoringLastSync:v8];
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v5) = 1;
  }

LABEL_16:

  return v5;
}

@end