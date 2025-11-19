@interface AudiogramDetectorResult
- (NSArray)symbols;
- (_TtC18AudiogramIngestion23AudiogramDetectorResult)init;
- (_TtC18AudiogramIngestion23AudiogramDetectorResult)initWithGraph:(id)a3 symbols:(id)a4;
@end

@implementation AudiogramDetectorResult

- (NSArray)symbols
{
  type metadata accessor for AudiogramSymbolDetectorResult();

  v2 = sub_2417E422C();

  return v2;
}

- (_TtC18AudiogramIngestion23AudiogramDetectorResult)initWithGraph:(id)a3 symbols:(id)a4
{
  type metadata accessor for AudiogramSymbolDetectorResult();
  v6 = sub_2417E424C();
  *(self + OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_graph) = a3;
  *(self + OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_symbols) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AudiogramDetectorResult();
  v7 = a3;
  return [(AudiogramDetectorResult *)&v9 init];
}

- (_TtC18AudiogramIngestion23AudiogramDetectorResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end