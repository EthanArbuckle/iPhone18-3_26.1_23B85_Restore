uint64_t UnknownCanvasElement.minAppFormatVersion.getter()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  CRRegister.wrappedValue.getter();
  result = v1;
  if (v1 < -32768)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v1 >= 0x8000)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void UnknownCanvasElement.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v60 = a5;
  v59 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = *a1;
  type metadata accessor for CanvasElementPDFAnnotation();
  v63 = a3;
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v58 = a6;
    outlined init with copy of Date?(a6, &v64, &_s8PaperKit0A17RenderableOptionsVSgMd);
    if (*&v65 == 1)
    {
      v23 = v63;
      outlined destroy of StocksKitCurrencyCache.Provider?(&v64, &_s8PaperKit0A17RenderableOptionsVSgMd);
LABEL_7:
      v30 = 0;
LABEL_8:
      v22[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = v30;

      return;
    }

    v57 = a8;
    v24 = v68;
    v25 = v63;
    outlined destroy of PaperRenderableOptions(&v64);
    if (v24 != 1)
    {
      goto LABEL_7;
    }

    outlined init with copy of Date?(a2, v16, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v26 = v62;
    if ((*(v62 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v27 = v57;
      v28 = v61;
      v29 = v60;
    }

    else
    {
      v31 = v8;
      (*(v26 + 32))(v19, v16, v17);
      v32 = v20;
      v27 = v57;
      v29 = v60;
      if (v20 >> 62)
      {
        if (v20 >> 62 != 1)
        {
          (*(v62 + 8))(v19, v17);
          v8 = v31;
          v28 = v61;
          goto LABEL_15;
        }

        v32 = (v20 & 0x3FFFFFFFFFFFFFFFLL);
      }

      outlined copy of PaperDocument.PDFDocumentUse(v20);
      v33 = type metadata accessor for UnknownCanvasElement(0);
      v34 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
      v35 = v33;
      v28 = v61;
      specialized CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)(v32, v19, 1, v29, v35, v61, v34, &protocol witness table for UnknownCanvasElement, v27);
      outlined consume of PaperDocument.PDFDocumentUse(v20);
      (*(v62 + 8))(v19, v17);
      v8 = v31;
    }

LABEL_15:
    v36 = type metadata accessor for UnknownCanvasElement(0);
    CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(v59, v8, v29, v58, v28, v36, v27, &protocol witness table for UnknownCanvasElement);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v37 = v64;
    v38 = v65;
    v39 = v66;
    Height = v67;
    v41 = v25;
    v42 = [v22 page];
    if (v42)
    {
      v43 = v42;
      [v42 boundsForBox_];
      v45 = v44;
      v47 = v46;

      v69.origin.x = v37;
      v69.origin.y = v38;
      v69.size.width = v39;
      v69.size.height = Height;
      MinX = CGRectGetMinX(v69);
      v70.origin.x = v37;
      v70.origin.y = v38;
      v70.size.width = v39;
      v70.size.height = Height;
      v49 = v47 + v45 + v45 - CGRectGetMaxY(v70);
      v71.origin.x = v37;
      v71.origin.y = v38;
      v71.size.width = v39;
      v71.size.height = Height;
      Width = CGRectGetWidth(v71);
      v72.origin.x = v37;
      v72.origin.y = v38;
      v72.size.width = v39;
      v72.size.height = Height;
      Height = CGRectGetHeight(v72);
      v39 = Width;
      v37 = MinX;
      v38 = v49;
    }

    [v22 setType_];
    v51 = [objc_opt_self() redColor];
    [v22 setColor_];

    [v22 setBounds_];
    v52 = [v22 createAKAnnotation];
    if (v52)
    {
      v53 = v52;
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        [v54 drawingBounds];
        [v22 setBounds_];

        v56 = *&v22[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation];
        *&v22[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = v55;
      }

      else
      {
      }

      v30 = 2;
    }

    else
    {

      v30 = 2;
    }

    goto LABEL_8;
  }
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance UnknownCanvasElement(uint64_t *a1))()
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

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance UnknownCanvasElement(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance UnknownCanvasElement@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance UnknownCanvasElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return (specialized UnknownCanvasElement.render<A>(in:id:capsule:options:))(a1, a2, a4, a5, a6);
}

uint64_t UnknownCanvasElement.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownCanvasElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t UnknownCanvasElement.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v70 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v49 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v49 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v49 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v49 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - v26;
  v71 = type metadata accessor for MergeResult();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v30 = *(v19 + 8);
  v30(v27, v18);
  (*(v19 + 16))(v21, v24, v18);
  CRRegister.projectedValue.setter();
  v30(v24, v18);
  MergeResult.merge(_:)();
  v68 = *(v69 + 8);
  v69 += 8;
  v68(v29, v71);
  v66 = type metadata accessor for UnknownCanvasElement(0);
  v31 = v51;
  v32 = v53;
  CRRegister.projectedValue.getter();
  v50 = v2;
  v33 = v52;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v34 = v55;
  v35 = *(v55 + 8);
  v35(v31, v32);
  (*(v34 + 16))(v54, v33, v32);
  CRRegister.projectedValue.setter();
  v35(v33, v32);
  MergeResult.merge(_:)();
  v68(v29, v71);
  v36 = v56;
  v37 = v58;
  CRRegister.projectedValue.getter();
  v38 = v57;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v39 = v60;
  v40 = *(v60 + 8);
  v40(v36, v37);
  (*(v39 + 16))(v59, v38, v37);
  CRRegister.projectedValue.setter();
  v40(v38, v37);
  MergeResult.merge(_:)();
  v68(v29, v71);
  v41 = v61;
  v42 = v63;
  CRRegister.projectedValue.getter();
  v43 = v62;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v44 = v65;
  v45 = *(v65 + 8);
  v45(v41, v42);
  (*(v44 + 16))(v64, v43, v42);
  CRRegister.projectedValue.setter();
  v45(v43, v42);
  MergeResult.merge(_:)();
  v46 = v71;
  v47 = v68;
  v68(v29, v71);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v47(v29, v46);
}

uint64_t UnknownCanvasElement.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v2 = *(v1 - 8);
  v61 = v1;
  v62 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v65 = &v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v52 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v52 - v30;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v32 = *(v23 + 8);
  v32(v25, v22);
  v32(v28, v22);
  v33 = v54;
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.getter();
  v34 = v52;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v35 = *(v53 + 8);
  v35(v34, v15);
  v35(v19, v15);
  v36 = v55;
  v37 = v57;
  CRRegister.projectedValue.getter();
  v38 = v56;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v39 = *(v58 + 8);
  v39(v38, v37);
  v39(v36, v37);
  v40 = v59;
  v41 = v61;
  CRRegister.projectedValue.getter();
  v42 = v60;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v43 = *(v62 + 8);
  v43(v42, v41);
  v43(v40, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if ((*(*(v44 - 8) + 48))(v31, 1, v44) == 1 && (v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd), (*(*(v45 - 8) + 48))(v65, 1, v45) == 1) && (v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GMd), (*(*(v46 - 8) + 48))(v64, 1, v46) == 1) && (v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySi_GMd), (*(*(v47 - 8) + 48))(v33, 1, v47) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v48 = type metadata accessor for UnknownCanvasElement.MutatingAction(0);
    (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
  }

  else
  {
    v49 = v63;
    outlined init with copy of Date?(v31, v63, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v50 = type metadata accessor for UnknownCanvasElement.MutatingAction(0);
    outlined init with copy of Date?(v65, v49 + v50[5], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v64, v49 + v50[6], &_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMd);
    outlined init with copy of Date?(v33, v49 + v50[7], &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    (*(*(v50 - 1) + 56))(v49, 0, 1, v50);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
}

uint64_t UnknownCanvasElement.apply(_:)(uint64_t a1)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit20UnknownCanvasElementV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v36 - v20;
  v22 = type metadata accessor for UnknownCanvasElement.MutatingAction(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v48, v21, &_s8PaperKit20UnknownCanvasElementV14MutatingActionVSgMd);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit20UnknownCanvasElementV14MutatingActionVSgMd);
  }

  outlined init with take of UnknownCanvasElement.MutatingAction(v21, v25);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v27 = v36;
  (*(v36 + 16))(v15, v18, v13);
  CRRegister.projectedValue.setter();
  (*(v27 + 8))(v18, v13);
  type metadata accessor for UnknownCanvasElement(0);
  v28 = v37;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v29 = v39;
  (*(v39 + 16))(v38, v28, v9);
  CRRegister.projectedValue.setter();
  (*(v29 + 8))(v28, v9);
  v30 = v40;
  v31 = v43;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v32 = v42;
  (*(v42 + 16))(v41, v30, v31);
  CRRegister.projectedValue.setter();
  (*(v32 + 8))(v30, v31);
  v33 = v44;
  v34 = v47;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v35 = v46;
  (*(v46 + 16))(v45, v33, v34);
  CRRegister.projectedValue.setter();
  (*(v35 + 8))(v33, v34);
  return outlined destroy of UnknownCanvasElement.Partial(v25, type metadata accessor for UnknownCanvasElement.MutatingAction);
}

uint64_t UnknownCanvasElement.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  CRRegister.projectedValue.getter();
  v48 = a1;
  CRRegister.projectedValue.getter();
  v23 = CRRegister.hasDelta(from:)();
  v24 = *(v17 + 8);
  v24(v19, v16);
  v24(v22, v16);
  if (v23 & 1) != 0 || (type metadata accessor for UnknownCanvasElement(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v25 = CRRegister.hasDelta(from:)(), v26 = *(v47 + 8), v26(v12, v10), v26(v15, v10), (v25) || (v27 = v43, v28 = v46, CRRegister.projectedValue.getter(), v29 = v44, CRRegister.projectedValue.getter(), v30 = CRRegister.hasDelta(from:)(), v31 = *(v45 + 8), v31(v29, v28), v31(v27, v28), (v30) || (v32 = v39, v33 = v42, CRRegister.projectedValue.getter(), v34 = v40, CRRegister.projectedValue.getter(), v35 = CRRegister.hasDelta(from:)(), v36 = *(v41 + 8), v36(v34, v33), v36(v32, v33), (v35))
  {
    v37 = 1;
  }

  else
  {
    v37 = UnknownProperties.hasDelta(from:)();
  }

  return v37 & 1;
}

uint64_t UnknownCanvasElement.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v4 = type metadata accessor for UnknownProperties();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v47 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - v26;
  v47 = v2;
  outlined init with copy of UnknownCanvasElement.Partial(v2, a2, type metadata accessor for UnknownCanvasElement);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v28 = *(v22 + 8);
  v28(v24, v21);
  (*(v22 + 16))(v24, v27, v21);
  v48 = a2;
  CRRegister.projectedValue.setter();
  v28(v27, v21);
  v29 = type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.getter();
  v30 = v49;
  CRRegister.copy(renamingReferences:)();
  v31 = v50;
  v32 = *(v50 + 8);
  v32(v18, v16);
  (*(v31 + 16))(v18, v30, v16);
  v33 = v48;
  CRRegister.projectedValue.setter();
  v32(v30, v16);
  v34 = v52;
  v35 = v53;
  CRRegister.projectedValue.getter();
  v36 = v51;
  CRRegister.copy(renamingReferences:)();
  v37 = v54;
  v38 = *(v54 + 8);
  v38(v34, v35);
  (*(v37 + 16))(v34, v36, v35);
  v39 = v33;
  CRRegister.projectedValue.setter();
  v38(v36, v35);
  v41 = v56;
  v40 = v57;
  CRRegister.projectedValue.getter();
  v42 = v55;
  CRRegister.copy(renamingReferences:)();
  v43 = v58;
  v44 = *(v58 + 8);
  v44(v41, v40);
  (*(v43 + 16))(v41, v42, v40);
  CRRegister.projectedValue.setter();
  v44(v42, v40);
  v45 = v59;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v60 + 40))(v39 + *(v29 + 32), v45, v61);
}

uint64_t UnknownCanvasElement.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v39 = type metadata accessor for UnknownProperties();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  type metadata accessor for CGRect(0);
  v55 = v16;
  v54 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v57 = 0u;
  v58 = 0u;
  CRRegister.init(wrappedValue:)();
  v17 = type metadata accessor for UnknownCanvasElement(0);
  v18 = v17[5];
  *&v57 = 0;
  v19 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v47 = v18;
  v48 = v19;
  CRRegister.init(wrappedValue:)();
  v20 = v17[6];
  v21 = type metadata accessor for CRAsset();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  outlined init with copy of Date?(v15, v12, &_s9Coherence7CRAssetVSgMd);
  v22 = lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v23 = v10;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CRAssetVSgMd);
  v24 = v17[7];
  *&v57 = 0;
  CRRegister.init(wrappedValue:)();
  v25 = a1;
  v26 = v17[8];
  UnknownProperties.init()();
  v27 = v56;
  v28 = v59;
  CRRegister.init(defaultState:)();
  if (v28)
  {
    return outlined destroy of UnknownCanvasElement.Partial(v25, type metadata accessor for UnknownCanvasElement);
  }

  v55 = v22;
  v37 = v26;
  v29 = v47;
  v54 = v20;
  v59 = v23;
  v31 = v51;
  v30 = v52;
  (*(v49 + 40))(v25, v27, v50);
  v32 = v53;
  CRRegister.init(defaultState:)();
  (*(v31 + 40))(v25 + v29, v32, v30);
  v33 = v46;
  CRRegister.init(defaultState:)();
  (*(v43 + 40))(v25 + v54, v33, v44);
  v34 = v45;
  CRRegister.init(defaultState:)();
  (*(v40 + 40))(v25 + v24, v34, v41);
  v35 = v42;
  UnknownProperties.init(defaultState:)();
  return (*(v38 + 40))(v25 + v37, v35, v39);
}

uint64_t UnknownCanvasElement.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v21 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  type metadata accessor for UnknownCanvasElement(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v13 = CRRegister.isDefaultState.getter(), (*(v10 + 8))(v12, v9), (v13) && (CRRegister.projectedValue.getter(), v14 = CRRegister.isDefaultState.getter(), (*(v6 + 8))(v8, v5), (v14) && (v15 = v26, CRRegister.projectedValue.getter(), v16 = CRRegister.isDefaultState.getter(), (*(v25 + 8))(v4, v15), (v16))
  {
    v17 = v22;
    v18 = v24;
    CRRegister.projectedValue.getter();
    v19 = CRRegister.isDefaultState.getter();
    (*(v23 + 8))(v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t UnknownCanvasElement.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v1 = *(v0 - 8);
  v23 = v0;
  v24 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v19 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v12 + 8))(v14, v11);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v8 + 8))(v10, v7);
  v15 = v20;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v21 + 8))(v6, v15);
  v17 = v22;
  v16 = v23;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v24 + 8))(v17, v16);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t UnknownCanvasElement.newRefs(from:)(uint64_t a1)
{
  v40[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v2 = *(v1 - 8);
  v48 = v1;
  v49 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v47 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v43 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v40 - v22;
  v50 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v24 = CRRegister.newRefs(from:)();
  v25 = *(v18 + 8);
  v25(v20, v17);
  v25(v23, v17);
  specialized Set.formUnion<A>(_:)(v24);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v26 = CRRegister.newRefs(from:)();
  v27 = *(v41 + 8);
  v27(v13, v11);
  v27(v16, v11);
  specialized Set.formUnion<A>(_:)(v26);
  v28 = v42;
  v29 = v44;
  CRRegister.projectedValue.getter();
  v30 = v43;
  CRRegister.projectedValue.getter();
  v31 = CRRegister.newRefs(from:)();
  v32 = *(v45 + 8);
  v32(v30, v29);
  v32(v28, v29);
  specialized Set.formUnion<A>(_:)(v31);
  v33 = v46;
  v34 = v48;
  CRRegister.projectedValue.getter();
  v35 = v47;
  CRRegister.projectedValue.getter();
  v36 = CRRegister.newRefs(from:)();
  v37 = *(v49 + 8);
  v37(v35, v34);
  v37(v33, v34);
  specialized Set.formUnion<A>(_:)(v36);
  v38 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v38);
  return v50;
}

Swift::Bool __swiftcall UnknownCanvasElement.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v21 = &v21 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  CRRegister.projectedValue.getter();
  v13 = CRRegister.needToFinalizeTimestamps()();
  (*(v10 + 8))(v12, v9);
  v19 = v13 || (type metadata accessor for UnknownCanvasElement(0), CRRegister.projectedValue.getter(), v14 = CRRegister.needToFinalizeTimestamps()(), (*(v6 + 8))(v8, v5), v14) || (CRRegister.projectedValue.getter(), v15 = CRRegister.needToFinalizeTimestamps()(), (*(v24 + 8))(v4, v2), v15) || (v16 = v21, v17 = v23, CRRegister.projectedValue.getter(), v18 = CRRegister.needToFinalizeTimestamps()(), (*(v22 + 8))(v16, v17), v18) || UnknownProperties.needToFinalizeTimestamps()();
  return v19;
}

uint64_t UnknownCanvasElement.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v19 + 16))(v21, v24, v18);
  CRRegister.projectedValue.setter();
  (*(v19 + 8))(v24, v18);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v13 + 16))(v35, v17, v12);
  CRRegister.projectedValue.setter();
  (*(v13 + 8))(v17, v12);
  v25 = v36;
  v26 = v38;
  CRRegister.projectedValue.getter();
  v27 = a1;
  v28 = v26;
  CRRegister.finalizeTimestamps(_:)();
  v29 = v39;
  (*(v39 + 16))(v37, v25, v28);
  CRRegister.projectedValue.setter();
  (*(v29 + 8))(v25, v28);
  v30 = v40;
  v31 = v42;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v32 = v43;
  (*(v43 + 16))(v41, v30, v31);
  CRRegister.projectedValue.setter();
  (*(v32 + 8))(v30, v31);
  return MEMORY[0x1DA6CBA30](v27);
}

uint64_t UnknownCanvasElement.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v89 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  v11 = type metadata accessor for CRCodableVersion();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v88 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v72 - v31;
  v87 = type metadata accessor for UnknownCanvasElement(0);
  v93 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v33 = *(v12 + 104);
  v91 = *MEMORY[0x1E6995288];
  v92 = v12 + 104;
  v90 = v33;
  v33(v29);
  v34 = static CRCodableVersion.== infix(_:_:)();
  v35 = *(v12 + 8);
  v35(v29, v11);
  if (v34)
  {
    return (*(v12 + 32))(v94, v32, v11);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  (*(v89 + 8))(v10, v8);
  v89 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v37 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = v32;
  }

  else
  {
    v39 = v24;
  }

  if (v38)
  {
    v40 = v32;
  }

  else
  {
    v40 = v24;
  }

  v35(v39, v11);
  v43 = *(v12 + 32);
  v41 = (v12 + 32);
  v42 = v43;
  v44 = v88;
  v43(v88, v40, v11);
  v43(v32, v44, v11);
  v90(v29, v91, v11);
  v45 = static CRCodableVersion.== infix(_:_:)();
  v35(v29, v11);
  if (v45)
  {
    return v42(v94, v32, v11);
  }

  v46 = v86;
  v88 = v41;
  v47 = v84;
  CRRegister.projectedValue.getter();
  v48 = v82;
  CRRegister.minEncodingVersion.getter();
  (*(v85 + 8))(v47, v46);
  v49 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v50 = (v49 & 1) == 0;
  if (v49)
  {
    v51 = v32;
  }

  else
  {
    v51 = v48;
  }

  if (v50)
  {
    v52 = v32;
  }

  else
  {
    v52 = v48;
  }

  v35(v51, v11);
  v53 = v83;
  v42(v83, v52, v11);
  v42(v32, v53, v11);
  v90(v29, v91, v11);
  v54 = static CRCodableVersion.== infix(_:_:)();
  v86 = v35;
  v35(v29, v11);
  if (v54 & 1) != 0 || ((v55 = v79, v56 = v81, CRRegister.projectedValue.getter(), v57 = v77, CRRegister.minEncodingVersion.getter(), (*(v80 + 8))(v55, v56), v58 = dispatch thunk of static Comparable.>= infix(_:_:)(), v59 = (v58 & 1) == 0) ? (v60 = v57) : (v60 = v32), v59 ? (v61 = v32) : (v61 = v57), v62 = v86, v86(v60, v11), v63 = v78, v42(v78, v61, v11), v42(v32, v63, v11), v90(v29, v91, v11), v64 = static CRCodableVersion.== infix(_:_:)(), v62(v29, v11), (v64))
  {
    v65 = v94;
  }

  else
  {
    v67 = v74;
    v68 = v76;
    CRRegister.projectedValue.getter();
    v69 = v73;
    CRRegister.minEncodingVersion.getter();
    (*(v75 + 8))(v67, v68);
    v70 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v71 = v94;
    if (v70)
    {
      v62(v32, v11);
      v65 = v71;
      v66 = v69;
      return v42(v65, v66, v11);
    }

    v62(v69, v11);
    v65 = v71;
  }

  v66 = v32;
  return v42(v65, v66, v11);
}

