@interface _STKSearchResult
- (NSArray)results;
- (_STKSearchResult)init;
- (_STKSearchResult)initWithOriginalQuery:(id)a3 results:(id)a4;
@end

@implementation _STKSearchResult

- (NSArray)results
{
  type metadata accessor for ImageGlyph(0);

  v2 = sub_19A7AB234();

  return v2;
}

- (_STKSearchResult)initWithOriginalQuery:(id)a3 results:(id)a4
{
  type metadata accessor for ImageGlyph(0);
  v6 = sub_19A7AB254();
  *(self + OBJC_IVAR____STKSearchResult_originalQuery) = a3;
  *(self + OBJC_IVAR____STKSearchResult_results) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for _STKSearchResult();
  v7 = a3;
  return [(_STKSearchResult *)&v9 init];
}

- (_STKSearchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end