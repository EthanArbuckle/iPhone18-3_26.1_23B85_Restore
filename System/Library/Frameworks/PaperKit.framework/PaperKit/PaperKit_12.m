uint64_t outlined destroy of PDFAnnotationElement.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of PDFAnnotationElement.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata completion function for PDFAnnotationElement()
{
  type metadata accessor for CRRegister<String?>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRRegister<WeakRef<PDFAnnotationElement>?>(319, &lazy cache variable for type metadata for CRRegister<Color?>, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR, lazy protocol witness table accessor for type Color? and conformance <A> A?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRRegister<WeakRef<PDFAnnotationElement>?>(319, &lazy cache variable for type metadata for CRRegister<SignatureValue?>, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR, lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CRRegister<Int>(319, &lazy cache variable for type metadata for CRRegister<Int>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CRRegister<Date?>();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CRRegister<PDFAnnotationElement.AnnotationShape>(319, &lazy cache variable for type metadata for CRRegister<PDFAnnotationElement.AnnotationShape>, lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CRRegister<Int>(319, &lazy cache variable for type metadata for CRRegister<String>);
              if (v6 <= 0x3F)
              {
                type metadata accessor for CRRegister<PDFAnnotationElement.AnnotationShape>(319, &lazy cache variable for type metadata for CRRegister<PDFFieldFlags>, lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for CRRegister<WeakRef<PDFAnnotationElement>?>(319, &lazy cache variable for type metadata for CRRegister<WeakRef<PDFAnnotationElement>?>, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR, lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for UnknownProperties();
                    if (v9 <= 0x3F)
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
}

void type metadata accessor for CRRegister<String?>()
{
  if (!lazy cache variable for type metadata for CRRegister<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<String?>);
    }
  }
}

void type metadata accessor for CRRegister<WeakRef<PDFAnnotationElement>?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
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

void type metadata accessor for CRRegister<Date?>()
{
  if (!lazy cache variable for type metadata for CRRegister<Date?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<Date?>);
    }
  }
}

void type metadata accessor for CRRegister<Int>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for CRRegister();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for CRRegister<PDFAnnotationElement.AnnotationShape>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for CRRegister();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PDFAnnotationElement.AnnotationShape(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PDFAnnotationElement.AnnotationShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void type metadata completion function for PDFAnnotationElement.ObservableDifference()
{
  type metadata accessor for CRValueObservableDifference?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for WeakRef<PDFAnnotationElement>.ObservableDifference?, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GMd);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CRValueObservableDifference?()
{
  if (!lazy cache variable for type metadata for CRValueObservableDifference?)
  {
    type metadata accessor for CRValueObservableDifference();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRValueObservableDifference?);
    }
  }
}

void type metadata completion function for PDFAnnotationElement.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<SignatureValue?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Int>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySi_GMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Date?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFAnnotationElement.AnnotationShape>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySS_GMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFFieldFlags>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GMd);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<WeakRef<PDFAnnotationElement>?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GMd);
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

void type metadata completion function for PDFAnnotationElement.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String?>?, &_s9Coherence10CRRegisterVySSSgGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>?, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<SignatureValue?>?, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Int>?, &_s9Coherence10CRRegisterVySiGMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Date?>?, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFAnnotationElement.AnnotationShape>?, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String>?, &_s9Coherence10CRRegisterVySSGMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFFieldFlags>?, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<WeakRef<PDFAnnotationElement>?>?, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
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

uint64_t outlined init with take of PDFAnnotationElement.MutatingAction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = v1 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);

  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, v1 + v4, v9, v1 + v7, v10, v12, v13);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v7 + *(v6 + 64)), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMd);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGSgMd) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = v1 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);

  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, v1 + v4, v9, v1 + v7, v10, v12, v13);
}

unint64_t outlined copy of PaperDocument.PDFDocumentUse(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void closure #1 in UITextView.enumeratePaperTextAttachments(in:createIfNeeded:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7)
{
  outlined init with copy of Any?(a1, v29);
  if (!v30)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_sypSgMd);
    return;
  }

  type metadata accessor for NSTextAttachment();
  if (swift_dynamicCast())
  {
    v13 = [v28 fileType];
    if (v13)
    {
      v26 = a7;
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v21 = [a5 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 view];
        if (v23)
        {
          v24 = v23;
          type metadata accessor for PaperTextAttachmentView();
          v25 = swift_dynamicCastClass();
          if (v25)
          {
            v27(v25, a2, a3, a4);
          }

          else
          {
          }

          return;
        }
      }
    }

LABEL_18:
  }
}

void closure #1 in UITextView.enumeratePaperDocumentTextAttachments(in:createIfNeeded:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  outlined init with copy of Any?(a1, v31);
  if (!v32)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_sypSgMd);
    return;
  }

  type metadata accessor for NSTextAttachment();
  if (swift_dynamicCast())
  {
    v15 = [v30 fileType];
    if (v15)
    {
      v28 = a7;
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v17 == 0xD000000000000013 && 0x80000001D40838D0 == v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v22 = [a5 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 view];
        if (v24)
        {
          v25 = v24;
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {
LABEL_23:

            return;
          }

          v26 = v25;
          v25 = specialized UIView.firstDescendent(where:)(v26);

          if (v25)
          {
            type metadata accessor for PaperDocumentView();
            v27 = swift_dynamicCastClass();
            if (v27)
            {
              v29(v27, a2, a3, a4);

              return;
            }

            goto LABEL_23;
          }
        }
      }
    }

LABEL_20:
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSTextAttachment()
{
  result = lazy cache variable for type metadata for NSTextAttachment;
  if (!lazy cache variable for type metadata for NSTextAttachment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextAttachment);
  }

  return result;
}

void closure #2 in UITextView._ppk_registerUndo(_:selection:undoManager:paperIdentifier:analyticsEvents:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, char a8, uint64_t a9)
{
  v39 = 0;
  v13 = [a1 textStorage];
  v14 = *MEMORY[0x1E69DB5F8];
  v15 = [a1 textStorage];
  v16 = [v15 length];

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = &v39;
  v17[5] = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #1 in UITextView._ppk_paperTextAttachmentView(from:)partial apply;
  *(v18 + 24) = v17;
  v37 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v38 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v36 = &block_descriptor_14;
  v19 = _Block_copy(aBlock);

  v20 = a1;

  [v13 enumerateAttribute:v14 inRange:0 options:v16 usingBlock:{0, v19}];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v39;

  if (!v22)
  {
    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v23);
  specialized Canvas.undoable(newChange:persistSelection:action:)(1, v24, partial apply for specialized closure #1 in Canvas.applyUndo(_:selection:));
  if (a5)
  {

    v25 = a8 & 1;
    v26 = a5;
    v27 = a6;
    v28 = a7;
LABEL_8:
    AnyCanvas.selection.setter(v26, v27, v28, v25);
    goto LABEL_9;
  }

  v29 = *&v22[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (*(v29 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24) == 1)
  {
    v26 = MEMORY[0x1E69E7CD0];
    v27 = MEMORY[0x1E69E7CD0];
    v28 = 6;
    v25 = 0;
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
  v30 = *(a9 + 16);
  if (v30)
  {
    v31 = a9 + 32;
    do
    {
      outlined init with copy of FindResult(v31, aBlock);
      __swift_mutable_project_boxed_opaque_existential_1(aBlock, v36);
      AnalyticsEvent.send()();
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      v31 += 40;
      --v30;
    }

    while (v30);
  }
}

void closure #1 in UITextView._ppk_registerUndo(_:undoManager:paperIdentifier:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v19 = 0;
  v7 = [a1 textStorage];
  v8 = *MEMORY[0x1E69DB5F8];
  v9 = [a1 textStorage];
  v10 = [v9 length];

  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = &v19;
  v11[5] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in UITextView._ppk_paperTextAttachmentView(from:);
  *(v12 + 24) = v11;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  [v7 enumerateAttribute:v8 inRange:0 options:v10 usingBlock:{0, v13}];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v16 = v19;

    if (v16)
    {
      a4(v16);
    }
  }
}

void closure #1 in UITextView._ppk_paperTextAttachmentView(from:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, void **a7, void *a8)
{
  outlined init with copy of Any?(a1, v27);
  if (!v28)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_sypSgMd);
    return;
  }

  type metadata accessor for NSTextAttachment();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = v26;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    v16 = v15;
    v14 = v26;
    v17 = [v16 _paperIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == a5 && v20 == a6)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {

        goto LABEL_16;
      }
    }

    v22 = [a8 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];

    if (v22)
    {
      v23 = [v22 view];

      if (v23)
      {
        type metadata accessor for PaperTextAttachmentView();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
LABEL_14:
          v25 = *a7;
          *a7 = v24;

          *a4 = 1;
          goto LABEL_16;
        }
      }
    }

    v24 = 0;
    goto LABEL_14;
  }

LABEL_16:
}

void specialized closure #1 in Canvas.applyUndo(_:selection:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for CapsuleUndoAction();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  Capsule.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence17CapsuleUndoActionVSgMd);
  swift_endAccess();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void partial apply for specialized closure #1 in Canvas.applyUndo(_:selection:)()
{
  specialized closure #1 in Canvas.applyUndo(_:selection:)(*(v0 + 16), *(v0 + 24), &_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
}

{
  specialized closure #1 in Canvas.applyUndo(_:selection:)(*(v0 + 16), *(v0 + 24));
}

void specialized CanvasView.contentView.didset(id a1)
{
  v2 = v1;
  v4 = direct field offset for CanvasView.contentView;
  v5 = *(v1 + direct field offset for CanvasView.contentView);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  v9 = v2 + direct field offset for Canvas._editingView;
  v10 = *(v2 + direct field offset for Canvas._editingView);
  if (v10)
  {
    v11 = *(v9 + 8);
    v12 = *(v2 + direct field offset for Canvas._editingView);
  }

  else
  {
    v12 = *(v2 + direct field offset for Canvas.paperView);
    v11 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  ObjectType = swift_getObjectType();
  v14 = v11[3];
  v15 = v10;
  v14(ObjectType, v11);

  v16 = *(v2 + v4);
  if (v16)
  {
    v17 = *v9;
    if (*v9)
    {
      v18 = *v9;
    }

    else
    {
      v18 = *(v2 + direct field offset for Canvas.paperView);
    }

    v31 = v16;
    v19 = v17;
    [v18 insertSubview:v31 atIndex:0];

    v20 = *v9;
    if (*v9)
    {
      v21 = *v9;
    }

    else
    {
      v21 = *(v2 + direct field offset for Canvas.paperView);
      v20 = 0;
    }

    v22 = v20;
    [v21 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    [v31 setFrame_];
  }
}

uint64_t specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(double a1, double a2)
{
  v3 = v2;
  v93 = a2;
  v92 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v79 - v6;
  *&v8 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd));
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v79 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v94 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v79 - v19;
  x = *&direct field offset for Canvas._editingView;
  v21 = *(v3 + direct field offset for Canvas._editingView);
  v83 = *&v8;
  v82 = v9;
  v81 = v13;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(v3 + direct field offset for Canvas.paperView);
    v21 = 0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v22) + 0xF0))(v21);

  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    v23 = outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v101 = 0u;
    v102 = 0u;
    v103 = 0;
    v24 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v25 = *(v3 + direct field offset for Canvas.paperView);
    v26 = MEMORY[0x1E69E7D40];
    v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x3F0);
    swift_beginAccess();
    v28 = v84;
    v29 = v25 + v27;
    v30 = v85;
    (*(v84 + 16))(v17, v29, v85);
    type metadata accessor for Paper(0);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
    SharedTagged_10.subscript.getter();
    (*(v28 + 8))(v17, v30);
    (*(v5 + 8))(v20, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22ContainerCanvasElement_pMd);
    v23 = swift_dynamicCast();
    v24 = v26;
    if ((v23 & 1) == 0)
    {
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
    }
  }

  v31 = (*((*v24 & *v3) + 0x450))(v23);
  if (!v31)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(&v101, &_s8PaperKit22ContainerCanvasElement_pSgMd);
  }

  v32 = v31;
  outlined init with copy of Date?(&v101, &v95, &_s8PaperKit22ContainerCanvasElement_pSgMd);
  if (!v96)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(&v95, &_s8PaperKit22ContainerCanvasElement_pSgMd);
    return outlined destroy of StocksKitCurrencyCache.Provider?(&v101, &_s8PaperKit22ContainerCanvasElement_pSgMd);
  }

  outlined init with take of PaperKitHashable(&v95, v98);
  v33.n128_f64[0] = specialized Canvas.insertionPosition.getter();
  Height = 0.0;
  if ((*((*v24 & *v3) + 0x810))(v33))
  {
    [v32 bounds];
    Height = CGRectGetHeight(v104);
  }

  v35 = *(v3 + direct field offset for Canvas.paperView);
  v36 = *((*v24 & *v35) + 0x3F0);
  swift_beginAccess();
  (*(v84 + 16))(v94, &v35[v36], v85);
  v37 = *(v3 + *&x);
  if (v37)
  {
    v38 = *(v3 + *&x);
  }

  else
  {
    v38 = v35;
    v37 = 0;
  }

  v39 = v82;
  v40 = v81;
  v41 = v37;
  v42 = [v38 effectiveUserInterfaceLayoutDirection];

  v79[0] = v42;
  v43 = v42 == 0;
  v45 = v99;
  v44 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v79[1] = (*(*(v44 + 8) + 32))(v45);
  v46 = v99;
  v47 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v105.origin.x = (*(v47 + 16))(v46, v47);
  v105.size.height = Height + v48;
  v87 = v92 * 0.5;
  v86 = v93 * 0.5;
  x = v105.origin.x;
  y = v105.origin.y;
  width = v105.size.width;
  v88 = v105.size.height;
  v106 = CGRect.closestRect(in:)(v105);
  v49 = v106.origin.x;
  v50 = v106.origin.y;
  v51 = v106.size.width;
  v52 = v106.size.height;
  MidX = CGRectGetMidX(v106);
  v107.origin.x = v49;
  v107.origin.y = v50;
  v107.size.width = v51;
  v107.size.height = v52;
  MidY = CGRectGetMidY(v107);
  v55 = v99;
  v56 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v57 = (*(v56 + 88))(v55, v56);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v79[-2] = v94;
  LOBYTE(v79[-1]) = v43;
  v59 = v83;
  (*(v39 + 16))(v80, v40, COERCE_DOUBLE(*&v83), v58);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  *&v95 = dispatch thunk of Sequence._copyToContiguousArray()();
  specialized MutableCollection<>.sort(by:)(partial apply for specialized closure #1 in Capsule<>.suggestedPositionForNewCanvasElement(into:at:withSize:isLTR:extendCanvasHeight:), &v79[-4]);
  v80 = v32;
  (*(v39 + 8))(v40, COERCE_DOUBLE(*&v59));
  v60 = v95;
  v61 = *(v95 + 16);
  if (!v61)
  {
LABEL_29:

    (*(v84 + 8))(v94, v85);
    __swift_destroy_boxed_opaque_existential_0(v98);
    return outlined destroy of StocksKitCurrencyCache.Provider?(&v101, &_s8PaperKit22ContainerCanvasElement_pSgMd);
  }

  v62 = 0;
  v63 = -20.0;
  if (!v79[0])
  {
    v63 = 20.0;
  }

  v83 = v63;
  while (v62 < v60[2])
  {
    (*(v5 + 16))(v7, v60 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v62, v4);
    type metadata accessor for Paper(0);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
    SharedTagged_10.subscript.getter();
    v64 = v96;
    v65 = v97;
    __swift_project_boxed_opaque_existential_1(&v95, v96);
    v108.origin.x = (*(*(v65 + 8) + 8))(v64);
    v66 = v108.origin.x;
    v67 = v108.origin.y;
    v68 = v108.size.width;
    v69 = v108.size.height;
    v70 = CGRectGetMidX(v108);
    v109.origin.x = v66;
    v109.origin.y = v67;
    v109.size.width = v68;
    v109.size.height = v69;
    v71 = CGRectGetMidY(v109);
    __swift_destroy_boxed_opaque_existential_0(&v95);
    v72 = vabdd_f64(v71, MidY);
    if (vabdd_f64(v70, MidX) < 1.0 && v72 < 1.0)
    {
      v110.origin.x = x;
      v110.origin.y = y;
      v110.size.width = width;
      v110.size.height = v88;
      v111 = CGRect.closestRect(in:)(v110);
      v74 = v111.origin.x;
      v75 = v111.origin.y;
      v76 = v111.size.width;
      v77 = v111.size.height;
      MidX = CGRectGetMidX(v111);
      v112.origin.x = v74;
      v112.origin.y = v75;
      v112.size.width = v76;
      v112.size.height = v77;
      MidY = CGRectGetMidY(v112);
    }

    ++v62;
    (*(v5 + 8))(v7, v4);
    if (v61 == v62)
    {
      goto LABEL_29;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t specialized Canvas.recentlyAddedCanvasElement.getter()
{
  v1 = *(v0 + direct field offset for Canvas._editingView);
  if (v1)
  {
    v2 = *(v0 + direct field offset for Canvas._editingView + 8);
    v3 = *(v0 + direct field offset for Canvas._editingView);
  }

  else
  {
    v3 = *(v0 + direct field offset for Canvas.paperView);
    v2 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  ObjectType = swift_getObjectType();
  v5 = v2[8];
  v6 = v1;
  v7 = v5(ObjectType, v2);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_13:

    return 0;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_6:
  v9 = __OFSUB__(v8, 1);
  result = v8 - 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v11 = MEMORY[0x1DA6CE0C0](result, v7);
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v7 + 8 * result + 32);
LABEL_11:
    v12 = v11;

    return v12;
  }

  __break(1u);
  return result;
}

double specialized Canvas.insertionPosition.getter()
{
  v1 = v0;
  v2 = [v0 window];
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  v4 = direct field offset for Canvas._editingView;
  v5 = *(v0 + direct field offset for Canvas._editingView);
  if (v5)
  {
    v6 = *(v0 + direct field offset for Canvas._editingView);
  }

  else
  {
    v6 = *(v0 + direct field offset for Canvas.paperView);
    v5 = 0;
  }

  v8 = v5;
  [v3 bounds];
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  MidX = CGRectGetMidX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  [v6 convertPoint:v3 fromCoordinateSpace:{MidX, CGRectGetMidY(v63)}];
  v15 = v14;
  v17 = v16;

  v18 = *(v1 + v4);
  if (v18)
  {
    v19 = *(v1 + v4);
  }

  else
  {
    v19 = *(v1 + direct field offset for Canvas.paperView);
    v18 = 0;
  }

  v20 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v19) + 0x2C0))(v56, v18);
  v50 = v56[1];
  v52 = v56[0];
  v21 = v57;
  v22 = v58;

  (*((*v20 & *v1) + 0x858))(v59);
  if (v60)
  {
    v23 = -1;
  }

  else
  {
    v23 = 0;
  }

  v24 = vdupq_n_s64(v23);
  *&t1.a = v52;
  *&t1.c = v50;
  t1.tx = v21;
  t1.ty = v22;
  *&t2.a = vbslq_s8(v24, xmmword_1D4059320, v59[0]);
  *&t2.c = vbslq_s8(v24, xmmword_1D4059310, v59[1]);
  *&t2.tx = vbicq_s8(v59[2], v24);
  CGAffineTransformConcat(&v53, &t1, &t2);
  t1 = v53;
  CGAffineTransformInvert(&t2, &t1);
  a = t2.a;
  b = t2.b;
  c = t2.c;
  d = t2.d;
  t1 = t2;
  ty = t2.ty;
  tx = t2.tx;
  v61.x = v15;
  v61.y = v17;
  *&v51 = *&CGPointApplyAffineTransform(v61, &t1);
  v29 = *(v1 + v4);
  if (v29)
  {
    v30 = *(v1 + v4);
  }

  else
  {
    v30 = *(v1 + direct field offset for Canvas.paperView);
    v29 = 0;
  }

  v31 = v29;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v64.origin.x = v33;
  v64.origin.y = v35;
  v64.size.width = v37;
  v64.size.height = v39;
  v65 = CGRectApplyAffineTransform(v64, &t1);
  v40 = v65.origin.x;
  v41 = v65.origin.y;
  v42 = v65.size.width;
  v43 = v65.size.height;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v40;
  v66.origin.y = v41;
  v66.size.width = v42;
  v66.size.height = v43;
  MaxX = CGRectGetMaxX(v66);
  v46 = v51;
  if (MinX > v51)
  {
    v46 = MinX;
  }

  if (v46 >= MaxX)
  {
    v7 = MaxX;
  }

  else
  {
    v7 = v46;
  }

  v67.origin.x = v40;
  v67.origin.y = v41;
  v67.size.width = v42;
  v67.size.height = v43;
  CGRectGetMinY(v67);
  v68.origin.x = v40;
  v68.origin.y = v41;
  v68.size.width = v42;
  v68.size.height = v43;
  CGRectGetMaxY(v68);

  return v7;
}