uint64_t UnknownCanvasElement.observableDifference(from:with:)@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v2 = *(v1 - 8);
  v64 = v1;
  v65 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v63 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v53 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v52 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v52 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v55 = &v52 - v30;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v31 = *(v16 + 8);
  v31(v18, v15);
  v31(v21, v15);
  type metadata accessor for UnknownCanvasElement(0);
  v32 = v54;
  CRRegister.projectedValue.getter();
  v33 = v56;
  CRRegister.projectedValue.getter();
  v67 = v28;
  CRRegister.observableDifference(from:with:)();
  v34 = *(v57 + 8);
  v34(v33, v11);
  v35 = v53;
  v34(v32, v11);
  v36 = v58;
  v37 = v60;
  CRRegister.projectedValue.getter();
  v38 = v59;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v39 = *(v61 + 8);
  v39(v38, v37);
  v39(v36, v37);
  v40 = v62;
  v41 = v64;
  CRRegister.projectedValue.getter();
  v42 = v63;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v43 = *(v65 + 8);
  v44 = v42;
  v45 = v55;
  v43(v44, v41);
  v43(v40, v41);
  v46 = type metadata accessor for CRValueObservableDifference();
  v47 = *(*(v46 - 8) + 48);
  if (v47(v45, 1, v46) == 1 && v47(v67, 1, v46) == 1 && v47(v68, 1, v46) == 1 && v47(v35, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v48 = type metadata accessor for UnknownCanvasElement.ObservableDifference(0);
    (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  }

  else
  {
    v49 = v66;
    outlined init with copy of Date?(v45, v66, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v50 = type metadata accessor for UnknownCanvasElement.ObservableDifference(0);
    outlined init with copy of Date?(v67, v49 + v50[5], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v68, v49 + v50[6], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v35, v49 + v50[7], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    (*(*(v50 - 1) + 56))(v49, 0, 1, v50);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t UnknownCanvasElement.encode(to:)()
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v20 = &v17 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v18 = v4;
    v19 = v7;
    v13 = v24;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v9 + 8))(v11, v8);
    type metadata accessor for UnknownCanvasElement(0);
    v14 = v19;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v14, v5);
    v15 = v18;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAsset?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v15, v2);
    v16 = v20;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v16, v13);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t UnknownCanvasElement.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v93 = type metadata accessor for UnknownProperties();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v99 = (&v84 - v5);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v90 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v84 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v84 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v107 = *(v11 - 8);
  v108 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v101 = *(v13 - 8);
  v102 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  type metadata accessor for CGRect(0);
  v22 = v21;
  v23 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v116 = 0u;
  v117 = 0u;
  v109 = v23;
  v110 = v22;
  CRRegister.init(wrappedValue:)();
  v24 = type metadata accessor for UnknownCanvasElement(0);
  v25 = v24[5];
  *&v116 = 0;
  v111 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v112 = v25;
  CRRegister.init(wrappedValue:)();
  v26 = v24[6];
  v27 = type metadata accessor for CRAsset();
  (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  outlined init with copy of Date?(v20, v17, &_s9Coherence7CRAssetVSgMd);
  v28 = lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v104 = v15;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence7CRAssetVSgMd);
  v29 = v24[7];
  *&v116 = 0;
  CRRegister.init(wrappedValue:)();
  v30 = v24[8];
  v31 = a2;
  UnknownProperties.init()();
  v32 = v114;
  v33 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v32)
  {

    return outlined destroy of UnknownCanvasElement.Partial(v31, type metadata accessor for UnknownCanvasElement);
  }

  else
  {
    v86 = v28;
    v34 = v112;
    v88 = v29;
    v35 = v113;
    v87 = v26;
    v85 = v30;
    v114 = v33;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v36 = v35;
      CRRegister.init(from:)();
      v37 = v34;
      v38 = a2;
      (*(v101 + 40))(a2, v36, v102);
    }

    else
    {
      v38 = a2;
      v37 = v34;
    }

    v39 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v41 = v107;
    v40 = v108;
    v42 = v88;
    if (v39)
    {
      v43 = v106;
      CRRegister.init(from:)();
      (*(v41 + 40))(&v37[v38], v43, v40);
    }

    v44 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v45 = v103;
    v46 = v105;
    v47 = v87;
    if (v44)
    {
      v48 = v100;
      CRRegister.init(from:)();
      (*(v46 + 40))(v38 + v47, v48, v45);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v49 = v97;
      CRRegister.init(from:)();
      (*(v94 + 40))(v38 + v42, v49, v95);
    }

    v51 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v113 = 0;
    v111 = v38;
    v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v51);

    *&v116 = v52;
    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

    specialized Set._Variant.remove(_:)(0x69616E626D756874, 0xE90000000000006CLL);

    specialized Set._Variant.remove(_:)(0x65567070416E696DLL, 0xED00006E6F697372);

    v53 = v116;
    v54 = v116 + 56;
    v55 = 1 << *(v116 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v116 + 56);
    v58 = (v55 + 63) >> 6;
    v59 = (v96 + 56);

    v60 = 0;
    v112 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v61 = v60;
      if (!v57)
      {
        break;
      }

LABEL_20:
      v62 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v63 = (*(v53 + 48) + ((v60 << 10) | (16 * v62)));
      v65 = *v63;
      v64 = v63[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v67 = v98;
        v110 = *(v98 + 48);
        v68 = v99;
        *v99 = v65;
        v68[1] = v64;
        v69 = v68;

        v70 = v113;
        AnyCRDT.init(from:)();
        v113 = v70;
        if (v70)
        {
LABEL_35:

          swift_bridgeObjectRelease_n();
          v31 = v111;
          return outlined destroy of UnknownCanvasElement.Partial(v31, type metadata accessor for UnknownCanvasElement);
        }

        (*v59)(v69, 0, 1, v67);
        v71 = v89;
        outlined init with take of (String, AnyCRDT)(v69, v89);
        outlined init with take of (String, AnyCRDT)(v71, v90);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 2) + 1, 1, v112);
        }

        v72 = v96;
        v74 = *(v112 + 2);
        v73 = *(v112 + 3);
        v75 = v90;
        if (v74 >= v73 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1, v112);
          v72 = v96;
          v112 = v77;
          v75 = v90;
        }

        v76 = v112;
        *(v112 + 2) = v74 + 1;
        outlined init with take of (String, AnyCRDT)(v75, &v76[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v74]);
      }

      else
      {

        v66 = v99;
        (*v59)(v99, 1, 1, v98);
        outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_sSS_9Coherence7AnyCRDTVtSgMd);
      }
    }

    while (1)
    {
      v60 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v60 >= v58)
      {
        break;
      }

      v57 = *(v54 + 8 * v60);
      ++v61;
      if (v57)
      {
        goto LABEL_20;
      }
    }

    v78 = v112;
    if (*(v112 + 2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
      v79 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v79 = MEMORY[0x1E69E7CC8];
    }

    v31 = v111;
    v80 = v93;
    v81 = v92;
    v82 = v91;
    v83 = v113;
    v118 = v79;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v78, 1, &v118);
    if (v83)
    {

      return outlined destroy of UnknownCanvasElement.Partial(v31, type metadata accessor for UnknownCanvasElement);
    }

    UnknownProperties.init(_:)();

    return (*(v81 + 40))(v31 + v85, v82, v80);
  }
}

uint64_t UnknownCanvasElement.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v77 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v85 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v79 = v18;
  v86 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v68 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v66 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v71 = *(v26 - 8);
  v27 = v71;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v66 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v67 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v80 = &v66 - v36;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v37 = *(v27 + 8);
  v37(v29, v26);
  v37(v32, v26);
  type metadata accessor for UnknownCanvasElement(0);
  v38 = v72;
  CRRegister.projectedValue.getter();
  v39 = v73;
  CRRegister.projectedValue.getter();
  v40 = v39;
  CRRegister.delta(_:from:)();
  v41 = *(v86 + 8);
  v41(v40, v18);
  v41(v38, v18);
  v42 = v74;
  CRRegister.projectedValue.getter();
  v43 = v78;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v44 = *(v85 + 8);
  v44(v43, v10);
  v45 = v81;
  v78 = v10;
  v44(v42, v10);
  v46 = v75;
  v47 = v84;
  CRRegister.projectedValue.getter();
  v48 = v76;
  CRRegister.projectedValue.getter();
  v49 = v71;
  CRRegister.delta(_:from:)();
  v50 = *(v83 + 8);
  v50(v48, v47);
  v50(v46, v47);
  v51 = v80;
  v52 = v87;
  if ((*(v49 + 48))(v80, 1, v26) == 1 && (*(v86 + 48))(v52, 1, v79) == 1 && (*(v85 + 48))(v88, 1, v78) == 1 && (*(v83 + 48))(v45, 1, v84) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v53 = type metadata accessor for UnknownCanvasElement.Partial(0);
    (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
  }

  else
  {
    v54 = v67;
    outlined init with copy of Date?(v51, v67, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v55 = v68;
    outlined init with copy of Date?(v52, v68, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v56 = v69;
    outlined init with copy of Date?(v88, v69, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    v57 = v70;
    outlined init with copy of Date?(v45, v70, &_s9Coherence10CRRegisterVySiGSgMd);
    v58 = v77;
    (*(v49 + 56))(v77, 1, 1, v26);
    v59 = type metadata accessor for UnknownCanvasElement.Partial(0);
    v60 = v59[5];
    (*(v86 + 56))(v58 + v60, 1, 1, v79);
    v61 = v59[6];
    (*(v85 + 56))(v58 + v61, 1, 1, v78);
    v62 = v59[7];
    (*(v83 + 56))(v58 + v62, 1, 1, v84);
    outlined assign with take of UUID?(v54, v58, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v55, v58 + v60, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v56, v58 + v61, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    v63 = v57;
    v52 = v87;
    outlined assign with take of UUID?(v63, v58 + v62, &_s9Coherence10CRRegisterVySiGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v64 = v58;
    v45 = v81;
    (*(*(v59 - 1) + 56))(v64, 0, 1, v59);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVySiGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v88, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
}

BOOL UnknownCanvasElement.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v67 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v55 - v29;
  outlined init with copy of Date?(a1, v23, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    (*(v25 + 32))(v30, v23, v24);
    CRRegister.projectedValue.getter();
    v31 = CRRegister.canMerge(delta:)();
    v32 = *(v25 + 8);
    v32(v27, v24);
    v32(v30, v24);
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  v33 = type metadata accessor for UnknownCanvasElement.Partial(0);
  v34 = a1;
  outlined init with copy of Date?(a1 + v33[5], v16, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v35 = v67;
  if ((*(v67 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v36 = v59;
    (*(v35 + 32))(v59, v16, v17);
    type metadata accessor for UnknownCanvasElement(0);
    v37 = v60;
    CRRegister.projectedValue.getter();
    v38 = CRRegister.canMerge(delta:)();
    v39 = *(v35 + 8);
    v39(v37, v17);
    v39(v36, v17);
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  v40 = v64;
  outlined init with copy of Date?(v34 + v33[6], v64, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  v42 = v65;
  v41 = v66;
  if ((*(v65 + 48))(v40, 1, v66) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  }

  else
  {
    v43 = v57;
    (*(v42 + 32))(v57, v40, v41);
    type metadata accessor for UnknownCanvasElement(0);
    v44 = v58;
    CRRegister.projectedValue.getter();
    v45 = CRRegister.canMerge(delta:)();
    v46 = *(v42 + 8);
    v46(v44, v41);
    v46(v43, v41);
    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  v47 = v61;
  outlined init with copy of Date?(v34 + v33[7], v61, &_s9Coherence10CRRegisterVySiGSgMd);
  v49 = v62;
  v48 = v63;
  if ((*(v62 + 48))(v47, 1, v63) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVySiGSgMd);
    return 1;
  }

  v50 = v55;
  (*(v49 + 32))(v55, v47, v48);
  type metadata accessor for UnknownCanvasElement(0);
  v51 = v56;
  CRRegister.projectedValue.getter();
  v52 = CRRegister.canMerge(delta:)();
  v53 = *(v49 + 8);
  v53(v51, v48);
  v53(v50, v48);
  return (v52 & 1) != 0;
}

BOOL UnknownCanvasElement.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = v66 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v74 = v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v73 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v72 = v66 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v71 = v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v77 = v66 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v78 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v70 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v69 = v66 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v68 = v66 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = v66 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v66 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v66 - v38;
  v40 = UnknownCanvasElement.canMerge(delta:)(a1);
  if (v40)
  {
    v67 = v40;
    v82 = a1;
    outlined init with copy of Date?(a1, v29, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      v41 = v1;
    }

    else
    {
      (*(v31 + 32))(v39, v29, v30);
      v41 = v1;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v31 + 16))(v33, v36, v30);
      CRRegister.projectedValue.setter();
      v42 = *(v31 + 8);
      v42(v36, v30);
      v42(v39, v30);
    }

    v43 = v85;
    v44 = type metadata accessor for UnknownCanvasElement.Partial(0);
    v45 = v82;
    v46 = v77;
    outlined init with copy of Date?(v82 + v44[5], v77, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v47 = v78;
    v48 = (*(v78 + 48))(v46, 1, v21);
    v49 = v81;
    v85 = v44;
    if (v48 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v50 = v68;
      (*(v47 + 32))(v68, v46, v21);
      type metadata accessor for UnknownCanvasElement(0);
      v51 = v69;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v47 + 16))(v70, v51, v21);
      CRRegister.projectedValue.setter();
      v44 = v85;
      v52 = *(v47 + 8);
      v53 = v51;
      v45 = v82;
      v52(v53, v21);
      v52(v50, v21);
    }

    v54 = v79;
    outlined init with copy of Date?(v45 + v44[6], v79, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    v55 = v80;
    v56 = (*(v80 + 48))(v54, 1, v49);
    v57 = v84;
    v66[1] = v41;
    if (v56 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    }

    else
    {
      v58 = v71;
      (*(v55 + 32))(v71, v54, v49);
      type metadata accessor for UnknownCanvasElement(0);
      v59 = v72;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v55 + 16))(v73, v59, v49);
      v45 = v82;
      CRRegister.projectedValue.setter();
      v44 = v85;
      v60 = *(v55 + 8);
      v60(v59, v49);
      v60(v58, v49);
    }

    v61 = v83;
    outlined init with copy of Date?(v45 + v44[7], v83, &_s9Coherence10CRRegisterVySiGSgMd);
    if ((*(v57 + 48))(v61, 1, v43) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence10CRRegisterVySiGSgMd);
    }

    else
    {
      v62 = v74;
      (*(v57 + 32))(v74, v61, v43);
      type metadata accessor for UnknownCanvasElement(0);
      v63 = v75;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v57 + 16))(v76, v63, v43);
      CRRegister.projectedValue.setter();
      v64 = *(v57 + 8);
      v64(v63, v43);
      v64(v62, v43);
    }

    LOBYTE(v40) = v67;
  }

  return v40;
}

uint64_t protocol witness for CRDT.context.getter in conformance UnknownCanvasElement(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance UnknownCanvasElement(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownCanvasElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CRCodable.minAppFormatVersion.getter in conformance UnknownCanvasElement()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  CRRegister.wrappedValue.getter();
  result = v1;
  if (v1 < -32768)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v1 >= 0x8000)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized static UnknownCanvasElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v50 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v18 + 8);
  v25(v20, v17);
  v25(v23, v17);
  if (v24 & 1) != 0 && (type metadata accessor for UnknownCanvasElement(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd), v26 = dispatch thunk of static Equatable.== infix(_:_:)(), v27 = *(v49 + 8), v27(v13, v11), v27(v16, v11), (v26) && (v28 = v45, v29 = v48, CRRegister.projectedValue.getter(), v30 = v46, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAsset?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd), v31 = dispatch thunk of static Equatable.== infix(_:_:)(), v32 = *(v47 + 8), v32(v30, v29), v32(v28, v29), (v31) && (v33 = v41, v34 = v44, CRRegister.projectedValue.getter(), v35 = v42, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd), v36 = dispatch thunk of static Equatable.== infix(_:_:)(), v37 = *(v43 + 8), v37(v35, v34), v37(v33, v34), (v36))
  {
    v38 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v38 = 0;
  }

  return v38 & 1;
}

uint64_t specialized UnknownCanvasElement.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[51] = a3;
  v4[52] = v3;
  v4[49] = a1;
  v4[50] = a2;
  return MEMORY[0x1EEE6DFA0](specialized UnknownCanvasElement.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t specialized UnknownCanvasElement.render<A>(in:id:capsule:options:)()
{
  v38 = v0;
  v1 = *(*(v0 + 408) + 64);
  if (v1)
  {
    v2 = *(v0 + 400);
    v3 = v1;
    v4 = [v3 annotations];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    v7 = specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), v6, v5);

    if (v7)
    {
      if ([v7 hasAppearanceStream])
      {
        v8 = *(v0 + 392);
        CGContextSaveGState(v8);
        [v3 boundsForBox_];
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        height = v40.size.height;
        MinY = CGRectGetMinY(v40);
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        MaxY = CGRectGetMaxY(v41);
        *(v0 + 88) = 0x3FF0000000000000;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = 0x3FF0000000000000;
        *(v0 + 120) = 0;
        *(v0 + 128) = 0;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 136) = 0x3FF0000000000000;
        *(v0 + 160) = xmmword_1D405A660;
        *(v0 + 176) = MinY + MaxY;
        CGAffineTransformConcat(&v37, (v0 + 88), (v0 + 136));
        v15 = *&v37.c;
        v16 = *&v37.tx;
        *(v0 + 184) = *&v37.a;
        *(v0 + 200) = v15;
        *(v0 + 216) = v16;
        CGContextConcatCTM(v8, (v0 + 184));
        [v3 transformForBox_];
        v17 = *&v37.c;
        v18 = *&v37.tx;
        *(v0 + 232) = *&v37.a;
        *(v0 + 248) = v17;
        *(v0 + 264) = v18;
        CGAffineTransformInvert(&v37, (v0 + 232));
        v19 = *&v37.c;
        v20 = *&v37.tx;
        *(v0 + 280) = *&v37.a;
        *(v0 + 296) = v19;
        *(v0 + 312) = v20;
        CGContextConcatCTM(v8, (v0 + 280));
        [v7 drawWithBox:1 inContext:v8];
        CGContextRestoreGState(v8);

        if (*(*(v0 + 408) + 122))
        {
          v21 = *(v0 + 392);
          CGContextSetRGBFillColor(v21, 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v22 = swift_allocObject();
          v22[1] = xmmword_1D4058CF0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
          CRRegister.wrappedValue.getter();
          v23 = *(v0 + 344);
          v22[2] = *(v0 + 328);
          v22[3] = v23;
          CGContextRef.fill(_:)(v22);

          UIGraphicsPushContext(v21);
          v24 = [objc_opt_self() systemFontOfSize_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D4058CF0;
          v26 = *MEMORY[0x1E69DB648];
          *(inited + 32) = *MEMORY[0x1E69DB648];
          *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
          *(inited + 40) = v24;
          v27 = v26;
          v28 = v24;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
          v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v30 = MEMORY[0x1DA6CCED0](0x6E776F6E6B6E55, 0xE700000000000000);
          type metadata accessor for NSAttributedStringKey(0);
          _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v32 = [v29 initWithString:v30 attributes:isa];

          CRRegister.wrappedValue.getter();
          [v32 drawInRect_];
          UIGraphicsPopContext();
        }

        v33 = *(v0 + 8);

        return v33();
      }

      v3 = v7;
    }
  }

  v35 = swift_task_alloc();
  *(v0 + 424) = v35;
  *v35 = v0;
  v35[1] = specialized UnknownCanvasElement.render<A>(in:id:capsule:options:);
  v36 = *(v0 + 392);

  return specialized CanvasElement.renderThumbnail(in:)(v36);
}

{

  return MEMORY[0x1EEE6DFA0](specialized UnknownCanvasElement.render<A>(in:id:capsule:options:), 0, 0);
}

{
  if (*(*(v0 + 408) + 122) == 1)
  {
    v1 = *(v0 + 392);
    CGContextSetRGBFillColor(v1, 1.0, 0.0, 0.0, 0.2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v2 = swift_allocObject();
    v2[1] = xmmword_1D4058CF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v3 = *(v0 + 344);
    v2[2] = *(v0 + 328);
    v2[3] = v3;
    CGContextRef.fill(_:)(v2);

    UIGraphicsPushContext(v1);
    v4 = [objc_opt_self() systemFontOfSize_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4058CF0;
    v6 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 40) = v4;
    v7 = v6;
    v8 = v4;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
    v9 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v10 = MEMORY[0x1DA6CCED0](0x6E776F6E6B6E55, 0xE700000000000000);
    type metadata accessor for NSAttributedStringKey(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = [v9 initWithString:v10 attributes:isa];

    CRRegister.wrappedValue.getter();
    [v12 drawInRect_];
    UIGraphicsPopContext();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t outlined init with take of UnknownCanvasElement.MutatingAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownCanvasElement.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UnknownCanvasElement.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of UnknownCanvasElement.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata completion function for UnknownCanvasElement()
{
  type metadata accessor for CRRegister<CGRect>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRRegister<CGFloat>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRRegister<CRAsset?>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CRRegister<Int>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UnknownProperties();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for CRRegister<Int>()
{
  if (!lazy cache variable for type metadata for CRRegister<Int>)
  {
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<Int>);
    }
  }
}

void type metadata completion function for UnknownCanvasElement.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CRAsset?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Int>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySi_GMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for UnknownCanvasElement.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CRAsset?>?, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Int>?, &_s9Coherence10CRRegisterVySiGMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void __swiftcall CanvasElementContainerView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v7 = [v3 subviews];
  type metadata accessor for UIView();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_18;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v9)
  {
    while (__OFSUB__(v9--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA6CE0C0](v9, v8);
      goto LABEL_12;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v11 = *(v8 + 32 + 8 * v9);
LABEL_12:
    v12 = v11;
    if ([v11 isHidden])
    {
    }

    else
    {
      [v12 convertPoint:v3 fromCoordinateSpace:{x, y}];
      v13 = [v12 hitTest:isa withEvent:?];

      if (v13)
      {

        return;
      }
    }
  }

LABEL_19:

  [v3 bounds];
  v15.x = x;
  v15.y = y;
  if (CGRectContainsPoint(v16, v15))
  {
    v14 = v3;
  }
}

id CanvasElementContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

PaperKit::CanvasContentMode_optional __swiftcall CanvasContentMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type CanvasContentMode and conformance CanvasContentMode()
{
  result = lazy protocol witness table cache variable for type CanvasContentMode and conformance CanvasContentMode;
  if (!lazy protocol witness table cache variable for type CanvasContentMode and conformance CanvasContentMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasContentMode and conformance CanvasContentMode);
  }

  return result;
}

Swift::Void __swiftcall FormPlusButtonView.setConstraintsBasedOn(_:)(UIView *a1)
{
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405B640;
  v5 = [v1 trailingAnchor];
  v6 = [(UIView *)a1 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:-25.0];

  *(v4 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [(UIView *)a1 safeAreaLayoutGuide];
  v10 = [(UILayoutGuide *)v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:-25.0];
  *(v4 + 40) = v11;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints_];
}

void FormPlusButtonView.setMenuWithActions(addTextBoxHandler:addSignatureHandler:)()
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v0.value._object = 0xEB00000000656C62;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  isa = paperKitBundle.super.isa;
  swift__string._object = 0x80000001D4090590;
  v2._object = 0x80000001D4090570;
  swift__string._countAndFlagsBits = 0xD000000000000025;
  v2._countAndFlagsBits = 0xD000000000000011;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v0, paperKitBundle, v3, swift__string);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v4 = static FormPlusButtonView.symbolConfiguration;
  v5 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4085AC0);
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5 withConfiguration:v4];

  v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  swift__stringa._object = 0x80000001D40905E0;
  v9._countAndFlagsBits = 0x6E67695320646441;
  v9._object = 0xED00006572757461;
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v10._object = 0x80000001D40905C0;
  swift__stringa._countAndFlagsBits = 0xD000000000000026;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, isa, v9, swift__stringa);
  v12 = MEMORY[0x1DA6CCED0](0x727574616E676973, 0xE900000000000065);
  v13 = [v6 systemImageNamed:v12 withConfiguration:v4];

  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
  swift__stringb._object = 0x80000001D4090630;
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x80000001D4090610;
  swift__stringb._countAndFlagsBits = 0xD000000000000039;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, isa, v17, swift__stringb);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1D405B640;
  *(preferredElementSize + 32) = v8;
  *(preferredElementSize + 40) = v14;
  v20 = v8;
  v22 = v14;
  v25.value.super.isa = 0;
  v25.is_nil = 0;
  v21 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v25, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  [v23 setMenu_];

  [v23 setShowsMenuAsPrimaryAction_];
}

