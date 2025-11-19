id partial apply for closure #1 in PaperTextAttachmentView.cleanupViewProviders()()
{
  v1 = *(v0 + 16);
  result = [v1 respondsToSelector_];
  if (result)
  {

    return [v1 _cleanupStaleCachedViewProviders];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, &lazy cache variable for type metadata for NSRunLoop);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

void partial apply for closure #1 in PaperTextAttachmentView.createPaperView(paperBundleURL:)(void **a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #1 in PaperTextAttachmentView.createPaperView(paperBundleURL:)(a1, v4);
}

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x1EEE6BDD0](v3, a3, 7);
}

uint64_t objectdestroy_351Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t _s8PaperKit12TaggedStrokeOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return specialized closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

id partial apply for closure #1 in PaperTextAttachmentView.didMoveToSuperview()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = [v1 becomeFirstResponder];
  if (v2)
  {

    return [v2 setVisible:v3 forFirstResponder:v1];
  }

  return result;
}

id outlined copy of MagicGenerativePlaygroundContext?(id result, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined copy of MagicGenerativePlaygroundContext(result, a2, a3);
  }

  return result;
}

uint64_t partial apply for closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = *(v1 + 88);
  v14 = *(v1 + 96);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview()(v7, v8, v9, v10, a1, v4, v5, v6, v11, v12, v13, v14);
}

uint64_t _s8PaperKit0A0VWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_334Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void *specialized Canvas.bandSelectionShouldBegin(_:point:)(double a1, double a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))();
  if (!v7)
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode) != 1)
  {
    v10 = 0;
    goto LABEL_33;
  }

  v28 = v7;
  if ([v7 allowsFingerDrawing])
  {
    v8 = *((*v6 & *v2) + 0x3C8);
    result = v8((&v29 + 1));
    if (BYTE1(v29) != 1)
    {
      result = (v8)(&v29, result);
      if (v29 != 2)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    result = (*((*v6 & *v2) + 0x3C8))(&v29 + 2);
    if (!BYTE2(v29))
    {
LABEL_6:
      v10 = 0;
LABEL_32:
      v7 = v28;
      goto LABEL_33;
    }
  }

  v11 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v11)
  {
    v12 = v11;
    [v12 convertPoint:v2 fromCoordinateSpace:{a1, a2}];
    v13 = [v12 hitTest:0 withEvent:?];

    if (!v13)
    {
      v14 = *(v3 + direct field offset for Canvas._editingView);
      if (v14)
      {
        v15 = *(v3 + direct field offset for Canvas._editingView + 8);
        v16 = *(v3 + direct field offset for Canvas._editingView);
      }

      else
      {
        v16 = *(v3 + direct field offset for Canvas.paperView);
        v15 = &protocol witness table for ContainerCanvasElementView<A>;
      }

      ObjectType = swift_getObjectType();
      v18 = v15[8];
      v19 = v14;
      v20 = v18(ObjectType, v15);

      if (v20 >> 62)
      {
        goto LABEL_30;
      }

      for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v22 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1DA6CE0C0](v22, v20);
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v23 = *(v20 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (((*((*v6 & *v23) + 0x1F0))() & 1) == 0)
          {
            [v24 convertPoint:v3 fromCoordinateSpace:{a1, a2}];
            v26 = [v24 hitTest:0 withEvent:?];
            if (v26)
            {
              v27 = v26;

              v10 = 0;
              v7 = v27;
              goto LABEL_33;
            }
          }

          ++v22;
          if (v25 == i)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_31:

      v10 = 1;
      goto LABEL_32;
    }

    v10 = 0;
    v7 = v13;
LABEL_33:

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t PDFAnnotationElement.stringValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for PDFAnnotationElement.stringValue : PDFAnnotationElement()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PDFAnnotationElement.stringValue.modify(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.$stringValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$stringValue : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$stringValue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*PDFAnnotationElement.$stringValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
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
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

uint64_t PDFAnnotationElement.contents.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for PDFAnnotationElement.contents : PDFAnnotationElement@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for PDFAnnotationElement.contents : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PDFAnnotationElement.contents.setter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PDFAnnotationElement.contents.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.$contents.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PDFAnnotationElement.$contents : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$contents : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$contents.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$contents.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for PDFAnnotationElement.color : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit5ColorVSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd);
}

uint64_t PDFAnnotationElement.color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit5ColorVSgMd);
}

uint64_t (*PDFAnnotationElement.color.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.color.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a1(v2);
}

uint64_t key path getter for PDFAnnotationElement.color : PDFAnnotationElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a4(v5);
}

uint64_t key path setter for PDFAnnotationElement.$color : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$color.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for PDFAnnotationElement.signatureValue : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit14SignatureValueVSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit14SignatureValueVSgMd);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14SignatureValueVSgMd);
}

uint64_t PDFAnnotationElement.signatureValue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit14SignatureValueVSgMd);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit14SignatureValueVSgMd);
}

uint64_t (*PDFAnnotationElement.signatureValue.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.signatureValue.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  return a1(v2);
}

uint64_t key path getter for PDFAnnotationElement.signatureValue : PDFAnnotationElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  return a4(v5);
}

uint64_t key path setter for PDFAnnotationElement.$signatureValue : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$signatureValue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$signatureValue.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PDFAnnotationElement.AnnotationShape.quadPoints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void PDFAnnotationElement.AnnotationShape.rect.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

PaperKit::PDFAnnotationElement::AnnotationShape::CodingKeys_optional __swiftcall PDFAnnotationElement.AnnotationShape.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x6E696F5064617571 && stringValue._object == 0xEA00000000007374;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 1952671090 && object == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::PDFAnnotationElement::AnnotationShape::CodingKeys_optional __swiftcall PDFAnnotationElement.AnnotationShape.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  if (intValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!intValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return intValue;
}

uint64_t PDFAnnotationElement.AnnotationShape.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 1952671090;
  }

  else
  {
    return 0x6E696F5064617571;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PDFAnnotationElement.AnnotationShape.CodingKeys()
{
  if (*v0)
  {
    return 1952671090;
  }

  else
  {
    return 0x6E696F5064617571;
  }
}

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance PDFAnnotationElement.AnnotationShape.CodingKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys();
  v5 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PDFAnnotationElement.AnnotationShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PDFAnnotationElement.AnnotationShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL PDFAnnotationElement.AnnotationShape.isDefaultState.getter()
{
  if (*v0)
  {
    return 0;
  }

  v3.origin.x = 0.0;
  v3.origin.y = 0.0;
  v3.size.width = 0.0;
  v3.size.height = 0.0;
  v2 = CGRectEqualToRect(*(v0 + 8), v3);

  return v2;
}

double PDFAnnotationElement.AnnotationShape.init(defaultState:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PDFAnnotationElement.AnnotationShape.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11 = *(v1 + 3);
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v13 = v8;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7CGPointVGMd);
  lazy protocol witness table accessor for type [CGPoint] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGPoint] and conformance <A> [A], &lazy protocol witness table cache variable for type CGPoint and conformance CGPoint);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  if (!v2)
  {
    v13 = v12;
    v14 = v11;
    v15 = 1;
    type metadata accessor for CGRect(0);
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PDFAnnotationElement.AnnotationShape.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return CGRect.hash(into:)(v4, v5, v6, v7);
}

Swift::Int PDFAnnotationElement.AnnotationShape.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(v7, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  CGRect.hash(into:)(v2, v3, v4, v5);
  return Hasher._finalize()();
}

uint64_t PDFAnnotationElement.AnnotationShape.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7CGPointVGMd);
    v14 = 0;
    lazy protocol witness table accessor for type [CGPoint] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGPoint] and conformance <A> [A], &lazy protocol witness table cache variable for type CGPoint and conformance CGPoint);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = *&v13[0];
    type metadata accessor for CGRect(0);
    v14 = 1;
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v13[0];
    v12 = v13[1];
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PDFAnnotationElement.AnnotationShape()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(v7, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  CGRect.hash(into:)(v2, v3, v4, v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PDFAnnotationElement.AnnotationShape(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return CGRect.hash(into:)(v4, v5, v6, v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PDFAnnotationElement.AnnotationShape()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(v7, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  CGRect.hash(into:)(v2, v3, v4, v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for CRType.copy(renamingReferences:) in conformance PDFAnnotationElement.AnnotationShape@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PDFAnnotationElement.AnnotationShape()
{
  lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
  lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PDFAnnotationElement.AnnotationShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

double protocol witness for CRCodable.init(defaultState:) in conformance PDFAnnotationElement.AnnotationShape@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PDFAnnotationElement.flags.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for PDFAnnotationElement.flags : PDFAnnotationElement@<X0>(void *a1@<X8>)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PDFAnnotationElement.flags : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PDFAnnotationElement.flags.setter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PDFAnnotationElement.flags.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.$flags.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PDFAnnotationElement.$flags : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$flags : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$flags.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$flags.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for PDFAnnotationElement.modificationDate : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s10Foundation4DateVSgMd);
  outlined init with copy of Date?(v7, v4, &_s10Foundation4DateVSgMd);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation4DateVSgMd);
}

uint64_t PDFAnnotationElement.modificationDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s10Foundation4DateVSgMd);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s10Foundation4DateVSgMd);
}

uint64_t (*PDFAnnotationElement.modificationDate.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.modificationDate.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  return a1(v2);
}

uint64_t key path getter for PDFAnnotationElement.modificationDate : PDFAnnotationElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  return a4(v5);
}

uint64_t key path setter for PDFAnnotationElement.$modificationDate : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$modificationDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$modificationDate.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 36);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PDFAnnotationElement.shape.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  return CRRegister.wrappedValue.getter();
}

__n128 key path getter for PDFAnnotationElement.shape : PDFAnnotationElement@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  CRRegister.wrappedValue.getter();
  *a1 = v3;
  result = v5;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t key path setter for PDFAnnotationElement.shape : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PDFAnnotationElement.shape.setter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PDFAnnotationElement.shape.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.$shape.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PDFAnnotationElement.$shape : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$shape : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$shape.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$shape.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 40);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PDFAnnotationElement.subtype.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for PDFAnnotationElement.subtype : PDFAnnotationElement@<X0>(void *a1@<X8>)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for PDFAnnotationElement.subtype : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PDFAnnotationElement.subtype.setter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PDFAnnotationElement.subtype.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.$subtype.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PDFAnnotationElement.$subtype : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$subtype : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$subtype.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$subtype.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 44);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PDFAnnotationElement.fieldFlags.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  return CRRegister.wrappedValue.getter();
}

uint64_t key path getter for PDFAnnotationElement.fieldFlags : PDFAnnotationElement@<X0>(void *a1@<X8>)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PDFAnnotationElement.fieldFlags : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PDFAnnotationElement.fieldFlags.setter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PDFAnnotationElement.fieldFlags.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t PDFAnnotationElement.$fieldFlags.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PDFAnnotationElement.$fieldFlags : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$fieldFlags : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$fieldFlags.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$fieldFlags.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 48);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t key path setter for PDFAnnotationElement.popup : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  outlined init with copy of Date?(v7, v4, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
}

uint64_t PDFAnnotationElement.popup.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
}

uint64_t (*PDFAnnotationElement.popup.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.popup.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  return a1(v2);
}

uint64_t key path getter for PDFAnnotationElement.popup : PDFAnnotationElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  return a4(v5);
}

uint64_t key path setter for PDFAnnotationElement.$popup : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$popup.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$popup.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 52);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PDFAnnotationElement.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995288];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

