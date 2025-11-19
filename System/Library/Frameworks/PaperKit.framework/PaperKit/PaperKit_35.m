void *specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetImageForItemUUID:showResult:fontSize:)(uint64_t a1, char a2, double a3)
{
  v6 = type metadata accessor for PKDrawing();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x440))();
  v17 = v16;
  ObjectType = swift_getObjectType();
  v19 = (*(v17 + 16))(ObjectType, v17);

  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = [v19 drawing];

  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v7 + 32))(v12, v9, v6);
  PKDrawing._bridgeToObjectiveC()(v21);
  v23 = v22;
  v24 = [v22 uuid];

  v45[3] = &unk_1F4FC4E80;
  v25 = swift_dynamicCastObjCProtocolConditional();
  if (!v25 || (v26 = v25, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), !swift_dynamicCastMetatype()))
  {

LABEL_14:
    swift_unknownObjectRelease();
    (*(v7 + 8))(v12, v6);
    return 0;
  }

  v27 = one-time initialization token for controllers;
  swift_unknownObjectRetain();
  if (v27 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = static CalculateDocumentController.controllers;
  if (!*(static CalculateDocumentController.controllers + 2) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v30 & 1) == 0))
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v12, v6);
    swift_unknownObjectRelease();
LABEL_16:

    return 0;
  }

  v31 = *(v28[7] + 8 * v29);
  swift_endAccess();
  v32 = v31;
  swift_unknownObjectRelease();
  v33 = &v32[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_14;
  }

  v34 = *(v33 + 1);
  v35 = swift_getObjectType();
  v36 = (*(v34 + 48))(a1, v35, v34);
  swift_unknownObjectRelease();
  if (!v36)
  {
    (*(v7 + 8))(v12, v6);

    swift_unknownObjectRelease();
    return 0;
  }

  if (a2)
  {
    v37 = 1;
  }

  else
  {
    v37 = CalculateExpression.isGraphable.getter();
  }

  v45[0] = MEMORY[0x1DA6C89B0](v36, 0, 0, v37 & 1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCyAA0C0VGMd);
  swift_allocObject();

  MEMORY[0x1DA6C98B0](v45);
  v38 = [v14 window];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 screen];
    v44[1] = v36;
    v41 = v40;

    [v41 scale];
  }

  v42 = ImageRenderer.scale.setter();
  v43 = MEMORY[0x1DA6C9890](v42);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v12, v6);
  return v43;
}

void specialized MathRecognitionViewControllerDelegate.mathViewController(_:select:)(uint64_t a1)
{
  v31 = type metadata accessor for PKStroke();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v6 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v26[0] = v1;
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v32;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v28 = *(v11 + 56);
    v29 = v12;
    v26[1] = v6 + 32;
    v27 = (v11 - 8);
    do
    {
      v14 = v31;
      v15 = v11;
      v29(v5, v13, v31);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v17 = [(objc_class *)isa _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      (*v27)(v5, v14);
      v32 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v10 = v32;
      }

      *(v10 + 16) = v19 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v8, v30);
      v13 += v28;
      --v9;
      v11 = v15;
    }

    while (v9);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = _s8PaperKit13CanvasMembersV14canvasElements11strokeUUIDsACx_q_tcSTRzSTR_9Coherence13WeakTagged_10VyAA0kC7ElementVG0L0Rtz10Foundation4UUIDVALRt_r0_lufCSayAKG_SayAPGTt1g5(MEMORY[0x1E69E7CC0], v10);
    AnyCanvas.selection.setter(v22, v24, v25, v23 & 1);
  }

  else
  {
  }
}

void specialized MathRecognitionViewControllerDelegate.mathViewController(_:updatedResult:strokes:expressionUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x440);
    v42 = Strong;
    v16 = v15();
    v18 = v17;
    ObjectType = swift_getObjectType();
    v20 = (*(v18 + 16))(ObjectType, v18);

    if (v20)
    {
      v21 = [v20 drawing];

      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v8 + 32))(v13, v10, v7);
      PKDrawing._bridgeToObjectiveC()(v22);
      v24 = v23;
      v25 = [v23 uuid];

      v44 = &unk_1F4FC4E80;
      v26 = swift_dynamicCastObjCProtocolConditional();
      if (!v26 || (v27 = v26, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), !swift_dynamicCastMetatype()))
      {

        swift_unknownObjectRelease();
LABEL_13:
        (*(v8 + 8))(v13, v7);
        return;
      }

      v28 = one-time initialization token for controllers;
      swift_unknownObjectRetain();
      if (v28 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v29 = static CalculateDocumentController.controllers;
      if (*(static CalculateDocumentController.controllers + 2))
      {
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
        if (v31)
        {
          v32 = *(v29[7] + 8 * v30);
          swift_endAccess();
          v33 = v32;
          swift_unknownObjectRelease();
          if (*(a1 + 16))
          {
            (*(v8 + 56))(v6, 1, 1, v7);
            v43 = a1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit8PKStrokeVGMd);
            v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            if ((*(v8 + 48))(v6, 1, v7) == 1)
            {
              v36 = 0;
            }

            else
            {
              PKDrawing._bridgeToObjectiveC()(v35);
              v36 = v39;
              (*(v8 + 8))(v6, v7);
            }

            v38 = [objc_allocWithZone(type metadata accessor for PKDrawingCoherence(0)) initWithStrokes:v34 fromDrawing:v36];
            swift_unknownObjectRelease();

            if (v38)
            {
              v40 = v38;
            }
          }

          else
          {
            v38 = 0;
          }

          CalculateDocumentController.mathResultDrawing(_:forItem:)(v38, a2);

          swift_unknownObjectRelease();
          goto LABEL_13;
        }
      }

      swift_endAccess();
      swift_unknownObjectRelease();
      (*(v8 + 8))(v13, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v42;
    }
  }
}

void *specialized MathRecognitionViewControllerDelegate.mathViewController(_:resultFor:itemUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDrawing();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x440))();
    v15 = v14;
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 16))(ObjectType, v15);

    if (v17)
    {
      v18 = [v17 drawing];

      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v5 + 32))(v10, v7, v4);
      PKDrawing._bridgeToObjectiveC()(v19);
      v21 = v20;
      v22 = [v20 uuid];

      v33 = &unk_1F4FC4E80;
      v23 = swift_dynamicCastObjCProtocolConditional();
      if (!v23 || (v24 = v23, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), !swift_dynamicCastMetatype()))
      {

        swift_unknownObjectRelease();
        (*(v5 + 8))(v10, v4);
        return 0;
      }

      v25 = one-time initialization token for controllers;
      swift_unknownObjectRetain();
      if (v25 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v26 = static CalculateDocumentController.controllers;
      if (*(static CalculateDocumentController.controllers + 2))
      {
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
        if (v28)
        {
          v29 = *(v26[7] + 8 * v27);
          swift_endAccess();
          v30 = v29;
          swift_unknownObjectRelease();
          v31 = CalculateDocumentController.resultForExpressionWithUUID(_:locale:)(a2, a1);

          swift_unknownObjectRelease();
          (*(v5 + 8))(v10, v4);
          return v31;
        }
      }

      swift_endAccess();
      swift_unknownObjectRelease();
      (*(v5 + 8))(v10, v4);
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRRegister<TaggedStroke> and conformance CRRegister<A>()
{
  result = lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>;
  if (!lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v38 = a5;
  v39 = a7;
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v11 = type metadata accessor for Capsule();
  v34 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v8 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds;
  v20 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(a1 + 32);
  outlined init with copy of Date?(v35, v42, &_s8PaperKit0A17RenderableOptionsVSgMd);
  (*(v15 + 16))(v18, v36, a6);
  (*(v12 + 16))(v14, v37, v11);
  v21 = (*(v15 + 80) + 209) & ~*(v15 + 80);
  v22 = (v16 + *(v12 + 80) + v21) & ~*(v12 + 80);
  v23 = swift_allocObject();
  v24 = v39;
  *(v23 + 16) = v38;
  *(v23 + 24) = a6;
  v25 = v41;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  v26 = v42[5];
  *(v23 + 112) = v42[4];
  *(v23 + 128) = v26;
  *(v23 + 144) = v43[0];
  *(v23 + 157) = *(v43 + 13);
  v27 = v42[1];
  *(v23 + 48) = v42[0];
  *(v23 + 64) = v27;
  v28 = v42[3];
  *(v23 + 80) = v42[2];
  *(v23 + 96) = v28;
  *(v23 + 208) = *(a1 + 32);
  v29 = *(a1 + 16);
  *(v23 + 176) = *a1;
  *(v23 + 192) = v29;
  (*(v15 + 32))(v23 + v21, v18, a6);
  (*(v12 + 32))(v23 + v22, v14, v34);
  v30 = (v40 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render);
  v31 = *(v40 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render);
  *v30 = partial apply for closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:);
  v30[1] = v23;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v31);
}

void closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a6;
  v47 = a8;
  v44 = a4;
  v49 = a3;
  v43 = a2;
  v50 = a1;
  v48 = a9;
  v11 = type metadata accessor for Capsule();
  v41 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v42 = &v40 - v14;
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v40 - v21;
  v45 = dispatch_semaphore_create(0);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  outlined init with copy of Date?(v43, v51, &_s8PaperKit0A17RenderableOptionsVSgMd);
  (*(v16 + 16))(v19, v44, a7);
  (*(v12 + 16))(v15, a5, v11);
  v24 = (*(v16 + 80) + 225) & ~*(v16 + 80);
  v25 = (v17 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v12 + 80) + v25 + 8) & ~*(v12 + 80);
  v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v29 = v47;
  *(v28 + 32) = v46;
  *(v28 + 40) = a7;
  v30 = v48;
  v31 = v49;
  *(v28 + 48) = v29;
  *(v28 + 56) = v30;
  v32 = v51[5];
  *(v28 + 128) = v51[4];
  *(v28 + 144) = v32;
  *(v28 + 160) = v52[0];
  *(v28 + 173) = *(v52 + 13);
  v33 = v51[1];
  *(v28 + 64) = v51[0];
  *(v28 + 80) = v33;
  v34 = v51[3];
  *(v28 + 96) = v51[2];
  *(v28 + 112) = v34;
  *(v28 + 224) = *(v31 + 32);
  v35 = *(v31 + 16);
  *(v28 + 192) = *v31;
  *(v28 + 208) = v35;
  (*(v16 + 32))(v28 + v24, v19, a7);
  v36 = v50;
  *(v28 + v25) = v50;
  (*(v12 + 32))(v28 + v26, v42, v41);
  v37 = v45;
  *(v28 + v27) = v45;
  v38 = v36;
  v39 = v37;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:), v28);

  OS_dispatch_semaphore.wait()();
}

uint64_t closure #1 in closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v14;
  *(v8 + 328) = v13;
  *(v8 + 312) = v12;
  *(v8 + 296) = a7;
  *(v8 + 304) = a8;
  *(v8 + 280) = a5;
  *(v8 + 288) = a6;
  *(v8 + 272) = a4;
  v9 = type metadata accessor for CRKeyPath();
  *(v8 + 352) = v9;
  *(v8 + 360) = *(v9 - 8);
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:), 0, 0);
}

uint64_t closure #1 in closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)()
{
  outlined init with copy of Date?(*(v0 + 272), v0 + 144, &_s8PaperKit0A17RenderableOptionsVSgMd);
  if (*(v0 + 152) == 1)
  {
    *(v0 + 24) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 125) = 0u;
    *(v0 + 16) = 1;
    *(v0 + 18) = 0;
    *(v0 + 32) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
  }

  else
  {
    v1 = *(v0 + 224);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 96) = v1;
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 125) = *(v0 + 253);
    v2 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v2;
    v3 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v3;
  }

  v4 = *(v0 + 344);
  v5 = *(v0 + 280);
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  *(v0 + 40) = *v5;
  *(v0 + 56) = v7;
  *(v0 + 72) = v6;
  static CRKeyPath.unique.getter();
  v8 = *(v4 + 8);
  v17 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  *(v0 + 376) = v9;
  *v9 = v0;
  v9[1] = closure #1 in closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:);
  v10 = *(v0 + 368);
  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  v13 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 296);

  return v17(v15, v10, v14, v0 + 16, v13, v11, v12, v8);
}

{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:), 0, 0);
}

{
  OS_dispatch_semaphore.signal()();
  outlined destroy of PaperRenderableOptions(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

id CanvasElementPDFAnnotation.init(bounds:forType:withProperties:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = &v6[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v6[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v6[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = 0;
  v15 = &v6[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
  v17 = type metadata accessor for CRKeyPath();
  (*(*(v17 - 8) + 56))(&v6[v16], 1, 1, v17);
  v6[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 2;
  *&v6[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas] = 0;
  *&v6[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = 0;
  if (a2)
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  v21.receiver = v6;
  v21.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  v19 = objc_msgSendSuper2(&v21, sel_initWithBounds_forType_withProperties_, a1, v18.super.isa, a3, a4, a5, a6);

  return v19;
}

id CanvasElementPDFAnnotation.init()()
{
  v1 = &v0[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  *&v0[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = 0;
  v3 = &v0[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
  v5 = type metadata accessor for CRKeyPath();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v0[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 2;
  *&v0[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas] = 0;
  *&v0[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = 0;
  v6 = *MEMORY[0x1E69780D8];
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  return objc_msgSendSuper2(&v8, sel_initWithBounds_forType_withProperties_, v6, 0, 0.0, 0.0, 0.0, 0.0);
}

id CanvasElementPDFAnnotation.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  *&v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = 0;
  v5 = &v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
  v7 = type metadata accessor for CRKeyPath();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 2;
  *&v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id CanvasElementPDFAnnotation.init(commonWithBounds:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  *&v4[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = 0;
  v11 = &v4[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
  v13 = type metadata accessor for CRKeyPath();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v4[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 2;
  *&v4[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  return objc_msgSendSuper2(&v15, sel_initCommonWithBounds_, a1, a2, a3, a4);
}

id CanvasElementPDFAnnotation.init(annotationDictionary:for:)(uint64_t a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation;
  *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = 0;
  v8 = &v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
  v10 = type metadata accessor for CRKeyPath();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 2;
  v11 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas;
  *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas] = 0;
  v12 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor;
  *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = 0;
  if (!a1)
  {

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*v5);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(*v8);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v2[v9], &_s9Coherence9CRKeyPathVSgMd);

    type metadata accessor for CanvasElementPDFAnnotation();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16.receiver = v2;
  v16.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v16, sel_initWithAnnotationDictionary_forPage_, a1, v13);

  if (v14)
  {

    return v14;
  }

  return 0;
}

id CanvasElementPDFAnnotation.init(cgpdfAnnotation:for:)(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation;
  *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = 0;
  v8 = &v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
  v10 = type metadata accessor for CRKeyPath();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 2;
  v11 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas;
  *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas] = 0;
  v12 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor;
  *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = 0;
  if (!a1)
  {
    a1 = a2;
    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:

    outlined consume of (@escaping @callee_guaranteed () -> ())?(*v5);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*v8);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v2[v9], &_s9Coherence9CRKeyPathVSgMd);

    type metadata accessor for CanvasElementPDFAnnotation();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17.receiver = v2;
  v17.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  v13 = a2;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v17, sel_initWithCGPDFAnnotation_forPage_, v14, v13);

  if (v15)
  {

    return v15;
  }

  return 0;
}

void CanvasElementPDFAnnotation.copy(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for CanvasElementPDFAnnotation();
  v30.receiver = v2;
  v30.super_class = v8;
  objc_msgSendSuper2(&v30, sel_copyWithZone_, a1);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(a2, v29);
  if (swift_dynamicCast())
  {
    v9 = v28;
    v10 = *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
    v11 = *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render + 8];
    v12 = &v28[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
    v13 = *&v28[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
    *v12 = v10;
    v12[1] = v11;
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v10);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);
    v14 = v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds + 32];
    v15 = &v9[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
    v16 = *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds + 16];
    *v15 = *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
    *(v15 + 1) = v16;
    v15[32] = v14;
    v17 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation;
    v18 = *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation];
    if (v18)
    {
      [v18 copyWithZone_];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for AKAnnotation);
      if (swift_dynamicCast())
      {
        v19 = v28;
      }

      else
      {
        v19 = 0;
      }

      v17 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation;
    }

    else
    {
      v19 = 0;
    }

    v20 = *&v9[v17];
    *&v9[v17] = v19;

    v21 = *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
    v22 = *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation + 8];
    v23 = &v9[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
    v24 = *&v9[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
    *v23 = v21;
    v23[1] = v22;
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v21);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v24);
    v25 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
    swift_beginAccess();
    outlined init with copy of Date?(&v2[v25], v7, &_s9Coherence9CRKeyPathVSgMd);
    v26 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
    swift_beginAccess();
    outlined assign with take of UUID?(v7, &v9[v26], &_s9Coherence9CRKeyPathVSgMd);
    swift_endAccess();
    v9[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation];
  }
}

void CanvasElementPDFAnnotation.draw(with:in:)(uint64_t a1, CGContext *a2)
{
  v4 = *&v2[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
  if (v4)
  {

    CGContextSaveGState(a2);
    v5 = [v2 page];
    if (v5)
    {
      v6 = v5;
      [v5 boundsForBox_];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v22.origin.x = v8;
      v22.origin.y = v10;
      v22.size.width = v12;
      v22.size.height = v14;
      MinY = CGRectGetMinY(v22);
      v23.origin.x = v8;
      v23.origin.y = v10;
      v23.size.width = v12;
      v23.size.height = v14;
      t1.a = 1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = 1.0;
      t1.tx = 0.0;
      t1.ty = 0.0;
      t2.b = 0.0;
      t2.c = 0.0;
      t2.a = 1.0;
      *&t2.d = xmmword_1D405A660;
      t2.ty = MinY + CGRectGetMaxY(v23);
      CGAffineTransformConcat(&v18, &t1, &t2);
      t1 = v18;
      CGContextConcatCTM(a2, &t1);
    }

    v4(a2);
    CGContextRestoreGState(a2);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }

  else if ([v2 signatureAnnotationForRendering])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of StocksKitCurrencyCache.Provider?(&t1, &_sypSgMd);
    CanvasElementPDFAnnotation.drawSignature(in:)(a2);
  }

  else
  {
    memset(&t1, 0, 32);
    outlined destroy of StocksKitCurrencyCache.Provider?(&t1, &_sypSgMd);
    v17 = type metadata accessor for CanvasElementPDFAnnotation();
    v21.receiver = v2;
    v21.super_class = v17;
    objc_msgSendSuper2(&v21, sel_drawWithBox_inContext_, a1, a2);
  }
}

Swift::Void __swiftcall CanvasElementPDFAnnotation.drawSignature(in:)(CGContextRef in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for SignatureValue(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSaveGState(in);
  v11 = [v2 page];
  if (v11)
  {
    v12 = v11;
    [v11 boundsForBox_];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v30.origin.x = v14;
    v30.origin.y = v16;
    v30.size.width = v18;
    v30.size.height = v20;
    MinY = CGRectGetMinY(v30);
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v18;
    v31.size.height = v20;
    MaxY = CGRectGetMaxY(v31);
    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = 0.0;
    t1.ty = 0.0;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.a = 1.0;
    *&t2.d = xmmword_1D405A660;
    t2.ty = MinY + MaxY;
    CGAffineTransformConcat(&v27, &t1, &t2);
    t1 = v27;
    CGContextConcatCTM(in, &t1);
  }

  if ([v2 signatureAnnotationForRendering])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&t2, 0, 32);
  }

  *&t1.a = *&t2.a;
  *&t1.c = *&t2.c;
  if (!*&t2.d)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&t1, &_sypSgMd);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_10;
  }

  v23 = swift_dynamicCast();
  (*(v8 + 56))(v6, v23 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit14SignatureValueVSgMd);
    goto LABEL_11;
  }

  outlined init with take of SignatureValue(v6, v10);
  v24 = [objc_opt_self() currentTraitCollection];
  [v24 displayScale];
  v26 = v25;

  specialized SignatureProvider.render(in:darkMode:scale:)(in, 0, v26);
  outlined destroy of SignatureValue(v10, type metadata accessor for SignatureValue);
LABEL_11:
  CGContextRestoreGState(in);
}

Swift::Void __swiftcall CanvasElementPDFAnnotation._addAKAnnotation(to:)(CFMutableDictionaryRef_optional to)
{
  dict[1] = *MEMORY[0x1E69E9840];
  if (v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation])
  {
    if (v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] != 1 || (v3 = [v1 sourceDictionary]) != 0 && (dict[0] = 0, specialized String.withCString<A>(_:)(0x454B413A4C504141, 0xED00007361727478, v3, dict), dict[0]) && (value = 0, CGPDFDictionaryGetString(dict[0], "AAPL:AKAnnotationObject", &value), value))
    {
      v6.receiver = v1;
      v6.super_class = type metadata accessor for CanvasElementPDFAnnotation();
      objc_msgSendSuper2(&v6, sel__addAKAnnotationToDictionary_, to.value);
    }
  }

  if (to.value)
  {
    v4 = *&v1[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
    if (v4)
    {
      v5 = to.value;
      outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v4);
      v4(v5);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
    }
  }
}

