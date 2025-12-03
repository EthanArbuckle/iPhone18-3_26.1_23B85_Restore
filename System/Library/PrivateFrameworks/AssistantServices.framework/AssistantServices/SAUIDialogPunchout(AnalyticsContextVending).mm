@interface SAUIDialogPunchout(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAUIDialogPunchout(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  utteranceView = [self utteranceView];
  af_dialogIdentifiersForAnalyticsContext = [utteranceView af_dialogIdentifiersForAnalyticsContext];

  return af_dialogIdentifiersForAnalyticsContext;
}

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = &off_1F05AF368;
  objc_msgSendSuper2(&v8, sel_af_addEntriesToAnalyticsContext_, v4);
  utteranceView = [self utteranceView];
  v6 = utteranceView;
  if (utteranceView)
  {
    af_analyticsContext = [utteranceView af_analyticsContext];
    if (af_analyticsContext)
    {
      [v4 setObject:af_analyticsContext forKey:@"utteranceView"];
    }
  }
}

@end