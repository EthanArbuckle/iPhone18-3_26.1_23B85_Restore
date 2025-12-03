@interface SAUISayIt(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAUISayIt(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  v6[1] = *MEMORY[0x1E69E9840];
  dialogIdentifier = [self dialogIdentifier];
  v2 = dialogIdentifier;
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
  v6.receiver = self;
  v6.super_class = &off_1F05AFAD0;
  objc_msgSendSuper2(&v6, sel_af_addEntriesToAnalyticsContext_, v4);
  dialogIdentifier = [self dialogIdentifier];
  if (dialogIdentifier)
  {
    [v4 setObject:dialogIdentifier forKey:@"dialogIdentifier"];
  }
}

@end