Swift::Void __swiftcall CanvasElementPDFAnnotation.addControl()()
{
  v50.receiver = v0;
  v50.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  objc_msgSendSuper2(&v50, sel_addControl);
  v1 = [v0 uiControl];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = v46[0];
  [v46[0] frame];
  v7 = *&v0[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas];
  if (!v7)
  {
LABEL_12:

    return;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x8C0);
  v14 = v7;
  v15 = v13();
  if (v15)
  {
    v16 = v15;
    goto LABEL_6;
  }

  v17 = [v14 window];
  v16 = [v17 rootViewController];

  if (!v16)
  {

    goto LABEL_12;
  }

LABEL_6:
  v18 = (*((*v12 & *v14) + 0x9E8))();
  if (v18 && (v19 = v18, v20 = [v18 view], v19, v20))
  {
    v45 = v8;
    [v46[0] accessibilityFrame];
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    MidX = CGRectGetMidX(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v26 = [v20 accessibilityHitTest:0 withEvent:{MidX, CGRectGetMidY(v52)}];

    if (v26)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      *v46 = 0u;
      v47 = 0u;
    }

    v8 = v45;
    v48 = *v46;
    v49 = v47;
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v27 = (*((*v12 & *v14) + 0x440))();
  v29 = v28;
  ObjectType = swift_getObjectType();
  v31 = (*(v29 + 168))(ObjectType, v29);

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Date?(&v48, v46, &_sypSgMd);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v8;
  *(v33 + 32) = v9;
  *(v33 + 40) = v10;
  *(v33 + 48) = v11;
  *(v33 + 56) = v14;
  v34 = v47;
  *(v33 + 64) = *v46;
  *(v33 + 80) = v34;
  v35 = one-time initialization token for SignatureLogger;
  v36 = v14;

  if (v35 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, SignatureLogger);
  v38 = v16;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138477827;
    *(v41 + 4) = v38;
    *v42 = v38;
    v43 = v38;
    _os_log_impl(&dword_1D38C4000, v39, v40, "show signature panel on viewController: %{private}@", v41, 0xCu);
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_sSo8NSObjectCSgMd);
    MEMORY[0x1DA6D0660](v42, -1, -1);
    MEMORY[0x1DA6D0660](v41, -1, -1);
  }

  v44 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(v38, 0, v31, partial apply for closure #1 in CanvasElementPDFAnnotation.addControl(), v33, v8, v9, v10, v11);
  [v38 presentViewController:v44 animated:1 completion:0];

  outlined destroy of StocksKitCurrencyCache.Provider?(&v48, &_sypSgMd);
}

void closure #1 in CanvasElementPDFAnnotation.addControl()(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7, uint64_t a8)
{
  v76 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v71 - v15;
  v17 = type metadata accessor for SignatureValue(0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v23 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v26 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v71 - v27;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      v73 = v26;
      v74 = a8;
      v30 = one-time initialization token for shared;
      v31 = a1;
      if (v30 != -1)
      {
        swift_once();
      }

      v81.origin.x = a2;
      v81.origin.y = a3;
      v81.size.width = a4;
      v81.size.height = a5;
      MidX = CGRectGetMidX(v81);
      v82.origin.x = a2;
      v82.origin.y = a3;
      v82.size.width = a4;
      v82.size.height = a5;
      CGRectGetMidY(v82);
      v83.origin.x = a2;
      v83.origin.y = a3;
      v83.size.width = a4;
      v83.size.height = a5;
      MaxY = CGRectGetMaxY(v83);
      v84.origin.x = a2;
      v84.origin.y = a3;
      v84.size.width = a4;
      v84.size.height = a5;
      Height = CGRectGetHeight(v84);
      v35 = SignatureItem.size.getter();
      v37 = 400.0 / v35;
      if (400.0 / v35 > 1.0)
      {
        v37 = 1.0;
      }

      v38 = v35 * v37;
      v39 = v36 * v37;
      v40 = Height / v39;
      if (Height / v39 > 1.0)
      {
        v40 = 1.0;
      }

      *&v79 = v38 * v40;
      *(&v79 + 1) = v39 * v40;
      v41 = MaxY + v39 * v40 * -0.5;
      Signature.init()();
      static CRKeyPath.unique.getter();
      lazy protocol witness table accessor for type Signature and conformance Signature();
      v42 = Capsule.init(_:id:)();
      MEMORY[0x1EEE9AC00](v42);
      v72 = v31;
      *(&v71 - 4) = v31;
      *(&v71 - 3) = MidX;
      *(&v71 - 2) = v41;
      *(&v71 - 1) = &v79;
      Capsule.callAsFunction<A>(_:)();
      v43 = v29;
      Capsule.root.getter();
      v44 = *(v17 + 28);
      v45 = type metadata accessor for Color(0);
      (*(*(v45 - 8) + 56))(&v21[v44], 1, 1, v45);
      v46 = &v21[*(v17 + 32)];
      UnknownValueProperties.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.getter();
      v47 = v80;
      *v21 = v79;
      *(v21 + 1) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.getter();
      *(v21 + 4) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd);
      CRRegister.wrappedValue.getter();
      *(v21 + 5) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      CRRegister.wrappedValue.getter();
      outlined assign with take of UUID?(v16, &v21[v44], &_s8PaperKit5ColorVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd);
      CRRegister.wrappedValue.getter();
      outlined destroy of SignatureValue(v25, type metadata accessor for Signature);
      v48 = BYTE8(v79);
      *v46 = v79;
      v46[8] = v48;
      outlined init with copy of SignatureValue(v21, v75);
      v49 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      outlined destroy of SignatureValue(v21, type metadata accessor for SignatureValue);
      [v43 setSignatureAnnotationForRendering_];
      swift_unknownObjectRelease();
      [v43 setReadOnly_];

      v50 = (*((*MEMORY[0x1E69E7D40] & *v76) + 0x440))();
      v52 = v51;
      ObjectType = swift_getObjectType();
      v54 = (*(v52 + 168))(ObjectType, v52);

      a8 = v74;
      if (v54)
      {
        v55 = *&v54[OBJC_IVAR____TtC8PaperKit15FormFillingView_signatureFieldsSigned];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          __break(1u);
          return;
        }

        *&v54[OBJC_IVAR____TtC8PaperKit15FormFillingView_signatureFieldsSigned] = v57;
      }

      v58 = [v43 page];
      v59 = v73;
      if (v58)
      {
        v60 = v58;
        v61 = [v58 view];

        v62 = v72;
        if (v61)
        {
          [v61 removeControlForAnnotation_];

          v43 = v61;
        }
      }

      else
      {
        v62 = v72;
      }

      (*(v59 + 8))(v77, v78);
    }
  }

  v63 = *MEMORY[0x1E69DD8E8];
  outlined init with copy of Date?(a8, &v79, &_sypSgMd);
  v64 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v65 = __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    v66 = *(v64 - 8);
    v67 = MEMORY[0x1EEE9AC00](v65);
    v69 = &v71 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v69, v67);
    v70 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v66 + 8))(v69, v64);
    __swift_destroy_boxed_opaque_existential_0(&v79);
  }

  else
  {
    v70 = 0;
  }

  UIAccessibilityPostNotification(v63, v70);
  swift_unknownObjectRelease();
}

id CanvasElementPDFAnnotation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CanvasElementPDFAnnotation()
{
  result = type metadata singleton initialization cache for CanvasElementPDFAnnotation;
  if (!type metadata singleton initialization cache for CanvasElementPDFAnnotation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CanvasElementPDFAnnotation()
{
  type metadata accessor for CRKeyPath?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CRKeyPath?()
{
  if (!lazy cache variable for type metadata for CRKeyPath?)
  {
    type metadata accessor for CRKeyPath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRKeyPath?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CanvasElementPDFAnnotation.AKWritingBehavior and conformance CanvasElementPDFAnnotation.AKWritingBehavior()
{
  result = lazy protocol witness table cache variable for type CanvasElementPDFAnnotation.AKWritingBehavior and conformance CanvasElementPDFAnnotation.AKWritingBehavior;
  if (!lazy protocol witness table cache variable for type CanvasElementPDFAnnotation.AKWritingBehavior and conformance CanvasElementPDFAnnotation.AKWritingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementPDFAnnotation.AKWritingBehavior and conformance CanvasElementPDFAnnotation.AKWritingBehavior);
  }

  return result;
}

uint64_t outlined init with take of SignatureValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignatureValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SignatureValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of SignatureValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignatureValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = (*(*(v4 - 8) + 80) + 209) & ~*(*(v4 - 8) + 80);
  v8 = *(*(v4 - 8) + 64);
  v9 = *(type metadata accessor for Capsule() - 8);
  closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(a1, (v1 + 6), (v1 + 22), v1 + v7, v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)), v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v5 = (*(*(v4 - 8) + 80) + 225) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for Capsule() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v6);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #1 in CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(a1, v9, v10, (v1 + 8), (v1 + 24), v1 + v5, v11, v1 + v8);
}

void __swiftcall LinePathSource.init(start:control:end:)(PaperKit::LinePathSource *__return_ptr retstr, CGPoint start, CGPoint control, CGPoint end)
{
  retstr->start.x = start.x;
  retstr->start.y = start.y;
  retstr->control.x = control.x;
  retstr->control.y = control.y;
  retstr->end.x = end.x;
  retstr->end.y = end.y;
}

uint64_t ShapeType.apiType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result == 5)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }
    }

    else if (result == 7)
    {
      v8 = 6;
    }

    else
    {
      if (result != 8)
      {
        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
        v10 = type metadata accessor for AnyCRValue();
        result = (*(*(v10 - 8) + 8))(&v6[v9], v10);
        goto LABEL_17;
      }

      v8 = 7;
    }
  }

  else if (result <= 1)
  {
    v8 = result != 0;
  }

  else if (result == 2)
  {
    v8 = 2;
  }

  else
  {
    if (result == 3)
    {
      result = outlined destroy of ShapeType(v6);
LABEL_17:
      v8 = 8;
      goto LABEL_19;
    }

    v8 = 3;
  }

LABEL_19:
  *a1 = v8;
  return result;
}

void RoundedRectPathSource.init(radius:)(double *a1@<X8>, double a2@<D0>)
{
  if (a2 > 0.5)
  {
    a2 = 0.5;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  *a1 = a2;
}

PaperKit::RegularPolygonPathSource __swiftcall RegularPolygonPathSource.init(sides:)(PaperKit::RegularPolygonPathSource sides)
{
  v2 = 3;
  if (sides.sides > 3)
  {
    v2 = sides.sides;
  }

  if (v2 >= 12)
  {
    v2 = 12;
  }

  *v1 = v2;
  return sides;
}

void CalloutBubblePathSource.init(tailPosition:halfTailAngle:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

PaperKit::ArrowShapePathSource __swiftcall ArrowShapePathSource.init(cornerControl:)(PaperKit::ArrowShapePathSource cornerControl)
{
  *v1 = cornerControl.cornerControl.x;
  v1[1] = cornerControl.cornerControl.y;
  return cornerControl;
}

unint64_t ControlPointType.accessibilityIdentifier.getter()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 > 5)
  {
    if (v2 == 10)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2 == 9)
    {
      v3 = 0xD000000000000016;
    }

    if (v2 == 6)
    {
      v1 = 0xD000000000000018;
    }

    if (*v0 <= 8u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v4 = 0xD00000000000001FLL;
    v5 = 0xD00000000000001BLL;
    if (v2 != 4)
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v2 != 3)
    {
      v4 = v5;
    }

    if (v2 != 1)
    {
      v1 = 0xD000000000000013;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000015;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t ShapeType.any.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result == 5)
      {
        v13 = *v6;
        a1[3] = &type metadata for RoundedRectPathSource;
        a1[4] = &protocol witness table for RoundedRectPathSource;
        *a1 = v13;
        return result;
      }

      v8 = &type metadata for RegularPolygonPathSource;
      v9 = *v6;
      v10 = &protocol witness table for RegularPolygonPathSource;
LABEL_21:
      a1[3] = v8;
      a1[4] = v10;
      *a1 = v9;
      return result;
    }

    if (result == 7)
    {
      v17 = *v6;
      v18 = *(v6 + 1);
      a1[3] = &type metadata for StarPathSource;
      a1[4] = &protocol witness table for StarPathSource;
      *a1 = v17;
      a1[1] = v18;
    }

    else if (result == 8)
    {
      a1[3] = &type metadata for ArrowShapePathSource;
      a1[4] = &protocol witness table for ArrowShapePathSource;
      *a1 = *v6;
    }

    else
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
      v21 = type metadata accessor for AnyCRValue();
      a1[3] = v21;
      a1[4] = &protocol witness table for AnyCRValue;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return (*(*(v21 - 8) + 32))(boxed_opaque_existential_1, &v6[v20], v21);
    }
  }

  else
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v14 = *(v6 + 4);
        v15 = *(v6 + 5);
        a1[3] = &type metadata for LinePathSource;
        a1[4] = &protocol witness table for LinePathSource;
        result = swift_allocObject();
        *a1 = result;
        v16 = *(v6 + 1);
        *(result + 16) = *v6;
        *(result + 32) = v16;
        *(result + 48) = v14;
        *(result + 56) = v15;
        return result;
      }

      if (result != 3)
      {
        v19 = *(v6 + 2);
        a1[3] = &type metadata for CalloutBubblePathSource;
        a1[4] = &protocol witness table for CalloutBubblePathSource;
        *a1 = *v6;
        a1[2] = v19;
        return result;
      }

      v8 = &type metadata for BezierPathSource;
      v9 = *v6;
      v10 = &protocol witness table for BezierPathSource;
      goto LABEL_21;
    }

    if (result)
    {
      v11 = &type metadata for EllipsePathSource;
      v12 = &protocol witness table for EllipsePathSource;
    }

    else
    {
      v11 = &type metadata for RectanglePathSource;
      v12 = &protocol witness table for RectanglePathSource;
    }

    a1[3] = v11;
    a1[4] = v12;
  }

  return result;
}

uint64_t ShapeType.any.setter(__int128 *a1)
{
  v3 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of ShapeType(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      outlined init with take of PaperKitHashable(a1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15ShapePathSource_pMd);
      swift_dynamicCast();
      *v1 = v15;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      outlined init with take of PaperKitHashable(a1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15ShapePathSource_pMd);
      swift_dynamicCast();
      v8 = *(&v15 + 1);
      *v1 = v15;
      *(v1 + 8) = v8;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        v10 = *v5;
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
        *v1 = v10;
        outlined init with take of PaperKitHashable(a1, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15ShapePathSource_pMd);
        v12 = type metadata accessor for AnyCRValue();
        swift_dynamicCast();
        swift_storeEnumTagMultiPayload();
        return (*(*(v12 - 8) + 8))(&v5[v11], v12);
      }

      outlined init with take of PaperKitHashable(a1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15ShapePathSource_pMd);
      swift_dynamicCast();
      *v1 = v15;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    outlined init with take of PaperKitHashable(a1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15ShapePathSource_pMd);
    swift_dynamicCast();
  }

  else if (EnumCaseMultiPayload == 2)
  {
    outlined init with take of PaperKitHashable(a1, &v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15ShapePathSource_pMd);
    swift_dynamicCast();
    v7 = v14[1];
    *v1 = v14[0];
    *(v1 + 16) = v7;
    *(v1 + 32) = v14[2];
  }

  else if (EnumCaseMultiPayload == 3)
  {
    outlined destroy of ShapeType(v5);
    outlined init with take of PaperKitHashable(a1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15ShapePathSource_pMd);
    swift_dynamicCast();
    *v1 = v15;
  }

  else
  {
    outlined init with take of PaperKitHashable(a1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15ShapePathSource_pMd);
    swift_dynamicCast();
    v9 = v16;
    *v1 = v15;
    *(v1 + 16) = v9;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ShapeType.line.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ShapeType(v1, v5);
  result = swift_getEnumCaseMultiPayload();
  v7 = result;
  if (result == 2)
  {
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
  }

  else
  {
    result = outlined destroy of ShapeType(v5);
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v7 != 2;
  return result;
}

PaperKit::ControlPointType_optional __swiftcall ControlPointType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t outlined init with copy of ShapeType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShapeType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ShapeType(uint64_t a1)
{
  v2 = type metadata accessor for ShapeType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id protocol witness for ShapePathSource.path(in:) in conformance AnyCRValue(_OWORD *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v1;
  *&v10.tx = a1[2];
  v2 = 0;
  *&v1 = 0;
  v3 = 1.0;
  v4 = 1.0;
  v5 = CGPathCreateWithRect(*(&v1 - 8), &v10);
  v6 = [objc_opt_self() bezierPathWithCGPath_];
  v7 = [v6 bezierPathByReversingPath];

  v8 = [v7 CGPath];
  return v8;
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance AnyCRValue()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408BA10;
  v0._countAndFlagsBits = 0x206E776F6E6B6E55;
  v0._object = 0xED00006570616853;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000029;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v4)._countAndFlagsBits;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RectanglePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RectanglePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource.CodingKeys and conformance RectanglePathSource.CodingKeys);
  }

  return result;
}

