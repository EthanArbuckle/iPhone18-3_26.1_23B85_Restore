@interface CLKComplicationTemplateAuxilaryInfo
- (CLKComplicationTemplateAuxilaryInfo)initWithCoder:(id)coder;
@end

@implementation CLKComplicationTemplateAuxilaryInfo

- (CLKComplicationTemplateAuxilaryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CLKComplicationTemplateAuxilaryInfo;
  v5 = [(CLKComplicationTemplateAuxilaryInfo *)&v7 init];
  if (v5)
  {
    v5->_supportsComplicationForegroundModifier = [coderCopy decodeBoolForKey:@"SupportsComplicationForegroundModifierKey"];
  }

  return v5;
}

@end