uint64_t specialized Canvas.tool.setter(void *a1, void (*a2)(void *__return_ptr))
{
  v4 = v2;
  v6 = type metadata accessor for PKInk();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v56 = &v54 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v54 - v16;
  v55 = a2;
  (a2)(v59, v15);
  v18 = v60;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  PKTool.ink.getter(v18, v17);
  isa = PKInk._bridgeToObjectiveC()().super.isa;
  v20 = *(v7 + 8);
  v20(v17, v6);
  v21 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  PKTool.ink.getter(v21, v14);
  v22 = PKInk._bridgeToObjectiveC()().super.isa;
  v58 = v6;
  v20(v14, v6);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKInk);
  LOBYTE(v21) = static NSObject.== infix(_:_:)();

  v23 = __swift_destroy_boxed_opaque_existential_0(v59);
  if ((v21 & 1) == 0)
  {
    v24 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x468);
    v25 = (v24)(v23);
    if (v25)
    {
      v26 = v25;
      v27 = a1[3];
      __swift_project_boxed_opaque_existential_1(a1, v27);
      PKTool.ink.getter(v27, v17);
      v28 = PKInk._bridgeToObjectiveC()().super.isa;
      v20(v17, v58);
      [v26 setInk_];
    }

    v29 = v24();
    if (v29)
    {
      v30 = v20;
      v31 = v29;
      v32 = [v29 allowsFingerDrawing];

      if (v32)
      {
        v54 = v4;
        v55(v59);
        v33 = v60;
        __swift_project_boxed_opaque_existential_1(v59, v60);
        v34 = v56;
        PKTool.ink.getter(v33, v56);
        v35 = PKInk._bridgeToObjectiveC()().super.isa;
        v36 = [(objc_class *)v35 identifier];

        if (!v36)
        {
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = MEMORY[0x1DA6CCED0](v37);
        }

        v38 = v58;
        v30(v34, v58);
        v39 = a1[3];
        __swift_project_boxed_opaque_existential_1(a1, v39);
        v40 = v36;
        v41 = v57;
        PKTool.ink.getter(v39, v57);
        v42 = PKInk._bridgeToObjectiveC()().super.isa;
        v43 = [(objc_class *)v42 identifier];

        if (!v43)
        {
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = MEMORY[0x1DA6CCED0](v44);
        }

        v30(v41, v38);
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
        v48 = v43;

        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        if (v45 == v49 && v47 == v51)
        {

          __swift_destroy_boxed_opaque_existential_0(v59);
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          __swift_destroy_boxed_opaque_existential_0(v59);
          if ((v52 & 1) == 0)
          {
            AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
          }
        }
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(int a1)
{
  LODWORD(v746) = a1;
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v681 = &v666 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v684 = *(v685 - 8);
  MEMORY[0x1EEE9AC00](v685);
  v682 = &v666 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v680 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v686 = &v666 - v5;
  v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v745 = *(v744 - 8);
  MEMORY[0x1EEE9AC00](v744);
  v743 = &v666 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v8 = *(v7 - 8);
  v775 = v7;
  v776 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v678 = &v666 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v705 = &v666 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v675 = &v666 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v677 = &v666 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v676 = &v666 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v672 = &v666 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v671 = &v666 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v674 = &v666 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v673 = &v666 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v670 = &v666 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v669 = &v666 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v668 = &v666 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v33 = *(v32 - 8);
  v768 = v32;
  v769 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v767 = &v666 - v34;
  v770 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v766 = *(v770 - 8);
  MEMORY[0x1EEE9AC00](v770);
  v765 = &v666 - v35;
  v763 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v764 = *(v763 - 8);
  MEMORY[0x1EEE9AC00](v763);
  v762 = &v666 - v36;
  v760 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v761 = *(v760 - 8);
  MEMORY[0x1EEE9AC00](v760);
  v759 = &v666 - v37;
  v756 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v756);
  v755 = &v666 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v757 = &v666 - v40;
  v753 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v753);
  v752 = &v666 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v754 = &v666 - v43;
  v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v750);
  v749 = &v666 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v751 = &v666 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v679 = &v666 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v703 = &v666 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v698 = &v666 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v729 = (&v666 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v699 = &v666 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v730 = &v666 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v697 = &v666 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v728 = &v666 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v696 = &v666 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v727 = &v666 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v694 = &v666 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v726 = &v666 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v695 = &v666 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v700 = &v666 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v693 = &v666 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v701 = &v666 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v692 = &v666 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v734 = (&v666 - v82);
  MEMORY[0x1EEE9AC00](v83);
  v691 = &v666 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v733 = &v666 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v690 = &v666 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v732 = &v666 - v90;
  v774 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v774);
  v702 = &v666 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v731 = (&v666 - v93);
  MEMORY[0x1EEE9AC00](v94);
  v723 = &v666 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v722 = &v666 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v725 = &v666 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v724 = &v666 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v721 = &v666 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v720 = &v666 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v719 = &v666 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v718 = &v666 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v716 = &v666 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v715 = &v666 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v739 = &v666 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v717 = &v666 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v738 = &v666 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v714 = &v666 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v737 = &v666 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v713 = &v666 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v736 = &v666 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v712 = &v666 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v747 = &v666 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v773 = &v666 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v735 = &v666 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v710 = &v666 - v137;
  v777 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v777);
  v704 = &v666 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v139);
  v708 = (&v666 - v140);
  MEMORY[0x1EEE9AC00](v141);
  v711 = (&v666 - v142);
  MEMORY[0x1EEE9AC00](v143);
  v709 = (&v666 - v144);
  MEMORY[0x1EEE9AC00](v145);
  v707 = (&v666 - v146);
  MEMORY[0x1EEE9AC00](v147);
  v706 = (&v666 - v148);
  MEMORY[0x1EEE9AC00](v149);
  v741 = &v666 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v742 = &v666 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v740 = &v666 - v154;
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v666 - v156;
  MEMORY[0x1EEE9AC00](v158);
  v748 = &v666 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v758 = &v666 - v161;
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v666 - v163;
  v772 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v772);
  MEMORY[0x1EEE9AC00](v165);
  MEMORY[0x1EEE9AC00](v166);
  MEMORY[0x1EEE9AC00](v167);
  MEMORY[0x1EEE9AC00](v168);
  MEMORY[0x1EEE9AC00](v169);
  MEMORY[0x1EEE9AC00](v170);
  MEMORY[0x1EEE9AC00](&v666 - v171);
  MEMORY[0x1EEE9AC00](v172);
  MEMORY[0x1EEE9AC00](v173);
  v689 = &v666 - v174;
  MEMORY[0x1EEE9AC00](v175);
  MEMORY[0x1EEE9AC00](v176);
  v687 = &v666 - v177;
  MEMORY[0x1EEE9AC00](v178);
  v688 = &v666 - v179;
  MEMORY[0x1EEE9AC00](v180);
  v182 = &v666 - v181;
  MEMORY[0x1EEE9AC00](v183);
  MEMORY[0x1EEE9AC00](v184);
  v186 = &v666 - v185;
  MEMORY[0x1EEE9AC00](v187);
  v189 = &v666 - v188;
  MEMORY[0x1EEE9AC00](v190);
  v192 = &v666 - v191;
  MEMORY[0x1EEE9AC00](v193);
  v195 = &v666 - v194;
  MEMORY[0x1EEE9AC00](v196);
  v198 = &v666 - v197;
  MEMORY[0x1EEE9AC00](v199);
  v201 = &v666 - v200;
  MEMORY[0x1EEE9AC00](v202);
  v204 = &v666 - v203;
  MEMORY[0x1EEE9AC00](v205);
  v218 = &v666 - v217;
  v219 = v746;
  if (v746 <= 4u)
  {
    v725 = v204;
    v726 = v198;
    v727 = v201;
    v728 = v192;
    v729 = v195;
    v730 = v186;
    v731 = v189;
    v746 = v182;
    v251 = v164;
    v252 = v157;
    v253 = v742;
    v254 = v741;
    v255 = v735;
    v256 = v736;
    v257 = v737;
    v258 = v738;
    v259 = v739;
    v260 = v732;
    v261 = v733;
    v262 = v734;
    if (v219 > 1)
    {
      if (v219 == 2)
      {
        *v740 = 3;
        swift_storeEnumTagMultiPayload();
        v353 = type metadata accessor for Color(0);
        v354 = *(v353 - 8);
        v355 = *(v354 + 56);
        v356 = v354 + 56;
        v355(v713, 1, 1, v353);
        v355(v257, 1, 1, v353);
        v735 = v356;
        v736 = v355;
        (*(v776 + 56))(v262, 1, 1, v775);
        type metadata accessor for CGRect(0);
        v742 = v357;
        v741 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v778 = 0u;
        v779 = 0u;
        v358 = v728;
        CRRegister.init(wrappedValue:)();
        v359 = v772;
        *&v778 = 0;
        v733 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v746 = v359[6];
        v360 = v773;
        v355(v773, 1, 1, v353);
        v361 = v747;
        outlined init with copy of Date?(v360, v747, &_s8PaperKit5ColorVSgMd);
        v738 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v360, &_s8PaperKit5ColorVSgMd);
        v739 = v359[7];
        (v736)(v360, 1, 1, v353);
        outlined init with copy of Date?(v360, v361, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v360, &_s8PaperKit5ColorVSgMd);
        v747 = v359[8];
        *&v778 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v735 = v359[9];
        v362 = v758;
        swift_storeEnumTagMultiPayload();
        v736 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v362, v748, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v362, type metadata accessor for ShapeType);
        *&v778 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v778 = 0;
        BYTE8(v778) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v778 = 0;
        BYTE8(v778) = 0;
        CRRegister.init(wrappedValue:)();
        v363 = v359[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v748 = v363;
        CRAttributedString.init(_:)();
        v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v365 = v751;
        (*(*(v364 - 8) + 56))(v751, 1, 1, v364);
        outlined init with copy of Date?(v365, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v365, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v366 = v359[15];
        *&v778 = 0;
        v367 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v751 = v366;
        v750 = v367;
        CRRegister.init(wrappedValue:)();
        *&v778 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v368 = type metadata accessor for StrokeStyle(0);
        v369 = v754;
        (*(*(v368 - 8) + 56))(v754, 1, 1, v368);
        outlined init with copy of Date?(v369, v752, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v369, &_s8PaperKit11StrokeStyleOSgMd);
        v370 = type metadata accessor for Shadow();
        v371 = v757;
        (*(*(v370 - 8) + 56))(v757, 1, 1, v370);
        outlined init with copy of Date?(v371, v755, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v371, &_s8PaperKit6ShadowVSgMd);
        v779 = 0u;
        v780 = 0u;
        v778 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v778 = 0u;
        v779 = 0u;
        v372 = v759;
        CRRegister.init(_:)();
        (*(v761 + 40))(v358, v372, v760);
        _s8PaperKit0A6MarkupVWOcTm_0(v740, v362, v736);
        v373 = v762;
        CRRegister.init(_:)();
        v374 = v776;
        (*(v764 + 40))(v358 + v735, v373, v763);
        *&v778 = 0x4014000000000000;
        v375 = v765;
        CRRegister.init(_:)();
        (*(v766 + 40))(v358 + v747, v375, v770);
        v376 = v773;
        outlined init with copy of Date?(v713, v773, &_s8PaperKit5ColorVSgMd);
        v377 = v767;
        CRRegister.init(_:)();
        v378 = v768;
        v379 = *(v769 + 40);
        v379(v358 + v739, v377, v768);
        outlined init with copy of Date?(v737, v376, &_s8PaperKit5ColorVSgMd);
        v380 = v734;
        CRRegister.init(_:)();
        v379(v358 + v746, v377, v378);
        v381 = v775;
        v382 = v692;
        outlined init with copy of Date?(v380, v692, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v374 + 48))(v382, 1, v381) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v382, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v550 = v670;
          (*(v374 + 32))(v670, v382, v381);
          (*(v374 + 40))(v358 + v748, v550, v381);
        }

        v551 = v744;
        v552 = v743;
        v553 = v729;
        *&v778 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v380, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v737, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v713, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v740, type metadata accessor for ShapeType);
        (*(v745 + 40))(&v751[v358], v552, v551);
        _s8PaperKit0A6MarkupVWObTm_0(v358, v553, type metadata accessor for Shape);
        v554 = 170.0;
      }

      else
      {
        if (v219 != 3)
        {
          v742 = v213;
          if (one-time initialization token for defaultCalloutBubble != -1)
          {
            swift_once();
          }

          v445 = qword_1EC7C4110;
          *v254 = static UIConstants.defaultCalloutBubble;
          *(v254 + 16) = v445;
          swift_storeEnumTagMultiPayload();
          v446 = type metadata accessor for Color(0);
          v447 = *(v446 - 8);
          v448 = *(v447 + 56);
          v449 = (v447 + 56);
          v448(v717, 1, 1, v446);
          v448(v259, 1, 1, v446);
          v733 = v449;
          v734 = v448;
          (*(v776 + 56))(v700, 1, 1, v775);
          type metadata accessor for CGRect(0);
          v738 = v450;
          v737 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
          v778 = 0u;
          v779 = 0u;
          v451 = v746;
          CRRegister.init(wrappedValue:)();
          v452 = v772;
          *&v778 = 0;
          v732 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
          CRRegister.init(_:)();
          v740 = v452[6];
          v453 = v773;
          v448(v773, 1, 1, v446);
          v454 = v747;
          outlined init with copy of Date?(v453, v747, &_s8PaperKit5ColorVSgMd);
          v735 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v453, &_s8PaperKit5ColorVSgMd);
          v736 = v452[7];
          (v734)(v453, 1, 1, v446);
          outlined init with copy of Date?(v453, v454, &_s8PaperKit5ColorVSgMd);
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v453, &_s8PaperKit5ColorVSgMd);
          v747 = v452[8];
          *&v778 = 0x4014000000000000;
          CRRegister.init(wrappedValue:)();
          v733 = v452[9];
          v455 = v758;
          swift_storeEnumTagMultiPayload();
          v734 = type metadata accessor for ShapeType;
          _s8PaperKit0A6MarkupVWOcTm_0(v455, v748, type metadata accessor for ShapeType);
          _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
          CRRegister.init(wrappedValue:)();
          _s8PaperKit0A6MarkupVWOhTm_0(v455, type metadata accessor for ShapeType);
          *&v778 = 0x3FF0000000000000;
          CRRegister.init(wrappedValue:)();
          *&v778 = 0;
          BYTE8(v778) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
          CRRegister.init(wrappedValue:)();
          *&v778 = 0;
          BYTE8(v778) = 0;
          CRRegister.init(wrappedValue:)();
          v456 = v452[13];
          lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
          v748 = v456;
          CRAttributedString.init(_:)();
          v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
          v458 = v751;
          (*(*(v457 - 8) + 56))(v751, 1, 1, v457);
          outlined init with copy of Date?(v458, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v458, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          v459 = v452[15];
          *&v778 = 0;
          v460 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
          v751 = v459;
          v750 = v460;
          CRRegister.init(wrappedValue:)();
          *&v778 = 0;
          lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
          CRRegister.init(wrappedValue:)();
          v461 = type metadata accessor for StrokeStyle(0);
          v462 = v754;
          (*(*(v461 - 8) + 56))(v754, 1, 1, v461);
          outlined init with copy of Date?(v462, v752, &_s8PaperKit11StrokeStyleOSgMd);
          lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v462, &_s8PaperKit11StrokeStyleOSgMd);
          v463 = type metadata accessor for Shadow();
          v464 = v757;
          (*(*(v463 - 8) + 56))(v757, 1, 1, v463);
          outlined init with copy of Date?(v464, v755, &_s8PaperKit6ShadowVSgMd);
          lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v464, &_s8PaperKit6ShadowVSgMd);
          v779 = 0u;
          v780 = 0u;
          v778 = 0u;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
          lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          UnknownProperties.init()();
          v778 = 0u;
          v779 = 0u;
          v465 = v759;
          CRRegister.init(_:)();
          (*(v761 + 40))(v451, v465, v760);
          _s8PaperKit0A6MarkupVWOcTm_0(v741, v455, v734);
          v466 = v762;
          CRRegister.init(_:)();
          v467 = v776;
          (*(v764 + 40))(v451 + v733, v466, v763);
          *&v778 = 0x4014000000000000;
          v468 = v765;
          CRRegister.init(_:)();
          (*(v766 + 40))(v451 + v747, v468, v770);
          v469 = v773;
          outlined init with copy of Date?(v717, v773, &_s8PaperKit5ColorVSgMd);
          v470 = v767;
          CRRegister.init(_:)();
          v471 = v768;
          v472 = *(v769 + 40);
          v472(v451 + v736, v470, v768);
          outlined init with copy of Date?(v739, v469, &_s8PaperKit5ColorVSgMd);
          v473 = v700;
          CRRegister.init(_:)();
          v472(v451 + v740, v470, v471);
          v474 = v775;
          v475 = v695;
          outlined init with copy of Date?(v473, v695, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          if ((*(v467 + 48))(v475, 1, v474) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v475, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          }

          else
          {
            v571 = v674;
            (*(v467 + 32))(v674, v475, v474);
            (*(v467 + 40))(v451 + v748, v571, v474);
          }

          v572 = v745;
          v573 = v744;
          v574 = v743;
          *&v778 = 0;
          CRRegister.init(_:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v473, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v739, &_s8PaperKit5ColorVSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v717, &_s8PaperKit5ColorVSgMd);
          _s8PaperKit0A6MarkupVWOhTm_0(v741, type metadata accessor for ShapeType);
          (*(v572 + 40))(&v751[v451], v574, v573);
          v559 = v742;
          _s8PaperKit0A6MarkupVWObTm_0(v451, v742, type metadata accessor for Shape);
          v560 = 165.0;
          v562 = 104.0;
          v561 = v559;
          goto LABEL_65;
        }

        if (one-time initialization token for defaultLine != -1)
        {
          swift_once();
        }

        v263 = *algn_1EC7C40D0;
        *v253 = static UIConstants.defaultLine;
        v253[1] = v263;
        v253[2] = xmmword_1EC7C40E0;
        swift_storeEnumTagMultiPayload();
        v264 = type metadata accessor for Color(0);
        v265 = *(v264 - 8);
        v266 = *(v265 + 56);
        v267 = v265 + 56;
        v266(v714, 1, 1, v264);
        v266(v258, 1, 1, v264);
        v735 = v267;
        v736 = v266;
        (*(v776 + 56))(v701, 1, 1, v775);
        type metadata accessor for CGRect(0);
        v741 = v268;
        v740 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v778 = 0u;
        v779 = 0u;
        v269 = v730;
        CRRegister.init(wrappedValue:)();
        v270 = v772;
        *&v778 = 0;
        v734 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v746 = v270[6];
        v271 = v773;
        v266(v773, 1, 1, v264);
        v272 = v747;
        outlined init with copy of Date?(v271, v747, &_s8PaperKit5ColorVSgMd);
        v737 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v271, &_s8PaperKit5ColorVSgMd);
        v739 = v270[7];
        (v736)(v271, 1, 1, v264);
        outlined init with copy of Date?(v271, v272, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v271, &_s8PaperKit5ColorVSgMd);
        v747 = v270[8];
        *&v778 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v735 = v270[9];
        v273 = v758;
        swift_storeEnumTagMultiPayload();
        v736 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v273, v748, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v273, type metadata accessor for ShapeType);
        *&v778 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v778 = 0;
        BYTE8(v778) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v778 = 0;
        BYTE8(v778) = 0;
        CRRegister.init(wrappedValue:)();
        v274 = v270[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v748 = v274;
        CRAttributedString.init(_:)();
        v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v276 = v751;
        (*(*(v275 - 8) + 56))(v751, 1, 1, v275);
        outlined init with copy of Date?(v276, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v276, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v277 = v270[15];
        *&v778 = 0;
        v278 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v751 = v277;
        v750 = v278;
        CRRegister.init(wrappedValue:)();
        *&v778 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v279 = type metadata accessor for StrokeStyle(0);
        v280 = v754;
        (*(*(v279 - 8) + 56))(v754, 1, 1, v279);
        outlined init with copy of Date?(v280, v752, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v280, &_s8PaperKit11StrokeStyleOSgMd);
        v281 = type metadata accessor for Shadow();
        v282 = v757;
        (*(*(v281 - 8) + 56))(v757, 1, 1, v281);
        outlined init with copy of Date?(v282, v755, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v282, &_s8PaperKit6ShadowVSgMd);
        v779 = 0u;
        v780 = 0u;
        v778 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v778 = 0u;
        v779 = 0u;
        v283 = v759;
        CRRegister.init(_:)();
        (*(v761 + 40))(v269, v283, v760);
        _s8PaperKit0A6MarkupVWOcTm_0(v742, v273, v736);
        v284 = v762;
        CRRegister.init(_:)();
        v285 = v776;
        (*(v764 + 40))(v269 + v735, v284, v763);
        *&v778 = 0x4014000000000000;
        v286 = v765;
        CRRegister.init(_:)();
        (*(v766 + 40))(v269 + v747, v286, v770);
        v287 = v773;
        outlined init with copy of Date?(v714, v773, &_s8PaperKit5ColorVSgMd);
        v288 = v767;
        CRRegister.init(_:)();
        v289 = v768;
        v290 = *(v769 + 40);
        v290(v269 + v739, v288, v768);
        outlined init with copy of Date?(v738, v287, &_s8PaperKit5ColorVSgMd);
        v291 = v701;
        CRRegister.init(_:)();
        v290(v269 + v746, v288, v289);
        v292 = v775;
        v293 = v693;
        outlined init with copy of Date?(v291, v693, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v285 + 48))(v293, 1, v292) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v293, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v567 = v673;
          (*(v285 + 32))(v673, v293, v292);
          (*(v285 + 40))(v269 + v748, v567, v292);
        }

        v568 = v745;
        v569 = v744;
        v570 = v743;
        v553 = v731;
        *&v778 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v291, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v738, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v714, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v742, type metadata accessor for ShapeType);
        (*(v568 + 40))(&v751[v269], v570, v569);
        _s8PaperKit0A6MarkupVWObTm_0(v269, v553, type metadata accessor for Shape);
        v554 = 150.0;
      }

      specialized NewCanvasElementDelegate.addShape(_:size:)(v553, v554, v554);
      v566 = v553;
      return _s8PaperKit0A6MarkupVWOhTm_0(v566, type metadata accessor for Shape);
    }

    if (v219)
    {
      v667 = v252;
      swift_storeEnumTagMultiPayload();
      v476 = type metadata accessor for Color(0);
      v477 = *(v476 - 8);
      v478 = *(v477 + 56);
      v479 = (v477 + 56);
      v478(v712, 1, 1, v476);
      v478(v256, 1, 1, v476);
      v737 = v479;
      v738 = v478;
      (*(v776 + 56))(v261, 1, 1, v775);
      type metadata accessor for CGRect(0);
      v742 = v480;
      v741 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v778 = 0u;
      v779 = 0u;
      v481 = v726;
      CRRegister.init(wrappedValue:)();
      v482 = v772;
      *&v778 = 0;
      v735 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v746 = v482[6];
      v483 = v773;
      v478(v773, 1, 1, v476);
      v484 = v747;
      outlined init with copy of Date?(v483, v747, &_s8PaperKit5ColorVSgMd);
      v739 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v483, &_s8PaperKit5ColorVSgMd);
      v740 = v482[7];
      (v738)(v483, 1, 1, v476);
      outlined init with copy of Date?(v483, v484, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v483, &_s8PaperKit5ColorVSgMd);
      v747 = v482[8];
      *&v778 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v737 = v482[9];
      v485 = v758;
      swift_storeEnumTagMultiPayload();
      v738 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v485, v748, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v485, type metadata accessor for ShapeType);
      *&v778 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      BYTE8(v778) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      BYTE8(v778) = 0;
      CRRegister.init(wrappedValue:)();
      v486 = v482[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v748 = v486;
      CRAttributedString.init(_:)();
      v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v488 = v751;
      (*(*(v487 - 8) + 56))(v751, 1, 1, v487);
      outlined init with copy of Date?(v488, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v488, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v489 = v482[15];
      *&v778 = 0;
      v490 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v751 = v489;
      v750 = v490;
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v491 = type metadata accessor for StrokeStyle(0);
      v492 = v754;
      (*(*(v491 - 8) + 56))(v754, 1, 1, v491);
      outlined init with copy of Date?(v492, v752, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v492, &_s8PaperKit11StrokeStyleOSgMd);
      v493 = type metadata accessor for Shadow();
      v494 = v757;
      (*(*(v493 - 8) + 56))(v757, 1, 1, v493);
      outlined init with copy of Date?(v494, v755, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v494, &_s8PaperKit6ShadowVSgMd);
      v779 = 0u;
      v780 = 0u;
      v778 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v778 = 0u;
      v779 = 0u;
      v495 = v759;
      CRRegister.init(_:)();
      (*(v761 + 40))(v481, v495, v760);
      _s8PaperKit0A6MarkupVWOcTm_0(v667, v485, v738);
      v496 = v762;
      CRRegister.init(_:)();
      v497 = v776;
      (*(v764 + 40))(v481 + v737, v496, v763);
      *&v778 = 0x4014000000000000;
      v498 = v765;
      CRRegister.init(_:)();
      (*(v766 + 40))(v481 + v747, v498, v770);
      v499 = v773;
      outlined init with copy of Date?(v712, v773, &_s8PaperKit5ColorVSgMd);
      v500 = v767;
      CRRegister.init(_:)();
      v501 = v768;
      v502 = *(v769 + 40);
      v502(v481 + v740, v500, v768);
      outlined init with copy of Date?(v736, v499, &_s8PaperKit5ColorVSgMd);
      v503 = v733;
      CRRegister.init(_:)();
      v502(v481 + v746, v500, v501);
      v504 = v775;
      v505 = v691;
      outlined init with copy of Date?(v503, v691, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v497 + 48))(v505, 1, v504) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v505, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v580 = v669;
        (*(v497 + 32))(v669, v505, v504);
        (*(v497 + 40))(v481 + v748, v580, v504);
      }

      v581 = v745;
      v582 = v744;
      v583 = v743;
      v584 = v727;
      *&v778 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v503, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v736, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v712, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v667, type metadata accessor for ShapeType);
      (*(v581 + 40))(&v751[v481], v583, v582);
      _s8PaperKit0A6MarkupVWObTm_0(v481, v584, type metadata accessor for Shape);
      specialized NewCanvasElementDelegate.addShape(_:size:)(v584, 150.0, 150.0);
      v566 = v584;
      return _s8PaperKit0A6MarkupVWOhTm_0(v566, type metadata accessor for Shape);
    }

    v746 = v218;
    v666 = v251;
    swift_storeEnumTagMultiPayload();
    v323 = type metadata accessor for Color(0);
    v324 = *(v323 - 8);
    v325 = *(v324 + 56);
    v326 = (v324 + 56);
    v325(v710, 1, 1, v323);
    v325(v255, 1, 1, v323);
    v736 = v326;
    v737 = v325;
    (*(v776 + 56))(v260, 1, 1, v775);
    type metadata accessor for CGRect(0);
    v741 = v327;
    v740 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v778 = 0u;
    v779 = 0u;
    v328 = v725;
    CRRegister.init(wrappedValue:)();
    v329 = v772;
    *&v778 = 0;
    v734 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v742 = v329[6];
    v330 = v773;
    v325(v773, 1, 1, v323);
    v331 = v747;
    outlined init with copy of Date?(v330, v747, &_s8PaperKit5ColorVSgMd);
    v738 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v330, &_s8PaperKit5ColorVSgMd);
    v739 = v329[7];
    (v737)(v330, 1, 1, v323);
    outlined init with copy of Date?(v330, v331, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v330, &_s8PaperKit5ColorVSgMd);
    v747 = v329[8];
    *&v778 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v736 = v329[9];
    v332 = v758;
    swift_storeEnumTagMultiPayload();
    v737 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v332, v748, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v332, type metadata accessor for ShapeType);
    *&v778 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    BYTE8(v778) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    BYTE8(v778) = 0;
    CRRegister.init(wrappedValue:)();
    v333 = v329[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v748 = v333;
    CRAttributedString.init(_:)();
    v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v335 = v751;
    (*(*(v334 - 8) + 56))(v751, 1, 1, v334);
    outlined init with copy of Date?(v335, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v335, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v336 = v329[15];
    *&v778 = 0;
    v337 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v751 = v336;
    v750 = v337;
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v338 = type metadata accessor for StrokeStyle(0);
    v339 = v754;
    (*(*(v338 - 8) + 56))(v754, 1, 1, v338);
    outlined init with copy of Date?(v339, v752, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v339, &_s8PaperKit11StrokeStyleOSgMd);
    v340 = type metadata accessor for Shadow();
    v341 = v757;
    (*(*(v340 - 8) + 56))(v757, 1, 1, v340);
    outlined init with copy of Date?(v341, v755, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v341, &_s8PaperKit6ShadowVSgMd);
    v779 = 0u;
    v780 = 0u;
    v778 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v778 = 0u;
    v779 = 0u;
    v342 = v759;
    CRRegister.init(_:)();
    (*(v761 + 40))(v328, v342, v760);
    _s8PaperKit0A6MarkupVWOcTm_0(v666, v332, v737);
    v343 = v762;
    CRRegister.init(_:)();
    v344 = v776;
    (*(v764 + 40))(v328 + v736, v343, v763);
    *&v778 = 0x4014000000000000;
    v345 = v765;
    CRRegister.init(_:)();
    (*(v766 + 40))(v328 + v747, v345, v770);
    v346 = v773;
    outlined init with copy of Date?(v710, v773, &_s8PaperKit5ColorVSgMd);
    v347 = v767;
    CRRegister.init(_:)();
    v348 = v768;
    v349 = *(v769 + 40);
    v349(v328 + v739, v347, v768);
    outlined init with copy of Date?(v735, v346, &_s8PaperKit5ColorVSgMd);
    v350 = v732;
    CRRegister.init(_:)();
    v349(v328 + v742, v347, v348);
    v351 = v775;
    v352 = v690;
    outlined init with copy of Date?(v350, v690, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v344 + 48))(v352, 1, v351) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v352, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v575 = v668;
      (*(v344 + 32))(v668, v352, v351);
      (*(v344 + 40))(v328 + v748, v575, v351);
    }

    v576 = v745;
    v577 = v744;
    v578 = v743;
    *&v778 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v350, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v735, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v710, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v666, type metadata accessor for ShapeType);
    (*(v576 + 40))(&v751[v328], v578, v577);
    v579 = v328;
    goto LABEL_61;
  }

  if (v746 <= 7u)
  {
    if (v746 == 5)
    {
      *v706 = 0x3FB999999999999ALL;
      swift_storeEnumTagMultiPayload();
      v383 = type metadata accessor for Color(0);
      v384 = *(v383 - 8);
      v385 = *(v384 + 56);
      v386 = (v384 + 56);
      v385(v715, 1, 1, v383);
      v385(v716, 1, 1, v383);
      v737 = v386;
      v738 = v385;
      (*(v776 + 56))(v726, 1, 1, v775);
      type metadata accessor for CGRect(0);
      v742 = v387;
      v741 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v778 = 0u;
      v779 = 0u;
      v388 = v687;
      CRRegister.init(wrappedValue:)();
      v389 = v772;
      *&v778 = 0;
      v736 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v746 = v389[6];
      v390 = v773;
      v385(v773, 1, 1, v383);
      v391 = v747;
      outlined init with copy of Date?(v390, v747, &_s8PaperKit5ColorVSgMd);
      v739 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v390, &_s8PaperKit5ColorVSgMd);
      v740 = v389[7];
      (v738)(v390, 1, 1, v383);
      outlined init with copy of Date?(v390, v391, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v390, &_s8PaperKit5ColorVSgMd);
      v747 = v389[8];
      *&v778 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v737 = v389[9];
      v392 = v758;
      swift_storeEnumTagMultiPayload();
      v738 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v392, v748, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v392, type metadata accessor for ShapeType);
      *&v778 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      BYTE8(v778) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      BYTE8(v778) = 0;
      CRRegister.init(wrappedValue:)();
      v393 = v389[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v748 = v393;
      CRAttributedString.init(_:)();
      v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v395 = v751;
      (*(*(v394 - 8) + 56))(v751, 1, 1, v394);
      outlined init with copy of Date?(v395, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v395, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v396 = v389[15];
      *&v778 = 0;
      v397 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v751 = v396;
      v750 = v397;
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v398 = type metadata accessor for StrokeStyle(0);
      v399 = v754;
      (*(*(v398 - 8) + 56))(v754, 1, 1, v398);
      outlined init with copy of Date?(v399, v752, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v399, &_s8PaperKit11StrokeStyleOSgMd);
      v400 = type metadata accessor for Shadow();
      v401 = v757;
      (*(*(v400 - 8) + 56))(v757, 1, 1, v400);
      outlined init with copy of Date?(v401, v755, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v401, &_s8PaperKit6ShadowVSgMd);
      v779 = 0u;
      v780 = 0u;
      v778 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v778 = 0u;
      v779 = 0u;
      v402 = v759;
      CRRegister.init(_:)();
      (*(v761 + 40))(v388, v402, v760);
      _s8PaperKit0A6MarkupVWOcTm_0(v706, v392, v738);
      v403 = v762;
      CRRegister.init(_:)();
      v404 = v776;
      (*(v764 + 40))(v388 + v737, v403, v763);
      *&v778 = 0x4014000000000000;
      v405 = v765;
      CRRegister.init(_:)();
      (*(v766 + 40))(v388 + v747, v405, v770);
      v406 = v773;
      outlined init with copy of Date?(v715, v773, &_s8PaperKit5ColorVSgMd);
      v407 = v767;
      CRRegister.init(_:)();
      v408 = v768;
      v409 = *(v769 + 40);
      v409(v388 + v740, v407, v768);
      outlined init with copy of Date?(v716, v406, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(_:)();
      v409(v388 + v746, v407, v408);
      v410 = v775;
      v411 = v694;
      outlined init with copy of Date?(v726, v694, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v404 + 48))(v411, 1, v410) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v411, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v555 = v671;
        (*(v404 + 32))(v671, v411, v410);
        (*(v404 + 40))(v388 + v748, v555, v410);
      }

      v556 = v745;
      v557 = v744;
      *&v778 = 0;
      v558 = v743;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v726, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v716, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v715, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v706, type metadata accessor for ShapeType);
      (*(v556 + 40))(&v751[v388], v558, v557);
      v559 = v688;
      _s8PaperKit0A6MarkupVWObTm_0(v388, v688, type metadata accessor for Shape);
      v560 = 150.0;
      v561 = v559;
      v562 = 150.0;
      goto LABEL_65;
    }

    if (v746 != 6)
    {
      v506 = v211;
      v746 = v209;
      if (one-time initialization token for defaultStar != -1)
      {
        swift_once();
      }

      v507 = qword_1EC7C40F8;
      v508 = v709;
      *v709 = static UIConstants.defaultStar;
      v508[1] = v507;
      swift_storeEnumTagMultiPayload();
      v509 = type metadata accessor for Color(0);
      v510 = *(v509 - 8);
      v511 = *(v510 + 56);
      v512 = (v510 + 56);
      v511(v720, 1, 1, v509);
      v511(v721, 1, 1, v509);
      v736 = v512;
      v737 = v511;
      (*(v776 + 56))(v728, 1, 1, v775);
      type metadata accessor for CGRect(0);
      v741 = v513;
      v740 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v778 = 0u;
      v779 = 0u;
      CRRegister.init(wrappedValue:)();
      v514 = v772;
      *&v778 = 0;
      v735 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v742 = v514[6];
      v515 = v773;
      v511(v773, 1, 1, v509);
      v516 = v747;
      outlined init with copy of Date?(v515, v747, &_s8PaperKit5ColorVSgMd);
      v738 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v515, &_s8PaperKit5ColorVSgMd);
      v739 = v514[7];
      (v737)(v515, 1, 1, v509);
      outlined init with copy of Date?(v515, v516, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v515, &_s8PaperKit5ColorVSgMd);
      v747 = v514[8];
      *&v778 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v736 = v514[9];
      v517 = v758;
      swift_storeEnumTagMultiPayload();
      v737 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v517, v748, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v517, type metadata accessor for ShapeType);
      *&v778 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      BYTE8(v778) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      BYTE8(v778) = 0;
      CRRegister.init(wrappedValue:)();
      v518 = v514[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v748 = v518;
      CRAttributedString.init(_:)();
      v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v520 = v751;
      (*(*(v519 - 8) + 56))(v751, 1, 1, v519);
      outlined init with copy of Date?(v520, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v520, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v521 = v514[15];
      *&v778 = 0;
      v522 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v751 = v521;
      v750 = v522;
      CRRegister.init(wrappedValue:)();
      *&v778 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v523 = type metadata accessor for StrokeStyle(0);
      v524 = v754;
      (*(*(v523 - 8) + 56))(v754, 1, 1, v523);
      outlined init with copy of Date?(v524, v752, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v524, &_s8PaperKit11StrokeStyleOSgMd);
      v525 = type metadata accessor for Shadow();
      v526 = v757;
      (*(*(v525 - 8) + 56))(v757, 1, 1, v525);
      outlined init with copy of Date?(v526, v755, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v526, &_s8PaperKit6ShadowVSgMd);
      v779 = 0u;
      v780 = 0u;
      v778 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v778 = 0u;
      v779 = 0u;
      v527 = v759;
      CRRegister.init(_:)();
      (*(v761 + 40))(v506, v527, v760);
      _s8PaperKit0A6MarkupVWOcTm_0(v709, v517, v737);
      v528 = v762;
      CRRegister.init(_:)();
      v529 = v776;
      (*(v764 + 40))(v506 + v736, v528, v763);
      *&v778 = 0x4014000000000000;
      v530 = v765;
      CRRegister.init(_:)();
      (*(v766 + 40))(v506 + v747, v530, v770);
      v531 = v773;
      outlined init with copy of Date?(v720, v773, &_s8PaperKit5ColorVSgMd);
      v532 = v767;
      CRRegister.init(_:)();
      v533 = v768;
      v534 = *(v769 + 40);
      v534(v506 + v739, v532, v768);
      outlined init with copy of Date?(v721, v531, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(_:)();
      v534(v506 + v742, v532, v533);
      v535 = v775;
      v536 = v697;
      outlined init with copy of Date?(v728, v697, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v529 + 48))(v536, 1, v535) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v536, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v593 = v676;
        (*(v529 + 32))(v676, v536, v535);
        (*(v529 + 40))(v506 + v748, v593, v535);
      }

      v594 = v745;
      v595 = v744;
      v596 = v743;
      *&v778 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v728, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v721, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v720, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v709, type metadata accessor for ShapeType);
      (*(v594 + 40))(&v751[v506], v596, v595);
      v559 = v746;
      _s8PaperKit0A6MarkupVWObTm_0(v506, v746, type metadata accessor for Shape);
      v560 = 180.0;
      v561 = v559;
      v562 = 180.0;
      goto LABEL_65;
    }

    v746 = v212;
    *v707 = 6;
    swift_storeEnumTagMultiPayload();
    v220 = type metadata accessor for Color(0);
    v221 = *(v220 - 8);
    v222 = *(v221 + 56);
    v223 = (v221 + 56);
    v222(v718, 1, 1, v220);
    v222(v719, 1, 1, v220);
    v736 = v223;
    v224 = v222;
    v737 = v222;
    (*(v776 + 56))(v727, 1, 1, v775);
    type metadata accessor for CGRect(0);
    v741 = v225;
    v740 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v778 = 0u;
    v779 = 0u;
    v226 = v689;
    CRRegister.init(wrappedValue:)();
    v227 = v772;
    *&v778 = 0;
    v735 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v742 = v227[6];
    v228 = v773;
    v224(v773, 1, 1, v220);
    v229 = v747;
    outlined init with copy of Date?(v228, v747, &_s8PaperKit5ColorVSgMd);
    v738 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v228, &_s8PaperKit5ColorVSgMd);
    v739 = v227[7];
    (v737)(v228, 1, 1, v220);
    outlined init with copy of Date?(v228, v229, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v228, &_s8PaperKit5ColorVSgMd);
    v747 = v227[8];
    *&v778 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v736 = v227[9];
    v230 = v758;
    swift_storeEnumTagMultiPayload();
    v737 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v230, v748, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v230, type metadata accessor for ShapeType);
    *&v778 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    BYTE8(v778) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    BYTE8(v778) = 0;
    CRRegister.init(wrappedValue:)();
    v231 = v227[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v748 = v231;
    CRAttributedString.init(_:)();
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v233 = v751;
    (*(*(v232 - 8) + 56))(v751, 1, 1, v232);
    outlined init with copy of Date?(v233, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v233, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v234 = v227[15];
    *&v778 = 0;
    v235 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v751 = v234;
    v750 = v235;
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v236 = type metadata accessor for StrokeStyle(0);
    v237 = v754;
    (*(*(v236 - 8) + 56))(v754, 1, 1, v236);
    outlined init with copy of Date?(v237, v752, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v237, &_s8PaperKit11StrokeStyleOSgMd);
    v238 = type metadata accessor for Shadow();
    v239 = v757;
    (*(*(v238 - 8) + 56))(v757, 1, 1, v238);
    outlined init with copy of Date?(v239, v755, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v239, &_s8PaperKit6ShadowVSgMd);
    v779 = 0u;
    v780 = 0u;
    v778 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v778 = 0u;
    v779 = 0u;
    v240 = v759;
    CRRegister.init(_:)();
    (*(v761 + 40))(v226, v240, v760);
    _s8PaperKit0A6MarkupVWOcTm_0(v707, v230, v737);
    v241 = v762;
    CRRegister.init(_:)();
    (*(v764 + 40))(v226 + v736, v241, v763);
    *&v778 = 0x4014000000000000;
    v242 = v765;
    CRRegister.init(_:)();
    (*(v766 + 40))(v226 + v747, v242, v770);
    v243 = v773;
    outlined init with copy of Date?(v718, v773, &_s8PaperKit5ColorVSgMd);
    v244 = v767;
    CRRegister.init(_:)();
    v245 = v768;
    v246 = *(v769 + 40);
    v246(v226 + v739, v244, v768);
    outlined init with copy of Date?(v719, v243, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v247 = v245;
    v248 = v775;
    v246(v226 + v742, v244, v247);
    v249 = v776;
    v250 = v696;
    outlined init with copy of Date?(v727, v696, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v249 + 48))(v250, 1, v248) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v250, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v585 = v672;
      (*(v249 + 32))(v672, v250, v248);
      (*(v249 + 40))(v226 + v748, v585, v248);
    }

    v586 = v744;
    v587 = v743;
    *&v778 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v727, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v719, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v718, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v707, type metadata accessor for ShapeType);
    (*(v745 + 40))(&v751[v226], v587, v586);
    v588 = v226;
    v559 = v746;
    _s8PaperKit0A6MarkupVWObTm_0(v588, v746, type metadata accessor for Shape);
    *&v589 = 170.0;
