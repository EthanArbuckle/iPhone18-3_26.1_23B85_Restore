@interface CLKComplicationTemplateGraphicBezelMetadata
+ (id)templateWithMetadata:(id)metadata;
- (CLKComplicationTemplateGraphicBezelMetadata)initWithMetadata:(id)metadata;
@end

@implementation CLKComplicationTemplateGraphicBezelMetadata

- (CLKComplicationTemplateGraphicBezelMetadata)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateGraphicBezelMetadata;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplate *)initPrivate setMetadata:metadataCopy];
  }

  return v6;
}

+ (id)templateWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[self alloc] initWithMetadata:metadataCopy];

  return v5;
}

@end