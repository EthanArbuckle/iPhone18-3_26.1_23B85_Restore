uint64_t specialized Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v30 - v4;
  v5 = type metadata accessor for Date();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v38 = type metadata accessor for Paper(0);
  v39 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v40 = &protocol witness table for Paper;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.subscript.getter();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v17 = v37;
LABEL_8:
    v26 = *(v16 - 8);
    v28 = 1;
    return (*(v26 + 56))(v17, v28, 1, v16);
  }

  v30 = v13;
  (*(v13 + 32))(v15, v11, v12);
  v18 = v2;
  Ref.subscript.getter();
  v19 = v35;
  specialized PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:)(v2, v35);
  v21 = v33;
  v20 = v34;
  if ((*(v33 + 48))(v19, 1, v34) == 1)
  {
    _s8PaperKit0A0VWOhTm_1(v36, type metadata accessor for PKDrawingStruct);
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s10Foundation4DateVSgMd);
    v17 = v37;
LABEL_7:
    (*(v30 + 8))(v15, v12);
    goto LABEL_8;
  }

  v22 = v18;
  v23 = v31;
  (*(v21 + 32))(v31, v19, v20);
  v24 = v32;
  v25 = static Date.< infix(_:_:)();
  (*(v21 + 8))(v23, v20);
  _s8PaperKit0A0VWOhTm_1(v36, type metadata accessor for PKDrawingStruct);
  v17 = v37;
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  v26 = *(v16 - 8);
  v27 = (*(v26 + 16))(v37, v22, v16);
  MEMORY[0x1EEE9AC00](v27);
  *(&v30 - 2) = v24;
  Capsule.callAsFunction<A>(_:)();
  (*(v30 + 8))(v15, v12);
  v28 = 0;
  return (*(v26 + 56))(v17, v28, 1, v16);
}

uint64_t closure #1 in PaperTextAttachmentView.handleFileMerge(newModel:firstMerge:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v24 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = *(MEMORY[0x1E695F050] + 16);
  v25[0] = *MEMORY[0x1E695F050];
  v25[1] = v13;
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);

  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  v14 = direct field offset for PaperTextAttachmentView.paperDrawingKeyPath;
  v15 = v23;
  swift_beginAccess();
  v16 = type metadata accessor for CRKeyPath();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v4, v15 + v14, v16);
  (*(v17 + 56))(v4, 0, 1, v16);
  v18 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  MEMORY[0x1DA6CC020](v22, v7, v4, v5, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  v20 = Capsule.Ref.root.modify();
  outlined init with copy of Date?(v12, v24, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  return v20(v25, 0);
}

uint64_t specialized Capsule<>.logSubelementHeadroomsOnInternalBuilds()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v45.n128_u64[0] = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v42[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42[-v4];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v42[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42[-v14];
  result = os_variant_has_internal_ui();
  if (result)
  {
    v46 = v11;
    v48 = v9;
    v53 = v0;
    if (one-time initialization token for logger != -1)
    {
LABEL_19:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = __swift_project_value_buffer(v17, logger);
    v49 = *(v13 + 16);
    v50 = v13 + 16;
    v49(v15, v55, v12);
    v51 = v18;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v52 = v12;
    v44 = v6;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v47 = v8;
      v23 = v22;
      *v22 = 134217984;
      MEMORY[0x1EEE9AC00](v22);
      v43 = v20;
      *&v42[-32] = type metadata accessor for Image(0);
      *&v42[-24] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      *&v42[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v24 = v52;
      v25 = v46;
      Capsule.subscript.getter();

      v26 = CROrderedSet.count.getter();
      v27 = v48;
      (*(v48 + 8))(v25, v47);
      (*(v13 + 8))(v15, v24);
      *(v23 + 1) = v26;
      _os_log_impl(&dword_1D38C4000, v19, v43, "Loaded paper with %ld subelements.", v23, 0xCu);
      v28 = v23;
      v8 = v47;
      MEMORY[0x1DA6D0660](v28, -1, -1);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      v27 = v48;
      v25 = v46;
    }

    MEMORY[0x1EEE9AC00](v29);
    v48 = type metadata accessor for Image(0);
    *&v42[-32] = v48;
    v47 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    *&v42[-24] = v47;
    *&v42[-16] = &protocol witness table for Image;
    swift_getKeyPath();
    Capsule.subscript.getter();

    CROrderedSet.makeIterator()();
    v30 = (*(v27 + 8))(v25, v8);
    v13 = 0;
    v8 = (v45.n128_u64[0] + 48);
    v46 = (v45.n128_u64[0] + 32);
    v12 = (v45.n128_u64[0] + 8);
    v30.n128_u64[0] = 134218240;
    v45 = v30;
    v31 = v53;
    while (1)
    {
      CROrderedSet.Iterator.next()();
      if ((*v8)(v5, 1, v31) == 1)
      {
        return (*(v44 + 1))(v56, v54);
      }

      v6 = v5;
      (*v46)(v2, v5, v31);
      v34 = v55;
      v5 = v2;
      SharedTagged_10.subscript.getter();
      v35 = v59;
      v36 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v15 = v52;
      v57[3] = v52;
      v57[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Image> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      v49(boxed_opaque_existential_1, v34, v15);
      v38 = (*(*(v36 + 8) + 48))(v57, v35);
      __swift_destroy_boxed_opaque_existential_0(v57);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v39 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v2))
      {
        v40 = swift_slowAlloc();
        *v40 = v45.n128_u32[0];
        v32 = __OFADD__(v13++, 1);
        if (v32)
        {
          goto LABEL_18;
        }

        v41 = v40;
        *(v40 + 4) = v13;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v38;
        _os_log_impl(&dword_1D38C4000, v39, v2, "Subelement %ld has headroom: %f", v40, 0x16u);
        MEMORY[0x1DA6D0660](v41, -1, -1);

        v33 = 0;
      }

      else
      {

        v32 = __OFADD__(v13++, 1);
        v33 = v32;
      }

      v2 = v5;
      v31 = v53;
      (*v12)(v5, v53);
      v5 = v6;
      if (v33)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v45.n128_u64[0] = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v42[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42[-v4];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v42[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42[-v14];
  result = os_variant_has_internal_ui();
  if (result)
  {
    v46 = v11;
    v48 = v9;
    v53 = v0;
    if (one-time initialization token for logger != -1)
    {
LABEL_19:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = __swift_project_value_buffer(v17, logger);
    v49 = *(v13 + 16);
    v50 = v13 + 16;
    v49(v15, v55, v12);
    v51 = v18;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v52 = v12;
    v44 = v6;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v47 = v8;
      v23 = v22;
      *v22 = 134217984;
      MEMORY[0x1EEE9AC00](v22);
      v43 = v20;
      *&v42[-32] = type metadata accessor for Paper(0);
      *&v42[-24] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      *&v42[-16] = &protocol witness table for Paper;
      swift_getKeyPath();
      v24 = v52;
      v25 = v46;
      Capsule.subscript.getter();

      v26 = CROrderedSet.count.getter();
      v27 = v48;
      (*(v48 + 8))(v25, v47);
      (*(v13 + 8))(v15, v24);
      *(v23 + 1) = v26;
      _os_log_impl(&dword_1D38C4000, v19, v43, "Loaded paper with %ld subelements.", v23, 0xCu);
      v28 = v23;
      v8 = v47;
      MEMORY[0x1DA6D0660](v28, -1, -1);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      v27 = v48;
      v25 = v46;
    }

    MEMORY[0x1EEE9AC00](v29);
    v48 = type metadata accessor for Paper(0);
    *&v42[-32] = v48;
    v47 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    *&v42[-24] = v47;
    *&v42[-16] = &protocol witness table for Paper;
    swift_getKeyPath();
    Capsule.subscript.getter();

    CROrderedSet.makeIterator()();
    v30 = (*(v27 + 8))(v25, v8);
    v13 = 0;
    v8 = (v45.n128_u64[0] + 48);
    v46 = (v45.n128_u64[0] + 32);
    v12 = (v45.n128_u64[0] + 8);
    v30.n128_u64[0] = 134218240;
    v45 = v30;
    v31 = v53;
    while (1)
    {
      CROrderedSet.Iterator.next()();
      if ((*v8)(v5, 1, v31) == 1)
      {
        return (*(v44 + 1))(v56, v54);
      }

      v6 = v5;
      (*v46)(v2, v5, v31);
      v34 = v55;
      v5 = v2;
      SharedTagged_10.subscript.getter();
      v35 = v59;
      v36 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v15 = v52;
      v57[3] = v52;
      v57[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Paper> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      v49(boxed_opaque_existential_1, v34, v15);
      v38 = (*(*(v36 + 8) + 48))(v57, v35);
      __swift_destroy_boxed_opaque_existential_0(v57);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v39 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v2))
      {
        v40 = swift_slowAlloc();
        *v40 = v45.n128_u32[0];
        v32 = __OFADD__(v13++, 1);
        if (v32)
        {
          goto LABEL_18;
        }

        v41 = v40;
        *(v40 + 4) = v13;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v38;
        _os_log_impl(&dword_1D38C4000, v39, v2, "Subelement %ld has headroom: %f", v40, 0x16u);
        MEMORY[0x1DA6D0660](v41, -1, -1);

        v33 = 0;
      }

      else
      {

        v32 = __OFADD__(v13++, 1);
        v33 = v32;
      }

      v2 = v5;
      v31 = v53;
      (*v12)(v5, v53);
      v5 = v6;
      if (v33)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }
  }

  return result;
}

void PaperTextAttachmentView.createPaperView(paperBundleURL:)(uint64_t a1)
{
  v2 = v1;
  v106 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v102 = &v96 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I0VGs5Error_pGSo9NSRunLoopCGMd);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v96 - v11;
  v109 = type metadata accessor for URL();
  v111 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v96 - v18;
  v20 = *&v1[direct field offset for Canvas.paperView];
  v21 = MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x3F0);
  swift_beginAccess();
  v108 = v17;
  (*(v17 + 16))(v19, &v20[v22], v16);
  swift_beginAccess();
  type metadata accessor for Paper(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v23 = v20;
  LOBYTE(v22) = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  if ((v22 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v21 & *v23) + 0x520))(Strong);
  }

  else
  {
    v25 = Strong;

    v23 = v25;
  }

  (*(v108 + 8))(v19, v16);
  v26 = *&v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView];
  v27 = v2;
  [v27 addSubview_];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v27, v29, v31, v33, v35);
  v37 = *&v27[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  *&v27[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView] = v38;
  v39 = v38;

  [v27 addSubview_];
  v117 = &type metadata for PencilAndPaperFeatureFlags;
  v118 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v115) = 1;
  LOBYTE(v39) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v115);
  v40 = v109;
  v41 = v107;
  if (v39)
  {
    [v27 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v51 = v27;
    v52 = HandwritingReflowView.init(frame:canvas:)(v51, v43, v45, v47, v49);
    [v51 addSubview_];
    v53 = *&v51[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
    *&v51[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView] = v52;
  }

  v54 = [objc_allocWithZone(MEMORY[0x1E6978508]) initAtTop:0 delegate:v27];
  v55 = *&v27[direct field offset for PaperTextAttachmentView.bottomResizeView];
  *&v27[direct field offset for PaperTextAttachmentView.bottomResizeView] = v54;
  v56 = v54;

  if (!v56)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v27 addSubview_];

  v57 = [objc_allocWithZone(MEMORY[0x1E6978508]) initAtTop:1 delegate:v27];
  v58 = *&v27[direct field offset for PaperTextAttachmentView.topResizeView];
  *&v27[direct field offset for PaperTextAttachmentView.topResizeView] = v57;
  v59 = v57;

  v60 = v112;
  if (!v59)
  {
LABEL_19:
    __break(1u);
    return;
  }

  [v27 addSubview_];

  PaperTextAttachmentView.setAdjustResizeIndicatorVisible(_:animated:highlightBackground:)([v27 isFirstResponder], 0, 0);
  outlined init with copy of Date?(v106, v12, &_s10Foundation3URLVSgMd);
  v61 = v111;
  v62 = (*(v111 + 48))(v12, 1, v40);
  v63 = v110;
  if (v62 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v64 = *(v61 + 32);
    v106 = v61 + 32;
    v99 = v64;
    v64(v110, v12, v40);
    v96 = *&v27[OBJC_IVAR____TtC8PaperKit9AnyCanvas_context];
    (*(v108 + 56))(v41, 1, 1, v16);
    outlined init with copy of Date?(v41, v100, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
    v65 = *(v61 + 16);
    v98 = v61 + 16;
    v97 = v65;
    v65(v60, v63, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
    v66 = type metadata accessor for CRCodableVersion();
    v67 = *(v66 - 8);
    v68 = *(v67 + 72);
    v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1D405C990;
    v71 = v70 + v69;
    v72 = *(v67 + 104);
    v72(v71, *MEMORY[0x1E6995280], v66);
    v72(v71 + v68, *MEMORY[0x1E6995288], v66);
    if (one-time initialization token for allReadableFileFormatVersions != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd);
    swift_allocObject();

    v73 = v96;
    v74 = CRDataStoreBundle.init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
    v75 = swift_allocObject();
    *(v75 + 16) = 1;
    v108 = v74;
    v115 = CRDataStoreBundle.publisher.getter();
    v76 = [objc_opt_self() mainRunLoop];
    v114 = v76;
    v77 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v78 = v102;
    (*(*(v77 - 8) + 56))(v102, 1, 1, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5Error_pGMd);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Paper>, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5Error_pGMd);
    lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
    v79 = v103;
    Publisher.receive<A>(on:options:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    v80 = v112;
    v81 = v109;
    v97(v112, v110, v109);
    v82 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v83 = swift_allocObject();
    v99(v83 + v82, v80, v81);
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v75;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Capsule<Paper>, Error>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I0VGs5Error_pGSo9NSRunLoopCGMd);

    v86 = v105;
    v87 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v104 + 8))(v79, v86);
    *&v27[direct field offset for PaperTextAttachmentView.syncCancellable] = v87;

    v88 = *&v27[direct field offset for PaperTextAttachmentView.textAttachment];
    v89 = v81;
    if (v88)
    {
      v113 = &unk_1F4FF85B8;
      v90 = swift_dynamicCastObjCProtocolConditional();
      if (v90)
      {
        v91 = v88;
      }
    }

    else
    {
      v90 = 0;
    }

    swift_unknownObjectWeakInit();
    v116 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCy8PaperKit6CanvasC0d4ViewfB0VyAD0D0V_GGMd);
    v92 = swift_allocObject();
    outlined init with take of Range<AttributedString.Index>(&v115, v92 + 16, &_s8PaperKit6CanvasC0a4ViewC9PublisherVyAA0A0V_GMd);
    v115 = v92;
    v93 = swift_allocObject();
    v94 = v108;
    *(v93 + 16) = v108;
    *(v93 + 24) = v90;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Paper>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd);
    v95 = Publisher<>.sink(receiveValue:)();

    swift_unknownObjectRelease();

    (*(v111 + 8))(v110, v89);
    *&v27[direct field offset for PaperTextAttachmentView.saveCancellable] = v95;

    *&v27[direct field offset for PaperTextAttachmentView.syncManager] = v94;
  }
}

void closure #1 in PaperTextAttachmentView.createPaperView(paperBundleURL:)(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  (*(v5 + 16))(v7, a2, v4);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v23 = v8;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_s5Error_pGMd);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v24);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1D38C4000, v11, v12, "Failed to load attachment file: %s. Error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v14, -1, -1);
    MEMORY[0x1DA6D0660](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t closure #2 in PaperTextAttachmentView.createPaperView(paperBundleURL:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    PaperTextAttachmentView.handleFileMerge(newModel:firstMerge:)(a1, *(a3 + 16));

    result = swift_beginAccess();
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t closure #3 in PaperTextAttachmentView.createPaperView(paperBundleURL:)()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  CRDataStoreBundle.sync(_:finished:)();
}

void *closure #1 in closure #3 in PaperTextAttachmentView.createPaperView(paperBundleURL:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      [v1 _paperDidChangeLocally];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PaperTextAttachmentView.cleanupViewProviders()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1598))(v7);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v19 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    aBlock[4] = partial apply for closure #1 in PaperTextAttachmentView.cleanupViewProviders();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_410;
    v13 = _Block_copy(aBlock);
    v18 = v5;
    v14 = v13;
    v17 = v11;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v19;
    MEMORY[0x1DA6CD890](0, v9, v4, v14);
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v18);
  }
}

void @objc PaperTextAttachmentView.willMove(toSuperview:)(void *a1, uint64_t a2, void *a3)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for PaperTextAttachmentView();
  v4 = v10.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v10, sel_willMoveToSuperview_, v5);
  v6 = *&v4[direct field offset for PaperTextAttachmentView.textAttachment];
  if (v6)
  {
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      [v8 attachmentView:v4 willMoveToSuperview:v5];
    }
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.didMoveToSuperview()()
{
  v1 = v0;
  v2 = type metadata accessor for PKInk();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 superview];
  if (v7)
  {

    v8 = PaperTextAttachmentView.closestViewController.getter();
    swift_unknownObjectWeakAssign();

    PaperTextAttachmentView.updateFrameForTextContainer(ensureLayout:shouldRedraw:avoidInvalidateLayout:)(0, 1, 1);
  }

  v9 = type metadata accessor for PaperTextAttachmentView();
  v46.receiver = v1;
  v46.super_class = v9;
  objc_msgSendSuper2(&v46, sel_didMoveToSuperview);
  v10 = [v1 superview];
  if (v10 && (v10, v11 = direct field offset for PaperTextAttachmentView.linedPaperView, !*&v1[direct field offset for PaperTextAttachmentView.linedPaperView]))
  {
    [v1 bounds];
    v20 = [objc_allocWithZone(type metadata accessor for LinedPaperView()) initWithFrame_];
    v21 = *&v1[v11];
    *&v1[v11] = v20;
    v22 = v20;

    if (v22)
    {
      [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    v23 = *&v1[v11];
    if (!v23)
    {
      __break(1u);
      goto LABEL_27;
    }

    [v1 insertSubview:v23 atIndex:0];
  }

  else
  {
    v12 = [v1 superview];
    if (v12)
    {
    }

    else
    {
      v13 = direct field offset for PaperTextAttachmentView.linedPaperView;
      v14 = *&v1[direct field offset for PaperTextAttachmentView.linedPaperView];
      if (v14)
      {
        [v14 removeFromSuperview];
        v15 = *&v1[v13];
      }

      else
      {
        v15 = 0;
      }

      *&v1[v13] = 0;
    }
  }

  v24 = direct field offset for PaperTextAttachmentView.shouldBecomeFirstResponder;
  if (v1[direct field offset for PaperTextAttachmentView.shouldBecomeFirstResponder] != 1)
  {
    goto LABEL_25;
  }

  v25 = [v1 superview];
  if (!v25)
  {
    goto LABEL_25;
  }

  v1[v24] = 0;
  v26 = [v1 window];
  v44 = v2;
  if (!v26)
  {
    v30 = v3;
    v31 = 0;
    v29 = 0;
LABEL_23:
    v32 = objc_opt_self();
    v33 = [v1 window];
    v34 = swift_allocObject();
    *(v34 + 16) = v1;
    *(v34 + 24) = v29;
    *(v34 + 32) = v31;
    aBlock[4] = partial apply for closure #1 in PaperTextAttachmentView.didMoveToSuperview();
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_468;
    v35 = _Block_copy(aBlock);
    v36 = v29;
    v37 = v1;

    [v32 _performWithVisibilityUpdatesEnabled_window_block_];
    _Block_release(v35);

    v38 = v44;
    if (v29)
    {
      v39 = [v36 selectedToolItem];
      PKToolPickerItem.ink.getter(v6);

      isa = PKInk._bridgeToObjectiveC()().super.isa;
      (*(v30 + 8))(v6, v38);
      v41 = isa;
      v42 = [(objc_class *)v41 _isGenerationTool];

      v37[direct field offset for PaperTextAttachmentView.isCurrentToolGenerationTool] = v42;
      [v36 addObserver_];
    }

LABEL_25:
    $defer #1 () in PaperTextAttachmentView.didMoveToSuperview()(v1);
    return;
  }

  v27 = [v1 window];
  if (v27)
  {
    v28 = v27;
    v29 = [objc_opt_self() activeToolPickerForWindow_];

    v30 = v3;
    if (v29)
    {
      v31 = [v29 isVisible];
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void $defer #1 () in PaperTextAttachmentView.didMoveToSuperview()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v32 - v4;
  v6 = *(a1 + direct field offset for PaperTextAttachmentView.textAttachment);
  if (v6)
  {
    v34 = &unk_1F4FF8678;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [a1 superview];
      [v8 attachmentView:a1 didMoveToSuperview:v10];
    }
  }

  v11 = [a1 superview];
  v12 = MEMORY[0x1E69E7D40];
  if (v11)
  {

    v13 = (*((*v12 & *a1) + 0x468))();
    if (v13)
    {
      v14 = v13;
      type metadata accessor for TiledTextView();
      v15 = swift_dynamicCastClass();
      if (!v15 || (v16 = v15, v17 = TiledTextView.canvasGenerationToolOverlayController.getter(), CanvasGenerationToolOverlayController.updateUI()(), v17, v18 = a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize, v19 = *(a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize + 16), v19 == 255) || (v20 = a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundBoundsToInitialize, (*(a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundBoundsToInitialize + 32) & 1) != 0))
      {
      }

      else
      {
        v22 = *v18;
        v23 = *(v18 + 1);
        v24 = *v20;
        v32 = *(v20 + 1);
        v33 = v24;
        *v18 = 0;
        *(v18 + 1) = 0;
        v18[16] = -1;
        outlined copy of MagicGenerativePlaygroundContext(v22, v23, v19);
        outlined consume of MagicGenerativePlaygroundContext?(v22, v23, v19);
        *v20 = 0u;
        *(v20 + 1) = 0u;
        v20[32] = 1;
        v25 = type metadata accessor for TaskPriority();
        (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
        type metadata accessor for MainActor();
        outlined copy of MagicGenerativePlaygroundContext?(v22, v23, v19);
        v26 = a1;
        v27 = v14;
        v28 = static MainActor.shared.getter();
        v29 = swift_allocObject();
        v30 = MEMORY[0x1E69E85E0];
        *(v29 + 16) = v28;
        *(v29 + 24) = v30;
        *(v29 + 32) = v26;
        v31 = v33;
        *(v29 + 56) = v32;
        *(v29 + 40) = v31;
        *(v29 + 72) = v16;
        *(v29 + 80) = v22;
        *(v29 + 88) = v23;
        *(v29 + 96) = v19;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview(), v29);
        outlined consume of MagicGenerativePlaygroundContext?(v22, v23, v19);
      }
    }
  }

  PaperTextAttachmentView.cleanupViewProviders()();
  v21 = (*((*v12 & *a1) + 0x1598))();
  PaperTextAttachmentView.observeTextView(_:)(v21);
}

void @objc PaperTextAttachmentView.didMoveToSuperview()(void *a1)
{
  v1 = a1;
  PaperTextAttachmentView.didMoveToSuperview()();
}

Swift::Void __swiftcall PaperTextAttachmentView.tapOnCanvas(location:hitStrokes:fromPencilKit:allowShowingEditMenu:)(CGPoint location, Swift::OpaquePointer hitStrokes, Swift::Bool fromPencilKit, Swift::Bool allowShowingEditMenu)
{
  specialized Canvas.tapOnCanvas(location:hitStrokes:fromPencilKit:allowShowingEditMenu:)(hitStrokes._rawValue, fromPencilKit, allowShowingEditMenu, location.x, location.y);
  if (([v4 isFirstResponder] & 1) == 0)
  {

    [v4 becomeFirstResponder];
  }
}

id PaperTextAttachmentView.tapCanvasElement(_:modifierFlags:)(void *a1, uint64_t a2, char a3)
{
  specialized Canvas.tapCanvasElement(_:modifierFlags:)(a1, a2, a3 & 1);
  result = [v3 isFirstResponder];
  if ((result & 1) == 0)
  {

    return [v3 becomeFirstResponder];
  }

  return result;
}

Swift::Bool __swiftcall PaperTextAttachmentView.hit(byTouchLocation:canvasBounds:)(CGPoint byTouchLocation, __C::CGRect canvasBounds)
{
  y = byTouchLocation.y;
  x = byTouchLocation.x;
  v34 = CGRectInset(canvasBounds, -64.0, 0.0);
  v5 = v34.origin.x;
  v6 = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1598))();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 textStorage];

    if (v11)
    {
      v12 = *(v2 + direct field offset for PaperTextAttachmentView.textAttachment);
      if (v12)
      {
        v30 = 0;
        v31 = 1;
        v13 = *MEMORY[0x1E69DB5F8];
        v14 = v12;
        v15 = [v11 length];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = &v30;
        v17 = swift_allocObject();
        *(v17 + 16) = partial apply for closure #1 in PaperTextAttachmentView.characterIndex.getter;
        *(v17 + 24) = v16;
        v29[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        v29[5] = v17;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 1107296256;
        v29[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        v29[3] = &block_descriptor_372;
        v18 = _Block_copy(v29);
        v19 = v14;

        [v11 enumerateAttribute:v13 inRange:0 options:v15 usingBlock:{0, v18}];

        _Block_release(v18);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_16:
          __break(1u);
          return result;
        }

        v22 = v30;
        v23 = v31;

        if ((v23 & 1) == 0 && !v22)
        {
          v6 = v6 + -16.0;
          height = height + 16.0;
        }
      }

      else
      {
      }
    }
  }

  v35.origin.x = v5;
  v35.origin.y = v6;
  v35.size.width = width;
  v35.size.height = height;
  v33.x = x;
  v33.y = y;
  result = CGRectContainsPoint(v35, v33);
  if (result)
  {
    return 1;
  }

  v24 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = v24;
  v32.value.super.isa = 0;
  ResizeView.hitTestChrome(_:with:)(v26, __PAIR128__(*&y, *&x), v32);
  v28 = v27;

  if (v28)
  {

    return 1;
  }

  return 0;
}

