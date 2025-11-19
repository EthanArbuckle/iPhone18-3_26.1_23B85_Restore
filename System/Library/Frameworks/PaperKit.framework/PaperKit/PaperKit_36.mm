id PKStrokeCoherenceBase.__allocating_init(ink:strokePath:transform:mask:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v13 = objc_allocWithZone(v5);
  isa = PKInk._bridgeToObjectiveC()().super.isa;
  v15 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v16 = *(a3 + 16);
  v21[0] = *a3;
  v21[1] = v16;
  v22 = v11;
  v23 = v12;
  v17 = [v13 initWithInk:isa strokePath:v15 transform:v21 mask:a4 randomSeed:a5];

  v18 = type metadata accessor for PKStrokePath();
  (*(*(v18 - 8) + 8))(a2, v18);
  v19 = type metadata accessor for PKInk();
  (*(*(v19 - 8) + 8))(a1, v19);
  return v17;
}

id PKStrokeCoherenceBase.__allocating_init(data:id:flags:ink:transform:substrokes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = *(a5 + 4);
  v11 = *(a5 + 5);
  v12 = objc_allocWithZone(v5);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v14 = UUID._bridgeToObjectiveC()().super.isa;
  v15 = PKInk._bridgeToObjectiveC()().super.isa;
  type metadata accessor for PKStroke();
  v22 = a5[1];
  v23 = *a5;
  v16 = Array._bridgeToObjectiveC()().super.isa;

  v25[0] = v23;
  v25[1] = v22;
  v26 = v10;
  v27 = v11;
  v17 = [v12 initWithData:isa id:v14 flags:a3 ink:v15 transform:v25 substrokes:v16];

  v18 = type metadata accessor for PKInk();
  (*(*(v18 - 8) + 8))(a4, v18);
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 8))(a2, v19);
  v20 = type metadata accessor for PKStrokePath();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v17;
}

id PKStrokeProviderSliceIdentifierCoherence.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t PKStrokeCoherenceSubstrokes.newShared(in:flatten:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v67 = a2;
  v81 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v81);
  v76 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v79 = v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v9 = *(v8 - 8);
  v74 = v8;
  v75 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v73 = v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v66 = v58 - v12;
  v82 = type metadata accessor for UUID();
  v13 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v63 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v70 = *(v20 - 8);
  v21 = v70;
  MEMORY[0x1EEE9AC00](v20);
  v72 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v58 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v26 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v28 = v58 - v27;
  v29 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
  swift_beginAccess();
  v68 = *(v21 + 16);
  v68(v25, v2 + v29, v20);
  v30 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v31 = *(v13 + 16);
  v62 = v30;
  v65 = v13 + 16;
  v61 = v31;
  v31(v15, v2 + v30, v82);
  v32 = v83;

  v33 = v69;
  v64 = v15;
  CRKeyPath.init(_:)();
  v34 = type metadata accessor for CRKeyPath();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v60 = v34;
  v59 = v36;
  v58[1] = v35 + 56;
  (v36)(v33, 0, 1);
  v37 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v38 = v25;
  v39 = v2;
  v40 = v33;
  v41 = v74;
  v69 = v37;
  MEMORY[0x1DA6CC020](v32, v38, v40, v20);
  v42 = v28;
  v43 = v76;
  (*(v26 + 8))(v42, v71);
  v44 = v73;
  (*(v75 + 16))(v73, v2 + OBJC_IVAR___PKStrokeCoherenceSubstrokes_substrokes, v41);
  v45 = v72;
  v68(v72, v2 + v29, v20);
  v46 = v79;
  CRRegister.value.getter();
  (*(v70 + 8))(v45, v20);
  _s8PaperKit12TaggedStrokeOWObTm_1(v46, v43, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v77;
    v47 = v78;
    v49 = v80;
    (*(v77 + 32))(v80, v43, v78);
    v50 = 0;
    v51 = v49;
  }

  else
  {
    _s8PaperKit12TaggedStrokeOWOhTm_1(v43, type metadata accessor for TaggedStroke);
    v50 = 1;
    v48 = v77;
    v47 = v78;
    v51 = v80;
  }

  (*(v48 + 56))(v51, v50, 1, v47);
  result = (*(v48 + 48))(v51, 1, v47);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v53 = v63;
    Ref.id.getter();
    v54 = *(v48 + 8);
    v54(v51, v47);
    v59(v53, 0, 1, v60);
    v55 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>> and conformance CRSequence<A>, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);

    v57 = v66;
    MEMORY[0x1DA6CC020](v56, v44, v53, v41, v55);
    v54(v57, v47);
    v61(v64, v39 + v62, v82);
    return Ref.init(id:)();
  }

  return result;
}

uint64_t one-time initialization function for substrokesInkType()
{
  v0 = type metadata accessor for PKInkingTool.InkType();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PKInk();
  __swift_allocate_value_buffer(v4, static PKStrokeCoherenceSubstrokes.substrokesInkType);
  __swift_project_value_buffer(v4, static PKStrokeCoherenceSubstrokes.substrokesInkType);
  (*(v1 + 104))(v3, *MEMORY[0x1E6978328], v0);
  v5 = [objc_opt_self() blackColor];
  return PKInk.init(_:color:)();
}

uint64_t PKStrokeCoherenceSubstrokes._substrokes(in:)(uint64_t a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v2 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v52 - v3;
  v70 = type metadata accessor for PKStroke();
  v73 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v61 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v60 = (&v52 - v13);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v58 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = type metadata accessor for PKDrawing();
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(&v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v22, v23);
  type metadata accessor for PKDrawingCoherence(0);
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v56 = v2;
  v74 = v76;
  v55 = v17;
  v59 = v16;
  v26 = *(v17 + 16);
  v26(v21, &v69[OBJC_IVAR___PKStrokeCoherenceSubstrokes_substrokes], v16);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>> and conformance CRSequence<A>, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v27 = dispatch thunk of Sequence.underestimatedCount.getter();
  v77 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  v28 = v77;
  v54 = v21;
  v26(v66, v21, v59);
  v69 = v15;
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v53 = v12;
    if (v27)
    {
      v64 = OBJC_IVAR___PKDrawingCoherence_model;
      swift_beginAccess();
      v66 = (v61 + 48);
      v30 = (v56 + 8);
      v31 = (v61 + 8);
      v62 = v73 + 32;
      v63 = (v56 + 16);
      v65 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CRSequence<A>.Iterator, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
      v32 = v68;
      while (1)
      {
        dispatch thunk of IteratorProtocol.next()();
        result = (*v66)(v9, 1, v32);
        if (result == 1)
        {
          goto LABEL_21;
        }

        v34 = v71;
        v33 = v72;
        (*v63)(v71, &v64[v74], v72);
        v35 = v67;
        _s8PaperKit21PKStrokeCoherenceBaseC10initStroke13strokeNodeRef2in06PencilB00C0V0D00J0VyAJ10CRRegisterVyAA06TaggedG0OGG_AJ7CapsuleVyxGtAJ4CRDTRzlFZAA15PKDrawingStructV_Tt2g5(v9, v34, v67);
        (*v30)(v34, v33);
        (*v31)(v9, v32);
        v77 = v28;
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1);
          v28 = v77;
        }

        *(v28 + 16) = v37 + 1;
        (*(v73 + 32))(v28 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v37, v35, v70);
        --v27;
        v32 = v68;
        if (!v27)
        {
          goto LABEL_12;
        }
      }
    }

    v32 = v68;
LABEL_12:
    v68 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v38 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CRSequence<A>.Iterator, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
    v39 = v53;
    v40 = v69;
    v67 = v38;
    dispatch thunk of IteratorProtocol.next()();
    v41 = v61;
    v65 = *(v61 + 48);
    v66 = (v61 + 48);
    if (v65(v39, 1, v32) != 1)
    {
      v64 = *(v41 + 32);
      v42 = (v56 + 16);
      v43 = (v56 + 8);
      v61 = v41 + 32;
      v44 = (v41 + 8);
      v63 = (v73 + 32);
      v45 = v57;
      do
      {
        v46 = v60;
        (v64)(v60, v39, v32);
        v47 = v32;
        v49 = v71;
        v48 = v72;
        (*v42)(v71, &v74[v68], v72);
        _s8PaperKit21PKStrokeCoherenceBaseC10initStroke13strokeNodeRef2in06PencilB00C0V0D00J0VyAJ10CRRegisterVyAA06TaggedG0OGG_AJ7CapsuleVyxGtAJ4CRDTRzlFZAA15PKDrawingStructV_Tt2g5(v46, v49, v45);
        (*v43)(v49, v48);
        (*v44)(v46, v47);
        v77 = v28;
        v51 = *(v28 + 16);
        v50 = *(v28 + 24);
        if (v51 >= v50 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1);
          v28 = v77;
        }

        *(v28 + 16) = v51 + 1;
        (*(v73 + 32))(v28 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v51, v45, v70);
        v40 = v69;
        dispatch thunk of IteratorProtocol.next()();
        v32 = v47;
      }

      while (v65(v39, 1, v47) != 1);
    }

    (*(v58 + 8))(v40, v75);
    (*(v55 + 8))(v54, v59);
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
    return v28;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::String __swiftcall PKStrokeCoherenceSubstrokes.description(atDepth:)(Swift::Int atDepth)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, atDepth);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v18[1] = v2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  v10 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v10, v4);
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1DA6CD010](v11);

  (*(v5 + 8))(v7, v4);
  countAndFlagsBits = v19._countAndFlagsBits;
  object = v19._object;
  v19 = v9;

  MEMORY[0x1DA6CD010](countAndFlagsBits, object);

  v16 = v19;
  v15 = v16._object;
  v14 = v16._countAndFlagsBits;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

id PKStrokeCoherenceSubstrokes.concreteStroke(in:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PKInk();
  v71 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v68 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PKStroke();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = v59 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v64 = v59 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v63 = v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = v59 - v18;
  v19 = type metadata accessor for PKStrokePath();
  v20 = *(v19 - 8);
  *&v21 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v24 = [v2 _substrokesInDrawing_];
  v73 = v8;
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = *(v25 + 16);
  v72 = v4;
  v70 = v6;
  v74 = v19;
  v66 = v9;
  if (v26)
  {
    v60 = v23;
    v61 = v20;
    v62 = v2;
    v82[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v27 = v82[0];
    v78 = *(v9 + 16);
    v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v59[1] = v25;
    v77 = v28;
    v29 = v25 + v28;
    v30 = *(v9 + 72);
    v75 = (v9 + 8);
    v76 = v30;
    v31 = (v9 + 32);
    v32 = v73;
    v33 = v64;
    do
    {
      v35 = v78;
      v34 = v79;
      v78(v79, v29, v32);
      v35(v80, v34, v32);
      type metadata accessor for PKStrokeCoherenceBase(0);
      swift_dynamicCast();
      v36 = v83;
      v37 = (*((*MEMORY[0x1E69E7D40] & *v83) + 0xA8))(v81);

      static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
      (*v75)(v34, v32);
      v82[0] = v27;
      v38 = v32;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1);
        v33 = v64;
        v27 = v82[0];
      }

      *(v27 + 16) = v40 + 1;
      v41 = v76;
      (*v31)(v27 + v77 + v40 * v76, v33, v38);
      v29 += v41;
      --v26;
      v32 = v38;
    }

    while (v26);

    v2 = v62;
    v19 = v74;
    v20 = v61;
    v23 = v60;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v42 = v66;
  if (*(v27 + 16))
  {
    v43 = v63;
    v44 = v73;
    (*(v66 + 16))(v63, v27 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v73);
    v45 = v65;
    PKStroke.path.getter();
    (*(v42 + 8))(v43, v44);
    (*(v20 + 56))(v45, 0, 1, v19);
    (*(v20 + 32))(v23, v45, v19);
  }

  else
  {
    v46 = v65;
    (*(v20 + 56))(v65, 1, 1, v19);
    PKStrokePath.init()();
    if ((*(v20 + 48))(v46, 1, v19) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9PencilKit12PKStrokePathVSgMd);
    }
  }

  v47 = [v2 _strokeUUID];
  v48 = v67;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = [v2 _flags];
  v49 = [v2 ink];
  v50 = v69;
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = objc_allocWithZone(MEMORY[0x1E6978588]);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v53 = v23;
  v54 = UUID._bridgeToObjectiveC()().super.isa;
  v55 = PKInk._bridgeToObjectiveC()().super.isa;
  v56 = Array._bridgeToObjectiveC()().super.isa;

  v82[0] = 0x3FF0000000000000;
  v82[1] = 0;
  v82[2] = 0;
  v82[3] = 0x3FF0000000000000;
  v82[4] = 0;
  v82[5] = 0;
  v57 = [v51 initWithData:isa id:v54 flags:v81 ink:v55 transform:v82 substrokes:v56];

  (*(v71 + 8))(v50, v72);
  (*(v68 + 8))(v48, v70);
  (*(v20 + 8))(v53, v74);
  return v57;
}

uint64_t PKStrokeCoherenceSubstrokes.__ivar_destroyer()
{
  v1 = OBJC_IVAR___PKStrokeCoherenceSubstrokes_substrokes;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t key path setter for PKStrokeCoherence._path : PKStrokeCoherence(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t (*a8)(void))
{
  v13 = a5(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  outlined init with copy of PKStrokeStruct(a1, &v19 - v14, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  outlined assign with take of PKStrokePathStruct(v15, v16 + v17, a8);
  return swift_endAccess();
}

uint64_t PKStrokeCoherence._path.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return outlined init with copy of PKStrokeStruct(v3 + v6, a3, a2);
}

uint64_t PKStrokeCoherence._path.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  outlined assign with take of PKStrokePathStruct(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t PKStrokeCoherenceSubstrokes.shared.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  return Ref.init(id:)();
}

uint64_t PKStrokeCoherence.newShared(in:flatten:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v161 = a2;
  v178 = a1;
  v148 = a3;
  v167 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v167);
  v140 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v138 = &v127 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v127 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v127 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v141 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v127 - v15;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v130 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v129 = &v127 - v18;
  v164 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v164);
  v171 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v162 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v163 = &v127 - v22;
  v176 = type metadata accessor for PKStrokeProperties(0) - 8;
  MEMORY[0x1EEE9AC00](v176);
  v155 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v175);
  v135 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v134 = &v127 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v133 = &v127 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v150 = &v127 - v30;
  v156 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v156);
  v177 = (&v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v154 = &v127 - v34;
  v174 = type metadata accessor for UUID();
  v35 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v37 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v128 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v127 = &v127 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v127 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v132 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v131 = &v127 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v127 - v51;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v53 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v55 = &v127 - v54;
  v56 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
  swift_beginAccess();
  v160 = v46;
  v57 = *(v46 + 16);
  v159 = v56;
  v58 = v4 + v56;
  v59 = v44;
  v158 = v46 + 16;
  v157 = v57;
  v57(v52, v58, v45);
  v60 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v61 = *(v35 + 16);
  v145 = v60;
  v62 = v4;
  v147 = v35 + 16;
  v143 = v61;
  v61(v37, v4 + v60, v174);
  v63 = v178;

  v146 = v37;
  CRKeyPath.init(_:)();
  v64 = type metadata accessor for CRKeyPath();
  v65 = *(v64 - 8);
  v66 = *(v65 + 56);
  v170 = v65 + 56;
  v66(v59, 0, 1, v64);
  v67 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v173 = v45;
  v144 = v67;
  MEMORY[0x1DA6CC020](v63, v52, v59, v45);
  (*(v53 + 8))(v55, v172);
  v68 = v150;
  v69 = OBJC_IVAR___PKStrokeCoherence__path;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v62 + v69, v177, type metadata accessor for PKStrokePathStruct);
  v70 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  v172 = v62;
  v149 = v70;
  outlined init with copy of PKStrokeStruct(v62 + v70, v68, type metadata accessor for PKStrokeStruct);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v71 = v155;
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v68, type metadata accessor for PKStrokeStruct);
  v72 = v152;
  v73 = v151;
  v74 = v153;
  (*(v152 + 16))(v151, v71 + *(v176 + 40), v153);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v71, type metadata accessor for PKStrokeProperties);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokePathStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  Reference.identity.getter();
  v75 = *(v72 + 8);
  v75(v73, v74);
  v176 = v66;
  v66(v59, 0, 1, v64);
  v76 = lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);
  v77 = v154;
  MEMORY[0x1DA6CC020](v63, v177, v59, v156, v76);
  v75(v77, v74);
  v142 = v64;
  if (v161)
  {
    v78 = v172;
    v79 = v133;
    outlined init with copy of PKStrokeStruct(v172 + v149, v133, type metadata accessor for PKStrokeStruct);
    v80 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
    swift_beginAccess();
    v81 = v78 + v80;
    v82 = v171;
    outlined init with copy of PKStrokeStruct(v81, v171, type metadata accessor for PKStrokeInheritedProperties);
    v83 = v178;

    static CRKeyPath.unique.getter();
    (v176)(v59, 0, 1, v64);
    v84 = lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
    v85 = v163;
    MEMORY[0x1DA6CC020](v83, v82, v59, v164, v84);
    v86 = v165;
    v87 = v166;
    (*(v165 + 16))(v162, v85, v166);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.setter();
    (*(v86 + 8))(v85, v87);
    v88 = v134;
    outlined init with copy of PKStrokeStruct(v79, v134, type metadata accessor for PKStrokeStruct);
    v89 = v131;
    v90 = v173;
    v157(v131, v78 + v159, v173);
    v91 = v136;
    CRRegister.value.getter();
    (*(v160 + 8))(v89, v90);
    v92 = v137;
    _s8PaperKit12TaggedStrokeOWObTm_1(v91, v137, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload())
    {
      _s8PaperKit12TaggedStrokeOWOhTm_1(v92, type metadata accessor for TaggedStroke);
      v93 = 1;
      v94 = v169;
      v95 = v168;
      v96 = v139;
    }

    else
    {
      v95 = v168;
      v96 = v139;
      v94 = v169;
      (*(v168 + 32))(v139, v92, v169);
      v93 = 0;
    }

    (*(v95 + 56))(v96, v93, 1, v94);
    result = (*(v95 + 48))(v96, 1, v94);
    if (result != 1)
    {
      v116 = v127;
      Ref.id.getter();
      v117 = *(v95 + 8);
      v117(v96, v94);
      (v176)(v116, 0, 1, v142);
      v118 = lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);

      v120 = v129;
      MEMORY[0x1DA6CC020](v119, v88, v116, v175, v118);
      v117(v120, v94);
      _s8PaperKit12TaggedStrokeOWOhTm_1(v79, type metadata accessor for PKStrokeStruct);
LABEL_12:
      v143(v146, v172 + v145, v174);
      return Ref.init(id:)();
    }

    __break(1u);
  }

  else
  {
    v97 = OBJC_IVAR___PKStrokeCoherence_inheritedProperties;
    v98 = v172;
    swift_beginAccess();
    outlined init with copy of PKStrokeStruct(v98 + v97, v171, type metadata accessor for PKStrokeInheritedProperties);
    v177 = type metadata accessor for PKStrokeStruct;
    v99 = v149;
    outlined init with copy of PKStrokeStruct(v98 + v149, v68, type metadata accessor for PKStrokeStruct);
    v100 = v178;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    v101 = v162;
    CRRegister.wrappedValue.getter();
    _s8PaperKit12TaggedStrokeOWOhTm_1(v68, type metadata accessor for PKStrokeStruct);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
    v102 = v166;
    Reference.identity.getter();
    v103 = *(v165 + 8);
    v103(v101, v102);
    (v176)(v59, 0, 1, v64);
    v104 = lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
    v105 = v163;
    MEMORY[0x1DA6CC020](v100, v171, v59, v164, v104);
    v103(v105, v102);
    v106 = v135;
    outlined init with copy of PKStrokeStruct(v98 + v99, v135, v177);
    v107 = v132;
    v108 = v173;
    v157(v132, v98 + v159, v173);
    v109 = v138;
    CRRegister.value.getter();
    (*(v160 + 8))(v107, v108);
    v110 = v140;
    _s8PaperKit12TaggedStrokeOWObTm_1(v109, v140, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload())
    {
      _s8PaperKit12TaggedStrokeOWOhTm_1(v110, type metadata accessor for TaggedStroke);
      v111 = 1;
      v112 = v169;
      v113 = v168;
      v114 = v141;
    }

    else
    {
      v113 = v168;
      v114 = v141;
      v112 = v169;
      (*(v168 + 32))(v141, v110, v169);
      v111 = 0;
    }

    (*(v113 + 56))(v114, v111, 1, v112);
    result = (*(v113 + 48))(v114, 1, v112);
    v121 = v176;
    if (result != 1)
    {
      v122 = v128;
      Ref.id.getter();
      v123 = *(v113 + 8);
      v123(v114, v112);
      v121(v122, 0, 1, v142);
      v124 = lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);

      v126 = v130;
      MEMORY[0x1DA6CC020](v125, v106, v122, v175, v124);
      v123(v126, v112);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void one-time initialization function for defaultInk()
{
  v0 = *MEMORY[0x1E69785C0];
  v1 = [objc_opt_self() blackColor];
  v2 = [objc_opt_self() inkWithIdentifier:v0 color:v1 weight:0.0];

  static PKStrokeCoherence.defaultInk = v2;
}

uint64_t _s8PaperKit12TaggedStrokeOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of PKStrokePathStruct(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id PKStrokeCoherence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKStrokeCoherence.init()()
{
  v1 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v78 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v69 - v6;
  v73 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v73);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v17 = *(v16 - 8);
  v92 = v16;
  v93 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v69 - v20;
  v89 = type metadata accessor for UUID();
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v26 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  PKStrokePath.init()();
  _s8PaperKit12TaggedStrokeOWObTm_1(v31, &v0[OBJC_IVAR___PKStrokeCoherence__path], type metadata accessor for PKStrokePathStruct);
  if (one-time initialization token for defaultInk != -1)
  {
    swift_once();
  }

  v32 = static PKStrokeCoherence.defaultInk;
  v96 = 0x3FF0000000000000uLL;
  *&v97 = 0;
  *(&v97 + 1) = 0x3FF0000000000000;
  v98 = 0uLL;
  v33 = static PKStrokeCoherence.defaultInk;
  PKStrokeInheritedProperties.init(ink:transform:)(v32, &v96, v28);
  v34 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  _s8PaperKit12TaggedStrokeOWObTm_1(v28, &v0[OBJC_IVAR___PKStrokeCoherence_resolvedProperties], type metadata accessor for PKStrokeInheritedProperties);
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(&v0[v34], &v0[OBJC_IVAR___PKStrokeCoherence_inheritedProperties], type metadata accessor for PKStrokeInheritedProperties);
  v85 = v25;
  UUID.init()();
  v35 = v22;
  UUID.init()();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);
  v36 = v88;
  Ref.init(id:)();
  v84 = v35;
  UUID.init()();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
  v37 = v90;
  Ref.init(id:)();
  v38 = *(v94 + 16);
  v39 = v87;
  v38(v87, v37, v10);
  v72 = v0;
  v70 = *(v93 + 16);
  v70(v86, v36, v92);
  v40 = v10;
  v41 = *(v76 + 24);
  type metadata accessor for PKStrokeStructCache();
  v42 = swift_allocObject();
  v43 = *(MEMORY[0x1E695F050] + 16);
  *(v42 + 16) = *MEMORY[0x1E695F050];
  *(v42 + 32) = v43;
  v44 = v97;
  *(v42 + 56) = v96;
  *(v42 + 48) = 0;
  *(v42 + 72) = v44;
  *(v42 + 88) = v98;
  *(v42 + 104) = 0;
  v45 = v75;
  *&v75[v41] = v42;
  UnknownProperties.init()();
  v38(v74, v39, v10);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v71 = v10;
  CRRegister.init(_:)();
  v46 = v73;
  v47 = v91[7];
  v48 = v89;
  v47(&v8[*(v73 + 20)], 1, 1, v89);
  v47(&v8[v46[6]], 1, 1, v48);
  type metadata accessor for PKStrokeMaskStruct();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v8 = 0;
  *&v8[v46[7]] = 0;
  v50 = v86;
  v51 = v92;
  v70(&v8[v46[8]], v86, v92);
  *&v8[v46[9]] = 0;
  v52 = &v8[v46[10]];
  *v52 = 0u;
  *(v52 + 1) = 0u;
  v52[32] = 1;
  v53 = &v8[v46[11]];
  *(v53 + 1) = 0u;
  *(v53 + 2) = 0u;
  *v53 = 0u;
  v53[48] = 1;
  *&v8[v46[12]] = v49;
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
  CRRegister.init(_:)();
  v54 = *(v93 + 8);
  v93 += 8;
  v74 = v54;
  (v54)(v50, v51);
  v55 = *(v94 + 8);
  v94 += 8;
  v86 = v55;
  (v55)(v87, v40);
  v56 = v72;
  _s8PaperKit12TaggedStrokeOWObTm_1(v45, &v72[OBJC_IVAR___PKStrokeCoherence_model], type metadata accessor for PKStrokeStruct);
  v87 = v91[2];
  v57 = v84;
  v58 = v89;
  (v87)(v84, v85, v89);
  CRKeyPath.init(_:)();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);
  Ref.init(id:)();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type TaggedStroke and conformance TaggedStroke, type metadata accessor for TaggedStroke);
  v59 = v80;
  CRRegister.init(_:)();
  UUID.init()();
  v60 = v82;
  v61 = *(v82 + 16);
  v62 = v81;
  v63 = v83;
  v61(v81, v59, v83);
  (v87)(&v56[OBJC_IVAR___PKStrokeCoherenceBase_identity], v57, v58);
  v61(&v56[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v62, v63);
  v64 = type metadata accessor for PKStrokeCoherenceBase(0);
  v95.receiver = v56;
  v95.super_class = v64;
  v65 = objc_msgSendSuper2(&v95, sel_init);
  v66 = *(v60 + 8);
  v66(v62, v63);
  v67 = v91[1];
  v67(v84, v58);
  v66(v59, v63);
  (v86)(v90, v71);
  (v74)(v88, v92);
  v67(v85, v58);
  return v65;
}

uint64_t _s8PaperKit12TaggedStrokeOWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id PKStrokeCoherenceBase.__allocating_init(ink:strokePath:transform:mask:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a3 + 32);
  v10 = *(a3 + 40);
  v11 = objc_allocWithZone(v4);
  isa = PKInk._bridgeToObjectiveC()().super.isa;
  v13 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v14 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v14;
  v20 = v9;
  v21 = v10;
  v15 = [v11 initWithInk:isa strokePath:v13 transform:v19 mask:a4];

  v16 = type metadata accessor for PKStrokePath();
  (*(*(v16 - 8) + 8))(a2, v16);
  v17 = type metadata accessor for PKInk();
  (*(*(v17 - 8) + 8))(a1, v17);
  return v15;
}

