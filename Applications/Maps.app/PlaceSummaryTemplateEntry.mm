@interface PlaceSummaryTemplateEntry
- (BOOL)containsContainmentParentUnit;
- (BOOL)containsCuratedGuideUnit;
- (BOOL)containsPhotoCarouselUnit;
- (BOOL)containsTappableEntityWithIdentifier:(id)identifier metadata:(id)metadata;
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
  selfCopy = self;
  v3 = sub_10022BBD0(10);

  return v3 & 1;
}

- (BOOL)containsUserGeneratedGuideUnit
{
  selfCopy = self;
  v3 = sub_10022BBD0(9);

  return v3 & 1;
}

- (BOOL)containsContainmentParentUnit
{
  selfCopy = self;
  v3 = sub_10022BBD0(16);

  return v3 & 1;
}

- (BOOL)containsTransitShieldsUnit
{
  selfCopy = self;
  v3 = sub_10022BBD0(8);

  return v3 & 1;
}

- (BOOL)containsPhotoCarouselUnit
{
  selfCopy = self;
  v3 = sub_10022BBD0(37);

  return v3 & 1;
}

- (id)stringUnitContent
{
  selfCopy = self;
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

- (BOOL)containsTappableEntityWithIdentifier:(id)identifier metadata:(id)metadata
{
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  metadataCopy = metadata;
  selfCopy = self;
  sub_10022BF44(identifierCopy, metadataCopy);
  LOBYTE(identifierCopy) = v10;

  return identifierCopy & 1;
}

@end