__C::CGRect __swiftcall PaperTextAttachmentView.sensibleBounds(for:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsNull(a1) || !CGRect.isFinite.getter(x, y, width, height))
  {
    y = 0.0;
    if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
    {
      x = *MEMORY[0x1E69785E0];
    }

    else
    {
      x = 0.0;
    }

    width = 0.0;
    height = 0.0;
  }

  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v6 = CGRectGetHeight(v12);
  if (v6 > 64.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 64.0;
  }

  if (y < 0.0)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = v7;
    if (CGRectGetMaxY(v13) < 64.0)
    {
      v7 = 64.0 - y;
    }
  }

  v8 = v7 + 64.0;
  v9 = x;
  v10 = y;
  v11 = width;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

uint64_t PaperTextAttachmentView.contentBounds(includeDrawing:)(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 160) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  *(v2 + 80) = v3;
  v4 = *(v3 - 8);
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 + 64);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v2 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 120) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 128) = v6;
  *(v2 + 136) = v5;

  return MEMORY[0x1EEE6DFA0](PaperTextAttachmentView.contentBounds(includeDrawing:), v6, v5);
}

uint64_t PaperTextAttachmentView.contentBounds(includeDrawing:)()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72);
  if (v1 == 1 && (v3 = (v2 + direct field offset for PaperTextAttachmentView.paperBoundsHint), (*(v2 + direct field offset for PaperTextAttachmentView.paperBoundsHint + 32) & 1) == 0))
  {
    v18 = v3[2];
    v17 = v3[3];
    v20 = *v3;
    v19 = v3[1];

    v32.origin.x = v20;
    v32.origin.y = v19;
    v32.size.width = v18;
    v32.size.height = v17;
    v33 = PaperTextAttachmentView.sensibleBounds(for:)(v32);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;

    v25 = *(v0 + 8);
    v26.n128_f64[0] = x;
    v27.n128_f64[0] = y;
    v28.n128_f64[0] = width;
    v29.n128_f64[0] = height;

    return v25(v26, v27, v28, v29);
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    static TaskPriority.userInitiated.getter();
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    v10 = *(v2 + direct field offset for Canvas.paperView);
    v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x3F0);
    swift_beginAccess();
    (*(v6 + 16))(v4, &v10[v11], v8);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    (*(v6 + 32))(v13 + v12, v4, v8);
    *(v13 + v12 + v7) = v1;
    v14 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZSo6CGRectV_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:), v13);
    *(v0 + 144) = v14;
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sScPSgMd);
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    type metadata accessor for CGRect(0);
    *v15 = v0;
    v15[1] = PaperTextAttachmentView.contentBounds(includeDrawing:);

    return MEMORY[0x1EEE6DA40](v0 + 16, v14, v16);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](PaperTextAttachmentView.contentBounds(includeDrawing:), v3, v2);
}

{

  v12 = PaperTextAttachmentView.sensibleBounds(for:)(*(v0 + 16));
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;

  v5 = *(v0 + 8);
  v6.n128_f64[0] = x;
  v7.n128_f64[0] = y;
  v8.n128_f64[0] = width;
  v9.n128_f64[0] = height;

  return v5(v6, v7, v8, v9);
}

uint64_t closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:), 0, 0);
}

uint64_t closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:)()
{
  v1 = *(v0 + 16);
  *v1 = Capsule<>.contentBounds(includeDrawing:)(*(v0 + 32));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  v5 = *(v0 + 8);

  return v5();
}

void *PaperTextAttachmentView.currentLinksIdentifiers()()
{
  v23 = type metadata accessor for UUID();
  v1 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = *(v0 + direct field offset for Canvas.paperView);
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x3F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v8[v9], v4);
  v10 = Capsule<>.links.getter();
  (*(v5 + 8))(v7, v4);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v22)
      {
        v14 = MEMORY[0x1DA6CE0C0](v12, v10);
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *&v10[8 * v12 + 32];
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v14 itemIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v13);
      }

      v13[2] = v19 + 1;
      (*(v1 + 32))(v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v3, v23);
      ++v12;
      if (v16 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v24 = v13;

  specialized MutableCollection<>.sort(by:)(&v24);

  return v24;
}

Swift::Void __swiftcall PaperTextAttachmentView.notifyLinksChangedIfNecessary()()
{
  v1 = PaperTextAttachmentView.currentLinksIdentifiers()();
  v2 = direct field offset for PaperTextAttachmentView.previousLinks;
  v3 = *(v0 + direct field offset for PaperTextAttachmentView.previousLinks);

  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(v1, v3);

  if (v4)
  {
  }

  else
  {
    *(v0 + v2) = v1;

    if (*(v0 + direct field offset for PaperTextAttachmentView.textAttachment))
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        v6 = v5;
        if ([v5 respondsToSelector_])
        {
          [v6 _linkCanvasElementsDidChange];
        }
      }
    }
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.beginLiveResize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v32 - v5;
  v7 = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (v7)
  {
    [v7 setHidden_];
    v8 = direct field offset for PaperTextAttachmentView.resizeInfo;
    if (!*&v0[direct field offset for PaperTextAttachmentView.resizeInfo])
    {
      type metadata accessor for ResizeInfo();
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      v10 = *MEMORY[0x1E695F050];
      v11 = *(MEMORY[0x1E695F050] + 8);
      v12 = *(MEMORY[0x1E695F050] + 16);
      v13 = *(MEMORY[0x1E695F050] + 24);
      *(v9 + 32) = *MEMORY[0x1E695F050];
      *(v9 + 40) = v11;
      *(v9 + 48) = v12;
      *(v9 + 56) = v13;
      *(v9 + 64) = v10;
      *(v9 + 72) = v11;
      *(v9 + 80) = v12;
      *(v9 + 88) = v13;
      *(v9 + 96) = v10;
      *(v9 + 104) = v11;
      *(v9 + 112) = v12;
      *(v9 + 120) = v13;
      *&v0[v8] = v9;

      *(v9 + 32) = PaperTextAttachmentView.safePaperModelBounds.getter();
      *(v9 + 40) = v14;
      *(v9 + 48) = v15;
      *(v9 + 56) = v16;

      v17 = *&v0[v8];
      if (v17)
      {
        v18 = *&v0[direct field offset for Canvas.paperView];
        v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x3F0);
        swift_beginAccess();
        (*(v3 + 16))(v6, &v18[v19], v2);

        v20 = Capsule<>.contentBounds(includeDrawing:)(1);
        v22 = v21;
        v24 = v23;
        v26 = v25;
        (*(v3 + 8))(v6, v2);
        v17[8] = v20;
        *(v17 + 9) = v22;
        *(v17 + 10) = v24;
        *(v17 + 11) = v26;

        v27 = *&v1[v8];
        if (v27)
        {

          [v1 frame];
          v27[12] = v28;
          v27[13] = v29;
          v27[14] = v30;
          v27[15] = v31;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void PaperTextAttachmentView.liveResize(yDistance:)(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = *(v1 + direct field offset for PaperTextAttachmentView.resizeInfo);
  if (v8)
  {

    v9 = PaperTextAttachmentView.safePaperModelBounds.getter();
    v13 = v12 + a1;
    if (v13 <= 64.0)
    {
      v13 = 64.0;
    }

    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    *(v8 + 48) = v11;
    *(v8 + 56) = v13;
    v14 = *(v1 + direct field offset for Canvas.paperView);
    v15 = MEMORY[0x1E69E7D40];
    v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x3F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, &v14[v16], v4);
    v17 = Capsule<>.contentBounds(includeDrawing:)(1);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    (*(v5 + 8))(v7, v4);
    *(v8 + 64) = v17;
    *(v8 + 72) = v19;
    *(v8 + 80) = v21;
    *(v8 + 88) = v23;
    [v2 frame];
    v25 = v24;
    v27 = v26;
    v28 = [v2 frame];
    v30 = v29;
    v31 = (*((*v15 & *v2) + 0x1598))(v28);
    if (!v31)
    {
      v31 = [v2 superview];
    }

    v32 = v31;
    v33 = PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v31);

    v34 = v33.height != v27 || v33.width != v25;
    v36.origin.x = 0.0;
    v36.origin.y = v30;
    v36.size.width = v33.width;
    v36.size.height = v33.height;
    PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(v36, 1, v34, 1);
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.endLiveResize(discard:)(Swift::Bool discard)
{
  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v4 setNeedsLayout];
  v5 = *(v1 + v3);
  if (!v5)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v5 setHidden_];
  v6 = direct field offset for PaperTextAttachmentView.resizeInfo;
  v7 = *(v1 + direct field offset for PaperTextAttachmentView.resizeInfo);
  if (v7)
  {
    if (discard)
    {
      *(v1 + direct field offset for PaperTextAttachmentView.resizeInfo) = 0;
      [v1 frame];
      v9 = v8;
      v11 = v10;
      v12 = [v1 frame];
      v14 = v13;
      v15 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1598))(v12);
      if (!v15)
      {
        v15 = [v1 superview];
      }

      v16 = v15;
      v17 = PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v15);

      v18 = v17.height != v11 || v17.width != v9;
      v21.origin.x = 0.0;
      v21.origin.y = v14;
      v21.size.width = v17.width;
      v21.size.height = v17.height;
      PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(v21, 1, v18, 1);
    }

    else
    {
      v19 = v1;

      specialized Canvas.undoable(newChange:persistSelection:action:)(0, 0, v19, v19, v7);

      *(v1 + v6) = 0;
    }
  }
}

uint64_t closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 161) = a6;
  *(v6 + 160) = a5;
  *(v6 + 88) = a4;
  type metadata accessor for MainActor();
  *(v6 + 96) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 104) = v8;
  *(v6 + 112) = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:), v8, v7);
}

uint64_t closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)()
{
  if (*(v0 + 160))
  {
    v1 = 1;
  }

  else
  {
    v1 = PaperTextAttachmentView.isAtEndOfDocument.getter();
  }

  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:);

  return PaperTextAttachmentView.contentBounds(includeDrawing:)(v1 & 1);
}

{
  v43 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 88);

  v45.origin.x = v4;
  v45.origin.y = v3;
  v45.size.width = v2;
  v45.size.height = v1;
  MaxY = CGRectGetMaxY(v45);
  v7 = *(v5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
  if (v7)
  {
    v8 = v7;
    if (HandwritingReflowView.showRectangularSelection.getter())
    {
      HandwritingReflowView.rectangularSelectionTransformCoordinateSpace.getter(v0 + 16);
      CGAffineTransform.decompose(initialRotation:)(&v42, 0.0);
      v9 = CGRectGetMaxY(v42);

      if (MaxY <= v9)
      {
        MaxY = v9;
      }
    }

    else
    {
    }
  }

  v46.origin.x = PaperTextAttachmentView.safePaperModelBounds.getter();
  v10 = CGRectGetMaxY(v46);
  if (v10 + 1.0 < MaxY || (PaperTextAttachmentView.isAtEndOfDocument.getter() & 1) != 0 && vabdd_f64(MaxY, v10) > 1.0)
  {
    v11 = *(v0 + 161);
    v12 = *(v0 + 88);
    [v12 bounds];
    v14 = v13;
    [v12 bounds];
    v16 = v15;
    v17 = *MEMORY[0x1E69785E0];
    [v12 bounds];
    v19 = MaxY - v18;
    v20 = swift_task_alloc();
    *(v20 + 16) = v14;
    *(v20 + 24) = v16;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    v21 = *&v12[direct field offset for Canvas.paperView];
    v22 = MEMORY[0x1E69E7D40];
    swift_beginAccess();
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    Capsule.callAsFunction<A>(_:)();

    swift_endAccess();

    if (v11 != 5)
    {
      LOBYTE(v42.origin.x) = *(v0 + 161);
      PaperTextAttachmentView.forwardChanges(from:)(&v42);
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v47.origin.x = v14;
      v47.origin.y = v16;
      v47.size.width = v17;
      v47.size.height = v19;
      *(v27 + 4) = CGRectGetHeight(v47);
      _os_log_impl(&dword_1D38C4000, v25, v26, "Updated content height to: %f", v27, 0xCu);
      MEMORY[0x1DA6D0660](v27, -1, -1);
    }

    v28 = *(v0 + 88);

    [v28 frame];
    v30 = v29;
    v32 = v31;
    v33 = [v28 frame];
    v35 = v34;
    v36 = (*((*v22 & *v28) + 0x1598))(v33);
    if (!v36)
    {
      v36 = [*(v0 + 88) superview];
    }

    v37 = v36;
    v38 = PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v36);

    v39 = v38.height != v32 || v38.width != v30;
    v48.origin.x = 0.0;
    v48.origin.y = v35;
    v48.size.width = v38.width;
    v48.size.height = v38.height;
    PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(v48, 1, v39, 1);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[16] = a1;
  v6[17] = a2;
  v6[18] = a3;
  v6[19] = a4;

  v7 = *(v5 + 14);
  v8 = *(v5 + 13);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:), v8, v7);
}

uint64_t closure #1 in closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)()
{
  v0 = Capsule.Ref.root.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  return v0(v2, 0);
}

Swift::Void __swiftcall PaperTextAttachmentView.resizeRootBoundsIfNecessary(alwaysIncludeDrawing:)(Swift::Bool alwaysIncludeDrawing)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if (!AnyCanvas.isLiveEditing()() && !*&v1[direct field offset for PaperTextAttachmentView.resizeInfo])
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v1;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *(v9 + 32) = v7;
    *(v9 + 40) = alwaysIncludeDrawing;
    *(v9 + 41) = 4;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)partial apply, v9);
  }
}

void PaperTextAttachmentView.visibleBounds.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1598))();
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v0 convertRect:v2 toCoordinateSpace:?];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (PaperTextAttachmentView.isAtEndOfDocument.getter())
    {
      [v2 bounds];
      v10 = v10 + CGRectGetHeight(v21);
    }

    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v2 adjustedContentInset];
    v22.origin.x = UIEdgeInsetsInsetRect(v12, v14, v16, v18, v19, v20);
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    CGRectIntersection(v22, v23);
  }

  else
  {
    [v0 frame];
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.forwardChanges(from:)(PaperKit::AnyCanvas::MergeSource from)
{
  v2 = from;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v14 = *v2;
  v6 = v14;
  AnyCanvas.forwardChanges(from:)(&v14);
  if ((v6 - 3) <= 1)
  {
    v1[direct field offset for PaperTextAttachmentView.safeToCopyNewModelWhenMerging] = 0;
    v7 = &v1[direct field offset for PaperTextAttachmentView.paperBoundsHint];
    *v7 = 0u;
    *(v7 + 1) = 0u;
    v7[32] = 1;
    if (!AnyCanvas.isLiveEditing()() && !*&v1[direct field offset for PaperTextAttachmentView.resizeInfo])
    {
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      type metadata accessor for MainActor();
      v9 = v1;
      v10 = static MainActor.shared.getter();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      *(v11 + 16) = v10;
      *(v11 + 24) = v12;
      *(v11 + 32) = v9;
      *(v11 + 40) = 0;
      *(v11 + 41) = v6;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:), v11);
    }
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.mergeToCanvasElements()()
{
  specialized Canvas.mergeToCanvasElements()();
  [v0 frame];
  v2 = v1;
  v4 = v3;
  v5 = [v0 frame];
  v7 = v6;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1598))(v5);
  if (!v8)
  {
    v8 = [v0 superview];
  }

  v9 = v8;
  v10 = PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v8);

  v11 = v10.height != v4 || v10.width != v2;
  v13.origin.x = 0.0;
  v13.origin.y = v7;
  v13.size.width = v10.width;
  v13.size.height = v10.height;
  PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(v13, 0, v11, 1);

  PaperTextAttachmentView.notifyLinksChangedIfNecessary()();
}

Swift::Void __swiftcall PaperTextAttachmentView.layoutSubviews()()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = PaperTextAttachmentView.isAtEndOfDocument.getter();
  v58.receiver = v0;
  v58.super_class = type metadata accessor for PaperTextAttachmentView();
  v11 = objc_msgSendSuper2(&v58, sel_layoutSubviews);
  v54 = v3;
  v55 = v5;
  v56 = v7;
  v57 = v9;
  v12 = MEMORY[0x1E69E7D40];
  if ((v10 & 1) == 0)
  {
    if (one-time initialization token for resizeHandleSize != -1)
    {
      swift_once();
    }

    v9 = fmax(v9 + *&static UIConstants.resizeHandleSize * -0.5, 1.0);
    goto LABEL_11;
  }

  v13 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1598))(v11);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v14)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v15 = v13;
  v16 = v14;
  v17 = CanvasElementResizeView.resizingCanvasElements.getter();

  if (v17 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    [v15 bounds];
    v20 = v19;

    v9 = v20 + v9;
LABEL_11:
    v57 = v9;
    goto LABEL_12;
  }

LABEL_12:
  v21 = *&v1[direct field offset for PaperTextAttachmentView.resizeInfo];
  if (v21)
  {
    v22 = *(v21 + 24);
    v55 = v22 + v5;
    v57 = fmax(v9 - v22, 1.0);
  }

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = &v54;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in PaperTextAttachmentView.layoutSubviews();
  *(v25 + 24) = v24;
  *&aBlock.tx = thunk for @callee_guaranteed () -> ()partial apply;
  *&aBlock.ty = v25;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
  *&aBlock.d = &block_descriptor_462;
  v26 = _Block_copy(&aBlock);
  v27 = v1;

  [v23 performWithoutAnimation_];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_18;
  }

  [*&v27[direct field offset for Canvas.paperView] setClipsToBounds_];
  v29 = *&v27[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v29)
  {
    __break(1u);
    goto LABEL_38;
  }

  [v29 setNeedsLayout];
  v30 = [*&v27[direct field offset for PaperTextAttachmentView.bottomResizeView] layoutInsideSuperview];
  v31 = *&v27[direct field offset for PaperTextAttachmentView.topResizeView];
  if (!v31)
  {
    goto LABEL_19;
  }

  v32 = v31;
  [v32 layoutInsideSuperview];
  isEscapingClosureAtFileLocation = v32;
  [isEscapingClosureAtFileLocation frame];
  if (one-time initialization token for resizeHandleSize != -1)
  {
    goto LABEL_35;
  }

LABEL_18:
  [isEscapingClosureAtFileLocation setFrame_];

LABEL_19:
  v33 = v54;
  v34 = v55;
  v35 = v56;
  v36 = v57;
  if (v10)
  {
    v37 = (*((*v12 & *v27) + 0x1598))(v30);
    if (v37)
    {
      v38 = v37;
      [v37 bounds];
      v40 = v39;

      v36 = v36 + v40;
    }
  }

  v41 = (*((*v12 & *v27) + 0x468))();
  if (v41)
  {
    v42 = v41;
    if ([v41 overrideUserInterfaceStyle])
    {
      [v27 setOverrideUserInterfaceStyle_];
    }
  }

  v43 = direct field offset for PaperTextAttachmentView.linedPaperView;
  v44 = *&v27[direct field offset for PaperTextAttachmentView.linedPaperView];
  if (!v44)
  {
    goto LABEL_32;
  }

  v45 = *&v27[direct field offset for PaperTextAttachmentView.linedPaper];
  if (v45)
  {
    v46 = v44;
    v47 = v45;
  }

  else
  {
    v48 = *((*v12 & *v27) + 0x1598);
    v46 = v44;
    v49 = v48();
    v47 = [v49 linedPaper];
  }

  v50 = *&v46[OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaper];
  *&v46[OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaper] = v47;
  v51 = v45;

  v52 = *&v27[v43];
  if (v52)
  {
    v53 = v52;
    PaperTextAttachmentView.drawingTransform.getter(&aBlock);
    v60.origin.x = v33;
    v60.origin.y = v34;
    v60.size.width = v35;
    v60.size.height = v36;
    LinedPaperView.update(bounds:drawingTransform:shouldClip:)(v60, &aBlock, 1);
  }

  else
  {
LABEL_32:
  }
}

void @objc PaperTextAttachmentView.layoutSubviews()(void *a1)
{
  v1 = a1;
  PaperTextAttachmentView.layoutSubviews()();
}

id @objc PaperTextAttachmentView.canBecomeFirstResponder.getter(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1598);
  v2 = a1;
  v3 = v1();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 _canSelectDrawing];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id @objc PaperTextAttachmentView.becomeFirstResponder()(void *a1, uint64_t a2, const char **a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for PaperTextAttachmentView();
  v4 = *a3;
  v5 = v8.receiver;
  v6 = objc_msgSendSuper2(&v8, v4);
  PaperTextAttachmentView.setAdjustResizeIndicatorVisible(_:animated:highlightBackground:)([v5 isFirstResponder], 1, 0);

  return v6;
}

