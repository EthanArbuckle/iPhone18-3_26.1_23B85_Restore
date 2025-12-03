@interface CRLiOSFindSession
- (BOOL)allowsReplacementForCurrentlyHighlightedResult;
- (BOOL)supportsReplacement;
- (_TtC8Freeform17CRLiOSFindSession)init;
- (int64_t)highlightedResultIndex;
- (int64_t)resultCount;
- (void)highlightNextResultInDirection:(int64_t)direction;
- (void)invalidateFoundResults;
- (void)performSearchWithQuery:(id)query options:(id)options;
@end

@implementation CRLiOSFindSession

- (int64_t)resultCount
{
  result = [*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController) searchResultsCount];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)highlightedResultIndex
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController);
  selfCopy = self;
  findResultIndex = [v2 findResultIndex];
  if (findResultIndex)
  {
    v5 = findResultIndex;

    result = v5 - 1;
    if (v5 - 1 >= 0)
    {
      return result;
    }

    __break(1u);
  }

  v7 = NSNotFound.getter();

  return v7;
}

- (void)highlightNextResultInDirection:(int64_t)direction
{
  selfCopy = self;
  sub_100FB1FC0(direction);
}

- (void)invalidateFoundResults
{
  selfCopy = self;
  sub_100FB20B0();
}

- (void)performSearchWithQuery:(id)query options:(id)options
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  optionsCopy = options;
  selfCopy = self;
  sub_100FB21FC(v6, v8, options);
}

- (BOOL)supportsReplacement
{
  selfCopy = self;
  v3 = sub_100FB2380();

  return v3 & 1;
}

- (BOOL)allowsReplacementForCurrentlyHighlightedResult
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController);
  selfCopy = self;
  primaryFindResultSearchReference = [v2 primaryFindResultSearchReference];
  if (primaryFindResultSearchReference)
  {
    isReplaceable = [primaryFindResultSearchReference isReplaceable];
    swift_unknownObjectRelease();
  }

  else
  {
    isReplaceable = 0;
  }

  return isReplaceable;
}

- (_TtC8Freeform17CRLiOSFindSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end