LABEL_62:
    v560 = *&v589;
    v561 = v559;
    v562 = *&v589;
LABEL_65:
    specialized NewCanvasElementDelegate.addShape(_:size:)(v561, v560, v562);
    v566 = v559;
    return _s8PaperKit0A6MarkupVWOhTm_0(v566, type metadata accessor for Shape);
  }

  if (v746 == 8)
  {
    v412 = v208;
    v742 = v206;
    if (one-time initialization token for defaultLine != -1)
    {
      swift_once();
    }

    v413 = *algn_1EC7C40D0;
    v414 = v711;
    *v711 = static UIConstants.defaultLine;
    v414[1] = v413;
    v414[2] = xmmword_1EC7C40E0;
    swift_storeEnumTagMultiPayload();
    v415 = type metadata accessor for Color(0);
    v416 = *(v415 - 8);
    v417 = *(v416 + 56);
    v418 = v416 + 56;
    v417(v724, 1, 1, v415);
    v417(v725, 1, 1, v415);
    v735 = v418;
    v736 = v417;
    (*(v776 + 56))(v730, 1, 1, v775);
    type metadata accessor for CGRect(0);
    v740 = v419;
    v739 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v778 = 0u;
    v779 = 0u;
    CRRegister.init(wrappedValue:)();
    v420 = v772;
    *&v778 = 0;
    v746 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v741 = v420[6];
    v421 = v773;
    v417(v773, 1, 1, v415);
    v422 = v747;
    outlined init with copy of Date?(v421, v747, &_s8PaperKit5ColorVSgMd);
    v737 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v421, &_s8PaperKit5ColorVSgMd);
    v738 = v420[7];
    (v736)(v421, 1, 1, v415);
    outlined init with copy of Date?(v421, v422, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v421, &_s8PaperKit5ColorVSgMd);
    v747 = v420[8];
    *&v778 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v423 = v420[9];
    v424 = v758;
    swift_storeEnumTagMultiPayload();
    v736 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v424, v748, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v424, type metadata accessor for ShapeType);
    *&v778 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    BYTE8(v778) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    BYTE8(v778) = 0;
    CRRegister.init(wrappedValue:)();
    v425 = v420[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v748 = v425;
    CRAttributedString.init(_:)();
    v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v427 = v751;
    (*(*(v426 - 8) + 56))(v751, 1, 1, v426);
    outlined init with copy of Date?(v427, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v427, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v428 = v420[15];
    *&v778 = 0;
    v429 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v751 = v428;
    v750 = v429;
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v430 = type metadata accessor for StrokeStyle(0);
    v431 = v754;
    (*(*(v430 - 8) + 56))(v754, 1, 1, v430);
    outlined init with copy of Date?(v431, v752, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v431, &_s8PaperKit11StrokeStyleOSgMd);
    v432 = type metadata accessor for Shadow();
    v433 = v757;
    (*(*(v432 - 8) + 56))(v757, 1, 1, v432);
    outlined init with copy of Date?(v433, v755, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v433, &_s8PaperKit6ShadowVSgMd);
    v779 = 0u;
    v780 = 0u;
    v778 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v778 = 0u;
    v779 = 0u;
    v434 = v759;
    CRRegister.init(_:)();
    (*(v761 + 40))(v412, v434, v760);
    _s8PaperKit0A6MarkupVWOcTm_0(v711, v424, v736);
    v435 = v762;
    CRRegister.init(_:)();
    (*(v764 + 40))(v412 + v423, v435, v763);
    *&v778 = 0x4014000000000000;
    v436 = v765;
    CRRegister.init(_:)();
    (*(v766 + 40))(v412 + v747, v436, v770);
    v437 = v773;
    outlined init with copy of Date?(v724, v773, &_s8PaperKit5ColorVSgMd);
    v438 = v767;
    CRRegister.init(_:)();
    v439 = v768;
    v440 = *(v769 + 40);
    v440(v412 + v738, v438, v768);
    outlined init with copy of Date?(v725, v437, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v441 = v438;
    v442 = v776;
    v440(v412 + v741, v441, v439);
    v443 = v775;
    v444 = v699;
    outlined init with copy of Date?(v730, v699, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v442 + 48))(v444, 1, v443) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v444, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v563 = v677;
      (*(v442 + 32))(v677, v444, v443);
      (*(v442 + 40))(v412 + v748, v563, v443);
    }

    v564 = v743;
    *&v778 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v730, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v725, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v724, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v711, type metadata accessor for ShapeType);
    (*(v745 + 40))(&v751[v412], v564, v744);
    v565 = v742;
    _s8PaperKit0A6MarkupVWObTm_0(v412, v742, type metadata accessor for Shape);
    *&v778 = 1;
    BYTE8(v778) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    CRRegister.wrappedValue.setter();
    specialized NewCanvasElementDelegate.addLine(_:size:)(v565, 150.0, 150.0);
    v566 = v565;
    return _s8PaperKit0A6MarkupVWOhTm_0(v566, type metadata accessor for Shape);
  }

  if (v746 == 9)
  {
    v746 = v207;
    *v708 = xmmword_1D405A650;
    v294 = v210;
    swift_storeEnumTagMultiPayload();
    v295 = type metadata accessor for Color(0);
    v296 = *(v295 - 8);
    v297 = *(v296 + 56);
    v298 = (v296 + 56);
    v297(v722, 1, 1, v295);
    v297(v723, 1, 1, v295);
    v736 = v298;
    v737 = v297;
    (*(v776 + 56))(v729, 1, 1, v775);
    type metadata accessor for CGRect(0);
    v741 = v299;
    v740 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v778 = 0u;
    v779 = 0u;
    CRRegister.init(wrappedValue:)();
    v300 = v772;
    *&v778 = 0;
    v735 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v742 = v300[6];
    v301 = v773;
    v297(v773, 1, 1, v295);
    v302 = v747;
    outlined init with copy of Date?(v301, v747, &_s8PaperKit5ColorVSgMd);
    v738 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v301, &_s8PaperKit5ColorVSgMd);
    v739 = v300[7];
    (v737)(v301, 1, 1, v295);
    outlined init with copy of Date?(v301, v302, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v301, &_s8PaperKit5ColorVSgMd);
    v747 = v300[8];
    *&v778 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v736 = v300[9];
    v303 = v758;
    swift_storeEnumTagMultiPayload();
    v737 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v303, v748, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v303, type metadata accessor for ShapeType);
    *&v778 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    BYTE8(v778) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    BYTE8(v778) = 0;
    CRRegister.init(wrappedValue:)();
    v304 = v300[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v748 = v304;
    CRAttributedString.init(_:)();
    v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v306 = v751;
    (*(*(v305 - 8) + 56))(v751, 1, 1, v305);
    outlined init with copy of Date?(v306, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v306, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v307 = v300[15];
    *&v778 = 0;
    v308 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v751 = v307;
    v750 = v308;
    CRRegister.init(wrappedValue:)();
    *&v778 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v309 = type metadata accessor for StrokeStyle(0);
    v310 = v754;
    (*(*(v309 - 8) + 56))(v754, 1, 1, v309);
    outlined init with copy of Date?(v310, v752, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v310, &_s8PaperKit11StrokeStyleOSgMd);
    v311 = type metadata accessor for Shadow();
    v312 = v757;
    (*(*(v311 - 8) + 56))(v757, 1, 1, v311);
    outlined init with copy of Date?(v312, v755, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v312, &_s8PaperKit6ShadowVSgMd);
    v779 = 0u;
    v780 = 0u;
    v778 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v778 = 0u;
    v779 = 0u;
    v313 = v759;
    CRRegister.init(_:)();
    (*(v761 + 40))(v294, v313, v760);
    _s8PaperKit0A6MarkupVWOcTm_0(v708, v303, v737);
    v314 = v762;
    CRRegister.init(_:)();
    v315 = v776;
    (*(v764 + 40))(v294 + v736, v314, v763);
    *&v778 = 0x4014000000000000;
    v316 = v765;
    CRRegister.init(_:)();
    (*(v766 + 40))(v294 + v747, v316, v770);
    v317 = v773;
    outlined init with copy of Date?(v722, v773, &_s8PaperKit5ColorVSgMd);
    v318 = v767;
    CRRegister.init(_:)();
    v319 = v768;
    v320 = *(v769 + 40);
    v320(v294 + v739, v318, v768);
    outlined init with copy of Date?(v723, v317, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v320(v294 + v742, v318, v319);
    v321 = v775;
    v322 = v698;
    outlined init with copy of Date?(v729, v698, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v315 + 48))(v322, 1, v321) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v322, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v590 = v675;
      (*(v315 + 32))(v675, v322, v321);
      (*(v315 + 40))(v294 + v748, v590, v321);
    }

    v591 = v745;
    v592 = v743;
    *&v778 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v729, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v723, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v722, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v708, type metadata accessor for ShapeType);
    (*(v591 + 40))(&v751[v294], v592, v744);
    v579 = v294;
LABEL_61:
    v559 = v746;
    _s8PaperKit0A6MarkupVWObTm_0(v579, v746, type metadata accessor for Shape);
    *&v589 = 150.0;
    goto LABEL_62;
  }

  v537 = v216;
  v741 = v215;
  v746 = v214;
  v538 = v771 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  v539 = 0.0;
  v540 = -0.5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v541 = *(v538 + 8);
    v542 = swift_getObjectType();
    v543 = (*(v541 + 16))(v542, v541);
    v544 = swift_unknownObjectRelease();
    v545 = -0.5;
    if (v543)
    {
      v546 = (*((*MEMORY[0x1E69E7D40] & *v543) + 0x990))(v544, 1.0, 1.0);
      v548 = v547;
      v539 = v549;

      v540 = v546 + -0.5;
      v545 = v548 + -0.5;
    }
  }

  else
  {
    v545 = -0.5;
  }

  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v781._object = 0x80000001D4083BC0;
  v598.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v598.value._object = 0xEB00000000656C62;
  v599._countAndFlagsBits = 1954047316;
  v599._object = 0xE400000000000000;
  v600._countAndFlagsBits = 0;
  v600._object = 0xE000000000000000;
  v781._countAndFlagsBits = 0xD000000000000024;
  v601 = NSLocalizedString(_:tableName:bundle:value:comment:)(v599, v598, paperKitBundle, v600, v781);
  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  CanvasElementController.fontScaleForNewCanvasElement.getter();
  v602 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v603 = MEMORY[0x1DA6CCED0](v601._countAndFlagsBits, v601._object);

  type metadata accessor for NSAttributedStringKey(0);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v602 initWithString:v603 attributes:isa];

  MEMORY[0x1EEE9AC00](v605);
  v606 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v607 = type metadata accessor for Color(0);
  v608 = *(v607 + 20);
  v609 = type metadata accessor for UnknownValueProperties();
  (*(*(v609 - 8) + 56))(v731 + v608, 1, 1, v609);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!result)
  {
    __break(1u);
    goto LABEL_88;
  }

  v610 = result;
  v739 = v606;
  v740 = v538;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_88:
    __break(1u);
    return result;
  }

  v611 = result;

  *v731 = v611;
  v612 = *(v607 - 8);
  v613 = *(v612 + 56);
  v614 = (v612 + 56);
  v613();
  (v613)(v702, 1, 1, v607);
  v733 = v614;
  v615 = v775;
  v616 = v776;
  v617 = v703;
  (*(v776 + 16))(v703, v705, v775);
  (*(v616 + 56))(v617, 0, 1, v615);
  type metadata accessor for CGRect(0);
  v732 = v607;
  v737 = v618;
  v736 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  v778 = 0u;
  v779 = 0u;
  CRRegister.init(wrappedValue:)();
  v619 = v772;
  *&v778 = 0;
  v742 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v738 = v619[6];
  v620 = v773;
  (v613)(v773, 1, 1, v607);
  v621 = v747;
  outlined init with copy of Date?(v620, v747, &_s8PaperKit5ColorVSgMd);
  v734 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v620, &_s8PaperKit5ColorVSgMd);
  v735 = v619[7];
  (v613)(v620, 1, 1, v732);
  outlined init with copy of Date?(v620, v621, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v620, &_s8PaperKit5ColorVSgMd);
  v747 = v619[8];
  *&v778 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v732 = v619[9];
  v622 = v758;
  swift_storeEnumTagMultiPayload();
  v733 = type metadata accessor for ShapeType;
  _s8PaperKit0A6MarkupVWOcTm_0(v622, v748, type metadata accessor for ShapeType);
  v730 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit0A6MarkupVWOhTm_0(v622, type metadata accessor for ShapeType);
  *&v778 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v778 = 0;
  BYTE8(v778) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v778 = 0;
  BYTE8(v778) = 0;
  CRRegister.init(wrappedValue:)();
  v748 = v619[13];
  CRAttributedString.init(_:)();
  v623 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v624 = v751;
  (*(*(v623 - 8) + 56))(v751, 1, 1, v623);
  outlined init with copy of Date?(v624, v749, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v624, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v625 = v619[15];
  *&v778 = 0;
  v626 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v751 = v625;
  v750 = v626;
  CRRegister.init(wrappedValue:)();
  *&v778 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v627 = type metadata accessor for StrokeStyle(0);
  v628 = v754;
  (*(*(v627 - 8) + 56))(v754, 1, 1, v627);
  outlined init with copy of Date?(v628, v752, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v628, &_s8PaperKit11StrokeStyleOSgMd);
  v629 = type metadata accessor for Shadow();
  v630 = v757;
  (*(*(v629 - 8) + 56))(v757, 1, 1, v629);
  outlined init with copy of Date?(v630, v755, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v630, &_s8PaperKit6ShadowVSgMd);
  v779 = 0u;
  v780 = 0u;
  v778 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v778 = v540;
  *(&v778 + 1) = v545;
  __asm { FMOV            V0.2D, #1.0 }

  v779 = _Q0;
  v636 = v759;
  CRRegister.init(_:)();
  (*(v761 + 40))(v537, v636, v760);
  _s8PaperKit0A6MarkupVWOcTm_0(v704, v622, v733);
  v637 = v762;
  CRRegister.init(_:)();
  (*(v764 + 40))(v537 + v732, v637, v763);
  *&v778 = 0x4014000000000000;
  v638 = v765;
  CRRegister.init(_:)();
  (*(v766 + 40))(v537 + v747, v638, v770);
  v639 = v773;
  outlined init with copy of Date?(v731, v773, &_s8PaperKit5ColorVSgMd);
  v640 = v767;
  CRRegister.init(_:)();
  v641 = v768;
  v642 = *(v769 + 40);
  v642(v537 + v735, v640, v768);
  v643 = v776;
  outlined init with copy of Date?(v702, v639, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v642(v537 + v738, v640, v641);
  v644 = v775;
  v645 = v679;
  outlined init with copy of Date?(v703, v679, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v643 + 48))(v645, 1, v644) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v645, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v646 = v678;
    (*(v643 + 32))(v678, v645, v644);
    (*(v643 + 40))(v537 + v748, v646, v644);
  }

  v647 = v745;
  v648 = v744;
  v649 = v743;
  v650 = v686;
  *&v778 = 3;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v703, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v702, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v731, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit0A6MarkupVWOhTm_0(v704, type metadata accessor for ShapeType);
  (*(v647 + 40))(&v751[v537], v649, v648);
  v651 = v746;
  _s8PaperKit0A6MarkupVWObTm_0(v537, v746, type metadata accessor for Shape);
  *&v778 = 0;
  CRRegister.wrappedValue.setter();
  CRRegister.value.getter();
  if (vabdd_f64(*&v778, v539) > 0.01)
  {
    *&v778 = v539;
    CRRegister.value.setter();
  }

  _s8PaperKit0A6MarkupVWOcTm_0(v651, v741, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape);
  Capsule.init(_:id:)();
  v652 = v684;
  v653 = v682;
  v654 = v685;
  (*(v684 + 16))(v682, v650, v685);
  v655 = (*(v652 + 80) + 16) & ~*(v652 + 80);
  v656 = (v680 + v655 + 7) & 0xFFFFFFFFFFFFFFF8;
  v657 = swift_allocObject();
  (*(v652 + 32))(v657 + v655, v653, v654);
  *(v657 + v656) = ObjectType;
  CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(partial apply for specialized closure #1 in CanvasElementController.addCanvasElement<A>(_:), v657);

  v658 = v740;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v659 = *(v658 + 8);
    v660 = swift_getObjectType();
    v661 = (*(v659 + 16))(v660, v659);
    v662 = swift_unknownObjectRelease();
    if (v661)
    {
      v663 = MEMORY[0x1E69E7D40];
      v664 = (*((*MEMORY[0x1E69E7D40] & *v661) + 0xA40))(v662);

      if (v664)
      {
        v665 = (*((*v663 & *v664) + 0x318))();

        if (v665)
        {
          *(*&v665[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics] + 17) = 12;

          FormTextFieldAnalytics.recordEvent()();
        }
      }
    }
  }

  (*(v652 + 8))(v650, v654);
  _s8PaperKit0A6MarkupVWOhTm_0(v746, type metadata accessor for Shape);
  return (*(v776 + 8))(v705, v775);
}

{
  return specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(a1, closure #1 in CRAttributedString<>.init(nsAttributedString:scale:)partial apply, &unk_1F4F51480);
}

{
  return specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(a1, closure #1 in CRAttributedString<>.init(nsAttributedString:scale:)partial apply, &unk_1F4F514C0);
}

{
  LODWORD(v728) = a1;
  v1 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v665 = &v650 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v667 = *(v668 - 8);
  MEMORY[0x1EEE9AC00](v668);
  v666 = &v650 - v3;
  v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v727 = *(v726 - 8);
  MEMORY[0x1EEE9AC00](v726);
  v725 = &v650 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v6 = *(v5 - 8);
  v757 = v5;
  v758 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v663 = &v650 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v687 = &v650 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v660 = &v650 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v662 = &v650 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v661 = &v650 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v657 = &v650 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v656 = &v650 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v659 = &v650 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v658 = &v650 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v655 = &v650 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v654 = &v650 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v653 = &v650 - v29;
  v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v751 = *(v750 - 8);
  MEMORY[0x1EEE9AC00](v750);
  v749 = &v650 - v30;
  v752 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v748 = *(v752 - 8);
  MEMORY[0x1EEE9AC00](v752);
  v747 = &v650 - v31;
  v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v746 = *(v745 - 8);
  MEMORY[0x1EEE9AC00](v745);
  v744 = &v650 - v32;
  v742 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v743 = *(v742 - 8);
  MEMORY[0x1EEE9AC00](v742);
  v741 = &v650 - v33;
  v738 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v738);
  v737 = &v650 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v739 = &v650 - v36;
  v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v735);
  v734 = &v650 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v736 = &v650 - v39;
  v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v732);
  v731 = &v650 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v733 = &v650 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v664 = &v650 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v685 = &v650 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v680 = &v650 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v711 = &v650 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v681 = &v650 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v712 = &v650 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v679 = &v650 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v710 = &v650 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v678 = &v650 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v709 = &v650 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v676 = &v650 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v708 = &v650 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v677 = &v650 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v682 = &v650 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v675 = &v650 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v683 = &v650 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v674 = &v650 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v716 = (&v650 - v78);
  MEMORY[0x1EEE9AC00](v79);
  v673 = &v650 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v715 = &v650 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v672 = &v650 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v714 = &v650 - v86;
  v756 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v756);
  v684 = &v650 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v713 = (&v650 - v89);
  MEMORY[0x1EEE9AC00](v90);
  v705 = &v650 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v704 = &v650 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v707 = &v650 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v706 = &v650 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v703 = &v650 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v702 = &v650 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v701 = &v650 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v700 = &v650 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v698 = &v650 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v697 = &v650 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v720 = &v650 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v699 = &v650 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v690 = &v650 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v696 = &v650 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v719 = &v650 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v695 = &v650 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v718 = &v650 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v722 = &v650 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v729 = &v650 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v755 = &v650 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v717 = &v650 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v693 = &v650 - v133;
  v759 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v759);
  v686 = &v650 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v135);
  v691 = (&v650 - v136);
  MEMORY[0x1EEE9AC00](v137);
  v694 = (&v650 - v138);
  MEMORY[0x1EEE9AC00](v139);
  v692 = (&v650 - v140);
  MEMORY[0x1EEE9AC00](v141);
  v689 = (&v650 - v142);
  MEMORY[0x1EEE9AC00](v143);
  v688 = (&v650 - v144);
  MEMORY[0x1EEE9AC00](v145);
  v723 = &v650 - v146;
  MEMORY[0x1EEE9AC00](v147);
  v724 = &v650 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v721 = &v650 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v650 - v152;
  MEMORY[0x1EEE9AC00](v154);
  v730 = &v650 - v155;
  MEMORY[0x1EEE9AC00](v156);
  v740 = &v650 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v650 - v159;
  v753 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v753);
  MEMORY[0x1EEE9AC00](v161);
  MEMORY[0x1EEE9AC00](v162);
  MEMORY[0x1EEE9AC00](v163);
  MEMORY[0x1EEE9AC00](v164);
  MEMORY[0x1EEE9AC00](v165);
  MEMORY[0x1EEE9AC00](v166);
  MEMORY[0x1EEE9AC00](&v650 - v167);
  MEMORY[0x1EEE9AC00](v168);
  MEMORY[0x1EEE9AC00](v169);
  v671 = &v650 - v170;
  MEMORY[0x1EEE9AC00](v171);
  MEMORY[0x1EEE9AC00](v172);
  v669 = &v650 - v173;
  MEMORY[0x1EEE9AC00](v174);
  v670 = &v650 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v178 = &v650 - v177;
  MEMORY[0x1EEE9AC00](v179);
  MEMORY[0x1EEE9AC00](v180);
  v182 = &v650 - v181;
  MEMORY[0x1EEE9AC00](v183);
  v185 = &v650 - v184;
  MEMORY[0x1EEE9AC00](v186);
  v188 = &v650 - v187;
  MEMORY[0x1EEE9AC00](v189);
  v191 = &v650 - v190;
  MEMORY[0x1EEE9AC00](v192);
  v194 = &v650 - v193;
  MEMORY[0x1EEE9AC00](v195);
  v197 = &v650 - v196;
  MEMORY[0x1EEE9AC00](v198);
  v200 = &v650 - v199;
  MEMORY[0x1EEE9AC00](v201);
  v214 = &v650 - v213;
  v215 = v728;
  if (v728 <= 4u)
  {
    v707 = v200;
    v708 = v194;
    v709 = v197;
    v710 = v188;
    v711 = v191;
    v712 = v182;
    v713 = v185;
    v728 = v178;
    v245 = v160;
    v246 = v153;
    v247 = v724;
    v248 = v723;
    v249 = v717;
    v250 = v722;
    v251 = v718;
    v252 = v719;
    v253 = v720;
    v254 = v714;
    v255 = v715;
    v256 = v716;
    if (v215 > 1)
    {
      if (v215 == 2)
      {
        *v721 = 3;
        swift_storeEnumTagMultiPayload();
        v347 = type metadata accessor for Color(0);
        v348 = *(v347 - 8);
        v349 = *(v348 + 56);
        v350 = v348 + 56;
        v349(v695, 1, 1, v347);
        v349(v252, 1, 1, v347);
        v717 = v350;
        v718 = v349;
        (*(v758 + 56))(v256, 1, 1, v757);
        type metadata accessor for CGRect(0);
        v724 = v351;
        v723 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v760 = 0u;
        v761 = 0u;
        v352 = v710;
        CRRegister.init(wrappedValue:)();
        v353 = v753;
        *&v760 = 0;
        v714 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v728 = v353[6];
        v354 = v755;
        v349(v755, 1, 1, v347);
        v355 = v729;
        outlined init with copy of Date?(v354, v729, &_s8PaperKit5ColorVSgMd);
        v720 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v354, &_s8PaperKit5ColorVSgMd);
        v722 = v353[7];
        (v718)(v354, 1, 1, v347);
        outlined init with copy of Date?(v354, v355, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v354, &_s8PaperKit5ColorVSgMd);
        v729 = v353[8];
        *&v760 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v717 = v353[9];
        v356 = v740;
        swift_storeEnumTagMultiPayload();
        v718 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v356, v730, type metadata accessor for ShapeType);
        v715 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v356, type metadata accessor for ShapeType);
        *&v760 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        BYTE8(v760) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        BYTE8(v760) = 0;
        CRRegister.init(wrappedValue:)();
        v357 = v353[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v730 = v357;
        CRAttributedString.init(_:)();
        v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v359 = v733;
        (*(*(v358 - 8) + 56))(v733, 1, 1, v358);
        outlined init with copy of Date?(v359, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v359, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v360 = v353[15];
        *&v760 = 0;
        v361 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v733 = v360;
        v732 = v361;
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v362 = type metadata accessor for StrokeStyle(0);
        v363 = v736;
        (*(*(v362 - 8) + 56))(v736, 1, 1, v362);
        outlined init with copy of Date?(v363, v734, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v363, &_s8PaperKit11StrokeStyleOSgMd);
        v364 = type metadata accessor for Shadow();
        v365 = v739;
        (*(*(v364 - 8) + 56))(v739, 1, 1, v364);
        outlined init with copy of Date?(v365, v737, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v365, &_s8PaperKit6ShadowVSgMd);
        v761 = 0u;
        v762 = 0u;
        v760 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v760 = 0u;
        v761 = 0u;
        v366 = v741;
        CRRegister.init(_:)();
        (*(v743 + 40))(v352, v366, v742);
        _s8PaperKit0A6MarkupVWOcTm_0(v721, v356, v718);
        v367 = v744;
        CRRegister.init(_:)();
        (*(v746 + 40))(v352 + v717, v367, v745);
        *&v760 = 0x4014000000000000;
        v368 = v747;
        CRRegister.init(_:)();
        (*(v748 + 40))(v352 + v729, v368, v752);
        v369 = v755;
        outlined init with copy of Date?(v695, v755, &_s8PaperKit5ColorVSgMd);
        v370 = v749;
        CRRegister.init(_:)();
        v371 = *(v751 + 40);
        v372 = v750;
        v371(v352 + v722, v370, v750);
        v373 = v757;
        outlined init with copy of Date?(v719, v369, &_s8PaperKit5ColorVSgMd);
        v374 = v716;
        CRRegister.init(_:)();
        v371(v352 + v728, v370, v372);
        v375 = v758;
        v376 = v674;
        outlined init with copy of Date?(v374, v674, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v375 + 48))(v376, 1, v373) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v376, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v589 = v655;
          (*(v375 + 32))(v655, v376, v373);
          (*(v375 + 40))(v352 + v730, v589, v373);
        }

        v590 = v727;
        v591 = v726;
        v592 = v725;
        v593 = v711;
        *&v760 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v374, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v719, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v695, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v721, type metadata accessor for ShapeType);
        (*(v590 + 40))(&v733[v352], v592, v591);
        _s8PaperKit0A6MarkupVWObTm_0(v352, v593, type metadata accessor for Shape);
        specialized NewCanvasElementDelegate.addShape(_:size:)(v593, 170.0, 170.0);
        v594 = v593;
        return _s8PaperKit0A6MarkupVWOhTm_0(v594, type metadata accessor for Shape);
      }

      if (v215 == 3)
      {
        if (one-time initialization token for defaultLine != -1)
        {
          swift_once();
        }

        v257 = *algn_1EC7C40D0;
        *v247 = static UIConstants.defaultLine;
        v247[1] = v257;
        v247[2] = xmmword_1EC7C40E0;
        swift_storeEnumTagMultiPayload();
        v258 = type metadata accessor for Color(0);
        v259 = *(v258 - 8);
        v260 = *(v259 + 56);
        v261 = (v259 + 56);
        v260(v696, 1, 1, v258);
        v260(v690, 1, 1, v258);
        v718 = v261;
        v719 = v260;
        (*(v758 + 56))(v683, 1, 1, v757);
        type metadata accessor for CGRect(0);
        v723 = v262;
        v722 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v760 = 0u;
        v761 = 0u;
        v263 = v712;
        CRRegister.init(wrappedValue:)();
        v264 = v753;
        *&v760 = 0;
        v717 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v728 = v264[6];
        v265 = v755;
        v260(v755, 1, 1, v258);
        v266 = v729;
        outlined init with copy of Date?(v265, v729, &_s8PaperKit5ColorVSgMd);
        v720 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v265, &_s8PaperKit5ColorVSgMd);
        v721 = v264[7];
        (v719)(v265, 1, 1, v258);
        outlined init with copy of Date?(v265, v266, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v265, &_s8PaperKit5ColorVSgMd);
        v729 = v264[8];
        *&v760 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v718 = v264[9];
        v267 = v740;
        swift_storeEnumTagMultiPayload();
        v719 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v267, v730, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v267, type metadata accessor for ShapeType);
        *&v760 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        BYTE8(v760) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        BYTE8(v760) = 0;
        CRRegister.init(wrappedValue:)();
        v268 = v264[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v730 = v268;
        CRAttributedString.init(_:)();
        v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v270 = v733;
        (*(*(v269 - 8) + 56))(v733, 1, 1, v269);
        outlined init with copy of Date?(v270, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v270, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v271 = v264[15];
        *&v760 = 0;
        v272 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v733 = v271;
        v732 = v272;
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v273 = type metadata accessor for StrokeStyle(0);
        v274 = v736;
        (*(*(v273 - 8) + 56))(v736, 1, 1, v273);
        outlined init with copy of Date?(v274, v734, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v274, &_s8PaperKit11StrokeStyleOSgMd);
        v275 = type metadata accessor for Shadow();
        v276 = v739;
        (*(*(v275 - 8) + 56))(v739, 1, 1, v275);
        outlined init with copy of Date?(v276, v737, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v276, &_s8PaperKit6ShadowVSgMd);
        v761 = 0u;
        v762 = 0u;
        v760 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v760 = 0u;
        v761 = 0u;
        v277 = v741;
        CRRegister.init(_:)();
        (*(v743 + 40))(v263, v277, v742);
        _s8PaperKit0A6MarkupVWOcTm_0(v724, v267, v719);
        v278 = v744;
        CRRegister.init(_:)();
        (*(v746 + 40))(v263 + v718, v278, v745);
        *&v760 = 0x4014000000000000;
        v279 = v747;
        CRRegister.init(_:)();
        (*(v748 + 40))(v263 + v729, v279, v752);
        v280 = v755;
        outlined init with copy of Date?(v696, v755, &_s8PaperKit5ColorVSgMd);
        v281 = v749;
        CRRegister.init(_:)();
        v282 = *(v751 + 40);
        v283 = v750;
        v282(v263 + v721, v281, v750);
        v284 = v757;
        outlined init with copy of Date?(v690, v280, &_s8PaperKit5ColorVSgMd);
        v285 = v683;
        CRRegister.init(_:)();
        v282(v263 + v728, v281, v283);
        v286 = v758;
        v287 = v675;
        outlined init with copy of Date?(v285, v675, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v286 + 48))(v287, 1, v284) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v287, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v605 = v658;
          (*(v286 + 32))(v658, v287, v284);
          (*(v286 + 40))(v263 + v730, v605, v284);
        }

        v606 = v727;
        v607 = v726;
        v608 = v725;
        v609 = v713;
        *&v760 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v285, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v690, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v696, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v724, type metadata accessor for ShapeType);
        (*(v606 + 40))(&v733[v263], v608, v607);
        _s8PaperKit0A6MarkupVWObTm_0(v263, v609, type metadata accessor for Shape);
        specialized NewCanvasElementDelegate.addShape(_:size:)(v609, 150.0, 150.0);
        v594 = v609;
        return _s8PaperKit0A6MarkupVWOhTm_0(v594, type metadata accessor for Shape);
      }

      v724 = v209;
      if (one-time initialization token for defaultCalloutBubble != -1)
      {
        swift_once();
      }

      v439 = qword_1EC7C4110;
      *v248 = static UIConstants.defaultCalloutBubble;
      *(v248 + 16) = v439;
      swift_storeEnumTagMultiPayload();
      v440 = type metadata accessor for Color(0);
      v441 = *(v440 - 8);
      v442 = *(v441 + 56);
      v443 = v441 + 56;
      v442(v699, 1, 1, v440);
      v442(v253, 1, 1, v440);
      v715 = v443;
      v716 = v442;
      (*(v758 + 56))(v682, 1, 1, v757);
      type metadata accessor for CGRect(0);
      v721 = v444;
      v719 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v760 = 0u;
      v761 = 0u;
      v445 = v728;
      CRRegister.init(wrappedValue:)();
      v446 = v753;
      *&v760 = 0;
      v714 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v722 = v446[6];
      v447 = v755;
      v442(v755, 1, 1, v440);
      v448 = v729;
      outlined init with copy of Date?(v447, v729, &_s8PaperKit5ColorVSgMd);
      v717 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v447, &_s8PaperKit5ColorVSgMd);
      v718 = v446[7];
      (v716)(v447, 1, 1, v440);
      outlined init with copy of Date?(v447, v448, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v447, &_s8PaperKit5ColorVSgMd);
      v729 = v446[8];
      *&v760 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v715 = v446[9];
      v449 = v740;
      swift_storeEnumTagMultiPayload();
      v716 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v449, v730, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v449, type metadata accessor for ShapeType);
      *&v760 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      BYTE8(v760) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      BYTE8(v760) = 0;
      CRRegister.init(wrappedValue:)();
      v450 = v446[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v730 = v450;
      CRAttributedString.init(_:)();
      v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v452 = v733;
      (*(*(v451 - 8) + 56))(v733, 1, 1, v451);
      outlined init with copy of Date?(v452, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v452, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v453 = v446[15];
      *&v760 = 0;
      v454 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v733 = v453;
      v732 = v454;
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v455 = type metadata accessor for StrokeStyle(0);
      v456 = v736;
      (*(*(v455 - 8) + 56))(v736, 1, 1, v455);
      outlined init with copy of Date?(v456, v734, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v456, &_s8PaperKit11StrokeStyleOSgMd);
      v457 = type metadata accessor for Shadow();
      v458 = v739;
      (*(*(v457 - 8) + 56))(v739, 1, 1, v457);
      outlined init with copy of Date?(v458, v737, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v458, &_s8PaperKit6ShadowVSgMd);
      v761 = 0u;
      v762 = 0u;
      v760 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v760 = 0u;
      v761 = 0u;
      v459 = v741;
      CRRegister.init(_:)();
      (*(v743 + 40))(v445, v459, v742);
      _s8PaperKit0A6MarkupVWOcTm_0(v723, v449, v716);
      v460 = v744;
      CRRegister.init(_:)();
      (*(v746 + 40))(v445 + v715, v460, v745);
      *&v760 = 0x4014000000000000;
      v461 = v747;
      CRRegister.init(_:)();
      (*(v748 + 40))(v445 + v729, v461, v752);
      v462 = v755;
      outlined init with copy of Date?(v699, v755, &_s8PaperKit5ColorVSgMd);
      v463 = v749;
      CRRegister.init(_:)();
      v464 = *(v751 + 40);
      v465 = v750;
      v464(v445 + v718, v463, v750);
      v466 = v757;
      outlined init with copy of Date?(v720, v462, &_s8PaperKit5ColorVSgMd);
      v467 = v682;
      CRRegister.init(_:)();
      v464(v445 + v722, v463, v465);
      v468 = v758;
      v469 = v677;
      outlined init with copy of Date?(v467, v677, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v468 + 48))(v469, 1, v466) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v469, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v610 = v659;
        (*(v468 + 32))(v659, v469, v466);
        (*(v468 + 40))(v445 + v730, v610, v466);
      }

      v611 = v727;
      v612 = v726;
      v613 = v725;
      *&v760 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v467, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v720, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v699, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v723, type metadata accessor for ShapeType);
      (*(v611 + 40))(&v733[v445], v613, v612);
      v614 = v724;
      _s8PaperKit0A6MarkupVWObTm_0(v445, v724, type metadata accessor for Shape);
      v615 = 165.0;
      v616 = 104.0;
      v617 = v614;
