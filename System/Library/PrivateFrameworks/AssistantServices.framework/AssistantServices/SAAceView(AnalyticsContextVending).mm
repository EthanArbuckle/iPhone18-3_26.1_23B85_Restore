@interface SAAceView(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAAceView(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  v6[1] = *MEMORY[0x1E69E9840];
  dialog = [self dialog];
  dialogIdentifier = [dialog dialogIdentifier];

  if (dialogIdentifier)
  {
    v6[0] = dialogIdentifier;
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
  v8.receiver = self;
  v8.super_class = &off_1F05AE5C0;
  objc_msgSendSuper2(&v8, sel_af_addEntriesToAnalyticsContext_, v4);
  viewId = [self viewId];
  if (viewId)
  {
    [v4 setObject:viewId forKey:@"viewId"];
  }

  dialog = [self dialog];
  dialogIdentifier = [dialog dialogIdentifier];

  if (dialogIdentifier)
  {
    [v4 setObject:dialogIdentifier forKey:@"dialogIdentifier"];
  }
}

@end