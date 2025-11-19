uint64_t key path setter for PaperDocumentPage.$flags : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$flags.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$flags.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 40);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PaperDocumentPage.subelements.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaperDocumentPage(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaperDocumentPage.subelements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaperDocumentPage(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaperDocumentPage.initialAnnotationIDs.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for PaperDocumentPage.initialAnnotationIDs : PaperDocumentPage@<X0>(void *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PaperDocumentPage.initialAnnotationIDs : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PaperDocumentPage.initialAnnotationIDs.setter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PaperDocumentPage.initialAnnotationIDs.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.$initialAnnotationIDs.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PaperDocumentPage.$initialAnnotationIDs : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PaperDocumentPage.$initialAnnotationIDs : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$initialAnnotationIDs.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$initialAnnotationIDs.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 48);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PaperDocumentPage.init()()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v19 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v19 - v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v23 = 0u;
  v24 = 0u;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for PaperDocumentPage(0);
  v23 = 0u;
  v24 = 0u;
  CRRegister.init(wrappedValue:)();
  v14 = type metadata accessor for ContentsBounds(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  outlined init with copy of Date?(v13, v10, &_s8PaperKit14ContentsBoundsOSgMd);
  lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit14ContentsBoundsOSgMd);
  LODWORD(v23) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v15 = type metadata accessor for PDFPageID();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit9PDFPageIDVSgMd);
  lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit9PDFPageIDVSgMd);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v17 = v19;
  (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
  outlined init with copy of Date?(v17, v21, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  *&v23 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  *&v23 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  CRRegister.init(wrappedValue:)();
  return UnknownProperties.init()();
}

unint64_t lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ContentsBounds? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ContentsBounds? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit14ContentsBoundsOSgMd);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type ContentsBounds and conformance ContentsBounds, type metadata accessor for ContentsBounds);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentsBounds? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PDFPageID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PDFPageID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit9PDFPageIDVSgMd);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PDFPageID and conformance PDFPageID, type metadata accessor for PDFPageID);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [CRKeyPath] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CRKeyPath] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9Coherence9CRKeyPathVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CRKeyPath] and conformance <A> [A]);
  }

  return result;
}

uint64_t PaperDocumentPage.copy(renamingReferences:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CRKeyPath();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v76 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v76 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v89 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v76 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v16 = *(v15 - 8);
  v98 = v15;
  v99 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v76 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v76 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v76 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v76 - v20;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v76 - v21;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v23 = &v76 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v76 - v26;
  outlined init with copy of PaperDocumentPage(v2, a2, type metadata accessor for PaperDocumentPage);
  CRRegister.copy(renamingReferences:)();
  v28 = *(v25 + 40);
  v28(a2, v27, v24);
  v29 = type metadata accessor for PaperDocumentPage(0);
  CRRegister.copy(renamingReferences:)();
  v28(a2 + v29[5], v27, v24);
  v30 = a1;
  v31 = v79;
  CRRegister.copy(renamingReferences:)();
  v32 = a2;
  v33 = v23;
  v34 = v103;
  (*(v80 + 40))(a2 + v29[6], v33, v31);
  v35 = v81;
  v36 = v82;
  CRRegister.copy(renamingReferences:)();
  (*(v83 + 40))(v32 + v29[7], v35, v36);
  v37 = v84;
  v38 = v85;
  CRRegister.copy(renamingReferences:)();
  (*(v86 + 40))(v32 + v29[8], v37, v38);
  v40 = v87;
  v39 = v88;
  CRRegister.copy(renamingReferences:)();
  (*(v90 + 5))(v32 + v29[9], v40, v39);
  v41 = v91;
  v42 = v94;
  CRRegister.copy(renamingReferences:)();
  (*(v96 + 40))(v32 + v29[10], v41, v42);
  v44 = v97;
  v43 = v98;
  v91 = v30;
  CROrderedSet.copy(renamingReferences:)();
  v45 = v29[11];
  v46 = *(v99 + 40);
  v94 = v32;
  v46(v32 + v45, v44, v43);
  v90 = v29;
  CRRegister.wrappedValue.getter();
  v47 = v106;
  v48 = *(v106 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v106 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v50 = v106;
    v52 = *(v34 + 16);
    v51 = v34 + 16;
    v53 = (*(v51 + 64) + 32) & ~*(v51 + 64);
    v88 = v47;
    v54 = v47 + v53;
    v98 = *(v51 + 56);
    v99 = v52;
    v55 = v89;
    v96 = v89 + 32;
    v97 = (v51 - 8);
    v56 = v77;
    v57 = v100;
    do
    {
      v58 = v55;
      v59 = v104;
      v60 = v99;
      (v99)(v57, v54, v104);
      v60(v101, v57, v59);
      type metadata accessor for PDFAnnotationElement(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement);
      WeakRef.init(id:)();
      (*v97)(v57, v59);
      v106 = v50;
      v62 = *(v50 + 16);
      v61 = *(v50 + 24);
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1);
        v50 = v106;
      }

      *(v50 + 16) = v62 + 1;
      v55 = v58;
      (*(v58 + 32))(v50 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v62, v56, v105);
      v54 += v98;
      --v48;
    }

    while (v48);

    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v55 = v89;
  }

  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement> and conformance WeakRef<A>, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v63 = Array<A>.copy(renamingReferences:)();

  v64 = *(v63 + 16);
  if (v64)
  {
    v106 = v49;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
    v49 = v106;
    v66 = *(v55 + 16);
    v65 = v55 + 16;
    v67 = *(v65 + 64);
    v99 = v63;
    v68 = v63 + ((v67 + 32) & ~v67);
    v100 = *(v65 + 56);
    v101 = v66;
    v69 = v78;
    do
    {
      v70 = v102;
      v71 = v105;
      (v101)(v102, v68, v105);
      WeakRef.id.getter();
      (*(v65 - 8))(v70, v71);
      v106 = v49;
      v73 = *(v49 + 16);
      v72 = *(v49 + 24);
      if (v73 >= v72 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1);
        v49 = v106;
      }

      *(v49 + 16) = v73 + 1;
      (*(v103 + 32))(v49 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v73, v69, v104);
      v68 += v100;
      --v64;
    }

    while (v64);
  }

  v106 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  v74 = v92;
  CRRegister.init(_:)();
  return (*(v93 + 40))(v94 + v90[12], v74, v95);
}

uint64_t PaperDocumentPage.ObservableDifference.initialAnnotationIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for PaperDocumentPage.ObservableDifference(0) + 48));
  outlined copy of WrappedObservableDifference<[CRValueObservableDifference?]>?(v1);
  return v1;
}

uint64_t PaperDocumentPage.ObservableDifference.initialAnnotationIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaperDocumentPage.ObservableDifference(0) + 48);
  result = outlined consume of WrappedObservableDifference<[CRValueObservableDifference?]>?(*(v1 + v3));
  *(v1 + v3) = a1;
  return result;
}

