@interface PlaceSummaryTemplateFactory
+ (id)autocompleteTemplateWithCompletion:(id)a3 metadata:(id)a4;
+ (id)autocompleteTemplateWithSearchResult:(id)a3 searchAlongRoute:(BOOL)a4;
- (_TtC4Maps27PlaceSummaryTemplateFactory)init;
@end

@implementation PlaceSummaryTemplateFactory

+ (id)autocompleteTemplateWithSearchResult:(id)a3 searchAlongRoute:(BOOL)a4
{
  v5 = a3;
  if ([v5 type] == 3)
  {
    v6 = sub_10038E384(30, 31, &off_1016009C8);
  }

  else
  {
    v6 = sub_10038D410(0, a4);
  }

  v7 = v6;

  return v7;
}

+ (id)autocompleteTemplateWithCompletion:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_10038D978(v5, a4);

  return v7;
}

- (_TtC4Maps27PlaceSummaryTemplateFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceSummaryTemplateFactory();
  return [(PlaceSummaryTemplateFactory *)&v3 init];
}

@end