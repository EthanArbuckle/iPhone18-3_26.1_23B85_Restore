@interface PKStrokeCoherence
- ($F777F618DAA49F09FCB801EAF401447B)_flags;
- (CGAffineTransform)_inkTransform;
- (CGAffineTransform)_transform;
- (CGRect)_bounds;
- (CGRect)renderBounds;
- (NSUUID)_groupID;
- (NSUUID)_renderGroupID;
- (PKInk)ink;
- (PKStrokeCoherence)initWithInk:(id)ink strokePath:(id)path transform:(CGAffineTransform *)transform mask:(id)mask;
- (PKStrokeMask)_strokeMask;
- (PKStrokePath)path;
- (_PKStrokeClipPlane)_clipPlane;
- (id)_substrokesInDrawing:(id)drawing;
- (id)mutableCopyWithZone:(void *)zone;
- (id)parentStrokeForInsertionInDrawing:(id)drawing;
- (id)sliceIdentifierForTStart:(double)start tEnd:(double)end;
- (int64_t)_shapeType;
- (int64_t)compareToStroke:(id)stroke;
- (void)_setClipPlane:(id)plane;
- (void)_setFlags:(id)flags;
- (void)_setGroupID:(id)d;
- (void)_setRenderGroupID:(id)d;
- (void)_setShapeType:(int64_t)type;
- (void)_setStrokeMask:(id)mask;
- (void)_setStrokeUUID:(id)d;
- (void)_setTransform:(CGAffineTransform *)transform;
- (void)set_bounds:(CGRect)set_bounds;
- (void)set_transform:(CGAffineTransform *)set_transform;
@end

@implementation PKStrokeCoherence

- (PKStrokeCoherence)initWithInk:(id)ink strokePath:(id)path transform:(CGAffineTransform *)transform mask:(id)mask
{
  v9 = *&transform->c;
  v20[0] = *&transform->a;
  v20[1] = v9;
  v20[2] = *&transform->tx;
  v10 = type metadata accessor for PKStrokePath();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PKInk();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  inkCopy = ink;
  pathCopy = path;
  maskCopy = mask;
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();
  return PKStrokeCoherence.init(ink:strokePath:transform:mask:)(v15, v12, v20, mask);
}

- (id)parentStrokeForInsertionInDrawing:(id)drawing
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PKStroke();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKStrokeCoherence.parentStrokeForInsertion(in:)(v12);
  (*(v6 + 8))(v8, v5);
  v15.super.isa = PKStroke._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v9);

  return v15.super.isa;
}

- (id)mutableCopyWithZone:(void *)zone
{
  selfCopy = self;
  PKStrokeCoherence.mutableCopy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (id)sliceIdentifierForTStart:(double)start tEnd:(double)end
{
  selfCopy = self;
  v7 = PKStrokeCoherence.sliceIdentifier(forTStart:tEnd:)(start, end);

  return v7;
}

- (PKInk)ink
{
  v3 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PKInk();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(self + v10, v5, type metadata accessor for PKStrokeInheritedProperties);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  result = _s8PaperKit12TaggedStrokeOWOhTm_1(v5, type metadata accessor for PKStrokeInheritedProperties);
  v13 = v15;
  if (v15)
  {
    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

    v14.super.isa = PKInk._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v9, v6);

    return v14.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGAffineTransform)_inkTransform
{
  v5 = type metadata accessor for PKStrokeProperties(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(self + v12, v11, type metadata accessor for PKStrokeStruct);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v11, type metadata accessor for PKStrokeStruct);
  v13 = &v8[*(v6 + 52)];
  v14 = *(v13 + 1);
  v25 = *v13;
  v26 = v14;
  v15 = *(v13 + 4);
  v16 = *(v13 + 5);
  v17 = v13[48];
  result = _s8PaperKit12TaggedStrokeOWOhTm_1(v8, type metadata accessor for PKStrokeProperties);
  if (v17)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20 = vdupq_n_s64(v19);
  v21 = vbslq_s8(v20, xmmword_1D4059320, v25);
  v22 = vbslq_s8(v20, xmmword_1D4059310, v26);
  if (v17)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v15;
  }

  *&retstr->a = v21;
  *&retstr->c = v22;
  if (v17)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v16;
  }

  retstr->tx = v23;
  retstr->ty = v24;
  return result;
}

- (PKStrokePath)path
{
  v3 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PKStrokePath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___PKStrokeCoherence__path;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(self + v10, v5, type metadata accessor for PKStrokePathStruct);
  (*(v7 + 32))(v9, v5, v6);
  v11.super.isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);

  return v11.super.isa;
}

- ($F777F618DAA49F09FCB801EAF401447B)_flags
{
  v3 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(self + v9, v8, type metadata accessor for PKStrokeStruct);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v8, type metadata accessor for PKStrokeStruct);
  v10 = *v5;
  _s8PaperKit12TaggedStrokeOWOhTm_1(v5, type metadata accessor for PKStrokeProperties);
  v12 = v10;
  *(&result.var0.var1 + 1) = v11;
  result.var0.var1 = v12;
  return result;
}

- (void)_setFlags:(id)flags
{
  var1 = flags.var0.var1;
  swift_beginAccess();
  type metadata accessor for PKStrokeStruct(0);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v6 = CRRegister.wrappedValue.modify();
  *v7 = var1;
  v6(v8, 0);
  swift_endAccess();
}

