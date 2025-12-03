@interface CLKComplicationTemplateGraphicExtraLargeCircularMetadata
+ (id)templateWithMetadata:(id)metadata;
- (CLKComplicationTemplateGraphicExtraLargeCircularMetadata)initWithMetadata:(id)metadata;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularMetadata

- (CLKComplicationTemplateGraphicExtraLargeCircularMetadata)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateGraphicExtraLargeCircularMetadata;
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