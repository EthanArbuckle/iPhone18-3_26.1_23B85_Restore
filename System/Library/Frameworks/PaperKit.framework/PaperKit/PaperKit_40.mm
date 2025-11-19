uint64_t (*protocol witness for CanvasElement.frame.modify in conformance LoupeElement(uint64_t *a1))()
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

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance LoupeElement(uint64_t *a1))()
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

uint64_t protocol witness for CanvasElement.shared(_:) in conformance LoupeElement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 9;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance LoupeElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return LoupeElement.render<A>(in:id:capsule:options:)(a1, a2, a3, a4, a5, a6);
}

uint64_t LoupeElement.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LoupeElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t LoupeElement.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v53 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v53 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v66 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = type metadata accessor for MergeResult();
  v24 = *(v23 - 8);
  v71 = v23;
  v72 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  v68 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v27 = *(v15 + 8);
  v27(v22, v14);
  v28 = *(v15 + 16);
  v53 = v27;
  v54 = v15 + 16;
  v60 = v28;
  v28(v62, v19, v14);
  CRRegister.projectedValue.setter();
  v27(v19, v14);
  v69 = a2;
  MergeResult.merge(_:)();
  v70 = *(v72 + 8);
  v72 += 8;
  v70(v26, v71);
  v67 = type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v29 = v53;
  v53(v22, v14);
  v60(v62, v19, v14);
  CRRegister.projectedValue.setter();
  v29(v19, v14);
  MergeResult.merge(_:)();
  v70(v26, v71);
  v30 = v67;
  v31 = v63;
  v32 = v61;
  CRRegister.projectedValue.getter();
  v53 = *(v30 + 24);
  v33 = v64;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v34 = v66;
  v35 = v66 + 8;
  v36 = *(v66 + 8);
  v36(v31, v32);
  v60 = v36;
  v37 = *(v34 + 16);
  v66 = v34 + 16;
  v62 = v37;
  (v37)(v65, v33, v32);
  CRRegister.projectedValue.setter();
  v36(v33, v32);
  MergeResult.merge(_:)();
  v70(v26, v71);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v38 = v31;
  v39 = v60;
  v54 = v35;
  (v60)(v38, v32);
  (v62)(v65, v33, v32);
  CRRegister.projectedValue.setter();
  v39(v33, v32);
  MergeResult.merge(_:)();
  v70(v26, v71);
  v40 = v55;
  v41 = v57;
  CRRegister.projectedValue.getter();
  v42 = v56;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v43 = v59;
  v44 = *(v59 + 8);
  v44(v40, v41);
  (*(v43 + 16))(v58, v42, v41);
  CRRegister.projectedValue.setter();
  v44(v42, v41);
  MergeResult.merge(_:)();
  v70(v26, v71);
  v45 = v63;
  v46 = v61;
  CRRegister.projectedValue.getter();
  v47 = v64;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v48 = v45;
  v49 = v60;
  (v60)(v48, v46);
  (v62)(v65, v47, v46);
  CRRegister.projectedValue.setter();
  v49(v47, v46);
  MergeResult.merge(_:)();
  v51 = v70;
  v50 = v71;
  v70(v26, v71);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v51(v26, v50);
}

uint64_t LoupeElement.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v67 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v56 = &v55 - v29;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v30 = *(v20 + 8);
  v30(v22, v19);
  v30(v25, v19);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  v31 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v30(v22, v19);
  v30(v25, v19);
  v33 = v57;
  v32 = v58;
  CRRegister.projectedValue.getter();
  v34 = v66;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v35 = *(v59 + 1);
  v35(v34, v32);
  v35(v33, v32);
  CRRegister.projectedValue.getter();
  v55 = v31;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v59 = v35;
  v35(v34, v32);
  v36 = v32;
  v35(v33, v32);
  v37 = v61;
  v38 = v62;
  CRRegister.projectedValue.getter();
  v39 = v63;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v40 = *(v64 + 8);
  v40(v39, v38);
  v40(v37, v38);
  CRRegister.projectedValue.getter();
  v41 = v66;
  v42 = v67;
  CRRegister.projectedValue.getter();
  v43 = v60;
  CRRegister.actionUndoingDifference(from:)();
  v44 = v59;
  v59(v41, v36);
  v44(v33, v36);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  v46 = *(*(v45 - 8) + 48);
  v47 = v56;
  if (v46() == 1 && (v46)(v42, 1, v45) == 1 && (v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd), v49 = *(*(v48 - 8) + 48), v49(v70, 1, v48) == 1) && v49(v69, 1, v48) == 1 && (v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd), (*(*(v50 - 8) + 48))(v68, 1, v50) == 1) && v49(v43, 1, v48) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v51 = type metadata accessor for LoupeElement.MutatingAction(0);
    (*(*(v51 - 8) + 56))(v65, 1, 1, v51);
  }

  else
  {
    v52 = v65;
    outlined init with copy of Date?(v47, v65, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v53 = type metadata accessor for LoupeElement.MutatingAction(0);
    outlined init with copy of Date?(v42, v52 + v53[5], &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v70, v52 + v53[6], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v69, v52 + v53[7], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v68, v52 + v53[8], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
    outlined init with copy of Date?(v43, v52 + v53[9], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    (*(*(v53 - 1) + 56))(v52, 0, 1, v53);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
}

uint64_t LoupeElement.apply(_:)(uint64_t a1)
{
  v39 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v36 = v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12LoupeElementV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v31 - v15;
  v17 = type metadata accessor for LoupeElement.MutatingAction(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v39, v16, &_s8PaperKit12LoupeElementV14MutatingActionVSgMd);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit12LoupeElementV14MutatingActionVSgMd);
  }

  v40 = v20;
  _s8PaperKit5ColorVWObTm_0(v16, v20, type metadata accessor for LoupeElement.MutatingAction);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v22 = v34;
  v32 = v34[2];
  v32(v10, v13, v8);
  CRRegister.projectedValue.setter();
  v34 = v22[1];
  (v34)(v13, v8);
  v31[1] = v17;
  v39 = type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v32(v10, v13, v8);
  CRRegister.projectedValue.setter();
  (v34)(v13, v8);
  v23 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v24 = v41;
  v25 = *(v41 + 16);
  v32 = (v41 + 16);
  v34 = v25;
  (v25)(v42, v23, v4);
  CRRegister.projectedValue.setter();
  v26 = *(v24 + 8);
  v26(v23, v4);
  v31[0] = v26;
  v41 = v24 + 8;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (v34)(v42, v23, v4);
  CRRegister.projectedValue.setter();
  v26(v23, v4);
  v27 = v35;
  v28 = v36;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v29 = v38;
  (*(v38 + 16))(v37, v28, v27);
  CRRegister.projectedValue.setter();
  (*(v29 + 8))(v28, v27);
  CRRegister.projectedValue.getter();
  v30 = v40;
  CRRegister.apply(_:)();
  (v34)(v42, v23, v4);
  CRRegister.projectedValue.setter();
  (v31[0])(v23, v4);
  return outlined destroy of LoupeElement.Partial(v30, type metadata accessor for LoupeElement.MutatingAction);
}

uint64_t LoupeElement.hasDelta(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v39 = v1;
  CRRegister.projectedValue.getter();
  v38 = a1;
  CRRegister.projectedValue.getter();
  v20 = CRRegister.hasDelta(from:)();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  if (v20 & 1) != 0 || (v33 = v3, type metadata accessor for LoupeElement(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v22 = CRRegister.hasDelta(from:)(), v21(v16, v13), v21(v19, v13), (v22) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v23 = CRRegister.hasDelta(from:)(), v24 = *(v37 + 8), v24(v9, v7), v24(v12, v7), (v23) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v25 = CRRegister.hasDelta(from:)(), v24(v9, v7), v24(v12, v7), (v25) || (v26 = v33, CRRegister.projectedValue.getter(), v27 = v34, CRRegister.projectedValue.getter(), LODWORD(v37) = CRRegister.hasDelta(from:)(), v28 = *(v35 + 8), v28(v27, v26), v28(v36, v26), (v37) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v29 = CRRegister.hasDelta(from:)(), v24(v9, v7), v24(v12, v7), (v29))
  {
    v30 = 1;
  }

  else
  {
    v30 = UnknownProperties.hasDelta(from:)();
  }

  return v30 & 1;
}

uint64_t LoupeElement.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v4 = type metadata accessor for UnknownProperties();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v42 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v54 = v2;
  outlined init with copy of LoupeElement.Partial(v2, a2, type metadata accessor for LoupeElement);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v23 = *(v17 + 8);
  v23(v19, v16);
  v24 = *(v17 + 16);
  v44 = (v17 + 16);
  v52 = v24;
  v24(v19, v22, v16);
  CRRegister.projectedValue.setter();
  v23(v22, v16);
  v25 = type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v23(v19, v16);
  v52(v19, v22, v16);
  CRRegister.projectedValue.setter();
  v23(v22, v16);
  CRRegister.projectedValue.getter();
  v26 = v53;
  CRRegister.copy(renamingReferences:)();
  v27 = v57;
  v28 = (v57 + 8);
  v29 = *(v57 + 8);
  v29(v13, v11);
  v52 = v28;
  v30 = v29;
  v31 = *(v27 + 16);
  v57 = v27 + 16;
  v31(v13, v26, v11);
  v44 = v31;
  CRRegister.projectedValue.setter();
  v30(v26, v11);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v30(v13, v11);
  v43 = v30;
  v31(v13, v26, v11);
  CRRegister.projectedValue.setter();
  v30(v26, v11);
  v33 = v46;
  v32 = v47;
  CRRegister.projectedValue.getter();
  v34 = v45;
  CRRegister.copy(renamingReferences:)();
  v35 = v48;
  v36 = *(v48 + 8);
  v36(v33, v32);
  (*(v35 + 16))(v33, v34, v32);
  CRRegister.projectedValue.setter();
  v36(v34, v32);
  CRRegister.projectedValue.getter();
  v37 = v53;
  CRRegister.copy(renamingReferences:)();
  v38 = v43;
  v43(v13, v11);
  v44(v13, v37, v11);
  v39 = v56;
  CRRegister.projectedValue.setter();
  v38(v37, v11);
  v40 = v49;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v50 + 40))(v39 + *(v25 + 40), v40, v51);
}

uint64_t LoupeElement.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v56 = type metadata accessor for UnknownProperties();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v53 - v13;
  v14 = type metadata accessor for Color(0);
  v72 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v77);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v53 - v20);
  type metadata accessor for CGRect(0);
  v23 = v22;
  v24 = _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v79 = 0u;
  v80 = 0u;
  CRRegister.init(wrappedValue:)();
  v25 = type metadata accessor for LoupeElement(0);
  v26 = v25[5];
  v79 = 0u;
  v80 = 0u;
  v67 = v26;
  v81 = v23;
  v73 = v24;
  CRRegister.init(wrappedValue:)();
  v27 = v25[6];
  *&v79 = 0;
  v28 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v63 = v27;
  CRRegister.init(wrappedValue:)();
  v29 = v25[7];
  v76 = a1;
  v61 = v29;
  v78 = v28;
  *&v79 = 0x3FF8000000000000;
  CRRegister.init(wrappedValue:)();
  v30 = *(v14 + 20);
  v31 = type metadata accessor for UnknownValueProperties();
  (*(*(v31 - 8) + 56))(v16 + v30, 1, 1, v31);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v33 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = v25[8];

  *v16 = v34;
  Color.withAlphaComponent(_:)(v21, 0.5);
  outlined destroy of LoupeElement.Partial(v16, type metadata accessor for Color);
  (*(v72 + 56))(v21, 0, 1, v14);
  outlined init with copy of Date?(v21, v18, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v36 = v76;
  CRRegister.init(wrappedValue:)();
  v37 = v36;
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit5ColorVSgMd);
  v38 = v25[9];
  *&v79 = 0x4004000000000000;
  CRRegister.init(wrappedValue:)();
  v39 = v25[10];
  UnknownProperties.init()();
  v40 = v74;
  v41 = v75;
  CRRegister.init(defaultState:)();
  if (v41)
  {
    return outlined destroy of LoupeElement.Partial(v37, type metadata accessor for LoupeElement);
  }

  v72 = v38;
  v54 = v39;
  v75 = v35;
  v42 = v71;
  v43 = *(v70 + 40);
  v43(v37, v40, v71);
  v44 = v69;
  CRRegister.init(defaultState:)();
  v43(v37 + v67, v44, v42);
  v45 = v68;
  CRRegister.init(defaultState:)();
  v46 = *(v65 + 40);
  v47 = v45;
  v48 = v66;
  v46(v37 + v63, v47, v66);
  v49 = v64;
  CRRegister.init(defaultState:)();
  v46(v37 + v61, v49, v48);
  v50 = v62;
  CRRegister.init(defaultState:)();
  (*(v59 + 40))(v37 + v75, v50, v60);
  v51 = v58;
  CRRegister.init(defaultState:)();
  v46(v37 + v72, v51, v48);
  v52 = v57;
  UnknownProperties.init(defaultState:)();
  return (*(v55 + 40))(v37 + v54, v52, v56);
}

