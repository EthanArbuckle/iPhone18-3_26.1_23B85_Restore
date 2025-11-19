@interface TTREmptyComplicationTemplateGenerator
- (id)templateForTimelineModelEntry:(id)a3;
@end

@implementation TTREmptyComplicationTemplateGenerator

- (id)templateForTimelineModelEntry:(id)a3
{
  v3 = [CLKSimpleTextProvider textProviderWithText:&stru_10758];
  v4 = [[CLKComplicationTemplateModularSmallSimpleText alloc] initWithTextProvider:v3];

  return v4;
}

@end