BOOL PDFAnnotationElement.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v207 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v5 = &v164 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v184 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v199 = &v164 - v9;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v206 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v175 = &v164 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v183 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v197 = &v164 - v14;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v205 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v174 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v182 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v164 - v19;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v204 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v173 = &v164 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v181 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v193 = &v164 - v24;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v203 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v172 = &v164 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v180 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v191 = &v164 - v29;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v202 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v171 = &v164 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v179 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v189 = &v164 - v34;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v201 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v170 = &v164 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v178 = &v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v187 = &v164 - v39;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v208 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v169 = &v164 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v177 = &v164 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v185 = &v164 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v168 = &v164 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v167 = &v164 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v176 = &v164 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v164 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v164 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v164 - v59;
  v209 = type metadata accessor for PDFAnnotationElement.Partial(0);
  MEMORY[0x1EEE9AC00](v209);
  v62 = &v164 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PDFAnnotationElement.Partial(v2, v62, type metadata accessor for PDFAnnotationElement.Partial);
  v210 = a1;
  v63 = PDFAnnotationElement.Partial.canMerge(delta:)(a1);
  outlined destroy of PDFAnnotationElement.Partial(v62, type metadata accessor for PDFAnnotationElement.Partial);
  if (v63)
  {
    v166 = v63;
    v164 = v5;
    outlined init with copy of Date?(v2, v60, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v165 = v46;
    v64 = *(v46 + 48);
    v65 = v2;
    v66 = v64(v60, 1, v45);
    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence10CRRegisterVySSSgGSgMd);
    if (v66 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210, v65, &_s9Coherence10CRRegisterVySSSgGSgMd);
      v67 = v65;
      v68 = v64;
    }

    else
    {
      v67 = v65;
      outlined init with copy of Date?(v210, v57, &_s9Coherence10CRRegisterVySSSgGSgMd);
      if (v64(v57, 1, v45) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVySSSgGSgMd);
        v68 = v64;
      }

      else
      {
        v69 = v165;
        v70 = v167;
        (*(v165 + 32))(v167, v57, v45);
        v68 = v64;
        if (!v64(v65, 1, v45))
        {
          CRRegister.merge(delta:)();
        }

        (*(v69 + 8))(v70, v45);
      }
    }

    v71 = v209;
    v72 = v209[5];
    outlined init with copy of Date?(v67 + v72, v54, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v73 = v68(v54, 1, v45);
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v74 = v71[5];
    if (v73 == 1)
    {
      v75 = v186;
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v74, v67 + v72, &_s9Coherence10CRRegisterVySSSgGSgMd);
    }

    else
    {
      v76 = v176;
      outlined init with copy of Date?(v210 + v74, v176, &_s9Coherence10CRRegisterVySSSgGSgMd);
      if (v68(v76, 1, v45) == 1)
      {
        v75 = v186;
        outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterVySSSgGSgMd);
      }

      else
      {
        v77 = v165;
        v78 = v168;
        (*(v165 + 32))(v168, v76, v45);
        if (!v68((v67 + v72), 1, v45))
        {
          CRRegister.merge(delta:)();
        }

        v75 = v186;
        (*(v77 + 8))(v78, v45);
      }
    }

    v79 = v209;
    v80 = v209[6];
    v81 = v185;
    outlined init with copy of Date?(v67 + v80, v185, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v82 = *(v208 + 48);
    v83 = v82(v81, 1, v75);
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v84 = v79[6];
    if (v83 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v84, v67 + v80, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    }

    else
    {
      v85 = v177;
      outlined init with copy of Date?(v210 + v84, v177, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      if (v82(v85, 1, v75) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      }

      else
      {
        v86 = v85;
        v87 = v208;
        v88 = v169;
        (*(v208 + 32))(v169, v86, v75);
        if (!v82(v67 + v80, 1, v75))
        {
          CRRegister.merge(delta:)();
          v87 = v208;
        }

        (*(v87 + 8))(v88, v75);
      }
    }

    v89 = v188;
    v90 = v209;
    v91 = v209[7];
    v92 = v187;
    outlined init with copy of Date?(v67 + v91, v187, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    v93 = *(v201 + 48);
    v94 = v93(v92, 1, v89);
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    v95 = v90[7];
    if (v94 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v95, v67 + v91, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    }

    else
    {
      v96 = v178;
      outlined init with copy of Date?(v210 + v95, v178, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
      if (v93(v96, 1, v89) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
      }

      else
      {
        v97 = v201;
        v98 = v170;
        (*(v201 + 32))(v170, v96, v89);
        if (!v93(v67 + v91, 1, v89))
        {
          CRRegister.merge(delta:)();
        }

        (*(v97 + 8))(v98, v89);
      }
    }

    v99 = v209;
    v100 = v209[8];
    v101 = v189;
    outlined init with copy of Date?(v67 + v100, v189, &_s9Coherence10CRRegisterVySiGSgMd);
    v102 = *(v202 + 48);
    v103 = v190;
    v104 = v102(v101, 1, v190);
    outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence10CRRegisterVySiGSgMd);
    v105 = v99[8];
    if (v104 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v105, v67 + v100, &_s9Coherence10CRRegisterVySiGSgMd);
    }

    else
    {
      v106 = v179;
      outlined init with copy of Date?(v210 + v105, v179, &_s9Coherence10CRRegisterVySiGSgMd);
      if (v102(v106, 1, v103) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence10CRRegisterVySiGSgMd);
      }

      else
      {
        v107 = v202;
        v108 = v171;
        (*(v202 + 32))(v171, v106, v103);
        if (!v102(v67 + v100, 1, v103))
        {
          CRRegister.merge(delta:)();
        }

        (*(v107 + 8))(v108, v103);
      }
    }

    v109 = v209;
    v110 = v209[9];
    v111 = v191;
    outlined init with copy of Date?(v67 + v110, v191, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    v112 = *(v203 + 48);
    v113 = v192;
    v114 = v112(v111, 1, v192);
    outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    v115 = v109[9];
    if (v114 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v115, v67 + v110, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
      v116 = v194;
    }

    else
    {
      v117 = v180;
      outlined init with copy of Date?(v210 + v115, v180, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
      if (v112(v117, 1, v113) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
        v116 = v194;
      }

      else
      {
        v118 = v113;
        v119 = v203;
        v120 = v172;
        (*(v203 + 32))(v172, v117, v113);
        v121 = v112(v67 + v110, 1, v113);
        v116 = v194;
        if (!v121)
        {
          CRRegister.merge(delta:)();
        }

        (*(v119 + 8))(v120, v118);
      }
    }

    v122 = v209;
    v123 = v209[10];
    v124 = v193;
    outlined init with copy of Date?(v67 + v123, v193, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    v125 = *(v204 + 48);
    v126 = v125(v124, 1, v116);
    outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    v127 = v122[10];
    if (v126 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v127, v67 + v123, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    }

    else
    {
      v128 = v181;
      outlined init with copy of Date?(v210 + v127, v181, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
      if (v125(v128, 1, v116) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
      }

      else
      {
        v129 = v204;
        v130 = v173;
        (*(v204 + 32))(v173, v128, v116);
        if (!v125(v67 + v123, 1, v116))
        {
          CRRegister.merge(delta:)();
        }

        (*(v129 + 8))(v130, v116);
      }
    }

    v131 = v209;
    v132 = v209[11];
    v133 = v195;
    outlined init with copy of Date?(v67 + v132, v195, &_s9Coherence10CRRegisterVySSGSgMd);
    v134 = *(v205 + 48);
    v135 = v196;
    v136 = v134(v133, 1, v196);
    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence10CRRegisterVySSGSgMd);
    v137 = v131[11];
    if (v136 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v137, v67 + v132, &_s9Coherence10CRRegisterVySSGSgMd);
      v138 = v198;
    }

    else
    {
      v139 = v182;
      outlined init with copy of Date?(v210 + v137, v182, &_s9Coherence10CRRegisterVySSGSgMd);
      if (v134(v139, 1, v135) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v139, &_s9Coherence10CRRegisterVySSGSgMd);
        v138 = v198;
      }

      else
      {
        v140 = v135;
        v141 = v205;
        v142 = v174;
        (*(v205 + 32))(v174, v139, v135);
        v143 = v134(v67 + v132, 1, v135);
        v138 = v198;
        if (!v143)
        {
          CRRegister.merge(delta:)();
        }

        (*(v141 + 8))(v142, v140);
      }
    }

    v144 = v209;
    v145 = v209[12];
    v146 = v197;
    outlined init with copy of Date?(v67 + v145, v197, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    v147 = *(v206 + 48);
    v148 = v147(v146, 1, v138);
    outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    v149 = v144[12];
    if (v148 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v149, v67 + v145, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    }

    else
    {
      v150 = v183;
      outlined init with copy of Date?(v210 + v149, v183, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
      if (v147(v150, 1, v138) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
      }

      else
      {
        v151 = v206;
        v152 = v175;
        (*(v206 + 32))(v175, v150, v138);
        if (!v147(v67 + v145, 1, v138))
        {
          CRRegister.merge(delta:)();
        }

        (*(v151 + 8))(v152, v138);
      }
    }

    v153 = v199;
    v154 = v200;
    v155 = v209;
    v156 = v209[13];
    outlined init with copy of Date?(v67 + v156, v199, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    v157 = *(v207 + 48);
    v158 = v157(v153, 1, v154);
    outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    v159 = v155[13];
    if (v158 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v159, v67 + v156, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    }

    else
    {
      v160 = v184;
      outlined init with copy of Date?(v210 + v159, v184, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
      if (v157(v160, 1, v154) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v160, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
      }

      else
      {
        v161 = v207;
        v162 = v164;
        (*(v207 + 32))(v164, v160, v154);
        if (!v157(v67 + v156, 1, v154))
        {
          CRRegister.merge(delta:)();
        }

        (*(v161 + 8))(v162, v154);
      }
    }

    LOBYTE(v63) = v166;
  }

  return v63;
}

BOOL PDFAnnotationElement.Partial.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v152 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v163 = &v150 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v151 = &v150 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v154 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v172 = &v150 - v11;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v177 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v153 = &v150 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v176 = &v150 - v16;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v180 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v155 = &v150 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v158 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v186 = &v150 - v21;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v175 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v157 = &v150 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v160 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v150 - v26;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v179 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v159 = &v150 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v162 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v182 = &v150 - v31;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v191 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v161 = &v150 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v167 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v189 = &v150 - v36;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v185 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v166 = &v150 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v170 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v187 = &v150 - v41;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v184 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v169 = &v150 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v174 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v150 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v150 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v150 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v173 = &v150 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v150 - v58;
  v194 = a1;
  outlined init with copy of Date?(a1, v53, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v60 = *(v55 + 48);
  v61 = v60(v53, 1, v54);
  v193 = v1;
  if (v61 == 1)
  {
    v50 = v53;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v62 = v191;
    goto LABEL_6;
  }

  (*(v55 + 32))(v59, v53, v54);
  outlined init with copy of Date?(v1, v50, &_s9Coherence10CRRegisterVySSSgGSgMd);
  if (v60(v50, 1, v54) == 1)
  {
    (*(v55 + 8))(v59, v54);
    goto LABEL_5;
  }

  v106 = CRRegister.canMerge(delta:)();
  v107 = *(v55 + 8);
  v107(v59, v54);
  v107(v50, v54);
  v62 = v191;
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v63 = type metadata accessor for PDFAnnotationElement.Partial(0);
  outlined init with copy of Date?(v194 + v63[5], v47, &_s9Coherence10CRRegisterVySSSgGSgMd);
  if (v60(v47, 1, v54) == 1)
  {
LABEL_9:
    v65 = v188;
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v66 = v189;
    v67 = v187;
    goto LABEL_10;
  }

  v64 = v173;
  (*(v55 + 32))(v173, v47, v54);
  v47 = v174;
  outlined init with copy of Date?(v193 + v63[5], v174, &_s9Coherence10CRRegisterVySSSgGSgMd);
  if (v60(v47, 1, v54) == 1)
  {
    (*(v55 + 8))(v64, v54);
    goto LABEL_9;
  }

  v121 = CRRegister.canMerge(delta:)();
  v122 = v64;
  v123 = *(v55 + 8);
  v123(v122, v54);
  v123(v47, v54);
  v65 = v188;
  v66 = v189;
  v67 = v187;
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v68 = v62;
  outlined init with copy of Date?(v194 + v63[6], v67, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v69 = v184;
  v70 = *(v184 + 48);
  if (v70(v67, 1, v65) == 1)
  {
    v71 = v67;
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v76 = v185;
    v77 = v192;
    v78 = v68;
    goto LABEL_15;
  }

  v72 = v67;
  v73 = v169;
  (*(v69 + 32))(v169, v72, v65);
  v191 = v63;
  v74 = v193 + v63[6];
  v75 = v170;
  outlined init with copy of Date?(v74, v170, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  if (v70(v75, 1, v65) == 1)
  {
    (*(v69 + 8))(v73, v65);
    v71 = v75;
    v63 = v191;
    goto LABEL_14;
  }

  v124 = CRRegister.canMerge(delta:)();
  v125 = *(v69 + 8);
  v125(v73, v65);
  v125(v75, v65);
  v76 = v185;
  v63 = v191;
  v77 = v192;
  v78 = v68;
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  outlined init with copy of Date?(v194 + v63[7], v66, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  v79 = *(v76 + 48);
  v80 = v181;
  if (v79(v66, 1, v181) == 1)
  {
    v81 = v66;
    v82 = v182;
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    v87 = v183;
    v88 = v190;
    goto LABEL_20;
  }

  v83 = v66;
  v84 = v166;
  (*(v76 + 32))(v166, v83, v80);
  v85 = v167;
  outlined init with copy of Date?(v193 + v63[7], v167, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  v86 = v79(v85, 1, v80);
  v82 = v182;
  if (v86 == 1)
  {
    (*(v76 + 8))(v84, v80);
    v81 = v85;
    goto LABEL_19;
  }

  v136 = CRRegister.canMerge(delta:)();
  v137 = *(v76 + 8);
  v137(v84, v80);
  v137(v85, v80);
  v87 = v183;
  v88 = v190;
  if ((v136 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  outlined init with copy of Date?(v194 + v63[8], v82, &_s9Coherence10CRRegisterVySiGSgMd);
  v89 = *(v78 + 6);
  v90 = v178;
  if (v89(v82, 1, v178) == 1)
  {
    v91 = v82;
    v92 = v186;
LABEL_24:
    outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterVySiGSgMd);
    v98 = v179;
    goto LABEL_25;
  }

  v93 = v161;
  (*(v78 + 4))(v161, v82, v90);
  v94 = v78;
  v95 = v90;
  v96 = v162;
  outlined init with copy of Date?(v193 + v63[8], v162, &_s9Coherence10CRRegisterVySiGSgMd);
  v97 = v89(v96, 1, v90);
  v92 = v186;
  if (v97 == 1)
  {
    (*(v94 + 1))(v93, v95);
    v91 = v96;
    v88 = v190;
    v77 = v192;
    goto LABEL_24;
  }

  v138 = CRRegister.canMerge(delta:)();
  v139 = *(v94 + 1);
  v139(v93, v95);
  v139(v96, v95);
  v98 = v179;
  v88 = v190;
  v77 = v192;
  if ((v138 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  outlined init with copy of Date?(v194 + v63[9], v77, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  v99 = *(v98 + 48);
  if (v99(v77, 1, v88) == 1)
  {
    v100 = v77;
LABEL_29:
    outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    goto LABEL_30;
  }

  v101 = v159;
  (*(v98 + 32))(v159, v77, v88);
  v102 = v160;
  outlined init with copy of Date?(v193 + v63[9], v160, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  if (v99(v102, 1, v88) == 1)
  {
    (*(v98 + 8))(v101, v88);
    v100 = v102;
    v92 = v186;
    goto LABEL_29;
  }

  v140 = CRRegister.canMerge(delta:)();
  v141 = *(v98 + 8);
  v141(v101, v88);
  v141(v102, v88);
  v92 = v186;
  if ((v140 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  outlined init with copy of Date?(v194 + v63[10], v92, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  v103 = v175;
  v104 = *(v175 + 48);
  if (v104(v92, 1, v87) == 1)
  {
    v105 = v92;
LABEL_36:
    outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    v112 = v176;
    goto LABEL_37;
  }

  v108 = v157;
  (*(v103 + 32))(v157, v92, v87);
  v109 = v87;
  v110 = v108;
  v111 = v158;
  outlined init with copy of Date?(v193 + v63[10], v158, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  if (v104(v111, 1, v109) == 1)
  {
    (*(v103 + 8))(v110, v109);
    v105 = v111;
    goto LABEL_36;
  }

  v142 = CRRegister.canMerge(delta:)();
  v143 = *(v103 + 8);
  v143(v110, v109);
  v143(v111, v109);
  v112 = v176;
  if ((v142 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  outlined init with copy of Date?(v194 + v63[11], v112, &_s9Coherence10CRRegisterVySSGSgMd);
  v113 = *(v180 + 48);
  v114 = v171;
  if (v113(v112, 1, v171) == 1)
  {
LABEL_40:
    outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence10CRRegisterVySSGSgMd);
    v117 = v172;
    goto LABEL_41;
  }

  v115 = v180;
  v116 = v155;
  (*(v180 + 32))(v155, v112, v114);
  v112 = v156;
  outlined init with copy of Date?(v193 + v63[11], v156, &_s9Coherence10CRRegisterVySSGSgMd);
  if (v113(v112, 1, v114) == 1)
  {
    (*(v115 + 8))(v116, v114);
    goto LABEL_40;
  }

  v144 = CRRegister.canMerge(delta:)();
  v145 = *(v115 + 8);
  v145(v116, v114);
  v145(v112, v114);
  v117 = v172;
  if ((v144 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  outlined init with copy of Date?(v194 + v63[12], v117, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  v118 = *(v177 + 48);
  v119 = v168;
  if (v118(v117, 1, v168) == 1)
  {
    v120 = v117;
  }

  else
  {
    v126 = v117;
    v127 = v177;
    v128 = v153;
    (*(v177 + 32))(v153, v126, v119);
    v129 = v154;
    outlined init with copy of Date?(v193 + v63[12], v154, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    if (v118(v129, 1, v119) != 1)
    {
      v146 = CRRegister.canMerge(delta:)();
      v147 = *(v127 + 8);
      v147(v128, v119);
      v147(v129, v119);
      if ((v146 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_50;
    }

    (*(v127 + 8))(v128, v119);
    v120 = v129;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
LABEL_50:
  v130 = v163;
  outlined init with copy of Date?(v194 + v63[13], v163, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  v131 = v164;
  v132 = *(v164 + 48);
  v133 = v165;
  if (v132(v130, 1, v165) == 1)
  {
LABEL_53:
    outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    return 1;
  }

  v134 = v151;
  (*(v131 + 32))(v151, v130, v133);
  v130 = v152;
  outlined init with copy of Date?(v193 + v63[13], v152, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  if (v132(v130, 1, v133) == 1)
  {
    (*(v131 + 8))(v134, v133);
    goto LABEL_53;
  }

  v148 = CRRegister.canMerge(delta:)();
  v149 = *(v131 + 8);
  v149(v134, v133);
  v149(v130, v133);
  return (v148 & 1) != 0;
}

uint64_t PDFAnnotationElement.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v26 = v2;
  outlined init with copy of Date?(v2, &v57 - v24, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v25, 1, v27) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence10CRRegisterVySSSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v28 + 8))(v25, v27);
  }

  v30 = type metadata accessor for PDFAnnotationElement.Partial(0);
  outlined init with copy of Date?(v2 + v30[5], v22, &_s9Coherence10CRRegisterVySSSgGSgMd);
  if (v29(v22, 1, v27) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVySSSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v28 + 8))(v22, v27);
  }

  v31 = v61;
  v32 = v2;
  outlined init with copy of Date?(v2 + v30[6], v19, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v19, 1, v33);
  v36 = v64;
  if (v35 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v34 + 8))(v19, v33);
  }

  v37 = v62;
  v38 = v58;
  outlined init with copy of Date?(v26 + v30[7], v58, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v40 + 8))(v38, v39);
  }

  v41 = v63;
  v42 = v59;
  outlined init with copy of Date?(v26 + v30[8], v59, &_s9Coherence10CRRegisterVySiGSgMd);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterVySiGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v44 + 8))(v42, v43);
  }

  v45 = v60;
  outlined init with copy of Date?(v32 + v30[9], v60, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v47 + 8))(v45, v46);
  }

  outlined init with copy of Date?(v32 + v30[10], v31, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v31, 1, v48) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v49 + 8))(v31, v48);
  }

  outlined init with copy of Date?(v32 + v30[11], v37, &_s9Coherence10CRRegisterVySSGSgMd);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v37, 1, v50) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence10CRRegisterVySSGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v51 + 8))(v37, v50);
  }

  outlined init with copy of Date?(v32 + v30[12], v41, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v41, 1, v52) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v53 + 8))(v41, v52);
  }

  outlined init with copy of Date?(v32 + v30[13], v36, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v36, 1, v54) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v55 + 8))(v36, v54);
}

uint64_t PDFAnnotationElement.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v113 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v118 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v138 = &v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v127 = &v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v132 = &v102 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v148 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v102 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v143 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v102 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v25(a2, 1, 1, v23);
  v27 = type metadata accessor for PDFAnnotationElement.Partial(0);
  v137 = v27[5];
  v147 = v23;
  v145 = v25;
  v142 = v26;
  v25(a2 + v137, 1, 1, v23);
  v28 = v27[6];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v30 = *(v29 - 8);
  v135 = *(v30 + 56);
  v136 = v28;
  v133 = v29;
  v134 = v30 + 56;
  v135(a2 + v28, 1, 1);
  v31 = v27[7];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v130 = v32;
  v131 = v31;
  v129 = v34;
  v128 = v33 + 56;
  (v34)(a2 + v31, 1, 1);
  v35 = v27[8];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v126 = v35;
  v140 = v36;
  v125 = v38;
  v124 = v37 + 56;
  (v38)(a2 + v35, 1, 1);
  v39 = v27[9];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v122 = v39;
  v121 = v40;
  v120 = v42;
  v119 = v41 + 56;
  (v42)(a2 + v39, 1, 1);
  v43 = v27[10];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v117 = v43;
  v116 = v44;
  v115 = v46;
  v114 = v45 + 56;
  (v46)(a2 + v43, 1, 1);
  v47 = v27[11];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v144 = v47;
  v112 = v50;
  v111 = v49 + 56;
  v50(a2 + v47, 1, 1, v48);
  v51 = v27[12];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v55 = v53 + 56;
  v123 = v51;
  v110 = v54;
  v54(a2 + v51, 1, 1, v52);
  v56 = v27[13];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v60 = v58 + 56;
  v150 = a2;
  v59(a2 + v56, 1, 1, v57);
  v61 = v149;
  v62 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v61)
  {

    v63 = v150;
    return outlined destroy of PDFAnnotationElement.Partial(v63, type metadata accessor for PDFAnnotationElement.Partial);
  }

  v64 = v62;
  v65 = v147;
  v104 = v48;
  v102 = v55;
  v103 = v52;
  v108 = v60;
  v109 = v59;
  v105 = v57;
  v106 = v56;
  v149 = 0;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v107 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
    v66 = v146;
    v67 = v149;
    CRRegister.init(from:)();
    v63 = v150;
    v68 = v148;
    if (v67)
    {
      goto LABEL_31;
    }

    v69 = v65;
    v149 = 0;
    v71 = v65;
    v70 = v145;
    v145(v66, 0, 1, v71);
    outlined assign with take of UUID?(v66, v63, &_s9Coherence10CRRegisterVySSSgGSgMd);
  }

  else
  {
    v63 = v150;
    v68 = v148;
    v69 = v65;
    v70 = v145;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
    v72 = v143;
    v73 = v149;
    CRRegister.init(from:)();
    if (v73)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v70(v72, 0, 1, v69);
    outlined assign with take of UUID?(v72, v63 + v137, &_s9Coherence10CRRegisterVySSSgGSgMd);
  }

  v74 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v75 = v109;
  v76 = v144;
  if (v74)
  {
    v77 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    v78 = v141;
    v79 = v149;
    CRRegister.init(from:)();
    if (v79)
    {
      goto LABEL_31;
    }

    v149 = 0;
    (v135)(v78, 0, 1, v133);
    outlined assign with take of UUID?(v78, v63 + v136, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v75 = v77;
  }

  v80 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v81 = v140;
  if (v80)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
    lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?();
    v82 = v149;
    CRRegister.init(from:)();
    if (v82)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v129(v68, 0, 1, v130);
    outlined assign with take of UUID?(v68, v63 + v131, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  }

  v83 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v84 = v138;
  v85 = v139;
  if (v83)
  {
    v86 = v132;
    v87 = v149;
    CRRegister.init(from:)();
    if (v87)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v125(v86, 0, 1, v81);
    outlined assign with take of UUID?(v86, v63 + v126, &_s9Coherence10CRRegisterVySiGSgMd);
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd);
    v88 = v127;
    v89 = v149;
    CRRegister.init(from:)();
    if (v89)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v120(v88, 0, 1, v121);
    outlined assign with take of UUID?(v88, v63 + v122, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    v84 = v138;
    v85 = v139;
    v76 = v144;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
    v90 = v149;
    CRRegister.init(from:)();
    if (v90)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v115(v84, 0, 1, v116);
    outlined assign with take of UUID?(v84, v63 + v117, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  }

  v91 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v92 = v123;
  if (!v91)
  {
    goto LABEL_29;
  }

  v93 = v118;
  v94 = v149;
  CRRegister.init(from:)();
  v149 = v94;
  if (v94)
  {
LABEL_31:

    return outlined destroy of PDFAnnotationElement.Partial(v63, type metadata accessor for PDFAnnotationElement.Partial);
  }

  v112(v93, 0, 1, v104);
  outlined assign with take of UUID?(v93, v63 + v76, &_s9Coherence10CRRegisterVySSGSgMd);
LABEL_29:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags();
    v95 = v149;
    CRRegister.init(from:)();
    if (v95)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v110(v85, 0, 1, v103);
    outlined assign with take of UUID?(v85, v63 + v92, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  }

  v97 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v98 = v106;
  v99 = v105;
  if (v97)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
    lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?();
    v100 = v149;
    CRRegister.init(from:)();

    if (v100)
    {
      return outlined destroy of PDFAnnotationElement.Partial(v63, type metadata accessor for PDFAnnotationElement.Partial);
    }

    v101 = v113;
    v75(v113, 0, 1, v99);
    return outlined assign with take of UUID?(v101, v63 + v98, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  }

  else
  {
  }
}

uint64_t PDFAnnotationElement.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v105 = &v100 - v1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v114 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v120 = &v100 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v108 = &v100 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v109 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v104 = &v100 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v111 = &v100 - v7;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v107 = &v100 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = &v100 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v124 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v110 = &v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v121 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v122 = *(v14 - 8);
  v123 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v100 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v131 = &v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v126 = *(v18 - 8);
  v127 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v133 = (&v100 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v128 = *(v22 - 8);
  v129 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v125 = &v100 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v130 = &v100 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v132 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v100 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v100 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v100 - v40;
  v42 = v135;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v42)
  {
    v102 = v31;
    v101 = v38;
    v100 = v28;
    v103 = v26;
    v135 = 0;
    outlined init with copy of Date?(v134, v34, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v44 = *(v36 + 48);
    v45 = v36;
    v46 = v35;
    if (v44(v34, 1, v35) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence10CRRegisterVySSSgGSgMd);
      v47 = v133;
    }

    else
    {
      (*(v36 + 32))(v41, v34, v35);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd);
      v48 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v48;
      v47 = v133;
      if (v48)
      {
        (*(v45 + 8))(v41, v35);
      }

      (*(v45 + 8))(v41, v35);
    }

    v133 = type metadata accessor for PDFAnnotationElement.Partial(0);
    v49 = v134;
    v50 = v102;
    outlined init with copy of Date?(v134 + v133[5], v102, &_s9Coherence10CRRegisterVySSSgGSgMd);
    if (v44(v50, 1, v46) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySSSgGSgMd);
      v51 = v131;
      v52 = v132;
      v53 = v103;
    }

    else
    {
      v54 = v101;
      (*(v45 + 32))(v101, v50, v46);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd);
      v55 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v55;
      v53 = v103;
      v56 = v45;
      v51 = v131;
      v52 = v132;
      if (v55)
      {
        (*(v56 + 8))(v54, v46);
      }

      (*(v56 + 8))(v54, v46);
    }

    v57 = v130;
    outlined init with copy of Date?(v49 + v133[6], v130, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    if ((*(v52 + 48))(v57, 1, v53) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    }

    else
    {
      v58 = v57;
      v59 = v100;
      (*(v52 + 32))(v100, v58, v53);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      v60 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v60;
      if (v60)
      {
        (*(v52 + 8))(v59, v53);
      }

      (*(v52 + 8))(v59, v53);
    }

    v61 = v49;
    outlined init with copy of Date?(v49 + v133[7], v47, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    v62 = v128;
    v63 = v129;
    if ((*(v128 + 48))(v47, 1, v129) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    }

    else
    {
      v64 = v51;
      v65 = v125;
      (*(v62 + 32))(v125, v47, v63);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureValue?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
      v66 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v66;
      if (v66)
      {
        (*(v62 + 8))(v65, v63);
      }

      (*(v62 + 8))(v65, v63);
      v51 = v64;
    }

    outlined init with copy of Date?(v61 + v133[8], v51, &_s9Coherence10CRRegisterVySiGSgMd);
    v68 = v126;
    v67 = v127;
    if ((*(v126 + 48))(v51, 1, v127) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence10CRRegisterVySiGSgMd);
    }

    else
    {
      v69 = v118;
      (*(v68 + 32))(v118, v51, v67);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd);
      v70 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v70;
      if (v70)
      {
        (*(v68 + 8))(v69, v67);
      }

      (*(v68 + 8))(v69, v67);
    }

    v71 = v133;
    v72 = v121;
    outlined init with copy of Date?(v61 + v133[9], v121, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    v74 = v122;
    v73 = v123;
    v75 = (*(v122 + 48))(v72, 1, v123);
    v76 = v124;
    if (v75 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    }

    else
    {
      v77 = v72;
      v78 = v115;
      (*(v74 + 32))(v115, v77, v73);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Date?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
      v79 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v79;
      if (v79)
      {
        (*(v74 + 8))(v78, v73);
      }

      (*(v74 + 8))(v78, v73);
    }

    v80 = v71;
    v81 = v116;
    outlined init with copy of Date?(v61 + v71[10], v116, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    v82 = v117;
    if ((*(v76 + 48))(v81, 1, v117) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
      v84 = v119;
      v83 = v120;
    }

    else
    {
      v85 = v110;
      (*(v76 + 32))(v110, v81, v82);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFAnnotationElement.AnnotationShape> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
      v86 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v76 + 8))(v85, v82);
      v135 = v86;
      v84 = v119;
      v83 = v120;
      if (v86)
      {
      }
    }

    v87 = v111;
    outlined init with copy of Date?(v61 + v80[11], v111, &_s9Coherence10CRRegisterVySSGSgMd);
    v88 = v112;
    v89 = v113;
    v90 = (*(v112 + 48))(v87, 1, v113);
    v91 = v114;
    if (v90 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence10CRRegisterVySSGSgMd);
    }

    else
    {
      v92 = v107;
      (*(v88 + 32))(v107, v87, v89);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd);
      v93 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v88 + 8))(v92, v89);
      v135 = v93;
      if (v93)
      {
      }

      v84 = v119;
      v83 = v120;
    }

    v94 = v108;
    outlined init with copy of Date?(v61 + v80[12], v108, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    v95 = v109;
    if ((*(v109 + 48))(v94, 1, v84) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
      goto LABEL_45;
    }

    v96 = v104;
    (*(v95 + 32))(v104, v94, v84);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFFieldFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
    v97 = v135;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v95 + 8))(v96, v84);
    v135 = v97;
    if (!v97)
    {
LABEL_45:
      v98 = v105;
      outlined init with copy of Date?(v61 + v80[13], v105, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
      v99 = v106;
      if ((*(v91 + 48))(v98, 1, v106) == 1)
      {

        return outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
      }

      else
      {
        (*(v91 + 32))(v83, v98, v99);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<WeakRef<PDFAnnotationElement>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v91 + 8))(v83, v99);
      }
    }
  }

  return result;
}