BOOL PaperDocumentPage.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v191 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v151 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v171 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v184 = &v151 - v10;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v190 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v163 = &v151 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v170 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v151 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v189 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v162 = &v151 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v169 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v151 - v20;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v188 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v161 = &v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v168 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v178 = &v151 - v25;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v187 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v160 = &v151 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v167 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v151 - v30;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v186 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v159 = &v151 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v166 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v174 = &v151 - v35;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v185 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v158 = &v151 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v165 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v172 = &v151 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v157 = &v151 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v156 = &v151 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v164 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v151 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v151 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v151 - v55;
  v192 = type metadata accessor for PaperDocumentPage.Partial(0);
  MEMORY[0x1EEE9AC00](v192);
  v58 = &v151 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PaperDocumentPage(v2, v58, type metadata accessor for PaperDocumentPage.Partial);
  v193 = a1;
  v59 = PaperDocumentPage.Partial.canMerge(delta:)(a1);
  outlined destroy of PaperDocumentPage.Partial(v58, type metadata accessor for PaperDocumentPage.Partial);
  if (!v59)
  {
    return v59;
  }

  v154 = v59;
  v152 = v6;
  v155 = v4;
  v60 = v2;
  outlined init with copy of Date?(v2, v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v153 = v42;
  v61 = *(v42 + 48);
  v62 = v61(v56, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v62 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193, v60, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    outlined init with copy of Date?(v193, v53, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v61(v53, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v63 = v153;
      v64 = v156;
      (*(v153 + 32))(v156, v53, v41);
      if (!v61(v60, 1, v41))
      {
        CRRegister.merge(delta:)();
      }

      (*(v63 + 8))(v64, v41);
    }
  }

  v65 = v192;
  v66 = v192[5];
  outlined init with copy of Date?(v60 + v66, v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v67 = v61(v50, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v68 = v65[5];
  if (v67 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v68, v60 + v66, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v69 = v164;
    outlined init with copy of Date?(v193 + v68, v164, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v61(v69, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v70 = v153;
      v71 = v157;
      (*(v153 + 32))(v157, v69, v41);
      if (!v61((v60 + v66), 1, v41))
      {
        CRRegister.merge(delta:)();
      }

      (*(v70 + 8))(v71, v41);
    }
  }

  v72 = v173;
  v73 = v192;
  v74 = v192[6];
  v75 = v172;
  outlined init with copy of Date?(v60 + v74, v172, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  v76 = *(v185 + 48);
  v77 = v76(v75, 1, v72);
  outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  v78 = v73[6];
  v79 = v175;
  if (v77 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v78, v60 + v74, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  }

  else
  {
    v80 = v165;
    outlined init with copy of Date?(v193 + v78, v165, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    if (v76(v80, 1, v72) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    }

    else
    {
      v81 = v185;
      v82 = v158;
      (*(v185 + 32))(v158, v80, v72);
      if (!v76(v60 + v74, 1, v72))
      {
        CRRegister.merge(delta:)();
      }

      (*(v81 + 8))(v82, v72);
    }
  }

  v83 = v192;
  v84 = v192[7];
  v85 = v174;
  outlined init with copy of Date?(v60 + v84, v174, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v86 = *(v186 + 48);
  v87 = v86(v85, 1, v79);
  outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v88 = v83[7];
  if (v87 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v88, v60 + v84, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v89 = v177;
  }

  else
  {
    v90 = v166;
    outlined init with copy of Date?(v193 + v88, v166, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v91 = v86(v90, 1, v79);
    v89 = v177;
    if (v91 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v92 = v186;
      v93 = v159;
      (*(v186 + 32))(v159, v90, v79);
      if (!v86(v60 + v84, 1, v79))
      {
        CRRegister.merge(delta:)();
      }

      (*(v92 + 8))(v93, v79);
    }
  }

  v94 = v187;
  v95 = v192;
  v96 = v192[8];
  v97 = v176;
  outlined init with copy of Date?(v60 + v96, v176, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  v98 = *(v94 + 48);
  v99 = v98(v97, 1, v89);
  outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  v100 = v95[8];
  if (v99 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v100, v60 + v96, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  }

  else
  {
    v101 = v167;
    outlined init with copy of Date?(v193 + v100, v167, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    if (v98(v101, 1, v89) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    }

    else
    {
      v102 = v187;
      v103 = v160;
      (*(v187 + 32))(v160, v101, v89);
      if (!v98(v60 + v96, 1, v89))
      {
        CRRegister.merge(delta:)();
      }

      (*(v102 + 8))(v103, v89);
    }
  }

  v104 = v192;
  v105 = v192[9];
  v106 = v178;
  outlined init with copy of Date?(v60 + v105, v178, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v107 = *(v188 + 48);
  v108 = v179;
  v109 = v107(v106, 1, v179);
  outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v110 = v104[9];
  if (v109 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v110, v60 + v105, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v111 = v181;
  }

  else
  {
    v112 = v168;
    outlined init with copy of Date?(v193 + v110, v168, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    if (v107(v112, 1, v108) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
      v111 = v181;
    }

    else
    {
      v113 = v108;
      v114 = v188;
      v115 = v161;
      (*(v188 + 32))(v161, v112, v108);
      v116 = v107(v60 + v105, 1, v108);
      v111 = v181;
      if (!v116)
      {
        CRRegister.merge(delta:)();
      }

      (*(v114 + 8))(v115, v113);
    }
  }

  v117 = v192;
  v118 = v192[10];
  v119 = v180;
  outlined init with copy of Date?(v60 + v118, v180, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v120 = *(v189 + 48);
  v121 = v120(v119, 1, v111);
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v122 = v117[10];
  if (v121 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v122, v60 + v118, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  else
  {
    v123 = v169;
    outlined init with copy of Date?(v193 + v122, v169, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    if (v120(v123, 1, v111) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    }

    else
    {
      v124 = v189;
      v125 = v162;
      (*(v189 + 32))(v162, v123, v111);
      if (!v120(v60 + v118, 1, v111))
      {
        CRRegister.merge(delta:)();
      }

      (*(v124 + 8))(v125, v111);
    }
  }

  v126 = v192;
  v127 = v192[11];
  v128 = v182;
  outlined init with copy of Date?(v60 + v127, v182, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v129 = *(v190 + 48);
  v130 = v183;
  v131 = v129(v128, 1, v183);
  outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v132 = v126[11];
  if (v131 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v132, v60 + v127, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  }

  else
  {
    v133 = v170;
    outlined init with copy of Date?(v193 + v132, v170, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    if (v129(v133, 1, v130) != 1)
    {
      v136 = v130;
      v137 = v190;
      v138 = v163;
      (*(v190 + 32))(v163, v133, v130);
      v139 = v129(v60 + v127, 1, v130);
      v135 = v155;
      if (!v139)
      {
        CROrderedSet.MergeableDelta.merge(delta:)();
      }

      (*(v137 + 8))(v138, v136);
      v134 = v191;
      goto LABEL_59;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  }

  v134 = v191;
  v135 = v155;
LABEL_59:
  v140 = v192;
  v141 = v192[12];
  v142 = v184;
  outlined init with copy of Date?(v60 + v141, v184, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  v143 = *(v134 + 48);
  v144 = v143(v142, 1, v135);
  outlined destroy of StocksKitCurrencyCache.Provider?(v142, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  v145 = v140[12];
  if (v144 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v145, v60 + v141, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    LOBYTE(v59) = v154;
  }

  else
  {
    v146 = v171;
    outlined init with copy of Date?(v193 + v145, v171, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    v147 = v143(v146, 1, v135);
    LOBYTE(v59) = v154;
    if (v147 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    }

    else
    {
      v148 = v191;
      v149 = v152;
      (*(v191 + 32))(v152, v146, v135);
      if (!v143(v60 + v141, 1, v135))
      {
        CRRegister.merge(delta:)();
      }

      (*(v148 + 8))(v149, v135);
    }
  }

  return v59;
}

BOOL PaperDocumentPage.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v160 = &v133[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v146 = &v133[-v5];
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v135 = &v133[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v137 = &v133[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v151 = &v133[-v10];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v162 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v136 = &v133[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v139 = &v133[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v133[-v15];
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v164 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v138 = &v133[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v133[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v133[-v20];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v171 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v140 = &v133[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v143 = &v133[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v170 = &v133[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v158 = *(v26 - 8);
  v159 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v133[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v145 = &v133[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v133[-v31];
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v161 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v144 = &v133[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v150 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v165 = &v133[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v166 = *(v37 - 8);
  v167 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v149 = &v133[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v154 = &v133[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v133[-v42];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v133[-v45];
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v133[-v48];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v153 = &v133[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v133[-v54];
  outlined init with copy of Date?(a1, v49, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v56 = *(v51 + 48);
  if (v56(v49, 1, v50) == 1)
  {
    v46 = v49;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    goto LABEL_6;
  }

  (*(v51 + 32))(v55, v49, v50);
  outlined init with copy of Date?(v172, v46, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v56(v46, 1, v50) == 1)
  {
    (*(v51 + 8))(v55, v50);
    goto LABEL_5;
  }

  v134 = CRRegister.canMerge(delta:)();
  v103 = *(v51 + 8);
  v103(v55, v50);
  v103(v46, v50);
  if ((v134 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v57 = type metadata accessor for PaperDocumentPage.Partial(0);
  outlined init with copy of Date?(a1 + v57[5], v43, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v56(v43, 1, v50) == 1)
  {
    v58 = v43;
LABEL_10:
    v61 = v168;
    v60 = v169;
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v62 = v170;
    v64 = v166;
    v63 = v167;
    v65 = v165;
    goto LABEL_11;
  }

  v59 = v153;
  (*(v51 + 32))(v153, v43, v50);
  v58 = v154;
  outlined init with copy of Date?(v172 + v57[5], v154, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v56(v58, 1, v50) == 1)
  {
    (*(v51 + 8))(v59, v50);
    goto LABEL_10;
  }

  v104 = v59;
  v105 = v58;
  v106 = CRRegister.canMerge(delta:)();
  v107 = *(v51 + 8);
  v107(v104, v50);
  v107(v105, v50);
  v60 = v169;
  v62 = v170;
  v63 = v167;
  v61 = v168;
  v65 = v165;
  v64 = v166;
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  outlined init with copy of Date?(a1 + v57[6], v65, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  v66 = *(v64 + 48);
  if (v66(v65, 1, v63) == 1)
  {
    v67 = v65;
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    v71 = v161;
    goto LABEL_16;
  }

  v170 = a1;
  v68 = v65;
  v69 = v149;
  (*(v64 + 32))(v149, v68, v63);
  v70 = v150;
  outlined init with copy of Date?(v172 + v57[6], v150, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  if (v66(v70, 1, v63) == 1)
  {
    (*(v64 + 8))(v69, v63);
    v67 = v70;
    a1 = v170;
    goto LABEL_15;
  }

  v114 = CRRegister.canMerge(delta:)();
  v115 = *(v64 + 8);
  v115(v69, v63);
  v115(v70, v63);
  a1 = v170;
  v71 = v161;
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  outlined init with copy of Date?(a1 + v57[7], v61, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v72 = *(v71 + 48);
  if (v72(v61, 1, v60) == 1)
  {
    v73 = v61;
LABEL_20:
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v78 = v171;
    v80 = v158;
    v79 = v159;
    goto LABEL_21;
  }

  v74 = v144;
  (*(v71 + 32))(v144, v61, v60);
  v75 = v74;
  v76 = v60;
  v77 = v145;
  outlined init with copy of Date?(v172 + v57[7], v145, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v72(v77, 1, v76) == 1)
  {
    (*(v71 + 8))(v75, v76);
    v73 = v77;
    goto LABEL_20;
  }

  v120 = CRRegister.canMerge(delta:)();
  v121 = *(v71 + 8);
  v121(v75, v76);
  v121(v77, v76);
  v78 = v171;
  v80 = v158;
  v79 = v159;
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  outlined init with copy of Date?(a1 + v57[8], v62, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  v81 = *(v80 + 48);
  if (v81(v62, 1, v79) == 1)
  {
    v82 = v62;
    v83 = v163;
    v84 = v164;
    v85 = v157;
LABEL_25:
    outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    v88 = v162;
    goto LABEL_26;
  }

  v86 = v142;
  (*(v80 + 32))(v142, v62, v79);
  v87 = v143;
  outlined init with copy of Date?(v172 + v57[8], v143, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  if (v81(v87, 1, v79) == 1)
  {
    (*(v80 + 8))(v86, v79);
    v82 = v87;
    v83 = v163;
    v84 = v164;
    v85 = v157;
    v78 = v171;
    goto LABEL_25;
  }

  v122 = CRRegister.canMerge(delta:)();
  v123 = *(v80 + 8);
  v123(v86, v79);
  v123(v87, v79);
  v88 = v162;
  v83 = v163;
  v84 = v164;
  v85 = v157;
  v78 = v171;
  if ((v122 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v89 = v156;
  outlined init with copy of Date?(a1 + v57[9], v156, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v90 = *(v78 + 48);
  if (v90(v89, 1, v85) == 1)
  {
    v91 = v89;
LABEL_30:
    outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    goto LABEL_31;
  }

  v92 = v140;
  (*(v78 + 32))(v140, v89, v85);
  v93 = v85;
  v94 = v78;
  v95 = v141;
  outlined init with copy of Date?(v172 + v57[9], v141, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  if (v90(v95, 1, v93) == 1)
  {
    (*(v94 + 8))(v92, v93);
    v91 = v95;
    v83 = v163;
    v84 = v164;
    goto LABEL_30;
  }

  v124 = CRRegister.canMerge(delta:)();
  v125 = *(v94 + 8);
  v125(v92, v93);
  v125(v95, v93);
  v83 = v163;
  v84 = v164;
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  outlined init with copy of Date?(a1 + v57[10], v83, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v96 = *(v84 + 48);
  v97 = v155;
  if (v96(v83, 1, v155) == 1)
  {
LABEL_34:
    outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    goto LABEL_35;
  }

  v98 = v138;
  (*(v84 + 32))(v138, v83, v97);
  v83 = v139;
  outlined init with copy of Date?(v172 + v57[10], v139, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  if (v96(v83, 1, v97) == 1)
  {
    (*(v84 + 8))(v98, v97);
    v88 = v162;
    goto LABEL_34;
  }

  v126 = CRRegister.canMerge(delta:)();
  v127 = *(v84 + 8);
  v127(v98, v97);
  v127(v83, v97);
  v88 = v162;
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v99 = v151;
  outlined init with copy of Date?(a1 + v57[11], v151, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v100 = *(v88 + 48);
  v101 = v152;
  if (v100(v99, 1, v152) == 1)
  {
    v102 = v99;
  }

  else
  {
    v108 = v136;
    (*(v88 + 32))(v136, v99, v101);
    v109 = v137;
    outlined init with copy of Date?(v172 + v57[11], v137, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    if (v100(v109, 1, v101) != 1)
    {
      v128 = CROrderedSet.MergeableDelta.canMerge(delta:)();
      v129 = *(v88 + 8);
      v129(v108, v101);
      v129(v109, v101);
      if ((v128 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_44;
    }

    (*(v88 + 8))(v108, v101);
    v102 = v109;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
LABEL_44:
  v110 = v146;
  outlined init with copy of Date?(a1 + v57[12], v146, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  v111 = v147;
  v112 = *(v147 + 48);
  v113 = v148;
  if (v112(v110, 1, v148) == 1)
  {
    v160 = v110;
LABEL_50:
    outlined destroy of StocksKitCurrencyCache.Provider?(v160, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    return 1;
  }

  v116 = v135;
  (*(v111 + 32))(v135, v110, v113);
  v117 = v172 + v57[12];
  v118 = v160;
  outlined init with copy of Date?(v117, v160, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  if (v112(v118, 1, v113) == 1)
  {
    (*(v111 + 8))(v116, v113);
    goto LABEL_50;
  }

  v130 = v160;
  v131 = CRRegister.canMerge(delta:)();
  v132 = *(v111 + 8);
  v132(v116, v113);
  v132(v130, v113);
  return (v131 & 1) != 0;
}

uint64_t PaperDocumentPage.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v51[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v51 - v22;
  outlined init with copy of Date?(v2, v51 - v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v23, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v25 + 8))(v23, v24);
  }

  v27 = type metadata accessor for PaperDocumentPage.Partial(0);
  outlined init with copy of Date?(v2 + v27[5], v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v26(v20, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v25 + 8))(v20, v24);
  }

  v28 = v55;
  v29 = v2;
  outlined init with copy of Date?(v2 + v27[6], v17, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v17, 1, v30);
  v33 = v57;
  if (v32 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v31 + 8))(v17, v30);
  }

  v34 = v56;
  v35 = v54;
  v36 = v52;
  outlined init with copy of Date?(v29 + v27[7], v52, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v38 + 8))(v36, v37);
  }

  v39 = v53;
  outlined init with copy of Date?(v29 + v27[8], v53, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v41 + 8))(v39, v40);
  }

  outlined init with copy of Date?(v29 + v27[9], v35, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v35, 1, v42) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v43 + 8))(v35, v42);
  }

  outlined init with copy of Date?(v29 + v27[10], v28, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v28, 1, v44) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v45 + 8))(v28, v44);
  }

  outlined init with copy of Date?(v29 + v27[11], v34, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v34, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  }

  else
  {
    CROrderedSet.MergeableDelta.visitReferences(_:)();
    (*(v47 + 8))(v34, v46);
  }

  outlined init with copy of Date?(v29 + v27[12], v33, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v33, 1, v48) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v49 + 8))(v33, v48);
}

uint64_t PaperDocumentPage.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v98 = v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v119 = v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v121 = v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v127 = v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v126 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = v88 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(a2, 1, 1, v21);
  v25 = type metadata accessor for PaperDocumentPage.Partial(0);
  v120 = v25[5];
  v122 = v21;
  v124 = v24;
  v125 = v23;
  v23(a2 + v120, 1, 1, v21);
  v26 = v25[6];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v117 = v27;
  v118 = v26;
  v115 = v28 + 56;
  v116 = v29;
  (v29)(a2 + v26, 1, 1);
  v30 = v25[7];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v112 = v31;
  v113 = v30;
  v110 = v32 + 56;
  v111 = v33;
  (v33)(a2 + v30, 1, 1);
  v34 = v25[8];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v107 = v34;
  v106 = v35;
  v105 = v37;
  v104 = v36 + 56;
  (v37)(a2 + v34, 1, 1);
  v38 = v25[9];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v103 = v38;
  v102 = v39;
  v101 = v41;
  v100 = v40 + 56;
  (v41)(a2 + v38, 1, 1);
  v42 = v25[10];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v108 = v42;
  v97 = v45;
  v96 = v44 + 56;
  v45(a2 + v42, 1, 1, v43);
  v46 = v25[11];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v50 = v48 + 56;
  v95 = v46;
  v94 = v49;
  v49(a2 + v46, 1, 1, v47);
  v51 = v25[12];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v55 = v53 + 56;
  v129 = a2;
  v54(a2 + v51, 1, 1, v52);
  v56 = v128;
  dispatch thunk of CRDecoder.keyedContainer()();
  if (v56)
  {

    v57 = v129;
    return outlined destroy of PaperDocumentPage.Partial(v57, type metadata accessor for PaperDocumentPage.Partial);
  }

  v58 = v126;
  v93 = v43;
  v90 = v50;
  v91 = v47;
  v88[1] = v55;
  v92 = v54;
  v89 = v51;
  v128 = 0;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v59 = v123;
    v60 = v128;
    CRRegister.init(from:)();
    v57 = v129;
    v61 = v127;
    if (v60)
    {
      goto LABEL_25;
    }

    v62 = v58;
    v128 = 0;
    v63 = v122;
    v125(v59, 0, 1, v122);
    outlined assign with take of UUID?(v59, v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v57 = v129;
    v61 = v127;
    v62 = v58;
    v63 = v122;
  }

  v64 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v65 = v93;
  if (v64)
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v66 = v128;
    CRRegister.init(from:)();
    if (v66)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v125(v62, 0, 1, v63);
    outlined assign with take of UUID?(v62, v57 + v120, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  v67 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v68 = v121;
  if (v67)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
    lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
    v69 = v128;
    CRRegister.init(from:)();
    if (v69)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v116(v61, 0, 1, v117);
    outlined assign with take of UUID?(v61, v57 + v118, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  }

  v70 = v52;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
    v71 = v128;
    CRRegister.init(from:)();
    if (v71)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v111(v68, 0, 1, v112);
    outlined assign with take of UUID?(v68, v57 + v113, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  v72 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v73 = v119;
  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
    lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
    v74 = v114;
    v75 = v128;
    CRRegister.init(from:)();
    if (v75)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v105(v74, 0, 1, v106);
    outlined assign with take of UUID?(v74, v57 + v107, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    v65 = v93;
  }

  if (!dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v76 = v128;
  CRRegister.init(from:)();
  if (v76)
  {
LABEL_25:

    return outlined destroy of PaperDocumentPage.Partial(v57, type metadata accessor for PaperDocumentPage.Partial);
  }

  v128 = 0;
  v101(v73, 0, 1, v102);
  outlined assign with take of UUID?(v73, v57 + v103, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
LABEL_23:
  v77 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v78 = v109;
  v79 = v108;
  if (v77)
  {
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    v80 = v128;
    CRRegister.init(from:)();
    if (v80)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v97(v78, 0, 1, v65);
    outlined assign with take of UUID?(v78, v57 + v79, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    v82 = v99;
    v83 = v128;
    CROrderedSet.MergeableDelta.init(from:)();
    v128 = v83;
    if (v83)
    {
      goto LABEL_25;
    }

    v94(v82, 0, 1, v91);
    outlined assign with take of UUID?(v82, v57 + v95, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    v70 = v52;
  }

  v84 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v85 = v92;
  v86 = v98;
  if (v84)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
    lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
    v87 = v128;
    CRRegister.init(from:)();

    if (v87)
    {
      return outlined destroy of PaperDocumentPage.Partial(v57, type metadata accessor for PaperDocumentPage.Partial);
    }

    v85(v86, 0, 1, v70);
    return outlined assign with take of UUID?(v86, v57 + v89, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  }

  else
  {
  }
}

uint64_t PaperDocumentPage.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v99 = &v94 - v1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v94 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v109 = *(v9 - 8);
  v110 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v116 = &v94 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v112 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v107 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v114 = &v94 - v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v115 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v123 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v20 = *(v19 - 8);
  v118 = v19;
  v119 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v121 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v122 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = (&v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v94 - v38;
  v40 = v125;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v40)
  {
    v97 = v29;
    v95 = v36;
    v94 = v26;
    v96 = v24;
    v125 = 0;
    outlined init with copy of Date?(v124, v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v42 = *(v34 + 48);
    v43 = v34;
    if (v42(v32, 1, v33) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      v44 = v97;
    }

    else
    {
      (*(v34 + 32))(v39, v32, v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v45 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v45;
      v44 = v97;
      if (v45)
      {
        (*(v43 + 8))(v39, v33);
      }

      (*(v43 + 8))(v39, v33);
    }

    v97 = type metadata accessor for PaperDocumentPage.Partial(0);
    outlined init with copy of Date?(v124 + v97[5], v44, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v46 = v42(v44, 1, v33);
    v47 = v96;
    v48 = v121;
    if (v46 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      v49 = v122;
      v50 = v123;
    }

    else
    {
      v51 = v95;
      (*(v43 + 32))(v95, v44, v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v52 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v52;
      v53 = v43;
      v49 = v122;
      v50 = v123;
      if (v52)
      {
        (*(v53 + 8))(v51, v33);
      }

      (*(v53 + 8))(v51, v33);
    }

    v54 = v97;
    v55 = v124;
    outlined init with copy of Date?(v124 + v97[6], v48, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    if ((*(v49 + 48))(v48, 1, v47) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    }

    else
    {
      v56 = v48;
      v57 = v94;
      (*(v49 + 32))(v94, v56, v47);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ContentsBounds?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
      v58 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v58;
      if (v58)
      {
        (*(v49 + 8))(v57, v47);
      }

      (*(v49 + 8))(v57, v47);
    }

    outlined init with copy of Date?(v55 + v54[7], v50, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v59 = v118;
    v60 = v119;
    v61 = (*(v119 + 48))(v50, 1, v118);
    v62 = v120;
    if (v61 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v63 = v113;
      (*(v60 + 32))(v113, v50, v59);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
      v64 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v64;
      if (v64)
      {
        (*(v60 + 8))(v63, v59);
      }

      (*(v60 + 8))(v63, v59);
    }

    v65 = v124;
    v66 = v114;
    outlined init with copy of Date?(v124 + v54[8], v114, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    v67 = v115;
    v68 = (*(v115 + 48))(v66, 1, v62);
    v69 = v117;
    if (v68 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
      v70 = v116;
    }

    else
    {
      v71 = v66;
      v72 = v111;
      (*(v67 + 32))(v111, v71, v62);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFPageID?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
      v73 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v73;
      v70 = v116;
      if (v73)
      {
        (*(v67 + 8))(v72, v62);
      }

      (*(v67 + 8))(v72, v62);
    }

    v74 = v97;
    outlined init with copy of Date?(v65 + v97[9], v70, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v75 = v112;
    if ((*(v112 + 48))(v70, 1, v69) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    }

    else
    {
      v76 = v70;
      v77 = v107;
      (*(v75 + 32))(v107, v76, v69);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
      v78 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v75 + 8))(v77, v69);
      v125 = v78;
      if (v78)
      {
      }
    }

    v79 = v108;
    outlined init with copy of Date?(v65 + v74[10], v108, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    v81 = v109;
    v80 = v110;
    if ((*(v109 + 48))(v79, 1, v110) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    }

    else
    {
      v82 = v102;
      (*(v81 + 32))(v102, v79, v80);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
      v83 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v81 + 8))(v82, v80);
      v125 = v83;
      if (v83)
      {
      }
    }

    v84 = v104;
    v85 = v105;
    v86 = v65 + v74[11];
    v87 = v103;
    outlined init with copy of Date?(v86, v103, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    v88 = v106;
    if ((*(v85 + 48))(v87, 1, v106) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
      goto LABEL_38;
    }

    (*(v85 + 32))(v84, v87, v88);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MergeableDelta and conformance CROrderedSet<A>.MergeableDelta, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
    v89 = v125;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v85 + 8))(v84, v88);
    v125 = v89;
    if (!v89)
    {
LABEL_38:
      v90 = v99;
      outlined init with copy of Date?(v124 + v74[12], v99, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
      v91 = v100;
      v92 = v101;
      if ((*(v100 + 48))(v90, 1, v101) == 1)
      {

        return outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
      }

      else
      {
        v93 = v98;
        (*(v91 + 32))(v98, v90, v92);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<[CRKeyPath]> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v91 + 8))(v93, v92);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall PaperDocumentPage.setContentsBounds(_:)(PaperKit::Quad *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - v6);
  topRight = a1->topRight;
  *v7 = a1->topLeft;
  v7[1] = topRight;
  bottomRight = a1->bottomRight;
  v7[2] = a1->bottomLeft;
  v7[3] = bottomRight;
  v10 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit14ContentsBoundsOSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd);
}

void PaperDocumentPage.init(contentsBounds:fullBounds:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, double a7, CGFloat a8)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v32 - v16;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v33);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v32 - v26;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v36 = 0u;
  v37 = 0u;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for PaperDocumentPage(0);
  v36 = 0u;
  v37 = 0u;
  CRRegister.init(wrappedValue:)();
  v28 = type metadata accessor for ContentsBounds(0);
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  outlined init with copy of Date?(v27, v24, &_s8PaperKit14ContentsBoundsOSgMd);
  lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit14ContentsBoundsOSgMd);
  LODWORD(v36) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v29 = type metadata accessor for PDFPageID();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  outlined init with copy of Date?(v21, v18, &_s8PaperKit9PDFPageIDVSgMd);
  lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit9PDFPageIDVSgMd);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v31 = v32;
  (*(*(v30 - 8) + 56))(v32, 1, 1, v30);
  outlined init with copy of Date?(v31, v34, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  *&v36 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  *&v36 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  v39.origin.y = a6;
  v39.size.height = a8;
  PaperDocumentPage.setContentsBounds(_:fullBounds:)(v38, v39);
}

Swift::Void __swiftcall PaperDocumentPage.setContentsBounds(_:fullBounds:)(__C::CGRect _, __C::CGRect fullBounds)
{
  height = fullBounds.size.height;
  y = fullBounds.origin.y;
  v4 = _.size.height;
  width = _.size.width;
  v6 = _.origin.y;
  x = _.origin.x;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v29 - v21);
  v32.origin.x = x;
  v32.origin.y = v6;
  v32.size.width = width;
  v32.size.height = v4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = x;
  v33.origin.y = v6;
  v33.size.width = width;
  v33.size.height = v4;
  v24 = y + y + height - CGRectGetMaxY(v33);
  v34.origin.x = x;
  v34.origin.y = v6;
  v34.size.width = width;
  v34.size.height = v4;
  v25 = CGRectGetWidth(v34);
  v35.origin.x = x;
  v35.origin.y = v6;
  v35.size.width = width;
  v35.size.height = v4;
  v26 = CGRectGetHeight(v35);
  *v22 = MinX;
  v22[1] = v24;
  v22[2] = v25;
  v22[3] = v26;
  v27 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v22);
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit14ContentsBoundsOSgMd);
  (*(v14 + 16))(v16, v19, v13);
  CRRegister.projectedValue.setter();
  (*(v14 + 8))(v19, v13);
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v36.origin.x = MinX;
  v36.origin.y = v24;
  v36.size.width = v25;
  v36.size.height = v26;
  if (!CGRectEqualToRect(v31, v36))
  {
    v31.origin.x = MinX;
    v31.origin.y = v24;
    v31.size.width = v25;
    v31.size.height = v26;
    CRRegister.value.setter();
  }

  v28 = v30;
  (*(v30 + 16))(v29, v12, v8);
  CRRegister.projectedValue.setter();
  (*(v28 + 8))(v12, v8);
}

uint64_t static PaperDocumentPage.create<A>(pdfPage:pageID:in:assetManager:importedElements:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v74 = a4;
  v73 = a3;
  v70 = a2;
  v84 = a1;
  v79 = a5;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  v75 = v5;
  v76 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v63 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit0C12DocumentPageVGMd);
  v78 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v68 = &v63 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v67);
  v64 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v63 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v65);
  v80 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v26 = type metadata accessor for PaperDocumentPage(0);
  MEMORY[0x1EEE9AC00](v26);
  v69 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v86 = 0u;
  v87 = 0u;
  CRRegister.init(wrappedValue:)();
  v86 = 0u;
  v87 = 0u;
  CRRegister.init(wrappedValue:)();
  v31 = type metadata accessor for ContentsBounds(0);
  (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  outlined init with copy of Date?(v25, v22, &_s8PaperKit14ContentsBoundsOSgMd);
  lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit14ContentsBoundsOSgMd);
  LODWORD(v86) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v66 = v26[8];
  v82 = type metadata accessor for PDFPageID();
  v32 = *(v82 - 8);
  v81 = *(v32 + 56);
  v83 = v32 + 56;
  v81(v19, 1, 1, v82);
  outlined init with copy of Date?(v19, v80, &_s8PaperKit9PDFPageIDVSgMd);
  lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit9PDFPageIDVSgMd);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v34 = v63;
  (*(*(v33 - 8) + 56))(v63, 1, 1, v33);
  outlined init with copy of Date?(v34, v64, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  *&v86 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v67 = v26[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  v35 = v26[12];
  *&v86 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  v65 = v35;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v36 = v84;
  [v84 boundsForBox_];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  [v36 boundsForBox_];
  v89.origin.y = v45;
  v89.size.height = v46;
  v88.origin.x = v38;
  v88.origin.y = v40;
  v88.size.width = v42;
  v88.size.height = v44;
  PaperDocumentPage.setContentsBounds(_:fullBounds:)(v88, v89);
  LODWORD(v86) = specialized CGImagePropertyOrientation.init(rotationAngle:)([v36 rotation] / 180.0 * 3.14159265);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  v64 = type metadata accessor for PDFPageID;
  v47 = v70;
  outlined init with copy of PaperDocumentPage(v70, v19, type metadata accessor for PDFPageID);
  v81(v19, 0, 1, v82);
  outlined init with copy of Date?(v19, v80, &_s8PaperKit9PDFPageIDVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit9PDFPageIDVSgMd);
  ContainerCanvasElement.importElements<A>(_:in:)(v74, v73, v26, &protocol witness table for PaperDocumentPage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v48 = v75;
  *&v86 = CROrderedSet.map<A>(_:)();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  CRRegister.wrappedValue.setter();
  v49 = v69;
  outlined init with copy of PaperDocumentPage(v30, v69, type metadata accessor for PaperDocumentPage);
  v50 = v72;
  (*(v76 + 56))(v72, 1, 1, v48);
  v51 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);

  v53 = v68;
  MEMORY[0x1DA6CC020](v52, v49, v50, v26, v51);
  v54 = v47;
  v55 = v77;
  outlined init with copy of PaperDocumentPage(v54, v77, v64);
  v81(v55, 0, 1, v82);
  v56 = type metadata accessor for PageId(0);
  v57 = *(v56 + 20);
  LOBYTE(v86) = 2;
  Ref.id.getter();
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  WeakTagged_3.init(_:id:)();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  (*(*(v58 - 8) + 56))(v55 + v57, 0, 1, v58);
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v59 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  v60 = v84;
  swift_beginAccess();
  outlined assign with take of UUID?(v55, &v60[v59], &_s8PaperKit6PageIdVSgMd);
  swift_endAccess();
  CRRegister.wrappedValue.getter();
  if (*&v60[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState])
  {
  }

  else
  {
    *&v60[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState] = v86;
  }

  LOBYTE(v86) = 2;
  v61 = v85;
  Ref.id.getter();
  SharedTagged_3.init(_:id:)();
  (*(v78 + 8))(v53, v61);
  return outlined destroy of PaperDocumentPage.Partial(v30, type metadata accessor for PaperDocumentPage);
}

uint64_t ContainerCanvasElement.importElements<A>(_:in:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = result;
    v9 = *(type metadata accessor for AnnotationImporter.ImportedElement() - 8);
    v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      result = ContainerCanvasElement.addImportedElement<A>(_:in:)(v10, a2, a3, a4);
      v10 += v11;
      --v4;
    }

    while (v4);
  }

  return result;
}

void PaperDocumentPage.update<A>(pdfPage:id:use:in:options:)(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v61 = a7;
  v62 = a6;
  v59 = a2;
  v60 = a5;
  v63 = a4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v58 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for PaperDocumentPage(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for PaperKitPDFPage(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v53 = v13;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    CRRegister.wrappedValue.getter();
    if ((v73 & 0x20) != 0)
    {
    }

    else
    {
      v52 = v22;
      PaperDocumentPage.pdfContentsBounds.getter();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v21 boundsForBox_];
      v32 = v31;
      v34 = v33;
      v77.origin.x = v24;
      v77.origin.y = v26;
      v77.size.width = v28;
      v77.size.height = v30;
      MinX = CGRectGetMinX(v77);
      v78.origin.x = v24;
      v78.origin.y = v26;
      v78.size.width = v28;
      v78.size.height = v30;
      v36 = v34 + v32 + v32 - CGRectGetMaxY(v78);
      v79.origin.x = v24;
      v79.origin.y = v26;
      v79.size.width = v28;
      v79.size.height = v30;
      Width = CGRectGetWidth(v79);
      v80.origin.x = v24;
      v80.origin.y = v26;
      v80.size.width = v28;
      v80.size.height = v30;
      Height = CGRectGetHeight(v80);
      [v21 boundsForBox_];
      if (!CGRect.almostEqual(_:threshold:)(MinX, v36, Width, Height, 1.0, v39, v40, v41, v42))
      {
        [v21 setBounds:1 forBox:{MinX, v36, Width, Height}];
      }

      v43 = specialized PaperPage.axisAlignedRotationInDegrees.getter();
      if ([v21 rotation] != v43)
      {
        [v21 setRotation_];
      }

      CRRegister.wrappedValue.getter();
      if (*&v21[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState])
      {
      }

      else
      {
        *&v21[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState] = v73;
      }

      outlined init with copy of Date?(v60, &v66, &_s8PaperKit0A17RenderableOptionsVSgMd);
      if (*(&v66 + 1) == 1)
      {
        *(&v73 + 1) = 0;
        memset(v76, 0, 45);
        LOWORD(v73) = 1;
        BYTE2(v73) = 0;
        LOBYTE(v74[0]) = 0;
        *(v74 + 8) = 0u;
        *(&v74[1] + 8) = 0u;
        BYTE8(v74[2]) = 1;
        *&v75 = 0;
        BYTE8(v75) = 0;
      }

      else
      {
        v75 = v70;
        v76[0] = v71;
        v76[1] = v72[0];
        *(&v76[1] + 13) = *(v72 + 13);
        v73 = v66;
        v74[0] = v67;
        v74[1] = v68;
        v74[2] = v69;
      }

      *(&v67 + 1) = v16;
      *&v68 = &protocol witness table for PaperDocumentPage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
      outlined init with copy of PaperDocumentPage(v8, boxed_opaque_existential_1, type metadata accessor for PaperDocumentPage);
      outlined assign with take of UUID?(&v66, v76, &_s8PaperKit0A10Renderable_pSgMd);
      v65 = v19;
      outlined init with copy of PaperRenderableOptions(&v73, &v66);
      v45 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
      v46 = v61;
      v47 = v62;
      v60 = v45;
      PaperPage<>.updateAnnotations<A>(in:use:capsule:options:)(v21, &v65, v63, &v66, v16, v62, v45, &protocol witness table for PaperDocumentPage, &protocol witness table for PaperDocumentPage, v61);
      outlined destroy of StocksKitCurrencyCache.Provider?(&v66, &_s8PaperKit0A17RenderableOptionsVSgMd);
      if (v19 >> 62)
      {
      }

      else
      {
        outlined init with copy of PaperDocumentPage(v8, v18, type metadata accessor for PaperDocumentPage);
        v48 = type metadata accessor for PDFPageID();
        (*(*(v48 - 8) + 56))(v55, 1, 1, v48);
        lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
        v51 = v19;
        CRRegister.init(_:)();
        (*(v54 + 40))(&v18[*(v16 + 32)], v15, v53);
        *&v66 = MEMORY[0x1E69E7CC0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
        lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
        v49 = v57;
        CRRegister.init(_:)();
        (*(v58 + 40))(&v18[*(v16 + 48)], v49, v64);
        PaperKitPDFPage.encodePaperPage<A, B>(_:_:id:capsule:)(v51, v18, v59, v63, v16, v47, v60, &protocol witness table for PaperDocumentPage, &protocol witness table for PaperDocumentPage, v46);
        outlined consume of PaperDocument.PDFDocumentUse(v19);

        outlined destroy of PaperDocumentPage.Partial(v18, type metadata accessor for PaperDocumentPage);
      }

      outlined destroy of PaperRenderableOptions(&v73);
    }
  }
}

uint64_t PaperDocumentPage.updateFrom<A>(pdfPage:in:)(void *a1, uint64_t a2)
{
  type metadata accessor for PaperKitPDFPage(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    v6 = a1;
    v7 = PaperDocumentPage.updateAnnotationsFrom<A>(_:in:)(v5, a2);

    return v7 & 1;
  }

  return result;
}

uint64_t PaperDocumentPage.updateAnnotationsFrom<A>(_:in:)(void *a1, uint64_t a2)
{
  v157 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v148 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v147 - v4;
  v154 = type metadata accessor for PDFAnnotationElement(0);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMd);
  v147 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v147 - v6;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd);
  MEMORY[0x1EEE9AC00](v173);
  v161 = (&v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v172 = &v147 - v9;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence9CRKeyPathVGGMd);
  MEMORY[0x1EEE9AC00](v149);
  v11 = &v147 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy9Coherence9CRKeyPathVGMd);
  v160 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v147 - v13;
  v14 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v169 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v166 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v147 - v19;
  v21 = type metadata accessor for CRKeyPath();
  v182 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v147 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v188 = (&v147 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v186 = &v147 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v147 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v147 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v168 = &v147 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v176 = &v147 - v37;
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_So13PDFAnnotationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v39 = *(type metadata accessor for PaperDocumentPage(0) + 44);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v165 = v2;
  v164 = v39;
  v163 = v40;
  v192 = v21;
  v158 = CROrderedSet.map<A>(_:)();
  v41 = [a1 annotations];
  type metadata accessor for PDFAnnotation();
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v42;
  if (v42 >> 62)
  {
    goto LABEL_74;
  }

  v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v183 = v11;
  v174 = v12;
  if (!v44)
  {

    v109 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v45 = 0;
  *&v181 = v43 & 0xC000000000000001;
  v162 = v43 & 0xFFFFFFFFFFFFFF8;
  v167 = (v182 + 48);
  v184 = (v182 + 32);
  v189 = (v182 + 16);
  v180 = (v182 + 8);
  v171 = (v182 + 56);
  v191 = MEMORY[0x1E69E7CC0];
  v179 = v20;
  v12 = v192;
  v178 = v43;
  v177 = v44;
  v190 = v31;
  while (1)
  {
    if (v181)
    {
      v49 = MEMORY[0x1DA6CE0C0](v45);
    }

    else
    {
      if (v45 >= *(v162 + 16))
      {
        goto LABEL_70;
      }

      v49 = *(v43 + 8 * v45 + 32);
    }

    v50 = v49;
    v11 = &_s9Coherence9CRKeyPathVSgMd;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      v146 = v43;
      v44 = __CocoaSet.count.getter();
      v43 = v146;
      goto LABEL_3;
    }

    v187 = (v45 + 1);
    type metadata accessor for CanvasElementPDFAnnotation();
    v51 = swift_dynamicCastClass();
    if (v51)
    {
      v52 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
      v53 = v51;
      swift_beginAccess();
      v54 = v53 + v52;
      v12 = v192;
      outlined init with copy of Date?(v54, v20, &_s9Coherence9CRKeyPathVSgMd);
      v55 = (*v167)(v20, 1, v12);
      v56 = v191;
      if (v55 != 1)
      {
        v57 = *v184;
        v58 = v176;
        (*v184)(v176, v20, v12);
        v59 = *v189;
        (*v189)(v168, v58, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
        }

        v61 = v56[2];
        v60 = v56[3];
        if (v61 >= v60 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v56);
        }

        v56[2] = v61 + 1;
        v62 = *(v182 + 80);
        v191 = v56;
        v63 = v56 + ((v62 + 32) & ~v62);
        v11 = *(v182 + 72);
        v64 = v192;
        v57(&v63[v11 * v61], v168, v192);
        v65 = v170;
        v59(v170, v176, v64);
        v66 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v193 = v38;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v65);
        v68 = v38[2];
        v69 = (v43 & 1) == 0;
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_72;
        }

        v20 = v43;
        v71 = v38[3];
        v185 = v59;
        if (v71 >= v70)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v70, isUniquelyReferenced_nonNull_native);
          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v170);
          if ((v20 & 1) != (v73 & 1))
          {
            break;
          }

          v12 = v72;
        }

        v38 = v193;
        if (v20)
        {
          v100 = v193[7];
          v101 = *(v100 + 8 * v12);
          *(v100 + 8 * v12) = v66;

          v102 = *v180;
          v12 = v192;
          (*v180)(v170, v192);
          v102(v176, v12);
        }

        else
        {
          v193[(v12 >> 6) + 8] |= 1 << v12;
          v103 = v170;
          v104 = v192;
          v185(v38[6] + v12 * v11, v170, v192);
          *(v38[7] + 8 * v12) = v66;
          v12 = v104;

          v105 = *v180;
          (*v180)(v103, v104);
          v105(v176, v104);
          v106 = v38[2];
          v93 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v93)
          {
            goto LABEL_73;
          }

          v38[2] = v107;
        }

        goto LABEL_7;
      }
    }

    else
    {
      (*v171)(v20, 1, 1, v12);
      v56 = v191;
    }

    v185 = v38;
    v31 = &_s9Coherence9CRKeyPathVSgMd;
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence9CRKeyPathVSgMd);
    v74 = [v50 pdfAnnotationUUID];
    v75 = v12;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v190;
    CRKeyPath.init(_:)();
    v77 = swift_dynamicCastClass();
    v12 = v189;
    v20 = *v189;
    if (v77)
    {
      v78 = v77;
      v79 = v166;
      (v20)(v166, v76, v75);
      (*v171)(v79, 0, 1, v75);
      v80 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
      swift_beginAccess();
      v81 = v50;
      v82 = v78 + v80;
      v12 = v189;
      v83 = v79;
      v56 = v191;
      outlined assign with take of UUID?(v83, v82, &_s9Coherence9CRKeyPathVSgMd);
      swift_endAccess();

      v76 = v190;
    }

    (v20)(v186, v76, v75);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
    }

    v85 = v56[2];
    v84 = v56[3];
    if (v85 >= v84 >> 1)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v84 > 1, v85 + 1, 1, v56);
    }

    v56[2] = v85 + 1;
    v86 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v191 = v56;
    v87 = v56 + v86;
    v11 = *(v182 + 72);
    (*(v182 + 32))(&v87[v11 * v85], v186, v75);
    v88 = v188;
    (v20)(v188, v190, v75);
    v38 = v185;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v193 = v38;
    v90 = specialized __RawDictionaryStorage.find<A>(_:)(v88);
    v91 = v38[2];
    v92 = (v43 & 1) == 0;
    v93 = __OFADD__(v91, v92);
    v94 = v91 + v92;
    if (v93)
    {
      goto LABEL_67;
    }

    v95 = v43;
    if (v38[3] >= v94)
    {
      if ((v89 & 1) == 0)
      {
        v108 = v90;
        specialized _NativeDictionary.copy()();
        v90 = v108;
      }

      goto LABEL_36;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, v89);
    v90 = specialized __RawDictionaryStorage.find<A>(_:)(v188);
    if ((v95 & 1) != (v96 & 1))
    {
      break;
    }

LABEL_36:
    v31 = v190;
    v38 = v193;
    if (v95)
    {
      v46 = v193[7];
      v47 = *(v46 + 8 * v90);
      *(v46 + 8 * v90) = v50;

      v12 = v192;
    }

    else
    {
      v193[(v90 >> 6) + 8] |= 1 << v90;
      v97 = v90;
      v12 = v192;
      (v20)(v38[6] + v90 * v11, v188, v192);
      *(v38[7] + 8 * v97) = v50;
      v98 = v38[2];
      v93 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (v93)
      {
        goto LABEL_71;
      }

      v38[2] = v99;
    }

    v48 = *v180;
    (*v180)(v188, v12);
    v48(v31, v12);
LABEL_7:
    v11 = v183;
    v20 = v179;
    ++v45;
    v43 = v178;
    if (v187 == v177)
    {

      v12 = v174;
      v109 = v191;
LABEL_47:
      v191 = v109;
      v193 = v109;
      v194 = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A], &_sSay9Coherence9CRKeyPathVGMd);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
      v110 = v159;
      BidirectionalCollection<>.difference<A>(from:)();
      (*(v160 + 16))(v11, v110, v12);
      v111 = *(v149 + 36);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<CRKeyPath> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy9Coherence9CRKeyPathVGMd);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v113 = v161;
      if (*(v11 + v111) == v193)
      {
LABEL_49:
        outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence9CRKeyPathVGGMd);

        v114 = v159;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        (*(v160 + 8))(v114, v12);

        return v193 != v194;
      }

      v189 = (v182 + 32);
      v190 = (v182 + 8);
      v185 = (v182 + 56);
      v186 = (v182 + 16);
      v184 = (v147 + 8);
      v20 = &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd;
      v182 = v148 + 8;
      *&v112 = 138412290;
      v181 = v112;
      while (1)
      {
        v116 = dispatch thunk of Collection.subscript.read();
        v117 = v172;
        v31 = &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMR;
        outlined init with copy of Date?(v118, v172, &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd);
        v116(&v193, 0);
        dispatch thunk of Collection.formIndex(after:)();
        outlined init with take of Range<AttributedString.Index>(v117, v113, &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd);
        LODWORD(v116) = swift_getEnumCaseMultiPayload();
        v119 = *v113;
        v12 = v113;
        v120 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence9CRKeyPathV7elementSiSg14associatedWithtMd) + 48);
        if (v116 == 1)
        {
          CROrderedSet.remove(at:)(v119);
          (*v190)(v12 + v120, v192);
          v113 = v12;
        }

        else
        {
          v121 = v175;
          (*v189)(v175, v12 + v120, v192);
          if (!v38[2])
          {
            goto LABEL_68;
          }

          v113 = v12;
          v122 = specialized __RawDictionaryStorage.find<A>(_:)(v121);
          if ((v43 & 1) == 0)
          {
            goto LABEL_69;
          }

          v123 = *(v38[7] + 8 * v122);
          if ([v123 isSynthesizedFormField])
          {
            (*v190)(v175, v192);
          }

          else
          {
            if (!PDFAnnotation.shouldMirrorAsPDFAnnotationElement()())
            {
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v135 = v38;
              v136 = type metadata accessor for Logger();
              __swift_project_value_buffer(v136, logger);
              v137 = v123;
              v138 = Logger.logObject.getter();
              v139 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v138, v139))
              {
                v140 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                *v140 = v181;
                *(v140 + 4) = v137;
                *v141 = v137;
                v142 = v137;
                _os_log_impl(&dword_1D38C4000, v138, v139, "PaperKit trying to update unknown annotation type: %@", v140, 0xCu);
                outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_sSo8NSObjectCSgMd);
                MEMORY[0x1DA6D0660](v141, -1, -1);
                v143 = v140;
                v113 = v161;
                MEMORY[0x1DA6D0660](v143, -1, -1);
                v144 = v142;
              }

              else
              {
                v144 = v138;
                v138 = v137;
              }

              v11 = v183;
              v145 = v192;

              (*v190)(v175, v145);
              v12 = v174;
              v38 = v135;
              goto LABEL_52;
            }

            v124 = v123;
            v188 = v124;
            v125 = v157;

            v126 = v153;
            PDFAnnotationElement.init(_:)(v124);
            v187 = *v186;
            v127 = v166;
            v128 = v192;
            v187(v166, v175, v192);
            (*v185)(v127, 0, 1, v128);
            v129 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement);
            v130 = v151;
            MEMORY[0x1DA6CC020](v125, v126, v127, v154, v129);
            v131 = v130;
            v11 = v183;
            (*v184)(v131, v152);
            LOBYTE(v193) = 8;
            v132 = v175;
            v187(v150, v175, v128);
            v20 = &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd;
            lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
            v133 = v155;
            SharedTagged_10.init(_:id:)();
            CROrderedSet.insert(_:at:)();

            v134 = v133;
            v113 = v161;
            (*v182)(v134, v156);
            (*v190)(v132, v128);
          }
        }

        v12 = v174;
LABEL_52:
        dispatch thunk of Collection.endIndex.getter();
        if (*(v11 + v111) == v193)
        {
          goto LABEL_49;
        }
      }
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PaperDocumentPage.rotation.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  result = CRRegister.wrappedValue.getter();
  if ((v1 - 1) >= 8)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for PaperDocumentPage.rotation : PaperDocumentPage@<X0>(void *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  result = CRRegister.wrappedValue.getter();
  if ((v3 - 1) >= 8)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a1 = qword_1D4062198[v3 - 1];
  }

  return result;
}

uint64_t key path setter for PaperDocumentPage.rotation : PaperDocumentPage(double *a1)
{
  specialized CGImagePropertyOrientation.init(rotationAngle:)(*a1);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PaperDocumentPage.rotation.setter(double a1)
{
  specialized CGImagePropertyOrientation.init(rotationAngle:)(a1);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PaperDocumentPage.rotation.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(a1 + 28) = *(type metadata accessor for PaperDocumentPage(0) + 28);
  *(a1 + 16) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  v3 = *(a1 + 24);
  if ((v3 - 1) >= 8)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    *(a1 + 24) = v3;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a1 = qword_1D4062198[v3 - 1];
    return PaperDocumentPage.rotation.modify;
  }

  return result;
}

uint64_t PaperDocumentPage.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 7;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t PaperDocumentPage.pageIndex.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v6 - v1);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  CRRegister.wrappedValue.getter();
  v3 = type metadata accessor for PDFPageID();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s8PaperKit9PDFPageIDVSgMd);
    return 0;
  }

  else
  {
    v4 = *v2;
    outlined destroy of PaperDocumentPage.Partial(v2, type metadata accessor for PDFPageID);
  }

  return v4;
}

uint64_t PaperDocumentPage.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PaperDocumentPage.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[88] = v6;
  v7[87] = a6;
  v7[86] = a5;
  v7[85] = a4;
  v7[84] = a3;
  v7[83] = a2;
  v7[82] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  v7[89] = swift_task_alloc();
  v8 = type metadata accessor for PDFPageID();
  v7[90] = v8;
  v7[91] = *(v8 - 8);
  v7[92] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PaperDocumentPage.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t PaperDocumentPage.render<A>(in:id:capsule:options:)()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  *(v0 + 744) = type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  CRRegister.wrappedValue.getter();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 712), &_s8PaperKit9PDFPageIDVSgMd);
    outlined init with copy of PaperRenderableOptions(*(v0 + 680), v0 + 16);

    *(v0 + 80) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    CRRegister.wrappedValue.getter();
    if ((*(v0 + 640) & 0x20) != 0)
    {
      outlined destroy of PaperRenderableOptions(v0 + 16);

      v15 = *(v0 + 8);

      return v15();
    }

    else
    {
      v4 = swift_task_alloc();
      *(v0 + 768) = v4;
      *v4 = v0;
      v4[1] = PaperDocumentPage.render<A>(in:id:capsule:options:);
      v5 = *(v0 + 744);
      v6 = *(v0 + 696);
      v7 = *(v0 + 688);
      v8 = *(v0 + 672);
      v9 = *(v0 + 656);

      return ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v9, v8, v0 + 16, v5, v7, &protocol witness table for PaperDocumentPage, v6);
    }
  }

  else
  {
    v11 = *(v0 + 736);
    v12 = *(v0 + 720);
    outlined init with take of PDFPageID(*(v0 + 712), v11, type metadata accessor for PDFPageID);
    v13 = *(v12 + 20);
    v14 = swift_task_alloc();
    *(v0 + 752) = v14;
    *v14 = v0;
    v14[1] = PaperDocumentPage.render<A>(in:id:capsule:options:);

    return specialized static PaperKitPDFDocument._load(_:)(v11 + v13);
  }
}

{
  v34 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 736);
  if (v1)
  {
    v3 = [*(v0 + 760) pageAtIndex_];

    outlined destroy of PaperDocumentPage.Partial(v2, type metadata accessor for PDFPageID);
    if (v3)
    {
      type metadata accessor for PaperKitPDFPage(0);
      v1 = swift_dynamicCastClass();
      if (v1)
      {
        v4 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
        CRRegister.wrappedValue.getter();
        if ((*(v0 + 648) & 0x20) == 0)
        {
          v5 = *(v0 + 696);
          v6 = *(v0 + 688);
          v7 = *(v0 + 672);
          v8 = *(v0 + 664);
          *&v33.a = 0x8000000000000008;
          *(v0 + 144) = xmmword_1D405D330;
          *(v0 + 160) = 0u;
          *(v0 + 176) = 0u;
          *(v0 + 192) = 0u;
          *(v0 + 208) = 0u;
          *(v0 + 224) = 0u;
          *(v0 + 240) = 0u;
          *(v0 + 253) = 0u;
          PaperDocumentPage.update<A>(pdfPage:id:use:in:options:)(v1, v8, &v33, v7, v0 + 144, v6, v5);
          outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 144, &_s8PaperKit0A17RenderableOptionsVSgMd);
        }

        v9 = *(v0 + 680);
        CGContextSaveGState(*(v0 + 656));
        if (*(v9 + 16) == 1 && (*(*(v0 + 680) + 72) & 1) == 0)
        {
          v10 = *(v0 + 656);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
          CRRegister.wrappedValue.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
          CRRegister.wrappedValue.getter();
          CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 272), *(v0 + 608));
          v11 = *(v0 + 288);
          *(v0 + 560) = *(v0 + 272);
          *(v0 + 576) = v11;
          *(v0 + 592) = *(v0 + 304);
          CGContextConcatCTM(v10, (v0 + 560));
        }

        v12 = *(v0 + 656);
        [v1 boundsForBox_];
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        MinY = CGRectGetMinY(v36);
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        MaxY = CGRectGetMaxY(v37);
        *(v0 + 320) = 0x3FF0000000000000;
        *(v0 + 328) = 0;
        *(v0 + 336) = 0;
        *(v0 + 344) = 0x3FF0000000000000;
        *(v0 + 352) = 0;
        *(v0 + 360) = 0;
        *(v0 + 368) = 0x3FF0000000000000;
        *(v0 + 376) = 0;
        *(v0 + 384) = 0;
        *(v0 + 392) = 0xBFF0000000000000;
        *(v0 + 400) = 0;
        *(v0 + 408) = MinY + MaxY;
        CGAffineTransformConcat(&v33, (v0 + 320), (v0 + 368));
        v19 = *&v33.c;
        v20 = *&v33.tx;
        *(v0 + 416) = *&v33.a;
        *(v0 + 432) = v19;
        *(v0 + 448) = v20;
        CGContextConcatCTM(v12, (v0 + 416));
        [v1 transformForBox_];
        v21 = *&v33.c;
        v22 = *&v33.tx;
        *(v0 + 464) = *&v33.a;
        *(v0 + 480) = v21;
        *(v0 + 496) = v22;
        CGAffineTransformInvert(&v33, (v0 + 464));
        v23 = *&v33.c;
        v24 = *&v33.tx;
        *(v0 + 512) = *&v33.a;
        *(v0 + 528) = v23;
        *(v0 + 544) = v24;
        CGContextConcatCTM(v12, (v0 + 512));
        [v1 drawWithBox:1 inContext:v12];
        CGContextRestoreGState(v12);
      }

      else
      {
      }
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    outlined destroy of PaperDocumentPage.Partial(*(v0 + 736), type metadata accessor for PDFPageID);
  }

  outlined init with copy of PaperRenderableOptions(*(v0 + 680), v0 + 16);

  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  CRRegister.wrappedValue.getter();
  if ((*(v0 + 640) & 0x20) != 0)
  {
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 768) = v25;
    *v25 = v0;
    v25[1] = PaperDocumentPage.render<A>(in:id:capsule:options:);
    v26 = *(v0 + 744);
    v27 = *(v0 + 696);
    v28 = *(v0 + 688);
    v29 = *(v0 + 672);
    v30 = *(v0 + 656);

    return ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v30, v29, v0 + 16, v26, v28, &protocol witness table for PaperDocumentPage, v27);
  }
}

{

  return MEMORY[0x1EEE6DFA0](PaperDocumentPage.render<A>(in:id:capsule:options:), 0, 0);
}

{
  outlined destroy of PaperRenderableOptions(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PaperDocumentPage.render<A>(in:id:capsule:options:)(uint64_t a1)
{
  *(*v1 + 760) = a1;

  return MEMORY[0x1EEE6DFA0](PaperDocumentPage.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t (*protocol witness for ContainerCanvasElement.bounds.modify in conformance PaperDocumentPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.pdfContentsBounds.getter()
{
  v0 = type metadata accessor for ContentsBounds(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit14ContentsBoundsOSgMd);
  }

  outlined init with copy of PaperDocumentPage(v6, v3, type metadata accessor for ContentsBounds);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PaperDocumentPage.Partial(v3, type metadata accessor for ContentsBounds);
  }

  return outlined destroy of PaperDocumentPage.Partial(v6, type metadata accessor for ContentsBounds);
}

uint64_t protocol witness for ContainerCanvasElement.pdfContentsBounds.setter in conformance PaperDocumentPage(double a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v16 - v12);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v14 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  outlined init with copy of Date?(v13, v10, &_s8PaperKit14ContentsBoundsOSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit14ContentsBoundsOSgMd);
}

uint64_t PaperDocumentPage.setContentsBounds(_:)(double a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v16 - v12);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v14 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  outlined init with copy of Date?(v13, v10, &_s8PaperKit14ContentsBoundsOSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit14ContentsBoundsOSgMd);
}

uint64_t (*protocol witness for ContainerCanvasElement.pdfContentsBounds.modify in conformance PaperDocumentPage(uint64_t **a1))()
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
  v2[4] = PaperDocumentPage.pdfContentsBounds.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

void (*PaperDocumentPage.pdfContentsBounds.modify(uint64_t *a1))(_OWORD **a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[6] = v7;
  PaperDocumentPage.pdfContentsBounds.getter();
  *v5 = v8;
  v5[1] = v9;
  v5[2] = v10;
  v5[3] = v11;
  return PaperDocumentPage.pdfContentsBounds.modify;
}

void PaperDocumentPage.pdfContentsBounds.modify(_OWORD **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  v3 = *(*a1 + 6);
  v4 = (*a1)[1];
  *v3 = **a1;
  v3[1] = v4;
  v5 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  outlined init with copy of Date?(v3, v2, &_s8PaperKit14ContentsBoundsOSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s8PaperKit14ContentsBoundsOSgMd);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t protocol witness for ContainerCanvasElement.drawing.setter in conformance PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}

uint64_t (*protocol witness for ContainerCanvasElement.drawing.modify in conformance PaperDocumentPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for ContainerCanvasElement.subelements.getter in conformance PaperDocumentPage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ContainerCanvasElement.subelements.setter in conformance PaperDocumentPage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance PaperDocumentPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance PaperDocumentPage(uint64_t *a1))()
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
  *(v2 + 32) = PaperDocumentPage.rotation.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for CanvasElement.orientation.modify in conformance PaperDocumentPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.flags.modify in conformance PaperDocumentPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance PaperDocumentPage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 7;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

double protocol witness for PaperRenderable.frame.getter in conformance PaperDocumentPage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return PaperDocumentPage.render<A>(in:id:capsule:options:)(a1, a2, a3, a4, a5, a6);
}

uint64_t PaperDocumentPage.shared(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v7[15] = 2;
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  return SharedTagged_3.init(_:id:)();
}

uint64_t key path setter for PaperDocumentPage.pdfContentsBounds : PaperDocumentPage(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - v6);
  v8 = a1[1];
  *v7 = *a1;
  v7[1] = v8;
  v9 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit14ContentsBoundsOSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd);
}

uint64_t (*protocol witness for PaperPage.frame.modify in conformance PaperDocumentPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for PaperPage.bounds.modify in conformance PaperDocumentPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.orientation.getter in conformance PaperDocumentPage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t (*protocol witness for PaperPage.orientation.modify in conformance PaperDocumentPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.rotation.setter in conformance PaperDocumentPage(double a1)
{
  specialized CGImagePropertyOrientation.init(rotationAngle:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*protocol witness for PaperPage.rotation.modify in conformance PaperDocumentPage(uint64_t *a1))()
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
  *(v2 + 32) = PaperDocumentPage.rotation.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for PaperPage.shared(_:) in conformance PaperDocumentPage(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v7[15] = 2;
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  return SharedTagged_3.init(_:id:)();
}

void ContainerCanvasElement.importAnnotations<A>(from:in:assetManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PaperKitPDFPage(0);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    ContainerCanvasElement._importAnnotations<A>(from:in:assetManager:)(v11, a2, a3, a4, a5);
  }
}

uint64_t ContainerCanvasElement._importAnnotations<A>(from:in:assetManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 boundsForBox_];
  static AnnotationImporter._importAnnotations<A>(from:in:assetManager:scale:mediaBox:)(a1, a2, a3, 1.0, v10, v11, v12, v13);
  ContainerCanvasElement.importElements<A>(_:in:)(v14, a2, a4, a5);
}

uint64_t PaperDocumentPage.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PaperDocumentPage.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t PaperDocumentPage.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v114 = v86 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v113 = v86 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v112 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v111 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = v86 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v108 = v86 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v107 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v106 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v104 = v86 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v103 = v86 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v101 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = v86 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v98 = v86 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v97 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = v86 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v93 = v86 - v28;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v91 = v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v89 = v86 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v88 = v86 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v118 = v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = v86 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v86 - v41;
  v121 = type metadata accessor for MergeResult();
  v124 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v44 = v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v45 = *(v35 + 8);
  v45(v42, v34);
  v46 = *(v35 + 16);
  v86[1] = v35 + 16;
  v87 = v46;
  v46(v118, v39, v34);
  CRRegister.projectedValue.setter();
  v45(v39, v34);
  v47 = v45;
  MergeResult.merge(_:)();
  v120 = *(v124 + 8);
  v124 += 8;
  v120(v44, v121);
  v48 = type metadata accessor for PaperDocumentPage(0);
  v123 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v47(v42, v34);
  v87(v118, v39, v34);
  CRRegister.projectedValue.setter();
  v47(v39, v34);
  MergeResult.merge(_:)();
  v49 = v120;
  v120(v44, v121);
  v119 = v48;
  v50 = v88;
  v51 = v90;
  CRRegister.projectedValue.getter();
  v52 = v89;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v53 = v92;
  v54 = *(v92 + 8);
  v54(v50, v51);
  (*(v53 + 16))(v91, v52, v51);
  CRRegister.projectedValue.setter();
  v54(v52, v51);
  MergeResult.merge(_:)();
  v49(v44, v121);
  v55 = v93;
  v56 = v95;
  CRRegister.projectedValue.getter();
  v57 = v94;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v58 = v97;
  v59 = *(v97 + 8);
  v59(v55, v56);
  (*(v58 + 16))(v96, v57, v56);
  CRRegister.projectedValue.setter();
  v59(v57, v56);
  MergeResult.merge(_:)();
  v120(v44, v121);
  v60 = v98;
  v61 = v100;
  CRRegister.projectedValue.getter();
  v62 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v63 = v102;
  v64 = *(v102 + 8);
  v64(v60, v61);
  (*(v63 + 16))(v101, v62, v61);
  CRRegister.projectedValue.setter();
  v64(v62, v61);
  MergeResult.merge(_:)();
  v65 = v121;
  v120(v44, v121);
  v66 = v103;
  v67 = v105;
  CRRegister.projectedValue.getter();
  v68 = v104;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v69 = v107;
  v70 = *(v107 + 8);
  v70(v66, v67);
  (*(v69 + 16))(v106, v68, v67);
  CRRegister.projectedValue.setter();
  v70(v68, v67);
  MergeResult.merge(_:)();
  v120(v44, v65);
  v71 = v108;
  v72 = v110;
  CRRegister.projectedValue.getter();
  v73 = v109;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v74 = v112;
  v75 = *(v112 + 8);
  v75(v71, v72);
  (*(v74 + 16))(v111, v73, v72);
  CRRegister.projectedValue.setter();
  v75(v73, v72);
  MergeResult.merge(_:)();
  v77 = v120;
  v76 = v121;
  v120(v44, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.merge(_:)();
  MergeResult.merge(_:)();
  v77(v44, v76);
  v78 = v113;
  v79 = v115;
  CRRegister.projectedValue.getter();
  v80 = v114;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v81 = v117;
  v82 = *(v117 + 8);
  v82(v78, v79);
  (*(v81 + 16))(v116, v80, v79);
  CRRegister.projectedValue.setter();
  v82(v80, v79);
  MergeResult.merge(_:)();
  v84 = v120;
  v83 = v121;
  v120(v44, v121);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v84(v44, v83);
}

uint64_t PaperDocumentPage.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v2 = *(v1 - 8);
  v120 = v1;
  v121 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v119 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v118 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v108 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v11 = *(v10 - 8);
  v116 = v10;
  v117 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v125 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v18 = *(v17 - 8);
  v112 = v17;
  v113 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v110 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v126 = &v94 - v23;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v94 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v127 = &v94 - v28;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v99 = &v94 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v128 = &v94 - v33;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v95 = &v94 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v124 = &v94 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v94 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v123 = &v94 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v101 = &v94 - v49;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v50 = *(v40 + 8);
  v50(v42, v39);
  v50(v45, v39);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v50(v42, v39);
  v50(v45, v39);
  v51 = v95;
  v52 = v97;
  CRRegister.projectedValue.getter();
  v53 = v96;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v54 = *(v98 + 8);
  v54(v53, v52);
  v54(v51, v52);
  v55 = v99;
  v56 = v102;
  CRRegister.projectedValue.getter();
  v57 = v100;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v58 = *(v103 + 8);
  v58(v57, v56);
  v58(v55, v56);
  v59 = v104;
  v60 = v106;
  CRRegister.projectedValue.getter();
  v61 = v105;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v62 = *(v107 + 8);
  v62(v61, v60);
  v62(v59, v60);
  v63 = v110;
  v64 = v112;
  CRRegister.projectedValue.getter();
  v65 = v111;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v66 = *(v113 + 8);
  v66(v65, v64);
  v66(v63, v64);
  v67 = v114;
  v68 = v116;
  CRRegister.projectedValue.getter();
  v69 = v115;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v70 = *(v117 + 8);
  v70(v69, v68);
  v70(v67, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v71 = v108;
  CROrderedSet.actionUndoingDifference(from:)();
  v72 = v118;
  v73 = v120;
  CRRegister.projectedValue.getter();
  v74 = v101;
  v75 = v119;
  CRRegister.projectedValue.getter();
  v76 = v109;
  CRRegister.actionUndoingDifference(from:)();
  v77 = *(v121 + 8);
  v77(v75, v73);
  v78 = v72;
  v79 = v123;
  v77(v78, v73);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  v81 = *(*(v80 - 8) + 48);
  if (v81(v74, 1, v80) == 1 && v81(v79, 1, v80) == 1 && (v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMd), (*(*(v82 - 8) + 48))(v124, 1, v82) == 1) && (v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMd), (*(*(v83 - 8) + 48))(v128, 1, v83) == 1) && (v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GMd), (*(*(v84 - 8) + 48))(v127, 1, v84) == 1) && (v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMd), (*(*(v85 - 8) + 48))(v126, 1, v85) == 1) && (v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMd), (*(*(v86 - 8) + 48))(v125, 1, v86) == 1) && (v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd), (*(*(v87 - 8) + 48))(v71, 1, v87) == 1) && (v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GMd), (*(*(v88 - 8) + 48))(v76, 1, v88) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v89 = type metadata accessor for PaperDocumentPage.MutatingAction(0);
    (*(*(v89 - 8) + 56))(v122, 1, 1, v89);
    v90 = v124;
  }

  else
  {
    v91 = v122;
    outlined init with copy of Date?(v74, v122, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v92 = type metadata accessor for PaperDocumentPage.MutatingAction(0);
    outlined init with copy of Date?(v79, v91 + v92[5], &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v90 = v124;
    outlined init with copy of Date?(v124, v91 + v92[6], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd);
    outlined init with copy of Date?(v128, v91 + v92[7], &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v127, v91 + v92[8], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMd);
    outlined init with copy of Date?(v126, v91 + v92[9], &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd);
    outlined init with copy of Date?(v125, v91 + v92[10], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
    outlined init with copy of Date?(v71, v91 + v92[11], &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    outlined init with copy of Date?(v76, v91 + v92[12], &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    (*(*(v92 - 1) + 56))(v91, 0, 1, v92);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v126, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
}

uint64_t PaperDocumentPage.apply(_:)(uint64_t a1)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v2 = *(v1 - 8);
  v75 = v1;
  v76 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v70 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v61 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A12DocumentPageV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v61 - v33;
  v35 = type metadata accessor for PaperDocumentPage.MutatingAction(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v90, v34, &_s8PaperKit0A12DocumentPageV14MutatingActionVSgMd);
  v39 = *(v36 + 48);
  v90 = v35;
  if (v39(v34, 1, v35) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit0A12DocumentPageV14MutatingActionVSgMd);
  }

  outlined init with take of PDFPageID(v34, v38, type metadata accessor for PaperDocumentPage.MutatingAction);
  CRRegister.projectedValue.getter();
  v62 = v38;
  CRRegister.apply(_:)();
  v65 = *(v26 + 16);
  v65(v28, v31, v25);
  CRRegister.projectedValue.setter();
  v64 = *(v26 + 8);
  v64(v31, v25);
  v63 = type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v65(v28, v31, v25);
  CRRegister.projectedValue.setter();
  v64(v31, v25);
  v41 = v66;
  v42 = v69;
  CRRegister.projectedValue.getter();
  v43 = v62;
  CRRegister.apply(_:)();
  v44 = v68;
  (*(v68 + 16))(v67, v41, v42);
  CRRegister.projectedValue.setter();
  (*(v44 + 8))(v41, v42);
  v45 = v71;
  v46 = v74;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v47 = v73;
  (*(v73 + 16))(v72, v45, v46);
  CRRegister.projectedValue.setter();
  (*(v47 + 8))(v45, v46);
  v48 = v77;
  v49 = v80;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v50 = v79;
  (*(v79 + 16))(v78, v48, v49);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v48, v49);
  v51 = v81;
  v52 = v84;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v53 = v83;
  (*(v83 + 16))(v82, v51, v52);
  CRRegister.projectedValue.setter();
  (*(v53 + 8))(v51, v52);
  v54 = v85;
  v55 = v88;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v56 = v87;
  (*(v87 + 16))(v86, v54, v55);
  CRRegister.projectedValue.setter();
  (*(v56 + 8))(v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.apply(_:)();
  v57 = v89;
  v58 = v75;
  CRRegister.projectedValue.getter();
  v59 = v43;
  CRRegister.apply(_:)();
  v60 = v76;
  (*(v76 + 16))(v70, v57, v58);
  CRRegister.projectedValue.setter();
  (*(v60 + 8))(v57, v58);
  return outlined destroy of PaperDocumentPage.Partial(v59, type metadata accessor for PaperDocumentPage.MutatingAction);
}

uint64_t PaperDocumentPage.hasDelta(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v90 = *(v20 - 8);
  v91 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v70 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v92 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v70 - v35;
  v94 = v1;
  CRRegister.projectedValue.getter();
  v93 = a1;
  CRRegister.projectedValue.getter();
  v37 = CRRegister.hasDelta(from:)();
  v38 = *(v31 + 8);
  v38(v33, v30);
  v38(v36, v30);
  if (v37 & 1) != 0 || (v71 = v17, v39 = type metadata accessor for PaperDocumentPage(0), CRRegister.projectedValue.getter(), v72 = v39, CRRegister.projectedValue.getter(), v40 = CRRegister.hasDelta(from:)(), v38(v33, v30), v38(v36, v30), (v40) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v41 = CRRegister.hasDelta(from:)(), v42 = *(v92 + 8), v42(v26, v24), v42(v29, v24), (v41) || (v43 = v88, v44 = v91, CRRegister.projectedValue.getter(), v45 = v89, CRRegister.projectedValue.getter(), v46 = CRRegister.hasDelta(from:)(), v47 = *(v90 + 8), v47(v45, v44), v47(v43, v44), (v46) || (v48 = v85, v49 = v87, CRRegister.projectedValue.getter(), v50 = v71, CRRegister.projectedValue.getter(), v51 = CRRegister.hasDelta(from:)(), v52 = *(v86 + 8), v52(v50, v49), v52(v48, v49), (v51) || (v53 = v81, v54 = v84, CRRegister.projectedValue.getter(), v55 = v82, CRRegister.projectedValue.getter(), v56 = CRRegister.hasDelta(from:)(), v57 = *(v83 + 8), v57(v55, v54), v57(v53, v54), (v56) || (v58 = v77, v59 = v80, CRRegister.projectedValue.getter(), v60 = v78, CRRegister.projectedValue.getter(), v61 = CRRegister.hasDelta(from:)(), v62 = *(v79 + 8), v62(v60, v59), v62(v58, v59), (v61) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), (CROrderedSet.hasDelta(from:)()) || (v63 = v73, v64 = v76, CRRegister.projectedValue.getter(), v65 = v74, CRRegister.projectedValue.getter(), v66 = CRRegister.hasDelta(from:)(), v67 = *(v75 + 8), v67(v65, v64), v67(v63, v64), (v66))
  {
    v68 = 1;
  }

  else
  {
    v68 = UnknownProperties.hasDelta(from:)();
  }

  return v68 & 1;
}

uint64_t PaperDocumentPage.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v75 = type metadata accessor for UnknownProperties();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v68 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v86 = &v68 - v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v90 = &v68 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v94 = &v68 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v97 = &v68 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v103 = &v68 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v108 = &v68 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v68 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v68 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v117);
  v112 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  type metadata accessor for CGRect(0);
  v119 = v26;
  v27 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v120 = 0u;
  v121 = 0u;
  v118 = v27;
  CRRegister.init(wrappedValue:)();
  v28 = type metadata accessor for PaperDocumentPage(0);
  v29 = v28[5];
  v120 = 0u;
  v121 = 0u;
  v107 = v29;
  CRRegister.init(wrappedValue:)();
  v30 = v28[6];
  v31 = type metadata accessor for ContentsBounds(0);
  (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  outlined init with copy of Date?(v25, v22, &_s8PaperKit14ContentsBoundsOSgMd);
  v32 = lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  v100 = v30;
  v104 = v32;
  v105 = v20;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit14ContentsBoundsOSgMd);
  v33 = v28[7];
  LODWORD(v120) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  v35 = v34;
  v36 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  v106 = v33;
  v99 = v35;
  v98 = v36;
  CRRegister.init(wrappedValue:)();
  v37 = v28[8];
  v38 = type metadata accessor for PDFPageID();
  (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
  outlined init with copy of Date?(v19, v112, &_s8PaperKit9PDFPageIDVSgMd);
  v39 = lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  v91 = v37;
  v112 = v39;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit9PDFPageIDVSgMd);
  v40 = v28[9];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v42 = v113;
  (*(*(v41 - 8) + 56))(v113, 1, 1, v41);
  outlined init with copy of Date?(v42, v114, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v43 = lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v87 = v40;
  v114 = v43;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v44 = v28[10];
  *&v120 = 0;
  v45 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  v83 = v44;
  v113 = v45;
  CRRegister.init(wrappedValue:)();
  v46 = v28[11];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v48 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v49 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v82 = v47;
  CROrderedSet.init()();
  v50 = v28[12];
  *&v120 = MEMORY[0x1E69E7CC0];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
  v52 = lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  CRRegister.init(wrappedValue:)();
  v53 = v28[13];
  UnknownProperties.init()();
  v54 = v115;
  CRRegister.init(defaultState:)();
  if (v54)
  {
    return outlined destroy of PaperDocumentPage.Partial(a1, type metadata accessor for PaperDocumentPage);
  }

  v73 = v49;
  v70 = v52;
  v71 = v51;
  v115 = v48;
  v68 = v53;
  v69 = v50;
  v72 = v46;
  v56 = v106;
  v55 = v107;
  v57 = v108;
  v58 = *(v109 + 40);
  v58(a1, v122, v111);
  CRRegister.init(defaultState:)();
  v58(a1 + v55, v110, v111);
  CRRegister.init(defaultState:)();
  (*(v101 + 40))(a1 + v100, v57, v102);
  v59 = v103;
  CRRegister.init(defaultState:)();
  v60 = a1;
  (*(v95 + 40))(a1 + v56, v59, v96);
  v61 = v97;
  CRRegister.init(defaultState:)();
  (*(v92 + 40))(v60 + v91, v61, v93);
  v62 = v94;
  CRRegister.init(defaultState:)();
  (*(v88 + 40))(v60 + v87, v62, v89);
  v63 = v90;
  CRRegister.init(defaultState:)();
  (*(v84 + 40))(v60 + v83, v63, v85);
  v64 = v86;
  CROrderedSet.init(defaultState:)();
  (*(v79 + 40))(v60 + v72, v64, v80);
  v65 = v81;
  CRRegister.init(defaultState:)();
  (*(v76 + 40))(v60 + v69, v65, v77);
  v66 = v78;
  UnknownProperties.init(defaultState:)();
  return (*(v74 + 40))(v60 + v68, v66, v75);
}

uint64_t PaperDocumentPage.isDefaultState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v40 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v51 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  type metadata accessor for PaperDocumentPage(0);
  v52 = v0;
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (v38 = v1, CRRegister.projectedValue.getter(), v19 = CRRegister.isDefaultState.getter(), v20 = *(v16 + 8), v20(v18, v15), (v19) && (CRRegister.projectedValue.getter(), v21 = CRRegister.isDefaultState.getter(), v20(v18, v15), (v21) && (CRRegister.projectedValue.getter(), v22 = CRRegister.isDefaultState.getter(), (*(v51 + 8))(v14, v12), (v22) && (CRRegister.projectedValue.getter(), v23 = CRRegister.isDefaultState.getter(), (*(v50 + 8))(v11, v9), (v23) && (v24 = v47, v25 = v49, CRRegister.projectedValue.getter(), v26 = CRRegister.isDefaultState.getter(), (*(v48 + 8))(v24, v25), (v26) && (v27 = v44, v28 = v46, CRRegister.projectedValue.getter(), v29 = CRRegister.isDefaultState.getter(), (*(v45 + 8))(v27, v28), (v29) && (v30 = v41, v31 = v43, CRRegister.projectedValue.getter(), v32 = CRRegister.isDefaultState.getter(), (*(v42 + 8))(v30, v31), (v32) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), (CROrderedSet.isDefaultState.getter()))
  {
    v33 = v38;
    v34 = v39;
    CRRegister.projectedValue.getter();
    v35 = CRRegister.isDefaultState.getter();
    (*(v40 + 8))(v34, v33);
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t PaperDocumentPage.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v1 = *(v0 - 8);
  v48 = v0;
  v49 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v47 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v22 = *(v19 + 8);
  v22(v21, v18);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v22(v21, v18);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v34 + 8))(v17, v15);
  v24 = v35;
  v23 = v36;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v37 + 8))(v24, v23);
  v26 = v38;
  v25 = v39;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v40 + 8))(v26, v25);
  v28 = v41;
  v27 = v42;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v43 + 8))(v28, v27);
  v30 = v44;
  v29 = v45;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v46 + 8))(v30, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.visitReferences(_:)();
  v32 = v47;
  v31 = v48;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v49 + 8))(v32, v31);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PaperDocumentPage.newRefs(from:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v2 = *(v1 - 8);
  v94 = v1;
  v95 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v93 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v7 = *(v6 - 8);
  v90 = v6;
  v91 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v12 = *(v11 - 8);
  v86 = v11;
  v87 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v17 = *(v16 - 8);
  v82 = v16;
  v83 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v22 = *(v21 - 8);
  v78 = v21;
  v79 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v72 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v75 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v72 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v72 - v35;
  v96 = MEMORY[0x1E69E7CD0];
  v72 = v0;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v37 = CRRegister.newRefs(from:)();
  v38 = *(v31 + 8);
  v38(v33, v30);
  v38(v36, v30);
  specialized Set.formUnion<A>(_:)(v37);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v39 = CRRegister.newRefs(from:)();
  v38(v33, v30);
  v38(v36, v30);
  specialized Set.formUnion<A>(_:)(v39);
  v40 = v73;
  CRRegister.projectedValue.getter();
  v41 = v74;
  CRRegister.projectedValue.getter();
  v42 = CRRegister.newRefs(from:)();
  v43 = *(v75 + 8);
  v43(v41, v26);
  v43(v40, v26);
  specialized Set.formUnion<A>(_:)(v42);
  v44 = v76;
  v45 = v78;
  CRRegister.projectedValue.getter();
  v46 = v77;
  CRRegister.projectedValue.getter();
  v47 = CRRegister.newRefs(from:)();
  v48 = *(v79 + 8);
  v48(v46, v45);
  v48(v44, v45);
  specialized Set.formUnion<A>(_:)(v47);
  v49 = v80;
  v50 = v82;
  CRRegister.projectedValue.getter();
  v51 = v81;
  CRRegister.projectedValue.getter();
  v52 = CRRegister.newRefs(from:)();
  v53 = *(v83 + 8);
  v53(v51, v50);
  v53(v49, v50);
  specialized Set.formUnion<A>(_:)(v52);
  v54 = v84;
  v55 = v86;
  CRRegister.projectedValue.getter();
  v56 = v85;
  CRRegister.projectedValue.getter();
  v57 = CRRegister.newRefs(from:)();
  v58 = *(v87 + 8);
  v58(v56, v55);
  v58(v54, v55);
  specialized Set.formUnion<A>(_:)(v57);
  v59 = v88;
  v60 = v90;
  CRRegister.projectedValue.getter();
  v61 = v89;
  CRRegister.projectedValue.getter();
  v62 = CRRegister.newRefs(from:)();
  v63 = *(v91 + 8);
  v63(v61, v60);
  v63(v59, v60);
  specialized Set.formUnion<A>(_:)(v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v64 = CROrderedSet.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v64);
  v65 = v92;
  v66 = v94;
  CRRegister.projectedValue.getter();
  v67 = v93;
  CRRegister.projectedValue.getter();
  v68 = CRRegister.newRefs(from:)();
  v69 = *(v95 + 8);
  v69(v67, v66);
  v69(v65, v66);
  specialized Set.formUnion<A>(_:)(v68);
  v70 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v70);
  return v96;
}

Swift::Bool __swiftcall PaperDocumentPage.needToFinalizeTimestamps()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v55 = v0;
  CRRegister.projectedValue.getter();
  v20 = CRRegister.needToFinalizeTimestamps()();
  v21 = *(v17 + 8);
  v21(v19, v16);
  v38 = v20 || (v41 = v9, type metadata accessor for PaperDocumentPage(0), CRRegister.projectedValue.getter(), v22 = CRRegister.needToFinalizeTimestamps()(), v21(v19, v16), v22) || (CRRegister.projectedValue.getter(), v23 = CRRegister.needToFinalizeTimestamps()(), (*(v13 + 8))(v15, v12), v23) || (v24 = v41, CRRegister.projectedValue.getter(), v25 = CRRegister.needToFinalizeTimestamps()(), (*(v54 + 8))(v11, v24), v25) || (v26 = v51, v27 = v53, CRRegister.projectedValue.getter(), v28 = CRRegister.needToFinalizeTimestamps()(), (*(v52 + 8))(v26, v27), v28) || (v29 = v48, v30 = v50, CRRegister.projectedValue.getter(), v31 = CRRegister.needToFinalizeTimestamps()(), (*(v49 + 8))(v29, v30), v31) || (v32 = v45, v33 = v47, CRRegister.projectedValue.getter(), v34 = CRRegister.needToFinalizeTimestamps()(), (*(v46 + 8))(v32, v33), v34) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), CROrderedSet.needToFinalizeTimestamps()()) || (v35 = v42, v36 = v44, CRRegister.projectedValue.getter(), v37 = CRRegister.needToFinalizeTimestamps()(), (*(v43 + 8))(v35, v36), v37) || UnknownProperties.needToFinalizeTimestamps()();
  return v38;
}

