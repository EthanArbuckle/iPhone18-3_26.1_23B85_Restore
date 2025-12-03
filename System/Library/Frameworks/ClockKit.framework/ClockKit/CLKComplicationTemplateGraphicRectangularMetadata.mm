@interface CLKComplicationTemplateGraphicRectangularMetadata
+ (id)templateWithMetadata:(id)metadata;
- (CLKComplicationTemplateGraphicRectangularMetadata)initWithMetadata:(id)metadata;
@end

@implementation CLKComplicationTemplateGraphicRectangularMetadata

- (CLKComplicationTemplateGraphicRectangularMetadata)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateGraphicRectangularMetadata;
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