id PKStrokeCoherence.init(ink:strokePath:transform:mask:)(char *a1, char *a2, __int128 *a3, void *a4)
{
  v112 = a4;
  v103 = a3;
  v129 = a1;
  v96 = type metadata accessor for PKStroke();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v93 - v11;
  v115 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v115);
  v104 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v114);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v134 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v99 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v93 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v133 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v123 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v93 - v22;
  v23 = type metadata accessor for PKInk();
  v126 = v23;
  v105 = *(v23 - 8);
  v24 = v105;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for UUID();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v130 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v124 = &v93 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v93 - v31;
  v32 = type metadata accessor for PKStrokePath();
  v132 = *(v32 - 8);
  v33 = v132;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v33 + 16);
  v102 = v36;
  v113 = a2;
  v128 = v32;
  v37(v36, a2, v32, v34);
  UUID.init()();
  v38 = *(v24 + 16);
  v101 = v26;
  v38(v26, v129, v23);
  v39 = objc_allocWithZone(type metadata accessor for PKStrokeCoherence(0));
  UUID.init()();
  UUID.init()();
  type metadata accessor for PKStrokePathStruct(0);
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);
  v40 = v121;
  Ref.init(id:)();
  UUID.init()();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
  v41 = v122;
  Ref.init(id:)();
  (v37)(&v39[OBJC_IVAR___PKStrokeCoherence__path], v36, v32);
  v42.super.isa = PKInk._bridgeToObjectiveC()().super.isa;
  v43 = v98;
  PKStrokeInheritedProperties.init(ink:transform:)(v42.super.isa, v103, v98);
  v44 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  _s8PaperKit12TaggedStrokeOWObTm_1(v43, &v39[OBJC_IVAR___PKStrokeCoherence_resolvedProperties], type metadata accessor for PKStrokeInheritedProperties);
  swift_beginAccess();
  v116 = v39;
  outlined init with copy of PKStrokeStruct(&v39[v44], &v39[OBJC_IVAR___PKStrokeCoherence_inheritedProperties], type metadata accessor for PKStrokeInheritedProperties);
  v45 = *(v134 + 16);
  v46 = v117;
  v47 = v120;
  v45(v117, v41, v120);
  v103 = *(v133 + 16);
  (v103)(v123, v40, v131);
  v48 = *(v114 + 24);
  type metadata accessor for PKStrokeStructCache();
  v49 = swift_allocObject();
  v50 = *(MEMORY[0x1E695F050] + 16);
  *(v49 + 16) = *MEMORY[0x1E695F050];
  *(v49 + 32) = v50;
  *(v49 + 48) = 0;
  *(v49 + 56) = 0x3FF0000000000000;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  *(v49 + 80) = 0x3FF0000000000000;
  *(v49 + 88) = 0;
  *(v49 + 96) = 0;
  *(v49 + 104) = 0;
  v51 = v100;
  *&v100[v48] = v49;
  v52 = v51;
  UnknownProperties.init()();
  v45(v99, v46, v47);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  CRRegister.init(_:)();
  v53 = v115;
  v54 = v118;
  v55 = *(v118 + 56);
  v56 = v104;
  v57 = v119;
  v55(&v104[*(v115 + 20)], 1, 1, v119);
  v55(&v56[v53[6]], 1, 1, v57);
  v58 = type metadata accessor for PKStrokeMaskStruct();
  swift_allocObject();
  v99 = v58;
  swift_deallocPartialClassInstance();
  v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v56 = 0;
  *&v56[v53[7]] = 0;
  v60 = v123;
  v61 = v131;
  (v103)(&v56[v53[8]], v123, v131);
  *&v56[v53[9]] = 0;
  v62 = &v56[v53[10]];
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v62[32] = 1;
  v63 = &v56[v53[11]];
  *(v63 + 1) = 0u;
  *(v63 + 2) = 0u;
  *v63 = 0u;
  v63[48] = 1;
  *&v56[v53[12]] = v59;
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
  CRRegister.init(_:)();
  v64 = *(v133 + 8);
  v133 += 8;
  v104 = v64;
  (v64)(v60, v61);
  v65 = *(v134 + 8);
  v134 += 8;
  v123 = v65;
  (v65)(v117, v47);
  _s8PaperKit12TaggedStrokeOWObTm_1(v52, &v116[OBJC_IVAR___PKStrokeCoherence_model], type metadata accessor for PKStrokeStruct);
  v66 = *(v54 + 16);
  v67 = v130;
  v68 = v119;
  v66(v130, v124, v119);
  CRKeyPath.init(_:)();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);
  Ref.init(id:)();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type TaggedStroke and conformance TaggedStroke, type metadata accessor for TaggedStroke);
  v69 = v127;
  CRRegister.init(_:)();
  v66(v67, v125, v68);
  v70 = v110;
  v71 = *(v110 + 16);
  v72 = v109;
  v73 = v69;
  v74 = v111;
  v71(v109, v73, v111);
  v75 = v116;
  v66(&v116[OBJC_IVAR___PKStrokeCoherenceBase_identity], v67, v68);
  v71(&v75[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v72, v74);
  v76 = type metadata accessor for PKStrokeCoherenceBase(0);
  v136.receiver = v75;
  v136.super_class = v76;
  v77 = objc_msgSendSuper2(&v136, sel_init);
  v78 = *(v70 + 8);
  v78(v72, v74);
  v79 = *(v118 + 8);
  v79(v130, v68);
  v78(v127, v74);
  (v123)(v122, v120);
  v80 = v105;
  (v104)(v121, v131);
  v79(v124, v68);
  v81 = *(v80 + 8);
  v81(v101, v126);
  v79(v125, v68);
  v82 = *(v132 + 8);
  v132 += 8;
  v82(v102, v128);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  if (v112)
  {
    v83 = v112;
    v84 = v94;
    static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = objc_allocWithZone(MEMORY[0x1E69784E0]);
    isa = PKStroke._bridgeToObjectiveC()().super.isa;
    v87 = [v85 initWithBezierPath:v83 stroke:isa];

    (*(v95 + 8))(v84, v96);
    v88 = swift_allocObject();
    if (v87)
    {
      type metadata accessor for PKStrokeMaskWrapper();
      v89 = swift_allocObject();
      *(v89 + 16) = v87;
      *(v88 + 16) = v89;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v88 = 0;
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    v90 = CRRegister.wrappedValue.modify();
    *(v91 + *(v115 + 36)) = v88;
    v90(v135, 0);
    swift_endAccess();
  }

  v82(v113, v128);
  v81(v129, v126);
  return v77;
}

void PKStrokeCoherence.parentStrokeForInsertion(in:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v78 - v8;
  v91 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v107);
  v89 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v81);
  v82 = (&v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v113 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v78 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v112 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v108 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  v93 = type metadata accessor for PKInk();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for UUID();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v109 = &v78 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v78 - v28;
  v29 = type metadata accessor for PKStrokePath();
  v87 = v29;
  v88 = *(v29 - 8);
  v30 = v88;
  *&v31 = MEMORY[0x1EEE9AC00](v29).n128_u64[0];
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [v2 path];
  v86 = v33;
  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init()();
  v35 = [v2 ink];
  v85 = v22;
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  v115 = 0x3FF0000000000000uLL;
  *&v116 = 0;
  *(&v116 + 1) = 0x3FF0000000000000;
  v36 = type metadata accessor for PKStrokeCoherence(0);
  v117 = 0uLL;
  v37 = objc_allocWithZone(v36);
  UUID.init()();
  UUID.init()();
  type metadata accessor for PKStrokePathStruct(0);
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);
  v38 = v20;
  v83 = v20;
  Ref.init(id:)();
  v80 = v24;
  UUID.init()();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
  v39 = v104;
  Ref.init(id:)();
  (*(v30 + 16))(&v37[OBJC_IVAR___PKStrokeCoherence__path], v33, v29);
  v40.super.isa = PKInk._bridgeToObjectiveC()().super.isa;
  v41 = v82;
  PKStrokeInheritedProperties.init(ink:transform:)(v40.super.isa, &v115, v82);
  v42 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  _s8PaperKit12TaggedStrokeOWObTm_1(v41, &v37[OBJC_IVAR___PKStrokeCoherence_resolvedProperties], type metadata accessor for PKStrokeInheritedProperties);
  swift_beginAccess();
  v79 = v37;
  outlined init with copy of PKStrokeStruct(&v37[v42], &v37[OBJC_IVAR___PKStrokeCoherence_inheritedProperties], type metadata accessor for PKStrokeInheritedProperties);
  v43 = *(v113 + 16);
  v44 = v102;
  v45 = v106;
  v43(v102, v39, v106);
  v82 = *(v112 + 16);
  v46 = v101;
  (v82)(v108, v38, v101);
  v47 = *(v107 + 24);
  type metadata accessor for PKStrokeStructCache();
  v48 = swift_allocObject();
  v49 = *(MEMORY[0x1E695F050] + 16);
  *(v48 + 16) = *MEMORY[0x1E695F050];
  *(v48 + 32) = v49;
  v50 = v116;
  *(v48 + 56) = v115;
  *(v48 + 48) = 0;
  *(v48 + 72) = v50;
  *(v48 + 88) = v117;
  *(v48 + 104) = 0;
  v51 = v89;
  *&v89[v47] = v48;
  UnknownProperties.init()();
  v43(v84, v44, v45);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v52 = v45;
  CRRegister.init(_:)();
  v53 = v91;
  v54 = v103;
  v55 = *(v103 + 56);
  v56 = v90;
  v57 = v105;
  v55(&v90[*(v91 + 20)], 1, 1, v105);
  v55(&v56[v53[6]], 1, 1, v57);
  type metadata accessor for PKStrokeMaskStruct();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v56 = 0;
  *&v56[v53[7]] = 0;
  v59 = v108;
  (v82)(&v56[v53[8]], v108, v46);
  *&v56[v53[9]] = 0;
  v60 = &v56[v53[10]];
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v60[32] = 1;
  v61 = &v56[v53[11]];
  *(v61 + 1) = 0u;
  *(v61 + 2) = 0u;
  *v61 = 0u;
  v61[48] = 1;
  *&v56[v53[12]] = v58;
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
  CRRegister.init(_:)();
  v62 = *(v112 + 8);
  v112 += 8;
  v91 = v62;
  v62(v59, v46);
  v63 = *(v113 + 8);
  v113 += 8;
  v108 = v63;
  (v63)(v102, v52);
  v64 = v79;
  _s8PaperKit12TaggedStrokeOWObTm_1(v51, &v79[OBJC_IVAR___PKStrokeCoherence_model], type metadata accessor for PKStrokeStruct);
  v65 = *(v54 + 16);
  v66 = v80;
  v67 = v105;
  v65(v80, v109, v105);
  CRKeyPath.init(_:)();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);
  Ref.init(id:)();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type TaggedStroke and conformance TaggedStroke, type metadata accessor for TaggedStroke);
  v68 = v111;
  CRRegister.init(_:)();
  v65(v66, v110, v67);
  v69 = v98;
  v70 = *(v98 + 16);
  v71 = v96;
  v72 = v68;
  v73 = v99;
  v70(v96, v72, v99);
  v65(&v64[OBJC_IVAR___PKStrokeCoherenceBase_identity], v66, v67);
  v70(&v64[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v71, v73);
  v74 = type metadata accessor for PKStrokeCoherenceBase(0);
  v114.receiver = v64;
  v114.super_class = v74;
  v75 = objc_msgSendSuper2(&v114, sel_init);
  v76 = *(v69 + 8);
  v76(v71, v73);
  v77 = *(v103 + 8);
  v77(v66, v67);
  v76(v111, v73);
  (v108)(v104, v106);
  (v91)(v83, v101);
  v77(v109, v67);
  (*(v92 + 8))(v85, v93);
  v77(v110, v67);
  (*(v88 + 8))(v86, v87);
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t PKStrokeCoherence.mutableCopy(with:)@<X0>(void *a1@<X8>)
{
  v56 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v54 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v60 = v45 - v4;
  v5 = type metadata accessor for UUID();
  v59 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v45 - v8;
  v48 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v48);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v45 - v13);
  v15 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  v52 = type metadata accessor for PKStrokeStruct;
  outlined init with copy of PKStrokeStruct(v1 + v21, v20, type metadata accessor for PKStrokeStruct);
  v22 = OBJC_IVAR___PKStrokeCoherence__path;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v22, v17, type metadata accessor for PKStrokePathStruct);
  v23 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v23, v14, type metadata accessor for PKStrokeInheritedProperties);
  v24 = OBJC_IVAR___PKStrokeCoherence_inheritedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v24, v11, type metadata accessor for PKStrokeInheritedProperties);
  v25 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v26 = *(v59 + 16);
  v58 = v9;
  v55 = v5;
  v47 = v26;
  v26(v9, (v1 + v25), v5);
  v27 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
  swift_beginAccess();
  v46 = *(v61 + 16);
  v45[1] = v61 + 16;
  v46(v60, v1 + v27, v62);
  v49 = type metadata accessor for PKStrokeCoherence(0);
  v28 = objc_allocWithZone(v49);
  v50 = v20;
  outlined init with copy of PKStrokeStruct(v20, &v28[OBJC_IVAR___PKStrokeCoherence_model], v52);
  v51 = v17;
  outlined init with copy of PKStrokeStruct(v17, &v28[OBJC_IVAR___PKStrokeCoherence__path], type metadata accessor for PKStrokePathStruct);
  v52 = v14;
  outlined init with copy of PKStrokeStruct(v14, &v28[OBJC_IVAR___PKStrokeCoherence_resolvedProperties], type metadata accessor for PKStrokeInheritedProperties);
  outlined init with copy of PKStrokeStruct(v57, &v28[OBJC_IVAR___PKStrokeCoherence_inheritedProperties], type metadata accessor for PKStrokeInheritedProperties);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  v29 = v64;
  swift_endAccess();
  if (v29)
  {
  }

  else
  {
    if (one-time initialization token for defaultInk != -1)
    {
      swift_once();
    }

    v30 = static PKStrokeCoherence.defaultInk;
    swift_beginAccess();
    v64 = v30;
    v31 = v30;
    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }

  v32 = v53;
  v33 = v55;
  v34 = v47;
  v47(v53, v58, v55);
  v35 = v54;
  v36 = v60;
  v37 = v62;
  v38 = v46;
  v46(v54, v60, v62);
  v34(&v28[OBJC_IVAR___PKStrokeCoherenceBase_identity], v32, v33);
  v38(&v28[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v35, v37);
  v39 = type metadata accessor for PKStrokeCoherenceBase(0);
  v63.receiver = v28;
  v63.super_class = v39;
  v40 = objc_msgSendSuper2(&v63, sel_init);
  v41 = *(v61 + 8);
  v41(v35, v37);
  v42 = *(v59 + 8);
  v42(v32, v33);
  v41(v36, v37);
  v42(v58, v33);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v57, type metadata accessor for PKStrokeInheritedProperties);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v52, type metadata accessor for PKStrokeInheritedProperties);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v51, type metadata accessor for PKStrokePathStruct);
  result = _s8PaperKit12TaggedStrokeOWOhTm_1(v50, type metadata accessor for PKStrokeStruct);
  v44 = v56;
  v56[3] = v49;
  *v44 = v40;
  return result;
}

void PKStrokeCoherence.copyForMutation()(uint64_t a1@<X8>)
{
  v51 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v49 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v43 - v4;
  v5 = type metadata accessor for UUID();
  v54 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v44 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v43 - v13);
  v15 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  v47 = type metadata accessor for PKStrokeStruct;
  outlined init with copy of PKStrokeStruct(v1 + v21, v20, type metadata accessor for PKStrokeStruct);
  v22 = OBJC_IVAR___PKStrokeCoherence__path;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v22, v17, type metadata accessor for PKStrokePathStruct);
  v23 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v23, v14, type metadata accessor for PKStrokeInheritedProperties);
  v24 = OBJC_IVAR___PKStrokeCoherence_inheritedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v24, v11, type metadata accessor for PKStrokeInheritedProperties);
  v25 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v26 = *(v54 + 16);
  v53 = v9;
  v50 = v5;
  v43 = v26;
  v26(v9, (v1 + v25), v5);
  v27 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
  swift_beginAccess();
  v28 = *(v56 + 16);
  v28(v55, v1 + v27, v57);
  v29 = objc_allocWithZone(type metadata accessor for PKStrokeCoherence(0));
  v45 = v20;
  outlined init with copy of PKStrokeStruct(v20, &v29[OBJC_IVAR___PKStrokeCoherence_model], v47);
  v46 = v17;
  outlined init with copy of PKStrokeStruct(v17, &v29[OBJC_IVAR___PKStrokeCoherence__path], type metadata accessor for PKStrokePathStruct);
  v47 = v14;
  outlined init with copy of PKStrokeStruct(v14, &v29[OBJC_IVAR___PKStrokeCoherence_resolvedProperties], type metadata accessor for PKStrokeInheritedProperties);
  outlined init with copy of PKStrokeStruct(v52, &v29[OBJC_IVAR___PKStrokeCoherence_inheritedProperties], type metadata accessor for PKStrokeInheritedProperties);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  v30 = v59;
  swift_endAccess();
  if (v30)
  {
  }

  else
  {
    if (one-time initialization token for defaultInk != -1)
    {
      swift_once();
    }

    v31 = static PKStrokeCoherence.defaultInk;
    swift_beginAccess();
    v59 = v31;
    v32 = v31;
    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }

  v33 = v48;
  v34 = v50;
  v35 = v43;
  v43(v48, v53, v50);
  v36 = v49;
  v37 = v55;
  v38 = v57;
  v28(v49, v55, v57);
  v35(&v29[OBJC_IVAR___PKStrokeCoherenceBase_identity], v33, v34);
  v28(&v29[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v36, v38);
  v39 = type metadata accessor for PKStrokeCoherenceBase(0);
  v58.receiver = v29;
  v58.super_class = v39;
  v40 = objc_msgSendSuper2(&v58, sel_init);
  v41 = *(v56 + 8);
  v41(v36, v38);
  v42 = *(v54 + 8);
  v42(v33, v34);
  v41(v37, v38);
  v42(v53, v34);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v52, type metadata accessor for PKStrokeInheritedProperties);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v47, type metadata accessor for PKStrokeInheritedProperties);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v46, type metadata accessor for PKStrokePathStruct);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v45, type metadata accessor for PKStrokeStruct);
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
}

void PKStrokeCoherence.copyForSubstroke()(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v62 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v55 - v5;
  v77 = type metadata accessor for UUID();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v64 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = v55 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v55 - v11;
  v13 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v55 - v16;
  v71 = v55 - v16;
  v18 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v20;
  v21 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v55 - v25;
  v27 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v2 + v27, v26, type metadata accessor for PKStrokeStruct);
  v28 = OBJC_IVAR___PKStrokeCoherence__path;
  swift_beginAccess();
  v56 = type metadata accessor for PKStrokePathStruct;
  outlined init with copy of PKStrokeStruct(v2 + v28, v20, type metadata accessor for PKStrokePathStruct);
  v29 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v2 + v29, v17, type metadata accessor for PKStrokeInheritedProperties);
  outlined init with copy of PKStrokeStruct(v2 + v27, v23, type metadata accessor for PKStrokeStruct);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v23, type metadata accessor for PKStrokeStruct);
  v30 = v72;
  v63 = v12;
  PKStrokeInheritedProperties.init(inherited:)(v12, v72);
  swift_beginAccess();
  v31 = v69;
  v59 = *(v76 + 2);
  v59();
  v32 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
  swift_beginAccess();
  v58 = *(v74 + 16);
  v57 = v74 + 16;
  v58(v73, v2 + v32, v75);
  v33 = objc_allocWithZone(type metadata accessor for PKStrokeCoherence(0));
  v61 = v26;
  outlined init with copy of PKStrokeStruct(v26, &v33[OBJC_IVAR___PKStrokeCoherence_model], type metadata accessor for PKStrokeStruct);
  outlined init with copy of PKStrokeStruct(v70, &v33[OBJC_IVAR___PKStrokeCoherence__path], v56);
  outlined init with copy of PKStrokeStruct(v71, &v33[OBJC_IVAR___PKStrokeCoherence_resolvedProperties], type metadata accessor for PKStrokeInheritedProperties);
  outlined init with copy of PKStrokeStruct(v30, &v33[OBJC_IVAR___PKStrokeCoherence_inheritedProperties], type metadata accessor for PKStrokeInheritedProperties);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  v34 = v79;
  swift_endAccess();
  v55[1] = v13;
  if (v34)
  {
  }

  else
  {
    if (one-time initialization token for defaultInk != -1)
    {
      swift_once();
    }

    v35 = static PKStrokeCoherence.defaultInk;
    swift_beginAccess();
    v79 = v35;
    v36 = v35;
    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }

  v37 = v64;
  v38 = v31;
  v39 = v77;
  v40 = v59;
  (v59)(v64, v38, v77);
  v41 = v62;
  v42 = v73;
  v43 = v75;
  v44 = v58;
  v58(v62, v73, v75);
  (v40)(&v33[OBJC_IVAR___PKStrokeCoherenceBase_identity], v37, v39);
  v44(&v33[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v41, v43);
  v45 = type metadata accessor for PKStrokeCoherenceBase(0);
  v78.receiver = v33;
  v78.super_class = v45;
  v46 = objc_msgSendSuper2(&v78, sel_init);
  v47 = *(v74 + 8);
  v47(v41, v43);
  v48 = *(v76 + 1);
  v76 = v48;
  v48(v37, v39);
  v47(v42, v43);
  v49 = v39;
  v48(v69, v39);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v72, type metadata accessor for PKStrokeInheritedProperties);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v71, type metadata accessor for PKStrokeInheritedProperties);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v70, type metadata accessor for PKStrokePathStruct);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v61, type metadata accessor for PKStrokeStruct);
  UUID.init()();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
  v50 = v63;
  Ref.init(id:)();
  swift_beginAccess();
  v51 = v66;
  v52 = v67;
  (*(v66 + 16))(v65, v50, v67);
  CRRegister.wrappedValue.setter();
  (*(v51 + 8))(v50, v52);
  swift_endAccess();
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v76(v37, v49);
  [v46 _setStrokeUUID_];

  v54 = v46;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
}

Class @objc PKStrokeCoherence.copyForMutation()(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  a3();

  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  return isa;
}

id PKStrokeCoherence.sliceIdentifier(forTStart:tEnd:)(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v44 - v10;
  v11 = type metadata accessor for FinalizedTimestamp();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v44 - v14;
  v15 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for UUID();
  v46 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v24;
  v25 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v44 = v22;
  (*(v22 + 16))(v24, v3 + v25, v21);
  v26 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v3 + v26, v20, type metadata accessor for PKStrokeInheritedProperties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.timestamp.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v20, type metadata accessor for PKStrokeInheritedProperties);
  outlined init with copy of PKStrokeStruct(v3 + v26, v17, type metadata accessor for PKStrokeInheritedProperties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v27 = v45;
  CRRegister.timestamp.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v17, type metadata accessor for PKStrokeInheritedProperties);
  v28 = OBJC_IVAR___PKStrokeCoherence__path;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v3 + v28, v8, type metadata accessor for PKStrokePathStruct);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v30 = [(objc_class *)isa _strokeDataUUID];

  v31 = v49;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = type metadata accessor for PKStrokePath();
  (*(*(v32 - 8) + 8))(v8, v32);
  v33 = *(v22 + 56);
  v34 = v46;
  v33(v31, 0, 1, v46);
  v35 = type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
  v36 = objc_allocWithZone(v35);
  v38 = v50;
  v37 = v51;
  (*(v50 + 16))(v36 + OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_transformTimestamp, v27, v51);
  outlined init with copy of Date?(v31, v36 + OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_strokeDataUUID, &_s10Foundation4UUIDVSgMd);
  v39 = v48;
  v40 = UUID._bridgeToObjectiveC()().super.isa;
  v52.receiver = v36;
  v52.super_class = v35;
  v41 = objc_msgSendSuper2(&v52, sel_initWithUUID_tStart_tEnd_, v40, a1, a2);

  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s10Foundation4UUIDVSgMd);
  v42 = *(v38 + 8);
  v42(v27, v37);
  v42(v47, v37);
  (*(v44 + 8))(v39, v34);
  return v41;
}

uint64_t PKStrokeCoherence.ink.setter(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v31 = type metadata accessor for PKInk();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v9, v8, type metadata accessor for PKStrokeInheritedProperties);
  v10 = v1 + OBJC_IVAR___PKStrokeCoherence_inheritedProperties;
  swift_beginAccess();
  outlined assign with take of PKStrokePathStruct(v8, v10, type metadata accessor for PKStrokeInheritedProperties);
  swift_endAccess();
  isa = PKInk._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v35[0] = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  outlined init with copy of PKStrokeStruct(v10, v8, type metadata accessor for PKStrokeInheritedProperties);
  swift_beginAccess();
  outlined assign with take of PKStrokePathStruct(v8, v2 + v9, type metadata accessor for PKStrokeInheritedProperties);
  swift_endAccess();
  v12 = [v2 ink];
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = PKInk._bridgeToObjectiveC()().super.isa;
  v14 = [(objc_class *)v13 behavior];

  v15 = *(v3 + 8);
  v16 = v31;
  v15(v5, v31);
  [v14 inkTransform];
  v34 = *&v36.c;
  v33 = *&v36.a;
  tx = v36.tx;
  ty = v36.ty;

  swift_beginAccess();
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v19 = CRRegister.wrappedValue.modify();
  v21 = v20;
  *&v36.a = v33;
  *&v36.c = v34;
  v36.tx = tx;
  v36.ty = ty;
  IsIdentity = CGAffineTransformIsIdentity(&v36);
  v23 = IsIdentity;
  if (IsIdentity)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = tx;
  }

  if (IsIdentity)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = ty;
  }

  if (IsIdentity)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  v27 = vdupq_n_s64(v26);
  v33 = vbicq_s8(v33, v27);
  v34 = vbicq_s8(v34, v27);
  v28 = (v21 + *(type metadata accessor for PKStrokeProperties(0) + 44));
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  *v28[2].i64 = v24;
  *&v28[2].i64[1] = v25;
  v28[3].i8[0] = v23;
  v19(v35, 0);
  swift_endAccess();
  return (v15)(v32, v16);
}

void @objc PKStrokeCoherence.ink.setter(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), void (*a5)(void *), void (*a6)(char *))
{
  v10 = a4(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  v13 = a3;
  v14 = a1;
  a5(a3);

  a6(v12);
}

uint64_t PKStrokeCoherence.path.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PKStrokeCoherence__path;
  swift_beginAccess();
  v4 = type metadata accessor for PKStrokePath();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  v6 = v1 + OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  v7 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *(v6 + v7);
    if (one-time initialization token for unfairLock != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    v9 = *(MEMORY[0x1E695F050] + 16);
    *(v8 + 16) = *MEMORY[0x1E695F050];
    *(v8 + 32) = v9;
    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  else
  {
    type metadata accessor for PKStrokeStructCache();
    v10 = swift_allocObject();
    v11 = *(MEMORY[0x1E695F050] + 16);
    *(v10 + 16) = *MEMORY[0x1E695F050];
    *(v10 + 32) = v11;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0x3FF0000000000000;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0x3FF0000000000000;
    *(v10 + 88) = 0;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0;
    *(v6 + v7) = v10;
  }

  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

id PKStrokeCoherence._strokeMask.getter()
{
  v1 = type metadata accessor for PKStrokeProperties(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v0 + v8, v7, type metadata accessor for PKStrokeStruct);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v7, type metadata accessor for PKStrokeStruct);
  v9 = *&v4[*(v2 + 44)];

  _s8PaperKit12TaggedStrokeOWOhTm_1(v4, type metadata accessor for PKStrokeProperties);
  if (!v9)
  {
    return 0;
  }

  v10 = *(*(v9 + 16) + 16);

  return v10;
}

Class @objc PKStrokeCoherenceSubstrokes._strokeUUID.getter(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);

  return v7.super.isa;
}

uint64_t PKStrokeCoherence._strokeUUID.setter(uint64_t a1)
{
  v17 = a1;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v16 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  (*(v9 + 40))(v1 + v13, v12, v8);
  swift_endAccess();
  static CRKeyPath.unique.getter();
  type metadata accessor for PKStrokeStruct(0);
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);
  Ref.init(id:)();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type TaggedStroke and conformance TaggedStroke, type metadata accessor for TaggedStroke);
  CRRegister.init(_:)();
  (*(v9 + 8))(v17, v8);
  v14 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
  swift_beginAccess();
  (*(v5 + 40))(v1 + v14, v7, v18);
  return swift_endAccess();
}