uint64_t PaperDocumentPage.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v3 = *(v2 - 8);
  v82 = v2;
  v83 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v81 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v77 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v13 = *(v12 - 8);
  v74 = v12;
  v75 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v73 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v72 = v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v18 = *(v17 - 8);
  v70 = v17;
  v71 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v69 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v68 = v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v65 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v64 = v58 - v26;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v60 = v58 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v58 - v35;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v59 = *(v31 + 16);
  v59(v33, v36, v30);
  CRRegister.projectedValue.setter();
  v37 = *(v31 + 8);
  v37(v36, v30);
  v58[1] = type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v59(v33, v36, v30);
  CRRegister.projectedValue.setter();
  v37(v36, v30);
  v38 = v60;
  v39 = v62;
  CRRegister.projectedValue.getter();
  v40 = a1;
  CRRegister.finalizeTimestamps(_:)();
  v41 = v63;
  (*(v63 + 16))(v61, v38, v39);
  CRRegister.projectedValue.setter();
  (*(v41 + 8))(v38, v39);
  v42 = v64;
  v43 = v66;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v44 = v67;
  (*(v67 + 16))(v65, v42, v43);
  CRRegister.projectedValue.setter();
  (*(v44 + 8))(v42, v43);
  v45 = v68;
  v46 = v70;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v47 = v71;
  (*(v71 + 16))(v69, v45, v46);
  CRRegister.projectedValue.setter();
  (*(v47 + 8))(v45, v46);
  v48 = v72;
  v49 = v74;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v50 = v75;
  (*(v75 + 16))(v73, v48, v49);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v48, v49);
  v51 = v76;
  v52 = v78;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v53 = v79;
  (*(v79 + 16))(v77, v51, v52);
  CRRegister.projectedValue.setter();
  (*(v53 + 8))(v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.finalizeTimestamps(_:)();
  v54 = v80;
  v55 = v82;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v56 = v83;
  (*(v83 + 16))(v81, v54, v55);
  CRRegister.projectedValue.setter();
  (*(v56 + 8))(v54, v55);
  return MEMORY[0x1DA6CBA30](v40);
}

