@interface CLKComplicationTemplateModularSmallDate
+ (id)templateWithWeekdayTextProvider:(id)provider dayTextProvider:(id)textProvider;
- (CLKComplicationTemplateModularSmallDate)initWithWeekdayTextProvider:(id)provider dayTextProvider:(id)textProvider;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)path;
- (id)initPrivateWithJSONObjectRepresentation:(id)representation bundle:(id)bundle;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateModularSmallDate

- (CLKComplicationTemplateModularSmallDate)initWithWeekdayTextProvider:(id)provider dayTextProvider:(id)textProvider
{
  providerCopy = provider;
  textProviderCopy = textProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateModularSmallDate;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularSmallDate *)initPrivate setWeekdayTextProvider:providerCopy];
    [(CLKComplicationTemplateModularSmallDate *)v9 setDayTextProvider:textProviderCopy];
  }

  return v9;
}

+ (id)templateWithWeekdayTextProvider:(id)provider dayTextProvider:(id)textProvider
{
  textProviderCopy = textProvider;
  providerCopy = provider;
  v8 = [[self alloc] initWithWeekdayTextProvider:providerCopy dayTextProvider:textProviderCopy];

  return v8;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"weekdayTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"dayTextProvider", 0, 1, &v4);
  }
}

- (id)initPrivateWithJSONObjectRepresentation:(id)representation bundle:(id)bundle
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = CLKComplicationTemplateModularSmallDate;
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
  v7.receiver = self;
  v7.super_class = CLKComplicationTemplateModularSmallDate;
  v4 = [(CLKComplicationTemplate *)&v7 JSONObjectRepresentationWritingResourcesToBundlePath:path purpose:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CLKComplicationTemplateModularSmallDate highlightLine2](self, "highlightLine2")}];
  [v4 setObject:v5 forKeyedSubscript:@"highlightLine2"];

  return v4;
}

@end