@interface PlaceSummaryTemplateFactory
+ (id)autocompleteTemplateWithCompletion:(id)completion metadata:(id)metadata;
+ (id)autocompleteTemplateWithSearchResult:(id)result searchAlongRoute:(BOOL)route;
- (_TtC4Maps27PlaceSummaryTemplateFactory)init;
@end

@implementation PlaceSummaryTemplateFactory

+ (id)autocompleteTemplateWithSearchResult:(id)result searchAlongRoute:(BOOL)route
{
  resultCopy = result;
  if ([resultCopy type] == 3)
  {
    v6 = sub_10038E384(30, 31, &off_1016009C8);
  }

  else
  {
    v6 = sub_10038D410(0, route);
  }

  v7 = v6;

  return v7;
}

+ (id)autocompleteTemplateWithCompletion:(id)completion metadata:(id)metadata
{
  completionCopy = completion;
  metadataCopy = metadata;
  v7 = sub_10038D978(completionCopy, metadata);

  return v7;
}

- (_TtC4Maps27PlaceSummaryTemplateFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceSummaryTemplateFactory();
  return [(PlaceSummaryTemplateFactory *)&v3 init];
}

@end