void closure #1 in PaperTextAttachmentView.characterIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6)
{
  outlined init with copy of Date?(a1, v13, &_sypSgMd);
  if (v14)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSTextAttachment);
    if (swift_dynamicCast())
    {
      v10 = a5;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        *a6 = a2;
        *(a6 + 8) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_sypSgMd);
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(__C::CGRect frame, Swift::Bool ensureLayout, Swift::Bool needsInvalidateLayout, Swift::Bool shouldRedraw)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  PaperTextAttachmentView.reportUpdatedPaperBoundsIfNecessary()();
  v11 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1598);
  v12 = v11();
  v13 = [v12 textLayoutManager];

  if (v13)
  {

    v14 = 0;
    v15 = v11();
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 2) = v4;
    v17[3] = x;
    v17[4] = y;
    v17[5] = width;
    v17[6] = height;
    v18 = swift_allocObject();
    v14 = partial apply for closure #1 in PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:);
    *(v18 + 16) = partial apply for closure #1 in PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:);
    *(v18 + 24) = v17;
    v52 = partial apply for thunk for @callee_guaranteed () -> ();
    v53 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = thunk for @escaping @callee_guaranteed () -> ();
    v51 = &block_descriptor_388;
    v19 = _Block_copy(&aBlock);
    v20 = v4;

    [v16 performWithoutAnimation_];
    _Block_release(v19);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
      goto LABEL_22;
    }

    v15 = (v11)(v21);
    if (!v15)
    {
LABEL_20:
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);
      return;
    }
  }

  v22 = v15;
  v23 = direct field offset for PaperTextAttachmentView.textAttachment;
  v24 = *(v4 + direct field offset for PaperTextAttachmentView.textAttachment);
  if (!v24)
  {
LABEL_19:

    goto LABEL_20;
  }

  v43 = v24;
  v25 = v11();
  if (!v25 || (v26 = v25, v27 = [v25 textStorage], v26, !v27))
  {
LABEL_18:

    goto LABEL_19;
  }

  v28 = *(v4 + v23);
  if (!v28)
  {

    goto LABEL_18;
  }

  v44 = needsInvalidateLayout;
  v46 = 0;
  v47 = 1;
  v42 = *MEMORY[0x1E69DB5F8];
  v29 = v28;
  v41 = [v27 length];
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = &v46;
  v31 = swift_allocObject();
  *(v31 + 16) = closure #1 in PaperTextAttachmentView.characterIndex.getterpartial apply;
  *(v31 + 24) = v30;
  v52 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v53 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v51 = &block_descriptor_399;
  v32 = _Block_copy(&aBlock);
  v33 = v29;

  [v27 enumerateAttribute:v42 inRange:0 options:v41 usingBlock:{0, v32}];

  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if ((v32 & 1) == 0)
  {
    v34 = v46;
    v35 = v47;

    if ((v35 & 1) == 0)
    {
      [v43 bounds];
      v55.origin.x = v36;
      v55.origin.y = v37;
      v55.size.width = v38;
      v55.size.height = v39;
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = width;
      v54.size.height = height;
      if (CGRectEqualToRect(v54, v55) || ([v43 setBounds_], !v44))
      {
        if (shouldRedraw)
        {
          v40 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x468))();
          [v40 _layoutSubviews];
          [v40 updateTilesForVisibleRect];
        }
      }

      else
      {
        [v22 _pk_invalidateLayoutForCharacterRange_invalidateDisplay_ensureLayout_];
      }
    }

    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
}

Swift::Void __swiftcall PaperTextAttachmentView.reportUpdatedPaperBoundsIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = v13;
    v21 = v1 + direct field offset for PaperTextAttachmentView.reportedBounds;
    v22 = *(v1 + direct field offset for PaperTextAttachmentView.reportedBounds + 32);
    v23 = MEMORY[0x1E69E7D40];
    v44 = Strong;
    if (v22)
    {
      goto LABEL_5;
    }

    v24 = *(v1 + direct field offset for Canvas.paperView);
    v25 = v11;
    v26 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x3F0);
    swift_beginAccess();
    v27 = v24 + v26;
    v11 = v25;
    (*(v25 + 16))(v19, v27, v10);
    Capsule.root.getter();
    (*(v25 + 8))(v19, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    _s8PaperKit0A0VWOhTm_1(v9, type metadata accessor for Paper);
    if (*(v21 + 32))
    {
      __break(1u);
      return;
    }

    v28 = CGRect.almostEqual(_:threshold:)(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 24), 0.1, v46.x, v46.y, v47.width, v47.height);
    v23 = MEMORY[0x1E69E7D40];
    if (!v28)
    {
LABEL_5:
      v42 = direct field offset for Canvas.paperView;
      v29 = *(v1 + direct field offset for Canvas.paperView);
      v30 = *((*v23 & *v29) + 0x3F0);
      swift_beginAccess();
      v40 = v1;
      v41 = *(v11 + 16);
      v41(v16, &v29[v30], v10);
      Capsule.root.getter();
      v31 = *(v11 + 8);
      v31(v16, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit0A0VWOhTm_1(v6, type metadata accessor for Paper);
      v32 = v47;
      *v21 = v46;
      *(v21 + 16) = v32;
      *(v21 + 32) = 0;
      v33 = *(v40 + v42);
      v34 = *((*v23 & *v33) + 0x3F0);
      swift_beginAccess();
      v35 = v33 + v34;
      v36 = v43;
      v41(v43, v35, v10);
      v37 = v45;
      Capsule.root.getter();
      v31(v36, v10);
      CRRegister.wrappedValue.getter();
      _s8PaperKit0A0VWOhTm_1(v37, type metadata accessor for Paper);
      v38 = v46;
      v39 = v47;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v48.origin = v38;
        v48.size = v39;
        ExtensionViewController.reportPaperBounds(_:)(v48);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

void PaperTextAttachmentView.paperBounds(forViewWidth:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - v4;
  v6 = (v1 + direct field offset for PaperTextAttachmentView.paperBoundsHint);
  v7 = MEMORY[0x1E69E7D40];
  if (*(v1 + direct field offset for PaperTextAttachmentView.paperBoundsHint + 32))
  {
    v8 = *(v1 + direct field offset for Canvas.paperView);
    v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x3F0);
    swift_beginAccess();
    (*(v3 + 16))(v5, &v8[v9], v2);
    v10 = Capsule<>.contentBounds(includeDrawing:)(1);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    v17 = v10;
    v18 = v12;
    v19 = v14;
    v20 = v16;
  }

  else
  {
    v19 = *(v6 + 2);
    v20 = *(v6 + 3);
    v17 = *v6;
    v18 = *(v6 + 1);
  }

  v29 = PaperTextAttachmentView.sensibleBounds(for:)(*&v17);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v25 = (*((*v7 & *v1) + 0x468))();
  if (v25)
  {
    v26 = v25;
    v27 = [v25 cropDrawingAttachmentsWhenViewIsSmaller];

    if (v27)
    {
      if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
      {
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        CGRectGetMinX(v30);
      }

      else
      {
        v31.origin.x = 0.0;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        CGRectGetMaxX(v31);
      }
    }
  }
}

void PaperTextAttachmentView.drawingTransform(forViewWidth:)(__int128 *a1@<X8>, double a2@<D0>)
{
  v5 = direct field offset for PaperTextAttachmentView.cachedDrawingTransformBoundsWidth;
  if (vabdd_f64(a2, *(v2 + direct field offset for PaperTextAttachmentView.cachedDrawingTransformBoundsWidth)) < 1.0)
  {
    v6 = *(v2 + direct field offset for PaperTextAttachmentView.cachedDrawingTransformShouldCrop);
    v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 cropDrawingAttachmentsWhenViewIsSmaller];

      if (v6 == v9)
      {
        goto LABEL_15;
      }
    }

    else if (!v6)
    {
LABEL_15:
      v16 = *(v2 + direct field offset for PaperTextAttachmentView.cachedDrawingTransform);
      v15 = *(v2 + direct field offset for PaperTextAttachmentView.cachedDrawingTransform + 16);
      v17 = *(v2 + direct field offset for PaperTextAttachmentView.cachedDrawingTransform + 32);
      goto LABEL_16;
    }
  }

  PaperTextAttachmentView.paperBounds(forViewWidth:)();
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  v14 = a2 / CGRectGetWidth(v28);
  v15 = xmmword_1D4059310;
  v16 = xmmword_1D4059320;
  v17 = 0uLL;
  if (v14 > 0.0 && *&v14 >> 52 <= 0x7FEuLL)
  {
    if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v18 = -(v14 * CGRectGetMinX(v29));
      v19 = direct field offset for PaperTextAttachmentView.cachedDrawingTransform;
      v20 = v2 + direct field offset for PaperTextAttachmentView.cachedDrawingTransform;
      *v20 = v14;
      *(v20 + 1) = 0;
      *(v20 + 2) = 0;
      *(v20 + 3) = v14;
      *(&v21 + 1) = 0;
      *&v21 = v18;
    }

    else
    {
      CGAffineTransformMakeScale(&v27, v14, v14);
      v22 = *&v27.c;
      v21 = *&v27.tx;
      v19 = direct field offset for PaperTextAttachmentView.cachedDrawingTransform;
      v23 = (v2 + direct field offset for PaperTextAttachmentView.cachedDrawingTransform);
      *v23 = *&v27.a;
      v23[1] = v22;
    }

    *(v2 + v19 + 32) = v21;
    v24 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 cropDrawingAttachmentsWhenViewIsSmaller];
    }

    else
    {
      v26 = 0;
    }

    *(v2 + direct field offset for PaperTextAttachmentView.cachedDrawingTransformShouldCrop) = v26;
    *(v2 + v5) = a2;
    goto LABEL_15;
  }

LABEL_16:
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
}

double PaperTextAttachmentView.drawingTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1598))();
  if (v3)
  {
    if (_UISolariumEnabled())
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v3)
    {
      [v3 bounds];
      Width = v15;
      goto LABEL_8;
    }

LABEL_9:
    Width = *MEMORY[0x1E69785E0];
    goto LABEL_10;
  }

  v3 = [v1 superview];
  if (!_UISolariumEnabled())
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v3)
  {
    goto LABEL_9;
  }

  v3 = v3;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v20.origin.x = UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13);
  Width = CGRectGetWidth(v20);

LABEL_8:
LABEL_10:
  PaperTextAttachmentView.drawingTransform(forViewWidth:)(v18, Width);
  v16 = v18[1];
  *a1 = v18[0];
  a1[1] = v16;
  result = *&v19;
  a1[2] = v19;
  return result;
}

id PaperTextAttachmentView.tiledView.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1598))();
  v2 = [v1 _pkTiledViewIfEnabled];

  return v2;
}

double PaperTextAttachmentView.drawingTransformOverride.getter@<D0>(uint64_t a1@<X8>)
{
  PaperTextAttachmentView.drawingTransform.getter(v5);
  result = *v5;
  v3 = v5[1];
  v4 = v5[2];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = 0;
  return result;
}

uint64_t PaperTextAttachmentView.closestViewController.getter()
{
  v1 = v0;
  while (1)
  {
    v2 = [v1 nextResponder];
    if (v2)
    {
      break;
    }

LABEL_5:
    v5 = [v1 nextResponder];

    if (!v5)
    {
      return 0;
    }

    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {

      return 0;
    }
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    goto LABEL_5;
  }

  v7 = v4;

  return v7;
}

uint64_t PaperTextAttachmentView.viewControllerForPresentingUI.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {

    return PaperTextAttachmentView.closestViewController.getter();
  }

  return result;
}

void PaperTextAttachmentView.viewControllerForPresentingUI.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PaperTextAttachmentView.viewControllerForPresentingUI.modify(uint64_t *a1))(id *a1)
{
  v3 = direct field offset for PaperTextAttachmentView._viewControllerForPresentingUI;
  a1[1] = v1;
  a1[2] = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = PaperTextAttachmentView.closestViewController.getter();
  }

  *a1 = Strong;
  return PaperTextAttachmentView.viewControllerForPresentingUI.modify;
}

void PaperTextAttachmentView.viewControllerForPresentingUI.modify(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall PaperTextAttachmentView.observeTextView(_:)(UITextView_optional *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (a1)
  {
    if (Strong)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextView);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = MEMORY[0x1E69DE750];
  v10 = MEMORY[0x1E69DB738];
  if (v8)
  {
    v11 = v8;
    v12 = objc_opt_self();
    v13 = [v12 defaultCenter];
    [v13 removeObserver:v2 name:*v9 object:v11];

    v14 = [v12 defaultCenter];
    v15 = *v10;
    v16 = v10;
    v17 = [v11 textStorage];
    [v14 removeObserver:v2 name:v15 object:v17];

    v10 = v16;
    v9 = MEMORY[0x1E69DE750];
    [v11 _removeScrollViewScrollObserver_];
  }

  swift_unknownObjectWeakAssign();
  if (a1)
  {
    v18 = objc_opt_self();
    v23 = a1;
    v19 = [v18 defaultCenter];
    [v19 addObserver:v2 selector:sel_updateAfterTextViewChange name:*v9 object:v23];

    v20 = [v18 defaultCenter];
    v21 = *v10;
    v22 = [(UITextView_optional *)v23 textStorage];
    [v20 addObserver:v2 selector:sel_updateAfterTextViewChange name:v21 object:v22];

    [(UITextView_optional *)v23 _addScrollViewScrollObserver:v2];
  }
}

id @objc PaperTextAttachmentView._observeScrollViewDidScroll(_:)(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (result)
  {
    return [result setNeedsLayout];
  }

  __break(1u);
  return result;
}

id PaperTextAttachmentView.textView.getter()
{
  result = [v0 superview];
  if (result)
  {
    v2 = result;
    while (1)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

CGSize __swiftcall PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(UIView_optional *containerView)
{
  if (_UISolariumEnabled())
  {
    if (containerView)
    {
      v3 = containerView;
      [(UIView_optional *)v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [(UIView_optional *)v3 safeAreaInsets];
      v62.origin.x = UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13);
      Width = CGRectGetWidth(v62);

      v14 = Width;
      goto LABEL_7;
    }
  }

  else if (containerView)
  {
    [(UIView_optional *)containerView bounds];
    goto LABEL_7;
  }

  v14 = *MEMORY[0x1E69785E0];
LABEL_7:
  v60 = v14;
  PaperTextAttachmentView.drawingTransform(forViewWidth:)(v61, v14);
  v15 = PaperTextAttachmentView.safePaperModelBounds.getter();
  v19 = *(v1 + direct field offset for PaperTextAttachmentView.resizeInfo);
  if (v19)
  {
    v15 = *(v19 + 32);
    v16 = *(v19 + 40);
    v17 = *(v19 + 48);
    v18 = *(v19 + 56);
  }

  v20 = *MEMORY[0x1E69785D8];
  *&v22 = CGRectGetMaxY(*&v15) * sqrt(vaddvq_f64(vmulq_f64(v61[0], v61[0])));
  if (v20 > *&v22)
  {
    *&v22 = v20;
  }

  v58 = v22;
  v23 = MEMORY[0x1E69E7D40];
  v24 = *(*(v1 + direct field offset for Canvas.paperView) + *((*MEMORY[0x1E69E7D40] & **(v1 + direct field offset for Canvas.paperView)) + 0x558));
  if (!v24)
  {
    goto LABEL_34;
  }

  v25 = *&v24[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
  if (!v25)
  {
    goto LABEL_34;
  }

  v26 = *(v25 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
  if (!v26)
  {
    goto LABEL_34;
  }

  v57 = v24;
  v27 = [v26 overlayViews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
    v31 = __CocoaSet.count.getter();
    if (v31)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_16:
      if (v31 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      for (i = 0; i != v31; ++i)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1DA6CE0C0](i, v28);
        }

        else
        {
          v33 = *(v28 + 8 * i + 32);
        }

        v34 = v33;
        [v33 frame];
        if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v39 = v35, v40 = v36, v41 = v37, v42 = v38, CGRectIsEmpty(*&v35)))
        {
        }

        else
        {
          v63.origin.x = v39;
          v63.origin.y = v40;
          v63.size.width = v41;
          v63.size.height = v42;
          MaxY = CGRectGetMaxY(v63);

          v44 = v58;
          if (*&v58 <= MaxY)
          {
            *&v44 = MaxY;
          }

          v58 = v44;
        }
      }
    }
  }

LABEL_34:
  v45 = 1.0;
  v46 = 1.0;
  if (containerView)
  {
    v21 = [(UIView_optional *)containerView window];
    if (v21)
    {
      v47 = v21;
      v48 = [v21 screen];

      [v48 scale];
      v46 = v49;
    }
  }

  v50 = (*((*v23 & *v1) + 0x1598))(v21);
  if (v50)
  {
    v51 = v50;
    [v50 zoomScale];
    v45 = v52;
  }

  v53.f64[0] = v60;
  *&v53.f64[1] = v58;
  v54 = vmulq_n_f64(v53, v46 * v45);
  v55 = vrndmq_f64(v54);
  v29 = vdivq_f64(vbslq_s8(vcgeq_f64(vsubq_f64(v54, v55), vdupq_n_s64(0x3FDF5C28F5C28F5CuLL)), vrndpq_f64(v54), v55), vdupq_lane_s64(COERCE__INT64(v46 * v45), 0));
  v30 = v29.f64[1];
LABEL_41:
  result.width = v29.f64[0];
  result.height = v30;
  return result;
}

Swift::Void __swiftcall PaperTextAttachmentView.updateFrameForTextContainer(ensureLayout:shouldRedraw:avoidInvalidateLayout:)(Swift::Bool ensureLayout, Swift::Bool shouldRedraw, Swift::Bool avoidInvalidateLayout)
{
  [v3 frame];
  v8 = v7;
  v10 = v9;
  v11 = [v3 frame];
  v13 = v12;
  v14 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1598))(v11);
  if (!v14)
  {
    v14 = [v3 superview];
  }

  v15 = v14;
  v16 = PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v14);

  v17 = v16.height == v10 && v16.width == v8;
  v23.origin.x = 0.0;
  v23.origin.y = v13;
  v23.size.width = v16.width;
  v23.size.height = v16.height;
  PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(v23, ensureLayout, !v17 && !avoidInvalidateLayout, shouldRedraw);
  if (!v17 && avoidInvalidateLayout)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D38C4000, oslog, v19, "Mismatched frame size when we need to avoid invalidate layout.", v20, 2u);
      MEMORY[0x1DA6D0660](v20, -1, -1);
    }
  }
}

uint64_t PaperTextAttachmentView.isStandInCanvas.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 standInAttachmentView];

  if (!v3)
  {
    return 0;
  }

  v4 = *(v0 + direct field offset for Canvas.paperView);
  v5 = specialized ContainerCanvasElementView.pencilKitAttachmentViews()();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v7 = MEMORY[0x1DA6CE0C0](0, v5);
    goto LABEL_8;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_8:
    v8 = v7;

    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
    v9 = static NSObject.== infix(_:_:)();

    return v9 & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PaperTextAttachmentView.updateFrameForTextContainer()()
{
  [v0 frame];
  v2 = v1;
  v4 = v3;
  v5 = [v0 frame];
  v7 = v6;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1598))(v5);
  if (!v8)
  {
    v8 = [v0 superview];
  }

  v9 = v8;
  v10 = PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v8);

  v11 = v10.height != v4 || v10.width != v2;
  v12 = 0;
  v13 = v7;
  width = v10.width;
  height = v10.height;

  PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(*&v12, 0, v11, 1);
}

uint64_t PaperTextAttachmentView.isAtBeginningOfDocument.getter()
{
  if ([v0 isUserInteractionEnabled])
  {
    v1 = *(v0 + direct field offset for PaperTextAttachmentView.textAttachment);
    if (v1)
    {
      v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1598);
      v3 = v1;
      v4 = v2();
      if (v4)
      {
        v5 = v4;
        v6 = [v4 textStorage];
        v7 = [v6 length];

        if (v7 > 0)
        {
          v8 = [v5 textStorage];
          v9 = [v8 attribute:*MEMORY[0x1E69DB5F8] atIndex:0 effectiveRange:0];

          if (v9)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v14 = 0u;
            v15 = 0u;
          }

          v16[0] = v14;
          v16[1] = v15;
          outlined init with copy of Date?(v16, &v14, &_sypSgMd);
          if (*(&v15 + 1))
          {
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSTextAttachment);
            if (swift_dynamicCast())
            {
              v12 = v3;
              v10 = static NSObject.== infix(_:_:)();

              outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_sypSgMd);
              return v10 & 1;
            }
          }

          else
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(&v14, &_sypSgMd);
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_sypSgMd);
          v10 = 0;

          return v10 & 1;
        }
      }

      else
      {
      }
    }
  }

  v10 = 1;
  return v10 & 1;
}

