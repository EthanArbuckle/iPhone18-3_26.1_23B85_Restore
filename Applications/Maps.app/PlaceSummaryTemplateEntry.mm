@interface PlaceSummaryTemplateEntry
- (BOOL)containsContainmentParentUnit;
- (BOOL)containsCuratedGuideUnit;
- (BOOL)containsPhotoCarouselUnit;
- (BOOL)containsTappableEntityWithIdentifier:(id)a3 metadata:(id)a4;
- (BOOL)containsTransitShieldsUnit;
- (BOOL)containsUserGeneratedGuideUnit;
- (_TtC4Maps25PlaceSummaryTemplateEntry)init;
- (id)stringUnitContent;
@end

@implementation PlaceSummaryTemplateEntry

- (_TtC4Maps25PlaceSummaryTemplateEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)containsCuratedGuideUnit
{
  v2 = self;
  v3 = sub_10022BBD0(10);

  return v3 & 1;
}

- (BOOL)containsUserGeneratedGuideUnit
{
  v2 = self;
  v3 = sub_10022BBD0(9);

  return v3 & 1;
}

- (BOOL)containsContainmentParentUnit
{
  v2 = self;
  v3 = sub_10022BBD0(16);

  return v3 & 1;
}

- (BOOL)containsTransitShieldsUnit
{
  v2 = self;
  v3 = sub_10022BBD0(8);

  return v3 & 1;
}

- (BOOL)containsPhotoCarouselUnit
{
  v2 = self;
  v3 = sub_10022BBD0(37);

  return v3 & 1;
}

- (id)stringUnitContent
{
  v2 = self;
  sub_10022BD64();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsTappableEntityWithIdentifier:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10022BF44(v5, v8);
  LOBYTE(v5) = v10;

  return v5 & 1;
}

@end