uint64_t LoupeElement.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v22 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  type metadata accessor for LoupeElement(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (v21 = v0, CRRegister.projectedValue.getter(), v10 = CRRegister.isDefaultState.getter(), v11 = *(v7 + 8), v11(v9, v6), (v10) && (CRRegister.projectedValue.getter(), v12 = CRRegister.isDefaultState.getter(), v11(v9, v6), (v12) && (CRRegister.projectedValue.getter(), v13 = CRRegister.isDefaultState.getter(), v14 = *(v23 + 8), v14(v5, v3), (v13) && (CRRegister.projectedValue.getter(), v15 = CRRegister.isDefaultState.getter(), v14(v5, v3), (v15) && (v16 = v21, CRRegister.projectedValue.getter(), v17 = CRRegister.isDefaultState.getter(), (*(v22 + 8))(v2, v16), (v17))
  {
    CRRegister.projectedValue.getter();
    v18 = CRRegister.isDefaultState.getter();
    v14(v5, v3);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t LoupeElement.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v1 = *(v0 - 8);
  v17 = v0;
  v18 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v16 = &v15 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v10 = *(v7 + 8);
  v10(v9, v6);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v10(v9, v6);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v11 = *(v15 + 8);
  v11(v5, v3);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v11(v5, v3);
  v13 = v16;
  v12 = v17;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v18 + 8))(v13, v12);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v11(v5, v3);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t LoupeElement.newRefs(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v48 = MEMORY[0x1E69E7CD0];
  v45 = v1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v19 = CRRegister.newRefs(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  specialized Set.formUnion<A>(_:)(v19);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v21 = CRRegister.newRefs(from:)();
  v20(v15, v12);
  v20(v18, v12);
  specialized Set.formUnion<A>(_:)(v21);
  v22 = v46;
  CRRegister.projectedValue.getter();
  v23 = a1;
  v24 = v47;
  CRRegister.projectedValue.getter();
  v25 = CRRegister.newRefs(from:)();
  v26 = *(v40 + 1);
  v26(v24, v8);
  v26(v22, v8);
  specialized Set.formUnion<A>(_:)(v25);
  CRRegister.projectedValue.getter();
  v39 = v23;
  CRRegister.projectedValue.getter();
  v27 = CRRegister.newRefs(from:)();
  v40 = v26;
  v26(v24, v8);
  v26(v22, v8);
  specialized Set.formUnion<A>(_:)(v27);
  v28 = v41;
  v29 = v43;
  CRRegister.projectedValue.getter();
  v30 = v42;
  CRRegister.projectedValue.getter();
  v31 = CRRegister.newRefs(from:)();
  v32 = *(v44 + 8);
  v32(v30, v29);
  v32(v28, v29);
  specialized Set.formUnion<A>(_:)(v31);
  v33 = v46;
  CRRegister.projectedValue.getter();
  v34 = v47;
  CRRegister.projectedValue.getter();
  v35 = CRRegister.newRefs(from:)();
  v36 = v40;
  v40(v34, v8);
  v36(v33, v8);
  specialized Set.formUnion<A>(_:)(v35);
  v37 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v37);
  return v48;
}

Swift::Bool __swiftcall LoupeElement.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v23 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v21 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  CRRegister.projectedValue.getter();
  v10 = CRRegister.needToFinalizeTimestamps()();
  v11 = *(v7 + 8);
  v11(v9, v6);
  v19 = v10 || (v22 = v0, type metadata accessor for LoupeElement(0), CRRegister.projectedValue.getter(), v12 = CRRegister.needToFinalizeTimestamps()(), v11(v9, v6), v12) || (CRRegister.projectedValue.getter(), v13 = CRRegister.needToFinalizeTimestamps()(), v14 = *(v24 + 8), v14(v5, v3), v13) || (CRRegister.projectedValue.getter(), v15 = CRRegister.needToFinalizeTimestamps()(), v14(v5, v3), v15) || (v16 = v22, CRRegister.projectedValue.getter(), v17 = CRRegister.needToFinalizeTimestamps()(), (*(v23 + 8))(v2, v16), v17) || (CRRegister.projectedValue.getter(), v18 = CRRegister.needToFinalizeTimestamps()(), v14(v5, v3), v18) || UnknownProperties.needToFinalizeTimestamps()();
  return v19;
}

uint64_t LoupeElement.finalizeTimestamps(_:)(uint64_t a1)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v36 = *(v12 + 16);
  v36(v14, v17, v11);
  CRRegister.projectedValue.setter();
  v30 = *(v12 + 8);
  v30(v17, v11);
  v35 = type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v36(v14, v17, v11);
  CRRegister.projectedValue.setter();
  v30(v17, v11);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v18 = v39;
  v19 = *(v39 + 16);
  v36 = (v39 + 16);
  v20 = v37;
  v19(v37, v10, v6);
  v30 = v19;
  CRRegister.projectedValue.setter();
  v21 = *(v18 + 8);
  v39 = v18 + 8;
  v21(v10, v6);
  v29 = v21;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v19(v20, v10, v6);
  CRRegister.projectedValue.setter();
  v21(v10, v6);
  v22 = v31;
  v23 = v33;
  CRRegister.projectedValue.getter();
  v24 = v22;
  CRRegister.finalizeTimestamps(_:)();
  v25 = v34;
  (*(v34 + 16))(v32, v24, v23);
  CRRegister.projectedValue.setter();
  (*(v25 + 8))(v24, v23);
  CRRegister.projectedValue.getter();
  v26 = v38;
  CRRegister.finalizeTimestamps(_:)();
  (v30)(v37, v10, v6);
  CRRegister.projectedValue.setter();
  v29(v10, v6);
  return MEMORY[0x1DA6CBA30](v26);
}

uint64_t LoupeElement.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v140 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v112 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v127 = *(v3 - 8);
  v128 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v115 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v112 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v133 = *(v9 - 8);
  v134 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v112 - v13;
  v15 = type metadata accessor for CRCodableVersion();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v112 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v121 = &v112 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v112 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v112 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v125 = &v112 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v129 = &v112 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v130 = &v112 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v112 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v132 = &v112 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v112 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v112 - v43;
  v131 = type metadata accessor for LoupeElement(0);
  v139 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v45 = *(v16 + 104);
  v137 = *MEMORY[0x1E6995288];
  v138 = v16 + 104;
  v136 = v45;
  v45(v41);
  v46 = v44;
  v47 = static CRCodableVersion.== infix(_:_:)();
  v48 = (v16 + 8);
  v49 = v15;
  v135 = *(v16 + 8);
  v135(v41, v15);
  if (v47)
  {
    return (*(v16 + 32))(v140, v46, v15);
  }

  v113 = v11;
  v51 = v41;
  v52 = v133;
  v53 = v134;
  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v54 = *(v52 + 8);
  v55 = v51;
  v112 = v54;
  v54(v14, v53);
  v56 = v49;
  v57 = v46;
  v133 = _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v58 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v59 = (v58 & 1) == 0;
  if (v58)
  {
    v60 = v46;
  }

  else
  {
    v60 = v36;
  }

  if (v59)
  {
    v61 = v46;
  }

  else
  {
    v61 = v36;
  }

  v62 = v135;
  v135(v60, v56);
  v65 = *(v16 + 32);
  v64 = v16 + 32;
  v63 = v65;
  v66 = v132;
  v65(v132, v61, v56);
  v65(v57, v66, v56);
  v136(v55, v137, v56);
  LOBYTE(v66) = static CRCodableVersion.== infix(_:_:)();
  v62(v55, v56);
  if ((v66 & 1) == 0)
  {
    v132 = v48;
    v67 = v113;
    v68 = v134;
    CRRegister.projectedValue.getter();
    v69 = v129;
    CRRegister.minEncodingVersion.getter();
    v112(v67, v68);
    v70 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v71 = (v70 & 1) == 0;
    v72 = (v70 & 1) != 0 ? v57 : v69;
    v73 = v71 ? v57 : v69;
    v74 = v135;
    v135(v72, v56);
    v75 = v130;
    v63(v130, v73, v56);
    v63(v57, v75, v56);
    v136(v55, v137, v56);
    v76 = static CRCodableVersion.== infix(_:_:)();
    v74(v55, v56);
    if ((v76 & 1) == 0)
    {
      v77 = v126;
      v78 = v128;
      CRRegister.projectedValue.getter();
      v79 = v124;
      CRRegister.minEncodingVersion.getter();
      v80 = v127 + 8;
      v130 = *(v127 + 8);
      (v130)(v77, v78);
      v81 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v82 = (v81 & 1) == 0;
      if (v81)
      {
        v83 = v57;
      }

      else
      {
        v83 = v79;
      }

      if (v82)
      {
        v84 = v57;
      }

      else
      {
        v84 = v79;
      }

      v85 = v135;
      v135(v83, v56);
      v86 = v125;
      v63(v125, v84, v56);
      v134 = v64;
      v63(v57, v86, v56);
      v136(v55, v137, v56);
      v87 = static CRCodableVersion.== infix(_:_:)();
      v85(v55, v56);
      if (v87)
      {
        return (v63)(v140, v57, v56);
      }

      v88 = v123;
      v89 = v128;
      CRRegister.projectedValue.getter();
      v90 = v121;
      CRRegister.minEncodingVersion.getter();
      v127 = v80;
      (v130)(v88, v89);
      v91 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v92 = (v91 & 1) == 0;
      if (v91)
      {
        v93 = v57;
      }

      else
      {
        v93 = v90;
      }

      if (v92)
      {
        v94 = v57;
      }

      else
      {
        v94 = v90;
      }

      v95 = v135;
      v135(v93, v56);
      v96 = v122;
      v63(v122, v94, v56);
      v63(v57, v96, v56);
      v136(v55, v137, v56);
      v97 = static CRCodableVersion.== infix(_:_:)();
      v95(v55, v56);
      if ((v97 & 1) == 0)
      {
        v98 = v118;
        v99 = v120;
        CRRegister.projectedValue.getter();
        v100 = v116;
        CRRegister.minEncodingVersion.getter();
        (*(v119 + 8))(v98, v99);
        v101 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v102 = (v101 & 1) == 0;
        v103 = (v101 & 1) != 0 ? v57 : v100;
        v104 = v102 ? v57 : v100;
        v95(v103, v56);
        v105 = v117;
        v63(v117, v104, v56);
        v63(v57, v105, v56);
        v136(v55, v137, v56);
        v106 = static CRCodableVersion.== infix(_:_:)();
        v95(v55, v56);
        if ((v106 & 1) == 0)
        {
          v107 = v115;
          v108 = v128;
          CRRegister.projectedValue.getter();
          v109 = v114;
          CRRegister.minEncodingVersion.getter();
          (v130)(v107, v108);
          if (dispatch thunk of static Comparable.>= infix(_:_:)())
          {
            v95(v57, v56);
            v110 = v140;
            v111 = v109;
            return (v63)(v110, v111, v56);
          }

          v95(v109, v56);
        }
      }

      v110 = v140;
      v111 = v57;
      return (v63)(v110, v111, v56);
    }
  }

  return (v63)(v140, v57, v56);
}

uint64_t LoupeElement.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53[1] = a2;
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v60 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = v53 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v69 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v64 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v54 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v67 = v53 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v68 = v53 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v65 = v53 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v55 = v53 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v57 = v53 - v31;
  CRRegister.projectedValue.getter();
  v66 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v32 = *(v14 + 8);
  v32(v16, v13);
  v32(v19, v13);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v32(v16, v13);
  v32(v19, v13);
  v33 = v56;
  v34 = v58;
  CRRegister.projectedValue.getter();
  v35 = v64;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v36 = *(v69 + 8);
  v69 += 8;
  v36(v35, v34);
  v36(v33, v34);
  v37 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v36(v35, v34);
  v36(v33, v34);
  v53[0] = v3;
  v38 = v59;
  v39 = v61;
  CRRegister.projectedValue.getter();
  v40 = v60;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v41 = *(v62 + 8);
  v41(v40, v39);
  v41(v38, v39);
  CRRegister.projectedValue.getter();
  v42 = v57;
  v43 = v64;
  CRRegister.projectedValue.getter();
  v44 = v54;
  CRRegister.observableDifference(from:with:)();
  v45 = v65;
  v36(v43, v34);
  v46 = v55;
  v36(v37, v34);
  v47 = type metadata accessor for CRValueObservableDifference();
  v48 = *(*(v47 - 8) + 48);
  if (v48(v42, 1, v47) == 1 && v48(v46, 1, v47) == 1 && v48(v45, 1, v47) == 1 && v48(v68, 1, v47) == 1 && v48(v67, 1, v47) == 1 && v48(v44, 1, v47) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v49 = type metadata accessor for LoupeElement.ObservableDifference(0);
    (*(*(v49 - 8) + 56))(v63, 1, 1, v49);
  }

  else
  {
    v50 = v63;
    outlined init with copy of Date?(v42, v63, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v51 = type metadata accessor for LoupeElement.ObservableDifference(0);
    outlined init with copy of Date?(v46, v50 + v51[5], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v45, v50 + v51[6], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v68, v50 + v51[7], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v67, v50 + v51[8], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v44, v50 + v51[9], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    (*(*(v51 - 1) + 56))(v50, 0, 1, v51);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t LoupeElement.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v12 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v37 = v14;
    v38 = v12;
    v35 = v3;
    v36 = v11;
    v33 = v5;
    v34 = v8;
    v19 = v43;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v20 = *(v38 + 8);
    v20(v17, v19);
    v21 = type metadata accessor for LoupeElement(0);
    v22 = v37;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v20(v22, v19);
    v43 = v21;
    v24 = v35;
    v23 = v36;
    CRRegister.projectedValue.getter();
    v25 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v26 = *(v42 + 8);
    v26(v23, v24);
    v27 = v25;
    v28 = v34;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v26(v28, v24);
    v42 = v27;
    v29 = v39;
    v30 = v41;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v40 + 8))(v29, v30);
    v31 = v33;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v26(v31, v24);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t LoupeElement.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v86 = type metadata accessor for UnknownProperties();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = (&v81 - v5);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v87 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v83 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v81 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v94 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v81 - v19;
  v20 = type metadata accessor for Color(0);
  v107 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v110);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v81 - v26);
  type metadata accessor for CGRect(0);
  v29 = v28;
  v30 = _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v113 = 0u;
  v114 = 0u;
  CRRegister.init(wrappedValue:)();
  v31 = type metadata accessor for LoupeElement(0);
  v32 = v31[5];
  v113 = 0u;
  v114 = 0u;
  v97 = v32;
  v105 = v30;
  v106 = v29;
  CRRegister.init(wrappedValue:)();
  v33 = v31[6];
  *&v113 = 0;
  v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v95 = v33;
  CRRegister.init(wrappedValue:)();
  v35 = v31[7];
  v111 = a2;
  v91 = v35;
  v112 = v34;
  *&v113 = 0x3FF8000000000000;
  CRRegister.init(wrappedValue:)();
  v36 = *(v20 + 20);
  v37 = type metadata accessor for UnknownValueProperties();
  (*(*(v37 - 8) + 56))(v22 + v36, 1, 1, v37);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (!result)
  {
    __break(1u);
    goto LABEL_41;
  }

  v39 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v40 = result;
  v41 = v31[8];

  *v22 = v40;
  Color.withAlphaComponent(_:)(v27, 0.5);
  outlined destroy of LoupeElement.Partial(v22, type metadata accessor for Color);
  (v107[7])(v27, 0, 1, v20);
  outlined init with copy of Date?(v27, v24, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v42 = v111;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit5ColorVSgMd);
  v43 = v31[9];
  *&v113 = 0x4004000000000000;
  CRRegister.init(wrappedValue:)();
  v44 = v31[10];
  UnknownProperties.init()();
  v45 = v108;
  v46 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v45)
  {

    return outlined destroy of LoupeElement.Partial(v42, type metadata accessor for LoupeElement);
  }

  else
  {
    v47 = v46;
    v108 = v41;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v48 = v104;
      CRRegister.init(from:)();
      (*(v101 + 40))(v42, v48, v102);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v49 = v103;
      CRRegister.init(from:)();
      (*(v101 + 40))(v42 + v97, v49, v102);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v50 = v100;
      CRRegister.init(from:)();
      (*(v98 + 40))(v42 + v95, v50, v99);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v51 = v96;
      CRRegister.init(from:)();
      (*(v98 + 40))(v111 + v91, v51, v99);
    }

    v52 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v53 = v108;
    if (v52)
    {
      v54 = v94;
      CRRegister.init(from:)();
      (*(v88 + 40))(&v53[v111], v54, v89);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v55 = v90;
      CRRegister.init(from:)();
      (*(v98 + 40))(v111 + v43, v55, v99);
    }

    v56 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v112 = v47;
    v57 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v56);

    *&v113 = v57;
    specialized Set._Variant.remove(_:)(0x73646E756F62, 0xE600000000000000);

    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

    specialized Set._Variant.remove(_:)(0x636966696E67616DLL, 0xED00006E6F697461);

    specialized Set._Variant.remove(_:)(0x6F43656B6F727473, 0xEB00000000726F6CLL);

    specialized Set._Variant.remove(_:)(0x6957656B6F727473, 0xEB00000000687464);

    v58 = v113 + 56;
    v59 = 1 << *(v113 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v113 + 56);
    v62 = (v59 + 63) >> 6;
    v108 = (v87 + 56);
    v110 = v113;

    v63 = 0;
    v107 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v64 = v63;
      if (!v61)
      {
        break;
      }

LABEL_28:
      v65 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v66 = (*(v110 + 48) + ((v63 << 10) | (16 * v65)));
      v68 = *v66;
      v67 = v66[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v70 = v92;
        v106 = *(v92 + 48);
        v71 = v93;
        *v93 = v68;
        v71[1] = v67;
        v72 = v71;

        AnyCRDT.init(from:)();

        (*v108)(v72, 0, 1, v70);
        v73 = v82;
        outlined init with take of (String, AnyCRDT)(v72, v82);
        outlined init with take of (String, AnyCRDT)(v73, v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1, v107);
        }

        v75 = v107[2];
        v74 = v107[3];
        if (v75 >= v74 >> 1)
        {
          v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v74 > 1, v75 + 1, 1, v107);
        }

        v76 = v107;
        v107[2] = v75 + 1;
        outlined init with take of (String, AnyCRDT)(v83, v76 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v75);
      }

      else
      {

        v69 = v93;
        (*v108)(v93, 1, 1, v92);
        outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_sSS_9Coherence7AnyCRDTVtSgMd);
      }
    }

    while (1)
    {
      v63 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        v42 = v111;
        return outlined destroy of LoupeElement.Partial(v42, type metadata accessor for LoupeElement);
      }

      if (v63 >= v62)
      {
        break;
      }

      v61 = *(v58 + 8 * v63);
      ++v64;
      if (v61)
      {
        goto LABEL_28;
      }
    }

    v77 = v107;
    if (v107[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
      v78 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v78 = MEMORY[0x1E69E7CC8];
    }

    v79 = v111;
    v115 = v78;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v77, 1, &v115);
    v80 = v84;
    UnknownProperties.init(_:)();

    return (*(v85 + 40))(v79 + v44, v80, v86);
  }
}