uint64_t FormPlusButtonView.configureGlassButton()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - v1;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration.Size();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1DA6CDD10](v13);
  (*(v8 + 104))(v10, *MEMORY[0x1E69DC558], v7);
  UIButton.Configuration.buttonSize.setter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v3);
  UIButton.Configuration.cornerStyle.setter();
  v16 = MEMORY[0x1DA6CCED0](1937075312, 0xE400000000000000);
  v17 = [objc_opt_self() systemImageNamed_];

  UIButton.Configuration.image.setter();
  v18 = [objc_opt_self() configurationWithScale_];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v12 + 16))(v2, v15, v11);
  (*(v12 + 56))(v2, 0, 1, v11);
  UIButton.configuration.setter();
  return (*(v12 + 8))(v15, v11);
}

id NSUndoManager.registerUndoWithAutoGrouping<A>(withTarget:handler:)()
{
  if (([v0 groupsByEvent] & 1) != 0 || objc_msgSend(v0, sel_groupingLevel) > 0)
  {

    return NSUndoManager.registerUndo<A>(withTarget:handler:)();
  }

  else
  {
    [v0 beginUndoGrouping];
    NSUndoManager.registerUndo<A>(withTarget:handler:)();

    return [v0 endUndoGrouping];
  }
}

UIEvent specialized CanvasElementResizeView.dragInteraction(_:previewForLifting:session:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6.value.super.isa = swift_unknownObjectWeakLoadStrong();
  if (!v6.value.super.isa)
  {
    return v6.value;
  }

  isa = v6.value.super.isa;
  if (v2[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation + 16])
  {
LABEL_3:

LABEL_6:
    v6.value.super.isa = 0;
    return v6.value;
  }

  v6.value.super.isa = 0;
  ResizeView.hitTestChrome(_:with:)(&v2[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation], *&v2[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation], v6);
  if (v8)
  {
    v9 = v8;

    goto LABEL_6;
  }

  v10 = CanvasElementResizeView.resizingCanvasElements.getter();
  v11 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v10);
  v12 = v11;
  v13 = v11 >> 62;
  if (v11 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (*(*&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8] + 16))
    {
      goto LABEL_11;
    }

    if (v13)
    {
      v6.value.super.isa = __CocoaSet.count.getter();
    }

    else
    {
      v6.value.super.isa = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6.value.super.isa)
    {
      if ((v12 & 0xC000000000000001) == 0)
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return v6.value;
        }

        v35 = *(v12 + 32);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    v35 = MEMORY[0x1DA6CE0C0](0, v12);
LABEL_20:
    v36 = v35;

    v37 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x380))(a1, a2);

    v6.value.super.isa = v37;
    return v6.value;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  v14 = *&v3[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView];
  [v14 bounds];
  [(objc_class *)isa convertRect:v14 fromCoordinateSpace:?];
  v15 = *MEMORY[0x1E69E7D40] & *isa;
  v39[0] = v16;
  v39[1] = v17;
  v39[2] = v18;
  v39[3] = v19;
  v40 = 0;
  v20 = (*(v15 + 2336))(v12, v39);

  v21 = *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_draggedImage];
  *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_draggedImage] = v20;
  v22 = v20;

  if (!v20)
  {
    goto LABEL_3;
  }

  [v14 bounds];
  [v3 convertRect:v14 fromCoordinateSpace:?];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MidX = CGRectGetMidX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC9A8]) initWithContainer:v3 center:{MidX, CGRectGetMidY(v42)}];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor_];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v33 setFrame_];
  [v33 _setContinuousCornerRadius_];
  v34 = [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView:v33 parameters:v31 target:v28];

  v6.value.super.isa = v34;
  return v6.value;
}

uint64_t specialized CanvasElementResizeView.dragInteraction(_:itemsForBeginning:)(void *a1)
{
  v2 = v1;
  [a1 locationInView_];
  v4 = (v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation);
  *v4 = v5;
  v4[1] = v6;
  *(v4 + 16) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = Strong;
  v31 = a1;
  v9 = (v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v10 = *(v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v11 = *(v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8);
  v12 = *(v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16);
  v13 = *(v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24);
  v14 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x8E0);

  v15 = v14(v10, v11, v12, v13);

  if (!v15)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
  v17 = *v9;
  v18 = v9[1];
  v19 = v9[2];
  v20 = *(v9 + 24);
  if (v4[2])
  {

    v21 = 0;
  }

  else
  {
    v23 = v9[2];
    v25 = *v4;
    v24 = v4[1];

    v36.value.super.isa = 0;
    ResizeView.hitTestChrome(_:with:)(v26, __PAIR128__(v24, v25), v36);
    if (v27)
    {

      v21 = 0;
    }

    else
    {
      v28 = CanvasElementResizeView.resizingCanvasElements.getter();
      v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v28);
    }

    v19 = v23;
  }

  v33[0] = v17;
  v33[1] = v18;
  v33[2] = v19;
  v34 = v20;
  v35 = v21;
  swift_unknownObjectWeakInit();
  outlined init with copy of CanvasDragInformation(v33, v32);
  v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  outlined destroy of CanvasDragInformation(v33);
  [v16 setLocalObject_];
  swift_unknownObjectRelease();
  [v31 setLocalContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D405CEB0;
  *(v30 + 32) = v16;

  return v30;
}

void specialized CanvasElementResizeView.dragInteraction(_:sessionWillBegin:)(UIEvent_optional a1)
{
  v2 = &off_1E845F000;
  v3 = &off_1D4056000;
  if ((v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation + 16] & 1) == 0)
  {
    a1.value.super.isa = 0;
    ResizeView.hitTestChrome(_:with:)(&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation], *&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation], a1);
    if (v4)
    {
    }

    else
    {
      v5 = CanvasElementResizeView.resizingCanvasElements.getter();
      v6 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v5);
      v7 = v6;
      v28 = v1;
      if (v6 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v9 = 0;
        v29 = v7 & 0xFFFFFFFFFFFFFF8;
        v30 = v7 & 0xC000000000000001;
        while (1)
        {
          if (v30)
          {
            v11 = MEMORY[0x1DA6CE0C0](v9, v7);
          }

          else
          {
            if (v9 >= *(v29 + 16))
            {
              goto LABEL_18;
            }

            v11 = *(v7 + 8 * v9 + 32);
          }

          v12 = v11;
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v13 = [v11 v2[39]];
          v14 = OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging;
          *(v12 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging) = 1;
          v15 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x90))(v13);
          if (v15)
          {
            v16 = v7;
            v17 = v2;
            v18 = *(v15 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
            v31 = v15;
            v19 = v18;

            if (!v18)
            {
              __break(1u);
              return;
            }

            v19[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_hasDraggingCanvasElement] = *(v12 + v14);
            [v19 setHidden_];

            v2 = v17;
            v7 = v16;
            v10 = v9 + 1;
          }

          ++v9;
          if (v10 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

LABEL_20:

      v3 = &off_1D4056000;
      v1 = v28;
    }
  }

  [v1 v2[39]];
  v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_hasDraggingCanvasElement] = 1;
  [v1 setHidden_];
  v20 = [v1 gestureRecognizers];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      goto LABEL_35;
    }

    for (j = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
    {
      v24 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1DA6CE0C0](v24, v22);
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        [v25 setEnabled_];

        ++v24;
        if (v27 == j)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:
  }
}

unint64_t specialized CanvasElementResizeView.dragInteraction(_:previewForCancelling:withDefault:)(UIEvent_optional a1)
{
  isa = a1.value.super.isa;
  if (v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation + 16])
  {
    return isa;
  }

  a1.value.super.isa = 0;
  ResizeView.hitTestChrome(_:with:)(&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation], *&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation], a1);
  if (v3)
  {

    return isa;
  }

  v5 = CanvasElementResizeView.resizingCanvasElements.getter();
  result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v5);
  if (result >> 62)
  {
    v18 = result;
    if (__CocoaSet.count.getter())
    {
      v19 = __CocoaSet.count.getter();
      result = v18;
      if (v19 < 2)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_17:

    return isa;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_17;
  }

  if (v6 < 2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_draggedImage];
  if (v7)
  {
    v8 = v7;

    v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    [v1 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

LABEL_16:
    v30.origin.x = v11;
    v30.origin.y = v13;
    v30.size.width = v15;
    v30.size.height = v17;
    MidX = CGRectGetMidX(v30);
    v31.origin.x = v11;
    v31.origin.y = v13;
    v31.size.width = v15;
    v31.size.height = v17;
    v27 = [objc_allocWithZone(MEMORY[0x1E69DC9A8]) initWithContainer:v1 center:{MidX, CGRectGetMidY(v31)}];
    v28 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
    v29 = [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView:v9 parameters:v28 target:v27];

    return v29;
  }

LABEL_12:
  if ((result & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1DA6CE0C0](0);
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(result + 32);
LABEL_15:
    v21 = v20;

    v9 = v21;
    [v9 frame];
    v11 = v22;
    v13 = v23;
    v15 = v24;
    v17 = v25;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized CanvasElementResizeView.dragInteraction(_:session:didEndWith:)(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_32;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v8 = [v10 localObject];

      if (v8)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
      }

      v37 = v35;
      v38 = v36;
      if (!*(&v36 + 1))
      {

        goto LABEL_34;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
LABEL_29:

        goto LABEL_35;
      }

      if (!v39)
      {
        goto LABEL_29;
      }

      v32 = a2;
      v33 = v6;
      v34 = v2;
      outlined init with take of CanvasDragInformation(&v39, v42);
      v7 = v44;
      if (!v44)
      {
LABEL_40:
        v20 = v33;
        if ((v32 | 2) != 2)
        {
          (*((*MEMORY[0x1E69E7D40] & *v33) + 0x718))(v42[0], v42[1], v42[2], v43);
        }

        v21 = v34;
        [v34 setAlpha_];
        v22 = [v34 gestureRecognizers];
        if (v22)
        {
          v23 = v22;
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer);
          v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v24 >> 62)
          {
            goto LABEL_55;
          }

          for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
          {
            v26 = 0;
            while (1)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x1DA6CE0C0](v26, v24);
              }

              else
              {
                if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_54;
                }

                v27 = *(v24 + 8 * v26 + 32);
              }

              v28 = v27;
              v29 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              [v27 setEnabled_];

              ++v26;
              if (v29 == i)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            ;
          }

LABEL_56:

          v20 = v33;
          v21 = v34;
        }

        v21[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_hasDraggingCanvasElement] = 0;
        [v21 setHidden_];

        v30 = &v21[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation];
        *v30 = 0;
        *(v30 + 1) = 0;
        v30[16] = 1;
        v31 = *&v21[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_draggedImage];
        *&v21[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_draggedImage] = 0;

        outlined destroy of CanvasDragInformation(v42);
        return;
      }

      v6 = (v44 & 0xFFFFFFFFFFFFFF8);
      if (!(v44 >> 62))
      {
        v11 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_40;
        }

        goto LABEL_16;
      }

LABEL_39:
      v11 = __CocoaSet.count.getter();
      if (!v11)
      {
        goto LABEL_40;
      }

LABEL_16:
      v12 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1DA6CE0C0](v12, v7);
        }

        else
        {
          if (v12 >= v6[2])
          {
            goto LABEL_31;
          }

          v13 = *(v7 + 8 * v12 + 32);
        }

        v2 = v13;
        a2 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v14 = [v13 setAlpha_];
        v8 = OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging;
        *(v2 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging) = 0;
        v15 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))(v14);
        if (v15)
        {
          v16 = v6;
          v17 = *(v15 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
          v18 = v15;
          v19 = v17;

          if (!v17)
          {
            __break(1u);
            return;
          }

          v19[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_hasDraggingCanvasElement] = *(v2 + v8);
          [v19 setHidden_];

          v6 = v16;
        }

        ++v12;
        if (a2 == v11)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    while (__CocoaSet.count.getter());
  }

  v37 = 0u;
  v38 = 0u;
LABEL_34:
  outlined destroy of StocksKitCurrencyCache.Provider?(&v37, &_sypSgMd);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
LABEL_35:
  outlined destroy of StocksKitCurrencyCache.Provider?(&v39, &_s8PaperKit21CanvasDragInformationVSgMd);
}

uint64_t getEnumTagSinglePayload for CanvasDragInformation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for CanvasDragInformation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id HandwritingReflowView.isInReflowMode.didset(id result)
{
  v2 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode;
  if (v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode] != (result & 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

      if (v5)
      {
        [v5 setSelectionHidden_];
      }
    }

    v6 = [*&v1[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] layer];
    if (v1[v2] == 1)
    {
      v7 = [v1 window];
      v8 = v7;
      if (!v7 || (v9 = [v7 tintColor]) == 0)
      {
        if (one-time initialization token for resizeHandleColor != -1)
        {
          swift_once();
        }

        v9 = static UIConstants.resizeHandleColor;
      }

      v10 = [v9 CGColor];
    }

    else
    {
      if (one-time initialization token for handwritingReflowNonActiveBorderColor != -1)
      {
        swift_once();
      }

      v10 = [static UIConstants.handwritingReflowNonActiveBorderColor CGColor];
    }

    [v6 setBorderColor_];

    return [v1 setNeedsLayout];
  }

  return result;
}

Swift::Void __swiftcall HandwritingReflowView.updateForNewSelection()()
{
  [v0 setNeedsLayout];
  v1 = v0[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode];
  v0[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode] = 0;
  HandwritingReflowView.isInReflowMode.didset(v1);
  v2 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox;
  v3 = *&v0[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v3;
    [Strong removeFromSuperview];

    [v5 removeFromSuperview];
    v6 = *&v0[v2];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v2] = 0;

  v7 = objc_opt_self();
  v8 = *&v0[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v28[4] = closure #1 in HandwritingReflowView.hideCaret()partial apply;
  v28[5] = v9;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v28[3] = &block_descriptor_256;
  v10 = _Block_copy(v28);
  v11 = v8;

  [v7 animateWithDuration:v10 animations:0.2];
  _Block_release(v10);
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = *(v12 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = (v14 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v15 + 24);

    if (*(v16 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
    v17 = MEMORY[0x1E69E7CD0];
    if (*(MEMORY[0x1E69E7CD0] + 16))
    {
LABEL_7:

LABEL_10:
      v0[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_showResizeUI] = 1;
      HandwritingReflowView.startReflowForSelection(_:completion:)(MEMORY[0x1E69E7CC0], 0, 0);
      return;
    }
  }

  v19 = *(v17 + 16);

  if ((v19 != 0) | v18 & 1)
  {
    goto LABEL_10;
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x440))();
    v24 = v23;

    ObjectType = swift_getObjectType();
    v26 = (*(v24 + 16))(ObjectType, v24);

    if (v26)
    {
      type metadata accessor for UUID();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v26 setReflowingStrokeIds_];
    }
  }
}