void PDFAnnotationElement.init(_:)(PDFAnnotation *a1)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v26 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v26 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v34 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
  CRRegister.init(wrappedValue:)();
  type metadata accessor for PDFAnnotationElement(0);
  v34 = 0uLL;
  CRRegister.init(wrappedValue:)();
  v18 = type metadata accessor for Color(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of Date?(v17, v14, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ColorVSgMd);
  v19 = type metadata accessor for SignatureValue(0);
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  outlined init with copy of Date?(v11, v8, &_s8PaperKit14SignatureValueVSgMd);
  lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s8PaperKit14SignatureValueVSgMd);
  *&v34 = 0;
  CRRegister.init(wrappedValue:)();
  v20 = type metadata accessor for Date();
  v21 = v26;
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  outlined init with copy of Date?(v21, v28, &_s10Foundation4DateVSgMd);
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s10Foundation4DateVSgMd);
  lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  CRRegister.init(wrappedValue:)();
  *&v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v34 + 1) = v22;
  CRRegister.init(wrappedValue:)();
  *&v34 = 0;
  lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags();
  CRRegister.init(wrappedValue:)();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v24 = v30;
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  outlined init with copy of Date?(v24, v31, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  UnknownProperties.init()();
  v25 = v33;
  PDFAnnotationElement.updateFrom(_:)(v33);
}

Swift::Void __swiftcall PDFAnnotationElement.updateFrom(_:)(PDFAnnotation *a1)
{
  v2 = v1;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v182 = &v159 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v163 = &v159 - v8;
  v165 = type metadata accessor for CRKeyPath();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v159 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v159 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v160 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v186 = &v159 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v188 = &v159 - v18;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v175 = &v159 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v174 = &v159 - v23;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v170 = &v159 - v26;
  v189 = type metadata accessor for Color(0);
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v162 = (&v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v168 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v159 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v167 = &v159 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v169 = &v159 - v35;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v194 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v198 = &v159 - v38;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v159 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v159 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v197 = &v159 - v43;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v202 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v199 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v200 = &v159 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v159 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = MEMORY[0x1EEE9AC00](v51).n128_u64[0];
  v54 = &v159 - v53;
  v55 = *MEMORY[0x1E6978078];
  v204 = a1;
  if (![(PDFAnnotation *)a1 valueForAnnotationKey:v55, v52])
  {
    __break(1u);
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v210, &v205);
  swift_dynamicCast();
  v56 = v208;
  v57 = v209;
  v203 = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v205 == __PAIR128__(v57, v56))
  {
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
    }

    else
    {
      *&v205 = v56;
      *(&v205 + 1) = v57;
      CRRegister.value.setter();
    }

    v2 = v1;
  }

  (*(v48 + 16))(v50, v54, v47);
  CRRegister.projectedValue.setter();
  (*(v48 + 8))(v54, v47);
  CRRegister.wrappedValue.getter();
  v59 = v205;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v59 && v60 == *(&v59 + 1))
  {

    return;
  }

  v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v61)
  {

    return;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v59 && v62 == *(&v59 + 1))
  {

    v63 = v204;
    v64 = v198;
    v65 = v197;
    goto LABEL_17;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v63 = v204;
  v64 = v198;
  v65 = v197;
  if ((v66 & 1) == 0)
  {
    v84 = [(PDFAnnotation *)v204 widgetStringValue];
    if (v84)
    {
      v85 = v84;
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;
    }

    else
    {
      v86 = 0;
      v88 = 0;
    }

    v89 = v202;
    v90 = v200;
    v91 = v201;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v86, v88);

    v92 = *(v89 + 16);
    v92(v199, v90, v91);
    v198 = v2;
    CRRegister.projectedValue.setter();
    v93 = *(v89 + 8);
    v93(v90, v91);
    v94 = [(PDFAnnotation *)v63 contents];
    v202 = v89 + 8;
    if (v94)
    {
      v95 = v94;
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;
    }

    else
    {
      v96 = 0;
      v98 = 0;
    }

    v99 = v200;
    v100 = v201;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v96, v98);

    v92(v199, v99, v100);
    CRRegister.projectedValue.setter();
    v93(v99, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    v101 = v169;
    CRRegister.wrappedValue.getter();
    v102 = *(v187 + 48);
    if (v102(v101, 1, v189))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s8PaperKit5ColorVSgMd);
      v103 = 0;
    }

    else
    {
      v104 = v162;
      outlined init with copy of PDFAnnotationElement.Partial(v101, v162, type metadata accessor for Color);
      outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s8PaperKit5ColorVSgMd);
      v103 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      outlined destroy of PDFAnnotationElement.Partial(v104, type metadata accessor for Color);
    }

    v105 = v170;
    v106 = [(PDFAnnotation *)v204 color];
    v107 = v106;
    if (v103)
    {
      if (v106)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
        v108 = static NSObject.== infix(_:_:)();

        if (v108)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      v107 = v103;
    }

    else if (!v106)
    {
      goto LABEL_58;
    }

LABEL_54:
    v109 = [(PDFAnnotation *)v204 color];
    v110 = [(UIColor *)v109 CGColor];
    v111 = v166;
    Color.init(cgColor:)(v110, v166);

    if (v102(v111, 1, v189))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s8PaperKit5ColorVSgMd);
      v112 = 1;
      v113 = v168;
      v114 = v167;
    }

    else
    {
      v114 = v167;
      outlined init with take of PDFAnnotationElement.MutatingAction(v111, v167, type metadata accessor for Color);
      v112 = 0;
      v113 = v168;
    }

    (*(v187 + 56))(v114, v112, 1, v189);
    outlined init with copy of Date?(v114, v113, &_s8PaperKit5ColorVSgMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s8PaperKit5ColorVSgMd);
LABEL_58:
    if ([(PDFAnnotation *)v204 valueForAnnotationKey:*MEMORY[0x1E6978060]])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v210 = 0u;
      v211 = 0u;
    }

    v115 = v181;
    v116 = v174;
    v117 = v173;
    v205 = v210;
    v206 = v211;
    if (*(&v211 + 1))
    {
      v118 = swift_dynamicCast();
      v119 = v177;
      if (v118)
      {
        v120 = v208;
      }

      else
      {
        v120 = 0;
      }
    }

    else
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(&v205, &_sypSgMd);
      v120 = 0;
      v119 = v177;
    }

    CRRegister.projectedValue.getter();
    CRRegister.value.getter();
    if (v205 != v120)
    {
      *&v205 = v120;
      CRRegister.value.setter();
    }

    v121 = v172;
    (*(v172 + 16))(v171, v105, v117);
    CRRegister.projectedValue.setter();
    (*(v121 + 8))(v105, v117);
    v122 = v204;
    v123 = [(PDFAnnotation *)v204 modificationDate];
    if (v123)
    {
      v124 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = 0;
    }

    else
    {
      v125 = 1;
    }

    v126 = v178;
    v127 = type metadata accessor for Date();
    (*(*(v127 - 8) + 56))(v116, v125, 1, v127);
    v128 = v175;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v116);
    outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_s10Foundation4DateVSgMd);
    (*(v119 + 16))(v176, v128, v126);
    CRRegister.projectedValue.setter();
    (*(v119 + 8))(v128, v126);
    v129 = PDFAnnotation.quadPoints.getter();
    [(PDFAnnotation *)v122 bounds];
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v137 = v136;
    CRRegister.projectedValue.getter();
    CRRegister.value.getter();
    v138 = v205;
    v140 = v206;
    v139 = v207;
    if (v205)
    {
      v141 = v186;
      v142 = v180;
      if (!v129 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(v205, v129) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v141 = v186;
      v142 = v180;
      if (v129)
      {
        goto LABEL_78;
      }
    }

    v212.origin.x = *(&v138 + 1);
    *&v212.origin.y = v140;
    v212.size.height = v139;
    v213.origin.x = v131;
    v213.origin.y = v133;
    v213.size.width = v135;
    v213.size.height = v137;
    if (CGRectEqualToRect(v212, v213))
    {

      v143 = v188;
      goto LABEL_79;
    }

LABEL_78:

    *&v205 = v129;
    *(&v205 + 1) = v131;
    *&v206 = v133;
    *(&v206 + 1) = v135;
    v207 = v137;
    v143 = v188;
    CRRegister.value.setter();
LABEL_79:
    (*(v142 + 16))(v179, v143, v115);
    CRRegister.projectedValue.setter();
    (*(v142 + 8))(v143, v115);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
    v145 = *(*(v144 - 8) + 56);
    v145(v141, 1, 1, v144);
    v146 = [(PDFAnnotation *)v122 popup];
    if (v146)
    {
      v147 = v146;
      type metadata accessor for CanvasElementPDFAnnotation();
      v148 = swift_dynamicCastClass();
      if (v148)
      {
        v149 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
        v150 = v148;
        swift_beginAccess();
        v151 = v163;
        outlined init with copy of Date?(v150 + v149, v163, &_s9Coherence9CRKeyPathVSgMd);
        v152 = v164;
        v153 = v165;
        if ((*(v164 + 48))(v151, 1, v165) != 1)
        {
          v154 = v161;
          (*(v152 + 32))(v161, v151, v153);
          (*(v152 + 16))(v159, v154, v153);
          lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement);
          v155 = v160;
          WeakRef.init(id:)();

          (*(v152 + 8))(v154, v153);
          v141 = v186;
          outlined destroy of StocksKitCurrencyCache.Provider?(v186, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
          v145(v155, 0, 1, v144);
          outlined init with take of Range<AttributedString.Index>(v155, v141, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
          goto LABEL_86;
        }

        v141 = v186;
      }

      else
      {

        v151 = v163;
        (*(v164 + 56))(v163, 1, 1, v165);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence9CRKeyPathVSgMd);
    }

LABEL_86:
    v156 = v182;
    v157 = v185;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v141);
    v158 = v184;
    (*(v184 + 16))(v183, v156, v157);
    CRRegister.projectedValue.setter();
    (*(v158 + 8))(v156, v157);
    outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
    return;
  }

LABEL_17:
  v67 = [(PDFAnnotation *)v63 widgetStringValue];
  if (v67)
  {
    v68 = v67;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v72 = v200;
  v73 = v201;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v69, v71);

  v74 = v202;
  (*(v202 + 16))(v199, v72, v73);
  CRRegister.projectedValue.setter();
  (*(v74 + 8))(v72, v73);
  if ([(PDFAnnotation *)v63 signatureAnnotationForRendering])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v210 = 0u;
    v211 = 0u;
  }

  v205 = v210;
  v206 = v211;
  if (*(&v211 + 1))
  {
    v75 = type metadata accessor for SignatureValue(0);
    v76 = swift_dynamicCast();
    (*(*(v75 - 8) + 56))(v65, v76 ^ 1u, 1, v75);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v205, &_sypSgMd);
    v77 = type metadata accessor for SignatureValue(0);
    (*(*(v77 - 8) + 56))(v65, 1, 1, v77);
  }

  v78 = v190;
  v79 = v193;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v65);
  v80 = v192;
  (*(v192 + 16))(v191, v78, v79);
  CRRegister.projectedValue.setter();
  (*(v80 + 8))(v78, v79);
  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s8PaperKit14SignatureValueVSgMd);
  if ([(PDFAnnotation *)v204 valueForAnnotationKey:*MEMORY[0x1E6978080]])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v210 = 0u;
    v211 = 0u;
  }

  v205 = v210;
  v206 = v211;
  if (!*(&v211 + 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v205, &_sypSgMd);
    goto LABEL_33;
  }

  if (!swift_dynamicCast())
  {
LABEL_33:
    v81 = 0;
    goto LABEL_34;
  }

  v81 = v208;
LABEL_34:
  v82 = v196;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v205 != v81)
  {
    *&v205 = v81;
    CRRegister.value.setter();
  }

  v83 = v195;
  (*(v195 + 16))(v194, v64, v82);
  CRRegister.projectedValue.setter();
  (*(v83 + 8))(v64, v82);
}

uint64_t (*PDFAnnotationElement.frame.modify(uint64_t a1))(void, void)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 16) = _Q0;
  return UnknownCanvasElementView.flags.modify;
}

uint64_t PDFAnnotationElement.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PDFAnnotationElement.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 8;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance PDFAnnotationElement(uint64_t a1))(void, void)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 16) = _Q0;
  return UnknownCanvasElementView.flags.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance PDFAnnotationElement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 8;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t PDFAnnotationElement.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PDFAnnotationElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t PDFAnnotationElement.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a1;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v148 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v147 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v144 = v107 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v145 = v107 - v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v143 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v142 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v141 = v107 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v140 = v107 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v138 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v137 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v136 = v107 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v135 = v107 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v133 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v132 = v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v130 = v107 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v129 = v107 - v23;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v128 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v127 = v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = v107 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v124 = v107 - v28;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v123 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v122 = v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v120 = v107 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v119 = v107 - v33;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v118 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v117 = v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v115 = v107 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v114 = v107 - v38;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v113 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v112 = v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v110 = v107 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v109 = v107 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v149 = v107 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = v107 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v107 - v51;
  v152 = type metadata accessor for MergeResult();
  v155 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v107[0] = v107 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a2;
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v54 = *(v45 + 8);
  v54(v52, v44);
  v55 = *(v45 + 16);
  v107[2] = v45 + 16;
  v108 = v55;
  v55(v149, v49, v44);
  CRRegister.projectedValue.setter();
  v54(v49, v44);
  v56 = v107[0];
  MergeResult.merge(_:)();
  v57 = *(v155 + 8);
  v155 += 8;
  v153 = v57;
  v57(v56, v152);
  v58 = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v54(v52, v44);
  v108(v149, v49, v44);
  CRRegister.projectedValue.setter();
  v54(v49, v44);
  MergeResult.merge(_:)();
  v59 = v56;
  v60 = v152;
  v153(v56, v152);
  v150 = v58;
  v61 = v109;
  v62 = v111;
  CRRegister.projectedValue.getter();
  v63 = v2;
  v64 = v110;
  CRRegister.projectedValue.getter();
  v65 = v61;
  CRRegister.merge(_:)();
  v66 = v113;
  v67 = *(v113 + 8);
  v67(v65, v62);
  (*(v66 + 16))(v112, v64, v62);
  CRRegister.projectedValue.setter();
  v67(v64, v62);
  MergeResult.merge(_:)();
  v153(v59, v60);
  v68 = v114;
  v69 = v116;
  CRRegister.projectedValue.getter();
  v70 = v115;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v71 = v118;
  v72 = *(v118 + 8);
  v72(v68, v69);
  (*(v71 + 16))(v117, v70, v69);
  CRRegister.projectedValue.setter();
  v72(v70, v69);
  MergeResult.merge(_:)();
  v153(v59, v152);
  v73 = v119;
  v74 = v121;
  CRRegister.projectedValue.getter();
  v75 = v120;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v76 = v123;
  v77 = *(v123 + 8);
  v77(v73, v74);
  (*(v76 + 16))(v122, v75, v74);
  CRRegister.projectedValue.setter();
  v77(v75, v74);
  MergeResult.merge(_:)();
  v153(v59, v152);
  v78 = v124;
  v79 = v126;
  CRRegister.projectedValue.getter();
  v80 = v125;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v81 = v128;
  v82 = *(v128 + 8);
  v82(v78, v79);
  (*(v81 + 16))(v127, v80, v79);
  CRRegister.projectedValue.setter();
  v82(v80, v79);
  MergeResult.merge(_:)();
  v83 = v152;
  v153(v59, v152);
  v84 = v129;
  v85 = v131;
  CRRegister.projectedValue.getter();
  v86 = v130;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v87 = v133;
  v88 = *(v133 + 8);
  v88(v84, v85);
  (*(v87 + 16))(v132, v86, v85);
  CRRegister.projectedValue.setter();
  v88(v86, v85);
  MergeResult.merge(_:)();
  v153(v59, v83);
  v89 = v135;
  v90 = v134;
  CRRegister.projectedValue.getter();
  v107[1] = v63;
  v91 = v136;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v92 = v138;
  v93 = *(v138 + 8);
  v93(v89, v90);
  (*(v92 + 16))(v137, v91, v90);
  CRRegister.projectedValue.setter();
  v93(v91, v90);
  MergeResult.merge(_:)();
  v153(v59, v152);
  v95 = v139;
  v94 = v140;
  CRRegister.projectedValue.getter();
  v96 = v141;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v97 = v143;
  v98 = *(v143 + 8);
  v98(v94, v95);
  (*(v97 + 16))(v142, v96, v95);
  CRRegister.projectedValue.setter();
  v98(v96, v95);
  MergeResult.merge(_:)();
  v153(v59, v152);
  v99 = v145;
  v100 = v146;
  CRRegister.projectedValue.getter();
  v101 = v144;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v102 = v148;
  v103 = *(v148 + 8);
  v103(v99, v100);
  (*(v102 + 16))(v147, v101, v100);
  CRRegister.projectedValue.setter();
  v103(v101, v100);
  MergeResult.merge(_:)();
  v104 = v152;
  v105 = v153;
  v153(v59, v152);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v105(v59, v104);
}

