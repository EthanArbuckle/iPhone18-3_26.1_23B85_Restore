@interface PKDrawingCoherence
- (CGRect)_canvasBounds;
- (CGRect)bounds;
- (Class)strokeClass;
- (Class)strokeSelectionClass;
- (NSArray)_rootStrokes;
- (PKDrawingCoherence)initWithCoder:(id)a3;
- (PKDrawingCoherence)initWithData:(id)a3 error:(id *)a4;
- (PKDrawingCoherence)initWithData:(id)a3 loadNonInkingStrokes:(BOOL)a4 error:(id *)a5;
- (PKDrawingCoherence)initWithDrawing:(id)a3;
- (PKDrawingCoherence)initWithStrokes:(id)a3 fromDrawing:(id)a4;
- (id)_strokeForIdentifier:(id)a3;
- (id)copyWithoutInternalStrokes;
- (id)dataRepresentation;
- (id)drawingByApplyingTransform:(CGAffineTransform *)a3;
- (id)drawingByApplyingTransform:(CGAffineTransform *)a3 transformInk:(BOOL)a4;
- (id)newStroke;
- (id)serializeTransiently;
- (id)serializeWithVersion:(int64_t)a3;
- (id)setStroke:(id)a3 hidden:(BOOL)a4;
- (id)transformStrokes:(id)a3 paths:(id)a4 masks:(id)a5;
- (id)undoableAddNewStrokes:(id)a3 replacingOldStrokes:(id)a4;
- (id)undoableSetStrokes:(id)a3 groupID:(id)a4 actionName:(id)a5;
- (id)undoableSetStrokes:(id)a3 inks:(id)a4;
- (id)undoableTransformStrokes:(id)a3 withTransform:(CGAffineTransform *)a4 concat:(BOOL)a5;
- (id)updateFromSlicedIntersectingIndexes:(int64_t *)a3 resultNewRoots:(const void *)a4 resultUpdatedStrokes:(const void *)a5 count:(int64_t)a6;
- (id)visibleStrokeForInsertingStroke:(id)a3;
- (int64_t)_rootStrokesCount;
- (int64_t)hash;
- (int64_t)requiredContentVersion;
- (unint64_t)_mergeWithDrawing:(id)a3;
- (void)deleteStrokes:(id)a3;
- (void)invalidateVisibleStrokes;
- (void)setStrokes:(id)a3 groupID:(id)a4;
- (void)setStrokes:(id)a3 hidden:(BOOL)a4;
- (void)setStrokes:(id)a3 inks:(id)a4;
- (void)set_canvasBounds:(CGRect)a3;
- (void)transformStrokes:(id)a3 withTransform:(CGAffineTransform *)a4 concat:(BOOL)a5;
- (void)updateStroke:(id)a3 indexHint:(int64_t)a4;
@end

@implementation PKDrawingCoherence

- (PKDrawingCoherence)initWithData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = specialized PKDrawingCoherence.init(data:)();
  outlined consume of Data._Representation(v5, v7);
  return v8;
}

- (PKDrawingCoherence)initWithStrokes:(id)a3 fromDrawing:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7 + 16;
  swift_unknownObjectRetain();
  v9 = a4;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (v9)
  {
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for PKDrawing();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for PKDrawing();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = [(PKDrawingCoherence *)self init];
  MEMORY[0x1EEE9AC00](v12);
  *(&v15 - 2) = v16;
  *(&v15 - 1) = v8;
  swift_beginAccess();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.mutate<A>(_:)();
  swift_endAccess();

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9PencilKit9PKDrawingVSgMd);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

- (PKDrawingCoherence)initWithDrawing:(id)a3
{
  v4 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a3;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  return PKDrawingCoherence.init(drawing:)(v6);
}

- (PKDrawingCoherence)initWithData:(id)a3 loadNonInkingStrokes:(BOOL)a4 error:(id *)a5
{
  v5 = a3;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  return specialized PKDrawingCoherence.init(data:loadNonInkingStrokes:)(v6, v8);
}

- (PKDrawingCoherence)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (Class)strokeClass
{
  type metadata accessor for PKStrokeCoherence(0);

  return swift_getObjCClassFromMetadata();
}

- (id)newStroke
{
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(type metadata accessor for PKStrokeCoherence(0)) init];
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  return isa;
}

- (Class)strokeSelectionClass
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStrokeSelectionCoherence);

  return swift_getObjCClassFromMetadata();
}

- (id)dataRepresentation
{
  v2 = self;
  v3 = PKDrawingCoherence.dataRepresentation()();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v3, v5);

  return v6.super.isa;
}