id PaperTextAttachmentView.isAtEndOfDocument.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - v6;
  if (![v0 isUserInteractionEnabled])
  {
    goto LABEL_10;
  }

  v8 = *(v0 + direct field offset for PaperTextAttachmentView.textAttachment);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1598);
  v10 = v8;
  v11 = v9();
  if (!v11)
  {
LABEL_9:

LABEL_10:
    v21 = 1;
    return (v21 & 1);
  }

  v12 = v11;
  v13 = [v11 textStorage];
  v14 = [v13 length];

  if (v14 <= 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  v15 = [v12 textStorage];
  result = [v15 string];
  if (result)
  {
    v17 = result;

    static CharacterSet.whitespacesAndNewlines.getter();
    CharacterSet.inverted.getter();
    v18 = *(v2 + 8);
    v18(v7, v1);
    isa = CharacterSet._bridgeToObjectiveC()().super.isa;
    v18(v5, v1);
    v20 = [v17 rangeOfCharacterFromSet:isa options:4];

    if (v20 != NSNotFound.getter())
    {
      v22 = [v12 textStorage];
      v23 = [v22 attribute:*MEMORY[0x1E69DB5F8] atIndex:v20 effectiveRange:0];

      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29[0] = v27;
      v29[1] = v28;
      outlined init with copy of Date?(v29, &v27, &_sypSgMd);
      if (*(&v28 + 1))
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSTextAttachment);
        if (swift_dynamicCast())
        {
          v24 = v26[1];
          v25 = v10;
          v21 = static NSObject.== infix(_:_:)();

          outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_sypSgMd);
          return (v21 & 1);
        }
      }

      else
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(&v27, &_sypSgMd);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_sypSgMd);
      v21 = 0;

      return (v21 & 1);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void PaperTextAttachmentView.registerUndo(_:selection:analyticsEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v13 = type metadata accessor for CapsuleUndoAction();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1598))(v15);
  if (v16)
  {
    v68 = v14;
    v17 = *(v6 + direct field offset for PaperTextAttachmentView.textAttachment);
    if (v17)
    {
      v69 = v16;
      v84[1] = &unk_1F4FF85B8;
      v18 = swift_dynamicCastObjCProtocolConditional();
      if (v18)
      {
        v67 = a2;
        v19 = v18;
        v20 = v17;
        v21 = [v6 undoManager];
        if (v21)
        {
          v61 = v21;
          v64 = a3;
          v65 = a4;
          v22 = [v19 _paperIdentifier];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v23;

          v24 = *(a6 + 16);
          v66 = a5;
          v63 = v20;
          v62 = a1;
          if (v24)
          {
            v73 = MEMORY[0x1E69E7CC0];
            v25 = a6 + 32;
            do
            {
              outlined init with copy of FindResult(v25, v81);
              v26 = v82;
              v27 = v83;
              __swift_project_boxed_opaque_existential_1(v81, v82);
              v28 = *(v27 + 40);
              v29 = type metadata accessor for Optional();
              v74 = &v59;
              v30 = *(v29 - 8);
              v31 = MEMORY[0x1EEE9AC00](v29);
              v33 = &v59 - v32;
              v28(v26, v27, v31);
              v34 = *(v26 - 8);
              if ((*(v34 + 48))(v33, 1, v26) == 1)
              {
                (*(v30 + 8))(v33, v29);
                v77 = 0;
                v75 = 0u;
                v76 = 0u;
              }

              else
              {
                *(&v76 + 1) = v26;
                v77 = v27;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v75);
                (*(v34 + 32))(boxed_opaque_existential_1, v33, v26);
              }

              __swift_destroy_boxed_opaque_existential_0(v81);
              if (*(&v76 + 1))
              {
                outlined init with take of PaperKitHashable(&v75, v78);
                v36 = v73;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v84[0] = v36;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
                  v84[0] = v73;
                }

                v39 = v73[2];
                v38 = v73[3];
                if (v39 >= v38 >> 1)
                {
                  v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v73);
                  v84[0] = v73;
                }

                v40 = v79;
                v41 = v80;
                v42 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
                v43 = MEMORY[0x1EEE9AC00](v42);
                v45 = &v59 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v46 + 16))(v45, v43);
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v39, v45, v84, v40, v41);
                __swift_destroy_boxed_opaque_existential_0(v78);
              }

              else
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(&v75, &_s8PaperKit14AnalyticsEvent_pSgMd);
              }

              v25 += 40;
              --v24;
            }

            while (v24);
          }

          else
          {
            v73 = MEMORY[0x1E69E7CC0];
          }

          v48 = v71;
          v47 = v72;
          v49 = v70;
          (*(v71 + 16))(v70, v62, v72);
          v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v51 = (v50 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v52 = (v50 + v68 + 39) & 0xFFFFFFFFFFFFFFF8;
          v53 = swift_allocObject();
          v54 = v59;
          *(v53 + 16) = v60;
          *(v53 + 24) = v54;
          (*(v48 + 32))(v53 + v50, v49, v47);
          v55 = v53 + v51;
          v56 = v67;
          v57 = v64;
          *v55 = v67;
          *(v55 + 8) = v57;
          *(v55 + 16) = v65;
          *(v55 + 24) = v66;
          *(v53 + v52) = v73;
          outlined copy of CanvasMembers?(v56);
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextView);
          v58 = v61;
          NSUndoManager.registerUndo<A>(withTarget:handler:)();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void PaperTextAttachmentView.registerUndo(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1598))();
  if (v5)
  {
    v6 = *(v2 + direct field offset for PaperTextAttachmentView.textAttachment);
    if (v6)
    {
      v17 = v5;
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        v8 = v7;
        v9 = v6;
        v10 = [v2 undoManager];
        if (v10)
        {
          v11 = v10;
          v12 = [v8 _paperIdentifier];
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v16 = swift_allocObject();
          v16[2] = v13;
          v16[3] = v15;
          v16[4] = a1;
          v16[5] = a2;
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextView);

          NSUndoManager.registerUndo<A>(withTarget:handler:)();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void PaperTextAttachmentView.height(from:delta:)(void *a1)
{
  if (a1)
  {
    [a1 bounds];
    CGRectGetMaxY(v2);
    PaperTextAttachmentView.drawingTransform.getter(v1);
  }

  else
  {
    __break(1u);
  }
}

void PaperTextAttachmentView.updateDrawingHeight(_:)(double a1)
{
  v2 = a1;
  [v1 bounds];
  v5 = v4;
  v6 = *MEMORY[0x1E69785D8];
  PaperTextAttachmentView.drawingTransform.getter(v13);
  v7 = fmax(v6 * sqrt(vaddvq_f64(vmulq_f64(v13[0], v13[0]))), 8.0);
  if (v7 > v2 || (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v2 = v7;
  }

  if (v5 < v2)
  {
    [v1 frame];
    v12 = v2;

    PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(*&v9, 1, 1, 1);
  }
}

uint64_t PaperTextAttachmentView.init(paperIdentifier:paperURL:attachment:coherenceContextURL:encryptionDelegate:editingMode:inserted:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, int a8)
{
  v9 = v8;
  v148 = a8;
  v159 = a6;
  v152 = a5;
  v161 = a4;
  v147 = a3;
  v149 = a2;
  v144 = a1;
  v151 = 0;
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v124 = *(FileVersionPolicy - 8);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v145 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v126 = &v122 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v141 = &v122 - v15;
  v143 = type metadata accessor for UUID();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v129 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v128 = &v122 - v18;
  v19 = type metadata accessor for CRKeyPath();
  v155 = *(v19 - 8);
  v156 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v150 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v140 = &v122 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v137 = &v122 - v25;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v122 - v28;
  v30 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v30);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v158 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v133 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v160 = &v122 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v134 = &v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v127 = &v122 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v122 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v122 - v42;
  v44 = type metadata accessor for URL();
  v153 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v122 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a7;
  *(v9 + direct field offset for PaperTextAttachmentView.paperViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + direct field offset for PaperTextAttachmentView.syncManager) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.syncCancellable) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.saveCancellable) = 0;
  v132 = direct field offset for PaperTextAttachmentView.textAttachment;
  *(v9 + direct field offset for PaperTextAttachmentView.textAttachment) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.eatTapGestureRecognizer) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.tapBelowGestureRecognizer) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.topResizeView) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.bottomResizeView) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.resizeDragGestureRecognizer) = 0;
  v48 = v9 + direct field offset for PaperTextAttachmentView.reportedBounds;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 1;
  *(v9 + direct field offset for PaperTextAttachmentView.safeToCopyNewModelWhenMerging) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.linedPaperView) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.previousLinks) = MEMORY[0x1E69E7CC0];
  v49 = v9 + direct field offset for PaperTextAttachmentView.paperBoundsHint;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v123 = v49;
  *(v49 + 32) = 1;
  v131 = direct field offset for PaperTextAttachmentView.shouldBecomeFirstResponder;
  *(v9 + direct field offset for PaperTextAttachmentView.shouldBecomeFirstResponder) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.resizeInfo) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + direct field offset for PaperTextAttachmentView.linedPaper) = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.isCurrentToolGenerationTool) = 0;
  v50 = v9 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize;
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = -1;
  v51 = v9 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundBoundsToInitialize;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 1;
  v52 = (v9 + direct field offset for PaperTextAttachmentView.cachedDrawingTransform);
  *v52 = 0x3FF0000000000000;
  v52[1] = 0;
  v52[2] = 0;
  v52[3] = 0x3FF0000000000000;
  v52[4] = 0;
  v52[5] = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.cachedDrawingTransformBoundsWidth) = 0xBFF0000000000000;
  *(v9 + direct field offset for PaperTextAttachmentView.cachedDrawingTransformShouldCrop) = 0;
  swift_unknownObjectWeakInit();
  v53 = (v9 + direct field offset for PaperTextAttachmentView.calculateDocument);
  *v53 = 0;
  v53[1] = 0;
  *(v9 + direct field offset for PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior) = 0;
  v130 = v44;
  v157 = v47;
  if (!v47)
  {
    goto LABEL_4;
  }

  outlined init with copy of Date?(v152, v43, &_s10Foundation3URLVSgMd);
  v54 = v153;
  if ((*(v153 + 48))(v43, 1, v44) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s10Foundation3URLVSgMd);
LABEL_4:
    type metadata accessor for CRContext();
    v146 = MEMORY[0x1DA6CC630](0, v159);
    goto LABEL_12;
  }

  (*(v54 + 32))(v46, v43, v44);
  v55 = type metadata accessor for CRContext();
  (*(v54 + 56))(v40, 1, 1, v44);
  v146 = v55;
  v56 = v151;
  v57 = static CRContext.uniqueContextUnchecked(for:encryptionDelegate:temporaryDirectory:)();
  if (v56)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, logger);
    v59 = v56;
    v60 = Logger.logObject.getter();
    v61 = v56;
    v62 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v60, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      v65 = v61;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v66;
      *v64 = v66;
      _os_log_impl(&dword_1D38C4000, v60, v62, "Cannot create CRContext for attachment %@", v63, 0xCu);
      outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_sSo8NSObjectCSgMd);
      MEMORY[0x1DA6D0660](v64, -1, -1);
      MEMORY[0x1DA6D0660](v63, -1, -1);
    }

    v146 = MEMORY[0x1DA6CC630](0, v159);
    v44 = v130;
    (*(v153 + 8))(v46, v130);
    v151 = 0;
  }

  else
  {
    v146 = v57;
    v151 = 0;
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s10Foundation3URLVSgMd);
    (*(v54 + 8))(v46, v44);
  }

LABEL_12:
  v67 = v147;
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v163 = 0u;
  v164 = 0u;
  CRRegister.init(wrappedValue:)();
  v163 = 0u;
  v164 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v163 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  LODWORD(v163) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v68 - 8) + 56))(v29, 1, 1, v68);
  outlined init with copy of Date?(v29, v135, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v69 = type metadata accessor for Color(0);
  v70 = v137;
  (*(*(v69 - 8) + 56))(v137, 1, 1, v69);
  outlined init with copy of Date?(v70, v138, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s8PaperKit5ColorVSgMd);
  *&v163 = 0;
  *(&v163 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v163 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  CRKeyPath.init(_:)();
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v71 = v160;
  Capsule.init(_:id:)();
  v72 = v141;
  UUID.init(uuidString:)();
  v73 = v142;
  v74 = v143;
  if ((*(v142 + 48))(v72, 1, v143) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s10Foundation4UUIDVSgMd);

    v75 = v150;
    v76 = CRKeyPath.init(_:)();
  }

  else
  {
    v77 = v128;
    (*(v73 + 32))(v128, v72, v74);
    (*(v73 + 16))(v129, v77, v74);
    v75 = v150;
    CRKeyPath.init(_:)();
    v76 = (*(v73 + 8))(v77, v74);
  }

  v78 = v148;
  v79 = v145;
  if (v157 || (v80 = *(v153 + 48), v76 = v80(v67, 1, v44), v76 == 1))
  {
    *&v163 = 0x406E000000000000;
    if (v161)
    {
      v162 = &unk_1F4FF85B8;
      v76 = swift_dynamicCastObjCProtocolConditional();
      if (v76)
      {
        v81 = v76;
        v82 = [v76 respondsToSelector_];
        v83 = v161;
        if (v82)
        {
          [v81 _paperSizeHint];
          if (v84 > 0.0 && v85 > 0.0)
          {
            *&v163 = fmax(v85 * *MEMORY[0x1E69785E0] / v84, 64.0);
          }
        }

        if ([v81 respondsToSelector_])
        {
          [v81 _paperBoundsHint];
          x = v165.origin.x;
          y = v165.origin.y;
          width = v165.size.width;
          height = v165.size.height;
          v90 = CGRectEqualToRect(v165, *MEMORY[0x1E695F050]);

          v75 = v150;
          v71 = v160;
          if (!v90)
          {
            v91 = v123;
            *v123 = x;
            v91[1] = y;
            v91[2] = width;
            v91[3] = height;
            *(v91 + 32) = 0;
          }
        }

        else
        {

          v75 = v150;
          v71 = v160;
        }
      }
    }

    MEMORY[0x1EEE9AC00](v76);
    *(&v122 - 2) = &v163;
    *(&v122 - 1) = v75;
    v107 = v154;
    v108 = v71;
    Capsule.mutate<A>(_:)();
  }

  else
  {
    v92 = v127;
    outlined init with copy of Date?(v67, v127, &_s10Foundation3URLVSgMd);
    result = v80(v92, 1, v44);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
    v94 = type metadata accessor for CRCodableVersion();
    v95 = *(v94 - 8);
    v96 = *(v95 + 72);
    v97 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1D405C990;
    v99 = v98 + v97;
    v100 = *(v95 + 104);
    v100(v99, *MEMORY[0x1E6995280], v94);
    v100(v99 + v96, *MEMORY[0x1E6995288], v94);
    if (one-time initialization token for allReadableFileFormatVersions != -1)
    {
      swift_once();
    }

    v101 = v124;
    v102 = FileVersionPolicy;
    (*(v124 + 104))(v79, *MEMORY[0x1E6995398], FileVersionPolicy);
    v103 = v127;
    v104 = v151;
    static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();
    v75 = v150;
    v105 = v130;
    if (v104)
    {

      (*(v101 + 8))(v79, v102);
      (*(v153 + 8))(v103, v105);
      v106 = v126;
      v107 = v154;
      (*(v158 + 56))(v126, 1, 1, v154);
      outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
      v67 = v147;
      v78 = v148;
      v108 = v160;
    }

    else
    {

      (*(v101 + 8))(v79, v102);
      v120 = v158;
      v108 = v160;
      v107 = v154;
      (*(v158 + 8))(v160, v154);
      (*(v153 + 8))(v103, v105);
      v121 = v126;
      (*(v120 + 56))(v126, 0, 1, v107);
      (*(v120 + 32))(v108, v121, v107);
      v67 = v147;
      v78 = v148;
    }
  }

  v109 = *(v9 + v132);
  v110 = v161;
  *(v9 + v132) = v161;
  v111 = v110;

  (*(v155 + 16))(v9 + direct field offset for PaperTextAttachmentView.paperDrawingKeyPath, v75, v156);
  *(v9 + v131) = v78 & 1;
  v112 = v146;

  v113 = *MEMORY[0x1E69785E0];
  v114 = v133;
  (*(v158 + 16))(v133, v108, v107);
  v115 = v157;
  v116 = specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(v112, v114, v157, 1, 1, 0.0, 0.0, v113, 384.0);
  v117 = MEMORY[0x1DA6CCED0](0xD000000000000027, 0x80000001D4083730);
  [v116 setAccessibilityIdentifier_];

  *(v116 + direct field offset for PaperTextAttachmentView.safeToCopyNewModelWhenMerging) = (v78 & 1) == 0;
  v118 = v134;
  if (v115)
  {
    outlined init with copy of Date?(v67, v134, &_s10Foundation3URLVSgMd);
  }

  else
  {
    (*(v153 + 56))(v134, 1, 1, v130);
  }

  PaperTextAttachmentView.createPaperView(paperBundleURL:)(v118);
  outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s10Foundation3URLVSgMd);
  PaperTextAttachmentView.addGestures()();
  v119 = v154;
  if (v78)
  {
    LOBYTE(v163) = 3;
    PaperTextAttachmentView.forwardChanges(from:)(&v163);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v159, &_s9Coherence18EncryptionDelegate_pSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s10Foundation3URLVSgMd);
  (*(v158 + 8))(v160, v119);
  (*(v155 + 8))(v75, v156);
  outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s10Foundation3URLVSgMd);
  return v116;
}

uint64_t closure #1 in PaperTextAttachmentView.init(paperIdentifier:paperURL:attachment:coherenceContextURL:encryptionDelegate:editingMode:inserted:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28[0] = v28 - v6;
  v7 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  v15 = *MEMORY[0x1E69785E0];
  v16 = *a2;
  v17 = Capsule.Ref.root.modify();
  v31 = 0;
  v32 = 0;
  v33 = v15;
  v34 = v16;
  v28[1] = type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  v17(v35, 0);
  v18 = *a2;
  v19 = Capsule.Ref.root.modify();
  v31 = 0;
  v32 = 0;
  v33 = v15;
  v34 = v18;
  CRRegister.wrappedValue.setter();
  v19(v35, 0);
  v20 = *(MEMORY[0x1E695F050] + 16);
  v35[0] = *MEMORY[0x1E695F050];
  v35[1] = v20;
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);

  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  v21 = type metadata accessor for CRKeyPath();
  v22 = *(v21 - 8);
  v23 = v28[0];
  (*(v22 + 16))(v28[0], v29, v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  v24 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  MEMORY[0x1DA6CC020](a1, v9, v23, v7, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
  v26 = Capsule.Ref.root.modify();
  outlined init with copy of Date?(v14, v30, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  return v26(v35, 0);
}

Class @objc PaperTextAttachmentView.tiledViewAttachmentViews()(char *a1)
{
  v1 = *&a1[direct field offset for Canvas.paperView];
  v2 = a1;
  v3 = v1;
  specialized ContainerCanvasElementView.pencilKitAttachmentViews()();

  type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

id @objc PaperTextAttachmentView.topLevelAttachmentView()(char *a1)
{
  v1 = *&a1[direct field offset for Canvas.paperView];
  v2 = a1;
  v3 = v1;
  v4 = specialized ContainerCanvasElementView.pencilKitAttachmentViews()();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v6 = MEMORY[0x1DA6CE0C0](0, v4);
    goto LABEL_6;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v6 = *(v4 + 32);
LABEL_6:
  v7 = v6;

  return v7;
}

double @objc PaperTextAttachmentView.drawingTextAttachmentBounds()(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1598);
  v2 = a1;
  v3 = v1();
  if (!v3)
  {
    v3 = [v2 superview];
  }

  v4 = v3;
  PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v3);

  return 0.0;
}

double @objc PaperTextAttachmentView.drawingTextAttachmentBounds(forContainerView:)(void *a1, uint64_t a2, UIView_optional *a3)
{
  v5 = a3;
  v6 = a1;
  PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(a3);

  return 0.0;
}

void PaperTextAttachmentView.didBeginDrawingInCanvasElementView(_:)()
{
  v1 = v0;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
  v2 = *&v0[direct field offset for Canvas.paperView];
  v3 = static NSObject.== infix(_:_:)();

  if (v3)
  {

    [v1 becomeFirstResponder];
  }
}

uint64_t PaperTextAttachmentView.hitChromeForCanvasElementView(_:location:isStylus:event:)(double a1, double a2, uint64_t a3, int a4, void *a5)
{
  v6 = v5;
  v11 = type metadata accessor for PKLassoTool();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
  v15 = direct field offset for Canvas.paperView;
  v16 = *(v5 + direct field offset for Canvas.paperView);
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0 || ([objc_opt_self() resizeHitSize], (PaperTextAttachmentView.hitTestResizeHandles(location:threshold:)(a1, a2, v18) & 1) == 0))
  {
    v43[3] = &type metadata for PencilAndPaperFeatureFlags;
    v43[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
    LOBYTE(v43[0]) = 0;
    v19 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v43);
    if ((v19 & 1) == 0)
    {
LABEL_19:
      LOBYTE(v29) = 0;
      return v29 & 1;
    }

    v39 = v12;
    v40 = v11;
    v41 = a4;
    v42 = a5;
    AnyCanvas.overlays.getter();
    v21 = v20;
    v22 = *(v20 + 16);
    v23 = v22 + 1;
    v24 = 16 * v22 + 16;
    while (--v23)
    {
      if (v23 > *(v21 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v25 = v24 - 16;
      v26 = *(v6 + v15);
      v27 = *(v21 + v24);
      [v26 convertPoint:v27 toCoordinateSpace:{a1, a2}];
      v28 = [v27 hitTest:0 withEvent:?];

      v24 = v25;
      if (v28)
      {

        goto LABEL_9;
      }
    }

    v31 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x468))(v30);
    if (!v31 || (v32 = v31, v33 = [v31 allowsFingerDrawing], v32, (v33 & 1) == 0))
    {
LABEL_18:
      v35 = v42;
      if (v41)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    specialized Canvas.tool.getter(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit6PKTool_pMd);
    v34 = v40;
    v29 = swift_dynamicCast();
    v35 = v42;
    v36 = v41;
    if (!v29)
    {
      return v29 & 1;
    }

    (*(v39 + 8))(v14, v34);
    if (v36)
    {
      goto LABEL_19;
    }

LABEL_14:
    if (!v35 || [v35 buttonMask] != 2)
    {
      LOBYTE(v29) = specialized Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(a1, a2);
      return v29 & 1;
    }
  }

LABEL_9:
  LOBYTE(v29) = 1;
  return v29 & 1;
}

Swift::Bool __swiftcall PaperTextAttachmentView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  v4 = *&v1[direct field offset for PaperTextAttachmentView.eatTapGestureRecognizer];
  if (!v4 || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer), v5 = a1, v6 = v4, v7 = static NSObject.== infix(_:_:)(), v6, v5, (v7 & 1) == 0))
  {
    v14 = *&v2[direct field offset for PaperTextAttachmentView.tapBelowGestureRecognizer];
    if (v14 && (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer), v15 = a1, v16 = v14, v17 = static NSObject.== infix(_:_:)(), v16, v15, (v17 & 1) != 0))
    {
      [(UIGestureRecognizer *)v15 locationInView:v2];
      v19 = v18;
      v21 = v20;
      [v2 bounds];
      v23 = v22;
      v25 = v24;
      v31.origin.x = v26;
      v31.origin.y = v27;
      v31.size.width = v23;
      v31.size.height = v25;
      v28 = PaperTextAttachmentView.hit(byTouchLocation:canvasBounds:)(__PAIR128__(v21, v19), v31);
    }

    else
    {
      v29 = MEMORY[0x1DA6CCED0](0xD00000000000001CLL, 0x80000001D4083810);
      v30 = NSClassFromString(v29);

      if (!v30)
      {
        v13 = 1;
        return v13 & 1;
      }

      v28 = [(UIGestureRecognizer *)a1 isKindOfClass:v30];
    }

    v13 = v28 ^ 1;
    return v13 & 1;
  }

  v9 = *&v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (v9)
  {
    v10 = v9;
    v11 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v11 >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v12 != 0;
    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t @objc PaperTextAttachmentView.gestureRecognizerShouldBegin(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = PaperTextAttachmentView.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

Swift::Bool __swiftcall PaperTextAttachmentView.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v4 = *(v2 + direct field offset for PaperTextAttachmentView.resizeDragGestureRecognizer);
  if (!v4 || (v5 = v2, type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer), v7 = _, v8 = v4, v9 = static NSObject.== infix(_:_:)(), v8, v7, (v9 & 1) == 0))
  {
    v16 = MEMORY[0x1DA6CCED0](0xD00000000000001CLL, 0x80000001D4083810);
    v17 = NSClassFromString(v16);

    if (v17)
    {
      return [(UIGestureRecognizer *)_ isKindOfClass:v17]^ 1;
    }

    return 1;
  }

  [(objc_class *)shouldReceive.super.isa locationInView:v5];
  v11 = v10;
  v13 = v12;
  [objc_opt_self() resizeHitSize];
  if (PaperTextAttachmentView.hitTestResizeHandles(location:threshold:)(v11, v13, v14))
  {
    v15 = *(v5 + direct field offset for PaperTextAttachmentView.bottomResizeView);
    if (v15)
    {
      [v15 setHighlighted_];
    }

    return 1;
  }

  return 0;
}

BOOL @objc PaperTextAttachmentView.gestureRecognizer(_:shouldReceive:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = PaperTextAttachmentView.gestureRecognizer(_:shouldReceive:)(v6, v7);

  return v9;
}

Swift::Void __swiftcall PaperTextAttachmentView.resizeGestureRecognizerDidChangeState(_:)(UIGestureRecognizer *a1)
{
  v2 = *(v1 + direct field offset for PaperTextAttachmentView.bottomResizeView);
  if (v2)
  {
    v5 = v2;
    v4 = [(UIGestureRecognizer *)a1 state]== 1 || [(UIGestureRecognizer *)a1 state]== 2;
    [v5 setHighlighted_];
  }
}

uint64_t @objc PaperTextAttachmentView.gestureRecognizerShouldDelayLift(_:)(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[direct field offset for PaperTextAttachmentView.resizeDragGestureRecognizer];
  if (v3)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer);
    v6 = a3;
    v7 = a1;
    v8 = v3;
    v9 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void @objc PaperTextAttachmentView.tapBelowGesture(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized PaperTextAttachmentView.tapBelowGesture(_:)();
}