char *HandwritingReflowView.init(frame:canvas:)(void *a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  v10 = v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_initialCoordinateSpace;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 48) = 1;
  v11 = v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_liveCoordinateSpace;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 1;
  v12 = (v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowStrokeBounds);
  *v12 = 0u;
  v12[1] = 0u;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox) = 0;
  v13 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret;
  *(v5 + v13) = [objc_allocWithZone(type metadata accessor for ReflowCursor()) initWithFrame_];
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isAdjustingSpace) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_keepReflowTextboxForDebugging) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_editMenuInteraction) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_currentReflowingStrokes) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode) = 1;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_showResizeUI) = 1;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isDrawing) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_endDrawContinuations) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_startLongPressTask) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D4065C70;
  v15 = type metadata accessor for CanvasElementResizeHandle();
  v16 = objc_allocWithZone(v15);
  *(v14 + 32) = CanvasElementResizeHandle.init(_:category:enabled:)(3, 0, 1);
  v17 = objc_allocWithZone(v15);
  *(v14 + 40) = CanvasElementResizeHandle.init(_:category:enabled:)(4, 1, 1);
  v18 = objc_allocWithZone(v15);
  *(v14 + 48) = CanvasElementResizeHandle.init(_:category:enabled:)(7, 0, 1);
  v19 = objc_allocWithZone(v15);
  v20 = &v19[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_resizeViewCenter];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v19[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type] = 3;
  v19[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_category] = 0;
  v19[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled] = 0;
  v21 = type metadata accessor for PrecisePanGestureRecognizer();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
  v22[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
  *&v22[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
  v51.receiver = v22;
  v51.super_class = v21;
  v23 = objc_msgSendSuper2(&v51, sel_initWithTarget_action_, 0, 0);
  v23[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
  swift_unknownObjectWeakAssign();
  [v23 setMaximumNumberOfTouches_];
  *&v19[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer] = v23;
  if (one-time initialization token for resizeHandleSize != -1)
  {
    swift_once();
  }

  v50.receiver = v19;
  v50.super_class = v15;
  *(v14 + 56) = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, *&static UIConstants.resizeHandleSize, *&static UIConstants.resizeHandleSize);
  v24 = objc_allocWithZone(v15);
  v25 = &v24[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_resizeViewCenter];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = 1;
  v24[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type] = 4;
  v24[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_category] = 1;
  v24[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled] = 0;
  v26 = objc_allocWithZone(v21);
  *&v26[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
  v26[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
  swift_unknownObjectWeakInit();
  *&v26[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
  *&v26[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
  v49.receiver = v26;
  v49.super_class = v21;
  v27 = objc_msgSendSuper2(&v49, sel_initWithTarget_action_, 0, 0);
  v27[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
  swift_unknownObjectWeakAssign();
  [v27 setMaximumNumberOfTouches_];
  *&v24[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer] = v27;
  v48.receiver = v24;
  v48.super_class = v15;
  *(v14 + 64) = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, *&static UIConstants.resizeHandleSize, *&static UIConstants.resizeHandleSize);
  v28 = objc_allocWithZone(v15);
  v29 = &v28[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_resizeViewCenter];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v28[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type] = 7;
  v28[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_category] = 0;
  v28[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled] = 0;
  v30 = objc_allocWithZone(v21);
  *&v30[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
  v30[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
  swift_unknownObjectWeakInit();
  *&v30[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
  *&v30[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
  v47.receiver = v30;
  v47.super_class = v21;
  v31 = objc_msgSendSuper2(&v47, sel_initWithTarget_action_, 0, 0);
  v31[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
  swift_unknownObjectWeakAssign();
  [v31 setMaximumNumberOfTouches_];
  *&v28[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer] = v31;
  v46.receiver = v28;
  v46.super_class = v15;
  *(v14 + 72) = objc_msgSendSuper2(&v46, sel_initWithFrame_, 0.0, 0.0, *&static UIConstants.resizeHandleSize, *&static UIConstants.resizeHandleSize);
  v32 = a1;
  ResizeView.init(frame:canvas:resizeHandles:)(v32, v14, a2, a3, a4, a5);
  v34 = v33;
  *(*&v33[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret] + OBJC_IVAR____TtC8PaperKit12ReflowCursor_panDelegate + 8) = &protocol witness table for HandwritingReflowView;
  swift_unknownObjectWeakAssign();
  v35 = objc_allocWithZone(MEMORY[0x1E69DC9E0]);
  v36 = v34;
  v37 = [v35 initWithDelegate_];
  [v36 addInteraction_];
  v38 = *&v36[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_editMenuInteraction];
  *&v36[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_editMenuInteraction] = v37;
  v39 = v37;

  v40 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v36 action:&sel_tap];
  [v36 addGestureRecognizer_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D4058CF0;
  v42 = type metadata accessor for UITraitUserInterfaceStyle();
  v43 = MEMORY[0x1E69DC0F8];
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v36;
}

Swift::Void __swiftcall HandwritingReflowView.didMoveToWindow()()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for HandwritingReflowView();
  objc_msgSendSuper2(&v11, sel_didMoveToWindow);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

    if (v5)
    {
      v6 = [v5 pencilLongPressGestureRecognizer];

      [v6 addTarget:v1 action:sel_longPress_];
    }
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = (*((*v3 & *v7) + 0x468))();

    if (v9)
    {
      v10 = [v9 simultaneousDrawingGestureRecognizer];

      [v10 addTarget:v1 action:sel_drawingContinuation_];
    }
  }
}

Swift::Void __swiftcall HandwritingReflowView.tap()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8);

      v5 = *(v4 + 16);

      if (v5)
      {
        v6 = *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode);
        *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode) = v6 ^ 1;

        HandwritingReflowView.isInReflowMode.didset(v6);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in HandwritingReflowView.endOfDrawing()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  if (*(a2 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isDrawing) != 1)
  {
    return CheckedContinuation.resume(returning:)();
  }

  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_endDrawContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_endDrawContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

Swift::Void __swiftcall HandwritingReflowView.adjustCaret(_:)(CGPoint a1)
{
  v2 = v1;
  y = a1.y;
  x = a1.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = *&v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
  if (v6)
  {
    *&against.size.width = Strong;
    v7 = *&v6[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
    swift_beginAccess();
    v8 = v7[11];
    v63 = v7[10];
    v64 = v8;
    v65[0] = v7[12];
    *(v65 + 11) = *(v7 + 203);
    v9 = v63;
    if (!v63)
    {

      return;
    }

    v10 = v64;
    v11 = v6;
    outlined init with copy of Date?(&v63, &against.size.height, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    [v2 convertPoint:v11 fromCoordinateSpace:v10];
    if ((v2[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace] & 1) == 0)
    {
      if (sqrt((x - v12) * (x - v12) + (y - v13) * (y - v13)) <= 20.0)
      {
        v29 = (v12 + x) * 0.5;
        v30 = (v13 + y) * 0.5;

        [v11 convertPoint:v2 fromCoordinateSpace:{v29, v30}];
        ReflowLayoutManager.caretRect(for:point:)(v9, v31, v32);
        [v11 convertRect:v2 toCoordinateSpace:?];
        v70 = CGRectInset(v69, 0.0, -2.0);
        v33 = v70.origin.y;
        v34 = [v11 superview];
        if (!v34)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(&v63, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
          against.origin.y = 0.0;
          v24 = 0.0;
          goto LABEL_26;
        }

        v27 = v34;
        against.origin.y = v33;
        v28 = v29 + -2.0;
        goto LABEL_20;
      }

      v2[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace] = 1;
    }

    [v11 convertPoint:v2 fromCoordinateSpace:{x, y}];
    v15 = v14;
    v17 = v16;
    v19 = ReflowTextView.spacingAdjustment.modify(&against.size.height);
    if (*v18)
    {
      v18[4] = v15;
      v18[5] = v17;
    }

    v19(&against.size.height, 0);
    v21 = ReflowTextView.spacingAdjustment.modify(&against.size.height);
    if (*v20)
    {
      *(v20 + 57) = 1;
    }

    v21(&against.size.height, 0);
    ReflowTextView.startAnimating(endingIn:smoothstep:)(0.0666666667, 0);

    ReflowLayoutManager.scaleTextToFit()();

    [v11 convertPoint:v2 fromCoordinateSpace:{x, y}];
    ReflowLayoutManager.caretRect(for:point:)(v9, v22, v23);
    [v11 convertRect:v2 toCoordinateSpace:?];
    v24 = 0.0;
    v68 = CGRectInset(v67, 0.0, -2.0);
    v25 = v68.origin.y;
    v26 = [v11 superview];
    if (!v26)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(&v63, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
      against.origin.y = 0.0;
      goto LABEL_26;
    }

    v27 = v26;
    against.origin.y = v25;
    v28 = x + -2.0;
LABEL_20:
    v35 = v28 + -1.0;
    [v11 frame];
    [v27 convertRect:v2 toCoordinateSpace:?];
    v36 = v71.origin.x;
    v37 = v71.origin.y;
    width = v71.size.width;
    height = v71.size.height;
    MinX = CGRectGetMinX(v71);
    v72.origin.x = v36;
    v72.origin.y = v37;
    v72.size.width = width;
    v72.size.height = height;
    MaxX = CGRectGetMaxX(v72);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v63, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);

    if (MinX > v35)
    {
      v42 = MinX;
    }

    else
    {
      v42 = v35;
    }

    if (v42 >= MaxX)
    {
      v24 = MaxX;
    }

    else
    {
      v24 = v42;
    }

LABEL_26:
    v43 = *&v2[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret];
    v44 = v11;
    [v44 convertPoint:v2 fromCoordinateSpace:{x, y}];
    v46 = v45;
    v48 = v47;
    [v44 bounds];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = [v43 superview];
    if (v57)
    {
      v58 = v57;
      [v57 convertRect:v43 toCoordinateSpace:{v24, against.origin.y, 4.0, 40.0}];
      v77.size.width = v54;
      v77.size.height = v56;
      v77.origin.x = v50;
      v77.origin.y = v52;
      v74 = ReflowCursor.boundedBarLayerFrame(newFrame:at:against:)(v73, __PAIR128__(v48, v46), v77);
      [*&v43[OBJC_IVAR____TtC8PaperKit12ReflowCursor_barLayer] setFrame_];
      v75.size.width = 4.0;
      v75.origin.x = v24;
      v75.origin.y = against.origin.y;
      v75.size.height = 40.0;
      v59 = CGRectGetWidth(v75);
      v76.size.width = 4.0;
      v76.origin.x = v24;
      v76.origin.y = against.origin.y;
      v76.size.height = 40.0;
      v60 = CGRectGetHeight(v76);
      if (v60 > 15.0)
      {
        v61 = v60;
      }

      else
      {
        v61 = 15.0;
      }

      [v43 setFrame_];
      ReflowCursor.updateTriangleLayers()();

      outlined destroy of StocksKitCurrencyCache.Provider?(&v63, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    }

    else
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(&v63, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    }

    return;
  }
}

Swift::Void __swiftcall HandwritingReflowView.drawingContinuation(_:)(UILongPressGestureRecognizer *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v24 - v6;
  v8 = [(UILongPressGestureRecognizer *)a1 state];
  if ((v8 - 3) >= 3)
  {
    if (v8 == 2)
    {
      if ((*(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isAdjustingSpace) & 1) == 0)
      {
        v21 = [*(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret) superview];
        if (v21)
        {

          [(UILongPressGestureRecognizer *)a1 locationInView:v1];

          HandwritingReflowView.adjustCaret(_:)(__PAIR128__(v23, v22));
        }
      }
    }

    else if (v8 == 1)
    {
      *(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace) = 0;
      *(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isDrawing) = 1;
      v17 = *(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
      if (v17)
      {
        v18 = *&v17[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
        swift_beginAccess();
        v19 = v18[11];
        v27[0] = v18[10];
        v27[1] = v19;
        v28[0] = v18[12];
        *(v28 + 11) = *(v18 + 203);
        v18[10] = 0u;
        v18[11] = 0u;
        v18[12] = 0u;
        *(v18 + 203) = 0u;
        v20 = v17;
        outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
      }
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isDrawing) = 0;
    v9 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_endDrawContinuations;
    v10 = *(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_endDrawContinuations);
    v11 = *(v10 + 16);
    if (v11)
    {
      v25 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_endDrawContinuations;
      v26 = v1;
      v14 = *(v4 + 16);
      v12 = v4 + 16;
      v13 = v14;
      v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v16 = *(v12 + 56);

      do
      {
        v13(v7, v15, v3);
        CheckedContinuation.resume(returning:)();
        (*(v12 - 8))(v7, v3);
        v15 += v16;
        --v11;
      }

      while (v11);

      v9 = v25;
      v1 = v26;
    }

    *(v1 + v9) = MEMORY[0x1E69E7CC0];
  }
}

Swift::Void __swiftcall HandwritingReflowView.longPress(_:)(UILongPressGestureRecognizer *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v79 - v4;
  v6 = type metadata accessor for MagicPaperUsageReflowEvent();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v87 = Strong;
  v10 = [v1 superview];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  v12 = [v10 isHidden];

  if (v12)
  {
    goto LABEL_4;
  }

  v14 = [(UILongPressGestureRecognizer *)a1 state];
  if ((v14 - 3) >= 2)
  {
    if (v14 == 2)
    {
      if (v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isAdjustingSpace] == 1)
      {
        [(UILongPressGestureRecognizer *)a1 locationInView:v1];
        HandwritingReflowView.adjustCaret(_:)(__PAIR128__(v36, v35));
      }
    }

    else if (v14 == 1)
    {
      v87 = v87;
      [v87 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(UILongPressGestureRecognizer *)a1 locationInView:v87];
      v24 = v23;
      v26 = v25;

      v100.origin.x = v16;
      v100.origin.y = v18;
      v100.size.width = v20;
      v100.size.height = v22;
      v99.x = v24;
      v99.y = v26;
      if (CGRectContainsPoint(v100, v99))
      {
        [(UILongPressGestureRecognizer *)a1 locationInView:v1];
        v28 = v27;
        v30 = v29;
        v31 = v1;
        AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
        v32 = HandwritingReflowView.startInsertSpaceReflow(at:)(v28, v30);

        *&v31[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_startLongPressTask] = v32;

        v31[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace] = 0;
        v31[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isAdjustingSpace] = 1;
        return;
      }
    }

    goto LABEL_4;
  }

  if (v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isAdjustingSpace] != 1)
  {
LABEL_4:
    v13 = v87;

    return;
  }

  v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isAdjustingSpace] = 0;
  v33 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_startLongPressTask;
  if (*&v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_startLongPressTask])
  {

    MEMORY[0x1DA6CD3C0](v34, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v85 = v1;
  *&v1[v33] = 0;

  v37 = (*MEMORY[0x1E69E7D40] & *v87) + 1128;
  v38 = *((*MEMORY[0x1E69E7D40] & *v87) + 0x468);
  v39 = v38();
  if (v39)
  {
    v40 = v39;
    [v39 _pauseHoverPreviewForTimeInterval_];
  }

  v41 = v85;
  v42 = *&v85[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
  if (!v42)
  {
LABEL_38:
    v55 = objc_opt_self();
    v56 = *(v41 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret);
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *&v93 = partial apply for closure #1 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:);
    *(&v93 + 1) = v57;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v92 = &block_descriptor_229_1;
    v58 = _Block_copy(&aBlock);
    v59 = v56;

    [v55 animateWithDuration:v58 animations:0.2];
    v60 = v58;
    goto LABEL_46;
  }

  if (v85[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace] != 1)
  {
    v61 = v42;
    goto LABEL_44;
  }

  v43 = v42;
  v81 = v37;
  v80 = v38;
  v44 = v38();
  LOBYTE(aBlock) = 0;
  v96 = 0;
  v90 = 0;
  v91 = 0;
  LOBYTE(v92) = 0;
  v93 = 0u;
  v94 = 0u;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v45 = MagicPaperUsageInsertSpaceEvent.calculateInsertedSpace(in:)(v43);
  v46 = v43;

  v95 = v45;
  v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v49 = v47[2];
  v48 = v47[3];
  if (v49 >= v48 >> 1)
  {
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47);
  }

  v88[3] = &type metadata for MagicPaperUsageInsertSpaceEvent;
  v88[4] = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent();
  v88[0] = swift_allocObject();
  outlined init with copy of MagicPaperUsageInsertSpaceEvent(&aBlock, v88[0] + 16);
  v47[2] = v49 + 1;
  outlined init with take of CalculateMathItem(v88, &v47[5 * v49 + 4]);
  outlined destroy of MagicPaperUsageInsertSpaceEvent(&aBlock);
  v50 = *&v46[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
  swift_beginAccess();
  v41 = *(v50 + 80);
  v82 = v42;
  v84 = v47;
  v83 = v46;
  if (v41 >> 62)
  {
    v51 = __CocoaSet.count.getter();
  }

  else
  {
    v51 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v51)
  {
LABEL_40:

    v42 = v82;
    goto LABEL_44;
  }

  v52 = 0;
  v86 = v41 & 0xC000000000000001;
  while (1)
  {
    if (v86)
    {
      v53 = MEMORY[0x1DA6CE0C0](v52, v41);
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      if (v52 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_49;
      }

      v53 = *(v41 + 8 * v52 + 32);

      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_37;
      }
    }

    type metadata accessor for ReflowWord();
    if (swift_dynamicCastClass())
    {
      break;
    }

LABEL_28:
    ++v52;
    if (v54 == v51)
    {
      goto LABEL_40;
    }
  }

  v42 = CGRectEqualToRect(*(v53 + 16), *(v53 + 48));

  if (v42)
  {
    goto LABEL_28;
  }

  v63 = (v80)(v62);
  Date.init()();
  v64 = type metadata accessor for Date();
  v65 = *(*(v64 - 8) + 56);
  v65(v5, 0, 1, v64);
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 6) = 0;
  v66 = v6[7];
  v65(&v8[v66], 1, 1, v64);
  *&v8[v6[9]] = 0;
  *&v8[v6[10]] = 0;
  *&v8[v6[11]] = 0;
  *&v8[v6[12]] = 0;
  *&v8[v6[13]] = 0;
  *&v8[v6[14]] = 0;
  v8[v6[15]] = 0;
  v8[v6[16]] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8[v6[8]] = 2;
  outlined assign with take of Date?(v5, &v8[v66]);
  swift_unknownObjectWeakAssign();

  v67 = v83;
  swift_unknownObjectWeakAssign();

  v68 = v84;
  v70 = v84[2];
  v69 = v84[3];
  if (v70 >= v69 >> 1)
  {
    v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v84);
  }

  v42 = v82;
  v92 = v6;
  *&v93 = _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent, type metadata accessor for MagicPaperUsageReflowEvent);
  v71 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  outlined init with copy of MagicPaperUsageReflowEvent(v8, v71, type metadata accessor for MagicPaperUsageReflowEvent);
  v68[2] = v70 + 1;
  outlined init with take of CalculateMathItem(&aBlock, &v68[5 * v70 + 4]);
  outlined destroy of MagicPaperUsageReflowEvent(v8, type metadata accessor for MagicPaperUsageReflowEvent);
LABEL_44:
  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
LABEL_49:
    swift_once();
  }

  TaskLocal.get()();

  specialized Array.append<A>(contentsOf:)(v72);
  v97 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd);
  swift_task_localValuePush();
  v73 = v85;
  closure #1 in HandwritingReflowView.longPress(_:)(v85, v42);
  swift_task_localValuePop();

  v74 = objc_opt_self();
  v75 = *&v73[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret];
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  *&v93 = closure #1 in HandwritingReflowView.hideCaret()partial apply;
  *(&v93 + 1) = v76;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v92 = &block_descriptor_236_0;
  v77 = _Block_copy(&aBlock);
  v78 = v75;

  [v74 animateWithDuration:v77 animations:0.2];
  v60 = v77;
LABEL_46:
  _Block_release(v60);
}

void closure #1 in HandwritingReflowView.longPress(_:)(_BYTE *a1, _BYTE *a2)
{
  if (a1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace])
  {
    v4 = *&a2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
    swift_beginAccess();
    v5 = v4[11];
    v15 = v4[10];
    v16 = v5;
    v17[0] = v4[12];
    *(v17 + 11) = *(v4 + 203);
    v4[10] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    *(v4 + 203) = 0u;
    outlined destroy of StocksKitCurrencyCache.Provider?(&v15, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    HandwritingReflowView.applyReflow(_:apply:hasShownStrokes:)(a2, 1, 0, 0);
    if ((a1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_keepReflowTextboxForDebugging] & 1) == 0)
    {
      v6 = *&a1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
      *&a1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox] = 0;
    }
  }

  else
  {
    if (HandwritingReflowView.canPasteAsHandwriting.getter())
    {
      v7 = *&a1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret];
      [v7 bounds];
      x = v18.origin.x;
      y = v18.origin.y;
      width = v18.size.width;
      height = v18.size.height;
      MidX = CGRectGetMidX(v18);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      [a1 convertPoint:v7 fromCoordinateSpace:{MidX, CGRectGetMidY(v19)}];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIEditMenuConfiguration);
      *&v17[0] = 0;
      v15 = 0u;
      v16 = 0u;
      v13 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
      v14 = *&a1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_editMenuInteraction];
      [v14 presentEditMenuWithConfiguration_];
    }

    HandwritingReflowView.applyReflow(_:apply:hasShownStrokes:)(a2, 1, 0, 0);
  }
}

uint64_t HandwritingReflowView.showRectangularSelection.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_showResizeUI) != 1 || !*(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox) || CGRectIsEmpty(*(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowStrokeBounds)))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v3)
    {
      __break(1u);
      goto LABEL_23;
    }

    v4 = *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);

    v5 = *(v4 + 16);

    if (v5)
    {
      return 0;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v11 = 0;
    v10 = MEMORY[0x1E69E7CD0];
    if (*(MEMORY[0x1E69E7CD0] + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v6 = result;
  v7 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = (v7 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 24);

  if (*(v9 + 16))
  {
LABEL_10:

    goto LABEL_13;
  }

LABEL_12:
  v12 = *(v10 + 16);

  if (!((v12 != 0) | v11 & 1))
  {
    return 0;
  }

LABEL_13:
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v13)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v14 = v13 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);

  if ((v16 & 1) == 0 && v15 == 6)
  {
    return 0;
  }

  v17 = *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret);
  if ([v17 isHidden])
  {
    return 1;
  }

  [v17 alpha];
  return v18 <= 0.0;
}

void HandwritingReflowView.rectangularSelectionTransformCoordinateSpace.getter(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_liveCoordinateSpace;
  if (*(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_liveCoordinateSpace + 48))
  {
    v52 = CGRectInset(*(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowStrokeBounds), -10.0, -10.0);
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    v8 = CGRect.isFinite.getter(v52.origin.x, v52.origin.y, v52.size.width, v52.size.height);
    v9 = 0uLL;
    v10 = 1.0;
    if (v8)
    {
      v11 = *MEMORY[0x1E695F050];
      v53.origin.y = *(MEMORY[0x1E695F050] + 8);
      rect2a = v53.origin.y;
      v12 = *(MEMORY[0x1E695F050] + 16);
      v13 = *(MEMORY[0x1E695F050] + 24);
      v53.origin.x = *MEMORY[0x1E695F050];
      v53.size.width = v12;
      v53.size.height = v13;
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v54 = CGRectUnion(v53, v58);
      v14 = v54.origin.x;
      v15 = v54.origin.y;
      v16 = v54.size.width;
      v17 = v54.size.height;
      v59.origin.x = v11;
      v59.origin.y = rect2a;
      v59.size.width = v12;
      v59.size.height = v13;
      v18 = CGRectEqualToRect(v54, v59);
      v9 = 0uLL;
      v19 = 1.0;
      v20 = 0uLL;
      if (!v18)
      {
        rect2b = v14 - v16 * 0.0;
        v44 = v15 - v17 * 0.0;
        v55.origin.x = v14;
        v55.origin.y = v15;
        v55.size.width = v16;
        v55.size.height = v17;
        MidX = CGRectGetMidX(v55);
        v56.origin.x = v14;
        v56.origin.y = v15;
        v56.size.width = v16;
        v56.size.height = v17;
        MidY = CGRectGetMidY(v56);
        CGAffineTransformMakeRotation(&t1, 0.0);
        ty = t1.ty;
        tx = t1.tx;
        v36 = *&t1.c;
        v38 = *&t1.a;
        CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
        a = t1.a;
        b = t1.b;
        c = t1.c;
        d = t1.d;
        v27 = t1.tx;
        v28 = t1.ty;
        *&t2.a = v38;
        *&t2.c = v36;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v49, &t1, &t2);
        v41 = v49.ty;
        v43 = v49.tx;
        v37 = *&v49.c;
        v39 = *&v49.a;
        t1.a = a;
        t1.b = b;
        t1.c = c;
        t1.d = d;
        t1.tx = v27;
        t1.ty = v28;
        CGAffineTransformInvert(&t2, &t1);
        *&t1.c = v37;
        *&t1.a = v39;
        t1.tx = v43;
        t1.ty = v41;
        CGAffineTransformConcat(&v49, &t1, &t2);
        t1.a = v16;
        t1.b = 0.0;
        t1.c = 0.0;
        t1.d = v17;
        t1.tx = rect2b;
        t1.ty = v44;
        t2 = v49;
        CGAffineTransformConcat(&v49, &t1, &t2);
        v10 = v49.a;
        v9 = *&v49.b;
        v19 = v49.d;
        v20 = *&v49.tx;
      }
    }

    else
    {
      v19 = 1.0;
      v20 = 0uLL;
    }
  }

  else
  {
    v20 = *(v3 + 32);
    v19 = *(v3 + 24);
    v9 = *(v3 + 8);
    v10 = *v3;
    v29 = *(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
      if ((*(v30 + 219) & 1) == 0)
      {
        v31 = *(v30 + 120);
        v32 = *(v30 + 128);
        v33 = *(v30 + 136);
        v34 = *(v30 + 144);
        v45 = v20;
        rect2 = v9;
        v35 = CGRect.isFinite.getter(v31, v32, v33, v34);
        v20 = v45;
        v9 = rect2;
        if (v35)
        {
          v57.origin.x = v31;
          v57.origin.y = v32;
          v57.size.width = v33;
          v57.size.height = v34;
          v19 = CGRectGetMaxY(v57) + 20.0;
          v20 = v45;
          v9 = rect2;
        }
      }
    }

    if (v10 <= 100.0)
    {
      v10 = 100.0;
    }
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
}