- (id)serializeWithVersion:(int64_t)a3
{
  v4 = self;
  PKDrawingCoherence.concreteDrawing()(v5);
  v7 = v6;
  isa = [v6 serializeWithVersion_];

  if (isa)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v9, v11);
  }

  else
  {
  }

  return isa;
}

- (id)serializeTransiently
{
  v2 = self;
  PKDrawingCoherence.concreteDrawing()(v3);
  v5 = v4;
  v6 = [v4 serializeTransiently];

  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v9);

  return v10.super.isa;
}

- (int64_t)requiredContentVersion
{
  v3 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, self + v13, v6);
  v18 = self;
  Capsule.root.getter();
  v15 = *(v7 + 8);
  v15(v12, v6);
  v14(v9, self + v13, v6);
  v16 = specialized PKDrawingStruct.requiredContentVersion<A>(in:)(v9);

  v15(v9, v6);
  _s8PaperKit15PKDrawingStructVWOhTm_2(v5, type metadata accessor for PKDrawingStruct);
  return v16;
}

- (NSArray)_rootStrokes
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v8 + 16))(v10, self + v11, v7);
  swift_getKeyPath();
  v12 = self;
  Capsule.subscript.getter();

  (*(v8 + 8))(v10, v7);
  v16 = v12;
  type metadata accessor for PKStroke();
  CROrderedSet.map<A>(_:)();

  (*(v4 + 8))(v6, v3);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (int64_t)_rootStrokesCount
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v8 + 16))(v10, self + v11, v7);
  swift_getKeyPath();
  v12 = self;
  Capsule.subscript.getter();

  (*(v8 + 8))(v10, v7);
  v13 = CROrderedSet.count.getter();

  (*(v4 + 8))(v6, v3);
  return v13;
}

- (id)copyWithoutInternalStrokes
{
  v3 = type metadata accessor for PKDrawing();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKDrawing._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  return v10;
}

- (CGRect)bounds
{
  v2 = self;
  v3 = PKDrawingCoherence.bounds.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_canvasBounds
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  swift_getKeyPath();
  v8 = self;
  Capsule.subscript.getter();

  (*(v4 + 8))(v6, v3);
  v9 = *&v13[1];
  v10 = *&v13[2];
  v11 = *&v13[3];
  v12 = *&v13[4];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)set_canvasBounds:(CGRect)a3
{
  swift_beginAccess();
  v4 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.mutate<A>(_:)();
  swift_endAccess();
}

- (id)visibleStrokeForInsertingStroke:(id)a3
{
  v4 = type metadata accessor for PKStroke();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = a3;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v13 = [(objc_class *)isa copyForMutation];

  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v15.super.isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v14(v10, v4);

  return v15.super.isa;
}

- (id)setStroke:(id)a3 hidden:(BOOL)a4
{
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  v10.super.isa = PKStroke._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);

  return v10.super.isa;
}

- (void)setStrokes:(id)a3 hidden:(BOOL)a4
{
  if (a4)
  {
    [(PKDrawingCoherence *)self deleteStrokes:a3];
  }
}

- (id)undoableAddNewStrokes:(id)a3 replacingOldStrokes:(id)a4
{
  type metadata accessor for PKStroke();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  PKDrawingCoherence.undoableAddNewStrokes(_:replacingOldStrokes:)(v8, v5, v6);
  v10 = v9;

  return v10;
}

- (void)updateStroke:(id)a3 indexHint:(int64_t)a4
{
  v6 = type metadata accessor for PKStroke();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  specialized PKDrawingCoherence.updateStroke(_:indexHint:)(v9);
  (*(v7 + 8))(v9, v6);
}

- (void)transformStrokes:(id)a3 withTransform:(CGAffineTransform *)a4 concat:(BOOL)a5
{
  v5 = a5;
  b = a4->b;
  c = a4->c;
  d = a4->d;
  tx = a4->tx;
  ty = a4->ty;
  a = a4->a;
  v16 = b;
  v17 = c;
  v18 = d;
  v19 = tx;
  v20 = ty;
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14.a = a;
  v14.b = b;
  v14.c = c;
  v14.d = d;
  v14.tx = tx;
  v14.ty = ty;
  IsIdentity = CGAffineTransformIsIdentity(&v14);
  if (IsIdentity && v5)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](IsIdentity);
    swift_beginAccess();
    v13 = self;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();

    [(PKDrawingCoherence *)v13 invalidateVisibleStrokes];
  }
}

- (void)deleteStrokes:(id)a3
{
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v4 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();

  [(PKDrawingCoherence *)v4 invalidateVisibleStrokes];
}