uint64_t PaperDocumentPage.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v193 = a1;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v150 - v2;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v150 - v3;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v150 - v4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v150 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v176 = *(v6 - 8);
  v177 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v150 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v181 = *(v8 - 8);
  v182 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v150 - v9;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v194 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v150 - v12;
  v14 = type metadata accessor for CRCodableVersion();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v156 = &v150 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v150 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v150 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v159 = &v150 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v163 = &v150 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v150 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v168 = &v150 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v169 = &v150 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v150 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v174 = &v150 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v178 = &v150 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v179 = &v150 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v183 = &v150 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v184 = &v150 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v150 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v150 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v150 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v150 - v55;
  v186 = type metadata accessor for PaperDocumentPage(0);
  v192 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v57 = *(v15 + 104);
  v189 = *MEMORY[0x1E6995288];
  v190 = v15 + 104;
  v188 = v57;
  v57(v53);
  v58 = static CRCodableVersion.== infix(_:_:)();
  v59 = *(v15 + 8);
  v191 = v53;
  v59(v53, v14);
  if (v58)
  {
    return (*(v15 + 32))(v193, v56, v14);
  }

  v61 = v187;
  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v62 = *(v194 + 8);
  v194 += 8;
  v151 = v62;
  v62(v13, v61);
  v63 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v64 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v65 = (v64 & 1) == 0;
  if (v64)
  {
    v66 = v56;
  }

  else
  {
    v66 = v47;
  }

  if (v65)
  {
    v67 = v56;
  }

  else
  {
    v67 = v47;
  }

  v59(v66, v14);
  v70 = *(v15 + 32);
  v69 = v15 + 32;
  v68 = v70;
  v70(v50, v67, v14);
  v70(v56, v50, v14);
  v71 = v191;
  v188(v191, v189, v14);
  v72 = static CRCodableVersion.== infix(_:_:)();
  v59(v71, v14);
  if (v72)
  {
    return v68(v193, v56, v14);
  }

  v150 = v69;
  v73 = v185;
  v74 = v187;
  CRRegister.projectedValue.getter();
  v75 = v68;
  v76 = v183;
  CRRegister.minEncodingVersion.getter();
  v151(v73, v74);
  v194 = v63;
  v77 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v78 = (v77 & 1) == 0;
  if (v77)
  {
    v79 = v56;
  }

  else
  {
    v79 = v76;
  }

  if (v78)
  {
    v80 = v56;
  }

  else
  {
    v80 = v76;
  }

  v81 = v75;
  v59(v79, v14);
  v82 = v184;
  v75(v184, v80, v14);
  v75(v56, v82, v14);
  v83 = v191;
  v188(v191, v189, v14);
  v84 = static CRCodableVersion.== infix(_:_:)();
  v59(v83, v14);
  v85 = v193;
  if (v84)
  {
    return v81(v85, v56, v14);
  }

  v86 = v59;
  v87 = v180;
  v88 = v182;
  CRRegister.projectedValue.getter();
  v89 = v178;
  CRRegister.minEncodingVersion.getter();
  (*(v181 + 8))(v87, v88);
  v90 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v91 = (v90 & 1) == 0;
  if (v90)
  {
    v92 = v56;
  }

  else
  {
    v92 = v89;
  }

  if (v91)
  {
    v93 = v56;
  }

  else
  {
    v93 = v89;
  }

  v86(v92, v14);
  v94 = v179;
  v75(v179, v93, v14);
  v75(v56, v94, v14);
  v95 = v191;
  v188(v191, v189, v14);
  v96 = static CRCodableVersion.== infix(_:_:)();
  v86(v95, v14);
  if (v96)
  {
    goto LABEL_60;
  }

  v97 = v175;
  v98 = v177;
  CRRegister.projectedValue.getter();
  v99 = v173;
  CRRegister.minEncodingVersion.getter();
  (*(v176 + 8))(v97, v98);
  v100 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v101 = (v100 & 1) == 0;
  v102 = (v100 & 1) != 0 ? v56 : v99;
  v103 = v101 ? v56 : v99;
  v86(v102, v14);
  v104 = v174;
  v81(v174, v103, v14);
  v81(v56, v104, v14);
  v105 = v191;
  v188(v191, v189, v14);
  v106 = static CRCodableVersion.== infix(_:_:)();
  v86(v105, v14);
  if (v106)
  {
    goto LABEL_60;
  }

  v107 = v170;
  v108 = v172;
  CRRegister.projectedValue.getter();
  v109 = v168;
  CRRegister.minEncodingVersion.getter();
  (*(v171 + 8))(v107, v108);
  v110 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v111 = (v110 & 1) == 0;
  v112 = (v110 & 1) != 0 ? v56 : v109;
  v113 = v111 ? v56 : v109;
  v86(v112, v14);
  v114 = v169;
  v81(v169, v113, v14);
  v81(v56, v114, v14);
  v115 = v191;
  v188(v191, v189, v14);
  v116 = static CRCodableVersion.== infix(_:_:)();
  v86(v115, v14);
  if (v116)
  {
    goto LABEL_60;
  }

  v117 = v165;
  v118 = v167;
  CRRegister.projectedValue.getter();
  v119 = v163;
  CRRegister.minEncodingVersion.getter();
  (*(v166 + 8))(v117, v118);
  v120 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v121 = (v120 & 1) == 0;
  v122 = (v120 & 1) != 0 ? v56 : v119;
  v123 = v121 ? v56 : v119;
  v86(v122, v14);
  v124 = v164;
  v81(v164, v123, v14);
  v81(v56, v124, v14);
  v125 = v191;
  v188(v191, v189, v14);
  v126 = static CRCodableVersion.== infix(_:_:)();
  v86(v125, v14);
  if (v126)
  {
    goto LABEL_60;
  }

  v127 = v160;
  v128 = v162;
  CRRegister.projectedValue.getter();
  v129 = v158;
  CRRegister.minEncodingVersion.getter();
  (*(v161 + 8))(v127, v128);
  v130 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v131 = (v130 & 1) == 0;
  v132 = (v130 & 1) != 0 ? v56 : v129;
  v133 = v131 ? v56 : v129;
  v86(v132, v14);
  v134 = v159;
  v81(v159, v133, v14);
  v81(v56, v134, v14);
  v135 = v191;
  v188(v191, v189, v14);
  v136 = static CRCodableVersion.== infix(_:_:)();
  v86(v135, v14);
  if (v136)
  {
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v137 = v156;
  CROrderedSet.minEncodingVersion.getter();
  v138 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v139 = (v138 & 1) == 0;
  if (v138)
  {
    v140 = v56;
  }

  else
  {
    v140 = v137;
  }

  if (v139)
  {
    v137 = v56;
  }

  v86(v140, v14);
  v141 = v157;
  v81(v157, v137, v14);
  v81(v56, v141, v14);
  v142 = v191;
  v188(v191, v189, v14);
  v143 = static CRCodableVersion.== infix(_:_:)();
  v86(v142, v14);
  if (v143)
  {
LABEL_60:
    v85 = v193;
    return v81(v85, v56, v14);
  }

  v144 = v86;
  v145 = v153;
  v146 = v155;
  CRRegister.projectedValue.getter();
  v147 = v152;
  CRRegister.minEncodingVersion.getter();
  (*(v154 + 8))(v145, v146);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v144(v56, v14);
    v148 = v193;
    v149 = v147;
  }

  else
  {
    v144(v147, v14);
    v148 = v193;
    v149 = v56;
  }

  return v81(v148, v149, v14);
}