id PKStrokeCoherence.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for FinalizedTimestamp();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v52 - v7;
  v57 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v52 - v10;
  v11 = type metadata accessor for PKInk();
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  outlined init with copy of Date?(a1, v62, &_sypSgMd);
  if (!v63)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_sypSgMd);
    goto LABEL_15;
  }

  type metadata accessor for PKStrokeCoherence(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v49 = 0;
    return (v49 & 1);
  }

  v21 = v61;
  if (v61 == v1)
  {

    v49 = 1;
    return (v49 & 1);
  }

  v54 = v11;
  v53 = v4;
  v52 = v3;
  v22 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v23 = *(v15 + 16);
  v23(v20, &v1[v22], v14);
  v24 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v25 = &v21[v24];
  v26 = v21;
  v23(v17, v25, v14);
  v27 = static UUID.== infix(_:_:)();
  v28 = *(v15 + 8);
  v28(v17, v14);
  v28(v20, v14);
  if ((v27 & 1) == 0)
  {

    goto LABEL_15;
  }

  v29 = v1;
  v30 = [v1 ink];
  v31 = [v26 ink];
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  isa = PKInk._bridgeToObjectiveC()().super.isa;
  (*(v60 + 8))(v13, v54);
  v33 = [v30 isEqualUnweightedInk_];

  v34 = v26;
  if ((v33 & 1) == 0 || (v35 = v29, [v29 transform], objc_msgSend(v26, sel_transform), (static CGAffineTransform.== infix(_:_:)() & 1) == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v36 = [v29 path];
  result = [v36 _strokeDataUUID];
  if (result)
  {
    v38 = result;

    v39 = [v26 path];
    result = [v39 _strokeDataUUID];
    v40 = v53;
    if (result)
    {
      v41 = result;

      v42 = [v38 isEqual_];
      if (v42)
      {
        v43 = OBJC_IVAR___PKStrokeCoherence_model;
        swift_beginAccess();
        v44 = v55;
        outlined init with copy of PKStrokeStruct(v35 + v43, v55, type metadata accessor for PKStrokeStruct);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
        v45 = v58;
        CRRegister.timestamp.getter();
        _s8PaperKit12TaggedStrokeOWOhTm_1(v44, type metadata accessor for PKStrokeStruct);
        v46 = OBJC_IVAR___PKStrokeCoherence_model;
        swift_beginAccess();
        v47 = v56;
        outlined init with copy of PKStrokeStruct(v34 + v46, v56, type metadata accessor for PKStrokeStruct);
        v48 = v59;
        CRRegister.timestamp.getter();
        _s8PaperKit12TaggedStrokeOWOhTm_1(v47, type metadata accessor for PKStrokeStruct);
        v49 = static FinalizedTimestamp.== infix(_:_:)();

        v50 = *(v40 + 8);
        v51 = v52;
        v50(v48, v52);
        v50(v45, v51);
        return (v49 & 1);
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t @objc PKStrokeProviderSliceIdentifierCoherence.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_sypSgMd);
  return v8 & 1;
}

id PKStrokeCoherence._clipPlane.getter()
{
  v1 = type metadata accessor for PKStrokeProperties(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v0 + v8, v7, type metadata accessor for PKStrokeStruct);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v7, type metadata accessor for PKStrokeStruct);
  v9 = &v4[*(v2 + 48)];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  LOBYTE(v2) = v9[32];
  _s8PaperKit12TaggedStrokeOWOhTm_1(v4, type metadata accessor for PKStrokeProperties);
  result = 0;
  if ((v2 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E6978580]) initWithOrigin:v10 normal:{v11, v12, v13}];
  }

  return result;
}

void PKStrokeCoherence._clipPlane.setter(void *a1)
{
  if (a1)
  {
    [a1 origin];
    v3 = v2;
    v5 = v4;
    [a1 normal];
    v7 = v6;
    v9 = v8;
    swift_beginAccess();
    type metadata accessor for PKStrokeStruct(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    v10 = CRRegister.wrappedValue.modify();
    v12 = v11 + *(type metadata accessor for PKStrokeProperties(0) + 40);
    *v12 = v3;
    *(v12 + 8) = v5;
    *(v12 + 16) = v7;
    *(v12 + 24) = v9;
    *(v12 + 32) = 0;
    v10(v16, 0);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    type metadata accessor for PKStrokeStruct(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    v13 = CRRegister.wrappedValue.modify();
    v15 = v14 + *(type metadata accessor for PKStrokeProperties(0) + 40);
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 1;
    v13(v16, 0);
    swift_endAccess();
  }
}

uint64_t PKStrokeCoherence._transform.setter(_OWORD *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v2 + v7, v6, type metadata accessor for PKStrokeInheritedProperties);
  v8 = v2 + OBJC_IVAR___PKStrokeCoherence_inheritedProperties;
  swift_beginAccess();
  outlined assign with take of PKStrokePathStruct(v6, v8, type metadata accessor for PKStrokeInheritedProperties);
  v9 = a1[2];
  v17[1] = a1[1];
  v17[2] = v9;
  v17[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  outlined init with copy of PKStrokeStruct(v8, v6, type metadata accessor for PKStrokeInheritedProperties);
  swift_beginAccess();
  outlined assign with take of PKStrokePathStruct(v6, v2 + v7, type metadata accessor for PKStrokeInheritedProperties);
  swift_endAccess();
  v10 = v2 + OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  v11 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v12 = *(v10 + v11);
    if (one-time initialization token for unfairLock != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    v13 = *(MEMORY[0x1E695F050] + 16);
    *(v12 + 16) = *MEMORY[0x1E695F050];
    *(v12 + 32) = v13;
    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  else
  {
    type metadata accessor for PKStrokeStructCache();
    v14 = swift_allocObject();
    v15 = *(MEMORY[0x1E695F050] + 16);
    *(v14 + 16) = *MEMORY[0x1E695F050];
    *(v14 + 32) = v15;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0x3FF0000000000000;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0;
    *(v14 + 80) = 0x3FF0000000000000;
    *(v14 + 88) = 0;
    *(v14 + 96) = 0;
    *(v14 + 104) = 0;
    *(v10 + v11) = v14;
  }

  return swift_endAccess();
}

uint64_t PKStrokeCoherence._bounds.setter(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v5 + OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  v20 = *(v19 + *(type metadata accessor for PKStrokeStruct(0) + 24));
  v21 = OBJC_IVAR___PKStrokeCoherence__path;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v5 + v21, v18, type metadata accessor for PKStrokePathStruct);

  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v22 = type metadata accessor for PKStrokePath();
  (*(*(v22 - 8) + 8))(v18, v22);
  v23 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v5 + v23, v15, type metadata accessor for PKStrokeInheritedProperties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v15, type metadata accessor for PKStrokeInheritedProperties);
  v24 = v39;
  v32 = v38;
  v33 = v37;
  outlined init with copy of PKStrokeStruct(v5 + v23, v12, type metadata accessor for PKStrokeInheritedProperties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v12, type metadata accessor for PKStrokeInheritedProperties);
  *v36 = isa;
  *&v36[24] = v32;
  *&v36[8] = v33;
  *&v36[40] = v24;
  *&v36[56] = v37;
  if (one-time initialization token for unfairLock != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  v25 = *(v20 + 96);
  v26 = *(v20 + 48);
  v27 = *(v20 + 64);
  v39 = *(v20 + 80);
  v40 = v25;
  v37 = v26;
  v38 = v27;
  v28 = *&v36[16];
  v30 = *&v36[32];
  v29 = *&v36[48];
  *(v20 + 48) = *v36;
  *(v20 + 64) = v28;
  *(v20 + 80) = v30;
  *(v20 + 96) = v29;
  outlined init with copy of PKStrokeStructCache.BoundsParameters(v36, &v35);
  outlined destroy of PKStrokeStructCache.BoundsParameters(&v37);
  os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  outlined destroy of PKStrokeStructCache.BoundsParameters(v36);
}

double PKStrokeCoherence.renderBounds.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v11, v10, type metadata accessor for PKStrokeStruct);
  v12 = [v1 path];
  v13 = OBJC_IVAR___PKStrokeCoherence_resolvedProperties;
  swift_beginAccess();
  outlined init with copy of PKStrokeStruct(v1 + v13, v7, type metadata accessor for PKStrokeInheritedProperties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v7, type metadata accessor for PKStrokeInheritedProperties);
  v14 = *&v19[0];
  outlined init with copy of PKStrokeStruct(v1 + v13, v4, type metadata accessor for PKStrokeInheritedProperties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit12TaggedStrokeOWOhTm_1(v4, type metadata accessor for PKStrokeInheritedProperties);
  v19[0] = v18[0];
  v19[1] = v18[1];
  v19[2] = v18[2];
  v21.value.super.isa = v19;
  v20.value.super.isa = v12;
  v20.is_nil = v14;
  *&v16 = PKStrokeStruct.bounds(path:ink:transform:)(v20, v21, v15);

  _s8PaperKit12TaggedStrokeOWOhTm_1(v10, type metadata accessor for PKStrokeStruct);
  return v16;
}

uint64_t PKStrokeCoherence.compare(to:)()
{
  v1 = [v0 path];
  [v1 _timestamp];
  v3 = v2;

  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  [(objc_class *)isa timestamp];
  v6 = v5;

  if (v3 < v6)
  {
    return -1;
  }

  v8 = [v0 path];
  [v8 _timestamp];
  v10 = v9;

  v11 = PKStroke._bridgeToObjectiveC()().super.isa;
  [(objc_class *)v11 timestamp];
  v13 = v12;

  return v13 < v10;
}

uint64_t PKStrokeCoherence.__ivar_destroyer()
{
  _s8PaperKit12TaggedStrokeOWOhTm_1(v0 + OBJC_IVAR___PKStrokeCoherence_model, type metadata accessor for PKStrokeStruct);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v0 + OBJC_IVAR___PKStrokeCoherence__path, type metadata accessor for PKStrokePathStruct);
  _s8PaperKit12TaggedStrokeOWOhTm_1(v0 + OBJC_IVAR___PKStrokeCoherence_resolvedProperties, type metadata accessor for PKStrokeInheritedProperties);
  return _s8PaperKit12TaggedStrokeOWOhTm_1(v0 + OBJC_IVAR___PKStrokeCoherence_inheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return outlined init with copy of PKStrokeStruct(v6 + v7, a4, a3);
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t type metadata completion function for PKStrokeProviderSliceIdentifierCoherence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata accessor for CRRegister<TaggedStroke>()
{
  if (!lazy cache variable for type metadata for CRRegister<TaggedStroke>)
  {
    type metadata accessor for TaggedStroke(255);
    lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type TaggedStroke and conformance TaggedStroke, type metadata accessor for TaggedStroke);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<TaggedStroke>);
    }
  }
}

void type metadata completion function for PKStrokeCoherenceSubstrokes()
{
  type metadata accessor for CRSequence<Ref<CRRegister<TaggedStroke>>>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CRSequence<Ref<CRRegister<TaggedStroke>>>()
{
  if (!lazy cache variable for type metadata for CRSequence<Ref<CRRegister<TaggedStroke>>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v0 = type metadata accessor for CRSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRSequence<Ref<CRRegister<TaggedStroke>>>);
    }
  }
}

uint64_t type metadata completion function for PKStrokeCoherence()
{
  result = type metadata accessor for PKStrokeStruct(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PKStrokePath();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PKStrokeInheritedProperties(319);
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t specialized PKStrokeCoherence._strokeMask.setter(void *a1)
{
  type metadata accessor for PKStrokeMaskStruct();
  v3 = swift_allocObject();
  if (a1)
  {
    type metadata accessor for PKStrokeMaskWrapper();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v3 + 16) = v4;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v3 = 0;
  }

  v5 = v1 + OBJC_IVAR___PKStrokeCoherence_model;
  swift_beginAccess();
  v6 = type metadata accessor for PKStrokeStruct(0);
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v8 = CRRegister.wrappedValue.modify();
  *(v9 + *(type metadata accessor for PKStrokeProperties(0) + 36)) = v3;

  v8(v16, 0);
  v10 = *(v6 + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = *(v5 + v10);
    if (one-time initialization token for unfairLock != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    v12 = *(MEMORY[0x1E695F050] + 16);
    *(v11 + 16) = *MEMORY[0x1E695F050];
    *(v11 + 32) = v12;
    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  else
  {
    type metadata accessor for PKStrokeStructCache();
    v13 = swift_allocObject();
    v14 = *(MEMORY[0x1E695F050] + 16);
    *(v13 + 16) = *MEMORY[0x1E695F050];
    *(v13 + 32) = v14;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0x3FF0000000000000;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0x3FF0000000000000;
    *(v13 + 88) = 0;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0;
    *(v5 + v10) = v13;
  }

  return swift_endAccess();
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall CanvasGenerationTool.keyboardWillShowNotification(_:)(NSNotification a1)
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, generativeLogger);
  v4 = v1;
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v60.a = v9;
    *v8 = 136315650;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v60);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001D408BFA0, &v60);
    *(v8 + 22) = 2080;
    *&v63 = [(objc_class *)v5 name];
    type metadata accessor for NSNotificationName(0);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v60);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s: (notification = %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  x = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
  y = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 8];
  width = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 16];
  height = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 24];
  [v4 bounds];
  v21 = v20;
  if (CGRect.isFinite.getter(x, y, width, height))
  {
    v22 = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth];
    if (v22 > 0.0 && v21 > 0.0)
    {
      CGAffineTransformMakeScale(&v60, v21 / v22, v21 / v22);
      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = width;
      v65.size.height = height;
      v66 = CGRectApplyAffineTransform(v65, &v60);
      x = v66.origin.x;
      y = v66.origin.y;
      width = v66.size.width;
      height = v66.size.height;
    }
  }

  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  if (CGRectEqualToRect(v67, *MEMORY[0x1E695F050]))
  {
    v23 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = COERCE_DOUBLE(swift_slowAlloc());
      v60.a = v27;
      *v26 = 136315138;
      v28 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v60);

      *(v26 + 4) = v30;
      v31 = "%s returning (generationFrame is nil)";
LABEL_35:
      _os_log_impl(&dword_1D38C4000, v24, v25, v31, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v27);
      MEMORY[0x1DA6D0660](*&v27, -1, -1);
      MEMORY[0x1DA6D0660](v26, -1, -1);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (!*&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC])
  {
    v52 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = COERCE_DOUBLE(swift_slowAlloc());
      v60.a = v27;
      *v26 = 136315138;
      v53 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v60);

      *(v26 + 4) = v55;
      v31 = "%s returning (magicGenerativeVC is nil)";
      goto LABEL_35;
    }

LABEL_36:

    return;
  }

  v32 = [(objc_class *)v5 userInfo];
  if (!v32)
  {
LABEL_33:
    v56 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = COERCE_DOUBLE(swift_slowAlloc());
      v60.a = v27;
      *v26 = 136315138;
      v57 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v60);

      *(v26 + 4) = v59;
      v31 = "%s returning (userInfo does not contain valid information)";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v33 = v32;
  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v35;
  AnyHashable.init<A>(_:)();
  if (!*(v34 + 16))
  {
    goto LABEL_32;
  }

  v36 = specialized __RawDictionaryStorage.find<A>(_:)(&v60);
  if ((v37 & 1) == 0)
  {
    goto LABEL_32;
  }

  outlined init with copy of Any(*(v34 + 56) + 32 * v36, &v63);
  outlined destroy of AnyHashable(&v60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_33;
  }

  v38 = *&v61;
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v39;
  AnyHashable.init<A>(_:)();
  if (!*(v34 + 16) || (v40 = specialized __RawDictionaryStorage.find<A>(_:)(&v60), (v41 & 1) == 0))
  {
LABEL_32:

    outlined destroy of AnyHashable(&v60);
    goto LABEL_33;
  }

  outlined init with copy of Any(*(v34 + 56) + 32 * v40, &v63);
  outlined destroy of AnyHashable(&v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v42 = v61;
  v43 = [(objc_class *)v5 userInfo];
  if (!v43)
  {
    goto LABEL_39;
  }

  v44 = v43;
  v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v46;
  AnyHashable.init<A>(_:)();
  if (!*(v45 + 16) || (v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v60), (v48 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v60);
LABEL_39:
    v63 = 0u;
    v64 = 0u;
    goto LABEL_40;
  }

  outlined init with copy of Any(*(v45 + 56) + 32 * v47, &v63);
  outlined destroy of AnyHashable(&v60);

  if (!*(&v64 + 1))
  {
LABEL_40:
    outlined destroy of Any?(&v63);
    goto LABEL_33;
  }

  type metadata accessor for CGRect(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v49.origin = *&v60.a;
  v49.size = *&v60.c;
  if ((v42 - 1) >= 3)
  {
    v50 = 4;
  }

  else
  {
    v50 = ((v42 - 1) << 16) + 65540;
  }

  v51 = CGRectGetHeight(v49);
  CanvasGenerationTool.updateScrollViewLayout(_:animationDuration:animationCurveOptions:)(v50, v51, v38);
  if (v51 <= 100.0)
  {
    CanvasGenerationTool.hideBlurEffect(animationDuration:)(0.0);
  }

  else
  {
    CanvasGenerationTool.showBlurEffect(animationDuration:)(v38);
  }
}

Swift::Void __swiftcall CanvasGenerationTool.keyboardWillHideNotification(_:)(NSNotification a1)
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, generativeLogger);
  v4 = v1;
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v51.a = v9;
    *v8 = 136315650;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v51);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001D408BF70, &v51);
    *(v8 + 22) = 2080;
    v54[0] = [(objc_class *)v5 name];
    type metadata accessor for NSNotificationName(0);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v51);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s: (notification = %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  x = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
  y = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 8];
  width = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 16];
  height = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 24];
  [v4 bounds];
  v21 = v20;
  if (CGRect.isFinite.getter(x, y, width, height))
  {
    v22 = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth];
    if (v22 > 0.0 && v21 > 0.0)
    {
      CGAffineTransformMakeScale(&v51, v21 / v22, v21 / v22);
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      v55.size.height = height;
      v56 = CGRectApplyAffineTransform(v55, &v51);
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
    }
  }

  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  if (CGRectEqualToRect(v57, *MEMORY[0x1E695F050]))
  {
    v23 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = COERCE_DOUBLE(swift_slowAlloc());
      v51.a = v27;
      *v26 = 136315138;
      v28 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v51);

      *(v26 + 4) = v30;
      v31 = "%s returning (generationFrame is nil)";
LABEL_29:
      _os_log_impl(&dword_1D38C4000, v24, v25, v31, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v27);
      MEMORY[0x1DA6D0660](*&v27, -1, -1);
      MEMORY[0x1DA6D0660](v26, -1, -1);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (!*&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC])
  {
    v43 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = COERCE_DOUBLE(swift_slowAlloc());
      v51.a = v27;
      *v26 = 136315138;
      v44 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v51);

      *(v26 + 4) = v46;
      v31 = "%s returning (magicGenerativeVC is nil)";
      goto LABEL_29;
    }

LABEL_30:

    return;
  }

  v32 = [(objc_class *)v5 userInfo];
  if (!v32)
  {
LABEL_27:
    v47 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = COERCE_DOUBLE(swift_slowAlloc());
      v51.a = v27;
      *v26 = 136315138;
      v48 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v51);

      *(v26 + 4) = v50;
      v31 = "%s returning (userInfo does not contain valid information)";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v33 = v32;
  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v35;
  AnyHashable.init<A>(_:)();
  if (!*(v34 + 16))
  {
    goto LABEL_26;
  }

  v36 = specialized __RawDictionaryStorage.find<A>(_:)(&v51);
  if ((v37 & 1) == 0)
  {
    goto LABEL_26;
  }

  outlined init with copy of Any(*(v34 + 56) + 32 * v36, v54);
  outlined destroy of AnyHashable(&v51);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_27;
  }

  v38 = *&v52;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v39;
  AnyHashable.init<A>(_:)();
  if (!*(v34 + 16) || (v40 = specialized __RawDictionaryStorage.find<A>(_:)(&v51), (v41 & 1) == 0))
  {
LABEL_26:

    outlined destroy of AnyHashable(&v51);
    goto LABEL_27;
  }

  outlined init with copy of Any(*(v34 + 56) + 32 * v40, v54);
  outlined destroy of AnyHashable(&v51);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((v52 - 1) >= 3)
  {
    v42 = 4;
  }

  else
  {
    v42 = ((v52 - 1) << 16) + 65540;
  }

  CanvasGenerationTool.updateScrollViewLayout(_:animationDuration:animationCurveOptions:)(v42, 0.0, v38);
  CanvasGenerationTool.hideBlurEffect(animationDuration:)(v38);
}

uint64_t specialized CRRegister<>.requiredContentVersion<A>(in:)(unsigned int (*a1)(void, void, void))
{
  v122 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v95 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v124 = v94 - v3;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v117 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v123 = v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = v94 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = v94 - v7;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v106 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v120 = *(v11 - 8);
  v121 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v116 = v94 - v12;
  v13 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v102 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v98);
  v99 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v97 = v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v94 - v18;
  v109 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v109);
  v110 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v94 - v22;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v118 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = v94 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v108 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v94 - v26;
  v28 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v28);
  v113 = v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v111 = v94 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v94 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v94 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = v94 - v39;
  v96 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v96);
  v107 = v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v119 = v94 - v43;
  v128 = v2;
  v115 = v1;
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v37, v34, type metadata accessor for TaggedStroke);
  v112 = v28;
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit15PKDrawingStructVWOhTm_2(v34, type metadata accessor for TaggedStroke);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v44 - 8) + 56))(v40, 1, 1, v44);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v46 = *(v45 - 8);
    (*(v46 + 32))(v40, v34, v45);
    (*(v46 + 56))(v40, 0, 1, v45);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v40, 1, v47) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  }

  else
  {
    v49 = type metadata accessor for PKDrawingStruct(0);
    v50 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    v51 = v107;
    v52 = v122;
    v94[2] = v49;
    v94[1] = v50;
    Ref.subscript.getter();
    (*(v48 + 8))(v40, v47);
    _s8PaperKit12TaggedStrokeOWObTm_0(v51, v119, type metadata accessor for PKStrokeStruct);
    (*(v118 + 16))(v130, v52, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<PKDrawingStruct> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
    v53 = (v108 + 48);
    v54 = (v108 + 8);
    for (i = (v108 + 32); ; (*i)(v27, v19, v25))
    {
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit15PKDrawingStructVWOhTm_2(v23, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v53)(v19, 1, v25) == 1)
      {
        break;
      }

      (*v54)(v27, v25);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    (*(v118 + 8))(v130, v131);
    v56 = v110;
    Ref.subscript.getter();
    (*v54)(v27, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    CRRegister.wrappedValue.getter();
    _s8PaperKit15PKDrawingStructVWOhTm_2(v56, type metadata accessor for PKStrokeInheritedProperties);
    v57 = v132;
    if (v132)
    {
      v58 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
      v59 = v119;
      v60 = v99;
      CRRegister.wrappedValue.getter();
      v61 = v100;
      v62 = v97;
      v63 = v101;
      (*(v100 + 16))(v97, v60 + *(v98 + 32), v101);
      _s8PaperKit15PKDrawingStructVWOhTm_2(v60, type metadata accessor for PKStrokeProperties);
      v64 = v102;
      Ref.subscript.getter();
      (*(v61 + 8))(v62, v63);
      isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v66 = type metadata accessor for PKStrokePath();
      (*(*(v66 - 8) + 8))(v64, v66);
      v67 = [v58 _requiredContentVersionForStrokePath_ink_];

      _s8PaperKit15PKDrawingStructVWOhTm_2(v59, type metadata accessor for PKStrokeStruct);
      return v67;
    }

    _s8PaperKit15PKDrawingStructVWOhTm_2(v119, type metadata accessor for PKStrokeStruct);
  }

  v68 = v129;
  v69 = v117;
  v70 = v111;
  CRRegister.value.getter();
  v71 = v113;
  _s8PaperKit12TaggedStrokeOWObTm_0(v70, v113, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v73 = v120;
  v74 = v114;
  if (EnumCaseMultiPayload == 1)
  {
    v75 = v71;
    v76 = v121;
    (*(v120 + 32))(v114, v75, v121);
    v77 = 0;
  }

  else
  {
    _s8PaperKit15PKDrawingStructVWOhTm_2(v71, type metadata accessor for TaggedStroke);
    v77 = 1;
    v76 = v121;
  }

  v78 = v122;
  (*(v73 + 56))(v74, v77, 1, v76);
  if ((*(v73 + 48))(v74, 1, v76) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
    return 1;
  }

  else
  {
    (*(v73 + 32))(v116, v74, v76);
    v79 = type metadata accessor for PKDrawingStruct(0);
    v80 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    v81 = v103;
    v130 = v80;
    v131 = v79;
    Ref.subscript.getter();
    v82 = v105;
    CRSequence.makeIterator()();
    (*(v104 + 8))(v81, v82);
    v83 = v125;
    CRSequence.Iterator.next()();
    v84 = v83;
    v67 = 1;
    v122 = *(v69 + 48);
    if (v122(v84, 1, v68) != 1)
    {
      v85 = *(v69 + 32);
      v86 = (v95 + 8);
      v87 = (v69 + 8);
      v67 = 1;
      do
      {
        v89 = v123;
        v85(v123, v84, v68);
        v90 = v124;
        Ref.subscript.getter();
        v91 = specialized CRRegister<>.requiredContentVersion<A>(in:)(v78);
        v92 = v90;
        v68 = v129;
        (*v86)(v92, v128);
        (*v87)(v89, v68);
        if (v67 < v91)
        {
          v67 = v91;
          if (v91 == 4)
          {
            break;
          }
        }

        v88 = v125;
        CRSequence.Iterator.next()();
        v84 = v88;
      }

      while (v122(v88, 1, v68) != 1);
    }

    (*(v106 + 8))(v126, v127);
    (*(v120 + 8))(v116, v121);
  }

  return v67;
}

id _s8PaperKit14PKStrokeStructV6stroke2inACSo01_C8ConcreteC_9Coherence7CapsuleV3RefCyx_GtcAH4CRDTRzlufCAA09PKDrawingD0V_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v78 - v8;
  v95 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v78 - v11;
  v12 = type metadata accessor for UUID();
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for PKStrokePath();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v100 = *(v16 - 8);
  v101 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v78 - v21;
  v81 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v81);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v25 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v31 = type metadata accessor for PKStrokeStruct(0);
  v32 = *(v31 + 24);
  type metadata accessor for PKStrokeStructCache();
  v33 = swift_allocObject();
  v34 = *(MEMORY[0x1E695F050] + 16);
  *(v33 + 16) = *MEMORY[0x1E695F050];
  *(v33 + 32) = v34;
  *(v33 + 48) = 0;
  *(v33 + 56) = 0x3FF0000000000000;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 80) = 0x3FF0000000000000;
  *(v33 + 88) = 0;
  *(v33 + 96) = 0;
  *(v33 + 104) = 0;
  *(a3 + v32) = v33;
  v92 = v31;
  v104 = a3;
  UnknownProperties.init()();
  v35 = a1;
  result = [v35 ink];
  if (result)
  {
    v37 = result;
    [v35 transform];
    PKStrokeInheritedProperties.init(ink:transform:)(v37, v105, v24);
    static CRKeyPath.unique.getter();
    v38 = type metadata accessor for CRKeyPath();
    v79 = *(*(v38 - 8) + 56);
    v79(v22, 0, 1, v38);
    v39 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
    v40 = v98;

    MEMORY[0x1DA6CC020](v41, v24, v22, v81, v39);
    v81 = v25;
    v42 = *(v25 + 16);
    v80 = v30;
    v43 = v82;
    v42(v27, v30, v82);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
    CRRegister.init(_:)();

    v44 = [v35 path];
    v45 = v86;
    static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = [v35 path];
    v47 = v83;
    static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

    isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v49 = [(objc_class *)isa _strokeDataUUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v85 + 8))(v47, v87);
    CRKeyPath.init(_:)();
    v79(v22, 0, 1, v38);
    v50 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);
    v51 = v84;
    MEMORY[0x1DA6CC020](v40, v45, v22, v88, v50);
    v52 = [v35 _flags];
    v53 = [v35 _groupID];
    v54 = v102;
    if (v53)
    {
      v55 = v53;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = 0;
      v57 = v103;
      v59 = v90;
      v58 = v91;
    }

    else
    {
      v57 = v103;
      v59 = v90;
      v58 = v91;
      v56 = 1;
    }

    v60 = *(v59 + 56);
    v61 = 1;
    v60(v54, v56, 1, v58);
    v62 = [v35 _renderGroupID];
    v63 = v43;
    if (v62)
    {
      v64 = v62;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = 0;
    }

    v60(v57, v61, 1, v58);
    v65 = [v35 _shapeType];
    v66 = v51;
    (*(v100 + 16))(v99, v51, v101);
    v67 = [v35 _strokeMask];

    type metadata accessor for PKStrokeMaskStruct();
    v68 = swift_allocObject();
    if (v67)
    {
      type metadata accessor for PKStrokeMaskWrapper();
      v69 = swift_allocObject();
      *(v69 + 16) = v67;
      *(v68 + 16) = v69;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v68 = 0;
    }

    v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v71 = v93;
    *v93 = v52;
    v72 = v95;
    outlined init with take of Range<AttributedString.Index>(v102, &v71[*(v95 + 20)], &_s10Foundation4UUIDVSgMd);
    outlined init with take of Range<AttributedString.Index>(v103, &v71[v72[6]], &_s10Foundation4UUIDVSgMd);
    *&v71[v72[7]] = v65;
    v73 = v100;
    v74 = v101;
    (*(v100 + 32))(&v71[v72[8]], v99, v101);
    *&v71[v72[9]] = v68;
    v75 = &v71[v72[10]];
    *v75 = 0u;
    *(v75 + 1) = 0u;
    v75[32] = 1;
    v76 = &v71[v72[11]];
    *(v76 + 1) = 0u;
    *(v76 + 2) = 0u;
    *v76 = 0u;
    v76[48] = 1;
    *&v71[v72[12]] = v70;
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
    v77 = v94;
    CRRegister.init(_:)();

    (*(v73 + 8))(v66, v74);
    (*(v81 + 8))(v80, v63);
    return (*(v96 + 32))(v104 + *(v92 + 20), v77, v97);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v46 = a2;
  v55 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v49 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v53 = &v45 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v45 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v54 = v4;
  CRRegister.wrappedValue.getter();
  Ref.subscript.getter();
  v57 = *(v24 + 8);
  v58 = v24 + 8;
  v57(v33, v23);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit15PKDrawingStructVWOhTm_2(v22, type metadata accessor for PKStrokeInheritedProperties);
  v56 = *(v24 + 48);
  LODWORD(v22) = v56(v14, 1, v23);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  if (v22 != 1)
  {
    CRRegister.wrappedValue.getter();
    v60[0] = v55;
    swift_retain_n();
    v45 = v34;
    CRRegister.wrappedValue.getter();
    v36 = v47;
    v37 = v48;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(v46, v47);
    v46 = v24;
    for (i = v37; ; i = v39)
    {
      v39 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(v36);
      Ref.subscript.getter();
      CRRegister.wrappedValue.getter();
      _s8PaperKit15PKDrawingStructVWOhTm_2(v19, type metadata accessor for PKStrokeInheritedProperties);
      if (v56(v11, 1, v23) == 1)
      {
        break;
      }

      v57(v28, v23);
      (*(v24 + 32))(v28, v11, v23);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);

    Ref.subscript.getter();
    v40 = v57;
    v57(v28, v23);
    v41 = v53;
    Ref.subscript.setter();
    v40(v41, v23);
    v42 = v50;
    CRRegister.wrappedValue.getter();
    v43 = v51;
    (v46[7])(v51, 1, 1, v23);
    v44 = Ref.subscript.modify();
    outlined init with copy of Date?(v43, v52, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    v44(v60, 0);
    return (v40)(v42, v23);
  }

  return result;
}