uint64_t HandwritingReflowView.availableSelectionHandles(for:)()
{
  if ((HandwritingReflowView.showRectangularSelection.getter() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v3)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v4 = v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 24);

    if (*(v5 + 16))
    {
LABEL_5:

LABEL_9:
      v8 = *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles);
      v9 = v8 >> 62;
      if (!(v8 >> 62))
      {
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3)
        {
          goto LABEL_11;
        }

        goto LABEL_51;
      }

      if (v8 < 0)
      {
        v5 = v8;
      }

      else
      {
        v5 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      result = __CocoaSet.count.getter();
      if ((result & 0x8000000000000000) == 0)
      {
        if (__CocoaSet.count.getter() >= 3)
        {
LABEL_11:
          if ((v8 & 0xC000000000000001) != 0)
          {
            type metadata accessor for CanvasElementResizeHandle();
            swift_bridgeObjectRetain_n();
            _ArrayBuffer._typeCheckSlowPath(_:)(0);
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          if (v9)
          {
            v5 = _CocoaArrayWrapper.subscript.getter();
            v1 = v10;
            v9 = v11;
            v7 = v12;

            if ((v7 & 1) == 0)
            {
LABEL_17:
              v13 = v5;
              v14 = v1;
              v15 = v9;
              v16 = v7;
LABEL_38:
              specialized _copyCollectionToContiguousArray<A>(_:)(v13, v14, v15, v16);
              v19 = v32;
              goto LABEL_39;
            }
          }

          else
          {
            v5 = v8 & 0xFFFFFFFFFFFFFF8;
            v1 = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
            v7 = 7;
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v17 = swift_dynamicCastClass();
          if (!v17)
          {
            swift_unknownObjectRelease();
            v17 = MEMORY[0x1E69E7CC0];
          }

          v18 = *(v17 + 16);

          if (!__OFSUB__(v7 >> 1, v9))
          {
            if (v18 == (v7 >> 1) - v9)
            {
LABEL_22:
              v19 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v19)
              {
                return v19;
              }

              v19 = MEMORY[0x1E69E7CC0];
LABEL_39:
              swift_unknownObjectRelease();
              return v19;
            }

            goto LABEL_53;
          }

LABEL_52:
          __break(1u);
LABEL_53:
          swift_unknownObjectRelease_n();
          goto LABEL_17;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v7 = 0;
    v5 = MEMORY[0x1E69E7CD0];
    v6 = MEMORY[0x1E69E7CD0];
    if (*(MEMORY[0x1E69E7CD0] + 16))
    {
      goto LABEL_5;
    }
  }

  v1 = *(v6 + 16);

  if ((v1 != 0) | v7 & 1)
  {
    goto LABEL_9;
  }

  v20 = *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 >= 3)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

  result = __CocoaSet.count.getter();
  if (result < 3)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v21 = result;
  result = __CocoaSet.count.getter();
  if (result >= 3)
  {
    result = __CocoaSet.count.getter();
    if (result >= v21)
    {
LABEL_26:
      if ((v20 & 0xC000000000000001) == 0 || v21 == 3)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        type metadata accessor for CanvasElementResizeHandle();
        swift_bridgeObjectRetain_n();
        v23 = 3;
        do
        {
          v24 = v23 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v23);
          v23 = v24;
        }

        while (v21 != v24);
      }

      if (v20 >> 62)
      {
        v25 = _CocoaArrayWrapper.subscript.getter();
        v26 = v29;
        v28 = v30;
        v27 = v31;

        if (v27)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v25 = v20 & 0xFFFFFFFFFFFFFF8;
        v26 = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
        v27 = (2 * v21) | 1;
        v28 = 3;
        if (v27)
        {
LABEL_41:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            swift_unknownObjectRelease();
            v33 = MEMORY[0x1E69E7CC0];
          }

          v34 = *(v33 + 16);

          if (!__OFSUB__(v27 >> 1, v28))
          {
            if (v34 == (v27 >> 1) - v28)
            {
              goto LABEL_22;
            }

            swift_unknownObjectRelease_n();
            goto LABEL_37;
          }

          goto LABEL_59;
        }
      }

LABEL_37:
      v13 = v25;
      v14 = v26;
      v15 = v28;
      v16 = v27;
      goto LABEL_38;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_63:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall HandwritingReflowView.checkStrokesAreValid()()
{
  v1 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v1);
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (!v2 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v19 = 1;
    return v19 & 1;
  }

  v4 = Strong;
  v5 = v0;
  v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
  v8 = v7;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 16);
  v11 = v2;
  v12 = v10(ObjectType, v8);

  if (!v12)
  {
LABEL_9:

    v19 = 1;
    return v19 & 1;
  }

  v13 = [v12 drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for PKDrawingCoherence(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v14 = [v31 strokes];
  type metadata accessor for PKStroke();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = specialized _arrayForceCast<A, B>(_:)(v15);

  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8PKStrokeC_SayAEGTt0g5Tf4g_n(v16);

  v18 = *(v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_currentReflowingStrokes);
  if (v18)
  {
  }

  else
  {
    v20 = *&v11[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
    swift_beginAccess();
    v21 = *(v20 + 80);
    v30 = MEMORY[0x1E69E7CC0];
    if (v21 >> 62)
    {
LABEL_34:
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v17;
    v29 = v11;

    if (v22)
    {
      v11 = 0;
      v17 = v21 & 0xC000000000000001;
      v23 = MEMORY[0x1E69E7CC0];
      do
      {
        v24 = v11;
        while (1)
        {
          if (v17)
          {
            MEMORY[0x1DA6CE0C0](v24, v21);
            v11 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v11 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }
          }

          type metadata accessor for ReflowWord();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v24;
          if (v11 == v22)
          {
            goto LABEL_29;
          }
        }

        MEMORY[0x1DA6CD190]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v23 = v30;
      }

      while (v11 != v22);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

LABEL_29:

    v18 = specialized Sequence.flatMap<A>(_:)(v23);

    v11 = v29;
    v17 = v28;
  }

  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8PKStrokeC_SayAEGTt0g5Tf4g_n(v18);

  specialized Set.isSubset(of:)(v17, v25);
  v19 = v26;

  return v19 & 1;
}

void specialized HandwritingReflowView.updateCurrentReflowingStrokes<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v58 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v73 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v58 - v9;
  v10 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v72 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v84 = v19;
    v78 = v15;
    v22 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x440);
    v74 = Strong;
    v23 = v22();
    v25 = v24;
    ObjectType = swift_getObjectType();
    v27 = (*(v25 + 16))(ObjectType, v25);

    if (v27)
    {
      v28 = [v27 drawing];
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for PKDrawingCoherence(0);
      if (swift_dynamicCast())
      {
        v58 = v27;
        v61 = v7;
        v59 = v2;
        v29 = v85;
        v30 = *(a1 + 64);
        v71 = a1 + 64;
        v60 = MEMORY[0x1E69E7CC0];
        v86 = MEMORY[0x1E69E7CC0];
        v31 = 1 << *(a1 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v30;
        v34 = OBJC_IVAR___PKDrawingCoherence_model;

        v79 = v29;
        v76 = v34;
        swift_beginAccess();
        v35 = 0;
        v36 = (v31 + 63) >> 6;
        v77 = v83 + 16;
        v66 = (v73 + 16);
        v64 = (v73 + 8);
        v63 = (v72 + 8);
        v62 = (v83 + 8);
        v67 = v13;
        v37 = v70;
        v65 = v36;
        v68 = v12;
        v69 = a1;
LABEL_7:
        v38 = v78;
        v39 = v71;
        while (v33)
        {
          v40 = v84;
LABEL_16:
          v43 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          v44 = *(a1 + 48) + *(v83 + 72) * (v43 | (v35 << 6));
          v73 = *(v83 + 16);
          (v73)(v40, v44, v38);
          Ref.id.getter();
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          WeakRef.init(id:)();
          v46 = v80;
          v47 = v81;
          v72 = *v66;
          (v72)(v81, &v79[v76], v80);
          type metadata accessor for PKDrawingStruct(0);
          _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
          v48 = v82;
          v49 = v67;
          WeakRef.subscript.getter();
          (*v64)(v47, v46);
          v50 = (*(*(v45 - 8) + 48))(v48, 1, v45);
          outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
          if (v50 == 1)
          {
            (*v63)(v37, v49);
            v38 = v78;
            (*v62)(v84, v78);
            a1 = v69;
            v39 = v71;
            v36 = v65;
          }

          else
          {
            v51 = v75;
            v52 = v84;
            v53 = v78;
            (v73)(v75, v84, v78);
            v54 = v61;
            (v72)(v61, &v79[v76], v46);
            v55 = _s8PaperKit17PKStrokeCoherenceC13strokeNodeRef2inACSg0D00G0VyAG10CRRegisterVyAA12TaggedStrokeOGG_AG7CapsuleVyxGtcAG4CRDTRzlufCAA15PKDrawingStructV_Tt1g5(v51, v54);
            (*v63)(v37, v49);
            v56 = (*v62)(v52, v53);
            a1 = v69;
            v38 = v53;
            v39 = v71;
            v36 = v65;
            if (v55)
            {
              MEMORY[0x1DA6CD190](v56);
              if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v37 = v70;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v60 = v86;
              goto LABEL_7;
            }
          }
        }

        v40 = v84;
        v41 = v79;
        while (1)
        {
          v42 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v42 >= v36)
          {

            *(v59 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_currentReflowingStrokes) = v60;

            return;
          }

          v33 = *(v39 + 8 * v42);
          ++v35;
          if (v33)
          {
            v35 = v42;
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
      }
    }

    else
    {
      v57 = v74;
    }
  }
}

Swift::Void __swiftcall HandwritingReflowView.layoutSubviews()()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_showResizeUI] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
    if (v2)
    {
      v3 = v2;
      v4 = [v3 superview];
      if (v4)
      {
        v5 = v4;
        if (*&v1[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle])
        {
          ReflowTextView.startAnimating(endingIn:smoothstep:)(0.0666666667, 0);
          [*&v1[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] frame];
          [v5 convertRect:v1 fromCoordinateSpace:?];
          v8 = CGRectInset(v7, 10.0, 10.0);
          [v3 setFrame_];

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }
  }

  if (!HandwritingReflowView.checkStrokesAreValid()())
  {
    HandwritingReflowView.updateForNewSelection()();
  }

LABEL_11:
  if (!*&v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox])
  {
    *&v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_currentReflowingStrokes] = 0;
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for HandwritingReflowView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
}

uint64_t HandwritingReflowView.showCaret(_:location:textPosition:linesAffected:caretRect:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, CGFloat a6, CGFloat a7, double a8, double a9, double a10, double a11)
{
  LOBYTE(v12) = a5;
  v22 = a1;
  v23 = *&a1[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
  swift_beginAccess();
  v24 = *(v23 + 80);
  if (v24 >> 62)
  {
    goto LABEL_107;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return result;
  }

LABEL_3:
  [v22 convertPoint:v11 fromCoordinateSpace:{a6, a7}];
  v27 = v26;
  v29 = v28;
  v30 = *(a2 + OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index);
  v31 = *(v23 + 80);
  v32 = v31 >> 62;
  if (!(v31 >> 62))
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v33 - 1;
    if (!__OFSUB__(v33, 1))
    {
      goto LABEL_5;
    }

LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v92 = __CocoaSet.count.getter();
  v34 = v92 - 1;
  if (__OFSUB__(v92, 1))
  {
    goto LABEL_111;
  }

LABEL_5:
  if ((v30 & ~(v30 >> 63)) >= v34)
  {
    v32 = v34;
  }

  else
  {
    v32 = v30 & ~(v30 >> 63);
  }

  v30 = *(v23 + 80);
  v124 = v22;
  v125 = v11;
  if ((v30 & 0xC000000000000001) == 0)
  {
    if (v34 < 0)
    {
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_114;
    }

    v35 = v32;
    v36 = *(v30 + 8 * v32 + 32);

    goto LABEL_12;
  }

LABEL_112:
  v93 = v32;

  v35 = v93;
  v36 = MEMORY[0x1DA6CE0C0](v93, v30);

LABEL_12:
  v37 = *(a2 + OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity);
  v22 = type metadata accessor for ReflowWord();
  result = swift_dynamicCastClass();
  if (result)
  {
    goto LABEL_74;
  }

  v122 = v37;
  v126 = v36;
  if (v34 < 0)
  {
    goto LABEL_120;
  }

  v38 = 0;
  v39 = v35;
  v11 = (v35 + 1);
  v127 = v23;
  v123 = v35;
  do
  {
    v40 = *(v23 + 80);
    v121 = v38;
    if (v40 >> 62)
    {
      v23 = v39;
      result = __CocoaSet.count.getter();
      if (result < v23)
      {
        goto LABEL_143;
      }

      a2 = result;
      result = __CocoaSet.count.getter();
      if (result < v23)
      {
        goto LABEL_142;
      }

      result = __CocoaSet.count.getter();
      if (result < a2)
      {
        goto LABEL_119;
      }

      v39 = v123;
      if (a2 < 0)
      {
        goto LABEL_145;
      }
    }

    else
    {
      a2 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2 < v39)
      {
        goto LABEL_118;
      }
    }

    if ((v40 & 0xC000000000000001) == 0 || v39 == a2)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v39 >= a2)
      {
        goto LABEL_141;
      }

      v42 = v39;
      type metadata accessor for ReflowElement();
      swift_bridgeObjectRetain_n();
      v43 = v42;
      do
      {
        v44 = v43 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v43);
        v43 = v44;
      }

      while (a2 != v44);
    }

    if (v40 >> 62)
    {
      v23 = _CocoaArrayWrapper.subscript.getter();
      v45 = v47;
      v46 = v48;
      v50 = v49;

      a2 = v50 >> 1;
      if (v46 != a2)
      {
LABEL_38:
        while (v46 < a2)
        {
          v54 = *(v45 + 8 * v46);
          if (swift_dynamicCastClass())
          {
            if ((v12 & 1) != 0 || ((v55 = *(v54 + 120), v55 >= a3) ? (v56 = a4 < v55) : (v56 = 1), !v56))
            {
              v37 = 0;
              goto LABEL_73;
            }
          }

          if (a2 == ++v46)
          {
            goto LABEL_30;
          }
        }

LABEL_106:
        __break(1u);
LABEL_107:
        result = __CocoaSet.count.getter();
        if (!result)
        {
          return result;
        }

        goto LABEL_3;
      }
    }

    else
    {
      v23 = v40 & 0xFFFFFFFFFFFFFF8;
      v45 = (v40 & 0xFFFFFFFFFFFFFF8) + 32;
      v46 = v123;
      if (v123 != a2)
      {
        goto LABEL_38;
      }
    }

LABEL_30:
    swift_unknownObjectRelease();
    v51 = *(v127 + 80);
    if (v51 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (result < 0)
      {
        goto LABEL_144;
      }

      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result <= v123)
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      return result;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      type metadata accessor for ReflowElement();
      swift_bridgeObjectRetain_n();
      v52 = 0;
      do
      {
        v53 = v52 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v52);
        v52 = v53;
      }

      while (v11 != v53);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v51 >> 62)
    {
      _CocoaArrayWrapper.subscript.getter();
      v57 = v58;
      a2 = v59;
      v61 = v60;

      v23 = v61 >> 1;
    }

    else
    {
      a2 = 0;
      v57 = (v51 & 0xFFFFFFFFFFFFFF8) + 32;
      v23 = v11;
    }

    v62 = v23;
    if (v23 != a2)
    {
      while (!__OFSUB__(v62--, 1))
      {
        if (v62 < a2 || v62 >= v23)
        {
          goto LABEL_103;
        }

        v54 = *(v57 + 8 * v62);
        if (swift_dynamicCastClass())
        {
          if ((v12 & 1) != 0 || ((v64 = *(v54 + 120), v64 >= a3) ? (v65 = a4 < v64) : (v65 = 1), !v65))
          {
            v37 = 1;
LABEL_73:

            swift_unknownObjectRelease();
            v36 = v54;
            v23 = v127;
            goto LABEL_74;
          }
        }

        if (v62 == a2)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

LABEL_51:
    result = swift_unknownObjectRelease();
    a3 = 0;
    a4 = 0;
    v38 = 1;
    LOBYTE(v12) = 1;
    v23 = v127;
    v39 = v123;
  }

  while ((v121 & 1) == 0);
  while (1)
  {
    v36 = v126;
    v37 = v122;
LABEL_74:
    v66 = round(*(v36 + 80));
    if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v66 <= -9.22337204e18)
    {
      goto LABEL_116;
    }

    if (v66 < 9.22337204e18)
    {
      break;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
  }

  v67 = v66;
  if ((v66 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v68 = *(v23 + 96);
    if (*(v68 + 16) > v67)
    {
      v69 = v68 + 168 * v67;
      v70 = *(v69 + 32);
      v71 = *(v69 + 64);
      v133[1] = *(v69 + 48);
      v133[2] = v71;
      v133[0] = v70;
      v72 = *(v69 + 80);
      v73 = *(v69 + 96);
      v74 = *(v69 + 128);
      v134 = *(v69 + 112);
      v135 = v74;
      v133[3] = v72;
      v133[4] = v73;
      v75 = *(v69 + 144);
      v76 = *(v69 + 160);
      v77 = *(v69 + 176);
      v139 = *(v69 + 192);
      v137 = v76;
      v138 = v77;
      v136 = v75;
      a3 = *&v133[0];
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v78 = *&v133[0] & 0xFFFFFFFFFFFFFF8;
      if (*&v133[0] >> 62)
      {
        a4 = __CocoaSet.count.getter();
      }

      else
      {
        a4 = *((*&v133[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v122 = v37;
      v126 = v36;
      v128 = v23;
      outlined init with copy of ReflowTextLine(v133, v131);
      if (a4)
      {
        v79 = 0;
        v23 = a3 & 0xC000000000000001;
        a2 = MEMORY[0x1E69E7CC0];
        v12 = 0x1E6997000uLL;
        do
        {
          v11 = v79;
          while (1)
          {
            if (v23)
            {
              MEMORY[0x1DA6CE0C0](v11, a3);
              v79 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_104;
              }
            }

            else
            {
              if (v11 >= *(v78 + 16))
              {
                goto LABEL_105;
              }

              v79 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_104;
              }
            }

            v80 = swift_dynamicCastClass();
            if (v80)
            {
              break;
            }

            ++v11;
            if (v79 == a4)
            {
              goto LABEL_99;
            }
          }

          v81 = v80;
          v82 = objc_opt_self();
          v83 = *(v81 + 336);
          v84 = *(v81 + 280);
          v85 = v83;
          [v84 _canvasBounds];
          v86 = [v82 scaledSize:v85 scale:CGRectGetHeight(v140)];

          MEMORY[0x1DA6CD190]();
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a2 = aBlock[0];
          LOBYTE(v12) = 0;
        }

        while (v79 != a4);
      }

      else
      {
        a2 = MEMORY[0x1E69E7CC0];
      }

LABEL_99:
      v119 = a10;
      v120 = a11;
      v117 = a8;
      v118 = a9;
      v116 = v27;
      if (a2 >> 62)
      {
        v87 = v128;
        v88 = v122;
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_124;
        }

LABEL_101:
        v89 = objc_opt_self();
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHTextSize);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v91 = [v89 averageTextSize_];
      }

      else
      {
        v87 = v128;
        v88 = v122;
        if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

LABEL_124:

        v91 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:14.0 descenderHeight:25.2 activeLines:21.0];
      }

      v94 = *&v134;
      v95 = *&v135;
      v96 = *&v136;
      v97 = *&v137;
      [v91 xHeight];
      v99 = v98;
      outlined destroy of ReflowTextLine(v133);
      if (v96 > v97)
      {
        v97 = v96;
      }

      [v91 xHeight];
      v101 = v100;

      if (v29 <= v97 + v101 * 0.5)
      {
        v102 = v95 >= v94 ? v94 : v95;
        if (v102 + v99 * -0.5 <= v29)
        {
          v103 = *&v125[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
          *&v125[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox] = v124;
          v104 = v124;

          v105 = *&v125[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret];
          [v105 setAlpha_];
          v106 = [v105 superview];
          if (v106)
          {
            v107 = v106;
            [v106 convertRect:v105 toCoordinateSpace:{a6, a7, 0.0, 0.0}];
            [*&v105[OBJC_IVAR____TtC8PaperKit12ReflowCursor_barLayer] setFrame_];
            v141.size.width = 0.0;
            v141.size.height = 0.0;
            v141.origin.x = a6;
            v141.origin.y = a7;
            Width = CGRectGetWidth(v141);
            v142.size.width = 0.0;
            v142.size.height = 0.0;
            v142.origin.x = a6;
            v142.origin.y = a7;
            Height = CGRectGetHeight(v142);
            if (Height > 15.0)
            {
              v110 = Height;
            }

            else
            {
              v110 = 15.0;
            }

            [v105 setFrame_];
            ReflowCursor.updateTriangleLayers()();
          }

          [v125 addSubview_];
          v130 = 1;
          swift_beginAccess();
          v111 = *(v87 + 176);
          v131[0] = *(v87 + 160);
          v131[1] = v111;
          v132[0] = *(v87 + 192);
          *(v132 + 11) = *(v87 + 203);
          *(v87 + 160) = v126;
          *(v87 + 168) = v88;
          *(v87 + 176) = v116;
          *(v87 + 184) = v29;
          *(v87 + 192) = v116;
          *(v87 + 200) = v29;
          *(v87 + 208) = 0;
          *(v87 + 216) = 1;
          *(v87 + 217) = 256;

          outlined destroy of StocksKitCurrencyCache.Provider?(v131, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
          v112 = objc_opt_self();
          v113 = swift_allocObject();
          *(v113 + 2) = v125;
          v113[3] = v117;
          v113[4] = v118;
          v113[5] = v119;
          v113[6] = v120;
          aBlock[4] = partial apply for closure #3 in HandwritingReflowView.showCaret(_:location:textPosition:linesAffected:caretRect:);
          aBlock[5] = v113;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_223_0;
          v114 = _Block_copy(aBlock);
          v115 = v125;

          [v112 animateWithDuration:v114 animations:0.2];
          _Block_release(v114);
        }
      }
    }
  }
}

void closure #3 in HandwritingReflowView.showCaret(_:location:textPosition:linesAffected:caretRect:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret);
  v10 = [v9 superview];
  if (v10)
  {
    v14 = v10;
    [v10 convertRect:v9 toCoordinateSpace:{a2, a3, a4, a5}];
    [*&v9[OBJC_IVAR____TtC8PaperKit12ReflowCursor_barLayer] setFrame_];
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    Width = CGRectGetWidth(v16);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    Height = CGRectGetHeight(v17);
    if (Height > 15.0)
    {
      v13 = Height;
    }

    else
    {
      v13 = 15.0;
    }

    [v9 setFrame_];
    ReflowCursor.updateTriangleLayers()();
  }
}

void *HandwritingReflowView.startInsertSpaceReflow(at:)(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = MEMORY[0x1E69E7D40];
    v12 = *((*MEMORY[0x1E69E7D40] & *result) + 0x440);
    v13 = v12();
    v15 = v14;
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 16))(ObjectType, v15);

    if (v17)
    {
      v3[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_showResizeUI] = 0;
      v18 = v12();
      [v18 convertPoint:v3 fromCoordinateSpace:{a1, a2}];
      v20 = v19;
      v22 = v21;

      (*((*v11 & *v10) + 0x858))(&v35);
      v23 = sqrt(v35 * v35 + v36 * v36);
      if (v37)
      {
        v23 = 1.0;
      }

      v24 = v20 / v23;
      v25 = v22 / v23;
      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
      type metadata accessor for MainActor();
      v27 = v17;
      v28 = v10;
      v29 = v3;
      v30 = static MainActor.shared.getter();
      v31 = swift_allocObject();
      v32 = MEMORY[0x1E69E85E0];
      *(v31 + 16) = v30;
      *(v31 + 24) = v32;
      *(v31 + 32) = v24;
      *(v31 + 40) = v25;
      *(v31 + 48) = v27;
      *(v31 + 56) = v28;
      *(v31 + 64) = v29;
      *(v31 + 72) = a1;
      *(v31 + 80) = a2;
      v33 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:), v31);

      return v33;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 144) = a3;
  *(v10 + 152) = a4;
  *(v10 + 128) = a9;
  *(v10 + 136) = a10;
  *(v10 + 160) = type metadata accessor for MainActor();
  *(v10 + 168) = static MainActor.shared.getter();
  v14 = swift_task_alloc();
  *(v10 + 176) = v14;
  *v14 = v10;
  v14[1] = closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:);
  v15 = MEMORY[0x1E69E7CC0];

  return specialized static ReflowTextView.reflowTextView(at:strokes:in:)(v15, a8, a1, a2);
}