uint64_t PaperDocumentPage.observableDifference(from:with:)@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v2 = *(v1 - 8);
  v113 = v1;
  v114 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v112 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v101 = &v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v9 = *(v8 - 8);
  v109 = v8;
  v110 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v14 = *(v13 - 8);
  v105 = v13;
  v106 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v117 = &v87 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v87 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v97 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v87 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v119 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v87 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v88 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v118 = &v87 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v116 = &v87 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v120 = &v87 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v96 = &v87 - v47;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v48 = *(v32 + 8);
  v48(v34, v31);
  v48(v37, v31);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v48(v34, v31);
  v48(v37, v31);
  v49 = v89;
  v50 = v91;
  CRRegister.projectedValue.getter();
  v51 = v90;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v52 = *(v92 + 8);
  v52(v51, v50);
  v52(v49, v50);
  v53 = v93;
  v54 = v95;
  CRRegister.projectedValue.getter();
  v55 = v94;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v56 = *(v97 + 8);
  v56(v55, v54);
  v56(v53, v54);
  v57 = v98;
  v58 = v100;
  CRRegister.projectedValue.getter();
  v59 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v60 = *(v102 + 8);
  v60(v59, v58);
  v60(v57, v58);
  v61 = v103;
  v62 = v105;
  CRRegister.projectedValue.getter();
  v63 = v104;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v64 = *(v106 + 8);
  v64(v63, v62);
  v64(v61, v62);
  v65 = v107;
  v66 = v109;
  CRRegister.projectedValue.getter();
  v67 = v108;
  CRRegister.projectedValue.getter();
  v68 = v88;
  CRRegister.observableDifference(from:with:)();
  v69 = *(v110 + 8);
  v69(v67, v66);
  v69(v65, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v70 = v101;
  CROrderedSet.observableDifference(from:with:)();
  v71 = v111;
  v72 = v113;
  CRRegister.projectedValue.getter();
  v73 = v112;
  CRRegister.projectedValue.getter();
  v74 = v96;
  CRRegister.observableDifference(from:with:)();
  v75 = *(v114 + 8);
  v75(v73, v72);
  v75(v71, v72);
  v76 = v121;
  v77 = type metadata accessor for CRValueObservableDifference();
  v78 = *(*(v77 - 8) + 48);
  if (v78(v74, 1, v77) == 1 && v78(v120, 1, v77) == 1 && (v79 = type metadata accessor for ContentsBounds.ObservableDifference(0), (*(*(v79 - 8) + 48))(v119, 1, v79) == 1) && v78(v116, 1, v77) == 1 && v78(v118, 1, v77) == 1 && (v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMd), (*(*(v80 - 8) + 48))(v117, 1, v80) == 1) && v78(v68, 1, v77) == 1 && (v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd), (*(*(v81 - 8) + 48))(v70, 1, v81) == 1) && v76 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v82 = type metadata accessor for PaperDocumentPage.ObservableDifference(0);
    (*(*(v82 - 8) + 56))(v115, 1, 1, v82);
    v83 = v116;
  }

  else
  {
    v84 = v115;
    outlined init with copy of Date?(v74, v115, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v85 = type metadata accessor for PaperDocumentPage.ObservableDifference(0);
    outlined init with copy of Date?(v120, v84 + v85[5], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v119, v84 + v85[6], &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd);
    v83 = v116;
    outlined init with copy of Date?(v116, v84 + v85[7], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v118, v84 + v85[8], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v117, v84 + v85[9], &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd);
    outlined init with copy of Date?(v68, v84 + v85[10], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v70, v84 + v85[11], &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    *(v84 + v85[12]) = v76;
    outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    (*(*(v85 - 1) + 56))(v84, 0, 1, v85);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t PaperDocumentPage.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v45 = *(v0 - 8);
  v46 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v44 = &v38 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = v58;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v21)
  {
    v42 = v17;
    v43 = v15;
    v40 = v13;
    v41 = v11;
    v38 = v8;
    v39 = v10;
    v23 = result;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    v58 = v23;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v24 = *(v43 + 8);
    v24(v20, v14);
    type metadata accessor for PaperDocumentPage(0);
    v25 = v42;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v24(v25, v14);
    v27 = v40;
    v26 = v41;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ContentsBounds?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v57 + 8))(v27, v26);
    v28 = v38;
    v29 = v39;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v29, v28);
    v30 = v53;
    v31 = v55;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFPageID?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v54 + 8))(v30, v31);
    v32 = v50;
    v33 = v52;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v51 + 8))(v32, v33);
    v34 = v47;
    v35 = v49;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v48 + 8))(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v36 = v44;
    v37 = v46;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<[CRKeyPath]> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v45 + 8))(v36, v37);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t PaperDocumentPage.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a1;
  v143 = type metadata accessor for UnknownProperties();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v148 = (&v134 - v5);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v144 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v140 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v134 - v8;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v134 - v9;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v166 = &v134 - v10;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v146 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v158 = &v134 - v11;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v161 = &v134 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v163 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v182 = *(v14 - 8);
  v183 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v167 = &v134 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v175 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v174 = &v134 - v16;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v134 - v19;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v191);
  v188 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v187 = &v134 - v22;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v190);
  v186 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v134 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v134 - v31;
  type metadata accessor for CGRect(0);
  v34 = v33;
  v35 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v194 = 0u;
  v195 = 0u;
  CRRegister.init(wrappedValue:)();
  v36 = type metadata accessor for PaperDocumentPage(0);
  v37 = v36[5];
  v194 = 0u;
  v195 = 0u;
  v168 = v37;
  v184 = v35;
  v185 = v34;
  CRRegister.init(wrappedValue:)();
  v38 = v36[6];
  v39 = type metadata accessor for ContentsBounds(0);
  (*(*(v39 - 8) + 56))(v32, 1, 1, v39);
  outlined init with copy of Date?(v32, v29, &_s8PaperKit14ContentsBoundsOSgMd);
  v40 = lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  v178 = v38;
  v173 = v27;
  v172 = v40;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s8PaperKit14ContentsBoundsOSgMd);
  v41 = v36[7];
  LODWORD(v194) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  v43 = v42;
  v44 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  v171 = v41;
  v170 = v43;
  v169 = v44;
  CRRegister.init(wrappedValue:)();
  v45 = v36[8];
  v46 = type metadata accessor for PDFPageID();
  (*(*(v46 - 8) + 56))(v26, 1, 1, v46);
  outlined init with copy of Date?(v26, v186, &_s8PaperKit9PDFPageIDVSgMd);
  v47 = lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  v164 = v45;
  v162 = v47;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit9PDFPageIDVSgMd);
  v48 = v36[9];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v50 = v187;
  (*(*(v49 - 8) + 56))(v187, 1, 1, v49);
  outlined init with copy of Date?(v50, v188, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v51 = lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v186 = v48;
  v188 = v51;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v52 = v36[10];
  *&v194 = 0;
  v53 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  v187 = v52;
  v157 = v53;
  CRRegister.init(wrappedValue:)();
  v54 = v36[11];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v56 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v57 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v145 = v54;
  v152 = v55;
  CROrderedSet.init()();
  v58 = v36[12];
  *&v194 = MEMORY[0x1E69E7CC0];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  CRRegister.init(wrappedValue:)();
  v60 = v36[13];
  v192 = a2;
  UnknownProperties.init()();
  v61 = v189;
  v62 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v61)
  {

    v98 = v192;
    return outlined destroy of PaperDocumentPage.Partial(v98, type metadata accessor for PaperDocumentPage);
  }

  else
  {
    v137 = v57;
    v138 = v56;
    v136 = v59;
    v135 = v58;
    v63 = v179;
    v64 = v180;
    v66 = v181;
    v65 = v182;
    v67 = v183;
    v134 = v60;
    v189 = v62;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      v68 = v67;
      (*(v176 + 40))(v192, v63, v177);
    }

    else
    {
      v68 = v67;
    }

    v69 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v70 = v65;
    v71 = v178;
    if (v69)
    {
      v72 = v64;
      CRRegister.init(from:)();
      v73 = v66;
      v74 = v192;
      (*(v176 + 40))(v192 + v168, v72, v177);
      v71 = v178;
    }

    else
    {
      v73 = v66;
      v74 = v192;
    }

    v75 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v76 = v175;
    v77 = v174;
    if (v75)
    {
      CRRegister.init(from:)();
      (*(v76 + 40))(v74 + v71, v77, v73);
    }

    v78 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v79 = v186;
    v80 = v171;
    if (v78)
    {
      v81 = v167;
      CRRegister.init(from:)();
      (*(v70 + 40))(v192 + v80, v81, v68);
    }

    v82 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v83 = v166;
    v84 = v165;
    v85 = v164;
    if (v82)
    {
      v86 = v163;
      CRRegister.init(from:)();
      (*(v159 + 40))(v192 + v85, v86, v160);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v87 = v161;
      CRRegister.init(from:)();
      (*(v153 + 40))(v192 + v79, v87, v154);
    }

    v88 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v89 = v187;
    if (v88)
    {
      v90 = v158;
      CRRegister.init(from:)();
      (*(v146 + 40))(&v89[v192], v90, v84);
    }

    v91 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v92 = v156;
    v93 = v155;
    if (v91)
    {
      CROrderedSet.init(from:)();
      (*(v93 + 40))(v192 + v145, v83, v92);
    }

    v94 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v95 = v151;
    v96 = v150;
    v97 = v149;
    if (v94)
    {
      CRRegister.init(from:)();
      (*(v96 + 40))(v192 + v135, v97, v95);
    }

    v100 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v190 = 0;
    v101 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v100);

    *&v194 = v101;
    specialized Set._Variant.remove(_:)(0x73646E756F62, 0xE600000000000000);

    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x73646E756F4263, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x7461746E6569726FLL, 0xEB000000006E6F69);

    specialized Set._Variant.remove(_:)(0x65676150666470, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x676E6977617264, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x7367616C66, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x656D656C65627573, 0xEB0000000073746ELL);

    specialized Set._Variant.remove(_:)(0x7344496F6E6E61, 0xE700000000000000);

    v102 = v194;
    v103 = v194 + 56;
    v104 = 1 << *(v194 + 32);
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    v106 = v105 & *(v194 + 56);
    v107 = (v104 + 63) >> 6;
    v108 = (v144 + 56);

    v109 = 0;
    v191 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v110 = v109;
      v111 = v192;
      if (!v106)
      {
        break;
      }