Swift::Void __swiftcall PaperTextAttachmentView.addGestures()()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:sel_noOpForGesture_];
  [v3 setDelegate_];
  v4 = *&v2[direct field offset for PaperTextAttachmentView.eatTapGestureRecognizer];
  *&v2[direct field offset for PaperTextAttachmentView.eatTapGestureRecognizer] = v3;

  [v2 addGestureRecognizer_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v2 action:sel_tapBelowGesture_];
  [v13 setDelegate_];
  v5 = *&v2[direct field offset for PaperTextAttachmentView.tapBelowGestureRecognizer];
  *&v2[direct field offset for PaperTextAttachmentView.tapBelowGestureRecognizer] = v13;

  [v2 addGestureRecognizer_];
  v6 = [objc_allocWithZone(type metadata accessor for ResizeGestureRecognizer()) initWithTarget:v2 action:sel_resizeGesture_];

  v7 = direct field offset for PaperTextAttachmentView.resizeDragGestureRecognizer;
  v8 = *&v2[direct field offset for PaperTextAttachmentView.resizeDragGestureRecognizer];
  *&v2[direct field offset for PaperTextAttachmentView.resizeDragGestureRecognizer] = v6;
  v9 = v6;

  [v9 setDelegate_];
  v10 = *&v2[v7];
  if (v10 && (v11 = v10, v12 = MEMORY[0x1DA6CCED0](0xD00000000000001BLL, 0x80000001D40834B0), [v11 setName_], v11, v12, *&v2[v7]))
  {
    [v2 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

id PaperTextAttachmentView.hitTestResizeHandles(location:threshold:)(CGFloat a1, CGFloat a2, CGFloat a3)
{
  v4 = *&v3[direct field offset for PaperTextAttachmentView.bottomResizeView];
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = *&v3[direct field offset for PaperTextAttachmentView.topResizeView];
  if (!v6)
  {
    return 0;
  }

  v10 = v4;
  v11 = v6;
  [v5 bounds];
  v13 = a3 * 0.5;
  if (a3 * 0.5 + v12 * 0.5 <= a3)
  {
    v14 = a3 * 0.5 + v12 * 0.5;
  }

  else
  {
    v14 = a3;
  }

  if ([v5 effectiveUserInterfaceLayoutDirection] == 1)
  {
    [v5 bounds];
    v16 = v15 - v13;
    v17 = a3 * -0.5;
  }

  else
  {
    v17 = a3 * -0.5;
    v16 = a3 * -0.5;
  }

  [v5 bounds];
  v20 = v19;
  v25.origin.x = v16;
  v25.origin.y = v17;
  v25.size.width = a3;
  v25.size.height = v14;
  v23.x = a1;
  v23.y = a2;
  if (CGRectContainsPoint(v25, v23) && ([v11 shown] & 1) != 0)
  {
    v21 = 0;
    v22 = v11;
  }

  else
  {
    v26.origin.y = v13 + v20 - v14;
    v26.origin.x = v16;
    v26.size.width = a3;
    v26.size.height = v14;
    v24.x = a1;
    v24.y = a2;
    if (CGRectContainsPoint(v26, v24))
    {
      v21 = [v10 shown];
    }

    else
    {
      v21 = 0;
    }

    v22 = v10;
    v10 = v11;
  }

  return v21;
}

char *@objc PaperTextAttachmentView.hitTest(_:with:)(char *result, double a2, double a3, uint64_t a4, void *a5)
{
  v5 = *&result[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (v5)
  {
    v9 = result;
    v10 = v5;
    v11 = a5;
    v17.value.super.isa = a5;
    ResizeView.hitTestChrome(_:with:)(v12, __PAIR128__(*&a3, *&a2), v17);
    v14 = v13;

    if (!v14)
    {
      v15.receiver = v9;
      v15.super_class = type metadata accessor for PaperTextAttachmentView();
      v14 = objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, v11, a2, a3);
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PaperTextAttachmentView.setAdjustResizeIndicatorVisible(_:animated:highlightBackground:)(Swift::Bool _, Swift::Bool animated, Swift::Bool highlightBackground)
{
  if (_)
  {
    *&_ = [v3 frame];
    v6 = 0;
    v7 = 0;
    if (v8 > 1.0 && !highlightBackground)
    {
      v7 = PaperTextAttachmentView.isAtBeginningOfDocument.getter() ^ 1;
      *&_ = PaperTextAttachmentView.isAtEndOfDocument.getter();
      v6 = !_;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1598);
  v10 = (v9)(_);
  if (v10 && (v11 = v10, v12 = [v10 _pkTiledViewIfEnabled], v11, v12))
  {
    v13 = [v12 allowsFingerDrawing];

    v14 = v9();
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v14 = v9();
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v15 = v14;
  if (highlightBackground)
  {
    v16 = [v14 selectionHighlightColor];
  }

  else
  {
    v16 = 0;
  }

  [v3 setBackgroundColor_];

LABEL_15:
  v17 = direct field offset for PaperTextAttachmentView.topResizeView;
  v18 = *(v3 + direct field offset for PaperTextAttachmentView.topResizeView);
  if (v18)
  {
    [v18 show:v7 & 1 enabled:v13 ^ 1 animated:animated];
  }

  v19 = direct field offset for PaperTextAttachmentView.bottomResizeView;
  v20 = *(v3 + direct field offset for PaperTextAttachmentView.bottomResizeView);
  if (v20)
  {
    [v20 show:v6 enabled:v13 ^ 1 animated:animated];
  }

  v21 = *MEMORY[0x1E69DDCE0];
  v22 = *(MEMORY[0x1E69DDCE0] + 8);
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  v24 = *(MEMORY[0x1E69DDCE0] + 24);
  v25 = [v3 isFirstResponder];
  v26 = -10.0;
  if (v13)
  {
    v27 = v21;
  }

  else
  {
    v27 = -10.0;
  }

  v28 = 0.0;
  if (v13)
  {
    v29 = v22;
  }

  else
  {
    v29 = 0.0;
  }

  if (v13)
  {
    v26 = v23;
    v28 = v24;
  }

  if (v25)
  {
    v21 = v27;
    v22 = v29;
    v23 = v26;
    v24 = v28;
  }

  [v3 _setTouchInsets_];
  v30 = *(v3 + v19);
  if (v30)
  {
    [v30 _setTouchInsets_];
  }

  v31 = *(v3 + v17);
  if (v31)
  {

    [v31 _setTouchInsets_];
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.resizeGesture(_:)(UIPanGestureRecognizer *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v34 - v7;
  v9 = direct field offset for PaperTextAttachmentView.resizeInfo;
  v10 = *&v1[direct field offset for PaperTextAttachmentView.resizeInfo];
  if (v10 || (type metadata accessor for ResizeInfo(), v11 = swift_allocObject(), *(v11 + 16) = 0, *(v11 + 24) = 0, v12 = *MEMORY[0x1E695F050], v13 = *(MEMORY[0x1E695F050] + 8), v14 = *(MEMORY[0x1E695F050] + 16), v15 = *(MEMORY[0x1E695F050] + 24), *(v11 + 32) = *MEMORY[0x1E695F050], *(v11 + 40) = v13, *(v11 + 48) = v14, *(v11 + 56) = v15, *(v11 + 64) = v12, *(v11 + 72) = v13, *(v11 + 80) = v14, *(v11 + 88) = v15, *(v11 + 96) = v12, *(v11 + 104) = v13, *(v11 + 112) = v14, *(v11 + 120) = v15, *&v1[v9] = v11, , *(v11 + 32) = PaperTextAttachmentView.safePaperModelBounds.getter(), *(v11 + 40) = v16, *(v11 + 48) = v17, *(v11 + 56) = v18, , (v19 = *&v1[v9]) != 0) && (v20 = *&v1[direct field offset for Canvas.paperView], v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x3F0), swift_beginAccess(), (*(v5 + 16))(v8, &v20[v21], v4), , v22 = Capsule<>.contentBounds(includeDrawing:)(1), v24 = v23, v26 = v25, v28 = v27, (*(v5 + 8))(v8, v4), v19[8] = v22, *(v19 + 9) = v24, *(v19 + 10) = v26, *(v19 + 11) = v28, , (v29 = *&v2[v9]) != 0) && (, [v2 frame], v29[12] = v30, v29[13] = v31, v29[14] = v32, v29[15] = v33, , (v10 = *&v2[v9]) != 0))
  {
    *(v10 + 16) = 0;
    [*&v2[direct field offset for PaperTextAttachmentView.bottomResizeView] handleGesture_];
  }
}

void @objc PaperTextAttachmentView.resizeGesture(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  PaperTextAttachmentView.resizeGesture(_:)(v4);
}

double PaperTextAttachmentView.safePaperModelBounds.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-v4];
  v6 = direct field offset for Canvas.paperView;
  v7 = *(v1 + direct field offset for Canvas.paperView);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x3F0);
  swift_beginAccess();
  v10 = *(v3 + 16);
  v10(v5, &v7[v9], v2);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = v18;
  if (!CGRect.isFinite.getter(v18, v19, v20, v21))
  {
    v13 = *(v1 + v6);
    v14 = *((*v8 & *v13) + 0x3F0);
    swift_beginAccess();
    v10(v5, &v13[v14], v2);
    v15 = Capsule<>.contentBounds(includeDrawing:)(1);
    (v11)(v5, v2, v15);
    return 0.0;
  }

  return v12;
}

id @objc PaperTextAttachmentView.resizeViewTextView(_:)(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1598);
  v2 = a1;
  v3 = v1();

  return v3;
}

double @objc PaperTextAttachmentView.resizeViewDrawingBounds(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = specialized PaperTextAttachmentView.resizeViewDrawingBounds(_:)();

  return v6;
}

void @objc PaperTextAttachmentView.resizeView(_:setDrawingHeight:originalHeight:growFromTop:)(void *a1, double a2, double a3, uint64_t a4, void *a5, char a6)
{
  v10 = a5;
  v11 = a1;
  specialized PaperTextAttachmentView.resizeView(_:setDrawingHeight:originalHeight:growFromTop:)(a6, a2, a3);
}

void @objc PaperTextAttachmentView.resizeViewRemoveAttachment(_:)(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1598);
  v6 = a1;
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    v4 = *(v6 + direct field offset for PaperTextAttachmentView.textAttachment);
    if (v4)
    {
      v5 = v4;
      [v3 _removeDrawingAttachment_withView_forDeletion_];

      v3 = v5;
    }
  }
}

void @objc PaperTextAttachmentView.resizeViewLayoutAttachment(_:)(void *a1)
{
  v1 = a1;
  [v1 frame];
  PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(v3, 1, 1, 1);
}

uint64_t closure #1 in closure #1 in PaperTextAttachmentView.endLiveResize(discard:)()
{
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  return sub_1D38D67C4();
}

char *@objc PaperTextAttachmentView.resizeView(_:finishedWithOriginalDrawingBounds:originalViewBounds:)(char *result)
{
  v1 = direct field offset for PaperTextAttachmentView.resizeInfo;
  v2 = *&result[direct field offset for PaperTextAttachmentView.resizeInfo];
  if (v2)
  {
    v3 = result;
    v4 = result;

    specialized Canvas.undoable(newChange:persistSelection:action:)(1, 0, v4, v4, v2);

    *&v3[v1] = 0;
  }

  return result;
}

void @objc PaperTextAttachmentView.resizeViewDidUpdate(_:)(void *a1)
{
  v1 = a1;
  PaperTextAttachmentView.setAdjustResizeIndicatorVisible(_:animated:highlightBackground:)([v1 isFirstResponder], 0, 0);
}

Swift::Void __swiftcall PaperTextAttachmentView.setupCanvasMathIfNecessary()()
{
  v1 = v0;
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, mathLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "setupCanvasMathIfNecessary", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v6 = *(*(v1 + direct field offset for Canvas.paperView) + *((*MEMORY[0x1E69E7D40] & **(v1 + direct field offset for Canvas.paperView)) + 0x558));
  if (v6)
  {
    v7 = v6;
    CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
  }
}

uint64_t PaperTextAttachmentView.calculateDocument.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for PaperTextAttachmentView.calculateDocument);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  PaperTextAttachmentView.setupCanvasMathIfNecessary()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA30))();
  }

  return swift_unknownObjectRelease();
}

void (*PaperTextAttachmentView.calculateDocument.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PaperTextAttachmentView.calculateDocument.modify;
}

void PaperTextAttachmentView.calculateDocument.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PaperTextAttachmentView.setupCanvasMathIfNecessary()();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA30))();
    }
  }
}

uint64_t PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = direct field offset for PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = direct field offset for PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior;
  swift_beginAccess();
  *(v1 + v3) = v2;
  PaperTextAttachmentView.setupCanvasMathIfNecessary()();
}

void (*PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior.modify;
}

void PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PaperTextAttachmentView.setupCanvasMathIfNecessary()();
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:)(PKToolPicker a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for PKInk();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [(objc_class *)a1.super.isa selectedToolItem];
  PKToolPickerItem.ink.getter(v11);

  isa = PKInk._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v14 = isa;
  v15 = [(objc_class *)v14 _isGenerationTool];

  if (v15 != v2[direct field offset for PaperTextAttachmentView.isCurrentToolGenerationTool])
  {
    v2[direct field offset for PaperTextAttachmentView.isCurrentToolGenerationTool] = v15;
    if (v15)
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      type metadata accessor for MainActor();
      v17 = v2;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E85E0];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v17;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:), v19);
    }
  }
}

uint64_t closure #1 in PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:), v6, v5);
}

uint64_t closure #1 in PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:)()
{
  specialized static CanvasGenerationTool.preload()();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #1 in PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:);

  return specialized static CanvasGenerationTool.prewarmEffect()();
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:), v3, v2);
}

{
  v1 = *(v0 + 16);

  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x468))(v2);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TiledTextView();
    if (swift_dynamicCastClass())
    {
      v5 = TiledTextView.canvasGenerationToolOverlayController.getter();
      v6 = *&v5[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
      if (v6)
      {
        v7 = v4;
        v4 = *(v6 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

        CanvasGenerationTool.prewarm()();
        v5 = v7;
      }
    }

    else
    {
      v5 = v4;
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

void @objc PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:)(v4);
}

uint64_t type metadata accessor for PaperTextAttachmentView()
{
  result = type metadata singleton initialization cache for PaperTextAttachmentView;
  if (!type metadata singleton initialization cache for PaperTextAttachmentView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PaperTextAttachmentView()
{
  result = type metadata accessor for CRKeyPath();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void PaperTextAttachmentView.prepareForInitiateMagicGenerativePlaygroundFromMenu(context:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = v5 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize;
  v13 = *(v5 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize);
  v14 = *(v5 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize + 8);
  *v12 = *a1;
  *(v12 + 8) = v10;
  v15 = *(a1 + 16);
  v16 = *(v12 + 16);
  *(v12 + 16) = v15;
  outlined copy of MagicGenerativePlaygroundContext(v11, v10, v15);
  outlined consume of MagicGenerativePlaygroundContext?(v13, v14, v16);
  v17 = v5 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundBoundsToInitialize;
  *v17 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = 0;
}

uint64_t (*protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = PaperTextAttachmentView.calculateDocument.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x16D8))();
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

void protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Bool __swiftcall PaperTextAttachmentView._wantsToolPickerVisible(_:)(PKToolPicker a1)
{
  if (!*&v1[direct field offset for PaperTextAttachmentView.textAttachment] || (v3 = swift_dynamicCastObjCProtocolConditional()) == 0 || (v4 = v3, ([v3 respondsToSelector_] & 1) == 0))
  {
    if ([(objc_class *)a1.super.isa isVisible])
    {
      v6 = [(objc_class *)a1.super.isa _windowScene];
      v7 = [v1 window];
      v8 = [v7 windowScene];

      if (v6)
      {
        if (v8)
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIWindowScene);
          v5 = static NSObject.== infix(_:_:)();

          return v5 & 1;
        }
      }

      else
      {
        if (!v8)
        {
          v5 = 1;
          return v5 & 1;
        }
      }
    }

    v5 = 0;
    return v5 & 1;
  }

  v5 = [v4 _wantsToolPickerVisible_];
  return v5 & 1;
}

void specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

void specialized Canvas.setupBandSelection()()
{
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CD0];
  *(v1 + 16) = MEMORY[0x1E69E7CD0];
  *(v1 + 24) = v2;
  *(v1 + 32) = 6;
  *(v1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  v3 = swift_allocBox();
  v5 = v4;
  v6 = type metadata accessor for PKDrawing();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v1;
  v8[4] = v3;
  v9 = objc_allocWithZone(MEMORY[0x1E69DC6F8]);
  v18 = partial apply for specialized closure #1 in Canvas.setupBandSelection();
  v19 = v8;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v17 = &block_descriptor_6;
  v10 = _Block_copy(&v14);

  v11 = [v9 initWithSelectionHandler_];
  _Block_release(v10);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = partial apply for specialized closure #2 in Canvas.setupBandSelection();
  v19 = v12;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction, @unowned CGPoint) -> (@unowned Bool);
  v17 = &block_descriptor_339;
  v13 = _Block_copy(&v14);

  [v11 setShouldBeginHandler_];
  _Block_release(v13);
  [v0 addInteraction_];
}

{
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CD0];
  *(v1 + 16) = MEMORY[0x1E69E7CD0];
  *(v1 + 24) = v2;
  *(v1 + 32) = 6;
  *(v1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  v3 = swift_allocBox();
  v5 = v4;
  v6 = type metadata accessor for PKDrawing();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v1;
  v8[4] = v3;
  v9 = objc_allocWithZone(MEMORY[0x1E69DC6F8]);
  v18 = partial apply for specialized closure #1 in Canvas.setupBandSelection();
  v19 = v8;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v17 = &block_descriptor_485;
  v10 = _Block_copy(&v14);

  v11 = [v9 initWithSelectionHandler_];
  _Block_release(v10);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = partial apply for specialized closure #2 in Canvas.setupBandSelection();
  v19 = v12;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction, @unowned CGPoint) -> (@unowned Bool);
  v17 = &block_descriptor_489;
  v13 = _Block_copy(&v14);

  [v11 setShouldBeginHandler_];
  _Block_release(v13);
  [v0 addInteraction_];
}

void specialized closure #1 in Canvas.setupBandSelection()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    swift_beginAccess();
    specialized Canvas.bandSelectElements(_:initialSelection:potentialStrokes:)(a1, a3 + 16, v5);
    swift_endAccess();
    swift_endAccess();
  }
}

void specialized Canvas.bandSelectElements(_:initialSelection:potentialStrokes:)(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v145 = a3;
  v7 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v131 - v14;
  v15 = type metadata accessor for NSFastEnumerationIterator();
  v138 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v152 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v156 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v131 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v154 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v148 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v131 - v25;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v151 = *(v158 - 1);
  MEMORY[0x1EEE9AC00](v158);
  v146 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v157 = &v131 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v139 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
  v34 = &v131 - v33;
  v35 = [a1 state];
  if (v35 == 3)
  {
    v54 = *(v4 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v54)
    {
      v55 = v54[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu];
      v54[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu] = 0;
      if (v55)
      {
        v56 = *&v54[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
        if (v56)
        {
          v159 = v54;
          v57 = v56;
          specialized MiniMenuController.update()();

          v58 = v159;
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_86;
  }

  v153 = v4;
  if (v35 != 2)
  {
    if (v35 != 1)
    {
      return;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v145, &_s9PencilKit9PKDrawingVSgMd);

    v36 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
    v37 = *(v4 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v37)
    {
      v38 = (v37 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
      v40 = *v38;
      v39 = v38[1];
      v41 = v38[2];
      LOBYTE(v38) = *(v38 + 24);
      *a2 = v40;
      *(a2 + 8) = v39;
      *(a2 + 16) = v41;
      *(a2 + 24) = v38;
      v42 = (v4 + direct field offset for Canvas._editingView);
      v43 = v4;
      v44 = *(v4 + direct field offset for Canvas._editingView);
      if (v44)
      {
        v45 = *(v42 + 1);
        v46 = v44;
      }

      else
      {
        v46 = *(v43 + direct field offset for Canvas.paperView);
        v45 = &protocol witness table for ContainerCanvasElementView<A>;
      }

      ObjectType = swift_getObjectType();
      v60 = v45[2];

      v61 = v44;
      v62 = v60(ObjectType, v45);

      if (v62)
      {
        v63 = [v62 drawing];

        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = type metadata accessor for PKDrawing();
        (*(*(v64 - 8) + 56))(v34, 0, 1, v64);
      }

      else
      {
        v65 = type metadata accessor for PKDrawing();
        (*(*(v65 - 8) + 56))(v34, 1, 1, v65);
      }

      v66 = v153;
      outlined init with take of Range<AttributedString.Index>(v34, v145, &_s9PencilKit9PKDrawingVSgMd);
      v67 = *(v66 + v36);
      if (v67)
      {
        v68 = v67[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu];
        v67[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu] = 1;
        if ((v68 & 1) == 0)
        {
          v69 = *&v67[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
          if (v69)
          {
            v70 = v67;
            v71 = v69;
            specialized MiniMenuController.update()();
          }
        }

        return;
      }

LABEL_87:
      __break(1u);
      return;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  UIBandSelectionInteraction.selectionRect.getter();
  if (v171)
  {
    return;
  }

  v136 = v10;
  v135 = v9;
  v132 = a1;
  v47 = v167;
  v48 = v168;
  v49 = v169;
  v50 = v170;
  v51 = (v4 + direct field offset for Canvas._editingView);
  v52 = *(v4 + direct field offset for Canvas._editingView);
  v137 = v15;
  if (v52)
  {
    v53 = v52;
  }

  else
  {
    v53 = *(v4 + direct field offset for Canvas.paperView);
    v52 = 0;
  }

  v72 = v52;
  [v53 convertRect:v4 fromCoordinateSpace:{v47, v48, v49, v50}];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  v165 = MEMORY[0x1E69E7CD0];
  v81 = *v51;
  v134 = v12;
  if (v81)
  {
    v82 = *(v51 + 1);
    v83 = v81;
  }

  else
  {
    v83 = *(v4 + direct field offset for Canvas.paperView);
    v82 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v84 = swift_getObjectType();
  v85 = v82[8];
  v86 = v81;
  v87 = v85(v84, v82);

  *&v163 = MEMORY[0x1E69E7CC0];
  if (v87 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v159 = v21;
    v133 = a2;
    if (i)
    {
      v89 = 0;
      a2 = v87 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v87 & 0xC000000000000001) != 0)
        {
          v91 = MEMORY[0x1DA6CE0C0](v89, v87);
        }

        else
        {
          if (v89 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v91 = *(v87 + 8 * v89 + 32);
        }

        v92 = v91;
        v21 = (v89 + 1);
        if (__OFADD__(v89, 1))
        {
          break;
        }

        v93 = [v4 bounds];
        v95.n128_u64[0] = v94;
        v97.n128_u64[0] = v96;
        v99.n128_u64[0] = v98;
        v101.n128_u64[0] = v100;
        if ((*((*MEMORY[0x1E69E7D40] & *v92) + 0x378))(v93, v74, v76, v78, v80, v95, v97, v99, v101))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v4 = v153;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v89;
        v90 = v21 == i;
        v21 = v159;
        if (v90)
        {
          v102 = v163;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v102 = MEMORY[0x1E69E7CC0];
LABEL_43:

    if ((v102 & 0x8000000000000000) == 0 && (v102 & 0x4000000000000000) == 0)
    {
      v87 = *(v102 + 16);
      if (!v87)
      {
        break;
      }

      goto LABEL_46;
    }

    v87 = __CocoaSet.count.getter();
    if (!v87)
    {
      break;
    }

LABEL_46:
    v4 = 0;
    a2 = v102 & 0xC000000000000001;
    v155 = (v154 + 6);
    v142 = (v154 + 4);
    v141 = (v154 + 2);
    v140 = (v154 + 1);
    v154 = (v151 + 32);
    v103 = MEMORY[0x1E69E7CC0];
    v144 = v87;
    v143 = v102 & 0xC000000000000001;
    while (1)
    {
      if (a2)
      {
        v104 = MEMORY[0x1DA6CE0C0](v4, v102);
      }

      else
      {
        if (v4 >= *(v102 + 16))
        {
          goto LABEL_63;
        }

        v104 = *(v102 + 8 * v4 + 32);
      }

      v105 = v104;
      v106 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      (*((*MEMORY[0x1E69E7D40] & *v104) + 0xF0))();
      if ((*v155)(v21, 1, v22) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      }

      else
      {
        v107 = v102;
        v108 = v147;
        (*v142)(v147, v21, v22);
        v109 = v148;
        (*v141)(v148, v108, v22);
        WeakTagged_10.tag.getter();
        *&v162 = v163;
        BYTE8(v162) = BYTE8(v163);
        MEMORY[0x1DA6CB7A0](v22);
        lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
        v110 = v146;
        WeakTagged_10.init(_:id:)();

        v111 = *v140;
        (*v140)(v109, v22);
        v111(v108, v22);
        v112 = *v154;
        (*v154)(v157, v110, v158);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
        }

        v114 = *(v103 + 2);
        v113 = *(v103 + 3);
        v102 = v107;
        if (v114 >= v113 >> 1)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v113 > 1, v114 + 1, 1, v103);
        }

        v87 = v144;
        a2 = v143;
        *(v103 + 2) = v114 + 1;
        v112(&v103[((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v114], v157, v158);
        v21 = v159;
      }

      ++v4;
      if (v106 == v87)
      {
        goto LABEL_67;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_67:

  v115 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v103);

  v166 = v115;
  v116 = v139;
  outlined init with copy of Date?(v145, v139, &_s9PencilKit9PKDrawingVSgMd);
  v117 = type metadata accessor for PKDrawing();
  if ((*(*(v117 - 8) + 48))(v116, 1, v117) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_s9PencilKit9PKDrawingVSgMd);
  }

  else
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKDrawing);
    swift_dynamicCast();
    v118 = v163;
    v119 = [v163 intersectedStrokesFromRect:0 visibleOnscreenStrokes:{v74, v76, v78, v80}];

    v158 = v119;
    NSOrderedSet.makeIterator()();
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x1E6968EB0]);
    v120 = v137;
    dispatch thunk of IteratorProtocol.next()();
    if (v164)
    {
      v121 = MEMORY[0x1E69E7CC0];
      v159 = (v136 + 32);
      do
      {
        outlined init with take of Any(&v163, &v162);
        outlined init with copy of Any(&v162, v161);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke);
        if (swift_dynamicCast())
        {
          v122 = v160;
          v123 = [v160 _strokeUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          CRKeyPath.init(_:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          v124 = v134;
          WeakRef.init(id:)();

          __swift_destroy_boxed_opaque_existential_0(&v162);
          v125 = *v159;
          (*v159)(v149, v124, v150);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 2) + 1, 1, v121);
          }

          v127 = *(v121 + 2);
          v126 = *(v121 + 3);
          if (v127 >= v126 >> 1)
          {
            v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v126 > 1, v127 + 1, 1, v121);
          }

          *(v121 + 2) = v127 + 1;
          v125(&v121[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v127], v149, v150);
          v120 = v137;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v162);
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v164);
    }

    else
    {
      v121 = MEMORY[0x1E69E7CC0];
    }

    (*(v138 + 8))(v152, v120);
    v128 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v121);

    v165 = v128;
  }

  if ([v132 initialModifierFlags] == 0x20000)
  {
    v129 = *v133;
    v130 = v133[1];

    specialized Set.formSymmetricDifference(_:)(v129);
    specialized Set.formSymmetricDifference(_:)(v130);
  }

  AnyCanvas.selection.setter(v166, v165, 6, 0);
}

uint64_t specialized closure #2 in Canvas.setupBandSelection()(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = specialized Canvas.bandSelectionShouldBegin(_:point:)(a1, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction, @unowned CGPoint) -> (@unowned Bool)(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  LOBYTE(v7) = v7(a3, a4);

  return v7 & 1;
}

unint64_t specialized ContainerCanvasElementView.pencilKitAttachmentViews()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexSet();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x558));
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D405CEB0;
    *(v15 + 32) = v14;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v47 = v15;
  v16 = specialized ContainerCanvasElementView.subelementViews.getter(v14);
  v17 = specialized Sequence.flatMap<A>(_:)(v16);

  specialized Array.append<A>(contentsOf:)(v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      (*((*v13 & *v19) + 0x448))();

      v21 = v7;
      (*(v7 + 32))(v12, v9, v6);
      v22 = *((*v13 & *v1) + 0x570);
      swift_beginAccess();
      v23 = *(v1 + v22);
      v24 = *(v1 + *((*v13 & *v1) + 0x568));

      if (v24)
      {
        v25 = v24;
        v26 = FormFillingView.unorderedFormFields.getter();
      }

      else
      {
        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v23;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v26, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v46);

      v28 = v46;
      if (*(v46 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v30 & 1) != 0))
      {
        v31 = *(*(v28 + 56) + 8 * v29);

        v32 = v47;
        v43 = v21;
        if (v47 >> 62)
        {
          goto LABEL_35;
        }

        for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v34 = 0;
            while (1)
            {
              MEMORY[0x1DA6CE0C0](v34, v32);
              type metadata accessor for CanvasElementDrawingView();
              if (swift_dynamicCastClass())
              {
                v35 = swift_unknownObjectWeakLoadStrong();
                swift_unknownObjectRelease();
                if (v35)
                {

                  if (v35 == v31)
                  {
                    goto LABEL_32;
                  }
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v36 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              ++v34;
              if (v36 == i)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
          }

          else
          {
            v38 = 0;
            v39 = v32 & 0xFFFFFFFFFFFFFF8;
            v40 = (v32 + 32);
            while (v38 < *(v39 + 16))
            {
              v32 = *&v40[8 * v38];
              type metadata accessor for CanvasElementDrawingView();
              if (swift_dynamicCastClass())
              {
                v41 = swift_unknownObjectWeakLoadStrong();
                if (v41)
                {
                  v32 = v41;

                  if (v32 == v31)
                  {
LABEL_32:
                    IndexSet.init(integer:)();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16PKAttachmentViewCGMd);
                    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKAttachmentView] and conformance [A], &_sSaySo16PKAttachmentViewCGMd);
                    MutableCollection.move(fromOffsets:toOffset:)();

                    (*(v45 + 8))(v5, v44);
                    (*(v43 + 8))(v12, v6);
                    return v47;
                  }
                }
              }

              if (i == ++v38)
              {
                goto LABEL_23;
              }
            }
          }

          __break(1u);
