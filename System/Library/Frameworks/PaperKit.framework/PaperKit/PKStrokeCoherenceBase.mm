@interface PKStrokeCoherenceBase
- (PKStrokeCoherenceBase)init;
- (PKStrokeCoherenceBase)initWithData:(id)a3 id:(id)a4 flags:(id)a5 ink:(id)a6 transform:(CGAffineTransform *)a7 substrokes:(id)a8;
- (PKStrokeCoherenceBase)initWithInk:(id)a3 strokePath:(id)a4 transform:(CGAffineTransform *)a5 mask:(id)a6;
- (PKStrokeCoherenceBase)initWithInk:(id)a3 strokePath:(id)a4 transform:(CGAffineTransform *)a5 mask:(id)a6 randomSeed:(unsigned int)a7;
- (id)_newStrokeWithSubstrokes:(id)a3 inDrawing:(id)a4;
@end

@implementation PKStrokeCoherenceBase

- (PKStrokeCoherenceBase)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (PKStrokeCoherenceBase)initWithInk:(id)a3 strokePath:(id)a4 transform:(CGAffineTransform *)a5 mask:(id)a6
{
  v8 = type metadata accessor for PKStrokePath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for PKInk();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = a3;
  v11 = a4;
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)_newStrokeWithSubstrokes:(id)a3 inDrawing:(id)a4
{
  v6 = type metadata accessor for PKDrawing();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PKStroke();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a4;
  v16 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKStrokeCoherenceBase._newStroke(withSubstrokes:in:)(v14, v13);

  (*(v7 + 8))(v9, v6);
  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v13, v10);
  return isa;
}

- (PKStrokeCoherenceBase)initWithInk:(id)a3 strokePath:(id)a4 transform:(CGAffineTransform *)a5 mask:(id)a6 randomSeed:(unsigned int)a7
{
  v9 = type metadata accessor for PKStrokePath();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for PKInk();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = a3;
  v12 = a4;
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PKStrokeCoherenceBase)initWithData:(id)a3 id:(id)a4 flags:(id)a5 ink:(id)a6 transform:(CGAffineTransform *)a7 substrokes:(id)a8
{
  v8 = *(&a5.var0.var1 + 1);
  v11 = type metadata accessor for PKInk();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = type metadata accessor for PKStrokePath();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = a3;
  v15 = a4;
  v16 = v8;
  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end