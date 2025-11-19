@interface SearchHomeUserGuidesDataFetcher
- (NSArray)dataProviders;
- (SearchHomeDataFetcherDelegate)delegate;
- (_TtC4Maps31SearchHomeUserGuidesDataFetcher)init;
- (_TtC4Maps31SearchHomeUserGuidesDataFetcher)initWithDelegate:(id)a3 isSearchAlongRoute:(BOOL)a4;
- (void)fetchContent;
- (void)setDataProviders:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SearchHomeUserGuidesDataFetcher

- (SearchHomeDataFetcherDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_delegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (NSArray)dataProviders
{
  if (*(self + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_dataProviders))
  {

    sub_1000CE6B8(&unk_10190C500);
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setDataProviders:(id)a3
{
  if (a3)
  {
    sub_1000CE6B8(&unk_10190C500);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_dataProviders) = v4;
}

- (_TtC4Maps31SearchHomeUserGuidesDataFetcher)initWithDelegate:(id)a3 isSearchAlongRoute:(BOOL)a4
{
  swift_unknownObjectRetain();
  v5 = sub_10013E080(a3);
  swift_unknownObjectRelease();
  return v5;
}

- (void)fetchContent
{
  v2 = self;
  sub_10013D434();
}

- (_TtC4Maps31SearchHomeUserGuidesDataFetcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end