id protocol witness for ShapePathSource.path(in:) in conformance RectanglePathSource(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E695EFF0];

  return protocol witness for ShapePathSource.path(in:) in conformance RectanglePathSource(a1, a2, a3, v3);
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance RectanglePathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B9E0;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._countAndFlagsBits = 0x6C676E6174636552;
  v2._object = 0x80000001D408B9C0;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v2._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0xE900000000000065;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v0, paperKitBundle, v1, v4)._countAndFlagsBits;
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance RectanglePathSource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RectanglePathSource and conformance RectanglePathSource();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t RoundedRectPathSource.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737569646172 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RoundedRectPathSource.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737569646172 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RoundedRectPathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RoundedRectPathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

CGPathRef __swiftcall RoundedRectPathSource.path(in:)(CGAffineTransform *in)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *&in->c;
  *&transform.a = *&in->a;
  *&transform.c = v3;
  *&transform.tx = *&in->tx;
  CGAffineTransform.decompose(initialRotation:)(&t1, 0.0);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v17.origin.x = t1.a;
  v17.origin.y = t1.b;
  v17.size.width = t1.c;
  v17.size.height = t1.d;
  Width = CGRectGetWidth(v17);
  v18.origin.x = a;
  v18.origin.y = b;
  v18.size.width = c;
  v18.size.height = d;
  Height = CGRectGetHeight(v18);
  if (Height >= Width)
  {
    Height = Width;
  }

  v10 = ppk_bezierPathWithContinuousCornerRoundedRect(0.0, 0.0, c, d, v2 * Height);
  CGAffineTransformMakeScale(&t1, 1.0 / c, 1.0 / d);
  v13 = transform;
  CGAffineTransformConcat(&transform, &t1, &v13);
  v11 = MEMORY[0x1DA6CF2B0](v10, &transform);
  if (!v11)
  {
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = c;
    v19.size.height = d;
    v11 = CGPathCreateWithRect(v19, &transform);
  }

  return v11;
}

uint64_t RoundedRectPathSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit21RoundedRectPathSourceV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys);
  }

  return result;
}

uint64_t RoundedRectPathSource.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA6CE840](*&v1);
}

Swift::Int RoundedRectPathSource.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA6CE840](*&v2);
  return Hasher._finalize()();
}

uint64_t RoundedRectPathSource.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit21RoundedRectPathSourceV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RoundedRectPathSource.CodingKeys and conformance RoundedRectPathSource.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void protocol witness for ShapePathSource.subscript.getter in conformance RoundedRectPathSource(_BYTE *a1, CGFloat *a2)
{
  if (*a1 == 5)
  {
    v30 = v12;
    v31 = v11;
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v37 = v5;
    v38 = v3;
    v39 = v4;
    v14 = *a2;
    v13 = a2[1];
    v25 = a2[2];
    v26 = a2[3];
    v27 = a2[4];
    v28 = a2[5];
    v15 = *v2;
    CGAffineTransform.decompose(initialRotation:)(&v29, 0.0);
    a = v29.a;
    b = v29.b;
    c = v29.c;
    d = v29.d;
    v40.origin.x = v29.a;
    v40.origin.y = v29.b;
    v40.size.width = v29.c;
    v40.size.height = v29.d;
    Width = CGRectGetWidth(v40);
    v41.origin.x = a;
    v41.origin.y = b;
    v41.size.width = c;
    v41.size.height = d;
    if (Width >= CGRectGetHeight(v41))
    {
      v42.origin.x = a;
      v42.origin.y = b;
      v42.size.width = c;
      v42.size.height = d;
      v23 = v15 * CGRectGetHeight(v42);
      v43.origin.x = a;
      v43.origin.y = b;
      v43.size.width = c;
      v43.size.height = d;
      v24 = CGRectGetWidth(v43);
      v29.a = v14;
      v29.b = v13;
      v29.c = v25;
      v29.d = v26;
      v29.tx = v27;
      v29.ty = v28;
      v22 = v23 / v24;
      v21 = 0;
    }

    else
    {
      v29.a = v14;
      v29.b = v13;
      v29.c = v25;
      v29.d = v26;
      v29.tx = v27;
      v29.ty = v28;
      v21 = 0;
      v22 = v15;
    }

    CGPointApplyAffineTransform(*&v22, &v29);
  }
}

void protocol witness for ShapePathSource.subscript.setter in conformance RoundedRectPathSource(_BYTE *a1, _OWORD *a2, CGFloat a3, CGFloat a4)
{
  if (*a1 == 5)
  {
    v28 = v14;
    v29 = v13;
    v30 = v12;
    v31 = v11;
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v35 = v7;
    v36 = v5;
    v37 = v6;
    v15 = a2[1];
    *&v27.a = *a2;
    *&v27.c = v15;
    *&v27.tx = a2[2];
    CGAffineTransformInvert(&v26, &v27);
    v27 = v26;
    v38.x = a3;
    v38.y = a4;
    *&v18 = *&CGPointApplyAffineTransform(v38, &v27);
    CGAffineTransform.decompose(initialRotation:)(&v27, 0.0);
    v19 = *&v27.a;
    c = v27.c;
    d = v27.d;
    v39.origin = *&v27.a;
    v39.size.width = v27.c;
    v39.size.height = v27.d;
    Width = CGRectGetWidth(v39);
    v40.origin = v19;
    v40.size.width = c;
    v40.size.height = d;
    v23 = CGRectGetWidth(v40);
    v41.origin = v19;
    v41.size.width = c;
    v41.size.height = d;
    Height = CGRectGetHeight(v41);
    if (Height >= v23)
    {
      Height = v23;
    }

    v25 = v18 * Width / Height;
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    if (v25 > 0.5)
    {
      v25 = 0.5;
    }

    *v4 = v25;
  }
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance RoundedRectPathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B980;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x80000001D408B960;
  v2._object = 0x80000001D4086820;
  v4._countAndFlagsBits = 0xD000000000000032;
  v2._countAndFlagsBits = 0xD000000000000011;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v0, paperKitBundle, v2, v4)._countAndFlagsBits;
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance RoundedRectPathSource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RoundedRectPathSource and conformance RoundedRectPathSource();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t EllipsePathSource.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EllipsePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EllipsePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RectanglePathSource.encode(to:)(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v7 + 8))(v9, v6);
}

unint64_t lazy protocol witness table accessor for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource.CodingKeys and conformance EllipsePathSource.CodingKeys);
  }

  return result;
}

id protocol witness for ShapePathSource.path(in:) in conformance EllipsePathSource(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E695EFE8];

  return protocol witness for ShapePathSource.path(in:) in conformance RectanglePathSource(a1, a2, a3, v3);
}

id protocol witness for ShapePathSource.path(in:) in conformance RectanglePathSource(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, double, double, double, double))
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  v10[2] = a1[2];
  v5 = a4(v10, 0.0, 0.0, 1.0, 1.0);
  v6 = [objc_opt_self() bezierPathWithCGPath_];
  v7 = [v6 bezierPathByReversingPath];

  v8 = [v7 CGPath];
  return v8;
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance EllipsePathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B930;
  v0._countAndFlagsBits = 0x657370696C6C45;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v0._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000029;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v4)._countAndFlagsBits;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance RectanglePathSource(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance RectanglePathSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance EllipsePathSource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EllipsePathSource and conformance EllipsePathSource();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

PaperKit::LinePathSource::CodingKeys_optional __swiftcall LinePathSource.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7472617473 && stringValue._object == 0xE500000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6C6F72746E6F63 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 6581861 && object == 0xE300000000000000)
  {

    v7 = 2;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::LinePathSource::CodingKeys_optional __swiftcall LinePathSource.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 3;
  if (intValue < 3)
  {
    v2 = intValue;
  }

  *v1 = v2;
  return intValue;
}

uint64_t LinePathSource.CodingKeys.stringValue.getter()
{
  v1 = 0x6C6F72746E6F63;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LinePathSource.CodingKeys()
{
  v1 = 0x6C6F72746E6F63;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinePathSource.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit14LinePathSourceV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v8;
  v18 = v9;
  v16 = 0;
  type metadata accessor for CGPoint(0);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_1(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = v10;
    v18 = v11;
    v16 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v12;
    v18 = v13;
    v16 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LinePathSource.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6CE840](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x1DA6CE840](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x1DA6CE840](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1DA6CE840](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x1DA6CE840](*&v10);
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  return MEMORY[0x1DA6CE840](*&v11);
}

Swift::Int LinePathSource.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v1;
  }

  MEMORY[0x1DA6CE840](*&v7);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x1DA6CE840](*&v8);
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  MEMORY[0x1DA6CE840](*&v9);
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x1DA6CE840](*&v10);
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v5;
  }

  MEMORY[0x1DA6CE840](*&v11);
  if (v6 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  MEMORY[0x1DA6CE840](*&v12);
  return Hasher._finalize()();
}

uint64_t LinePathSource.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit14LinePathSourceV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v14 = 0;
    _sSo7CGPointVABSE12CoreGraphicsWlTm_1(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v13;
    v14 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v13;
    v14 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v13;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LinePathSource()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  CGPoint.hash(into:)(v1, v2);
  CGPoint.hash(into:)(v3, v4);
  CGPoint.hash(into:)(v5, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LinePathSource()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  CGPoint.hash(into:)(*v0, v0[1]);
  CGPoint.hash(into:)(v1, v2);

  return CGPoint.hash(into:)(v3, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinePathSource()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  CGPoint.hash(into:)(v1, v2);
  CGPoint.hash(into:)(v3, v4);
  CGPoint.hash(into:)(v5, v6);
  return Hasher._finalize()();
}

CGMutablePathRef protocol witness for ShapePathSource.path(in:) in conformance LinePathSource(CGAffineTransform *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[2] - *v1 * 0.25 - v5 * 0.25;
  v8 = v1[3] - v4 * 0.25 - v6 * 0.25;
  *&v9 = v7 + v7;
  *&v10 = v8 + v8;
  Mutable = CGPathCreateMutable();
  CGMutablePathRef.move(to:transform:)(__PAIR128__(*&v4, *&v3), a1);
  CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(*&v6, *&v5), __PAIR128__(v10, v9), a1);
  return Mutable;
}

double protocol witness for ShapePathSource.subscript.getter in conformance LinePathSource(_BYTE *a1, CGFloat *a2)
{
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = *a1;
  if (v8 == 2)
  {
    v10 = v2[4];
    v11 = v2[5];
  }

  else if (v8 == 1)
  {
    v10 = v2[2];
    v11 = v2[3];
  }

  else
  {
    result = 0.0;
    if (*a1)
    {
      return result;
    }

    v10 = *v2;
    v11 = v2[1];
  }

  v12.a = *a2;
  v12.b = v3;
  v12.c = v5;
  v12.d = v4;
  v12.tx = v7;
  v12.ty = v6;
  *&result = *&CGPointApplyAffineTransform(*&v10, &v12);
  return result;
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance LinePathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B900;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._object = 0x80000001D408B8E0;
  v4._countAndFlagsBits = 0xD000000000000025;
  v1._countAndFlagsBits = 0xD000000000000011;
  v2._countAndFlagsBits = 1701734732;
  v2._object = 0xE400000000000000;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v0, paperKitBundle, v2, v4)._countAndFlagsBits;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance LinePathSource()
{
  lazy protocol witness table accessor for type LinePathSource and conformance LinePathSource();
  lazy protocol witness table accessor for type LinePathSource and conformance LinePathSource();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance LinePathSource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinePathSource and conformance LinePathSource();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

PaperKit::CalloutBubblePathSource::CodingKeys_optional __swiftcall CalloutBubblePathSource.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x69736F506C696174 && stringValue._object == 0xEC0000006E6F6974;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6C696154666C6168 && object == 0xED0000656C676E41)
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

uint64_t CalloutBubblePathSource.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6C696154666C6168;
  }

  else
  {
    return 0x69736F506C696174;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CalloutBubblePathSource.CodingKeys()
{
  if (*v0)
  {
    return 0x6C696154666C6168;
  }

  else
  {
    return 0x69736F506C696174;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CalloutBubblePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CalloutBubblePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

CGPathRef __swiftcall CalloutBubblePathSource.path(in:)(CGAffineTransform *in)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  v5 = *v1 + -0.5;
  v6 = v4 + -0.5;
  if (v5 * v5 + v6 * v6 >= 0.25)
  {
    v12 = v1[2];
    v13 = atan2(v6, v5) - v12;
    Mutable = CGPathCreateMutable();
    v14 = 0.5;
    CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
    CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v4, *&v3), in);
    v15 = 1.0;
    if (v13 != 0.0)
    {
      v16 = __sincos_stret(v13);
      v15 = v16.__cosval * 0.5 + 0.5;
      v14 = v16.__sinval * 0.5 + 0.5;
    }

    CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v14, *&v15), in);
    CGPathCloseSubpath(Mutable);
  }

  else
  {
    v7 = *&in->c;
    *&v18.a = *&in->a;
    *&v18.c = v7;
    *&v18.tx = *&in->tx;
    v8 = 0;
    *&v7 = 0;
    v9 = 1.0;
    v10 = 1.0;
    return CGPathCreateWithEllipseInRect(*(&v7 - 8), &v18);
  }

  return Mutable;
}

uint64_t CalloutBubblePathSource.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit23CalloutBubblePathSourceV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[0] = v8;
  v12[1] = v9;
  v13 = 0;
  type metadata accessor for CGPoint(0);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_1(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[0] = v10;
    v13 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CalloutBubblePathSource.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6CE840](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6CE840](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1DA6CE840](*&v5);
}

Swift::Int CalloutBubblePathSource.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1DA6CE840](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1DA6CE840](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1DA6CE840](*&v6);
  return Hasher._finalize()();
}

uint64_t CalloutBubblePathSource.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit23CalloutBubblePathSourceV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v14 = 0;
    _sSo7CGPointVABSE12CoreGraphicsWlTm_1(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v13[0];
    v10 = v13[1];
    v14 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v13[0];
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CalloutBubblePathSource()
{
  v1 = v0[2];
  CGPoint.hash(into:)(*v0, v0[1]);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1DA6CE840](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CalloutBubblePathSource()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  CGPoint.hash(into:)(v1, v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1DA6CE840](*&v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance CalloutBubblePathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B8B0;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._countAndFlagsBits = 0x4220686365657053;
  v1._object = 0xED0000656C626275;
  v2._object = 0x80000001D408B890;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v0, paperKitBundle, v1, v4)._countAndFlagsBits;
}

double protocol witness for CRType.copy(renamingReferences:) in conformance CalloutBubblePathSource@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CalloutBubblePathSource()
{
  lazy protocol witness table accessor for type CalloutBubblePathSource and conformance CalloutBubblePathSource();
  lazy protocol witness table accessor for type CalloutBubblePathSource and conformance CalloutBubblePathSource();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CalloutBubblePathSource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CalloutBubblePathSource and conformance CalloutBubblePathSource();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t RegularPolygonPathSource.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365646973 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RegularPolygonPathSource.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365646973 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RegularPolygonPathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RegularPolygonPathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

CGPathRef __swiftcall RegularPolygonPathSource.path(in:)(CGAffineTransform *in)
{
  tx = in->tx;
  ty = in->ty;
  v5 = *v1;
  Mutable = CGPathCreateMutable();
  CGAffineTransformMakeTranslation(&transform, 0.5, 0.5);
  t1 = transform;
  v7 = *&in->c;
  *&v18.a = *&in->a;
  *&v18.c = v7;
  v18.tx = tx;
  v18.ty = ty;
  CGAffineTransformConcat(&transform, &t1, &v18);
  CGMutablePathRef.move(to:transform:)(__PAIR128__(-0.5, 0x3C81A62633145C07), &transform);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 * 6.28318531 / v5 + -1.57079633;
      if (v10 == 0.0)
      {
        v11 = 0.0;
        v12 = 0.5;
      }

      else
      {
        v13 = __sincos_stret(v10);
        v12 = v13.__cosval * 0.5;
        v11 = v13.__sinval * 0.5;
      }

      CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v11, *&v12), &transform);
      if (v5 == v9)
      {
        break;
      }

      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        break;
      }
    }

    CGPathCloseSubpath(Mutable);
    v15 = [objc_opt_self() bezierPathWithCGPath_];
    v16 = [v15 bezierPathByReversingPath];

    v17 = [v16 CGPath];
    return v17;
  }

  return result;
}

uint64_t RegularPolygonPathSource.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit24RegularPolygonPathSourceV10CodingKeysOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int RegularPolygonPathSource.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t RegularPolygonPathSource.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit24RegularPolygonPathSourceV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void protocol witness for ShapePathSource.subscript.getter in conformance RegularPolygonPathSource(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 6)
  {
    v12 = v6;
    v13 = v5;
    v14 = v3;
    v15 = v4;
    v8 = *(a2 + 32);
    v7 = *(a2 + 40);
    specialized static RegularPolygonPathSource.numberOfSidesToPosition(_:minSides:maxSides:)(*v2, 3, 12);
    v10 = *(a2 + 16);
    *&v11.a = *a2;
    *&v11.c = v10;
    v11.tx = v8;
    v11.ty = v7;
    CGPointApplyAffineTransform(v16, &v11);
  }
}