LABEL_74:
      specialized NewCanvasElementDelegate.addShape(_:size:)(v617, v615, v616);
      v594 = v614;
      return _s8PaperKit0A6MarkupVWOhTm_0(v594, type metadata accessor for Shape);
    }

    if (v215)
    {
      v651 = v246;
      swift_storeEnumTagMultiPayload();
      v470 = type metadata accessor for Color(0);
      v471 = *(v470 - 8);
      v472 = *(v471 + 56);
      v473 = v471 + 56;
      v472(v250, 1, 1, v470);
      v472(v251, 1, 1, v470);
      v717 = v473;
      v719 = v472;
      (*(v758 + 56))(v255, 1, 1, v757);
      type metadata accessor for CGRect(0);
      v724 = v474;
      v723 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v760 = 0u;
      v761 = 0u;
      v475 = v708;
      CRRegister.init(wrappedValue:)();
      v476 = v753;
      *&v760 = 0;
      v716 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v728 = v476[6];
      v477 = v755;
      v472(v755, 1, 1, v470);
      v478 = v729;
      outlined init with copy of Date?(v477, v729, &_s8PaperKit5ColorVSgMd);
      v720 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v477, &_s8PaperKit5ColorVSgMd);
      v721 = v476[7];
      (v719)(v477, 1, 1, v470);
      outlined init with copy of Date?(v477, v478, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v477, &_s8PaperKit5ColorVSgMd);
      v729 = v476[8];
      *&v760 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v717 = v476[9];
      v479 = v740;
      swift_storeEnumTagMultiPayload();
      v719 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v479, v730, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v479, type metadata accessor for ShapeType);
      *&v760 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      BYTE8(v760) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      BYTE8(v760) = 0;
      CRRegister.init(wrappedValue:)();
      v480 = v476[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v730 = v480;
      CRAttributedString.init(_:)();
      v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v482 = v733;
      (*(*(v481 - 8) + 56))(v733, 1, 1, v481);
      outlined init with copy of Date?(v482, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v482, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v483 = v476[15];
      *&v760 = 0;
      v484 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v733 = v483;
      v732 = v484;
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v485 = type metadata accessor for StrokeStyle(0);
      v486 = v736;
      (*(*(v485 - 8) + 56))(v736, 1, 1, v485);
      outlined init with copy of Date?(v486, v734, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v486, &_s8PaperKit11StrokeStyleOSgMd);
      v487 = type metadata accessor for Shadow();
      v488 = v739;
      (*(*(v487 - 8) + 56))(v739, 1, 1, v487);
      outlined init with copy of Date?(v488, v737, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v488, &_s8PaperKit6ShadowVSgMd);
      v761 = 0u;
      v762 = 0u;
      v760 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v760 = 0u;
      v761 = 0u;
      v489 = v741;
      CRRegister.init(_:)();
      (*(v743 + 40))(v475, v489, v742);
      _s8PaperKit0A6MarkupVWOcTm_0(v651, v479, v719);
      v490 = v744;
      CRRegister.init(_:)();
      (*(v746 + 40))(v475 + v717, v490, v745);
      *&v760 = 0x4014000000000000;
      v491 = v747;
      CRRegister.init(_:)();
      (*(v748 + 40))(v475 + v729, v491, v752);
      v492 = v755;
      outlined init with copy of Date?(v722, v755, &_s8PaperKit5ColorVSgMd);
      v493 = v749;
      CRRegister.init(_:)();
      v494 = *(v751 + 40);
      v495 = v750;
      v494(v475 + v721, v493, v750);
      outlined init with copy of Date?(v718, v492, &_s8PaperKit5ColorVSgMd);
      v496 = v715;
      CRRegister.init(_:)();
      v494(v475 + v728, v493, v495);
      v497 = v757;
      v498 = v673;
      outlined init with copy of Date?(v496, v673, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      v499 = v758;
      if ((*(v758 + 48))(v498, 1, v497) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v498, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v622 = v654;
        (*(v499 + 32))(v654, v498, v497);
        (*(v499 + 40))(v475 + v730, v622, v497);
      }

      v623 = v727;
      v624 = v726;
      v625 = v725;
      v626 = v475;
      v627 = v709;
      *&v760 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v496, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v718, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v722, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v651, type metadata accessor for ShapeType);
      (*(v623 + 40))(&v733[v626], v625, v624);
      _s8PaperKit0A6MarkupVWObTm_0(v626, v627, type metadata accessor for Shape);
      specialized NewCanvasElementDelegate.addShape(_:size:)(v627, 150.0, 150.0);
      v594 = v627;
      return _s8PaperKit0A6MarkupVWOhTm_0(v594, type metadata accessor for Shape);
    }

    v728 = v214;
    v652 = v245;
    swift_storeEnumTagMultiPayload();
    v317 = type metadata accessor for Color(0);
    v318 = *(v317 - 8);
    v319 = *(v318 + 56);
    v320 = (v318 + 56);
    v319(v693, 1, 1, v317);
    v319(v249, 1, 1, v317);
    v718 = v320;
    v719 = v319;
    (*(v758 + 56))(v254, 1, 1, v757);
    type metadata accessor for CGRect(0);
    v723 = v321;
    v722 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v760 = 0u;
    v761 = 0u;
    v322 = v707;
    CRRegister.init(wrappedValue:)();
    v323 = v753;
    *&v760 = 0;
    v716 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v724 = v323[6];
    v324 = v755;
    v319(v755, 1, 1, v317);
    v325 = v729;
    outlined init with copy of Date?(v324, v729, &_s8PaperKit5ColorVSgMd);
    v720 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v324, &_s8PaperKit5ColorVSgMd);
    v721 = v323[7];
    (v719)(v324, 1, 1, v317);
    outlined init with copy of Date?(v324, v325, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v324, &_s8PaperKit5ColorVSgMd);
    v729 = v323[8];
    *&v760 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v718 = v323[9];
    v326 = v740;
    swift_storeEnumTagMultiPayload();
    v719 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v326, v730, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v326, type metadata accessor for ShapeType);
    *&v760 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    BYTE8(v760) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    BYTE8(v760) = 0;
    CRRegister.init(wrappedValue:)();
    v327 = v323[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v730 = v327;
    CRAttributedString.init(_:)();
    v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v329 = v733;
    (*(*(v328 - 8) + 56))(v733, 1, 1, v328);
    outlined init with copy of Date?(v329, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v329, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v330 = v323[15];
    *&v760 = 0;
    v331 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v733 = v330;
    v732 = v331;
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v332 = type metadata accessor for StrokeStyle(0);
    v333 = v736;
    (*(*(v332 - 8) + 56))(v736, 1, 1, v332);
    outlined init with copy of Date?(v333, v734, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v333, &_s8PaperKit11StrokeStyleOSgMd);
    v334 = type metadata accessor for Shadow();
    v335 = v739;
    (*(*(v334 - 8) + 56))(v739, 1, 1, v334);
    outlined init with copy of Date?(v335, v737, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v335, &_s8PaperKit6ShadowVSgMd);
    v761 = 0u;
    v762 = 0u;
    v760 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v760 = 0u;
    v761 = 0u;
    v336 = v741;
    CRRegister.init(_:)();
    (*(v743 + 40))(v322, v336, v742);
    _s8PaperKit0A6MarkupVWOcTm_0(v652, v326, v719);
    v337 = v744;
    CRRegister.init(_:)();
    (*(v746 + 40))(v322 + v718, v337, v745);
    *&v760 = 0x4014000000000000;
    v338 = v747;
    CRRegister.init(_:)();
    (*(v748 + 40))(v322 + v729, v338, v752);
    v339 = v755;
    outlined init with copy of Date?(v693, v755, &_s8PaperKit5ColorVSgMd);
    v340 = v749;
    CRRegister.init(_:)();
    v341 = *(v751 + 40);
    v342 = v750;
    v341(v322 + v721, v340, v750);
    v343 = v757;
    outlined init with copy of Date?(v717, v339, &_s8PaperKit5ColorVSgMd);
    v344 = v714;
    CRRegister.init(_:)();
    v341(v322 + v724, v340, v342);
    v345 = v758;
    v346 = v672;
    outlined init with copy of Date?(v344, v672, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v345 + 48))(v346, 1, v343) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v346, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v618 = v653;
      (*(v345 + 32))(v653, v346, v343);
      (*(v345 + 40))(v322 + v730, v618, v343);
    }

    v619 = v727;
    v620 = v726;
    v621 = v725;
    *&v760 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v344, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v717, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v693, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v652, type metadata accessor for ShapeType);
    (*(v619 + 40))(&v733[v322], v621, v620);
    v598 = v322;
    goto LABEL_69;
  }

  if (v728 <= 7u)
  {
    if (v728 != 5)
    {
      if (v728 == 6)
      {
        v728 = v208;
        *v689 = 6;
        swift_storeEnumTagMultiPayload();
        v216 = type metadata accessor for Color(0);
        v217 = *(v216 - 8);
        v218 = *(v217 + 56);
        v219 = (v217 + 56);
        v218(v700, 1, 1, v216);
        v218(v701, 1, 1, v216);
        v718 = v219;
        v719 = v218;
        (*(v758 + 56))(v709, 1, 1, v757);
        type metadata accessor for CGRect(0);
        v723 = v220;
        v722 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v760 = 0u;
        v761 = 0u;
        v221 = v671;
        CRRegister.init(wrappedValue:)();
        v222 = v753;
        *&v760 = 0;
        v717 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v724 = v222[6];
        v223 = v755;
        v218(v755, 1, 1, v216);
        v224 = v729;
        outlined init with copy of Date?(v223, v729, &_s8PaperKit5ColorVSgMd);
        v720 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v223, &_s8PaperKit5ColorVSgMd);
        v721 = v222[7];
        (v719)(v223, 1, 1, v216);
        outlined init with copy of Date?(v223, v224, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v223, &_s8PaperKit5ColorVSgMd);
        v729 = v222[8];
        *&v760 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v718 = v222[9];
        v225 = v740;
        swift_storeEnumTagMultiPayload();
        v719 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v225, v730, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v225, type metadata accessor for ShapeType);
        *&v760 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        BYTE8(v760) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        BYTE8(v760) = 0;
        CRRegister.init(wrappedValue:)();
        v226 = v222[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v730 = v226;
        CRAttributedString.init(_:)();
        v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v228 = v733;
        (*(*(v227 - 8) + 56))(v733, 1, 1, v227);
        outlined init with copy of Date?(v228, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v228, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v229 = v222[15];
        *&v760 = 0;
        v230 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v733 = v229;
        v732 = v230;
        CRRegister.init(wrappedValue:)();
        *&v760 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v231 = type metadata accessor for StrokeStyle(0);
        v232 = v736;
        (*(*(v231 - 8) + 56))(v736, 1, 1, v231);
        outlined init with copy of Date?(v232, v734, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v232, &_s8PaperKit11StrokeStyleOSgMd);
        v233 = type metadata accessor for Shadow();
        v234 = v739;
        (*(*(v233 - 8) + 56))(v739, 1, 1, v233);
        outlined init with copy of Date?(v234, v737, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v234, &_s8PaperKit6ShadowVSgMd);
        v761 = 0u;
        v762 = 0u;
        v760 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v760 = 0u;
        v761 = 0u;
        v235 = v741;
        CRRegister.init(_:)();
        (*(v743 + 40))(v221, v235, v742);
        _s8PaperKit0A6MarkupVWOcTm_0(v689, v225, v719);
        v236 = v744;
        CRRegister.init(_:)();
        (*(v746 + 40))(v221 + v718, v236, v745);
        *&v760 = 0x4014000000000000;
        v237 = v747;
        CRRegister.init(_:)();
        (*(v748 + 40))(v221 + v729, v237, v752);
        v238 = v755;
        outlined init with copy of Date?(v700, v755, &_s8PaperKit5ColorVSgMd);
        v239 = v749;
        CRRegister.init(_:)();
        v240 = *(v751 + 40);
        v241 = v750;
        v240(v221 + v721, v239, v750);
        outlined init with copy of Date?(v701, v238, &_s8PaperKit5ColorVSgMd);
        v242 = v757;
        CRRegister.init(_:)();
        v240(v221 + v724, v239, v241);
        v243 = v758;
        v244 = v678;
        outlined init with copy of Date?(v709, v678, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v243 + 48))(v244, 1, v242) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v244, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v628 = v657;
          (*(v243 + 32))(v657, v244, v242);
          (*(v243 + 40))(v221 + v730, v628, v242);
        }

        v629 = v727;
        *&v760 = 0;
        v630 = v725;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v709, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v701, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v700, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v689, type metadata accessor for ShapeType);
        (*(v629 + 40))(&v733[v221], v630, v726);
        v614 = v728;
        _s8PaperKit0A6MarkupVWObTm_0(v221, v728, type metadata accessor for Shape);
        v615 = 170.0;
        v617 = v614;
        v616 = 170.0;
        goto LABEL_74;
      }

      v500 = v207;
      v728 = v205;
      if (one-time initialization token for defaultStar != -1)
      {
        swift_once();
      }

      v501 = qword_1EC7C40F8;
      v502 = v692;
      *v692 = static UIConstants.defaultStar;
      v502[1] = v501;
      swift_storeEnumTagMultiPayload();
      v503 = type metadata accessor for Color(0);
      v504 = *(v503 - 8);
      v505 = *(v504 + 56);
      v506 = (v504 + 56);
      v505(v702, 1, 1, v503);
      v505(v703, 1, 1, v503);
      v718 = v506;
      v719 = v505;
      (*(v758 + 56))(v710, 1, 1, v757);
      type metadata accessor for CGRect(0);
      v723 = v507;
      v722 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v760 = 0u;
      v761 = 0u;
      CRRegister.init(wrappedValue:)();
      v508 = v753;
      *&v760 = 0;
      v717 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v724 = v508[6];
      v509 = v755;
      v505(v755, 1, 1, v503);
      v510 = v729;
      outlined init with copy of Date?(v509, v729, &_s8PaperKit5ColorVSgMd);
      v720 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v509, &_s8PaperKit5ColorVSgMd);
      v721 = v508[7];
      (v719)(v509, 1, 1, v503);
      outlined init with copy of Date?(v509, v510, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v509, &_s8PaperKit5ColorVSgMd);
      v729 = v508[8];
      *&v760 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v718 = v508[9];
      v511 = v740;
      swift_storeEnumTagMultiPayload();
      v719 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v511, v730, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v511, type metadata accessor for ShapeType);
      *&v760 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      BYTE8(v760) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      BYTE8(v760) = 0;
      CRRegister.init(wrappedValue:)();
      v512 = v508[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v730 = v512;
      CRAttributedString.init(_:)();
      v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v514 = v733;
      (*(*(v513 - 8) + 56))(v733, 1, 1, v513);
      outlined init with copy of Date?(v514, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v514, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v515 = v508[15];
      *&v760 = 0;
      v516 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v733 = v515;
      v732 = v516;
      CRRegister.init(wrappedValue:)();
      *&v760 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v517 = type metadata accessor for StrokeStyle(0);
      v518 = v736;
      (*(*(v517 - 8) + 56))(v736, 1, 1, v517);
      outlined init with copy of Date?(v518, v734, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v518, &_s8PaperKit11StrokeStyleOSgMd);
      v519 = type metadata accessor for Shadow();
      v520 = v739;
      (*(*(v519 - 8) + 56))(v739, 1, 1, v519);
      outlined init with copy of Date?(v520, v737, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v520, &_s8PaperKit6ShadowVSgMd);
      v761 = 0u;
      v762 = 0u;
      v760 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v760 = 0u;
      v761 = 0u;
      v521 = v741;
      CRRegister.init(_:)();
      (*(v743 + 40))(v500, v521, v742);
      _s8PaperKit0A6MarkupVWOcTm_0(v692, v511, v719);
      v522 = v744;
      CRRegister.init(_:)();
      (*(v746 + 40))(v500 + v718, v522, v745);
      *&v760 = 0x4014000000000000;
      v523 = v747;
      CRRegister.init(_:)();
      (*(v748 + 40))(v500 + v729, v523, v752);
      v524 = v755;
      outlined init with copy of Date?(v702, v755, &_s8PaperKit5ColorVSgMd);
      v525 = v749;
      CRRegister.init(_:)();
      v526 = *(v751 + 40);
      v527 = v750;
      v526(v500 + v721, v525, v750);
      outlined init with copy of Date?(v703, v524, &_s8PaperKit5ColorVSgMd);
      v528 = v757;
      CRRegister.init(_:)();
      v526(v500 + v724, v525, v527);
      v529 = v758;
      v530 = v679;
      outlined init with copy of Date?(v710, v679, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v529 + 48))(v530, 1, v528) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v530, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v636 = v661;
        (*(v529 + 32))(v661, v530, v528);
        (*(v529 + 40))(v500 + v730, v636, v528);
      }

      v637 = v727;
      v638 = v726;
      v639 = v725;
      *&v760 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v710, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v703, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v702, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v692, type metadata accessor for ShapeType);
      (*(v637 + 40))(&v733[v500], v639, v638);
      v614 = v728;
      _s8PaperKit0A6MarkupVWObTm_0(v500, v728, type metadata accessor for Shape);
      *&v635 = 180.0;
      goto LABEL_73;
    }

    *v688 = 0x3FB999999999999ALL;
    swift_storeEnumTagMultiPayload();
    v377 = type metadata accessor for Color(0);
    v378 = *(v377 - 8);
    v379 = *(v378 + 56);
    v380 = (v378 + 56);
    v379(v697, 1, 1, v377);
    v379(v698, 1, 1, v377);
    v719 = v380;
    v720 = v379;
    (*(v758 + 56))(v708, 1, 1, v757);
    type metadata accessor for CGRect(0);
    v724 = v381;
    v723 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v760 = 0u;
    v761 = 0u;
    v382 = v669;
    CRRegister.init(wrappedValue:)();
    v383 = v753;
    *&v760 = 0;
    v718 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v728 = v383[6];
    v384 = v755;
    v379(v755, 1, 1, v377);
    v385 = v729;
    outlined init with copy of Date?(v384, v729, &_s8PaperKit5ColorVSgMd);
    v721 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v384, &_s8PaperKit5ColorVSgMd);
    v722 = v383[7];
    (v720)(v384, 1, 1, v377);
    outlined init with copy of Date?(v384, v385, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v384, &_s8PaperKit5ColorVSgMd);
    v729 = v383[8];
    *&v760 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v719 = v383[9];
    v386 = v740;
    swift_storeEnumTagMultiPayload();
    v720 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v386, v730, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v386, type metadata accessor for ShapeType);
    *&v760 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    BYTE8(v760) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    BYTE8(v760) = 0;
    CRRegister.init(wrappedValue:)();
    v387 = v383[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v730 = v387;
    CRAttributedString.init(_:)();
    v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v389 = v733;
    (*(*(v388 - 8) + 56))(v733, 1, 1, v388);
    outlined init with copy of Date?(v389, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v389, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v390 = v383[15];
    *&v760 = 0;
    v391 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v733 = v390;
    v732 = v391;
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v392 = type metadata accessor for StrokeStyle(0);
    v393 = v736;
    (*(*(v392 - 8) + 56))(v736, 1, 1, v392);
    outlined init with copy of Date?(v393, v734, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v393, &_s8PaperKit11StrokeStyleOSgMd);
    v394 = type metadata accessor for Shadow();
    v395 = v739;
    (*(*(v394 - 8) + 56))(v739, 1, 1, v394);
    outlined init with copy of Date?(v395, v737, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v395, &_s8PaperKit6ShadowVSgMd);
    v761 = 0u;
    v762 = 0u;
    v760 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v760 = 0u;
    v761 = 0u;
    v396 = v741;
    CRRegister.init(_:)();
    (*(v743 + 40))(v382, v396, v742);
    _s8PaperKit0A6MarkupVWOcTm_0(v688, v386, v720);
    v397 = v744;
    CRRegister.init(_:)();
    (*(v746 + 40))(v382 + v719, v397, v745);
    *&v760 = 0x4014000000000000;
    v398 = v747;
    CRRegister.init(_:)();
    (*(v748 + 40))(v382 + v729, v398, v752);
    v399 = v755;
    outlined init with copy of Date?(v697, v755, &_s8PaperKit5ColorVSgMd);
    v400 = v749;
    CRRegister.init(_:)();
    v401 = *(v751 + 40);
    v402 = v750;
    v401(v382 + v722, v400, v750);
    outlined init with copy of Date?(v698, v399, &_s8PaperKit5ColorVSgMd);
    v403 = v757;
    CRRegister.init(_:)();
    v401(v382 + v728, v400, v402);
    v404 = v758;
    v405 = v676;
    outlined init with copy of Date?(v708, v676, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v404 + 48))(v405, 1, v403) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v405, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v595 = v656;
      (*(v404 + 32))(v656, v405, v403);
      (*(v404 + 40))(v382 + v730, v595, v403);
    }

    v596 = v726;
    v597 = v725;
    *&v760 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v708, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v698, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v697, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v688, type metadata accessor for ShapeType);
    (*(v727 + 40))(&v733[v382], v597, v596);
    v598 = v382;
    v599 = &v702;
LABEL_70:
    v614 = *(v599 - 32);
    _s8PaperKit0A6MarkupVWObTm_0(v598, v614, type metadata accessor for Shape);
    *&v635 = 150.0;
LABEL_73:
    v615 = *&v635;
    v617 = v614;
    v616 = *&v635;
    goto LABEL_74;
  }

  if (v728 == 8)
  {
    v406 = v204;
    v724 = v202;
    if (one-time initialization token for defaultLine != -1)
    {
      swift_once();
    }

    v407 = *algn_1EC7C40D0;
    v408 = v694;
    *v694 = static UIConstants.defaultLine;
    v408[1] = v407;
    v408[2] = xmmword_1EC7C40E0;
    swift_storeEnumTagMultiPayload();
    v409 = type metadata accessor for Color(0);
    v410 = *(v409 - 8);
    v411 = *(v410 + 56);
    v412 = v410 + 56;
    v411(v706, 1, 1, v409);
    v411(v707, 1, 1, v409);
    v717 = v412;
    v718 = v411;
    (*(v758 + 56))(v712, 1, 1, v757);
    type metadata accessor for CGRect(0);
    v722 = v413;
    v721 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v760 = 0u;
    v761 = 0u;
    CRRegister.init(wrappedValue:)();
    v414 = v753;
    *&v760 = 0;
    v728 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v723 = v414[6];
    v415 = v755;
    v411(v755, 1, 1, v409);
    v416 = v729;
    outlined init with copy of Date?(v415, v729, &_s8PaperKit5ColorVSgMd);
    v719 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v415, &_s8PaperKit5ColorVSgMd);
    v720 = v414[7];
    (v718)(v415, 1, 1, v409);
    outlined init with copy of Date?(v415, v416, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v415, &_s8PaperKit5ColorVSgMd);
    v729 = v414[8];
    *&v760 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v417 = v414[9];
    v418 = v740;
    swift_storeEnumTagMultiPayload();
    v718 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v418, v730, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v418, type metadata accessor for ShapeType);
    *&v760 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    BYTE8(v760) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    BYTE8(v760) = 0;
    CRRegister.init(wrappedValue:)();
    v419 = v414[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v730 = v419;
    CRAttributedString.init(_:)();
    v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v421 = v733;
    (*(*(v420 - 8) + 56))(v733, 1, 1, v420);
    outlined init with copy of Date?(v421, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v421, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v422 = v414[15];
    *&v760 = 0;
    v423 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v733 = v422;
    v732 = v423;
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v424 = type metadata accessor for StrokeStyle(0);
    v425 = v736;
    (*(*(v424 - 8) + 56))(v736, 1, 1, v424);
    outlined init with copy of Date?(v425, v734, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v425, &_s8PaperKit11StrokeStyleOSgMd);
    v426 = type metadata accessor for Shadow();
    v427 = v739;
    (*(*(v426 - 8) + 56))(v739, 1, 1, v426);
    outlined init with copy of Date?(v427, v737, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v427, &_s8PaperKit6ShadowVSgMd);
    v761 = 0u;
    v762 = 0u;
    v760 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v760 = 0u;
    v761 = 0u;
    v428 = v741;
    CRRegister.init(_:)();
    (*(v743 + 40))(v406, v428, v742);
    _s8PaperKit0A6MarkupVWOcTm_0(v694, v418, v718);
    v429 = v744;
    CRRegister.init(_:)();
    (*(v746 + 40))(v406 + v417, v429, v745);
    *&v760 = 0x4014000000000000;
    v430 = v747;
    CRRegister.init(_:)();
    (*(v748 + 40))(v406 + v729, v430, v752);
    v431 = v755;
    outlined init with copy of Date?(v706, v755, &_s8PaperKit5ColorVSgMd);
    v432 = v749;
    CRRegister.init(_:)();
    v433 = *(v751 + 40);
    v434 = v750;
    v433(v406 + v720, v432, v750);
    outlined init with copy of Date?(v707, v431, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v435 = v434;
    v436 = v757;
    v433(v406 + v723, v432, v435);
    v437 = v758;
    v438 = v681;
    outlined init with copy of Date?(v712, v681, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v437 + 48))(v438, 1, v436) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v438, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v600 = v662;
      (*(v437 + 32))(v662, v438, v436);
      (*(v437 + 40))(v406 + v730, v600, v436);
    }

    v601 = v727;
    v602 = v726;
    v603 = v725;
    *&v760 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v712, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v707, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v706, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v694, type metadata accessor for ShapeType);
    (*(v601 + 40))(&v733[v406], v603, v602);
    v604 = v724;
    _s8PaperKit0A6MarkupVWObTm_0(v406, v724, type metadata accessor for Shape);
    *&v760 = 1;
    BYTE8(v760) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    CRRegister.wrappedValue.setter();
    specialized NewCanvasElementDelegate.addLine(_:size:)(v604, 150.0, 150.0);
    v594 = v604;
    return _s8PaperKit0A6MarkupVWOhTm_0(v594, type metadata accessor for Shape);
  }

  if (v728 == 9)
  {
    v728 = v203;
    *v691 = xmmword_1D405A650;
    v288 = v206;
    swift_storeEnumTagMultiPayload();
    v289 = type metadata accessor for Color(0);
    v290 = *(v289 - 8);
    v291 = *(v290 + 56);
    v292 = (v290 + 56);
    v291(v704, 1, 1, v289);
    v291(v705, 1, 1, v289);
    v718 = v292;
    v719 = v291;
    (*(v758 + 56))(v711, 1, 1, v757);
    type metadata accessor for CGRect(0);
    v723 = v293;
    v722 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v760 = 0u;
    v761 = 0u;
    CRRegister.init(wrappedValue:)();
    v294 = v753;
    *&v760 = 0;
    v717 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v724 = v294[6];
    v295 = v755;
    v291(v755, 1, 1, v289);
    v296 = v729;
    outlined init with copy of Date?(v295, v729, &_s8PaperKit5ColorVSgMd);
    v720 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v295, &_s8PaperKit5ColorVSgMd);
    v721 = v294[7];
    (v719)(v295, 1, 1, v289);
    outlined init with copy of Date?(v295, v296, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v295, &_s8PaperKit5ColorVSgMd);
    v729 = v294[8];
    *&v760 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v718 = v294[9];
    v297 = v740;
    swift_storeEnumTagMultiPayload();
    v719 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v297, v730, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v297, type metadata accessor for ShapeType);
    *&v760 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    BYTE8(v760) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    BYTE8(v760) = 0;
    CRRegister.init(wrappedValue:)();
    v298 = v294[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v730 = v298;
    CRAttributedString.init(_:)();
    v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v300 = v733;
    (*(*(v299 - 8) + 56))(v733, 1, 1, v299);
    outlined init with copy of Date?(v300, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v300, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v301 = v294[15];
    *&v760 = 0;
    v302 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v733 = v301;
    v732 = v302;
    CRRegister.init(wrappedValue:)();
    *&v760 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v303 = type metadata accessor for StrokeStyle(0);
    v304 = v736;
    (*(*(v303 - 8) + 56))(v736, 1, 1, v303);
    outlined init with copy of Date?(v304, v734, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v304, &_s8PaperKit11StrokeStyleOSgMd);
    v305 = type metadata accessor for Shadow();
    v306 = v739;
    (*(*(v305 - 8) + 56))(v739, 1, 1, v305);
    outlined init with copy of Date?(v306, v737, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v306, &_s8PaperKit6ShadowVSgMd);
    v761 = 0u;
    v762 = 0u;
    v760 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v760 = 0u;
    v761 = 0u;
    v307 = v741;
    CRRegister.init(_:)();
    (*(v743 + 40))(v288, v307, v742);
    _s8PaperKit0A6MarkupVWOcTm_0(v691, v297, v719);
    v308 = v744;
    CRRegister.init(_:)();
    (*(v746 + 40))(v288 + v718, v308, v745);
    *&v760 = 0x4014000000000000;
    v309 = v747;
    CRRegister.init(_:)();
    (*(v748 + 40))(v288 + v729, v309, v752);
    v310 = v755;
    outlined init with copy of Date?(v704, v755, &_s8PaperKit5ColorVSgMd);
    v311 = v749;
    CRRegister.init(_:)();
    v312 = *(v751 + 40);
    v313 = v750;
    v312(v288 + v721, v311, v750);
    outlined init with copy of Date?(v705, v310, &_s8PaperKit5ColorVSgMd);
    v314 = v757;
    CRRegister.init(_:)();
    v312(v288 + v724, v311, v313);
    v315 = v758;
    v316 = v680;
    outlined init with copy of Date?(v711, v680, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v315 + 48))(v316, 1, v314) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v316, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v631 = v660;
      (*(v315 + 32))(v660, v316, v314);
      (*(v315 + 40))(v288 + v730, v631, v314);
    }

    v632 = v727;
    v633 = v726;
    v634 = v725;
    *&v760 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v711, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v705, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v704, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v691, type metadata accessor for ShapeType);
    (*(v632 + 40))(&v733[v288], v634, v633);
    v598 = v288;