uint64_t closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:)(uint64_t a1)
{
  v2 = *v1;
  v2[23] = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[24] = v4;
  v2[25] = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:), v4, v3);
}

uint64_t closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:)()
{
  v1 = v0[23];
  if (!v1)
  {

    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {

LABEL_5:
    v2 = v0[1];

    return v2();
  }

  v4 = v0[23];
  v5 = v0[16];
  v6 = v0[17];
  v7 = OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager;
  v0[26] = OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager;
  *(*&v1[v7] + 219) = 0;
  ReflowTextView.adjustSizeForSingleLineManipulation(in:)(v5);
  v8 = *(v6 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  *(v6 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox) = v4;
  v1;

  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:);
  v10 = v0[16];

  return ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(v10, 0, 0);
}

{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:), v3, v2);
}

{

  if (static Task<>.isCancelled.getter())
  {
    goto LABEL_10;
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v2 + v1);
  swift_beginAccess();
  v4._rawValue = *(v3 + 80);
  swift_beginAccess();
  v5._rawValue = *(v3 + 88);

  ReflowLayoutManager.layoutText(contents:lines:)(v4, v5);

  v6 = *(v2 + v1);
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = *(v0 + 184);
    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

LABEL_4:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    specialized ReflowTextView.caretRect(for:in:in:)(*(v0 + 136), v0 + 16, *(v0 + 144));
    v10 = *(v0 + 16);
    v11 = *(v0 + 184);
    if (v10)
    {
      HandwritingReflowView.showCaret(_:location:textPosition:linesAffected:caretRect:)(*(v0 + 184), v10, 0, 0, 1, *(v0 + 144), *(v0 + 152), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

      outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s8PaperKit19ReflowLayoutManagerC12TextPositionC_So6CGRectVtSgMd);
    }

    else
    {

      v9 = v11;
    }
  }

  else
  {
    v9 = *(v0 + 184);
  }

LABEL_11:

  v12 = *(v0 + 8);

  return v12();
}

void HandwritingReflowView.startReflowForSelection(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v73 - v7;
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for PKStroke();
  v11 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v79 = &v73 - v13;
  v14 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v14);
  v81 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v77 = v8;
    v78 = a1;
    v16 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x440);
    v82 = Strong;
    v17 = v16();
    v19 = v18;
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 16))(ObjectType, v19);

    if (v21)
    {
      v22 = [v21 drawing];
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for PKDrawingCoherence(0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      v23 = v93[0];
      v24 = v78;
      v25 = v78[2];
      v76 = v21;
      if (v25)
      {
        v74 = v93[0];
        v75 = a2;
        v93[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
        v86 = *(v11 + 16);
        v87 = v11 + 16;
        v26 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v85 = *(v11 + 72);
        v27 = v93[0];
        v83 = (v11 + 8);
        v84 = v92 + 32;
        v28 = v79;
        v29 = v88;
        do
        {
          v30 = v90;
          v86(v29, v26, v90);
          isa = PKStroke._bridgeToObjectiveC()().super.isa;
          v32 = [(objc_class *)isa _strokeUUID];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          WeakRef.init(id:)();
          (*v83)(v29, v30);
          v93[0] = v27;
          v34 = *(v27 + 16);
          v33 = *(v27 + 24);
          if (v34 >= v33 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1);
            v28 = v79;
            v27 = v93[0];
          }

          *(v27 + 16) = v34 + 1;
          (*(v92 + 32))(v27 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v34, v28, v89);
          v26 += v85;
          --v25;
        }

        while (v25);
        v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v27);

        v93[0] = v36;
        v37 = *((*MEMORY[0x1E69E7D40] & *v82) + 0x558);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
        v39 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance Set<A>, &_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
        v40 = v37(v93, v38, v39);
        v42 = v41;
        v44 = v43;
        v46 = v45;

        v47 = v78;

        v48 = v47;
        v49 = v80;
        v50 = v75;
        v23 = v74;
        goto LABEL_23;
      }

      v51 = swift_unknownObjectWeakLoadStrong();
      if (v51)
      {
        v52 = v51;
        v53 = *(v51 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
        if (!v53)
        {
          __break(1u);
          goto LABEL_26;
        }

        v50 = a2;
        v54 = *(v53 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8);
      }

      else
      {
        v50 = a2;
        v54 = MEMORY[0x1E69E7CD0];
      }

      v93[0] = v54;
      v55 = *((*MEMORY[0x1E69E7D40] & *v82) + 0x558);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      v57 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance Set<A>, &_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      v40 = v55(v93, v56, v57);
      v42 = v58;
      v44 = v59;
      v46 = v60;

      v61 = swift_unknownObjectWeakLoadStrong();
      if (!v61)
      {
        v64 = MEMORY[0x1E69E7CD0];
        v49 = v80;
        goto LABEL_22;
      }

      v62 = v61;
      v63 = *(v61 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      v49 = v80;
      if (v63)
      {
        v64 = *(v63 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8);

LABEL_22:
        v48 = specialized CanvasMembers.leafStrokes(in:)(v23, v64);

        v47 = v78;
LABEL_23:
        v65 = type metadata accessor for TaskPriority();
        v66 = v77;
        (*(*(v65 - 8) + 56))(v77, 1, 1, v65);
        type metadata accessor for MainActor();

        v67 = v76;
        v68 = v82;
        v69 = v81;
        outlined copy of (@escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize))?(v50, v49);
        v70 = static MainActor.shared.getter();
        v71 = swift_allocObject();
        v72 = MEMORY[0x1E69E85E0];
        *(v71 + 2) = v70;
        *(v71 + 3) = v72;
        v71[4] = v40;
        *(v71 + 5) = v42;
        *(v71 + 6) = v44;
        *(v71 + 7) = v46;
        *(v71 + 8) = v48;
        *(v71 + 9) = v67;
        *(v71 + 10) = v47;
        *(v71 + 11) = v68;
        *(v71 + 12) = v69;
        *(v71 + 13) = v50;
        *(v71 + 14) = v49;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v66, &async function pointer to partial apply for closure #2 in HandwritingReflowView.startReflowForSelection(_:completion:), v71);

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

    v35 = v82;
  }
}

uint64_t closure #2 in HandwritingReflowView.startReflowForSelection(_:completion:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[9] = v20;
  v10[10] = v21;
  v10[7] = a9;
  v10[8] = a10;
  v10[5] = a7;
  v10[6] = a8;
  v15 = type metadata accessor for PKStroke();
  v10[11] = v15;
  v10[12] = *(v15 - 8);
  v10[13] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v10[14] = v16;
  v10[15] = *(v16 - 8);
  v10[16] = swift_task_alloc();
  v10[17] = type metadata accessor for MainActor();
  v10[18] = static MainActor.shared.getter();
  v17 = swift_task_alloc();
  v10[19] = v17;
  *v17 = v10;
  v17[1] = closure #2 in HandwritingReflowView.startReflowForSelection(_:completion:);

  return specialized static ReflowTextView.reflowTextView(at:strokes:in:)(a6, a7, a1, a2);
}

uint64_t closure #2 in HandwritingReflowView.startReflowForSelection(_:completion:)(uint64_t a1)
{
  *(*v1 + 160) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in HandwritingReflowView.startReflowForSelection(_:completion:), v3, v2);
}

uint64_t closure #2 in HandwritingReflowView.startReflowForSelection(_:completion:)()
{
  v1 = v0[20];

  if (v1)
  {
    v2 = v0[20];
    if (*(v0[6] + 16))
    {
      v3 = v0[8];
      AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 0, 1);
      v4 = *(v3 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode);
      *(v3 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode) = 1;
      HandwritingReflowView.isInReflowMode.didset(v4);
    }

    v45 = OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager;
    v5 = *&v2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
    swift_beginAccess();
    v6 = *(v5 + 80);
    if (v6 >> 62)
    {
      goto LABEL_49;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v46 = v2;

    v8 = MEMORY[0x1E69E7CC0];
    v47 = v6;
    if (v7)
    {
      v9 = 0;
      v2 = v0[15];
      v50 = v6 & 0xFFFFFFFFFFFFFF8;
      v51 = v6 & 0xC000000000000001;
      v48 = v0[12];
      v49 = v7;
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v51)
        {
          MEMORY[0x1DA6CE0C0](v9, v47);
          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
LABEL_37:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v9 >= *(v50 + 16))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            v7 = __CocoaSet.count.getter();
            goto LABEL_6;
          }

          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            goto LABEL_37;
          }
        }

        type metadata accessor for ReflowWord();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v52 = v9;
          v13 = [*(v12 + 280) strokes];
          v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v15 = *(v14 + 16);
          if (v15)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
            v16 = v8;
            v17 = v14 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
            v53 = *(v48 + 16);
            v54 = *(v48 + 72);
            do
            {
              v18 = v0[13];
              v19 = v0[11];
              v53(v18, v17, v19);
              isa = PKStroke._bridgeToObjectiveC()().super.isa;
              v21 = [(objc_class *)isa _strokeUUID];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              (*(v48 + 8))(v18, v19);
              v23 = *(v16 + 16);
              v22 = *(v16 + 24);
              if (v23 >= v22 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
              }

              v24 = v0[16];
              v25 = v0[14];
              *(v16 + 16) = v23 + 1;
              (*(v2 + 4))(v16 + ((v2[80] + 32) & ~v2[80]) + *(v2 + 9) * v23, v24, v25);
              v17 += v54;
              --v15;
            }

            while (v15);

            v7 = v49;
            v8 = MEMORY[0x1E69E7CC0];
            v9 = v52;
          }

          else
          {

            v16 = v8;
            v9 = v52;
          }
        }

        else
        {

          v16 = v8;
        }

        v6 = *(v16 + 16);
        v26 = v10[2];
        v27 = v26 + v6;
        if (__OFADD__(v26, v6))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v27 <= v10[3] >> 1)
        {
          if (!*(v16 + 16))
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (v26 <= v27)
          {
            v29 = v26 + v6;
          }

          else
          {
            v29 = v26;
          }

          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v29, 1, v10);
          if (!*(v16 + 16))
          {
LABEL_8:

            if (v6)
            {
              goto LABEL_46;
            }

            continue;
          }
        }

        if ((v10[3] >> 1) - v10[2] < v6)
        {
          goto LABEL_47;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v30 = v10[2];
          v11 = __OFADD__(v30, v6);
          v31 = v30 + v6;
          if (v11)
          {
            goto LABEL_48;
          }

          v10[2] = v31;
        }
      }

      while (v9 != v7);
    }

    v32 = v0[20];
    v33 = v0[8];
    v34 = v0[9];
    v35 = v0[5];

    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v35 setReflowingStrokeIds_];

    v37 = *&v46[v45];
    v38 = &v33[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowStrokeBounds];
    v39 = *(v37 + 64);
    *v38 = *(v37 + 48);
    *(v38 + 1) = v39;
    v40 = *&v33[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
    *&v33[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox] = v32;
    v41 = v46;

    v42 = [v33 setNeedsLayout];
    if (v34)
    {
      (v0[9])(v42);
    }
  }

  v43 = v0[1];

  return v43();
}

void HandwritingReflowView.applyReflow(_:apply:hasShownStrokes:)(_BYTE *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for PKDrawing();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v46 = a3;
  v47 = a4;
  v18 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x468);
  v49 = Strong;
  v20 = v19();
  if (v20)
  {
    v21 = v20;
    v48 = v11;
    v22 = (*((*v18 & *v49) + 0x440))();
    v24 = v23;
    ObjectType = swift_getObjectType();
    v26 = (*(v24 + 16))(ObjectType, v24);

    if (v26)
    {
      v27 = [v26 drawing];

      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v48 + 32))(v16, v13, v10);
      a1[OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationEnabled] = 0;
      if (a2)
      {
        v28 = ReflowLayoutManager.strokeTransforms()();
        (*((*v18 & *v49) + 0x848))();
        [a1 frame];
        v29 = (v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowStrokeBounds);
        *v29 = v30;
        v29[1] = v31;
        v29[2] = v32;
        v29[3] = v33;
        specialized HandwritingReflowView.updateCurrentReflowingStrokes<A>(_:)(v28);
      }

      v34 = v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_liveCoordinateSpace;
      *(v34 + 16) = 0u;
      *(v34 + 32) = 0u;
      *v34 = 0u;
      *(v34 + 48) = 1;
      v35 = v5 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_initialCoordinateSpace;
      *v35 = 0u;
      *(v35 + 16) = 0u;
      *(v35 + 32) = 0u;
      *(v35 + 48) = 1;
      type metadata accessor for PKStroke();
      isa = Array._bridgeToObjectiveC()().super.isa;
      PKDrawing._bridgeToObjectiveC()(v37);
      v39 = v38;
      v40 = swift_allocObject();
      v42 = v46;
      v41 = v47;
      v40[2] = a1;
      v40[3] = v42;
      v40[4] = v41;
      aBlock[4] = partial apply for closure #1 in HandwritingReflowView.applyReflow(_:apply:hasShownStrokes:);
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_206;
      v43 = _Block_copy(aBlock);
      v44 = a1;
      outlined copy of (@escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize))?(v42, v41);

      [v21 _setAdditionalStrokes_inDrawing_completion_];

      _Block_release(v43);
      (*(v48 + 8))(v16, v10);
      return;
    }
  }

  v45 = v49;
}

id closure #1 in HandwritingReflowView.applyReflow(_:apply:hasShownStrokes:)(void *a1, uint64_t (*a2)(id))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong removeFromSuperview];

  result = [a1 removeFromSuperview];
  *(a1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationEnabled) = 1;
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v16;
  *(v8 + 352) = v17;
  *(v8 + 328) = v15;
  *(v8 + 312) = a7;
  *(v8 + 320) = a8;
  *(v8 + 296) = a5;
  *(v8 + 304) = a6;
  *(v8 + 288) = a4;
  type metadata accessor for UUID();
  *(v8 + 360) = swift_task_alloc();
  v9 = type metadata accessor for PKStroke();
  *(v8 + 368) = v9;
  *(v8 + 376) = *(v9 - 8);
  *(v8 + 384) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  *(v8 + 392) = v10;
  *(v8 + 400) = *(v10 - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 424) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 432) = v12;
  *(v8 + 440) = v11;

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:), v12, v11);
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:)()
{
  v2 = *(v0 + 296);
  v3 = *(*(v0 + 288) + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v65 = v4;
  if (v4)
  {
    v56 = *(*(v0 + 288) + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
    v6 = *(v0 + 400);
    v7 = *(v0 + 376);
    v68 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v68;
    v8 = *(v7 + 16);
    v7 += 16;
    v1 = v2 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v58 = (v7 - 8);
    v59 = v8;
    v62 = v6;
    v57 = *(v7 + 56);
    v9 = v4;
    do
    {
      v10 = *(v0 + 384);
      v11 = *(v0 + 368);
      v59(v10, v1, v11);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v13 = [(objc_class *)isa _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      WeakRef.init(id:)();
      (*v58)(v10, v11);
      v15 = *(v68 + 16);
      v14 = *(v68 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
      }

      v16 = *(v0 + 416);
      v17 = *(v0 + 392);
      *(v68 + 16) = v15 + 1;
      (*(v62 + 32))(v68 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v15, v16, v17);
      v1 += v57;
      --v9;
    }

    while (v9);
    v3 = v56;
  }

  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v5);

  v19 = ReflowLayoutManager.reflowWords(for:)(v18);

  if (!(v19 >> 62))
  {
    v20 = v65;
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_35:

LABEL_36:
    v32 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v33 = *(v0 + 400);
      v34 = *(v0 + 376);
      v35 = *(v0 + 296);
      v69 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v32 = v69;
      v36 = *(v34 + 16);
      v34 += 16;
      v37 = v35 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
      v61 = *(v34 + 56);
      v63 = v36;
      v60 = (v34 - 8);
      do
      {
        v66 = v20;
        v38 = *(v0 + 384);
        v39 = *(v0 + 368);
        v63(v38, v37, v39);
        v40 = PKStroke._bridgeToObjectiveC()().super.isa;
        v41 = [(objc_class *)v40 _strokeUUID];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
        WeakRef.init(id:)();
        (*v60)(v38, v39);
        v43 = *(v69 + 16);
        v42 = *(v69 + 24);
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
        }

        v44 = *(v0 + 408);
        v45 = *(v0 + 392);
        *(v69 + 16) = v43 + 1;
        (*(v33 + 32))(v69 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v43, v44, v45);
        v37 += v61;
        --v20;
      }

      while (v66 != 1);
    }

    v46 = *(v0 + 320);
    v67 = *(v0 + 328);
    v47 = *(v0 + 312);
    v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v32);

    specialized HandwritingReflowView.transformsReplacing(_:with:animatingTo:reflowTextbox:)(v48, v47, v46);

    v49 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 448) = v49;
    v50 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 456) = v50;

    PKDrawing._bridgeToObjectiveC()(v51);
    v53 = v52;
    *(v0 + 464) = v52;
    *(v0 + 16) = v0;
    *(v0 + 24) = closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:);
    v54 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 104) = &block_descriptor_146;
    *(v0 + 112) = v54;
    [v67 setupRefineAnimationFrom:v49 to:v50 inDrawing:v53 completionHandler:?];
    v25 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v25);
  }

LABEL_34:
  v20 = v65;
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_35;
  }

LABEL_9:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1DA6CE0C0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_47:

      v26 = MEMORY[0x1DA6CE0C0](v18, v19);

LABEL_27:
      swift_beginAccess();
      v27 = *(v3 + 160);
      v28 = *(v3 + 176);
      v29 = *(v3 + 192);
      *(v0 + 187) = *(v3 + 203);
      *(v0 + 160) = v28;
      *(v0 + 176) = v29;
      *(v0 + 144) = v27;
      *(v3 + 160) = v26;
      *(v3 + 168) = 1;
      *(v3 + 176) = 0u;
      *(v3 + 192) = 0u;
      *(v3 + 208) = 0;
      *(v3 + 216) = 1;
      *(v3 + 217) = 0;

      outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 144, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
      v31 = ReflowLayoutManager.spacingAdjustment.modify();
      if (*v30)
      {
        *(v30 + 48) = *(v26 + 120);
        *(v30 + 56) = 0;
      }

      (v31)(v1, 0);

LABEL_31:

      goto LABEL_36;
    }

    v21 = *(v19 + 32);
  }

  v1 = v0 + 208;

  swift_beginAccess();
  v18 = *(v3 + 80);
  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  while (1)
  {
    if (v22 == v23)
    {

      goto LABEL_31;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v23 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (*(v18 + 8 * v23 + 32) == v21)
    {
      goto LABEL_23;
    }

LABEL_19:
    if (__OFADD__(v23++, 1))
    {
      goto LABEL_33;
    }
  }

  v64 = MEMORY[0x1DA6CE0C0](v23, v18);
  swift_unknownObjectRelease();
  if (v64 != v21)
  {
    goto LABEL_19;
  }

LABEL_23:

  v18 = v23 - 1;
  if (v23 < 1)
  {
    goto LABEL_31;
  }

  v19 = *(v3 + 80);
  if ((v19 & 0xC000000000000001) != 0)
  {
    goto LABEL_47;
  }

  if (v23 <= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v19 + 8 * v23 + 24);

    goto LABEL_27;
  }

  __break(1u);
  return MEMORY[0x1EEE6DEC8](v25);
}

{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:), v2, v1);
}

{
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);
  v3 = *(v0 + 328);

  v4 = swift_allocObject();
  *(v0 + 472) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FE0000000000000;
  v5 = v3;
  v6 = swift_task_alloc();
  *(v0 + 480) = v6;
  *v6 = v0;
  v6[1] = closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:);
  v7 = *(v0 + 352);

  return ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(v7, partial apply for closure #3 in closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:), v4);
}

{
  v1 = *v0;

  v2 = *(v1 + 440);
  v3 = *(v1 + 432);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:), v3, v2);
}

{
  v1 = v0[41];
  v2 = swift_allocObject();
  v0[61] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:);
  v5 = v0[44];
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];

  return HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:)(v8, v6, v7, v5, 0, partial apply for closure #4 in closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:), v2, 0.5);
}