char *PKDrawingCoherence.__allocating_init(concreteDrawing:)(void *a1)
{
  v2 = specialized PKDrawingCoherence.__allocating_init(concreteDrawing:)();

  return v2;
}

id PKDrawingCoherence.__allocating_init(model:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___PKDrawingCoherence_model;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id PKDrawingCoherence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKDrawingCoherenceVersion.init(coder:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 decodeDataObject];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    UUID.init(_:)(v10, v12);
    (*(v4 + 32))(v1 + OBJC_IVAR___PKDrawingCoherenceVersion_versionUUID, v7, v3);
    v13 = type metadata accessor for PKDrawingCoherenceVersion(0);
    v17.receiver = v1;
    v17.super_class = v13;
    v14 = objc_msgSendSuper2(&v17, sel_init);

    return v14;
  }

  else
  {

    type metadata accessor for PKDrawingCoherenceVersion(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t PKDrawingCoherenceVersion.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Date?(a1, v5, &_sypSgMd);
  if (!v6)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sypSgMd);
    goto LABEL_6;
  }

  type metadata accessor for PKDrawingCoherenceVersion(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  if (v4 == v1)
  {

    v2 = 1;
  }

  else
  {
    v2 = static UUID.== infix(_:_:)();
  }

  return v2 & 1;
}

void PKCoherenceUndoCommand.apply(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = type metadata accessor for PKDrawing();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6, v7);
  type metadata accessor for PKDrawingCoherence(0);
  swift_dynamicCast();
  v10 = v15;
  v11 = OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo;
  v12 = type metadata accessor for CapsuleUndoAction();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5, v1 + v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence17CapsuleUndoActionVSgMd);
  swift_endAccess();
}

id PKCoherenceUndoCommand.apply(toDrawingReturnInverted:)(uint64_t a1)
{
  v50 = type metadata accessor for CapsuleUndoAction();
  v3 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v57 = *(v12 - 8);
  v13 = v57;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v56 = &v48 - v16;
  v18 = type metadata accessor for PKDrawing();
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v19);
  type metadata accessor for PKDrawingCoherence(0);
  swift_dynamicCast();
  v22 = v59;
  v23 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v24 = *(v13 + 16);
  v24(v17, &v22[v23], v12);
  v25 = *(v3 + 16);
  v49 = v1;
  v26 = v50;
  v53 = v25;
  v25(v11, &v1[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v50);
  (*(v3 + 56))(v11, 0, 1, v26);
  swift_beginAccess();
  Capsule.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence17CapsuleUndoActionVSgMd);
  swift_endAccess();
  [v22 invalidateVisibleStrokes];
  v27 = v51;
  v24(v51, &v22[v23], v12);
  v28 = v52;
  v30 = v56;
  v29 = v57;
  v31 = v26;
  v32 = v27;
  Capsule.actionUndoingDifference(from:)();
  v35 = *(v29 + 8);
  v34 = v29 + 8;
  v33 = v35;
  (v35)(v32, v12);
  if ((*(v3 + 48))(v28, 1, v31) == 1)
  {
    (v33)(v30, v12);

    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence17CapsuleUndoActionVSgMd);
    return 0;
  }

  else
  {
    v51 = v33;
    v57 = v34;
    v37 = v54;
    (*(v3 + 32))(v54, v28, v31);
    v53(v55, v37, v31);
    v38 = v49;
    v52 = [v49 drawingUUID];
    v39 = v3;
    v40 = [v38 actionName];
    if (!v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = MEMORY[0x1DA6CCED0](v41);
    }

    v42 = [v38 changesVisibleStrokes];
    v43 = type metadata accessor for PKCoherenceUndoCommand(0);
    v44 = objc_allocWithZone(v43);
    v45 = v55;
    v53(&v44[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v55, v31);
    v58.receiver = v44;
    v58.super_class = v43;
    v46 = objc_msgSendSuper2(&v58, sel_initWithDrawingUUID_actionName_changesVisibleStrokes_, v52, v40, v42);

    swift_unknownObjectRelease();
    v47 = *(v39 + 8);
    v47(v45, v31);
    v47(v54, v31);
    (v51)(v56, v12);
    return v46;
  }
}

id PKDrawingCoherenceVersion.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t @objc PKDrawingCoherenceVersion.__ivar_destroyer(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v5 = *a3;
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t key path getter for PKDrawingCoherence.model : PKDrawingCoherence@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for PKDrawingCoherence.model : PKDrawingCoherence(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t PKDrawingCoherence.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PKDrawingCoherence.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id PKDrawingCoherence.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized PKDrawingCoherence.__allocating_init(data:)();
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

id PKDrawingCoherence.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized PKDrawingCoherence.init(data:)();
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

void closure #1 in PKDrawingCoherence.init(strokes:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for NSFastEnumerationIterator();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  outlined init with copy of Any(a2, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8PKStrokeCGMd);
  v15 = swift_dynamicCast();
  v41 = a1;
  if ((v15 & 1) == 0)
  {
    outlined init with copy of Any(a2, &v44);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSOrderedSet);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v39 = v9;
    v36 = a3;
    v37 = v8;
    v35 = *&v43[0];
    NSOrderedSet.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (v46)
    {
      v25 = (v38 + 8);
      do
      {
        outlined init with take of Any(&v44, v43);
        swift_getKeyPath();
        outlined init with copy of Any(v43, v42);
        type metadata accessor for PKStrokeCoherence(0);
        swift_dynamicCast();
        v26 = v47;
        PKStrokeCoherence.newShared(in:flatten:)(a1, 1, v14);

        v27 = Capsule.Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
        CROrderedSet.append(_:)();
        (*v25)(v14, v12);
        v27(v42, 0);
        a1 = v41;

        __swift_destroy_boxed_opaque_existential_0(v43);
        NSFastEnumerationIterator.next()();
      }

      while (v46);
    }

    (*(v40 + 8))(v11, v39);

    goto LABEL_16;
  }

  v16 = *&v43[0];
  if (*&v43[0] >> 62)
  {
    v17 = __CocoaSet.count.getter();
    if (v17)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17 = *((*&v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_4:
      if (v17 < 1)
      {
        __break(1u);
        return;
      }

      v36 = a3;
      v37 = v8;
      v18 = 0;
      v39 = v16 & 0xC000000000000001;
      v40 = v12;
      v19 = (v38 + 8);
      v20 = v16;
      do
      {
        if (v39)
        {
          v21 = MEMORY[0x1DA6CE0C0](v18, v16);
        }

        else
        {
          v21 = *(v16 + 8 * v18 + 32);
        }

        v22 = v21;
        v23 = v41;
        ++v18;
        swift_getKeyPath();
        type metadata accessor for PKStrokeCoherence(0);
        swift_dynamicCastClassUnconditional();
        PKStrokeCoherence.newShared(in:flatten:)(v23, 1, v14);
        v24 = Capsule.Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
        CROrderedSet.append(_:)();
        (*v19)(v14, v40);
        v24(&v44, 0);

        v16 = v20;
      }

      while (v17 != v18);

LABEL_16:
      a3 = v36;
      v8 = v37;
      goto LABEL_19;
    }
  }

LABEL_19:
  outlined init with copy of Date?(a3, v8, &_s9PencilKit9PKDrawingVSgMd);
  v28 = type metadata accessor for PKDrawing();
  if ((*(*(v28 - 8) + 48))(v8, 1, v28) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9PencilKit9PKDrawingVSgMd);
  }

  else
  {
    type metadata accessor for PKDrawingCoherence(0);
    if (swift_dynamicCast())
    {
      v29 = v44;
      swift_getKeyPath();
      [v29 _canvasBounds];
      *&v44 = v30;
      *(&v44 + 1) = v31;
      v45 = v32;
      v46 = v33;
      Capsule.Ref.subscript.setter();
    }
  }
}

id PKDrawingCoherence.init(model:)(uint64_t a1)
{
  v3 = OBJC_IVAR___PKDrawingCoherence_model;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PKDrawingCoherence(0);
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t PKDrawingCoherence.init(drawing:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = type metadata accessor for PKDrawing();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v20 = v9;
  v10 = *(v9 + 16);
  v22 = a1;
  v10(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v7);
  v11 = type metadata accessor for PKDrawingCoherence(0);
  v21 = v6;
  if (swift_dynamicCast())
  {
    v12 = v24;
    v13 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v14 = *(v3 + 16);
    v14(v5, &v12[v13], v2);
    v15 = objc_allocWithZone(v11);
    v14(&v15[OBJC_IVAR___PKDrawingCoherence_model], v5, v2);
    v23.receiver = v15;
    v23.super_class = v11;
    v16 = objc_msgSendSuper2(&v23, sel_init);
    (*(v3 + 8))(v5, v2);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v17 = v16;
    v18 = [v12 _cachedVisibleStrokes];
    [v17 set:v18 cachedVisibleStrokes:?];

    (*(v20 + 8))(v22, v21);
    return v17;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PKDrawingCoherence.init(concreteDrawing:)(uint64_t a1, void *a2)
{
  v85 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v83 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v54 - v5;
  v78 = type metadata accessor for CRKeyPath();
  v6 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v76);
  v72 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v9 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v16 = *(v15 - 8);
  v80 = v15;
  v81 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v82 = v54 - v17;
  v18 = type metadata accessor for PKStroke();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v69 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v79 = v54 - v24;
  v25 = [a2 strokes];
  v26 = v18;
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = *(v27 + 16);
  if (v28)
  {
    v55 = a2;
    v56 = v2;
    v30 = *(v19 + 16);
    v29 = v19 + 16;
    v65 = v30;
    v31 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v64 = v4;
    v54[1] = v27;
    v32 = v27 + v31;
    v63 = (v6 + 56);
    v62 = (v9 + 16);
    v66 = v29;
    v61 = *(v29 + 56);
    v60 = (v83 + 8);
    v59 = (v9 + 8);
    v58 = (v81 + 8);
    v57 = v26;
    v33 = v79;
    v34 = v85;
    do
    {
      v83 = v32;
      v81 = v28;
      v65(v69, v32, v57);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for _PKStrokeConcrete);
      swift_dynamicCast();
      v35 = v84[0];

      _s8PaperKit14PKStrokeStructV6stroke2inACSo01_C8ConcreteC_9Coherence7CapsuleV3RefCyx_GtcAH4CRDTRzlufCAA09PKDrawingD0V_Tt2g5(v35, v34, v33);
      v36 = v67;
      outlined init with copy of PKStrokeStruct(v33, v67);
      v37 = *v63;
      v38 = v70;
      v39 = v78;
      (*v63)(v70, 1, 1, v78);
      v40 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);

      MEMORY[0x1DA6CC020](v85, v36, v38, v68, v40);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
      Reference.identity.getter();
      Ref.init(id:)();
      swift_storeEnumTagMultiPayload();
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type TaggedStroke and conformance TaggedStroke, type metadata accessor for TaggedStroke);
      v41 = v71;
      CRRegister.init(_:)();
      swift_getKeyPath();
      v42 = v74;
      v43 = v75;
      (*v62)(v74, v41, v75);
      v37(v38, 1, 1, v39);
      v34 = v85;
      v44 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);

      v46 = v73;
      MEMORY[0x1DA6CC020](v45, v42, v38, v43, v44);
      v47 = Capsule.Ref.subscript.modify();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      CROrderedSet.append(_:)();
      v48 = v80;
      (*v60)(v46, v64);
      v47(v84, 0);
      v33 = v79;

      (*v59)(v41, v43);
      (*v58)(v82, v48);
      _s8PaperKit15PKDrawingStructVWOhTm_2(v33, type metadata accessor for PKStrokeStruct);
      v32 = v83 + v61;
      v28 = v81 - 1;
    }

    while (v81 != 1);

    a2 = v55;
  }

  else
  {
  }

  swift_getKeyPath();
  [a2 _canvasBounds];
  v84[0] = v49;
  v84[1] = v50;
  v84[2] = v51;
  v84[3] = v52;
  return Capsule.Ref.subscript.setter();
}

id PKDrawingCoherence.__allocating_init(context:data:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = objc_allocWithZone(v4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v10 = [v8 initWithData:isa loadNonInkingStrokes:0 error:v14];

  if (v10)
  {
    v11 = v14[0];
  }

  else
  {
    v12 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  outlined consume of Data._Representation(a2, a3);

  return v10;
}

char *PKDrawingCoherence.__allocating_init(context:concreteDrawing:)(void *a1, void *a2)
{
  v4 = specialized PKDrawingCoherence.__allocating_init(concreteDrawing:)();

  return v4;
}

uint64_t PKDrawingCoherence.dataRepresentation()()
{
  v1 = type metadata accessor for CRCodableVersion();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v6 + 16))(v8, v0 + v9, v5);
  type metadata accessor for CRContext();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v10 = MEMORY[0x1DA6CC630](0, v14);
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence18EncryptionDelegate_pSgMd);
  (*(v2 + 104))(v4, *MEMORY[0x1E6995288], v1);
  v11 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v11;
}

void __swiftcall PKDrawingCoherence.concreteDrawing()(PKDrawing *__return_ptr retstr)
{
  v2 = v1;
  v3 = type metadata accessor for PKStroke();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v30 = [objc_allocWithZone(MEMORY[0x1E6978418]) init];
  v10 = [v1 _rootStrokes];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v11 + 16);
  if (v12)
  {
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = v11;
    v26 = v4;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v27 = *(v13 + 56);
    v28 = v14;
    v29 = v13;
    do
    {
      v16 = v28;
      v28(v9, v15, v3);
      v16(v6, v9, v3);
      type metadata accessor for PKStrokeCoherenceBase(0);
      swift_dynamicCast();
      v17 = v31;
      (*((*MEMORY[0x1E69E7D40] & *v31) + 0xA8))(v2);

      (*(v13 - 8))(v9, v3);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += v27;
      --v12;
    }

    while (v12);

    v18 = v32;
    v4 = v26;
    if (!(v32 >> 62))
    {
LABEL_5:
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_6;
      }

LABEL_14:

      return;
    }
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_5;
    }
  }

  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = (v4 + 8);
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1DA6CE0C0](v20, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      ++v20;
      v24 = [v30 _addStroke_];
      static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

      (*v21)(v9, v3);
    }

    while (v19 != v20);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t specialized PKDrawingStruct.requiredContentVersion<A>(in:)(unsigned int (*a1)(void, void, void))
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v34 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v35 = type metadata accessor for PKDrawingStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  CROrderedSet.makeIterator()();
  v37 = v11;
  v14 = v13;
  CROrderedSet.Iterator.next()();
  v15 = v5;
  v16 = v5 + 48;
  v17 = *(v5 + 48);
  v18 = 1;
  v19 = v17(v10, 1, v4);
  v36 = v14;
  if (v19 != 1)
  {
    v33 = v17;
    v20 = v29;
    v21 = v15 + 32;
    v22 = *(v15 + 32);
    v31 = v1;
    v32 = v22;
    v23 = (v34 + 8);
    v34 = v21;
    v24 = (v21 - 24);
    v18 = 1;
    do
    {
      v32(v7, v10, v4);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
      v25 = v16;
      Ref.subscript.getter();
      v26 = specialized CRRegister<>.requiredContentVersion<A>(in:)(v20);
      (*v23)(v3, v31);
      (*v24)(v7, v4);
      if (v18 <= v26)
      {
        v18 = v26;
      }

      CROrderedSet.Iterator.next()();
      v16 = v25;
    }

    while (v33(v10, 1, v4) != 1);
  }

  (*(v30 + 8))(v36, v37);
  return v18;
}

uint64_t closure #1 in PKDrawingCoherence._rootStrokes.getter@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v7 + 16))(v9, a2 + v10, v6);
  _s8PaperKit21PKStrokeCoherenceBaseC10initStroke13strokeNodeRef2in06PencilB00C0V0D00J0VyAJ10CRRegisterVyAA06TaggedG0OGG_AJ7CapsuleVyxGtAJ4CRDTRzlFZAA15PKDrawingStructV_Tt2g5(a1, v9, a3);
  return (*(v7 + 8))(v9, v6);
}

double PKDrawingCoherence.bounds.getter()
{
  v1 = v0;
  v17 = type metadata accessor for CRKeyPath();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v13(v11, v1 + v12, v5);
  v13(v8, v1 + v12, v5);
  Capsule.rootID.getter();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v18 = v1;
  type metadata accessor for CGRect(0);
  Capsule.getCachedValue<A>(forKey:recompute:)();
  (*(v2 + 8))(v4, v17);
  v14(v11, v5);
  return v19;
}

uint64_t closure #1 in PKDrawingCoherence.bounds.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v13(v11, a1 + v12, v5);
  Capsule.root.getter();
  v14 = *(v6 + 8);
  v14(v11, v5);
  v13(v8, a1 + v12, v5);
  v15 = *MEMORY[0x1E695F050];
  v16 = *(MEMORY[0x1E695F050] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v18 = *(MEMORY[0x1E695F050] + 24);
  v32 = v8;
  v19 = v29;
  v20 = specialized Sequence.reduce<A>(_:_:)(partial apply for specialized closure #1 in PKDrawingStruct.bounds<A>(in:), v31, v15, v16, v17, v18);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  _s8PaperKit15PKDrawingStructVWOhTm_2(v19, type metadata accessor for PKDrawingStruct);
  result = (v14)(v8, v5);
  v28 = v30;
  *v30 = v20;
  v28[1] = v22;
  v28[2] = v24;
  v28[3] = v26;
  return result;
}

id @objc PKDrawingCoherence.version.getter(char *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t (*a5)(void), void *a6)
{
  v23 = a6;
  v9 = a3(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v14 + 16))(v16, &a1[v17], v13);
  v18 = a1;
  a4(v13);
  (*(v14 + 8))(v16, v13);
  v19 = a5(0);
  v20 = objc_allocWithZone(v19);
  (*(v10 + 16))(&v20[*v23], v12, v9);
  v24.receiver = v20;
  v24.super_class = v19;
  v21 = objc_msgSendSuper2(&v24, sel_init);
  (*(v10 + 8))(v12, v9);

  return v21;
}

uint64_t PKDrawingCoherence.addNewStroke(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRKeyPath();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v53 = a1;
  v14 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  Capsule.mutate<A>(_:)();
  swift_endAccess();
  v15 = [v1 _cachedVisibleStrokes];
  if (v15)
  {
    v16 = v15;
    isa = PKStroke._bridgeToObjectiveC()().super.isa;
    [v16 addObject_];
  }

  v50 = a1;
  v18 = *(v8 + 16);
  v18(v13, &v2[v14], v7);
  v18(v10, &v2[v14], v7);
  Capsule.rootID.getter();
  v19 = *(v8 + 8);
  v49 = v10;
  v19();
  type metadata accessor for CGRect(0);
  v48 = v20;
  Capsule.getCachedValue<A>(forKey:)();
  v46 = v2;
  v21 = v52;
  v47 = *(v51 + 1);
  v47(v6, v52);
  v51 = v19;
  result = (v19)(v13, v7);
  if ((v58 & 1) == 0)
  {
    v24 = v56;
    v23 = v57;
    v26 = v54;
    v25 = v55;
    v27 = v21;
    v28 = PKStroke._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v28 _bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v59.origin.x = v26;
    v59.origin.y = v25;
    v59.size.width = v24;
    v59.size.height = v23;
    v61.origin.x = v30;
    v61.origin.y = v32;
    v61.size.width = v34;
    v61.size.height = v36;
    v60 = CGRectUnion(v59, v61);
    x = v60.origin.x;
    y = v60.origin.y;
    width = v60.size.width;
    height = v60.size.height;
    v41 = v46;
    v18(v13, &v46[v14], v7);
    v54 = x;
    v55 = y;
    v56 = width;
    v57 = height;
    v42 = &v41[v14];
    v43 = v49;
    v18(v49, v42, v7);
    Capsule.rootID.getter();
    v44 = v51;
    (v51)(v43, v7);
    Capsule.setCachedValue<A>(_:forKey:)();
    v47(v6, v27);
    return (v44)(v13, v7);
  }

  return result;
}

uint64_t closure #1 in PKDrawingCoherence.addNewStroke(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKStroke();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for PKStrokeCoherenceBase(0);
  swift_dynamicCast();
  v12 = v15[0];
  (*((*MEMORY[0x1E69E7D40] & *v15[0]) + 0xA0))(a1, 1);

  v13 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  CROrderedSet.append(_:)();
  (*(v9 + 8))(v11, v8);
  v13(v15, 0);
}

uint64_t @objc PKCoherenceUndoCommand.apply(to:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), void (*a5)(void *), void (*a6)(char *))
{
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = a3;
  v15 = a1;
  a5(a3);

  a6(v13);
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #1 in PKDrawingCoherence.addNewStrokes(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = a4;
  v43[1] = a3;
  v48 = a1;
  v57 = type metadata accessor for PKInk();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v43 - v11;
  v59 = type metadata accessor for PKStroke();
  v12 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v46 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v43 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v58 = v20;
    v21 = *MEMORY[0x1E69785B0];
    v22 = a2 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v55 = *(v19 + 56);
    v56 = v21;
    v53 = (v19 - 8);
    v54 = (v5 + 8);
    v45 = v8;
    v49 = (v8 + 32);
    v52 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v23 = v19;
      v58(v17, v22, v59, v15);
      PKStroke.ink.getter();
      isa = PKInk._bridgeToObjectiveC()().super.isa;
      v25 = [(objc_class *)isa identifier];

      if (!v25)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = MEMORY[0x1DA6CCED0](v26);
      }

      (*v54)(v7, v57);
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
      if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          v33 = v59;
          v19 = v23;
          (v58)(v46, v17, v59);
          type metadata accessor for PKStrokeCoherence(0);
          swift_dynamicCast();
          v34 = v60[0];
          v35 = v47;
          PKStrokeCoherence.newShared(in:flatten:)(v48, 0, v47);

          (*v53)(v17, v33);
          v36 = *v49;
          (*v49)(v50, v35, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
          }

          v38 = *(v52 + 2);
          v37 = *(v52 + 3);
          if (v38 >= v37 >> 1)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v52);
          }

          v39 = v51;
          v40 = v52;
          *(v52 + 2) = v38 + 1;
          v36(&v40[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v38], v50, v39);
          goto LABEL_5;
        }
      }

      (*v53)(v17, v59);
      v19 = v23;
LABEL_5:
      v22 += v55;
      if (!--v18)
      {
        goto LABEL_19;
      }
    }
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_19:
  swift_getKeyPath();
  v60[6] = v52;
  if (v44)
  {
    v41 = Capsule.Ref.subscript.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [Ref<CRRegister<TaggedStroke>>] and conformance [A], &_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    CROrderedSet.append<A>(contentsOf:)();
  }

  else
  {
    v41 = Capsule.Ref.subscript.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [Ref<CRRegister<TaggedStroke>>] and conformance [A], &_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    CROrderedSet.insert<A>(contentsOf:at:)();
  }

  v41(v60, 0);
}

