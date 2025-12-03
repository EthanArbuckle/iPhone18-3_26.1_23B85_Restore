@interface PKDrawingCoherenceVersion
- (PKDrawingCoherenceVersion)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDrawingCoherenceVersion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = UUID.data()();
  v7 = v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);
  [coderCopy encodeDataObject_];
}

- (PKDrawingCoherenceVersion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end