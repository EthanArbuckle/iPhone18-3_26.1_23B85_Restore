@interface SAAceView(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAAceView(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 dialog];
  v2 = [v1 dialogIdentifier];

  if (v2)
  {
    v6[0] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &off_1F05AE5C0;
  objc_msgSendSuper2(&v8, sel_af_addEntriesToAnalyticsContext_, v4);
  v5 = [a1 viewId];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"viewId"];
  }

  v6 = [a1 dialog];
  v7 = [v6 dialogIdentifier];

  if (v7)
  {
    [v4 setObject:v7 forKey:@"dialogIdentifier"];
  }
}

@end