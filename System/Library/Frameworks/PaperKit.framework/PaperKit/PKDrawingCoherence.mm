@interface PKDrawingCoherence
- (CGRect)_canvasBounds;
- (CGRect)bounds;
- (Class)strokeClass;
- (Class)strokeSelectionClass;
- (NSArray)_rootStrokes;
- (PKDrawingCoherence)initWithCoder:(id)coder;
- (PKDrawingCoherence)initWithData:(id)data error:(id *)error;
- (PKDrawingCoherence)initWithData:(id)data loadNonInkingStrokes:(BOOL)strokes error:(id *)error;
- (PKDrawingCoherence)initWithDrawing:(id)drawing;
- (PKDrawingCoherence)initWithStrokes:(id)strokes fromDrawing:(id)drawing;
- (id)_strokeForIdentifier:(id)identifier;
- (id)copyWithoutInternalStrokes;
- (id)dataRepresentation;
- (id)drawingByApplyingTransform:(CGAffineTransform *)transform;
- (id)drawingByApplyingTransform:(CGAffineTransform *)transform transformInk:(BOOL)ink;
- (id)newStroke;
- (id)serializeTransiently;
- (id)serializeWithVersion:(int64_t)version;
- (id)setStroke:(id)stroke hidden:(BOOL)hidden;
- (id)transformStrokes:(id)strokes paths:(id)paths masks:(id)masks;
- (id)undoableAddNewStrokes:(id)strokes replacingOldStrokes:(id)oldStrokes;
- (id)undoableSetStrokes:(id)strokes groupID:(id)d actionName:(id)name;
- (id)undoableSetStrokes:(id)strokes inks:(id)inks;
- (id)undoableTransformStrokes:(id)strokes withTransform:(CGAffineTransform *)transform concat:(BOOL)concat;
- (id)updateFromSlicedIntersectingIndexes:(int64_t *)indexes resultNewRoots:(const void *)roots resultUpdatedStrokes:(const void *)strokes count:(int64_t)count;
- (id)visibleStrokeForInsertingStroke:(id)stroke;
- (int64_t)_rootStrokesCount;
- (int64_t)hash;
- (int64_t)requiredContentVersion;
- (unint64_t)_mergeWithDrawing:(id)drawing;
- (void)deleteStrokes:(id)strokes;
- (void)invalidateVisibleStrokes;
- (void)setStrokes:(id)strokes groupID:(id)d;
- (void)setStrokes:(id)strokes hidden:(BOOL)hidden;
- (void)setStrokes:(id)strokes inks:(id)inks;
- (void)set_canvasBounds:(CGRect)bounds;
- (void)transformStrokes:(id)strokes withTransform:(CGAffineTransform *)transform concat:(BOOL)concat;
- (void)updateStroke:(id)stroke indexHint:(int64_t)hint;
@end

@implementation PKDrawingCoherence

- (PKDrawingCoherence)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = specialized PKDrawingCoherence.init(data:)();
  outlined consume of Data._Representation(v5, v7);
  return v8;
}

- (PKDrawingCoherence)initWithStrokes:(id)strokes fromDrawing:(id)drawing
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7 + 16;
  swift_unknownObjectRetain();
  drawingCopy = drawing;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (drawingCopy)
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

- (PKDrawingCoherence)initWithDrawing:(id)drawing
{
  v4 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  return PKDrawingCoherence.init(drawing:)(v6);
}

- (PKDrawingCoherence)initWithData:(id)data loadNonInkingStrokes:(BOOL)strokes error:(id *)error
{
  dataCopy = data;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  return specialized PKDrawingCoherence.init(data:loadNonInkingStrokes:)(v6, v8);
}

- (PKDrawingCoherence)initWithCoder:(id)coder
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
  selfCopy = self;
  v3 = PKDrawingCoherence.dataRepresentation()();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v3, v5);

  return v6.super.isa;
}

- (id)serializeWithVersion:(int64_t)version
{
  selfCopy = self;
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
  selfCopy = self;
  PKDrawingCoherence.concreteDrawing()(v3);
  v5 = v4;
  serializeTransiently = [v4 serializeTransiently];

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
  v5 = &selfCopy - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &selfCopy - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &selfCopy - v11;
  v13 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, self + v13, v6);
  selfCopy = self;
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
  selfCopy = self;
  Capsule.subscript.getter();

  (*(v8 + 8))(v10, v7);
  v16 = selfCopy;
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
  selfCopy = self;
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
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKDrawing._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  return v10;
}

- (CGRect)bounds
{
  selfCopy = self;
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
  selfCopy = self;
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

- (void)set_canvasBounds:(CGRect)bounds
{
  swift_beginAccess();
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.mutate<A>(_:)();
  swift_endAccess();
}

- (id)visibleStrokeForInsertingStroke:(id)stroke
{
  v4 = type metadata accessor for PKStroke();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  strokeCopy = stroke;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  copyForMutation = [(objc_class *)isa copyForMutation];

  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v15.super.isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v14(v10, v4);

  return v15.super.isa;
}

- (id)setStroke:(id)stroke hidden:(BOOL)hidden
{
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strokeCopy = stroke;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  v10.super.isa = PKStroke._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);

  return v10.super.isa;
}