uint64_t LoupeElement.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v95 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v107 = v83 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v102 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v99 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v94 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = v83 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v92 = v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v97 = v83 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v105 = v83 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v104 = v83 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v85 = *(v29 - 8);
  v30 = v85;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v83 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v91 = v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v90 = v83 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v103 = v83 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v96 = v83 - v43;
  v106 = v3;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v44 = *(v30 + 8);
  v44(v32, v29);
  v44(v35, v29);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v84 = v29;
  v44(v32, v29);
  v44(v35, v29);
  v45 = v86;
  v46 = v108;
  CRRegister.projectedValue.getter();
  v98 = a2;
  v47 = v99;
  CRRegister.projectedValue.getter();
  v48 = a1;
  CRRegister.delta(_:from:)();
  v49 = v102[1];
  v49(v47, v46);
  v49(v45, v46);
  v50 = v45;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v83[1] = v48;
  CRRegister.delta(_:from:)();
  v49(v47, v46);
  v49(v45, v46);
  v51 = v88;
  v52 = v101;
  CRRegister.projectedValue.getter();
  v53 = v87;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v54 = *(v100 + 8);
  v55 = v53;
  v56 = v108;
  v54(v55, v52);
  v54(v51, v52);
  v57 = v97;
  CRRegister.projectedValue.getter();
  v58 = v105;
  v59 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v49(v59, v56);
  v60 = v50;
  v61 = v104;
  v49(v60, v56);
  v62 = v96;
  v63 = v103;
  v64 = v85;
  v65 = *(v85 + 48);
  v66 = v84;
  if (v65(v96, 1) == 1 && (v65)(v63, 1, v66) == 1 && (v67 = v102[6], v67(v61, 1, v108) == 1) && v67(v58, 1, v108) == 1 && (*(v100 + 48))(v107, 1, v101) == 1 && v67(v57, 1, v108) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v68 = type metadata accessor for LoupeElement.Partial(0);
    (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
    v69 = v57;
  }

  else
  {
    outlined init with copy of Date?(v62, v90, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v63, v91, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v61, v92, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v58, v93, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v107, v95, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    outlined init with copy of Date?(v57, v94, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v70 = *(v64 + 56);
    v71 = v89;
    v70(v89, 1, 1, v66);
    v72 = type metadata accessor for LoupeElement.Partial(0);
    v73 = v72[5];
    v70(v71 + v73, 1, 1, v66);
    v74 = v72[6];
    v75 = v108;
    v76 = v102[7];
    v76(v71 + v74, 1, 1, v108);
    v77 = v72[7];
    v76(v71 + v77, 1, 1, v75);
    v78 = v72[8];
    (*(v100 + 56))(v71 + v78, 1, 1, v101);
    v79 = v72[9];
    v76(v71 + v79, 1, 1, v75);
    outlined assign with take of UUID?(v90, v71, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v80 = v71 + v73;
    v63 = v103;
    outlined assign with take of UUID?(v91, v80, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v92, v71 + v74, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v93, v71 + v77, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v61 = v104;
    outlined assign with take of UUID?(v95, v71 + v78, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    outlined assign with take of UUID?(v94, v71 + v79, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v81 = v71;
    v58 = v105;
    (*(*(v72 - 1) + 56))(v81, 0, 1, v72);
    v69 = v97;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
}

BOOL LoupeElement.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v86 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v91 = (&v79 - v13);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v80 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v79 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v93 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v87 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v79 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v79 - v33;
  v35 = a1;
  outlined init with copy of Date?(a1, v25, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v36 = *(v27 + 48);
  v37 = v36(v25, 1, v26);
  v90 = v4;
  if (v37 == 1)
  {
    v38 = v27;
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    (*(v27 + 32))(v34, v25, v26);
    CRRegister.projectedValue.getter();
    v39 = CRRegister.canMerge(delta:)();
    v38 = v27;
    v40 = *(v27 + 8);
    v40(v31, v26);
    v40(v34, v26);
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  v41 = type metadata accessor for LoupeElement.Partial(0);
  v42 = v93;
  outlined init with copy of Date?(v35 + *(v41 + 20), v93, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v36(v42, 1, v26) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v43 = v94;
  }

  else
  {
    v44 = v38;
    v45 = *(v38 + 32);
    v46 = v87;
    v45(v87, v42, v26);
    type metadata accessor for LoupeElement(0);
    CRRegister.projectedValue.getter();
    v47 = CRRegister.canMerge(delta:)();
    v48 = *(v44 + 8);
    v48(v31, v26);
    v48(v46, v26);
    v43 = v94;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  v94 = v41;
  v49 = v91;
  outlined init with copy of Date?(v35 + *(v41 + 24), v91, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v93 = v43[6];
  if ((v93)(v49, 1, v95) == 1)
  {
    v50 = v43;
    outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v51 = v43[4];
    v52 = v85;
    v91 = v43 + 6;
    v53 = v95;
    v51(v85, v49, v95);
    type metadata accessor for LoupeElement(0);
    v54 = v92;
    CRRegister.projectedValue.getter();
    v55 = CRRegister.canMerge(delta:)();
    v50 = v43;
    v56 = v43[1];
    v56(v54, v53);
    v56(v52, v53);
    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  v57 = v88;
  outlined init with copy of Date?(v35 + *(v94 + 28), v88, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if ((v93)(v57, 1, v95) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v58 = v89;
    v59 = v90;
    v60 = v50;
  }

  else
  {
    v60 = v50;
    v61 = v83;
    v62 = v95;
    (v50[4])(v83, v57, v95);
    type metadata accessor for LoupeElement(0);
    v63 = v92;
    CRRegister.projectedValue.getter();
    v64 = CRRegister.canMerge(delta:)();
    v65 = v50[1];
    v65(v63, v62);
    v65(v61, v62);
    v58 = v89;
    v59 = v90;
    if ((v64 & 1) == 0)
    {
      return 0;
    }
  }

  v66 = v94;
  outlined init with copy of Date?(v35 + *(v94 + 32), v58, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v67 = v86;
  if ((*(v86 + 48))(v58, 1, v59) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  }

  else
  {
    v68 = v81;
    (*(v67 + 32))(v81, v58, v59);
    type metadata accessor for LoupeElement(0);
    v69 = v82;
    CRRegister.projectedValue.getter();
    v70 = CRRegister.canMerge(delta:)();
    v71 = *(v67 + 8);
    v71(v69, v59);
    v71(v68, v59);
    if ((v70 & 1) == 0)
    {
      return 0;
    }
  }

  v72 = v84;
  outlined init with copy of Date?(v35 + *(v66 + 36), v84, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if ((v93)(v72, 1, v95) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    return 1;
  }

  v73 = v80;
  v74 = v95;
  (v60[4])(v80, v72, v95);
  type metadata accessor for LoupeElement(0);
  v75 = v92;
  CRRegister.projectedValue.getter();
  v76 = CRRegister.canMerge(delta:)();
  v77 = v60[1];
  v77(v75, v74);
  v77(v73, v74);
  return (v76 & 1) != 0;
}

BOOL LoupeElement.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v77 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v87 = (&v77 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v95 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v77 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v77 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v77 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v80 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v77 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v77 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v77 - v43;
  v45 = LoupeElement.canMerge(delta:)(a1);
  if (v45)
  {
    v79 = v45;
    v96 = v1;
    v97 = a1;
    outlined init with copy of Date?(a1, v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v46 = *(v34 + 48);
    if (v46(v32, 1, v33) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v34 + 32))(v44, v32, v33);
      v78 = v46;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v34 + 16))(v38, v41, v33);
      CRRegister.projectedValue.setter();
      v47 = *(v34 + 8);
      v47(v41, v33);
      v47(v44, v33);
      v46 = v78;
    }

    v48 = type metadata accessor for LoupeElement.Partial(0);
    outlined init with copy of Date?(v97 + v48[5], v29, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v46(v29, 1, v33) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v49 = v80;
      (*(v34 + 32))(v80, v29, v33);
      type metadata accessor for LoupeElement(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v34 + 16))(v38, v41, v33);
      CRRegister.projectedValue.setter();
      v50 = *(v34 + 8);
      v50(v41, v33);
      v50(v49, v33);
    }

    v51 = v87;
    v52 = v97;
    outlined init with copy of Date?(v97 + v48[6], v87, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v53 = v95;
    v54 = (v95 + 48);
    v87 = *(v95 + 48);
    if ((v87)(v51, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v55 = *(v53 + 32);
      v80 = v54;
      v56 = v81;
      v55(v81, v51, v17);
      type metadata accessor for LoupeElement(0);
      v57 = v93;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v53 + 16))(v94, v57, v17);
      CRRegister.projectedValue.setter();
      v58 = *(v53 + 8);
      v58(v57, v17);
      v58(v56, v17);
    }

    v59 = v88;
    outlined init with copy of Date?(v52 + v48[7], v88, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if ((v87)(v59, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v60 = v48;
      v61 = v82;
      (*(v53 + 32))(v82, v59, v17);
      type metadata accessor for LoupeElement(0);
      v62 = v93;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v53 + 16))(v94, v62, v17);
      CRRegister.projectedValue.setter();
      v63 = *(v53 + 8);
      v63(v62, v17);
      v64 = v61;
      v48 = v60;
      v52 = v97;
      v63(v64, v17);
    }

    v65 = v91;
    v66 = v92;
    v67 = v89;
    outlined init with copy of Date?(v52 + v48[8], v89, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    if ((*(v65 + 6))(v67, 1, v66) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    }

    else
    {
      v68 = v83;
      (*(v65 + 4))(v83, v67, v66);
      type metadata accessor for LoupeElement(0);
      v91 = v48;
      v69 = v84;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v65 + 2))(v85, v69, v66);
      v53 = v95;
      v52 = v97;
      CRRegister.projectedValue.setter();
      v70 = *(v65 + 1);
      v71 = v69;
      v48 = v91;
      v70(v71, v66);
      v70(v68, v66);
    }

    v72 = v90;
    outlined init with copy of Date?(v52 + v48[9], v90, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if ((v87)(v72, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v73 = v86;
      (*(v53 + 32))(v86, v72, v17);
      type metadata accessor for LoupeElement(0);
      v74 = v93;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v53 + 16))(v94, v74, v17);
      CRRegister.projectedValue.setter();
      v75 = *(v53 + 8);
      v75(v74, v17);
      v75(v73, v17);
    }

    LOBYTE(v45) = v79;
  }

  return v45;
}

uint64_t protocol witness for CRDT.context.getter in conformance LoupeElement(uint64_t a1)
{
  v2 = _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance LoupeElement(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LoupeElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t outlined init with copy of LoupeElement.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of LoupeElement.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized static LoupeElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v38 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - v18;
  v40 = a1;
  CRRegister.projectedValue.getter();
  v41 = a2;
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v14 + 8);
  v20(v16, v13);
  v20(v19, v13);
  if (a1 & 1) != 0 && (type metadata accessor for LoupeElement(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v21 = dispatch thunk of static Equatable.== infix(_:_:)(), v20(v16, v13), v20(v19, v13), (v21) && (CRRegister.projectedValue.getter(), v22 = v38, CRRegister.projectedValue.getter(), v23 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd), v24 = dispatch thunk of static Equatable.== infix(_:_:)(), v25 = *(v39 + 8), v25(v22, v8), v25(v12, v8), (v24) && (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v26 = dispatch thunk of static Equatable.== infix(_:_:)(), v25(v22, v8), v25(v12, v8), (v26) && (v33[1] = v23, v27 = v36, CRRegister.projectedValue.getter(), v28 = v34, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd), LODWORD(v39) = dispatch thunk of static Equatable.== infix(_:_:)(), v29 = *(v35 + 8), v29(v28, v27), v29(v37, v27), (v39) && (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v30 = dispatch thunk of static Equatable.== infix(_:_:)(), v25(v22, v8), v25(v12, v8), (v30))
  {
    v31 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t _s8PaperKit5ColorVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for LoupeElement()
{
  type metadata accessor for CRRegister<CGRect>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRRegister<CGFloat>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRRegister<Color?>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownProperties();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for LoupeElement.ObservableDifference()
{
  type metadata accessor for CRValueObservableDifference?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for LoupeElement.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for LoupeElement.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>?, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t closure #1 in static SignatureAnalytics.created(_:)(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  v5 = a2;
  v6 = inited;
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = 6775156;
  v7 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  if (v5 <= 5)
  {
    specialized Collection<>.firstIndex(of:)(a1, v5, &outlined read-only object #0 of static SignatureDescription.allCases.getter);
    if (v8)
    {
      __break(1u);
    }
  }

  v6[6].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(v7);
  return v9;
}

unint64_t specialized closure #1 in static SignatureAnalytics.inserted()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = 0x746E756F63;
  *(inited + 40) = 0xE500000000000000;
  type metadata accessor for NSNumber();
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);
  return v1;
}

uint64_t outlined destroy of (String, NSObject)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

UIMenu closure #1 in CanvasDelegate.canvas(_:contextMenuConfigurationFor:suggestedActions:)(uint64_t a1, UIMenuElementSize a2)
{
  type metadata accessor for UIMenu();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, 0, v6, 0, 0xFFFFFFFFFFFFFFFFLL, a2, v5);
}

id specialized CanvasDelegate.canvas(_:contextMenuConfigurationFor:suggestedActions:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  v7[4] = partial apply for closure #1 in CanvasDelegate.canvas(_:contextMenuConfigurationFor:suggestedActions:);
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v7[3] = &block_descriptor_46;
  v4 = _Block_copy(v7);

  v5 = [v3 configurationWithIdentifier:0 previewProvider:0 actionProvider:v4];

  _Block_release(v4);
  return v5;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for UIMenu()
{
  result = lazy cache variable for type metadata for UIMenu;
  if (!lazy cache variable for type metadata for UIMenu)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIMenu);
  }

  return result;
}

void ShapeView.addTextBox(canvas:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if (!*&v2[direct field offset for ShapeView._textBoxView])
  {
    v32 = a1;
    v33 = direct field offset for ShapeView._textBoxView;
    v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
    swift_beginAccess();
    v15 = *(v8 + 16);
    v15(v13, &v2[v14], v7);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v16 = *(v8 + 8);
    v16(v13, v7);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v18 = (*(*(v17 - 8) + 48))(v6, 1, v17);
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    if (v18 == 1)
    {
      v15(v10, &v2[v14], v7);
      v19 = specialized Capsule<>.isFormField.getter();
      v20 = (v16)(v10, v7);
      v21 = 1.0;
      if ((v19 & 1) == 0)
      {
        if (v32)
        {
          (*((*MEMORY[0x1E69E7D40] & *v32) + 0x348))(v20);
          if (v22)
          {
            v21 = AnyCanvas.scaleFactorForNewElements.getter();
          }
        }
      }

      if (one-time initialization token for defaultTextBoxAttributes != -1)
      {
        swift_once();
      }

      v34 = static UIConstants.defaultTextBoxAttributes;

      Dictionary<>.scaleBy(_:)(v21);
      MEMORY[0x1EEE9AC00](v23);
      *(&v32 - 2) = &v34;
      swift_beginAccess();
      Capsule.callAsFunction<A>(_:)();
      swift_endAccess();
    }

    v24 = v2[direct field offset for ShapeView.showsSignaturePopover];
    v25 = v2[direct field offset for ShapeView.analytics_documentType];
    v26 = v2[direct field offset for ShapeView.analytics_inputSource];
    v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11TextBoxViewCyAA5ShapeVGMd));
    v28 = v2;
    v29 = specialized TextBoxView.init(canvasElementView:delegate:shouldAddTextboxView:analytics_inputSource:analytics_documentType:)(v28, v28, (v24 & 1) == 0, v26, v25, v27);
    v30 = *&v2[v33];
    *&v2[v33] = v29;
    v31 = v29;

    [v28 addSubview_];
  }
}

void ShapeView.setupTextBoxIfNeeded(canvas:)(void *a1)
{
  v2 = v1;
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  v24 = *(v7 + 16);
  v24(v12, &v2[v13], v6);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v23 = *(v7 + 8);
  v23(v12, v6);
  v26 = v3;
  v14 = CRAttributedString.attributedString.getter();
  v15 = [v14 string];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18 == 0xE000000000000000;
  }

  if (v19)
  {

    (*(v25 + 8))(v5, v26);
LABEL_8:
    v24(v9, &v2[v13], v6);
    v21 = specialized Capsule<>.isFormField.getter();
    v23(v9, v6);
    if ((v21 & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v25 + 8))(v5, v26);
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_9:
  ShapeView.addTextBox(canvas:)(v22);
}

uint64_t closure #1 in ShapeView.addTextBox(canvas:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  swift_getKeyPath();

  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v3, 0, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  return Capsule.Ref.subscript.setter();
}

Swift::Bool __swiftcall ShapeView.becomeFirstResponder()()
{
  v1 = v0;
  if (v0[direct field offset for ShapeView.showsSignaturePopover] != 1)
  {
    v6 = *&v0[direct field offset for ShapeView._textBoxView];
    if (v6)
    {
      return [v6 becomeFirstResponder];
    }

    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    v29.receiver = v1;
    v29.super_class = type metadata accessor for ShapeView();
    return objc_msgSendSuper2(&v29, sel_becomeFirstResponder);
  }

  v3 = Strong;
  v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x8C0))();
  if (!v4)
  {
    v8 = [v3 window];
    v5 = [v8 rootViewController];

    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v5 = v4;
LABEL_8:
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v3;
  v18 = one-time initialization token for SignatureLogger;
  v19 = v1;
  v20 = v3;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, SignatureLogger);
  v22 = v5;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138477827;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_1D38C4000, v23, v24, "show signature panel on viewController: %{private}@", v25, 0xCu);
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_sSo8NSObjectCSgMd);
    MEMORY[0x1DA6D0660](v26, -1, -1);
    MEMORY[0x1DA6D0660](v25, -1, -1);
  }

  v28 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(v22, 0, v1, partial apply for closure #1 in ShapeView.becomeFirstResponder(), v17, v10, v12, v14, v16);
  [v22 presentViewController:v28 animated:1 completion:0];

  return 1;
}

void closure #1 in ShapeView.becomeFirstResponder()(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  if (a1)
  {
    v13 = v9;
    v48 = v10;
    v14 = one-time initialization token for shared;
    v15 = a1;
    if (v14 != -1)
    {
      swift_once();
    }

    [a2 center];
    v17 = v16;
    [a2 frame];
    MaxY = CGRectGetMaxY(v50);
    [a2 frame];
    v19 = CGRectGetHeight(v51) * 1.3;
    v20 = v15;
    v21 = SignatureItem.size.getter();
    v23 = 400.0 / v21;
    if (400.0 / v21 > 1.0)
    {
      v23 = 1.0;
    }

    v24 = v21 * v23;
    v25 = v22 * v23;
    v26 = v19 / v25;
    if (v19 / v25 > 1.0)
    {
      v26 = 1.0;
    }

    v49[0] = v24 * v26;
    v49[1] = v25 * v26;
    v27 = MaxY + v25 * v26 * -0.5;
    Signature.init()();
    static CRKeyPath.unique.getter();
    v28 = lazy protocol witness table accessor for type Signature and conformance Signature(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
    v47 = v15;
    v29 = v28;
    v30 = Capsule.init(_:id:)();
    MEMORY[0x1EEE9AC00](v30);
    *(&v46 - 4) = v20;
    *(&v46 - 3) = v17;
    *(&v46 - 2) = v27;
    *(&v46 - 1) = v49;
    Capsule.callAsFunction<A>(_:)();
    v31 = MEMORY[0x1E69E7D40];
    v32 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x700))(v12, 1, 0, 0, v7, v29, &protocol witness table for Signature);
    v33 = *((*v31 & *a3) + 0x440);
    v34 = v33(v32);
    v36 = v35;
    swift_getObjectType();
    specialized CanvasMembers.init(_:)(a2);
    (*(v36 + 96))();

    v38 = v33(v37);
    v40 = v39;
    ObjectType = swift_getObjectType();
    v42 = (*(v40 + 168))(ObjectType, v40);

    (*(v48 + 8))(v12, v13);
    if (v42)
    {
      v43 = *&v42[OBJC_IVAR____TtC8PaperKit15FormFillingView_signatureFieldsSigned];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        __break(1u);
      }

      else
      {
        *&v42[OBJC_IVAR____TtC8PaperKit15FormFillingView_signatureFieldsSigned] = v45;
      }
    }
  }
}

Swift::Bool __swiftcall ShapeView.resignFirstResponder()()
{
  v1 = *&v0[direct field offset for ShapeView._textBoxView];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
    if (v2)
    {
      v3 = v1;
      if ([v2 isFirstResponder])
      {
        v4 = [v3 resignFirstResponder];

        return v4;
      }
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v6, sel_resignFirstResponder);
}

uint64_t specialized TextBoxView.registerForInterfaceStyleChanges()()
{
  return specialized TextBoxView.registerForInterfaceStyleChanges()();
}

{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D4058CF0;
  v1 = type metadata accessor for UITraitUserInterfaceStyle();
  v2 = MEMORY[0x1E69DC0F8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

uint64_t lazy protocol witness table accessor for type Signature and conformance Signature(unint64_t *a1, void (*a2)(uint64_t))
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

id specialized closure #1 in TextBoxView.registerForInterfaceStyleChanges()(char *a1)
{
  v2 = *&a1[direct field offset for TextBoxView.textStorage];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = v2[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode];
  v2[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = v4 == 2;
  CRTextStorage.darkMode.didset(v5);

  [a1 setNeedsLayout];

  return [a1 setNeedsDisplay];
}

void specialized AnyCanvas.undoableEndLiveEdits<A>(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 undoManager];
  [v4 beginUndoGrouping];

  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7D40];
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6CE0C0](v6, a1);
    }

    else
    {
      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    ++v6;
    (*((*v7 & *v8) + 0x1C8))(1, 0);
  }

  while (v5 != v6);
LABEL_10:
  v10 = [v2 undoManager];
  [v10 endUndoGrouping];
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_yps5NeverOTg503_s8g5Kit38i107ViewSelectionInteractionDelegateC09selectionF0_20didDuplicateElements12inAttachmentSayypGSgSo011PKSelectionr40C_AGSo012PKAttachmentD0CtFyp9Coherence13ef11_10VyAA0rC7B7VGXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = *(a1 + 36);
    v10 = *(a1 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    v12 = *(v11 - 8);
    v13 = v10 + *(v12 + 72) * v6;
    v27 = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
    (*(v12 + 16))(boxed_opaque_existential_1, v13, v11);
    v28 = v2;
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v2 = v28;
    }

    *(v2 + 16) = v16 + 1;
    result = outlined init with take of Any(&v26, (v2 + 32 * v16 + 32));
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v6, v25, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v6, v25, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_ALs5NeverOTg503_s8g5Kit38i101ViewSelectionInteractionDelegateC09selectionF0_28selectedElementsInAttachmentSayypGSgSo011PKSelectionr36C_So012PKAttachmentD0CtF9Coherence13ef11_10VyAA0qC7B10VGAQXEfU0_Tf1cn_n(uint64_t a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = v29 - v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v29[1] = v1;
  v40 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v40;
  v39 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v34 = v3 + 32;
  v35 = v3 + 16;
  v30 = a1 + 64;
  v11 = v31;
  v32 = v6;
  v33 = a1;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v39 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    v36 = v10;
    v38 = *(a1 + 36);
    v14 = *(v3 + 72);
    (*(v3 + 16))(v5, *(a1 + 48) + v14 * v9, v11);
    v40 = v7;
    v15 = v11;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v37 = v17 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
      v18 = v37;
      v7 = v40;
    }

    *(v7 + 16) = v18;
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v37 = v7;
    v20 = v7 + v19 + v17 * v14;
    v21 = v3;
    result = (*(v3 + 32))(v20, v5, v15);
    v12 = 1 << *(v33 + 32);
    if (v9 >= v12)
    {
      goto LABEL_23;
    }

    v22 = *(v39 + 8 * v13);
    if ((v22 & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }

    v11 = v15;
    a1 = v33;
    if (v38 != *(v33 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v9 & 0x3F));
    if (v23)
    {
      v12 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v13 << 6;
      v25 = v13 + 1;
      v26 = (v30 + 8 * v13);
      while (v25 < (v12 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v9, v38, 0);
          v12 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v9, v38, 0);
LABEL_19:
      v11 = v31;
    }

    v10 = v36 + 1;
    v9 = v12;
    v3 = v21;
    v7 = v37;
    if (v36 + 1 == v32)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall CanvasViewSelectionInteractionDelegate.canvasElementExistsAtPoint(_:for:)(CGPoint _, UIEvent_optional a2)
{
  isa = a2.value.super.isa;
  y = _.y;
  x = _.x;
  v5 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 64))(ObjectType, v8);
    v11 = v10;
    if (v10 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v13 = 0;
      v14 = MEMORY[0x1E69E7D40];
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA6CE0C0](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v15 = *(v11 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ((*((*v14 & *v15) + 0x1F0))())
        {
        }

        else
        {
          [v16 convertPoint:v7 fromCoordinateSpace:{x, y}];
          v18 = [v16 hitTest:isa withEvent:?];

          if (v18)
          {

            LOBYTE(Strong) = 1;
            return Strong;
          }
        }

        ++v13;
        if (v17 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    LOBYTE(Strong) = 0;
  }

  return Strong;
}

void CanvasViewSelectionInteractionDelegate.selectionInteractionShouldBegin(_:at:for:orGestureRecognizer:)(void *a1, unint64_t a2, unint64_t a3, double a4, double a5)
{
  if (!(a2 | a3))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

  if (!v13)
  {
    return;
  }

  if (!a2)
  {
    if (a3)
    {
      v14 = [a3 _activeEventOfType_];
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v14 = a2;
LABEL_8:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    v23 = a2;
    goto LABEL_20;
  }

  v16 = v15;
  v17 = (*((*v12 & *v15) + 0x90))();
  v18 = a2;

  if (!v17)
  {
LABEL_20:
    v24 = v14;
    CanvasViewSelectionInteractionDelegate.selectionInteractionShouldForwardToElements(_:at:for:)(a1, v14, a4, a5);

    return;
  }

  (*((*v12 & *v17) + 0x3C8))(&v25);

  if (v25)
  {
    if (v25 == 2 && ([v14 PK_isEventFromPencil] & 1) == 0)
    {
      v19 = v14;
      v26.value.super.isa = v14;
      v20 = CanvasViewSelectionInteractionDelegate.canvasElementExistsAtPoint(_:for:)(__PAIR128__(*&a5, *&a4), v26);

      if (!v20)
      {
        v21 = *&v13[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        if (v21)
        {
          v22 = v21 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
          if (!*(*v22 + 16) && !*(*(v22 + 8) + 16) && (*(v22 + 24) & 1) == 0)
          {

            return;
          }

          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    goto LABEL_20;
  }
}

uint64_t CanvasViewSelectionInteractionDelegate.selectionInteractionShouldForwardToElements(_:at:for:)(void *a1, void *a2, double a3, double a4)
{
  v9 = type metadata accessor for PKInk();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (v77 = v11, v14 = v4 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView, (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    LOBYTE(v21) = 0;
    return v21 & 1;
  }

  v16 = Strong;
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {

    LOBYTE(v21) = 0;
    return v21 & 1;
  }

  v18 = v17;
  v19 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x90))();
  v20 = a2;

  if (!v19)
  {

    LOBYTE(v21) = 0;
    return v21 & 1;
  }

  v70 = v10;
  v21 = *&v19[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  v22 = v21;

  if (!v21)
  {

    return v21 & 1;
  }

  [v16 convertPoint:v22 toCoordinateSpace:{a3, a4}];
  v24 = v23;
  v26 = v25;
  v76 = v20;
  v27 = [v22 hitTest:v24 withEvent:v26];
  v71 = v22;
  v75 = v27;
  if (v27)
  {
    v28 = v27;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v29 = v28;
    v30 = static NSObject.== infix(_:_:)();

    LODWORD(v21) = v30 ^ 1;
  }

  else
  {
    LODWORD(v21) = 0;
  }

  v32 = MEMORY[0x1E69E7D40];
  v33 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x90);
  v73 = (*MEMORY[0x1E69E7D40] & *v16) + 144;
  v74 = v33;
  v34.value.super.isa = v33();
  if (v34.value.super.isa)
  {
    v35 = *(v34.value.super.isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    isa = v34.value.super.isa;
    v37 = v35;

    v72 = v35;
    if (v35)
    {
      v38 = v37;
      [v16 convertPoint:v38 toCoordinateSpace:{a3, a4}];
      v39 = [v38 hitTest:v76 withEvent:?];

      if (v39)
      {
        v69 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
        v40 = v38;
        v39 = v39;
        v41 = static NSObject.== infix(_:_:)();

        LODWORD(v21) = v41 ^ 1 | v21;
      }
    }

    else
    {
      v39 = 0;
      v72 = 0;
    }

    v32 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v39 = 0;
    v72 = 0;
  }

  v34.value.super.isa = a2;
  if (CanvasViewSelectionInteractionDelegate.canvasElementExistsAtPoint(_:for:)(__PAIR128__(*&a4, *&a3), v34))
  {
    if (([v76 modifierFlags] & 0x20000) != 0 || (objc_msgSend(v76, sel_modifierFlags) & 0x100000) != 0)
    {
      LODWORD(v21) = 1;
    }

    if (v75)
    {
      LODWORD(v21) = [a1 hasCurrentSelection] ^ 1 | v21;
    }
  }

  v42 = v74();
  if (v42)
  {
    v43 = v42;
    (*((*v32 & *v42) + 0x3C8))(&v78 + 1);

    if (BYTE1(v78) != 4)
    {
      LOBYTE(v21) = (BYTE1(v78) == 1) | v21;
    }
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
    v61 = v75;
    v55 = v76;
    v45 = v76;
LABEL_41:

    v65 = v16;
    v16 = v45;
LABEL_42:

    return v21 & 1;
  }

  v45 = v44;
  v69 = v39;
  v46 = *(v14 + 8);
  ObjectType = swift_getObjectType();
  v48 = (*((*v32 & *v45) + 0x90))();
  if (!v48)
  {
    v62 = v75;
    v63 = v76;
    v64 = v76;
LABEL_40:

    v61 = v16;
    v16 = v63;
    v55 = v64;
    v39 = v69;
    goto LABEL_41;
  }

  v49 = v48;
  v50 = (*(v46 + 168))(ObjectType, v46);
  if (!v50)
  {

    v62 = v16;
    v63 = v76;
    v16 = v76;
    v64 = v45;
    v45 = v49;
    goto LABEL_40;
  }

  v51 = v50;
  [v49 convertPoint:v45 toCoordinateSpace:{a3, a4}];
  v79.value.super.isa = a2;
  v54 = FormFillingView.hitTestIncludingHiddenFields(_:with:)(__PAIR128__(v53, v52), v79);
  v55 = v76;

  if (!v54)
  {
    v65 = v75;
    v39 = v69;
    goto LABEL_42;
  }

  v56 = v74();
  if (v56)
  {
    v57 = v56;
    v58 = (*((*v32 & *v56) + 0x468))();

    v59 = v69;
    if (v58)
    {
      v60 = [(objc_class *)v58 ink];

      static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = PKInk._bridgeToObjectiveC()().super.isa;
      (*(v70 + 8))(v13, v77);
    }
  }

  else
  {
    v58 = 0;
    v59 = v69;
  }

  v66 = v58;
  v67 = [(objc_class *)v66 _isHandwritingInk];

  v68 = v74();
  if (v68 && ((*((*v32 & *v68) + 0x3C8))(&v78), v68, v78 != 4))
  {
    LOBYTE(v21) = (v78 != 3) | v67 | v21;
  }

  else
  {
    LOBYTE(v21) = 1;
  }

  return v21 & 1;
}

Class @objc CanvasViewSelectionInteractionDelegate.selectionInteraction(_:elementsInAttachment:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5();

  if (v11)
  {
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

void closure #1 in CanvasViewSelectionInteractionDelegate.image(of:)(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

void closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v12 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v119 = v88 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v16 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v115 = v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v104 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v122 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v114 = v88 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v126 = v88 - v25;
  if (*(a1 + 16))
  {
    v26 = a2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v102 = a4;
      v29 = *(v26 + 8);
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 64))(ObjectType, v29);

      [a3 scale];
      v33 = v32;
      v34 = [objc_opt_self() mainScreen];
      [v34 scale];
      v36 = v35;

      CGAffineTransformMakeScale(&aBlock, v33 * v36, v33 * v36);
      a = aBlock.a;
      b = aBlock.b;
      c = aBlock.c;
      d = aBlock.d;
      tx = aBlock.tx;
      ty = aBlock.ty;
      [a3 strokeBounds];
      v101 = a;
      aBlock.a = a;
      aBlock.b = b;
      v100 = b;
      v99 = c;
      aBlock.c = c;
      aBlock.d = d;
      v98 = d;
      v97 = tx;
      aBlock.tx = tx;
      aBlock.ty = ty;
      v96 = ty;
      v131 = CGRectApplyAffineTransform(v130, &aBlock);
      x = v131.origin.x;
      y = v131.origin.y;
      width = v131.size.width;
      height = v131.size.height;
      v47 = -CGRectGetMinX(v131);
      v95 = x;
      v132.origin.x = x;
      v90 = y;
      v132.origin.y = y;
      v132.size.width = width;
      v132.size.height = height;
      MinY = CGRectGetMinY(v132);
      CGAffineTransformMakeTranslation(&aBlock, v47, -MinY);
      v94 = *&aBlock.c;
      v93 = *&aBlock.a;
      v92 = aBlock.tx;
      v91 = aBlock.ty;
      v49 = specialized _arrayForceCast<A, B>(_:)(a1);
      v125 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v49);

      v89 = a5;
      v88[1] = a6;
      if (v31 >> 62)
      {
        goto LABEL_31;
      }

      v50 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v51 = v119;
      v52 = v118;
      if (v50)
      {
        v53 = 0;
        v54 = v31 & 0xC000000000000001;
        v106 = v31 & 0xFFFFFFFFFFFFFF8;
        v105 = v31 + 32;
        v120 = (v16 + 6);
        v113 = (v16 + 4);
        v112 = (v16 + 2);
        v111 = (v16 + 1);
        v110 = (v104 + 32);
        v123 = v125 + 56;
        v121 = v104 + 16;
        v124 = (v104 + 8);
        p_c = &aBlock.c;
        v16 = MEMORY[0x1E69E7D40];
        v109 = v31;
        v108 = v50;
        v107 = v31 & 0xC000000000000001;
        do
        {
          if (v54)
          {
            v55 = MEMORY[0x1DA6CE0C0](v53, v31);
          }

          else
          {
            if (v53 >= *(v106 + 16))
            {
              goto LABEL_29;
            }

            v55 = *(v105 + 8 * v53);
          }

          v56 = v55;
          if (__OFADD__(v53++, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            v50 = __CocoaSet.count.getter();
            goto LABEL_5;
          }

          (*((*v16 & *v55) + 0xF0))();
          if ((*v120)(v51, 1, v52) == 1)
          {

            outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          }

          else
          {
            v58 = v115;
            (*v113)(v115, v51, v52);
            v59 = v116;
            (*v112)(v116, v58, v52);
            WeakTagged_10.tag.getter();
            v127 = aBlock.a;
            b_low = LOBYTE(aBlock.b);
            MEMORY[0x1DA6CB7A0](v52);
            lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
            v60 = v114;
            WeakTagged_10.init(_:id:)();
            v61 = *v111;
            (*v111)(v59, v52);
            v61(v58, v52);
            (*v110)(v126, v60, v20);
            if (*(v125 + 16) && (v62 = v125, lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd), v63 = dispatch thunk of Hashable._rawHashValue(seed:)(), v64 = -1 << *(v62 + 32), v65 = v63 & ~v64, ((*(v123 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) != 0))
            {
              v66 = ~v64;
              v67 = *(v104 + 72);
              v68 = *(v104 + 16);
              while (1)
              {
                v69 = v122;
                v68(v122, *(v125 + 48) + v67 * v65, v20);
                lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
                v70 = dispatch thunk of static Equatable.== infix(_:_:)();
                v71 = *v124;
                (*v124)(v69, v20);
                if (v70)
                {
                  break;
                }

                v65 = (v65 + 1) & v66;
                if (((*(v123 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              [v56 bounds];
              v76 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds_];
              v77 = swift_allocObject();
              *(v77 + 16) = v56;
              v16 = swift_allocObject();
              v16[2] = partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.image(of:);
              v16[3] = v77;
              *&aBlock.tx = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
              *&aBlock.ty = v16;
              *&aBlock.a = MEMORY[0x1E69E9820];
              *&aBlock.b = 1107296256;
              *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
              *&aBlock.d = &block_descriptor_63_1;
              v78 = _Block_copy(&aBlock);
              v79 = v56;

              v31 = [v76 imageWithActions_];

              _Block_release(v78);
              LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

              if (v78)
              {
                goto LABEL_30;
              }

              v80 = [v31 CGImage];

              if (v80)
              {
                v16 = MEMORY[0x1E69E7D40];
                v133.origin.x = (*((*MEMORY[0x1E69E7D40] & *v79) + 0x170))();
                aBlock.a = v101;
                aBlock.b = v100;
                aBlock.c = v99;
                aBlock.d = v98;
                aBlock.tx = v97;
                aBlock.ty = v96;
                v134 = CGRectApplyAffineTransform(v133, &aBlock);
                *&aBlock.c = v94;
                *&aBlock.a = v93;
                aBlock.tx = v92;
                aBlock.ty = v91;
                v135 = CGRectApplyAffineTransform(v134, &aBlock);
                v81 = v135.origin.x;
                v82 = v135.origin.y;
                v83 = v135.size.width;
                v84 = v135.size.height;
                v135.origin.x = v95;
                v135.origin.y = v90;
                v135.size.width = width;
                v135.size.height = height;
                v85 = CGRectGetHeight(v135);
                v136.origin.x = v81;
                v136.origin.y = v82;
                v136.size.width = v83;
                v136.size.height = v84;
                v86 = v85 - CGRectGetMinY(v136);
                v137.origin.x = v81;
                v137.origin.y = v82;
                v137.size.width = v83;
                v137.size.height = v84;
                v138.origin.y = v86 - CGRectGetHeight(v137);
                v138.origin.x = v81;
                v138.size.width = v83;
                v138.size.height = v84;
                CGContextRef.draw(_:in:byTiling:)(v80, v138, 0);

                v71(v126, v20);
                v51 = v119;
                v52 = v118;
                v31 = v109;
                v50 = v108;
                v54 = v107;
                continue;
              }

              v71(v126, v20);
            }

            else
            {
LABEL_20:

              (*v124)(v126, v20);
            }

            v51 = v119;
            v52 = v118;
            v31 = v109;
            v50 = v108;
            v54 = v107;
            v16 = MEMORY[0x1E69E7D40];
          }
        }

        while (v53 != v50);
      }

      v89(v87);
    }
  }
}

uint64_t @objc CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didEndDraggingElements:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a5;
  v13 = a1;
  a6(v10);
}

uint64_t closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v37 = a6;
  v38 = a7;
  v39 = a3;
  v40 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  outlined init with copy of Date?(a1, v11, &_s10Foundation3URLVSgMd);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s10Foundation3URLVSgMd);
    return v39(0);
  }

  else
  {
    v20 = *(v13 + 32);
    v20(v18, v11, v12);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v36 = static OS_dispatch_queue.main.getter();
    (*(v13 + 16))(v15, v18, v12);
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = v18;
    v23 = a4;
    v24 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v26 = v37;
    *(v25 + 16) = v40;
    *(v25 + 24) = v26;
    v20((v25 + v21), v15, v12);
    v27 = (v25 + v22);
    v28 = v38;
    *v27 = v39;
    v27[1] = v23;
    *(v25 + v24) = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for closure #1 in closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:);
    *(v29 + 24) = v25;
    aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_47;
    v30 = _Block_copy(aBlock);
    v31 = v40;

    v32 = v28;

    v33 = v36;
    dispatch_sync(v36, v30);
    _Block_release(v30);

    (*(v13 + 8))(v35, v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 136))(a3, 0, 0, 0, 1, ObjectType, a2);

  v12 = *(a6 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(v12 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9Coherence13WeakTagged_10Vy8PaperKit0J13CanvasElementVG_Tt1g5(v14, 0);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd) - 8);
    specialized Sequence._copySequenceContents(initializing:)(&v20, (v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80))), v14, v13);
    v18 = v17;

    result = outlined consume of Set<UIColor>.Iterator._Variant();
    if (v18 == v14)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v19 = specialized _arrayForceCast<A, B>(_:)(v15);

  a4(v19);
}

uint64_t CanvasViewSelectionInteractionDelegate.view(for:)(uint64_t a1)
{
  v3 = type metadata accessor for CRKeyPath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = v1 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = v3;
    v13 = *(v11 + 8);
    v14 = result;
    ObjectType = swift_getObjectType();
    outlined init with copy of Any(a1, v24);
    swift_dynamicCast();
    MEMORY[0x1DA6CB5C0](v7);
    (*(v8 + 8))(v10, v7);
    v16 = (*(v13 + 40))(ObjectType, v13);

    if (*(v16 + 16))
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      v18 = v23;
      if (v19)
      {
        v20 = *(v4 + 8);
        v21 = *(*(v16 + 56) + 8 * v17);
        v20(v6, v18);

        return v21;
      }

      (*(v4 + 8))(v6, v18);
    }

    else
    {

      (*(v4 + 8))(v6, v23);
    }

    return 0;
  }

  return result;
}

uint64_t @objc CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:willDisplayMenuFor:animator:forElement:inAttachment:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, SEL *a9)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = a8;
  v18 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:willDisplayMenuFor:animator:forElement:inAttachment:)(v15, v16, a6, v20, a9);

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:), v7, v6);
}

