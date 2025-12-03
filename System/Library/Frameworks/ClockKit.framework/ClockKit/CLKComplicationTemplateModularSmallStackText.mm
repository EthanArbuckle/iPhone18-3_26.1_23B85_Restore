@interface CLKComplicationTemplateModularSmallStackText
+ (CLKComplicationTemplateModularSmallStackText)templateWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (CLKComplicationTemplateModularSmallStackText)initWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path;
- (id)initPrivateWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateModularSmallStackText

- (CLKComplicationTemplateModularSmallStackText)initWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line1TextProvider;
  v7 = line2TextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateModularSmallStackText;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularSmallStackText *)initPrivate setLine1TextProvider:v6];
    [(CLKComplicationTemplateModularSmallStackText *)v9 setLine2TextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateModularSmallStackText)templateWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line2TextProvider;
  v7 = line1TextProvider;
  v8 = [[self alloc] initWithLine1TextProvider:v7 line2TextProvider:v6];

  return v8;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"line1TextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"line2TextProvider", 0, 1, &v4);
  }
}

- (id)initPrivateWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = CLKComplicationTemplateModularSmallStackText;
  v7 = [(CLKComplicationTemplate *)&v10 initPrivateWithJSONObjectRepresentation:representationCopy bundle:bundle];
  if (v7)
  {
    v8 = [representationCopy objectForKeyedSubscript:@"highlightLine2"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"highlightLine2", v8}];
      }

      [v7 setHighlightLine2:{objc_msgSend(v8, "BOOLValue")}];
    }
  }

  return v7;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path
{
  v4 = [(CLKComplicationTemplate *)self JSONObjectRepresentationWritingResourcesToBundlePath:path purpose:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CLKComplicationTemplateModularSmallStackText highlightLine2](self, "highlightLine2")}];
  [v4 setObject:v5 forKeyedSubscript:@"highlightLine2"];

  return v4;
}

@end