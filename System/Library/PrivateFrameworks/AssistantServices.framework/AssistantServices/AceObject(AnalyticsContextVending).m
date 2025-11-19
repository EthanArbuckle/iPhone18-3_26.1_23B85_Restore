@interface AceObject(AnalyticsContextVending)
- (id)af_analyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation AceObject(AnalyticsContextVending)

- (id)af_analyticsContext
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 groupIdentifier];
  v3 = [a1 encodedClassName];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [a1 af_addEntriesToAnalyticsContext:v4];
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v2, v3];
    v9 = v5;
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v6 = a3;
  v4 = [a1 aceId];
  if (v4)
  {
    [v6 setObject:v4 forKey:@"aceId"];
  }

  v5 = [a1 refId];
  if (v5)
  {
    [v6 setObject:v5 forKey:@"refId"];
  }
}

@end