uint64_t closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = MEMORY[0x1E69E7D40], v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))(), v0[7] = v4, v2, v4))
  {
    v5 = (*((*v3 & *v4) + 0x468))();
    v0[8] = v5;
    if (v5)
    {
      v6 = v5;
      type metadata accessor for TiledTextView();
      if (swift_dynamicCastClass())
      {
        v7 = TiledTextView.canvasGenerationToolOverlayController.getter();
        v8 = v7;
        v9 = *&v7[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
        if (v9)
        {
          v10 = v0[3];
          v11 = *(v9 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);
          v0[9] = v11;
          v11;

          v12 = specialized AnyCanvas.canvasMembersFromStrokes(_:)(v10);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v0[10] = v12;
          v0[11] = v13;
          v19 = v4;
          v20 = swift_task_alloc();
          v0[12] = v20;
          *v20 = v0;
          v20[1] = closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:);

          return CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:)(v12, v14, v16, v18 & 1, v4, 2);
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

  else
  {
  }

  v22 = v0[1];

  return v22();
}

{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 56);
  if (v0)
  {

    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:);
  }

  else
  {

    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(_BYTE *, unint64_t), void *a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v58 = a6;
  v59 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v52[-v13];
  v14 = type metadata accessor for PKDrawing();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1DA6CCED0](0xD000000000000026, 0x80000001D4084EA0, v16);
  IsEventUsed = AnalyticsIsEventUsed();

  v21 = MEMORY[0x1E69E7CC0];
  if (IsEventUsed && a4)
  {
    v22 = a4;
    v23 = specialized static MagicPaperUsageProofreadingEvent.ProofreadingType.from(_:)([v22 resultType]);
    if (v23 == 2)
    {

      goto LABEL_16;
    }

    v53 = v23;
    v54 = v22;
    v55 = a2;
    v56 = a3;
    v57 = a5;
    v24 = *(a3 + 16);
    a2 = 0;
    if (v24)
    {
      v25 = (v15 + 16);
      v62 = *(v15 + 16);
      v26 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v27 = *(v15 + 72);
      v21 = v25;
      a5 = (v25 - 1);
      while (1)
      {
        v62(v18, v26, v14);
        v28 = PKDrawing.strokes.getter();
        (*a5)(v18, v14);
        a3 = *(v28 + 16);

        v29 = __OFADD__(a2, a3);
        a2 += a3;
        if (v29)
        {
          break;
        }

        v26 += v27;
        if (!--v24)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_9:
    v30 = v57[2];
    v31 = a2 - v30;
    if (__OFSUB__(a2, v30))
    {
      __break(1u);
    }

    else
    {
      if (v58)
      {
        v32 = (*((*MEMORY[0x1E69E7D40] & *v58) + 0x468))();
      }

      else
      {
        v32 = 0;
      }

      v33 = v59;
      v34 = v60;
      v35 = type metadata accessor for Date();
      v36 = *(v35 - 8);
      (*(v36 + 16))(v34, v33, v35);
      v37 = *(v36 + 56);
      v37(v34, 0, 1, v35);
      v38 = type metadata accessor for MagicPaperUsageProofreadingEvent();
      v64 = v38;
      v65 = _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent and conformance MagicPaperUsageProofreadingEvent, type metadata accessor for MagicPaperUsageProofreadingEvent);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
      *(boxed_opaque_existential_1 + 1) = 0;
      *(boxed_opaque_existential_1 + 65) = 0;
      *(boxed_opaque_existential_1 + 17) = 0;
      *(boxed_opaque_existential_1 + 72) = 0;
      *(boxed_opaque_existential_1 + 1) = 0u;
      *(boxed_opaque_existential_1 + 3) = 0u;
      *(boxed_opaque_existential_1 + 5) = 0u;
      swift_unknownObjectWeakInit();
      v40 = *(v38 + 68);
      v37(boxed_opaque_existential_1 + v40, 1, 1, v35);
      *boxed_opaque_existential_1 = v53 & 1;
      boxed_opaque_existential_1[7] = v31;
      *(boxed_opaque_existential_1 + 64) = 1;
      outlined assign with take of Date?(v34, boxed_opaque_existential_1 + v40);
      swift_unknownObjectWeakAssign();

      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v67 = v21;
      v14 = v21[2];
      v30 = v21[3];
      if (v14 < v30 >> 1)
      {

LABEL_15:
        a5 = v57;
        a2 = v55;
        v41 = v64;
        v42 = v65;
        v43 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
        v44 = MEMORY[0x1EEE9AC00](v43);
        v46 = &v52[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v47 + 16))(v46, v44);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v14, v46, &v67, v41, v42);
        __swift_destroy_boxed_opaque_existential_0(v63);
        a3 = v56;
        goto LABEL_16;
      }
    }

    v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v14 + 1, 1, v21);

    v67 = v51;
    goto LABEL_15;
  }

LABEL_16:
  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
LABEL_19:
    swift_once();
  }

  TaskLocal.get()();

  specialized Array.append<A>(contentsOf:)(v48);
  v66 = v63[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd);
  swift_task_localValuePush();
  specialized _copySequenceToContiguousArray<A>(_:)(a2, a3);
  HandwritingReflowView.replaceStrokes(_:with:animateRefinement:)(a5, v49, 1);

  swift_task_localValuePop();
}