LABEL_35:
          ;
        }

LABEL_23:
        (*(v43 + 8))(v12, v6);
      }

      else
      {

        (*(v7 + 8))(v12, v6);
      }
    }
  }

  return v47;
}

id specialized CRRegister<>.isEraserStroke<A>(in:)(uint64_t a1)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v43 - v2;
  v47 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v47);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v43 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  v13 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v43 - v20;
  v22 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v45 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v48 = v43 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v18, v15, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit0A0VWOhTm_1(v15, type metadata accessor for TaggedStroke);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v27 = v21;
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v29 = *(v28 - 8);
    v27 = v21;
    (*(v29 + 32))(v21, v15, v28);
    (*(v29 + 56))(v21, 0, 1, v28);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v27, 1, v30) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  }

  else
  {
    v44 = v5;
    v32 = type metadata accessor for Paper(0);
    v33 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    v34 = v45;
    v35 = v50;
    v43[0] = v33;
    v43[1] = v32;
    Ref.subscript.getter();
    (*(v31 + 8))(v27, v30);
    _s8PaperKit12TaggedStrokeOWObTm_0(v34, v48, type metadata accessor for PKStrokeStruct);
    (*(v49 + 16))(v51, v35, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Paper> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    v36 = (v46 + 48);
    v37 = (v46 + 8);
    for (i = (v46 + 32); ; (*i)(v12, v3, v10))
    {
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit0A0VWOhTm_1(v8, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v36)(v3, 1, v10) == 1)
      {
        break;
      }

      (*v37)(v12, v10);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    (*(v49 + 8))(v51, v52);
    v39 = v44;
    Ref.subscript.getter();
    (*v37)(v12, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    CRRegister.wrappedValue.getter();
    _s8PaperKit0A0VWOhTm_1(v39, type metadata accessor for PKStrokeInheritedProperties);
    v40 = v53;
    if (v53)
    {
      v41 = [v53 _isEraserInk];

      _s8PaperKit0A0VWOhTm_1(v48, type metadata accessor for PKStrokeStruct);
      return v41;
    }

    _s8PaperKit0A0VWOhTm_1(v48, type metadata accessor for PKStrokeStruct);
  }

  return 0;
}

uint64_t specialized CRRegister<>.isEraserStroke<A>(in:createdBefore:)(void *a1, uint64_t a2)
{
  v62 = a2;
  v69 = a1;
  v2 = type metadata accessor for Date();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v66 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v65 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v53 - v26;
  v54 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v54);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v68 = &v53 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v24, v21, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit0A0VWOhTm_1(v21, type metadata accessor for TaggedStroke);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v34 = *(v33 - 8);
    (*(v34 + 32))(v27, v21, v33);
    (*(v34 + 56))(v27, 0, 1, v33);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v27, 1, v35) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
LABEL_14:
    v51 = 0;
    return v51 & 1;
  }

  v37 = v69;
  Ref.subscript.getter();
  (*(v36 + 8))(v27, v35);
  _s8PaperKit12TaggedStrokeOWObTm_0(v29, v68, type metadata accessor for PKStrokeStruct);
  v70 = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  CRRegister.wrappedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Paper>.Ref and conformance Capsule<A>.Ref, &_s9Coherence7CapsuleV3RefCy8PaperKit0D0V_GMd);
  v38 = (v65 + 48);
  v39 = (v65 + 8);
  for (i = (v65 + 32); ; (*i)(v18, v11, v16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleV3RefCy8PaperKit0D0V_GMd);
    Ref.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
    CRRegister.wrappedValue.getter();
    _s8PaperKit0A0VWOhTm_1(v15, type metadata accessor for PKStrokeInheritedProperties);
    if ((*v38)(v11, 1, v16) == 1)
    {
      break;
    }

    (*v39)(v18, v16);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);

  v41 = v67;
  Ref.subscript.getter();
  (*v39)(v18, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit0A0VWOhTm_1(v41, type metadata accessor for PKStrokeInheritedProperties);
  v42 = v70;
  if (!v70)
  {
    _s8PaperKit0A0VWOhTm_1(v68, type metadata accessor for PKStrokeStruct);
    goto LABEL_14;
  }

  if (([v70 _isEraserInk] & 1) == 0)
  {
    _s8PaperKit0A0VWOhTm_1(v68, type metadata accessor for PKStrokeStruct);

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v43 = v68;
  v44 = v57;
  CRRegister.wrappedValue.getter();
  v45 = v55;
  v47 = v58;
  v46 = v59;
  (*(v58 + 16))(v55, v44 + *(v56 + 32), v59);
  _s8PaperKit0A0VWOhTm_1(v44, type metadata accessor for PKStrokeProperties);
  v48 = v60;
  Ref.subscript.getter();
  (*(v47 + 8))(v45, v46);
  v49 = v61;
  PKStrokePath.creationDate.getter();
  v50 = type metadata accessor for PKStrokePath();
  (*(*(v50 - 8) + 8))(v48, v50);
  v51 = static Date.< infix(_:_:)();

  (*(v63 + 8))(v49, v64);
  _s8PaperKit0A0VWOhTm_1(v43, type metadata accessor for PKStrokeStruct);
  return v51 & 1;
}

uint64_t specialized CRRegister<>.creationDate<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v43 = a2;
  v2 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v34 - v8;
  v9 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - v16;
  v38 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v38);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v39 = &v34 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v14, v11, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit0A0VWOhTm_1(v11, type metadata accessor for TaggedStroke);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v24 = *(v23 - 8);
    (*(v24 + 32))(v17, v11, v23);
    (*(v24 + 56))(v17, 0, 1, v23);
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v17, 1, v25) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    return static Date.distantPast.getter();
  }

  else
  {
    v36 = type metadata accessor for Paper(0);
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    v28 = v19;
    v29 = v37;
    v35 = v4;
    Ref.subscript.getter();
    (*(v26 + 8))(v17, v25);
    v30 = v39;
    _s8PaperKit12TaggedStrokeOWObTm_0(v28, v39, type metadata accessor for PKStrokeStruct);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    CRRegister.wrappedValue.getter();
    v31 = v40;
    (*(v29 + 16))(v40, &v6[*(v35 + 32)], v7);
    _s8PaperKit0A0VWOhTm_1(v6, type metadata accessor for PKStrokeProperties);
    v32 = v42;
    Ref.subscript.getter();
    (*(v29 + 8))(v31, v7);
    PKStrokePath.creationDate.getter();
    _s8PaperKit0A0VWOhTm_1(v30, type metadata accessor for PKStrokeStruct);
    v33 = type metadata accessor for PKStrokePath();
    return (*(*(v33 - 8) + 8))(v32, v33);
  }
}

uint64_t specialized PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  type metadata accessor for PKDrawingStruct(0);
  v21 = a1;
  specialized Sequence.first(where:)(partial apply for specialized closure #1 in PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:), v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    type metadata accessor for Paper(0);
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    Ref.subscript.getter();
    v15 = v19;
    specialized CRRegister<>.creationDate<A>(in:)(a1, v19);
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
    v14 = 0;
  }

  v16 = type metadata accessor for Date();
  return (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
}

uint64_t specialized closure #1 in PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  type metadata accessor for Paper(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  Ref.subscript.getter();
  v7 = specialized CRRegister<>.isEraserStroke<A>(in:)(a2);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t specialized closure #1 in Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v27 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v27);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  v28 = type metadata accessor for Paper(0);
  v29 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v30 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = v4;
  v16 = Ref.subscript.getter();
  v23[1] = v23;
  v17 = v27;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25;
  v23[-2] = a1;
  v23[-1] = v18;
  v19 = v24;
  v20 = v32;
  CROrderedSet.filter(_:)();
  v32 = v20;
  _s8PaperKit0A0VWOhTm_1(v15, type metadata accessor for PKDrawingStruct);
  v21 = Ref.subscript.modify();
  (*(v26 + 40))(v22 + *(v17 + 20), v6, v19);
  v21(v31, 0);
  return (*(v11 + 8))(v13, v10);
}

BOOL specialized closure #1 in closure #1 in Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Ref.subscript.getter();
  v9 = specialized CRRegister<>.isEraserStroke<A>(in:createdBefore:)(a2, a3);
  (*(v6 + 8))(v8, v5);
  return (v9 & 1) == 0;
}

uint64_t specialized Capsule<>.hasAnyEraserStrokes()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v32 = &v27 - v2;
  v3 = type metadata accessor for Date();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v27 - v6;
  v7 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v33 = type metadata accessor for Paper(0);
  v34 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v35 = &protocol witness table for Paper;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.subscript.getter();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v17 = &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd;
    v18 = v12;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    Ref.subscript.getter();
    v19 = v29;
    static Date.now.getter();
    v20 = v32;
    specialized PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:)(v0, v32);
    v22 = v30;
    v21 = v31;
    if ((*(v30 + 48))(v20, 1, v31) != 1)
    {
      v24 = v28;
      (*(v22 + 32))(v28, v20, v21);
      v23 = static Date.< infix(_:_:)();
      v25 = *(v22 + 8);
      v25(v24, v21);
      v25(v19, v21);
      _s8PaperKit0A0VWOhTm_1(v9, type metadata accessor for PKDrawingStruct);
      (*(v14 + 8))(v16, v13);
      return v23 & 1;
    }

    (*(v22 + 8))(v19, v21);
    _s8PaperKit0A0VWOhTm_1(v9, type metadata accessor for PKDrawingStruct);
    (*(v14 + 8))(v16, v13);
    v17 = &_s10Foundation4DateVSgMd;
    v18 = v20;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v18, v17);
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized closure #1 in Canvas.startCheckingForOldEraserStrokes()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v1 = *(v0 - 8);
  v40 = v0;
  v41 = v1;
  v42 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v33 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    v38 = *(v8 + 8);
    v39 = v8 + 8;
    v38(v10, v7);
    v16 = type metadata accessor for TaskPriority();
    v17 = *(*(v16 - 8) + 56);
    v36 = v6;
    v17(v6, 1, 1, v16);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = v3;
    v18 = v13;
    v37 = v13;
    v19 = *&v15[direct field offset for Canvas.paperView];
    v20 = v7;
    v21 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x3F0);
    swift_beginAccess();
    v22 = v41;
    v23 = v3;
    v24 = v40;
    (*(v41 + 16))(v23, &v19[v21], v40);
    (*(v8 + 16))(v10, v18, v20);
    v25 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v26 = *(v8 + 80);
    v27 = &v42[v26 + v25];
    v42 = v15;
    v28 = v36;
    v29 = v24;
    v30 = v27 & ~v26;
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    v32 = v34;
    *(v31 + 4) = v35;
    (*(v22 + 32))(&v31[v25], v32, v29);
    (*(v8 + 32))(&v31[v30], v10, v20);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v28, &async function pointer to partial apply for specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v31);

    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_sScPSgMd);

    return (v38)(v37, v20);
  }

  return result;
}

uint64_t specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  v6[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

uint64_t specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  v2 = v0[11];
  if (Strong)
  {
    v3 = v0[12];
    v4 = v0[13];
    specialized Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)(v0[10], v0[11]);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v0[11], &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
      v0[18] = type metadata accessor for MainActor();
      v0[19] = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
      v8 = specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:);
    }

    else
    {
      (*(v0[13] + 32))(v0[15], v0[11], v0[12]);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D38C4000, v12, v13, "Removed old eraser stroke(s)", v14, 2u);
        MEMORY[0x1DA6D0660](v14, -1, -1);
      }

      type metadata accessor for MainActor();
      v0[17] = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v15;
      v8 = specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:);
    }

    return MEMORY[0x1EEE6DFA0](v8, v5, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

{
  v10 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  v8 = 3;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x7D8);
  v5 = type metadata accessor for Paper(0);
  v6 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v4(v2, &v8, v5, v6);
  v9 = 3;
  (*((*v3 & *v1) + 0x7B0))(&v9);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  (*(v0[13] + 8))(v0[15], v0[12]);
  v0[18] = type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v2, v1);
}

{
  v1 = *(v0 + 128);

  *(v0 + 160) = *(v1 + direct field offset for Canvas.eraserCheckingIndex);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v2, v1);
}

{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = *(v1 + direct field offset for Canvas.paperView);
  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x3F0);
  swift_beginAccess();
  (*(v3 + 16))(v2, &v5[v6], v4);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  if (specialized Capsule<>.hasAnyEraserStrokes()())
  {
    v1 = v0[16];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[22] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v5, v4);
  }
}

{
  v1 = *(v0 + 160);

  specialized Canvas.stopCheckingForOldEraserStrokes(index:)(v1);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview()(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v12 + 33) = a12;
  *(v12 + 88) = a10;
  *(v12 + 96) = a11;
  *(v12 + 80) = a9;
  *(v12 + 64) = a3;
  *(v12 + 72) = a4;
  *(v12 + 48) = a1;
  *(v12 + 56) = a2;
  *(v12 + 40) = a8;
  type metadata accessor for MainActor();
  *(v12 + 104) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v12 + 112) = v14;
  *(v12 + 120) = v13;

  return MEMORY[0x1EEE6DFA0](closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview(), v14, v13);
}