uint64_t PDFAnnotationElement.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v144 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v2 = *(v1 - 8);
  v142 = v1;
  v143 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v141 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v140 = &v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v130 = &v109 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v9 = *(v8 - 8);
  v138 = v8;
  v139 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v146 = &v109 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v16 = *(v15 - 8);
  v134 = v15;
  v135 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v147 = &v109 - v21;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v131 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v148 = &v109 - v26;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v109 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v149 = &v109 - v31;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v119 = &v109 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v150 = &v109 - v36;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v113 = &v109 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v151 = &v109 - v41;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v109 = &v109 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v145 = &v109 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v109 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v109 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v116 = &v109 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v118 = &v109 - v57;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v58 = *(v48 + 8);
  v58(v50, v47);
  v58(v53, v47);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v58(v50, v47);
  v58(v53, v47);
  v59 = v109;
  v60 = v111;
  CRRegister.projectedValue.getter();
  v61 = v110;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v62 = *(v112 + 8);
  v62(v61, v60);
  v62(v59, v60);
  v63 = v113;
  v64 = v115;
  CRRegister.projectedValue.getter();
  v65 = v114;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v66 = *(v117 + 8);
  v66(v65, v64);
  v66(v63, v64);
  v67 = v119;
  v68 = v121;
  CRRegister.projectedValue.getter();
  v69 = v120;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v70 = *(v122 + 8);
  v70(v69, v68);
  v70(v67, v68);
  v71 = v123;
  v72 = v125;
  CRRegister.projectedValue.getter();
  v73 = v124;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v74 = *(v126 + 8);
  v74(v73, v72);
  v74(v71, v72);
  v75 = v127;
  v76 = v129;
  CRRegister.projectedValue.getter();
  v77 = v128;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v78 = *(v131 + 8);
  v78(v77, v76);
  v78(v75, v76);
  v79 = v132;
  v80 = v134;
  CRRegister.projectedValue.getter();
  v81 = v133;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v82 = *(v135 + 8);
  v82(v81, v80);
  v82(v79, v80);
  v83 = v136;
  v84 = v138;
  CRRegister.projectedValue.getter();
  v85 = v137;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v86 = *(v139 + 8);
  v86(v85, v84);
  v86(v83, v84);
  v87 = v140;
  v88 = v142;
  CRRegister.projectedValue.getter();
  v89 = v116;
  v90 = v141;
  CRRegister.projectedValue.getter();
  v91 = v130;
  v92 = v118;
  CRRegister.actionUndoingDifference(from:)();
  v93 = *(v143 + 8);
  v93(v90, v88);
  v93(v87, v88);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMd);
  v95 = *(*(v94 - 8) + 48);
  if (v95(v92, 1, v94) == 1 && v95(v89, 1, v94) == 1 && (v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd), (*(*(v96 - 8) + 48))(v145, 1, v96) == 1) && (v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GMd), (*(*(v97 - 8) + 48))(v151, 1, v97) == 1) && (v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySi_GMd), (*(*(v98 - 8) + 48))(v150, 1, v98) == 1) && (v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GMd), (*(*(v99 - 8) + 48))(v149, 1, v99) == 1) && (v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GMd), (*(*(v100 - 8) + 48))(v148, 1, v100) == 1) && (v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GMd), (*(*(v101 - 8) + 48))(v147, 1, v101) == 1) && (v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GMd), (*(*(v102 - 8) + 48))(v146, 1, v102) == 1) && (v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GMd), (*(*(v103 - 8) + 48))(v91, 1, v103) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd);
    v104 = type metadata accessor for PDFAnnotationElement.MutatingAction(0);
    (*(*(v104 - 8) + 56))(v144, 1, 1, v104);
    v105 = v145;
  }

  else
  {
    v106 = v144;
    outlined init with copy of Date?(v92, v144, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd);
    v107 = type metadata accessor for PDFAnnotationElement.MutatingAction(0);
    outlined init with copy of Date?(v89, v106 + v107[5], &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd);
    v105 = v145;
    outlined init with copy of Date?(v145, v106 + v107[6], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
    outlined init with copy of Date?(v151, v106 + v107[7], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMd);
    outlined init with copy of Date?(v150, v106 + v107[8], &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd);
    outlined init with copy of Date?(v149, v106 + v107[9], &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMd);
    outlined init with copy of Date?(v148, v106 + v107[10], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMd);
    outlined init with copy of Date?(v147, v106 + v107[11], &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd);
    outlined init with copy of Date?(v146, v106 + v107[12], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMd);
    outlined init with copy of Date?(v91, v106 + v107[13], &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd);
    (*(*(v107 - 1) + 56))(v106, 0, 1, v107);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v148, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd);
}

uint64_t PDFAnnotationElement.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v3 = *(v2 - 8);
  v90 = v2;
  v91 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v89 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v108 = v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v105 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v101 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v97 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = v74 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v94 = *(v19 - 8);
  v95 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v93 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = v74 - v22;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v85 = v74 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v81 = v74 - v28;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v77 = v74 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v76 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v74 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = v74 - v39;
  v41 = type metadata accessor for PDFAnnotationElement.MutatingAction(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v74 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v40, &_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMd);
  v45 = v41;
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMd);
  }

  v47 = v44;
  outlined init with take of PDFAnnotationElement.MutatingAction(v40, v44, type metadata accessor for PDFAnnotationElement.MutatingAction);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v48 = v76;
  v75 = *(v76 + 16);
  v75(v34, v37, v32);
  CRRegister.projectedValue.setter();
  v76 = *(v48 + 8);
  (v76)(v37, v32);
  v74[1] = v45;
  v74[0] = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v75(v34, v37, v32);
  CRRegister.projectedValue.setter();
  (v76)(v37, v32);
  v49 = v77;
  v50 = v80;
  CRRegister.projectedValue.getter();
  v51 = v47;
  CRRegister.apply(_:)();
  v52 = v79;
  (*(v79 + 16))(v78, v49, v50);
  CRRegister.projectedValue.setter();
  (*(v52 + 8))(v49, v50);
  v53 = v81;
  v54 = v84;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v55 = v83;
  (*(v83 + 16))(v82, v53, v54);
  CRRegister.projectedValue.setter();
  (*(v55 + 8))(v53, v54);
  v56 = v85;
  v57 = v88;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v58 = v87;
  (*(v87 + 16))(v86, v56, v57);
  CRRegister.projectedValue.setter();
  (*(v58 + 8))(v56, v57);
  v59 = v92;
  v60 = v95;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v61 = v94;
  (*(v94 + 16))(v93, v59, v60);
  CRRegister.projectedValue.setter();
  (*(v61 + 8))(v59, v60);
  v62 = v96;
  v63 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v64 = v98;
  (*(v98 + 16))(v97, v62, v63);
  CRRegister.projectedValue.setter();
  (*(v64 + 8))(v62, v63);
  v65 = v100;
  v66 = v103;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v67 = v102;
  (*(v102 + 16))(v101, v65, v66);
  CRRegister.projectedValue.setter();
  (*(v67 + 8))(v65, v66);
  v68 = v104;
  v69 = v107;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v70 = v106;
  (*(v106 + 16))(v105, v68, v69);
  CRRegister.projectedValue.setter();
  (*(v70 + 8))(v68, v69);
  v71 = v108;
  v72 = v90;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v73 = v91;
  (*(v91 + 16))(v89, v71, v72);
  CRRegister.projectedValue.setter();
  (*(v73 + 8))(v71, v72);
  return outlined destroy of PDFAnnotationElement.Partial(v51, type metadata accessor for PDFAnnotationElement.MutatingAction);
}

uint64_t PDFAnnotationElement.hasDelta(from:)(uint64_t a1)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v86 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v99 = *(v9 - 8);
  v100 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v103 = *(v13 - 8);
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v106 = *(v17 - 8);
  v107 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v110 = *(v22 - 8);
  v111 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v109 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v86 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v114 = *(v26 - 8);
  v115 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v86 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v116 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v86 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v86 - v41;
  v118 = v1;
  CRRegister.projectedValue.getter();
  v117 = a1;
  CRRegister.projectedValue.getter();
  v43 = CRRegister.hasDelta(from:)();
  v44 = *(v37 + 8);
  v44(v39, v36);
  v44(v42, v36);
  if (v43 & 1) != 0 || (v87 = v21, v45 = type metadata accessor for PDFAnnotationElement(0), CRRegister.projectedValue.getter(), v88 = v45, CRRegister.projectedValue.getter(), v46 = CRRegister.hasDelta(from:)(), v44(v39, v36), v44(v42, v36), (v46) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v47 = CRRegister.hasDelta(from:)(), v48 = *(v116 + 8), v48(v32, v30), v48(v35, v30), (v47) || (v49 = v112, v50 = v115, CRRegister.projectedValue.getter(), v51 = v113, CRRegister.projectedValue.getter(), v52 = CRRegister.hasDelta(from:)(), v53 = *(v114 + 8), v53(v51, v50), v53(v49, v50), (v52) || (v54 = v108, v55 = v111, CRRegister.projectedValue.getter(), v56 = v109, CRRegister.projectedValue.getter(), v57 = CRRegister.hasDelta(from:)(), v58 = *(v110 + 8), v58(v56, v55), v58(v54, v55), (v57) || (v59 = v87, v60 = v107, CRRegister.projectedValue.getter(), v61 = v105, CRRegister.projectedValue.getter(), v62 = CRRegister.hasDelta(from:)(), v63 = *(v106 + 8), v63(v61, v60), v63(v59, v60), (v62) || (v64 = v101, v65 = v104, CRRegister.projectedValue.getter(), v66 = v102, CRRegister.projectedValue.getter(), v67 = CRRegister.hasDelta(from:)(), v68 = *(v103 + 8), v68(v66, v65), v68(v64, v65), (v67) || (v69 = v97, v70 = v100, CRRegister.projectedValue.getter(), v71 = v98, CRRegister.projectedValue.getter(), v72 = CRRegister.hasDelta(from:)(), v73 = *(v99 + 8), v73(v71, v70), v73(v69, v70), (v72) || (v74 = v93, v75 = v96, CRRegister.projectedValue.getter(), v76 = v94, CRRegister.projectedValue.getter(), v77 = CRRegister.hasDelta(from:)(), v78 = *(v95 + 8), v78(v76, v75), v78(v74, v75), (v77) || (v79 = v89, v80 = v92, CRRegister.projectedValue.getter(), v81 = v90, CRRegister.projectedValue.getter(), v82 = CRRegister.hasDelta(from:)(), v83 = *(v91 + 8), v83(v81, v80), v83(v79, v80), (v82))
  {
    v84 = 1;
  }

  else
  {
    v84 = UnknownProperties.hasDelta(from:)();
  }

  return v84 & 1;
}

uint64_t PDFAnnotationElement.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnknownProperties();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v124 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v8 = *(v7 - 8);
  v122 = v7;
  v123 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v121 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v120 = v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v13 = *(v12 - 8);
  v118 = v12;
  v119 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v117 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v18 = *(v17 - 8);
  v114 = v17;
  v115 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v113 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = v91 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v23 = *(v22 - 8);
  v110 = v22;
  v111 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v109 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v108 = v91 - v26;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v104 = v91 - v29;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v100 = v91 - v32;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v96 = v91 - v35;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v92 = v91 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v91 - v44;
  v127 = v2;
  v128 = a2;
  outlined init with copy of PDFAnnotationElement.Partial(v2, a2, type metadata accessor for PDFAnnotationElement);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v46 = *(v40 + 8);
  v46(v42, v39);
  v91[0] = *(v40 + 16);
  (v91[0])(v42, v45, v39);
  CRRegister.projectedValue.setter();
  v46(v45, v39);
  v47 = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v46(v42, v39);
  (v91[0])(v42, v45, v39);
  CRRegister.projectedValue.setter();
  v46(v45, v39);
  v48 = v93;
  v49 = v94;
  CRRegister.projectedValue.getter();
  v50 = v92;
  v91[1] = a1;
  CRRegister.copy(renamingReferences:)();
  v51 = v95;
  v52 = *(v95 + 8);
  v52(v48, v49);
  (*(v51 + 16))(v48, v50, v49);
  v53 = v128;
  CRRegister.projectedValue.setter();
  v52(v50, v49);
  v54 = v97;
  v55 = v98;
  CRRegister.projectedValue.getter();
  v56 = v96;
  CRRegister.copy(renamingReferences:)();
  v57 = v99;
  v58 = *(v99 + 8);
  v58(v54, v55);
  (*(v57 + 16))(v54, v56, v55);
  CRRegister.projectedValue.setter();
  v58(v56, v55);
  v59 = v101;
  v60 = v102;
  CRRegister.projectedValue.getter();
  v61 = v100;
  CRRegister.copy(renamingReferences:)();
  v62 = v103;
  v63 = *(v103 + 8);
  v63(v59, v60);
  (*(v62 + 16))(v59, v61, v60);
  CRRegister.projectedValue.setter();
  v63(v61, v60);
  v64 = v105;
  v65 = v106;
  CRRegister.projectedValue.getter();
  v66 = v104;
  CRRegister.copy(renamingReferences:)();
  v67 = v107;
  v68 = *(v107 + 8);
  v68(v64, v65);
  (*(v67 + 16))(v64, v66, v65);
  CRRegister.projectedValue.setter();
  v68(v66, v65);
  v70 = v109;
  v69 = v110;
  CRRegister.projectedValue.getter();
  v71 = v108;
  CRRegister.copy(renamingReferences:)();
  v72 = v111;
  v73 = *(v111 + 8);
  v73(v70, v69);
  (*(v72 + 16))(v70, v71, v69);
  CRRegister.projectedValue.setter();
  v73(v71, v69);
  v75 = v113;
  v74 = v114;
  CRRegister.projectedValue.getter();
  v76 = v112;
  CRRegister.copy(renamingReferences:)();
  v77 = v115;
  v78 = *(v115 + 8);
  v78(v75, v74);
  (*(v77 + 16))(v75, v76, v74);
  CRRegister.projectedValue.setter();
  v78(v76, v74);
  v80 = v117;
  v79 = v118;
  CRRegister.projectedValue.getter();
  v81 = v116;
  CRRegister.copy(renamingReferences:)();
  v82 = v119;
  v83 = *(v119 + 8);
  v83(v80, v79);
  (*(v82 + 16))(v80, v81, v79);
  CRRegister.projectedValue.setter();
  v83(v81, v79);
  v85 = v121;
  v84 = v122;
  CRRegister.projectedValue.getter();
  v86 = v120;
  CRRegister.copy(renamingReferences:)();
  v87 = v123;
  v88 = *(v123 + 8);
  v88(v85, v84);
  (*(v87 + 16))(v85, v86, v84);
  CRRegister.projectedValue.setter();
  v88(v86, v84);
  v89 = v124;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v125 + 40))(v53 + *(v47 + 56), v89, v126);
}

uint64_t PDFAnnotationElement.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v72 = type metadata accessor for UnknownProperties();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v69 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v69 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v87 = &v69 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v91 = &v69 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v95 = &v69 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v99 = &v69 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v103 = &v69 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v107 = &v69 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v69 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v69 - v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v122);
  v114 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v69 - v18;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v126);
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v69 - v27;
  v123 = 0uLL;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v30 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
  v31 = v119;
  v115 = v29;
  v116 = v30;
  CRRegister.init(wrappedValue:)();
  v32 = type metadata accessor for PDFAnnotationElement(0);
  v33 = v32[5];
  v123 = 0uLL;
  v106 = v33;
  CRRegister.init(wrappedValue:)();
  v34 = v32[6];
  v35 = type metadata accessor for Color(0);
  (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  outlined init with copy of Date?(v28, v25, &_s8PaperKit5ColorVSgMd);
  v36 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v100 = v34;
  v105 = v23;
  v104 = v36;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit5ColorVSgMd);
  v37 = v32[7];
  v38 = type metadata accessor for SignatureValue(0);
  (*(*(v38 - 8) + 56))(v22, 1, 1, v38);
  outlined init with copy of Date?(v22, v111, &_s8PaperKit14SignatureValueVSgMd);
  v39 = lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?();
  v96 = v37;
  v111 = v39;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit14SignatureValueVSgMd);
  v40 = v32[8];
  *&v123 = 0;
  v92 = v40;
  CRRegister.init(wrappedValue:)();
  v41 = v32[9];
  v42 = type metadata accessor for Date();
  v43 = v113;
  (*(*(v42 - 8) + 56))(v113, 1, 1, v42);
  outlined init with copy of Date?(v43, v114, &_s10Foundation4DateVSgMd);
  v44 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd);
  v88 = v41;
  v114 = v44;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s10Foundation4DateVSgMd);
  v45 = v32[10];
  v46 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
  v123 = 0u;
  v124 = 0u;
  v125 = 0;
  v84 = v45;
  v113 = v46;
  CRRegister.init(wrappedValue:)();
  v47 = v32[11];
  *&v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v123 + 1) = v48;
  v80 = v47;
  CRRegister.init(wrappedValue:)();
  v49 = v32[12];
  *&v123 = 0;
  v50 = lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags();
  v76 = v49;
  CRRegister.init(wrappedValue:)();
  v51 = v32[13];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v53 = v117;
  (*(*(v52 - 8) + 56))(v117, 1, 1, v52);
  outlined init with copy of Date?(v53, v118, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  v54 = lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  v55 = v32[14];
  UnknownProperties.init()();
  v56 = v112;
  v57 = v120;
  CRRegister.init(defaultState:)();
  if (v57)
  {
    return outlined destroy of PDFAnnotationElement.Partial(v31, type metadata accessor for PDFAnnotationElement);
  }

  v118 = v54;
  v120 = v50;
  v70 = v55;
  v117 = v51;
  v58 = v106;
  v59 = v107;
  v60 = *(v108 + 40);
  v60(v31, v56, v110);
  CRRegister.init(defaultState:)();
  v60(v31 + v58, v109, v110);
  CRRegister.init(defaultState:)();
  (*(v101 + 40))(v31 + v100, v59, v102);
  v61 = v103;
  CRRegister.init(defaultState:)();
  (*(v97 + 40))(v31 + v96, v61, v98);
  v62 = v99;
  CRRegister.init(defaultState:)();
  (*(v93 + 40))(v31 + v92, v62, v94);
  v63 = v95;
  CRRegister.init(defaultState:)();
  (*(v89 + 40))(v31 + v88, v63, v90);
  v64 = v91;
  CRRegister.init(defaultState:)();
  (*(v85 + 40))(v31 + v84, v64, v86);
  v65 = v87;
  CRRegister.init(defaultState:)();
  (*(v81 + 40))(v31 + v80, v65, v82);
  v66 = v83;
  CRRegister.init(defaultState:)();
  (*(v77 + 40))(v31 + v76, v66, v78);
  v67 = v79;
  CRRegister.init(defaultState:)();
  (*(v73 + 40))(&v117[v31], v67, v74);
  UnknownProperties.init(defaultState:)();
  return (*(v71 + 40))(v31 + v70, v75, v72);
}