uint64_t closure #1 in CanvasViewSelectionInteractionDelegate.widget(for:)(id *a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for CRKeyPath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v38 - v19;
  v21 = [*a1 pdfAnnotationUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  CRKeyPath.init(_:)();
  v44 = v4;
  v22 = *(v4 + 56);
  v22(v20, 0, 1, v3);
  outlined init with copy of Any(v41, v43);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v24 = swift_dynamicCast();
  v25 = *(*(v23 - 8) + 56);
  if (v24)
  {
    v26 = *(v23 - 8);
    v25(v10, 0, 1, v23);
    MEMORY[0x1DA6CB670](v23);
    (*(v26 + 8))(v10, v23);
    v27 = v16;
    v28 = 0;
  }

  else
  {
    v25(v10, 1, 1, v23);
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v27 = v16;
    v28 = 1;
  }

  v22(v27, v28, 1, v3);
  v29 = *(v42 + 48);
  outlined init with copy of Date?(v20, v7, &_s9Coherence9CRKeyPathVSgMd);
  outlined init with copy of Date?(v16, &v7[v29], &_s9Coherence9CRKeyPathVSgMd);
  v30 = *(v44 + 48);
  if (v30(v7, 1, v3) != 1)
  {
    v32 = v40;
    outlined init with copy of Date?(v7, v40, &_s9Coherence9CRKeyPathVSgMd);
    if (v30(&v7[v29], 1, v3) != 1)
    {
      v33 = v44;
      v34 = &v7[v29];
      v35 = v39;
      (*(v44 + 32))(v39, v34, v3);
      _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v33 + 8);
      v36(v35, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence9CRKeyPathVSgMd);
      v36(v40, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd);
      return v31 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence9CRKeyPathVSgMd);
    (*(v44 + 8))(v32, v3);
    goto LABEL_9;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence9CRKeyPathVSgMd);
  if (v30(&v7[v29], 1, v3) != 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSg_ADtMd);
    v31 = 0;
    return v31 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd);
  v31 = 1;
  return v31 & 1;
}

void *CanvasViewSelectionInteractionDelegate.activeWidget.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(v3 + 168))(ObjectType, v3);

    if (v6)
    {
      v7 = OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets;
      swift_beginAccess();
      v8 = *&v6[v7];

      if (v8 >> 62)
      {
        goto LABEL_18;
      }

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);

      v9 = v8;
      while (1)
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          break;
        }

        while (1)
        {
          v11 = 0;
          v12 = v9 & 0xC000000000000001;
          v13 = v9 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v12)
            {
              v14 = MEMORY[0x1DA6CE0C0](v11, v8);
            }

            else
            {
              if (v11 >= *(v13 + 16))
              {
                goto LABEL_17;
              }

              v14 = *(v8 + 8 * v11 + 32);
            }

            v15 = v14;
            v16 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            v17 = [v14 uiControl];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextView);
            if (swift_dynamicCast())
            {

              return v15;
            }

            ++v11;
            if (v16 == v10)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);

          v9 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
          v8 = v9;
          if (!(v9 >> 62))
          {
            break;
          }

          v10 = __CocoaSet.count.getter();
          if (!v10)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_20:
    }
  }

  return 0;
}

id CanvasViewSelectionInteractionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleLassoSelection:strokes:inAttachment:)(void *a1, void (*a2)(char *, char *, uint64_t))
{
  v5 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v77 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v93 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v77 - v15;
  v108 = type metadata accessor for CGPathFillRule();
  v16 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v77 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v91 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v77 - v22;
  v116 = &type metadata for PencilAndPaperFeatureFlags;
  v117 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v114) = 0;
  LODWORD(v23) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v114);
  if (v23)
  {
    v95 = v11;
    if (a1)
    {
      v24 = [a1 CGPath];
      if (v24)
      {
        v25 = v24;
        v87 = v7;
        v26 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v111 = v16;
          v28 = *(v26 + 8);
          v29 = Strong;
          ObjectType = swift_getObjectType();
          v31 = *(v28 + 72);
          v78 = ObjectType;
          v79 = v28;
          v32 = v31(ObjectType, v28);
          v33 = v32;
          if (v32 >> 62)
          {
            goto LABEL_44;
          }

          v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
          v80 = a1;
          v83 = v29;
          v107 = v25;
          v81 = v23;
          v82 = a2;
          v25 = MEMORY[0x1E69E7D40];
          if (v34)
          {
            v35 = 0;
            v105 = v33 & 0xFFFFFFFFFFFFFF8;
            v106 = v33 & 0xC000000000000001;
            v103 = *MEMORY[0x1E695EEB8];
            v102 = (v111 + 104);
            v101 = *MEMORY[0x1E695EEB0];
            v100 = (v111 + 8);
            v90 = (v12 + 48);
            v86 = (v12 + 32);
            v85 = (v12 + 16);
            v84 = (v12 + 8);
            v89 = (v94 + 32);
            v96 = MEMORY[0x1E69E7CC0];
            v104 = v33;
            v99 = v34;
            v88 = v10;
            while (1)
            {
              if (v106)
              {
                v37 = MEMORY[0x1DA6CE0C0](v35, v33);
              }

              else
              {
                if (v35 >= *(v105 + 16))
                {
                  goto LABEL_43;
                }

                v37 = *(v33 + 8 * v35 + 32);
              }

              a2 = v37;
              if (__OFADD__(v35, 1))
              {
                __break(1u);
LABEL_43:
                __break(1u);
LABEL_44:
                v34 = __CocoaSet.count.getter();
                goto LABEL_7;
              }

              v111 = v35 + 1;
              v23 = v25;
              v38 = (*((*v25 & *v37) + 0x1A8))();
              v39 = *v102;
              v41 = v108;
              v40 = v109;
              (*v102)(v109, v103, v108);
              v42 = v110;
              v39(v110, v101, v41);
              _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule, MEMORY[0x1E695EEC8]);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              a1 = v100;
              v10 = *v100;
              (*v100)(v42, v41);
              v29 = CGPathIntersectsPath(v38, v107, v114 == v112);

              v43 = (v10)(v40, v41);
              if (v29)
              {
                v10 = v88;
                v29 = a2;
                (*((*v23 & *a2) + 0xF0))(v43);
                v44 = v95;
                v45 = (*v90)(v10, 1, v95);
                v36 = v99;
                if (v45 != 1)
                {
                  a1 = v92;
                  (*v86)(v92, v10, v44);
                  v23 = v93;
                  (*v85)(v93, a1, v44);
                  WeakTagged_10.tag.getter();
                  v112 = v114;
                  v113 = v115;
                  MEMORY[0x1DA6CB7A0](v44);
                  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
                  v46 = v91;
                  WeakTagged_10.init(_:id:)();

                  v47 = *v84;
                  (*v84)(v23, v44);
                  v47(a1, v44);
                  a2 = *v89;
                  (*v89)(v97, v46, v98);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
                  }

                  v49 = *(v96 + 2);
                  v48 = *(v96 + 3);
                  v29 = v49 + 1;
                  v33 = v104;
                  v12 = v111;
                  if (v49 >= v48 >> 1)
                  {
                    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v96);
                  }

                  v50 = v96;
                  *(v96 + 2) = v29;
                  a2(&v50[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v49], v97, v98);
                  v25 = MEMORY[0x1E69E7D40];
                  goto LABEL_11;
                }

                v25 = v23;

                outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
                v33 = v104;
              }

              else
              {

                v25 = v23;
                v33 = v104;
                v36 = v99;
              }

              v12 = v111;
LABEL_11:
              ++v35;
              if (v12 == v36)
              {
                goto LABEL_30;
              }
            }
          }

          v96 = MEMORY[0x1E69E7CC0];
LABEL_30:

          v57 = v79;
          v58 = *(v79 + 16);
          v59 = v80;
          v60 = v83;
          v61 = v58(v78, v57);
          v53 = v107;
          if (v61)
          {
            v62 = v61;
            v63 = *(v61 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate);
            v64 = v82;
            LOBYTE(v23) = v81;
            if (v63 && (v65 = *(v63 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController)) != 0)
            {
              type metadata accessor for UUID();
              _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
              v66 = v65;
              isa = Set._bridgeToObjectiveC()().super.isa;
              v68 = v25;
              v69 = [v66 adjustedSelectedStrokes:isa selectionPath:v59];

              v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
              v25 = v68;
            }

            else
            {
            }

            v60 = v83;
          }

          else
          {

            v64 = v82;

            LOBYTE(v23) = v81;
          }

          v70 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v96);

          v71 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_9Coherence7WeakRefVyAJ10CRRegisterVy8PaperKit12TaggedStrokeOGGs5NeverOTg503_s8j76Kit13CanvasMembersV14canvasElements11strokeUUIDsACx_q_tcSTRzSTR_9Coherence13gl11_10VyAA0kC7b43VG0L0Rtz10Foundation4UUIDVALRt_r0_lufcAF0J3h6VyAF10i7VyAA0K6M10OGGAPXEfU_Tf1cn_n(v64);

          v72 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v71);

          v74 = (*((*v25 & *v60) + 0x90))(v73);
          if (v74)
          {
            v75 = v74;
            AnyCanvas.selection.setter(v70, v72, 6, 0);
          }

          else
          {
          }

          goto LABEL_40;
        }
      }
    }

    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      v53 = (*((*MEMORY[0x1E69E7D40] & *v51) + 0x90))();

      if (v53)
      {

        v54 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v55 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_9Coherence7WeakRefVyAJ10CRRegisterVy8PaperKit12TaggedStrokeOGGs5NeverOTg503_s8j76Kit13CanvasMembersV14canvasElements11strokeUUIDsACx_q_tcSTRzSTR_9Coherence13gl11_10VyAA0kC7b43VG0L0Rtz10Foundation4UUIDVALRt_r0_lufcAF0J3h6VyAF10i7VyAA0K6M10OGGAPXEfU_Tf1cn_n(a2);

        v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v55);

        AnyCanvas.selection.setter(v54, v56, 6, 0);
LABEL_40:
      }
    }
  }

  return v23 & 1;
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v74 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v76 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v63 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v75 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v79 = &v63 - v25;
  v26 = v4 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v65 = v21;
    v64 = v26;
    v29 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    v31 = (*(v29 + 72))(ObjectType, v29);

    if (v31 >> 62)
    {
      goto LABEL_23;
    }

    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v76; v32; i = v76)
    {
      v34 = 0;
      v82 = v31 & 0xFFFFFFFFFFFFFF8;
      v83 = v31 & 0xC000000000000001;
      v78 = (v16 + 48);
      v68 = (v16 + 32);
      v67 = (v16 + 16);
      v66 = (v16 + 8);
      v77 = (v75 + 32);
      v81 = MEMORY[0x1E69E7CC0];
      v35 = MEMORY[0x1E69E7D40];
      v70 = v31;
      v69 = v32;
      while (1)
      {
        if (v83)
        {
          v36 = MEMORY[0x1DA6CE0C0](v34, v31);
        }

        else
        {
          if (v34 >= *(v82 + 16))
          {
            goto LABEL_22;
          }

          v36 = *(v31 + 8 * v34 + 32);
        }

        v16 = v36;
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v38 = (*((*v35 & *v36) + 0x1A8))();
        v39 = CGPathIntersectsRect();

        if (v39)
        {
          (*((*v35 & *v16) + 0xF0))();
          if ((*v78)(i, 1, v15) == 1)
          {

            outlined destroy of StocksKitCurrencyCache.Provider?(i, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          }

          else
          {
            v40 = v72;
            (*v68)(v72, i, v15);
            v41 = v73;
            (*v67)(v73, v40, v15);
            WeakTagged_10.tag.getter();
            v84 = v86;
            v85 = v87;
            MEMORY[0x1DA6CB7A0](v15);
            lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
            v42 = v71;
            WeakTagged_10.init(_:id:)();

            v43 = *v66;
            (*v66)(v41, v15);
            v44 = v79;
            v43(v40, v15);
            v16 = *v77;
            (*v77)(v44, v42, v80);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
            }

            v46 = *(v81 + 2);
            v45 = *(v81 + 3);
            i = v76;
            v31 = v70;
            v32 = v69;
            if (v46 >= v45 >> 1)
            {
              v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v81);
            }

            v47 = v80;
            v48 = v81;
            *(v81 + 2) = v46 + 1;
            v16(&v48[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v46], v79, v47);
            v35 = MEMORY[0x1E69E7D40];
          }
        }

        else
        {
        }

        ++v34;
        if (v37 == v32)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v32 = __CocoaSet.count.getter();
    }

    v81 = MEMORY[0x1E69E7CC0];
LABEL_25:

    v21 = v65;
    v49 = v81;
    v26 = v64;
  }

  else
  {
    v49 = 0;
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = *(v26 + 8);
    v52 = v50;
    v53 = swift_getObjectType();
    v54 = (*(v51 + 168))(v53, v51);

    if (v54)
    {
      v88.origin.x = a1;
      v88.origin.y = a2;
      v88.size.width = a3;
      v88.size.height = a4;
      MidX = CGRectGetMidX(v88);
      v89.origin.x = a1;
      v89.origin.y = a2;
      v89.size.width = a3;
      v89.size.height = a4;
      MidY = CGRectGetMidY(v89);
      v57 = FormFillingView.widget(at:)(MidX, MidY);

      if (v57)
      {
        if (!v49)
        {

          return 0;
        }

        LOBYTE(v86) = 8;
        v58 = [v57 pdfAnnotationUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        CRKeyPath.init(_:)();
        lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
        WeakTagged_10.init(_:id:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        }

        v60 = v49[2];
        v59 = v49[3];
        if (v60 >= v59 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1, v49);
        }

        v49[2] = v60 + 1;
        (*(v75 + 32))(v49 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v60, v21, v80);
      }
    }
  }

  if (v49)
  {
    v61 = specialized _arrayForceCast<A, B>(_:)(v49);

    return v61;
  }

  return 0;
}

void *specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(void *a1)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v46 - v12;
  v70 = type metadata accessor for CGPathFillRule();
  v13 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v46 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v54 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v50 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v60 = &v46 - v20;
  v21 = [a1 CGPath];
  v22 = v1 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    v26 = (*(v24 + 72))(ObjectType, v24);

    v73 = v26;
    if (v26 >> 62)
    {
      goto LABEL_24;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v21; v27; i = v21)
    {
      v58 = v8;
      v59 = v7;
      v21 = 0;
      v69 = v73 & 0xC000000000000001;
      v68 = v73 & 0xFFFFFFFFFFFFFF8;
      v66 = *MEMORY[0x1E695EEB8];
      v65 = (v13 + 104);
      v64 = *MEMORY[0x1E695EEB0];
      v63 = (v13 + 8);
      v57 = (v9 + 48);
      v49 = (v9 + 32);
      v48 = (v9 + 16);
      v47 = (v9 + 8);
      v56 = (v54 + 32);
      v62 = MEMORY[0x1E69E7CC0];
      v28 = MEMORY[0x1E69E7D40];
      v7 = v55;
      v67 = v27;
      v29 = v70;
      while (1)
      {
        if (v69)
        {
          v31 = MEMORY[0x1DA6CE0C0](v21, v73);
        }

        else
        {
          if (v21 >= *(v68 + 16))
          {
            goto LABEL_23;
          }

          v31 = *(v73 + 8 * v21 + 32);
        }

        v13 = v31;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v74 = (v21 + 1);
        v32 = (*((*v28 & *v31) + 0x1A8))();
        v33 = *v65;
        (*v65)(v7, v66, v29);
        v34 = v71;
        v33(v71, v64, v29);
        _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule, MEMORY[0x1E695EEC8]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v8 = v63;
        v9 = *v63;
        (*v63)(v34, v29);
        LODWORD(v33) = CGPathIntersectsPath(v32, i, v77 == v75);

        v35 = v9(v7, v29);
        if (v33)
        {
          v36 = v59;
          (*((*v28 & *v13) + 0xF0))(v35);
          v9 = v58;
          if ((*v57)(v36, 1, v58) != 1)
          {
            v37 = v51;
            (*v49)(v51, v36, v9);
            v38 = v52;
            (*v48)(v52, v37, v9);
            WeakTagged_10.tag.getter();
            v75 = v77;
            v76 = v78;
            MEMORY[0x1DA6CB7A0](v9);
            lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
            v8 = v50;
            WeakTagged_10.init(_:id:)();

            v39 = *v47;
            (*v47)(v38, v9);
            v39(v37, v9);
            v40 = *v56;
            (*v56)(v60, v8, v61);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = v74;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
            }

            v13 = *(v62 + 2);
            v42 = *(v62 + 3);
            v7 = v55;
            v28 = MEMORY[0x1E69E7D40];
            if (v13 >= v42 >> 1)
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v13 + 1, 1, v62);
            }

            v43 = v61;
            v44 = v62;
            *(v62 + 2) = v13 + 1;
            v40(&v44[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v13], v60, v43);
            goto LABEL_7;
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
        }

        else
        {
        }

        v30 = v74;
LABEL_7:
        ++v21;
        if (v30 == v67)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v27 = __CocoaSet.count.getter();
    }

    v62 = MEMORY[0x1E69E7CC0];