void __swiftcall PKDrawingCoherence.undoableAddNewStrokes(_:)(PKUndoCommand_optional *__return_ptr retstr, Swift::OpaquePointer a2)
{
  v3 = v2;
  *&v139.size.width = a2._rawValue;
  v141 = type metadata accessor for PKInk();
  v120 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for CRKeyPath();
  v133 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for PKStroke();
  v121 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v118 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  *&v139.size.height = &v117 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v135 = &v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v137 = &v117 - v12;
  v136 = type metadata accessor for CapsuleUndoAction();
  v123 = *(v136 - 1);
  MEMORY[0x1EEE9AC00](v136);
  *&v139.origin.y = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  *&v139.origin.x = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v117 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v117 - v23;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v145._object = 0x80000001D408C380;
  v25._countAndFlagsBits = 0x6F72745320646441;
  v25._object = 0xEB0000000073656BLL;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v145._countAndFlagsBits = 0xD00000000000001ALL;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, paperKitBundle, v27, v145);
  countAndFlagsBits = v28._countAndFlagsBits;
  object = v28._object;
  v29 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v30 = *(v17 + 16);
  v31 = v30(v24, &v2[v29], v16);
  v132 = &v117;
  MEMORY[0x1EEE9AC00](v31);
  *(&v117 - 4) = *&v139.size.width;
  *(&v117 - 3) = 0;
  LOBYTE(v145._object) = 1;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  v126 = v29;
  v125 = v17 + 16;
  v124 = v30;
  v30(v21, &v2[v29], v16);
  v32 = v137;
  Capsule.actionUndoingDifference(from:)();
  v33 = *(v17 + 8);
  v128 = v21;
  v33(v21, v16);
  v34 = v123;
  v35 = v136;
  v36 = (*(v123 + 6))(v32, 1, v136);
  v132 = (v17 + 8);
  v134 = v2;
  v129 = v16;
  if (v36 == 1)
  {
    v33(v24, v16);

    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence17CapsuleUndoActionVSgMd);
    object = 0;
  }

  else
  {
    x = v139.origin.x;
    (*(v34 + 4))(*&v139.origin.x, v32, v35);
    v38 = *(v34 + 2);
    v38(*&v139.origin.y, *&x, v35);
    v39 = [v3 uuid];
    v40 = type metadata accessor for PKCoherenceUndoCommand(0);
    v137 = v24;
    v41 = v40;
    v42 = v16;
    v43 = objc_allocWithZone(v40);
    y = v139.origin.y;
    v38(&v43[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], *&v139.origin.y, v35);
    v45 = v33;
    v46 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

    v142.receiver = v43;
    v142.super_class = v41;
    object = [(PKUndoCommand_optional *)&v142 initWithDrawingUUID:v39 actionName:v46 changesVisibleStrokes:1];
    swift_unknownObjectRelease();

    v33 = v45;
    v47 = *(v34 + 1);
    v47(*&y, v35);
    v47(*&v139.origin.x, v35);
    v48 = v42;
    v3 = v134;
    v45(v137, v48);
  }

  v49 = [v3 _cachedVisibleStrokes];
  width = v139.size.width;
  if (v49)
  {
    v51 = v49;
    specialized _arrayForceCast<A, B>(_:)(*&v139.size.width);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v51 addObjectsFromArray_];
  }

  v123 = v33;
  v53 = *(*&width + 16);
  if (v53)
  {
    v139.origin.y = *(v121 + 16);
    v137 = ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v54 = &v137[*&width];
    v55 = *(v121 + 72);
    v56 = (v120 + 8);
    *&v139.origin.x = v121 + 32;
    *&v139.size.width = v121 + 16;
    v136 = (v121 + 8);
    v57 = MEMORY[0x1E69E7CC0];
    v58 = v138;
    v59 = v135;
    (*&v139.origin.y)(v135, v54, v138);
    while (1)
    {
      v60 = v140;
      v61 = v59;
      PKStroke.ink.getter();
      v62 = PKInk._bridgeToObjectiveC()().super.isa;
      v63 = v58;
      v64 = [(objc_class *)v62 behavior];

      (*v56)(v60, v141);
      LOBYTE(v62) = [v64 isEraser];

      if (v62)
      {
        (*v136)(v61, v63);
        v59 = v61;
        v58 = v63;
      }

      else
      {
        v65 = **&v139.origin.x;
        (**&v139.origin.x)(*&v139.size.height, v61, v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143.origin.x = v57;
        if (isUniquelyReferenced_nonNull_native)
        {
          v59 = v61;
        }

        else
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v57 + 16) + 1, 1);
          v59 = v135;
          v57 = v143.origin.x;
        }

        v68 = *(*&v57 + 16);
        v67 = *(*&v57 + 24);
        if (v68 >= v67 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1);
          v59 = v135;
          v57 = v143.origin.x;
        }

        *(*&v57 + 16) = v68 + 1;
        v58 = v138;
        v65(&v137[*&v57 + v68 * v55], *&v139.size.height, v138);
      }

      v54 += v55;
      if (!--v53)
      {
        break;
      }

      (*&v139.origin.y)(v59, v54, v58);
    }
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
    v58 = v138;
  }

  v69 = v134;
  v70 = v126;
  v71 = v128;
  v72 = v129;
  v73 = v124;
  v124(v128, &v134[v126], v129);
  v74 = &v69[v70];
  v75 = v127;
  v73(v127, v74, v72);
  v76 = v130;
  Capsule.rootID.getter();
  v77 = v123;
  v123(v75, v72);
  type metadata accessor for CGRect(0);
  v79 = v78;
  Capsule.getCachedValue<A>(forKey:)();
  v80 = v133 + 8;
  v81 = *(v133 + 8);
  v81(v76, v131);
  v77(v71, v72);
  if ((v144 & 1) == 0)
  {
    v140 = v81;
    v141 = v79;
    v133 = v80;
    v139 = v143;
    v82 = *MEMORY[0x1E695F050];
    v83 = *(MEMORY[0x1E695F050] + 8);
    v84 = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v86 = *(*&v57 + 16);
    if (v86)
    {
      v87 = *(v121 + 16);
      v88 = *&v57 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
      v89 = v58;
      v90 = *(v121 + 72);
      v91 = (v121 + 8);
      v92 = v118;
      do
      {
        v87(v92, v88, v89);
        v93 = PKStroke._bridgeToObjectiveC()().super.isa;
        [(objc_class *)v93 _bounds];
        v95 = v94;
        v97 = v96;
        v99 = v98;
        v101 = v100;

        v146.origin.x = v82;
        v146.origin.y = v83;
        v146.size.width = v84;
        v146.size.height = height;
        v149.origin.x = v95;
        v149.origin.y = v97;
        v149.size.width = v99;
        v149.size.height = v101;
        v147 = CGRectUnion(v146, v149);
        v82 = v147.origin.x;
        v83 = v147.origin.y;
        v84 = v147.size.width;
        height = v147.size.height;
        (*v91)(v92, v89);
        v88 += v90;
        --v86;
      }

      while (v86);
    }

    v150.origin.x = v82;
    v150.origin.y = v83;
    v150.size.width = v84;
    v150.size.height = height;
    v148 = CGRectUnion(v139, v150);
    v102 = v148.origin.x;
    v103 = v148.origin.y;
    v104 = v148.size.width;
    v105 = v148.size.height;
    v106 = v134;
    v107 = v126;
    v108 = v128;
    v109 = v129;
    v110 = v124;
    v124(v128, &v134[v126], v129);
    v143.origin.x = v102;
    v143.origin.y = v103;
    v143.size.width = v104;
    v143.size.height = v105;
    v111 = &v106[v107];
    v112 = v127;
    v110(v127, v111, v109);
    v113 = v130;
    Capsule.rootID.getter();
    v114 = v123;
    v123(v112, v109);
    Capsule.setCachedValue<A>(_:forKey:)();
    (v140)(v113, v131);
    v114(v108, v109);
  }

  v115 = object;
  v116 = *(*&v57 + 16);

  if (!v116)
  {
  }
}

uint64_t PKDrawingCoherence.indexOf(_:)(uint64_t a1)
{
  v117 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v92 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v76 - v2;
  v99 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v99);
  v121 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = &v76 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v90 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v76 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v84 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v81 = &v76 - v9;
  v108 = type metadata accessor for CRKeyPath();
  v93 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v110 = &v76 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v76 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v76 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGtMd);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v119 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v76 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v76 - v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySnySiG9Coherence12CROrderedSetVyAD3RefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  MEMORY[0x1EEE9AC00](v115);
  v109 = &v76 - v28;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVySnySiG9Coherence12CROrderedSetVyAF3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMd);
  MEMORY[0x1EEE9AC00](v94);
  v30 = (&v76 - v29);
  v31 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v33 = v21 + 16;
  v32 = *(v21 + 16);
  v118 = v1;
  v122 = v31;
  v111 = v32;
  v32(v27, v1 + v31, v20);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v36 = *(v21 + 8);
  v34 = v21 + 8;
  v35 = v36;
  v80 = v27;
  v36(v27, v20);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v37 = *(v119 + 8);
  v95 = v19;
  v96 = v17;
  result = v37(v19, v17);
  v39 = v123;
  v40 = v124;
  if (v123 < v124)
  {
    __break(1u);
    return result;
  }

  v41 = v116;
  v120 = v33;
  v111(v116, v118 + v122, v20);
  swift_getKeyPath();
  v42 = *(v115 + 52);
  v43 = v109;
  Capsule.subscript.getter();

  v115 = v34;
  v116 = v20;
  v114 = v35;
  v35(v41, v20);
  *v30 = v40;
  v30[1] = v39;
  v30[2] = v40;
  (*(v119 + 32))(v95, &v43[v42], v96);
  v44 = v94;
  v45 = *(v94 + 52);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v109 = v45;
  dispatch thunk of Sequence.makeIterator()();
  v77 = *(v44 + 56);
  *(v30 + v77) = 0;
  v46 = v110;
  v48 = v112;
  v47 = v113;
  if (v40 == v39)
  {
LABEL_15:
    v40 = 0;
    *(v30 + v77) = 1;
    goto LABEL_16;
  }

  v96 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v86 = 0;
  v95 = (v76 + 48);
  v94 = v76 + 32;
  ++v93;
  ++v90;
  v89 = (v84 + 56);
  v88 = (v84 + 32);
  v87 = (v84 + 48);
  v79 = v92 + 1;
  v78 = (v84 + 8);
  v92 = (v76 + 8);
  v91 = v30;
  v85 = v39;
  while (1)
  {
    v30[2] = v40 + 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
    dispatch thunk of IteratorProtocol.next()();
    if ((*v95)(v46, 1, v47) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
      goto LABEL_15;
    }

    v119 = v40 + 1;
    v49 = *v94;
    v50 = v106;
    (*v94)(v106, v46, v47);
    v51 = *(v105 + 48);
    v52 = v104;
    v49(&v104[v51], v50, v47);
    v49(v48, &v52[v51], v47);
    v53 = v107;
    Ref.id.getter();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
    v54 = v108;
    LOBYTE(v49) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v93)(v53, v54);
    if (v49)
    {
      (*v92)(v48, v47);
      goto LABEL_16;
    }

    v84 = v40;
    v55 = v97;
    v56 = v116;
    v57 = v111;
    v111(v97, v118 + v122, v116);
    type metadata accessor for PKDrawingStruct(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    v58 = v101;
    Ref.subscript.getter();
    v114(v55, v56);
    v59 = v98;
    v60 = v102;
    CRRegister.value.getter();
    (*v90)(v58, v60);
    _s8PaperKit12TaggedStrokeOWObTm_0(v59, v121, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = v103;
      v62 = v100;
      (*v88)(v103, v121, v100);
      v63 = 0;
    }

    else
    {
      _s8PaperKit15PKDrawingStructVWOhTm_2(v121, type metadata accessor for TaggedStroke);
      v63 = 1;
      v61 = v103;
      v62 = v100;
    }

    (*v89)(v61, v63, 1, v62);
    v64 = (*v87)(v61, 1, v62);
    v65 = v122;
    if (v64 != 1)
    {
      break;
    }

    v48 = v112;
    v47 = v113;
    (*v92)(v112, v113);
    outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
    v30 = v91;
    v46 = v110;
LABEL_5:
    v40 = v119;
    if (v85 == v119)
    {
      goto LABEL_15;
    }
  }

  v66 = v57;
  v67 = v81;
  (*v88)(v81, v61, v62);
  v68 = v118;
  v69 = v118 + v65;
  v70 = v80;
  v71 = v116;
  v66(v80, v69, v116);
  v72 = v82;
  Ref.subscript.getter();
  v73 = (v114)(v70, v71);
  MEMORY[0x1EEE9AC00](v73);
  *(&v76 - 2) = v117;
  *(&v76 - 1) = v68;
  v74 = v86;
  v75 = specialized Sequence.contains(where:)(partial apply for closure #1 in containsStroke #1 (in:) in PKDrawingCoherence.indexOf(_:), (&v76 - 4));
  (*v79)(v72, v83);
  (*v78)(v67, v62);
  v48 = v112;
  v47 = v113;
  (*v92)(v112, v113);
  if (!v75)
  {
    v86 = v74;
    v46 = v110;
    v30 = v91;
    goto LABEL_5;
  }

  v30 = v91;
  v40 = v84;
LABEL_16:
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_ss12Zip2SequenceV8IteratorVySnySiG9Coherence12CROrderedSetVyAF3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMd);
  return v40;
}

BOOL containsStroke #1 (in:) in PKDrawingCoherence.indexOf(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = v50 - v4;
  v60 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v20 = *(v19 - 8);
  v62 = v19;
  v63 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v53 = v50 - v21;
  v22 = type metadata accessor for CRKeyPath();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Ref.id.getter();
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v23 + 8))(v25, v22);
  if (v26)
  {
    return 1;
  }

  else
  {
    v28 = OBJC_IVAR___PKDrawingCoherence_model;
    v29 = v65;
    swift_beginAccess();
    v51 = *(v14 + 16);
    v51(v18, v29 + v28, v13);
    v30 = type metadata accessor for PKDrawingStruct(0);
    v31 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    v50[2] = v30;
    v50[1] = v31;
    Ref.subscript.getter();
    v32 = *(v14 + 8);
    v32(v18, v13);
    v34 = v58;
    v33 = v59;
    CRRegister.value.getter();
    (*(v57 + 8))(v12, v34);
    v35 = v33;
    v36 = v61;
    _s8PaperKit12TaggedStrokeOWObTm_0(v35, v61, type metadata accessor for TaggedStroke);
    v37 = v29;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v63;
      v38 = v64;
      v40 = v36;
      v41 = v62;
      (*(v63 + 32))(v64, v40, v62);
      v42 = 0;
    }

    else
    {
      _s8PaperKit15PKDrawingStructVWOhTm_2(v36, type metadata accessor for TaggedStroke);
      v42 = 1;
      v39 = v63;
      v38 = v64;
      v41 = v62;
    }

    (*(v39 + 56))(v38, v42, 1, v41);
    if ((*(v39 + 48))(v38, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
      return 0;
    }

    else
    {
      v43 = v53;
      (*(v39 + 32))(v53, v38, v41);
      v44 = v37 + v28;
      v45 = v52;
      v51(v52, v44, v13);
      v46 = v54;
      Ref.subscript.getter();
      v47 = (v32)(v45, v13);
      MEMORY[0x1EEE9AC00](v47);
      v48 = v65;
      v50[-2] = v66;
      v50[-1] = v48;
      v27 = specialized Sequence.contains(where:)(closure #1 in containsStroke #1 (in:) in PKDrawingCoherence.indexOf(_:)partial apply, &v50[-4]);
      (*(v55 + 8))(v46, v56);
      (*(v39 + 8))(v43, v41);
    }
  }

  return v27;
}

void __swiftcall PKDrawingCoherence.undoableAddNewStrokes(_:replacingOldStrokes:)(PKUndoCommand_optional *__return_ptr retstr, Swift::OpaquePointer _, Swift::OpaquePointer replacingOldStrokes)
{
  v4 = v3;
  rawValue = _._rawValue;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &countAndFlagsBits - v7;
  v8 = type metadata accessor for CapsuleUndoAction();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &countAndFlagsBits - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &countAndFlagsBits - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &countAndFlagsBits - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &countAndFlagsBits - v17;
  v18 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = type metadata accessor for CRKeyPath();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &countAndFlagsBits - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PKStroke();
  v27 = MEMORY[0x1EEE9AC00](v23);
  if (*(replacingOldStrokes._rawValue + 2))
  {
    v65 = v11;
    v71 = v9;
    v72 = v8;
    v69 = v26;
    v28 = *(v26 + 16);
    v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v66 = replacingOldStrokes._rawValue;
    v30 = &countAndFlagsBits - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v77 = v25;
    v28(v30, replacingOldStrokes._rawValue + v29, v25, v27);
    v68 = v30;
    isa = PKStroke._bridgeToObjectiveC()().super.isa;
    v32 = [(objc_class *)isa _strokeUUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    CRKeyPath.init(_:)();
    v33 = PKDrawingCoherence.indexOf(_:)(v22);
    v70 = v34;
    (*(v20 + 8))(v22, v19);
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v81._object = 0x80000001D408C380;
    v35._countAndFlagsBits = 0x6F72745320646441;
    v35._object = 0xEB0000000073656BLL;
    v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v36.value._object = 0xEB00000000656C62;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v81._countAndFlagsBits = 0xD00000000000001ALL;
    v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, paperKitBundle, v37, v81);
    countAndFlagsBits = v38._countAndFlagsBits;
    object = v38._object;
    v39 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v40 = v79;
    v41 = *(v79 + 16);
    v42 = v74;
    v43 = v41(v74, &v4[v39], v14);
    v44 = v14;
    MEMORY[0x1EEE9AC00](v43);
    *(&countAndFlagsBits - 4) = rawValue;
    *(&countAndFlagsBits - 3) = v33;
    LOBYTE(v81._object) = v70 & 1;
    swift_beginAccess();
    Capsule.callAsFunction<A>(_:)();
    v45 = v42;
    swift_endAccess();
    v46 = Array._bridgeToObjectiveC()().super.isa;
    [v4 deleteStrokes_];

    [v4 set:0 cachedVisibleStrokes:?];
    v47 = v73;
    v41(v73, &v4[v39], v14);
    v48 = v75;
    Capsule.actionUndoingDifference(from:)();
    v49 = *(v40 + 8);
    v50 = v40 + 8;
    v49(v47, v14);
    v52 = v71;
    v51 = v72;
    if ((*(v71 + 48))(v48, 1, v72) == 1)
    {

      v49(v45, v44);
      (*(v69 + 8))(v68, v77);
      outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence17CapsuleUndoActionVSgMd);
    }

    else
    {
      v54 = v76;
      (*(v52 + 32))(v76, v48, v51);
      rawValue = v49;
      v55 = *(v52 + 16);
      v56 = v65;
      v55(v65, v54, v51);
      v57 = [v4 uuid];
      v58 = type metadata accessor for PKCoherenceUndoCommand(0);
      v79 = v50;
      v59 = v58;
      v60 = v45;
      v61 = objc_allocWithZone(v58);
      v55(&v61[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v56, v51);
      v62 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

      v80.receiver = v61;
      v80.super_class = v59;
      [(PKUndoCommand_optional *)&v80 initWithDrawingUUID:v57 actionName:v62 changesVisibleStrokes:1];
      swift_unknownObjectRelease();

      v63 = *(v52 + 8);
      v63(v56, v51);
      v63(v76, v51);
      rawValue(v60, v44);
      (*(v69 + 8))(v68, v77);
    }
  }

  else
  {
    v53 = Array._bridgeToObjectiveC()().super.isa;
    [v4 undoableAddNewStrokes_];
  }
}

uint64_t closure #1 in PKDrawingCoherence.transformStrokes(_:with:concat:)(uint64_t a1, uint64_t a2, CGFloat *a3, int a4)
{
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = type metadata accessor for PKStroke();
  v13 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v15 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v32[-v16];
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v33 = a4;
    v34 = a1;
    v35 = a3;
    v36 = v4;
    v49 = MEMORY[0x1E69E7CC0];
    v20 = v17;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v49;
    v22 = *(v13 + 16);
    v21 = v13 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v39 = (v21 - 8);
    v40 = v22;
    v24 = *(v21 + 56);
    v37 = v15 + 32;
    v38 = v24;
    v41 = v15;
    v42 = v21;
    v25 = v44;
    do
    {
      v48 = v18;
      v26 = v45;
      v40(v25, v23, v45);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v28 = [(objc_class *)isa _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      CRKeyPath.init(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      WeakRef.init(id:)();
      (*v39)(v25, v26);
      v49 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v19 = v49;
      }

      *(v19 + 16) = v30 + 1;
      (*(v41 + 32))(v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30, v20, v43);
      v23 += v38;
      v18 = v48 - 1;
    }

    while (v48 != 1);
    a3 = v35;
    a1 = v34;
    LOBYTE(a4) = v33;
  }

  _s8PaperKit15PKDrawingStructV16transformStrokes_4with6concat2inySay9Coherence7WeakRefVyAH10CRRegisterVyAA12TaggedStrokeOGGG_So17CGAffineTransformVSbAH7CapsuleV0L0Cyx_GtAH4CRDTRzlFZAC_Tt3g5(v19, a3, a4 & 1, a1);
}

uint64_t _s8PaperKit15PKDrawingStructV16transformStrokes_4with6concat2inySay9Coherence7WeakRefVyAH10CRRegisterVyAA12TaggedStrokeOGGG_So17CGAffineTransformVSbAH7CapsuleV0L0Cyx_GtAH4CRDTRzlFZAC_Tt3g5(uint64_t a1, CGFloat *a2, int a3, uint64_t a4)
{
  v86 = a3;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v78 = a2;
  v88 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v88);
  v77 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v13 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v76 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v72 - v16;
  v17 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v75 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v72 - v20;
  v94 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v94);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v72 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v25 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v92 = &v72 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v72 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v72 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v96 = &v72 - v35;
  t1.a = v6;
  t1.b = v7;
  t1.c = v8;
  t1.d = v9;
  t1.tx = v10;
  t1.ty = v11;
  result = CGAffineTransformIsIdentity(&t1);
  if (!result || (v86 & 1) == 0)
  {
    v37 = *(a1 + 16);
    if (v37)
    {
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v38 = *(v100 - 8);
      v39 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v99 = (v25 + 48);
      v98 = (v34 + 56);
      v91 = (v25 + 16);
      v90 = (v25 + 8);
      v97 = *(v38 + 72);
      v85 = (v34 + 32);
      v89 = (v34 + 48);
      v84 = (v13 + 8);
      v79 = (v34 + 8);
      v81 = a4;
      v80 = v22;
      v95 = v33;
      do
      {
        WeakRef.subscript.getter();
        v40 = v101;
        if ((*v99)(v29, 1, v101))
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
          (*v98)(v32, 1, 1, v33);
        }

        else
        {
          v41 = a4;
          v42 = v92;
          (*v91)(v92, v29, v40);
          outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
          v43 = v93;
          CRRegister.value.getter();
          (*v90)(v42, v40);
          _s8PaperKit12TaggedStrokeOWObTm_0(v43, v22, type metadata accessor for TaggedStroke);
          if (swift_getEnumCaseMultiPayload())
          {
            _s8PaperKit15PKDrawingStructVWOhTm_2(v22, type metadata accessor for TaggedStroke);
            v44 = 1;
            v33 = v95;
          }

          else
          {
            v33 = v95;
            (*v85)(v32, v22, v95);
            v44 = 0;
          }

          (*v98)(v32, v44, 1, v33);
          a4 = v41;
          if ((*v89)(v32, 1, v33) != 1)
          {
            (*v85)(v96, v32, v33);
            v45 = Ref.subscript.modify();
            specialized PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(v41, &lazy protocol witness table cache variable for type Capsule<PKDrawingStruct>.Ref and conformance Capsule<A>.Ref, &_s9Coherence7CapsuleV3RefCy8PaperKit15PKDrawingStructV_GMd, &_s9Coherence7CapsuleV3RefCy8PaperKit15PKDrawingStructV_GMR);
            v45(&t1, 0);
            v46 = v33;
            if (v86)
            {
              v47 = v82;
              Ref.subscript.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
              v48 = v83;
              CRRegister.wrappedValue.getter();
              _s8PaperKit15PKDrawingStructVWOhTm_2(v47, type metadata accessor for PKStrokeStruct);
              v49 = v87;
              v50 = Ref.subscript.modify();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
              v51 = CRRegister.wrappedValue.modify();
              v53 = v52;
              v54 = v52[1];
              v55 = v52[2];
              *&t1.a = *v52;
              *&t1.c = v54;
              *&t1.tx = v55;
              t2.a = v6;
              t2.b = v7;
              t2.c = v8;
              t2.d = v9;
              t2.tx = v10;
              t2.ty = v11;
              CGAffineTransformConcat(&v102, &t1, &t2);
              v56 = *&v102.c;
              v57 = *&v102.tx;
              *v53 = *&v102.a;
              v53[1] = v56;
              v53[2] = v57;
              a4 = v81;
              v51(v104, 0);
              v50(v105, 0);
              (*v84)(v48, v49);
              result = (*v79)(v96, v46);
              v22 = v80;
              v33 = v46;
            }

            else
            {
              v58 = v75;
              Ref.subscript.getter();
              v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
              v60 = v76;
              v74 = v59;
              CRRegister.wrappedValue.getter();
              _s8PaperKit15PKDrawingStructVWOhTm_2(v58, type metadata accessor for PKStrokeStruct);
              v61 = v77;
              v62 = v87;
              Ref.subscript.getter();
              v63 = *v84;
              (*v84)(v60, v62);
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
              CRRegister.wrappedValue.getter();
              _s8PaperKit15PKDrawingStructVWOhTm_2(v61, type metadata accessor for PKStrokeInheritedProperties);
              if (vabdd_f64(t1.a, *v78) >= 0.001 || vabdd_f64(t1.b, v78[1]) >= 0.001 || vabdd_f64(t1.c, v78[2]) >= 0.001 || vabdd_f64(t1.d, v78[3]) >= 0.001 || vabdd_f64(t1.tx, v78[4]) >= 0.1 || vabdd_f64(t1.ty, v78[5]) >= 0.1)
              {
                v65 = v82;
                a4 = v81;
                v72 = v64;
                v66 = v78;
                v73 = v63;
                v67 = v95;
                Ref.subscript.getter();
                v68 = v83;
                CRRegister.wrappedValue.getter();
                _s8PaperKit15PKDrawingStructVWOhTm_2(v65, type metadata accessor for PKStrokeStruct);
                v69 = v87;
                v74 = Ref.subscript.modify();
                v70 = *(v66 + 2);
                *&t1.c = *(v66 + 1);
                *&t1.tx = v70;
                v71 = *v66;
                v33 = v67;
                *&t1.a = v71;
                CRRegister.wrappedValue.setter();
                v74(&t2, 0);
                v73(v68, v69);
                result = (*v79)(v96, v67);
              }

              else
              {
                v33 = v95;
                result = (*v79)(v96, v95);
                a4 = v81;
              }

              v22 = v80;
            }

            goto LABEL_7;
          }
        }

        result = outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
LABEL_7:
        v39 += v97;
        --v37;
      }

      while (v37);
    }
  }

  return result;
}