- (NSUUID)_groupID
{
  v3 = type metadata accessor for PKStrokeProperties(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(self + v13, v9, type metadata accessor for PKStrokeStruct);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v9, type metadata accessor for PKStrokeStruct);
  outlined init with copy of Date?(&v6[*(v4 + 28)], v12, &_s10Foundation4UUIDVSgMd);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v6, type metadata accessor for PKStrokeProperties);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v12, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v12, v14);
    v17 = isa;
  }

  return v17;
}

- (void)_setGroupID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6 - 8];
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  swift_beginAccess();
  type metadata accessor for PKStrokeStruct(0);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v11 = CRRegister.wrappedValue.modify();
  v13 = v12;
  v14 = type metadata accessor for PKStrokeProperties(0);
  outlined assign with copy of UUID?(v7, v13 + *(v14 + 20));
  v11(v16, 0);
  swift_endAccess();

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation4UUIDVSgMd);
}

- (NSUUID)_renderGroupID
{
  v3 = type metadata accessor for PKStrokeProperties(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(self + v13, v9, type metadata accessor for PKStrokeStruct);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v9, type metadata accessor for PKStrokeStruct);
  outlined init with copy of Date?(&v6[*(v4 + 32)], v12, &_s10Foundation4UUIDVSgMd);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v6, type metadata accessor for PKStrokeProperties);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v12, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v12, v14);
    v17 = isa;
  }

  return v17;
}

- (void)_setRenderGroupID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6 - 8];
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  swift_beginAccess();
  type metadata accessor for PKStrokeStruct(0);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v11 = CRRegister.wrappedValue.modify();
  v13 = v12;
  v14 = type metadata accessor for PKStrokeProperties(0);
  outlined assign with copy of UUID?(v7, v13 + *(v14 + 24));
  v11(v16, 0);
  swift_endAccess();

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation4UUIDVSgMd);
}

- (int64_t)_shapeType
{
  v3 = type metadata accessor for PKStrokeProperties(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(self + v10, v9, type metadata accessor for PKStrokeStruct);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v9, type metadata accessor for PKStrokeStruct);
  v11 = *&v6[*(v4 + 36)];
  _s8PaperKit12TaggedStrokeOWOhTm_1(v6, type metadata accessor for PKStrokeProperties);
  return v11;
}

- (void)_setShapeType:(int64_t)type
{
  swift_beginAccess();
  type metadata accessor for PKStrokeStruct(0);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v6 = CRRegister.wrappedValue.modify();
  *(v7 + *(type metadata accessor for PKStrokeProperties(0) + 28)) = type;
  v6(v8, 0);
  swift_endAccess();
}

- (PKStrokeMask)_strokeMask
{
  selfCopy = self;
  v3 = PKStrokeCoherence._strokeMask.getter();

  return v3;
}

- (void)_setStrokeMask:(id)mask
{
  maskCopy = mask;
  selfCopy = self;
  specialized PKStrokeCoherence._strokeMask.setter(mask);
}

- (void)_setStrokeUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PKStrokeCoherence._strokeUUID.setter(v6);
}

- (_PKStrokeClipPlane)_clipPlane
{
  selfCopy = self;
  v3 = PKStrokeCoherence._clipPlane.getter();

  return v3;
}

- (void)_setClipPlane:(id)plane
{
  planeCopy = plane;
  selfCopy = self;
  PKStrokeCoherence._clipPlane.setter(plane);
}

- (CGAffineTransform)_transform
{
  v5 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(self + v8, v7, type metadata accessor for PKStrokeInheritedProperties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = _s8PaperKit12TaggedStrokeOWOhTm_1(v7, type metadata accessor for PKStrokeInheritedProperties);
  v10 = v12[1];
  v11 = v12[2];
  *&retstr->a = v12[0];
  *&retstr->c = v10;
  *&retstr->tx = v11;
  return result;
}

- (void)set_transform:(CGAffineTransform *)set_transform
{
  v3 = *&set_transform->c;
  v5[0] = *&set_transform->a;
  v5[1] = v3;
  v5[2] = *&set_transform->tx;
  selfCopy = self;
  PKStrokeCoherence._transform.setter(v5);
}

- (void)_setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v4[0] = *&transform->a;
  v4[1] = v3;
  v4[2] = *&transform->tx;
  [(PKStrokeCoherence *)self set_transform:v4];
}

- (id)_substrokesInDrawing:(id)drawing
{
  v4 = type metadata accessor for PKDrawing();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 8))(v7, v4);
  type metadata accessor for PKStroke();
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (CGRect)_bounds
{
  [(PKStrokeCoherence *)self renderBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)set_bounds:(CGRect)set_bounds
{
  height = set_bounds.size.height;
  width = set_bounds.size.width;
  y = set_bounds.origin.y;
  x = set_bounds.origin.x;
  selfCopy = self;
  PKStrokeCoherence._bounds.setter(x, y, width, height);
}

- (CGRect)renderBounds
{
  selfCopy = self;
  v3 = PKStrokeCoherence.renderBounds.getter();
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

- (int64_t)compareToStroke:(id)stroke
{
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strokeCopy = stroke;
  selfCopy = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = PKStrokeCoherence.compare(to:)();
  (*(v6 + 8))(v8, v5);
  return v11;
}

@end