LABEL_26:

    Strong = specialized _arrayForceCast<A, B>(_:)(v62);
  }

  else
  {
  }

  return Strong;
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didSelectElements:inAttachment:)(void *a1, uint64_t a2)
{
  v62 = &type metadata for PencilAndPaperFeatureFlags;
  v63 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v61[0] = 0;
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v61);
  if ((v4 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

      if (v7)
      {
        v8 = specialized _arrayForceCast<A, B>(_:)(a2);
        v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v8);

        v10 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
        v11 = *(v7 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
        if (v11)
        {
          v8 = v7;
          v13 = *&v11[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
          v12 = *&v11[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
          v14 = *&v11[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
          v15 = v11[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

          swift_bridgeObjectRetain_n();
          v16 = v11;
          v17 = v12;
          CanvasElementResizeView.selection.setter(v9, v12, v14, v15);

          v59 = v8;
          v60 = v10;
          v18 = *(&v8->isa + v10);
          if (v18)
          {
            v58 = a1;
            v19 = v18 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
            v20 = *v19;
            v21 = *(v19 + 8);
            v22 = *(v19 + 16);
            v23 = *(v19 + 24);

            if (_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v13, v20))
            {
              v24 = _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v17, v21);

              if (v24)
              {
                if (v15)
                {
                  if (v23)
                  {
LABEL_31:

                    v33 = v58;
                    v26 = v8;
                    v29 = v60;
LABEL_41:
                    v53 = *(&v26->isa + v29);
                    if (v53)
                    {
                      v54 = v53 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
                      if (!*(*v54 + 16) && !*(*(v54 + 8) + 16) && *(v54 + 24) == 0)
                      {
                        goto LABEL_52;
                      }

                      if ([v33 currentSelectionHasStrokes])
                      {
                        v56 = 2;
LABEL_51:
                        type metadata accessor for Analytics();
                        swift_initStaticObject();
                        Analytics.recordDidMakeSelection(type:contentType:)(1, v56);
LABEL_52:

                        return;
                      }

                      v57 = *(&v26->isa + v29);
                      if (v57)
                      {
                        v56 = *(*(v57 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16) > 1uLL;
                        goto LABEL_51;
                      }

LABEL_61:
                      __break(1u);
                      return;
                    }

                    goto LABEL_57;
                  }
                }

                else
                {
                  if (v14 == v22)
                  {
                    v46 = v23;
                  }

                  else
                  {
                    v46 = 1;
                  }

                  if ((v46 & 1) == 0)
                  {
                    goto LABEL_31;
                  }
                }
              }
            }

            else
            {
            }

            if (one-time initialization token for miniMenuLogger != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            __swift_project_value_buffer(v25, miniMenuLogger);
            v26 = v8;
            v8 = v8;
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.default.getter();
            v29 = v60;
            if (os_log_type_enabled(v27, v28))
            {
              v30 = swift_slowAlloc();
              *v30 = 134217984;
              v31 = *(&v59->isa + v60);
              if (!v31)
              {
LABEL_59:

                __break(1u);
                goto LABEL_60;
              }

              *(v30 + 4) = *(*(v31 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
              v32 = v30;

              _os_log_impl(&dword_1D38C4000, v27, v28, "Changing selection to have %ld elements", v32, 0xCu);
              MEMORY[0x1DA6D0660](v32, -1, -1);
            }

            else
            {

              v27 = v8;
            }

            v33 = v58;

            MEMORY[0x1EEE9AC00](v34);
            AnyCanvas.updateCanvasState(_:)();
            if ([v8 isFirstResponder])
            {

              v36 = MEMORY[0x1E69E7D40];
LABEL_34:
              v47 = *(&v8->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
              if (v47)
              {
                v48 = v47;
                HandwritingReflowView.updateForNewSelection()();
              }

              v49 = (*((*v36 & v8->isa) + 0x520))(v35);
              v50 = *(&v59->isa + v60);
              if (!v50)
              {
                goto LABEL_58;
              }

              v51 = v50 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
              if (!*(*v51 + 16) && !*(*(v51 + 8) + 16) && (*(v51 + 24) & 1) == 0)
              {
                v52 = (*((*v36 & v8->isa) + 0x468))(v49);
                [v52 _clearSelectionIfNecessary];
              }

              goto LABEL_41;
            }

            v37 = *(&v59->isa + v60);
            if (!v37)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v38 = v37;

            v39 = CanvasElementResizeView.resizingCanvasElements.getter();

            if (v39 >> 62)
            {
              v40 = __CocoaSet.count.getter();
            }

            else
            {
              v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v36 = MEMORY[0x1E69E7D40];

            if (!v40)
            {
              goto LABEL_34;
            }

            v41 = [v8 window];
            if (v41)
            {
              v42 = v41;
              v43 = [objc_opt_self() activeToolPickerForWindow_];
              if (v43)
              {
                v44 = v43;
                v45 = [v43 _visibilityUpdatesEnabled];
                [v44 _setVisibilityUpdatesEnabled_];
                [v8 becomeFirstResponder];
                v36 = MEMORY[0x1E69E7D40];
                [v44 _setVisibilityUpdatesEnabled_];

                goto LABEL_34;
              }
            }

            v35 = [v8 becomeFirstResponder];
            goto LABEL_34;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  return closure #1 in closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDragElements:with:inAttachment:)(uint64_t a1, double *a2)
{
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - v11;
  *&v75.d = &type metadata for PencilAndPaperFeatureFlags;
  *&v75.tx = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v75.a) = 0;
  v13 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v75);
  if (v13)
  {
    return;
  }

  v14 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v73 = a1;
  v74 = v10;
  v17 = *(v14 + 8);
  ObjectType = swift_getObjectType();
  v19 = (*(v17 + 40))(ObjectType, v17);

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20 || (v21 = v20, v22 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x90))(), v21, !v22))
  {

    return;
  }

  v66 = v6;
  v71 = v19;
  v67 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v23 = *(v22 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v23)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v24 = *&v23[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle];
  *&v23[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle] = 1;
  v25 = v23;
  outlined consume of ResizeView.ActiveHandle(v24);

  v26 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x450);
  v68 = v22;
  v27 = v26();
  v28 = 1.0;
  v29 = 1.0;
  v30 = v74;
  if (v27)
  {
    v31 = v27;
    [v27 zoomScale];
    v29 = v32;
  }

  v33 = a2[4];
  v34 = v26();
  if (v34)
  {
    v35 = v34;
    [v34 zoomScale];
    v28 = v36;
  }

  v37 = a2[5];
  v38 = specialized _arrayForceCast<A, B>(_:)(v73);
  v39 = *(v38 + 16);
  v40 = v71;
  if (v39)
  {
    v41 = v33 / v29;
    v42 = *(a2 + 1);
    v69 = *a2;
    v70 = v42;
    v44 = v30[2];
    v43 = (v30 + 2);
    v74 = v44;
    v45 = (v43[64] + 32) & ~v43[64];
    v65 = v38;
    v46 = v38 + v45;
    v47 = *(v43 + 7);
    v72 = (v43 - 8);
    v73 = v47;
    v48 = (v66 + 8);
    v49 = v37 / v28;
    (v44)(v12, v38 + v45, v9);
    while (1)
    {
      MEMORY[0x1DA6CB5C0](v9);
      (*v72)(v12, v9);
      if (*(v40 + 16) && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v51 & 1) != 0))
      {
        v52 = *(*(v40 + 56) + 8 * v50);
        v53 = v43;
        v54 = *v48;
        v55 = v52;
        v56 = (v54)(v8, v5);
        v43 = v53;
        v57 = MEMORY[0x1E69E7D40];
        v58 = (*((*MEMORY[0x1E69E7D40] & *v55) + 0x1C0))(v56);
        v76.origin.x = (*((*v57 & *v55) + 0x168))(v58);
        *&v75.c = v70;
        *&v75.a = v69;
        v75.tx = v41;
        v75.ty = v49;
        v77 = CGRectApplyAffineTransform(v76, &v75);
        v59 = *v57;
        v40 = v71;
        (*((v59 & *v55) + 0x178))(v77.origin, *&v77.origin.y, v77.size, *&v77.size.height);
      }

      else
      {
        (*v48)(v8, v5);
      }

      v46 += v73;
      if (!--v39)
      {
        break;
      }

      (v74)(v12, v46, v9);
    }
  }

  v61 = v68;
  v62 = *(v68 + v67);
  if (!v62)
  {
    goto LABEL_29;
  }

  v63 = v62 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  if (*(*v63 + 16) || (!*(*(v63 + 8) + 16) ? (v64 = *(v63 + 24) == 0) : (v64 = 0), !v64))
  {
    (*((*MEMORY[0x1E69E7D40] & *v68) + 0x460))(v60);
  }
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didEndDraggingElements:inAttachment:)(uint64_t a1)
{
  v46 = type metadata accessor for CRKeyPath();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v50 = &type metadata for PencilAndPaperFeatureFlags;
  v51 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v49[0] = 0;
  v10 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v49);
  if ((v10 & 1) == 0)
  {
    v11 = v1 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 40))(ObjectType, v14);

      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = v17;
      v19 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x90))();

      if (!v19)
      {
        goto LABEL_29;
      }

      v45 = v7;
      v20 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
      v21 = *(v19 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (!v21)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v22 = *&v21[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle];
      *&v21[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle] = 0;
      v23 = v21;
      outlined consume of ResizeView.ActiveHandle(v22);

      v44 = v19;
      v24 = *(v19 + v20);
      if (!v24)
      {
LABEL_33:
        __break(1u);
        return;
      }

      [v24 layoutSubviews];
      v25 = *(a1 + 16);
      if (!v25)
      {

        return;
      }

      v26 = v3;
      v27 = MEMORY[0x1E69E7CC0];
      v48 = MEMORY[0x1E69E7CC0];
      v28 = a1 + 32;
      v29 = (v45 + 8);
      v30 = (v26 + 8);
      do
      {
        outlined init with copy of Any(v28, v49);
        outlined init with copy of Any(v49, v47);
        swift_dynamicCast();
        MEMORY[0x1DA6CB5C0](v6);
        (*v29)(v9, v6);
        if (*(v16 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v32 & 1) != 0))
        {
          v33 = *v30;
          v34 = *(*(v16 + 56) + 8 * v31);
          v33(v5, v46);
          v35 = __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x1DA6CD190](v35);
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v45 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v27 = v48;
        }

        else
        {
          (*v30)(v5, v46);
          __swift_destroy_boxed_opaque_existential_0(v49);
        }

        v28 += 32;
        --v25;
      }

      while (v25);

      v36 = v44;
      v37 = MEMORY[0x1E69E7D40];
      v38 = v27;
      if ((*((*MEMORY[0x1E69E7D40] & *v44) + 0x788))(v27, 1))
      {
        specialized AnyCanvas.undoableEndLiveEdits<A>(for:)(v27);

        return;
      }

      if (v27 >> 62)
      {
        v39 = __CocoaSet.count.getter();
        if (v39)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v39 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
LABEL_21:
          if (v39 >= 1)
          {
            for (i = 0; i != v39; ++i)
            {
              if ((v38 & 0xC000000000000001) != 0)
              {
                v41 = MEMORY[0x1DA6CE0C0](i, v38);
              }

              else
              {
                v41 = *(v38 + 8 * i + 32);
              }

              v42 = v41;
              (*((*v37 & *v41) + 0x1C8))(0, 1);
            }

            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_32;
        }
      }

LABEL_28:

LABEL_29:
    }
  }
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didClearSelectionForElements:inAttachment:)()
{
  v11 = &type metadata for PencilAndPaperFeatureFlags;
  v12 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v10[0] = 0;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if ((v0 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

      if (v3)
      {
        AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
        v4 = CanvasViewSelectionInteractionDelegate.activeWidget.getter();
        if (v4)
        {

          v5 = [v3 window];
          if (v5)
          {
            v6 = v5;
            v7 = [objc_opt_self() activeToolPickerForWindow_];
            if (v7)
            {
              v8 = v7;
              v9 = [v7 _visibilityUpdatesEnabled];
              [v8 _setVisibilityUpdatesEnabled_];
              [v3 becomeFirstResponder];
              [v8 _setVisibilityUpdatesEnabled_];

              goto LABEL_10;
            }
          }

          [v3 becomeFirstResponder];
        }

LABEL_10:
      }
    }
  }
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:clearSelectionInAttachment:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

  if (!v8)
  {
    return;
  }

  AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  v2 = CanvasViewSelectionInteractionDelegate.activeWidget.getter();
  if (v2)
  {

    v3 = [v8 window];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() activeToolPickerForWindow_];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 _visibilityUpdatesEnabled];
        [v6 _setVisibilityUpdatesEnabled_];
        [v8 becomeFirstResponder];
        [v6 _setVisibilityUpdatesEnabled_];

        goto LABEL_10;
      }
    }

    [v8 becomeFirstResponder];
  }

LABEL_10:
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:canPerformAction:withSender:inAttachment:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 64))(ObjectType, v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v8 = Strong;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = AnyCanvas.acceptedDropLayouts.getter();

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = v12, v14 = (*((*v9 & *v12) + 0x90))(), v13, !v14))
  {

    goto LABEL_26;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {

    if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
    {

      if (*(v14 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
      {

        v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v27);

        v29 = *(v28 + 16);

        return v29 != 0;
      }

      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

LABEL_35:
    result = static Selector.== infix(_:_:)();
    if ((result & 1) == 0)
    {

      v33 = static Selector.== infix(_:_:)();

      return v33 & 1;
    }

    if (!*(v14 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
    {
      goto LABEL_54;
    }

    v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v30);

    v32 = *(v31 + 16);

    if (!v32)
    {
      if (v6 >> 62)
      {
        v34 = __CocoaSet.count.getter();
      }

      else
      {
        v34 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_50;
    }

LABEL_26:

    return 0;
  }

  v15 = [objc_opt_self() generalPasteboard];
  v16 = [v15 itemProviders];

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    goto LABEL_45;
  }

  v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = v14;
  v36 = v17;
  if (!v6)
  {
LABEL_46:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  while (1)
  {
    v14 = 0;
    v38 = v17 & 0xFFFFFFFFFFFFFF8;
    v39 = v17 & 0xC000000000000001;
    v37 = v17 + 32;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_12:
    if (v39)
    {
      v19 = MEMORY[0x1DA6CE0C0](v14, v36);
    }

    else
    {
      if (v14 >= *(v38 + 16))
      {
        goto LABEL_44;
      }

      v19 = *(v37 + 8 * v14);
    }

    v20 = v19;
    if (!__OFADD__(v14++, 1))
    {
      break;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v6 = __CocoaSet.count.getter();
    v35 = v14;
    v36 = v17;
    if (!v6)
    {
      goto LABEL_46;
    }
  }

  v22 = -*(v11 + 16);
  v17 = -1;
  v23 = v11 + 40;
  do
  {
    if (v22 + v17 == -1)
    {

      if (v14 == v6)
      {
        goto LABEL_47;
      }

      goto LABEL_12;
    }

    if (++v17 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v24 = v23 + 16;
    v25 = (*(*v23 + 32))(v20);
    v23 = v24;
  }

  while ((v25 & 1) == 0);
  MEMORY[0x1DA6CD190](v25, v26);
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = v40;
  if (v14 != v6)
  {
    goto LABEL_12;
  }

LABEL_47:

  if (v18 >> 62)
  {
    v34 = __CocoaSet.count.getter();
  }

  else
  {
    v34 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_50:

  return v34 != 0;
}

void *specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:pasteboardRepresentationsForElements:strokes:inAttachment:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = result;
    v7 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x90))();

    if (v7)
    {
      if (*(a1 + 16) || *(a2 + 16))
      {
        v8 = specialized _arrayForceCast<A, B>(_:)(a1);

        v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v8);

        v10 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_9Coherence7WeakRefVyAJ10CRRegisterVy8PaperKit12TaggedStrokeOGGs5NeverOTg503_s8j76Kit13CanvasMembersV14canvasElements11strokeUUIDsACx_q_tcSTRzSTR_9Coherence13gl11_10VyAA0kC7b43VG0L0Rtz10Foundation4UUIDVALRt_r0_lufcAF0J3h6VyAF10i7VyAA0K6M10OGGAPXEfU_Tf1cn_n(a2);

        v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v10);

        v12 = (*((*v5 & *v7) + 0x8F0))(v9, v11, 6, 0);

        if (v12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_1D4058CF0;
          *(v13 + 32) = v12;

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteractionDidPaste(_:at:in:)(double y, double x)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SS3utitSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(v15 + 8);
    v69 = Strong;
    ObjectType = swift_getObjectType();
    v70 = (*((*MEMORY[0x1E69E7D40] & *v69) + 0x90))();
    if (v70)
    {
      v66 = ObjectType;
      v67 = v17;
      v68 = v12;
      v19 = objc_opt_self();
      v20 = [v19 generalPasteboard];
      v21 = [v20 items];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      Array<A>.pasteboardPaperKitURL.getter(v22, v7);

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SS3utitMd);
      if ((*(*(v23 - 8) + 48))(v7, 1, v23) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation3URLV3url_SS3utitSgMd);
        v24 = [v19 generalPasteboard];
        v25 = [v24 items];

        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = MEMORY[0x1E69E7CC0];
        *&v71.a = MEMORY[0x1E69E7CC0];
        v28 = *(v26 + 16);
        v29 = v19;
        if (v28)
        {
          v30 = 0;
          do
          {
            if (v30 >= *(v26 + 16))
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v31 = v30 + 1;

            specialized Array.append<A>(contentsOf:)(v32);
            v30 = v31;
          }

          while (v28 != v31);
          v27 = *&v71.a;
        }

        v71.a = -2.31584178e77;
        *&v71.b = 0x80000001D40813A0;
        MEMORY[0x1EEE9AC00](v33);
        *(&v65 - 2) = &v71;
        v34 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v65 - 4), v27);

        if (v34)
        {

          return;
        }

        v43 = v70;
        v44 = (*((*MEMORY[0x1E69E7D40] & *v70) + 0x440))(v35);
        [v44 convertPoint:v43 fromCoordinateSpace:{y, x}];
        x = v45;
        y = v46;

        v47 = [v29 &selRef_topItem + 2];
        v48 = [v47 itemProviders];

        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider);
        v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = v49;
        if (v49 >> 62)
        {
          goto LABEL_37;
        }

        for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v51 = 0;
          v52 = v68 & 0xC000000000000001;
          v66 = v68 + 32;
          v67 = v68 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
          while (2)
          {
            if (v52)
            {
              v53 = MEMORY[0x1DA6CE0C0](v51, v68);
            }

            else
            {
              if (v51 >= *(v67 + 16))
              {
                goto LABEL_36;
              }

              v53 = *(v66 + 8 * v51);
            }

            v54 = v53;
            if (!__OFADD__(v51++, 1))
            {
              v56 = AnyCanvas.acceptedDropLayouts.getter();
              v57 = (v56 + 40);
              v58 = -*(v56 + 16);
              v59 = -1;
              do
              {
                if (v58 + v59 == -1)
                {

                  if (v51 == i)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_19;
                }

                if (++v59 >= *(v56 + 16))
                {
                  __break(1u);
                  goto LABEL_34;
                }

                v60 = v57 + 2;
                v61 = *(v57 - 1);
                v62 = *v57;
                v63 = (*(*v57 + 32))(v54, v61, *v57);
                v57 = v60;
              }

              while ((v63 & 1) == 0);

              if ((*(v62 + 16))(v54, v70, 0, v61, v62, x, y, 240.0, 240.0, 0.0))
              {
                CGAffineTransformMakeTranslation(&v71, 20.0, 20.0);
                v73.x = x;
                v73.y = y;
                v64 = CGPointApplyAffineTransform(v73, &v71);
                x = v64.x;
                y = v64.y;
              }

              if (v51 != i)
              {
                continue;
              }

              goto LABEL_31;
            }

            break;
          }

LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          ;
        }

LABEL_31:
      }

      else
      {
        v37 = &v7[*(v23 + 48)];
        v38 = *v37;
        v65 = *(v37 + 1);
        v39 = &v10[*(v8 + 48)];
        v40 = v68;
        v41 = *(v68 + 32);
        v41(v10, v7, v11);
        v42 = v65;
        *v39 = v38;
        *(v39 + 1) = v42;

        v41(v14, v10, v11);
        (*(v67 + 136))(v14, 0, 0, 0, 1, v66);

        (*(v40 + 8))(v14, v11);
      }
    }

    else
    {
      v36 = v69;
    }
  }
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDuplicateElements:inAttachment:)(uint64_t a1)
{
  v15 = &type metadata for PencilAndPaperFeatureFlags;
  v16 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v14[0] = 0;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v14);
  if (v3)
  {
    return 0;
  }

  v5 = v1 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = specialized _arrayForceCast<A, B>(_:)(a1);
    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v9);

    v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v12 = (*(v7 + 120))(v10, v11, 6, 0, 0, 0, 1, ObjectType, v7);

    v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_yps5NeverOTg503_s8g5Kit38i107ViewSelectionInteractionDelegateC09selectionF0_20didDuplicateElements12inAttachmentSayypGSgSo011PKSelectionr40C_AGSo012PKAttachmentD0CtFyp9Coherence13ef11_10VyAA0rC7B7VGXEfU_Tf1cn_n(v12);

    return v13;
  }

  return result;
}