uint64_t closure #1 in PKDrawingCoherence.deleteStrokes(_:)(char *a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v85 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v73 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v73 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v74 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v73 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v84 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v73 - v17;
  v99 = type metadata accessor for CRKeyPath();
  v18 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v87 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v73 - v23;
  v24 = type metadata accessor for PKStroke();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v97 = &v73 - v29;
  v30 = *(a2 + 16);
  v75 = v10;
  if (v30)
  {
    v32 = *(v25 + 16);
    v31 = v25 + 16;
    v33 = a2 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v91 = *(v31 + 56);
    v92 = v32;
    v90 = (v31 - 8);
    v79 = (v10 + 8);
    v89 = (v18 + 32);
    v98 = MEMORY[0x1E69E7CC0];
    v34 = v97;
    v82 = v18;
    v81 = v24;
    v80 = v31;
    do
    {
      v35 = v92;
      (v92)(v34, v33, v24, v28);
      v35(v96, v34, v24);
      type metadata accessor for PKStrokeCoherenceBase(0);
      if (swift_dynamicCast())
      {
        v36 = v100;
        v37 = v95;
        (*((*MEMORY[0x1E69E7D40] & *v100) + 0x60))();
        v38 = v87;
        v39 = v101;
        Ref.id.getter();

        v40 = v93;
        v24 = v81;
        (*v79)(v37, v39);
        (*v90)(v97, v24);
        v41 = *v89;
        (*v89)(v40, v38, v99);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
        }

        v43 = *(v98 + 2);
        v42 = *(v98 + 3);
        if (v43 >= v42 >> 1)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1, v98);
        }

        v45 = v98;
        v44 = v99;
        *(v98 + 2) = v43 + 1;
        v18 = v82;
        v41(&v45[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v82 + 72) * v43], v93, v44);
        v34 = v97;
      }

      else
      {
        (*v90)(v34, v24);
      }

      v33 += v91;
      --v30;
    }

    while (v30);
  }

  else
  {
    v98 = MEMORY[0x1E69E7CC0];
  }

  v46 = v76;
  v81 = Capsule.Ref.root.modify();
  v97 = v47;
  v48 = swift_allocObject();
  v87 = v48;
  *(v48 + 16) = MEMORY[0x1E69E7CD0];
  v96 = (v48 + 16);
  v49 = *(v98 + 2);
  if (v49)
  {
    v50 = type metadata accessor for PKDrawingStruct(0);
    v52 = *(v18 + 16);
    v51 = v18 + 16;
    v93 = v52;
    v53 = &v98[(*(v51 + 64) + 32) & ~*(v51 + 64)];
    v91 = *(v50 + 20);
    v92 = (v75 + 48);
    v90 = (v75 + 8);
    v82 = v75 + 16;
    v89 = *(v51 + 56);
    v54 = v85;
    v55 = v73;
    (v52)(v94, v53, v99);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      Ref.init(id:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      CROrderedSet.remove(_:)();
      v61 = v101;
      if ((*v92)(v54, 1, v101) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
        v56 = v84;
        (*v82)(v84, v55, v61);
        v57 = v95;
        v58 = v61;
        specialized Set._Variant.insert(_:)(v95, v56);
        v59 = *v90;
        (*v90)(v57, v58);
        v60 = v58;
        v54 = v85;
        v59(v55, v60);
      }

      else
      {
        (*v90)(v55, v61);
        outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
      }

      v53 = v89 + v53;
      if (!--v49)
      {
        break;
      }

      (v93)(v94, v53, v99);
    }

    v46 = v76;
  }

  else
  {
  }

  v62 = v78;
  v63 = v75;
  if (*(*v96 + 16))
  {
    type metadata accessor for PKDrawingStruct(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    CROrderedSet.makeIterator()();
    v64 = (v63 + 48);
    v65 = (v63 + 32);
    v66 = (v63 + 8);
    do
    {
      CROrderedSet.Iterator.next()();
      v68 = v101;
      if ((*v64)(v62, 1, v101) == 1)
      {
        break;
      }

      v69 = v83;
      (*v65)(v83, v62, v68);
      if (specialized removeSubstrokes #1 <A, B>(from:) in PKDrawingStruct.deleteStrokes<A, B>(_:in:)(v69, v87, v46))
      {
        v70 = v77;
        CROrderedSet.remove(_:)();
        v68 = v101;
        v71 = v70;
        v62 = v78;
        outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
      }

      (*v66)(v69, v68);
      v67 = v96;
      swift_beginAccess();
    }

    while (*(*v67 + 16));
    (*(v74 + 8))(v88, v86);
  }

  return v81(&v100, 0);
}

void __swiftcall PKDrawingCoherence.undoableDeleteStrokes(_:)(PKUndoCommand_optional *__return_ptr retstr, Swift::OpaquePointer a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for CapsuleUndoAction();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v47._object = 0x80000001D408C360;
  v18._countAndFlagsBits = 0x6573617245;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v18._object = 0xE500000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD000000000000019;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, paperKitBundle, v20, v47);
  countAndFlagsBits = v21._countAndFlagsBits;
  object = v21._object;
  v22 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v23 = *(v12 + 16);
  v23(v17, &v3[v22], v11);
  type metadata accessor for PKStroke();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 deleteStrokes_];

  [v3 set:0 cachedVisibleStrokes:?];
  v23(v14, &v3[v22], v11);
  Capsule.actionUndoingDifference(from:)();
  v26 = v12 + 8;
  v25 = *(v12 + 8);
  v25(v14, v11);
  v28 = v43;
  v27 = v44;
  if ((*(v43 + 48))(v6, 1, v44) == 1)
  {
    v25(v17, v11);

    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v29 = v45;
    (*(v28 + 32))(v45, v6, v27);
    v38 = v17;
    v39 = v25;
    v37 = v26;
    v30 = *(v28 + 16);
    v31 = v41;
    v30(v41, v29, v27);
    v32 = [v3 uuid];
    v33 = type metadata accessor for PKCoherenceUndoCommand(0);
    v34 = objc_allocWithZone(v33);
    v30(&v34[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v31, v27);
    v35 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

    v46.receiver = v34;
    v46.super_class = v33;
    [(PKUndoCommand_optional *)&v46 initWithDrawingUUID:v32 actionName:v35 changesVisibleStrokes:1];
    swift_unknownObjectRelease();

    v36 = *(v28 + 8);
    v36(v31, v27);
    v36(v45, v27);
    v39(v38, v11);
  }
}

id @objc PKDrawingCoherence.undoableAddNewStrokes(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PKStroke();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

void __swiftcall PKDrawingCoherence.undoableTransformStrokes(_:with:concat:)(PKUndoCommand_optional *__return_ptr retstr, Swift::OpaquePointer _, CGAffineTransform *with, Swift::Bool concat)
{
  v5 = v4;
  LODWORD(v48) = concat;
  v6 = *&with->a;
  v46 = *&with->c;
  v47 = v6;
  tx = with->tx;
  ty = with->ty;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v42 - v10;
  v11 = type metadata accessor for CapsuleUndoAction();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v56._object = 0x80000001D408C340;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._object = 0x80000001D408C320;
  v56._countAndFlagsBits = 0xD00000000000001DLL;
  v23._countAndFlagsBits = 0xD000000000000011;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, paperKitBundle, v24, v56);
  countAndFlagsBits = v25._countAndFlagsBits;
  object = v25._object;
  v26 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v27 = *(v16 + 16);
  v27(v21, &v5[v26], v15);
  type metadata accessor for PKStroke();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v53[0] = v47;
  v53[1] = v46;
  v54 = tx;
  v55 = ty;
  [v5 transformStrokes:isa withTransform:v53 concat:v48 & 1];

  [v5 set:0 cachedVisibleStrokes:?];
  v27(v18, &v5[v26], v15);
  v29 = v50;
  Capsule.actionUndoingDifference(from:)();
  v32 = *(v16 + 8);
  v30 = (v16 + 8);
  v31 = v32;
  v32(v18, v15);
  v33 = v49;
  if ((*(v49 + 48))(v29, 1, v11) == 1)
  {
    v31(v21, v15);

    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v34 = v51;
    (*(v33 + 32))(v51, v29, v11);
    *&v47 = v21;
    v50 = v30;
    v48 = v31;
    v35 = *(v33 + 16);
    v36 = v44;
    v35(v44, v34, v11);
    v37 = [v5 uuid];
    v38 = type metadata accessor for PKCoherenceUndoCommand(0);
    v39 = objc_allocWithZone(v38);
    v35(&v39[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v36, v11);
    v40 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

    v52.receiver = v39;
    v52.super_class = v38;
    [(PKUndoCommand_optional *)&v52 initWithDrawingUUID:v37 actionName:v40 changesVisibleStrokes:1];
    swift_unknownObjectRelease();

    v41 = *(v33 + 8);
    v41(v36, v11);
    v41(v51, v11);
    v48(v47, v15);
  }
}

void closure #1 in PKDrawingCoherence.setStrokes(_:paths:masks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v113 = a3;
  v94 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = v81 - v6;
  v87 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v96 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v93 = v81 - v8;
  v112 = type metadata accessor for UUID();
  v101 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v99 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v98 = v81 - v11;
  v97 = type metadata accessor for PKStrokePath();
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v84 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = v81 - v14;
  v111 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v111);
  v110 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v109 = v81 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v18 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v81 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v114 = v81 - v25;
  v26 = type metadata accessor for PKStroke();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v122 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v81 - v31;
  v33 = *(a2 + 16);
  if (v33)
  {
    v35 = *(v27 + 16);
    v34 = v27 + 16;
    v36 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v118 = (v34 - 8);
    v119 = v35;
    v116 = *(v34 + 56);
    v117 = (v24 + 56);
    v104 = (v18 + 16);
    v103 = (v18 + 8);
    v100 = (v24 + 32);
    v102 = (v24 + 48);
    v91 = v95 + 16;
    ++v101;
    v83 = v95 + 32;
    v82 = (v96 + 5);
    v81[1] = v95 + 8;
    v96 = (v24 + 8);
    v115 = v22;
    v105 = v34;
    do
    {
      v37 = v119;
      (v119)(v32, v36, v26, v30);
      v37(v122, v32, v26);
      type metadata accessor for PKStrokeCoherence(0);
      if (swift_dynamicCast())
      {
        v38 = v23;
        v39 = v121;
        v40 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
        swift_beginAccess();
        v41 = v107;
        v42 = v108;
        (*v104)(v107, &v39[v40], v108);

        v43 = v109;
        CRRegister.value.getter();
        (*v103)(v41, v42);
        v44 = v110;
        _s8PaperKit12TaggedStrokeOWObTm_0(v43, v110, type metadata accessor for TaggedStroke);
        if (swift_getEnumCaseMultiPayload())
        {
          _s8PaperKit15PKDrawingStructVWOhTm_2(v44, type metadata accessor for TaggedStroke);
          v45 = 1;
          v23 = v38;
          v22 = v115;
        }

        else
        {
          v22 = v115;
          v23 = v38;
          (*v100)(v115, v44, v38);
          v45 = 0;
        }

        (*v117)(v22, v45, 1, v23);
        if ((*v102)(v22, 1, v23) != 1)
        {
          (*v100)(v114, v22, v23);
          isa = PKStroke._bridgeToObjectiveC()().super.isa;
          v47 = [(objc_class *)isa _strokeUUID];

          v48 = v98;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v113 + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v48), v48 = v98, (v50 & 1) != 0))
          {
            v51 = *(v113 + 56) + *(v95 + 72) * v49;
            v52 = v98;
            v90 = *(v95 + 16);
            v53 = v95;
            v54 = v84;
            v90(v84, v51, v97);
            v55 = *v101;
            (*v101)(v52, v112);
            v56 = *(v53 + 32);
            v57 = v92;
            v58 = v97;
            v56(v92, v54, v97);
            v59 = v86;
            v90(v86, v57, v58);
            v60 = type metadata accessor for CRKeyPath();
            v61 = v88;
            (*(*(v60 - 8) + 56))(v88, 1, 1, v60);
            v62 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);

            MEMORY[0x1DA6CC020](v63, v59, v61, v87, v62);
            v64 = Ref.subscript.modify();
            type metadata accessor for PKStrokeStruct(0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
            v65 = CRRegister.wrappedValue.modify();
            v67 = v66 + *(type metadata accessor for PKStrokeProperties(0) + 32);
            v22 = v115;
            (*v82)(v67, v93, v85);
            v65(v120, 0);
            v64(&v121, 0);
            (*(v95 + 8))(v92, v97);
          }

          else
          {
            v55 = *v101;
            (*v101)(v48, v112);
          }

          v68 = PKStroke._bridgeToObjectiveC()().super.isa;
          v69 = [(objc_class *)v68 _strokeUUID];

          v70 = v99;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v106 + 16) && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(v70), v70 = v99, (v72 & 1) != 0))
          {
            v73 = *(*(v106 + 56) + 8 * v71);
            v74 = v70;
            v75 = v73;
            v55(v74, v112);
            type metadata accessor for PKStrokeMaskStruct();
            v76 = swift_allocObject();
            type metadata accessor for PKStrokeMaskWrapper();
            v77 = swift_allocObject();
            *(v77 + 16) = v75;
            *(v76 + 16) = v77;
            v90 = v75;
            v78 = v114;
            v89 = Ref.subscript.modify();
            type metadata accessor for PKStrokeStruct(0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
            v79 = CRRegister.wrappedValue.modify();
            *(v80 + *(type metadata accessor for PKStrokeProperties(0) + 36)) = v76;
            v22 = v115;

            v79(v120, 0);
            v89(&v121, 0);

            (*v96)(v78, v23);
          }

          else
          {
            v55(v70, v112);
            (*v96)(v114, v23);
          }

          (*v118)(v32, v26);
          goto LABEL_5;
        }

        (*v118)(v32, v26);
      }

      else
      {
        (*v118)(v32, v26);
        (*v117)(v22, 1, 1, v23);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
LABEL_5:
      v36 += v116;
      --v33;
    }

    while (v33);
  }
}

void __swiftcall PKDrawingCoherence.undoableSetStrokes(_:paths:masks:)(PKUndoCommand_optional *__return_ptr retstr, Swift::OpaquePointer _, Swift::OpaquePointer paths, Swift::OpaquePointer masks)
{
  v5 = v4;
  rawValue = paths._rawValue;
  v50 = masks._rawValue;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = (&countAndFlagsBits - v8);
  v9 = type metadata accessor for CapsuleUndoAction();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &countAndFlagsBits - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &countAndFlagsBits - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &countAndFlagsBits - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &countAndFlagsBits - v17;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v57._object = 0x80000001D408C2E0;
  v19._countAndFlagsBits = 0x5320796669646F4DLL;
  v19._object = 0xEE0073656B6F7274;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0xD00000000000001DLL;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, paperKitBundle, v21, v57);
  countAndFlagsBits = v22._countAndFlagsBits;
  object = v22._object;
  v23 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v24 = *(v14 + 16);
  v25 = v24(v18, &v5[v23], v13);
  MEMORY[0x1EEE9AC00](v25);
  v27 = rawValue;
  v26 = v50;
  *(&countAndFlagsBits - 4) = _._rawValue;
  *(&countAndFlagsBits - 3) = v27;
  v57._object = v26;
  swift_beginAccess();
  Capsule.mutate<A>(_:)();
  v28 = v18;
  swift_endAccess();
  [v5 invalidateVisibleStrokes];
  [v5 set:0 cachedVisibleStrokes:?];
  v29 = v48;
  v24(v48, &v5[v23], v13);
  v30 = v54;
  Capsule.actionUndoingDifference(from:)();
  v31 = *(v14 + 8);
  v31(v29, v13);
  v32 = v52;
  v33 = v53;
  v34 = (*(v52 + 48))(v30, 1, v53);
  v35 = (v14 + 8);
  v36 = v32;
  v37 = v30;
  if (v34 == 1)
  {
    v31(v28, v13);

    outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v50 = v35;
    v38 = v55;
    (*(v36 + 32))(v55, v37, v33);
    rawValue = v28;
    v39 = *(v36 + 16);
    v54 = v31;
    v40 = v47;
    v39(v47, v38, v33);
    v41 = [v5 uuid];
    v42 = type metadata accessor for PKCoherenceUndoCommand(0);
    v43 = objc_allocWithZone(v42);
    v39(&v43[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v40, v33);
    v44 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

    v56.receiver = v43;
    v56.super_class = v42;
    [(PKUndoCommand_optional *)&v56 initWithDrawingUUID:v41 actionName:v44 changesVisibleStrokes:1];
    swift_unknownObjectRelease();

    v45 = *(v36 + 8);
    v45(v40, v33);
    v45(v55, v33);
    v54(rawValue, v13);
  }
}

void closure #1 in PKDrawingCoherence.setStrokes(_:inks:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v5 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v59 - v6;
  v7 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v74);
  v90 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = v59 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v12 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = v59 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v16 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v62 = v59 - v17;
  v93 = type metadata accessor for PKInk();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for PKStroke();
  v59[0] = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v59 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeV_AA5PKInkVtMd);
  v24 = MEMORY[0x1EEE9AC00](v87);
  v85 = v59 - v25;
  v86 = *(a2 + 16);
  if (v86)
  {
    v26 = 0;
    v83 = *(v59[0] + 16);
    v27 = a2 + ((*(v59[0] + 80) + 32) & ~*(v59[0] + 80));
    v80 = *(v59[0] + 72);
    v84 = v59[0] + 16;
    v79 = (v59[0] + 32);
    v78 = v91 + 16;
    v77 = v91 + 32;
    v76 = (v91 + 8);
    v75 = (v16 + 56);
    v70 = (v12 + 16);
    v69 = (v12 + 8);
    v67 = (v16 + 32);
    v68 = (v16 + 48);
    v61 = (v5 + 8);
    v60 = (v16 + 8);
    v82 = a3;
    v92 = v19;
    v81 = v23;
    v83(v23, v27, v94, v24);
    while (1)
    {
      v29 = *(a3 + 16);
      if (v26 == v29)
      {
        (*(v59[0] + 8))(v23, v94);
        return;
      }

      if (v26 >= v29)
      {
        __break(1u);
        return;
      }

      v30 = v91;
      v31 = a3 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v91 + 72) * v26;
      v32 = *(v87 + 48);
      v33 = *v79;
      v34 = v85;
      v35 = v23;
      v36 = v94;
      (*v79)(v85, v35, v94);
      v37 = v31;
      v38 = v93;
      (*(v30 + 16))(&v34[v32], v37, v93);
      v39 = *(v30 + 32);
      v40 = v92;
      v39(v92, &v34[v32], v38);
      v33(v88, v34, v36);
      type metadata accessor for PKStrokeCoherence(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v41 = v96[0];
      v42 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
      swift_beginAccess();
      v43 = v71;
      v44 = v72;
      (*v70)(v71, &v41[v42], v72);

      v45 = v73;
      CRRegister.value.getter();
      (*v69)(v43, v44);
      _s8PaperKit12TaggedStrokeOWObTm_0(v45, v90, type metadata accessor for TaggedStroke);
      if (swift_getEnumCaseMultiPayload())
      {
        _s8PaperKit15PKDrawingStructVWOhTm_2(v90, type metadata accessor for TaggedStroke);
        v46 = 1;
        v47 = v89;
      }

      else
      {
        v47 = v89;
        (*v67)(v95, v90, v89);
        v46 = 0;
      }

      v48 = v95;
      (*v75)(v95, v46, 1, v47);
      if ((*v68)(v48, 1, v47) == 1)
      {
        (*v76)(v40, v93);
        goto LABEL_4;
      }

      v49 = v62;
      (*v67)(v62, v95, v47);
      v50 = v66;
      v51 = Ref.subscript.modify();
      specialized PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(v50, &lazy protocol witness table cache variable for type Capsule<PKDrawingStruct>.Ref and conformance Capsule<A>.Ref, &_s9Coherence7CapsuleV3RefCy8PaperKit15PKDrawingStructV_GMd, &_s9Coherence7CapsuleV3RefCy8PaperKit15PKDrawingStructV_GMR);
      v51(v96, 0);
      v52 = v63;
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
      v53 = v64;
      CRRegister.wrappedValue.getter();
      _s8PaperKit15PKDrawingStructVWOhTm_2(v52, type metadata accessor for PKStrokeStruct);
      isa = PKInk._bridgeToObjectiveC()().super.isa;
      v55 = v65;
      v56 = Ref.subscript.modify();
      v96[9] = isa;
      type metadata accessor for PKStrokeInheritedProperties(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
      CRRegister.wrappedValue.setter();
      v56(v96, 0);
      v57 = v53;
      v58 = v92;
      (*v61)(v57, v55);
      (*v60)(v49, v47);
      (*v76)(v58, v93);
      a3 = v82;
      v23 = v81;
LABEL_5:
      ++v26;
      v27 += v80;
      if (v86 == v26)
      {
        return;
      }

      v83(v23, v27, v94, v28);
    }

    (*v76)(v40, v93);
    (*v75)(v95, 1, 1, v89);
LABEL_4:
    a3 = v82;
    v23 = v81;
    outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    goto LABEL_5;
  }
}

void __swiftcall PKDrawingCoherence.undoableSetStrokes(_:inks:)(PKUndoCommand_optional *__return_ptr retstr, Swift::OpaquePointer _, Swift::OpaquePointer inks)
{
  v4 = v3;
  rawValue = inks._rawValue;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = (&v38 - v6);
  v7 = type metadata accessor for CapsuleUndoAction();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v47._object = 0x80000001D408C300;
  v18._countAndFlagsBits = 0x736B6E4920746553;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v18._object = 0xE800000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD000000000000014;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, paperKitBundle, v20, v47);
  v21 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v22 = *(v12 + 16);
  v22(v17, &v4[v21], v11);
  type metadata accessor for PKStroke();
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for PKInk();
  v24 = Array._bridgeToObjectiveC()().super.isa;
  [v4 setStrokes:isa inks:v24];

  [v4 set:0 cachedVisibleStrokes:?];
  v22(v14, &v4[v21], v11);
  v25 = v43;
  Capsule.actionUndoingDifference(from:)();
  v26 = *(v12 + 8);
  v26(v14, v11);
  v28 = v41;
  v27 = v42;
  v29 = v25;
  if ((*(v41 + 48))(v25, 1, v42) == 1)
  {
    v26(v17, v11);

    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v30 = v44;
    (*(v28 + 32))(v44, v29, v27);
    v43 = v26;
    v31 = *(v28 + 16);
    v32 = v45;
    v31(v45, v30, v27);
    v38 = [v4 uuid];
    v33 = type metadata accessor for PKCoherenceUndoCommand(0);
    rawValue = v17;
    v34 = v33;
    v35 = objc_allocWithZone(v33);
    v31(&v35[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v32, v27);
    v36 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

    v46.receiver = v35;
    v46.super_class = v34;
    [(PKUndoCommand_optional *)&v46 initWithDrawingUUID:v38 actionName:v36 changesVisibleStrokes:1];
    swift_unknownObjectRelease();

    v37 = *(v28 + 8);
    v37(v45, v27);
    v37(v44, v27);
    v43(rawValue, v11);
  }
}

void closure #1 in PKDrawingCoherence.setStrokes(_:groupID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v54 = a3;
  v52 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v52);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v37 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v8 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v37 - v9;
  v48 = type metadata accessor for PKStroke();
  v10 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v37 - v18;
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v10 + 16);
    v20 = v10 + 16;
    v43 = v21;
    v42 = (v8 + 16);
    v41 = (v8 + 8);
    v44 = (v16 + 56);
    v57 = (v16 + 32);
    v40 = (v16 + 48);
    v39 = (v16 + 8);
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v45 = v20;
    v38 = *(v20 + 56);
    while (1)
    {
      v23 = v14;
      v43(v47, v22, v48, v17);
      type metadata accessor for PKStrokeCoherence(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v24 = v56;
      v25 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
      swift_beginAccess();
      v26 = v49;
      v27 = v50;
      (*v42)(v49, &v24[v25], v50);

      v28 = v51;
      CRRegister.value.getter();
      (*v41)(v26, v27);
      _s8PaperKit12TaggedStrokeOWObTm_0(v28, v5, type metadata accessor for TaggedStroke);
      if (swift_getEnumCaseMultiPayload())
      {
        _s8PaperKit15PKDrawingStructVWOhTm_2(v5, type metadata accessor for TaggedStroke);
        v29 = 1;
        v14 = v23;
      }

      else
      {
        v14 = v23;
        (*v57)(v23, v5, v15);
        v29 = 0;
      }

      v30 = v5;
      (*v44)(v14, v29, 1, v15);
      if ((*v40)(v14, 1, v15) == 1)
      {
        goto LABEL_11;
      }

      v31 = v46;
      (*v57)(v46, v14, v15);
      v32 = Ref.subscript.modify();
      type metadata accessor for PKStrokeStruct(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
      v33 = CRRegister.wrappedValue.modify();
      v35 = v34;
      v36 = type metadata accessor for PKStrokeProperties(0);
      outlined assign with copy of UUID?(v54, v35 + *(v36 + 20));
      v33(v55, 0);
      v32(&v56, 0);
      (*v39)(v31, v15);
      v22 += v38;
      --v19;
      v5 = v30;
      if (!v19)
      {
        return;
      }
    }

    (*v44)(v14, 1, 1, v15);
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id PKDrawingCoherence.undoableSetStrokes(_:groupID:actionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v50 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v45 - v6;
  v7 = type metadata accessor for CapsuleUndoAction();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v56 = v20;
  v57 = v15;
  v22 = *(v15 + 16);
  v52 = v4;
  v49 = v22;
  v22(v20, &v4[v21], v14);
  type metadata accessor for PKStroke();
  v23.super.isa = Array._bridgeToObjectiveC()().super.isa;
  outlined init with copy of Date?(v50, v13, &_s10Foundation4UUIDVSgMd);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  isa = 0;
  if ((*(v25 + 48))(v13, 1, v24) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v25 + 8))(v13, v24);
  }

  v27 = v52;
  [v52 setStrokes:v23.super.isa groupID:isa];

  v28 = v27;
  [v27 set:0 cachedVisibleStrokes:?];
  v49(v17, &v27[v21], v14);
  v29 = v51;
  v30 = v56;
  Capsule.actionUndoingDifference(from:)();
  v31 = v57 + 8;
  v32 = *(v57 + 8);
  v32(v17, v14);
  v34 = v54;
  v33 = v55;
  if ((*(v54 + 48))(v29, 1, v55) == 1)
  {
    v32(v30, v14);
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence17CapsuleUndoActionVSgMd);
    return 0;
  }

  else
  {
    v36 = v53;
    (*(v34 + 32))(v53, v29, v33);
    v57 = v31;
    v37 = *(v34 + 16);
    v38 = v46;
    v37(v46, v36, v33);
    v39 = [v28 uuid];
    v40 = type metadata accessor for PKCoherenceUndoCommand(0);
    v41 = objc_allocWithZone(v40);
    v37(&v41[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v38, v33);
    v42 = MEMORY[0x1DA6CCED0](v47, v48);
    v58.receiver = v41;
    v58.super_class = v40;
    v43 = objc_msgSendSuper2(&v58, sel_initWithDrawingUUID_actionName_changesVisibleStrokes_, v39, v42, 0);
    swift_unknownObjectRelease();

    v44 = *(v34 + 8);
    v44(v38, v33);
    v44(v53, v33);
    v32(v56, v14);
    return v43;
  }
}

void closure #1 in PKDrawingCoherence.mergeStrokes(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  if (a2 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = (v5 + 8);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA6CE0C0](v9, a2);
      }

      else
      {
        v11 = *(a2 + 8 * v9 + 32);
      }

      v12 = v11;
      ++v9;
      (*((*MEMORY[0x1E69E7D40] & *v11) + 0xA0))(a1, 0);

      (*v10)(v7, v4);
    }

    while (v8 != v9);
  }
}

id PKDrawingCoherence.update(fromSlicedIntersectingIndexes:resultNewRoots:resultUpdatedStrokes:count:)(uint64_t a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v43 = a4;
  v44 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  countAndFlagsBits = &object - v9;
  v10 = type metadata accessor for CapsuleUndoAction();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &object - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &object - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &object - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &object - v19;
  v21 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v20, &v5[v21], v14);
  v50 = v43;
  v51 = a2;
  v52 = a1;
  v53 = v44;
  swift_beginAccess();
  Capsule.mutate<A>(_:)();
  swift_endAccess();
  [v5 invalidateVisibleStrokes];
  v22(v17, &v5[v21], v14);
  v23 = v45;
  v24 = v46;
  v25 = countAndFlagsBits;
  Capsule.actionUndoingDifference(from:)();
  v26 = v25;
  v27 = *(v15 + 8);
  v27(v17, v14);
  if ((*(v23 + 48))(v26, 1, v24) == 1)
  {
    v27(v20, v14);
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence17CapsuleUndoActionVSgMd);
    return 0;
  }

  else
  {
    v43 = v27;
    v44 = v20;
    v29 = v48;
    (*(v23 + 32))(v48, v26, v24);
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v30.value._object = 0xEB00000000656C62;
    v55._object = 0x80000001D408C2C0;
    v31._countAndFlagsBits = 0x7245206C65786950;
    v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v31._object = 0xEB00000000657361;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0xD00000000000001FLL;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, paperKitBundle, v32, v55);
    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;
    v34 = *(v23 + 16);
    v35 = v49;
    v34(v49, v29, v24);
    v36 = [v5 uuid];
    v37 = type metadata accessor for PKCoherenceUndoCommand(0);
    v38 = objc_allocWithZone(v37);
    v34(&v38[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v35, v24);
    v39 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

    v54.receiver = v38;
    v54.super_class = v37;
    v40 = objc_msgSendSuper2(&v54, sel_initWithDrawingUUID_actionName_changesVisibleStrokes_, v36, v39, 1);
    swift_unknownObjectRelease();

    v41 = *(v23 + 8);
    v41(v49, v24);
    v41(v48, v24);
    v43(v44, v14);
    return v40;
  }
}