- (void)setStrokes:(id)strokes hidden:(BOOL)hidden
{
  if (hidden)
  {
    [(PKDrawingCoherence *)self deleteStrokes:strokes];
  }
}

- (id)undoableAddNewStrokes:(id)strokes replacingOldStrokes:(id)oldStrokes
{
  type metadata accessor for PKStroke();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PKDrawingCoherence.undoableAddNewStrokes(_:replacingOldStrokes:)(v8, v5, v6);
  v10 = v9;

  return v10;
}

- (void)updateStroke:(id)stroke indexHint:(int64_t)hint
{
  v6 = type metadata accessor for PKStroke();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strokeCopy = stroke;
  selfCopy = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  specialized PKDrawingCoherence.updateStroke(_:indexHint:)(v9);
  (*(v7 + 8))(v9, v6);
}

- (void)transformStrokes:(id)strokes withTransform:(CGAffineTransform *)transform concat:(BOOL)concat
{
  concatCopy = concat;
  b = transform->b;
  c = transform->c;
  d = transform->d;
  tx = transform->tx;
  ty = transform->ty;
  a = transform->a;
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
  if (IsIdentity && concatCopy)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](IsIdentity);
    swift_beginAccess();
    selfCopy = self;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();

    [(PKDrawingCoherence *)selfCopy invalidateVisibleStrokes];
  }
}

- (void)deleteStrokes:(id)strokes
{
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();

  [(PKDrawingCoherence *)selfCopy invalidateVisibleStrokes];
}

- (id)undoableTransformStrokes:(id)strokes withTransform:(CGAffineTransform *)transform concat:(BOOL)concat
{
  v7 = *&transform->c;
  *&v14.a = *&transform->a;
  *&v14.c = v7;
  *&v14.tx = *&transform->tx;
  type metadata accessor for PKStroke();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PKDrawingCoherence.undoableTransformStrokes(_:with:concat:)(v10, v8, &v14, concat);
  v12 = v11;

  return v12;
}

- (id)transformStrokes:(id)strokes paths:(id)paths masks:(id)masks
{
  type metadata accessor for PKStroke();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  type metadata accessor for PKStrokePath();
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStrokeMask);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
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

- (void)setStrokes:(id)strokes inks:(id)inks
{
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKInk();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.mutate<A>(_:)();
  swift_endAccess();

  [(PKDrawingCoherence *)selfCopy invalidateVisibleStrokes];
}

- (id)undoableSetStrokes:(id)strokes inks:(id)inks
{
  type metadata accessor for PKStroke();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKInk();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PKDrawingCoherence.undoableSetStrokes(_:inks:)(v8, v5, v6);
  v10 = v9;

  return v10;
}

- (void)setStrokes:(id)strokes groupID:(id)d
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  type metadata accessor for PKStroke();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (d)
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
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.mutate<A>(_:)();
  swift_endAccess();

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s10Foundation4UUIDVSgMd);
}

- (id)undoableSetStrokes:(id)strokes groupID:(id)d actionName:(id)name
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  type metadata accessor for PKStroke();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (d)
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
  selfCopy = self;
  v17 = PKDrawingCoherence.undoableSetStrokes(_:groupID:actionName:)(v10, v9, v13, v15);

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s10Foundation4UUIDVSgMd);

  return v17;
}

- (id)updateFromSlicedIntersectingIndexes:(int64_t *)indexes resultNewRoots:(const void *)roots resultUpdatedStrokes:(const void *)strokes count:(int64_t)count
{
  selfCopy = self;
  v11 = PKDrawingCoherence.update(fromSlicedIntersectingIndexes:resultNewRoots:resultUpdatedStrokes:count:)(indexes, roots, strokes, count);

  return v11;
}

- (id)drawingByApplyingTransform:(CGAffineTransform *)transform
{
  tx = transform->tx;
  ty = transform->ty;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  v12 = *&transform->c;
  v18[0] = *&transform->a;
  v18[1] = v12;
  v19 = tx;
  v20 = ty;
  v13 = [(PKDrawingCoherence *)selfCopy drawingByApplyingTransform:v18 transformInk:1];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKDrawing._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)drawingByApplyingTransform:(CGAffineTransform *)transform transformInk:(BOOL)ink
{
  v6 = *&transform->c;
  v17[0] = *&transform->a;
  v17[1] = v6;
  v17[2] = *&transform->tx;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  v12 = PKDrawingCoherence.applyTransform(_:transformInk:)(v17, ink);
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
  selfCopy = self;
  [(PKDrawingCoherence *)&v19 invalidateVisibleStrokes];
  v15 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v16 = *(v7 + 16);
  v16(v12, selfCopy + v15, v6);
  v16(v9, selfCopy + v15, v6);
  Capsule.rootID.getter();
  v17 = *(v7 + 8);
  v17(v9, v6);
  Capsule.clearCachedValue(forKey:)();

  (*(v3 + 8))(v5, v18);
  v17(v12, v6);
}

- (unint64_t)_mergeWithDrawing:(id)drawing
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = PKDrawingCoherence._merge(with:)(v8);
  (*(v6 + 8))(v8, v5);
  return v11;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = PKDrawingCoherence.hash.getter();

  return v3;
}

- (id)_strokeForIdentifier:(id)identifier
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
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