@interface CRLiOSFindSession
- (BOOL)allowsReplacementForCurrentlyHighlightedResult;
- (BOOL)supportsReplacement;
- (_TtC8Freeform17CRLiOSFindSession)init;
- (int64_t)highlightedResultIndex;
- (int64_t)resultCount;
- (void)highlightNextResultInDirection:(int64_t)a3;
- (void)invalidateFoundResults;
- (void)performSearchWithQuery:(id)a3 options:(id)a4;
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
  v3 = self;
  v4 = [v2 findResultIndex];
  if (v4)
  {
    v5 = v4;

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

- (void)highlightNextResultInDirection:(int64_t)a3
{
  v4 = self;
  sub_100FB1FC0(a3);
}

- (void)invalidateFoundResults
{
  v2 = self;
  sub_100FB20B0();
}

- (void)performSearchWithQuery:(id)a3 options:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_100FB21FC(v6, v8, a4);
}

- (BOOL)supportsReplacement
{
  v2 = self;
  v3 = sub_100FB2380();

  return v3 & 1;
}

- (BOOL)allowsReplacementForCurrentlyHighlightedResult
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController);
  v3 = self;
  v4 = [v2 primaryFindResultSearchReference];
  if (v4)
  {
    v5 = [v4 isReplaceable];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC8Freeform17CRLiOSFindSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end