LABEL_69:
    v599 = &v760;
    goto LABEL_70;
  }

  v531 = v212;
  v723 = v211;
  v728 = v210;
  specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(1.0, 1.0);
  v533 = v532;
  v535 = v534;
  v537 = v536;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v763._object = 0x80000001D4083BC0;
  v538.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v538.value._object = 0xEB00000000656C62;
  v539._countAndFlagsBits = 1954047316;
  v539._object = 0xE400000000000000;
  v540._countAndFlagsBits = 0;
  v540._object = 0xE000000000000000;
  v763._countAndFlagsBits = 0xD000000000000024;
  v541 = NSLocalizedString(_:tableName:bundle:value:comment:)(v539, v538, paperKitBundle, v540, v763);
  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  v542 = v754 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_screenScaleOverride;
  swift_beginAccess();
  if (v542[8] == 1)
  {
    AnyCanvas.scaleFactorForNewElements.getter();
  }

  v543 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v544 = MEMORY[0x1DA6CCED0](v541._countAndFlagsBits, v541._object);

  type metadata accessor for NSAttributedStringKey(0);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v543 initWithString:v544 attributes:isa];

  MEMORY[0x1EEE9AC00](v546);
  v547 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v548 = type metadata accessor for Color(0);
  v549 = *(v548 + 20);
  v550 = type metadata accessor for UnknownValueProperties();
  (*(*(v550 - 8) + 56))(v713 + v549, 1, 1, v550);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!result)
  {
    __break(1u);
    goto LABEL_86;
  }

  v552 = result;
  v722 = v547;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_86:
    __break(1u);
    return result;
  }

  v553 = result;

  *v713 = v553;
  v554 = *(v548 - 8);
  v555 = *(v554 + 56);
  v556 = (v554 + 56);
  v555();
  (v555)(v684, 1, 1, v548);
  v716 = v556;
  v557 = v758;
  v558 = *(v758 + 16);
  v715 = v548;
  v559 = v685;
  v560 = v757;
  v558(v685, v687, v757);
  (*(v557 + 56))(v559, 0, 1, v560);
  type metadata accessor for CGRect(0);
  v720 = v561;
  v719 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  v760 = 0u;
  v761 = 0u;
  CRRegister.init(wrappedValue:)();
  v562 = v753;
  *&v760 = 0;
  v724 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v721 = v562[6];
  v563 = v755;
  (v555)(v755, 1, 1, v548);
  v564 = v729;
  outlined init with copy of Date?(v563, v729, &_s8PaperKit5ColorVSgMd);
  v717 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v563, &_s8PaperKit5ColorVSgMd);
  v718 = v562[7];
  (v555)(v563, 1, 1, v715);
  outlined init with copy of Date?(v563, v564, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v563, &_s8PaperKit5ColorVSgMd);
  v729 = v562[8];
  *&v760 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v715 = v562[9];
  v565 = v740;
  swift_storeEnumTagMultiPayload();
  v716 = type metadata accessor for ShapeType;
  _s8PaperKit0A6MarkupVWOcTm_0(v565, v730, type metadata accessor for ShapeType);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit0A6MarkupVWOhTm_0(v565, type metadata accessor for ShapeType);
  *&v760 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v760 = 0;
  BYTE8(v760) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v760 = 0;
  BYTE8(v760) = 0;
  CRRegister.init(wrappedValue:)();
  v730 = v562[13];
  CRAttributedString.init(_:)();
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v567 = v733;
  (*(*(v566 - 8) + 56))(v733, 1, 1, v566);
  outlined init with copy of Date?(v567, v731, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v567, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v568 = v562[15];
  *&v760 = 0;
  v569 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v733 = v568;
  v732 = v569;
  CRRegister.init(wrappedValue:)();
  *&v760 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v570 = type metadata accessor for StrokeStyle(0);
  v571 = v736;
  (*(*(v570 - 8) + 56))(v736, 1, 1, v570);
  outlined init with copy of Date?(v571, v734, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v571, &_s8PaperKit11StrokeStyleOSgMd);
  v572 = type metadata accessor for Shadow();
  v573 = v739;
  (*(*(v572 - 8) + 56))(v739, 1, 1, v572);
  outlined init with copy of Date?(v573, v737, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v573, &_s8PaperKit6ShadowVSgMd);
  v761 = 0u;
  v762 = 0u;
  v760 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v760 = v533 + -0.5;
  *(&v760 + 1) = v535 + -0.5;
  __asm { FMOV            V0.2D, #1.0 }

  v761 = _Q0;
  v579 = v741;
  CRRegister.init(_:)();
  (*(v743 + 40))(v531, v579, v742);
  _s8PaperKit0A6MarkupVWOcTm_0(v686, v565, v716);
  v580 = v744;
  CRRegister.init(_:)();
  (*(v746 + 40))(v531 + v715, v580, v745);
  *&v760 = 0x4014000000000000;
  v581 = v747;
  CRRegister.init(_:)();
  (*(v748 + 40))(v531 + v729, v581, v752);
  v582 = v755;
  outlined init with copy of Date?(v713, v755, &_s8PaperKit5ColorVSgMd);
  v583 = v749;
  CRRegister.init(_:)();
  v584 = *(v751 + 40);
  v585 = v750;
  v584(v531 + v718, v583, v750);
  v586 = v757;
  outlined init with copy of Date?(v684, v582, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v584(v531 + v721, v583, v585);
  v587 = v758;
  v588 = v664;
  outlined init with copy of Date?(v685, v664, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v587 + 48))(v588, 1, v586) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v588, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v640 = v663;
    (*(v587 + 32))(v663, v588, v586);
    (*(v587 + 40))(v531 + v730, v640, v586);
  }

  v641 = v727;
  *&v760 = 3;
  v642 = v725;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v685, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v684, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v713, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit0A6MarkupVWOhTm_0(v686, type metadata accessor for ShapeType);
  (*(v641 + 40))(&v733[v531], v642, v726);
  v643 = v728;
  _s8PaperKit0A6MarkupVWObTm_0(v531, v728, type metadata accessor for Shape);
  *&v760 = 0;
  CRRegister.wrappedValue.setter();
  CRRegister.value.getter();
  if (vabdd_f64(*&v760, v537) > 0.01)
  {
    *&v760 = v537;
    CRRegister.value.setter();
  }

  _s8PaperKit0A6MarkupVWOcTm_0(v643, v723, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape);
  v644 = v666;
  v645 = Capsule.init(_:id:)();
  v646 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v754) + 0x3C8))(&v760, v645);
  if (v760)
  {
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
    specialized Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(v644, 1, 0);
  }

  v647 = specialized Canvas.recentlyAddedCanvasElement.getter();
  if (v647)
  {
    v648 = v647;
    v649 = (*((*v646 & *v647) + 0x318))();

    if (v649)
    {
      *(*&v649[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics] + 17) = 12;

      FormTextFieldAnalytics.recordEvent()();
    }
  }

  (*(v667 + 8))(v644, v668);
  _s8PaperKit0A6MarkupVWOhTm_0(v728, type metadata accessor for Shape);
  return (*(v758 + 8))(v687, v757);
}

{
  LODWORD(v733) = a1;
  v1 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v670 = &v655 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v672 = *(v673 - 8);
  MEMORY[0x1EEE9AC00](v673);
  v671 = &v655 - v3;
  v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v731 = *(v730 - 8);
  MEMORY[0x1EEE9AC00](v730);
  v732 = &v655 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v6 = *(v5 - 8);
  v762 = v5;
  v763 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v668 = &v655 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v692 = &v655 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v665 = &v655 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v667 = &v655 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v666 = &v655 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v662 = &v655 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v661 = &v655 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v664 = &v655 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v663 = &v655 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v660 = &v655 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v659 = &v655 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v658 = &v655 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v31 = *(v30 - 8);
  v755 = v30;
  v756 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v754 = &v655 - v32;
  v757 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v753 = *(v757 - 8);
  MEMORY[0x1EEE9AC00](v757);
  v752 = &v655 - v33;
  v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v751 = *(v750 - 8);
  MEMORY[0x1EEE9AC00](v750);
  v749 = &v655 - v34;
  v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v748 = *(v747 - 8);
  MEMORY[0x1EEE9AC00](v747);
  v746 = &v655 - v35;
  v743 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v743);
  v742 = &v655 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v744 = &v655 - v38;
  v740 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v740);
  v739 = &v655 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v741 = &v655 - v41;
  v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v737);
  v736 = &v655 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v738 = &v655 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v669 = &v655 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v690 = &v655 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v685 = &v655 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v716 = (&v655 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v686 = &v655 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v717 = &v655 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v684 = &v655 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v715 = &v655 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v683 = &v655 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v714 = (&v655 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v681 = &v655 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v713 = &v655 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v682 = &v655 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v687 = &v655 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v680 = &v655 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v688 = &v655 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v679 = &v655 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v721 = (&v655 - v80);
  MEMORY[0x1EEE9AC00](v81);
  v678 = &v655 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v720 = &v655 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v677 = &v655 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v719 = &v655 - v88;
  v761 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v761);
  v689 = &v655 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v718 = (&v655 - v91);
  MEMORY[0x1EEE9AC00](v92);
  v710 = &v655 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v709 = &v655 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v712 = &v655 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v711 = &v655 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v708 = &v655 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v707 = &v655 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v706 = &v655 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v705 = &v655 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v703 = &v655 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v693 = &v655 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v726 = &v655 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v704 = &v655 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v725 = &v655 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v702 = &v655 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v724 = &v655 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v701 = &v655 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v723 = &v655 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v700 = &v655 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v734 = &v655 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v760 = &v655 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v722 = &v655 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v698 = &v655 - v135;
  v764 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v764);
  v691 = &v655 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v137);
  v696 = (&v655 - v138);
  MEMORY[0x1EEE9AC00](v139);
  v699 = (&v655 - v140);
  MEMORY[0x1EEE9AC00](v141);
  v697 = (&v655 - v142);
  MEMORY[0x1EEE9AC00](v143);
  v695 = (&v655 - v144);
  MEMORY[0x1EEE9AC00](v145);
  v694 = (&v655 - v146);
  MEMORY[0x1EEE9AC00](v147);
  v728 = &v655 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v729 = &v655 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v727 = &v655 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v155 = &v655 - v154;
  MEMORY[0x1EEE9AC00](v156);
  v735 = &v655 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v745 = &v655 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v655 - v161;
  v759 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v759);
  MEMORY[0x1EEE9AC00](v163);
  MEMORY[0x1EEE9AC00](v164);
  MEMORY[0x1EEE9AC00](v165);
  MEMORY[0x1EEE9AC00](v166);
  MEMORY[0x1EEE9AC00](v167);
  MEMORY[0x1EEE9AC00](v168);
  MEMORY[0x1EEE9AC00](&v655 - v169);
  MEMORY[0x1EEE9AC00](v170);
  MEMORY[0x1EEE9AC00](v171);
  v676 = &v655 - v172;
  MEMORY[0x1EEE9AC00](v173);
  MEMORY[0x1EEE9AC00](v174);
  v674 = &v655 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v675 = &v655 - v177;
  MEMORY[0x1EEE9AC00](v178);
  v180 = &v655 - v179;
  MEMORY[0x1EEE9AC00](v181);
  MEMORY[0x1EEE9AC00](v182);
  v184 = &v655 - v183;
  MEMORY[0x1EEE9AC00](v185);
  v187 = &v655 - v186;
  MEMORY[0x1EEE9AC00](v188);
  v190 = &v655 - v189;
  MEMORY[0x1EEE9AC00](v191);
  v193 = &v655 - v192;
  MEMORY[0x1EEE9AC00](v194);
  v196 = &v655 - v195;
  MEMORY[0x1EEE9AC00](v197);
  v199 = &v655 - v198;
  MEMORY[0x1EEE9AC00](v200);
  v202 = &v655 - v201;
  MEMORY[0x1EEE9AC00](v203);
  v216 = &v655 - v215;
  v217 = v733;
  if (v733 <= 4u)
  {
    v712 = v202;
    v713 = v196;
    v714 = v199;
    v715 = v190;
    v716 = v193;
    v717 = v184;
    v718 = v187;
    v733 = v180;
    v249 = v162;
    v250 = v155;
    v251 = v729;
    v252 = v728;
    v253 = v722;
    v254 = v723;
    v255 = v724;
    v256 = v725;
    v257 = v726;
    v258 = v719;
    v259 = v720;
    v260 = v721;
    if (v217 <= 1)
    {
      if (!v217)
      {
        v733 = v216;
        v656 = v249;
        swift_storeEnumTagMultiPayload();
        v321 = type metadata accessor for Color(0);
        v322 = *(v321 - 8);
        v323 = *(v322 + 56);
        v324 = (v322 + 56);
        v323(v698, 1, 1, v321);
        v323(v253, 1, 1, v321);
        v723 = v324;
        v724 = v323;
        (*(v763 + 56))(v258, 1, 1, v762);
        type metadata accessor for CGRect(0);
        v728 = v325;
        v727 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v765 = 0u;
        v766 = 0u;
        v326 = v712;
        CRRegister.init(wrappedValue:)();
        v327 = v759;
        *&v765 = 0;
        v721 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v729 = v327[6];
        v328 = v760;
        v323(v760, 1, 1, v321);
        v329 = v734;
        outlined init with copy of Date?(v328, v734, &_s8PaperKit5ColorVSgMd);
        v725 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v328, &_s8PaperKit5ColorVSgMd);
        v726 = v327[7];
        (v724)(v328, 1, 1, v321);
        outlined init with copy of Date?(v328, v329, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v328, &_s8PaperKit5ColorVSgMd);
        v734 = v327[8];
        *&v765 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v723 = v327[9];
        v330 = v745;
        swift_storeEnumTagMultiPayload();
        v724 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v330, v735, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v330, type metadata accessor for ShapeType);
        *&v765 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v765 = 0;
        BYTE8(v765) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v765 = 0;
        BYTE8(v765) = 0;
        CRRegister.init(wrappedValue:)();
        v331 = v327[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v735 = v331;
        CRAttributedString.init(_:)();
        v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v333 = v738;
        (*(*(v332 - 8) + 56))(v738, 1, 1, v332);
        outlined init with copy of Date?(v333, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v333, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v334 = v327[15];
        *&v765 = 0;
        v335 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v738 = v334;
        v737 = v335;
        CRRegister.init(wrappedValue:)();
        *&v765 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v336 = type metadata accessor for StrokeStyle(0);
        v337 = v741;
        (*(*(v336 - 8) + 56))(v741, 1, 1, v336);
        outlined init with copy of Date?(v337, v739, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v337, &_s8PaperKit11StrokeStyleOSgMd);
        v338 = type metadata accessor for Shadow();
        v339 = v744;
        (*(*(v338 - 8) + 56))(v744, 1, 1, v338);
        outlined init with copy of Date?(v339, v742, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v339, &_s8PaperKit6ShadowVSgMd);
        v766 = 0u;
        v767 = 0u;
        v765 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v765 = 0u;
        v766 = 0u;
        v340 = v746;
        CRRegister.init(_:)();
        (*(v748 + 40))(v326, v340, v747);
        _s8PaperKit0A6MarkupVWOcTm_0(v656, v330, v724);
        v341 = v749;
        CRRegister.init(_:)();
        v342 = v763;
        (*(v751 + 40))(v326 + v723, v341, v750);
        *&v765 = 0x4014000000000000;
        v343 = v752;
        CRRegister.init(_:)();
        (*(v753 + 40))(v326 + v734, v343, v757);
        v344 = v760;
        outlined init with copy of Date?(v698, v760, &_s8PaperKit5ColorVSgMd);
        v345 = v754;
        CRRegister.init(_:)();
        v346 = v755;
        v347 = *(v756 + 40);
        v347(v326 + v726, v345, v755);
        outlined init with copy of Date?(v722, v344, &_s8PaperKit5ColorVSgMd);
        v348 = v719;
        CRRegister.init(_:)();
        v347(v326 + v729, v345, v346);
        v349 = v762;
        v350 = v677;
        outlined init with copy of Date?(v348, v677, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v342 + 48))(v350, 1, v349) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v350, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v620 = v658;
          (*(v342 + 32))(v658, v350, v349);
          (*(v342 + 40))(v326 + v735, v620, v349);
        }

        v621 = v731;
        v622 = v730;
        v623 = v732;
        *&v765 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v348, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v722, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v698, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v656, type metadata accessor for ShapeType);
        (*(v621 + 40))(&v738[v326], v623, v622);
        v624 = v326;
        goto LABEL_71;
      }

      v657 = v250;
      swift_storeEnumTagMultiPayload();
      v474 = type metadata accessor for Color(0);
      v475 = *(v474 - 8);
      v476 = *(v475 + 56);
      v477 = (v475 + 56);
      v476(v700, 1, 1, v474);
      v476(v254, 1, 1, v474);
      v724 = v477;
      v725 = v476;
      (*(v763 + 56))(v259, 1, 1, v762);
      type metadata accessor for CGRect(0);
      v729 = v478;
      v728 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v765 = 0u;
      v766 = 0u;
      v479 = v713;
      CRRegister.init(wrappedValue:)();
      v480 = v759;
      *&v765 = 0;
      v722 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v733 = v480[6];
      v481 = v760;
      v476(v760, 1, 1, v474);
      v482 = v734;
      outlined init with copy of Date?(v481, v734, &_s8PaperKit5ColorVSgMd);
      v726 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v481, &_s8PaperKit5ColorVSgMd);
      v727 = v480[7];
      (v725)(v481, 1, 1, v474);
      outlined init with copy of Date?(v481, v482, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v481, &_s8PaperKit5ColorVSgMd);
      v734 = v480[8];
      *&v765 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v724 = v480[9];
      v483 = v745;
      swift_storeEnumTagMultiPayload();
      v725 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v483, v735, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v483, type metadata accessor for ShapeType);
      *&v765 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      CRRegister.init(wrappedValue:)();
      v484 = v480[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v735 = v484;
      CRAttributedString.init(_:)();
      v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v486 = v738;
      (*(*(v485 - 8) + 56))(v738, 1, 1, v485);
      outlined init with copy of Date?(v486, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v486, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v487 = v480[15];
      *&v765 = 0;
      v488 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v738 = v487;
      v737 = v488;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v489 = type metadata accessor for StrokeStyle(0);
      v490 = v741;
      (*(*(v489 - 8) + 56))(v741, 1, 1, v489);
      outlined init with copy of Date?(v490, v739, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v490, &_s8PaperKit11StrokeStyleOSgMd);
      v491 = type metadata accessor for Shadow();
      v492 = v744;
      (*(*(v491 - 8) + 56))(v744, 1, 1, v491);
      outlined init with copy of Date?(v492, v742, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v492, &_s8PaperKit6ShadowVSgMd);
      v766 = 0u;
      v767 = 0u;
      v765 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v765 = 0u;
      v766 = 0u;
      v493 = v746;
      CRRegister.init(_:)();
      (*(v748 + 40))(v479, v493, v747);
      _s8PaperKit0A6MarkupVWOcTm_0(v657, v483, v725);
      v494 = v749;
      CRRegister.init(_:)();
      v495 = v763;
      (*(v751 + 40))(v479 + v724, v494, v750);
      *&v765 = 0x4014000000000000;
      v496 = v752;
      CRRegister.init(_:)();
      (*(v753 + 40))(v479 + v734, v496, v757);
      v497 = v760;
      outlined init with copy of Date?(v700, v760, &_s8PaperKit5ColorVSgMd);
      v498 = v754;
      CRRegister.init(_:)();
      v499 = v755;
      v500 = *(v756 + 40);
      v500(v479 + v727, v498, v755);
      outlined init with copy of Date?(v723, v497, &_s8PaperKit5ColorVSgMd);
      v501 = v720;
      CRRegister.init(_:)();
      v500(v479 + v733, v498, v499);
      v502 = v762;
      v503 = v678;
      outlined init with copy of Date?(v501, v678, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v495 + 48))(v503, 1, v502) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v503, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v625 = v659;
        (*(v495 + 32))(v659, v503, v502);
        (*(v495 + 40))(v479 + v735, v625, v502);
      }

      v626 = v731;
      v627 = v730;
      v628 = v732;
      v594 = v714;
      *&v765 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v501, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v723, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v700, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v657, type metadata accessor for ShapeType);
      (*(v626 + 40))(&v738[v479], v628, v627);
      _s8PaperKit0A6MarkupVWObTm_0(v479, v594, type metadata accessor for Shape);
      *&v596 = 150.0;
    }

    else
    {
      if (v217 != 2)
      {
        if (v217 != 3)
        {
          v729 = v211;
          if (one-time initialization token for defaultCalloutBubble != -1)
          {
            swift_once();
          }

          v443 = qword_1EC7C4110;
          *v252 = static UIConstants.defaultCalloutBubble;
          *(v252 + 16) = v443;
          swift_storeEnumTagMultiPayload();
          v444 = type metadata accessor for Color(0);
          v445 = *(v444 - 8);
          v446 = *(v445 + 56);
          v447 = v445 + 56;
          v446(v704, 1, 1, v444);
          v446(v257, 1, 1, v444);
          v720 = v447;
          v721 = v446;
          (*(v763 + 56))(v687, 1, 1, v762);
          type metadata accessor for CGRect(0);
          v725 = v448;
          v724 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
          v765 = 0u;
          v766 = 0u;
          v449 = v733;
          CRRegister.init(wrappedValue:)();
          v450 = v759;
          *&v765 = 0;
          v719 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
          CRRegister.init(_:)();
          v727 = v450[6];
          v451 = v760;
          v446(v760, 1, 1, v444);
          v452 = v734;
          outlined init with copy of Date?(v451, v734, &_s8PaperKit5ColorVSgMd);
          v722 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v451, &_s8PaperKit5ColorVSgMd);
          v723 = v450[7];
          (v721)(v451, 1, 1, v444);
          outlined init with copy of Date?(v451, v452, &_s8PaperKit5ColorVSgMd);
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v451, &_s8PaperKit5ColorVSgMd);
          v734 = v450[8];
          *&v765 = 0x4014000000000000;
          CRRegister.init(wrappedValue:)();
          v720 = v450[9];
          v453 = v745;
          swift_storeEnumTagMultiPayload();
          v721 = type metadata accessor for ShapeType;
          _s8PaperKit0A6MarkupVWOcTm_0(v453, v735, type metadata accessor for ShapeType);
          _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
          CRRegister.init(wrappedValue:)();
          _s8PaperKit0A6MarkupVWOhTm_0(v453, type metadata accessor for ShapeType);
          *&v765 = 0x3FF0000000000000;
          CRRegister.init(wrappedValue:)();
          *&v765 = 0;
          BYTE8(v765) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
          CRRegister.init(wrappedValue:)();
          *&v765 = 0;
          BYTE8(v765) = 0;
          CRRegister.init(wrappedValue:)();
          v454 = v450[13];
          lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
          v735 = v454;
          CRAttributedString.init(_:)();
          v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
          v456 = v738;
          (*(*(v455 - 8) + 56))(v738, 1, 1, v455);
          outlined init with copy of Date?(v456, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v456, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          v457 = v450[15];
          *&v765 = 0;
          v458 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
          v738 = v457;
          v737 = v458;
          CRRegister.init(wrappedValue:)();
          *&v765 = 0;
          lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
          CRRegister.init(wrappedValue:)();
          v459 = type metadata accessor for StrokeStyle(0);
          v460 = v741;
          (*(*(v459 - 8) + 56))(v741, 1, 1, v459);
          outlined init with copy of Date?(v460, v739, &_s8PaperKit11StrokeStyleOSgMd);
          lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v460, &_s8PaperKit11StrokeStyleOSgMd);
          v461 = type metadata accessor for Shadow();
          v462 = v744;
          (*(*(v461 - 8) + 56))(v744, 1, 1, v461);
          outlined init with copy of Date?(v462, v742, &_s8PaperKit6ShadowVSgMd);
          lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v462, &_s8PaperKit6ShadowVSgMd);
          v766 = 0u;
          v767 = 0u;
          v765 = 0u;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
          lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          UnknownProperties.init()();
          v765 = 0u;
          v766 = 0u;
          v463 = v746;
          CRRegister.init(_:)();
          (*(v748 + 40))(v449, v463, v747);
          _s8PaperKit0A6MarkupVWOcTm_0(v728, v453, v721);
          v464 = v749;
          CRRegister.init(_:)();
          v465 = v763;
          (*(v751 + 40))(v449 + v720, v464, v750);
          *&v765 = 0x4014000000000000;
          v466 = v752;
          CRRegister.init(_:)();
          (*(v753 + 40))(v449 + v734, v466, v757);
          v467 = v760;
          outlined init with copy of Date?(v704, v760, &_s8PaperKit5ColorVSgMd);
          v468 = v754;
          CRRegister.init(_:)();
          v469 = v755;
          v470 = *(v756 + 40);
          v470(v449 + v723, v468, v755);
          outlined init with copy of Date?(v726, v467, &_s8PaperKit5ColorVSgMd);
          v471 = v687;
          CRRegister.init(_:)();
          v470(v449 + v727, v468, v469);
          v472 = v762;
          v473 = v682;
          outlined init with copy of Date?(v471, v682, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          if ((*(v465 + 48))(v473, 1, v472) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v473, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          }

          else
          {
            v616 = v664;
            (*(v465 + 32))(v664, v473, v472);
            (*(v465 + 40))(v449 + v735, v616, v472);
          }

          v617 = v731;
          v618 = v730;
          v619 = v732;
          *&v765 = 0;
          CRRegister.init(_:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v471, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v726, &_s8PaperKit5ColorVSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v704, &_s8PaperKit5ColorVSgMd);
          _s8PaperKit0A6MarkupVWOhTm_0(v728, type metadata accessor for ShapeType);
          (*(v617 + 40))(&v738[v449], v619, v618);
          v601 = v729;
          _s8PaperKit0A6MarkupVWObTm_0(v449, v729, type metadata accessor for Shape);
          v602 = 165.0;
          v604 = 104.0;
          v603 = v601;
          goto LABEL_75;
        }

        if (one-time initialization token for defaultLine != -1)
        {
          swift_once();
        }

        v261 = *algn_1EC7C40D0;
        *v251 = static UIConstants.defaultLine;
        v251[1] = v261;
        v251[2] = xmmword_1EC7C40E0;
        swift_storeEnumTagMultiPayload();
        v262 = type metadata accessor for Color(0);
        v263 = *(v262 - 8);
        v264 = *(v263 + 56);
        v265 = v263 + 56;
        v264(v702, 1, 1, v262);
        v264(v256, 1, 1, v262);
        v722 = v265;
        v723 = v264;
        (*(v763 + 56))(v688, 1, 1, v762);
        type metadata accessor for CGRect(0);
        v728 = v266;
        v727 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v765 = 0u;
        v766 = 0u;
        v267 = v717;
        CRRegister.init(wrappedValue:)();
        v268 = v759;
        *&v765 = 0;
        v721 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v733 = v268[6];
        v269 = v760;
        v264(v760, 1, 1, v262);
        v270 = v734;
        outlined init with copy of Date?(v269, v734, &_s8PaperKit5ColorVSgMd);
        v724 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v269, &_s8PaperKit5ColorVSgMd);
        v726 = v268[7];
        (v723)(v269, 1, 1, v262);
        outlined init with copy of Date?(v269, v270, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v269, &_s8PaperKit5ColorVSgMd);
        v734 = v268[8];
        *&v765 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v722 = v268[9];
        v271 = v745;
        swift_storeEnumTagMultiPayload();
        v723 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v271, v735, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v271, type metadata accessor for ShapeType);
        *&v765 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v765 = 0;
        BYTE8(v765) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v765 = 0;
        BYTE8(v765) = 0;
        CRRegister.init(wrappedValue:)();
        v272 = v268[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v735 = v272;
        CRAttributedString.init(_:)();
        v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v274 = v738;
        (*(*(v273 - 8) + 56))(v738, 1, 1, v273);
        outlined init with copy of Date?(v274, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v274, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v275 = v268[15];
        *&v765 = 0;
        v276 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v738 = v275;
        v737 = v276;
        CRRegister.init(wrappedValue:)();
        *&v765 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v277 = type metadata accessor for StrokeStyle(0);
        v278 = v741;
        (*(*(v277 - 8) + 56))(v741, 1, 1, v277);
        outlined init with copy of Date?(v278, v739, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v278, &_s8PaperKit11StrokeStyleOSgMd);
        v279 = type metadata accessor for Shadow();
        v280 = v744;
        (*(*(v279 - 8) + 56))(v744, 1, 1, v279);
        outlined init with copy of Date?(v280, v742, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v280, &_s8PaperKit6ShadowVSgMd);
        v766 = 0u;
        v767 = 0u;
        v765 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v765 = 0u;
        v766 = 0u;
        v281 = v746;
        CRRegister.init(_:)();
        (*(v748 + 40))(v267, v281, v747);
        _s8PaperKit0A6MarkupVWOcTm_0(v729, v271, v723);
        v282 = v749;
        CRRegister.init(_:)();
        v283 = v763;
        (*(v751 + 40))(v267 + v722, v282, v750);
        *&v765 = 0x4014000000000000;
        v284 = v752;
        CRRegister.init(_:)();
        (*(v753 + 40))(v267 + v734, v284, v757);
        v285 = v760;
        outlined init with copy of Date?(v702, v760, &_s8PaperKit5ColorVSgMd);
        v286 = v754;
        CRRegister.init(_:)();
        v287 = v755;
        v288 = *(v756 + 40);
        v288(v267 + v726, v286, v755);
        outlined init with copy of Date?(v725, v285, &_s8PaperKit5ColorVSgMd);
        v289 = v688;
        CRRegister.init(_:)();
        v288(v267 + v733, v286, v287);
        v290 = v762;
        v291 = v680;
        outlined init with copy of Date?(v289, v680, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v283 + 48))(v291, 1, v290) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v291, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v609 = v663;
          (*(v283 + 32))(v663, v291, v290);
          (*(v283 + 40))(v267 + v735, v609, v290);
        }

        v610 = v731;
        v611 = v730;
        v612 = v732;
        v594 = v718;
        *&v765 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v289, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v725, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v702, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v729, type metadata accessor for ShapeType);
        (*(v610 + 40))(&v738[v267], v612, v611);
        _s8PaperKit0A6MarkupVWObTm_0(v267, v594, type metadata accessor for Shape);
        v613 = 150.0;
        v614 = v594;
        v615 = 150.0;
