@interface PKStrokeCoherenceSubstrokes
- ($F777F618DAA49F09FCB801EAF401447B)_flags;
- (BOOL)hasSubstrokes;
- (CGRect)_bounds;
- (PKInk)ink;
- (PKStrokeCoherenceSubstrokes)init;
- (id)_substrokesInDrawing:(id)a3;
- (id)descriptionAtDepth:(int64_t)a3;
- (void)_setStrokeUUID:(id)a3;
- (void)setInk:(id)a3;
@end

@implementation PKStrokeCoherenceSubstrokes

- (PKInk)ink
{
  if (one-time initialization token for substrokesInkType != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PKInk();
  __swift_project_value_buffer(v2, static PKStrokeCoherenceSubstrokes.substrokesInkType);
  v3.super.isa = PKInk._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setInk:(id)a3
{
  v4 = type metadata accessor for PKInk();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = a3;
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (CGRect)_bounds
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- ($F777F618DAA49F09FCB801EAF401447B)_flags
{
  v2 = 0;
  *(&result.var0.var1 + 1) = a2;
  result.var0.var1 = v2;
  return result;
}

- (BOOL)hasSubstrokes
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, self + OBJC_IVAR___PKStrokeCoherenceSubstrokes_substrokes, v3, v5);
  v8 = CRSequence.count.getter();
  (*(v4 + 8))(v7, v3);
  return v8 > 0;
}

- (void)_setStrokeUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v9 = *(v5 + 40);
  v10 = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (id)_substrokesInDrawing:(id)a3
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKStrokeCoherenceSubstrokes._substrokes(in:)(v8);
  (*(v6 + 8))(v8, v5);
  type metadata accessor for PKStroke();
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)descriptionAtDepth:(int64_t)a3
{
  v4 = self;
  v5 = PKStrokeCoherenceSubstrokes.description(atDepth:)(a3);

  v6 = MEMORY[0x1DA6CCED0](v5._countAndFlagsBits, v5._object);

  return v6;
}

- (PKStrokeCoherenceSubstrokes)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end