void protocol witness for ShapePathSource.subscript.setter in conformance RegularPolygonPathSource(unsigned __int8 *a1, _OWORD *a2, CGFloat a3, CGFloat a4)
{
  v7 = *a1;
  v8 = a2[1];
  *&v12.a = *a2;
  *&v12.c = v8;
  *&v12.tx = a2[2];
  CGAffineTransformInvert(&v11, &v12);
  v12 = v11;
  v13.x = a3;
  v13.y = a4;
  v9 = CGPointApplyAffineTransform(v13, &v12);
  if (v7 == 6)
  {
    specialized static RegularPolygonPathSource.numberOfSidesFromPosition(_:minSides:maxSides:)(3, 12, v9.x, v9.y);
    *v4 = v10;
  }
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance RegularPolygonPathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B850;
  v0._countAndFlagsBits = 0x2072616C75676552;
  v0._object = 0xEF6E6F67796C6F50;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000030;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v4)._countAndFlagsBits;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance RegularPolygonPathSource(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit24RegularPolygonPathSourceV10CodingKeysOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance RoundedRectPathSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance RegularPolygonPathSource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegularPolygonPathSource and conformance RegularPolygonPathSource();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

PaperKit::StarPathSource::CodingKeys_optional __swiftcall StarPathSource.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x73746E696F70 && stringValue._object == 0xE600000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x64615272656E6E69 && object == 0xEB00000000737569)
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

PaperKit::StarPathSource::CodingKeys_optional __swiftcall StarPathSource.CodingKeys.init(intValue:)(Swift::Int intValue)
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

uint64_t StarPathSource.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x64615272656E6E69;
  }

  else
  {
    return 0x73746E696F70;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StarPathSource.CodingKeys()
{
  if (*v0)
  {
    return 0x64615272656E6E69;
  }

  else
  {
    return 0x73746E696F70;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StarPathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StarPathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StarPathSource.init(points:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for defaultInnerRadius != -1)
  {
    v4 = result;
    v5 = a2;
    swift_once();
    result = v4;
    a2 = v5;
  }

  v2 = 3;
  if (result > 3)
  {
    v2 = result;
  }

  v3 = static StarPathSource.defaultInnerRadius;
  if (v2 >= 10)
  {
    v2 = 10;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

CGPathRef __swiftcall StarPathSource.path(in:)(CGAffineTransform *in)
{
  tx = in->tx;
  ty = in->ty;
  v5 = *v1;
  v6 = *(v1 + 8);
  Mutable = CGPathCreateMutable();
  CGAffineTransformMakeTranslation(&transform, 0.5, 0.5);
  t1 = transform;
  v8 = *&in->c;
  *&v24.a = *&in->a;
  *&v24.c = v8;
  v24.tx = tx;
  v24.ty = ty;
  CGAffineTransformConcat(&transform, &t1, &v24);
  CGMutablePathRef.move(to:transform:)(__PAIR128__(-0.5, 0x3C81A62633145C07), &transform);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v10 = 0;
      v11 = 6.28318531 / v5;
      v12 = v11 * 0.5;
      v13 = v6 * 0.5;
      do
      {
        v14 = v11 * v10 + -1.57079633;
        sinval = 0.0;
        v16 = 0.5;
        v17 = 0.0;
        if (v14 != 0.0)
        {
          v18 = __sincos_stret(v11 * v10 + -1.57079633);
          v16 = v18.__cosval * 0.5;
          v17 = v18.__sinval * 0.5;
        }

        CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v17, *&v16), &transform);
        cosval = 1.0;
        if (v12 + v14 != 0.0)
        {
          v20 = __sincos_stret(v12 + v14);
          cosval = v20.__cosval;
          sinval = v20.__sinval;
        }

        ++v10;
        CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v13 * sinval, v13 * cosval), &transform);
      }

      while (v5 != v10);
    }

    CGMutablePathRef.addLine(to:transform:)(__PAIR128__(-0.5, 0x3C81A62633145C07), &transform);
    CGPathCloseSubpath(Mutable);
    v21 = [objc_opt_self() bezierPathWithCGPath_];
    v22 = [v21 bezierPathByReversingPath];

    v23 = [v22 CGPath];
    return v23;
  }

  return result;
}

uint64_t StarPathSource.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit14StarPathSourceV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = v8;
    v10[15] = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StarPathSource.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x1DA6CE810](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1DA6CE840](*&v2);
}

Swift::Int StarPathSource.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1DA6CE840](*&v3);
  return Hasher._finalize()();
}

uint64_t StarPathSource.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit14StarPathSourceV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance StarPathSource()
{
  v1 = *(v0 + 8);
  MEMORY[0x1DA6CE810](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1DA6CE840](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StarPathSource()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1DA6CE840](*&v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance StarPathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B820;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._object = 0x80000001D408B800;
  v4._countAndFlagsBits = 0xD000000000000025;
  v1._countAndFlagsBits = 0xD000000000000011;
  v2._countAndFlagsBits = 1918989395;
  v2._object = 0xE400000000000000;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v0, paperKitBundle, v2, v4)._countAndFlagsBits;
}

double protocol witness for CRType.copy(renamingReferences:) in conformance StarPathSource@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance StarPathSource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StarPathSource and conformance StarPathSource();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t ArrowShapePathSource.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F4372656E726F63 && a2 == 0xED00006C6F72746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArrowShapePathSource.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F4372656E726F63 && a2 == 0xED00006C6F72746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance RectanglePathSource.CodingKeys(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return MEMORY[0x1EEDF56F8](a1, a2, v7, v8);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArrowShapePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArrowShapePathSource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

CGPathRef __swiftcall ArrowShapePathSource.path(in:)(CGAffineTransform *in)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v2 = v1[1];
  v4 = *&in->c;
  *&v8.a = *&in->a;
  *&v8.c = v4;
  *&v8.tx = *&in->tx;
  Mutable = CGPathCreateMutable();
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  CGMutablePathRef.move(to:transform:)(__PAIR128__(1.0 - v2, *&v3), &transform);
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(1.0, *&v3), &transform);
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(0.5, 1.0), &transform);
  CGMutablePathRef.addLine(to:transform:)(*&v3, &transform);
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v2, *&v3), &transform);
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v2, 0), &transform);
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(1.0 - v2, 0), &transform);
  CGPathCloseSubpath(Mutable);
  v6 = MEMORY[0x1DA6CF2B0](Mutable, &v8);
  if (!v6)
  {
    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    v11.size.width = 1.0;
    v11.size.height = 1.0;
    v6 = CGPathCreateWithRect(v11, &v8);
  }

  return v6;
}

uint64_t ArrowShapePathSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit20ArrowShapePathSourceV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[0] = v7;
  v10[1] = v8;
  type metadata accessor for CGPoint(0);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_1(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ArrowShapePathSource.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6CE840](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA6CE840](*&v3);
}

Swift::Int ArrowShapePathSource.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA6CE840](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6CE840](*&v4);
  return Hasher._finalize()();
}

uint64_t ArrowShapePathSource.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit20ArrowShapePathSourceV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    _sSo7CGPointVABSE12CoreGraphicsWlTm_1(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ArrowShapePathSource()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  CGPoint.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArrowShapePathSource()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  CGPoint.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

double protocol witness for ShapePathSource.subscript.getter in conformance ArrowShapePathSource(_BYTE *a1, _OWORD *a2)
{
  result = 0.0;
  if (*a1 == 9)
  {
    v8 = v3;
    v9 = v4;
    v10 = *v2;
    v6 = a2[1];
    *&v7.a = *a2;
    *&v7.c = v6;
    *&v7.tx = a2[2];
    *&result = *&CGPointApplyAffineTransform(v10, &v7);
  }

  return result;
}

int8x16_t protocol witness for ShapePathSource.subscript.setter in conformance ArrowShapePathSource(_BYTE *a1, _OWORD *a2, int8x16_t result, CGFloat a4)
{
  if (*a1 == 9)
  {
    v15 = v8;
    v16 = v7;
    v17 = v5;
    v18 = v6;
    v9 = a2[1];
    *&v14.a = *a2;
    *&v14.c = v9;
    *&v14.tx = a2[2];
    v11 = *result.i64;
    CGAffineTransformInvert(&v13, &v14);
    v14 = v13;
    v19.x = v11;
    v19.y = a4;
    v12 = vminnmq_f64(CGPointApplyAffineTransform(v19, &v14), xmmword_1D406A910);
    result = vandq_s8(v12, vcgezq_f64(v12));
    *v4 = result;
  }

  return result;
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance ArrowShapePathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B7D0;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._countAndFlagsBits = 0x776F727241;
  v2._object = 0x80000001D408B7B0;
  v4._countAndFlagsBits = 0xD000000000000027;
  v2._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0xE500000000000000;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v0, paperKitBundle, v1, v4)._countAndFlagsBits;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance StarPathSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance ArrowShapePathSource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArrowShapePathSource and conformance ArrowShapePathSource();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t protocol witness for ShapePathSource.path(in:) in conformance BezierPathSource(_OWORD *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = MEMORY[0x1DA6CF2B0](v2, v5);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for ShapePathSource.localizedName.getter in conformance BezierPathSource()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408B780;
  v0._countAndFlagsBits = 0x50207265697A6542;
  v0._object = 0xEB00000000687461;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v4)._countAndFlagsBits;
}

uint64_t ShapeType.init(_:)()
{
  type metadata accessor for ShapeType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Shape.init(frame:type:strokeWidth:strokeColor:fillColor:text:textResizeBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>)
{
  v134 = a5;
  v130 = a1;
  v90 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v131 = *(v19 - 8);
  v132 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v87 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v119 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v87 = &v87 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v87 - v22;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v87 - v23;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v87 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v87 - v25;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v107 = &v87 - v28;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v103 = &v87 - v31;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v96 = &v87 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v111 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v87 - v38;
  v106 = &v87 - v38;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v135);
  v41 = &v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v87 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v87 - v46;
  v136 = &v87 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v87 - v49;
  v138 = &v87 - v49;
  v133 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v133);
  v89 = &v87 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v88 = &v87 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v137 = &v87 - v55;
  v110 = *v134;
  swift_storeEnumTagMultiPayload();
  v128 = a2;
  outlined init with copy of Date?(a2, v50, &_s8PaperKit5ColorVSgMd);
  v127 = a3;
  outlined init with copy of Date?(a3, v47, &_s8PaperKit5ColorVSgMd);
  v126 = a4;
  outlined init with copy of Date?(a4, v39, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  type metadata accessor for CGRect(0);
  v100 = v56;
  v99 = _sSo7CGPointVABSE12CoreGraphicsWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v139 = 0u;
  v140 = 0u;
  v57 = v90;
  CRRegister.init(wrappedValue:)();
  v58 = type metadata accessor for Shape(0);
  *&v139 = 0;
  v134 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v102 = v58[6];
  v59 = type metadata accessor for Color(0);
  v93 = *(*(v59 - 8) + 56);
  v93(v44, 1, 1, v59);
  outlined init with copy of Date?(v44, v41, &_s8PaperKit5ColorVSgMd);
  v95 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s8PaperKit5ColorVSgMd);
  v97 = v58[7];
  v93(v44, 1, 1, v59);
  v94 = v44;
  outlined init with copy of Date?(v44, v41, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s8PaperKit5ColorVSgMd);
  v93 = v58[8];
  *&v139 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v92 = v58[9];
  v60 = v88;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ShapeType(v60, v89);
  v91 = _sSo7CGPointVABSE12CoreGraphicsWlTm_1(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  v61 = v60;
  outlined destroy of ShapeType(v60);
  *&v139 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v139 = 0;
  BYTE8(v139) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v139 = 0;
  BYTE8(v139) = 0;
  CRRegister.init(wrappedValue:)();
  v62 = v58[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v89 = v62;
  CRAttributedString.init(_:)();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v64 = v96;
  (*(*(v63 - 8) + 56))(v96, 1, 1, v63);
  outlined init with copy of Date?(v64, v98, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v65 = v58[15];
  *&v139 = 0;
  v66 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v101 = v65;
  v98 = v66;
  CRRegister.init(wrappedValue:)();
  *&v139 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v67 = type metadata accessor for StrokeStyle(0);
  v68 = v103;
  (*(*(v67 - 8) + 56))(v103, 1, 1, v67);
  outlined init with copy of Date?(v68, v104, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s8PaperKit11StrokeStyleOSgMd);
  v69 = type metadata accessor for Shadow();
  v70 = v107;
  (*(*(v69 - 8) + 56))(v107, 1, 1, v69);
  outlined init with copy of Date?(v70, v108, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s8PaperKit6ShadowVSgMd);
  v140 = 0u;
  v141 = 0u;
  v139 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v139 = a7;
  *(&v139 + 1) = a8;
  *&v140 = a9;
  *(&v140 + 1) = a10;
  v71 = v112;
  CRRegister.init(_:)();
  (*(v113 + 40))(v57, v71, v114);
  outlined init with copy of ShapeType(v137, v61);
  v72 = v115;
  CRRegister.init(_:)();
  (*(v116 + 40))(v57 + v92, v72, v117);
  *&v139 = a11;
  v73 = v118;
  CRRegister.init(_:)();
  (*(v120 + 40))(v93 + v57, v73, v121);
  v74 = v94;
  outlined init with copy of Date?(v138, v94, &_s8PaperKit5ColorVSgMd);
  v75 = v122;
  CRRegister.init(_:)();
  v76 = *(v123 + 40);
  v77 = v124;
  v76(v57 + v97, v75, v124);
  outlined init with copy of Date?(v136, v74, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v78 = v77;
  v79 = v106;
  v76(v57 + v102, v75, v78);
  v80 = v111;
  v81 = v125;
  outlined init with copy of Date?(v79, v111, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v82 = v119;
  if ((*(v119 + 48))(v80, 1, v81) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v83 = v87;
    (*(v82 + 32))(v87, v80, v81);
    (*(v82 + 40))(v57 + v89, v83, v81);
  }

  *&v139 = v110;
  v84 = v129;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v126, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s8PaperKit5ColorVSgMd);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13TaggedValue_9Vy8PaperKit19RectanglePathSourceVAD07EllipsegH0VAD04LinegH0VAD06BeziergH0VAD013CalloutBubblegH0VAD011RoundedRectgH0VAD014RegularPolygongH0VAD04StargH0VAD010ArrowShapegH0VGMd);
  (*(*(v85 - 8) + 8))(v130, v85);
  outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v136, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s8PaperKit5ColorVSgMd);
  outlined destroy of ShapeType(v137);
  return (*(v131 + 40))(v57 + v101, v84, v132);
}

{
  v111 = a4;
  v118 = a3;
  v119 = a2;
  v117 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v113 = *(v18 - 8);
  v114 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v110 = &v72 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v109 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v72 = &v72 - v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v72 - v23;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v72 - v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v72 - v25;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v72 - v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v72 - v29;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v88 = &v72 - v32;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v80 = &v72 - v35;
  v115 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v115);
  v76 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v75 = &v72 - v38;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v116);
  v40 = &v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v72 - v42;
  v97 = *a5;
  type metadata accessor for CGRect(0);
  v87 = v44;
  v86 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v120 = 0u;
  v121 = 0u;
  CRRegister.init(wrappedValue:)();
  v45 = type metadata accessor for Shape(0);
  *&v120 = 0;
  v74 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v73 = a6;
  CRRegister.init(_:)();
  v90 = v45[6];
  v46 = type metadata accessor for Color(0);
  v47 = *(*(v46 - 8) + 56);
  v47(v43, 1, 1, v46);
  outlined init with copy of Date?(v43, v40, &_s8PaperKit5ColorVSgMd);
  v84 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit5ColorVSgMd);
  v85 = v45[7];
  v47(v43, 1, 1, v46);
  outlined init with copy of Date?(v43, v40, &_s8PaperKit5ColorVSgMd);
  v48 = v73;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit5ColorVSgMd);
  v83 = v45[8];
  *&v120 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v78 = v45[9];
  v49 = v75;
  swift_storeEnumTagMultiPayload();
  v79 = type metadata accessor for ShapeType;
  _s8PaperKit9ShapeTypeOWOcTm_3(v49, v76, type metadata accessor for ShapeType);
  v77 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit9ShapeTypeOWOhTm_1(v49, type metadata accessor for ShapeType);
  *&v120 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v120 = 0;
  BYTE8(v120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v120 = 0;
  BYTE8(v120) = 0;
  CRRegister.init(wrappedValue:)();
  v50 = v45[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v76 = v50;
  CRAttributedString.init(_:)();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v52 = v80;
  (*(*(v51 - 8) + 56))(v80, 1, 1, v51);
  outlined init with copy of Date?(v52, v81, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v53 = v45[15];
  *&v120 = 0;
  v54 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v82 = v53;
  v81 = v54;
  CRRegister.init(wrappedValue:)();
  *&v120 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v55 = type metadata accessor for StrokeStyle(0);
  v56 = v88;
  (*(*(v55 - 8) + 56))(v88, 1, 1, v55);
  outlined init with copy of Date?(v56, v89, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s8PaperKit11StrokeStyleOSgMd);
  v57 = type metadata accessor for Shadow();
  v58 = v92;
  (*(*(v57 - 8) + 56))(v92, 1, 1, v57);
  outlined init with copy of Date?(v58, v93, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s8PaperKit6ShadowVSgMd);
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v120 = a7;
  *(&v120 + 1) = a8;
  *&v121 = a9;
  *(&v121 + 1) = a10;
  v59 = v96;
  CRRegister.init(_:)();
  (*(v98 + 40))(v48, v59, v99);
  _s8PaperKit9ShapeTypeOWOcTm_3(v117, v49, v79);
  v60 = v100;
  CRRegister.init(_:)();
  (*(v101 + 40))(v48 + v78, v60, v102);
  *&v120 = a11;
  v61 = v103;
  CRRegister.init(_:)();
  (*(v104 + 40))(v48 + v83, v61, v105);
  outlined init with copy of Date?(v119, v43, &_s8PaperKit5ColorVSgMd);
  v62 = v106;
  CRRegister.init(_:)();
  v63 = *(v107 + 40);
  v64 = v108;
  v63(v48 + v85, v62, v108);
  outlined init with copy of Date?(v118, v43, &_s8PaperKit5ColorVSgMd);
  v65 = v111;
  CRRegister.init(_:)();
  v63(v48 + v90, v62, v64);
  v66 = v110;
  outlined init with copy of Date?(v65, v110, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v67 = v109;
  v68 = v95;
  if ((*(v109 + 48))(v66, 1) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v69 = v72;
    (*(v67 + 32))(v72, v66, v68);
    (*(v67 + 40))(v48 + v76, v69, v68);
  }

  *&v120 = v97;
  v70 = v112;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit9ShapeTypeOWOhTm_1(v117, type metadata accessor for ShapeType);
  return (*(v113 + 40))(v48 + v82, v70, v114);
}

uint64_t ShapeType.rectangle.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result)
  {
    result = outlined destroy of ShapeType(v6);
  }

  *a1 = v8 != 0;
  return result;
}

uint64_t ShapeType.ellipse.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result != 1)
  {
    result = outlined destroy of ShapeType(v6);
  }

  *a1 = v8 != 1;
  return result;
}