- (id)undoableTransformStrokes:(id)a3 withTransform:(CGAffineTransform *)a4 concat:(BOOL)a5
{
  v7 = *&a4->c;
  *&v14.a = *&a4->a;
  *&v14.c = v7;
  *&v14.tx = *&a4->tx;
  type metadata accessor for PKStroke();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  PKDrawingCoherence.undoableTransformStrokes(_:with:concat:)(v10, v8, &v14, a5);
  v12 = v11;

  return v12;
}

- (id)transformStrokes:(id)a3 paths:(id)a4 masks:(id)a5
{
  type metadata accessor for PKStroke();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  type metadata accessor for PKStrokePath();
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStrokeMask);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  PKDrawingCoherence.undoableSetStrokes(_:paths:masks:)(v10, v6, v7, v8);
  v12 = v11;

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D405CEB0;
    *(v13 + 32) = v12;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKUndoCommand);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (void)setStrokes:(id)a3 inks:(id)a4
{
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKInk();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v5 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.mutate<A>(_:)();
  swift_endAccess();

  [(PKDrawingCoherence *)v5 invalidateVisibleStrokes];
}

- (id)undoableSetStrokes:(id)a3 inks:(id)a4
{
  type metadata accessor for PKStroke();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKInk();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  PKDrawingCoherence.undoableSetStrokes(_:inks:)(v8, v5, v6);
  v10 = v9;

  return v10;
}

- (void)setStrokes:(id)a3 groupID:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  type metadata accessor for PKStroke();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    v11 = (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    v11 = (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  MEMORY[0x1EEE9AC00](v11);
  *(&v14 - 2) = v9;
  *(&v14 - 1) = v8;
  swift_beginAccess();
  v13 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.mutate<A>(_:)();
  swift_endAccess();

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s10Foundation4UUIDVSgMd);
}

- (id)undoableSetStrokes:(id)a3 groupID:(id)a4 actionName:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  type metadata accessor for PKStroke();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = self;
  v17 = PKDrawingCoherence.undoableSetStrokes(_:groupID:actionName:)(v10, v9, v13, v15);

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s10Foundation4UUIDVSgMd);

  return v17;
}

- (id)updateFromSlicedIntersectingIndexes:(int64_t *)a3 resultNewRoots:(const void *)a4 resultUpdatedStrokes:(const void *)a5 count:(int64_t)a6
{
  v10 = self;
  v11 = PKDrawingCoherence.update(fromSlicedIntersectingIndexes:resultNewRoots:resultUpdatedStrokes:count:)(a3, a4, a5, a6);

  return v11;
}

- (id)drawingByApplyingTransform:(CGAffineTransform *)a3
{
  tx = a3->tx;
  ty = a3->ty;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = self;
  v12 = *&a3->c;
  v18[0] = *&a3->a;
  v18[1] = v12;
  v19 = tx;
  v20 = ty;
  v13 = [(PKDrawingCoherence *)v11 drawingByApplyingTransform:v18 transformInk:1];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKDrawing._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)drawingByApplyingTransform:(CGAffineTransform *)a3 transformInk:(BOOL)a4
{
  v6 = *&a3->c;
  v17[0] = *&a3->a;
  v17[1] = v6;
  v17[2] = *&a3->tx;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = self;
  v12 = PKDrawingCoherence.applyTransform(_:transformInk:)(v17, a4);
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKDrawing._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v8 + 8))(v10, v7);

  return v15;
}

- (void)invalidateVisibleStrokes
{
  v18 = type metadata accessor for CRKeyPath();
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for PKDrawingCoherence(0);
  v19.receiver = self;
  v19.super_class = v13;
  v14 = self;
  [(PKDrawingCoherence *)&v19 invalidateVisibleStrokes];
  v15 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v16 = *(v7 + 16);
  v16(v12, v14 + v15, v6);
  v16(v9, v14 + v15, v6);
  Capsule.rootID.getter();
  v17 = *(v7 + 8);
  v17(v9, v6);
  Capsule.clearCachedValue(forKey:)();

  (*(v3 + 8))(v5, v18);
  v17(v12, v6);
}

- (unint64_t)_mergeWithDrawing:(id)a3
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = PKDrawingCoherence._merge(with:)(v8);
  (*(v6 + 8))(v8, v5);
  return v11;
}

- (int64_t)hash
{
  v2 = self;
  v3 = PKDrawingCoherence.hash.getter();

  return v3;
}

- (id)_strokeForIdentifier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  PKDrawingCoherence._stroke(forIdentifier:)(v7, v10);

  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for PKStroke();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v10, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    isa = PKStroke._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
    v15 = isa;
  }

  return v15;
}

@end