{
  v1 = *v0;

  v2 = *(v1 + 440);
  v3 = *(v1 + 432);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PKDrawing();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x468);
    v34 = Strong;
    v17 = v16();
    if (v17)
    {
      v18 = v17;
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
      (*(v9 + 16))(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
      type metadata accessor for MainActor();

      v33 = v4;
      v32 = a2;
      v31 = v18;
      v20 = v34;
      v21 = static MainActor.shared.getter();
      v22 = (*(v9 + 80) + 64) & ~*(v9 + 80);
      v23 = a1;
      v24 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E85E0];
      *(v25 + 2) = v21;
      *(v25 + 3) = v26;
      v27 = v32;
      v28 = v33;
      *(v25 + 4) = v23;
      *(v25 + 5) = v28;
      v29 = v31;
      *(v25 + 6) = v27;
      *(v25 + 7) = v29;
      (*(v9 + 32))(&v25[v22], v11, v8);
      *&v25[v24] = v20;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:), v25);
    }

    else
    {
      v30 = v34;
    }
  }
}

uint64_t closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v13;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  type metadata accessor for MainActor();
  v8[24] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[25] = v10;
  v8[26] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:), v10, v9);
}

uint64_t closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:)()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[18];
  if (v2)
  {
    while (1)
    {
      v4 = 0;
      v25 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v1 = MEMORY[0x1E69E7CC0];
      while (v25)
      {
        MEMORY[0x1DA6CE0C0](v4, v24[18]);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v0 = v24;
          v3 = v24[18];
          goto LABEL_36;
        }

LABEL_9:
        type metadata accessor for ReflowWord();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = [*(v7 + 280) strokes];
          type metadata accessor for PKStroke();
          v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v9 = MEMORY[0x1E69E7CC0];
        }

        v10 = *(v9 + 16);
        v11 = *(v1 + 16);
        v0 = (v11 + v10);
        if (__OFADD__(v11, v10))
        {
          goto LABEL_30;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v0 <= *(v1 + 24) >> 1)
        {
          if (!*(v9 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v11 <= v0)
          {
            v13 = v11 + v10;
          }

          else
          {
            v13 = v11;
          }

          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v1);
          if (!*(v9 + 16))
          {
LABEL_4:

            if (v10)
            {
              goto LABEL_31;
            }

            goto LABEL_5;
          }
        }

        v0 = ((*(v1 + 24) >> 1) - *(v1 + 16));
        type metadata accessor for PKStroke();
        if (v0 < v10)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = *(v1 + 16);
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_33;
          }

          *(v1 + 16) = v16;
        }

LABEL_5:
        ++v4;
        if (v6 == v2)
        {
          goto LABEL_28;
        }
      }

      if (v4 < *(v5 + 16))
      {
        break;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v2 = __CocoaSet.count.getter();
      v3 = v0[18];
      if (!v2)
      {
        goto LABEL_35;
      }
    }

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

LABEL_35:
  v1 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v0[27] = v1;
  v17 = v0[21];
  specialized HandwritingReflowView.transformsReplacing(_:with:animatingTo:reflowTextbox:)(MEMORY[0x1E69E7CD0], v3, v1);
  type metadata accessor for PKStroke();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[28] = isa;

  PKDrawing._bridgeToObjectiveC()(v19);
  v21 = v20;
  v0[29] = v20;
  v0[2] = v0;
  v0[3] = closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:);
  v22 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v0[13] = &block_descriptor_192;
  v0[14] = v22;
  [v17 setupStrokeInAnimationTo:isa inDrawing:v21 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:), v2, v1);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 168);

  v3 = swift_allocObject();
  *(v0 + 240) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0x3FF0000000000000;
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:);
  v6 = *(v0 + 184);

  return ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(v6, partial apply for closure #2 in closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:), v3);
}

{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:), v3, v2);
}

{
  v1 = v0[21];
  v2 = swift_allocObject();
  v0[32] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:);
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[18];

  return HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:)(v5, v8, v7, v6, 0, partial apply for closure #3 in closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:), v2, 1.0);
}

{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void one-time initialization function for autoCloseAfterScratchToDelete()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1DA6CCED0](0xD00000000000002ELL, 0x80000001D4090890);
  v2 = [v0 BOOLForKey_];

  static HandwritingReflowView.autoCloseAfterScratchToDelete = v2;
}

uint64_t closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:)(char *a1, char *a2, char *a3, char *a4, char *a5, char *a6, char *a7, char *a8, char a9, char a10, char *a11, char *a12)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v54 - v21;
  v55 = type metadata accessor for MagicPaperUsageReflowEvent();
  MEMORY[0x1EEE9AC00](v55);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v25 = *&a2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
  swift_beginAccess();
  v26 = *(v25 + 80);
  v61 = a1;
  v60 = a8;
  v59 = a7;
  v58 = a6;
  v57 = a5;
  v56 = a4;
  v54 = v22;
  if (v26 >> 62)
  {
LABEL_32:
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v27)
  {
    goto LABEL_23;
  }

  v28 = 0;
  while ((v26 & 0xC000000000000001) == 0)
  {
    if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v29 = *(v26 + 8 * v28 + 32);

    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    type metadata accessor for ReflowWord();
    if (swift_dynamicCastClass())
    {
      v31 = CGRectEqualToRect(*(v29 + 16), *(v29 + 48));

      if (!v31)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    ++v28;
    if (v30 == v27)
    {
      goto LABEL_23;
    }
  }

  v29 = MEMORY[0x1DA6CE0C0](v28, v26);
  v30 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v26 = v63[0];
  v32 = *(v63[0] + 16);
  if (v32)
  {
    v33 = 0;
    v34 = v63[0] + 32;
    while (v33 < *(v26 + 16))
    {
      outlined init with copy of FindResult(v34, v65);
      outlined init with take of CalculateMathItem(v65, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14AnalyticsEvent_pMd);
      if (swift_dynamicCast())
      {

        v43 = outlined destroy of MagicPaperUsageScratchToDeleteEvent(v63);
        v44 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x468))(v43);
        v45 = v54;
        Date.init()();
        v46 = type metadata accessor for Date();
        v47 = *(*(v46 - 8) + 56);
        v47(v45, 0, 1, v46);
        *v24 = 0;
        *(v24 + 1) = 0;
        *(v24 + 2) = 0;
        *(v24 + 6) = 0;
        v48 = v55;
        v49 = *(v55 + 28);
        v47(&v24[v49], 1, 1, v46);
        *&v24[v48[9]] = 0;
        *&v24[v48[10]] = 0;
        *&v24[v48[11]] = 0;
        *&v24[v48[12]] = 0;
        *&v24[v48[13]] = 0;
        *&v24[v48[14]] = 0;
        v24[v48[15]] = 0;
        v24[v48[16]] = 0;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v24[v48[8]] = 1;
        outlined assign with take of Date?(v45, &v24[v49]);
        swift_unknownObjectWeakAssign();

        swift_unknownObjectWeakAssign();
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v52 = v50[2];
        v51 = v50[3];
        if (v52 >= v51 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50);
        }

        v35 = v61;
        v63[3] = v48;
        v63[4] = _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent, type metadata accessor for MagicPaperUsageReflowEvent);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
        outlined init with copy of MagicPaperUsageReflowEvent(v24, boxed_opaque_existential_1, type metadata accessor for MagicPaperUsageReflowEvent);
        v50[2] = v52 + 1;
        outlined init with take of CalculateMathItem(v63, &v50[5 * v52 + 4]);
        outlined destroy of MagicPaperUsageReflowEvent(v24, type metadata accessor for MagicPaperUsageReflowEvent);
        goto LABEL_24;
      }

      ++v33;
      v34 += 40;
      if (v32 == v33)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_31;
  }

LABEL_23:

  v35 = v61;
LABEL_24:
  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    swift_once();
  }

  TaskLocal.get()();

  specialized Array.append<A>(contentsOf:)(v36);
  v65[0] = v63[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd);
  v37 = swift_task_localValuePush();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v39 = v62;
  *(&v54 - 12) = v56;
  *(&v54 - 11) = v39;
  v40 = v57;
  *(&v54 - 10) = a3;
  *(&v54 - 9) = v40;
  v41 = v59;
  *(&v54 - 8) = v58;
  *(&v54 - 7) = v41;
  *(&v54 - 6) = v60;
  *(&v54 - 40) = a9 & 1;
  *(&v54 - 39) = a10 & 1;
  *(&v54 - 4) = a11;
  *(&v54 - 3) = a12;
  *(&v54 - 2) = v35;
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x6E8))(1, 0, partial apply for closure #1 in closure #2 in closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:), v38);
  swift_task_localValuePop();
}

uint64_t closure #1 in closure #2 in closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:)(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a8;
  v37 = a6;
  v38 = a7;
  v35 = a5;
  v32 = a4;
  v14 = a12;
  v31 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v16 = *(v15 - 8);
  v33 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v29 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v29 = a12;

    v21 = Array<A>.strokeRefs.getter(v20);
    v30 = a2;
    v22 = v21;
    v14 = v29;

    (*((*MEMORY[0x1E69E7D40] & *v19) + 0x718))(MEMORY[0x1E69E7CD0], v22, 6, 0);

    a2 = v30;
  }

  *&a2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_nonReflowableStrokesToRemove] = MEMORY[0x1E69E7CC0];

  v23 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x748))(v32, *&a2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager]);
  (*((*v23 & *a3) + 0x718))(v35, v37, v38, v36 & 1);
  v24 = v34;
  (*(v16 + 16))(v34, v14, v15);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = a2;
  v27 = swift_allocObject();
  *(v27 + 16) = a10;
  *(v27 + 24) = a11;
  (*(v16 + 32))(v27 + v25, v24, v15);
  outlined copy of (@escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize))?(a10, a11);
  HandwritingReflowView.applyReflow(_:apply:hasShownStrokes:)(v26, v31 & 1, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:), v27);
}

uint64_t Array<A>.strokeRefs.getter(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PKStroke();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v23 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v34;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v27 = (v11 - 8);
    v28 = v12;
    v14 = *(v11 + 56);
    v25 = v6 + 32;
    v26 = v14;
    v29 = v11;
    v24 = v6;
    do
    {
      v15 = v30;
      v16 = v32;
      v28(v30, v13, v32);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v18 = [(objc_class *)isa _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      WeakRef.init(id:)();
      (*v27)(v15, v16);
      v34 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
        v10 = v34;
      }

      *(v10 + 16) = v20 + 1;
      (*(v24 + 32))(v10 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v8, v31);
      v13 += v26;
      --v9;
    }

    while (v9);
  }

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v10);

  return v21;
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:)(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[9] = v10;
  v8[10] = v9;

  return MEMORY[0x1EEE6DFA0](closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:), v10, v9);
}

uint64_t closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:)()
{

  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v2;
  v0[13] = v1;

  return MEMORY[0x1EEE6DFA0](closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:), v2, v1);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v10 = *(v0 + 24);
  v4 = static MainActor.shared.getter();
  *(v0 + 112) = v4;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *(v5 + 16) = v10;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = MEMORY[0x1E69E7CD0];
  *(v5 + 56) = v1;
  *(v5 + 64) = 6;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:);
  v7 = MEMORY[0x1E69E85E0];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v6, v4, v7, 0xD000000000000049, 0x80000001D4090820, partial apply for closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:), v5, v8);
}

{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:), v3, v2);
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:), v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v9 + 200) = a7;
  *(v9 + 208) = v8;
  *(v9 + 192) = a6;
  *(v9 + 75) = a5;
  *(v9 + 184) = a8;
  *(v9 + 168) = a3;
  *(v9 + 176) = a4;
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
  type metadata accessor for UUID();
  *(v9 + 216) = swift_task_alloc();
  v10 = type metadata accessor for PKStroke();
  *(v9 + 224) = v10;
  *(v9 + 232) = *(v10 - 8);
  *(v9 + 240) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  *(v9 + 248) = v11;
  *(v9 + 256) = *(v11 - 8);
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = type metadata accessor for MainActor();
  *(v9 + 296) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 304) = v13;
  *(v9 + 312) = v12;

  return MEMORY[0x1EEE6DFA0](HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:), v13, v12);
}

uint64_t HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:)()
{
  v1 = *(v0 + 160);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = v1;
  *(v0 + 320) = v2;
  if (!v2)
  {
    v3 = *(v0 + 152);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = *(v0 + 256);
      v7 = *(v0 + 232);
      v106 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v8 = v106;
      v10 = *(v7 + 16);
      v9 = v7 + 16;
      v11 = v3 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v101 = v10;
      v103 = v6;
      v98 = *(v9 + 56);
      do
      {
        v12 = *(v0 + 240);
        v13 = *(v0 + 224);
        v101(v12, v11, v13);
        isa = PKStroke._bridgeToObjectiveC()().super.isa;
        v15 = [(objc_class *)isa _strokeUUID];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
        WeakRef.init(id:)();
        (*(v9 - 8))(v12, v13);
        v17 = *(v106 + 16);
        v16 = *(v106 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
        }

        v18 = *(v0 + 272);
        v19 = *(v0 + 248);
        *(v106 + 16) = v17 + 1;
        (*(v103 + 32))(v106 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v17, v18, v19);
        v11 += v98;
        --v4;
      }

      while (v4);
      v2 = 0;
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v8);

    if (!ReflowLayoutManager.canReplaceStrokesAtomically(_:)(v20))
    {
      v54 = *(v0 + 280);
      v55 = *(v0 + 208);
      v56 = *(v0 + 168);
      v57 = *(v0 + 176);

      v58 = type metadata accessor for TaskPriority();
      (*(*(v58 - 8) + 56))(v54, 1, 1, v58);
      v59 = v55;
      v60 = v56;
      v61 = v57;
      v62 = static MainActor.shared.getter();
      v63 = swift_allocObject();
      v64 = MEMORY[0x1E69E85E0];
      v63[2] = v62;
      v63[3] = v64;
      v63[4] = v59;
      v63[5] = v60;
      v63[6] = v61;
      v63[7] = v5;
      v63[8] = v20;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v54, &closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:)partial apply, v63);

      v65 = *(v0 + 8);

      return v65();
    }
  }

  v21 = *(v0 + 152);
  v22 = *(*(v0 + 168) + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
  *(v0 + 328) = v22;
  *(v22 + 219) = 0;
  swift_beginAccess();
  v23._rawValue = *(v22 + 80);
  swift_beginAccess();
  v24._rawValue = *(v22 + 88);

  ReflowLayoutManager.layoutText(contents:lines:)(v23, v24);

  v25 = *(v21 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v27 = *(v0 + 256);
    v28 = *(v0 + 232);
    v29 = *(v0 + 152);
    v107 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = v107;
    v30 = *(v28 + 16);
    v28 += 16;
    v31 = v29 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v100 = (v28 - 8);
    v102 = v30;
    v104 = v27;
    v99 = *(v28 + 56);
    do
    {
      v32 = *(v0 + 240);
      v33 = *(v0 + 224);
      v102(v32, v31, v33);
      v34 = PKStroke._bridgeToObjectiveC()().super.isa;
      v35 = [(objc_class *)v34 _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      WeakRef.init(id:)();
      (*v100)(v32, v33);
      v37 = *(v107 + 16);
      v36 = *(v107 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1);
      }

      v38 = *(v0 + 264);
      v39 = *(v0 + 248);
      *(v107 + 16) = v37 + 1;
      (*(v104 + 32))(v107 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v37, v38, v39);
      v31 += v99;
      --v25;
    }

    while (v25);
  }

  v40 = *(v0 + 160);
  v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v26);

  v42 = ReflowLayoutManager.replaceStrokes(_:with:)(v41, v40);
  v44 = v43;
  v46 = v45;

  *(v0 + 336) = v42;
  *(v0 + 344) = v46;
  if (v44 >> 62)
  {
    v47 = __CocoaSet.count.getter();
    v50 = v47;
    if (v47)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v50 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
LABEL_20:
      if (v50 < 1)
      {
        goto LABEL_69;
      }

      v51 = 0;
      do
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x1DA6CE0C0](v51, v44);
        }

        else
        {
          v52 = *(v44 + 8 * v51 + 32);
        }

        ++v51;
        v53 = (*(*v52 + 304))();
        [v53 removeFromSuperlayer];
      }

      while (v50 != v51);
    }
  }

  if (v2 && *(v0 + 75))
  {
    if (v2 < 1)
    {
      goto LABEL_70;
    }

    v67 = 0;
    v105 = *(v0 + 160) + 32;
    do
    {
      if ((v97 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1DA6CE0C0](v67, *(v0 + 160));
      }

      else
      {
        v68 = *(v105 + 8 * v67);
      }

      v69 = (*(*v68 + 304))();
      if (v69)
      {
        v70 = v69;
        v71 = [*(v0 + 168) layer];
        [v71 addSublayer_];

        if (one-time initialization token for showDebugUI != -1)
        {
          swift_once();
        }

        if (static ReflowTextView.showDebugUI == 1)
        {
          [v70 setBorderWidth_];
        }
      }

      ++v67;
    }

    while (v2 != v67);
  }

  if (!v50)
  {
LABEL_60:
    v73 = 0;
LABEL_61:
    v78 = *(v0 + 208);

    if (*(v78 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isDrawing))
    {
      v80 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 176)) + 0x468))(v79);
      if (v80)
      {
        v81 = v80;
        v82 = [v80 simultaneousDrawingGestureRecognizer];

        if (v82)
        {
          v83 = *(v0 + 208);
          v84 = *(v0 + 168);
          [v82 locationInView_];
          v86 = v85;
          v88 = v87;
          specialized ReflowTextView.caretRect(for:lines:in:in:)(0, v73, v83);
          HandwritingReflowView.showCaret(_:location:textPosition:linesAffected:caretRect:)(v84, v46, 0, v73, 0, v86, v88, v89, v90, v91, v92);
        }
      }
    }

    v93 = *(v0 + 208);
    v94 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace;
    *(v0 + 352) = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace;
    *(v93 + v94) = 0;
    *(v0 + 360) = static MainActor.shared.getter();
    v95 = dispatch thunk of Actor.unownedExecutor.getter();
    v49 = v96;
    *(v0 + 368) = v95;
    *(v0 + 376) = v96;
    v47 = HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:);
    v48 = v95;

    return MEMORY[0x1EEE6DFA0](v47, v48, v49);
  }

  v72 = 0;
  v73 = 0;
  while ((v44 & 0xC000000000000001) != 0)
  {
    v74 = MEMORY[0x1DA6CE0C0](v72, v44);
    v75 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_50:
    v76 = *(v74 + 120);

    if (v76 <= v73)
    {
      v77 = v73;
    }

    else
    {
      v77 = v76;
    }

    if (v76 >= 0)
    {
      v73 = v77;
    }

    ++v72;
    if (v75 == v50)
    {
      goto LABEL_61;
    }
  }

  if (v72 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v75 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_59;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v47, v48, v49);
}

{
  v1 = v0[26];
  v2 = static MainActor.shared.getter();
  v0[48] = v2;
  v3 = swift_task_alloc();
  v0[49] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:);
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v2, v5, 0x617244664F646E65, 0xEE002928676E6977, partial apply for closure #1 in HandwritingReflowView.endOfDrawing(), v3, v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 376);
  v3 = *(v1 + 368);

  return MEMORY[0x1EEE6DFA0](HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:), v3, v2);
}

{

  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DFA0](HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:), v1, v2);
}

{
  v1 = *(*(v0 + 208) + *(v0 + 352));
  if (v1)
  {
    goto LABEL_2;
  }

  if (*(v0 + 320))
  {
    goto LABEL_7;
  }

  if (one-time initialization token for autoCloseAfterScratchToDelete != -1)
  {
    swift_once();
  }

  if (static HandwritingReflowView.autoCloseAfterScratchToDelete == 1)
  {
LABEL_7:
    v6 = *(v0 + 328);
    v7 = *(v0 + 184);
    v8 = *(v0 + 176);
    ReflowTextView.startAnimating(endingIn:smoothstep:)(v7, 1);
    v9 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x468))();
    [v9 _pauseHoverPreviewForTimeInterval_];

    swift_beginAccess();
    v10 = *(v6 + 160);
    v11 = *(v6 + 176);
    v12 = *(v6 + 192);
    *(v0 + 59) = *(v6 + 203);
    *(v0 + 32) = v11;
    *(v0 + 48) = v12;
    *(v0 + 16) = v10;
    *(v6 + 176) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 203) = 0u;
    *(v6 + 160) = 0u;
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    v13._rawValue = *(v6 + 80);
    v14._rawValue = *(v6 + 88);

    ReflowLayoutManager.layoutText(contents:lines:)(v13, v14);

    *(v0 + 408) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v15;
    *(v0 + 416) = v2;
    *(v0 + 424) = v15;
    v5 = HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:);
  }

  else
  {
LABEL_2:
    *(v0 + 76) = v1;
    *(v0 + 456) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    *(v0 + 464) = v2;
    *(v0 + 472) = v3;
    v5 = HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

{
  v1 = v0[21];
  v2 = static MainActor.shared.getter();
  v0[54] = v2;
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:);
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v2, v5, 0xD000000000000010, 0x80000001D4090870, partial apply for closure #1 in ReflowTextView.endOfAnimation(), v3, v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 424);
  v3 = *(v1 + 416);

  return MEMORY[0x1EEE6DFA0](HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:), v3, v2);
}

{

  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DFA0](HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:), v1, v2);
}

{
  *(v0 + 76) = 1;
  *(v0 + 456) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 464) = v2;
  *(v0 + 472) = v1;

  return MEMORY[0x1EEE6DFA0](HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:), v2, v1);
}

{
  v1 = *(v0 + 76);
  v2 = *(v0 + 336);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 160);
  v14 = *(v0 + 168);
  v7 = static MainActor.shared.getter();
  *(v0 + 480) = v7;
  v8 = swift_task_alloc();
  *(v0 + 488) = v8;
  *(v8 + 16) = v14;
  v9 = MEMORY[0x1E69E7CD0];
  *(v8 + 32) = v3;
  *(v8 + 40) = v6;
  *(v8 + 48) = v9;
  *(v8 + 56) = v2;
  *(v8 + 64) = 6;
  *(v8 + 72) = 0;
  *(v8 + 73) = v1;
  *(v8 + 80) = v5;
  *(v8 + 88) = v4;
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:);
  v11 = MEMORY[0x1E69E85E0];
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v10, v7, v11, 0xD000000000000049, 0x80000001D4090820, closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:)partial apply, v8, v12);
}