uint64_t PDFAnnotationElement.isDefaultState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v49 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v47 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v66 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  type metadata accessor for PDFAnnotationElement(0);
  v67 = v0;
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (v47 = v1, CRRegister.projectedValue.getter(), v23 = CRRegister.isDefaultState.getter(), v24 = *(v20 + 8), v24(v22, v19), (v23) && (CRRegister.projectedValue.getter(), v25 = CRRegister.isDefaultState.getter(), v24(v22, v19), (v25) && (CRRegister.projectedValue.getter(), v26 = CRRegister.isDefaultState.getter(), (*(v66 + 8))(v18, v16), (v26) && (CRRegister.projectedValue.getter(), v27 = CRRegister.isDefaultState.getter(), (*(v65 + 8))(v15, v13), (v27) && (v28 = v62, v29 = v64, CRRegister.projectedValue.getter(), v30 = CRRegister.isDefaultState.getter(), (*(v63 + 8))(v28, v29), (v30) && (v31 = v59, v32 = v61, CRRegister.projectedValue.getter(), v33 = CRRegister.isDefaultState.getter(), (*(v60 + 8))(v31, v32), (v33) && (v34 = v56, v35 = v58, CRRegister.projectedValue.getter(), v36 = CRRegister.isDefaultState.getter(), (*(v57 + 8))(v34, v35), (v36) && (v37 = v53, v38 = v55, CRRegister.projectedValue.getter(), v39 = CRRegister.isDefaultState.getter(), (*(v54 + 8))(v37, v38), (v39) && (v40 = v50, v41 = v52, CRRegister.projectedValue.getter(), v42 = CRRegister.isDefaultState.getter(), (*(v51 + 8))(v40, v41), (v42))
  {
    v43 = v47;
    v44 = v48;
    CRRegister.projectedValue.getter();
    v45 = CRRegister.isDefaultState.getter();
    (*(v49 + 8))(v44, v43);
  }

  else
  {
    v45 = 0;
  }

  return v45 & 1;
}

uint64_t PDFAnnotationElement.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v1 = *(v0 - 8);
  v65 = v0;
  v66 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v64 = &v44 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v4 = *(v3 - 8);
  v62 = v3;
  v63 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v16 = *(v15 - 8);
  v50 = v15;
  v51 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v44 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v19 = *(v18 - 8);
  v47 = v18;
  v48 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v44 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v45 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v44 - v26;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v28 = *(v25 + 8);
  v28(v27, v24);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v28(v27, v24);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v45 + 8))(v23, v21);
  v30 = v46;
  v29 = v47;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v48 + 8))(v30, v29);
  v32 = v49;
  v31 = v50;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v51 + 8))(v32, v31);
  v34 = v52;
  v33 = v53;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v54 + 8))(v34, v33);
  v36 = v55;
  v35 = v56;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v57 + 8))(v36, v35);
  v38 = v58;
  v37 = v59;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v60 + 8))(v38, v37);
  v40 = v61;
  v39 = v62;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v63 + 8))(v40, v39);
  v42 = v64;
  v41 = v65;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v66 + 8))(v42, v41);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PDFAnnotationElement.newRefs(from:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v2 = *(v1 - 8);
  v117 = v1;
  v118 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v116 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v115 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v7 = *(v6 - 8);
  v113 = v6;
  v114 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v112 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v12 = *(v11 - 8);
  v109 = v11;
  v110 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v17 = *(v16 - 8);
  v105 = v16;
  v106 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v22 = *(v21 - 8);
  v101 = v21;
  v102 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v87 - v25;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v95 = &v87 - v28;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v91 = &v87 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v90 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v88 = &v87 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v87 - v41;
  v119 = MEMORY[0x1E69E7CD0];
  v87 = v0;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v43 = CRRegister.newRefs(from:)();
  v44 = *(v37 + 8);
  v44(v39, v36);
  v44(v42, v36);
  specialized Set.formUnion<A>(_:)(v43);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v45 = CRRegister.newRefs(from:)();
  v44(v39, v36);
  v44(v42, v36);
  specialized Set.formUnion<A>(_:)(v45);
  v46 = v88;
  CRRegister.projectedValue.getter();
  v47 = v89;
  CRRegister.projectedValue.getter();
  v48 = CRRegister.newRefs(from:)();
  v49 = *(v90 + 8);
  v49(v47, v32);
  v49(v46, v32);
  specialized Set.formUnion<A>(_:)(v48);
  v50 = v91;
  v51 = v93;
  CRRegister.projectedValue.getter();
  v52 = v92;
  CRRegister.projectedValue.getter();
  v53 = CRRegister.newRefs(from:)();
  v54 = *(v94 + 8);
  v54(v52, v51);
  v54(v50, v51);
  specialized Set.formUnion<A>(_:)(v53);
  v55 = v95;
  v56 = v97;
  CRRegister.projectedValue.getter();
  v57 = v96;
  CRRegister.projectedValue.getter();
  v58 = CRRegister.newRefs(from:)();
  v59 = *(v98 + 8);
  v59(v57, v56);
  v59(v55, v56);
  specialized Set.formUnion<A>(_:)(v58);
  v60 = v99;
  v61 = v101;
  CRRegister.projectedValue.getter();
  v62 = v100;
  CRRegister.projectedValue.getter();
  v63 = CRRegister.newRefs(from:)();
  v64 = *(v102 + 8);
  v64(v62, v61);
  v64(v60, v61);
  specialized Set.formUnion<A>(_:)(v63);
  v65 = v103;
  v66 = v105;
  CRRegister.projectedValue.getter();
  v67 = v104;
  CRRegister.projectedValue.getter();
  v68 = CRRegister.newRefs(from:)();
  v69 = *(v106 + 8);
  v69(v67, v66);
  v69(v65, v66);
  specialized Set.formUnion<A>(_:)(v68);
  v70 = v107;
  v71 = v109;
  CRRegister.projectedValue.getter();
  v72 = v108;
  CRRegister.projectedValue.getter();
  v73 = CRRegister.newRefs(from:)();
  v74 = *(v110 + 8);
  v74(v72, v71);
  v74(v70, v71);
  specialized Set.formUnion<A>(_:)(v73);
  v75 = v111;
  v76 = v113;
  CRRegister.projectedValue.getter();
  v77 = v112;
  CRRegister.projectedValue.getter();
  v78 = CRRegister.newRefs(from:)();
  v79 = *(v114 + 8);
  v79(v77, v76);
  v79(v75, v76);
  specialized Set.formUnion<A>(_:)(v78);
  v80 = v115;
  v81 = v117;
  CRRegister.projectedValue.getter();
  v82 = v116;
  CRRegister.projectedValue.getter();
  v83 = CRRegister.newRefs(from:)();
  v84 = *(v118 + 8);
  v84(v82, v81);
  v84(v80, v81);
  specialized Set.formUnion<A>(_:)(v83);
  v85 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v85);
  return v119;
}

Swift::Bool __swiftcall PDFAnnotationElement.needToFinalizeTimestamps()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v51 = &v50 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - v22;
  v70 = v0;
  CRRegister.projectedValue.getter();
  v24 = CRRegister.needToFinalizeTimestamps()();
  v25 = *(v21 + 8);
  v25(v23, v20);
  v48 = v24 || (v50 = v11, type metadata accessor for PDFAnnotationElement(0), CRRegister.projectedValue.getter(), v26 = CRRegister.needToFinalizeTimestamps()(), v25(v23, v20), v26) || (CRRegister.projectedValue.getter(), v27 = CRRegister.needToFinalizeTimestamps()(), (*(v17 + 8))(v19, v16), v27) || (v28 = v69, CRRegister.projectedValue.getter(), v29 = CRRegister.needToFinalizeTimestamps()(), (*(v68 + 8))(v15, v28), v29) || (v30 = v66, v31 = v50, CRRegister.projectedValue.getter(), v32 = CRRegister.needToFinalizeTimestamps()(), (*(v67 + 8))(v30, v31), v32) || (v33 = v63, v34 = v65, CRRegister.projectedValue.getter(), v35 = CRRegister.needToFinalizeTimestamps()(), (*(v64 + 8))(v33, v34), v35) || (v36 = v60, v37 = v62, CRRegister.projectedValue.getter(), v38 = CRRegister.needToFinalizeTimestamps()(), (*(v61 + 8))(v36, v37), v38) || (v39 = v57, v40 = v59, CRRegister.projectedValue.getter(), v41 = CRRegister.needToFinalizeTimestamps()(), (*(v58 + 8))(v39, v40), v41) || (v42 = v54, v43 = v56, CRRegister.projectedValue.getter(), v44 = CRRegister.needToFinalizeTimestamps()(), (*(v55 + 8))(v42, v43), v44) || (v45 = v51, v46 = v53, CRRegister.projectedValue.getter(), v47 = CRRegister.needToFinalizeTimestamps()(), (*(v52 + 8))(v45, v46), v47) || UnknownProperties.needToFinalizeTimestamps()();
  return v48;
}

uint64_t PDFAnnotationElement.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v3 = *(v2 - 8);
  v101 = v2;
  v102 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v100 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v99 = v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v8 = *(v7 - 8);
  v97 = v7;
  v98 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v96 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v95 = v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v13 = *(v12 - 8);
  v93 = v12;
  v94 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v92 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v91 = v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v18 = *(v17 - 8);
  v89 = v17;
  v90 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v88 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v87 = v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v23 = *(v22 - 8);
  v85 = v22;
  v86 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v84 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v83 = v69 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v79 = v69 - v29;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v75 = v69 - v32;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v71 = v69 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v69 - v41;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v70 = *(v37 + 16);
  v70(v39, v42, v36);
  CRRegister.projectedValue.setter();
  v43 = *(v37 + 8);
  v43(v42, v36);
  v69[1] = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v70(v39, v42, v36);
  CRRegister.projectedValue.setter();
  v43(v42, v36);
  v44 = v71;
  v45 = v73;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v46 = v74;
  (*(v74 + 16))(v72, v44, v45);
  CRRegister.projectedValue.setter();
  (*(v46 + 8))(v44, v45);
  v47 = v75;
  v48 = v77;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v49 = v78;
  (*(v78 + 16))(v76, v47, v48);
  CRRegister.projectedValue.setter();
  (*(v49 + 8))(v47, v48);
  v50 = v79;
  v51 = v81;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v52 = v82;
  (*(v82 + 16))(v80, v50, v51);
  CRRegister.projectedValue.setter();
  (*(v52 + 8))(v50, v51);
  v53 = v83;
  v54 = v85;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v55 = v86;
  (*(v86 + 16))(v84, v53, v54);
  CRRegister.projectedValue.setter();
  (*(v55 + 8))(v53, v54);
  v56 = v87;
  v57 = v89;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v58 = v90;
  (*(v90 + 16))(v88, v56, v57);
  CRRegister.projectedValue.setter();
  (*(v58 + 8))(v56, v57);
  v59 = v91;
  v60 = v93;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v61 = v94;
  (*(v94 + 16))(v92, v59, v60);
  CRRegister.projectedValue.setter();
  (*(v61 + 8))(v59, v60);
  v62 = v95;
  v63 = v97;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v64 = v98;
  (*(v98 + 16))(v96, v62, v63);
  CRRegister.projectedValue.setter();
  (*(v64 + 8))(v62, v63);
  v65 = v99;
  v66 = v101;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v67 = v102;
  (*(v102 + 16))(v100, v65, v66);
  CRRegister.projectedValue.setter();
  (*(v67 + 8))(v65, v66);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t PDFAnnotationElement.observableDifference(from:with:)@<X0>(uint64_t a1@<X8>)
{
  v143 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v3 = *(v2 - 8);
  v141 = v2;
  v142 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v140 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v139 = &v107 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v126 = &v107 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v10 = *(v9 - 8);
  v137 = v9;
  v138 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v136 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v15 = *(v14 - 8);
  v133 = v14;
  v134 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v132 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v107 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v130 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v107 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v107 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v121 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v117 = &v107 - v27;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v116 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v107 - v30;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v109 = &v107 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v107 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v148 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v149 = &v107 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v146 = &v107 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v145 = &v107 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v150 = &v107 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v147 = &v107 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v151 = &v107 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v144 = &v107 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v118 = &v107 - v58;
  v108 = v1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v59 = *(v35 + 8);
  v59(v37, v34);
  v59(v40, v34);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v59(v37, v34);
  v59(v40, v34);
  v60 = v109;
  v61 = v111;
  CRRegister.projectedValue.getter();
  v62 = v110;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v63 = *(v112 + 8);
  v63(v62, v61);
  v63(v60, v61);
  v64 = v113;
  v65 = v115;
  CRRegister.projectedValue.getter();
  v66 = v114;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v67 = *(v116 + 8);
  v67(v66, v65);
  v67(v64, v65);
  v68 = v117;
  v69 = v120;
  CRRegister.projectedValue.getter();
  v70 = v119;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v71 = *(v121 + 8);
  v71(v70, v69);
  v71(v68, v69);
  v72 = v122;
  v73 = v124;
  CRRegister.projectedValue.getter();
  v74 = v123;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v75 = *(v125 + 8);
  v75(v74, v73);
  v75(v72, v73);
  v76 = v127;
  v77 = v129;
  CRRegister.projectedValue.getter();
  v78 = v128;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v79 = *(v130 + 8);
  v79(v78, v77);
  v79(v76, v77);
  v80 = v131;
  v81 = v133;
  CRRegister.projectedValue.getter();
  v82 = v132;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v83 = *(v134 + 8);
  v83(v82, v81);
  v83(v80, v81);
  v84 = v135;
  v85 = v137;
  CRRegister.projectedValue.getter();
  v86 = v136;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v87 = *(v138 + 8);
  v87(v86, v85);
  v87(v84, v85);
  v88 = v139;
  v89 = v141;
  CRRegister.projectedValue.getter();
  v90 = v144;
  v91 = v140;
  CRRegister.projectedValue.getter();
  v92 = v126;
  v93 = v118;
  CRRegister.observableDifference(from:with:)();
  v94 = *(v142 + 8);
  v95 = v91;
  v96 = v146;
  v94(v95, v89);
  v97 = v88;
  v98 = v145;
  v94(v97, v89);
  v99 = type metadata accessor for CRValueObservableDifference();
  v100 = *(*(v99 - 8) + 48);
  if (v100(v93, 1, v99) == 1 && v100(v90, 1, v99) == 1 && v100(v151, 1, v99) == 1 && v100(v147, 1, v99) == 1 && v100(v150, 1, v99) == 1 && v100(v98, 1, v99) == 1 && v100(v96, 1, v99) == 1 && v100(v149, 1, v99) == 1 && v100(v148, 1, v99) == 1 && (v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GMd), (*(*(v101 - 8) + 48))(v92, 1, v101) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v102 = type metadata accessor for PDFAnnotationElement.ObservableDifference(0);
    (*(*(v102 - 8) + 56))(v143, 1, 1, v102);
    v103 = v147;
  }

  else
  {
    v104 = v143;
    outlined init with copy of Date?(v93, v143, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v105 = type metadata accessor for PDFAnnotationElement.ObservableDifference(0);
    outlined init with copy of Date?(v90, v104 + v105[5], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v151, v104 + v105[6], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v103 = v147;
    outlined init with copy of Date?(v147, v104 + v105[7], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v150, v104 + v105[8], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v98, v104 + v105[9], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v96, v104 + v105[10], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v149, v104 + v105[11], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v148, v104 + v105[12], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v92, v104 + v105[13], &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    (*(*(v105 - 1) + 56))(v104, 0, 1, v105);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v148, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t PDFAnnotationElement.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v50 = *(v0 - 8);
  v51 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v49 = &v43 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v43 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v43 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v68 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = v69;
  result = dispatch thunk of CREncoder.keyedContainer()();
  v69 = result;
  if (!v23)
  {
    v47 = v19;
    v48 = v17;
    v45 = v15;
    v46 = v13;
    v44 = v12;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v25 = v22;
    v26 = *(v48 + 8);
    v26(v25, v16);
    v48 = type metadata accessor for PDFAnnotationElement(0);
    v27 = v47;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v26(v27, v16);
    v28 = v45;
    v29 = v46;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v68 + 8))(v28, v29);
    v30 = v44;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureValue?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v67 + 8))(v30, v10);
    v31 = v64;
    v32 = v65;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v66 + 8))(v32, v31);
    v33 = v61;
    v34 = v63;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Date?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v62 + 8))(v33, v34);
    v35 = v58;
    v36 = v59;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFAnnotationElement.AnnotationShape> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v36, v35);
    v37 = v55;
    v38 = v57;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v37, v38);
    v39 = v52;
    v40 = v54;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFFieldFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v53 + 8))(v39, v40);
    v41 = v49;
    v42 = v51;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<WeakRef<PDFAnnotationElement>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v50 + 8))(v41, v42);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t PDFAnnotationElement.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a1;
  v130 = type metadata accessor for UnknownProperties();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v136 = (&v122 - v5);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v131 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v127 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v122 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v145 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v133 = &v122 - v9;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v173 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v138 = &v122 - v10;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v141 = &v122 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v139 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v147 = &v122 - v12;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v152 = &v122 - v13;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v156 = &v122 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v159 = &v122 - v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v162 = &v122 - v16;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v172 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v171 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v122 - v19;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v179);
  v182 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v122 - v22;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v180);
  v176 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v175 = &v122 - v25;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v181);
  v174 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v122 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v122 - v34;
  v184 = 0uLL;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v37 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
  CRRegister.init(wrappedValue:)();
  v38 = type metadata accessor for PDFAnnotationElement(0);
  v39 = v38[5];
  v184 = 0uLL;
  v160 = v39;
  v40 = a2;
  v168 = v37;
  v169 = v36;
  CRRegister.init(wrappedValue:)();
  v41 = v38[6];
  v42 = type metadata accessor for Color(0);
  (*(*(v42 - 8) + 56))(v35, 1, 1, v42);
  outlined init with copy of Date?(v35, v32, &_s8PaperKit5ColorVSgMd);
  v43 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v164 = v41;
  v165 = v30;
  v161 = v43;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit5ColorVSgMd);
  v44 = v38[7];
  v45 = type metadata accessor for SignatureValue(0);
  (*(*(v45 - 8) + 56))(v29, 1, 1, v45);
  outlined init with copy of Date?(v29, v174, &_s8PaperKit14SignatureValueVSgMd);
  v46 = lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?();
  v167 = v44;
  v163 = v46;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s8PaperKit14SignatureValueVSgMd);
  v47 = v38[8];
  *&v184 = 0;
  v148 = v47;
  CRRegister.init(wrappedValue:)();
  v48 = v38[9];
  v49 = type metadata accessor for Date();
  v50 = v175;
  (*(*(v49 - 8) + 56))(v175, 1, 1, v49);
  outlined init with copy of Date?(v50, v176, &_s10Foundation4DateVSgMd);
  v51 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd);
  v174 = v48;
  v176 = v51;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s10Foundation4DateVSgMd);
  v52 = v38[10];
  v53 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
  v184 = 0u;
  v185 = 0u;
  v186 = 0;
  v151 = v52;
  v146 = v53;
  CRRegister.init(wrappedValue:)();
  v54 = v38[11];
  *&v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v184 + 1) = v55;
  v175 = v54;
  CRRegister.init(wrappedValue:)();
  v56 = v38[12];
  *&v184 = 0;
  v57 = lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags();
  v132 = v56;
  CRRegister.init(wrappedValue:)();
  v58 = v38[13];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v60 = v177;
  (*(*(v59 - 8) + 56))(v177, 1, 1, v59);
  outlined init with copy of Date?(v60, v182, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  v61 = lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  v62 = v38[14];
  v182 = v40;
  UnknownProperties.init()();
  v63 = v178;
  v64 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v63)
  {

    return outlined destroy of PDFAnnotationElement.Partial(v182, type metadata accessor for PDFAnnotationElement);
  }

  else
  {
    v65 = v167;
    v177 = v57;
    v125 = v61;
    v66 = v170;
    v124 = v58;
    v67 = v171;
    v68 = v172;
    v123 = v62;
    v69 = v173;
    v178 = v64;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      (*(v68 + 40))(v182, v66, v166);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      (*(v68 + 40))(v182 + v160, v67, v166);
    }

    v70 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v71 = v174;
    v72 = v164;
    if (v70)
    {
      v73 = v162;
      CRRegister.init(from:)();
      (*(v157 + 40))(v182 + v72, v73, v158);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v74 = v159;
      CRRegister.init(from:)();
      (*(v153 + 40))(v182 + v65, v74, v154);
    }

    v75 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v76 = v175;
    if (v75)
    {
      v77 = v156;
      CRRegister.init(from:)();
      (*(v149 + 40))(v182 + v148, v77, v150);
    }

    v78 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v79 = v155;
    if (v78)
    {
      v80 = v152;
      CRRegister.init(from:)();
      (*(v142 + 40))(v182 + v71, v80, v143);
    }

    v81 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v82 = v151;
    if (v81)
    {
      v83 = v147;
      CRRegister.init(from:)();
      (*(v139 + 40))(v182 + v82, v83, v79);
    }

    v84 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v85 = v145;
    v86 = v144;
    if (v84)
    {
      v87 = v141;
      CRRegister.init(from:)();
      (*(v134 + 40))(&v76[v182], v87, v135);
    }

    v88 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v89 = v140;
    if (v88)
    {
      v90 = v138;
      CRRegister.init(from:)();
      (*(v69 + 40))(v182 + v132, v90, v86);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v91 = v133;
      CRRegister.init(from:)();
      (*(v85 + 40))(v182 + v124, v91, v89);
    }

    v93 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v94 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v93);

    *&v184 = v94;
    specialized Set._Variant.remove(_:)(7102838, 0xE300000000000000);

    specialized Set._Variant.remove(_:)(7500915, 0xE300000000000000);

    specialized Set._Variant.remove(_:)(67, 0xE100000000000000);

    specialized Set._Variant.remove(_:)(0x727574616E676973, 0xEE0065756C615665);

    specialized Set._Variant.remove(_:)(70, 0xE100000000000000);

    specialized Set._Variant.remove(_:)(77, 0xE100000000000000);

    specialized Set._Variant.remove(_:)(0x6570616873, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x65707974627573, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x616C46646C656966, 0xEA00000000007367);

    specialized Set._Variant.remove(_:)(0x7075706F70, 0xE500000000000000);

    v95 = v184;
    v96 = v184 + 56;
    v97 = 1 << *(v184 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & *(v184 + 56);
    v100 = (v97 + 63) >> 6;
    v181 = (v131 + 56);

    v101 = 0;
    v180 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v102 = v101;
      if (!v99)
      {
        break;
      }

LABEL_31:
      v103 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      v104 = (*(v95 + 48) + ((v101 << 10) | (16 * v103)));
      v105 = *v104;
      v106 = v104[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v179 = *(v137 + 48);
        v108 = v136;
        *v136 = v105;
        v108[1] = v106;

        AnyCRDT.init(from:)();

        (*v181)(v108, 0, 1, v137);
        v109 = v108;
        v110 = v126;
        outlined init with take of Range<AttributedString.Index>(v109, v126, &_sSS_9Coherence7AnyCRDTVtMd);
        outlined init with take of Range<AttributedString.Index>(v110, v127, &_sSS_9Coherence7AnyCRDTVtMd);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v180[2] + 1, 1, v180);
        }

        v111 = v131;
        v113 = v180[2];
        v112 = v180[3];
        v114 = v127;
        if (v113 >= v112 >> 1)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v112 > 1, v113 + 1, 1, v180);
          v111 = v131;
          v180 = v116;
          v114 = v127;
        }

        v115 = v180;
        v180[2] = v113 + 1;
        outlined init with take of Range<AttributedString.Index>(v114, v115 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v113, &_sSS_9Coherence7AnyCRDTVtMd);
      }

      else
      {

        v107 = v136;
        (*v181)(v136, 1, 1, v137);
        outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_sSS_9Coherence7AnyCRDTVtSgMd);
      }
    }

    while (1)
    {
      v101 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        return outlined destroy of PDFAnnotationElement.Partial(v182, type metadata accessor for PDFAnnotationElement);
      }

      if (v101 >= v100)
      {
        break;
      }

      v99 = *(v96 + 8 * v101);
      ++v102;
      if (v99)
      {
        goto LABEL_31;
      }
    }

    v117 = v180;
    if (v180[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
      v118 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v118 = MEMORY[0x1E69E7CC8];
    }

    v119 = v130;
    v120 = v129;
    v121 = v128;
    v187 = v118;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v117, 1, &v187);
    UnknownProperties.init(_:)();

    return (*(v120 + 40))(v182 + v123, v121, v119);
  }
}