LABEL_31:
      v112 = __clz(__rbit64(v106));
      v106 &= v106 - 1;
      v113 = (*(v102 + 48) + ((v109 << 10) | (16 * v112)));
      v115 = *v113;
      v114 = v113[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v117 = v147;
        v188 = *(v147 + 48);
        v118 = v148;
        *v148 = v115;
        v118[1] = v114;
        v119 = v118;

        v120 = v190;
        AnyCRDT.init(from:)();
        v190 = v120;
        if (v120)
        {
LABEL_46:

          swift_bridgeObjectRelease_n();
          v98 = v192;
          return outlined destroy of PaperDocumentPage.Partial(v98, type metadata accessor for PaperDocumentPage);
        }

        (*v108)(v119, 0, 1, v117);
        v121 = v139;
        outlined init with take of Range<AttributedString.Index>(v119, v139, &_sSS_9Coherence7AnyCRDTVtMd);
        outlined init with take of Range<AttributedString.Index>(v121, v140, &_sSS_9Coherence7AnyCRDTVtMd);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v191[2] + 1, 1, v191);
        }

        v122 = v144;
        v124 = v191[2];
        v123 = v191[3];
        v125 = v140;
        if (v124 >= v123 >> 1)
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123 > 1, v124 + 1, 1, v191);
          v125 = v140;
        }

        v126 = v191;
        v191[2] = v124 + 1;
        outlined init with take of Range<AttributedString.Index>(v125, v126 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v124, &_sSS_9Coherence7AnyCRDTVtMd);
      }

      else
      {

        v116 = v148;
        (*v108)(v148, 1, 1, v147);
        outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_sSS_9Coherence7AnyCRDTVtSgMd);
      }
    }

    while (1)
    {
      v109 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v109 >= v107)
      {
        break;
      }

      v106 = *(v103 + 8 * v109);
      ++v110;
      if (v106)
      {
        goto LABEL_31;
      }
    }

    v127 = v191;
    if (v191[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
      v128 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v128 = MEMORY[0x1E69E7CC8];
    }

    v129 = v143;
    v130 = v142;
    v131 = v141;
    v132 = v134;
    v196 = v128;
    v133 = v190;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v127, 1, &v196);
    if (v133)
    {

      v98 = v111;
      return outlined destroy of PaperDocumentPage.Partial(v98, type metadata accessor for PaperDocumentPage);
    }

    UnknownProperties.init(_:)();

    return (*(v130 + 40))(v111 + v132, v131, v129);
  }
}

