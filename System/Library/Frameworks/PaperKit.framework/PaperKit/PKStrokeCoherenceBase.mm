@interface PKStrokeCoherenceBase
- (PKStrokeCoherenceBase)init;
- (PKStrokeCoherenceBase)initWithData:(id)data id:(id)id flags:(id)flags ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)substrokes;
- (PKStrokeCoherenceBase)initWithInk:(id)ink strokePath:(id)path transform:(CGAffineTransform *)transform mask:(id)mask;
- (PKStrokeCoherenceBase)initWithInk:(id)ink strokePath:(id)path transform:(CGAffineTransform *)transform mask:(id)mask randomSeed:(unsigned int)seed;
- (id)_newStrokeWithSubstrokes:(id)substrokes inDrawing:(id)drawing;
@end

@implementation PKStrokeCoherenceBase

- (PKStrokeCoherenceBase)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (PKStrokeCoherenceBase)initWithInk:(id)ink strokePath:(id)path transform:(CGAffineTransform *)transform mask:(id)mask
{
  v8 = type metadata accessor for PKStrokePath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for PKInk();
  MEMORY[0x1EEE9AC00](v9 - 8);
  inkCopy = ink;
  pathCopy = path;
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)_newStrokeWithSubstrokes:(id)substrokes inDrawing:(id)drawing
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
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKStrokeCoherenceBase._newStroke(withSubstrokes:in:)(v14, v13);

  (*(v7 + 8))(v9, v6);
  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v13, v10);
  return isa;
}

- (PKStrokeCoherenceBase)initWithInk:(id)ink strokePath:(id)path transform:(CGAffineTransform *)transform mask:(id)mask randomSeed:(unsigned int)seed
{
  v9 = type metadata accessor for PKStrokePath();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for PKInk();
  MEMORY[0x1EEE9AC00](v10 - 8);
  inkCopy = ink;
  pathCopy = path;
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PKStrokeCoherenceBase)initWithData:(id)data id:(id)id flags:(id)flags ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)substrokes
{
  v8 = *(&flags.var0.var1 + 1);
  v11 = type metadata accessor for PKInk();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = type metadata accessor for PKStrokePath();
  MEMORY[0x1EEE9AC00](v13 - 8);
  dataCopy = data;
  idCopy = id;
  v16 = v8;
  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end