uint64_t ShapeType.bezierPath.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v8 = *v6;
  }

  else
  {
    result = outlined destroy of ShapeType(v6);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t ShapeType.calloutBubble.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShapeType(v1, v5);
  result = swift_getEnumCaseMultiPayload();
  v7 = result;
  if (result == 4)
  {
    v9 = *v5;
    v8 = *(v5 + 2);
  }

  else
  {
    result = outlined destroy of ShapeType(v5);
    v8 = 0;
    v9 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7 != 4;
  return result;
}

uint64_t ShapeType.roundedRectangle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result == 5)
  {
    v9 = *v6;
  }

  else
  {
    result = outlined destroy of ShapeType(v6);
    v9 = 0;
  }

  *a1 = v9;
  *(a1 + 8) = v8 != 5;
  return result;
}

uint64_t ShapeType.regularPolygon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result == 6)
  {
    v9 = *v6;
  }

  else
  {
    result = outlined destroy of ShapeType(v6);
    v9 = 0;
  }

  *a1 = v9;
  *(a1 + 8) = v8 != 6;
  return result;
}

uint64_t ShapeType.star.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result == 7)
  {
    v9 = *v6;
  }

  else
  {
    result = outlined destroy of ShapeType(v6);
    v9 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v8 != 7;
  return result;
}

uint64_t ShapeType.arrowShape.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ShapeType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result == 8)
  {
    v9 = *v6;
  }

  else
  {
    result = outlined destroy of ShapeType(v6);
    v9 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v8 != 8;
  return result;
}

uint64_t ShapeType.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShapeType(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
    v8 = type metadata accessor for AnyCRValue();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    outlined destroy of ShapeType(v6);
    v11 = type metadata accessor for AnyCRValue();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t ShapeType.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v146 = a3;
  v143 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v138 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v137 = &v122 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v122 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v122 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v133 = &v122 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v122 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v122 - v19;
  v20 = type metadata accessor for CRValueObservableDifference();
  v21 = *(v20 - 8);
  v144 = v20;
  v145 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v122 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v128 = &v122 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v126 = &v122 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v127 = &v122 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v122 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v124 = &v122 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v122 - v36;
  v37 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v37);
  v142 = (&v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v141 = (&v122 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v140 = (&v122 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v139 = (&v122 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v122 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v122 - v49);
  MEMORY[0x1EEE9AC00](v51);
  v53 = (&v122 - v52);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v122 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v122 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9ShapeTypeO_ACtMd);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v62 = &v122 - v61;
  v64 = &v122 + *(v63 + 56) - v61;
  outlined init with copy of ShapeType(v147, &v122 - v61);
  outlined init with copy of ShapeType(a1, v64);
  v65 = v62;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          outlined init with copy of ShapeType(v62, v50);
          v67 = *v50;
          if (swift_getEnumCaseMultiPayload() == 3)
          {

LABEL_37:
            v113 = v146;
            outlined destroy of ShapeType(v62);
            v114 = type metadata accessor for ShapeType.ObservableDifference(0);
            return (*(*(v114 - 8) + 56))(v113, 1, 1, v114);
          }

          goto LABEL_39;
        }

        outlined init with copy of ShapeType(v62, v47);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v100 = *(v47 + 2);
          v101 = *(v64 + 2);
          v151 = *v47;
          *&v152 = v100;
          v148 = *v64;
          *&v149 = v101;
          lazy protocol witness table accessor for type CalloutBubblePathSource and conformance CalloutBubblePathSource();
          lazy protocol witness table accessor for type CalloutBubblePathSource and conformance CalloutBubblePathSource();
          v68 = v135;
          CRValue<>.observableDifference(from:with:)();
          v103 = v144;
          v102 = v145;
          if ((*(v145 + 48))(v68, 1, v144) != 1)
          {
            v104 = *(v102 + 32);
            v105 = v127;
            v104(v127, v68, v103);
            v73 = v146;
            v104(v146, v105, v103);
            v74 = type metadata accessor for ShapeType.ObservableDifference(0);
            goto LABEL_42;
          }

          goto LABEL_35;
        }

LABEL_39:
        v116 = type metadata accessor for ShapeType.ObservableDifference(0);
        v117 = v146;
        swift_storeEnumTagMultiPayload();
        (*(*(v116 - 8) + 56))(v117, 0, 1, v116);
        return outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s8PaperKit9ShapeTypeO_ACtMd);
      }

      outlined init with copy of ShapeType(v62, v53);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_39;
      }

      v86 = v53[1];
      v151 = *v53;
      v152 = v86;
      v153 = v53[2];
      v87 = *(v64 + 1);
      v148 = *v64;
      v149 = v87;
      v150 = *(v64 + 2);
      lazy protocol witness table accessor for type LinePathSource and conformance LinePathSource();
      lazy protocol witness table accessor for type LinePathSource and conformance LinePathSource();
      v68 = v133;
      CRValue<>.observableDifference(from:with:)();
      v89 = v144;
      v88 = v145;
      if ((*(v145 + 48))(v68, 1, v144) != 1)
      {
        v90 = *(v88 + 32);
        v91 = v125;
        v90(v125, v68, v89);
        v73 = v146;
        v90(v146, v91, v89);
        v74 = type metadata accessor for ShapeType.ObservableDifference(0);
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload)
    {
      outlined init with copy of ShapeType(v62, v56);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_39;
      }

      lazy protocol witness table accessor for type EllipsePathSource and conformance EllipsePathSource();
      lazy protocol witness table accessor for type EllipsePathSource and conformance EllipsePathSource();
      v75 = v132;
      CRValue<>.observableDifference(from:with:)();
      v107 = v144;
      v106 = v145;
      if ((*(v145 + 48))(v75, 1, v144) != 1)
      {
        v118 = *(v106 + 32);
        v119 = v124;
        v118(v124, v75, v107);
        v73 = v146;
        v118(v146, v119, v107);
        v74 = type metadata accessor for ShapeType.ObservableDifference(0);
        goto LABEL_42;
      }
    }

    else
    {
      outlined init with copy of ShapeType(v62, v59);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_39;
      }

      lazy protocol witness table accessor for type RectanglePathSource and conformance RectanglePathSource();
      lazy protocol witness table accessor for type RectanglePathSource and conformance RectanglePathSource();
      v75 = v131;
      CRValue<>.observableDifference(from:with:)();
      v77 = v144;
      v76 = v145;
      if ((*(v145 + 48))(v75, 1, v144) != 1)
      {
        v78 = *(v76 + 32);
        v79 = v123;
        v78(v123, v75, v77);
        v73 = v146;
        v78(v146, v79, v77);
        v74 = type metadata accessor for ShapeType.ObservableDifference(0);
        goto LABEL_42;
      }
    }

    v108 = v75;
LABEL_36:
    outlined destroy of StocksKitCurrencyCache.Provider?(v108, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v109 = v140;
      outlined init with copy of ShapeType(v62, v140);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_39;
      }

      v110 = *v64;
      *&v151 = *v109;
      *&v148 = v110;
      lazy protocol witness table accessor for type RegularPolygonPathSource and conformance RegularPolygonPathSource();
      lazy protocol witness table accessor for type RegularPolygonPathSource and conformance RegularPolygonPathSource();
      v68 = v136;
      CRValue<>.observableDifference(from:with:)();
      v112 = v144;
      v111 = v145;
      if ((*(v145 + 48))(v68, 1, v144) != 1)
      {
        v120 = *(v111 + 32);
        v121 = v128;
        v120(v128, v68, v112);
        v73 = v146;
        v120(v146, v121, v112);
        v74 = type metadata accessor for ShapeType.ObservableDifference(0);
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    v80 = v139;
    outlined init with copy of ShapeType(v62, v139);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_39;
    }

    v81 = *v64;
    *&v151 = *v80;
    *&v148 = v81;
    lazy protocol witness table accessor for type RoundedRectPathSource and conformance RoundedRectPathSource();
    lazy protocol witness table accessor for type RoundedRectPathSource and conformance RoundedRectPathSource();
    v68 = v134;
    CRValue<>.observableDifference(from:with:)();
    v83 = v144;
    v82 = v145;
    if ((*(v145 + 48))(v68, 1, v144) == 1)
    {
LABEL_35:
      v108 = v68;
      goto LABEL_36;
    }

    v84 = *(v82 + 32);
    v85 = v126;
    v84(v126, v68, v83);
    v73 = v146;
    v84(v146, v85, v83);
    v74 = type metadata accessor for ShapeType.ObservableDifference(0);
  }

  else
  {
    if (EnumCaseMultiPayload == 7)
    {
      v92 = v141;
      outlined init with copy of ShapeType(v62, v141);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_39;
      }

      v93 = v92[1];
      v94 = *v64;
      v95 = *(v64 + 1);
      *&v151 = *v92;
      *(&v151 + 1) = v93;
      *&v148 = v94;
      *(&v148 + 1) = v95;
      lazy protocol witness table accessor for type StarPathSource and conformance StarPathSource();
      lazy protocol witness table accessor for type StarPathSource and conformance StarPathSource();
      v68 = v137;
      CRValue<>.observableDifference(from:with:)();
      v97 = v144;
      v96 = v145;
      if ((*(v145 + 48))(v68, 1, v144) != 1)
      {
        v98 = *(v96 + 32);
        v99 = v129;
        v98(v129, v68, v97);
        v73 = v146;
        v98(v146, v99, v97);
        v74 = type metadata accessor for ShapeType.ObservableDifference(0);
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload != 8)
    {
      goto LABEL_39;
    }

    outlined init with copy of ShapeType(v62, v142);
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      goto LABEL_39;
    }

    v151 = *v142;
    v148 = *v64;
    lazy protocol witness table accessor for type ArrowShapePathSource and conformance ArrowShapePathSource();
    lazy protocol witness table accessor for type ArrowShapePathSource and conformance ArrowShapePathSource();
    v68 = v138;
    CRValue<>.observableDifference(from:with:)();
    v70 = v144;
    v69 = v145;
    if ((*(v145 + 48))(v68, 1, v144) == 1)
    {
      goto LABEL_35;
    }

    v71 = *(v69 + 32);
    v72 = v130;
    v71(v130, v68, v70);
    v73 = v146;
    v71(v146, v72, v70);
    v74 = type metadata accessor for ShapeType.ObservableDifference(0);
  }

LABEL_42:
  swift_storeEnumTagMultiPayload();
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
  return outlined destroy of ShapeType(v65);
}

void ShapeType.visitReferences(_:)()
{
  v1 = type metadata accessor for AnyCRValue();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ShapeType(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x1F7) == 0)
  {
    if (EnumCaseMultiPayload == 3)
    {
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
      (*(v2 + 32))(v4, v7 + *(v9 + 48), v1);
      AnyCRValue.visitReferences(_:)();
      (*(v2 + 8))(v4, v1);
    }
  }
}

uint64_t ShapeType.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AnyCRValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShapeType(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      *a1 = *v9;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v12 = *(v9 + 1);
      *a1 = *v9;
      *(a1 + 8) = v12;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      *a1 = *v9;
    }

    else
    {
      v14 = *v9;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
      (*(v4 + 32))(v6, &v9[*(v15 + 48)], v3);
      *a1 = v14;
      AnyCRValue.copy(renamingReferences:)();
      (*(v4 + 8))(v6, v3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *(v9 + 1);
      *a1 = *v9;
      *(a1 + 16) = v11;
      *(a1 + 32) = *(v9 + 2);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      *a1 = *v9;
    }

    else
    {
      v13 = *(v9 + 2);
      *a1 = *v9;
      *(a1 + 16) = v13;
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ShapeType.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v64 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v64);
  v62 = (v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v65 = v53 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v61 = (v53 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v53 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v53 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v53 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v53 - v25;
  v27 = v69;
  dispatch thunk of CRDecoder.valueContainer()();
  if (v27)
  {
  }

  v54 = v26;
  v55 = v23;
  v56 = v17;
  v57 = v20;
  v58 = v14;
  v59 = v11;
  v60 = v8;
  v28 = v65;
  v29 = dispatch thunk of CRDecoder.CRValueContainer.decodeTaggedContainer()();
  v69 = 0;
  v31 = v29;
  v53[1] = v30;

  if (v31 > 3)
  {
    if (v31 <= 5)
    {
      if (v31 != 4)
      {
        lazy protocol witness table accessor for type RoundedRectPathSource and conformance RoundedRectPathSource();
        v41 = v69;
        CRValueStruct.init(from:)();
        if (v41)
        {
        }

        v51 = v59;
        *v59 = v66;
        swift_storeEnumTagMultiPayload();
        return outlined init with take of ShapeType(v51, v63);
      }

      lazy protocol witness table accessor for type CalloutBubblePathSource and conformance CalloutBubblePathSource();
      v46 = v69;
      CRValueStruct.init(from:)();

      if (v46)
      {
        return result;
      }

      v47 = v67;
      v37 = v58;
      *v58 = v66;
      v37[2] = v47;
    }

    else
    {
      switch(v31)
      {
        case 6:
          lazy protocol witness table accessor for type RegularPolygonPathSource and conformance RegularPolygonPathSource();
          v45 = v69;
          CRValueStruct.init(from:)();
          if (v45)
          {
          }

          v37 = v60;
          *v60 = v66;
          break;
        case 7:
          lazy protocol witness table accessor for type StarPathSource and conformance StarPathSource();
          v48 = v69;
          CRValueStruct.init(from:)();
          if (v48)
          {
          }

          v52 = *(&v66 + 1);
          v37 = v61;
          *v61 = v66;
          v37[1] = v52;
          break;
        case 8:
          lazy protocol witness table accessor for type ArrowShapePathSource and conformance ArrowShapePathSource();
          v32 = v69;
          CRValueStruct.init(from:)();
          if (!v32)
          {

            *v28 = v66;
            swift_storeEnumTagMultiPayload();
            v33 = v28;
            v34 = v63;
            return outlined init with take of ShapeType(v33, v34);
          }

        default:
LABEL_33:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
          v49 = v62;
          *v62 = v31;
          v50 = v69;
          AnyCRValue.init(from:)();

          v39 = v63;
          if (!v50)
          {
            swift_storeEnumTagMultiPayload();
            v33 = v49;
            goto LABEL_35;
          }

          return result;
      }
    }

LABEL_30:
    swift_storeEnumTagMultiPayload();
    v33 = v37;
    v34 = v63;
    return outlined init with take of ShapeType(v33, v34);
  }

  if (v31 <= 1)
  {
    if (v31)
    {
      if (v31 != 1)
      {
        goto LABEL_33;
      }

      lazy protocol witness table accessor for type EllipsePathSource and conformance EllipsePathSource();
      v35 = v69;
      CRValueStruct.init(from:)();

      if (v35)
      {
        return result;
      }

      v37 = v55;
    }

    else
    {
      lazy protocol witness table accessor for type RectanglePathSource and conformance RectanglePathSource();
      v42 = v69;
      CRValueStruct.init(from:)();

      if (v42)
      {
        return result;
      }

      v37 = v54;
    }

    goto LABEL_30;
  }

  if (v31 == 2)
  {
    lazy protocol witness table accessor for type LinePathSource and conformance LinePathSource();
    v43 = v69;
    CRValueStruct.init(from:)();

    if (v43)
    {
      return result;
    }

    v44 = v67;
    v37 = v57;
    *v57 = v66;
    *(v37 + 1) = v44;
    *(v37 + 2) = v68;
    goto LABEL_30;
  }

  v38 = v69;
  BezierPathSource.init(from:)(&v66);

  v39 = v63;
  if (!v38)
  {
    v40 = v56;
    *v56 = v66;
    swift_storeEnumTagMultiPayload();
    v33 = v40;
LABEL_35:
    v34 = v39;
    return outlined init with take of ShapeType(v33, v34);
  }

  return result;
}

uint64_t ShapeType.encode(to:)()
{
  v2 = type metadata accessor for AnyCRValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of CREncoder.valueContainer()();
  if (!v1)
  {
    outlined init with copy of ShapeType(v0, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        *&v16 = *v8;
        lazy protocol witness table accessor for type RoundedRectPathSource and conformance RoundedRectPathSource();
        dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      }

      else if (EnumCaseMultiPayload == 7)
      {
        v13 = *(v8 + 1);
        *&v16 = *v8;
        *(&v16 + 1) = v13;
        lazy protocol witness table accessor for type StarPathSource and conformance StarPathSource();
        dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
          (*(v3 + 32))(v5, &v8[*(v15 + 48)], v2);
          dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
          dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

          return (*(v3 + 8))(v5, v2);
        }

        v16 = *v8;
        lazy protocol witness table accessor for type ArrowShapePathSource and conformance ArrowShapePathSource();
        dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      lazy protocol witness table accessor for type RectanglePathSource and conformance RectanglePathSource();
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v12 = *(v8 + 1);
      v16 = *v8;
      v17 = v12;
      v18 = *(v8 + 2);
      lazy protocol witness table accessor for type LinePathSource and conformance LinePathSource();
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        *&v16 = *v8;
        v11 = v16;
        lazy protocol witness table accessor for type BezierPathSource and conformance BezierPathSource();
        dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
        dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();
      }

      v14 = *(v8 + 2);
      v16 = *v8;
      *&v17 = v14;
      lazy protocol witness table accessor for type CalloutBubblePathSource and conformance CalloutBubblePathSource();
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
    }

    dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();
  }

  return result;
}

uint64_t ShapeType.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void protocol witness for CRType.visitReferences(_:) in conformance ShapeType()
{
  v1 = type metadata accessor for AnyCRValue();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ShapeType(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x1F7) == 0)
  {
    if (EnumCaseMultiPayload == 3)
    {
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
      (*(v2 + 32))(v4, v7 + *(v9 + 48), v1);
      AnyCRValue.visitReferences(_:)();
      (*(v2 + 8))(v4, v1);
    }
  }
}

uint64_t CGPoint.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1DA6CE840](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1DA6CE840](*&v3);
}