LABEL_66:
        specialized NewCanvasElementDelegate.addShape(_:size:)(v614, v613, v615);
        v608 = v594;
        return _s8PaperKit0A6MarkupVWOhTm_0(v608, type metadata accessor for Shape);
      }

      *v727 = 3;
      swift_storeEnumTagMultiPayload();
      v351 = type metadata accessor for Color(0);
      v352 = *(v351 - 8);
      v353 = *(v352 + 56);
      v354 = v352 + 56;
      v353(v701, 1, 1, v351);
      v353(v255, 1, 1, v351);
      v722 = v354;
      v723 = v353;
      (*(v763 + 56))(v260, 1, 1, v762);
      type metadata accessor for CGRect(0);
      v729 = v355;
      v728 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v765 = 0u;
      v766 = 0u;
      v356 = v715;
      CRRegister.init(wrappedValue:)();
      v357 = v759;
      *&v765 = 0;
      v720 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v733 = v357[6];
      v358 = v760;
      v353(v760, 1, 1, v351);
      v359 = v734;
      outlined init with copy of Date?(v358, v734, &_s8PaperKit5ColorVSgMd);
      v725 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v358, &_s8PaperKit5ColorVSgMd);
      v726 = v357[7];
      (v723)(v358, 1, 1, v351);
      outlined init with copy of Date?(v358, v359, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v358, &_s8PaperKit5ColorVSgMd);
      v734 = v357[8];
      *&v765 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v722 = v357[9];
      v360 = v745;
      swift_storeEnumTagMultiPayload();
      v723 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v360, v735, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v360, type metadata accessor for ShapeType);
      *&v765 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      CRRegister.init(wrappedValue:)();
      v361 = v357[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v735 = v361;
      CRAttributedString.init(_:)();
      v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v363 = v738;
      (*(*(v362 - 8) + 56))(v738, 1, 1, v362);
      outlined init with copy of Date?(v363, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v363, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v364 = v357[15];
      *&v765 = 0;
      v365 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v738 = v364;
      v737 = v365;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v366 = type metadata accessor for StrokeStyle(0);
      v367 = v741;
      (*(*(v366 - 8) + 56))(v741, 1, 1, v366);
      outlined init with copy of Date?(v367, v739, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v367, &_s8PaperKit11StrokeStyleOSgMd);
      v368 = type metadata accessor for Shadow();
      v369 = v744;
      (*(*(v368 - 8) + 56))(v744, 1, 1, v368);
      outlined init with copy of Date?(v369, v742, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v369, &_s8PaperKit6ShadowVSgMd);
      v766 = 0u;
      v767 = 0u;
      v765 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v765 = 0u;
      v766 = 0u;
      v370 = v746;
      CRRegister.init(_:)();
      (*(v748 + 40))(v356, v370, v747);
      _s8PaperKit0A6MarkupVWOcTm_0(v727, v360, v723);
      v371 = v749;
      CRRegister.init(_:)();
      v372 = v763;
      (*(v751 + 40))(v356 + v722, v371, v750);
      *&v765 = 0x4014000000000000;
      v373 = v752;
      CRRegister.init(_:)();
      (*(v753 + 40))(v356 + v734, v373, v757);
      v374 = v760;
      outlined init with copy of Date?(v701, v760, &_s8PaperKit5ColorVSgMd);
      v375 = v754;
      CRRegister.init(_:)();
      v376 = v755;
      v377 = *(v756 + 40);
      v377(v356 + v726, v375, v755);
      outlined init with copy of Date?(v724, v374, &_s8PaperKit5ColorVSgMd);
      v378 = v721;
      CRRegister.init(_:)();
      v377(v356 + v733, v375, v376);
      v379 = v762;
      v380 = v679;
      outlined init with copy of Date?(v378, v679, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v372 + 48))(v380, 1, v379) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v380, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v592 = v660;
        (*(v372 + 32))(v660, v380, v379);
        (*(v372 + 40))(v356 + v735, v592, v379);
      }

      v593 = v730;
      v594 = v716;
      *&v765 = 0;
      v595 = v732;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v378, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v724, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v701, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v727, type metadata accessor for ShapeType);
      (*(v731 + 40))(&v738[v356], v595, v593);
      _s8PaperKit0A6MarkupVWObTm_0(v356, v594, type metadata accessor for Shape);
      *&v596 = 170.0;
    }

    v613 = *&v596;
    v614 = v594;
    v615 = *&v596;
    goto LABEL_66;
  }

  if (v733 <= 7u)
  {
    if (v733 == 5)
    {
      *v694 = 0x3FB999999999999ALL;
      swift_storeEnumTagMultiPayload();
      v381 = type metadata accessor for Color(0);
      v382 = *(v381 - 8);
      v383 = *(v382 + 56);
      v384 = (v382 + 56);
      v383(v693, 1, 1, v381);
      v383(v703, 1, 1, v381);
      v724 = v384;
      v725 = v383;
      (*(v763 + 56))(v713, 1, 1, v762);
      type metadata accessor for CGRect(0);
      v729 = v385;
      v728 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v765 = 0u;
      v766 = 0u;
      v386 = v674;
      CRRegister.init(wrappedValue:)();
      v387 = v759;
      *&v765 = 0;
      v723 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v733 = v387[6];
      v388 = v760;
      v383(v760, 1, 1, v381);
      v389 = v734;
      outlined init with copy of Date?(v388, v734, &_s8PaperKit5ColorVSgMd);
      v726 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v388, &_s8PaperKit5ColorVSgMd);
      v727 = v387[7];
      (v725)(v388, 1, 1, v381);
      outlined init with copy of Date?(v388, v389, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v388, &_s8PaperKit5ColorVSgMd);
      v734 = v387[8];
      *&v765 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v724 = v387[9];
      v390 = v745;
      swift_storeEnumTagMultiPayload();
      v725 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v390, v735, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v390, type metadata accessor for ShapeType);
      *&v765 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      CRRegister.init(wrappedValue:)();
      v391 = v387[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v735 = v391;
      CRAttributedString.init(_:)();
      v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v393 = v738;
      (*(*(v392 - 8) + 56))(v738, 1, 1, v392);
      outlined init with copy of Date?(v393, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v393, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v394 = v387[15];
      *&v765 = 0;
      v395 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v738 = v394;
      v737 = v395;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v396 = type metadata accessor for StrokeStyle(0);
      v397 = v741;
      (*(*(v396 - 8) + 56))(v741, 1, 1, v396);
      outlined init with copy of Date?(v397, v739, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v397, &_s8PaperKit11StrokeStyleOSgMd);
      v398 = type metadata accessor for Shadow();
      v399 = v744;
      (*(*(v398 - 8) + 56))(v744, 1, 1, v398);
      outlined init with copy of Date?(v399, v742, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v399, &_s8PaperKit6ShadowVSgMd);
      v766 = 0u;
      v767 = 0u;
      v765 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v765 = 0u;
      v766 = 0u;
      v400 = v746;
      CRRegister.init(_:)();
      (*(v748 + 40))(v386, v400, v747);
      _s8PaperKit0A6MarkupVWOcTm_0(v694, v390, v725);
      v401 = v749;
      CRRegister.init(_:)();
      v402 = v763;
      (*(v751 + 40))(v386 + v724, v401, v750);
      *&v765 = 0x4014000000000000;
      v403 = v752;
      CRRegister.init(_:)();
      (*(v753 + 40))(v386 + v734, v403, v757);
      v404 = v760;
      outlined init with copy of Date?(v693, v760, &_s8PaperKit5ColorVSgMd);
      v405 = v754;
      CRRegister.init(_:)();
      v406 = v755;
      v407 = *(v756 + 40);
      v407(v386 + v727, v405, v755);
      outlined init with copy of Date?(v703, v404, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(_:)();
      v407(v386 + v733, v405, v406);
      v408 = v762;
      v409 = v681;
      outlined init with copy of Date?(v713, v681, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v402 + 48))(v409, 1, v408) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v409, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v597 = v661;
        (*(v402 + 32))(v661, v409, v408);
        (*(v402 + 40))(v386 + v735, v597, v408);
      }

      v598 = v731;
      v599 = v730;
      *&v765 = 0;
      v600 = v732;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v713, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v703, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v693, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v694, type metadata accessor for ShapeType);
      (*(v598 + 40))(&v738[v386], v600, v599);
      v601 = v675;
      _s8PaperKit0A6MarkupVWObTm_0(v386, v675, type metadata accessor for Shape);
      v602 = 150.0;
      v603 = v601;
      v604 = 150.0;
      goto LABEL_75;
    }

    if (v733 == 6)
    {
      v733 = v210;
      *v695 = 6;
      swift_storeEnumTagMultiPayload();
      v218 = type metadata accessor for Color(0);
      v219 = *(v218 - 8);
      v220 = *(v219 + 56);
      v221 = (v219 + 56);
      v220(v705, 1, 1, v218);
      v220(v706, 1, 1, v218);
      v723 = v221;
      v222 = v220;
      v724 = v220;
      (*(v763 + 56))(v714, 1, 1, v762);
      type metadata accessor for CGRect(0);
      v728 = v223;
      v727 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v765 = 0u;
      v766 = 0u;
      v224 = v676;
      CRRegister.init(wrappedValue:)();
      v225 = v759;
      *&v765 = 0;
      v722 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v729 = v225[6];
      v226 = v760;
      v222(v760, 1, 1, v218);
      v227 = v734;
      outlined init with copy of Date?(v226, v734, &_s8PaperKit5ColorVSgMd);
      v725 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v226, &_s8PaperKit5ColorVSgMd);
      v726 = v225[7];
      (v724)(v226, 1, 1, v218);
      outlined init with copy of Date?(v226, v227, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v226, &_s8PaperKit5ColorVSgMd);
      v734 = v225[8];
      *&v765 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v723 = v225[9];
      v228 = v745;
      swift_storeEnumTagMultiPayload();
      v724 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v228, v735, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v228, type metadata accessor for ShapeType);
      *&v765 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      CRRegister.init(wrappedValue:)();
      v229 = v225[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v735 = v229;
      CRAttributedString.init(_:)();
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v231 = v738;
      (*(*(v230 - 8) + 56))(v738, 1, 1, v230);
      outlined init with copy of Date?(v231, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v231, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v232 = v225[15];
      *&v765 = 0;
      v233 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v738 = v232;
      v737 = v233;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v234 = type metadata accessor for StrokeStyle(0);
      v235 = v741;
      (*(*(v234 - 8) + 56))(v741, 1, 1, v234);
      outlined init with copy of Date?(v235, v739, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v235, &_s8PaperKit11StrokeStyleOSgMd);
      v236 = type metadata accessor for Shadow();
      v237 = v744;
      (*(*(v236 - 8) + 56))(v744, 1, 1, v236);
      outlined init with copy of Date?(v237, v742, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v237, &_s8PaperKit6ShadowVSgMd);
      v766 = 0u;
      v767 = 0u;
      v765 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v765 = 0u;
      v766 = 0u;
      v238 = v746;
      CRRegister.init(_:)();
      (*(v748 + 40))(v224, v238, v747);
      _s8PaperKit0A6MarkupVWOcTm_0(v695, v228, v724);
      v239 = v749;
      CRRegister.init(_:)();
      (*(v751 + 40))(v224 + v723, v239, v750);
      *&v765 = 0x4014000000000000;
      v240 = v752;
      CRRegister.init(_:)();
      (*(v753 + 40))(v224 + v734, v240, v757);
      v241 = v760;
      outlined init with copy of Date?(v705, v760, &_s8PaperKit5ColorVSgMd);
      v242 = v754;
      CRRegister.init(_:)();
      v243 = v755;
      v244 = *(v756 + 40);
      v244(v224 + v726, v242, v755);
      outlined init with copy of Date?(v706, v241, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(_:)();
      v245 = v243;
      v246 = v762;
      v244(v224 + v729, v242, v245);
      v247 = v763;
      v248 = v683;
      outlined init with copy of Date?(v714, v683, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v247 + 48))(v248, 1, v246) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v248, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v629 = v662;
        (*(v247 + 32))(v662, v248, v246);
        (*(v247 + 40))(v224 + v735, v629, v246);
      }

      v630 = v730;
      *&v765 = 0;
      v631 = v732;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v714, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v706, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v705, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v695, type metadata accessor for ShapeType);
      (*(v731 + 40))(&v738[v224], v631, v630);
      v632 = v224;
      v601 = v733;
      _s8PaperKit0A6MarkupVWObTm_0(v632, v733, type metadata accessor for Shape);
      *&v633 = 170.0;
    }

    else
    {
      v504 = v209;
      v733 = v207;
      if (one-time initialization token for defaultStar != -1)
      {
        swift_once();
      }

      v505 = qword_1EC7C40F8;
      v506 = v697;
      *v697 = static UIConstants.defaultStar;
      v506[1] = v505;
      swift_storeEnumTagMultiPayload();
      v507 = type metadata accessor for Color(0);
      v508 = *(v507 - 8);
      v509 = *(v508 + 56);
      v510 = (v508 + 56);
      v509(v707, 1, 1, v507);
      v509(v708, 1, 1, v507);
      v723 = v510;
      v724 = v509;
      (*(v763 + 56))(v715, 1, 1, v762);
      type metadata accessor for CGRect(0);
      v728 = v511;
      v727 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v765 = 0u;
      v766 = 0u;
      CRRegister.init(wrappedValue:)();
      v512 = v759;
      *&v765 = 0;
      v722 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v729 = v512[6];
      v513 = v760;
      v509(v760, 1, 1, v507);
      v514 = v734;
      outlined init with copy of Date?(v513, v734, &_s8PaperKit5ColorVSgMd);
      v725 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v513, &_s8PaperKit5ColorVSgMd);
      v726 = v512[7];
      (v724)(v513, 1, 1, v507);
      outlined init with copy of Date?(v513, v514, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v513, &_s8PaperKit5ColorVSgMd);
      v734 = v512[8];
      *&v765 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v723 = v512[9];
      v515 = v745;
      swift_storeEnumTagMultiPayload();
      v724 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v515, v735, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v515, type metadata accessor for ShapeType);
      *&v765 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      BYTE8(v765) = 0;
      CRRegister.init(wrappedValue:)();
      v516 = v512[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v735 = v516;
      CRAttributedString.init(_:)();
      v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v518 = v738;
      (*(*(v517 - 8) + 56))(v738, 1, 1, v517);
      outlined init with copy of Date?(v518, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v518, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v519 = v512[15];
      *&v765 = 0;
      v520 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v738 = v519;
      v737 = v520;
      CRRegister.init(wrappedValue:)();
      *&v765 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v521 = type metadata accessor for StrokeStyle(0);
      v522 = v741;
      (*(*(v521 - 8) + 56))(v741, 1, 1, v521);
      outlined init with copy of Date?(v522, v739, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v522, &_s8PaperKit11StrokeStyleOSgMd);
      v523 = type metadata accessor for Shadow();
      v524 = v744;
      (*(*(v523 - 8) + 56))(v744, 1, 1, v523);
      outlined init with copy of Date?(v524, v742, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v524, &_s8PaperKit6ShadowVSgMd);
      v766 = 0u;
      v767 = 0u;
      v765 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v765 = 0u;
      v766 = 0u;
      v525 = v746;
      CRRegister.init(_:)();
      (*(v748 + 40))(v504, v525, v747);
      _s8PaperKit0A6MarkupVWOcTm_0(v697, v515, v724);
      v526 = v749;
      CRRegister.init(_:)();
      v527 = v763;
      (*(v751 + 40))(v504 + v723, v526, v750);
      *&v765 = 0x4014000000000000;
      v528 = v752;
      CRRegister.init(_:)();
      (*(v753 + 40))(v504 + v734, v528, v757);
      v529 = v760;
      outlined init with copy of Date?(v707, v760, &_s8PaperKit5ColorVSgMd);
      v530 = v754;
      CRRegister.init(_:)();
      v531 = v755;
      v532 = *(v756 + 40);
      v532(v504 + v726, v530, v755);
      outlined init with copy of Date?(v708, v529, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(_:)();
      v532(v504 + v729, v530, v531);
      v533 = v762;
      v534 = v684;
      outlined init with copy of Date?(v715, v684, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v527 + 48))(v534, 1, v533) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v534, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v637 = v666;
        (*(v527 + 32))(v666, v534, v533);
        (*(v527 + 40))(v504 + v735, v637, v533);
      }

      v638 = v731;
      v639 = v730;
      *&v765 = 0;
      v640 = v732;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v715, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v708, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v707, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v697, type metadata accessor for ShapeType);
      (*(v638 + 40))(&v738[v504], v640, v639);
      v601 = v733;
      _s8PaperKit0A6MarkupVWObTm_0(v504, v733, type metadata accessor for Shape);
      *&v633 = 180.0;
    }

LABEL_74:
    v602 = *&v633;
    v603 = v601;
    v604 = *&v633;
LABEL_75:
    specialized NewCanvasElementDelegate.addShape(_:size:)(v603, v602, v604);
    v608 = v601;
    return _s8PaperKit0A6MarkupVWOhTm_0(v608, type metadata accessor for Shape);
  }

  if (v733 == 8)
  {
    v410 = v206;
    v729 = v204;
    if (one-time initialization token for defaultLine != -1)
    {
      swift_once();
    }

    v411 = *algn_1EC7C40D0;
    v412 = v699;
    *v699 = static UIConstants.defaultLine;
    v412[1] = v411;
    v412[2] = xmmword_1EC7C40E0;
    swift_storeEnumTagMultiPayload();
    v413 = type metadata accessor for Color(0);
    v414 = *(v413 - 8);
    v415 = *(v414 + 56);
    v416 = v414 + 56;
    v415(v711, 1, 1, v413);
    v415(v712, 1, 1, v413);
    v722 = v416;
    v723 = v415;
    (*(v763 + 56))(v717, 1, 1, v762);
    type metadata accessor for CGRect(0);
    v727 = v417;
    v726 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v765 = 0u;
    v766 = 0u;
    CRRegister.init(wrappedValue:)();
    v418 = v759;
    *&v765 = 0;
    v733 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v728 = v418[6];
    v419 = v760;
    v415(v760, 1, 1, v413);
    v420 = v734;
    outlined init with copy of Date?(v419, v734, &_s8PaperKit5ColorVSgMd);
    v724 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v419, &_s8PaperKit5ColorVSgMd);
    v725 = v418[7];
    (v723)(v419, 1, 1, v413);
    outlined init with copy of Date?(v419, v420, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v419, &_s8PaperKit5ColorVSgMd);
    v734 = v418[8];
    *&v765 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v421 = v418[9];
    v422 = v745;
    swift_storeEnumTagMultiPayload();
    v723 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v422, v735, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v422, type metadata accessor for ShapeType);
    *&v765 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v765 = 0;
    BYTE8(v765) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v765 = 0;
    BYTE8(v765) = 0;
    CRRegister.init(wrappedValue:)();
    v423 = v418[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v735 = v423;
    CRAttributedString.init(_:)();
    v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v425 = v738;
    (*(*(v424 - 8) + 56))(v738, 1, 1, v424);
    outlined init with copy of Date?(v425, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v425, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v426 = v418[15];
    *&v765 = 0;
    v427 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v738 = v426;
    v737 = v427;
    CRRegister.init(wrappedValue:)();
    *&v765 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v428 = type metadata accessor for StrokeStyle(0);
    v429 = v741;
    (*(*(v428 - 8) + 56))(v741, 1, 1, v428);
    outlined init with copy of Date?(v429, v739, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v429, &_s8PaperKit11StrokeStyleOSgMd);
    v430 = type metadata accessor for Shadow();
    v431 = v744;
    (*(*(v430 - 8) + 56))(v744, 1, 1, v430);
    outlined init with copy of Date?(v431, v742, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v431, &_s8PaperKit6ShadowVSgMd);
    v766 = 0u;
    v767 = 0u;
    v765 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v765 = 0u;
    v766 = 0u;
    v432 = v746;
    CRRegister.init(_:)();
    (*(v748 + 40))(v410, v432, v747);
    _s8PaperKit0A6MarkupVWOcTm_0(v699, v422, v723);
    v433 = v749;
    CRRegister.init(_:)();
    (*(v751 + 40))(v410 + v421, v433, v750);
    *&v765 = 0x4014000000000000;
    v434 = v752;
    CRRegister.init(_:)();
    (*(v753 + 40))(v410 + v734, v434, v757);
    v435 = v760;
    outlined init with copy of Date?(v711, v760, &_s8PaperKit5ColorVSgMd);
    v436 = v754;
    CRRegister.init(_:)();
    v437 = v755;
    v438 = *(v756 + 40);
    v438(v410 + v725, v436, v755);
    outlined init with copy of Date?(v712, v435, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v439 = v436;
    v440 = v763;
    v438(v410 + v728, v439, v437);
    v441 = v762;
    v442 = v686;
    outlined init with copy of Date?(v717, v686, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v440 + 48))(v442, 1, v441) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v442, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v605 = v667;
      (*(v440 + 32))(v667, v442, v441);
      (*(v440 + 40))(v410 + v735, v605, v441);
    }

    *&v765 = 0;
    v606 = v732;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v717, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v712, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v711, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v699, type metadata accessor for ShapeType);
    (*(v731 + 40))(&v738[v410], v606, v730);
    v607 = v729;
    _s8PaperKit0A6MarkupVWObTm_0(v410, v729, type metadata accessor for Shape);
    *&v765 = 1;
    BYTE8(v765) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    CRRegister.wrappedValue.setter();
    specialized NewCanvasElementDelegate.addLine(_:size:)(v607, 150.0, 150.0);
    v608 = v607;
    return _s8PaperKit0A6MarkupVWOhTm_0(v608, type metadata accessor for Shape);
  }

  if (v733 == 9)
  {
    v733 = v205;
    *v696 = xmmword_1D405A650;
    v292 = v208;
    swift_storeEnumTagMultiPayload();
    v293 = type metadata accessor for Color(0);
    v294 = *(v293 - 8);
    v295 = *(v294 + 56);
    v296 = (v294 + 56);
    v295(v709, 1, 1, v293);
    v295(v710, 1, 1, v293);
    v723 = v296;
    v724 = v295;
    (*(v763 + 56))(v716, 1, 1, v762);
    type metadata accessor for CGRect(0);
    v728 = v297;
    v727 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v765 = 0u;
    v766 = 0u;
    CRRegister.init(wrappedValue:)();
    v298 = v759;
    *&v765 = 0;
    v722 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v729 = v298[6];
    v299 = v760;
    v295(v760, 1, 1, v293);
    v300 = v734;
    outlined init with copy of Date?(v299, v734, &_s8PaperKit5ColorVSgMd);
    v725 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v299, &_s8PaperKit5ColorVSgMd);
    v726 = v298[7];
    (v724)(v299, 1, 1, v293);
    outlined init with copy of Date?(v299, v300, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v299, &_s8PaperKit5ColorVSgMd);
    v734 = v298[8];
    *&v765 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v723 = v298[9];
    v301 = v745;
    swift_storeEnumTagMultiPayload();
    v724 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v301, v735, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v301, type metadata accessor for ShapeType);
    *&v765 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v765 = 0;
    BYTE8(v765) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v765 = 0;
    BYTE8(v765) = 0;
    CRRegister.init(wrappedValue:)();
    v302 = v298[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v735 = v302;
    CRAttributedString.init(_:)();
    v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v304 = v738;
    (*(*(v303 - 8) + 56))(v738, 1, 1, v303);
    outlined init with copy of Date?(v304, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v304, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v305 = v298[15];
    *&v765 = 0;
    v306 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v738 = v305;
    v737 = v306;
    CRRegister.init(wrappedValue:)();
    *&v765 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v307 = type metadata accessor for StrokeStyle(0);
    v308 = v741;
    (*(*(v307 - 8) + 56))(v741, 1, 1, v307);
    outlined init with copy of Date?(v308, v739, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v308, &_s8PaperKit11StrokeStyleOSgMd);
    v309 = type metadata accessor for Shadow();
    v310 = v744;
    (*(*(v309 - 8) + 56))(v744, 1, 1, v309);
    outlined init with copy of Date?(v310, v742, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v310, &_s8PaperKit6ShadowVSgMd);
    v766 = 0u;
    v767 = 0u;
    v765 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v765 = 0u;
    v766 = 0u;
    v311 = v746;
    CRRegister.init(_:)();
    (*(v748 + 40))(v292, v311, v747);
    _s8PaperKit0A6MarkupVWOcTm_0(v696, v301, v724);
    v312 = v749;
    CRRegister.init(_:)();
    v313 = v763;
    (*(v751 + 40))(v292 + v723, v312, v750);
    *&v765 = 0x4014000000000000;
    v314 = v752;
    CRRegister.init(_:)();
    (*(v753 + 40))(v292 + v734, v314, v757);
    v315 = v760;
    outlined init with copy of Date?(v709, v760, &_s8PaperKit5ColorVSgMd);
    v316 = v754;
    CRRegister.init(_:)();
    v317 = v755;
    v318 = *(v756 + 40);
    v318(v292 + v726, v316, v755);
    outlined init with copy of Date?(v710, v315, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v318(v292 + v729, v316, v317);
    v319 = v762;
    v320 = v685;
    outlined init with copy of Date?(v716, v685, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v313 + 48))(v320, 1, v319) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v320, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v634 = v665;
      (*(v313 + 32))(v665, v320, v319);
      (*(v313 + 40))(v292 + v735, v634, v319);
    }

    v635 = v731;
    *&v765 = 0;
    v636 = v732;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v716, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v710, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v709, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v696, type metadata accessor for ShapeType);
    (*(v635 + 40))(&v738[v292], v636, v730);
    v624 = v292;