uint64_t closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview()()
{
  [*(v0 + 40) convertRect:*(v0 + 80) toCoordinateSpace:{*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72)}];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v10 = v9;
  v11 = *&v9[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
  if (v11)
  {
    v12 = *(v0 + 33);
    v13 = *(v0 + 40);
    v14 = *(v11 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);
    *(v0 + 128) = v14;
    v14;
    v18 = *(v0 + 88);

    *(v0 + 16) = v18;
    *(v0 + 32) = v12;
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    *v15 = v0;
    v15[1] = closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview();

    return CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:)(v0 + 16, v13, 2, v2, v4, v6, v8);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 128);
  }

  else
  {
  }

  v4 = *(v2 + 112);
  v5 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview(), v4, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9Coherence13WeakTagged_10Vy8PaperKit0K13CanvasElementVGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab19VKXEfU_9Coherence13jk6_10Vy8l7Kit0H13nO6VG_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n03_s8l4Kit6n26C07mergeToC8ElementsyyFSb9vjk11_10VyAA0iC7O17VGXEfU_AA0A0V_Tg5AK0N0CyAK0L0VGTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *, uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    v11 = a5(v9, a2, a3, v10);

    return v11;
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UUID();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UUID() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v49 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v51 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v60 = *(v13 + 16);
    v61 = v13 + 16;
    v18 = *(v13 + 72);
    v19 = (v13 + 8);
    v57 = (v13 + 32);
    v58 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v56 = -v18;
    v21 = a1 - a3;
    v50 = v18;
    v22 = v17 + v18 * a3;
    do
    {
      v54 = v20;
      v55 = a3;
      v52 = v22;
      v53 = v21;
      v23 = v21;
      v24 = v20;
      do
      {
        v25 = v16;
        v26 = v16;
        v27 = v60;
        (v60)(v25, v22, v8, v14);
        v27(v62, v24, v8);
        v16 = v26;
        v65 = UUID.uuid.getter();
        LOWORD(v66) = v28;
        BYTE2(v66) = v29;
        BYTE3(v66) = v30;
        BYTE4(v66) = v31;
        BYTE5(v66) = v32;
        BYTE6(v66) = v33;
        HIBYTE(v66) = v34;
        v63 = UUID.uuid.getter();
        LOWORD(v64) = v35;
        BYTE2(v64) = v36;
        BYTE3(v64) = v37;
        BYTE4(v64) = v38;
        BYTE5(v64) = v39;
        BYTE6(v64) = v40;
        HIBYTE(v64) = v41;
        v42 = bswap64(v65);
        v43 = bswap64(v63);
        if (v42 == v43 && (v42 = bswap64(v66), v43 = bswap64(v64), v42 == v43))
        {
          v44 = 0;
        }

        else if (v42 < v43)
        {
          v44 = -1;
        }

        else
        {
          v44 = 1;
        }

        v45 = *v19;
        (*v19)(v62, v8);
        v45(v26, v8);
        if ((v44 & 0x80000000) == 0)
        {
          break;
        }

        if (!v58)
        {
          __break(1u);
        }

        v46 = *v57;
        v47 = v59;
        (*v57)(v59, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        v46(v24, v47, v8);
        v24 += v56;
        v22 += v56;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v55 + 1;
      v20 = &v54[v50];
      v21 = v53 - 1;
      v22 = v52 + v50;
    }

    while (v55 + 1 != v51);
  }
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v35 = *a4;
    v12 = v35 + 8 * a3 - 8;
    v13 = a1 - a3;
LABEL_5:
    v32 = v12;
    v33 = a3;
    v14 = *(v35 + 8 * a3);
    v31 = v13;
    v15 = v13;
    v16 = v12;
    while (1)
    {
      v36 = v14;
      v37 = v15;
      v39 = *v16;
      v17 = v38;
      outlined init with copy of Date?(v14 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v38, &_s10Foundation4DateVSgMd);
      v18 = type metadata accessor for Date();
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);
      if (v20(v17, 1, v18) == 1)
      {
        break;
      }

      v21 = v34;
      outlined init with copy of Date?(v39 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v34, &_s10Foundation4DateVSgMd);
      if (v20(v21, 1, v18) == 1)
      {
        goto LABEL_14;
      }

      v36 = v36;
      v22 = v39;
      v23 = v38;
      v24 = static Date.> infix(_:_:)();
      v25 = *(v19 + 8);
      v25(v21, v18);
      v25(v23, v18);

      v26 = v37;
      if (v24)
      {
        if (!v35)
        {
          goto LABEL_15;
        }

        v27 = *v16;
        v14 = *(v16 + 8);
        *v16 = v14;
        *(v16 + 8) = v27;
        v16 -= 8;
        v28 = __CFADD__(v26, 1);
        v15 = v26 + 1;
        if (!v28)
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v12 = v32 + 8;
      v13 = v31 - 1;
      if (v33 + 1 == v30)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v24 = *a4;
    v4 = *a4 + 48 * a3 - 48;
    v5 = a1 - a3;
LABEL_5:
    v22 = v4;
    v23 = a3;
    v21 = v5;
    v26 = v5;
    while (1)
    {
      v6 = *(v4 + 48);
      v25 = (v4 + 48);
      v29 = *(v4 + 56);
      v43 = *(v4 + 64);
      v7 = *(v4 + 72);
      v8 = *(v4 + 80);
      v9 = *(v4 + 88);
      v11 = *v4;
      v10 = *(v4 + 8);
      v27 = *(v4 + 24);
      v28 = *(v4 + 16);
      v12 = *(v4 + 32);
      v13 = *(v4 + 40);
      v37 = v6;
      v38 = v29;
      v39 = v43;
      v40 = v7;
      v41 = v8;
      v42 = v9;
      v31 = v11;
      v32 = v10;
      v33 = v28;
      v34 = v27;
      v35 = v12;
      v36 = v13;
      outlined copy of PaperDocumentFindResult.Content(v6, v29, v43, v7, v8, v9);
      outlined copy of PaperDocumentFindResult.Content(v11, v10, v28, v27, v12, v13);
      outlined copy of PaperDocumentFindResult.Content(v6, v29, v43, v7, v8, v9);
      outlined copy of PaperDocumentFindResult.Content(v11, v10, v28, v27, v12, v13);
      v30 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v37, &v31);
      outlined consume of PaperDocumentFindResult.Content(v31, v32, v33, v34, v35, v36);
      outlined consume of PaperDocumentFindResult.Content(v37, v38, v39, v40, v41, v42);
      outlined consume of PaperDocumentFindResult.Content(v11, v10, v28, v27, v12, v13);
      outlined consume of PaperDocumentFindResult.Content(v6, v29, v43, v7, v8, v9);
      if ((v30 & 1) == 0)
      {
LABEL_4:
        a3 = v23 + 1;
        v4 = v22 + 48;
        v5 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      v14 = *(v4 + 64);
      v15 = *v4;
      v16 = *(v4 + 16);
      v17 = *(v4 + 32);
      *v4 = *(v4 + 48);
      *(v4 + 16) = v14;
      v18 = *(v4 + 88);
      *(v4 + 32) = *(v4 + 80);
      *(v4 + 40) = v18;
      v4 -= 48;
      *v25 = v15;
      v25[1] = v16;
      v25[2] = v17;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, int64_t *a3, unint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v168 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v142 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v142 - v13;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v162 = &v142 - v17;
  v155 = a3;
  v18 = a3[1];
  v153 = v15;
  if (v18 >= 1)
  {
    v19 = 0;
    v159 = (v15 + 8);
    v160 = v15 + 16;
    v158 = (v15 + 32);
    v20 = MEMORY[0x1E69E7CC0];
    v143 = a4;
    while (1)
    {
      v21 = v19++;
      v149 = v20;
      if (v19 < v18)
      {
        v154 = v18;
        v22 = *v155;
        v145 = v21;
        v23 = v153;
        v24 = v22 + *(v153 + 72) * v19;
        v25 = *(v153 + 72);
        v26 = v22;
        v147 = v22;
        v27 = *(v153 + 16);
        v27(v162, v24, v8, v16);
        v28 = v26 + v25 * v21;
        v29 = v161;
        v151 = v27;
        (v27)(v161, v28, v8);
        v30 = v162;
        LODWORD(v152) = specialized static UUID.< infix(_:_:)();
        a4 = *(v23 + 8);
        (a4)(v29, v8);
        v150 = a4;
        (a4)(v30, v8);
        v31 = v145 + 2;
        v156 = v25;
        v32 = v147 + v25 * (v145 + 2);
        do
        {
          v19 = v154;
          if (v154 == v31)
          {
            break;
          }

          a4 = v5;
          v35 = v31;
          v36 = v151;
          (v151)(v162, v32, v8);
          v36(v161, v24, v8);
          v165 = UUID.uuid.getter();
          LOWORD(v166) = v37;
          BYTE2(v166) = v38;
          BYTE3(v166) = v39;
          BYTE4(v166) = v40;
          BYTE5(v166) = v41;
          BYTE6(v166) = v42;
          HIBYTE(v166) = v43;
          v163 = UUID.uuid.getter();
          LOWORD(v164) = v44;
          BYTE2(v164) = v45;
          BYTE3(v164) = v46;
          BYTE4(v164) = v47;
          BYTE5(v164) = v48;
          BYTE6(v164) = v49;
          HIBYTE(v164) = v50;
          v51 = bswap64(v165);
          v52 = bswap64(v163);
          if (v51 == v52 && (v51 = bswap64(v166), v52 = bswap64(v164), v51 == v52))
          {
            v33 = 0;
          }

          else
          {
            v33 = v51 < v52 ? -1 : 1;
          }

          v34 = v150;
          v150(v161, v8);
          v34(v162, v8);
          v19 = v35;
          v31 = v35 + 1;
          v32 += v156;
          v24 += v156;
          v5 = a4;
        }

        while (((v152 ^ (v33 >= 0)) & 1) != 0);
        if ((v152 & 1) == 0)
        {
          v20 = v149;
LABEL_30:
          a4 = v143;
          v21 = v145;
          goto LABEL_31;
        }

        v21 = v145;
        if (v19 < v145)
        {
          goto LABEL_137;
        }

        if (v145 < v19)
        {
          v142 = v5;
          v53 = v156 * (v19 - 1);
          v54 = v19 * v156;
          v55 = v19;
          v56 = v145;
          v57 = v145 * v156;
          v20 = v149;
          v154 = v19;
          do
          {
            if (v56 != --v55)
            {
              v58 = *v155;
              if (!*v155)
              {
                goto LABEL_143;
              }

              v59 = *v158;
              (*v158)(v148, v58 + v57, v8, v20);
              if (v57 < v53 || v58 + v57 >= (v58 + v54))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v53)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v59((v58 + v53), v148, v8);
              v20 = v149;
              v19 = v154;
            }

            ++v56;
            v53 -= v156;
            v54 -= v156;
            v57 += v156;
          }

          while (v56 < v55);
          v5 = v142;
          goto LABEL_30;
        }

        v20 = v149;
        a4 = v143;
      }

LABEL_31:
      v60 = v155[1];
      if (v19 < v60)
      {
        if (__OFSUB__(v19, v21))
        {
          goto LABEL_136;
        }

        if (v19 - v21 < a4)
        {
          if (__OFADD__(v21, a4))
          {
            goto LABEL_138;
          }

          if ((v21 + a4) >= v60)
          {
            v61 = v155[1];
          }

          else
          {
            v61 = v21 + a4;
          }

          if (v61 < v21)
          {
LABEL_139:
            __break(1u);
LABEL_140:
            v137 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
            goto LABEL_110;
          }

          if (v19 != v61)
          {
            v142 = v5;
            v62 = *v155;
            v63 = *(v153 + 72);
            v64 = v19;
            v65 = *(v153 + 16);
            v66 = *v155 + v63 * (v64 - 1);
            v67 = -v63;
            v145 = v21;
            v68 = (v21 - v64);
            v154 = v64;
            v156 = v62;
            v146 = v63;
            v69 = (v62 + v64 * v63);
            v147 = v61;
            do
            {
              v150 = v69;
              v151 = v68;
              v152 = v66;
              do
              {
                v65(v162, v69, v8, v20);
                (v65)(v161, v66, v8);
                v165 = UUID.uuid.getter();
                LOWORD(v166) = v70;
                BYTE2(v166) = v71;
                BYTE3(v166) = v72;
                BYTE4(v166) = v73;
                BYTE5(v166) = v74;
                BYTE6(v166) = v75;
                HIBYTE(v166) = v76;
                v163 = UUID.uuid.getter();
                LOWORD(v164) = v77;
                BYTE2(v164) = v78;
                BYTE3(v164) = v79;
                BYTE4(v164) = v80;
                BYTE5(v164) = v81;
                BYTE6(v164) = v82;
                HIBYTE(v164) = v83;
                v84 = bswap64(v165);
                v85 = bswap64(v163);
                if (v84 == v85 && (v84 = bswap64(v166), v85 = bswap64(v164), v84 == v85))
                {
                  v86 = 0;
                }

                else
                {
                  v86 = v84 < v85 ? -1 : 1;
                }

                a4 = v159;
                v87 = *v159;
                (*v159)(v161, v8);
                v87(v162, v8);
                if ((v86 & 0x80000000) == 0)
                {
                  break;
                }

                if (!v156)
                {
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
                }

                v88 = v157;
                a4 = v158;
                v89 = *v158;
                (*v158)(v157, v69, v8);
                swift_arrayInitWithTakeFrontToBack();
                v89(v66, v88, v8);
                v66 += v67;
                v69 += v67;
              }

              while (!__CFADD__(v68++, 1));
              v66 = v152 + v146;
              v68 = v151 - 1;
              v69 = v150 + v146;
              ++v154;
            }

            while (v154 != v147);
            v19 = v147;
            v5 = v142;
            v21 = v145;
          }
        }
      }

      if (v19 < v21)
      {
        goto LABEL_135;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v149;
      }

      else
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 2) + 1, 1, v149);
      }

      a4 = *(v20 + 2);
      v91 = *(v20 + 3);
      v92 = a4 + 1;
      if (a4 >= v91 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), a4 + 1, 1, v20);
      }

      *(v20 + 2) = v92;
      v93 = &v20[16 * a4];
      *(v93 + 4) = v21;
      *(v93 + 5) = v19;
      v94 = *v144;
      if (!*v144)
      {
        goto LABEL_145;
      }

      if (a4)
      {
        while (1)
        {
          v21 = v92 - 1;
          if (v92 >= 4)
          {
            break;
          }

          if (v92 == 3)
          {
            v95 = *(v20 + 4);
            v96 = *(v20 + 5);
            v105 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            v98 = v105;
LABEL_75:
            if (v98)
            {
              goto LABEL_124;
            }

            v111 = &v20[16 * v92];
            v113 = *v111;
            v112 = *(v111 + 1);
            v114 = __OFSUB__(v112, v113);
            v115 = v112 - v113;
            v116 = v114;
            if (v114)
            {
              goto LABEL_127;
            }

            v117 = &v20[16 * v21 + 32];
            v119 = *v117;
            v118 = *(v117 + 1);
            v105 = __OFSUB__(v118, v119);
            v120 = v118 - v119;
            if (v105)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v115, v120))
            {
              goto LABEL_131;
            }

            if (v115 + v120 >= v97)
            {
              if (v97 < v120)
              {
                v21 = v92 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v121 = &v20[16 * v92];
          v123 = *v121;
          v122 = *(v121 + 1);
          v105 = __OFSUB__(v122, v123);
          v115 = v122 - v123;
          v116 = v105;
LABEL_89:
          if (v116)
          {
            goto LABEL_126;
          }

          v124 = &v20[16 * v21];
          v126 = *(v124 + 4);
          v125 = *(v124 + 5);
          v105 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v105)
          {
            goto LABEL_129;
          }

          if (v127 < v115)
          {
            goto LABEL_3;
          }

LABEL_96:
          a4 = v21 - 1;
          if (v21 - 1 >= v92)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          if (!*v155)
          {
            goto LABEL_142;
          }

          v132 = v20;
          v133 = *&v20[16 * a4 + 32];
          v134 = *&v20[16 * v21 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v155 + *(v153 + 72) * v133, *v155 + *(v153 + 72) * *&v20[16 * v21 + 32], *v155 + *(v153 + 72) * v134, v94);
          if (v5)
          {
            goto LABEL_118;
          }

          if (v134 < v133)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v132 = specialized _ArrayBuffer._consumeAndCreateNew()(v132);
          }

          if (a4 >= *(v132 + 2))
          {
            goto LABEL_121;
          }

          v135 = &v132[16 * a4];
          *(v135 + 4) = v133;
          *(v135 + 5) = v134;
          v167 = v132;
          specialized Array.remove(at:)(v21);
          v20 = v167;
          v92 = *(v167 + 2);
          if (v92 <= 1)
          {
            goto LABEL_3;
          }
        }

        v99 = &v20[16 * v92 + 32];
        v100 = *(v99 - 64);
        v101 = *(v99 - 56);
        v105 = __OFSUB__(v101, v100);
        v102 = v101 - v100;
        if (v105)
        {
          goto LABEL_122;
        }

        v104 = *(v99 - 48);
        v103 = *(v99 - 40);
        v105 = __OFSUB__(v103, v104);
        v97 = v103 - v104;
        v98 = v105;
        if (v105)
        {
          goto LABEL_123;
        }

        v106 = &v20[16 * v92];
        v108 = *v106;
        v107 = *(v106 + 1);
        v105 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v105)
        {
          goto LABEL_125;
        }

        v105 = __OFADD__(v97, v109);
        v110 = v97 + v109;
        if (v105)
        {
          goto LABEL_128;
        }

        if (v110 >= v102)
        {
          v128 = &v20[16 * v21 + 32];
          v130 = *v128;
          v129 = *(v128 + 1);
          v105 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v105)
          {
            goto LABEL_132;
          }

          if (v97 < v131)
          {
            v21 = v92 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_3:
      v18 = v155[1];
      a4 = v143;
      if (v19 >= v18)
      {
        goto LABEL_107;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_107:
  v21 = *v144;
  if (*v144)
  {
    a4 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v153;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_140;
    }

    v137 = a4;
LABEL_110:
    v167 = v137;
    a4 = *(v137 + 2);
    if (a4 >= 2)
    {
      while (*v155)
      {
        v138 = *&v137[16 * a4];
        v139 = v137;
        v140 = *&v137[16 * a4 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v155 + *(v8 + 72) * v138, *v155 + *(v8 + 72) * *&v137[16 * a4 + 16], *v155 + *(v8 + 72) * v140, v21);
        if (v5)
        {
          goto LABEL_118;
        }

        if (v140 < v138)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew()(v139);
        }

        if (a4 - 2 >= *(v139 + 2))
        {
          goto LABEL_134;
        }

        v141 = &v139[16 * a4];
        *v141 = v138;
        *(v141 + 1) = v140;
        v167 = v139;
        specialized Array.remove(at:)(a4 - 1);
        v137 = v167;
        a4 = *(v167 + 2);
        if (a4 <= 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_144;
    }

LABEL_118:
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v88[1] = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  v80 = *(v14 + 72);
  if (!v80)
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (a2 - a1 == 0x8000000000000000 && v80 == -1)
  {
    goto LABEL_75;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v80 == -1)
  {
LABEL_76:
    __break(1u);
  }

  v16 = (a2 - a1) / v80;
  v87 = a4;
  v88[0] = a1;
  if (v16 < v15 / v80)
  {
    v17 = v16 * v80;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = a4 + v17;
    v86 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v77 = *(v9 + 16);
      v78 = v9 + 16;
      v20 = (v9 + 8);
      v76 = a3;
      v21 = v77;
      do
      {
        v21(v13, a2, v8);
        v21(v81, a4, v8);
        v84 = UUID.uuid.getter();
        LOWORD(v85) = v22;
        BYTE2(v85) = v23;
        BYTE3(v85) = v24;
        BYTE4(v85) = v25;
        BYTE5(v85) = v26;
        BYTE6(v85) = v27;
        HIBYTE(v85) = v28;
        v82 = UUID.uuid.getter();
        LOWORD(v83) = v29;
        BYTE2(v83) = v30;
        BYTE3(v83) = v31;
        BYTE4(v83) = v32;
        BYTE5(v83) = v33;
        BYTE6(v83) = v34;
        HIBYTE(v83) = v35;
        v36 = bswap64(v84);
        v37 = bswap64(v82);
        if (v36 == v37 && (v36 = bswap64(v85), v37 = bswap64(v83), v36 == v37))
        {
          v38 = 0;
        }

        else if (v36 < v37)
        {
          v38 = -1;
        }

        else
        {
          v38 = 1;
        }

        v39 = *v20;
        (*v20)(v81, v8);
        v39(v13, v8);
        if (v38 < 0)
        {
          v40 = v80;
          if (a1 < a2 || a1 >= a2 + v80)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v40;
        }

        else
        {
          v40 = v80;
          v41 = a4 + v80;
          if (a1 < a4 || a1 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v87 = v41;
          a4 += v40;
        }

        a1 += v40;
        v88[0] = a1;
      }

      while (a4 < v79 && a2 < v76);
    }

    goto LABEL_73;
  }

  v18 = v15 / v80 * v80;
  if (a4 < a2 || a2 + v18 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v42 = a4 + v18;
  if (v18 < 1)
  {
    goto LABEL_72;
  }

  v43 = -v80;
  v73 = (v9 + 8);
  v74 = (v9 + 16);
  v44 = a4 + v18;
  v75 = a4;
  v79 = -v80;
  while (2)
  {
    v72 = v42;
    v45 = a2;
    v46 = a2 + v43;
    v77 = v45;
    v78 = v46;
    while (1)
    {
      if (v45 <= a1)
      {
        v88[0] = v45;
        v86 = v72;
        goto LABEL_73;
      }

      v48 = a3;
      v76 = v42;
      v49 = *v74;
      v80 = v44 + v43;
      v49(v13);
      (v49)(v81, v46, v8);
      v84 = UUID.uuid.getter();
      LOWORD(v85) = v50;
      BYTE2(v85) = v51;
      BYTE3(v85) = v52;
      BYTE4(v85) = v53;
      BYTE5(v85) = v54;
      BYTE6(v85) = v55;
      HIBYTE(v85) = v56;
      v82 = UUID.uuid.getter();
      LOWORD(v83) = v57;
      BYTE2(v83) = v58;
      BYTE3(v83) = v59;
      BYTE4(v83) = v60;
      BYTE5(v83) = v61;
      BYTE6(v83) = v62;
      HIBYTE(v83) = v63;
      v64 = bswap64(v84);
      v65 = bswap64(v82);
      if (v64 == v65 && (v64 = bswap64(v85), v65 = bswap64(v83), v64 == v65))
      {
        v66 = 0;
        v67 = v75;
      }

      else
      {
        v67 = v75;
        v66 = v64 < v65 ? -1 : 1;
      }

      v68 = *v73;
      (*v73)(v81, v8);
      v68(v13, v8);
      if (v66 < 0)
      {
        break;
      }

      v43 = v79;
      v69 = v80;
      a3 = v48 + v79;
      v42 = v80;
      v46 = v78;
      if (v48 < v44 || a3 >= v44)
      {
        v47 = v80;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v48 == v44)
        {
          goto LABEL_49;
        }

        v47 = v80;
        swift_arrayInitWithTakeBackToFront();
      }

      v43 = v79;
      v42 = v47;
LABEL_49:
      v44 = v42;
      v45 = v77;
      if (v69 <= v67)
      {
        a2 = v77;
        goto LABEL_72;
      }
    }

    a2 = v78;
    v43 = v79;
    a3 = v48 + v79;
    if (v48 < v77 || a3 >= v77)
    {
      swift_arrayInitWithTakeFrontToBack();
LABEL_67:
      v43 = v79;
    }

    else if (v48 != v77)
    {
      swift_arrayInitWithTakeBackToFront();
      goto LABEL_67;
    }

    v42 = v76;
    if (v44 > v67)
    {
      continue;
    }

    break;
  }

LABEL_72:
  v88[0] = a2;
  v86 = v42;
LABEL_73:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(v88, &v87, &v86);
  return 1;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v43[0] = a2;
  v44 = a1;
  v5 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v43 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v9 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v43 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v11 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v43 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = v43 - v17;
  v45 = 0;
  v18 = 0;
  v66 = a3;
  v19 = *(a3 + 56);
  v47 = a3 + 56;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v55 = direct field offset for Canvas.paperView;
  v46 = (v20 + 63) >> 6;
  v54 = v15 + 2;
  v53 = (v11 + 16);
  v52 = (v11 + 8);
  v74 = v15;
  v51 = v15 + 1;
  v50 = (v7 + 8);
  v49 = (v9 + 8);
  while (v22)
  {
    v23 = __clz(__rbit64(v22));
    v68 = (v22 - 1) & v22;
LABEL_11:
    v26 = v23 | (v18 << 6);
    v27 = *(v66 + 48);
    v28 = v74[9];
    v48 = v26;
    v67 = v74[2];
    v29 = v57;
    v67(v69, v27 + v28 * v26, v57, v16);
    v30 = *(v65 + v55);
    v31 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x3F0);
    swift_beginAccess();
    v32 = v58;
    v33 = v59;
    v34 = (*v53)(v58, &v30[v31], v59);
    MEMORY[0x1EEE9AC00](v34);
    v43[-4] = type metadata accessor for Paper(0);
    v43[-3] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    v43[-2] = &protocol witness table for Paper;
    swift_getKeyPath();
    v35 = v60;
    Capsule.subscript.getter();

    (*v52)(v32, v33);
    v36 = v56;
    v37 = v69;
    (v67)(v56, v69, v29);
    WeakTagged_10.tag.getter();
    v70 = v72;
    v71 = v73;
    MEMORY[0x1DA6CB5C0](v29);
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
    v38 = v62;
    SharedTagged_10.init(_:id:)();
    v39 = v74[1];
    v39(v36, v29);
    v40 = v61;
    LOBYTE(v36) = CROrderedSet.contains(_:)();
    (*v50)(v38, v63);
    (*v49)(v35, v40);
    v39(v37, v29);
    v22 = v68;
    if (v36)
    {
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
LABEL_15:
        v42 = v66;

        specialized _NativeSet.extractSubset(using:count:)(v44, v43[0], v45, v42);
        return;
      }
    }
  }

  v24 = v18;
  while (1)
  {
    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v18 >= v46)
    {
      goto LABEL_15;
    }

    v25 = *(v47 + 8 * v18);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v68 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v80 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v73 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v46 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v9 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v46 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v11 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v46 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v75 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = v46 - v15;
  v16 = *(a1 + 32);
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = 8 * v18;
  v20 = a2;
  v71 = v20;
  if (v17 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v47 = v18;
    v48 = v3;
    v46[1] = v46;
    MEMORY[0x1EEE9AC00](v20);
    v49 = v46 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v19);
    v50 = 0;
    v21 = 0;
    v70 = a1;
    v23 = *(a1 + 56);
    a1 += 56;
    v22 = v23;
    v51 = a1;
    v24 = 1 << *(a1 - 24);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v60 = direct field offset for Canvas.paperView;
    v52 = (v24 + 63) >> 6;
    v59 = v75 + 2;
    v58 = (v11 + 16);
    v57 = (v11 + 8);
    v56 = v75 + 1;
    v55 = (v73 + 8);
    v54 = (v9 + 1);
    while (v26)
    {
      v27 = __clz(__rbit64(v26));
      v73 = (v26 - 1) & v26;
LABEL_12:
      v30 = v27 | (v21 << 6);
      v31 = *(v70 + 48);
      v32 = v75[9];
      v53 = v30;
      v72 = v75[2];
      v33 = v62;
      v72(v74, v31 + v32 * v30, v62);
      v34 = *&v71[v60];
      v35 = *((*MEMORY[0x1E69E7D40] & *v34) + 0x3F0);
      swift_beginAccess();
      v36 = v63;
      v37 = v64;
      v38 = (*v58)(v63, &v34[v35], v64);
      MEMORY[0x1EEE9AC00](v38);
      v46[-4] = type metadata accessor for Paper(0);
      v46[-3] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      v46[-2] = &protocol witness table for Paper;
      swift_getKeyPath();
      v18 = v65;
      Capsule.subscript.getter();

      (*v57)(v36, v37);
      v39 = v61;
      v40 = v74;
      v72(v61, v74, v33);
      WeakTagged_10.tag.getter();
      v76 = v78;
      v77 = v79;
      MEMORY[0x1DA6CB5C0](v33);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
      v11 = v67;
      SharedTagged_10.init(_:id:)();
      v3 = v75[1];
      v9 = v56;
      v3(v39, v33);
      a1 = v66;
      v19 = CROrderedSet.contains(_:)();
      (*v55)(v11, v68);
      (*v54)(v18, a1);
      v3(v40, v33);
      v26 = v73;
      if (v19)
      {
        *&v49[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_16:
          v42 = specialized _NativeSet.extractSubset(using:count:)(v49, v47, v50, v70);

          return v42;
        }
      }
    }

    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v52)
      {
        goto LABEL_16;
      }

      v29 = *(v51 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v73 = (v29 - 1) & v29;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v44 = swift_slowAlloc();
  v45 = v71;
  v42 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9Coherence13WeakTagged_10Vy8PaperKit0K13CanvasElementVGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab19VKXEfU_9Coherence13jk6_10Vy8l7Kit0H13nO6VG_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n03_s8l4Kit6n26C07mergeToC8ElementsyyFSb9vjk11_10VyAA0iC7O17VGXEfU_AA0A0V_Tg5AK0N0CyAK0L0VGTf1nnc_nTm(v44, v18, a1, v45, specialized closure #1 in _NativeSet.filter(_:));

  MEMORY[0x1DA6D0660](v44, -1, -1);

  return v42;
}

{
  v3 = v2;
  v80 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v73 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v46 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v9 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v46 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v11 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v46 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v75 = *(v62 - 8);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v61 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v74 = v46 - v15;
  v16 = *(a1 + 32);
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = 8 * v18;
  v20 = a2;
  v71 = v20;
  if (v17 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v47 = v18;
    v48 = v3;
    v46[1] = v46;
    MEMORY[0x1EEE9AC00](v20);
    v49 = v46 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v19);
    v50 = 0;
    v21 = 0;
    v70 = a1;
    v23 = *(a1 + 56);
    a1 += 56;
    v22 = v23;
    v51 = a1;
    v24 = 1 << *(a1 - 24);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v60 = direct field offset for Canvas.paperView;
    v52 = (v24 + 63) >> 6;
    v59 = v75 + 2;
    v58 = (v11 + 16);
    v57 = (v11 + 8);
    v56 = v75 + 1;
    v55 = (v73 + 8);
    v54 = (v9 + 1);
    while (v26)
    {
      v27 = __clz(__rbit64(v26));
      v73 = (v26 - 1) & v26;
LABEL_12:
      v30 = v27 | (v21 << 6);
      v31 = *(v70 + 48);
      v32 = v75[9];
      v53 = v30;
      v72 = v75[2];
      v33 = v62;
      v72(v74, v31 + v32 * v30, v62);
      v34 = *&v71[v60];
      v35 = *((*MEMORY[0x1E69E7D40] & *v34) + 0x3F0);
      swift_beginAccess();
      v36 = v63;
      v37 = v64;
      v38 = (*v58)(v63, &v34[v35], v64);
      MEMORY[0x1EEE9AC00](v38);
      v46[-4] = type metadata accessor for Image(0);
      v46[-3] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      v46[-2] = &protocol witness table for Image;
      swift_getKeyPath();
      v18 = v65;
      Capsule.subscript.getter();

      (*v57)(v36, v37);
      v39 = v61;
      v40 = v74;
      v72(v61, v74, v33);
      WeakTagged_10.tag.getter();
      v76 = v78;
      v77 = v79;
      MEMORY[0x1DA6CB5C0](v33);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
      v11 = v67;
      SharedTagged_10.init(_:id:)();
      v3 = v75[1];
      v9 = v56;
      v3(v39, v33);
      a1 = v66;
      v19 = CROrderedSet.contains(_:)();
      (*v55)(v11, v68);
      (*v54)(v18, a1);
      v3(v40, v33);
      v26 = v73;
      if (v19)
      {
        *&v49[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_16:
          v42 = specialized _NativeSet.extractSubset(using:count:)(v49, v47, v50, v70);

          return v42;
        }
      }
    }

    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v52)
      {
        goto LABEL_16;
      }

      v29 = *(v51 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v73 = (v29 - 1) & v29;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v44 = swift_slowAlloc();
  v45 = v71;
  v42 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9Coherence13WeakTagged_10Vy8PaperKit0K13CanvasElementVGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab19VKXEfU_9Coherence13jk6_10Vy8l7Kit0H13nO6VG_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n03_s8l4Kit6n26C07mergeToC8ElementsyyFSb9vjk11_10VyAA0iC7O17VGXEfU_AA0A0V_Tg5AK0N0CyAK0L0VGTf1nnc_nTm(v44, v18, a1, v45, specialized closure #1 in _NativeSet.filter(_:));

  MEMORY[0x1DA6D0660](v44, -1, -1);

  return v42;
}

{
  v3 = v2;
  v53 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = v35 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = v35 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = v35 - v11;
  LOBYTE(v11) = *(a1 + 32);
  v13 = v11 & 0x3F;
  v36 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v36;
  v15 = a2;
  v16 = v15;
  if (v13 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35[1] = v3;
    v35[0] = v35;
    MEMORY[0x1EEE9AC00](v15);
    v37 = v35 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v14);
    v50 = a1;
    v17 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    a1 = v19 & *(a1 + 56);
    v51 = v16;
    v44 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v38 = 0;
    v3 = 0;
    v20 = (v18 + 63) >> 6;
    v42 = (v8 + 16);
    v43 = v10 + 16;
    v40 = v10 + 8;
    v41 = (v8 + 8);
    v45 = v10;
    while (a1)
    {
      v52 = (a1 - 1) & a1;
      v21 = __clz(__rbit64(a1)) | (v3 << 6);
      a1 = v51;
LABEL_12:
      v24 = *(v50 + 48);
      v25 = *(v10 + 72);
      v39 = v21;
      v16 = v46;
      (*(v10 + 16))(v12, v24 + v25 * v21, v46);
      v26 = v47;
      v8 = v48;
      (*v42)(v47, a1 + v44, v48);
      type metadata accessor for PKDrawingStruct(0);
      _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
      v27 = v49;
      WeakRef.subscript.getter();
      v28 = v26;
      v10 = v45;
      (*v41)(v28, v8);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      v14 = (*(*(v29 - 8) + 48))(v27, 1, v29);
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
      (*(v10 + 8))(v12, v16);
      a1 = v52;
      if (v14 != 1)
      {
        *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_16:
          v31 = specialized _NativeSet.extractSubset(using:count:)(v37, v36, v38, v50);

          return v31;
        }
      }
    }

    v22 = v3;
    a1 = v51;
    while (1)
    {
      v3 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v3 >= v20)
      {
        goto LABEL_16;
      }

      v23 = *(v17 + 8 * v3);
      ++v22;
      if (v23)
      {
        v52 = (v23 - 1) & v23;
        v21 = __clz(__rbit64(v23)) | (v3 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  v34 = v16;
  v31 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9Coherence7WeakRefVyAH10CRRegisterVy8PaperKit12TaggedStrokeOGGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab18VKXEfU_9Coherence7jk6VyAG10l3Vy8m5Kit12oP7OGG_TG5ARxSbs5Error_pRi_zRi0_zlyAQIsgndzo_Tf1nc_n03_s8m50Kit23CanvasElementResizeViewC15resizingStrokesShy9wjkx4AE10lx4AA12oP15OGGGvgSbAMXEfU_AM09PKDrawingI0CTf1nnc_n(v33, v36, a1, v34);

  MEMORY[0x1DA6D0660](v33, -1, -1);

  return v31;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v43[0] = a2;
  v44 = a1;
  v5 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v43 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v9 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v43 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v11 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v43 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v13 = MEMORY[0x1EEE9AC00](v57);
  v56 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v69 = v43 - v17;
  v45 = 0;
  v18 = 0;
  v66 = a3;
  v19 = *(a3 + 56);
  v47 = a3 + 56;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v55 = direct field offset for Canvas.paperView;
  v46 = (v20 + 63) >> 6;
  v54 = v16 + 2;
  v53 = (v11 + 16);
  v52 = (v11 + 8);
  v74 = v16;
  v51 = v16 + 1;
  v50 = (v7 + 8);
  v49 = (v9 + 8);
  while (v22)
  {
    v23 = __clz(__rbit64(v22));
    v68 = (v22 - 1) & v22;
LABEL_11:
    v26 = v23 | (v18 << 6);
    v27 = *(v66 + 48);
    v28 = v74[9];
    v48 = v26;
    v67 = v74[2];
    v29 = v57;
    v67(v69, v27 + v28 * v26, v57);
    v30 = *(v65 + v55);
    v31 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x3F0);
    swift_beginAccess();
    v32 = v58;
    v33 = v59;
    v34 = (*v53)(v58, &v30[v31], v59);
    MEMORY[0x1EEE9AC00](v34);
    v43[-4] = type metadata accessor for Image(0);
    v43[-3] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v43[-2] = &protocol witness table for Image;
    swift_getKeyPath();
    v35 = v60;
    Capsule.subscript.getter();

    (*v52)(v32, v33);
    v36 = v56;
    v37 = v69;
    v67(v56, v69, v29);
    WeakTagged_10.tag.getter();
    v70 = v72;
    v71 = v73;
    MEMORY[0x1DA6CB5C0](v29);
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
    v38 = v62;
    SharedTagged_10.init(_:id:)();
    v39 = v74[1];
    v39(v36, v29);
    v40 = v61;
    LOBYTE(v36) = CROrderedSet.contains(_:)();
    (*v50)(v38, v63);
    (*v49)(v35, v40);
    result = (v39)(v37, v29);
    v22 = v68;
    if (v36)
    {
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
LABEL_15:
        v42 = v66;

        return specialized _NativeSet.extractSubset(using:count:)(v44, v43[0], v45, v42);
      }
    }
  }

  v24 = v18;
  while (1)
  {
    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v18 >= v46)
    {
      goto LABEL_15;
    }

    v25 = *(v47 + 8 * v18);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v68 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void specialized PaperTextAttachmentView.init(coder:)()
{
  *(v0 + direct field offset for PaperTextAttachmentView.paperViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PaperTextAttachmentView.syncManager) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.syncCancellable) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.saveCancellable) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.textAttachment) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.eatTapGestureRecognizer) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.tapBelowGestureRecognizer) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.topResizeView) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.bottomResizeView) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.resizeDragGestureRecognizer) = 0;
  v1 = v0 + direct field offset for PaperTextAttachmentView.reportedBounds;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  *(v0 + direct field offset for PaperTextAttachmentView.safeToCopyNewModelWhenMerging) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.linedPaperView) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.previousLinks) = MEMORY[0x1E69E7CC0];
  v2 = v0 + direct field offset for PaperTextAttachmentView.paperBoundsHint;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v0 + direct field offset for PaperTextAttachmentView.shouldBecomeFirstResponder) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.resizeInfo) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PaperTextAttachmentView.linedPaper) = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.isCurrentToolGenerationTool) = 0;
  v3 = v0 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = -1;
  v4 = v0 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundBoundsToInitialize;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = (v0 + direct field offset for PaperTextAttachmentView.cachedDrawingTransform);
  *v5 = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.cachedDrawingTransformBoundsWidth) = 0xBFF0000000000000;
  *(v0 + direct field offset for PaperTextAttachmentView.cachedDrawingTransformShouldCrop) = 0;
  swift_unknownObjectWeakInit();
  v6 = (v0 + direct field offset for PaperTextAttachmentView.calculateDocument);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + direct field offset for PaperTextAttachmentView.calculateDocumentExpressionSolvingBehavior) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized PaperTextAttachmentView.init(attachment:drawing:inserted:)(void *a1, int a2)
{
  v150 = a2;
  v165 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v136 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v137 = &v132 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v132 - v8;
  v9 = type metadata accessor for URL();
  v154 = *(v9 - 8);
  v155 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v132 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v138 = &v132 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v132 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v132 - v16;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v149 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v148 = &v132 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v132 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v143 = &v132 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v152 = &v132 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v134 = &v132 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v133 = &v132 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v135 = &v132 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v132 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v132 - v37;
  if (!a1 || (v164 = &unk_1F4FF85B8, (v38 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v39 = v38;
  v151 = a1;
  v40 = a1;
  v41 = [v39 _paperIdentifier];
  v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v145 = v42;

  v44 = v154;
  v43 = v155;
  v45 = *(v154 + 56);
  v46 = v156;
  v45(v156, 1, 1, v155);
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  v47 = [v39 _encryptionDelegateCRContextURL];
  v147 = v40;
  v153 = v45;
  if (v47)
  {
    v48 = v47;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    outlined destroy of StocksKitCurrencyCache.Provider?(&v161, &_s9Coherence18EncryptionDelegate_pSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s10Foundation3URLVSgMd);
    (*(v44 + 32))(v46, v17, v43);
    v45(v46, 0, 1, v43);
    v157 = v39;
    v49 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21PKPaperTextAttachment_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18EncryptionDelegate_pMd);
    v50 = v44;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v160 = 0;
      v158 = 0u;
      v159 = 0u;
    }

    v161 = v158;
    v162 = v159;
    v163 = v160;
    v51 = v155;
    goto LABEL_25;
  }

  if ([v39 respondsToSelector_])
  {
    v52 = [v39 _nonEncryptedContentCRContextURL];
    v51 = v155;
    if (v52)
    {
      v53 = v52;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v56 = v153;
    v57 = v136;
    v58 = v134;
    v153(v35, v54, 1, v51);
    v59 = v139;
    outlined init with take of Range<AttributedString.Index>(v35, v139, &_s10Foundation3URLVSgMd);
    v60 = *(v140 + 56);
    v60(v59, 0, 1, v141);
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s10Foundation3URLVSgSgMd);
    if ([v39 respondsToSelector_])
    {
      v61 = [v39 _nonEncryptedContentCRContextURL];
      if (v61)
      {
        v62 = v61;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = 0;
      }

      else
      {
        v63 = 1;
      }

      v65 = v156;
      outlined destroy of StocksKitCurrencyCache.Provider?(v156, &_s10Foundation3URLVSgMd);
      v66 = v58;
      v67 = v63;
      v68 = v58;
      v69 = v153;
      v153(v66, v67, 1, v51);
      v70 = v68;
      v46 = v65;
      v56 = v69;
      outlined init with take of Range<AttributedString.Index>(v70, v57, &_s10Foundation3URLVSgMd);
      v64 = 0;
    }

    else
    {
      v46 = v156;
      outlined destroy of StocksKitCurrencyCache.Provider?(v156, &_s10Foundation3URLVSgMd);
      v64 = 1;
    }

    v71 = v141;
    v60(v57, v64, 1, v141);
    v72 = v137;
    outlined init with take of Range<AttributedString.Index>(v57, v137, &_s10Foundation3URLVSgSgMd);
    v73 = (*(v140 + 48))(v72, 1, v71);
    v50 = v154;
    if (v73 == 1)
    {
      v74 = &_s10Foundation3URLVSgSgMd;
      v75 = v72;
    }

    else
    {
      v76 = v133;
      outlined init with take of Range<AttributedString.Index>(v72, v133, &_s10Foundation3URLVSgMd);
      if ((*(v50 + 48))(v76, 1, v51) != 1)
      {
        v78 = v135;
        (*(v50 + 32))(v135, v76, v51);
        v77 = 0;
        goto LABEL_24;
      }

      v74 = &_s10Foundation3URLVSgMd;
      v75 = v76;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v75, v74);
    v77 = 1;
    v78 = v135;
LABEL_24:
    v56(v78, v77, 1, v51);
    outlined init with take of Range<AttributedString.Index>(v78, v46, &_s10Foundation3URLVSgMd);
    goto LABEL_25;
  }

  v55 = v139;
  (*(v140 + 56))(v139, 1, 1, v141);
  outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s10Foundation3URLVSgSgMd);
  v50 = v154;
  v51 = v155;
  v46 = v156;
LABEL_25:
  v79 = v143;
  outlined init with copy of Date?(v46, v143, &_s10Foundation3URLVSgMd);
  v80 = *(v50 + 48);
  v81 = 1;
  v82 = v80(v79, 1, v51);
  outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s10Foundation3URLVSgMd);
  v83 = v152;
  if (v82 != 1)
  {
    v84 = [v39 _paperBundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = 0;
  }

  v153(v83, v81, 1, v51);
  v85 = v144;
  outlined init with copy of Date?(v83, v144, &_s10Foundation3URLVSgMd);
  if (v80(v85, 1, v51) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s10Foundation3URLVSgMd);
    v86 = 0;
  }

  else
  {
    v87 = v154;
    v88 = v142;
    (*(v154 + 32))(v142, v85, v51);
    v89 = objc_opt_self();
    v90 = [v89 defaultManager];
    v91 = URL.path.getter();
    v92 = MEMORY[0x1DA6CCED0](v91);

    v93 = [v90 isWritableFileAtPath_];

    if (v93)
    {
      (*(v87 + 8))(v88, v51);
      v86 = 3;
    }

    else
    {
      v94 = v138;
      URL.deletingLastPathComponent()();
      v95 = [v89 defaultManager];
      v96 = URL.absoluteString.getter();
      v97 = MEMORY[0x1DA6CCED0](v96);

      v98 = [v95 fileExistsAtPath_];

      if ((v98 & 1) == 0)
      {
        v99 = [v89 defaultManager];
        URL._bridgeToObjectiveC()(v100);
        v102 = v101;
        *&v158 = 0;
        v103 = [v99 createDirectoryAtURL:v101 withIntermediateDirectories:1 attributes:0 error:&v158];

        if (v103)
        {
          v104 = v158;
        }

        else
        {
          v105 = v158;
          v106 = _convertNSErrorToError(_:)();

          v153 = v106;
          swift_willThrow();
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v107 = type metadata accessor for Logger();
          __swift_project_value_buffer(v107, logger);
          v108 = v132;
          v109 = v155;
          (*(v87 + 16))(v132, v94, v155);
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = v108;
            v144 = swift_slowAlloc();
            *&v158 = v144;
            *v112 = 136315138;
            lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
            v114 = dispatch thunk of CustomStringConvertible.description.getter();
            v116 = v115;
            (*(v154 + 8))(v113, v109);
            v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, &v158);
            v87 = v154;

            *(v112 + 4) = v117;
            _os_log_impl(&dword_1D38C4000, v110, v111, "Failed to create PaperKit parent directory at: %s", v112, 0xCu);
            v118 = v144;
            __swift_destroy_boxed_opaque_existential_0(v144);
            MEMORY[0x1DA6D0660](v118, -1, -1);
            v119 = v112;
            v94 = v138;
            MEMORY[0x1DA6D0660](v119, -1, -1);
          }

          else
          {

            (*(v87 + 8))(v108, v109);
          }

          v83 = v152;
          v88 = v142;
        }
      }

      v120 = [v89 defaultManager];
      v121 = URL.path.getter();
      v122 = MEMORY[0x1DA6CCED0](v121);

      v123 = [v120 isWritableFileAtPath_];

      v124 = *(v87 + 8);
      v125 = v155;
      v124(v94, v155);
      v124(v88, v125);
      if (v123)
      {
        v86 = 3;
      }

      else
      {
        v86 = 0;
      }
    }
  }

  ObjectType = swift_getObjectType();
  v127 = v148;
  outlined init with copy of Date?(v83, v148, &_s10Foundation3URLVSgMd);
  v128 = v156;
  v129 = v149;
  outlined init with copy of Date?(v156, v149, &_s10Foundation3URLVSgMd);
  outlined init with copy of Date?(&v161, &v158, &_s9Coherence18EncryptionDelegate_pSgMd);
  LOBYTE(v157) = v86;
  v130 = (*(ObjectType + 5584))(v146, v145, v127, v151, v129, &v158, &v157, v150 & 1);

  outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s10Foundation3URLVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v161, &_s9Coherence18EncryptionDelegate_pSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s10Foundation3URLVSgMd);
  swift_deallocPartialClassInstance();
  return v130;
}