char *specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:elementsForSpaceInsertedAt:inAttachment:)(CGFloat a1, CGFloat a2)
{
  v5 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v47 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v15 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v47 - v16;
  v17 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v19 = Strong;
  v20 = *(v17 + 8);
  ObjectType = swift_getObjectType();
  v22 = MEMORY[0x1E69E7D40];
  v23 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x90))();
  if (!v23)
  {

    return 0;
  }

  v48 = v19;
  v24 = *((*v22 & *v23) + 0x450);
  v47 = v23;
  v25 = v24();
  v26 = 1.0;
  if (v25)
  {
    v27 = v25;
    [v25 zoomScale];
    v26 = v28;
  }

  (*((*v22 & *v47) + 0x858))(&v70);
  v29 = sqrt(vaddvq_f64(vmulq_f64(v70, v70)));
  if (v71)
  {
    v29 = 1.0;
  }

  CGAffineTransformMakeScale(&v69, v26 * v29, v26 * v29);
  v72.x = a1;
  v72.y = a2;
  v30 = CGPointApplyAffineTransform(v72, &v69);
  v31 = (*(v20 + 64))(ObjectType, v20, v30.x);
  v32 = v31;
  if (v31 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v63 = v10;
    v34 = 0;
    v35 = v32 & 0xC000000000000001;
    v36 = v32 & 0xFFFFFFFFFFFFFF8;
    v61 = (v11 + 48);
    v52 = (v11 + 32);
    v51 = (v11 + 16);
    v50 = (v11 + 8);
    v49 = (v15 + 32);
    v11 = MEMORY[0x1E69E7CC0];
    v55 = v9;
    v54 = v32;
    v53 = i;
    v62 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v35)
      {
        v37 = MEMORY[0x1DA6CE0C0](v34, v32);
      }

      else
      {
        if (v34 >= *(v36 + 16))
        {
          goto LABEL_29;
        }

        v37 = *(v32 + 8 * v34 + 32);
      }

      v15 = v37;
      v10 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      [v37 frame];
      if (v30.y >= CGRectGetMidY(v73))
      {
      }

      else
      {
        v64 = v11;
        (*((*v22 & *v15) + 0xF0))();
        v38 = v63;
        if ((*v61)(v9, 1, v63) == 1)
        {

          outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          v11 = v64;
        }

        else
        {
          v39 = v58;
          (*v52)(v58, v9, v38);
          v40 = v59;
          (*v51)(v59, v39, v38);
          WeakTagged_10.tag.getter();
          a = v69.a;
          b_low = LOBYTE(v69.b);
          MEMORY[0x1DA6CB7A0](v38);
          lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
          v41 = v56;
          WeakTagged_10.init(_:id:)();
          v42 = *v50;
          (*v50)(v40, v38);
          v42(v39, v38);
          v43 = v57;
          v68 = v57;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
          (*v49)(boxed_opaque_existential_1, v41, v43);

          outlined init with take of Any(&v67, &v69);
          v11 = v64;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
          }

          v15 = *(v11 + 2);
          v45 = *(v11 + 3);
          v9 = v55;
          v22 = MEMORY[0x1E69E7D40];
          v32 = v54;
          i = v53;
          if (v15 >= v45 >> 1)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v15 + 1, 1, v11);
          }

          *(v11 + 2) = v15 + 1;
          outlined init with take of Any(&v69, &v11[32 * v15 + 32]);
        }

        v36 = v62;
      }

      ++v34;
      if (v10 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_32:

  return v11;
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:selectionContains:inAttachment:)(CGFloat a1, CGFloat a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x90))();
    if (v7)
    {
      v8 = v7;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v10 = Strong, v11 = (*((*v6 & *Strong) + 0x90))(), v10, !v11) || (v12 = *&v11[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView], v13 = v12, v11, !v12))
      {

        return 0;
      }

      v14 = (*((*v6 & *v8) + 0x450))();
      v15 = 1.0;
      if (v14)
      {
        v16 = v14;
        [v14 zoomScale];
        v15 = v17;
      }

      (*((*v6 & *v8) + 0x858))(v25);
      v18 = sqrt(vaddvq_f64(vmulq_f64(v25[0], v25[0])));
      if (v26)
      {
        v18 = 1.0;
      }

      CGAffineTransformMakeScale(&v24, v15 * v18, v15 * v18);
      v27.x = a1;
      v27.y = a2;
      v19 = CGPointApplyAffineTransform(v27, &v24);
      [*&v13[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] frame];
      if (CGRectContainsPoint(v28, v19))
      {
        v20.value.super.isa = 0;
        ResizeView.hitTestChrome(_:with:)(v21, __PAIR128__(*&a2, *&a1), v20);
        v23 = v22;

        if (!v23)
        {
          return 1;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

char *specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:elementsInAttachment:)()
{
  v1 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v44 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v37 - v10;
  v11 = v0 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v13 = Strong;
  v14 = *(v11 + 8);
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 64))(ObjectType, v14);

  *&v53 = MEMORY[0x1E69E7CC0];
  if (v16 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v18 = MEMORY[0x1E69E7CC0];
    v48 = v5;
    if (!i)
    {
      break;
    }

    v46 = v7;
    v7 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1DA6CE0C0](v7, v16);
      }

      else
      {
        if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v20 = *(v16 + 8 * v7 + 32);
      }

      v21 = v20;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((*((*MEMORY[0x1E69E7D40] & *v20) + 0x1F0))())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v7 = (v7 + 1);
      v19 = v5 == i;
      v5 = v48;
      if (v19)
      {
        v47 = v53;
        v7 = v46;
        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if ((v47 & 0x8000000000000000) == 0 && (v47 & 0x4000000000000000) == 0)
  {
    v23 = *(v47 + 16);
    if (v23)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

  v23 = __CocoaSet.count.getter();
  if (!v23)
  {
LABEL_37:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_21:
  v55 = v18;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v22 = v55;
    v45 = v47 & 0xC000000000000001;
    v46 = v7 + 6;
    v39 = (v7 + 2);
    v40 = (v7 + 4);
    v38 = (v7 + 1);
    v41 = v23;
    do
    {
      if (v45)
      {
        v26 = MEMORY[0x1DA6CE0C0](v25, v47);
      }

      else
      {
        v26 = *(v47 + 8 * v25 + 32);
      }

      v27 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
      (*((*MEMORY[0x1E69E7D40] & *v27) + 0xF0))();
      if ((*v46)(v5, 1, v6) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
        v29 = 1;
      }

      else
      {
        v30 = v42;
        (*v40)(v42, v5, v6);
        v31 = v43;
        (*v39)(v43, v30, v6);
        WeakTagged_10.tag.getter();
        v49 = v51;
        v50 = v52;
        MEMORY[0x1DA6CB7A0](v6);
        lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
        WeakTagged_10.init(_:id:)();
        v32 = *v38;
        (*v38)(v31, v6);
        v33 = v30;
        v23 = v41;
        v32(v33, v6);
        v29 = 0;
      }

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
      (*(*(v34 - 8) + 56))(boxed_opaque_existential_1, v29, 1, v34);

      v55 = v22;
      v36 = *(v22 + 16);
      v35 = *(v22 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v22 = v55;
      }

      ++v25;
      *(v22 + 16) = v36 + 1;
      outlined init with take of Any(&v53, (v22 + 32 * v36 + 32));
      v5 = v48;
    }

    while (v23 != v25);

    return v22;
  }

  __break(1u);
  return result;
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:selectedElementsInAttachment:)()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for CRKeyPath();
  v4 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v65 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v17 = Strong;
    v18 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = (*((*v16 & *v19) + 0x90))();

    if (v21)
    {
      v22 = (*((*v16 & *v21) + 0x468))();

      if (v22)
      {
        type metadata accessor for TiledTextView();
        if (swift_dynamicCastClass())
        {
          v57 = v22;
          v23 = TiledTextView.paperAttachments.getter();
          v24 = v23;
          if (v23 >> 62)
          {
            goto LABEL_51;
          }

          v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v25)
          {
            goto LABEL_52;
          }

          while (1)
          {
            v26 = 0;
            v63 = v24 & 0xFFFFFFFFFFFFFF8;
            v64 = v24 & 0xC000000000000001;
            v61 = v18;
            v62 = v24 + 32;
            v71 = (v4 + 8);
            v72 = v10;
            v75 = (v10 + 8);
            v76 = v10 + 16;
            v60 = v1;
            v73 = v14;
            v77 = v8;
            v59 = v24;
            v58 = v25;
            while (1)
            {
              if (v64)
              {
                v27 = MEMORY[0x1DA6CE0C0](v26, v24);
                v28 = __OFADD__(v26, 1);
                v29 = v26 + 1;
                if (v28)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (v26 >= *(v63 + 16))
                {
                  goto LABEL_50;
                }

                v27 = *(v62 + 8 * v26);
                v28 = __OFADD__(v26, 1);
                v29 = v26 + 1;
                if (v28)
                {
                  goto LABEL_49;
                }
              }

              v69 = v29;
              v68 = v27;
              v30 = *&v27[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
              if (!v30)
              {
                __break(1u);
                goto LABEL_66;
              }

              v31 = *&v30[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
              v4 = MEMORY[0x1E69E7CC0];
              v79 = v31;
              v80 = MEMORY[0x1E69E7CC0];
              v18 = (v31 + 56);
              v32 = 1 << *(v31 + 32);
              if (v32 < 64)
              {
                v33 = ~(-1 << v32);
              }

              else
              {
                v33 = -1;
              }

              v1 = v33 & *(v31 + 56);
              v24 = (v32 + 63) >> 6;
              swift_bridgeObjectRetain_n();
              v78 = v30;
              v34 = 0;
              for (i = v4; v1; v14 = v73)
              {
LABEL_23:
                while (1)
                {
                  v36 = __clz(__rbit64(v1));
                  v1 &= v1 - 1;
                  (*(v10 + 16))(v14, *(v79 + 48) + *(v10 + 72) * (v36 | (v34 << 6)), v9);
                  v37 = swift_unknownObjectWeakLoadStrong();
                  if (v37)
                  {
                    break;
                  }

LABEL_27:
                  (*v75)(v14, v9);
                  if (!v1)
                  {
                    goto LABEL_19;
                  }
                }

                v38 = v37;
                v39 = (*((*MEMORY[0x1E69E7D40] & *v37) + 0x440))();
                v4 = v40;

                ObjectType = swift_getObjectType();
                v42 = v9;
                v43 = ObjectType;
                v44 = v42;
                MEMORY[0x1DA6CB5C0](v42);
                v45 = (*(v4 + 5))(v43, v4);

                v8 = v77;
                if (!*(v45 + 16) || (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v77), (v47 & 1) == 0))
                {

                  (*v71)(v8, v74);
                  v9 = v44;
                  v10 = v72;
                  v14 = v73;
                  goto LABEL_27;
                }

                v4 = v8;
                v8 = *v71;
                i = *(*(v45 + 56) + 8 * v46);
                (v8)(v4, v74);
                v9 = v44;
                (*v75)(v73, v44);

                MEMORY[0x1DA6CD190](v48);
                if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v8 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                i = v80;
                v10 = v72;
              }

LABEL_19:
              v35 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              if (v35 < v24)
              {
                v1 = v18[v35];
                ++v34;
                if (v1)
                {
                  v34 = v35;
                  goto LABEL_23;
                }

                goto LABEL_19;
              }

              if (i >> 62)
              {
                v49 = __CocoaSet.count.getter();
              }

              else
              {
                v49 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v18 = v61;
              v1 = v60;
              v24 = v59;
              v26 = v69;

              if (v49)
              {

                v18 = v68;
                if (!v68)
                {
LABEL_53:
                  v51 = 0;
LABEL_54:
                  v52 = CanvasViewSelectionInteractionDelegate.activeWidget.getter();
                  if (v52)
                  {
                    v53 = v52;
                    if (!v51)
                    {

LABEL_64:
                      return;
                    }

                    LOBYTE(v80) = 8;
                    v54 = [v52 pdfAnnotationUUID];
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    CRKeyPath.init(_:)();
                    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
                    WeakTagged_10.init(_:id:)();
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
                    }

                    v56 = v51[2];
                    v55 = v51[3];
                    if (v56 >= v55 >> 1)
                    {
                      v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1, v51);
                    }

                    v51[2] = v56 + 1;
                    (*(v10 + 32))(v51 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v56, v67, v9);
                  }

                  if (v51)
                  {
                    specialized _arrayForceCast<A, B>(_:)(v51);

                    return;
                  }

                  goto LABEL_64;
                }

                goto LABEL_44;
              }

              if (v26 == v58)
              {
LABEL_52:

                v18 = 0;
                goto LABEL_53;
              }
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            v25 = __CocoaSet.count.getter();
            if (!v25)
            {
              goto LABEL_52;
            }
          }
        }
      }
    }
  }

  if (!v18)
  {
    goto LABEL_53;
  }

LABEL_44:
  if (*(v18 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {

    v51 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_ALs5NeverOTg503_s8g5Kit38i101ViewSelectionInteractionDelegateC09selectionF0_28selectedElementsInAttachmentSayypGSgSo011PKSelectionr36C_So012PKAttachmentD0CtF9Coherence13ef11_10VyAA0qC7B10VGAQXEfU0_Tf1cn_n(v50);

    goto LABEL_54;
  }

LABEL_66:
  __break(1u);
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didSelect:selectionType:inAttachment:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 6)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

        if (v10)
        {

          v6 = _s8PaperKit13CanvasMembersV7strokes19canvasSelectionTypeACx_AA0cgH0OtcSTRz06PencilB08PKStrokeV7ElementRtzlufCSayAJG_Tt1g5(v5, a2, 0);
          AnyCanvas.selection.setter(v6, v8, v9, v7 & 1);
        }
      }
    }
  }
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v24 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v5;
  v17[4] = a3;
  v17[5] = a2;
  v17[6] = a4;
  v17[7] = a5;
  aBlock[4] = partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_89;
  v18 = _Block_copy(aBlock);

  v19 = v5;
  v20 = a3;
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  MEMORY[0x1DA6CD890](0, v16, v13, v18);
  _Block_release(v18);

  (*(v27 + 8))(v13, v11);
  return (*(v25 + 8))(v16, v26);
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillBeginForElements:inAttachment:)(uint64_t a1)
{
  v35 = type metadata accessor for CRKeyPath();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - v8;
  v10 = v1 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 40))(ObjectType, v13);

    v16 = specialized _arrayForceCast<A, B>(_:)(a1);
    v17 = *(v16 + 16);
    if (v17)
    {
      v19 = *(v7 + 16);
      v18 = v7 + 16;
      v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
      v31[1] = v16;
      v21 = v3;
      v22 = v16 + v20;
      v33 = *(v18 + 56);
      v34 = v19;
      v23 = (v18 - 8);
      v24 = (v21 + 8);
      v32 = v15;
      v19(v9, v16 + v20, v6);
      while (1)
      {
        MEMORY[0x1DA6CB5C0](v6);
        (*v23)(v9, v6);
        if (*(v15 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v26 & 1) != 0))
        {
          v27 = *(*(v15 + 56) + 8 * v25);
          v28 = v18;
          v29 = *v24;
          v30 = v27;
          v29(v5, v35);
          v18 = v28;
          v15 = v32;
          [v30 setAlpha_];
        }

        else
        {
          (*v24)(v5, v35);
        }

        v22 += v33;
        if (!--v17)
        {
          break;
        }

        v34(v9, v22, v6);
      }
    }

    else
    {
    }
  }

  return result;
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillEndForElements:with:inAttachment:)(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for CRKeyPath();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v37 - v10;
  v12 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = *(v12 + 8);
  v14 = specialized _arrayConditionalCast<A, B>(_:)(a1);
  if (v14)
  {
    v15 = v14;
    if ((a2 | 2) == 2)
    {
      v16 = *(v14 + 16);
      if (v16)
      {
        ObjectType = swift_getObjectType();
        v18 = *(v13 + 40);
        v19 = v9;
        v20 = ObjectType;
        v22 = *(v19 + 16);
        v21 = v19 + 16;
        v44 = v22;
        v45 = v18;
        v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
        v37[1] = v15;
        v38 = ObjectType;
        v24 = v15 + v23;
        v25 = *(v21 + 56);
        v42 = (v21 - 8);
        v43 = v25;
        v40 = v8;
        v41 = (v5 + 8);
        v39 = v13 + 40;
        v22(v11, v15 + v23, v8);
        while (1)
        {
          MEMORY[0x1DA6CB5C0](v8);
          (*v42)(v11, v8);
          v26 = v45(v20, v13);
          if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v28 & 1) != 0))
          {
            v29 = v21;
            v30 = v13;
            v31 = *v41;
            v32 = *(*(v26 + 56) + 8 * v27);
            v31(v7, v46);
            v13 = v30;
            v21 = v29;
            v20 = v38;
            v8 = v40;

            [v32 setAlpha_];
          }

          else
          {

            (*v41)(v7, v46);
          }

          v24 += v43;
          if (!--v16)
          {
            break;
          }

          v44(v11, v24, v8);
        }

        return;
      }
    }

    else
    {
      v34 = swift_getObjectType();
      v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v15);

      v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      (*(v13 + 96))(v35, v36, 6, 0, v34, v13);
    }
  }

  else
  {
    v33 = Strong;
  }
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = a2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    _Block_copy(a3);
    goto LABEL_6;
  }

  v9 = *(v7 + 8);
  v18 = Strong;
  v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  if (v10)
  {
    v17 = v10;
    if (a1)
    {
      type metadata accessor for URL();
      v11 = swift_allocObject();
      v11[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?) -> ();
      v11[3] = v6;
      v11[4] = v18;
      v11[5] = v9;
      v11[6] = v17;
      _Block_copy(a3);
      _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v12 = a1;

      v13 = v18;
      v14 = v17;
      v15 = NSItemProvider.loadObject<A>(ofClass:completionHandler:)();

LABEL_6:

      return;
    }

    _Block_copy(a3);
    a3[2](a3, 0);

    v16 = v17;
  }

  else
  {
    _Block_copy(a3);

    v16 = v18;
  }
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didTapElement:withGesture:inAttachment:)(uint64_t a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v5 + 8);
    v8 = Strong;
    ObjectType = swift_getObjectType();
    v10 = (*(v7 + 168))(ObjectType, v7);

    if (v10)
    {
      v11 = OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets;
      swift_beginAccess();
      v12 = *&v10[v11];

      if (v12 >> 62)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);

        v13 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
        v13 = v12;
      }

      MEMORY[0x1EEE9AC00](v14);
      v23[2] = a1;
      v15 = specialized Sequence.first(where:)(partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.widget(for:), v23, v13);

      if (v15)
      {
        [v15 addControl];
LABEL_13:

        return;
      }
    }
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0x1E69E7D40];
    v15 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x90))();

    if (v15)
    {
      v19 = CanvasViewSelectionInteractionDelegate.view(for:)(a1);
      if (v19)
      {
        v20 = v19;
        type metadata accessor for LinkCanvasElementView();
        if (swift_dynamicCastClass())
        {
          v21 = v20;
          v22 = LinkCanvasElementView.linkView.getter();
          (*((*v18 & *v22) + 0x88))(0);

          v15 = v22;
        }

        else
        {
          (*((*v18 & *v15) + 0x760))(v20, [a2 modifierFlags], 0);

          v15 = v20;
        }
      }

      goto LABEL_13;
    }
  }
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didLongPressElement:withGesture:inAttachment:)(uint64_t a1, void *a2)
{
  v32 = a1;
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v30 = a2;
  v31 = v4;
  v14 = *(v12 + 8);
  v15 = result;
  ObjectType = swift_getObjectType();
  outlined init with copy of Any(v32, v33);
  swift_dynamicCast();
  MEMORY[0x1DA6CB5C0](v8);
  (*(v9 + 8))(v11, v8);
  v17 = (*(v14 + 40))(ObjectType, v14);

  if (!*(v17 + 16))
  {

    (*(v5 + 8))(v7, v31);
    return 0;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v19 = v31;
  if ((v20 & 1) == 0)
  {

    (*(v5 + 8))(v7, v19);
    return 0;
  }

  v21 = *(v5 + 8);
  v22 = *(*(v17 + 56) + 8 * v18);
  v21(v7, v19);

  type metadata accessor for LinkCanvasElementView();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {

    return 0;
  }

  v24 = v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = MEMORY[0x1E69E7D40];
    v27 = Strong;
    v28 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v28)
    {
      (*((*v26 & *v28) + 0x760))(v24, [v30 modifierFlags], 0);
    }
  }

  return 1;
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:configurationForElement:inAttachment:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = v2 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = a1;
    v26 = v5;
    v15 = *(v13 + 8);
    v16 = result;
    ObjectType = swift_getObjectType();
    outlined init with copy of Any(a2, v27);
    swift_dynamicCast();
    MEMORY[0x1DA6CB5C0](v9);
    (*(v10 + 8))(v12, v9);
    v18 = (*(v15 + 40))(ObjectType, v15);

    if (*(v18 + 16))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v20 = v26;
      if (v21)
      {
        v22 = *(v6 + 8);
        v23 = *(*(v18 + 56) + 8 * v19);
        v22(v8, v20);

        v24 = [v23 contextMenuInteraction:v25 configurationForMenuAtLocation:{0.0, 0.0}];

        return v24;
      }

      (*(v6 + 8))(v8, v20);
    }

    else
    {

      (*(v6 + 8))(v8, v26);
    }

    return 0;
  }

  return result;
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:previewForHighlightingMenuWith:forElement:inAttachment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = type metadata accessor for CRKeyPath();
  v7 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = v3 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = a1;
    v28 = a2;
    v16 = *(v14 + 8);
    v17 = result;
    ObjectType = swift_getObjectType();
    outlined init with copy of Any(a3, v30);
    swift_dynamicCast();
    MEMORY[0x1DA6CB5C0](v10);
    (*(v11 + 8))(v13, v10);
    v19 = (*(v16 + 40))(ObjectType, v16);

    if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v21 & 1) != 0))
    {
      v22 = *(v7 + 8);
      v23 = *(*(v19 + 56) + 8 * v20);
      v22(v9, v29);

      v24 = [v23 window];
      if (v24)
      {

        v25 = [v23 contextMenuInteraction:v27 previewForHighlightingMenuWithConfiguration:v28];
        return v25;
      }
    }

    else
    {

      (*(v7 + 8))(v9, v29);
    }

    return 0;
  }

  return result;
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:willDisplayMenuFor:animator:forElement:inAttachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v29 = a1;
  v30 = a5;
  v31 = type metadata accessor for CRKeyPath();
  v9 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = v5 + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = a2;
    v28 = a3;
    v18 = *(v16 + 8);
    v19 = Strong;
    ObjectType = swift_getObjectType();
    outlined init with copy of Any(a4, v32);
    swift_dynamicCast();
    MEMORY[0x1DA6CB5C0](v12);
    (*(v13 + 8))(v15, v12);
    v21 = (*(v18 + 40))(ObjectType, v18);

    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v23 & 1) != 0))
    {
      v24 = *(v9 + 8);
      v25 = *(*(v21 + 56) + 8 * v22);
      v24(v11, v31);

      [v25 *v30];
    }

    else
    {

      (*(v9 + 8))(v11, v31);
    }
  }
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:inAttachment:)(Swift::OpaquePointer a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    v5 = v9;
    if (v9)
    {
      v6 = *(v9 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
      if (v6)
      {
        v7 = *((*v4 & *v9) + 0x798);
        v8 = v6;
        v7(a1._rawValue);
        HandwritingReflowView.replaceStrokes(_:with:strokeIn:)(a1, MEMORY[0x1E69E7CC0], 0);

        v5 = v8;
      }
    }
  }
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:nonTextStrokes:inAttachment:)(Swift::OpaquePointer a1, Swift::OpaquePointer a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = MEMORY[0x1E69E7D40];
    v11 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    v7 = v11;
    if (v11)
    {
      v8 = *(v11 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
      if (v8)
      {
        v9 = v8;

        specialized Array.append<A>(contentsOf:)(v10);
        (*((*v6 & *v11) + 0x798))(a1);

        HandwritingReflowView.deleteStrokes(_:nonReflowableStrokes:)(a1, a2);

        v7 = v9;
      }
    }
  }
}

void specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9)
{
  v45 = a1;
  v46 = a5;
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = MEMORY[0x1E69E7D40];
    v23 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v23)
    {
      v24 = *&v23[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
      v41 = v24;

      if (v24)
      {
        if ([v46 respondsToSelector_])
        {
          Date.init()();
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            v27 = (*((*v22 & *v25) + 0x90))();
          }

          else
          {
            v27 = 0;
          }

          type metadata accessor for PKStroke();
          v29 = v45;
          isa = Array._bridgeToObjectiveC()().super.isa;
          v43 = MEMORY[0x1DA6CCED0](v42, v43);
          (*(v14 + 16))(v16, v19, v13);
          v30 = (*(v14 + 80) + 40) & ~*(v14 + 80);
          v31 = swift_allocObject();
          v32 = v44;
          *(v31 + 2) = v44;
          *(v31 + 3) = v29;
          *(v31 + 4) = v27;
          (*(v14 + 32))(&v31[v30], v16, v13);
          *&v31[(v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8] = v41;
          aBlock[4] = partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:);
          aBlock[5] = v31;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSValue], @guaranteed [CHReflowableTextToken], @guaranteed [PKDrawing]) -> ();
          aBlock[3] = &block_descriptor_70_1;
          v33 = _Block_copy(aBlock);
          v34 = v27;
          v35 = v41;
          v36 = v32;

          v37 = isa;
          v38 = v43;
          [v46 replaceStrokes:isa withString:v43 inBounds:v33 completion:{a6, a7, a8, a9}];
          _Block_release(v33);

          (*(v14 + 8))(v19, v13);
        }

        else
        {
          v28 = v41;
        }
      }
    }
  }
}

uint64_t specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:inAttachment:)(void *a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = MEMORY[0x1E69E7D40], v8 = Strong, v9 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))(), v8, v9))
  {
    v13 = &type metadata for PencilAndPaperFeatureFlags;
    v14 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
    v12[0] = 0;
    v10 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v10)
    {
      [a1 convertPoint:v9 toCoordinateSpace:{a2, a3}];
      (*((*v7 & *v9) + 0x750))(MEMORY[0x1E69E7CC0], 1, 1);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(a1, a2, a3, v9, v10, v11, v3 + v8, v12);
}

uint64_t partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:)(a1, v4, v5, v7, v6);
}

uint64_t _s9Coherence9CRKeyPathVACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Font.familyName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Font.name.getter()
{
  v1 = *v0;

  return v1;
}

BOOL Font.isBold.getter()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  return (static Font.Traits.bold & ~v1) == 0;
}

BOOL Font.isItalic.getter()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  return (static Font.Traits.italic & ~v1) == 0;
}

void __swiftcall Font.init(_:)(PaperKit::Font *__return_ptr retstr, UIFont a2)
{
  v4 = [(objc_class *)a2.super.isa fontName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [(objc_class *)a2.super.isa familyName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  [(objc_class *)a2.super.isa pointSize];
  v13 = v12;
  v14 = [(objc_class *)a2.super.isa fontDescriptor];
  v15 = [v14 symbolicTraits];

  if (v15)
  {
    swift_beginAccess();
    v16 = static Font.Traits.italic;
    if ((v15 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = 0;
    if ((v15 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  v17 = static Font.Traits.bold;
  if ((static Font.Traits.bold & ~v16) == 0)
  {
    v17 = 0;
  }

  v16 |= v17;
LABEL_8:

  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  v19 = String.hasPrefix(_:)(v18);

  if (v19)
  {

    v5 = 0;
    v7 = 0;
  }

  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  v21 = String.hasPrefix(_:)(v20);

  if (v21)
  {

    v9 = 0;
    v11 = 0;
  }

  v22 = v13;
  retstr->_name.value._countAndFlagsBits = v5;
  retstr->_name.value._object = v7;
  retstr->_familyName.value._countAndFlagsBits = v9;
  retstr->_familyName.value._object = v11;
  retstr->pointSize = v22;
  retstr->traits.rawValue = v16;
}

void Font.supportsBold.getter()
{
  v0 = Font.platformFont.getter();
  v1 = [v0 familyName];

  if (!v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = MEMORY[0x1DA6CCED0](v2);
  }

  v3 = [objc_opt_self() fontNamesForFamilyName_];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4 + 40;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (1)
  {
    if (v6 + v7 == -1)
    {
LABEL_7:

      return;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v8 = v5 + 16;
    String.lowercased()();
    lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.contains<A>(_:)();

    v5 = v8;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void Font.supportsItalic.getter()
{
  v0 = Font.platformFont.getter();
  v1 = [v0 familyName];

  if (!v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = MEMORY[0x1DA6CCED0](v2);
  }

  v3 = [objc_opt_self() fontNamesForFamilyName_];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4 + 40;
  v13 = *(v4 + 16);
  v6 = -1;
  do
  {
    if (v6 - v13 == -1)
    {
      break;
    }

    if (++v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v7 = v5 + 16;
    String.lowercased()();
    lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.contains<A>(_:)();

    v5 = v7;
  }

  while ((v8 & 1) == 0);
  v9 = v4 + 40;
  v10 = -1;
  do
  {
    if (v10 - v13 == -1)
    {
      break;
    }

    if (++v10 >= *(v4 + 16))
    {
      goto LABEL_14;
    }

    v11 = v9 + 16;
    String.lowercased()();
    lazy protocol witness table accessor for type String and conformance String();
    v12 = StringProtocol.contains<A>(_:)();

    v9 = v11;
  }

  while ((v12 & 1) == 0);
}

void __swiftcall Font.init(name:familyName:pointSize:traits:)(PaperKit::Font *__return_ptr retstr, Swift::String_optional name, Swift::String_optional familyName, Swift::Float pointSize, PaperKit::Font::Traits traits)
{
  object = familyName.value._object;
  countAndFlagsBits = familyName.value._countAndFlagsBits;
  v8 = name.value._object;
  v9 = name.value._countAndFlagsBits;
  v11 = *traits.rawValue;
  if (name.value._object)
  {

    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    v13 = String.hasPrefix(_:)(v12);

    if (v13)
    {

      v9 = 0;
      v8 = 0;
    }
  }

  if (object)
  {

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    v15 = String.hasPrefix(_:)(v14);

    if (v15)
    {

      countAndFlagsBits = 0;
      object = 0;
    }
  }

  retstr->_name.value._countAndFlagsBits = v9;
  retstr->_name.value._object = v8;
  retstr->_familyName.value._countAndFlagsBits = countAndFlagsBits;
  retstr->_familyName.value._object = object;
  retstr->pointSize = pointSize;
  retstr->traits.rawValue = v11;
}

id Font.platformFont.getter()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = v0[8];
  v6 = *(v0 + 5);
  v7 = [objc_allocWithZone(MEMORY[0x1E69DB880]) init];
  if (v3)
  {

    v8 = MEMORY[0x1DA6CCED0](v4, v3);

    v9 = [v7 fontDescriptorWithFamily_];
  }

  else
  {
    if (!v1)
    {
      goto LABEL_6;
    }

    v8 = MEMORY[0x1DA6CCED0](v2, v1);

    v9 = [objc_opt_self() fontDescriptorWithName:v8 size:v5];
  }

  v10 = v9;

  v7 = v10;
LABEL_6:
  swift_beginAccess();
  v11 = static Font.Traits.italic;
  swift_beginAccess();
  if ((v11 & ~v6) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if ((static Font.Traits.bold & ~v6) != 0)
  {
    v13 = (v11 & ~v6) == 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v7 fontDescriptorWithSymbolicTraits_];
  if (v14)
  {
    v15 = v14;

    v7 = v15;
  }

  v16 = [objc_opt_self() fontWithDescriptor:v7 size:v5];
  if (!v16)
  {
    if (one-time initialization token for textBoxDefaultFont != -1)
    {
      swift_once();
    }

    v16 = static UIConstants.textBoxDefaultFont;
  }

  return v16;
}

uint64_t Font.familyName.setter(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(v2 + 3);
  if (!a2)
  {
    if (!v4)
    {
      return result;
    }

    v5 = 0;
    goto LABEL_15;
  }

  v5 = a2;
  if (!v4 || (*(v2 + 2) == result ? (v6 = v4 == a2) : (v6 = 0), !v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {

    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    v8 = String.hasPrefix(_:)(v7);

    if (v8)
    {

      v3 = 0;
      v5 = 0;
    }

LABEL_15:
    *(v2 + 2) = v3;
    *(v2 + 3) = v5;
    v14 = *v2;
    LODWORD(v15) = *(v2 + 8);
    v16 = *(v2 + 5);
    v9 = Font.platformFont.getter();
    v10 = [v9 fontName];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    return Font.name.setter(v11, v13);
  }
}

uint64_t Font.isBold.setter(char a1, void *a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(v2 + 5);
    if ((*a2 & ~v4) != 0)
    {
      v4 |= *a2;
LABEL_6:
      *(v2 + 5) = v4;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v2 + 5);
    if ((v4 & *a2) != 0)
    {
      v4 &= ~*a2;
      goto LABEL_6;
    }
  }

  v11 = *v2;
  v12 = v2[1];
  LODWORD(v13) = *(v2 + 8);
  v14 = v4;
  v5 = Font.platformFont.getter();
  v6 = [v5 fontName];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  return Font.name.setter(v7, v9);
}

uint64_t Font.name.setter(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(v2 + 8);
  if (!a2)
  {
    if (!v4)
    {
      return result;
    }

    v5 = 0;
    goto LABEL_15;
  }

  v5 = a2;
  if (!v4 || (*v2 == result ? (v6 = v4 == a2) : (v6 = 0), !v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {

    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    v8 = String.hasPrefix(_:)(v7);

    if (v8)
    {

      v3 = 0;
      v5 = 0;
    }

LABEL_15:
    *v2 = v3;
    *(v2 + 8) = v5;
    v14 = *(v2 + 16);
    LODWORD(v15) = *(v2 + 32);
    v16 = *(v2 + 40);
    v9 = Font.platformFont.getter();
    v10 = [v9 familyName];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    return Font.familyName.setter(v11, v13);
  }
}

uint64_t (*Font.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;

  return Font.name.modify;
}

uint64_t (*Font.familyName.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;

  return Font.familyName.modify;
}

uint64_t Font.name.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t static Font.Traits.italic.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static Font.Traits.italic;
  return result;
}

uint64_t static Font.Traits.italic.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static Font.Traits.italic = v1;
  return result;
}

uint64_t static Font.Traits.bold.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static Font.Traits.bold;
  return result;
}

uint64_t static Font.Traits.bold.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static Font.Traits.bold = v1;
  return result;
}

PaperKit::Font::Traits __swiftcall Font.Traits.init(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = a1;
  v3 = v1;
  if (a1)
  {
    *&a1 = swift_beginAccess();
    v4 = static Font.Traits.italic;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if ((a1 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  *&a1 = swift_beginAccess();
  v5 = static Font.Traits.bold;
  if ((static Font.Traits.bold & ~v4) == 0)
  {
    v5 = 0;
  }

  v4 |= v5;
LABEL_8:
  *v3 = v4;
  LODWORD(result.rawValue) = a1;
  return result;
}

uint64_t Font.Traits.symbolicTraits.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = static Font.Traits.italic;
  swift_beginAccess();
  if ((v2 & ~v1) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if ((static Font.Traits.bold & ~v1) != 0)
  {
    return (v2 & ~v1) == 0;
  }

  else
  {
    return v3;
  }
}

uint64_t Font.Traits.description.getter()
{
  v1 = *v0;
  swift_beginAccess();
  if ((static Font.Traits.bold & ~v1) != 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 1684828002;
    *(v5 + 5) = 0xE400000000000000;
  }

  swift_beginAccess();
  if ((static Font.Traits.italic & ~v1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x63696C617469;
    *(v8 + 5) = 0xE600000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;

  MEMORY[0x1DA6CD010](v9, v11);

  MEMORY[0x1DA6CD010](93, 0xE100000000000000);

  return 91;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance Font.Traits()
{
  lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
  lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance Font.Traits()
{
  lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
  lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance Font.Traits()
{
  lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
  lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance Font.Traits(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
  v3 = lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
  v4 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance Font.Traits(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
  v5 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

void (*Font.isBold.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 40);
  swift_beginAccess();
  *(v4 + 32) = (static Font.Traits.bold & ~v5) == 0;
  return Font.isBold.modify;
}

void (*Font.isItalic.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 40);
  swift_beginAccess();
  *(v4 + 32) = (static Font.Traits.italic & ~v5) == 0;
  return Font.isItalic.modify;
}

void Font.isBold.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

PaperKit::Font::CodingKeys_optional __swiftcall Font.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x656D616E5FLL && stringValue._object == 0xE500000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7A6953746E696F70 && object == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x737469617274 && object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x4E796C696D61665FLL && object == 0xEB00000000656D61)
  {

    v7 = 3;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::Font::CodingKeys_optional __swiftcall Font.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 4;
  if (intValue < 4)
  {
    v2 = intValue;
  }

  *v1 = v2;
  return intValue;
}

uint64_t Font.CodingKeys.stringValue.getter()
{
  v1 = 0x656D616E5FLL;
  v2 = 0x737469617274;
  if (*v0 != 2)
  {
    v2 = 0x4E796C696D61665FLL;
  }

  if (*v0)
  {
    v1 = 0x7A6953746E696F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.CodingKeys and conformance Font.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.CodingKeys and conformance Font.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double Font.init(from:)@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type EncodedFont and conformance EncodedFont();

  CRValueStruct.init(from:)();
  if (v1)
  {

    lazy protocol witness table accessor for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect();
    CRValueStruct.init(from:)();
  }

  else
  {
  }

  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t Font.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  _StringGuts.grow(_:)(49);
  MEMORY[0x1DA6CD010](0x203A656D616E5BLL, 0xE700000000000000);
  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 95;
  }

  if (!v1)
  {
    v1 = 0xE100000000000000;
  }

  MEMORY[0x1DA6CD010](v5, v1);

  MEMORY[0x1DA6CD010](0x796C696D6166202CLL, 0xEA0000000000203ALL);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 95;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  MEMORY[0x1DA6CD010](v6, v7);

  MEMORY[0x1DA6CD010](0x53746E696F70202CLL, 0xED0000203A657A69);
  Float.write<A>(to:)();
  MEMORY[0x1DA6CD010](0x737469617274202CLL, 0xEA0000000000203ALL);
  v8 = Font.Traits.description.getter();
  MEMORY[0x1DA6CD010](v8);

  MEMORY[0x1DA6CD010](93, 0xE100000000000000);
  return 0;
}

Swift::Int Font.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 5);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  Hasher.init(_seed:)();
  EncodedFont.hash(into:)(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 5);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  Hasher.init(_seed:)();
  EncodedFont.hash(into:)(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 5);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  Hasher.init(_seed:)();
  EncodedFont.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance Font(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font and conformance Font();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t Font.encode(to:)(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v20 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = v4[1];
  v11 = v4[3];
  v18 = v4[2];
  v19 = v10;
  v16 = v4[5];
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  v12 = v21;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v12)
  {
    v14 = v16;
    v25 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v14;
    v23 = 2;
    lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Font.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v23 = a4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v10 = v7;
    v29 = 0;
    v11 = v23;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    v22 = v12;
    v28 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    v26 = 2;
    lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v27;
    v25 = 3;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = v20;
    (*(v10 + 8))(v9, v24);
    *v11 = v22;
    *(v11 + 8) = v14;
    *(v11 + 16) = v19;
    *(v11 + 24) = v21;
    *(v11 + 32) = v16;
    *(v11 + 40) = v18;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EncodedFont.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized EncodedFont.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EncodedFont.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EncodedFont.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EncodedFont_Incorrect()
{
  Hasher.init(_seed:)();
  Font.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EncodedFont_Incorrect()
{
  Hasher.init(_seed:)();
  Font.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance EncodedFont(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EncodedFont and conformance EncodedFont();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t EncodedFont_Incorrect.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit21EncodedFont_IncorrectV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = v1[2];
  v13 = v1[3];
  v14 = v7;
  v12 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  v8 = v15;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v8)
  {
    v9 = v12;
    v19 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v9;
    v16 = 3;
    lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Font.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return MEMORY[0x1DA6CE810](v3);
}

uint64_t EncodedFont_Incorrect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit21EncodedFont_IncorrectV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v27 = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    v22 = v9;
    v26 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v21 = v13;
    v25 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v23 = 3;
    lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v18 = v24;
    v19 = v21;
    *a2 = v22;
    *(a2 + 8) = v12;
    *(a2 + 16) = v19;
    *(a2 + 24) = v15;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance EncodedFont_Incorrect.CodingKeys()
{
  v1 = 0x656D616E5FLL;
  v2 = 0x7A6953746E696F70;
  if (*v0 != 2)
  {
    v2 = 0x737469617274;
  }

  if (*v0)
  {
    v1 = 0x4E796C696D61665FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EncodedFont_Incorrect.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized EncodedFont_Incorrect.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance Font.CodingKeys(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return MEMORY[0x1EEDF56F8](a1, a2, v7, v8);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EncodedFont_Incorrect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EncodedFont_Incorrect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CRType.copy(renamingReferences:) in conformance Font@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance Font(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance EncodedFont_Incorrect(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

unint64_t lazy protocol witness table accessor for type EncodedFont and conformance EncodedFont()
{
  result = lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont;
  if (!lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont;
  if (!lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont;
  if (!lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont;
  if (!lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont;
  if (!lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont;
  if (!lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont;
  if (!lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont and conformance EncodedFont);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect()
{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect and conformance EncodedFont_Incorrect);
  }

  return result;
}

BOOL specialized static EncodedFont.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (v10)
    {
      if (v4 == v9 && v5 == v10)
      {
        if (v6 != v11)
        {
          return 0;
        }

        return v7 == v12;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if ((v14 & 1) == 0)
      {
        return result;
      }

LABEL_17:
      if (v6 != v11)
      {
        return result;
      }

      return v7 == v12;
    }

    return 0;
  }

  result = 0;
  if (!v10)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.CodingKeys and conformance Font.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingKeys and conformance Font.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.Traits and conformance Font.Traits()
{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits;
  if (!lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Traits and conformance Font.Traits);
  }

  return result;
}