void closure #1 in PKDrawingCoherence.update(fromSlicedIntersectingIndexes:resultNewRoots:resultUpdatedStrokes:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v29 = a5;
  v25 = a4;
  v27 = type metadata accessor for NSFastEnumerationIterator();
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v30 = a2;
  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v30)
  {
    v14 = (v11 + 8);
    v26 = (v7 + 8);
    v15 = MEMORY[0x1E69E7D40];
    v16 = v30;
    while (v16 <= v30)
    {
      --v16;
      v17 = *(v28 + 8 * v16);
      v32 = v16;
      if (v17)
      {
        type metadata accessor for PKStrokeCoherenceBase(0);
        v31 = *((*v15 & *swift_dynamicCastClassUnconditional()) + 0xA0);
        v18 = v17;
        v31(a1, 0);
        v16 = v32;

        (*v14)(v13, v10);
      }

      else
      {
        swift_getKeyPath();
        v19 = *(v25 + 8 * v16);
        v31 = Capsule.Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
        CROrderedSet.remove(at:)(v19);
        v31(&v34, 0);
      }

      v20 = *(v29 + 8 * v16);
      if (v20)
      {
        v21 = v20;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        v22 = MEMORY[0x1E69E7D40];
        while (v35)
        {
          outlined init with take of Any(&v34, &v33);
          type metadata accessor for PKStrokeCoherenceBase(0);
          swift_dynamicCast();
          v23 = v36;
          (*((*v22 & *v36) + 0xA0))(a1, 0);

          (*v14)(v13, v10);
          NSFastEnumerationIterator.next()();
        }

        (*v26)(v9, v27);

        v16 = v32;
      }

      v15 = MEMORY[0x1E69E7D40];
      if (!v16)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

id PKDrawingCoherence.applyTransform(_:transformInk:)(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v10(v8, v2 + v9, v5);
  v11 = type metadata accessor for PKDrawingCoherence(0);
  v12 = objc_allocWithZone(v11);
  v10(&v12[OBJC_IVAR___PKDrawingCoherence_model], v8, v5);
  v17.receiver = v12;
  v17.super_class = v11;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  (*(v6 + 8))(v8, v5);
  v15[16] = a2;
  v16 = a1;
  swift_beginAccess();
  Capsule.mutate<A>(_:)();
  swift_endAccess();
  [v13 invalidateVisibleStrokes];
  return v13;
}

uint64_t closure #1 in PKDrawingCoherence.applyTransform(_:transformInk:)(uint64_t a1, int a2, double *a3)
{
  v30 = a2;
  v4 = *a3;
  v28 = *(a3 + 1);
  v29 = v4;
  v5 = a3[4];
  v6 = a3[5];
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v27 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  swift_getKeyPath();
  v37 = a1;
  Capsule.Ref.subscript.getter();

  CROrderedSet.makeIterator()();
  (*(v33 + 8))(v15, v13);
  v32 = v18;
  v33 = v16;
  CROrderedSet.Iterator.next()();
  v19 = v26;
  v20 = *(v26 + 48);
  if (v20(v12, 1, v7) != 1)
  {
    v21 = *(v19 + 32);
    do
    {
      v21(v9, v12, v7);
      transformStroke #1 (_:) in closure #1 in PKDrawingCoherence.applyTransform(_:transformInk:)(v9, v37, v30 & 1, v31);
      (*(v19 + 8))(v9, v7);
      CROrderedSet.Iterator.next()();
    }

    while (v20(v12, 1, v7) != 1);
  }

  (*(v27 + 8))(v32, v33);
  v22 = Capsule.Ref.root.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v23 = CRRegister.wrappedValue.modify();
  v38 = *v24;
  *&v34.c = v28;
  *&v34.a = v29;
  v34.tx = v5;
  v34.ty = v6;
  *v24 = CGRectApplyAffineTransform(v38, &v34);
  v23(v35, 0);
  return v22(v36, 0);
}

uint64_t transformStroke #1 (_:) in closure #1 in PKDrawingCoherence.applyTransform(_:transformInk:)(void *a1, uint64_t a2, int a3, double *a4)
{
  v175 = a3;
  v182 = *&a2;
  v177 = a1;
  v4 = *a4;
  v137 = *(a4 + 1);
  v138 = v4;
  v5 = a4[4];
  v6 = a4[5];
  v176 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v143 = &v133 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v139 = &v133 - v10;
  v156 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v156);
  v141 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v178 = &v133 - v13;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v146 = *(v179 - 1);
  MEMORY[0x1EEE9AC00](v179);
  v136 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v133 - v16;
  v142 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v142);
  v152 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v133 - v18;
  v151 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v151);
  v134 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v133 - v22;
  v150 = type metadata accessor for PKStrokePath();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v140 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v133 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v167 = &v133 - v27;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v133 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v172 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v166 = &v133 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v171 = &v133 - v32;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v133 - v33;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v165 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  isa = (&v133 - v34);
  v35 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v35);
  v161 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v160 = &v133 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v133 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v133 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v133 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v158 = &v133 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v133 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v173 = &v133 - v56;
  v181 = v29;
  Ref.subscript.getter();
  CRRegister.value.getter();
  v57 = *(v49 + 8);
  v159 = v48;
  v157 = v57;
  v57(v53, v48);
  _s8PaperKit12TaggedStrokeOWObTm_0(v44, v41, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v55 + 32))(v47, v41, v54);
    v58 = 0;
  }

  else
  {
    _s8PaperKit15PKDrawingStructVWOhTm_2(v41, type metadata accessor for TaggedStroke);
    v58 = 1;
  }

  (*(v55 + 56))(v47, v58, 1, v54);
  v59 = (*(v55 + 48))(v47, 1, v54);
  v60 = v182;
  v61 = v172;
  v62 = v171;
  v63 = v174;
  if (v59 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
    v64 = v158;
    Ref.subscript.getter();
    v65 = v160;
    v66 = v159;
    CRRegister.value.getter();
    v157(v64, v66);
    v67 = v65;
    v68 = v161;
    _s8PaperKit12TaggedStrokeOWObTm_0(v67, v161, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload())
    {
      _s8PaperKit15PKDrawingStructVWOhTm_2(v68, type metadata accessor for TaggedStroke);
      v69 = 1;
      v70 = v170;
      v71 = v169;
      v72 = v168;
      v73 = v176;
      v74 = v175;
      v75 = v167;
    }

    else
    {
      v71 = v169;
      v75 = v167;
      v70 = v170;
      (*(v169 + 32))(v167, v68, v170);
      v69 = 0;
      v72 = v168;
      v73 = v176;
      v74 = v175;
    }

    (*(v71 + 56))(v75, v69, 1, v70);
    if ((*(v71 + 48))(v75, 1, v70) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    }

    else
    {
      (*(v71 + 32))(v72, v75, v70);
      if (v74)
      {
        v86 = Ref.subscript.modify();
        specialized PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(*&v60, &lazy protocol witness table cache variable for type Capsule<PKDrawingStruct>.Ref and conformance Capsule<A>.Ref, &_s9Coherence7CapsuleV3RefCy8PaperKit15PKDrawingStructV_GMd, &_s9Coherence7CapsuleV3RefCy8PaperKit15PKDrawingStructV_GMR);
        v86(&t1, 0);
        v87 = v144;
        Ref.subscript.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
        v88 = v136;
        CRRegister.wrappedValue.getter();
        _s8PaperKit15PKDrawingStructVWOhTm_2(v87, type metadata accessor for PKStrokeStruct);
        v89 = v179;
        v90 = Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
        v91 = CRRegister.wrappedValue.modify();
        v93 = v92;
        v94 = v92[1];
        v95 = v92[2];
        *&t1.a = *v92;
        *&t1.c = v94;
        *&t1.tx = v95;
        *&t2.c = v137;
        *&t2.a = v138;
        t2.tx = v5;
        t2.ty = v6;
        CGAffineTransformConcat(&v183, &t1, &t2);
        v96 = *&v183.c;
        v97 = *&v183.tx;
        *v93 = *&v183.a;
        v93[1] = v96;
        v93[2] = v97;
        v91(v185, 0);
        v90(v186, 0);
        (*(v146 + 8))(v88, v89);
        return (*(v71 + 8))(v72, v70);
      }

      else
      {
        v98 = v144;
        Ref.subscript.getter();
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
        v100 = v134;
        v181 = v99;
        CRRegister.wrappedValue.getter();
        _s8PaperKit15PKDrawingStructVWOhTm_2(v98, type metadata accessor for PKStrokeStruct);
        v101 = v154;
        v102 = v153;
        v103 = v155;
        (*(v154 + 16))(v153, v100 + *(v151 + 32), v155);
        _s8PaperKit15PKDrawingStructVWOhTm_2(v100, type metadata accessor for PKStrokeProperties);
        v104 = v152;
        Ref.subscript.getter();
        (*(v101 + 8))(v102, v103);
        (*(v149 + 32))(v147, v104, v150);
        isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
        v105 = swift_allocObject();
        v106 = *(v73 + 1);
        v105[1] = *v73;
        v105[2] = v106;
        v105[3] = *(v73 + 2);
        *&t1.tx = partial apply for closure #1 in transformStroke #1 (_:) in closure #1 in PKDrawingCoherence.applyTransform(_:transformInk:);
        *&t1.ty = v105;
        *&t1.a = MEMORY[0x1E69E9820];
        *&t1.b = 1107296256;
        *&t1.c = thunk for @escaping @callee_guaranteed (@unowned CGPoint) -> (@unowned CGPoint);
        *&t1.d = &block_descriptor_44;
        v177 = _Block_copy(&t1);

        Ref.subscript.getter();
        t1.a = v60;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
        v107 = v135;
        CRRegister.wrappedValue.getter();
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<PKDrawingStruct>.Ref and conformance Capsule<A>.Ref, &_s9Coherence7CapsuleV3RefCy8PaperKit15PKDrawingStructV_GMd);
        v108 = (v146 + 48);
        v109 = (v146 + 8);
        v110 = (v146 + 32);
        for (i = v139; ; (*v110)(v107, i, v113))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleV3RefCy8PaperKit15PKDrawingStructV_GMd);
          v112 = v178;
          Ref.subscript.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
          CRRegister.wrappedValue.getter();
          v113 = v179;
          _s8PaperKit15PKDrawingStructVWOhTm_2(v112, type metadata accessor for PKStrokeInheritedProperties);
          if ((*v108)(i, 1, v113) == 1)
          {
            break;
          }

          (*v109)(v107, v113);
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(i, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
        _s8PaperKit15PKDrawingStructVWOhTm_2(v145, type metadata accessor for PKStrokeStruct);

        v114 = v141;
        Ref.subscript.getter();
        (*v109)(v107, v113);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.getter();
        _s8PaperKit15PKDrawingStructVWOhTm_2(v114, type metadata accessor for PKStrokeInheritedProperties);
        v115 = isa;
        v116 = v177;
        v117 = [(objc_class *)isa copyTransformed:v177 inCoordinateSpace:&t1];
        _Block_release(v116);

        v118 = v140;
        static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

        v119 = v149;
        v120 = v152;
        v121 = v150;
        (*(v149 + 16))(v152, v118, v150);
        v122 = type metadata accessor for CRKeyPath();
        v123 = v143;
        (*(*(v122 - 8) + 56))(v143, 1, 1, v122);
        v124 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);

        v126 = v153;
        MEMORY[0x1DA6CC020](v125, v120, v123, v142, v124);
        v127 = v170;
        v128 = v168;
        v129 = Ref.subscript.modify();
        v130 = CRRegister.wrappedValue.modify();
        (*(v154 + 40))(v131 + *(v151 + 32), v126, v155);
        v130(&t2, 0);
        v129(&t1, 0);
        v132 = *(v119 + 8);
        v132(v118, v121);
        v132(v147, v121);
        return (*(v169 + 8))(v128, v127);
      }
    }
  }

  else
  {
    v177 = v55;
    (*(v55 + 32))(v173, v47, v54);
    v76 = v162;
    v178 = v54;
    Ref.subscript.getter();
    v77 = v164;
    CRSequence.makeIterator()();
    (*(v163 + 8))(v76, v77);
    CRSequence.Iterator.next()();
    v78 = v181;
    v179 = *(v61 + 48);
    v79 = (v179)(v62, 1, v181);
    v80 = v176;
    v81 = v175;
    v82 = v166;
    v83 = v63;
    if (v79 != 1)
    {
      v84 = *(v61 + 32);
      do
      {
        v84(v82, v62, v78);
        transformStroke #1 (_:) in closure #1 in PKDrawingCoherence.applyTransform(_:transformInk:)(v82, *&v182, v81 & 1, v80);
        (*(v61 + 8))(v82, v78);
        CRSequence.Iterator.next()();
        v78 = v181;
      }

      while ((v179)(v62, 1, v181) != 1);
    }

    (*(v165 + 8))(isa, v83);
    return (*(v177 + 1))(v173, v178);
  }
}

double closure #1 in transformStroke #1 (_:) in closure #1 in PKDrawingCoherence.applyTransform(_:transformInk:)(_OWORD *a1, double a2, double a3)
{
  v3 = a1[1];
  *&v5.a = *a1;
  *&v5.c = v3;
  *&v5.tx = a1[2];
  *&result = *&CGPointApplyAffineTransform(*&a2, &v5);
  return result;
}

double thunk for @escaping @callee_guaranteed (@unowned CGPoint) -> (@unowned CGPoint)(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v7 = v5(v6, a2, a3);

  return v7;
}

uint64_t PKDrawingCoherence._merge(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-v6];
  v8 = type metadata accessor for MergeResult();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PKDrawing();
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v12, v13);
  type metadata accessor for PKDrawingCoherence(0);
  if (!swift_dynamicCast())
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v16 = v20;
  if (v20 == v2)
  {
LABEL_7:

    return 1;
  }

  v17 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v16[v17], v4);
  swift_beginAccess();
  type metadata accessor for PKDrawingStruct(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  Capsule.merge<A>(_:)();
  (*(v5 + 8))(v7, v4);
  swift_endAccess();
  if ((MergeResult.hasNonMetadataDeltaFromOriginal.getter() & 1) == 0)
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_7;
  }

  if (MergeResult.hasDeltaFromOther.getter())
  {
    [v2 invalidateVisibleStrokes];
  }

  else
  {
    [v2 copyCachedStrokesFrom_];
  }

  (*(v9 + 8))(v11, v8);
  return 2;
}

uint64_t PKDrawingCoherence.undoableMerge(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v45 - v5;
  v6 = type metadata accessor for CapsuleUndoAction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v45 - v17;
  v18 = type metadata accessor for PKDrawing();
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v19);
  type metadata accessor for PKDrawingCoherence(0);
  if (!swift_dynamicCast())
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22 = v53;
  if (v53 != v2)
  {
    v46 = v9;
    v47 = v7;
    v48 = v6;
    v23 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v24 = *(v13 + 16);
    v24(v51, &v2[v23], v12);
    v25 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v24(v15, &v22[v25], v12);
    swift_beginAccess();
    type metadata accessor for PKDrawingStruct(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    LOBYTE(v25) = Capsule.merge<A>(_:)();
    v28 = *(v13 + 8);
    v27 = (v13 + 8);
    v26 = v28;
    v28(v15, v12);
    swift_endAccess();
    if (v25)
    {
      [v2 invalidateVisibleStrokes];
      v24(v15, &v2[v23], v12);
      v29 = v49;
      v30 = v51;
      Capsule.actionUndoingDifference(from:)();
      v26(v15, v12);
      v32 = v47;
      v31 = v48;
      v33 = v30;
      v34 = v27;
      if ((*(v47 + 48))(v29, 1, v48) != 1)
      {
        v36 = v50;
        (*(v32 + 32))(v50, v29, v31);
        v49 = v34;
        v37 = *(v32 + 16);
        v37(v46, v36, v31);
        v45 = [v2 uuid];
        v38 = type metadata accessor for PKCoherenceUndoCommand(0);
        v39 = objc_allocWithZone(v38);
        v40 = v46;
        v37(&v39[OBJC_IVAR____TtC8PaperKitP33_745DA07C2AB299ADF5B7B63B4181D3F122PKCoherenceUndoCommand_undo], v46, v31);
        v41 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
        v52.receiver = v39;
        v52.super_class = v38;
        v42 = objc_msgSendSuper2(&v52, sel_initWithDrawingUUID_actionName_changesVisibleStrokes_, v45, v41, 1);

        swift_unknownObjectRelease();
        v43 = *(v32 + 8);
        v44 = v48;
        v43(v40, v48);
        v43(v50, v44);
        v26(v51, v12);
        return v42;
      }

      v26(v33, v12);

      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence17CapsuleUndoActionVSgMd);
      return 0;
    }

    v26(v51, v12);
  }

  return 0;
}

id @objc PKCoherenceUndoCommand.apply(toDrawingReturnInverted:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *))
{
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = a1;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = a4(v10);
  (*(v8 + 8))(v10, v7);

  return v13;
}

uint64_t PKDrawingCoherence.merge<A>(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  Capsule.merge<A>(_:)();
  swift_endAccess();
  v6 = MergeResult.hasNonMetadataDeltaFromOriginal.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    [v1 invalidateVisibleStrokes];
  }

  return v6 & 1;
}

Swift::Int PKDrawingCoherence.hash.getter()
{
  v1 = type metadata accessor for CRVersion();
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v21 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRKeyPath();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  Hasher.init()();
  v11 = OBJC_IVAR___PKDrawingCoherence_model;
  v19 = v0;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v12(v10, v0 + v11, v7);
  Capsule.rootID.getter();
  v13 = *(v8 + 8);
  v13(v10, v7);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v20 + 8))(v6, v4);
  v12(v10, v19 + v11, v7);
  v14 = v21;
  Capsule.version.getter();
  v13(v10, v7);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type CRVersion and conformance CRVersion, MEMORY[0x1E69954F0]);
  v15 = v14;
  v16 = v22;
  dispatch thunk of Hashable.hash(into:)();
  (*(v23 + 8))(v15, v16);
  return Hasher.finalize()();
}

uint64_t PKDrawingCoherence.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for CRVersion();
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v48 - v6;
  v7 = type metadata accessor for CRKeyPath();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  outlined init with copy of Date?(a1, v65, &_sypSgMd);
  if (!v66)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_sypSgMd);
    goto LABEL_9;
  }

  type metadata accessor for PKDrawingCoherence(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v43 = 0;
    return v43 & 1;
  }

  if (v64 == v1)
  {

    v43 = 1;
    return v43 & 1;
  }

  v54 = v3;
  v56 = v12;
  v20 = OBJC_IVAR___PKDrawingCoherence_model;
  v21 = v64;
  swift_beginAccess();
  v22 = v14;
  v58 = v7;
  v23 = *(v14 + 16);
  v55 = v1;
  v49 = v20;
  v23(v19, &v1[v20], v13);
  v24 = v56;
  Capsule.rootID.getter();
  v57 = v9;
  v25 = *(v14 + 8);
  v25(v19, v13);
  v26 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v59 = v21;
  v48 = v26;
  v51 = v23;
  v52 = v14 + 16;
  v23(v16, &v21[v26], v13);
  v27 = v57;
  Capsule.rootID.getter();
  v53 = v22 + 8;
  v50 = v25;
  v25(v16, v13);
  v28 = v24;
  v29 = CRKeyPath.rawValue.getter();
  v31 = v30;
  v32 = v27;
  v33 = CRKeyPath.rawValue.getter();
  v35 = v34;
  LOBYTE(v24) = specialized static Data.== infix(_:_:)(v29, v31, v33, v34);
  outlined consume of Data._Representation(v33, v35);
  outlined consume of Data._Representation(v29, v31);
  v36 = *(v63 + 8);
  v37 = v58;
  v36(v32, v58);
  v36(v28, v37);
  if ((v24 & 1) == 0)
  {

    goto LABEL_9;
  }

  v38 = v51;
  v51(v19, &v55[v49], v13);
  v39 = v60;
  Capsule.version.getter();
  v40 = v50;
  v50(v19, v13);
  v41 = v59;
  v38(v16, &v59[v48], v13);
  v42 = v61;
  Capsule.version.getter();
  v40(v16, v13);
  v43 = static CRVersion.== infix(_:_:)();

  v44 = *(v62 + 8);
  v45 = v42;
  v46 = v54;
  v44(v45, v54);
  v44(v39, v46);
  return v43 & 1;
}

uint64_t @objc PKDrawingCoherenceVersion.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_sypSgMd);
  return v8 & 1;
}

