@interface DefaultCollectionActions
- (BOOL)shouldRatelimit:(id)a3 rule:(id)a4;
- (void)tapToRadar:(id)a3 description:(id)a4 radar:(id)a5 componentName:(id)a6 componentVersion:(id)a7 componentID:(id)a8 attributes:(id)a9;
@end

@implementation DefaultCollectionActions

- (void)tapToRadar:(id)a3 description:(id)a4 radar:(id)a5 componentName:(id)a6 componentVersion:(id)a7 componentID:(id)a8 attributes:(id)a9
{
  v23 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[SecTapToRadar alloc] initTapToRadar:v19 description:v18 radar:v17];

  if (v23 && v14 && v15)
  {
    [v20 setComponentName:v23];
    [v20 setComponentVersion:v14];
    [v20 setComponentID:v15];
  }

  if (v16 && [MEMORY[0x1E696ACB0] isValidJSONObject:v16])
  {
    v21 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:3 error:0];
    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v21 encoding:4];
      [v20 setReason:v22];
    }
  }

  [v20 trigger];
}

- (BOOL)shouldRatelimit:(id)a3 rule:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 lastMatch];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 rule];
  v9 = [v8 repeatAfterSeconds];

  v10 = 86400;
  if (v9)
  {
    v10 = v9;
  }

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v10];
  v12 = [v6 lastMatch];
  v13 = [v11 compare:v12];

  if (v13 != 1)
  {
    v17 = 1;
  }

  else
  {
LABEL_5:
    v14 = [MEMORY[0x1E695DF00] date];
    [v6 setLastMatch:v14];

    v15 = [v6 lastMatch];
    v16 = [v6 lastMatchTimeKey];
    [v5 setDateProperty:v15 forKey:v16];

    v17 = 0;
  }

  return v17;
}

@end