LABEL_71:
    v601 = v733;
    _s8PaperKit0A6MarkupVWObTm_0(v624, v733, type metadata accessor for Shape);
    *&v633 = 150.0;
    goto LABEL_74;
  }

  v535 = v214;
  v728 = v213;
  v733 = v212;
  v536 = MEMORY[0x1E69E7D40];
  v537 = (*((*MEMORY[0x1E69E7D40] & *v758) + 0x990))(1.0, 1.0);
  v539 = v538;
  v541 = v540;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v768._object = 0x80000001D4083BC0;
  v542.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v542.value._object = 0xEB00000000656C62;
  v543._countAndFlagsBits = 1954047316;
  v543._object = 0xE400000000000000;
  v544._countAndFlagsBits = 0;
  v544._object = 0xE000000000000000;
  v768._countAndFlagsBits = 0xD000000000000024;
  v545 = NSLocalizedString(_:tableName:bundle:value:comment:)(v543, v542, paperKitBundle, v544, v768);
  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  (*((*v536 & *v758) + 0x348))();
  if (v546)
  {
    AnyCanvas.scaleFactorForNewElements.getter();
  }

  v547 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v548 = MEMORY[0x1DA6CCED0](v545._countAndFlagsBits, v545._object);

  type metadata accessor for NSAttributedStringKey(0);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v547 initWithString:v548 attributes:isa];

  MEMORY[0x1EEE9AC00](v550);
  v551 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v552 = type metadata accessor for Color(0);
  v553 = *(v552 + 20);
  v554 = type metadata accessor for UnknownValueProperties();
  (*(*(v554 - 8) + 56))(v718 + v553, 1, 1, v554);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!result)
  {
    __break(1u);
    goto LABEL_85;
  }

  v556 = result;
  v727 = v551;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_85:
    __break(1u);
    return result;
  }

  v557 = result;

  *v718 = v557;
  v558 = *(v552 - 8);
  v559 = *(v558 + 56);
  v560 = (v558 + 56);
  v559();
  (v559)(v689, 1, 1, v552);
  v721 = v560;
  v561 = v762;
  v562 = v763;
  v563 = v690;
  (*(v763 + 16))(v690, v692, v762);
  (*(v562 + 56))(v563, 0, 1, v561);
  type metadata accessor for CGRect(0);
  v720 = v552;
  v725 = v564;
  v724 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  v765 = 0u;
  v766 = 0u;
  CRRegister.init(wrappedValue:)();
  v565 = v759;
  *&v765 = 0;
  v729 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v726 = v565[6];
  v566 = v760;
  (v559)(v760, 1, 1, v552);
  v567 = v734;
  outlined init with copy of Date?(v566, v734, &_s8PaperKit5ColorVSgMd);
  v722 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v566, &_s8PaperKit5ColorVSgMd);
  v723 = v565[7];
  (v559)(v566, 1, 1, v720);
  outlined init with copy of Date?(v566, v567, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v566, &_s8PaperKit5ColorVSgMd);
  v734 = v565[8];
  *&v765 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v720 = v565[9];
  v568 = v745;
  swift_storeEnumTagMultiPayload();
  v721 = type metadata accessor for ShapeType;
  _s8PaperKit0A6MarkupVWOcTm_0(v568, v735, type metadata accessor for ShapeType);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit0A6MarkupVWOhTm_0(v568, type metadata accessor for ShapeType);
  *&v765 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v765 = 0;
  BYTE8(v765) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v765 = 0;
  BYTE8(v765) = 0;
  CRRegister.init(wrappedValue:)();
  v735 = v565[13];
  CRAttributedString.init(_:)();
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v570 = v738;
  (*(*(v569 - 8) + 56))(v738, 1, 1, v569);
  outlined init with copy of Date?(v570, v736, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v570, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v571 = v565[15];
  *&v765 = 0;
  v572 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v738 = v571;
  v737 = v572;
  CRRegister.init(wrappedValue:)();
  *&v765 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v573 = type metadata accessor for StrokeStyle(0);
  v574 = v741;
  (*(*(v573 - 8) + 56))(v741, 1, 1, v573);
  outlined init with copy of Date?(v574, v739, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v574, &_s8PaperKit11StrokeStyleOSgMd);
  v575 = type metadata accessor for Shadow();
  v576 = v744;
  (*(*(v575 - 8) + 56))(v744, 1, 1, v575);
  outlined init with copy of Date?(v576, v742, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v576, &_s8PaperKit6ShadowVSgMd);
  v766 = 0u;
  v767 = 0u;
  v765 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v765 = v537 + -0.5;
  *(&v765 + 1) = v539 + -0.5;
  __asm { FMOV            V0.2D, #1.0 }

  v766 = _Q0;
  v582 = v746;
  CRRegister.init(_:)();
  (*(v748 + 40))(v535, v582, v747);
  _s8PaperKit0A6MarkupVWOcTm_0(v691, v568, v721);
  v583 = v749;
  CRRegister.init(_:)();
  (*(v751 + 40))(v535 + v720, v583, v750);
  *&v765 = 0x4014000000000000;
  v584 = v752;
  CRRegister.init(_:)();
  (*(v753 + 40))(v535 + v734, v584, v757);
  v585 = v760;
  outlined init with copy of Date?(v718, v760, &_s8PaperKit5ColorVSgMd);
  v586 = v754;
  CRRegister.init(_:)();
  v587 = v755;
  v588 = *(v756 + 40);
  v588(v535 + v723, v586, v755);
  outlined init with copy of Date?(v689, v585, &_s8PaperKit5ColorVSgMd);
  v589 = v763;
  CRRegister.init(_:)();
  v588(v535 + v726, v586, v587);
  v590 = v762;
  v591 = v669;
  outlined init with copy of Date?(v690, v669, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v589 + 48))(v591, 1, v590) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v591, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v641 = v668;
    (*(v589 + 32))(v668, v591, v590);
    (*(v589 + 40))(v535 + v735, v641, v590);
  }

  v642 = v731;
  v643 = v730;
  v644 = v732;
  *&v765 = 3;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v690, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v689, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v718, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit0A6MarkupVWOhTm_0(v691, type metadata accessor for ShapeType);
  (*(v642 + 40))(&v738[v535], v644, v643);
  v645 = v733;
  _s8PaperKit0A6MarkupVWObTm_0(v535, v733, type metadata accessor for Shape);
  *&v765 = 0;
  CRRegister.wrappedValue.setter();
  CRRegister.value.getter();
  if (vabdd_f64(*&v765, v541) > 0.01)
  {
    *&v765 = v541;
    CRRegister.value.setter();
  }

  _s8PaperKit0A6MarkupVWOcTm_0(v645, v728, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  v646 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape);
  v647 = v671;
  v648 = v759;
  Capsule.init(_:id:)();
  v649 = v758;
  v650 = MEMORY[0x1E69E7D40];
  v651 = (*((*MEMORY[0x1E69E7D40] & *v758) + 0xA38))(v647, v648, v646, &protocol witness table for Shape);
  v652 = (*((*v650 & *v649) + 0xA40))(v651);
  if (v652)
  {
    v653 = v652;
    v654 = (*((*v650 & *v652) + 0x318))();

    if (v654)
    {
      *(*&v654[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics] + 17) = 12;

      FormTextFieldAnalytics.recordEvent()();
    }
  }

  (*(v672 + 8))(v647, v673);
  _s8PaperKit0A6MarkupVWOhTm_0(v733, type metadata accessor for Shape);
  return (*(v763 + 8))(v692, v762);
}

{
  LODWORD(v740) = a1;
  v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v671);
  v670 = &v655 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v669 = &v655 - v3;
  v677 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v677);
  v674 = &v655 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v679 = *(v680 - 8);
  MEMORY[0x1EEE9AC00](v680);
  v678 = &v655 - v5;
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v672 = &v655 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v675 = *(v676 - 8);
  MEMORY[0x1EEE9AC00](v676);
  v673 = &v655 - v8;
  v738 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v739 = *(v738 - 8);
  MEMORY[0x1EEE9AC00](v738);
  v737 = &v655 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v11 = *(v10 - 8);
  v768 = v10;
  v769 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v667 = &v655 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v699 = &v655 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v664 = &v655 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v666 = &v655 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v665 = &v655 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v661 = &v655 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v660 = &v655 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v663 = &v655 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v662 = &v655 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v659 = &v655 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v658 = &v655 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v657 = &v655 - v34;
  v761 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v762 = *(v761 - 8);
  MEMORY[0x1EEE9AC00](v761);
  v760 = &v655 - v35;
  v764 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v759 = *(v764 - 8);
  MEMORY[0x1EEE9AC00](v764);
  v758 = &v655 - v36;
  v756 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v757 = *(v756 - 8);
  MEMORY[0x1EEE9AC00](v756);
  v755 = &v655 - v37;
  v753 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v754 = *(v753 - 8);
  MEMORY[0x1EEE9AC00](v753);
  v752 = &v655 - v38;
  v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v749);
  v748 = &v655 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v750 = &v655 - v41;
  v746 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v746);
  v745 = &v655 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v747 = &v655 - v44;
  v743 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v743);
  v742 = &v655 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v744 = &v655 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v668 = &v655 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v697 = &v655 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v692 = &v655 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v723 = (&v655 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v693 = &v655 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v724 = &v655 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v691 = &v655 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v722 = &v655 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v690 = &v655 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v721 = (&v655 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v688 = &v655 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v720 = &v655 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v689 = &v655 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v694 = &v655 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v687 = &v655 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v695 = &v655 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v686 = &v655 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v728 = (&v655 - v83);
  MEMORY[0x1EEE9AC00](v84);
  v685 = &v655 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v727 = &v655 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v684 = &v655 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v726 = &v655 - v91;
  v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v767);
  v696 = &v655 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v725 = (&v655 - v94);
  MEMORY[0x1EEE9AC00](v95);
  v717 = &v655 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v716 = &v655 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v719 = &v655 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v718 = &v655 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v715 = &v655 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v714 = &v655 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v713 = &v655 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v712 = &v655 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v710 = &v655 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v700 = &v655 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v733 = &v655 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v711 = &v655 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v732 = &v655 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v709 = &v655 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v731 = &v655 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v708 = &v655 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v730 = &v655 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v707 = &v655 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v763 = &v655 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v766 = &v655 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v729 = &v655 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v705 = &v655 - v138;
  v770 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v770);
  v698 = &v655 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v140);
  v703 = (&v655 - v141);
  MEMORY[0x1EEE9AC00](v142);
  v706 = (&v655 - v143);
  MEMORY[0x1EEE9AC00](v144);
  v704 = (&v655 - v145);
  MEMORY[0x1EEE9AC00](v146);
  v702 = (&v655 - v147);
  MEMORY[0x1EEE9AC00](v148);
  v701 = (&v655 - v149);
  MEMORY[0x1EEE9AC00](v150);
  v735 = &v655 - v151;
  MEMORY[0x1EEE9AC00](v152);
  v736 = &v655 - v153;
  MEMORY[0x1EEE9AC00](v154);
  v734 = &v655 - v155;
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v655 - v157;
  MEMORY[0x1EEE9AC00](v159);
  v741 = &v655 - v160;
  MEMORY[0x1EEE9AC00](v161);
  v751 = &v655 - v162;
  MEMORY[0x1EEE9AC00](v163);
  v165 = &v655 - v164;
  v765 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v765);
  MEMORY[0x1EEE9AC00](v166);
  MEMORY[0x1EEE9AC00](v167);
  MEMORY[0x1EEE9AC00](v168);
  MEMORY[0x1EEE9AC00](v169);
  MEMORY[0x1EEE9AC00](v170);
  MEMORY[0x1EEE9AC00](v171);
  MEMORY[0x1EEE9AC00](&v655 - v172);
  MEMORY[0x1EEE9AC00](v173);
  MEMORY[0x1EEE9AC00](v174);
  v683 = &v655 - v175;
  MEMORY[0x1EEE9AC00](v176);
  MEMORY[0x1EEE9AC00](v177);
  v681 = &v655 - v178;
  MEMORY[0x1EEE9AC00](v179);
  v682 = &v655 - v180;
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v655 - v182;
  MEMORY[0x1EEE9AC00](v184);
  MEMORY[0x1EEE9AC00](v185);
  v187 = &v655 - v186;
  MEMORY[0x1EEE9AC00](v188);
  v190 = &v655 - v189;
  MEMORY[0x1EEE9AC00](v191);
  v193 = &v655 - v192;
  MEMORY[0x1EEE9AC00](v194);
  v196 = (&v655 - v195);
  MEMORY[0x1EEE9AC00](v197);
  v199 = &v655 - v198;
  MEMORY[0x1EEE9AC00](v200);
  v202 = (&v655 - v201);
  MEMORY[0x1EEE9AC00](v203);
  v205 = &v655 - v204;
  MEMORY[0x1EEE9AC00](v206);
  v219 = &v655 - v218;
  v220 = v740;
  if (v740 <= 4u)
  {
    v719 = v205;
    v720 = v199;
    v721 = v202;
    v722 = v193;
    v723 = v196;
    v724 = v187;
    v725 = v190;
    v740 = v183;
    v252 = v165;
    v253 = v158;
    v254 = v736;
    v255 = v735;
    v256 = v729;
    v257 = v730;
    v258 = v731;
    v259 = v732;
    v260 = v733;
    v261 = v726;
    v262 = v727;
    v263 = v728;
    if (v220 <= 1)
    {
      if (!v220)
      {
        v740 = v219;
        v655 = v252;
        swift_storeEnumTagMultiPayload();
        v324 = type metadata accessor for Color(0);
        v325 = *(v324 - 8);
        v326 = *(v325 + 56);
        v327 = (v325 + 56);
        v326(v705, 1, 1, v324);
        v326(v256, 1, 1, v324);
        v730 = v327;
        v731 = v326;
        (*(v769 + 56))(v261, 1, 1, v768);
        type metadata accessor for CGRect(0);
        v735 = v328;
        v734 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v772 = 0u;
        v773 = 0u;
        v329 = v719;
        CRRegister.init(wrappedValue:)();
        v330 = v765;
        *&v772 = 0;
        v728 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v736 = v330[6];
        v331 = v766;
        v326(v766, 1, 1, v324);
        v332 = v763;
        outlined init with copy of Date?(v331, v763, &_s8PaperKit5ColorVSgMd);
        v732 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v331, &_s8PaperKit5ColorVSgMd);
        v733 = v330[7];
        (v731)(v331, 1, 1, v324);
        outlined init with copy of Date?(v331, v332, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v331, &_s8PaperKit5ColorVSgMd);
        v763 = v330[8];
        *&v772 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v730 = v330[9];
        v333 = v751;
        swift_storeEnumTagMultiPayload();
        v731 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v333, v741, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v333, type metadata accessor for ShapeType);
        *&v772 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        BYTE8(v772) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        BYTE8(v772) = 0;
        CRRegister.init(wrappedValue:)();
        v334 = v330[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v741 = v334;
        CRAttributedString.init(_:)();
        v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v336 = v744;
        (*(*(v335 - 8) + 56))(v744, 1, 1, v335);
        outlined init with copy of Date?(v336, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v336, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v337 = v330[15];
        *&v772 = 0;
        v338 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v744 = v337;
        v743 = v338;
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v339 = type metadata accessor for StrokeStyle(0);
        v340 = v747;
        (*(*(v339 - 8) + 56))(v747, 1, 1, v339);
        outlined init with copy of Date?(v340, v745, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v340, &_s8PaperKit11StrokeStyleOSgMd);
        v341 = type metadata accessor for Shadow();
        v342 = v750;
        (*(*(v341 - 8) + 56))(v750, 1, 1, v341);
        outlined init with copy of Date?(v342, v748, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v342, &_s8PaperKit6ShadowVSgMd);
        v773 = 0u;
        v774 = 0u;
        v772 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v772 = 0u;
        v773 = 0u;
        v343 = v752;
        CRRegister.init(_:)();
        (*(v754 + 40))(v329, v343, v753);
        _s8PaperKit0A6MarkupVWOcTm_0(v655, v333, v731);
        v344 = v755;
        CRRegister.init(_:)();
        v345 = v769;
        (*(v757 + 40))(v329 + v730, v344, v756);
        *&v772 = 0x4014000000000000;
        v346 = v758;
        CRRegister.init(_:)();
        (*(v759 + 40))(v329 + v763, v346, v764);
        v347 = v766;
        outlined init with copy of Date?(v705, v766, &_s8PaperKit5ColorVSgMd);
        v348 = v760;
        CRRegister.init(_:)();
        v349 = *(v762 + 40);
        v350 = v761;
        v349(v329 + v733, v348, v761);
        outlined init with copy of Date?(v729, v347, &_s8PaperKit5ColorVSgMd);
        v351 = v726;
        CRRegister.init(_:)();
        v349(v329 + v736, v348, v350);
        v352 = v768;
        v353 = v684;
        outlined init with copy of Date?(v351, v684, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v345 + 48))(v353, 1, v352) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v353, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v623 = v657;
          (*(v345 + 32))(v657, v353, v352);
          (*(v345 + 40))(v329 + v741, v623, v352);
        }

        v624 = v739;
        v625 = v738;
        v626 = v737;
        *&v772 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v351, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v729, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v705, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v655, type metadata accessor for ShapeType);
        (*(v624 + 40))(&v744[v329], v626, v625);
        v619 = v740;
        _s8PaperKit0A6MarkupVWObTm_0(v329, v740, type metadata accessor for Shape);
        *&v627 = 150.0;
        goto LABEL_66;
      }

      v656 = v253;
      swift_storeEnumTagMultiPayload();
      v477 = type metadata accessor for Color(0);
      v478 = *(v477 - 8);
      v479 = *(v478 + 56);
      v480 = (v478 + 56);
      v479(v707, 1, 1, v477);
      v479(v257, 1, 1, v477);
      v731 = v480;
      v732 = v479;
      (*(v769 + 56))(v262, 1, 1, v768);
      type metadata accessor for CGRect(0);
      v736 = v481;
      v735 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v772 = 0u;
      v773 = 0u;
      v482 = v720;
      CRRegister.init(wrappedValue:)();
      v483 = v765;
      *&v772 = 0;
      v729 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v740 = v483[6];
      v484 = v766;
      v479(v766, 1, 1, v477);
      v485 = v763;
      outlined init with copy of Date?(v484, v763, &_s8PaperKit5ColorVSgMd);
      v733 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v484, &_s8PaperKit5ColorVSgMd);
      v734 = v483[7];
      (v732)(v484, 1, 1, v477);
      outlined init with copy of Date?(v484, v485, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v484, &_s8PaperKit5ColorVSgMd);
      v763 = v483[8];
      *&v772 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v731 = v483[9];
      v486 = v751;
      swift_storeEnumTagMultiPayload();
      v732 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v486, v741, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v486, type metadata accessor for ShapeType);
      *&v772 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      BYTE8(v772) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      BYTE8(v772) = 0;
      CRRegister.init(wrappedValue:)();
      v487 = v483[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v741 = v487;
      CRAttributedString.init(_:)();
      v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v489 = v744;
      (*(*(v488 - 8) + 56))(v744, 1, 1, v488);
      outlined init with copy of Date?(v489, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v489, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v490 = v483[15];
      *&v772 = 0;
      v491 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v744 = v490;
      v743 = v491;
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v492 = type metadata accessor for StrokeStyle(0);
      v493 = v747;
      (*(*(v492 - 8) + 56))(v747, 1, 1, v492);
      outlined init with copy of Date?(v493, v745, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v493, &_s8PaperKit11StrokeStyleOSgMd);
      v494 = type metadata accessor for Shadow();
      v495 = v750;
      (*(*(v494 - 8) + 56))(v750, 1, 1, v494);
      outlined init with copy of Date?(v495, v748, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v495, &_s8PaperKit6ShadowVSgMd);
      v773 = 0u;
      v774 = 0u;
      v772 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v772 = 0u;
      v773 = 0u;
      v496 = v752;
      CRRegister.init(_:)();
      (*(v754 + 40))(v482, v496, v753);
      _s8PaperKit0A6MarkupVWOcTm_0(v656, v486, v732);
      v497 = v755;
      CRRegister.init(_:)();
      v498 = v769;
      (*(v757 + 40))(v482 + v731, v497, v756);
      *&v772 = 0x4014000000000000;
      v499 = v758;
      CRRegister.init(_:)();
      (*(v759 + 40))(v482 + v763, v499, v764);
      v500 = v766;
      outlined init with copy of Date?(v707, v766, &_s8PaperKit5ColorVSgMd);
      v501 = v760;
      CRRegister.init(_:)();
      v502 = *(v762 + 40);
      v503 = v761;
      v502(v482 + v734, v501, v761);
      outlined init with copy of Date?(v730, v500, &_s8PaperKit5ColorVSgMd);
      v504 = v727;
      CRRegister.init(_:)();
      v502(v482 + v740, v501, v503);
      v505 = v768;
      v506 = v685;
      outlined init with copy of Date?(v504, v685, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v498 + 48))(v506, 1, v505) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v506, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v628 = v658;
        (*(v498 + 32))(v658, v506, v505);
        (*(v498 + 40))(v482 + v741, v628, v505);
      }

      v629 = v739;
      v630 = v738;
      v631 = v737;
      v597 = v721;
      *&v772 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v504, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v730, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v707, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v656, type metadata accessor for ShapeType);
      (*(v629 + 40))(&v744[v482], v631, v630);
      _s8PaperKit0A6MarkupVWObTm_0(v482, v597, type metadata accessor for Shape);
      v598 = 150.0;
    }

    else
    {
      if (v220 != 2)
      {
        if (v220 == 3)
        {
          if (one-time initialization token for defaultLine != -1)
          {
            swift_once();
          }

          v264 = *algn_1EC7C40D0;
          *v254 = static UIConstants.defaultLine;
          v254[1] = v264;
          v254[2] = xmmword_1EC7C40E0;
          swift_storeEnumTagMultiPayload();
          v265 = type metadata accessor for Color(0);
          v266 = *(v265 - 8);
          v267 = *(v266 + 56);
          v268 = (v266 + 56);
          v267(v709, 1, 1, v265);
          v267(v259, 1, 1, v265);
          v729 = v268;
          v730 = v267;
          (*(v769 + 56))(v695, 1, 1, v768);
          type metadata accessor for CGRect(0);
          v735 = v269;
          v734 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
          v772 = 0u;
          v773 = 0u;
          v270 = v724;
          CRRegister.init(wrappedValue:)();
          v271 = v765;
          *&v772 = 0;
          v728 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
          CRRegister.init(_:)();
          v740 = v271[6];
          v272 = v766;
          v267(v766, 1, 1, v265);
          v273 = v763;
          outlined init with copy of Date?(v272, v763, &_s8PaperKit5ColorVSgMd);
          v731 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v272, &_s8PaperKit5ColorVSgMd);
          v733 = v271[7];
          (v730)(v272, 1, 1, v265);
          outlined init with copy of Date?(v272, v273, &_s8PaperKit5ColorVSgMd);
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v272, &_s8PaperKit5ColorVSgMd);
          v763 = v271[8];
          *&v772 = 0x4014000000000000;
          CRRegister.init(wrappedValue:)();
          v729 = v271[9];
          v274 = v751;
          swift_storeEnumTagMultiPayload();
          v730 = type metadata accessor for ShapeType;
          _s8PaperKit0A6MarkupVWOcTm_0(v274, v741, type metadata accessor for ShapeType);
          _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
          CRRegister.init(wrappedValue:)();
          _s8PaperKit0A6MarkupVWOhTm_0(v274, type metadata accessor for ShapeType);
          *&v772 = 0x3FF0000000000000;
          CRRegister.init(wrappedValue:)();
          *&v772 = 0;
          BYTE8(v772) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
          CRRegister.init(wrappedValue:)();
          *&v772 = 0;
          BYTE8(v772) = 0;
          CRRegister.init(wrappedValue:)();
          v275 = v271[13];
          lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
          v741 = v275;
          CRAttributedString.init(_:)();
          v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
          v277 = v744;
          (*(*(v276 - 8) + 56))(v744, 1, 1, v276);
          outlined init with copy of Date?(v277, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v277, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          v278 = v271[15];
          *&v772 = 0;
          v279 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
          v744 = v278;
          v743 = v279;
          CRRegister.init(wrappedValue:)();
          *&v772 = 0;
          lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
          CRRegister.init(wrappedValue:)();
          v280 = type metadata accessor for StrokeStyle(0);
          v281 = v747;
          (*(*(v280 - 8) + 56))(v747, 1, 1, v280);
          outlined init with copy of Date?(v281, v745, &_s8PaperKit11StrokeStyleOSgMd);
          lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v281, &_s8PaperKit11StrokeStyleOSgMd);
          v282 = type metadata accessor for Shadow();
          v283 = v750;
          (*(*(v282 - 8) + 56))(v750, 1, 1, v282);
          outlined init with copy of Date?(v283, v748, &_s8PaperKit6ShadowVSgMd);
          lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v283, &_s8PaperKit6ShadowVSgMd);
          v773 = 0u;
          v774 = 0u;
          v772 = 0u;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
          lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
          CRRegister.init(wrappedValue:)();
          UnknownProperties.init()();
          v772 = 0u;
          v773 = 0u;
          v284 = v752;
          CRRegister.init(_:)();
          (*(v754 + 40))(v270, v284, v753);
          _s8PaperKit0A6MarkupVWOcTm_0(v736, v274, v730);
          v285 = v755;
          CRRegister.init(_:)();
          v286 = v769;
          (*(v757 + 40))(v270 + v729, v285, v756);
          *&v772 = 0x4014000000000000;
          v287 = v758;
          CRRegister.init(_:)();
          (*(v759 + 40))(v270 + v763, v287, v764);
          v288 = v766;
          outlined init with copy of Date?(v709, v766, &_s8PaperKit5ColorVSgMd);
          v289 = v760;
          CRRegister.init(_:)();
          v290 = *(v762 + 40);
          v291 = v761;
          v290(v270 + v733, v289, v761);
          outlined init with copy of Date?(v732, v288, &_s8PaperKit5ColorVSgMd);
          v292 = v695;
          CRRegister.init(_:)();
          v290(v270 + v740, v289, v291);
          v293 = v768;
          v294 = v687;
          outlined init with copy of Date?(v292, v687, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          if ((*(v286 + 48))(v294, 1, v293) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v294, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          }

          else
          {
            v610 = v662;
            (*(v286 + 32))(v662, v294, v293);
            (*(v286 + 40))(v270 + v741, v610, v293);
          }

          v611 = v739;
          v612 = v738;
          v613 = v737;
          v614 = v725;
          *&v772 = 0;
          CRRegister.init(_:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v292, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v732, &_s8PaperKit5ColorVSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v709, &_s8PaperKit5ColorVSgMd);
          _s8PaperKit0A6MarkupVWOhTm_0(v736, type metadata accessor for ShapeType);
          (*(v611 + 40))(&v744[v270], v613, v612);
          _s8PaperKit0A6MarkupVWObTm_0(v270, v614, type metadata accessor for Shape);
          specialized NewCanvasElementDelegate.addShape(_:size:)(v614, 150.0, 150.0);
          v609 = v614;
          return _s8PaperKit0A6MarkupVWOhTm_0(v609, type metadata accessor for Shape);
        }

        v736 = v214;
        if (one-time initialization token for defaultCalloutBubble != -1)
        {
          swift_once();
        }

        v446 = qword_1EC7C4110;
        *v255 = static UIConstants.defaultCalloutBubble;
        *(v255 + 16) = v446;
        swift_storeEnumTagMultiPayload();
        v447 = type metadata accessor for Color(0);
        v448 = *(v447 - 8);
        v449 = *(v448 + 56);
        v450 = v448 + 56;
        v449(v711, 1, 1, v447);
        v449(v260, 1, 1, v447);
        v727 = v450;
        v728 = v449;
        (*(v769 + 56))(v694, 1, 1, v768);
        type metadata accessor for CGRect(0);
        v732 = v451;
        v731 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v772 = 0u;
        v773 = 0u;
        v452 = v740;
        CRRegister.init(wrappedValue:)();
        v453 = v765;
        *&v772 = 0;
        v726 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v734 = v453[6];
        v454 = v766;
        v449(v766, 1, 1, v447);
        v455 = v763;
        outlined init with copy of Date?(v454, v763, &_s8PaperKit5ColorVSgMd);
        v729 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v454, &_s8PaperKit5ColorVSgMd);
        v730 = v453[7];
        (v728)(v454, 1, 1, v447);
        outlined init with copy of Date?(v454, v455, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v454, &_s8PaperKit5ColorVSgMd);
        v763 = v453[8];
        *&v772 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v727 = v453[9];
        v456 = v751;
        swift_storeEnumTagMultiPayload();
        v728 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v456, v741, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v456, type metadata accessor for ShapeType);
        *&v772 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        BYTE8(v772) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        BYTE8(v772) = 0;
        CRRegister.init(wrappedValue:)();
        v457 = v453[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v741 = v457;
        CRAttributedString.init(_:)();
        v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v459 = v744;
        (*(*(v458 - 8) + 56))(v744, 1, 1, v458);
        outlined init with copy of Date?(v459, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v459, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v460 = v453[15];
        *&v772 = 0;
        v461 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v744 = v460;
        v743 = v461;
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v462 = type metadata accessor for StrokeStyle(0);
        v463 = v747;
        (*(*(v462 - 8) + 56))(v747, 1, 1, v462);
        outlined init with copy of Date?(v463, v745, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v463, &_s8PaperKit11StrokeStyleOSgMd);
        v464 = type metadata accessor for Shadow();
        v465 = v750;
        (*(*(v464 - 8) + 56))(v750, 1, 1, v464);
        outlined init with copy of Date?(v465, v748, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v465, &_s8PaperKit6ShadowVSgMd);
        v773 = 0u;
        v774 = 0u;
        v772 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v772 = 0u;
        v773 = 0u;
        v466 = v752;
        CRRegister.init(_:)();
        (*(v754 + 40))(v452, v466, v753);
        _s8PaperKit0A6MarkupVWOcTm_0(v735, v456, v728);
        v467 = v755;
        CRRegister.init(_:)();
        v468 = v769;
        (*(v757 + 40))(v452 + v727, v467, v756);
        *&v772 = 0x4014000000000000;
        v469 = v758;
        CRRegister.init(_:)();
        (*(v759 + 40))(v452 + v763, v469, v764);
        v470 = v766;
        outlined init with copy of Date?(v711, v766, &_s8PaperKit5ColorVSgMd);
        v471 = v760;
        CRRegister.init(_:)();
        v472 = *(v762 + 40);
        v473 = v761;
        v472(v452 + v730, v471, v761);
        outlined init with copy of Date?(v733, v470, &_s8PaperKit5ColorVSgMd);
        v474 = v694;
        CRRegister.init(_:)();
        v472(v452 + v734, v471, v473);
        v475 = v768;
        v476 = v689;
        outlined init with copy of Date?(v474, v689, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v468 + 48))(v476, 1, v475) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v476, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v615 = v663;
          (*(v468 + 32))(v663, v476, v475);
          (*(v468 + 40))(v452 + v741, v615, v475);
        }

        v616 = v739;
        v617 = v738;
        v618 = v737;
        *&v772 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v474, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v733, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v711, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v735, type metadata accessor for ShapeType);
        (*(v616 + 40))(&v744[v452], v618, v617);
        v619 = v736;
        _s8PaperKit0A6MarkupVWObTm_0(v452, v736, type metadata accessor for Shape);
        v620 = 165.0;
        v621 = 104.0;
        v622 = v619;
        goto LABEL_73;
      }

      *v734 = 3;
      swift_storeEnumTagMultiPayload();
      v354 = type metadata accessor for Color(0);
      v355 = *(v354 - 8);
      v356 = *(v355 + 56);
      v357 = (v355 + 56);
      v356(v708, 1, 1, v354);
      v356(v258, 1, 1, v354);
      v729 = v357;
      v730 = v356;
      (*(v769 + 56))(v263, 1, 1, v768);
      type metadata accessor for CGRect(0);
      v736 = v358;
      v735 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v772 = 0u;
      v773 = 0u;
      v359 = v722;
      CRRegister.init(wrappedValue:)();
      v360 = v765;
      *&v772 = 0;
      v727 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v740 = v360[6];
      v361 = v766;
      v356(v766, 1, 1, v354);
      v362 = v763;
      outlined init with copy of Date?(v361, v763, &_s8PaperKit5ColorVSgMd);
      v732 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v361, &_s8PaperKit5ColorVSgMd);
      v733 = v360[7];
      (v730)(v361, 1, 1, v354);
      outlined init with copy of Date?(v361, v362, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v361, &_s8PaperKit5ColorVSgMd);
      v763 = v360[8];
      *&v772 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v729 = v360[9];
      v363 = v751;
      swift_storeEnumTagMultiPayload();
      v730 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v363, v741, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v363, type metadata accessor for ShapeType);
      *&v772 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      BYTE8(v772) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      BYTE8(v772) = 0;
      CRRegister.init(wrappedValue:)();
      v364 = v360[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v741 = v364;
      CRAttributedString.init(_:)();
      v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v366 = v744;
      (*(*(v365 - 8) + 56))(v744, 1, 1, v365);
      outlined init with copy of Date?(v366, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v366, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v367 = v360[15];
      *&v772 = 0;
      v368 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v744 = v367;
      v743 = v368;
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v369 = type metadata accessor for StrokeStyle(0);
      v370 = v747;
      (*(*(v369 - 8) + 56))(v747, 1, 1, v369);
      outlined init with copy of Date?(v370, v745, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v370, &_s8PaperKit11StrokeStyleOSgMd);
      v371 = type metadata accessor for Shadow();
      v372 = v750;
      (*(*(v371 - 8) + 56))(v750, 1, 1, v371);
      outlined init with copy of Date?(v372, v748, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v372, &_s8PaperKit6ShadowVSgMd);
      v773 = 0u;
      v774 = 0u;
      v772 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v772 = 0u;
      v773 = 0u;
      v373 = v752;
      CRRegister.init(_:)();
      (*(v754 + 40))(v359, v373, v753);
      _s8PaperKit0A6MarkupVWOcTm_0(v734, v363, v730);
      v374 = v755;
      CRRegister.init(_:)();
      v375 = v769;
      (*(v757 + 40))(v359 + v729, v374, v756);
      *&v772 = 0x4014000000000000;
      v376 = v758;
      CRRegister.init(_:)();
      (*(v759 + 40))(v359 + v763, v376, v764);
      v377 = v766;
      outlined init with copy of Date?(v708, v766, &_s8PaperKit5ColorVSgMd);
      v378 = v760;
      CRRegister.init(_:)();
      v379 = *(v762 + 40);
      v380 = v761;
      v379(v359 + v733, v378, v761);
      outlined init with copy of Date?(v731, v377, &_s8PaperKit5ColorVSgMd);
      v381 = v728;
      CRRegister.init(_:)();
      v379(v359 + v740, v378, v380);
      v382 = v768;
      v383 = v686;
      outlined init with copy of Date?(v381, v686, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v375 + 48))(v383, 1, v382) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v383, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v594 = v659;
        (*(v375 + 32))(v659, v383, v382);
        (*(v375 + 40))(v359 + v741, v594, v382);
      }

      v595 = v738;
      v596 = v737;
      v597 = v723;
      *&v772 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v381, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v731, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v708, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v734, type metadata accessor for ShapeType);
      (*(v739 + 40))(&v744[v359], v596, v595);
      _s8PaperKit0A6MarkupVWObTm_0(v359, v597, type metadata accessor for Shape);
      v598 = 170.0;
    }

    specialized NewCanvasElementDelegate.addShape(_:size:)(v597, v598, v598);
    v609 = v597;
    return _s8PaperKit0A6MarkupVWOhTm_0(v609, type metadata accessor for Shape);
  }

  if (v740 <= 7u)
  {
    if (v740 != 5)
    {
      if (v740 == 6)
      {
        v740 = v213;
        *v702 = 6;
        swift_storeEnumTagMultiPayload();
        v221 = type metadata accessor for Color(0);
        v222 = *(v221 - 8);
        v223 = *(v222 + 56);
        v224 = (v222 + 56);
        v223(v712, 1, 1, v221);
        v223(v713, 1, 1, v221);
        v730 = v224;
        v225 = v223;
        v731 = v223;
        (*(v769 + 56))(v721, 1, 1, v768);
        type metadata accessor for CGRect(0);
        v735 = v226;
        v734 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
        v772 = 0u;
        v773 = 0u;
        v227 = v683;
        CRRegister.init(wrappedValue:)();
        v228 = v765;
        *&v772 = 0;
        v729 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v736 = v228[6];
        v229 = v766;
        v225(v766, 1, 1, v221);
        v230 = v763;
        outlined init with copy of Date?(v229, v763, &_s8PaperKit5ColorVSgMd);
        v732 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v229, &_s8PaperKit5ColorVSgMd);
        v733 = v228[7];
        (v731)(v229, 1, 1, v221);
        outlined init with copy of Date?(v229, v230, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v229, &_s8PaperKit5ColorVSgMd);
        v763 = v228[8];
        *&v772 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v730 = v228[9];
        v231 = v751;
        swift_storeEnumTagMultiPayload();
        v731 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_0(v231, v741, type metadata accessor for ShapeType);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_0(v231, type metadata accessor for ShapeType);
        *&v772 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        BYTE8(v772) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        BYTE8(v772) = 0;
        CRRegister.init(wrappedValue:)();
        v232 = v228[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v741 = v232;
        CRAttributedString.init(_:)();
        v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v234 = v744;
        (*(*(v233 - 8) + 56))(v744, 1, 1, v233);
        outlined init with copy of Date?(v234, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v234, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v235 = v228[15];
        *&v772 = 0;
        v236 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v744 = v235;
        v743 = v236;
        CRRegister.init(wrappedValue:)();
        *&v772 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v237 = type metadata accessor for StrokeStyle(0);
        v238 = v747;
        (*(*(v237 - 8) + 56))(v747, 1, 1, v237);
        outlined init with copy of Date?(v238, v745, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v238, &_s8PaperKit11StrokeStyleOSgMd);
        v239 = type metadata accessor for Shadow();
        v240 = v750;
        (*(*(v239 - 8) + 56))(v750, 1, 1, v239);
        outlined init with copy of Date?(v240, v748, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v240, &_s8PaperKit6ShadowVSgMd);
        v773 = 0u;
        v774 = 0u;
        v772 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v772 = 0u;
        v773 = 0u;
        v241 = v752;
        CRRegister.init(_:)();
        (*(v754 + 40))(v227, v241, v753);
        _s8PaperKit0A6MarkupVWOcTm_0(v702, v231, v731);
        v242 = v755;
        CRRegister.init(_:)();
        (*(v757 + 40))(v227 + v730, v242, v756);
        *&v772 = 0x4014000000000000;
        v243 = v758;
        CRRegister.init(_:)();
        (*(v759 + 40))(v227 + v763, v243, v764);
        v244 = v766;
        outlined init with copy of Date?(v712, v766, &_s8PaperKit5ColorVSgMd);
        v245 = v760;
        CRRegister.init(_:)();
        v246 = *(v762 + 40);
        v247 = v761;
        v246(v227 + v733, v245, v761);
        outlined init with copy of Date?(v713, v244, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(_:)();
        v248 = v247;
        v249 = v768;
        v246(v227 + v736, v245, v248);
        v250 = v769;
        v251 = v690;
        outlined init with copy of Date?(v721, v690, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v250 + 48))(v251, 1, v249) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v251, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v632 = v661;
          (*(v250 + 32))(v661, v251, v249);
          (*(v250 + 40))(v227 + v741, v632, v249);
        }

        v633 = v738;
        v634 = v737;
        *&v772 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v721, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v713, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v712, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_0(v702, type metadata accessor for ShapeType);
        (*(v739 + 40))(&v744[v227], v634, v633);
        v635 = v227;
        v619 = v740;
        _s8PaperKit0A6MarkupVWObTm_0(v635, v740, type metadata accessor for Shape);
        *&v627 = 170.0;
LABEL_66:
        v620 = *&v627;
        v622 = v619;
        v621 = *&v627;
LABEL_73:
        specialized NewCanvasElementDelegate.addShape(_:size:)(v622, v620, v621);
        v609 = v619;
        return _s8PaperKit0A6MarkupVWOhTm_0(v609, type metadata accessor for Shape);
      }

      v507 = v212;
      v740 = v210;
      if (one-time initialization token for defaultStar != -1)
      {
        swift_once();
      }

      v508 = qword_1EC7C40F8;
      v509 = v704;
      *v704 = static UIConstants.defaultStar;
      v509[1] = v508;
      swift_storeEnumTagMultiPayload();
      v510 = type metadata accessor for Color(0);
      v511 = *(v510 - 8);
      v512 = *(v511 + 56);
      v513 = (v511 + 56);
      v512(v714, 1, 1, v510);
      v512(v715, 1, 1, v510);
      v730 = v513;
      v731 = v512;
      (*(v769 + 56))(v722, 1, 1, v768);
      type metadata accessor for CGRect(0);
      v735 = v514;
      v734 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
      v772 = 0u;
      v773 = 0u;
      CRRegister.init(wrappedValue:)();
      v515 = v765;
      *&v772 = 0;
      v729 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v736 = v515[6];
      v516 = v766;
      v512(v766, 1, 1, v510);
      v517 = v763;
      outlined init with copy of Date?(v516, v763, &_s8PaperKit5ColorVSgMd);
      v732 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v516, &_s8PaperKit5ColorVSgMd);
      v733 = v515[7];
      (v731)(v516, 1, 1, v510);
      outlined init with copy of Date?(v516, v517, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v516, &_s8PaperKit5ColorVSgMd);
      v763 = v515[8];
      *&v772 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v730 = v515[9];
      v518 = v751;
      swift_storeEnumTagMultiPayload();
      v731 = type metadata accessor for ShapeType;
      _s8PaperKit0A6MarkupVWOcTm_0(v518, v741, type metadata accessor for ShapeType);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      _s8PaperKit0A6MarkupVWOhTm_0(v518, type metadata accessor for ShapeType);
      *&v772 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      BYTE8(v772) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      BYTE8(v772) = 0;
      CRRegister.init(wrappedValue:)();
      v519 = v515[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v741 = v519;
      CRAttributedString.init(_:)();
      v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v521 = v744;
      (*(*(v520 - 8) + 56))(v744, 1, 1, v520);
      outlined init with copy of Date?(v521, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v521, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v522 = v515[15];
      *&v772 = 0;
      v523 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v744 = v522;
      v743 = v523;
      CRRegister.init(wrappedValue:)();
      *&v772 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v524 = type metadata accessor for StrokeStyle(0);
      v525 = v747;
      (*(*(v524 - 8) + 56))(v747, 1, 1, v524);
      outlined init with copy of Date?(v525, v745, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v525, &_s8PaperKit11StrokeStyleOSgMd);
      v526 = type metadata accessor for Shadow();
      v527 = v750;
      (*(*(v526 - 8) + 56))(v750, 1, 1, v526);
      outlined init with copy of Date?(v527, v748, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v527, &_s8PaperKit6ShadowVSgMd);
      v773 = 0u;
      v774 = 0u;
      v772 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v772 = 0u;
      v773 = 0u;
      v528 = v752;
      CRRegister.init(_:)();
      (*(v754 + 40))(v507, v528, v753);
      _s8PaperKit0A6MarkupVWOcTm_0(v704, v518, v731);
      v529 = v755;
      CRRegister.init(_:)();
      v530 = v769;
      (*(v757 + 40))(v507 + v730, v529, v756);
      *&v772 = 0x4014000000000000;
      v531 = v758;
      CRRegister.init(_:)();
      (*(v759 + 40))(v507 + v763, v531, v764);
      v532 = v766;
      outlined init with copy of Date?(v714, v766, &_s8PaperKit5ColorVSgMd);
      v533 = v760;
      CRRegister.init(_:)();
      v534 = *(v762 + 40);
      v535 = v761;
      v534(v507 + v733, v533, v761);
      outlined init with copy of Date?(v715, v532, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(_:)();
      v534(v507 + v736, v533, v535);
      v536 = v768;
      v537 = v691;
      outlined init with copy of Date?(v722, v691, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v530 + 48))(v537, 1, v536) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v537, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v641 = v665;
        (*(v530 + 32))(v665, v537, v536);
        (*(v530 + 40))(v507 + v741, v641, v536);
      }

      v642 = v739;
      *&v772 = 0;
      v643 = v737;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v722, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v715, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v714, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit0A6MarkupVWOhTm_0(v704, type metadata accessor for ShapeType);
      (*(v642 + 40))(&v744[v507], v643, v738);
      v619 = v740;
      _s8PaperKit0A6MarkupVWObTm_0(v507, v740, type metadata accessor for Shape);
      *&v640 = 180.0;
LABEL_72:
      v620 = *&v640;
      v622 = v619;
      v621 = *&v640;
      goto LABEL_73;
    }

    *v701 = 0x3FB999999999999ALL;
    swift_storeEnumTagMultiPayload();
    v384 = type metadata accessor for Color(0);
    v385 = *(v384 - 8);
    v386 = *(v385 + 56);
    v387 = (v385 + 56);
    v386(v700, 1, 1, v384);
    v386(v710, 1, 1, v384);
    v731 = v387;
    v732 = v386;
    (*(v769 + 56))(v720, 1, 1, v768);
    type metadata accessor for CGRect(0);
    v736 = v388;
    v735 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v772 = 0u;
    v773 = 0u;
    v389 = v681;
    CRRegister.init(wrappedValue:)();
    v390 = v765;
    *&v772 = 0;
    v729 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v740 = v390[6];
    v391 = v766;
    v386(v766, 1, 1, v384);
    v392 = v763;
    outlined init with copy of Date?(v391, v763, &_s8PaperKit5ColorVSgMd);
    v733 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v391, &_s8PaperKit5ColorVSgMd);
    v734 = v390[7];
    (v732)(v391, 1, 1, v384);
    outlined init with copy of Date?(v391, v392, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v391, &_s8PaperKit5ColorVSgMd);
    v763 = v390[8];
    *&v772 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v731 = v390[9];
    v393 = v751;
    swift_storeEnumTagMultiPayload();
    v732 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v393, v741, type metadata accessor for ShapeType);
    v730 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v393, type metadata accessor for ShapeType);
    *&v772 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    BYTE8(v772) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    BYTE8(v772) = 0;
    CRRegister.init(wrappedValue:)();
    v394 = v390[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v741 = v394;
    CRAttributedString.init(_:)();
    v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v396 = v744;
    (*(*(v395 - 8) + 56))(v744, 1, 1, v395);
    outlined init with copy of Date?(v396, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v396, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v397 = v390[15];
    *&v772 = 0;
    v398 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v744 = v397;
    v743 = v398;
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v399 = type metadata accessor for StrokeStyle(0);
    v400 = v747;
    (*(*(v399 - 8) + 56))(v747, 1, 1, v399);
    outlined init with copy of Date?(v400, v745, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v400, &_s8PaperKit11StrokeStyleOSgMd);
    v401 = type metadata accessor for Shadow();
    v402 = v750;
    (*(*(v401 - 8) + 56))(v750, 1, 1, v401);
    outlined init with copy of Date?(v402, v748, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v402, &_s8PaperKit6ShadowVSgMd);
    v773 = 0u;
    v774 = 0u;
    v772 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v772 = 0u;
    v773 = 0u;
    v403 = v752;
    CRRegister.init(_:)();
    (*(v754 + 40))(v389, v403, v753);
    _s8PaperKit0A6MarkupVWOcTm_0(v701, v393, v732);
    v404 = v755;
    CRRegister.init(_:)();
    v405 = v769;
    (*(v757 + 40))(v389 + v731, v404, v756);
    *&v772 = 0x4014000000000000;
    v406 = v758;
    CRRegister.init(_:)();
    (*(v759 + 40))(v389 + v763, v406, v764);
    v407 = v766;
    outlined init with copy of Date?(v700, v766, &_s8PaperKit5ColorVSgMd);
    v408 = v760;
    CRRegister.init(_:)();
    v409 = *(v762 + 40);
    v410 = v761;
    v409(v389 + v734, v408, v761);
    outlined init with copy of Date?(v710, v407, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v409(v389 + v740, v408, v410);
    v411 = v768;
    v412 = v688;
    outlined init with copy of Date?(v720, v688, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v405 + 48))(v412, 1, v411) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v412, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v599 = v660;
      (*(v405 + 32))(v660, v412, v411);
      (*(v405 + 40))(v389 + v741, v599, v411);
    }

    v600 = v739;
    v601 = v738;
    v602 = v737;
    *&v772 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v720, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v710, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v700, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v701, type metadata accessor for ShapeType);
    (*(v600 + 40))(&v744[v389], v602, v601);
    v603 = v389;
    v604 = &v714;