uint64_t PKDrawingCoherence._stroke(forIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v45 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v9 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v52 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - v23;
  (*(v15 + 16))(v17, a1, v14, v22);
  CRKeyPath.init(_:)();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v47 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v48 = v20;
  WeakRef.init(id:)();
  v26 = OBJC_IVAR___PKDrawingCoherence_model;
  v27 = v57;
  swift_beginAccess();
  v28 = v9;
  v29 = v27 + v26;
  v30 = v53;
  v46 = *(v9 + 16);
  v46(v13, v29, v53);
  type metadata accessor for PKDrawingStruct(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  v31 = v55;
  v54 = v21;
  WeakRef.subscript.getter();
  (*(v28 + 8))(v13, v30);
  LODWORD(v13) = (*(*(v25 - 8) + 48))(v31, 1, v25);
  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  if (v13 == 1)
  {
    (*(v52 + 8))(v24, v54);
    v32 = type metadata accessor for PKStroke();
    return (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
  }

  else
  {
    v34 = v52;
    v35 = v56;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v36 = v54;
    Reference.identity.getter();
    v37 = v50;
    Ref.init(id:)();
    v38 = v57 + v26;
    v39 = v49;
    v46(v49, v38, v30);
    v40 = _s8PaperKit17PKStrokeCoherenceC13strokeNodeRef2inACSg0D00G0VyAG10CRRegisterVyAA12TaggedStrokeOGG_AG7CapsuleVyxGtcAG4CRDTRzlufCAA15PKDrawingStructV_Tt1g5(v37, v39);
    if (v40)
    {
      v41 = v51;
      v42 = v40;
      static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
    }

    else
    {
      v43 = 1;
      v41 = v51;
    }

    (*(v34 + 8))(v24, v36);
    v44 = type metadata accessor for PKStroke();
    (*(*(v44 - 8) + 56))(v41, v43, 1, v44);
    return outlined init with take of Range<AttributedString.Index>(v41, v35, &_s9PencilKit8PKStrokeVSgMd);
  }
}

id PKDrawingCoherence.__allocating_init(from:)(uint64_t a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  outlined init with copy of FindResult(a1, v13);
  v5 = Data.init(from:)();
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_allocWithZone(v1);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13[0] = 0;
    v3 = [v9 initWithData:isa error:v13];

    if (v3)
    {
      v11 = v13[0];
      __swift_destroy_boxed_opaque_existential_0(a1);
      outlined consume of Data._Representation(v7, v8);
      return v3;
    }

    v3 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t PKDrawingCoherence.encode(to:)()
{
  v1 = [v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  Data.encode(to:)();
  return outlined consume of Data._Representation(v2, v4);
}

id protocol witness for Decodable.init(from:) in conformance PKDrawingCoherence@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = PKDrawingCoherence.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PKDrawingCoherence()
{
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  Data.encode(to:)();
  return outlined consume of Data._Representation(v2, v4);
}

uint64_t specialized removeSubstrokes #1 <A, B>(from:) in PKDrawingStruct.deleteStrokes<A, B>(_:in:)(uint64_t a1, uint64_t a2, char *a3)
{
  v54 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v44 - v9;
  v50 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v52 = *(v21 - 8);
  v53 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v47 = &v44 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v44 - v24;
  swift_beginAccess();
  if (!*(*(a2 + 16) + 16))
  {
    return 0;
  }

  v44 = v7;
  v45 = a3;
  v46 = v5;
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v54, v25);
  swift_endAccess();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v27 = 1;
  v28 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  if (v28 == 1)
  {
    v29 = v45;
    Ref.subscript.getter();
    CRRegister.value.getter();
    (*(v49 + 8))(v20, v18);
    _s8PaperKit12TaggedStrokeOWObTm_0(v14, v11, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v52;
      v31 = v53;
      (*(v52 + 32))(v17, v11, v53);
      v32 = 0;
      v33 = v46;
      v34 = v51;
    }

    else
    {
      _s8PaperKit15PKDrawingStructVWOhTm_2(v11, type metadata accessor for TaggedStroke);
      v32 = 1;
      v33 = v46;
      v34 = v51;
      v30 = v52;
      v31 = v53;
    }

    (*(v30 + 56))(v17, v32, 1, v31);
    if ((*(v30 + 48))(v17, 1, v31) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
    }

    else
    {
      v35 = v47;
      (*(v30 + 32))(v47, v17, v31);
      Ref.subscript.getter();
      v36 = v30;
      v37 = CRSequence.count.getter();
      v38 = *(v48 + 8);
      v38(v34, v33);
      if (v37)
      {
        v39 = Ref.subscript.getter();
        MEMORY[0x1EEE9AC00](v39);
        *(&v44 - 2) = a2;
        *(&v44 - 1) = v29;
        v40 = v44;
        CRSequence.filter(_:)();
        v38(v34, v33);
        if (!CRSequence.count.getter())
        {
          v38(v40, v33);
          (*(v52 + 8))(v35, v53);
          return 1;
        }

        v41 = v53;
        Ref.subscript.getter();
        v42 = CRSequence.hasDelta(from:)();
        v38(v34, v33);
        if (v42)
        {
          (*(v48 + 16))(v34, v40, v33);

          Ref.subscript.setter();
        }

        v38(v40, v33);
        (*(v52 + 8))(v35, v41);
      }

      else
      {
        (*(v36 + 8))(v35, v31);
      }
    }

    return 0;
  }

  return v27;
}

char *specialized PKDrawingCoherence.__allocating_init(concreteDrawing:)()
{
  v1 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = v25 - v10;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    swift_willThrow();
    return v4;
  }

  v12 = v11;
  v25[1] = v4;
  v26 = v8;
  v27 = v6;
  v28 = v0;
  v13 = *(MEMORY[0x1E695F050] + 16);
  v31 = *MEMORY[0x1E695F050];
  v32 = v13;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  result = [v12 nsuuid];
  if (result)
  {
    v15 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    CRKeyPath.init(_:)();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    v16 = v29;
    v17 = Capsule.init(_:id:)();
    MEMORY[0x1EEE9AC00](v17);
    v25[-2] = v12;
    v18 = v33;
    Capsule.mutate<A>(_:)();
    v20 = v26;
    v19 = v27;
    v21 = *(v27 + 16);
    v21(v26, v16, v18);
    v22 = type metadata accessor for PKDrawingCoherence(0);
    v23 = objc_allocWithZone(v22);
    v21(&v23[OBJC_IVAR___PKDrawingCoherence_model], v20, v18);
    v30.receiver = v23;
    v30.super_class = v22;
    v4 = objc_msgSendSuper2(&v30, sel_init);
    v24 = *(v19 + 8);
    v24(v20, v18);
    v24(v16, v18);
    return v4;
  }

  __break(1u);
  return result;
}

id specialized PKDrawingCoherence.__allocating_init(data:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = objc_allocWithZone(v0);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7[0] = 0;
  v3 = [v1 initWithData:isa error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

id specialized PKDrawingCoherence.init(data:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initWithData:isa loadNonInkingStrokes:0 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t partial apply for closure #1 in PKDrawingCoherence._canvasBounds.setter()
{
  return partial apply for closure #1 in PKDrawingCoherence._canvasBounds.setter();
}

{
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

id specialized @nonobjc PKDrawingConcrete.init(data:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initWithData:isa error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void *specialized PKDrawingCoherence.init(data:loadNonInkingStrokes:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  outlined copy of Data._Representation(a1, a2);
  type metadata accessor for PKDrawingStruct(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
  if (v3)
  {
    swift_getObjectType();
    v14 = objc_allocWithZone(MEMORY[0x1E6978418]);
    outlined copy of Data._Representation(a1, a2);
    v15 = specialized @nonobjc PKDrawingConcrete.init(data:)();
    outlined consume of Data._Representation(a1, a2);
    v16 = specialized PKDrawingCoherence.__allocating_init(concreteDrawing:)();

    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v24 = v4;
    v22[0] = *(v8 + 16);
    v22[1] = 0;
    (v22[0])(v10, v13, v7);
    v17 = type metadata accessor for PKDrawingCoherence(0);
    v18 = v8;
    v19 = objc_allocWithZone(v17);
    (v22[0])(&v19[OBJC_IVAR___PKDrawingCoherence_model], v10, v7);
    v23.receiver = v19;
    v23.super_class = v17;
    v16 = objc_msgSendSuper2(&v23, sel_init);
    outlined consume of Data._Representation(a1, a2);
    v20 = *(v18 + 8);
    v20(v10, v7);
    v20(v13, v7);
    swift_getObjectType();
  }

  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t specialized PKDrawingCoherence.updateStroke(_:indexHint:)(uint64_t a1)
{
  v2 = type metadata accessor for PKStroke();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v3);
  type metadata accessor for PKStrokeCoherenceBase(0);
  if (swift_dynamicCast())
  {
    v6 = v10[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *(inited + 32) = v6;
    MEMORY[0x1EEE9AC00](inited);
    swift_beginAccess();
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
    Capsule.mutate<A>(_:)();
    swift_endAccess();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s8PaperKit15PKDrawingStructVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of PKStrokeStruct(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKStrokeStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ReflowTextLine(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ReflowTextLine(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ReflowTextLine.add(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v10 = v6;
  v11 = a3;
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *(a3 + 25);
  v249 = *(a3 + 9);
  v250[0] = v17;
  v18 = *(a3 + 48);
  *(v250 + 15) = *(a3 + 40);
  v19 = *(a3 + 56);
  v20 = *(a3 + 57);
  v21 = *(v11 + 58);
  v209 = a1;
  *&v234 = a2;
  if (a6 >= 1.0)
  {
    goto LABEL_55;
  }

  if (a2 != 100)
  {
    goto LABEL_55;
  }

  v22 = *(*&v6 + 8);
  if (!v22)
  {
    goto LABEL_55;
  }

  *&v233 = a4;
  if (v15 && *(v15 + 120) == *(*&v10 + 160))
  {
    v23 = *(v11 + 25);
    v247 = *(v11 + 9);
    v248[0] = v23;
    v24 = v19;
    v25 = v16;
    *(v248 + 15) = *(v11 + 40);
    v26 = v21;
    v27 = v15;
    v28 = v18;
    v29 = v20;
    goto LABEL_57;
  }

  LODWORD(v227) = v19;
  v228 = v18;
  LODWORD(v229) = v16;
  v230 = v15;
  v30 = **&v10;
  v31 = **&v10 & 0xFFFFFFFFFFFFFF8;
  *&v10 = **&v10 >> 62;
  if (v10 == 0.0)
  {
    v32 = *(v31 + 16);
    v33 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
      goto LABEL_9;
    }

LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v8 = v20;
  v202 = v21;
  v203 = __CocoaSet.count.getter();
  v21 = v202;
  LODWORD(v20) = v8;
  v33 = v203 + 1;
  if (__OFADD__(v203, 1))
  {
    goto LABEL_274;
  }

LABEL_9:
  if (v33 < 0)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  v8 = v22 >> 62;
  LODWORD(v226.f64[0]) = v20;
  LODWORD(v225) = v21;
  v231 = v10;
  v31 = v22 & 0xFFFFFFFFFFFFFF8;
  if (!(v22 >> 62))
  {
    v34 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34 >= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v33)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (v34 >= v36)
    {
      goto LABEL_18;
    }

LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

LABEL_276:
  if ((v22 & 0x8000000000000000) != 0)
  {
    v7 = v22;
  }

  else
  {
    v7 = v31;
  }

  v204 = __CocoaSet.count.getter();
  result = __CocoaSet.count.getter();
  if (result < 0)
  {
    goto LABEL_303;
  }

  if (v204 >= v33)
  {
    v205 = v33;
  }

  else
  {
    v205 = v204;
  }

  if (v204 < 0)
  {
    v205 = v33;
  }

  if (v33)
  {
    v36 = v205;
  }

  else
  {
    v36 = 0;
  }

  if (__CocoaSet.count.getter() < v36)
  {
    goto LABEL_289;
  }

LABEL_18:
  if ((v22 & 0xC000000000000001) == 0)
  {

    goto LABEL_26;
  }

  if (v36)
  {
    v7 = type metadata accessor for ReflowElement();

    v37 = 0;
    do
    {
      v38 = v37 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v37);
      v37 = v38;
    }

    while (v36 != v38);
    if (v8)
    {
      goto LABEL_27;
    }

LABEL_26:
    v232.f64[0] = 0.0;
    *&v10 = v22 & 0xFFFFFFFFFFFFFF8;
    v224 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
    goto LABEL_28;
  }

  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_27:

  v10 = COERCE_DOUBLE(_CocoaArrayWrapper.subscript.getter());
  *&v224 = v39;
  v232.f64[0] = v40;
  v36 = v41 >> 1;
LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D405CEB0;
  *(v42 + 32) = a1;

  v43 = _ss10ArraySliceV12arrayLiteralAByxGxd_tcfC8PaperKit13ReflowElementC_Tt0g5(v42);
  v242 = MEMORY[0x1E69E7CC0];
  v243[0] = MEMORY[0x1E69E7CC0] + 32;
  *&v243[1] = xmmword_1D405D330;
  v22 = (v46 >> 1) - v45;
  if (__OFSUB__(v46 >> 1, v45))
  {
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
    goto LABEL_292;
  }

  v47 = v43;
  v7 = v44;
  v48 = v45;
  v49 = v46;
  if (v231 == 0.0)
  {
    v50 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v50 = __CocoaSet.count.getter();
  }

  v51 = __OFADD__(v22, v50);
  v52 = v22 + v50;
  if (v51)
  {
    goto LABEL_291;
  }

  v231 = v10;
  specialized ArraySlice.reserveCapacity(_:)(v52);
  specialized ArraySlice.append<A>(contentsOf:)(v30);
  v22 = &v242;
  specialized ArraySlice.append<A>(contentsOf:)(v47, v7, v48, v49);
  result = swift_unknownObjectRelease();
  v54 = v36 - *&v232.f64[0];
  if (__OFSUB__(v36, *&v232.f64[0]))
  {
LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  v55 = v243[1];
  *&v10 = v243[2] >> 1;
  v7 = (v243[2] >> 1) - v243[1];
  if (__OFSUB__(v243[2] >> 1, v243[1]))
  {
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
    goto LABEL_296;
  }

  v22 = v242;
  if (v54 == v7)
  {
    if (!v54 || (v56 = (v224 + 8 * *&v232.f64[0]), v224 = v243[0] + 8 * v243[1], v56 == v224) || *&v232.f64[0] == v36)
    {
LABEL_69:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      IsNull = v209;

      MEMORY[0x1DA6CD190](v75);
      if (*((*v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_300;
      }

      goto LABEL_70;
    }

    if (*&v232.f64[0] >= v36)
    {
      __break(1u);
LABEL_303:
      __break(1u);
      return result;
    }

    v57 = *v56;

    if (v55 != *&v10)
    {
      v58 = 0;
      if (v55 <= *&v10)
      {
        v59 = v10;
      }

      else
      {
        v59 = *&v55;
      }

      *&v10 = ~*&v232.f64[0] + v36;
      v222 = v56 + 1;
      v223 = *&v232.f64[0] + 1;
      v60 = *&v59 - v55;
      while (v60 != v58)
      {
        v61 = *(v224 + 8 * v58);

        if (v57 != v61)
        {
          goto LABEL_53;
        }

        if (*&v10 == v58)
        {
          goto LABEL_69;
        }

        if (v223 + v58 < *&v232.f64[0] || v223 + v58 >= v36)
        {
          goto LABEL_295;
        }

        v57 = v222[v58];

        if (v7 == ++v58)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_294;
    }

LABEL_52:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_53:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v10 = *&v211;
  a1 = v209;
  a4 = v233;
  v19 = LODWORD(v227);
LABEL_55:
  v27 = *v11;
  if (!*v11)
  {
    v71 = *(*&v10 + 8);
    if (!v71)
    {
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  *&v233 = a4;
  v25 = *(v11 + 8);
  v26 = *(v11 + 58);
  v29 = *(v11 + 57);
  v24 = *(v11 + 56);
  v62 = *(v11 + 25);
  v247 = *(v11 + 9);
  v248[0] = v62;
  v28 = *(v11 + 48);
  *(v248 + 15) = *(v11 + 40);
LABEL_57:
  *(v243 + 1) = v247;
  v242 = v27;
  LOBYTE(v243[0]) = v25;
  *(&v243[2] + 1) = v248[0];
  v243[4] = *(v248 + 15);
  v243[5] = v28;
  v244 = v24;
  v245 = v29;
  v246 = v26;
  v63 = *v211;
  v236 = v27;
  MEMORY[0x1EEE9AC00](v19);
  v207 = &v236;
  v237 = v64;
  LOBYTE(v238[0]) = v65;
  *(v238 + 1) = v249;
  *(&v238[2] + 1) = v250[0];
  v238[4] = *(v66 + 143);
  v238[5] = v67;
  v239 = v68;
  v240 = v69;
  v241 = v70;
  outlined init with copy of ReflowSpacingAdjustment(&v237, &v235);
  if ((specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say8PaperKit06ReflowA0CG_TG5TA_0, v206, v63) & 1) == 0 && v27 != v209)
  {
    outlined destroy of ReflowSpacingAdjustment?(v11);
    v10 = *&v211;
    a1 = v209;
    v71 = v211[1];
    if (!v71)
    {
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  if (v24)
  {
    v10 = *&v211;
    a1 = v209;
    if (v26)
    {
      goto LABEL_65;
    }
  }

  else
  {
    a1 = v209;
    v10 = *&v211;
    v73 = v211[20];
    if (v73 < v28 && ((v27 == v209) & v25) == 0)
    {
      outlined destroy of ReflowSpacingAdjustment?(v11);
      goto LABEL_215;
    }

    if ((v26 & 1) != 0 && v28 == v73)
    {
LABEL_65:
      v72 = ReflowTextLine.addWithSpacingAdjustment(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(a1, v234, &v242, v233, a5, a6);
      outlined destroy of ReflowSpacingAdjustment?(v11);
      return v72 & 1;
    }
  }

  outlined destroy of ReflowSpacingAdjustment?(v11);
  v71 = *(*&v10 + 8);
  if (!v71)
  {
LABEL_77:
    LODWORD(v80) = 1;
    goto LABEL_78;
  }

LABEL_74:
  v77 = Array<A>.nonOverlappingElements.getter(**&v10);
  v78 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit13ReflowElementC_Tt1g5(v77, v71);

  if (v78 & 1) == 0 || v234 != 100 || ((*(*a1 + 144))(v79))
  {
    goto LABEL_77;
  }

  LODWORD(v80) = 0;
LABEL_78:
  v81 = *(*&v10 + 40);
  v82 = vsubq_f64(*(*&v10 + 56), v81);
  v226 = vdivq_f64(v82, vdupq_lane_s64(COERCE__INT64(sqrt(vaddvq_f64(vmulq_f64(v82, v82)))), 0));
  v232 = v81;
  v83 = vsubq_f64(vaddq_f64(v81, vmulq_n_f64(v226, (a5 - v81.f64[0]) / v226.f64[0])), v81);
  v84 = sqrt(vaddvq_f64(vmulq_f64(v83, v83))) - *(*&v10 + 32);
  a6 = 0.0;
  if (v84 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v84;
  }

  v85 = **&v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  v233 = xmmword_1D405CEB0;
  *(inited + 16) = xmmword_1D405CEB0;
  *(inited + 32) = a1;
  v237 = v85;

  specialized Array.append<A>(contentsOf:)(inited);
  v87 = Array<A>.nonOverlappingElements.getter(v237);

  if (v71)
  {
    v88 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit13ReflowElementC_Tt1g5(v71, v87);

    if (v88)
    {
      v9 = v9 + 4.0;
      a6 = *(*&v10 + 24);
    }
  }

  else
  {
  }

  v89 = swift_initStackObject();
  *(v89 + 16) = v233;
  *(v89 + 32) = a1;
  v237 = v85;

  v90 = &v237;
  specialized Array.append<A>(contentsOf:)(v89);
  v91 = v237;
  v225 = *(*&v10 + 160);
  v213 = *(*&v10 + 16);
  v228 = v237 >> 62;
  if (v237 >> 62)
  {
    v216 = __CocoaSet.count.getter();
    if (!v216)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v216 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v216)
    {
      goto LABEL_96;
    }
  }

  v92 = v216 - 1;
  if (__OFSUB__(v216, 1))
  {
    goto LABEL_267;
  }

  if ((v91 & 0xC000000000000001) == 0)
  {
    if ((v92 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v92 < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v93 = *(v91 + 8 * v92 + 32);

      goto LABEL_92;
    }

    __break(1u);
LABEL_271:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_250:
    v92 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = *(*&v10 + 16);
    if (!v11)
    {
LABEL_262:

      goto LABEL_263;
    }

    v22 = *v90;
    v7 = v22 & 0xFFFFFFFFFFFFFF8;
    if (!(v22 >> 62))
    {
      v196 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_253;
    }

LABEL_296:
    v92 = __CocoaSet.count.getter();
    v196 = v92;
LABEL_253:
    v197 = 0;
    v91 = v22 & 0xC000000000000001;
    v198 = v225;
    v80 = *&v10 + 48;
    while (v197 < *(*&v10 + 16))
    {
      if (v196 == v197)
      {
        goto LABEL_262;
      }

      v199 = *(v80 - 16);
      v233 = *v80;
      v234 = v199;
      if (v91)
      {
        v200 = MEMORY[0x1DA6CE0C0](v197, v22);
      }

      else
      {
        if (v197 >= *(v7 + 16))
        {
          goto LABEL_266;
        }
      }

      ++v197;
      v201 = v233;
      *(v200 + 48) = v234;
      *(v200 + 64) = v201;
      *(v200 + 80) = v198;

      v80 += 32;
      if (v11 == v197)
      {
        goto LABEL_262;
      }
    }

    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
  }

  v94 = MEMORY[0x1DA6CE0C0](v92, v91);
  v93 = v94;
LABEL_92:
  v95 = (*(*v93 + 144))(v94);

  if (v95)
  {

    IsNull = specialized Sequence.dropLast(_:)(1, v91);
    goto LABEL_97;
  }

LABEL_96:

  IsNull = v91;
LABEL_97:
  if (IsNull >> 62)
  {
    goto LABEL_247;
  }

  v96 = *((IsNull & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_99:
  v227 = 0.0;
  v215 = v91;
  if (!v96)
  {
    v99 = 0.0;
    v103 = 0.0;
    goto LABEL_120;
  }

  v97 = 0;
  v98 = IsNull & 0xC000000000000001;
  v99 = 0.0;
  while (v98)
  {
    v100 = MEMORY[0x1DA6CE0C0](v97, IsNull);
    v101 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      goto LABEL_108;
    }

LABEL_104:
    v102 = *(v100 + 32);

    v99 = v99 + v102;
    ++v97;
    if (v101 == v96)
    {
      goto LABEL_109;
    }
  }

  if (v97 >= *((IsNull & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_241;
  }

  v101 = v97 + 1;
  if (!__OFADD__(v97, 1))
  {
    goto LABEL_104;
  }

LABEL_108:
  __break(1u);
LABEL_109:
  v91 = 0;
  v103 = 0.0;
  while (2)
  {
    if (v98)
    {
      v104 = MEMORY[0x1DA6CE0C0](v91, IsNull);
      v105 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      goto LABEL_113;
    }

    if (v91 >= *((IsNull & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_242;
    }

    v104 = *(IsNull + 8 * v91 + 32);

    v105 = v91 + 1;
    if (!__OFADD__(v91, 1))
    {
LABEL_113:
      v106 = (*(*v104 + 152))();

      v103 = v103 + v106;
      ++v91;
      if (v105 == v96)
      {
        goto LABEL_118;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_118:
  v91 = v215;
LABEL_120:
  *&v234 = v234 / 100.0;
  v107 = *&v234 * (v213 + a6 + v99);

  if (v9 < v107)
  {
    v108 = v80;
  }

  else
  {
    v108 = 0;
  }

  if (v108 != 1)
  {
    v80 = v216;
    if (v216)
    {
      goto LABEL_128;
    }

LABEL_210:
    v117 = MEMORY[0x1E69E7CC0];
LABEL_211:
    v10 = v117;

    v180 = MEMORY[0x1E69E7CC0];
LABEL_212:
    v90 = v211;
    if (v180 >> 62)
    {
      v194 = __CocoaSet.count.getter();

      if (!v194)
      {
LABEL_249:

        MEMORY[0x1DA6CD190](v195);
        if (*((*v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_271;
        }

        goto LABEL_250;
      }
    }

    else
    {
      v181 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v181)
      {
        goto LABEL_249;
      }
    }

LABEL_215:
    v72 = 0;
    return v72 & 1;
  }

  v80 = v216;
  if (v107 - v9 <= a6)
  {
    a6 = a6 - (v107 - v9);
    if (v216)
    {
      goto LABEL_128;
    }

    goto LABEL_210;
  }

  v227 = fmin((v107 - a6 - v9) / (v107 - a6 - *&v234 * (v213 + v103)), 1.0);
  a6 = 0.0;
  if (!v216)
  {
    goto LABEL_210;
  }

LABEL_128:
  *&v109 = 1.0 - v227;
  v110 = *&v234;
  *&v222 = vmuld_lane_f64(*&v234, v232, 1);
  *&v223 = *&v234 * v232.f64[0];
  v221 = v226.f64[1];
  v111 = atan2(v226.f64[1], v226.f64[0]);
  v224 = v109;
  v112 = *&v109 * (v110 * a6) + 0.0;
  v230 = v91 & 0xC000000000000001;
  v113 = v91 & 0xFFFFFFFFFFFFFF8;
  v217 = v91 + 32;
  v114 = __sincos_stret(v111);
  cosval = v114.__cosval;
  sinval = v114.__sinval;
  v115 = 0;
  if (v91 < 0)
  {
    v116 = v91;
  }

  else
  {
    v116 = v91 & 0xFFFFFFFFFFFFFF8;
  }

  v214 = v116;
  v210 = v113 + 32;
  v212 = v9;
  v208 = v9 + 0.1;
  v117 = MEMORY[0x1E69E7CC0];
  v218 = 0.49;
  v229 = v91 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v230)
    {
      v118 = MEMORY[0x1DA6CE0C0](v115, v91);
      if (__OFADD__(v115, 1))
      {
        goto LABEL_243;
      }
    }

    else
    {
      if (v115 >= *(v113 + 16))
      {
        goto LABEL_244;
      }

      v118 = *(v217 + 8 * v115);

      if (__OFADD__(v115, 1))
      {
        goto LABEL_243;
      }
    }

    v119 = v118[5];
    v120 = *&v234;
    v121 = *&v224 * (*&v234 * v118[4]);
    v122 = v121 + v227 * (v120 * (*(*v118 + 152))());
    if (!v115)
    {
      v123 = v212 - v122;
      if (v212 - v122 >= v213)
      {
        v123 = v213;
      }

      if (v123 < 0.0)
      {
        v123 = 0.0;
      }

      v112 = v112 + v123;
    }

    v124 = *(v118 + 15);
    v125 = *v118;
    v232.f64[0] = v122;
    if (v225 == v124)
    {
      (*(v125 + 240))();
    }

    else
    {
      v126 = (*(v125 + 272))();
    }

    v128 = v126;
    v231 = v127;
    *&v233 = v112;
    v129 = *&v223 + v226.f64[0] * (v112 / cosval);
    v130 = *&v222 + v221 * (v112 / cosval);
    v131 = *&v234;
    v132 = *&v234 * v119;
    v133 = v118[4];
    v134 = v118[5];
    v251.origin.x = 0.0;
    v251.origin.y = 0.0;
    v251.size.width = v133;
    v251.size.height = v134;
    MinX = CGRectGetMinX(v251);
    v252.origin.x = 0.0;
    v252.origin.y = 0.0;
    v252.size.width = v133;
    v252.size.height = v134;
    v136 = MinX + v128 * CGRectGetWidth(v252);
    v253.origin.x = 0.0;
    v253.origin.y = 0.0;
    v253.size.width = v133;
    v253.size.height = v134;
    MinY = CGRectGetMinY(v253);
    v254.origin.x = 0.0;
    v254.origin.y = 0.0;
    v254.size.width = v133;
    v254.size.height = v134;
    Height = CGRectGetHeight(v254);
    v139 = v131 * v136;
    v140 = v129 - v131 * v136;
    v141 = v130 - (v131 * (MinY + v231 * Height) - sinval * v139);
    v142 = v118[2];
    v143 = v118[3];
    v144 = v118[4];
    v145 = v118[5];
    v255.origin.x = v140;
    v255.origin.y = v141;
    v9 = v232.f64[0];
    v255.size.width = v232.f64[0];
    v255.size.height = v132;
    IsNull = CGRectIsNull(v255);
    v256.origin.x = v142;
    v256.origin.y = v143;
    v256.size.width = v144;
    v256.size.height = v145;
    v146 = CGRectIsNull(v256);
    if (IsNull)
    {
      v147 = v146 == 0;
    }

    else
    {
      v147 = 1;
    }

    if (!v147 || ((v148 = vabdd_f64(v140, v142), IsNull == v146) ? (v149 = v148 < 2.0) : (v149 = 0), (v150 = vabdd_f64(v141, v143), v149) ? (v151 = v150 < 2.0) : (v151 = 0), (v152 = vabdd_f64(v9, v144), v151) ? (v153 = v152 < 2.0) : (v153 = 0), (v154 = vabdd_f64(v132, v145), v153) ? (v155 = v154 < 2.0) : (v155 = 0), v155))
    {
      v140 = v118[2];
      v141 = v118[3];
      v9 = v118[4];
      v132 = v118[5];
    }

    v156 = v132;
    v157 = floor(v140 + v140);
    v158 = ceil(v140 + v140);
    if (v140 + v140 - v157 < v218)
    {
      v159 = v157;
    }

    else
    {
      v159 = v158;
    }

    v160 = floor(v141 + v141);
    v161 = ceil(v141 + v141);
    if (v141 + v141 - v160 < v218)
    {
      a6 = v160;
    }

    else
    {
      a6 = v161;
    }

    if (!v115)
    {
      IsNull = 0;
      v162 = *&v233;
      goto LABEL_200;
    }

    v162 = *&v233;
    if (v228)
    {
      LODWORD(v80) = v214;
      if (__CocoaSet.count.getter() < 0)
      {
        goto LABEL_246;
      }

      v163 = __CocoaSet.count.getter();
    }

    else
    {
      v163 = *(v113 + 16);
      LODWORD(v80) = v214;
    }

    if (v163 < v115)
    {
      goto LABEL_245;
    }

    v232.f64[0] = v117;
    if (!v230)
    {

      if (!v228)
      {
        goto LABEL_181;
      }

      goto LABEL_183;
    }

    type metadata accessor for ReflowElement();

    v164 = 0;
    do
    {
      v165 = v164 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v164);
      v164 = v165;
    }

    while (v115 != v165);
    if (v228)
    {
LABEL_183:

      v164 = _CocoaArrayWrapper.subscript.getter();
      IsNull = v164;
      v80 = v168;
      v166 = v169;
      goto LABEL_184;
    }

LABEL_181:
    v166 = 0;
    IsNull = v113;
    v80 = v210;
    v167 = (2 * v115) | 1;
LABEL_184:
    v237 = IsNull;
    v238[0] = v80;
    v170 = v167 >> 1;
    v238[1] = v166;
    v238[2] = v167;
    while (1)
    {
      v91 = v170;
      if (v166 == v170)
      {
        break;
      }

      --v170;
      if (__OFSUB__(v91, 1))
      {
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        v96 = __CocoaSet.count.getter();
        goto LABEL_99;
      }

      if (v170 < v166)
      {
        goto LABEL_240;
      }

      type metadata accessor for ReflowWord();
      v164 = swift_dynamicCastClass();
      if (v164)
      {
        goto LABEL_191;
      }
    }

    v170 = 0;
LABEL_191:
    MEMORY[0x1EEE9AC00](v164);
    v207 = &v237;
    v172 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(_sSKsE4last5where7ElementQzSgSbADKXE_tKFAD5IndexQzXEfU_s10ArraySliceVy8PaperKit06ReflowC0CG_TG5TA_0, v206, v170, v171);
    v173 = swift_unknownObjectRelease();
    if (v172)
    {
      type metadata accessor for ReflowWord();
      v173 = swift_dynamicCastClass();
      IsNull = v173;
      v80 = v216;
      v174 = v229;
      if (!v173)
      {
      }

      v91 = v215;
    }

    else
    {
      IsNull = 0;
      v91 = v215;
      v80 = v216;
      v174 = v229;
    }

    v175 = (*(*v118 + 144))(v173);
    v117 = v232.f64[0];
    if ((v175 & 1) != 0 || v208 >= v162 + v118[8] && (!IsNull || *(IsNull + 136) != 1))
    {
LABEL_200:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v117 + 16) + 1, 1, *&v117));
      }

      v177 = *(*&v117 + 16);
      v176 = *(*&v117 + 24);
      *&v178 = v117;
      if (v177 >= v176 >> 1)
      {
        *&v178 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v176 > 1), v177 + 1, 1, *&v117));
      }

      ++v115;

      *(v178 + 2) = v177 + 1;
      v117 = *&v178;
      v179 = &v178[32 * v177];
      *(v179 + 4) = v159 * 0.5;
      *(v179 + 5) = a6 * 0.5;
      *(v179 + 6) = v9;
      *(v179 + 7) = v156;
      v112 = v162 + v9;
      v113 = v229;
      if (v115 == v80)
      {
        goto LABEL_211;
      }

      continue;
    }

    break;
  }

  if (v80 < v115)
  {
    __break(1u);
    goto LABEL_298;
  }

  if (v228)
  {
    if (__CocoaSet.count.getter() < v115)
    {
      goto LABEL_298;
    }

    v182 = __CocoaSet.count.getter();
LABEL_222:
    if (v182 < v80)
    {
      goto LABEL_299;
    }

    if (v230)
    {
      type metadata accessor for ReflowElement();

      v183 = v115;
      do
      {
        v184 = v183 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v183);
        v183 = v184;
      }

      while (v80 != v184);
      if (!v228)
      {
        goto LABEL_227;
      }
    }

    else
    {

      if (!v228)
      {
LABEL_227:
        v185 = (2 * v80) | 1;
LABEL_231:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v191 = swift_dynamicCastClass();
        if (!v191)
        {
          swift_unknownObjectRelease();
          v191 = MEMORY[0x1E69E7CC0];
        }

        v192 = v174;
        v193 = *(v191 + 16);

        if (__OFSUB__(v185 >> 1, v115))
        {
          __break(1u);
        }

        else if (v193 == (v185 >> 1) - v115)
        {
          v190 = swift_dynamicCastClass();

          if (!v190)
          {
            swift_unknownObjectRelease();
            v190 = MEMORY[0x1E69E7CC0];
          }

          swift_unknownObjectRelease();
          goto LABEL_238;
        }

        v174 = v192;
        swift_unknownObjectRelease();
LABEL_230:
        specialized _copyCollectionToContiguousArray<A>(_:)(v174, v210, v115, v185);
        v190 = v189;

        swift_unknownObjectRelease();

LABEL_238:
        v180 = v190;
        v10 = MEMORY[0x1E69E7CC0];
        goto LABEL_212;
      }
    }

    v174 = _CocoaArrayWrapper.subscript.getter();
    v210 = v186;
    v115 = v187;
    v185 = v188;
    if ((v188 & 1) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_231;
  }

  v182 = *(v174 + 16);
  if (v182 >= v115)
  {
    goto LABEL_222;
  }

LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_70:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v76 = *(IsNull + 32);
  *(IsNull + 48) = *(IsNull + 16);
  *(IsNull + 64) = v76;
LABEL_263:
  v72 = 1;
  return v72 & 1;
}