void specialized PaperTextAttachmentView.tapBelowGesture(_:)()
{
  v1 = v0;
  if ([v0 isFirstResponder])
  {
    v2 = [v0 resignFirstResponder];
    v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1598))(v2);
    if (v3)
    {
      v4 = v3;
      if ([v3 isFirstResponder])
      {
        [v4 resignFirstResponder];
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
    {
LABEL_17:
      __break(1u);
      return;
    }

    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v7);

    v9 = *(v8 + 16);

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        AnyCanvas.selectedCanvasElementIds.setter(MEMORY[0x1E69E7CC0]);
      }
    }
  }

  v12 = [v1 window];
  if (!v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [objc_opt_self() activeToolPickerForWindow_];

  [v14 _tellDelegateToHideToolPicker];
}

double specialized PaperTextAttachmentView.resizeViewDrawingBounds(_:)()
{
  v1 = *(v0 + direct field offset for PaperTextAttachmentView.resizeInfo);
  if (!v1)
  {
    return PaperTextAttachmentView.safePaperModelBounds.getter();
  }

  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];

  v8.origin.x = v2;
  v8.origin.y = v3;
  v8.size.width = v4;
  v8.size.height = v5;
  if (CGRectIsNull(v8))
  {
    v6 = *MEMORY[0x1E695F050];
  }

  else
  {
    v6 = v1[4];
  }

  return v6;
}

void specialized PaperTextAttachmentView.resizeView(_:setDrawingHeight:originalHeight:growFromTop:)(char a1, double a2, double a3)
{
  PaperTextAttachmentView.drawingTransform.getter(&v33);
  v7 = *&v3[direct field offset for PaperTextAttachmentView.resizeInfo];
  if (v7)
  {
    v8 = sqrt(*&v33 * *&v33 + *(&v33 + 1) * *(&v33 + 1));
    if (v8 > 0.0)
    {

      [v3 frame];
      v31 = v10;
      v32 = v9;
      v12 = v11;
      v13 = *(v7 + 32);
      v14 = *(v7 + 40);
      v15 = *(v7 + 48);
      v16 = *(v7 + 56);
      IsNull = CGRectIsNull(*(v7 + 64));
      v18 = 0.0;
      if (!IsNull)
      {
        MaxY = CGRectGetMaxY(*(v7 + 64));
        if (one-time initialization token for resizeHandleSize != -1)
        {
          v30 = MaxY;
          swift_once();
          MaxY = v30;
        }

        v18 = 64.0 / v8 + MaxY + *&static UIConstants.resizeHandleSize * 0.5 / v8;
      }

      if (a1)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, logger);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1D38C4000, v21, v22, "Resize from top not supported yet", v23, 2u);
          MEMORY[0x1DA6D0660](v23, -1, -1);
        }
      }

      else
      {
        v24 = a2 / v8;
        if (a2 / v8 < v18 && a2 < a3)
        {
          v24 = a3 / v8;
          if (v18 < a3 / v8)
          {
            v24 = v18;
          }

          a2 = v8 * v24;
        }

        if (v24 != v16)
        {
          *(v7 + 32) = v13;
          *(v7 + 40) = v14;
          *(v7 + 48) = v15;
          *(v7 + 56) = v24;
        }
      }

      if (one-time initialization token for resizeHandleSize != -1)
      {
        swift_once();
      }

      if (a2 > *&static UIConstants.resizeHandleSize)
      {
        v26 = a2;
      }

      else
      {
        v26 = *&static UIConstants.resizeHandleSize;
      }

      v28 = v31;
      v27 = v32;
      v29 = v12;
      PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(*(&v26 - 3), 1, 1, 1);
    }
  }
}

void outlined consume of MagicGenerativePlaygroundContext?(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    outlined consume of MagicGenerativePlaygroundContext(a1, a2, a3);
  }
}

void outlined consume of MagicGenerativePlaygroundContext(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

id outlined copy of MagicGenerativePlaygroundContext(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

void partial apply for closure #2 in UITextView._ppk_registerUndo(_:selection:undoManager:paperIdentifier:analyticsEvents:)(void *a1)
{
  v3 = *(type metadata accessor for CapsuleUndoAction() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  closure #2 in UITextView._ppk_registerUndo(_:selection:undoManager:paperIdentifier:analyticsEvents:)(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 24), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined copy of CanvasMembers?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperTextAttachmentView.toolPickerSelectedToolItemDidChange(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:)(a1, v5, v6, v7, v8);
}