uint64_t PDFAnnotationElement.delta(_:from:)@<X0>(uint64_t a1@<X8>)
{
  v156 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v172 = *(v1 - 8);
  v173 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v155 = &v137[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v154 = &v137[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v166 = &v137[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v168 = &v137[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v174 = *(v9 - 8);
  v175 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v153 = &v137[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v152 = &v137[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v165 = &v137[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v137[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v176 = *(v17 - 8);
  v177 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v137[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v150 = &v137[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v164 = &v137[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v137[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v178 = *(v25 - 8);
  v179 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v149 = &v137[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v148 = &v137[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v163 = &v137[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v188 = &v137[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v180 = *(v33 - 8);
  v181 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v147 = &v137[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v146 = &v137[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v162 = &v137[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39);
  v189 = &v137[-v40];
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v170 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v145 = &v137[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v42);
  v144 = &v137[-v43];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v161 = &v137[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v190 = &v137[-v47];
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v171 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v142 = &v137[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v49);
  v141 = &v137[-v50];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v160 = &v137[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v191 = &v137[-v54];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v183 = *(v55 - 8);
  v184 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v139 = &v137[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v57);
  v138 = &v137[-v58];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v159 = &v137[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v61);
  v192 = &v137[-v62];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v140 = v63;
  v143 = *(v63 - 8);
  v64 = v143;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v137[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v137[-v68];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v158 = &v137[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v72);
  v157 = &v137[-v73];
  MEMORY[0x1EEE9AC00](v74);
  v185 = &v137[-v75];
  MEMORY[0x1EEE9AC00](v76);
  v167 = &v137[-v77];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v78 = *(v64 + 8);
  v78(v66, v63);
  v78(v69, v63);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v78(v66, v63);
  v78(v69, v63);
  v79 = v138;
  v80 = v184;
  CRRegister.projectedValue.getter();
  v81 = v139;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v82 = *(v183 + 8);
  v82(v81, v80);
  v82(v79, v80);
  v83 = v141;
  v84 = v169;
  CRRegister.projectedValue.getter();
  v85 = v142;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v86 = *(v171 + 8);
  v86(v85, v84);
  v86(v83, v84);
  v87 = v144;
  v88 = v182;
  CRRegister.projectedValue.getter();
  v89 = v145;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v90 = *(v170 + 8);
  v90(v89, v88);
  v90(v87, v88);
  v91 = v146;
  v92 = v181;
  CRRegister.projectedValue.getter();
  v93 = v147;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v94 = *(v180 + 8);
  v94(v93, v92);
  v94(v91, v92);
  v95 = v148;
  v96 = v179;
  CRRegister.projectedValue.getter();
  v97 = v149;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v98 = *(v178 + 8);
  v98(v97, v96);
  v98(v95, v96);
  v99 = v150;
  v100 = v177;
  CRRegister.projectedValue.getter();
  v101 = v151;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v102 = *(v176 + 8);
  v102(v101, v100);
  v102(v99, v100);
  v103 = v152;
  v104 = v175;
  CRRegister.projectedValue.getter();
  v105 = v153;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v106 = *(v174 + 8);
  v106(v105, v104);
  v107 = v103;
  v108 = v167;
  v106(v107, v104);
  v109 = v154;
  v110 = v173;
  CRRegister.projectedValue.getter();
  v111 = v171;
  v112 = v155;
  CRRegister.projectedValue.getter();
  v113 = v168;
  v114 = v170;
  CRRegister.delta(_:from:)();
  v115 = *(v172 + 8);
  v115(v112, v110);
  v116 = v109;
  v117 = v185;
  v118 = v110;
  v119 = v169;
  v115(v116, v118);
  v120 = v143;
  v121 = *(v143 + 48);
  v122 = v140;
  if ((v121)(v108, 1) == 1 && v121(v117, 1, v122) == 1 && (*(v183 + 48))(v192, 1, v184) == 1 && (*(v111 + 48))(v191, 1, v119) == 1 && (*(v114 + 48))(v190, 1, v182) == 1 && (*(v180 + 48))(v189, 1, v181) == 1 && (*(v178 + 48))(v188, 1, v179) == 1 && (*(v176 + 48))(v187, 1, v177) == 1 && (*(v174 + 48))(v186, 1, v175) == 1 && (*(v172 + 48))(v113, 1, v173) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v108, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v123 = type metadata accessor for PDFAnnotationElement.Partial(0);
    (*(*(v123 - 8) + 56))(v156, 1, 1, v123);
    v124 = v192;
  }

  else
  {
    outlined init with copy of Date?(v108, v157, &_s9Coherence10CRRegisterVySSSgGSgMd);
    outlined init with copy of Date?(v117, v158, &_s9Coherence10CRRegisterVySSSgGSgMd);
    outlined init with copy of Date?(v192, v159, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    outlined init with copy of Date?(v191, v160, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    outlined init with copy of Date?(v190, v161, &_s9Coherence10CRRegisterVySiGSgMd);
    outlined init with copy of Date?(v189, v162, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    outlined init with copy of Date?(v188, v163, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    outlined init with copy of Date?(v187, v164, &_s9Coherence10CRRegisterVySSGSgMd);
    outlined init with copy of Date?(v186, v165, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    outlined init with copy of Date?(v113, v166, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    v125 = *(v120 + 56);
    v126 = v156;
    v125(v156, 1, 1, v122);
    v127 = type metadata accessor for PDFAnnotationElement.Partial(0);
    v155 = v127[5];
    v125(&v155[v126], 1, 1, v122);
    v154 = v127[6];
    (*(v183 + 56))(&v154[v126], 1, 1, v184);
    v184 = v127[7];
    (*(v111 + 56))(v126 + v184, 1, 1, v119);
    v128 = v127[8];
    (*(v114 + 56))(v126 + v128, 1, 1, v182);
    v129 = v127[9];
    (*(v180 + 56))(v126 + v129, 1, 1, v181);
    v130 = v127[10];
    (*(v178 + 56))(v126 + v130, 1, 1, v179);
    v131 = v127[11];
    (*(v176 + 56))(v126 + v131, 1, 1, v177);
    v132 = v127[12];
    (*(v174 + 56))(v126 + v132, 1, 1, v175);
    v133 = v127[13];
    (*(v172 + 56))(v126 + v133, 1, 1, v173);
    outlined assign with take of UUID?(v157, v126, &_s9Coherence10CRRegisterVySSSgGSgMd);
    outlined assign with take of UUID?(v158, &v155[v126], &_s9Coherence10CRRegisterVySSSgGSgMd);
    outlined assign with take of UUID?(v159, &v154[v126], &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    outlined assign with take of UUID?(v160, v126 + v184, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    outlined assign with take of UUID?(v161, v126 + v128, &_s9Coherence10CRRegisterVySiGSgMd);
    outlined assign with take of UUID?(v162, v126 + v129, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    outlined assign with take of UUID?(v163, v126 + v130, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    outlined assign with take of UUID?(v164, v126 + v131, &_s9Coherence10CRRegisterVySSGSgMd);
    v113 = v168;
    outlined assign with take of UUID?(v165, v126 + v132, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    v134 = v126 + v133;
    v124 = v192;
    outlined assign with take of UUID?(v166, v134, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v167, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v135 = v126;
    v117 = v185;
    (*(*(v127 - 1) + 56))(v135, 0, 1, v127);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v186, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v187, &_s9Coherence10CRRegisterVySSGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v188, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v189, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v190, &_s9Coherence10CRRegisterVySiGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v191, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s9Coherence10CRRegisterVySSSgGSgMd);
}

BOOL PDFAnnotationElement.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v151 = &v134 - v4;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v145 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v136 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v135 = &v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v149 = &v134 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v150 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v138 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v134 - v14;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v157 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v140 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v134 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v154 = &v134 - v19;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v161 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v142 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v141 = &v134 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v176 = &v134 - v24;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v165 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v147 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v146 = &v134 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v168 = &v134 - v29;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v164 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v153 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v152 = &v134 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v175 = &v134 - v34;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v173 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v159 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v158 = &v134 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v170 = &v134 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v171 = *(v40 - 8);
  v172 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v163 = &v134 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v162 = &v134 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v174 = &v134 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v134 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v166 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v134 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v134 - v56;
  v58 = a1;
  outlined init with copy of Date?(a1, v48, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v59 = *(v50 + 48);
  v60 = v59(v48, 1, v49);
  v177 = v1;
  if (v60 == 1)
  {
    v61 = v50;
    outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence10CRRegisterVySSSgGSgMd);
  }

  else
  {
    (*(v50 + 32))(v57, v48, v49);
    CRRegister.projectedValue.getter();
    v62 = CRRegister.canMerge(delta:)();
    v61 = v50;
    v63 = *(v50 + 8);
    v63(v54, v49);
    v63(v57, v49);
    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  v178 = type metadata accessor for PDFAnnotationElement.Partial(0);
  v64 = v59;
  v65 = v58;
  v66 = v174;
  outlined init with copy of Date?(v58 + v178[5], v174, &_s9Coherence10CRRegisterVySSSgGSgMd);
  if (v64(v66, 1, v49) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v67 = v176;
    v68 = v175;
  }

  else
  {
    v69 = v166;
    (*(v61 + 32))(v166, v66, v49);
    type metadata accessor for PDFAnnotationElement(0);
    CRRegister.projectedValue.getter();
    v70 = CRRegister.canMerge(delta:)();
    v71 = *(v61 + 8);
    v71(v54, v49);
    v71(v69, v49);
    v68 = v175;
    v67 = v176;
    if ((v70 & 1) == 0)
    {
      return 0;
    }
  }

  v72 = v170;
  outlined init with copy of Date?(v65 + v178[6], v170, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v74 = v171;
  v73 = v172;
  if ((*(v171 + 48))(v72, 1, v172) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v75 = v173;
  }

  else
  {
    v76 = v67;
    v77 = v162;
    (*(v74 + 32))(v162, v72, v73);
    type metadata accessor for PDFAnnotationElement(0);
    v78 = v65;
    v79 = v163;
    CRRegister.projectedValue.getter();
    v80 = CRRegister.canMerge(delta:)();
    v81 = *(v74 + 8);
    v82 = v79;
    v65 = v78;
    v81(v82, v73);
    v83 = v77;
    v67 = v76;
    v81(v83, v73);
    v75 = v173;
    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[7], v68, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  v84 = v167;
  if ((*(v75 + 48))(v68, 1, v167) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    v85 = v168;
  }

  else
  {
    v86 = v158;
    (*(v75 + 32))(v158, v68, v84);
    type metadata accessor for PDFAnnotationElement(0);
    v87 = v159;
    CRRegister.projectedValue.getter();
    v88 = CRRegister.canMerge(delta:)();
    v89 = *(v75 + 8);
    v89(v87, v84);
    v89(v86, v84);
    v85 = v168;
    if ((v88 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[8], v85, &_s9Coherence10CRRegisterVySiGSgMd);
  v90 = v164;
  if ((*(v164 + 48))(v85, 1, v169) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVySiGSgMd);
    v91 = v165;
  }

  else
  {
    v92 = v152;
    v93 = v169;
    (*(v90 + 32))(v152, v85, v169);
    type metadata accessor for PDFAnnotationElement(0);
    v94 = v153;
    CRRegister.projectedValue.getter();
    v95 = v90;
    v96 = CRRegister.canMerge(delta:)();
    v97 = *(v95 + 8);
    v97(v94, v93);
    v97(v92, v93);
    v91 = v165;
    if ((v96 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[9], v67, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  v98 = v160;
  if ((*(v91 + 48))(v67, 1, v160) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    v99 = v161;
  }

  else
  {
    v100 = v146;
    (*(v91 + 32))(v146, v67, v98);
    type metadata accessor for PDFAnnotationElement(0);
    v101 = v147;
    CRRegister.projectedValue.getter();
    v102 = CRRegister.canMerge(delta:)();
    v103 = *(v91 + 8);
    v103(v101, v98);
    v103(v100, v98);
    v99 = v161;
    if ((v102 & 1) == 0)
    {
      return 0;
    }
  }

  v104 = v154;
  outlined init with copy of Date?(v65 + v178[10], v154, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  v105 = v155;
  if ((*(v99 + 48))(v104, 1, v155) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    v106 = v157;
    v107 = v156;
  }

  else
  {
    v108 = v141;
    (*(v99 + 32))(v141, v104, v105);
    type metadata accessor for PDFAnnotationElement(0);
    v109 = v142;
    CRRegister.projectedValue.getter();
    v110 = CRRegister.canMerge(delta:)();
    v111 = *(v99 + 8);
    v111(v109, v105);
    v111(v108, v105);
    v106 = v157;
    v107 = v156;
    if ((v110 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[11], v107, &_s9Coherence10CRRegisterVySSGSgMd);
  v112 = v148;
  if ((*(v106 + 48))(v107, 1, v148) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s9Coherence10CRRegisterVySSGSgMd);
    v113 = v150;
    v114 = v149;
  }

  else
  {
    v115 = v139;
    (*(v106 + 32))(v139, v107, v112);
    type metadata accessor for PDFAnnotationElement(0);
    v116 = v140;
    CRRegister.projectedValue.getter();
    v117 = v112;
    v118 = CRRegister.canMerge(delta:)();
    v119 = *(v106 + 8);
    v119(v116, v117);
    v119(v115, v117);
    v113 = v150;
    v114 = v149;
    if ((v118 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[12], v114, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  v120 = v143;
  if ((*(v113 + 48))(v114, 1, v143) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  }

  else
  {
    v121 = v137;
    (*(v113 + 32))(v137, v114, v120);
    type metadata accessor for PDFAnnotationElement(0);
    v122 = v138;
    CRRegister.projectedValue.getter();
    v123 = v120;
    v124 = CRRegister.canMerge(delta:)();
    v125 = *(v113 + 8);
    v125(v122, v123);
    v125(v121, v123);
    if ((v124 & 1) == 0)
    {
      return 0;
    }
  }

  v126 = v151;
  outlined init with copy of Date?(v65 + v178[13], v151, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  if ((*(v145 + 48))(v126, 1, v144) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    return 1;
  }

  v127 = v145;
  v128 = v135;
  v129 = v144;
  (*(v145 + 32))(v135, v151, v144);
  type metadata accessor for PDFAnnotationElement(0);
  v130 = v136;
  CRRegister.projectedValue.getter();
  v131 = CRRegister.canMerge(delta:)();
  v132 = *(v127 + 8);
  v132(v130, v129);
  v132(v128, v129);
  return (v131 & 1) != 0;
}

BOOL PDFAnnotationElement.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v190 = &v142[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v191 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v169 = &v142[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v168 = &v142[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v167 = &v142[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v187 = &v142[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v188 = *(v13 - 8);
  v189 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v166 = &v142[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v165 = &v142[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v164 = &v142[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v184 = &v142[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v185 = *(v21 - 8);
  v186 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v163 = &v142[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v162 = &v142[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v161 = &v142[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v181 = &v142[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v182 = *(v29 - 8);
  v183 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v160 = &v142[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v159 = &v142[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v158 = &v142[-v34];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v179 = &v142[-v36];
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v180 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v157 = &v142[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v156 = &v142[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v155 = &v142[-v41];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v176 = &v142[-v43];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v177 = *(v44 - 8);
  v178 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v154 = &v142[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v153 = &v142[-v47];
  MEMORY[0x1EEE9AC00](v48);
  v152 = &v142[-v49];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v173 = &v142[-v51];
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v151 = &v142[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v150 = &v142[-v54];
  MEMORY[0x1EEE9AC00](v55);
  v149 = &v142[-v56];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v170 = &v142[-v58];
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v148 = &v142[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v60);
  v147 = &v142[-v61];
  MEMORY[0x1EEE9AC00](v62);
  v146 = &v142[-v63];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v66 = &v142[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v142[-v68];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v145 = &v142[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v142[-v74];
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v142[-v77];
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v142[-v80];
  v82 = PDFAnnotationElement.canMerge(delta:)(a1);
  if (v82)
  {
    v143 = v82;
    v144 = v5;
    v193 = a1;
    v194 = v1;
    outlined init with copy of Date?(a1, v69, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v83 = *(v71 + 48);
    if (v83(v69, 1, v70) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVySSSgGSgMd);
    }

    else
    {
      (*(v71 + 32))(v81, v69, v70);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v71 + 16))(v75, v78, v70);
      CRRegister.projectedValue.setter();
      v84 = *(v71 + 8);
      v84(v78, v70);
      v84(v81, v70);
    }

    v195 = type metadata accessor for PDFAnnotationElement.Partial(0);
    v85 = v193;
    outlined init with copy of Date?(v193 + v195[5], v66, &_s9Coherence10CRRegisterVySSSgGSgMd);
    if (v83(v66, 1, v70) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVySSSgGSgMd);
    }

    else
    {
      v86 = v145;
      (*(v71 + 32))(v145, v66, v70);
      type metadata accessor for PDFAnnotationElement(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v71 + 16))(v75, v78, v70);
      CRRegister.projectedValue.setter();
      v87 = *(v71 + 8);
      v87(v78, v70);
      v87(v86, v70);
    }

    v88 = v175;
    v89 = v170;
    outlined init with copy of Date?(v85 + v195[6], v170, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v90 = v171;
    v91 = v172;
    v92 = (*(v171 + 48))(v89, 1, v172);
    v93 = v192;
    if (v92 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    }

    else
    {
      v94 = v146;
      (*(v90 + 32))(v146, v89, v91);
      type metadata accessor for PDFAnnotationElement(0);
      v95 = v147;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v90 + 16))(v148, v95, v91);
      v85 = v193;
      CRRegister.projectedValue.setter();
      v96 = *(v90 + 8);
      v96(v95, v91);
      v97 = v94;
      v93 = v192;
      v96(v97, v91);
    }

    v98 = v173;
    outlined init with copy of Date?(v85 + v195[7], v173, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    v99 = v174;
    if ((*(v174 + 48))(v98, 1, v88) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd);
    }

    else
    {
      v101 = v149;
      (*(v99 + 32))(v149, v98, v88);
      type metadata accessor for PDFAnnotationElement(0);
      v102 = v150;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v99 + 16))(v151, v102, v88);
      CRRegister.projectedValue.setter();
      v103 = *(v99 + 8);
      v103(v102, v88);
      v103(v101, v88);
    }

    v100 = v176;
    v104 = v177;
    v105 = v178;
    outlined init with copy of Date?(v85 + v195[8], v176, &_s9Coherence10CRRegisterVySiGSgMd);
    if ((*(v104 + 48))(v100, 1, v105) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVySiGSgMd);
    }

    else
    {
      v106 = v152;
      (*(v104 + 32))(v152, v100, v105);
      type metadata accessor for PDFAnnotationElement(0);
      v107 = v153;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v104 + 16))(v154, v107, v105);
      CRRegister.projectedValue.setter();
      v108 = *(v104 + 8);
      v108(v107, v105);
      v108(v106, v105);
    }

    v109 = v179;
    v110 = v180;
    v111 = v183;
    outlined init with copy of Date?(v193 + v195[9], v179, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    v112 = (*(v110 + 48))(v109, 1, v93);
    v113 = v182;
    if (v112 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd);
    }

    else
    {
      v114 = v93;
      v115 = v155;
      (*(v110 + 32))(v155, v109, v114);
      type metadata accessor for PDFAnnotationElement(0);
      v116 = v156;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v110 + 16))(v157, v116, v114);
      CRRegister.projectedValue.setter();
      v117 = *(v110 + 8);
      v117(v116, v114);
      v117(v115, v114);
    }

    v118 = v181;
    v119 = v193;
    outlined init with copy of Date?(v193 + v195[10], v181, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    if ((*(v113 + 48))(v118, 1, v111) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd);
    }

    else
    {
      v120 = v158;
      (*(v113 + 32))(v158, v118, v111);
      type metadata accessor for PDFAnnotationElement(0);
      v121 = v159;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v113 + 16))(v160, v121, v111);
      CRRegister.projectedValue.setter();
      v122 = *(v113 + 8);
      v122(v121, v111);
      v122(v120, v111);
    }

    v123 = v184;
    v124 = v185;
    v125 = v188;
    v126 = v186;
    outlined init with copy of Date?(v119 + v195[11], v184, &_s9Coherence10CRRegisterVySSGSgMd);
    if ((*(v124 + 48))(v123, 1, v126) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_s9Coherence10CRRegisterVySSGSgMd);
    }

    else
    {
      v127 = v161;
      (*(v124 + 32))(v161, v123, v126);
      type metadata accessor for PDFAnnotationElement(0);
      v128 = v162;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v124 + 16))(v163, v128, v126);
      CRRegister.projectedValue.setter();
      v129 = *(v124 + 8);
      v129(v128, v126);
      v129(v127, v126);
    }

    v130 = v187;
    v131 = v144;
    v132 = v189;
    outlined init with copy of Date?(v119 + v195[12], v187, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    if ((*(v125 + 48))(v130, 1, v132) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd);
    }

    else
    {
      v133 = v164;
      (*(v125 + 32))(v164, v130, v132);
      type metadata accessor for PDFAnnotationElement(0);
      v134 = v165;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v125 + 16))(v166, v134, v132);
      CRRegister.projectedValue.setter();
      v135 = *(v125 + 8);
      v135(v134, v132);
      v135(v133, v132);
    }

    v136 = v190;
    outlined init with copy of Date?(v119 + v195[13], v190, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    v137 = v191;
    if ((*(v191 + 48))(v136, 1, v131) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v136, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd);
    }

    else
    {
      v138 = v167;
      (*(v137 + 32))(v167, v136, v131);
      type metadata accessor for PDFAnnotationElement(0);
      v139 = v168;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v137 + 16))(v169, v139, v131);
      CRRegister.projectedValue.setter();
      v140 = *(v137 + 8);
      v140(v139, v131);
      v140(v138, v131);
    }

    LOBYTE(v82) = v143;
  }

  return v82;
}

uint64_t protocol witness for CRDT.context.getter in conformance PDFAnnotationElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PDFAnnotationElement(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PDFAnnotationElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit21ValueTypes_BezierPathV11ElementTypeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 <= 1)
        {
          if (v7)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5)
          {
            return 0;
          }
        }

        else if (v7 == 2)
        {
          if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v7 == 3)
        {
          if (v5 != 3)
          {
            return 0;
          }
        }

        else if (v5 != 4)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9Coherence9CRKeyPathV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(v32, v33);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_f64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit20AnyCanvasElementViewC_Tt1g5Tm(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1DA6CE0C0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1DA6CE0C0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = __CocoaSet.count.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = __CocoaSet.count.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit13ReflowElementC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (a2 >> 62)
    {
      v9 = v10;
    }

    if (v8 == v9)
    {
      return 1;
    }

    if (v5 < 0)
    {
LABEL_48:
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v13 = i - 4;
        v14 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          goto LABEL_41;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA6CE0C0](i - 4, a1);
          v4 = result;
          if (v11)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v4 = *(a1 + 8 * i);

          if (v11)
          {
LABEL_22:
            v15 = MEMORY[0x1DA6CE0C0](i - 4, a2);
            swift_unknownObjectRelease();
            goto LABEL_27;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 8 * i);
LABEL_27:

        if (v4 != v15)
        {
          return 0;
        }

        if (v14 == v5)
        {
          return 1;
        }
      }
    }

    v16 = (a1 + 32);
    v17 = (a2 + 32);
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (v18)
    {
      if (!v19)
      {
        goto LABEL_40;
      }

      v22 = *v16++;
      v21 = v22;
      v24 = *v17++;
      v23 = v24;
      v26 = v20-- != 0;
      result = v21 == v23;
      if (v21 == v23)
      {
        --v19;
        --v18;
        if (v26)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v5 = __CocoaSet.count.getter();
  }

  result = __CocoaSet.count.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA6CE810](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x1DA6CE840](*&v6);
      if (v7 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v7;
      }

      result = MEMORY[0x1DA6CE840](*&v8);
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA6CE810](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1DA6CE840](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *specialized static PDFAnnotationElement.AnnotationShape.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (!*result)
  {
    if (!v3)
    {
      return CGRectEqualToRect(*(result + 1), *(a2 + 1));
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return CGRectEqualToRect(*(result + 1), *(a2 + 1));
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    v8 = vmovn_s64(vceqq_f64(*v6, *v7));
    if ((v8.i32[0] & v8.i32[1] & 1) == 0)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return CGRectEqualToRect(*(result + 1), *(a2 + 1));
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CGPoint] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7CGPointVGMd);
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(a2, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement> and conformance WeakRef<A>, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags()
{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape()
{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SignatureValue? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SignatureValue? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit14SignatureValueVSgMd);
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type SignatureValue and conformance SignatureValue, type metadata accessor for SignatureValue);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SignatureValue? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static PDFAnnotationElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = v84 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v94 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v98 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v97 = v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v103 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v102 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v101 = v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v106 = *(v21 - 8);
  v107 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v105 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v104 = v84 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v110 = *(v25 - 8);
  v111 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v109 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v108 = v84 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v112 = v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v84 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v84 - v39;
  v114 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v35 + 8);
  v41(v37, v34);
  v41(v40, v34);
  if ((a1 & 1) != 0
    && (v84[0] = v17, v42 = type metadata accessor for PDFAnnotationElement(0), CRRegister.projectedValue.getter(), v84[1] = v42, CRRegister.projectedValue.getter(), v43 = dispatch thunk of static Equatable.== infix(_:_:)(), v41(v37, v34), v41(v40, v34), (v43 & 1) != 0)
    && (CRRegister.projectedValue.getter(), v44 = v112, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd), v45 = dispatch thunk of static Equatable.== infix(_:_:)(), v46 = *(v113 + 8), v46(v44, v29), v46(v33, v29), (v45 & 1) != 0)
    && (v47 = v108, v48 = v111, CRRegister.projectedValue.getter(), v49 = v109, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureValue?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd), v50 = dispatch thunk of static Equatable.== infix(_:_:)(), v51 = *(v110 + 8), v51(v49, v48), v51(v47, v48), (v50 & 1) != 0)
    && (v52 = v104, v53 = v107, CRRegister.projectedValue.getter(), v54 = v105, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd), v55 = dispatch thunk of static Equatable.== infix(_:_:)(), v56 = *(v106 + 8), v56(v54, v53), v56(v52, v53), (v55 & 1) != 0)
    && (v57 = v101, v58 = v84[0], CRRegister.projectedValue.getter(), v59 = v102, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Date?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd), v60 = dispatch thunk of static Equatable.== infix(_:_:)(), v61 = *(v103 + 8), v61(v59, v58), v61(v57, v58), (v60 & 1) != 0)
    && (v62 = v97, v63 = v100, CRRegister.projectedValue.getter(), v64 = v98, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFAnnotationElement.AnnotationShape> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd), v65 = dispatch thunk of static Equatable.== infix(_:_:)(), v66 = *(v99 + 8), v66(v64, v63), v66(v62, v63), (v65 & 1) != 0)
    && (v67 = v93, v68 = v96, CRRegister.projectedValue.getter(), v69 = v94, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd), v70 = dispatch thunk of static Equatable.== infix(_:_:)(), v71 = *(v95 + 8), v71(v69, v68), v71(v67, v68), (v70 & 1) != 0)
    && (v72 = v89, v73 = v92, CRRegister.projectedValue.getter(), v74 = v90, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFFieldFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd), v75 = dispatch thunk of static Equatable.== infix(_:_:)(), v76 = *(v91 + 8), v76(v74, v73), v76(v72, v73), (v75 & 1) != 0)
    && (v77 = v85, v78 = v88, CRRegister.projectedValue.getter(), v79 = v86, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<WeakRef<PDFAnnotationElement>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd), v80 = dispatch thunk of static Equatable.== infix(_:_:)(), v81 = *(v87 + 8), v81(v79, v78), v81(v77, v78), (v80 & 1) != 0))
  {
    v82 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v82 = 0;
  }

  return v82 & 1;
}

void specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:capsule:options:)(unint64_t *a1, unint64_t a2, void *a3)
{
  v212 = a3;
  v211 = a2;
  v210 = a1;
  v181 = type metadata accessor for CRKeyPath();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v187 = &v178 - v5;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v188 = &v178 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v186 = &v178 - v8;
  v196 = type metadata accessor for Date();
  v197 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v182 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v185);
  v195 = &v178 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v184 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v178 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v178 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v193 = &v178 - v18;
  v207 = type metadata accessor for SignatureValue(0);
  v201 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v194 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v199);
  v200 = &v178 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v198 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v191 = &v178 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v208 = &v178 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v209 = &v178 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd);
  v205 = *(v29 - 8);
  v30 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v206 = &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v202 = &v178 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v203 = *(v33 - 8);
  v34 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v204 = &v178 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v178 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v178 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v178 - v43;
  v45 = *v210;
  outlined init with copy of Date?(v211, v40, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v46 = v212;
  }

  else
  {
    v47 = *(v42 + 32);
    v47(v44, v40, v41);
    v48 = v45;
    if (v45 >> 62)
    {
      if (v45 >> 62 != 1)
      {
        (*(v42 + 8))(v44, v41);
        v46 = v212;
        goto LABEL_11;
      }

      v48 = v45 & 0x3FFFFFFFFFFFFFFFLL;
    }

    v210 = v48;
    v211 = v45;
    type metadata accessor for CanvasElementPDFAnnotation();
    v49 = v212;
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      v178 = v50;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGMd);
      v52 = v202;
      (*(*(v51 - 8) + 56))(v202, 1, 1, v51);
      v47(v37, v44, v41);
      (*(v42 + 56))(v37, 0, 1, v41);
      v53 = v206;
      outlined init with take of Range<AttributedString.Index>(v52, v206, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd);
      v54 = v204;
      outlined init with take of Range<AttributedString.Index>(v37, v204, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v55 = (*(v205 + 80) + 16) & ~*(v205 + 80);
      v56 = (v30 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (*(v203 + 80) + v56 + 8) & ~*(v203 + 80);
      v58 = v57 + v34;
      v59 = swift_allocObject();
      outlined init with take of Range<AttributedString.Index>(v53, v59 + v55, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd);
      *(v59 + v56) = v210;
      outlined init with take of Range<AttributedString.Index>(v54, v59 + v57, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      *(v59 + v58) = 0;
      v60 = v59 + (v58 & 0xFFFFFFFFFFFFFFF8);
      *(v60 + 8) = 0;
      *(v60 + 16) = 0;
      v61 = (v178 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation);
      v62 = *(v178 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation);
      *v61 = partial apply for specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:);
      v61[1] = v59;
      outlined copy of PaperDocument.PDFDocumentUse(v211);
      v63 = v49;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v62);
    }

    else
    {
      (*(v42 + 8))(v44, v41);
    }

    v46 = v49;
  }

LABEL_11:
  v64 = type metadata accessor for PDFAnnotationElement(0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  CRRegister.wrappedValue.getter();
  v66 = v215;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v66 && v67 == *(&v66 + 1))
  {

    return;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v68)
  {

    return;
  }

  v210 = v65;
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v211 = v64;
  if (__PAIR128__(v70, v69) == v66)
  {

    goto LABEL_19;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v71 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
    CRRegister.wrappedValue.getter();
    v78 = v215;
    v79 = [v46 widgetStringValue];
    if (v79)
    {
      v80 = v79;
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      if (*(&v78 + 1))
      {
        if (v83)
        {
          if (v78 == __PAIR128__(v83, v81))
          {

            goto LABEL_75;
          }

          v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v171)
          {
LABEL_75:
            CRRegister.wrappedValue.getter();
            v105 = v215;
            v106 = [v46 contents];
            if (v106)
            {
              v107 = v106;
              v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v110 = v109;

              if (*(&v105 + 1))
              {
                if (v110)
                {
                  if (v105 == __PAIR128__(v110, v108))
                  {

                    goto LABEL_88;
                  }

                  v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v172)
                  {
LABEL_88:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
                    CRRegister.wrappedValue.getter();
                    v112 = v215;
                    v113 = *MEMORY[0x1E6978060];
                    if ([v46 valueForAnnotationKey_])
                    {
                      _bridgeAnyObjectToAny(_:)();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v218 = 0u;
                      v219 = 0u;
                    }

                    v114 = v193;
                    v215 = v218;
                    v216 = v219;
                    if (*(&v219 + 1))
                    {
                      if ((swift_dynamicCast() & 1) != 0 && v112 == v214)
                      {
                        goto LABEL_97;
                      }
                    }

                    else
                    {
                      outlined destroy of StocksKitCurrencyCache.Provider?(&v215, &_sypSgMd);
                    }

                    CRRegister.wrappedValue.getter();
                    isa = Int._bridgeToObjectiveC()().super.super.isa;
                    [v46 setValue:isa forAnnotationKey:v113];

LABEL_97:
                    v116 = *(v64 + 36);
                    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
                    v209 = v116;
                    v208 = v117;
                    CRRegister.wrappedValue.getter();
                    v118 = [v46 modificationDate];
                    if (v118)
                    {
                      v119 = v192;
                      v120 = v118;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      v121 = 0;
                      v122 = v196;
                    }

                    else
                    {
                      v121 = 1;
                      v122 = v196;
                      v119 = v192;
                    }

                    v123 = v197;
                    (*(v197 + 56))(v119, v121, 1, v122);
                    v124 = *(v185 + 48);
                    v125 = v195;
                    outlined init with copy of Date?(v114, v195, &_s10Foundation4DateVSgMd);
                    v126 = v125;
                    outlined init with copy of Date?(v119, v125 + v124, &_s10Foundation4DateVSgMd);
                    v127 = *(v123 + 48);
                    if (v127(v126, 1, v122) == 1)
                    {
                      outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s10Foundation4DateVSgMd);
                      v128 = v195;
                      outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s10Foundation4DateVSgMd);
                      if (v127(v128 + v124, 1, v122) == 1)
                      {
                        outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s10Foundation4DateVSgMd);
                        goto LABEL_110;
                      }
                    }

                    else
                    {
                      v129 = v183;
                      outlined init with copy of Date?(v126, v183, &_s10Foundation4DateVSgMd);
                      if (v127(v126 + v124, 1, v122) != 1)
                      {
                        v136 = v197;
                        v137 = v126 + v124;
                        v138 = v182;
                        (*(v197 + 32))(v182, v137, v122);
                        lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
                        v139 = v126;
                        v140 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v141 = *(v136 + 8);
                        v141(v138, v196);
                        outlined destroy of StocksKitCurrencyCache.Provider?(v192, &_s10Foundation4DateVSgMd);
                        outlined destroy of StocksKitCurrencyCache.Provider?(v193, &_s10Foundation4DateVSgMd);
                        v141(v129, v196);
                        v122 = v196;
                        v46 = v212;
                        outlined destroy of StocksKitCurrencyCache.Provider?(v139, &_s10Foundation4DateVSgMd);
                        if (v140)
                        {
                          goto LABEL_110;
                        }

                        goto LABEL_106;
                      }

                      outlined destroy of StocksKitCurrencyCache.Provider?(v192, &_s10Foundation4DateVSgMd);
                      v128 = v195;
                      outlined destroy of StocksKitCurrencyCache.Provider?(v193, &_s10Foundation4DateVSgMd);
                      (*(v197 + 8))(v129, v122);
                    }

                    outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s10Foundation4DateVSg_ADtMd);
LABEL_106:
                    v130 = v184;
                    CRRegister.wrappedValue.getter();
                    if (v127(v130, 1, v122) == 1)
                    {
                      v131 = 0;
                    }

                    else
                    {
                      v131 = Date._bridgeToObjectiveC()().super.isa;
                      (*(v197 + 8))(v130, v122);
                    }

                    [v46 setModificationDate_];

LABEL_110:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
                    CRRegister.wrappedValue.getter();
                    v132 = v215;
                    v133 = PDFAnnotation.quadPoints.getter();
                    if (v132)
                    {
                      v134 = v188;
                      if (v133)
                      {
                        v135 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(v132, v133);

                        if (v135)
                        {
                          goto LABEL_120;
                        }

LABEL_119:
                        CRRegister.wrappedValue.getter();
                        PDFAnnotation.quadPoints.setter(v215);
                        goto LABEL_120;
                      }
                    }

                    else
                    {
                      v134 = v188;
                      if (!v133)
                      {
LABEL_120:
                        CRRegister.wrappedValue.getter();
                        v142 = *(&v215 + 1);
                        v144 = v216;
                        v143 = v217;

                        [v46 bounds];
                        v221.origin.x = v145;
                        v221.origin.y = v146;
                        v221.size.width = v147;
                        v221.size.height = v148;
                        v220.origin.x = v142;
                        *&v220.origin.y = v144;
                        v220.size.height = v143;
                        if (!CGRectEqualToRect(v220, v221))
                        {
                          CRRegister.wrappedValue.getter();
                          v149 = *(&v215 + 1);
                          v151 = v216;
                          v150 = v217;

                          [v46 setBounds_];
                        }

                        CRRegister.wrappedValue.getter();
                        v152 = v215;
                        v153 = *MEMORY[0x1E6978078];
                        if (![v46 valueForAnnotationKey_])
                        {
                          __break(1u);
                          return;
                        }

                        _bridgeAnyObjectToAny(_:)();
                        swift_unknownObjectRelease();
                        outlined init with take of Any(&v218, &v215);
                        swift_dynamicCast();
                        if (v152 == v214)
                        {
                        }

                        else
                        {
                          v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v154 & 1) == 0)
                          {
                            CRRegister.wrappedValue.getter();
                            v155 = MEMORY[0x1DA6CCED0](v215, *(&v215 + 1));

                            [v46 setValue:v155 forAnnotationKey:v153];
                          }
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
                        v156 = v186;
                        CRRegister.wrappedValue.getter();
                        v157 = type metadata accessor for Color(0);
                        if ((*(*(v157 - 8) + 48))(v156, 1, v157) == 1)
                        {
                          outlined destroy of StocksKitCurrencyCache.Provider?(v156, &_s8PaperKit5ColorVSgMd);
                          v158 = v190;
                        }

                        else
                        {
                          v159 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
                          outlined destroy of PDFAnnotationElement.Partial(v156, type metadata accessor for Color);
                          v160 = [v46 color];
                          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
                          v161 = static NSObject.== infix(_:_:)();

                          v158 = v190;
                          if ((v161 & 1) == 0)
                          {
                            [v46 setColor_];
                          }
                        }

                        v162 = v187;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
                        CRRegister.wrappedValue.getter();
                        v163 = v189;
                        if ((*(v189 + 48))(v162, 1, v158) == 1)
                        {
                          outlined destroy of StocksKitCurrencyCache.Provider?(v162, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
                          return;
                        }

                        (*(v163 + 32))(v134, v162, v158);
                        v164 = [v46 page];
                        if (v164)
                        {
                          v165 = v164;
                          type metadata accessor for PaperKitPDFPage(0);
                          v166 = swift_dynamicCastClass();
                          if (v166)
                          {
                            v167 = v179;
                            WeakRef.id.getter();
                            v168 = [v166 annotations];
                            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
                            v169 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                            MEMORY[0x1EEE9AC00](v170);
                            *(&v178 - 2) = v167;
                            v166 = specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), (&v178 - 4), v169);

                            (*(v180 + 8))(v167, v181);
                          }

                          else
                          {
                          }
                        }

                        else
                        {
                          v166 = 0;
                        }

                        v173 = [v46 popup];
                        if (v173)
                        {
                          v174 = v173;
                          if (!v166)
                          {

LABEL_151:
                            [v46 setPopup_];
LABEL_152:

                            goto LABEL_153;
                          }

                          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
                          v166 = v166;
                          v175 = static NSObject.== infix(_:_:)();

                          if (v175)
                          {
                            goto LABEL_152;
                          }
                        }

                        else if (!v166)
                        {
LABEL_153:
                          (*(v163 + 8))(v134, v158);
                          return;
                        }

                        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
                        v176 = v46;
                        v166 = v166;
                        v177 = static NSObject.== infix(_:_:)();

                        if (v177)
                        {
                          (*(v163 + 8))(v134, v158);

                          return;
                        }

                        goto LABEL_151;
                      }
                    }

                    goto LABEL_119;
                  }

LABEL_84:
                  CRRegister.wrappedValue.getter();
                  if (*(&v215 + 1))
                  {
                    v111 = MEMORY[0x1DA6CCED0](v215, *(&v215 + 1));
                  }

                  else
                  {
                    v111 = 0;
                  }

                  [v46 setContents_];

                  goto LABEL_88;
                }
              }

              else if (!v110)
              {
                goto LABEL_88;
              }
            }

            else if (!*(&v105 + 1))
            {
              goto LABEL_88;
            }

            goto LABEL_84;
          }

LABEL_71:
          CRRegister.wrappedValue.getter();
          if (*(&v215 + 1))
          {
            v104 = MEMORY[0x1DA6CCED0](v215, *(&v215 + 1));
          }

          else
          {
            v104 = 0;
          }

          [v46 setWidgetStringValue_];

          goto LABEL_75;
        }
      }

      else if (!v83)
      {
        goto LABEL_75;
      }
    }

    else if (!*(&v78 + 1))
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }

LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  v72 = v215;
  v73 = [v46 widgetStringValue];
  if (!v73)
  {
    if (!*(&v72 + 1))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v74 = v73;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  if (!*(&v72 + 1))
  {
    if (!v77)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v77)
  {
LABEL_32:

LABEL_33:
    CRRegister.wrappedValue.getter();
    if (*(&v215 + 1))
    {
      v84 = MEMORY[0x1DA6CCED0](v215, *(&v215 + 1));
    }

    else
    {
      v84 = 0;
    }

    [v46 setWidgetStringValue_];

    goto LABEL_37;
  }

  if (v72 == __PAIR128__(v77, v75))
  {

    goto LABEL_37;
  }

  v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v103 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  v85 = *(v64 + 28);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v212 = v85;
  v210 = v86;
  CRRegister.wrappedValue.getter();
  if ([v46 signatureAnnotationForRendering])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v218 = 0u;
    v219 = 0u;
  }

  v87 = v207;
  v88 = v201;
  v89 = v208;
  v215 = v218;
  v216 = v219;
  if (*(&v219 + 1))
  {
    v90 = swift_dynamicCast();
    (*(v88 + 56))(v89, v90 ^ 1u, 1, v87);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v215, &_sypSgMd);
    (*(v88 + 56))(v89, 1, 1, v87);
  }

  v91 = *(v199 + 48);
  v92 = v209;
  v93 = v200;
  outlined init with copy of Date?(v209, v200, &_s8PaperKit14SignatureValueVSgMd);
  v94 = v93;
  outlined init with copy of Date?(v89, v93 + v91, &_s8PaperKit14SignatureValueVSgMd);
  v95 = *(v88 + 48);
  if (v95(v94, 1, v87) != 1)
  {
    v96 = v191;
    outlined init with copy of Date?(v94, v191, &_s8PaperKit14SignatureValueVSgMd);
    if (v95(v94 + v91, 1, v87) != 1)
    {
      v100 = v94 + v91;
      v101 = v194;
      outlined init with take of PDFAnnotationElement.MutatingAction(v100, v194, type metadata accessor for SignatureValue);
      v102 = specialized static SignatureValue.== infix(_:_:)(v96, v101);
      outlined destroy of PDFAnnotationElement.Partial(v101, type metadata accessor for SignatureValue);
      outlined destroy of StocksKitCurrencyCache.Provider?(v209, &_s8PaperKit14SignatureValueVSgMd);
      outlined destroy of PDFAnnotationElement.Partial(v96, type metadata accessor for SignatureValue);
      outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s8PaperKit14SignatureValueVSgMd);
      v87 = v207;
      outlined destroy of StocksKitCurrencyCache.Provider?(v208, &_s8PaperKit14SignatureValueVSgMd);
      if (v102)
      {
        goto LABEL_53;
      }

LABEL_49:
      v97 = v198;
      CRRegister.wrappedValue.getter();
      if (v95(v97, 1, v87) == 1)
      {
        v98 = 0;
      }

      else
      {
        outlined init with copy of PDFAnnotationElement.Partial(v97, v194, type metadata accessor for SignatureValue);
        v98 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        outlined destroy of PDFAnnotationElement.Partial(v97, type metadata accessor for SignatureValue);
      }

      [v46 setSignatureAnnotationForRendering_];
      swift_unknownObjectRelease();
      [v46 updateAnnotationEffect];
      goto LABEL_53;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v209, &_s8PaperKit14SignatureValueVSgMd);
    outlined destroy of PDFAnnotationElement.Partial(v96, type metadata accessor for SignatureValue);
LABEL_48:
    outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s8PaperKit14SignatureValueVSg_ADtMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v208, &_s8PaperKit14SignatureValueVSgMd);
    goto LABEL_49;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s8PaperKit14SignatureValueVSgMd);
  if (v95(v94 + v91, 1, v87) != 1)
  {
    goto LABEL_48;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s8PaperKit14SignatureValueVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v208, &_s8PaperKit14SignatureValueVSgMd);
LABEL_53:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  CRRegister.wrappedValue.getter();
  v99 = v214;
  if ([v46 valueForAnnotationKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v218 = 0u;
    v219 = 0u;
  }

  v215 = v218;
  v216 = v219;
  if (*(&v219 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v99 == v213)
      {
        return;
      }

LABEL_62:
      CRRegister.wrappedValue.getter();
      [v46 setReadOnly_];
      return;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v215, &_sypSgMd);
  }

  if (v99)
  {
    goto LABEL_62;
  }
}

id specialized PDFAnnotationElement.newPDFAnnotation<A>(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  CRRegister.wrappedValue.getter();
  v3 = *(&v10 + 1);
  v5 = v11;
  v4 = *&v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  CRRegister.wrappedValue.getter();
  v6 = MEMORY[0x1DA6CCED0](v17[0], v17[1]);

  v7 = [objc_allocWithZone(type metadata accessor for CanvasElementPDFAnnotation()) initWithBounds:v6 forType:0 withProperties:{v3, v5, v4}];

  v17[0] = 0x8000000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v10 = xmmword_1D405D330;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:capsule:options:)(v17, v2, v7);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v10, &_s8PaperKit0A17RenderableOptionsVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  return v7;
}

void specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, unint64_t a2, void *a3)
{
  v5 = *a1;
  type metadata accessor for Capsule();
  swift_getWitnessTable();
  specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:capsule:options:)(&v5, a2, a3);
}

uint64_t specialized PDFAnnotationElement.applyDifference<A, B>(id:in:from:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void (*a4)(char *, char *, uint64_t), uint64_t a5, char *a6)
{
  v152 = a6;
  v151 = a4;
  v150 = a2;
  v149 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v142 = &v111 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v141 = &v111 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v111 - v13;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v111 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v128 = &v111 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v111 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v111 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v119 = &v111 - v29;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v153 = &v111 - v32;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v112 = &v111 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v111 = &v111 - v37;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v154 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v146 = &v111 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit20PDFAnnotationElementVSgMd);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v111 - v42;
  v44 = type metadata accessor for CRKeyPath();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v111 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v111 - v50;
  v52 = type metadata accessor for PDFAnnotationElement(0);
  v53 = *(v52 - 8);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v111 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v47, v149, v44, v54);
  lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement);
  WeakRef.init(id:)();
  WeakRef.subscript.getter();
  (*(v49 + 8))(v51, v48);
  if ((*(v53 + 48))(v43, 1, v52) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit20PDFAnnotationElementVSgMd);
  }

  outlined init with take of PDFAnnotationElement.MutatingAction(v43, v56, type metadata accessor for PDFAnnotationElement);
  v58 = v148;
  CRRegister.wrappedValue.getter();
  v59 = v160;
  v60 = *&v161;
  v61 = v146;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v59, v60);

  v62 = v154;
  v151 = *(v154 + 16);
  v151(v147, v61, v58);
  CRRegister.projectedValue.setter();
  v63 = *(v62 + 8);
  v154 = v62 + 8;
  v150 = v63;
  v63(v61, v58);
  v64 = v111;
  v65 = v115;
  CRRegister.wrappedValue.getter();
  v66 = v112;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v64);
  outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s8PaperKit14SignatureValueVSgMd);
  v67 = v114;
  (*(v114 + 16))(v113, v66, v65);
  CRRegister.projectedValue.setter();
  (*(v67 + 8))(v66, v65);
  v152 = v56;
  v68 = v118;
  CRRegister.wrappedValue.getter();
  v69 = v160;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v155 != v69)
  {
    v155 = v69;
    CRRegister.value.setter();
  }

  v70 = v117;
  v71 = v153;
  (*(v117 + 16))(v116, v153, v68);
  CRRegister.projectedValue.setter();
  (*(v70 + 8))(v71, v68);
  v72 = v148;
  CRRegister.wrappedValue.getter();
  v73 = v160;
  v74 = *&v161;
  v75 = v146;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v73, v74);

  v151(v147, v75, v72);
  CRRegister.projectedValue.setter();
  v150(v75, v72);
  v76 = v119;
  v77 = v123;
  CRRegister.wrappedValue.getter();
  v78 = v120;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v76);
  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s8PaperKit5ColorVSgMd);
  v79 = v122;
  (*(v122 + 16))(v121, v78, v77);
  CRRegister.projectedValue.setter();
  (*(v79 + 8))(v78, v77);
  v80 = v127;
  CRRegister.wrappedValue.getter();
  v81 = v160;
  v82 = v124;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v160 != v81)
  {
    v160 = v81;
    CRRegister.value.setter();
  }

  v83 = v126;
  (*(v126 + 16))(v125, v82, v80);
  CRRegister.projectedValue.setter();
  (*(v83 + 8))(v82, v80);
  v84 = v128;
  v85 = v132;
  CRRegister.wrappedValue.getter();
  v86 = v129;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v84);
  outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s10Foundation4DateVSgMd);
  v87 = v131;
  (*(v131 + 16))(v130, v86, v85);
  CRRegister.projectedValue.setter();
  (*(v87 + 8))(v86, v85);
  v88 = v136;
  CRRegister.wrappedValue.getter();
  v89 = v160;
  v90 = v161;
  v91 = v162;
  v92 = v163;
  v93 = v164;
  v94 = v133;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v95 = v156;
  v96 = v157;
  v97 = v158;
  v98 = v159;
  v99 = v140;
  v100 = v137;
  if (v155)
  {
    if (!v89 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(v155, v89) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v89)
  {
    goto LABEL_14;
  }

  v165.origin.x = v95;
  v165.origin.y = v96;
  v165.size.width = v97;
  v165.size.height = v98;
  v166.origin.x = v90;
  v166.origin.y = v91;
  v166.size.width = v92;
  v166.size.height = v93;
  if (CGRectEqualToRect(v165, v166))
  {

    goto LABEL_15;
  }

LABEL_14:

  v155 = v89;
  v156 = v90;
  v157 = v91;
  v158 = v92;
  v159 = v93;
  CRRegister.value.setter();
LABEL_15:
  v101 = v135;
  (*(v135 + 16))(v134, v94, v88);
  CRRegister.projectedValue.setter();
  (*(v101 + 8))(v94, v88);
  v102 = v152;
  CRRegister.wrappedValue.getter();
  v104 = v160;
  v103 = v161;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v160 == v104 && *&v161 == *&v103)
  {
  }

  else
  {
    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v105)
    {
    }

    else
    {
      v160 = v104;
      v161 = v103;
      CRRegister.value.setter();
    }
  }

  v106 = v139;
  (*(v139 + 16))(v138, v100, v99);
  CRRegister.projectedValue.setter();
  (*(v106 + 8))(v100, v99);
  v107 = v141;
  v108 = v145;
  CRRegister.wrappedValue.getter();
  v109 = v142;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v107);
  outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  v110 = v144;
  (*(v144 + 16))(v143, v109, v108);
  CRRegister.projectedValue.setter();
  (*(v110 + 8))(v109, v108);
  return outlined destroy of PDFAnnotationElement.Partial(v102, type metadata accessor for PDFAnnotationElement);
}