uint64_t PaperDocumentPage.delta(_:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v141 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v155 = *(v3 - 8);
  v156 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v140 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v139 = v126 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v150 = v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v153 = v126 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v149 = v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v152 = v126 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v157 = *(v15 - 8);
  v158 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v138 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v137 = v126 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v148 = v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v168 = v126 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v159 = *(v23 - 8);
  v160 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v136 = v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v135 = v126 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v147 = v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v169 = v126 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v161 = *(v31 - 8);
  v162 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v134 = v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v133 = v126 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v146 = v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v170 = v126 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v40 = *(v39 - 8);
  v163 = v39;
  v164 = v40;
  MEMORY[0x1EEE9AC00](v39);
  v132 = v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v130 = v126 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v145 = v126 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v167 = v126 - v47;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v165 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v128 = v126 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v127 = v126 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v144 = v126 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v166 = v126 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v129 = v55;
  v131 = *(v55 - 8);
  v56 = v131;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v126 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = v126 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v143 = v126 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v142 = v126 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v171 = v126 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v151 = v126 - v69;
  CRRegister.projectedValue.getter();
  v126[1] = a1;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v70 = *(v56 + 8);
  v70(v58, v55);
  v70(v61, v55);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v70(v58, v55);
  v70(v61, v55);
  v71 = v127;
  v72 = v154;
  CRRegister.projectedValue.getter();
  v73 = v128;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v74 = *(v165 + 8);
  v74(v73, v72);
  v74(v71, v72);
  v75 = v130;
  v76 = v163;
  CRRegister.projectedValue.getter();
  v77 = v132;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v78 = *(v164 + 8);
  v78(v77, v76);
  v78(v75, v76);
  v79 = v133;
  v80 = v162;
  CRRegister.projectedValue.getter();
  v81 = v134;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v82 = *(v161 + 8);
  v82(v81, v80);
  v82(v79, v80);
  v83 = v135;
  v84 = v160;
  CRRegister.projectedValue.getter();
  v85 = v136;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v86 = *(v159 + 8);
  v86(v85, v84);
  v86(v83, v84);
  v87 = v137;
  v88 = v158;
  CRRegister.projectedValue.getter();
  v89 = v138;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v90 = *(v157 + 8);
  v90(v89, v88);
  v91 = v88;
  v92 = v167;
  v90(v87, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v93 = v152;
  CROrderedSet.delta(_:from:)();
  v94 = v139;
  v95 = v156;
  CRRegister.projectedValue.getter();
  v96 = v166;
  v97 = v140;
  CRRegister.projectedValue.getter();
  v98 = v153;
  v99 = v97;
  CRRegister.delta(_:from:)();
  v100 = *(v155 + 8);
  v101 = v99;
  v102 = v154;
  v100(v101, v95);
  v103 = v94;
  v104 = v151;
  v100(v103, v95);
  v105 = v131;
  v106 = *(v131 + 48);
  v107 = v129;
  if (v106(v104, 1) == 1 && (v106)(v171, 1, v107) == 1 && (*(v165 + 48))(v96, 1, v102) == 1 && (*(v164 + 48))(v92, 1, v163) == 1 && (*(v161 + 48))(v170, 1, v162) == 1 && (*(v159 + 48))(v169, 1, v160) == 1 && (*(v157 + 48))(v168, 1, v158) == 1 && (v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd), (*(*(v108 - 8) + 48))(v93, 1, v108) == 1) && (*(v155 + 48))(v98, 1, v156) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v109 = type metadata accessor for PaperDocumentPage.Partial(0);
    (*(*(v109 - 8) + 56))(v141, 1, 1, v109);
  }

  else
  {
    outlined init with copy of Date?(v104, v142, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v171, v143, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v96, v144, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    outlined init with copy of Date?(v92, v145, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v170, v146, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    outlined init with copy of Date?(v169, v147, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    outlined init with copy of Date?(v168, v148, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    outlined init with copy of Date?(v93, v149, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    outlined init with copy of Date?(v98, v150, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    v110 = *(v105 + 56);
    v111 = v141;
    v110(v141, 1, 1, v107);
    v112 = type metadata accessor for PaperDocumentPage.Partial(0);
    v140 = v112[5];
    v110(&v140[v111], 1, 1, v107);
    v139 = v112[6];
    (*(v165 + 56))(&v139[v111], 1, 1, v102);
    v113 = v112[7];
    (*(v164 + 56))(v111 + v113, 1, 1, v163);
    v114 = v112[8];
    (*(v161 + 56))(v111 + v114, 1, 1, v162);
    v115 = v112[9];
    (*(v159 + 56))(v111 + v115, 1, 1, v160);
    v116 = v112[10];
    (*(v157 + 56))(v111 + v116, 1, 1, v158);
    v117 = v112[11];
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
    (*(*(v118 - 8) + 56))(v111 + v117, 1, 1, v118);
    v119 = v112[12];
    (*(v155 + 56))(v111 + v119, 1, 1, v156);
    outlined assign with take of UUID?(v142, v111, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v143, &v140[v111], &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v144, &v139[v111], &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    outlined assign with take of UUID?(v145, v111 + v113, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v146, v111 + v114, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    v120 = v111 + v115;
    v98 = v153;
    outlined assign with take of UUID?(v147, v120, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v121 = v111 + v116;
    v93 = v152;
    outlined assign with take of UUID?(v148, v121, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    outlined assign with take of UUID?(v149, v111 + v117, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    outlined assign with take of UUID?(v150, v111 + v119, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v122 = *(*(v112 - 1) + 56);
    v123 = v111;
    v124 = v112;
    v96 = v166;
    v92 = v167;
    v122(v123, 0, 1, v124);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v168, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v169, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v170, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v171, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
}

BOOL PaperDocumentPage.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v125 = &v115 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v126 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v115 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v130 = &v115 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v131 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v118 = &v115 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v135 = &v115 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v136 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v120 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v115 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v149 = &v115 - v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v140 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v123 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v115 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v150 = &v115 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v143 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v128 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v115 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v147 = &v115 - v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v148 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v133 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v115 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v144 = &v115 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v145 = *(v33 - 8);
  v146 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v137 = &v115 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v115 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v141 = &v115 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v115 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v115 - v50;
  v153 = a1;
  outlined init with copy of Date?(a1, v42, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v52 = *(v44 + 48);
  v53 = v52(v42, 1, v43);
  v151 = v1;
  if (v53 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    (*(v44 + 32))(v51, v42, v43);
    CRRegister.projectedValue.getter();
    v54 = CRRegister.canMerge(delta:)();
    v55 = *(v44 + 8);
    v55(v48, v43);
    v55(v51, v43);
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  v152 = type metadata accessor for PaperDocumentPage.Partial(0);
  outlined init with copy of Date?(v153 + v152[5], v39, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v52(v39, 1, v43) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v56 = v150;
    v58 = v148;
    v57 = v149;
    v59 = v147;
  }

  else
  {
    v60 = v141;
    (*(v44 + 32))(v141, v39, v43);
    type metadata accessor for PaperDocumentPage(0);
    CRRegister.projectedValue.getter();
    v61 = CRRegister.canMerge(delta:)();
    v62 = *(v44 + 8);
    v62(v48, v43);
    v62(v60, v43);
    v57 = v149;
    v56 = v150;
    v59 = v147;
    v58 = v148;
    if ((v61 & 1) == 0)
    {
      return 0;
    }
  }

  v63 = v144;
  outlined init with copy of Date?(v153 + v152[6], v144, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  v64 = v145;
  v65 = v146;
  if ((*(v145 + 48))(v63, 1, v146) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  }

  else
  {
    v66 = v137;
    (*(v64 + 32))(v137, v63, v65);
    type metadata accessor for PaperDocumentPage(0);
    v67 = v57;
    v68 = v138;
    CRRegister.projectedValue.getter();
    v69 = CRRegister.canMerge(delta:)();
    v70 = *(v64 + 8);
    v71 = v68;
    v57 = v67;
    v70(v71, v65);
    v72 = v66;
    v56 = v150;
    v70(v72, v65);
    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  v73 = v153;
  outlined init with copy of Date?(v153 + v152[7], v59, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v74 = v142;
  if ((*(v58 + 48))(v59, 1, v142) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v75 = v143;
  }

  else
  {
    v76 = v132;
    (*(v58 + 32))(v132, v59, v74);
    type metadata accessor for PaperDocumentPage(0);
    v77 = v133;
    CRRegister.projectedValue.getter();
    v78 = v74;
    v79 = CRRegister.canMerge(delta:)();
    v80 = *(v58 + 8);
    v80(v77, v78);
    v80(v76, v78);
    v75 = v143;
    if ((v79 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[8], v56, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  v81 = v139;
  if ((*(v75 + 48))(v56, 1, v139) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    v82 = v140;
  }

  else
  {
    v83 = v127;
    (*(v75 + 32))(v127, v56, v81);
    type metadata accessor for PaperDocumentPage(0);
    v84 = v128;
    CRRegister.projectedValue.getter();
    v85 = v81;
    v86 = CRRegister.canMerge(delta:)();
    v87 = *(v75 + 8);
    v87(v84, v85);
    v87(v83, v85);
    v82 = v140;
    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[9], v57, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v88 = v134;
  if ((*(v82 + 48))(v57, 1, v134) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v90 = v135;
    v89 = v136;
  }

  else
  {
    v91 = v122;
    (*(v82 + 32))(v122, v57, v88);
    type metadata accessor for PaperDocumentPage(0);
    v92 = v123;
    CRRegister.projectedValue.getter();
    v93 = CRRegister.canMerge(delta:)();
    v94 = *(v82 + 8);
    v94(v92, v88);
    v94(v91, v88);
    v90 = v135;
    v89 = v136;
    if ((v93 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[10], v90, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v95 = v129;
  if ((*(v89 + 48))(v90, 1, v129) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    v96 = v131;
    v97 = v130;
  }

  else
  {
    v98 = v119;
    (*(v89 + 32))(v119, v90, v95);
    type metadata accessor for PaperDocumentPage(0);
    v99 = v120;
    CRRegister.projectedValue.getter();
    v100 = CRRegister.canMerge(delta:)();
    v101 = *(v89 + 8);
    v101(v99, v95);
    v101(v98, v95);
    v96 = v131;
    v97 = v130;
    if ((v100 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[11], v97, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v102 = v124;
  if ((*(v96 + 48))(v97, 1, v124) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    v103 = v126;
    v104 = v125;
  }

  else
  {
    v105 = v118;
    (*(v96 + 32))(v118, v97, v102);
    v106 = v102;
    type metadata accessor for PaperDocumentPage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    v107 = CROrderedSet.canMerge(delta:)();
    (*(v96 + 8))(v105, v106);
    v103 = v126;
    v104 = v125;
    if ((v107 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[12], v104, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  v108 = v121;
  if ((*(v103 + 48))(v104, 1, v121) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    return 1;
  }

  v109 = v116;
  (*(v103 + 32))(v116, v104, v108);
  type metadata accessor for PaperDocumentPage(0);
  v110 = v117;
  CRRegister.projectedValue.getter();
  v111 = v108;
  v112 = CRRegister.canMerge(delta:)();
  v113 = *(v103 + 8);
  v113(v110, v111);
  v113(v109, v111);
  return (v112 & 1) != 0;
}

BOOL PaperDocumentPage.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v159 = &v120[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v160 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v141 = &v120[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v120[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v120[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v157 = &v120[-v12];
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v162 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v138 = &v120[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v154 = &v120[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v155 = *(v16 - 8);
  v156 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v120[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v136 = &v120[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v120[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v151 = &v120[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v152 = *(v24 - 8);
  v153 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v120[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v120[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v132 = &v120[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v149 = &v120[-v31];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v161 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v131 = &v120[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v130 = &v120[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v129 = &v120[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v146 = &v120[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v147 = *(v39 - 8);
  v148 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v128 = &v120[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v127 = &v120[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v126 = &v120[-v44];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v142 = &v120[-v46];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v125 = &v120[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v124 = &v120[-v49];
  MEMORY[0x1EEE9AC00](v50);
  v143 = &v120[-v51];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = &v120[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v120[-v56];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v123 = &v120[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v120[-v62];
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v120[-v65];
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v120[-v68];
  v70 = PaperDocumentPage.canMerge(delta:)(a1);
  if (v70)
  {
    v121 = v70;
    v122 = v5;
    v164 = v1;
    v165 = a1;
    outlined init with copy of Date?(a1, v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v71 = *(v59 + 48);
    if (v71(v57, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v59 + 32))(v69, v57, v58);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v59 + 16))(v63, v66, v58);
      CRRegister.projectedValue.setter();
      v72 = *(v59 + 8);
      v72(v66, v58);
      v72(v69, v58);
    }

    v73 = type metadata accessor for PaperDocumentPage.Partial(0);
    outlined init with copy of Date?(v165 + v73[5], v54, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v71(v54, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v74 = v123;
      (*(v59 + 32))(v123, v54, v58);
      type metadata accessor for PaperDocumentPage(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v59 + 16))(v63, v66, v58);
      CRRegister.projectedValue.setter();
      v75 = *(v59 + 8);
      v75(v66, v58);
      v75(v74, v58);
    }

    v76 = v161;
    v78 = v147;
    v77 = v148;
    v79 = v144;
    v80 = v142;
    v81 = v165;
    outlined init with copy of Date?(v165 + v73[6], v142, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    v82 = v145;
    v83 = (*(v79 + 48))(v80, 1, v145);
    v163 = v73;
    if (v83 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    }

    else
    {
      (*(v79 + 32))(v143, v80, v82);
      type metadata accessor for PaperDocumentPage(0);
      v84 = v124;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v79 + 16))(v125, v84, v82);
      v73 = v163;
      CRRegister.projectedValue.setter();
      v85 = *(v79 + 8);
      v86 = v84;
      v81 = v165;
      v85(v86, v82);
      v76 = v161;
      v85(v143, v82);
    }

    v87 = v146;
    outlined init with copy of Date?(v81 + v73[7], v146, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    if ((*(v78 + 48))(v87, 1, v77) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v88 = v126;
      (*(v78 + 32))(v126, v87, v77);
      type metadata accessor for PaperDocumentPage(0);
      v89 = v127;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v78 + 16))(v128, v89, v77);
      v73 = v163;
      CRRegister.projectedValue.setter();
      v90 = *(v78 + 8);
      v90(v89, v77);
      v90(v88, v77);
    }

    v91 = v149;
    v92 = v150;
    v93 = v152;
    outlined init with copy of Date?(v81 + v73[8], v149, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    if ((*(v76 + 48))(v91, 1, v92) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd);
    }

    else
    {
      v94 = v129;
      (*(v76 + 32))(v129, v91, v92);
      type metadata accessor for PaperDocumentPage(0);
      v95 = v130;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v76 + 16))(v131, v95, v92);
      v81 = v165;
      CRRegister.projectedValue.setter();
      v96 = *(v76 + 8);
      v96(v95, v92);
      v96(v94, v92);
    }

    v97 = v151;
    v98 = v155;
    v99 = v153;
    outlined init with copy of Date?(v81 + v163[9], v151, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    if ((*(v93 + 48))(v97, 1, v99) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    }

    else
    {
      v101 = v132;
      (*(v93 + 32))(v132, v97, v99);
      type metadata accessor for PaperDocumentPage(0);
      v102 = v133;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v93 + 16))(v134, v102, v99);
      CRRegister.projectedValue.setter();
      v103 = *(v93 + 8);
      v103(v102, v99);
      v103(v101, v99);
    }

    v100 = v154;
    v104 = v163;
    outlined init with copy of Date?(v81 + v163[10], v154, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    v105 = v156;
    if ((*(v98 + 48))(v100, 1, v156) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    }

    else
    {
      v106 = v135;
      (*(v98 + 32))(v135, v100, v105);
      type metadata accessor for PaperDocumentPage(0);
      v107 = v136;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v98 + 16))(v137, v107, v105);
      v81 = v165;
      CRRegister.projectedValue.setter();
      v108 = *(v98 + 8);
      v108(v107, v105);
      v108(v106, v105);
    }

    v109 = v157;
    v110 = v158;
    v111 = v160;
    outlined init with copy of Date?(v81 + v104[11], v157, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    if ((*(v162 + 48))(v109, 1, v110) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    }

    else
    {
      v112 = v162;
      v113 = v138;
      (*(v162 + 32))(v138, v109, v110);
      type metadata accessor for PaperDocumentPage(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
      CROrderedSet.merge(delta:)();
      (*(v112 + 8))(v113, v110);
    }

    v114 = v159;
    outlined init with copy of Date?(v81 + v104[12], v159, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    v115 = v122;
    if ((*(v111 + 48))(v114, 1, v122) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd);
    }

    else
    {
      v116 = v139;
      (*(v111 + 32))(v139, v114, v115);
      type metadata accessor for PaperDocumentPage(0);
      v117 = v140;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v111 + 16))(v141, v117, v115);
      CRRegister.projectedValue.setter();
      v118 = *(v111 + 8);
      v118(v117, v115);
      v118(v116, v115);
    }

    LOBYTE(v70) = v121;
  }

  return v70;
}

uint64_t protocol witness for CRDT.context.getter in conformance PaperDocumentPage(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PaperDocumentPage(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PaperDocumentPage.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized PaperPage.axisAlignedRotationInDegrees.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  if ((v6 - 1) >= 8)
  {
    goto LABEL_11;
  }

  v0 = *&qword_1D4062198[v6 - 1] / 3.14159265 * 180.0 * 90.0;
  v1 = floor(v0);
  v2 = v0 - v1;
  v3 = ceil(v0);
  if (v2 < 0.49)
  {
    v3 = v1;
  }

  v4 = v3 / 90.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

{
  v0 = off_1F4F62A88[0];
  v1 = type metadata accessor for Paper(0);
  v2 = (v0)(v1, &protocol witness table for Paper);
  if ((v2 - 1) >= 8)
  {
    goto LABEL_11;
  }

  v3 = *&qword_1D4062198[v2 - 1] / 3.14159265 * 180.0 * 90.0;
  v4 = floor(v3);
  v5 = v3 - v4;
  v6 = ceil(v3);
  if (v5 < 0.49)
  {
    v6 = v4;
  }

  v7 = v6 / 90.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v7 > -9.22337204e18)
  {
    if (v7 < 9.22337204e18)
    {
      return v7;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

{
  v0 = off_1F4F5EF28[0];
  v1 = type metadata accessor for Image(0);
  v2 = (v0)(v1, &protocol witness table for Image);
  if ((v2 - 1) >= 8)
  {
    goto LABEL_11;
  }

  v3 = *&qword_1D4062198[v2 - 1] / 3.14159265 * 180.0 * 90.0;
  v4 = floor(v3);
  v5 = v3 - v4;
  v6 = ceil(v3);
  if (v5 < 0.49)
  {
    v6 = v4;
  }

  v7 = v6 / 90.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v7 > -9.22337204e18)
  {
    if (v7 < 9.22337204e18)
    {
      return v7;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t outlined copy of WrappedObservableDifference<[CRValueObservableDifference?]>?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined consume of WrappedObservableDifference<[CRValueObservableDifference?]>?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined init with copy of PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void outlined consume of PaperDocument.PDFDocumentUse(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t outlined destroy of PaperDocumentPage.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized static PaperDocumentPage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v78 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v82 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v81 = v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v86 = *(v19 - 8);
  v87 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v85 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v89 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v88 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v68 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v68 - v33;
  v90 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v29 + 8);
  v35(v31, v28);
  v35(v34, v28);
  if ((a1 & 1) != 0
    && (v68[0] = v15, v36 = type metadata accessor for PaperDocumentPage(0), CRRegister.projectedValue.getter(), v68[1] = v36, CRRegister.projectedValue.getter(), v37 = dispatch thunk of static Equatable.== infix(_:_:)(), v35(v31, v28), v35(v34, v28), (v37 & 1) != 0)
    && (CRRegister.projectedValue.getter(), v38 = v88, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ContentsBounds?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd), v39 = dispatch thunk of static Equatable.== infix(_:_:)(), v40 = *(v89 + 8), v40(v38, v23), v40(v27, v23), (v39 & 1) != 0)
    && (v41 = v84, v42 = v87, CRRegister.projectedValue.getter(), v43 = v85, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd), v44 = dispatch thunk of static Equatable.== infix(_:_:)(), v45 = *(v86 + 8), v45(v43, v42), v45(v41, v42), (v44 & 1) != 0)
    && (v46 = v81, v47 = v68[0], CRRegister.projectedValue.getter(), v48 = v82, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFPageID?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd), v49 = dispatch thunk of static Equatable.== infix(_:_:)(), v50 = *(v83 + 8), v50(v48, v47), v50(v46, v47), (v49 & 1) != 0)
    && (v51 = v77, v52 = v80, CRRegister.projectedValue.getter(), v53 = v78, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd), v54 = dispatch thunk of static Equatable.== infix(_:_:)(), v55 = *(v79 + 8), v55(v53, v52), v55(v51, v52), (v54 & 1) != 0)
    && (v56 = v73, v57 = v76, CRRegister.projectedValue.getter(), v58 = v74, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd), v59 = dispatch thunk of static Equatable.== infix(_:_:)(), v60 = *(v75 + 8), v60(v58, v57), v60(v56, v57), (v59 & 1) != 0)
    && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0)
    && (v61 = v69, v62 = v72, CRRegister.projectedValue.getter(), v63 = v70, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<[CRKeyPath]> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd), v64 = dispatch thunk of static Equatable.== infix(_:_:)(), v65 = *(v71 + 8), v65(v63, v62), v65(v61, v62), (v64 & 1) != 0))
  {
    v66 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v66 = 0;
  }

  return v66 & 1;
}

uint64_t specialized PaperDocumentPage.finishDecode(from:pageID:assetManager:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = v25 - v9;
  [a1 boundsForBox_];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [a1 boundsForBox_];
  v27.origin.y = v19;
  v27.size.height = v20;
  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  PaperDocumentPage.setContentsBounds(_:fullBounds:)(v26, v27);
  LODWORD(v25[0]) = specialized CGImagePropertyOrientation.init(rotationAngle:)([a1 rotation] / 180.0 * 3.14159265);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  outlined init with copy of PaperDocumentPage(a2, v10, type metadata accessor for PDFPageID);
  v21 = type metadata accessor for PDFPageID();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  outlined init with copy of Date?(v10, v6, &_s8PaperKit9PDFPageIDVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit9PDFPageIDVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  type metadata accessor for CRKeyPath();
  v25[0] = CROrderedSet.map<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
  CRRegister.wrappedValue.setter();
  type metadata accessor for PaperKitPDFPage(0);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    CRRegister.wrappedValue.getter();
    if (*(v23 + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState))
    {
    }

    else
    {
      *(v23 + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState) = v25[0];
    }
  }

  return 1;
}

uint64_t outlined init with take of PDFPageID(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for PaperDocumentPage()
{
  type metadata accessor for CRRegister<CGRect>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRRegister<ContentsBounds?>(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR, lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRRegister<CGImagePropertyOrientation>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CRRegister<ContentsBounds?>(319, &lazy cache variable for type metadata for CRRegister<PDFPageID?>, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR, lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CRRegister<ContentsBounds?>(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR, lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CRRegister<CanvasElementFlags>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>();
              if (v6 <= 0x3F)
              {
                type metadata accessor for CRRegister<ContentsBounds?>(319, &lazy cache variable for type metadata for CRRegister<[CRKeyPath]>, &_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR, lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for UnknownProperties();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for CRRegister<CanvasElementFlags>()
{
  if (!lazy cache variable for type metadata for CRRegister<CanvasElementFlags>)
  {
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<CanvasElementFlags>);
    }
  }
}

void type metadata accessor for CRRegister<ContentsBounds?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = type metadata accessor for CRRegister();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata completion function for PaperDocumentPage.ObservableDifference()
{
  _s9Coherence27CRValueObservableDifferenceOSgMaTm_0(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
  if (v0 <= 0x3F)
  {
    _s9Coherence27CRValueObservableDifferenceOSgMaTm_0(319, &lazy cache variable for type metadata for ContentsBounds.ObservableDifference?, type metadata accessor for ContentsBounds.ObservableDifference);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for Ref<PKDrawingStruct>.ObservableDifference?, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.ObservableDifference?, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for WrappedObservableDifference<[CRValueObservableDifference?]>?, &_s9Coherence27WrappedObservableDifferenceOySayAA07CRValuecD0OSgGGMd);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void _s9Coherence27CRValueObservableDifferenceOSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for PaperDocumentPage.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGImagePropertyOrientation>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFPageID?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CanvasElementFlags>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MutatingAction?, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<[CRKeyPath]>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GMd);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for PaperDocumentPage.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>?, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGImagePropertyOrientation>?, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFPageID?>?, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>?, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CanvasElementFlags>?, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MergeableDelta?, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<[CRKeyPath]>?, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for ValueTypes_BezierPath()
{
  type metadata accessor for [ValueTypes_BezierPath.ElementType](319, &lazy cache variable for type metadata for [ValueTypes_BezierPath.ElementType]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [ValueTypes_BezierPath.ElementType](319, &lazy cache variable for type metadata for [Double]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [ValueTypes_BezierPath.ElementType](uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ValueTypes_BezierPath.ElementType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ValueTypes_BezierPath.ElementType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for ValueTypes_BezierPath.ElementType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ValueTypes_BezierPath.ElementType(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void protocol witness for Enum.init(rawValue:) in conformance ValueTypes_BezierPath.ElementType(uint64_t a1@<X8>)
{
  specialized ValueTypes_BezierPath.ElementType.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance ValueTypes_BezierPath.ElementType(uint64_t a1@<X8>)
{
  specialized ValueTypes_BezierPath.ElementType.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ValueTypes_BezierPath.ElementType()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ValueTypes_BezierPath.ElementType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ValueTypes_BezierPath.ElementType()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType()
{
  result = lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType;
  if (!lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType;
  if (!lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType;
  if (!lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType;
  if (!lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ValueTypes_BezierPath.ElementType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ValueTypes_BezierPath.ElementType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ValueTypes_BezierPath.ElementType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8PaperKit21ValueTypes_BezierPathV11ElementTypeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ValueTypes_BezierPath.ElementType] and conformance [A]);
  }

  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ValueTypes_BezierPath._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ValueTypes_BezierPath._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405C990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "elements";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "coordinates";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ValueTypes_BezierPath.ElementType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ValueTypes_BezierPath.ElementType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D40621E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "moveTo";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "lineTo";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "quadCurveTo";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "curveTo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "closeSubpath";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ValueTypes_PencilKitTool._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ValueTypes_PencilKitTool._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405C110;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "color";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "azimuth";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ValueTypes_BezierPath.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType();
        dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ValueTypes_BezierPath.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (lazy protocol witness table accessor for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (result = dispatch thunk of Visitor.visitPackedDoubleField(value:fieldNumber:)(), !v1))
    {
      type metadata accessor for ValueTypes_BezierPath(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ValueTypes_BezierPath@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance ValueTypes_BezierPath@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance ValueTypes_BezierPath(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ValueTypes_BezierPath(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ValueTypes_BezierPath(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ValueTypes_BezierPath()
{
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ValueTypes_BezierPath(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit21ValueTypes_BezierPathV11ElementTypeO_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t ValueTypes_PencilKitTool.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        type metadata accessor for ValueTypes_PencilKitTool(0);
LABEL_12:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }
}

uint64_t ValueTypes_PencilKitTool.traverse<A>(visitor:)()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v5 = v0[2];
    v6 = v0[3];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2)
      {
        goto LABEL_14;
      }

      v8 = *(v5 + 16);
      v9 = *(v5 + 24);
    }

    else
    {
      if (!v7)
      {
        if ((v6 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        goto LABEL_14;
      }

      v8 = v5;
      v9 = v5 >> 32;
    }

    if (v8 != v9)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!v0[4] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + *(type metadata accessor for ValueTypes_PencilKitTool(0) + 32)))
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      if (!v1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ValueTypes_PencilKitTool@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_1D40621F0;
  *(a2 + 32) = 0;
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 32)) = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance ValueTypes_PencilKitTool@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance ValueTypes_PencilKitTool(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ValueTypes_PencilKitTool(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool, type metadata accessor for ValueTypes_PencilKitTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance ValueTypes_BezierPath@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ValueTypes_PencilKitTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool, type metadata accessor for ValueTypes_PencilKitTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ValueTypes_BezierPath()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ValueTypes_PencilKitTool()
{
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool, type metadata accessor for ValueTypes_PencilKitTool);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ValueTypes_BezierPath()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static ValueTypes_PencilKitTool.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v5 = type metadata accessor for ValueTypes_PencilKitTool(0);
  if (*(a1 + *(v5 + 32)) != *(a2 + *(v5 + 32)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for ValueTypes_PencilKitTool()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(void *a1, uint64_t a2, int a3, int a4, double a5, double a6, double a7)
{
  LODWORD(v89) = a4;
  v85 = a3;
  v84 = a2;
  v90 = a1;
  v11 = type metadata accessor for PKInkingTool.InkType();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PKInk();
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v83 - v18;
  v20 = type metadata accessor for PKDrawing();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v83 - v25;
  if (a5 == 0.0)
  {
    v27 = 0;
    if (a6 == 0.0)
    {
      return v27;
    }
  }

  outlined init with copy of Date?(v7 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v19, &_s9PencilKit9PKDrawingVSgMd);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9PencilKit9PKDrawingVSgMd);
    v28 = *(v7 + OBJC_IVAR____TtC8PaperKit13SignatureItem_path);
    if (v28)
    {
      v29 = v28;
      BoundingBox = CGPathGetBoundingBox(v29);
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      v34 = a5 / CGRectGetWidth(BoundingBox);
      v98.origin.x = x;
      v98.origin.y = y;
      v98.size.width = width;
      v98.size.height = height;
      v35 = a6 / CGRectGetHeight(v98);
      if (v35 >= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      v37 = v90;
      if (v90)
      {
        v38 = v90;
      }

      else
      {
        v73 = [objc_opt_self() blackColor];
        v38 = 0;
        v37 = v73;
      }

      v74 = v38;
      v75 = static PKInkingTool.convertColor(_:from:to:)();

      v76 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
      v77 = swift_allocObject();
      *(v77 + 16) = v36;
      *(v77 + 24) = x;
      *(v77 + 32) = y;
      *(v77 + 40) = width;
      *(v77 + 48) = height;
      *(v77 + 56) = v75;
      *(v77 + 64) = v29;
      v78 = swift_allocObject();
      *(v78 + 16) = partial apply for closure #3 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:);
      *(v78 + 24) = v77;
      v95 = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
      v96 = v78;
      aBlock = MEMORY[0x1E69E9820];
      v92 = 1107296256;
      v93 = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v94 = &block_descriptor_22;
      v79 = _Block_copy(&aBlock);
      v80 = v29;
      v81 = v75;

      v27 = [v76 imageWithActions_];

      _Block_release(v79);
      LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

      if ((v80 & 1) == 0)
      {
        return v27;
      }

      __break(1u);
    }

    else if (one-time initialization token for SignatureLogger == -1)
    {
LABEL_17:
      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, SignatureLogger);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1D38C4000, v48, v49, "signature image but no path or drawing", v50, 2u);
        MEMORY[0x1DA6D0660](v50, -1, -1);
      }

      return 0;
    }

    swift_once();
    goto LABEL_17;
  }

  (*(v21 + 32))(v26, v19, v20);
  if (a7 <= 1.0)
  {
    a7 = 1.0;
  }

  v39 = [objc_allocWithZone(MEMORY[0x1E6978450]) initSyncWithSize:a5 scale:{a6, a7}];
  v40 = v89 & 1;
  v89 = v39;
  [v39 setInvertColors_];
  PKDrawing.bounds.getter();
  v42 = v84;
  if (v84 <= 1)
  {
    v42 = 1;
  }

  v43 = v42;
  v44 = a5 / v41;
  v45 = v90;
  if (v90)
  {
    v46 = v90;
  }

  else
  {
    if (one-time initialization token for defaultColor != -1)
    {
      swift_once();
    }

    v46 = static SignatureItem.defaultColor;
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E6978328], v11);
  v51 = v45;
  v90 = v46;
  v52 = v86;
  PKInk.init(_:color:)();
  v53 = 2.0;
  if ((v85 & 1) == 0)
  {
    v53 = v43;
  }

  v54 = v53 / sqrt(v44) / 10.0 + 2.1;
  v55 = PKDrawing.strokes.getter();
  MEMORY[0x1EEE9AC00](v55);
  *(&v83 - 2) = v54;
  *(&v83 - 1) = v52;
  v56 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9PencilKit8PKStrokeVG_AHs5NeverOTg5(partial apply for closure #1 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:), (&v83 - 4), v55);

  aBlock = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit8PKStrokeVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKStroke] and conformance [A], &_sSay9PencilKit8PKStrokeVGMd);
  PKDrawing.init<A>(strokes:)();
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  PKDrawing._bridgeToObjectiveC()(v58);
  v60 = v59;
  PKDrawing.bounds.getter();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v95 = partial apply for closure #2 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:);
  v96 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v92 = 1107296256;
  v93 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UIImage?) -> ();
  v94 = &block_descriptor_9;
  v69 = _Block_copy(&aBlock);

  v70 = v89;
  [v89 renderDrawing:v60 clippedToStrokeSpaceRect:v69 scale:v62 completion:{v64, v66, v68, v44}];
  _Block_release(v69);

  v71 = *(v21 + 8);
  v71(v23, v20);
  v71(v26, v20);
  swift_beginAccess();
  v27 = *(v57 + 16);
  v72 = v27;

  (*(v87 + 8))(v52, v88);
  return v27;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12CoreGraphics7CGFloatVG_AHs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v15;
  for (i = (a3 + 32); ; ++i)
  {
    v13 = *i;
    a1(&v14, &v13);
    if (v3)
    {
      break;
    }

    v9 = v14;
    v15 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v5 = v15;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 8 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9PencilKit8PKStrokeVG_AHs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for PKStroke();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v9 = *i;
    if (*i > 2)
    {
      switch(v9)
      {
        case 3uLL:
          if (a2 == 3)
          {
            v12 = *(i - 1);
            v13 = 3;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 3;
          goto LABEL_24;
        case 4uLL:
          if (a2 == 4)
          {
            v12 = *(i - 1);
            v13 = 4;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 4;
          goto LABEL_24;
        case 5uLL:
          if (a2 == 5)
          {
            v12 = *(i - 1);
            v13 = 5;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 5;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v9)
      {
        case 0uLL:
          if (!a2)
          {
            v12 = *(i - 1);
            v13 = 0;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 0;
          goto LABEL_24;
        case 1uLL:
          if (a2 == 1)
          {
            v12 = *(i - 1);
            v13 = 1;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 1;
          goto LABEL_24;
        case 2uLL:
          if (a2 == 2)
          {
            v12 = *(i - 1);
            v13 = 2;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 2;
          goto LABEL_24;
      }
    }

    if (a2 < 6)
    {
      outlined copy of SignatureDescription(a1, a2);
      outlined copy of SignatureDescription(v8, v9);
      v10 = v9;
LABEL_24:
      outlined consume of SignatureDescription(v8, v10);
      outlined consume of SignatureDescription(a1, a2);
      goto LABEL_25;
    }

    if (v8 == a1 && v9 == a2)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of SignatureDescription(a1, a2);
    outlined copy of SignatureDescription(v8, v9);
    outlined consume of SignatureDescription(v8, v9);
    outlined consume of SignatureDescription(a1, a2);
    if (v11)
    {
      return v6;
    }

LABEL_25:
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  outlined copy of SignatureDescription(a1, a2);
  outlined copy of SignatureDescription(a1, a2);
  v12 = a1;
  v13 = a2;
LABEL_39:
  outlined consume of SignatureDescription(v12, v13);
  outlined consume of SignatureDescription(a1, a2);
  return v6;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = type metadata accessor for PDFPageID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = (&v28 - v8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v28 - v9;
  v29 = type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 + 16);
  if (v33)
  {
    v28 = v6;
    v14 = 0;
    v15 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v32 = *(v11 + 72);
    v16 = (v4 + 48);
    v17 = &_s8PaperKit9PDFPageIDVSgMd;
    v30 = v16;
    do
    {
      outlined init with copy of PaperDocument.PDFPageAndPaperPage(v15, v13);
      v18 = *(v34 + 48);
      outlined init with copy of Date?(v13, v10, v17);
      outlined init with copy of Date?(v35, &v10[v18], v17);
      v19 = *v16;
      if ((*v16)(v10, 1, v3) == 1)
      {
        if (v19(&v10[v18], 1, v3) != 1)
        {
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v13, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
          goto LABEL_4;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v10, v17);
      }

      else
      {
        v21 = v17;
        v22 = v31;
        v23 = v21;
        outlined init with copy of Date?(v10, v31, v21);
        if (v19(&v10[v18], 1, v3) == 1)
        {
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v13, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v22, type metadata accessor for PDFPageID);
          v17 = v23;
          v16 = v30;
LABEL_4:
          outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit9PDFPageIDVSg_ADtMd);
          goto LABEL_5;
        }

        v24 = &v10[v18];
        v25 = v28;
        outlined init with take of PDFPageID(v24, v28);
        if (*v22 != *v25)
        {
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v25, type metadata accessor for PDFPageID);
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v22, type metadata accessor for PDFPageID);
          v17 = v23;
          outlined destroy of StocksKitCurrencyCache.Provider?(v10, v23);
          v16 = v30;
LABEL_17:
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v13, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
          goto LABEL_5;
        }

        v26 = static CRAsset.== infix(_:_:)();
        outlined destroy of PaperDocument.PDFPageAndPaperPage(v25, type metadata accessor for PDFPageID);
        outlined destroy of PaperDocument.PDFPageAndPaperPage(v22, type metadata accessor for PDFPageID);
        v17 = v23;
        outlined destroy of StocksKitCurrencyCache.Provider?(v10, v23);
        v16 = v30;
        if ((v26 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
      v20 = static WeakTagged_3.== infix(_:_:)();
      outlined destroy of PaperDocument.PDFPageAndPaperPage(v13, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
      if (v20)
      {
        return v14;
      }

LABEL_5:
      ++v14;
      v15 += v32;
    }

    while (v33 != v14);
  }

  return 0;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA6CE0C0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  v2 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = __CocoaSet.count.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a2 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1DA6CE0C0](v4);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v7)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a2 + 8 * v4 + 32) == a1)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t specialized Collection<>.firstIndex(of:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  dispatch thunk of Collection._customIndexOfEquatableElement(_:)();
  if ((v11 & 1) == 0)
  {
    return v10;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v4 = v12;
  if (v12 == v10)
  {
    return 0;
  }

  v5 = (v1 + 16);
  v6 = (v1 + 8);
  while (1)
  {
    v7 = dispatch thunk of Collection.subscript.read();
    (*v5)(v3);
    (v7)(&v10, 0);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
    LOBYTE(v7) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v6)(v3, v0);
    if (v7)
    {
      break;
    }

    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v4 = v12;
    if (v12 == v10)
    {
      return 0;
    }
  }

  return v4;
}

double SignatureItem.size.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for PKDrawing();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v0 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v3, &_s9PencilKit9PKDrawingVSgMd);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9PencilKit9PKDrawingVSgMd);
    v8 = *(v0 + OBJC_IVAR____TtC8PaperKit13SignatureItem_path);
    if (v8)
    {
      BoundingBox = CGPathGetBoundingBox(v8);
      return BoundingBox.size.width;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    PKDrawing.bounds.getter();
    v9 = v10;
    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

uint64_t SignatureItem.dataForKeychain()()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v2 = MEMORY[0x1DA6CCED0](0x74616E6769534B41, 0xEB00000000657275);
  [v1 setClassName:v2 forClass:swift_getObjCClassFromMetadata()];

  [v1 encodeObject:v0 forKey:*MEMORY[0x1E696A508]];
  v3 = [v1 encodedData];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 finishEncoding];
  return v4;
}

UIImage_optional __swiftcall SignatureItem.image(withMaximumSize:color:lineWidth:traitCollection:)(CGSize withMaximumSize, UIColor_optional color, Swift::Int_optional lineWidth, UITraitCollection traitCollection)
{
  value = lineWidth.value;
  v5 = *&color.is_nil;
  isa = color.value.super.isa;
  height = withMaximumSize.height;
  width = withMaximumSize.width;
  v9 = objc_opt_self();
  v10 = [v9 currentTraitCollection];
  v11 = [v10 userInterfaceStyle];

  v12 = [v9 currentTraitCollection];
  [v12 displayScale];
  v14 = v13;

  v15 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(isa, v5, value & 1, v11 == 2, width, height, v14);
  result.value.super.isa = v15;
  result.is_nil = v16;
  return result;
}

id SignatureItem.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v89 - v13;
  v15 = type metadata accessor for UUID();
  v95 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  v23 = v18 && (v19 = v18, v20 = a1, v21 = MEMORY[0x1DA6CCED0](0x74616E6769534B41, 0xEB00000000657275), v22 = [v19 classForClassName_], v20, v21, v22) && swift_getObjCClassMetadata() == ObjectType;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSUUID);
  v24 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v24)
  {
    if (one-time initialization token for SignatureLogger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, SignatureLogger);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D38C4000, v30, v31, "decode did not find UUID", v32, 2u);
      MEMORY[0x1DA6D0660](v32, -1, -1);
    }

    goto LABEL_39;
  }

  v25 = v24;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = OBJC_IVAR____TtC8PaperKit13SignatureItem_uniqueID;
  (*(v95 + 32))(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_uniqueID, v17, v15);
  v27 = v2;
  v28 = v23 || specialized static SignatureManager.ownsSignature(_:)();
  v93 = v2;
  v90 = v26;
  v91 = v15;
  v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_isOwned] = v28;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSDate);
  v33 = NSCoder.decodeObject<A>(of:forKey:)();
  v34 = ObjectType;
  if (v33)
  {
    v35 = v33;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  (*(v38 + 56))(v14, v36, 1, v37);
  v39 = OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
  outlined init with take of Range<AttributedString.Index>(v14, &v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate], &_s10Foundation4DateVSgMd);
  if (v23)
  {
    outlined init with copy of Date?(&v27[v39], v11, &_s10Foundation4DateVSgMd);

    v40 = (*(v38 + 48))(v11, 1, v37);
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s10Foundation4DateVSgMd);
    v41 = v34;
    if (v40 == 1)
    {
      v42 = v91;
      v43 = v93;
      if (one-time initialization token for SignatureLogger != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, SignatureLogger);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1D38C4000, v45, v46, "decode did not find creationDate", v47, 2u);
        MEMORY[0x1DA6D0660](v47, -1, -1);
      }

      (*(v95 + 8))(v43 + v90, v42);
      v48 = &_s10Foundation4DateVSgMd;
      v49 = &v27[v39];
LABEL_38:
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, v48);
LABEL_39:
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  else
  {

    v41 = v34;
  }

  v50 = MEMORY[0x1DA6CCED0](0x656E696C65736162, 0xEE0074657366664FLL);
  [a1 decodeFloatForKey_];
  v52 = v51;

  *&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_baselineOffset] = v52;
  v53 = MEMORY[0x1DA6CCED0](0x6550646C756F6873, 0xED00007473697372);
  v54 = [a1 decodeBoolForKey_];

  v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_shouldPersist] = v54;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSData);
  v55 = NSCoder.decodeObject<A>(of:forKey:)();
  v56 = v93;
  v89 = v39;
  if (v55)
  {
    v57 = v55;
    v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = specialized static SignatureItem.signaturePath(from:)(v58, v60);
    outlined consume of Data._Representation(v58, v60);
  }

  else
  {
    v61 = 0;
  }

  *&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_path] = v61;
  v62 = NSCoder.decodeObject<A>(of:forKey:)();
  v63 = v94;
  if (v62)
  {
    v64 = v62;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    PKDrawing.init(data:)();
    v67 = type metadata accessor for PKDrawing();
    (*(*(v67 - 8) + 56))(v63, 0, 1, v67);
    outlined init with take of Range<AttributedString.Index>(v63, &v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing], &_s9PencilKit9PKDrawingVSgMd);
  }

  else
  {
    v65 = OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing;
    v66 = type metadata accessor for PKDrawing();
    (*(*(v66 - 8) + 56))(&v27[v65], 1, 1, v66);
  }

  if (!*&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_path])
  {
    v68 = v92;
    outlined init with copy of Date?(&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing], v92, &_s9PencilKit9PKDrawingVSgMd);
    v69 = type metadata accessor for PKDrawing();
    v70 = (*(*(v69 - 8) + 48))(v68, 1, v69);
    outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9PencilKit9PKDrawingVSgMd);
    if (v70 == 1)
    {
      if (one-time initialization token for SignatureLogger != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, SignatureLogger);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1D38C4000, v72, v73, "decode did not find at least one of CGPath or PKDrawing", v74, 2u);
        MEMORY[0x1DA6D0660](v74, -1, -1);
      }

      (*(v95 + 8))(v56 + v90, v91);
      outlined destroy of StocksKitCurrencyCache.Provider?(&v27[v89], &_s10Foundation4DateVSgMd);

      v48 = &_s9PencilKit9PKDrawingVSgMd;
      v49 = &v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing];
      goto LABEL_38;
    }
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSString);
  v76 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v76)
  {
    v77 = v76;
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    SignatureDescription.init(caption:)(v78, v80, &v97);
  }

  else
  {
    v81 = MEMORY[0x1DA6CCED0](0x7470697263736564, 0xEE006761546E6F69);
    v82 = [a1 decodeIntegerForKey_];

    v83 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v83)
    {
      v84 = v83;
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;
    }

    else
    {
      v85 = 0;
      v87 = 0;
    }

    SignatureDescription.init(tag:customDescription:)(v82, v85, v87, &v97);
  }

  *&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription] = v97;
  v96.receiver = v27;
  v96.super_class = v41;
  v88 = objc_msgSendSuper2(&v96, sel_init, v89);

  return v88;
}

Swift::Void __swiftcall SignatureItem.encode(with:)(NSCoder with)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v59 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 classNameForClass_];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v16 == 0x74616E6769534B41 && v18 == 0xEB00000000657275)
      {

        LOBYTE(v13) = 1;
      }

      else
      {
        LOBYTE(v13) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v21 = MEMORY[0x1DA6CCED0](0x4449657571696E75, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v21];

  v22 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_baselineOffset);
  v23 = MEMORY[0x1DA6CCED0](0x656E696C65736162, 0xEE0074657366664FLL);
  [(objc_class *)with.super.isa encodeDouble:v23 forKey:v22];

  if ((v13 & 1) == 0)
  {
    v30 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_path);
    if (!v30)
    {
      goto LABEL_19;
    }

    outlined init with copy of Date?(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v9, &_s9PencilKit9PKDrawingVSgMd);
    v31 = type metadata accessor for PKDrawing();
    v32 = (*(*(v31 - 8) + 48))(v9, 1, v31);
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9PencilKit9PKDrawingVSgMd);
    if (v32 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  outlined init with copy of Date?(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v12, &_s10Foundation4DateVSgMd);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v26 = Date._bridgeToObjectiveC()().super.isa;
  (*(v25 + 8))(v12, v24);
  v27 = MEMORY[0x1DA6CCED0](0x6E6F697461657263, 0xEC00000065746144);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];

  v28 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_shouldPersist);
  if (v28 == 2)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v29 = MEMORY[0x1DA6CCED0](0x6550646C756F6873, 0xED00007473697372);
  [(objc_class *)with.super.isa encodeBool:v28 & 1 forKey:v29];

  v30 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_path);
  if (v30)
  {
LABEL_17:
    v33 = specialized static SignatureItem.signaturePathDataRepresentation(from:toKeyChain:)(v30, v13 & 1);
    if (v34 >> 60 != 15)
    {
      v35 = v33;
      v36 = v34;
      v37 = Data._bridgeToObjectiveC()().super.isa;
      v38 = MEMORY[0x1DA6CCED0](1752457584, 0xE400000000000000);
      [(objc_class *)with.super.isa encodeObject:v37 forKey:v38];

      outlined consume of Data?(v35, v36);
    }
  }

LABEL_19:
  outlined init with copy of Date?(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v6, &_s9PencilKit9PKDrawingVSgMd);
  v39 = type metadata accessor for PKDrawing();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v6, 1, v39) != 1)
  {
    PKDrawing._bridgeToObjectiveC()(v41);
    v43 = v42;
    (*(v40 + 8))(v6, v39);
    v44 = [v43 serialize];

    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = Data._bridgeToObjectiveC()().super.isa;
    v49 = MEMORY[0x1DA6CCED0](0x676E6977617264, 0xE700000000000000);
    [(objc_class *)with.super.isa encodeObject:v48 forKey:v49];

    outlined consume of Data._Representation(v45, v47);
  }

  v50 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8);
  if (v50 - 1 < 5)
  {
    v51 = specialized Collection<>.firstIndex(of:)(*(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription), v50, &outlined read-only object #0 of static SignatureDescription.allCases.getter);
    if ((v52 & 1) == 0)
    {
      v53 = v51;
      v54 = MEMORY[0x1DA6CCED0](0x7470697263736564, 0xEE006761546E6F69);
      [(objc_class *)with.super.isa encodeInteger:v53 forKey:v54];
LABEL_24:

      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v50)
  {
    v55 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription);
    v56 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8);
    v57 = MEMORY[0x1DA6CCED0](0x7470697263736564, 0xEE006761546E6F69);
    [(objc_class *)with.super.isa encodeInteger:-1 forKey:v57];

    v58 = MEMORY[0x1DA6CCED0](v55, v56);
    v54 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D40874A0);
    [(objc_class *)with.super.isa encodeObject:v58 forKey:v54];

    goto LABEL_24;
  }
}

uint64_t SignatureItem.rawValue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  SignatureItem.encode(with:)(v0);
  v1 = [v0 encodedData];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  [v0 finishEncoding];
  return v2;
}

id one-time initialization function for defaultColor()
{
  result = [objc_opt_self() blackColor];
  static SignatureItem.defaultColor = result;
  return result;
}

UIImage_optional __swiftcall SignatureItem.image(withMaximumSize:withColor:width:forPrinting:)(CGSize withMaximumSize, UIColor_optional withColor, Swift::Int_optional width, Swift::Bool forPrinting)
{
  v4 = *&width.is_nil;
  value = width.value;
  v6 = *&withColor.is_nil;
  isa = withColor.value.super.isa;
  height = withMaximumSize.height;
  v9 = withMaximumSize.width;
  v10 = objc_opt_self();
  v11 = [v10 currentTraitCollection];
  v12 = [v11 userInterfaceStyle];

  v13 = v12 == 2;
  v14 = v4 ^ 1;
  v15 = [v10 currentTraitCollection];
  [v15 displayScale];
  v17 = v16;

  v18 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(isa, v6, value & 1, v13 & v14, v9, height, v17);
  result.value.super.isa = v18;
  result.is_nil = v19;
  return result;
}

uint64_t closure #1 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for PKStrokePoint();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v34 - v6;
  v42 = type metadata accessor for PKInk();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PKStrokePath();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v34 - v18;
  PKStroke.path.getter();
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath, MEMORY[0x1E6978380]);
  v19 = dispatch thunk of Collection.count.getter();
  v44 = a1;
  v43 = v8;
  if (!v19)
  {
    v51 = *(v12 + 8);
    (v51)(v16, v11);
    v26 = MEMORY[0x1E69E7CC0];
    v32 = v12;
LABEL_9:
    v53[0] = v26;
    static Date.now.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit13PKStrokePointVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKStrokePoint] and conformance [A], &_sSay9PencilKit13PKStrokePointVGMd);
    v33 = v39;
    PKStrokePath.init<A>(controlPoints:creationDate:)();
    (*(v41 + 16))(v43, v44, v42);
    (*(v32 + 16))(v40, v33, v11);
    v53[0] = 0x3FF0000000000000;
    v53[1] = 0;
    v53[2] = 0;
    v53[3] = 0x3FF0000000000000;
    v53[4] = 0;
    v53[5] = 0;
    PKStroke.init(ink:path:transform:mask:)();
    return (v51)(v33, v11);
  }

  v36 = v12;
  v52 = MEMORY[0x1E69E7CC0];
  v20 = v19;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  v35 = v52;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v22 = v20;
    v47 = (v50 + 8);
    v48 = (v50 + 16);
    v46 = v50 + 32;
    v23 = v51;
    v24 = v37;
    v25 = v16;
    v26 = v35;
    do
    {
      v51 = v22;
      v27 = dispatch thunk of Collection.subscript.read();
      v28 = v49;
      (*v48)(v49);
      v27(v53, 0);
      PKStrokePoint.location.getter();
      PKStrokePoint.timeOffset.getter();
      PKStrokePoint.opacity.getter();
      PKStrokePoint.force.getter();
      PKStrokePoint.azimuth.getter();
      PKStrokePoint.altitude.getter();
      PKStrokePoint.init(location:timeOffset:size:opacity:force:azimuth:altitude:)();
      (*v47)(v28, v23);
      v52 = v26;
      v29 = v25;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1);
        v24 = v37;
        v26 = v52;
      }

      *(v26 + 16) = v31 + 1;
      (*(v50 + 32))(v26 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31, v24, v23);
      dispatch thunk of Collection.formIndex(after:)();
      v22 = v51 - 1;
      v25 = v29;
    }

    while (v51 != 1);
    v32 = v36;
    v51 = *(v36 + 8);
    (v51)(v29, v11);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void closure #2 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UIImage?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t closure #3 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(void *a1, void *a2, const CGPath *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = type metadata accessor for CGPathFillRule();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 CGContext];
  CGContextScaleCTM(v21, a4, -a4);

  v22 = [a1 CGContext];
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  v23 = -CGRectGetMinX(v29);
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  MaxY = CGRectGetMaxY(v30);
  CGContextTranslateCTM(v22, v23, -MaxY);

  [a2 set];
  v25 = [a1 CGContext];
  CGContextAddPath(v25, a3);

  v26 = [a1 CGContext];
  (*(v17 + 104))(v20, *MEMORY[0x1E695EEB8], v16);
  CGContextRef.fillPath(using:)();

  return (*(v17 + 8))(v20, v16);
}

id SignatureItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignatureItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}