@interface PKDrawingCoherenceVersion
- (PKDrawingCoherenceVersion)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDrawingCoherenceVersion

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = UUID.data()();
  v7 = v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);
  [v4 encodeDataObject_];
}

- (PKDrawingCoherenceVersion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end