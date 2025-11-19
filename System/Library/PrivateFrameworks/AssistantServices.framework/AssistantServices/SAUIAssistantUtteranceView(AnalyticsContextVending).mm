@interface SAUIAssistantUtteranceView(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAUIAssistantUtteranceView(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 dialogIdentifier];
  v2 = v1;
  if (v1)
  {
    v6[0] = v1;
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
  v6.receiver = a1;
  v6.super_class = &off_1F05AF180;
  objc_msgSendSuper2(&v6, sel_af_addEntriesToAnalyticsContext_, v4);
  v5 = [a1 dialogIdentifier];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"dialogIdentifier"];
  }
}

@end