BOOL specialized static LinePathSource.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[2].f64[0] == a2[2].f64[0];
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource.CodingKeys and conformance LinePathSource.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource.CodingKeys and conformance CalloutBubblePathSource.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource.CodingKeys and conformance RegularPolygonPathSource.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource.CodingKeys and conformance StarPathSource.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource.CodingKeys and conformance ArrowShapePathSource.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArrowShapePathSource and conformance ArrowShapePathSource()
{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource;
  if (!lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowShapePathSource and conformance ArrowShapePathSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StarPathSource and conformance StarPathSource()
{
  result = lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource;
  if (!lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource;
  if (!lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource;
  if (!lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource;
  if (!lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource;
  if (!lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource;
  if (!lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource;
  if (!lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StarPathSource and conformance StarPathSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegularPolygonPathSource and conformance RegularPolygonPathSource()
{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource;
  if (!lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularPolygonPathSource and conformance RegularPolygonPathSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RoundedRectPathSource and conformance RoundedRectPathSource()
{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource;
  if (!lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectPathSource and conformance RoundedRectPathSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CalloutBubblePathSource and conformance CalloutBubblePathSource()
{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource;
  if (!lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalloutBubblePathSource and conformance CalloutBubblePathSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinePathSource and conformance LinePathSource()
{
  result = lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource;
  if (!lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource;
  if (!lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource;
  if (!lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource;
  if (!lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource;
  if (!lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource;
  if (!lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource;
  if (!lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinePathSource and conformance LinePathSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EllipsePathSource and conformance EllipsePathSource()
{
  result = lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource;
  if (!lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource;
  if (!lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource;
  if (!lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource;
  if (!lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource;
  if (!lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource;
  if (!lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource;
  if (!lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipsePathSource and conformance EllipsePathSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RectanglePathSource and conformance RectanglePathSource()
{
  result = lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource;
  if (!lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource;
  if (!lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource;
  if (!lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource;
  if (!lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource;
  if (!lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource;
  if (!lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource;
  if (!lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectanglePathSource and conformance RectanglePathSource);
  }

  return result;
}

uint64_t outlined init with take of ShapeType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShapeType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ControlPointType and conformance ControlPointType()
{
  result = lazy protocol witness table cache variable for type ControlPointType and conformance ControlPointType;
  if (!lazy protocol witness table cache variable for type ControlPointType and conformance ControlPointType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlPointType and conformance ControlPointType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalloutBubblePathSource(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CalloutBubblePathSource(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void type metadata completion function for ShapeType()
{
  type metadata accessor for (Int, AnyCRValue)();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t type metadata completion function for ShapeType.ObservableDifference()
{
  result = type metadata accessor for CRValueObservableDifference();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void specialized static RegularPolygonPathSource.numberOfSidesToPosition(_:minSides:maxSides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a1, a2))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v6 = (a1 - a2) * 6.28318531 / v5 + -1.57079633;
  if (v6 != 0.0)
  {
    __sincos_stret(v6);
  }
}

void specialized StarPathSource.subscript.getter(unsigned __int8 *a1, CGFloat *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = *v2;
  if (v9 == 8)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
      __break(1u);
      return;
    }

    v13 = *(v2 + 8);
    v14 = 6.28318531 / (2 * v10) + -1.57079633;
    if (v14 == 0.0)
    {
      sinval = 0.0;
      cosval = 1.0;
    }

    else
    {
      v17 = __sincos_stret(v14);
      cosval = v17.__cosval;
      sinval = v17.__sinval;
    }

    v18 = v13 * sinval * 0.5;
    v11 = v13 * cosval * 0.5 + 0.5;
    v19.a = v4;
    v19.b = v3;
    v19.c = v6;
    v19.d = v5;
    v12 = v18 + 0.5;
  }

  else
  {
    if (v9 != 7)
    {
      return;
    }

    specialized static RegularPolygonPathSource.numberOfSidesToPosition(_:minSides:maxSides:)(v10, 3, 10);
    v19.a = v4;
    v19.b = v3;
    v19.c = v6;
    v19.d = v5;
  }

  v19.tx = v8;
  v19.ty = v7;
  CGPointApplyAffineTransform(*&v11, &v19);
}

double specialized CalloutBubblePathSource.subscript.getter(unsigned __int8 *a1, CGFloat *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = *v2;
  v11 = v2[1];
  if (v9 == 4)
  {
    v13 = v2[2];
    v14 = atan2(v11 + -0.5, v10 + -0.5) - v13;
    if (v14 == 0.0)
    {
      v11 = 0.5;
      v10 = 1.0;
    }

    else
    {
      v15 = __sincos_stret(v14);
      v10 = v15.__cosval * 0.5 + 0.5;
      v11 = v15.__sinval * 0.5 + 0.5;
    }
  }

  else
  {
    v12 = 0.0;
    if (v9 != 3)
    {
      return v12;
    }
  }

  v17.a = v4;
  v17.b = v3;
  v17.c = v6;
  v17.d = v5;
  v17.tx = v8;
  v17.ty = v7;
  *&v12 = *&CGPointApplyAffineTransform(*&v10, &v17);
  return v12;
}

void specialized LinePathSource.subscript.setter(unsigned __int8 *a1, CGFloat *a2, CGFloat a3, CGFloat a4)
{
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = *a1;
  v120 = *a2;
  v121 = a2[1];
  t1.a = *a2;
  t1.b = v121;
  t1.c = v7;
  t1.d = v8;
  t1.tx = v10;
  t1.ty = v9;
  CGAffineTransformInvert(&t2, &t1);
  t1 = t2;
  v125.x = a3;
  v125.y = a4;
  v12 = CGPointApplyAffineTransform(v125, &t1);
  x = v12.x;
  y = v12.y;
  if (v11 == 2)
  {
LABEL_4:
    v15 = *v4;
    v16 = *(v4 + 8);
    if (v11)
    {
      v17 = *(v4 + 32);
      v18 = *(v4 + 40);
      v115 = *v4;
    }

    else
    {
      v115 = v12;
      v17 = *(v4 + 32);
      v18 = *(v4 + 40);
      x = v17;
      y = v18;
    }

    pointa = v17;
    v105 = *(v4 + 16);
    v109 = v7;
    v111 = v9;
    v118 = y;
    v119 = x;
    v104 = *(v4 + 24);
    if (fabs(v105 + (v15 + v17) * -0.5) < 0.001 && fabs(*(v4 + 24) + (v16 + v18) * -0.5) < 0.001)
    {
      v98 = v18;
      v106 = *v4;
      v107 = *(v4 + 8);
      v128.y = y - v115.y;
      t1.a = v120;
      t1.b = v121;
      t1.c = v7;
      t1.d = v8;
      t1.tx = v10;
      t1.ty = v9;
      v92 = y - v115.y;
      v93 = x - v115.x;
      v128.x = x - v115.x;
      v28 = CGPointApplyAffineTransform(v128, &t1);
      t1.a = v120;
      t1.b = v121;
      t1.c = v7;
      t1.d = v8;
      t1.tx = v10;
      t1.ty = v9;
      sinval = 0.0;
      v129.x = 0.0;
      v129.y = 0.0;
      v30 = CGPointApplyAffineTransform(v129, &t1);
      v31 = v28.x - v30.x;
      v32 = v28.y - v30.y;
      v33 = rint(atan2(v28.y - v30.y, v28.x - v30.x) / 0.785398163) * 0.785398163;
      cosval = 1.0;
      if (v33 != 0.0)
      {
        v35 = __sincos_stret(v33);
        cosval = v35.__cosval;
        sinval = v35.__sinval;
      }

      v36 = sqrt(v31 * v31 + v32 * v32);
      v37 = v36 * cosval;
      v38 = v36 * sinval;
      if (sqrt((v31 - v36 * cosval) * (v31 - v36 * cosval) + (v32 - v38) * (v32 - v38)) < 20.0)
      {
        t1.a = v120;
        t1.b = v121;
        t1.c = v109;
        t1.d = v8;
        t1.tx = v10;
        t1.ty = v111;
        CGAffineTransformInvert(&t2, &t1);
        a = t2.a;
        b = t2.b;
        c = t2.c;
        d = t2.d;
        ty = t2.ty;
        tx = t2.tx;
        t1 = t2;
        v130.x = v37;
        v130.y = v38;
        v43 = CGPointApplyAffineTransform(v130, &t1);
        t1.a = a;
        t1.b = b;
        t1.c = c;
        t1.d = d;
        t1.tx = tx;
        t1.ty = ty;
        v131.x = 0.0;
        v131.y = 0.0;
        v44 = CGPointApplyAffineTransform(v131, &t1);
        v45 = sqrt((v43.x - v44.x) * (v43.x - v44.x) + (v43.y - v44.y) * (v43.y - v44.y));
        v46 = sqrt(v93 * v93 + v92 * v92);
        v47 = v46 * ((v43.x - v44.x) / v45);
        v48 = v46 * ((v43.y - v44.y) / v45);
        if (v11)
        {
          v118 = v115.y + v48;
          v119 = v115.x + v47;
        }

        else
        {
          v115.x = v119 - v47;
          v115.y = v118 - v48;
        }
      }

      v15 = v106;
      v16 = v107;
      v7 = v109;
      v9 = v111;
      v18 = v98;
    }

    t1.a = v120;
    t1.b = v121;
    t1.c = v7;
    t1.d = v8;
    t1.tx = v10;
    t1.ty = v9;
    v49 = CGPointApplyAffineTransform(*&v15, &t1);
    t1.a = v120;
    t1.b = v121;
    t1.c = v7;
    t1.d = v8;
    t1.tx = v10;
    t1.ty = v9;
    v132.x = pointa;
    v132.y = v18;
    v50 = CGPointApplyAffineTransform(v132, &t1);
    t1.a = v120;
    t1.b = v121;
    t1.c = v7;
    t1.d = v8;
    t1.tx = v10;
    t1.ty = v9;
    v51 = CGPointApplyAffineTransform(v115, &t1);
    t1.a = v120;
    t1.b = v121;
    t1.c = v7;
    t1.d = v8;
    v108 = v10;
    t1.tx = v10;
    t1.ty = v9;
    v133.y = v118;
    v133.x = v119;
    v52 = CGPointApplyAffineTransform(v133, &t1);
    v53 = v49.x - v50.x;
    v54 = v49.y - v50.y;
    v55 = sqrt(v53 * v53 + v54 * v54);
    if (v55 < 0.0001 || (v56 = v51.x - v52.x, v57 = v51.y - v52.y, v58 = sqrt(v56 * v56 + v57 * v57), v58 < 0.0001))
    {
      CGAffineTransformMakeTranslation(&t1, v51.x - v49.x, v51.y - v49.y);
      v82 = *&t1.a;
      v83 = *&t1.c;
      v84 = *&t1.tx;
    }

    else
    {
      v59 = v58 / v55;
      v60 = atan2(v54, v53);
      v61 = atan2(v57, v56);
      CGAffineTransformMakeTranslation(&t1, -v49.x, -v49.y);
      v62 = t1.tx;
      v63 = t1.ty;
      v94 = *&t1.c;
      v99 = *&t1.a;
      CGAffineTransformMakeRotation(&t1, -v60);
      v64 = *&t1.a;
      v65 = *&t1.c;
      v66 = *&t1.tx;
      *&t1.a = v99;
      *&t1.c = v94;
      t1.tx = v62;
      t1.ty = v63;
      *&t2.a = v64;
      *&t2.c = v65;
      *&t2.tx = v66;
      CGAffineTransformConcat(&v122, &t1, &t2);
      v67 = v122.tx;
      v68 = v122.ty;
      v95 = *&v122.c;
      v100 = *&v122.a;
      CGAffineTransformMakeScale(&t1, v59, v59);
      v69 = *&t1.a;
      v70 = *&t1.c;
      v71 = *&t1.tx;
      *&t1.a = v100;
      *&t1.c = v95;
      t1.tx = v67;
      t1.ty = v68;
      *&t2.a = v69;
      *&t2.c = v70;
      *&t2.tx = v71;
      CGAffineTransformConcat(&v122, &t1, &t2);
      v72 = v122.tx;
      v73 = v122.ty;
      v96 = *&v122.c;
      v101 = *&v122.a;
      CGAffineTransformMakeRotation(&t1, v61);
      v74 = *&t1.a;
      v75 = *&t1.c;
      v76 = *&t1.tx;
      *&t1.a = v101;
      *&t1.c = v96;
      t1.tx = v72;
      t1.ty = v73;
      *&t2.a = v74;
      *&t2.c = v75;
      *&t2.tx = v76;
      CGAffineTransformConcat(&v122, &t1, &t2);
      v77 = v122.tx;
      v78 = v122.ty;
      v97 = *&v122.c;
      v102 = *&v122.a;
      CGAffineTransformMakeTranslation(&t1, v51.x, v51.y);
      v79 = *&t1.a;
      v80 = *&t1.c;
      v81 = *&t1.tx;
      *&t1.a = v102;
      *&t1.c = v97;
      t1.tx = v77;
      t1.ty = v78;
      *&t2.a = v79;
      *&t2.c = v80;
      *&t2.tx = v81;
      CGAffineTransformConcat(&v122, &t1, &t2);
      v82 = *&v122.a;
      v83 = *&v122.c;
      v84 = *&v122.tx;
    }

    t1.a = v120;
    t1.b = v121;
    t1.c = v109;
    t1.d = v8;
    t1.tx = v108;
    t1.ty = v111;
    *&t2.a = v82;
    *&t2.c = v83;
    *&t2.tx = v84;
    CGAffineTransformConcat(&v122, &t1, &t2);
    v85 = v122.tx;
    v86 = v122.ty;
    pointb = *&v122.a;
    v103 = *&v122.c;
    t1.a = v120;
    t1.b = v121;
    t1.c = v109;
    t1.d = v8;
    t1.tx = v108;
    t1.ty = v111;
    CGAffineTransformInvert(&t2, &t1);
    *&t1.a = pointb;
    *&t1.c = v103;
    t1.tx = v85;
    t1.ty = v86;
    CGAffineTransformConcat(&v122, &t1, &t2);
    v87 = *&v122.a;
    v88 = *&v122.c;
    v89 = *&v122.tx;
    *v4 = v115;
    *&t1.a = v87;
    *&t1.c = v88;
    *&t1.tx = v89;
    *&v88 = v104;
    v87.x = v105;
    *(v4 + 16) = CGPointApplyAffineTransform(v87, &t1);
    *(v4 + 32) = v119;
    *(v4 + 40) = v118;
    return;
  }

  if (v11 != 1)
  {
    if (v11)
    {
      return;
    }

    goto LABEL_4;
  }

  v19 = *(v4 + 8);
  v110 = *(v4 + 40);
  point = *(v4 + 32);
  v20 = point - *v4;
  v21 = v110 - v19;
  v22 = ((v12.x - *v4) * v20 + (v12.y - v19) * (v110 - v19)) / (v20 * v20 + v21 * v21);
  v23 = fmin(v22, 1.0);
  v24 = v22 < 0.0;
  v25 = 0.0;
  if (!v24)
  {
    v25 = v23;
  }

  v116 = *(v4 + 8);
  v117 = *v4;
  v126.x = v12.x - (*v4 + v20 * v25);
  t1.a = v120;
  t1.b = v121;
  t1.c = v7;
  t1.d = v8;
  v126.y = v12.y - (v19 + v21 * v25);
  t1.tx = v10;
  t1.ty = v9;
  v26 = CGPointApplyAffineTransform(v126, &t1);
  t1.a = v120;
  t1.b = v121;
  t1.c = v7;
  t1.d = v8;
  t1.tx = v10;
  t1.ty = v9;
  v127.x = 0.0;
  v127.y = 0.0;
  v27 = CGPointApplyAffineTransform(v127, &t1);
  if (sqrt((v26.x - v27.x) * (v26.x - v27.x) + (v26.y - v27.y) * (v26.y - v27.y)) >= 20.0)
  {
    *(v4 + 16) = v12;
  }

  else
  {
    *(v4 + 16) = (v117 + point) * 0.5;
    *(v4 + 24) = (v116 + v110) * 0.5;
  }
}

void specialized static RegularPolygonPathSource.numberOfSidesFromPosition(_:minSides:maxSides:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = (atan2(a4 + -0.5, a3 + -0.5) + 1.57079633) / 6.28318531;
  if (v7 < 0.0)
  {
    v7 = v7 + 1.0;
  }

  v8 = round(v7 * v5);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(a1, v8))
  {
LABEL_15:
    __break(1u);
  }
}

void specialized StarPathSource.subscript.setter(unsigned __int8 *a1, _OWORD *a2, CGFloat a3, CGFloat a4)
{
  v7 = *a1;
  v8 = a2[1];
  *&v18.a = *a2;
  *&v18.c = v8;
  *&v18.tx = a2[2];
  CGAffineTransformInvert(&v17, &v18);
  v18 = v17;
  v19.x = a3;
  v19.y = a4;
  v11 = CGPointApplyAffineTransform(v19, &v18);
  y = v11.y;
  x = v11.x;
  if (v7 == 8)
  {
    if (*v4 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      sinval = 0.0;
      cosval = 1.0;
      if (6.28318531 / (2 * *v4) + -1.57079633 != 0.0)
      {
        v15 = __sincos_stret(6.28318531 / (2 * *v4) + -1.57079633);
        sinval = v15.__sinval;
        x = v11.x;
        cosval = v15.__cosval;
        y = v11.y;
      }

      v16 = (x + -0.5) * cosval + (y + -0.5) * sinval;
      *(v4 + 8) = fmax(fmin(v16 + v16, 1.0), 0.1);
    }
  }

  else if (v7 == 7)
  {
    specialized static RegularPolygonPathSource.numberOfSidesFromPosition(_:minSides:maxSides:)(3, 10, v11.x, v11.y);
    *v4 = v12;
  }
}

void specialized CalloutBubblePathSource.subscript.setter(unsigned __int8 *a1, _OWORD *a2, CGFloat a3, CGFloat a4)
{
  v7 = *a1;
  v8 = a2[1];
  *&v17.a = *a2;
  *&v17.c = v8;
  *&v17.tx = a2[2];
  CGAffineTransformInvert(&v16, &v17);
  v17 = v16;
  v18.x = a3;
  v18.y = a4;
  v10 = CGPointApplyAffineTransform(v18, &v17);
  y = v10.y;
  if (v7 == 4)
  {
    v12 = atan2(v4[1] + -0.5, *v4 + -0.5);
    v13 = atan2(v10.y + -0.5, v10.x + -0.5);
    v14 = fmod(v13 - v12, 6.28318531);
    if (v14 > 3.14159265)
    {
      v14 = v14 + -6.28318531;
    }

    if (v14 < -3.14159265)
    {
      v14 = v14 + 6.28318531;
    }

    v15 = fabs(v14);
    if (v15 <= 0.025)
    {
      v15 = 0.025;
    }

    y = 0.4;
    if (v15 <= 0.4)
    {
      y = v15;
    }

    v11 = 2;
  }

  else
  {
    if (v7 != 3)
    {
      return;
    }

    *v4 = v10.x;
    v11 = 1;
  }

  v4[v11] = y;
}

id StrokeStyle.caLineCap.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of StrokeStyle(v1, v4);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of StrokeStyle(v4);
    v5 = *MEMORY[0x1E6979E70];

    return v5;
  }

  else
  {
    v7 = *(v4 + 4);
    if (v7 == 2)
    {
      v8 = MEMORY[0x1E6979E80];
    }

    else if (v7 == 1)
    {
      v8 = MEMORY[0x1E6979E78];
    }

    else
    {
      v8 = MEMORY[0x1E6979E70];
    }

    v9 = *v8;

    return v9;
  }
}

uint64_t StrokeStyle.plain.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of StrokeStyle(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    result = outlined destroy of StrokeStyle(v6);
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 4);
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  return result;
}

uint64_t outlined init with copy of StrokeStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StrokeStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StrokeStyle(uint64_t a1)
{
  v2 = type metadata accessor for StrokeStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PlainStrokeStyle.init()(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v1;
  *(a1 + 16) = 2;
}

uint64_t PlainStrokeStyle.init(_:phase:lineCap:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

PaperKit::PlainStrokeStyle::CodingKeys_optional __swiftcall PlainStrokeStyle.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x6573616870 && stringValue._object == 0xE500000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6E726574746170 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x706143656E696CLL && object == 0xE700000000000000)
  {

    v7 = 2;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::PlainStrokeStyle::CodingKeys_optional __swiftcall PlainStrokeStyle.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 3;
  if (intValue < 3)
  {
    v2 = intValue;
  }

  *v1 = v2;
  return intValue;
}

uint64_t PlainStrokeStyle.CodingKeys.stringValue.getter()
{
  v1 = 0x6E726574746170;
  if (*v0 != 1)
  {
    v1 = 0x706143656E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573616870;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlainStrokeStyle.CodingKeys()
{
  v1 = 0x6E726574746170;
  if (*v0 != 1)
  {
    v1 = 0x706143656E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573616870;
  }
}

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance PlainStrokeStyle.CodingKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys();
  v5 = lazy protocol witness table accessor for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlainStrokeStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlainStrokeStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static PlainStrokeStyle.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 8);
  v3 = *(a2 + 8);
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
    return *(result + 16) == *(a2 + 16);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return *(result + 16) == *(a2 + 16);
    }
  }

  __break(1u);
  return result;
}

uint64_t PlainStrokeStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit16PlainStrokeStyleV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = v1[1];
  v9 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd);
    lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LODWORD(v14) = v9;
    v13 = 2;
    type metadata accessor for CGLineCap(0);
    lazy protocol witness table accessor for type CGLineCap and conformance CGLineCap(&lazy protocol witness table cache variable for type CGLineCap and conformance CGLineCap, type metadata accessor for CGLineCap);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void PlainStrokeStyle.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA6CE840](*&v3);
  specialized Array<A>.hash(into:)(a1, v4);
  Hasher._combine(_:)(v5);
}

Swift::Int PlainStrokeStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x1DA6CE840](*&v4);
  specialized Array<A>.hash(into:)(v6, v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t PlainStrokeStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit16PlainStrokeStyleV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    HIBYTE(v13) = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd);
    HIBYTE(v13) = 1;
    lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v14;
    type metadata accessor for CGLineCap(0);
    HIBYTE(v13) = 2;
    lazy protocol witness table accessor for type CGLineCap and conformance CGLineCap(&lazy protocol witness table cache variable for type CGLineCap and conformance CGLineCap, type metadata accessor for CGLineCap);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void protocol witness for Hashable.hash(into:) in conformance PlainStrokeStyle(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA6CE840](*&v3);
  specialized Array<A>.hash(into:)(a1, v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlainStrokeStyle()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x1DA6CE840](*&v4);
  specialized Array<A>.hash(into:)(v6, v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlainStrokeStyle(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(*(a1 + 8), *(a2 + 8)) & (v3 == v2);
}

uint64_t protocol witness for CRType.copy(renamingReferences:) in conformance PlainStrokeStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PlainStrokeStyle()
{
  lazy protocol witness table accessor for type PlainStrokeStyle and conformance PlainStrokeStyle();
  lazy protocol witness table accessor for type PlainStrokeStyle and conformance PlainStrokeStyle();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PlainStrokeStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlainStrokeStyle and conformance PlainStrokeStyle();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t CGLineCap.init(from:)()
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v0)
  {
    v1 = v0;

    return v1;
  }

  v1 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();

  if (v1 >= 0xFFFFFFFF80000000)
  {
    if (v1 <= 0x7FFFFFFF)
    {
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CRCodable.init(from:) in conformance CGLineCap@<X0>(_DWORD *a1@<X8>)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  v4 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();

  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    *a1 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t StrokeStyle.akBrushStyle.getter()
{
  v1 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of StrokeStyle(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if ((v3[8] & 1) == 0)
    {
      return *v3;
    }
  }

  else
  {
    outlined destroy of StrokeStyle(v3);
  }

  return 0;
}

uint64_t StrokeStyle.brush.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of StrokeStyle(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v8 = *v6;
    v9 = v6[8];
  }

  else
  {
    result = outlined destroy of StrokeStyle(v6);
    v8 = 0;
    v9 = -1;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

PaperKit::BrushStyle_optional __swiftcall BrushStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance BrushStyle()
{
  lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
  lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance BrushStyle()
{
  lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
  lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance BrushStyle()
{
  lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
  lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance BrushStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
  v3 = lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
  v4 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance BrushStyle(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
  v5 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

uint64_t StrokeStyle.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of StrokeStyle(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
    v8 = type metadata accessor for AnyCRValue();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    outlined destroy of StrokeStyle(v6);
    v11 = type metadata accessor for AnyCRValue();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t StrokeStyle.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v52 = a2;
  v55 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = type metadata accessor for CRValueObservableDifference();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleO_ACtMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v50 - v24;
  v27 = &v50 + *(v26 + 56) - v24;
  outlined init with copy of StrokeStyle(v4, &v50 - v24);
  outlined init with copy of StrokeStyle(a1, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of StrokeStyle(v25, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v19[8];
        v30 = *v27;
        v31 = v27[8];
        v59 = *v19;
        LOBYTE(v60) = v29;
        v56 = v30;
        LOBYTE(v57) = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit10BrushStyleOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<BrushStyle> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit10BrushStyleOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<BrushStyle> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit10BrushStyleOGMd);
        CRValue<>.observableDifference(from:with:)();
        v33 = v53;
        v32 = v54;
        if ((*(v53 + 48))(v8, 1, v54) != 1)
        {
          v34 = *(v33 + 32);
          v35 = v51;
          v34(v51, v8, v32);
          v36 = v55;
          v34(v55, v35, v32);
          v37 = type metadata accessor for StrokeStyle.ObservableDifference(0);
LABEL_14:
          swift_storeEnumTagMultiPayload();
          (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
          return outlined destroy of StrokeStyle(v25);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    outlined init with copy of StrokeStyle(v25, v22);
    v38 = *(v22 + 1);
    if (!swift_getEnumCaseMultiPayload())
    {
      v42 = *(v22 + 4);
      v43 = *v27;
      v44 = *(v27 + 1);
      v45 = *(v27 + 4);
      v59 = *v22;
      v60 = v38;
      v61 = v42;
      v56 = v43;
      v57 = v44;
      v58 = v45;
      lazy protocol witness table accessor for type PlainStrokeStyle and conformance PlainStrokeStyle();
      lazy protocol witness table accessor for type PlainStrokeStyle and conformance PlainStrokeStyle();
      CRValue<>.observableDifference(from:with:)();

      v47 = v53;
      v46 = v54;
      if ((*(v53 + 48))(v11, 1, v54) != 1)
      {
        v49 = *(v47 + 32);
        v49(v16, v11, v46);
        v36 = v55;
        v49(v55, v16, v46);
        v37 = type metadata accessor for StrokeStyle.ObservableDifference(0);
        goto LABEL_14;
      }

      v8 = v11;
LABEL_12:
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence27CRValueObservableDifferenceOSgMd);
      outlined destroy of StrokeStyle(v25);
      v48 = type metadata accessor for StrokeStyle.ObservableDifference(0);
      return (*(*(v48 - 8) + 56))(v55, 1, 1, v48);
    }
  }

  v39 = type metadata accessor for StrokeStyle.ObservableDifference(0);
  v40 = v55;
  swift_storeEnumTagMultiPayload();
  (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit11StrokeStyleO_ACtMd);
}

uint64_t StrokeStyle.visitReferences(_:)()
{
  v1 = type metadata accessor for AnyCRValue();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of StrokeStyle(v0, v7);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    return outlined destroy of StrokeStyle(v7);
  }

  if (result != 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    (*(v2 + 32))(v4, &v7[*(v9 + 48)], v1);
    AnyCRValue.visitReferences(_:)();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t StrokeStyle.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AnyCRValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of StrokeStyle(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v9[8];
      *a1 = *v9;
      *(a1 + 8) = v11;
    }

    else
    {
      v14 = *v9;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
      (*(v4 + 32))(v6, &v9[*(v15 + 48)], v3);
      *a1 = v14;
      AnyCRValue.copy(renamingReferences:)();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    v12 = *(v9 + 1);
    v13 = *(v9 + 4);
    *a1 = *v9;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t StrokeStyle.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  v22 = a1;
  v12 = dispatch thunk of CRDecoder.CRValueContainer.decodeTaggedContainer()();

  if (v12 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit10BrushStyleOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<BrushStyle> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit10BrushStyleOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<BrushStyle> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit10BrushStyleOGMd);
    CRValue<>.init(from:)();

    v17 = v20;
    *v8 = v19;
    v8[8] = v17;
    swift_storeEnumTagMultiPayload();
    v16 = v8;
  }

  else if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    *v5 = v12;
    AnyCRValue.init(from:)();

    swift_storeEnumTagMultiPayload();
    v16 = v5;
  }

  else
  {
    lazy protocol witness table accessor for type PlainStrokeStyle and conformance PlainStrokeStyle();
    CRValueStruct.init(from:)();

    v14 = v20;
    v15 = v21;
    *v11 = v19;
    *(v11 + 1) = v14;
    *(v11 + 4) = v15;
    swift_storeEnumTagMultiPayload();
    v16 = v11;
  }

  return outlined init with take of StrokeStyle(v16, v22);
}

uint64_t StrokeStyle.encode(to:)()
{
  v2 = type metadata accessor for AnyCRValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of CREncoder.valueContainer()();
  if (!v1)
  {
    outlined init with copy of StrokeStyle(v0, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v12 = *(v8 + 1);
      v13 = *(v8 + 4);
      v16 = *v8;
      v17 = v12;
      v18 = v13;
      lazy protocol witness table accessor for type PlainStrokeStyle and conformance PlainStrokeStyle();
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = v8[8];
      v16 = *v8;
      LOBYTE(v17) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit10BrushStyleOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<BrushStyle> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit10BrushStyleOGMd);
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
LABEL_6:
      dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    (*(v3 + 32))(v5, &v8[*(v14 + 48)], v2);
    dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
    dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t StrokeStyle.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance StrokeStyle()
{
  v1 = type metadata accessor for AnyCRValue();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of StrokeStyle(v0, v7);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    return outlined destroy of StrokeStyle(v7);
  }

  if (result != 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    (*(v2 + 32))(v4, &v7[*(v9 + 48)], v1);
    AnyCRValue.visitReferences(_:)();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle.CodingKeys and conformance PlainStrokeStyle.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12CoreGraphics7CGFloatVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGLineCap and conformance CGLineCap(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlainStrokeStyle and conformance PlainStrokeStyle()
{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle;
  if (!lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainStrokeStyle and conformance PlainStrokeStyle);
  }

  return result;
}

uint64_t outlined init with take of StrokeStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StrokeStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle()
{
  result = lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle;
  if (!lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle;
  if (!lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle;
  if (!lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle;
  if (!lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle;
  if (!lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrushStyle and conformance BrushStyle);
  }

  return result;
}

void type metadata completion function for StrokeStyle()
{
  type metadata accessor for CRExtensible<BrushStyle>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (Int, AnyCRValue)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for CRExtensible<BrushStyle>()
{
  if (!lazy cache variable for type metadata for CRExtensible<BrushStyle>)
  {
    lazy protocol witness table accessor for type BrushStyle and conformance BrushStyle();
    v0 = type metadata accessor for CRExtensible();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRExtensible<BrushStyle>);
    }
  }
}

uint64_t type metadata completion function for StrokeStyle.ObservableDifference()
{
  result = type metadata accessor for CRValueObservableDifference();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlainStrokeStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlainStrokeStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static PKStrokeCoherenceBase.initStroke<A>(strokeNodeRef:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v110 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = v91 - v10;
  v11 = type metadata accessor for CRKeyPath();
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v98 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for UUID();
  v108 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v109 = v91 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v105 = v91 - v17;
  v95 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v95);
  v96 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = v91 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v93 = v91 - v22;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v115 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v102 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v97 = v91 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v106 = v91 - v27;
  v28 = type metadata accessor for Capsule();
  v111 = *(v28 - 8);
  v112 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v91 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v91 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v113 = *(v35 - 8);
  v114 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v92 = v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (v91 - v38);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v91 - v41;
  Ref.subscript.getter();
  type metadata accessor for PKStrokeCoherence(0);
  (*(v32 + 16))(v34, a1, v31);
  v111[2](v30, a2, v112);
  v43 = PKStrokeCoherence.__allocating_init<A>(strokeNodeRef:in:)(v34, v30, a3, a4);
  if (v43)
  {
    v44 = v43;
    static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

    return (*(v113 + 8))(v42, v114);
  }

  v91[1] = v31;
  v46 = v93;
  v111 = v39;
  v91[3] = a2;
  v91[4] = a1;
  v47 = v115;
  v48 = v94;
  v112 = v42;
  CRRegister.value.getter();
  v49 = v96;
  _s8PaperKit12TaggedStrokeOWObTm_1(v48, v96, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v91[2] = a3;
  if (EnumCaseMultiPayload == 1)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v52 = *(v51 - 8);
    v53 = v46;
    (*(v52 + 32))(v46, v49, v51);
    (*(v52 + 56))(v46, 0, 1, v51);
  }

  else
  {
    _s8PaperKit12TaggedStrokeOWOhTm_1(v49, type metadata accessor for TaggedStroke);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v53 = v46;
    (*(*(v54 - 8) + 56))(v46, 1, 1, v54);
  }

  v55 = v47;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v57 = *(v56 - 8);
  v58 = (*(v57 + 48))(v53, 1, v56);
  v60 = v105;
  v59 = v106;
  v62 = v99;
  v61 = v100;
  v63 = v97;
  if (v58 == 1)
  {
    goto LABEL_11;
  }

  Ref.subscript.getter();
  (*(v57 + 8))(v53, v56);
  v64 = v63;
  v65 = v107;
  (*(v55 + 32))(v59, v64, v107);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v66 = v98;
  Reference.identity.getter();
  v67 = v101;
  CRKeyPath.uuid.getter();
  (*(v62 + 8))(v66, v61);
  v68 = v59;
  v53 = v55;
  v69 = v108;
  v70 = v104;
  v71 = (*(v108 + 48))(v67, 1, v104);
  v72 = v109;
  if (v71 == 1)
  {
    __break(1u);
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v69 + 32))(v60, v67, v70);
  v101 = *(v69 + 16);
  (v101)(v72, v60, v70);
  v73 = *(v53 + 16);
  v74 = v102;
  v73(v102, v68, v65);
  v75 = v72;
  v76 = *(v113 + 16);
  v77 = v114;
  v76(v111, v112, v114);
  v78 = objc_allocWithZone(type metadata accessor for PKStrokeCoherenceSubstrokes(0));
  v73(&v78[OBJC_IVAR___PKStrokeCoherenceSubstrokes_substrokes], v74, v65);
  v80 = v103;
  v79 = v104;
  v81 = v75;
  v82 = v101;
  (v101)(v103, v81, v104);
  v83 = v92;
  v84 = v111;
  v76(v92, v111, v77);
  v82(&v78[OBJC_IVAR___PKStrokeCoherenceBase_identity], v80, v79);
  v76(&v78[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v83, v77);
  v85 = type metadata accessor for PKStrokeCoherenceBase(0);
  v116.receiver = v78;
  v116.super_class = v85;
  v86 = objc_msgSendSuper2(&v116, sel_init);
  v87 = *(v113 + 8);
  v87(v84, v77);
  v88 = *(v115 + 8);
  v115 += 8;
  v89 = v107;
  v88(v102, v107);
  v90 = *(v108 + 8);
  v90(v109, v79);
  v87(v83, v77);
  v90(v103, v79);
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  v90(v105, v79);
  v88(v106, v89);
  return (v87)(v112, v77);
}

uint64_t PKStrokeProviderSliceIdentifierCoherence.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  outlined init with copy of Date?(a1, v32, &_sypSgMd);
  if (!v33)
  {
    v20 = &_sypSgMd;
    v21 = v32;
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v21, v20);
    return 0;
  }

  v13 = type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
  if (swift_dynamicCast())
  {
    v14 = v31;
    if (v31 == v1)
    {

      return 1;
    }

    v28 = v4;
    type metadata accessor for FinalizedTimestamp();
    lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type FinalizedTimestamp and conformance FinalizedTimestamp, MEMORY[0x1E6995300]);
    v29 = v1;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v15 = OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_strokeDataUUID;
      v16 = *(v10 + 48);
      outlined init with copy of Date?(v29 + OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_strokeDataUUID, v12, &_s10Foundation4UUIDVSgMd);
      outlined init with copy of Date?(v14 + v15, &v12[v16], &_s10Foundation4UUIDVSgMd);
      v17 = v28;
      v18 = *(v28 + 48);
      if (v18(v12, 1, v3) == 1)
      {
        if (v18(&v12[v16], 1, v3) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation4UUIDVSgMd);
          v19 = v29;
LABEL_16:
          v30.receiver = v19;
          v30.super_class = v13;
          v26 = objc_msgSendSuper2(&v30, sel_isEqual_, v14);

          return v26;
        }

        goto LABEL_14;
      }

      outlined init with copy of Date?(v12, v9, &_s10Foundation4UUIDVSgMd);
      if (v18(&v12[v16], 1, v3) == 1)
      {

        (*(v17 + 8))(v9, v3);
LABEL_14:
        v20 = &_s10Foundation4UUIDVSg_ADtMd;
        v21 = v12;
        goto LABEL_9;
      }

      (*(v17 + 32))(v6, &v12[v16], v3);
      lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = v29;
      v24 = v23;
      v25 = *(v17 + 8);
      v25(v6, v3);
      v25(v9, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation4UUIDVSgMd);
      if (v24)
      {
        goto LABEL_16;
      }
    }
  }

  return 0;
}

Swift::Int PKStrokeProviderSliceIdentifierCoherence.hash.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  type metadata accessor for FinalizedTimestamp();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type FinalizedTimestamp and conformance FinalizedTimestamp, MEMORY[0x1E6995300]);
  dispatch thunk of Hashable.hash(into:)();
  v8 = type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
  v12.receiver = v0;
  v12.super_class = v8;
  v9 = objc_msgSendSuper2(&v12, sel_hash);
  MEMORY[0x1DA6CE810](v9);
  outlined init with copy of Date?(v0 + OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_strokeDataUUID, v3, &_s10Foundation4UUIDVSgMd);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher.finalize()();
}

uint64_t PKStrokeProviderSliceIdentifierCoherence.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  MEMORY[0x1DA6CD010](60, 0xE100000000000000);
  v22 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](1029990688, 0xE400000000000000);
  v12 = [v0 strokeUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1DA6CD010](v13);

  v14 = *(v6 + 8);
  v14(v11, v5);
  MEMORY[0x1DA6CD010](4027424, 0xE300000000000000);
  [v1 tStart];
  v15 = Double.description.getter();
  MEMORY[0x1DA6CD010](v15);

  MEMORY[0x1DA6CD010](15917, 0xE200000000000000);
  [v1 tEnd];
  v16 = Double.description.getter();
  MEMORY[0x1DA6CD010](v16);

  MEMORY[0x1DA6CD010](0x6F66736E61727420, 0xEB000000003D6D72);
  type metadata accessor for FinalizedTimestamp();
  lazy protocol witness table accessor for type PKStrokePathStruct and conformance PKStrokePathStruct(&lazy protocol witness table cache variable for type FinalizedTimestamp and conformance FinalizedTimestamp, MEMORY[0x1E6995300]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1DA6CD010](v17);

  MEMORY[0x1DA6CD010](0x6B6F727473202C3ELL, 0xEE003D6174614465);
  outlined init with copy of Date?(v1 + OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_strokeDataUUID, v4, &_s10Foundation4UUIDVSgMd);
  v18 = *(v6 + 48);
  if (v18(v4, 1, v5) == 1)
  {
    UUID.init()();
    if (v18(v4, 1, v5) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1DA6CD010](v19);

  v14(v8, v5);
  return v23;
}

Swift::Void __swiftcall PKStrokeProviderSliceIdentifierCoherence.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
  v23.receiver = v1;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, sel_encodeWithCoder_, with.super.isa);
  FinalizedTimestamp.replica.getter();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v22 = *(v8 + 8);
  v22(v13, v7);
  v16 = MEMORY[0x1DA6CCED0](1885688436, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v16];

  v17 = FinalizedTimestamp.counter.getter();
  v18 = MEMORY[0x1DA6CCED0](1953383284, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v17 forKey:v18];

  outlined init with copy of Date?(v2 + OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_strokeDataUUID, v6, &_s10Foundation4UUIDVSgMd);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v19 = UUID._bridgeToObjectiveC()().super.isa;
    v20 = MEMORY[0x1DA6CCED0](1952531571, 0xE400000000000000);
    [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

    v22(v10, v7);
  }
}

uint64_t PKStrokeProviderSliceIdentifierCoherence.init(coder:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v33 = type metadata accessor for UUID();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = type metadata accessor for FinalizedTimestamp();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = MEMORY[0x1DA6CCED0](1885688436, 0xE400000000000000, v13);
  v17 = [a1 containsValueForKey_];

  if (v17)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSUUID);
    result = NSCoder.decodeObject<A>(of:forKey:)();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = MEMORY[0x1DA6CCED0](1953383284, 0xE400000000000000);
    [a1 decodeIntegerForKey_];

    FinalizedTimestamp.init(replica:counter:)();
  }

  else
  {
    UUID.init()();
    FinalizedTimestamp.init(replica:counter:)();
    v15 = v11;
  }

  v21 = v34;
  (*(v9 + 32))(v34 + OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_transformTimestamp, v15, v8);
  v22 = *(v7 + 56);
  v23 = v33;
  v22(v6, 1, 1, v33);
  v24 = MEMORY[0x1DA6CCED0](1952531571, 0xE400000000000000);
  v25 = [a1 containsValueForKey_];

  if (v25)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSUUID);
    v26 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v26)
    {
      v27 = v32;
      v28 = v26;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s10Foundation4UUIDVSgMd);
      v22(v27, 0, 1, v23);
      outlined init with take of UUID?(v27, v6);
    }
  }

  outlined init with copy of Date?(v6, v21 + OBJC_IVAR___PKStrokeProviderSliceIdentifierCoherence_strokeDataUUID, &_s10Foundation4UUIDVSgMd);
  v29 = type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
  v35.receiver = v21;
  v35.super_class = v29;
  v30 = objc_msgSendSuper2(&v35, sel_initWithCoder_, a1);

  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s10Foundation4UUIDVSgMd);
  return v30;
}

id _PKStrokeConcrete.init(stroke:drawing:)(void *a1, void *a2)
{
  v91 = a2;
  v90 = type metadata accessor for PKStroke();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v68 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v68 - v7;
  v87 = type metadata accessor for PKInk();
  v8 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  v19 = type metadata accessor for PKStrokePath();
  v20 = *(v19 - 8);
  *&v21 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 path];
  static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  (*(v20 + 8))(v23, v19);
  v25 = [a1 _strokeUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = UUID._bridgeToObjectiveC()().super.isa;
  v26 = *(v12 + 8);
  v81 = v12 + 8;
  v26(v18, v11);
  v27 = [a1 _flags];
  v28 = [a1 ink];
  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

  v78 = PKInk._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v87);
  [a1 transform];
  v76 = v94;
  v77 = v93;
  v29 = v95;
  v30 = v96;
  v31 = [a1 _substrokesInDrawing_];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = *(v32 + 16);
  if (v33)
  {
    v69 = v27;
    v70 = v26;
    v71 = v11;
    v72 = a1;
    *&v93 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
    v34 = v90;
    v35 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for _PKStrokeConcrete);
    v36 = v93;
    v37 = v86 + 16;
    v86 = *(v86 + 16);
    v87 = v35;
    v38 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v68 = v32;
    v85 = v38;
    v39 = v32 + v38;
    v40 = *(v37 + 56);
    v83 = (v37 - 8);
    v84 = v40;
    v82 = (v37 + 16);
    v41 = v73;
    v42 = v86;
    do
    {
      v43 = v88;
      v42(v88, v39, v34);
      v44 = v37;
      v42(v89, v43, v34);
      type metadata accessor for PKStrokeCoherence(0);
      swift_dynamicCast();
      v45 = _PKStrokeConcrete.init(stroke:drawing:)(v92, v91);
      v34 = v90;
      v46 = v45;
      static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

      (*v83)(v43, v34);
      *&v93 = v36;
      v48 = *(v36 + 16);
      v47 = *(v36 + 24);
      if (v48 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1);
        v34 = v90;
        v36 = v93;
      }

      *(v36 + 16) = v48 + 1;
      v49 = v84;
      (*v82)(v36 + v85 + v48 * v84, v41, v34);
      v39 += v49;
      --v33;
      v37 = v44;
    }

    while (v33);

    a1 = v72;
    v11 = v71;
    v26 = v70;
    v27 = v69;
  }

  else
  {
  }

  v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v51 = Array._bridgeToObjectiveC()().super.isa;

  v94 = v76;
  v93 = v77;
  v95 = v29;
  v96 = v30;
  v52 = isa;
  v53 = v79;
  v54 = v78;
  v55 = [v50 initWithData:isa id:v79 flags:v27 ink:v78 transform:&v93 substrokes:v51];

  v56 = v55;
  v57 = [a1 _clipPlane];
  [v56 _setClipPlane_];

  v58 = [a1 _strokeMask];
  [v56 _setStrokeMask_];

  v59 = [a1 _groupID];
  if (v59)
  {
    v60 = v74;
    v61 = v59;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v62.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v26(v60, v11);
  }

  else
  {
    v62.super.isa = 0;
  }

  [v56 _setGroupID_];

  v63 = [a1 _renderGroupID];
  if (v63)
  {
    v64 = v75;
    v65 = v63;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v66.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v26(v64, v11);
  }

  else
  {
    v66.super.isa = 0;
  }

  [v56 _setRenderGroupID_];

  [v56 _setShapeType_];
  return v56;
}

uint64_t PKStrokeCoherence.__allocating_init<A>(strokeNodeRef:in:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t))
{
  v118 = a4;
  v120 = a1;
  v121 = a2;
  v106 = type metadata accessor for UUID();
  v115 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v114 = &v87 - v7;
  v100 = type metadata accessor for CRKeyPath();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v113 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v87 - v14;
  v88 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v88);
  v103 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v87 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  v123 = type metadata accessor for Capsule();
  v119 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v87 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v90 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v87 - v26;
  v104 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v104);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v87 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v87 - v34;
  v91 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v91);
  v109 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v89 = &v87 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v117 = &v87 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v110 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v101 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v107 = &v87 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v87 - v46;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v105 = a3;
  Ref.subscript.getter();
  v111 = v41;
  v108 = v47;
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_1(v32, v29, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit12TaggedStrokeOWOhTm_1(v29, type metadata accessor for TaggedStroke);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v48 - 8) + 56))(v35, 1, 1, v48);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v50 = *(v49 - 8);
    (*(v50 + 32))(v35, v29, v49);
    (*(v50 + 56))(v35, 0, 1, v49);
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v35, 1, v51) == 1)
  {
    (*(v119 + 8))(v121, v123);
    (*(*(v116 - 8) + 8))(v120);
    (*(v110 + 8))(v108, v111);
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    return 0;
  }

  else
  {
    v54 = v89;
    v55 = v121;
    Ref.subscript.getter();
    (*(v52 + 8))(v35, v51);
    _s8PaperKit12TaggedStrokeOWObTm_1(v54, v117, type metadata accessor for PKStrokeStruct);
    (*(v119 + 16))(v122, v55, v123);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.getter();
    v56 = (v90 + 48);
    v57 = (v90 + 8);
    for (i = (v90 + 32); ; (*i)(v27, v15, v23))
    {
      swift_getWitnessTable();
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit12TaggedStrokeOWOhTm_1(v21, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v56)(v15, 1, v23) == 1)
      {
        break;
      }

      (*v57)(v27, v23);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    v59 = *(v119 + 8);
    v60 = v122;
    v119 += 8;
    v122 = v59;
    (v59)(v60, v123);
    outlined init with copy of PKStrokeStruct(v117, v109, type metadata accessor for PKStrokeStruct);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    v61 = v95;
    CRRegister.wrappedValue.getter();
    v62 = v96;
    v63 = v93;
    v64 = v97;
    (*(v96 + 16))(v93, v61 + *(v94 + 32), v97);
    _s8PaperKit12TaggedStrokeOWOhTm_1(v61, type metadata accessor for PKStrokeProperties);
    Ref.subscript.getter();
    (*(v62 + 8))(v63, v64);
    Ref.subscript.getter();
    v65 = v92;
    CRRegister.wrappedValue.getter();
    v66 = v103;
    Ref.subscript.getter();
    v67 = *v57;
    (*v57)(v65, v23);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v68 = v98;
    Reference.identity.getter();
    v69 = v114;
    CRKeyPath.uuid.getter();
    (*(v99 + 8))(v68, v100);
    v70 = v106;
    result = (*(v115 + 48))(v69, 1, v106);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v71 = *(v110 + 16);
      v105 = (v110 + 16);
      v104 = v71;
      v71(v107, v108, v111);
      v72 = objc_allocWithZone(type metadata accessor for PKStrokeCoherence(0));
      outlined init with copy of PKStrokeStruct(v109, v72 + OBJC_IVAR___PKStrokeCoherence_model, type metadata accessor for PKStrokeStruct);
      outlined init with copy of PKStrokeStruct(v113, v72 + OBJC_IVAR___PKStrokeCoherence__path, type metadata accessor for PKStrokePathStruct);
      outlined init with copy of PKStrokeStruct(v112, v72 + OBJC_IVAR___PKStrokeCoherence_resolvedProperties, type metadata accessor for PKStrokeInheritedProperties);
      v100 = v72;
      outlined init with copy of PKStrokeStruct(v66, v72 + OBJC_IVAR___PKStrokeCoherence_inheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
      CRRegister.wrappedValue.getter();
      v73 = v125;
      swift_endAccess();
      v118 = v67;
      if (v73)
      {
      }

      else
      {
        if (one-time initialization token for defaultInk != -1)
        {
          swift_once();
        }

        v74 = static PKStrokeCoherence.defaultInk;
        swift_beginAccess();
        v125 = v74;
        v75 = v74;
        CRRegister.wrappedValue.setter();
        swift_endAccess();
        v70 = v106;
      }

      v76 = *(v115 + 16);
      v77 = v102;
      v76(v102, v114, v70);
      v78 = v111;
      v79 = v104;
      v104(v101, v107, v111);
      v80 = v100;
      v81 = v77;
      v82 = v106;
      v76((v100 + OBJC_IVAR___PKStrokeCoherenceBase_identity), v81, v106);
      v83 = v101;
      v79(&v80[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v101, v78);
      v84 = type metadata accessor for PKStrokeCoherenceBase(0);
      v124.receiver = v80;
      v124.super_class = v84;
      v105 = objc_msgSendSuper2(&v124, sel_init);
      (v122)(v121, v123);
      (*(*(v116 - 8) + 8))(v120);
      v85 = *(v110 + 8);
      v85(v83, v78);
      v86 = *(v115 + 8);
      v86(v102, v82);
      v85(v107, v78);
      _s8PaperKit12TaggedStrokeOWOhTm_1(v103, type metadata accessor for PKStrokeInheritedProperties);
      _s8PaperKit12TaggedStrokeOWOhTm_1(v112, type metadata accessor for PKStrokeInheritedProperties);
      _s8PaperKit12TaggedStrokeOWOhTm_1(v113, type metadata accessor for PKStrokePathStruct);
      _s8PaperKit12TaggedStrokeOWOhTm_1(v109, type metadata accessor for PKStrokeStruct);
      v118(v27, v23);
      _s8PaperKit12TaggedStrokeOWOhTm_1(v117, type metadata accessor for PKStrokeStruct);
      v85(v108, v78);
      v86(v114, v82);
      return v105;
    }
  }

  return result;
}

uint64_t PKStrokeCoherenceBase._newStroke(withSubstrokes:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = type metadata accessor for PKStroke();
  v6 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v94 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v93 = v70 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v95 - 1);
  MEMORY[0x1EEE9AC00](v95);
  v72 = v70 - v11;
  v83 = type metadata accessor for UUID();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = v70 - v14;
  v15 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v80 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v78 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = v70 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v79 = v70 - v25;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v86 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v84 = v70 - v28;
  v29 = a1;
  v30 = *(a1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v74 = a2;
  if (v30)
  {
    v70[1] = v20;
    v70[2] = v18;
    v70[3] = v17;
    v71 = v3;
    v98 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = v98;
    v33 = *(v6 + 16);
    v32 = v6 + 16;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v89 = *(v32 + 56);
    v90 = v33;
    v91 = v10;
    v87 = v10 + 32;
    v88 = (v32 - 8);
    v35 = v72;
    v36 = v33;
    do
    {
      v37 = v92;
      v38 = v93;
      v36(v93, v34, v92);
      v39 = v32;
      v36(v94, v38, v37);
      type metadata accessor for PKStrokeCoherenceBase(0);
      v40 = swift_dynamicCast();
      v41 = v97;
      (*((*MEMORY[0x1E69E7D40] & *v97) + 0x60))(v40);

      (*v88)(v38, v37);
      v98 = v31;
      v43 = *(v31 + 16);
      v42 = *(v31 + 24);
      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
        v31 = v98;
      }

      *(v31 + 16) = v43 + 1;
      (*(v91 + 32))(v31 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v43, v35, v95);
      v34 += v89;
      --v30;
      v32 = v39;
    }

    while (v30);
    v3 = v71;
  }

  v98 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [Ref<CRRegister<TaggedStroke>>] and conformance [A], &_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  CRSequence.init<A>(_:)();
  v44 = OBJC_IVAR___PKStrokeCoherenceBase_strokeNode;
  swift_beginAccess();
  v45 = *(v80 + 16);
  v94 = (v80 + 16);
  v95 = v45;
  v46 = (v3 + v44);
  v47 = v79;
  v48 = v73;
  v45(v79, v46, v73);
  static CRKeyPath.unique.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>> and conformance CRSequence<A>, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v49 = v77;
  Ref.init(id:)();
  swift_storeEnumTagMultiPayload();
  v50 = v48;
  CRRegister.value.setter();
  v51 = OBJC_IVAR___PKStrokeCoherenceBase_identity;
  swift_beginAccess();
  v93 = *(v82 + 16);
  (v93)(v85, v3 + v51, v83);
  v52 = *(v86 + 16);
  v53 = v75;
  v52(v75, v84, v49);
  v54 = v76;
  v55 = v95;
  v95(v76, v47, v50);
  v56 = objc_allocWithZone(type metadata accessor for PKStrokeCoherenceSubstrokes(0));
  v52(&v56[OBJC_IVAR___PKStrokeCoherenceSubstrokes_substrokes], v53, v49);
  v57 = v81;
  v58 = v83;
  v59 = v93;
  (v93)(v81, v85, v83);
  v55(v78, v54, v50);
  v60 = v57;
  v61 = v58;
  v59(&v56[OBJC_IVAR___PKStrokeCoherenceBase_identity], v60, v58);
  v62 = v78;
  v55(&v56[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v78, v50);
  v63 = type metadata accessor for PKStrokeCoherenceBase(0);
  v96.receiver = v56;
  v96.super_class = v63;
  v64 = objc_msgSendSuper2(&v96, sel_init);
  v65 = *(v80 + 8);
  v65(v76, v50);
  v66 = *(v86 + 8);
  v86 += 8;
  v67 = v77;
  v66(v75, v77);
  v68 = *(v82 + 8);
  v68(v85, v61);
  v65(v62, v50);
  v68(v81, v61);
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  v65(v79, v50);
  return (v66)(v84, v67);
}