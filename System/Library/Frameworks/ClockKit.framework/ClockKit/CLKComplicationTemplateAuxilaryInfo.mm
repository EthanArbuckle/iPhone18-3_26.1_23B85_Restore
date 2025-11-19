@interface CLKComplicationTemplateAuxilaryInfo
- (CLKComplicationTemplateAuxilaryInfo)initWithCoder:(id)a3;
@end

@implementation CLKComplicationTemplateAuxilaryInfo

- (CLKComplicationTemplateAuxilaryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CLKComplicationTemplateAuxilaryInfo;
  v5 = [(CLKComplicationTemplateAuxilaryInfo *)&v7 init];
  if (v5)
  {
    v5->_supportsComplicationForegroundModifier = [v4 decodeBoolForKey:@"SupportsComplicationForegroundModifierKey"];
  }

  return v5;
}

@end