LABEL_69:
    v619 = *(v604 - 32);
    _s8PaperKit0A6MarkupVWObTm_0(v603, v619, type metadata accessor for Shape);
    *&v640 = 150.0;
    goto LABEL_72;
  }

  if (v740 == 8)
  {
    v413 = v209;
    v736 = v207;
    if (one-time initialization token for defaultLine != -1)
    {
      swift_once();
    }

    v414 = *algn_1EC7C40D0;
    v415 = v706;
    *v706 = static UIConstants.defaultLine;
    v415[1] = v414;
    v415[2] = xmmword_1EC7C40E0;
    swift_storeEnumTagMultiPayload();
    v416 = type metadata accessor for Color(0);
    v417 = *(v416 - 8);
    v418 = *(v417 + 56);
    v419 = (v417 + 56);
    v418(v718, 1, 1, v416);
    v418(v719, 1, 1, v416);
    v729 = v419;
    v730 = v418;
    (*(v769 + 56))(v724, 1, 1, v768);
    type metadata accessor for CGRect(0);
    v734 = v420;
    v733 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v772 = 0u;
    v773 = 0u;
    CRRegister.init(wrappedValue:)();
    v421 = v765;
    *&v772 = 0;
    v740 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v735 = v421[6];
    v422 = v766;
    v418(v766, 1, 1, v416);
    v423 = v763;
    outlined init with copy of Date?(v422, v763, &_s8PaperKit5ColorVSgMd);
    v731 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v422, &_s8PaperKit5ColorVSgMd);
    v732 = v421[7];
    (v730)(v422, 1, 1, v416);
    outlined init with copy of Date?(v422, v423, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v422, &_s8PaperKit5ColorVSgMd);
    v730 = v421[8];
    *&v772 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v424 = v421[9];
    v425 = v751;
    swift_storeEnumTagMultiPayload();
    v729 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v425, v741, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v425, type metadata accessor for ShapeType);
    *&v772 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    BYTE8(v772) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    BYTE8(v772) = 0;
    CRRegister.init(wrappedValue:)();
    v426 = v421[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v741 = v426;
    CRAttributedString.init(_:)();
    v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v428 = v744;
    (*(*(v427 - 8) + 56))(v744, 1, 1, v427);
    outlined init with copy of Date?(v428, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v428, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v429 = v421[15];
    *&v772 = 0;
    v430 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v763 = v429;
    v744 = v430;
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v431 = type metadata accessor for StrokeStyle(0);
    v432 = v747;
    (*(*(v431 - 8) + 56))(v747, 1, 1, v431);
    outlined init with copy of Date?(v432, v745, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v432, &_s8PaperKit11StrokeStyleOSgMd);
    v433 = type metadata accessor for Shadow();
    v434 = v750;
    (*(*(v433 - 8) + 56))(v750, 1, 1, v433);
    outlined init with copy of Date?(v434, v748, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v434, &_s8PaperKit6ShadowVSgMd);
    v773 = 0u;
    v774 = 0u;
    v772 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v772 = 0u;
    v773 = 0u;
    v435 = v752;
    CRRegister.init(_:)();
    (*(v754 + 40))(v413, v435, v753);
    _s8PaperKit0A6MarkupVWOcTm_0(v706, v425, v729);
    v436 = v755;
    CRRegister.init(_:)();
    (*(v757 + 40))(v413 + v424, v436, v756);
    *&v772 = 0x4014000000000000;
    v437 = v758;
    CRRegister.init(_:)();
    (*(v759 + 40))(v413 + v730, v437, v764);
    v438 = v766;
    outlined init with copy of Date?(v718, v766, &_s8PaperKit5ColorVSgMd);
    v439 = v760;
    CRRegister.init(_:)();
    v440 = *(v762 + 40);
    v441 = v761;
    v440(v413 + v732, v439, v761);
    outlined init with copy of Date?(v719, v438, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v442 = v439;
    v443 = v769;
    v440(v413 + v735, v442, v441);
    v444 = v768;
    v445 = v693;
    outlined init with copy of Date?(v724, v693, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v443 + 48))(v445, 1, v444) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v445, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v605 = v666;
      (*(v443 + 32))(v666, v445, v444);
      (*(v443 + 40))(v413 + v741, v605, v444);
    }

    v606 = v738;
    v607 = v737;
    *&v772 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v724, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v719, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v718, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v706, type metadata accessor for ShapeType);
    (*(v739 + 40))(v413 + v763, v607, v606);
    v608 = v736;
    _s8PaperKit0A6MarkupVWObTm_0(v413, v736, type metadata accessor for Shape);
    *&v772 = 1;
    BYTE8(v772) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    CRRegister.wrappedValue.setter();
    specialized NewCanvasElementDelegate.addLine(_:size:)(v608, 150.0, 150.0);
    v609 = v608;
    return _s8PaperKit0A6MarkupVWOhTm_0(v609, type metadata accessor for Shape);
  }

  if (v740 == 9)
  {
    v740 = v208;
    *v703 = xmmword_1D405A650;
    v295 = v211;
    swift_storeEnumTagMultiPayload();
    v296 = type metadata accessor for Color(0);
    v297 = *(v296 - 8);
    v298 = *(v297 + 56);
    v299 = (v297 + 56);
    v298(v716, 1, 1, v296);
    v298(v717, 1, 1, v296);
    v730 = v299;
    v731 = v298;
    (*(v769 + 56))(v723, 1, 1, v768);
    type metadata accessor for CGRect(0);
    v735 = v300;
    v734 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
    v772 = 0u;
    v773 = 0u;
    CRRegister.init(wrappedValue:)();
    v301 = v765;
    *&v772 = 0;
    v729 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v736 = v301[6];
    v302 = v766;
    v298(v766, 1, 1, v296);
    v303 = v763;
    outlined init with copy of Date?(v302, v763, &_s8PaperKit5ColorVSgMd);
    v732 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v302, &_s8PaperKit5ColorVSgMd);
    v733 = v301[7];
    (v731)(v302, 1, 1, v296);
    outlined init with copy of Date?(v302, v303, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v302, &_s8PaperKit5ColorVSgMd);
    v763 = v301[8];
    *&v772 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v730 = v301[9];
    v304 = v751;
    swift_storeEnumTagMultiPayload();
    v731 = type metadata accessor for ShapeType;
    _s8PaperKit0A6MarkupVWOcTm_0(v304, v741, type metadata accessor for ShapeType);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A6MarkupVWOhTm_0(v304, type metadata accessor for ShapeType);
    *&v772 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    BYTE8(v772) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    BYTE8(v772) = 0;
    CRRegister.init(wrappedValue:)();
    v305 = v301[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v741 = v305;
    CRAttributedString.init(_:)();
    v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v307 = v744;
    (*(*(v306 - 8) + 56))(v744, 1, 1, v306);
    outlined init with copy of Date?(v307, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v307, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v308 = v301[15];
    *&v772 = 0;
    v309 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v744 = v308;
    v743 = v309;
    CRRegister.init(wrappedValue:)();
    *&v772 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v310 = type metadata accessor for StrokeStyle(0);
    v311 = v747;
    (*(*(v310 - 8) + 56))(v747, 1, 1, v310);
    outlined init with copy of Date?(v311, v745, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v311, &_s8PaperKit11StrokeStyleOSgMd);
    v312 = type metadata accessor for Shadow();
    v313 = v750;
    (*(*(v312 - 8) + 56))(v750, 1, 1, v312);
    outlined init with copy of Date?(v313, v748, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v313, &_s8PaperKit6ShadowVSgMd);
    v773 = 0u;
    v774 = 0u;
    v772 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v772 = 0u;
    v773 = 0u;
    v314 = v752;
    CRRegister.init(_:)();
    (*(v754 + 40))(v295, v314, v753);
    _s8PaperKit0A6MarkupVWOcTm_0(v703, v304, v731);
    v315 = v755;
    CRRegister.init(_:)();
    v316 = v769;
    (*(v757 + 40))(v295 + v730, v315, v756);
    *&v772 = 0x4014000000000000;
    v317 = v758;
    CRRegister.init(_:)();
    (*(v759 + 40))(v295 + v763, v317, v764);
    v318 = v766;
    outlined init with copy of Date?(v716, v766, &_s8PaperKit5ColorVSgMd);
    v319 = v760;
    CRRegister.init(_:)();
    v320 = *(v762 + 40);
    v321 = v761;
    v320(v295 + v733, v319, v761);
    outlined init with copy of Date?(v717, v318, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v320(v295 + v736, v319, v321);
    v322 = v768;
    v323 = v692;
    outlined init with copy of Date?(v723, v692, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v316 + 48))(v323, 1, v322) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v323, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v636 = v664;
      (*(v316 + 32))(v664, v323, v322);
      (*(v316 + 40))(v295 + v741, v636, v322);
    }

    v637 = v739;
    v638 = v738;
    v639 = v737;
    *&v772 = 0;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v723, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v717, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v716, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A6MarkupVWOhTm_0(v703, type metadata accessor for ShapeType);
    (*(v637 + 40))(&v744[v295], v639, v638);
    v603 = v295;
    v604 = &v771;
    goto LABEL_69;
  }

  v538 = v217;
  v732 = v216;
  v733 = v215;
  v539 = InlineDrawingCanvasElementController.suggestedPositionForNewCanvasElement(withSize:)(1.0, 1.0);
  v541 = v540;
  v543 = v542;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v775._object = 0x80000001D4083BC0;
  v544.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v544.value._object = 0xEB00000000656C62;
  v545._countAndFlagsBits = 1954047316;
  v545._object = 0xE400000000000000;
  v546._countAndFlagsBits = 0;
  v546._object = 0xE000000000000000;
  v775._countAndFlagsBits = 0xD000000000000024;
  v547 = NSLocalizedString(_:tableName:bundle:value:comment:)(v545, v544, paperKitBundle, v546, v775);
  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  v548 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v549 = MEMORY[0x1DA6CCED0](v547._countAndFlagsBits, v547._object);

  type metadata accessor for NSAttributedStringKey(0);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v548 initWithString:v549 attributes:isa];

  MEMORY[0x1EEE9AC00](v551);
  v552 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v553 = type metadata accessor for Color(0);
  v554 = *(v553 + 20);
  v555 = type metadata accessor for UnknownValueProperties();
  (*(*(v555 - 8) + 56))(v725 + v554, 1, 1, v555);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!result)
  {
    __break(1u);
    goto LABEL_80;
  }

  v557 = result;
  v731 = v552;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_80:
    __break(1u);
    return result;
  }

  v558 = result;

  *v725 = v558;
  v559 = *(v553 - 8);
  v560 = *(v559 + 56);
  v561 = (v559 + 56);
  v560();
  (v560)(v696, 1, 1, v553);
  v563 = v768;
  v562 = v769;
  v564 = v697;
  (*(v769 + 16))(v697, v699, v768);
  (*(v562 + 56))(v564, 0, 1, v563);
  type metadata accessor for CGRect(0);
  v734 = v565;
  v736 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  v772 = 0u;
  v773 = 0u;
  CRRegister.init(wrappedValue:)();
  v566 = v765;
  *&v772 = 0;
  v735 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v727 = v566[6];
  v567 = v766;
  (v560)(v766, 1, 1, v553);
  v568 = v763;
  outlined init with copy of Date?(v567, v763, &_s8PaperKit5ColorVSgMd);
  v740 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v567, &_s8PaperKit5ColorVSgMd);
  v726 = v566[7];
  v730 = v553;
  v729 = v560;
  v728 = v561;
  (v560)(v567, 1, 1, v553);
  outlined init with copy of Date?(v567, v568, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v567, &_s8PaperKit5ColorVSgMd);
  v724 = v566[8];
  *&v772 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v722 = v566[9];
  v569 = v751;
  swift_storeEnumTagMultiPayload();
  v723 = type metadata accessor for ShapeType;
  _s8PaperKit0A6MarkupVWOcTm_0(v569, v741, type metadata accessor for ShapeType);
  v721 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, 255, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit0A6MarkupVWOhTm_0(v569, type metadata accessor for ShapeType);
  *&v772 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v772 = 0;
  BYTE8(v772) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v772 = 0;
  BYTE8(v772) = 0;
  CRRegister.init(wrappedValue:)();
  v741 = v566[13];
  CRAttributedString.init(_:)();
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v571 = v744;
  (*(*(v570 - 8) + 56))(v744, 1, 1, v570);
  outlined init with copy of Date?(v571, v742, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v571, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v572 = v566[15];
  *&v772 = 0;
  v573 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v743 = v572;
  v742 = v573;
  CRRegister.init(wrappedValue:)();
  *&v772 = 0;
  v744 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v574 = type metadata accessor for StrokeStyle(0);
  v575 = v747;
  (*(*(v574 - 8) + 56))(v747, 1, 1, v574);
  outlined init with copy of Date?(v575, v745, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v575, &_s8PaperKit11StrokeStyleOSgMd);
  v576 = type metadata accessor for Shadow();
  v577 = v750;
  (*(*(v576 - 8) + 56))(v750, 1, 1, v576);
  outlined init with copy of Date?(v577, v748, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v577, &_s8PaperKit6ShadowVSgMd);
  v773 = 0u;
  v774 = 0u;
  v772 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v772 = v539 + -0.5;
  *(&v772 + 1) = v541 + -0.5;
  __asm { FMOV            V0.2D, #1.0 }

  v773 = _Q0;
  v583 = v752;
  CRRegister.init(_:)();
  (*(v754 + 40))(v538, v583, v753);
  _s8PaperKit0A6MarkupVWOcTm_0(v698, v569, v723);
  v584 = v755;
  CRRegister.init(_:)();
  (*(v757 + 40))(v538 + v722, v584, v756);
  *&v772 = 0x4014000000000000;
  v585 = v758;
  CRRegister.init(_:)();
  (*(v759 + 40))(v538 + v724, v585, v764);
  v586 = v766;
  outlined init with copy of Date?(v725, v766, &_s8PaperKit5ColorVSgMd);
  v587 = v760;
  CRRegister.init(_:)();
  v588 = *(v762 + 40);
  v589 = v761;
  v588(v538 + v726, v587, v761);
  outlined init with copy of Date?(v696, v586, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v590 = v589;
  v591 = v768;
  v588(v538 + v727, v587, v590);
  v592 = v769;
  v593 = v668;
  outlined init with copy of Date?(v697, v668, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v592 + 48))(v593, 1, v591) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v593, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v644 = v667;
    (*(v592 + 32))(v667, v593, v591);
    (*(v592 + 40))(v538 + v741, v644, v591);
  }

  v645 = v739;
  *&v772 = 3;
  v646 = v737;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v697, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v696, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v725, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit0A6MarkupVWOhTm_0(v698, type metadata accessor for ShapeType);
  (*(v645 + 40))(v538 + v743, v646, v738);
  v647 = v733;
  _s8PaperKit0A6MarkupVWObTm_0(v538, v733, type metadata accessor for Shape);
  *&v772 = 0;
  CRRegister.wrappedValue.setter();
  CRRegister.value.getter();
  if (vabdd_f64(*&v772, v543) > 0.01)
  {
    *&v772 = v543;
    CRRegister.value.setter();
  }

  _s8PaperKit0A6MarkupVWOcTm_0(v647, v732, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape);
  v648 = v673;
  Capsule.init(_:id:)();
  v772 = 0u;
  v773 = 0u;
  CRRegister.init(wrappedValue:)();
  v772 = 0u;
  v773 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v772 = 0;
  CRRegister.init(wrappedValue:)();
  LODWORD(v772) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, 255, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v650 = v669;
  (*(*(v649 - 8) + 56))(v669, 1, 1, v649);
  outlined init with copy of Date?(v650, v670, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v650, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v651 = v766;
  (v729)(v766, 1, 1, v730);
  outlined init with copy of Date?(v651, v763, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v651, &_s8PaperKit5ColorVSgMd);
  *&v772 = 0;
  *(&v772 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v772 = 0;
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  CRKeyPath.init(_:)();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
  v652 = v678;
  v653 = Capsule.init(_:id:)();
  MEMORY[0x1EEE9AC00](v653);
  v654 = v680;
  Capsule.mutate<A>(_:)();
  InlineDrawingCanvasElementController.upgradePaper(_:)(v652);
  (*(v679 + 8))(v652, v654);
  _s8PaperKit0A6MarkupVWOhTm_0(v647, type metadata accessor for Shape);
  (*(v769 + 8))(v699, v768);
  return (*(v675 + 8))(v648, v676);
}