{
  v1 = *v0;

  v2 = *(v1 + 472);
  v3 = *(v1 + 464);

  return MEMORY[0x1EEE6DFA0](HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:), v3, v2);
}

{

  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DFA0](HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:), v1, v2);
}

{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

void HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v82 - v10;
  v12 = type metadata accessor for PKDrawing();
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v82 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v90 = a4;
  v91 = v4;
  ReflowTextView.adjustSizeForSingleLineManipulation(in:)(Strong);
  v18 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v19 = *(v17 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v19)
  {
    __break(1u);
    goto LABEL_47;
  }

  v92 = a3;
  v84 = v12;
  v85 = v11;
  v93 = a1;
  v20 = *(v19 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v21 = *(v19 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8);
  v83 = *(v19 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16);
  v22 = *(v19 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v23 = v19;
  CanvasElementResizeView.selection.setter(v20, v21, 0, 1);

  v24 = *(v17 + v18);
  if (!v24)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v25 = v18;
  v89 = a2;
  v26 = v24 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);

  if ((_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v20, v27) & 1) == 0)
  {

    goto LABEL_10;
  }

  v31 = _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v21, v28);

  if ((v31 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v22 & 1) == 0)
  {
    if (v83 == v29)
    {
      v55 = v30;
    }

    else
    {
      v55 = 1;
    }

    if ((v55 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_10:
    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, miniMenuLogger);
    v19 = v17;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = v25;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      v37 = *(v17 + v25);
      if (!v37)
      {
LABEL_49:

        __break(1u);
        goto LABEL_50;
      }

      v38 = v36;
      v39 = *(*(v37 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);

      *(v38 + 1) = v39;
      _os_log_impl(&dword_1D38C4000, v33, v34, "Changing selection to have %ld elements", v38, 0xCu);
      MEMORY[0x1DA6D0660](v38, -1, -1);
    }

    else
    {

      v33 = v19;
    }

    v40 = v92;
    v41 = MEMORY[0x1E69E7D40];

    MEMORY[0x1EEE9AC00](v42);
    *(&v82 - 2) = v19;
    AnyCanvas.updateCanvasState(_:)();
    v43 = [v19 isFirstResponder];
    v44 = v93;
    if (v43)
    {

      goto LABEL_32;
    }

    v46 = *(v17 + v35);
    if (!v46)
    {
LABEL_50:
      __break(1u);
      return;
    }

    v47 = v46;

    v48 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v48 >> 62)
    {
      v49 = __CocoaSet.count.getter();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v49)
    {
      goto LABEL_32;
    }

    v50 = [v19 window];
    if (v50)
    {
      v51 = v50;
      v52 = [objc_opt_self() activeToolPickerForWindow_];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 _visibilityUpdatesEnabled];
        [v53 _setVisibilityUpdatesEnabled_];
        [v19 becomeFirstResponder];
        [v53 _setVisibilityUpdatesEnabled_];

        goto LABEL_32;
      }
    }

    v45 = [v19 becomeFirstResponder];
LABEL_32:
    v57 = *(v19 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (v57)
    {
      v58 = v57;
      HandwritingReflowView.updateForNewSelection()();
    }

    v56 = (*((*v41 & *v19) + 0x520))(v45);
    v59 = *(v17 + v35);
    if (v59)
    {
      v60 = v59 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      if (!*(*v60 + 16) && !*(*(v60 + 8) + 16) && (*(v60 + 24) & 1) == 0)
      {
        v61 = (*((*v41 & *v19) + 0x468))(v56);
        [v61 _clearSelectionIfNecessary];
      }

      goto LABEL_39;
    }

    goto LABEL_48;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_29:

  v44 = v93;
  v40 = v92;
  v41 = MEMORY[0x1E69E7D40];
LABEL_39:
  if (!*(v44 + 16) && (v40 & 1) != 0 && (v62 = (*((*v41 & *v17) + 0x440))(v56), v64 = v63, ObjectType = swift_getObjectType(), v66 = (*(v64 + 16))(ObjectType, v64), v62, v66))
  {
    v67 = [v66 drawing];

    v68 = v86;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = v87;
    v69 = v88;
    v71 = v68;
    v72 = v84;
    (*(v88 + 32))(v87, v71, v84);
    HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:)(v89, v90, v70);

    (*(v69 + 8))(v70, v72);
  }

  else
  {
    v73 = type metadata accessor for TaskPriority();
    v74 = v85;
    (*(*(v73 - 8) + 56))(v85, 1, 1, v73);
    type metadata accessor for MainActor();
    v75 = v17;
    v76 = v90;
    v77 = v91;

    v78 = v89;

    v79 = static MainActor.shared.getter();
    v80 = swift_allocObject();
    v81 = MEMORY[0x1E69E85E0];
    v80[2] = v79;
    v80[3] = v81;
    v80[4] = v76;
    v80[5] = v75;
    v80[6] = v77;
    v80[7] = v44;
    v80[8] = v78;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v74, &async function pointer to partial apply for closure #1 in HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:), v80);
  }
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v8[9] = v10;
  *v10 = v8;
  v10[1] = closure #1 in HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:);

  return ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(a5, 0, 0);
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v2;
  v3[1] = closure #1 in HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:);
  v4 = v1[6];
  v5 = v1[3];
  v6 = v1[2];
  v7 = v1[5];

  return HandwritingReflowView.replaceStrokesAfterAddingTextbox(_:with:reflowTextbox:in:duration:showNewElements:hasShownStrokes:)(v7, v4, v6, v5, 1, 0, 0, 0.3);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:), v1, v0);
}

Swift::Void __swiftcall HandwritingReflowView.deleteStrokes(_:nonReflowableStrokes:)(Swift::OpaquePointer _, Swift::OpaquePointer nonReflowableStrokes)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (v8)
  {
    v28 = v8;
    HandwritingReflowView.accumulateNonReflowableStrokesToRemove(_:nonReflowableStrokes:in:)(_._rawValue, nonReflowableStrokes._rawValue, v28);
    HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)(_._rawValue, MEMORY[0x1E69E7CC0], 0, v28);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v11 = Strong;
    v12 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
    v14 = v13;

    ObjectType = swift_getObjectType();
    v28 = (*(v14 + 16))(ObjectType, v14);

    if (!v28)
    {
      return;
    }

    if (*(_._rawValue + 2))
    {
      type metadata accessor for PKStroke();
      PKStroke.renderBounds.getter();
      v17 = v16;
      v19 = v18;
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v22 = v28;

      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      v25 = MEMORY[0x1E69E85E0];
      *(v24 + 16) = v23;
      *(v24 + 24) = v25;
      *(v24 + 32) = v21;
      *(v24 + 40) = v17;
      *(v24 + 48) = v19;
      *(v24 + 56) = _;
      *(v24 + 64) = v22;
      v26 = MEMORY[0x1E69E7CC0];
      *(v24 + 72) = nonReflowableStrokes;
      *(v24 + 80) = v26;
      *(v24 + 88) = 0;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:)partial apply, v24);

      return;
    }
  }

  v9 = v28;
}

Swift::Void __swiftcall HandwritingReflowView.replaceStrokes(_:with:strokeIn:)(Swift::OpaquePointer _, Swift::OpaquePointer with, Swift::Bool strokeIn)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (v10)
  {
    v29 = v10;
    HandwritingReflowView.accumulateNonReflowableStrokesToRemove(_:nonReflowableStrokes:in:)(_._rawValue, MEMORY[0x1E69E7CC0], v29);
    HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)(_._rawValue, with._rawValue, strokeIn, v29);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v13 = Strong;
    v14 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
    v16 = v15;

    ObjectType = swift_getObjectType();
    v29 = (*(v16 + 16))(ObjectType, v16);

    if (!v29)
    {
      return;
    }

    if (*(_._rawValue + 2))
    {
      type metadata accessor for PKStroke();
      PKStroke.renderBounds.getter();
      v19 = v18;
      v21 = v20;
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v24 = v29;

      v25 = static MainActor.shared.getter();
      v26 = swift_allocObject();
      v27 = MEMORY[0x1E69E85E0];
      *(v26 + 16) = v25;
      *(v26 + 24) = v27;
      *(v26 + 32) = v23;
      *(v26 + 40) = v19;
      *(v26 + 48) = v21;
      *(v26 + 56) = _;
      *(v26 + 64) = v24;
      *(v26 + 72) = MEMORY[0x1E69E7CC0];
      *(v26 + 80) = with;
      *(v26 + 88) = strokeIn;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:), v26);

      return;
    }
  }

  v11 = v29;
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 192) = v15;
  *(v10 + 128) = a9;
  *(v10 + 136) = a10;
  *(v10 + 112) = a7;
  *(v10 + 120) = a8;
  *(v10 + 96) = a1;
  *(v10 + 104) = a2;
  *(v10 + 88) = a6;
  type metadata accessor for MainActor();
  *(v10 + 144) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v10 + 152) = v12;
  *(v10 + 160) = v11;

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:), v12, v11);
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 21) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 22) = v2;
    *v2 = v0;
    v2[1] = closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:);
    v4 = *(v0 + 14);
    v3 = *(v0 + 15);
    v5 = v0[12];
    v6 = v0[13];

    return specialized static ReflowTextView.reflowTextView(at:strokes:in:)(v4, v3, v5, v6);
  }

  else
  {

    v8 = *(v0 + 1);

    return v8();
  }
}

{
  v1 = *(v0 + 184);

  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 168);
    v4 = *(v0 + 192);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    HandwritingReflowView.accumulateNonReflowableStrokesToRemove(_:nonReflowableStrokes:in:)(v6, *(v0 + 128), v2);
    v7 = *&v2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
    *(v7 + 219) = 0;
    swift_beginAccess();
    v8._rawValue = *(v7 + 80);
    swift_beginAccess();
    v9._rawValue = *(v7 + 88);

    ReflowLayoutManager.layoutText(contents:lines:)(v8, v9);

    HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)(v6, v5, v4, v2);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v0 + 168);
    if (Strong)
    {
      v11 = Strong;
      v12 = Array<A>.strokeRefs.getter(*(v0 + 112));
      (*((*MEMORY[0x1E69E7D40] & *v11) + 0x718))(MEMORY[0x1E69E7CD0], v12, 6, 0);

      v3 = v11;
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 184) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:), v4, v3);
}

void HandwritingReflowView.replaceStrokes(_:with:reflowTextbox:animateRefinement:)(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  LODWORD(v159) = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v155 = &v146 - v8;
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v167 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for PKStroke();
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v166 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v168 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v153 = &v146 - v12;
  v175 = type metadata accessor for PKDrawing();
  v13 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v154 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v146 - v16;
  v152 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v156 = &v146 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v158 = &v146 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21CHReflowableTextTokenC_9PencilKit9PKDrawingVtMd);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v146 - v24);
  v161 = a3;
  v26 = *&a3[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
  v162 = a1;
  v160 = v26;
  v171 = ReflowLayoutManager.textSize(for:)(a1);
  v182 = MEMORY[0x1E69E7CC0];
  v183 = MEMORY[0x1E69E7CC0];
  v27 = *(a2 + 16);
  v164 = v13;
  if (v27)
  {
    v174 = *(v22 + 48);
    v28 = a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v29 = (v13 + 8);
    v30 = MEMORY[0x1E69E7CC0];
    v172 = *(v23 + 72);
    v173 = v29;
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of Date?(v28, v25, &_sSo21CHReflowableTextTokenC_9PencilKit9PKDrawingVtMd);
      v32 = *v25;
      v33 = v174;
      PKDrawing._bridgeToObjectiveC()(v34);
      v36 = v35;
      (*v173)(v25 + v33, v175);
      type metadata accessor for PKDrawingCoherence(0);
      v37 = swift_dynamicCastClass();
      if (v37)
      {
        v38 = v37;
        [v37 set:0.0 canvasBounds:{0.0, 0.0, 0.0}];
        v39 = objc_opt_self();
        v40 = [v32 textSize];
        [v32 bounds];
        v41 = [v39 scaledSize:v40 scale:CGRectGetHeight(v184)];

        v176 = v41;
        [v41 scaleToMatchSize_];
        v43 = v42;
        type metadata accessor for ReflowWord();
        swift_allocObject();
        v44 = v32;
        v45 = v36;
        *(ReflowWord.init(reflowableTextToken:drawing:scale:image:)(v44, v38, 0, v43) + 312) = 1;

        MEMORY[0x1DA6CD190](v46);
        if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v30 = v183;
        swift_allocObject();
        v47 = v44;
        v48 = v45;
        ReflowWord.init(reflowableTextToken:drawing:scale:image:)(v47, v38, 0, 1.0);

        MEMORY[0x1DA6CD190](v49);
        if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v31 = v182;
      }

      else
      {
      }

      v28 += v172;
      --v27;
    }

    while (v27);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
  }

  v176 = v31;
  v174 = v30;
  v50 = v160;
  swift_beginAccess();
  v51 = *(v50 + 80);
  if (v51 >> 62)
  {
    goto LABEL_91;
  }

  v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v53 = v162;
  v54 = v164;

  if (v52)
  {
    v55 = 0;
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x1DA6CE0C0](v55, v51);
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v55 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v52 = __CocoaSet.count.getter();
          goto LABEL_14;
        }

        v56 = *(v51 + 8 * v55 + 32);

        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_26;
        }
      }

      type metadata accessor for ReflowWord();
      if (swift_dynamicCastClass())
      {
        v58 = CGRectEqualToRect(*(v56 + 16), *(v56 + 48));

        if (!v58)
        {

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v62 = Strong;
            v63 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();
          }

          else
          {
            v63 = 0;
          }

          v64 = v158;
          Date.init()();
          v65 = type metadata accessor for Date();
          v66 = *(*(v65 - 8) + 56);
          v66(v64, 0, 1, v65);
          v67 = type metadata accessor for MagicPaperUsageReflowEvent();
          v179 = v67;
          v180 = _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent, type metadata accessor for MagicPaperUsageReflowEvent);
          v68 = __swift_allocate_boxed_opaque_existential_1(&v178);
          *v68 = 0;
          v68[1] = 0;
          v68[2] = 0;
          *(v68 + 6) = 0;
          v69 = v67[7];
          v66(v68 + v69, 1, 1, v65);
          *(v68 + v67[9]) = 0;
          *(v68 + v67[10]) = 0;
          *(v68 + v67[11]) = 0;
          *(v68 + v67[12]) = 0;
          *(v68 + v67[13]) = 0;
          *(v68 + v67[14]) = 0;
          *(v68 + v67[15]) = 0;
          *(v68 + v67[16]) = 0;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          *(v68 + v67[8]) = 4;
          outlined assign with take of Date?(v64, v68 + v69);
          swift_unknownObjectWeakAssign();

          swift_unknownObjectWeakAssign();
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v181 = v59;
          v71 = v59[2];
          v70 = v59[3];
          if (v71 >= v70 >> 1)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v59);
            v181 = v59;
          }

          v60 = v174;
          v54 = v164;
          v72 = v179;
          v73 = v180;
          v74 = __swift_mutable_project_boxed_opaque_existential_1(&v178, v179);
          v75 = MEMORY[0x1EEE9AC00](v74);
          v77 = &v146 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v78 + 16))(v77, v75);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v71, v77, &v181, v72, v73);
          __swift_destroy_boxed_opaque_existential_0(&v178);
          goto LABEL_34;
        }
      }

      else
      {
      }

      ++v55;
    }

    while (v57 != v52);
  }

  v59 = MEMORY[0x1E69E7CC0];
  v60 = v174;
LABEL_34:
  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    swift_once();
  }

  TaskLocal.get()();

  specialized Array.append<A>(contentsOf:)(v79);
  v177 = v178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd);
  swift_task_localValuePush();
  if ((v159 & 1) != 0 && (v80 = OBJC_IVAR____TtC8PaperKit10ResizeView_canvas, (v81 = swift_unknownObjectWeakLoadStrong()) != 0) && (v82 = v81, v83 = (*((*MEMORY[0x1E69E7D40] & *v81) + 0x440))(), v85 = v84, v82, ObjectType = swift_getObjectType(), v87 = (*(v85 + 16))(ObjectType, v85), v83, v87))
  {
    v88 = [v87 drawing];

    v89 = v157;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v90 = *(v54 + 32);
    v149 = v54 + 32;
    v148 = v90;
    v90(v156, v89, v175);
    if (v60 >> 62)
    {
      type metadata accessor for ReflowElement();

      v150 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for ReflowElement();
      v150 = v60;
    }

    v53 = v176;
    if (v176 >> 62)
    {
      type metadata accessor for ReflowElement();

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for ReflowElement();
    }

    if (v60 >> 62)
    {
      v51 = __CocoaSet.count.getter();
    }

    else
    {
      v51 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v173 = v80;
    v151 = v59;
    if (v51)
    {
      v91 = 0;
      v92 = v60 & 0xC000000000000001;
      v93 = v60 & 0xFFFFFFFFFFFFFF8;
      v94 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v92)
        {
          v96 = MEMORY[0x1DA6CE0C0](v91, v60);
          v60 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v91 >= *(v93 + 16))
          {
            goto LABEL_86;
          }

          v96 = *(v60 + 8 * v91 + 32);

          v60 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }
        }

        v97 = [*(v96 + 280) strokes];
        v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v99 = *(v98 + 16);
        v100 = v94[2];
        v101 = v100 + v99;
        if (__OFADD__(v100, v99))
        {
          goto LABEL_87;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v101 > v94[3] >> 1)
        {
          if (v100 <= v101)
          {
            v103 = v100 + v99;
          }

          else
          {
            v103 = v100;
          }

          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v103, 1, v94);
        }

        v53 = v176;
        if (*(v98 + 16))
        {
          if ((v94[3] >> 1) - v94[2] < v99)
          {
            goto LABEL_89;
          }

          swift_arrayInitWithCopy();

          if (v99)
          {
            v104 = v94[2];
            v105 = __OFADD__(v104, v99);
            v106 = v104 + v99;
            if (v105)
            {
              goto LABEL_90;
            }

            v94[2] = v106;
          }
        }

        else
        {

          if (v99)
          {
            goto LABEL_88;
          }
        }

        ++v91;
        v95 = v60 == v51;
        v60 = v174;
        if (v95)
        {
          goto LABEL_72;
        }
      }
    }

    v94 = MEMORY[0x1E69E7CC0];
LABEL_72:
    v108 = swift_unknownObjectWeakLoadStrong();
    if (v108)
    {
      v109 = v108;
      v110 = (*((*MEMORY[0x1E69E7D40] & *v108) + 0x468))();
      if (v110)
      {
        v146 = v109;
        v147 = v110;
        v111 = v162;
        v112 = v162[2];
        v113 = MEMORY[0x1E69E7CC0];
        if (v112)
        {
          v177 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112, 0);
          v113 = v177;
          v172 = *(v169 + 16);
          v114 = v111 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
          v159 = (v169 + 8);
          v169 += 16;
          v158 = *(v169 + 56);
          v157 = (v168 + 32);
          v115 = v153;
          v116 = v170;
          do
          {
            v173 = v113;
            v117 = v166;
            v172(v166, v114, v116);
            isa = PKStroke._bridgeToObjectiveC()().super.isa;
            v119 = [(objc_class *)isa _strokeUUID:v146];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
            v113 = v173;
            WeakRef.init(id:)();
            (*v159)(v117, v116);
            v177 = v113;
            v121 = *(v113 + 16);
            v120 = *(v113 + 24);
            if (v121 >= v120 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v120 > 1, v121 + 1, 1);
              v113 = v177;
            }

            *(v113 + 16) = v121 + 1;
            (*(v168 + 32))(v113 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v121, v115, v165);
            v114 += v158;
            --v112;
          }

          while (v112);
          v111 = v162;
        }

        v122 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v113);

        v123 = ReflowLayoutManager.canReplaceStrokesAtomically(_:)(v122);
        v124 = v163;
        if (v123)
        {

          v125 = type metadata accessor for TaskPriority();
          (*(*(v125 - 8) + 56))(v155, 1, 1, v125);
          v126 = v164;
          (*(v164 + 16))(v154, v156, v175);
          type metadata accessor for MainActor();
          swift_bridgeObjectRetain_n();
          v173 = v124;
          v127 = v161;
          v128 = v146;
          v129 = v147;
          v130 = static MainActor.shared.getter();
          v131 = (*(v126 + 80) + 88) & ~*(v126 + 80);
          v132 = (v152 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
          v133 = swift_allocObject();
          v134 = MEMORY[0x1E69E85E0];
          *(v133 + 2) = v130;
          *(v133 + 3) = v134;
          *(v133 + 4) = v127;
          *(v133 + 5) = v111;
          v135 = v150;
          *(v133 + 6) = v173;
          *(v133 + 7) = v135;
          *(v133 + 8) = v94;
          *(v133 + 9) = v129;
          *(v133 + 10) = v111;
          v136 = v175;
          v148(&v133[v131], v154, v175);
          *&v133[v132] = v128;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v155, &async function pointer to partial apply for closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:), v133);

          (*(v126 + 8))(v156, v136);
        }

        else
        {

          v137 = type metadata accessor for TaskPriority();
          v138 = v155;
          (*(*(v137 - 8) + 56))(v155, 1, 1, v137);
          type metadata accessor for MainActor();
          v139 = v124;
          v140 = v161;
          v141 = v146;
          v142 = static MainActor.shared.getter();
          v143 = swift_allocObject();
          v144 = MEMORY[0x1E69E85E0];
          v143[2] = v142;
          v143[3] = v144;
          v143[4] = v139;
          v143[5] = v140;
          v145 = v150;
          v143[6] = v141;
          v143[7] = v145;
          v143[8] = v122;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v138, &async function pointer to partial apply for closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:), v143);

          (*(v164 + 8))(v156, v175);
        }
      }

      else
      {
        (*(v164 + 8))(v156, v175);
      }
    }

    else
    {
      (*(v164 + 8))(v156, v175);
    }
  }

  else
  {
LABEL_67:
    if (v60 >> 62)
    {
      type metadata accessor for ReflowElement();

      v107 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for ReflowElement();
      v107 = v60;
    }

    HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)(v53, v107, 0, v161);
  }

  swift_task_localValuePop();
}