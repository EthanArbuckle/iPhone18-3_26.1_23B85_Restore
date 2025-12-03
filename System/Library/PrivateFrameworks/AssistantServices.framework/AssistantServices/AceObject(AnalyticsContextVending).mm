@interface AceObject(AnalyticsContextVending)
- (id)af_analyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation AceObject(AnalyticsContextVending)

- (id)af_analyticsContext
{
  v10[1] = *MEMORY[0x1E69E9840];
  groupIdentifier = [self groupIdentifier];
  encodedClassName = [self encodedClassName];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [self af_addEntriesToAnalyticsContext:v4];
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", groupIdentifier, encodedClassName];
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
  aceId = [self aceId];
  if (aceId)
  {
    [v6 setObject:aceId forKey:@"aceId"];
  }

  refId = [self refId];
  if (refId)
  {
    [v6 setObject:refId forKey:@"refId"];
  }
}

@end