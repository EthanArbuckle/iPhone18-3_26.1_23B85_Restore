uint64_t Link.apply(_:)(uint64_t a1)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit4LinkV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for Link.MutatingAction(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v38, v18, &_s8PaperKit4LinkV14MutatingActionVSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit4LinkV14MutatingActionVSgMd);
  }

  outlined init with take of Link.MutatingAction(v18, v22);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (*(v10 + 16))(v12, v15, v9);
  CRRegister.projectedValue.setter();
  (*(v10 + 8))(v15, v9);
  type metadata accessor for Link(0);
  v24 = v30;
  v25 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v26 = v32;
  (*(v32 + 16))(v31, v24, v25);
  CRRegister.projectedValue.setter();
  (*(v26 + 8))(v24, v25);
  v27 = v34;
  v28 = v37;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v29 = v36;
  (*(v36 + 16))(v35, v27, v28);
  CRRegister.projectedValue.setter();
  (*(v29 + 8))(v27, v28);
  return outlined destroy of Link.Partial(v22, type metadata accessor for Link.MutatingAction);
}

uint64_t Link.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  CRRegister.projectedValue.getter();
  v35 = a1;
  CRRegister.projectedValue.getter();
  v19 = CRRegister.hasDelta(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if (v19 & 1) != 0 || (type metadata accessor for Link(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v21 = CRRegister.hasDelta(from:)(), v22 = *(v34 + 8), v22(v8, v6), v22(v11, v6), (v21) || (v23 = v30, v24 = v33, CRRegister.projectedValue.getter(), v25 = v31, CRRegister.projectedValue.getter(), v26 = CRRegister.hasDelta(from:)(), v27 = *(v32 + 8), v27(v25, v24), v27(v23, v24), (v26))
  {
    v28 = 1;
  }

  else
  {
    v28 = UnknownProperties.hasDelta(from:)();
  }

  return v28 & 1;
}

uint64_t Link.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v4 = type metadata accessor for UnknownProperties();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v37 = v2;
  outlined init with copy of Link.Partial(v2, a2, type metadata accessor for Link);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v23 = *(v17 + 8);
  v23(v19, v16);
  (*(v17 + 16))(v19, v22, v16);
  CRRegister.projectedValue.setter();
  v23(v22, v16);
  v24 = type metadata accessor for Link(0);
  CRRegister.projectedValue.getter();
  v25 = v39;
  CRRegister.copy(renamingReferences:)();
  v26 = v40;
  v27 = *(v40 + 8);
  v27(v13, v11);
  (*(v26 + 16))(v13, v25, v11);
  v36 = a2;
  CRRegister.projectedValue.setter();
  v27(v25, v11);
  v29 = v42;
  v28 = v43;
  CRRegister.projectedValue.getter();
  v30 = v41;
  CRRegister.copy(renamingReferences:)();
  v31 = v44;
  v32 = *(v44 + 8);
  v32(v29, v28);
  (*(v31 + 16))(v29, v30, v28);
  v33 = v36;
  CRRegister.projectedValue.setter();
  v32(v30, v28);
  v34 = v45;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v46 + 40))(v33 + *(v24 + 28), v34, v47);
}

uint64_t Link.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnknownProperties();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = v22 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v33 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v34 = v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v35 = 0u;
  v36 = 0u;
  CRRegister.init(wrappedValue:)();
  v10 = type metadata accessor for Link(0);
  v11 = v10[5];
  *&v35 = 0;
  v30 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v12 = v10[6];
  v35 = xmmword_1D405C100;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
  v14 = lazy protocol witness table accessor for type Data? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v15 = v10[7];
  UnknownProperties.init()();
  v16 = v37;
  CRRegister.init(defaultState:)();
  if (v16)
  {
    return outlined destroy of Link.Partial(a1, type metadata accessor for Link);
  }

  v22[0] = v12;
  v22[1] = v14;
  v37 = v13;
  v17 = v33;
  (*(v31 + 40))(a1, v9, v32);
  v18 = v34;
  CRRegister.init(defaultState:)();
  (*(v17 + 40))(a1 + v11, v18, v28);
  v19 = v29;
  CRRegister.init(defaultState:)();
  (*(v25 + 40))(a1 + v22[0], v19, v26);
  v20 = v27;
  UnknownProperties.init(defaultState:)();
  return (*(v23 + 40))(a1 + v15, v20, v24);
}

uint64_t Link.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  type metadata accessor for Link(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v11 = CRRegister.isDefaultState.getter(), (*(v8 + 8))(v10, v7), (v11) && (CRRegister.projectedValue.getter(), v12 = CRRegister.isDefaultState.getter(), (*(v4 + 8))(v6, v3), (v12))
  {
    v13 = v17;
    CRRegister.projectedValue.getter();
    v14 = CRRegister.isDefaultState.getter();
    (*(v16 + 8))(v2, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t Link.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v1 = *(v0 - 8);
  v14 = v0;
  v15 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for Link(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v5 + 8))(v7, v4);
  v12 = v14;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v15 + 8))(v3, v12);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t Link.newRefs(from:)(uint64_t a1)
{
  v30[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v33 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  v36 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v19 = CRRegister.newRefs(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  specialized Set.formUnion<A>(_:)(v19);
  type metadata accessor for Link(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v21 = CRRegister.newRefs(from:)();
  v22 = *(v31 + 8);
  v22(v8, v6);
  v22(v11, v6);
  specialized Set.formUnion<A>(_:)(v21);
  v23 = v32;
  v24 = v34;
  CRRegister.projectedValue.getter();
  v25 = v33;
  CRRegister.projectedValue.getter();
  v26 = CRRegister.newRefs(from:)();
  v27 = *(v35 + 8);
  v27(v25, v24);
  v27(v23, v24);
  specialized Set.formUnion<A>(_:)(v26);
  v28 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v28);
  return v36;
}

Swift::Bool __swiftcall Link.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v17 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  CRRegister.projectedValue.getter();
  v11 = CRRegister.needToFinalizeTimestamps()();
  (*(v8 + 8))(v10, v7);
  v14 = v11 || (type metadata accessor for Link(0), CRRegister.projectedValue.getter(), v12 = CRRegister.needToFinalizeTimestamps()(), (*(v4 + 8))(v6, v3), v12) || (CRRegister.projectedValue.getter(), v13 = CRRegister.needToFinalizeTimestamps()(), (*(v17 + 8))(v2, v0), v13) || UnknownProperties.needToFinalizeTimestamps()();
  return v14;
}

uint64_t Link.finalizeTimestamps(_:)(uint64_t a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v28 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v12 + 16))(v14, v17, v11);
  CRRegister.projectedValue.setter();
  (*(v12 + 8))(v17, v11);
  type metadata accessor for Link(0);
  CRRegister.projectedValue.getter();
  v18 = a1;
  CRRegister.finalizeTimestamps(_:)();
  (*(v6 + 16))(v24, v10, v5);
  CRRegister.projectedValue.setter();
  (*(v6 + 8))(v10, v5);
  v19 = v25;
  v20 = v26;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v21 = v28;
  (*(v28 + 16))(v27, v20, v19);
  CRRegister.projectedValue.setter();
  (*(v21 + 8))(v20, v19);
  return MEMORY[0x1DA6CBA30](v18);
}

uint64_t Link.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = type metadata accessor for CRCodableVersion();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v64 = type metadata accessor for Link(0);
  v70 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v27 = *(v10 + 104);
  v68 = *MEMORY[0x1E6995288];
  v69 = v10 + 104;
  v67 = v27;
  v27(v23);
  v28 = static CRCodableVersion.== infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v23, v9);
  if (v28)
  {
    return (*(v10 + 32))(v71, v26, v9);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v66[1](v8, v6);
  v54 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v31 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = v26;
  }

  else
  {
    v33 = v18;
  }

  if (v32)
  {
    v18 = v26;
  }

  v29(v33, v9);
  v34 = *(v10 + 32);
  v35 = v65;
  (v34)(v65, v18, v9);
  (v34)(v26, v35, v9);
  v67(v23, v68, v9);
  v36 = static CRCodableVersion.== infix(_:_:)();
  v29(v23, v9);
  if (v36)
  {
    return (v34)(v71, v26, v9);
  }

  v37 = v63;
  v66 = v34;
  v38 = v61;
  CRRegister.projectedValue.getter();
  v39 = v59;
  CRRegister.minEncodingVersion.getter();
  (*(v62 + 8))(v38, v37);
  v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v41 = (v40 & 1) == 0;
  v42 = (v40 & 1) != 0 ? v26 : v39;
  v43 = v41 ? v26 : v39;
  v29(v42, v9);
  v44 = v60;
  (v66)(v60, v43, v9);
  v45 = v44;
  v34 = v66;
  (v66)(v26, v45, v9);
  v67(v23, v68, v9);
  v46 = static CRCodableVersion.== infix(_:_:)();
  v29(v23, v9);
  if (v46)
  {
    return (v34)(v71, v26, v9);
  }

  v47 = v56;
  v48 = v58;
  CRRegister.projectedValue.getter();
  v49 = v55;
  CRRegister.minEncodingVersion.getter();
  (*(v57 + 8))(v47, v48);
  v50 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v51 = v71;
  if (v50)
  {
    v29(v26, v9);
    v52 = v51;
    v53 = v49;
  }

  else
  {
    v29(v49, v9);
    v52 = v51;
    v53 = v26;
  }

  return (v66)(v52, v53, v9);
}

uint64_t Link.observableDifference(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a1;
  v53 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v43 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v44 = &v43 - v24;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v25(v17, v11);
  type metadata accessor for Link(0);
  v26 = v45;
  CRRegister.projectedValue.getter();
  v27 = v46;
  CRRegister.projectedValue.getter();
  v54 = v22;
  CRRegister.observableDifference(from:with:)();
  v28 = *(v48 + 8);
  v28(v27, v7);
  v29 = v7;
  v30 = v43;
  v28(v26, v29);
  v31 = v49;
  v32 = v51;
  CRRegister.projectedValue.getter();
  v33 = v50;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v34 = *(v52 + 8);
  v34(v33, v32);
  v35 = v32;
  v36 = v44;
  v34(v31, v35);
  v37 = type metadata accessor for CRValueObservableDifference();
  v38 = *(*(v37 - 8) + 48);
  if (v38(v36, 1, v37) == 1 && v38(v54, 1, v37) == 1 && v38(v30, 1, v37) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v39 = type metadata accessor for Link.ObservableDifference(0);
    (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
  }

  else
  {
    v40 = v53;
    outlined init with copy of Date?(v36, v53, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v41 = type metadata accessor for Link.ObservableDifference(0);
    outlined init with copy of Date?(v54, v40 + *(v41 + 20), &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v30, v40 + *(v41 + 24), &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t Link.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v14 = v3;
    v15 = v6;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v8 + 8))(v10, v7);
    type metadata accessor for Link(0);
    v12 = v15;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v17 + 8))(v12, v4);
    v13 = v14;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Data?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v16 + 8))(v13, v1);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t Link.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v83 = type metadata accessor for UnknownProperties();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = (v76 - v6);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v80 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = v76 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v93 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v92 = v76 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v85 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98);
  v96 = v76 - v13;
  type metadata accessor for CGRect(0);
  v15 = v14;
  v16 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v102 = 0u;
  v103 = 0u;
  v94 = v16;
  v95 = v15;
  CRRegister.init(wrappedValue:)();
  v17 = type metadata accessor for Link(0);
  v18 = v17[5];
  *&v102 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v19 = v17[6];
  v102 = xmmword_1D405C100;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
  v21 = lazy protocol witness table accessor for type Data? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v22 = v17[7];
  v100 = a2;
  UnknownProperties.init()();
  v23 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v2)
  {
    goto LABEL_2;
  }

  v78 = v18;
  v76[1] = v21;
  v76[2] = v20;
  v77 = v19;
  v25 = v99;
  v76[0] = v22;
  v91 = 0;
  v97 = v23;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v26 = v91;
    CRRegister.init(from:)();
    if (v26)
    {

LABEL_2:

      v24 = v100;
      return outlined destroy of Link.Partial(v24, type metadata accessor for Link);
    }

    v91 = 0;
    v27 = v100;
    (*(v85 + 40))();
  }

  else
  {
    v27 = v100;
  }

  v28 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v29 = v25;
  v31 = v92;
  v30 = v93;
  v32 = v78;
  if (v28)
  {
    v33 = v91;
    CRRegister.init(from:)();
    if (v33)
    {
      goto LABEL_16;
    }

    v91 = 0;
    (*(v30 + 40))(v27 + v32, v31, v29);
  }

  v34 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v36 = v89;
  v35 = v90;
  v37 = v88;
  v38 = v77;
  if (v34)
  {
    v39 = v91;
    CRRegister.init(from:)();
    if (v39)
    {
      goto LABEL_16;
    }

    v91 = 0;
    (*(v36 + 40))(v27 + v38, v37, v35);
  }

  v40 = v91;
  v41 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
  if (v40)
  {
LABEL_16:

    v24 = v27;
    return outlined destroy of Link.Partial(v24, type metadata accessor for Link);
  }

  v91 = 0;
  v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v41);

  *&v102 = v43;
  specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

  specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

  specialized Set._Variant.remove(_:)(0xD000000000000019, 0x80000001D408DB50);

  v44 = v102 + 56;
  v45 = 1 << *(v102 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v102 + 56);
  v48 = (v45 + 63) >> 6;
  v49 = (v84 + 56);
  v99 = v102;

  v50 = 0;
  v98 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v51 = v50;
    if (!v47)
    {
      break;
    }

LABEL_25:
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = (*(v99 + 48) + ((v50 << 10) | (16 * v52)));
    v55 = *v53;
    v54 = v53[1];

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v58 = v86;
      v57 = v87;
      *v87 = v55;
      v57[1] = v54;
      v59 = v57;

      v60 = v91;
      AnyCRDT.init(from:)();
      v91 = v60;
      if (v60)
      {
LABEL_40:

        swift_bridgeObjectRelease_n();
        v24 = v100;
        return outlined destroy of Link.Partial(v24, type metadata accessor for Link);
      }

      (*v49)(v59, 0, 1, v58);
      v61 = v79;
      outlined init with take of Range<AttributedString.Index>(v59, v79, &_sSS_9Coherence7AnyCRDTVtMd);
      outlined init with take of Range<AttributedString.Index>(v61, v80, &_sSS_9Coherence7AnyCRDTVtMd);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v98[2] + 1, 1, v98);
      }

      v62 = v84;
      v64 = v98[2];
      v63 = v98[3];
      v65 = v80;
      if (v64 >= v63 >> 1)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1, v98);
        v62 = v84;
        v98 = v67;
        v65 = v80;
      }

      v66 = v98;
      v98[2] = v64 + 1;
      outlined init with take of Range<AttributedString.Index>(v65, v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64, &_sSS_9Coherence7AnyCRDTVtMd);
    }

    else
    {

      v56 = v87;
      (*v49)(v87, 1, 1, v86);
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_sSS_9Coherence7AnyCRDTVtSgMd);
    }
  }

  while (1)
  {
    v50 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v50 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v50);
    ++v51;
    if (v47)
    {
      goto LABEL_25;
    }
  }

  v68 = v98;
  if (v98[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
    v69 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC8];
  }

  v70 = v100;
  v71 = v83;
  v72 = v82;
  v73 = v81;
  v74 = v76[0];
  v104 = v69;
  v75 = v91;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v68, 1, &v104);
  if (v75)
  {

    v24 = v70;
    return outlined destroy of Link.Partial(v24, type metadata accessor for Link);
  }

  UnknownProperties.init(_:)();

  return (*(v72 + 40))(v70 + v74, v73, v71);
}

uint64_t Link.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v69 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v70 = v13;
  v74 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v62 = *(v21 - 8);
  v22 = v62;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v56 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v61 = &v56 - v31;
  v59 = v3;
  CRRegister.projectedValue.getter();
  v60 = a2;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v32 = *(v22 + 8);
  v32(v24, v21);
  v32(v27, v21);
  v33 = v12;
  type metadata accessor for Link(0);
  v34 = v64;
  CRRegister.projectedValue.getter();
  v35 = v65;
  CRRegister.projectedValue.getter();
  v36 = v72;
  v37 = v35;
  CRRegister.delta(_:from:)();
  v38 = *(v74 + 8);
  v38(v37, v13);
  v39 = v67;
  v38(v34, v13);
  v40 = v71;
  v41 = v66;
  CRRegister.projectedValue.getter();
  v42 = v68;
  CRRegister.projectedValue.getter();
  v73 = v33;
  v43 = v61;
  CRRegister.delta(_:from:)();
  v44 = *(v39 + 8);
  v45 = v62;
  v44(v42, v40);
  v44(v41, v40);
  if ((*(v45 + 48))(v43, 1, v21) == 1 && (*(v74 + 48))(v36, 1, v70) == 1 && (*(v39 + 48))(v73, 1, v40) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v46 = type metadata accessor for Link.Partial(0);
    (*(*(v46 - 8) + 56))(v69, 1, 1, v46);
  }

  else
  {
    v47 = v56;
    outlined init with copy of Date?(v43, v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v48 = v57;
    outlined init with copy of Date?(v36, v57, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v49 = v58;
    outlined init with copy of Date?(v73, v58, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    v50 = v69;
    (*(v45 + 56))(v69, 1, 1, v21);
    v51 = type metadata accessor for Link.Partial(0);
    v52 = *(v51 + 20);
    (*(v74 + 56))(v50 + v52, 1, 1, v70);
    v53 = *(v51 + 24);
    (*(v39 + 56))(v50 + v53, 1, 1, v71);
    outlined assign with take of UUID?(v47, v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v48, v50 + v52, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v54 = v50 + v53;
    v36 = v72;
    outlined assign with take of UUID?(v49, v54, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
}

BOOL Link.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  outlined init with copy of Date?(a1, v17, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    CRRegister.projectedValue.getter();
    v25 = CRRegister.canMerge(delta:)();
    v26 = *(v19 + 8);
    v26(v21, v18);
    v26(v24, v18);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = type metadata accessor for Link.Partial(0);
  v28 = a1;
  outlined init with copy of Date?(a1 + *(v27 + 20), v10, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v29 = v50;
  if ((*(v50 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v30 = v45;
    (*(v29 + 32))(v45, v10, v11);
    type metadata accessor for Link(0);
    v31 = v46;
    CRRegister.projectedValue.getter();
    v32 = CRRegister.canMerge(delta:)();
    v33 = *(v29 + 8);
    v33(v31, v11);
    v33(v30, v11);
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v47;
  outlined init with copy of Date?(v28 + *(v27 + 24), v47, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  v36 = v48;
  v35 = v49;
  if ((*(v48 + 48))(v34, 1, v49) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    return 1;
  }

  v37 = v43;
  (*(v36 + 32))(v43, v34, v35);
  type metadata accessor for Link(0);
  v38 = v44;
  CRRegister.projectedValue.getter();
  v39 = CRRegister.canMerge(delta:)();
  v40 = *(v36 + 8);
  v40(v38, v35);
  v40(v37, v35);
  return (v39 & 1) != 0;
}

BOOL Link.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v61 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = v54 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v59 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = v54 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v56 = v54 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v54 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v54 - v31;
  v33 = a1;
  v34 = a1;
  v35 = v1;
  v36 = Link.canMerge(delta:)(v34);
  if (v36)
  {
    v55 = v36;
    outlined init with copy of Date?(v33, v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v37 = (*(v24 + 48))(v22, 1, v23);
    v38 = v33;
    v54[1] = v35;
    if (v37 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v24 + 32))(v32, v22, v23);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v24 + 16))(v26, v29, v23);
      CRRegister.projectedValue.setter();
      v39 = *(v24 + 8);
      v39(v29, v23);
      v39(v32, v23);
      v38 = v33;
    }

    v40 = v65;
    v41 = v66;
    v42 = type metadata accessor for Link.Partial(0);
    v43 = v62;
    outlined init with copy of Date?(v38 + *(v42 + 20), v62, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v44 = v63;
    if ((*(v63 + 48))(v43, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v45 = v56;
      (*(v44 + 32))(v56, v43, v14);
      type metadata accessor for Link(0);
      v65 = v38;
      v46 = v57;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v44 + 16))(v58, v46, v14);
      CRRegister.projectedValue.setter();
      v47 = *(v44 + 8);
      v48 = v46;
      v38 = v65;
      v41 = v66;
      v47(v48, v14);
      v47(v45, v14);
    }

    v49 = v64;
    outlined init with copy of Date?(v38 + *(v42 + 24), v64, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    if ((*(v41 + 48))(v49, 1, v40) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    }

    else
    {
      v50 = v59;
      (*(v41 + 32))(v59, v49, v40);
      type metadata accessor for Link(0);
      v51 = v60;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v41 + 16))(v61, v51, v40);
      CRRegister.projectedValue.setter();
      v52 = *(v41 + 8);
      v52(v51, v40);
      v52(v50, v40);
    }

    LOBYTE(v36) = v55;
  }

  return v36;
}

uint64_t protocol witness for CRDT.context.getter in conformance Link(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance Link(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v11 + 8))(v13, v10);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v7 + 8))(v9, v6);
  v14 = v17;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v18 + 8))(v5, v14);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance Link(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Link.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized static Link.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v37 = a1;
  CRRegister.projectedValue.getter();
  v38 = a2;
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v15 + 8);
  v21(v17, v14);
  v21(v20, v14);
  if (a2 & 1) != 0 && (type metadata accessor for Link(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v23 = *(v36 + 8), v23(v10, v8), v23(v13, v8), (v22) && (v24 = v32, v25 = v35, CRRegister.projectedValue.getter(), v26 = v33, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Data?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd), v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v28 = *(v34 + 8), v28(v26, v25), v28(v24, v25), (v27))
  {
    v29 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t specialized Link.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[86] = v3;
  v4[85] = a3;
  v4[84] = a1;
  v5 = type metadata accessor for CGPathFillRule();
  v4[87] = v5;
  v4[88] = *(v5 - 8);
  v4[89] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized Link.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t specialized Link.render<A>(in:id:capsule:options:)()
{
  v111 = v0;
  v110 = *MEMORY[0x1E69E9840];
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  CRRegister.wrappedValue.getter();
  v1 = *(v0 + 648);
  if (v1 >> 60 == 15)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D38C4000, v3, v4, "There is no synapse data to render the link.", v5, 2u);
      MEMORY[0x1DA6D0660](v5, -1, -1);
    }
  }

  else
  {
    v6 = *(v0 + 640);
    v7 = objc_allocWithZone(MEMORY[0x1E69D53F8]);
    outlined copy of Data._Representation(v6, v1);
    v107 = specialized @nonobjc PKDrawingConcrete.init(data:)();
    v8 = v6;
    v9 = *(v0 + 680);
    v10 = *(v0 + 672);
    v108 = v8;
    outlined consume of Data?(v8, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v11 = *(v0 + 456);
    v12 = *(v0 + 464);
    v13 = *(v0 + 472);
    v14 = *(v0 + 480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v15 = *(v0 + 664);
    v16 = *(v9 + 1);
    v17 = *(v9 + 2);
    CGContextSaveGState(v10);
    v113.origin.x = v11;
    v113.origin.y = v12;
    v113.size.width = v13;
    v113.size.height = v14;
    MidX = CGRectGetMidX(v113);
    v97 = v12;
    v99 = v11;
    v114.origin.x = v11;
    v114.origin.y = v12;
    v92 = v14;
    v94 = v13;
    v114.size.width = v13;
    v114.size.height = v14;
    MidY = CGRectGetMidY(v114);
    CGAffineTransformMakeRotation(&v109, v15);
    v101 = *&v109.c;
    v104 = *&v109.a;
    v20 = -MidX;
    tx = v109.tx;
    ty = v109.ty;
    CGAffineTransformMakeTranslation(&v109, v20, -MidY);
    a = v109.a;
    b = v109.b;
    c = v109.c;
    d = v109.d;
    v27 = v109.tx;
    v28 = v109.ty;
    *(v0 + 168) = v109.a;
    *(v0 + 176) = b;
    *(v0 + 184) = c;
    *(v0 + 192) = d;
    *(v0 + 200) = v27;
    *(v0 + 208) = v28;
    *(v0 + 216) = v104;
    *(v0 + 232) = v101;
    *(v0 + 248) = tx;
    *(v0 + 256) = ty;
    CGAffineTransformConcat(&v109, (v0 + 168), (v0 + 216));
    v102 = *&v109.c;
    v105 = *&v109.a;
    v29 = v109.tx;
    v30 = v109.ty;
    *(v0 + 264) = a;
    *(v0 + 272) = b;
    *(v0 + 280) = c;
    *(v0 + 288) = d;
    *(v0 + 296) = v27;
    *(v0 + 304) = v28;
    CGAffineTransformInvert(&v109, (v0 + 264));
    v31 = *&v109.a;
    v32 = *&v109.c;
    v33 = *&v109.tx;
    *(v0 + 312) = v105;
    *(v0 + 328) = v102;
    *(v0 + 344) = v29;
    *(v0 + 352) = v30;
    *(v0 + 360) = v31;
    *(v0 + 376) = v32;
    *(v0 + 392) = v33;
    CGAffineTransformConcat(&v109, (v0 + 312), (v0 + 360));
    v34 = *&v109.c;
    v35 = *&v109.tx;
    *(v0 + 408) = *&v109.a;
    *(v0 + 424) = v34;
    *(v0 + 440) = v35;
    CGContextConcatCTM(v10, (v0 + 408));
    if (v16)
    {
      v36 = 0.152941176;
      v37 = 0.145098039;
      v38 = 0.164705882;
      v39 = 1.0;
    }

    else
    {
      v36 = 0.894117647;
      v38 = 0.901960784;
      v39 = 1.0;
      v37 = 0.894117647;
    }

    SRGB = CGColorCreateSRGB(v36, v37, v38, v39);
    v41 = *(v0 + 712);
    v42 = *(v0 + 704);
    v43 = *(v0 + 696);
    v44 = *(v0 + 672);
    v106 = SRGB;
    CGContextSetFillColorWithColor(v44, SRGB);
    v115.origin.x = v99;
    v115.origin.y = v97;
    v115.size.width = v94;
    v115.size.height = v92;
    v103 = CGPathCreateWithRoundedRect(v115, 10.0, 10.0, 0);
    CGContextAddPath(v44, v103);
    CGContextClosePath(v44);
    (*(v42 + 104))(v41, *MEMORY[0x1E695EEB8], v43);
    CGContextRef.fillPath(using:)();
    (*(v42 + 8))(v41, v43);
    v116.origin.x = v99;
    v116.origin.y = v97;
    v116.size.width = v94;
    v116.size.height = v92;
    v45 = CGRectGetMidX(v116);
    v117.origin.x = v99;
    v117.origin.y = v97;
    v117.size.width = v94;
    v117.size.height = v92;
    v46 = CGRectGetMidY(v117);
    v118.origin.x = v99;
    v118.origin.y = v97;
    v118.size.width = v94;
    v118.size.height = v92;
    v47 = CGRectGetWidth(v118) * 0.95;
    v119.origin.x = v99;
    v119.origin.y = v97;
    v119.size.width = v94;
    v119.size.height = v92;
    v48 = CGRectGetHeight(v119) * 0.8;
    v120.origin.x = v45 - v47 * 0.5;
    v120.origin.y = v46 - v48 * 0.5;
    v120.size.width = v47;
    v120.size.height = v48;
    Width = CGRectGetWidth(v120);
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    v50 = Width * 0.75;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    v121.origin.x = v45 - v47 * 0.5;
    v121.origin.y = v46 - v48 * 0.5;
    v121.size.width = v47;
    v121.size.height = v48;
    CGRectDivide(v121, (v0 + 488), (v0 + 520), v50, CGRectMinXEdge);
    if (v17)
    {
      v122.origin.x = v45 - v47 * 0.5;
      v122.origin.y = v46 - v48 * 0.5;
      v122.size.width = v47;
      v122.size.height = v48;
      v51 = CGRectGetWidth(v122) * 0.25;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0u;
      *(v0 + 584) = 0u;
      *(v0 + 600) = 0u;
      v123.origin.x = v45 - v47 * 0.5;
      v123.origin.y = v46 - v48 * 0.5;
      v123.size.width = v47;
      v123.size.height = v48;
      CGRectDivide(v123, (v0 + 552), (v0 + 584), v51, CGRectMinXEdge);
      v52 = *(v0 + 552);
      v53 = *(v0 + 560);
      v54 = *(v0 + 568);
      v55 = *(v0 + 576);
      v98 = *(v0 + 592);
      v100 = *(v0 + 584);
      v56 = *(v0 + 600);
      v95 = 1;
      v57 = *(v0 + 608);
    }

    else
    {
      v95 = 0;
      v98 = *(v0 + 496);
      v100 = *(v0 + 488);
      v56 = *(v0 + 504);
      v57 = *(v0 + 512);
      v52 = *(v0 + 520);
      v53 = *(v0 + 528);
      v54 = *(v0 + 536);
      v55 = *(v0 + 544);
    }

    v58 = objc_opt_self();
    v59 = &selRef_whiteColor;
    if (!v16)
    {
      v59 = &selRef_blackColor;
    }

    v60 = [v58 *v59];
    v61 = [objc_opt_self() preferredFontForTextStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405FD70;
    v63 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v64 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 40) = v61;
    v65 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v64;
    *(inited + 72) = v65;
    v66 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
    *(inited + 80) = v60;
    v67 = *MEMORY[0x1E69DB778];
    *(inited + 104) = v66;
    *(inited + 112) = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1D4058CF0;
    *(v68 + 32) = v95;
    *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    *(inited + 120) = v68;
    v69 = v63;
    v96 = v61;
    v70 = v65;
    v93 = v60;
    v71 = v67;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
    swift_arrayDestroy();
    v72 = [v107 displayTitle];
    if (v72 || (v72 = [v107 sourceLastKnownName]) != 0 || (v72 = objc_msgSend(v107, sel_webpageDisplayDomain)) != 0)
    {
      v73 = v72;
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;
    }

    else
    {
      v74 = 0;
      v76 = 0xE000000000000000;
    }

    v77 = *(v0 + 672);
    v78 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v79 = MEMORY[0x1DA6CCED0](v74, v76);

    type metadata accessor for NSAttributedStringKey(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v81 = [v78 initWithString:v79 attributes:isa];

    v82 = objc_allocWithZone(type metadata accessor for SynapseLinkItem());
    v83 = v107;
    v84 = SynapseLinkItem.init(synapseItem:)(v83);
    v85 = SynapseLinkItem.icon.getter();
    v124.origin.x = v52;
    v124.origin.y = v53;
    v124.size.width = v54;
    v124.size.height = v55;
    v86 = CGRectGetWidth(v124);
    v125.origin.x = v52;
    v125.origin.y = v53;
    v125.size.width = v54;
    v125.size.height = v55;
    Height = CGRectGetHeight(v125);
    if (Height < v86)
    {
      v86 = Height;
    }

    v126.origin.x = v52;
    v126.origin.y = v53;
    v126.size.width = v54;
    v126.size.height = v55;
    v88 = CGRectGetMidX(v126);
    v127.origin.x = v52;
    v127.origin.y = v53;
    v127.size.width = v54;
    v127.size.height = v55;
    v89 = CGRectGetMidY(v127) - v86 * 0.5;
    UIGraphicsPushContext(v77);
    [v81 drawInRect_];
    [v85 drawInRect_];
    UIGraphicsPopContext();
    CGContextRestoreGState(v77);

    outlined consume of Data?(v108, v1);
  }

  v90 = *(v0 + 8);

  return v90();
}

uint64_t specialized static Link.synapseDataRepresentation(from:)()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v28 - v1 + 32;
  v3 = *MEMORY[0x1E69D5448];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 1, 1, v4);
  v6 = v3;
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  isa = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v2, v4);
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69D53F8]) initWithDisplayTitle:0 sourceIdentifier:v6 sourceName:0 itemURL:v9 identifier:isa];

  v28[0] = 0;
  v12 = [v11 dataRepresentationWithError_];
  v13 = v28[0];
  if (v12)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = v13;
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D38C4000, v19, v20, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1DA6D0660](v22, -1, -1);
      MEMORY[0x1DA6D0660](v21, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v14;
}

uint64_t specialized Link.indexableTextContent<A>(in:)()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  CRRegister.wrappedValue.getter();
  if (v9 >> 60 == 15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = objc_allocWithZone(MEMORY[0x1E69D53F8]);
  outlined copy of Data._Representation(v8, v9);
  v2 = specialized @nonobjc PKDrawingConcrete.init(data:)();
  outlined consume of Data?(v8, v9);
  v3 = [v2 displayTitle];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMd);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_1D4058CF0;
    *(v0 + 32) = v4;
    *(v0 + 40) = v6;
    *(v0 + 48) = v4;
    *(v0 + 56) = v6;
  }

  else
  {
    v0 = MEMORY[0x1E69E7CC0];
  }

  outlined consume of Data?(v8, v9);
  return v0;
}

uint64_t outlined init with take of Link.MutatingAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Link.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Link.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Link.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata completion function for Link()
{
  type metadata accessor for CRRegister<CGRect>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRRegister<CGFloat>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRRegister<Data?>();
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

void type metadata completion function for Link.ObservableDifference()
{
  type metadata accessor for CRValueObservableDifference?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for Link.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Data?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GMd);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Link.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Data?>?, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance AutofillFeatureFlags()
{
  if (*v0)
  {
    return "afui_panel_ui_ipados";
  }

  else
  {
    return "afui_panel_ui_ios";
  }
}

uint64_t closure #1 in String.wordCount(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_beginAccess();
  v10 = *(a8 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v12;
  }

  return result;
}

uint64_t Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v34 = a4;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v29 - v16;
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  v35 = v18;
  v36 = v17;
  v29 = a3;
  v37 = a3;
  swift_getKeyPath();
  v19 = v4;
  Capsule.subscript.getter();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
LABEL_6:
    v27 = 1;
    v21 = v33;
    v26 = v34;
    return (*(v21 + 56))(v26, v27, 1, a2);
  }

  (*(v15 + 32))(v32, v13, v14);
  Ref.subscript.getter();
  v20 = PKDrawingStruct.hasAnyEraserStrokes<A>(in:createdBefore:)(v4, v31, v18, v17);
  _s8PaperKit15PKDrawingStructVWOhTm_3(v10, type metadata accessor for PKDrawingStruct);
  if ((v20 & 1) == 0)
  {
    (*(v15 + 8))(v32, v14);
    goto LABEL_6;
  }

  v21 = v33;
  v22 = v30;
  v23 = (*(v33 + 16))(v30, v19, a2);
  MEMORY[0x1EEE9AC00](v23);
  v24 = v31;
  *(&v29 - 2) = v29;
  *(&v29 - 1) = v24;
  Capsule.callAsFunction<A>(_:)();
  (*(v15 + 8))(v32, v14);
  v25 = v34;
  (*(v21 + 32))(v34, v22, a2);
  v26 = v25;
  v27 = 0;
  return (*(v21 + 56))(v26, v27, 1, a2);
}

id CRRegister<>.isEraserStroke<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - v6;
  v47 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v51 = a2;
  v52 = a3;
  v54 = type metadata accessor for Capsule();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v44 - v24;
  v26 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v45 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v48 = &v44 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v22, v19, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit15PKDrawingStructVWOhTm_3(v19, type metadata accessor for TaggedStroke);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v32 = *(v31 - 8);
    (*(v32 + 32))(v25, v19, v31);
    (*(v32 + 56))(v25, 0, 1, v31);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v25, 1, v33) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  }

  else
  {
    v44 = v9;
    v35 = v45;
    v36 = v50;
    Ref.subscript.getter();
    (*(v34 + 8))(v25, v33);
    _s8PaperKit12TaggedStrokeOWObTm_0(v35, v48, type metadata accessor for PKStrokeStruct);
    (*(v49 + 16))(v53, v36, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.getter();
    v37 = (v46 + 48);
    v38 = (v46 + 8);
    for (i = (v46 + 32); ; (*i)(v16, v7, v14))
    {
      swift_getWitnessTable();
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit15PKDrawingStructVWOhTm_3(v12, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v37)(v7, 1, v14) == 1)
      {
        break;
      }

      (*v38)(v16, v14);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    (*(v49 + 8))(v53, v54);
    v40 = v44;
    Ref.subscript.getter();
    (*v38)(v16, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    CRRegister.wrappedValue.getter();
    _s8PaperKit15PKDrawingStructVWOhTm_3(v40, type metadata accessor for PKStrokeInheritedProperties);
    v41 = v55;
    if (v55)
    {
      v42 = [v55 _isEraserInk];

      _s8PaperKit15PKDrawingStructVWOhTm_3(v48, type metadata accessor for PKStrokeStruct);
      return v42;
    }

    _s8PaperKit15PKDrawingStructVWOhTm_3(v48, type metadata accessor for PKStrokeStruct);
  }

  return 0;
}

uint64_t CRRegister<>.isEraserStroke<A>(in:createdBefore:)(void *a1, uint64_t a2)
{
  v61 = a2;
  v2 = *a1;
  v68 = a1;
  v69 = v2;
  v62 = type metadata accessor for Date();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v65 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v64 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v52 - v25;
  v52 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v52);
  v63 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v67 = &v52 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v23, v20, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit15PKDrawingStructVWOhTm_3(v20, type metadata accessor for TaggedStroke);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v32 = *(v31 - 8);
    (*(v32 + 32))(v26, v20, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v26, 1, v33) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
LABEL_14:
    v50 = 0;
    return v50 & 1;
  }

  v35 = v63;
  v36 = v68;
  Ref.subscript.getter();
  (*(v34 + 8))(v26, v33);
  _s8PaperKit12TaggedStrokeOWObTm_0(v35, v67, type metadata accessor for PKStrokeStruct);
  v70 = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  CRRegister.wrappedValue.getter();
  v37 = (v64 + 48);
  v38 = (v64 + 8);
  for (i = (v64 + 32); ; (*i)(v17, v10, v15))
  {
    type metadata accessor for Capsule.Ref();
    swift_getWitnessTable();
    Ref.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
    CRRegister.wrappedValue.getter();
    _s8PaperKit15PKDrawingStructVWOhTm_3(v14, type metadata accessor for PKStrokeInheritedProperties);
    if ((*v37)(v10, 1, v15) == 1)
    {
      break;
    }

    (*v38)(v17, v15);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);

  v40 = v66;
  Ref.subscript.getter();
  (*v38)(v17, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit15PKDrawingStructVWOhTm_3(v40, type metadata accessor for PKStrokeInheritedProperties);
  v41 = v70;
  if (!v70)
  {
    _s8PaperKit15PKDrawingStructVWOhTm_3(v67, type metadata accessor for PKStrokeStruct);
    goto LABEL_14;
  }

  if (([v70 _isEraserInk] & 1) == 0)
  {
    _s8PaperKit15PKDrawingStructVWOhTm_3(v67, type metadata accessor for PKStrokeStruct);

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v42 = v67;
  v43 = v56;
  CRRegister.wrappedValue.getter();
  v44 = v55;
  v45 = v53;
  v46 = v57;
  (*(v55 + 16))(v53, v43 + *(v54 + 32), v57);
  _s8PaperKit15PKDrawingStructVWOhTm_3(v43, type metadata accessor for PKStrokeProperties);
  v47 = v58;
  Ref.subscript.getter();
  (*(v44 + 8))(v45, v46);
  v48 = v59;
  PKStrokePath.creationDate.getter();
  v49 = type metadata accessor for PKStrokePath();
  (*(*(v49 - 8) + 8))(v47, v49);
  v50 = static Date.< infix(_:_:)();

  (*(v60 + 8))(v48, v62);
  _s8PaperKit15PKDrawingStructVWOhTm_3(v42, type metadata accessor for PKStrokeStruct);
  return v50 & 1;
}

uint64_t CRRegister<>.creationDate<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v43 = a4;
  v5 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v38);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = v35 - v10;
  v11 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v35 - v18;
  v36 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v36);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v35 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v16, v13, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit15PKDrawingStructVWOhTm_3(v13, type metadata accessor for TaggedStroke);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v27 = *(v26 - 8);
    (*(v27 + 32))(v19, v13, v26);
    (*(v27 + 56))(v19, 0, 1, v26);
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v19, 1, v28) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    return static Date.distantPast.getter();
  }

  else
  {
    v35[1] = a1;
    Ref.subscript.getter();
    (*(v29 + 8))(v19, v28);
    _s8PaperKit12TaggedStrokeOWObTm_0(v21, v24, type metadata accessor for PKStrokeStruct);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    v31 = v39;
    CRRegister.wrappedValue.getter();
    v32 = v37;
    (*(v9 + 16))(v37, v31 + *(v38 + 32), v8);
    _s8PaperKit15PKDrawingStructVWOhTm_3(v31, type metadata accessor for PKStrokeProperties);
    v33 = v42;
    Ref.subscript.getter();
    (*(v9 + 8))(v32, v8);
    PKStrokePath.creationDate.getter();
    _s8PaperKit15PKDrawingStructVWOhTm_3(v24, type metadata accessor for PKStrokeStruct);
    v34 = type metadata accessor for PKStrokePath();
    return (*(*(v34 - 8) + 8))(v33, v34);
  }
}

uint64_t PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  type metadata accessor for PKDrawingStruct(0);
  v26 = a2;
  v27 = a3;
  v28 = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:), v25, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
    v17 = 1;
    v18 = v24;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    Ref.subscript.getter();
    v18 = v24;
    CRRegister<>.creationDate<A>(in:)(a1, a2, a3, v24);
    (*(v22 + 8))(v9, v23);
    (*(v14 + 8))(v16, v13);
    v17 = 0;
  }

  v19 = type metadata accessor for Date();
  return (*(*(v19 - 8) + 56))(v18, v17, 1, v19);
}

uint64_t closure #1 in PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Ref.subscript.getter();
  v11 = CRRegister<>.isEraserStroke<A>(in:)(a2, a3, a4);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t PKDrawingStruct.hasAnyEraserStrokes<A>(in:createdBefore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:)(a1, a3, a4, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s10Foundation4DateVSgMd);
    v14 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v14 = static Date.< infix(_:_:)();
    (*(v11 + 8))(v13, v10);
  }

  return v14 & 1;
}

uint64_t closure #1 in Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v5 = *a1;
  v30 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = (v5 + *MEMORY[0x1E6995440]);
  v31 = *v16;
  v32 = v16[1];
  v33 = a3;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  }

  (*(v13 + 32))(v15, v11, v12);
  v18 = Ref.subscript.getter();
  v25 = &v25;
  v19 = v30;
  MEMORY[0x1EEE9AC00](v18);
  *(&v25 - 4) = a3;
  *(&v25 - 3) = a1;
  v20 = v27;
  *(&v25 - 2) = v28;
  v21 = v26;
  v22 = v35;
  CROrderedSet.filter(_:)();
  v35 = v22;
  _s8PaperKit15PKDrawingStructVWOhTm_3(v7, type metadata accessor for PKDrawingStruct);
  v23 = Ref.subscript.modify();
  (*(v29 + 40))(v24 + *(v19 + 20), v21, v20);
  v23(v34, 0);
  return (*(v13 + 8))(v15, v12);
}

BOOL closure #1 in closure #1 in Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Ref.subscript.getter();
  v9 = CRRegister<>.isEraserStroke<A>(in:createdBefore:)(a2, a3);
  (*(v6 + 8))(v8, v5);
  return (v9 & 1) == 0;
}

uint64_t Capsule<>.hasAnyEraserStrokes()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v28 = v18;
  v29 = v17;
  v30 = a2;
  swift_getKeyPath();
  v19 = v3;
  Capsule.subscript.getter();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v20 = 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v21 = v24;
    Ref.subscript.getter();
    v22 = v25;
    static Date.now.getter();
    v20 = PKDrawingStruct.hasAnyEraserStrokes<A>(in:createdBefore:)(v19, v22, v18, v17);
    (*(v26 + 8))(v22, v27);
    _s8PaperKit15PKDrawingStructVWOhTm_3(v21, type metadata accessor for PKDrawingStruct);
    (*(v14 + 8))(v16, v13);
  }

  return v20 & 1;
}

uint64_t _s8PaperKit15PKDrawingStructVWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id @objc static PKRecognitionController.calculateDocumentProviderFromData(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for CalculateDocumentProvider();
  lazy protocol witness table accessor for type CalculateDocumentProvider and conformance CalculateDocumentProvider(&lazy protocol witness table cache variable for type CalculateDocumentProvider and conformance CalculateDocumentProvider);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v4, v6);

  return v8;
}

Class @objc static PKRecognitionController.dataRepresentationForCalculateDocumentProvider(_:)()
{
  swift_unknownObjectRetain();
  v0 = specialized static PKRecognitionController.dataRepresentationForCalculateDocumentProvider(_:)();
  v2 = v1;
  swift_unknownObjectRelease();
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v0, v2);
    v3 = isa;
  }

  return v3;
}

uint64_t specialized static PKRecognitionController.dataRepresentationForCalculateDocumentProvider(_:)()
{
  type metadata accessor for CalculateDocumentProvider();
  result = swift_dynamicCastClass();
  if (result)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    swift_unknownObjectRetain();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    lazy protocol witness table accessor for type CalculateDocumentProvider and conformance CalculateDocumentProvider(&lazy protocol witness table cache variable for type CalculateDocumentProvider and conformance CalculateDocumentProvider);
    v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    swift_unknownObjectRelease();

    return v1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CalculateDocumentProvider and conformance CalculateDocumentProvider(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalculateDocumentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ParticipantDetailsDataSource.avatarImage(for:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v17 = (*(a4 + 32) + **(a4 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);
  v14.n128_f64[0] = a5;
  v15.n128_f64[0] = a6;

  return v17(a1, a2, a3, a4, v14, v15);
}

void SignatureDescription.init(tag:customDescription:)(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 == -1)
  {
    if (a3)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    if (a1 > 5)
    {
      if (one-time initialization token for SignatureLogger != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, SignatureLogger);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = a1;
        _os_log_impl(&dword_1D38C4000, v10, v11, "description with unkonwn tag %ld", v12, 0xCu);
        MEMORY[0x1DA6D0660](v12, -1, -1);
      }

      v7 = 0;
      a3 = 0;
    }

    else
    {
      v6 = &outlined read-only object #0 of static SignatureDescription.allCases.getter + 16 * a1;
      v7 = *(v6 + 4);
      v8 = *(v6 + 5);
      outlined copy of SignatureDescription(v7, v8);
      a3 = v8;
    }
  }

  *a4 = v7;
  a4[1] = a3;
}

void SignatureDescription.init(caption:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v10 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v42[0] = a1;
  v42[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.trimmingCharacters(in:)();
  v12 = v11;
  (*(v7 + 8))(v9, v6);

  v13 = v10 == 0x6D614E206C6C7546 && v12 == 0xE900000000000065;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v43._object = 0x80000001D408DD30;
  v43._countAndFlagsBits = 0xD000000000000029;
  v15._countAndFlagsBits = 0x6D614E206C6C7546;
  v15._object = 0xE900000000000065;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, paperKitBundle, v17, v43);
  if (v18._countAndFlagsBits == v10 && v18._object == v12)
  {

    goto LABEL_7;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_7:

    v10 = 0;
    v12 = 1;
    goto LABEL_9;
  }

  v21 = v10 == 0x614E206E65766947 && v12 == 0xEA0000000000656DLL;
  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_22;
  }

  v44._object = 0x80000001D408DD60;
  v44._countAndFlagsBits = 0xD00000000000002ALL;
  v22._countAndFlagsBits = 0x614E206E65766947;
  v22._object = 0xEA0000000000656DLL;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, isa, v24, v44);
  if (v25._countAndFlagsBits == v10 && v25._object == v12)
  {

LABEL_22:

    v10 = 0;
    v12 = 2;
    goto LABEL_9;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_22;
  }

  if (v10 == 0x4E20796C696D6146 && v12 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_31:

    v10 = 0;
    v12 = 3;
    goto LABEL_9;
  }

  v45._object = 0x80000001D408DD90;
  v27._object = 0xEB00000000656D61;
  v45._countAndFlagsBits = 0xD00000000000002BLL;
  v27._countAndFlagsBits = 0x4E20796C696D6146;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v45);
  if (v30._countAndFlagsBits == v10 && v30._object == v12)
  {

    goto LABEL_31;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_31;
  }

  if (v10 == 0x656D616E6B63694ELL && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_39:

    v10 = 0;
    v12 = 4;
    goto LABEL_9;
  }

  v46._object = 0x80000001D408DDC0;
  v32._countAndFlagsBits = 0x656D616E6B63694ELL;
  v32._object = 0xE800000000000000;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0xD000000000000028;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, isa, v34, v46);
  if (v35._countAndFlagsBits == v10 && v35._object == v12)
  {

    goto LABEL_39;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_39;
  }

  if ((v10 != 0x736C616974696E49 || v12 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v47._object = 0x80000001D408DDF0;
    v47._countAndFlagsBits = 0xD00000000000002DLL;
    v37._countAndFlagsBits = 0x736C616974696E49;
    v37._object = 0xE800000000000000;
    v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v38.value._object = 0xEB00000000656C62;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, isa, v39, v47);
    if (v40._countAndFlagsBits == v10 && v40._object == v12)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  v10 = 0;
  v12 = 5;
LABEL_9:
  *a3 = v10;
  a3[1] = v12;
}

Swift::String __swiftcall SignatureDescription.localizedTitle()()
{
  v1 = *(v0 + 8);
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        if (one-time initialization token for paperKitBundle != -1)
        {
          swift_once();
        }

        isa = paperKitBundle.super.isa;
        v5 = 0xEB00000000656C62;
        v14 = 0x80000001D408DD90;
        v3 = 0x4E20796C696D6146;
        v4 = 0x617A696C61636F4CLL;
        v7 = 0xEB00000000656D61;
        v6 = 0xD00000000000002BLL;
        goto LABEL_30;
      case 4:
        if (one-time initialization token for paperKitBundle != -1)
        {
          swift_once();
        }

        isa = paperKitBundle.super.isa;
        v14 = 0x80000001D408DDC0;
        v3 = 0x656D616E6B63694ELL;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v6 = 0xD000000000000028;
        break;
      case 5:
        if (one-time initialization token for paperKitBundle != -1)
        {
          swift_once();
        }

        isa = paperKitBundle.super.isa;
        v14 = 0x80000001D408DDF0;
        v3 = 0x736C616974696E49;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v6 = 0xD00000000000002DLL;
        break;
      default:
        goto LABEL_20;
    }

    v7 = 0xE800000000000000;
LABEL_30:
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_31;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      isa = paperKitBundle.super.isa;
      v14 = 0x80000001D408DD30;
      v3 = 0x6D614E206C6C7546;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD000000000000029;
      v7 = 0xE900000000000065;
      goto LABEL_30;
    }

    if (v1 == 2)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      isa = paperKitBundle.super.isa;
      v14 = 0x80000001D408DD60;
      v3 = 0x614E206E65766947;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD00000000000002ALL;
      v7 = 0xEA0000000000656DLL;
      goto LABEL_30;
    }

LABEL_20:
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    isa = paperKitBundle.super.isa;
    v14 = 0x80000001D4089B20;
    v3 = 0x4C206D6F74737543;
    v7 = 0xEC0000006C656261;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v6 = 0xD000000000000026;
    goto LABEL_30;
  }

  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v14 = 0x80000001D408DE20;
  v3 = 0x6E6769532077654ELL;
  v7 = 0xED00006572757461;
  v4 = 0x617A696C61636F4CLL;
  v5 = 0xEB00000000656C62;
  v8 = 0;
  v9 = 0xE000000000000000;
  v6 = 0xD000000000000021;
LABEL_31:
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, isa, *&v8, *&v6);
  object = v12._object;
  countAndFlagsBits = v12._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t specialized static SignatureDescription.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          outlined consume of SignatureDescription(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          outlined consume of SignatureDescription(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          outlined consume of SignatureDescription(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        outlined copy of SignatureDescription(*a2, *(a2 + 8));
        outlined copy of SignatureDescription(v2, v3);
        outlined consume of SignatureDescription(v2, v3);
        outlined consume of SignatureDescription(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          outlined consume of SignatureDescription(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          outlined consume of SignatureDescription(*a1, 1uLL);
          outlined consume of SignatureDescription(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          outlined consume of SignatureDescription(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          outlined consume of SignatureDescription(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    outlined copy of SignatureDescription(*a1, v3);
    outlined copy of SignatureDescription(v2, v3);
    outlined consume of SignatureDescription(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of SignatureDescription(v4, v5);
  outlined copy of SignatureDescription(v2, v3);
  outlined consume of SignatureDescription(v2, v3);
  outlined consume of SignatureDescription(v4, v5);
  return v10 & 1;
}

unint64_t lazy protocol witness table accessor for type [SignatureDescription] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SignatureDescription] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SignatureDescription] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8PaperKit20SignatureDescriptionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SignatureDescription] and conformance [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8PaperKit20SignatureDescriptionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SignatureDescription(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignatureDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for SignatureDescription(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - v4;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v0[direct field offset for ShapeView.appearanceStreamView])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = MEMORY[0x1E69E7D40];
      v13 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x9E8))();

      if (v13)
      {
        v14 = *((*v12 & *v1) + 0x3F0);
        swift_beginAccess();
        v15 = *(v3 + 16);
        v26[1] = v3 + 16;
        v27 = v14;
        v26[0] = v15;
        v15(v5, &v1[v14], v2);
        Capsule.rootID.getter();
        v28 = *(v3 + 8);
        v29 = v3 + 8;
        v28(v5, v2);
        v16 = [v13 annotations];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        MEMORY[0x1EEE9AC00](v18);
        v26[-2] = v9;
        v19 = specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), &v26[-4], v17);

        (*(v7 + 8))(v9, v6);
        if (v19)
        {
          type metadata accessor for CanvasElementPDFAnnotation();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            v21 = v20;
            if ([v20 hasAppearanceStream])
            {
              v22 = (v26[0])(v5, &v1[v27], v2);
              MEMORY[0x1EEE9AC00](v22);
              v26[-4] = type metadata accessor for Shape(0);
              v26[-3] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
              v26[-2] = &protocol witness table for Shape;
              swift_getKeyPath();
              Capsule.subscript.getter();

              v28(v5, v2);
              if ((v30 & 0x20) != 0)
              {
                v23 = objc_allocWithZone(type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView());
                v24 = v19;
                v25 = CanvasElementPDFAnnotationAppearanceStreamView.init(annotation:)(v21);
                [v1 addSubview_];
                v19 = v25;
                ShapeView.appearanceStreamView.setter(v25);
              }
            }
          }
        }
      }
    }
  }
}

void specialized CanvasElementView.setupAccessibility()()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_540;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_547;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_554;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_561;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_565;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_396;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_403;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_410_0;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_417;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_421;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_612;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_619;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_626;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_633;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_637;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_576;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_583;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_590;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_597;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_601;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = partial apply for closure #3 in CanvasElementView.setupAccessibility();
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_53;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = partial apply for closure #4 in CanvasElementView.setupAccessibility();
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_229;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = partial apply for closure #5 in CanvasElementView.setupAccessibility();
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_235;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = partial apply for closure #6 in CanvasElementView.setupAccessibility();
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_241;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_245;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_504;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_511;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_518;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_525;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_529;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_468_0;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_475;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_482;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_489_0;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_493;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_648;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_655;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_662;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_669;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_673;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_432;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_439;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_446;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_453;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_457;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v56 = v0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v63._object = 0x80000001D408E130;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x80000001D408E110;
  v63._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, paperKitBundle, v5, v63);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v7 + 24) = v1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v9 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  v61 = closure #3 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_355_0;
  v10 = _Block_copy(&aBlock);
  v55 = [v8 initWithName:v9 actionHandler:v10];

  _Block_release(v10);

  v64._object = 0x80000001D408E1C0;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001D408E1A0;
  v64._countAndFlagsBits = 0xD00000000000003ELL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, isa, v13, v64);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for specialized closure #1 in CanvasElementView.setupAccessibility();
  *(v15 + 24) = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v17 = MEMORY[0x1DA6CCED0](v14._countAndFlagsBits, v14._object);

  v61 = closure #4 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_362;
  v18 = _Block_copy(&aBlock);
  v54 = [v16 initWithName:v17 actionHandler:v18];

  _Block_release(v18);

  v65._object = 0x80000001D408E200;
  v19._countAndFlagsBits = 0x705520656C616353;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0xE800000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, isa, v21, v65);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v23 + 24) = v53;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v25 = MEMORY[0x1DA6CCED0](v22._countAndFlagsBits, v22._object);

  v61 = closure #5 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_369;
  v26 = _Block_copy(&aBlock);
  v52 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  v66._object = 0x80000001D408E230;
  v27._countAndFlagsBits = 0x6F4420656C616353;
  v66._countAndFlagsBits = 0xD000000000000031;
  v27._object = 0xEA00000000006E77;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, isa, v29, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for specialized closure #2 in CanvasElementView.setupAccessibility();
  *(v31 + 24) = v53;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v33 = MEMORY[0x1DA6CCED0](v30._countAndFlagsBits, v30._object);

  v61 = closure #6 in CanvasElementView.setupAccessibility()partial apply;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_376;
  v34 = _Block_copy(&aBlock);
  v35 = [v32 initWithName:v33 actionHandler:v34];

  _Block_release(v34);

  v67._object = 0x80000001D408E290;
  v36._object = 0x80000001D408E270;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v36._countAndFlagsBits = 0xD000000000000010;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, isa, v38, v67);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v42 = MEMORY[0x1DA6CCED0](v39._countAndFlagsBits, v39._object);

  v61 = partial apply for specialized closure #7 in CanvasElementView.setupAccessibility();
  v62 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v60 = &block_descriptor_380_0;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 actionHandler:v43];

  _Block_release(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D4072790;
  *(v45 + 32) = v44;
  *(v45 + 40) = v55;
  *(v45 + 48) = v54;
  *(v45 + 56) = v52;
  *(v45 + 64) = v35;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v46 = v44;
  v47 = v55;
  v48 = v54;
  v49 = v52;
  v50 = v35;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setAccessibilityCustomActions_];
}

uint64_t specialized CanvasElementView.accessibilityDescriptionForAttribute(_:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for TextBox(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
      v46._object = &protocol witness table for TextBox;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for TextBox(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
      v46._object = &protocol witness table for TextBox;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for TextBox(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    v46._object = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for LoupeElement(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
      v46._object = &protocol witness table for LoupeElement;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for LoupeElement(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
      v46._object = &protocol witness table for LoupeElement;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for LoupeElement(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
    v46._object = &protocol witness table for LoupeElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for Image(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      v46._object = &protocol witness table for Image;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for Image(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      v46._object = &protocol witness table for Image;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for Image(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v46._object = &protocol witness table for Image;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for GraphElement(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
      v46._object = &protocol witness table for GraphElement;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for GraphElement(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
      v46._object = &protocol witness table for GraphElement;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for GraphElement(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
    v46._object = &protocol witness table for GraphElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for Link(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
      v46._object = &protocol witness table for Link;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for Link(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
      v46._object = &protocol witness table for Link;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for Link(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
    v46._object = &protocol witness table for Link;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for Signature(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
      v46._object = &protocol witness table for Signature;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for Signature(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
      v46._object = &protocol witness table for Signature;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for Signature(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
    v46._object = &protocol witness table for Signature;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for Paper(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      v46._object = &protocol witness table for Paper;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for Paper(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      v46._object = &protocol witness table for Paper;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for Paper(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    v46._object = &protocol witness table for Paper;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for PaperDocumentPage(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
      v46._object = &protocol witness table for PaperDocumentPage;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for PaperDocumentPage(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
      v46._object = &protocol witness table for PaperDocumentPage;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for PaperDocumentPage(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
    v46._object = &protocol witness table for PaperDocumentPage;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v7._countAndFlagsBits = 0xD000000000000012;
      v46._object = 0x80000001D408B050;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x80000001D408B030;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, paperKitBundle, v9, v44);
      v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v11 = (*(v4 + 16))(v6, &v1[v10], v3);
      MEMORY[0x1EEE9AC00](v11);
      *(&v37 - 4) = type metadata accessor for UnknownCanvasElement(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
      v46._object = &protocol witness table for UnknownCanvasElement;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v12 = v38;
      v13 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v47.origin = v12;
      v47.size = v13;
      Width = CGRectGetWidth(v47);
      v16 = MEMORY[0x1E69E7DE0];
      *(v14 + 56) = MEMORY[0x1E69E7DE0];
      v17 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 64) = v17;
      *(v14 + 32) = Width;
      v48.origin = v12;
      v48.size = v13;
      Height = CGRectGetHeight(v48);
      *(v14 + 96) = v16;
      *(v14 + 104) = v17;
      *(v14 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v46._object = 0x80000001D408AFE0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._object = 0x80000001D408AFC0;
      v46._countAndFlagsBits = 0xD000000000000040;
      v27._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, paperKitBundle, v28, v46);
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v4 + 16))(v6, &v1[v29], v3);
      MEMORY[0x1EEE9AC00](v30);
      *(&v37 - 4) = type metadata accessor for UnknownCanvasElement(0);
      *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
      v46._object = &protocol witness table for UnknownCanvasElement;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v4 + 8))(v6, v3);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
      v31 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405C990;
      v33 = MEMORY[0x1E69E7DE0];
      *(v32 + 56) = MEMORY[0x1E69E7DE0];
      v34 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v32 + 64) = v34;
      *(v32 + 32) = v31.x;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31.y;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v46._object = 0x80000001D408B0B0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x80000001D408B090;
    v45._countAndFlagsBits = 0xD000000000000040;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v45);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v23 = (*(v4 + 16))(v6, &v1[v22], v3);
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 4) = type metadata accessor for UnknownCanvasElement(0);
    *(&v37 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
    v46._object = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v41 = v38;
    v42 = v39;
    v43 = v40;
    CGAffineTransform.decompose(initialRotation:)(&v38, 0.0);
    v24 = *&v40 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4058CF0;
    *(v25 + 56) = MEMORY[0x1E69E7DE0];
    *(v25 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v25 + 32) = v24;
  }

  v35 = static String.localizedStringWithFormat(_:_:)();

  return v35;
}

double static CanvasElementViewController<>.zoomToFitZoomScale(_:in:)(double a1, double a2, double a3, double a4)
{
  v4 = a3 / a1;
  v5 = a4 / a2;
  if (v5 < v4)
  {
    v4 = v5;
  }

  return fmax(v4, 0.0001);
}

id CanvasElementViewController<>.scaleForZoomToFit.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - v7;
  v9 = type metadata accessor for Image(0);
  v34[2] = v9;
  v10 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v34[3] = v10;
  v34[4] = &protocol witness table for Image;
  swift_getKeyPath();
  v11 = direct field offset for CanvasElementViewController._$observationRegistrar;
  v35 = *&v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  v34[1] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = direct field offset for CanvasElementViewController._canvasView;
  v14 = *&v1[direct field offset for CanvasElementViewController._canvasView];
  if (v14)
  {
    v34[0] = v9;
    v15 = *(v14 + direct field offset for Canvas.paperView);
    v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x3F0);
    swift_beginAccess();
    (*(v3 + 16))(v5, &v15[v16], v2);
    (*(v3 + 32))(v8, v5, v2);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v17 = v35;
    v18 = v36;
    v19 = v37;
    v20 = v38;
    swift_getKeyPath();
    Capsule.subscript.getter();

    CGRect.rotated(by:)(*&v34[5], v17, v18, v19, v20);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v21 = v34[0];
    result = [v1 view];
    if (result)
    {
      v22 = result;
      [result bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      MEMORY[0x1EEE9AC00](v31);
      v34[-4] = v21;
      v34[-3] = v10;
      v34[-2] = &protocol witness table for Image;
      swift_getKeyPath();
      v35 = *&v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = *&v1[v13];
      if (v32)
      {
        v33 = (v32 + direct field offset for CanvasView.minimumContentInsets);
      }

      else
      {
        v33 = MEMORY[0x1E69DDCE0];
      }

      UIEdgeInsetsInsetRect_1(v24, v26, v28, v30, *v33, v33[1], v33[2], v33[3]);
      return (*(v3 + 8))(v8, v2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t key path getter for Image.orientation : Image@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for Image.orientation : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

BOOL CanvasElementViewController<>.hasHDRImage.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + direct field offset for CanvasElementViewController.__imageHeadroom) > 1.0;
}

double CanvasElementViewController<>.imageSizeIfLoaded.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + direct field offset for CanvasElementViewController.__imageSize);
}

double CanvasElementViewController<>.imageHeadroom.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + direct field offset for CanvasElementViewController.__imageHeadroom);
}

double key path getter for Image.frame : Image@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for Image.frame : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(char a1, char a2, double a3, double a4)
{
  *(v5 + 40) = v4;
  *(v5 + 80) = a1;
  *(v5 + 48) = type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  *(v5 + 64) = v9;
  *v9 = v5;
  v9[1] = CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:);

  return CanvasElementViewController<>.preferredZoomScale(in:zoomable:)(a2, a3, a4);
}

{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v4;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a1;
  *(v15 + 57) = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:), v15);
}

uint64_t CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(double a1)
{
  *(*v1 + 72) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:), v3, v2);
}

void *CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  v20 = type metadata accessor for Image(0);
  *v2 = v20;
  v3 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v2[1] = v3;
  v2[2] = &protocol witness table for Image;
  swift_getKeyPath();

  *(v0 + 16) = v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = direct field offset for CanvasElementViewController._canvasView;
  v6 = *(v1 + direct field offset for CanvasElementViewController._canvasView);
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = *(v6 + direct field offset for CanvasView.canvasScrollView);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v0 + 40);
  [result setMinimumZoomScale_];
  v8 = swift_task_alloc();
  *v8 = v20;
  v8[1] = v3;
  v8[2] = &protocol witness table for Image;
  swift_getKeyPath();

  *(v0 + 24) = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v1 + v5);
  if (v9 && !v9[direct field offset for CanvasView.zoomState])
  {
    v19 = direct field offset for CanvasView.zoomState;
    v10 = *(v0 + 40);
    v11 = swift_task_alloc();
    *v11 = v20;
    v11[1] = v3;
    v11[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 32) = v10;
    v12 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v1 + v5);
    if (v13)
    {
      result = *(v13 + direct field offset for CanvasView.canvasScrollView);
      if (result)
      {
        [result setZoomScale:*(v0 + 80) animated:*(v0 + 72)];
        v14 = v9[v19];
        v9[v19] = 0;
        if (v14)
        {
          v15 = *&v12[direct field offset for Canvas.paperView];
          v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x3D0);
          v17 = v15;
          v16();
        }

        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      return result;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t CanvasElementViewController<>.preferredZoomScale(in:zoomable:)(char a1, double a2, double a3)
{
  *(v4 + 96) = v3;
  *(v4 + 200) = a1;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 136) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 144) = v7;
  *(v4 + 152) = v6;

  return MEMORY[0x1EEE6DFA0](CanvasElementViewController<>.preferredZoomScale(in:zoomable:), v7, v6);
}

uint64_t CanvasElementViewController<>.preferredZoomScale(in:zoomable:)()
{
  v1 = *(v0 + 96);
  v2 = swift_task_alloc();
  *v2 = type metadata accessor for Image(0);
  v2[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v2[2] = &protocol witness table for Image;
  swift_getKeyPath();

  *(v0 + 72) = v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + direct field offset for CanvasElementViewController._canvasView);
  if (v3)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = *(v3 + direct field offset for Canvas.paperView);
    v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x3F0);
    swift_beginAccess();
    (*(v7 + 16))(v4, &v8[v9], v6);
    (*(v7 + 32))(v5, v4, v6);
    swift_getKeyPath();
    Capsule.subscript.getter();

    *(v0 + 160) = *(v0 + 32);
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = CanvasElementViewController<>.preferredZoomScale(in:zoomable:);

    return CanvasElementViewController<>.imageSize()();
  }

  else
  {

    v12 = *(v0 + 8);
    v13.n128_u64[0] = 0;

    return v12(v13);
  }
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 200);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  (*(v5 + 8))(v3, v4);
  if ((v6 & 1) == 0 && (v2 < v8 ? (v9 = v1 < v7) : (v9 = 0), v9))
  {
    v10 = *(v0 + 184);
    v11 = *(v0 + 160);
    v9 = v11 < v10;
    v12 = v10 / v11;
    if (v9)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }
  }

  else
  {
    v14 = vdivq_f64(*(v0 + 80), *(v0 + 160));
    if (v14.f64[1] < v14.f64[0])
    {
      v14.f64[0] = v14.f64[1];
    }

    v13 = fmax(v14.f64[0], 0.0001);
  }

  v15 = *(v0 + 8);
  v16.n128_f64[0] = v13;

  return v15(v16);
}

uint64_t CanvasElementViewController<>.preferredZoomScale(in:zoomable:)(double a1, double a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);

  return MEMORY[0x1EEE6DFA0](CanvasElementViewController<>.preferredZoomScale(in:zoomable:), v6, v5);
}

double key path getter for Image.rotation : Image@<D0>(double *a1@<X8>)
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Image.rotation : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t specialized Capsule<>.isTextBox.getter()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F68468(v3, v9);
  (*(v1 + 8))(v3, v0);
  _s8PaperKit5ImageVWOhTm_1(v6, type metadata accessor for Shape);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_7;
  }

  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  SharedTagged_10.subscript.getter();
  (*(v11 + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  if (!*(&v17 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v16, &_s8PaperKit12ShapeTextBox_pSgMd);
    v14 = 0;
    return v14 & 1;
  }

  outlined init with take of PaperKitHashable(&v16, v19);
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = (*(v13 + 80))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14 & 1;
}

void CanvasElementViewController._canvasView.didset()
{
  CanvasElementViewController.updateToolPickerVisibility()();
  CanvasElementViewController.updateActionInfoViewVisibility()();
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v0)
  {
    v1 = v0;
    v2 = [specialized CanvasElementViewController.contentViewController.getter() view];
    specialized CanvasView.contentView.setter(v2);
  }
}

id key path getter for CanvasElementViewController.canvasView : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController.canvasView : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.canvasView.setter(v1);
}

void *CanvasElementViewController.canvasView.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  v1 = v0;
  return v0;
}

void CanvasElementViewController.canvasView.setter(void *a1)
{
  type metadata accessor for CanvasView();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v2)
  {
    specialized CanvasElementViewController._canvasView.setter(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void *CanvasElementViewController._liveStreamMessenger.didset()
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (result)
  {
    v1 = result;
    specialized CanvasElementViewController.liveStreamMessenger.getter();
    v3 = v2;
    v4 = swift_unknownObjectRetain();
    specialized Canvas.liveStreamMessenger.setter(v4, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*CanvasElementViewController._liveStreamMessenger.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._liveStreamMessenger.modify;
}

uint64_t key path getter for CanvasElementViewController.liveStreamMessenger : <A>CanvasElementViewController<A>@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized CanvasElementViewController.liveStreamMessenger.getter();
  a1[1] = v2;

  return swift_unknownObjectRetain();
}

uint64_t CanvasElementViewController.liveStreamMessenger.setter()
{
  swift_beginAccess();
  swift_getKeyPath();
  CanvasElementViewController.withMutation<A, B>(keyPath:_:)();

  return swift_unknownObjectRelease();
}

void (*CanvasElementViewController.liveStreamMessenger.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._liveStreamMessenger.modify(v4);
  return CanvasElementViewController.liveStreamMessenger.modify;
}

void CanvasElementViewController.liveStreamMessenger.modify(void *a1)
{
  CanvasElementViewController.liveStreamMessenger.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  $defer #1 <A>() in CanvasElementViewController.liveStreamMessenger.modify();

  free(v1);
}

void *CanvasElementViewController._participantDetailsDataSource.didset()
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (result)
  {
    v1 = result;
    CanvasElementViewController.participantDetailsDataSource.getter();
    v3 = v2;
    v4 = &v1[OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource];
    swift_beginAccess();
    *(v4 + 1) = v3;
    swift_unknownObjectWeakAssign();
    [*&v1[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView] setNeedsLayout];

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*CanvasElementViewController._participantDetailsDataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for CanvasElementViewController._participantDetailsDataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return CanvasElementViewController._participantDetailsDataSource.modify;
}

void CanvasElementViewController._participantDetailsDataSource.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    CanvasElementViewController._participantDetailsDataSource.didset();
  }

  free(v3);
}

uint64_t key path getter for CanvasElementViewController.participantDetailsDataSource : <A>CanvasElementViewController<A>@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController.participantDetailsDataSource.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void (*CanvasElementViewController.participantDetailsDataSource.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._participantDetailsDataSource.modify(v4);
  return CanvasElementViewController.participantDetailsDataSource.modify;
}

void CanvasElementViewController._showParticipantCursors.didset()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v0)
  {
    v1 = v0;
    v2 = CanvasElementViewController.showParticipantCursors.getter() & 1;
    v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
    swift_beginAccess();
    if (v2 == v1[v3])
    {
      v1[v3] = v2;
      [*&v1[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView] setNeedsLayout];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t CanvasElementViewController._showParticipantCursors.getter()
{
  v1 = direct field offset for CanvasElementViewController._showParticipantCursors;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*CanvasElementViewController._showParticipantCursors.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._showParticipantCursors.modify;
}

uint64_t key path getter for CanvasElementViewController.showParticipantCursors : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.showParticipantCursors.getter();
  *a1 = result & 1;
  return result;
}

void (*CanvasElementViewController.showParticipantCursors.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._showParticipantCursors.modify(v4);
  return CanvasElementViewController.showParticipantCursors.modify;
}

uint64_t CanvasElementViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (!v5)
  {
    return swift_unknownObjectRelease();
  }

  v6 = v5;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  v8 = v6;
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease_n();
}

uint64_t (*CanvasElementViewController.delegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CanvasElementViewController.delegate.getter();
  a1[1] = v3;
  return CanvasElementViewController.delegate.modify;
}

uint64_t CanvasElementViewController.delegate.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return CanvasElementViewController.delegate.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  CanvasElementViewController.delegate.setter(v3, v2);

  return swift_unknownObjectRelease();
}

uint64_t CanvasElementViewController.mediaAnalysisObserver.getter()
{
  specialized CanvasElementViewController.canvasView.getter(&unk_1D40730D8, &direct field offset for CanvasElementViewController._mediaAnalysisObserver);
}

uint64_t key path getter for CanvasElementViewController.mediaAnalysisObserver : <A>CanvasElementViewController<A>@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40730D8, &direct field offset for CanvasElementViewController._mediaAnalysisObserver);
}

uint64_t CanvasElementViewController.mediaAnalysisObserver.setter()
{
  swift_getKeyPath();
  CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
}

id CanvasElementViewController.activeInteractionTypes.getter()
{
  v0 = CanvasElementViewController.imageView.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + direct field offset for ImageElementView.mediaView);
  v2 = v0;
  v3 = v1;

  if (!v1)
  {
    return 0;
  }

  v4 = [v3 imageAnalysisContext];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activeInteractionTypes];
  swift_unknownObjectRelease();
  return v5;
}

void CanvasElementViewController.activeInteractionTypes.setter(uint64_t a1)
{
  v2 = CanvasElementViewController.imageView.getter();
  if (v2)
  {
    v3 = *(v2 + direct field offset for ImageElementView.mediaView);
    v4 = v2;
    v5 = v3;

    if (v3)
    {
      v6 = [v5 imageAnalysisContext];

      if (v6)
      {
        [v6 setActiveInteractionTypes_];

        swift_unknownObjectRelease();
      }
    }
  }
}

void (*CanvasElementViewController.activeInteractionTypes.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = CanvasElementViewController.activeInteractionTypes.getter();
  return CanvasElementViewController.activeInteractionTypes.modify;
}

uint64_t CanvasElementViewController.automaticallyShowVisualSearchResults.getter()
{
  result = CanvasElementViewController.imageView.getter();
  if (result)
  {
    v1 = *(result + direct field offset for ImageElementView.mediaView);
    v2 = result;
    v3 = v1;

    if (v1 && (v4 = [v3 imageAnalysisContext], v3, v4))
    {
      v5 = [v4 automaticallyShowVisualSearchResults];
      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CanvasElementViewController.automaticallyShowVisualSearchResults.setter(char a1)
{
  v2 = CanvasElementViewController.imageView.getter();
  if (v2)
  {
    v3 = *(v2 + direct field offset for ImageElementView.mediaView);
    v4 = v2;
    v5 = v3;

    if (v3)
    {
      v6 = [v5 imageAnalysisContext];

      if (v6)
      {
        [v6 setAutomaticallyShowVisualSearchResults_];

        swift_unknownObjectRelease();
      }
    }
  }
}

void (*CanvasElementViewController.automaticallyShowVisualSearchResults.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CanvasElementViewController.automaticallyShowVisualSearchResults.getter() & 1;
  return CanvasElementViewController.automaticallyShowVisualSearchResults.modify;
}

uint64_t CanvasElementViewController._allowsContentSnapping.getter()
{
  v1 = direct field offset for CanvasElementViewController._allowsContentSnapping;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*CanvasElementViewController._allowsContentSnapping.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._allowsContentSnapping.modify;
}

uint64_t key path getter for CanvasElementViewController.allowsContentSnapping : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.allowsContentSnapping.getter();
  *a1 = result & 1;
  return result;
}

void CanvasElementViewController.allowsContentSnapping.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 & 1;
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v6 = direct field offset for CanvasElementViewController._allowsContentSnapping;
    swift_beginAccess();
    *(v2 + v6) = v4;
    CanvasElementViewController._allowsContentSnapping.didset(CanvasElementViewController.allowsContentSnapping.getter, CanvasView.allowsContentSnapping.setter);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void (*CanvasElementViewController.allowsContentSnapping.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._allowsContentSnapping.modify(v4);
  return CanvasElementViewController.allowsContentSnapping.modify;
}

void CanvasElementViewController._contentViewController.didset()
{
  v1 = specialized CanvasElementViewController.contentViewController.getter();
  if (v1)
  {
    v6 = v1;
    [v0 addChildViewController_];
    [v6 didMoveToParentViewController_];
    v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    if (v2)
    {
      v3 = v2;
      v4 = [v6 view];
      specialized CanvasView.contentView.setter(v4);

      v5 = v4;
    }

    else
    {
      v5 = v6;
    }
  }
}

uint64_t (*CanvasElementViewController._contentViewController.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._contentViewController.modify;
}

id key path getter for CanvasElementViewController.contentViewController : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.contentViewController.getter();
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController.contentViewController : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.contentViewController.setter(v1);
}

void *CanvasElementViewController.contentViewController.getter()
{
  v0 = specialized CanvasElementViewController.contentViewController.getter();
  v1 = v0;
  return v0;
}

void CanvasElementViewController.contentViewController.setter(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UIViewControllerCSgMd);
  lazy protocol witness table accessor for type UIViewController? and conformance <A> A?();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v2)
  {
    specialized CanvasElementViewController._contentViewController.setter(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void (*CanvasElementViewController.contentViewController.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._contentViewController.modify(v4);
  return CanvasElementViewController.contentViewController.modify;
}

void CanvasElementViewController._editingMode.didset(unsigned __int8 *a1)
{
  v2 = v1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - v5;
  v6 = *a1;
  CanvasElementViewController.updateToolPickerVisibility()();
  v7 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v7)
  {
    v8 = v7;
    CanvasElementViewController.editingMode.getter(v59);
    CanvasView.editingMode.setter(v59);
  }

  CanvasElementViewController.updatePlusButton()();
  CanvasElementViewController.editingMode.getter(v59);
  if (v59[0] == 1 && v6 != 1)
  {
    if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
    {
      v9 = Canvas.editingView.getter();
      v11 = v10;
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 168))(ObjectType, v11);

      if (v13)
      {
        v14 = FormFillingView.formFields.getter();
        v15 = v14;
        v49 = v4;
        v50 = v13;
        v48 = v2;
        if (v14 >> 62)
        {
          goto LABEL_22;
        }

        for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v17 = 0;
          v53 = v15 & 0xFFFFFFFFFFFFFF8;
          v54 = v15 & 0xC000000000000001;
          v51 = (v49 + 16);
          v18 = (v49 + 8);
          while (1)
          {
            if (v54)
            {
              v19 = MEMORY[0x1DA6CE0C0](v17, v15);
            }

            else
            {
              if (v17 >= *(v53 + 16))
              {
                goto LABEL_21;
              }

              v19 = *(v15 + 8 * v17 + 32);
            }

            v20 = v19;
            v21 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            type metadata accessor for ShapeView();
            v22 = swift_dynamicCastClass();
            if (v22)
            {
              v23 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x3F0);
              v24 = v22;
              swift_beginAccess();
              v25 = v24 + v23;
              v26 = v55;
              v27 = v56;
              (*v51)(v55, v25, v56);
              swift_getKeyPath();
              v28 = v20;
              Capsule.subscript.getter();
              v52 = v28;

              (*v18)(v26, v27);
              if (v57 != 50 && v57 != 1)
              {

                goto LABEL_24;
              }
            }

            ++v17;
            if (v21 == i)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          ;
        }

LABEL_23:

        v52 = 0;
LABEL_24:
        v29 = FormFillingView.formFields.getter();
        v30 = v29;
        if (v29 >> 62)
        {
LABEL_42:
          v31 = __CocoaSet.count.getter();
          if (v31)
          {
LABEL_26:
            v32 = 0;
            v53 = v30 & 0xFFFFFFFFFFFFFF8;
            v54 = v30 & 0xC000000000000001;
            v51 = (v49 + 16);
            v33 = (v49 + 8);
            while (1)
            {
              if (v54)
              {
                v34 = MEMORY[0x1DA6CE0C0](v32, v30);
              }

              else
              {
                if (v32 >= *(v53 + 16))
                {
                  goto LABEL_41;
                }

                v34 = *(v30 + 8 * v32 + 32);
              }

              v35 = v34;
              v36 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

              type metadata accessor for ShapeView();
              v37 = swift_dynamicCastClass();
              if (!v37)
              {
                break;
              }

              v38 = v37;
              v39 = *((*MEMORY[0x1E69E7D40] & *v37) + 0x3F0);
              swift_beginAccess();
              v40 = v38 + v39;
              v41 = v55;
              v42 = v31;
              v43 = v56;
              (*v51)(v55, v40, v56);
              swift_getKeyPath();
              v44 = v35;
              Capsule.subscript.getter();

              v45 = v43;
              v31 = v42;
              (*v33)(v41, v45);
              if (v58 != 50)
              {
                break;
              }

              ++v32;
              if (v36 == v42)
              {
                goto LABEL_43;
              }
            }

            v46 = v50;
            v47 = v52;
            if (v52)
            {
              goto LABEL_45;
            }

            if (v35)
            {
              v35 = v35;
              v47 = v35;
              goto LABEL_45;
            }

            v35 = v50;
            goto LABEL_47;
          }
        }

        else
        {
          v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v31)
          {
            goto LABEL_26;
          }
        }

LABEL_43:

        v47 = v52;
        if (v52)
        {
          v35 = 0;
          v46 = v50;
LABEL_45:
          [v47 becomeFirstResponder];
        }

        else
        {
          v35 = v50;
        }

LABEL_47:
      }
    }
  }

  CanvasElementViewController.updateActionInfoViewVisibility()();
}

void CanvasElementViewController._editingMode.setter(_BYTE *a1)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController._editingMode);
  *(v1 + direct field offset for CanvasElementViewController._editingMode) = *a1;
  v3 = v2;
  CanvasElementViewController._editingMode.didset(&v3);
}

void (*CanvasElementViewController._editingMode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + direct field offset for CanvasElementViewController._editingMode);
  return CanvasElementViewController._editingMode.modify;
}

void CanvasElementViewController._editingMode.modify(uint64_t a1, char a2)
{
  v2 = *(*a1 + direct field offset for CanvasElementViewController._editingMode);
  *(*a1 + direct field offset for CanvasElementViewController._editingMode) = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    v3 = &v4;
  }

  else
  {
    v5 = v2;
    v3 = &v5;
  }

  CanvasElementViewController._editingMode.didset(v3);
}

uint64_t CanvasElementViewController.editingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *a1 = *(v1 + direct field offset for CanvasElementViewController._editingMode);
  return result;
}

void CanvasElementViewController.editingMode.setter(char *a1)
{
  v2 = *a1;
  lazy protocol witness table accessor for type CanvasEditingMode and conformance CanvasEditingMode();
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v3)
  {
    v4 = *(v1 + direct field offset for CanvasElementViewController._editingMode);
    *(v1 + direct field offset for CanvasElementViewController._editingMode) = v2;
    v6 = v4;
    CanvasElementViewController._editingMode.didset(&v6);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void (*CanvasElementViewController.editingMode.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._editingMode.modify(v4);
  return CanvasElementViewController.editingMode.modify;
}

Swift::Void __swiftcall CanvasElementViewController.setEditingMode(_:didUseBanner:)(PaperKit::CanvasEditingMode _, Swift::Bool didUseBanner)
{
  v5 = *_;
  v3 = v5;
  CanvasElementViewController.editingMode.setter(&v5);
  if (v3 == 1 && specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
  {
    if (didUseBanner)
    {
      v4 = 48;
    }

    else
    {
      v4 = 51;
    }

    *(specialized CanvasView.formAnalytics.getter() + 19) = v4;
  }
}

void CanvasElementViewController.updateActionInfoViewVisibility()()
{
  v6 = CanvasElementViewController.imageView.getter();
  if (v6)
  {
    CanvasElementViewController.editingMode.getter(&v8);
    if (v8 == 3)
    {
      v0 = 1;
    }

    else
    {
      CanvasElementViewController.editingMode.getter(&v7);
      v0 = v7 == 1;
    }

    v1 = direct field offset for ImageElementView.mediaView;
    v2 = *&v6[direct field offset for ImageElementView.mediaView];
    if (v2)
    {
      v3 = [v2 imageAnalysisContext];
      if (v3)
      {
        [v3 setActionInfoViewHidden:v0 animated:0];
        swift_unknownObjectRelease();
      }
    }

    if (v0)
    {
      v4 = *&v6[v1];
      if (v4)
      {
        v5 = [v4 imageAnalysisContext];
        if (v5)
        {
          [v5 setHighlightSelectableItemsEnabled_];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

id CanvasElementViewController.drawingGestureRecognizer.getter()
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (result)
  {
    result = specialized CanvasView.tiledView.getter();
    if (result)
    {
      return [result drawingGestureRecognizer];
    }
  }

  return result;
}

id CanvasElementViewController.drawingPolicy.getter()
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (result)
  {
    v1 = result;
    v2 = CanvasView.drawingPolicy.getter();

    return v2;
  }

  return result;
}

void (*CanvasElementViewController.drawingPolicy.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = CanvasElementViewController.drawingPolicy.getter();
  return CanvasElementViewController.drawingPolicy.modify;
}

uint64_t CanvasElementViewController.canvasSubscribeCancellable.getter()
{
  specialized CanvasElementViewController.canvasView.getter(&unk_1D40730A0, &direct field offset for CanvasElementViewController._canvasSubscribeCancellable);
}

uint64_t key path getter for CanvasElementViewController.canvasSubscribeCancellable : <A>CanvasElementViewController<A>@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40730A0, &direct field offset for CanvasElementViewController._canvasSubscribeCancellable);
}

uint64_t CanvasElementViewController.canvasSubscribeCancellable.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AnyCancellableCSgMd);
  lazy protocol witness table accessor for type AnyCancellable? and conformance <A> A?();
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v3)
  {
    *(v1 + direct field offset for CanvasElementViewController._canvasSubscribeCancellable) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void CanvasElementViewController.__imageSize.setter(double a1, double a2)
{
  v3 = (v2 + direct field offset for CanvasElementViewController.__imageSize);
  *v3 = a1;
  v3[1] = a2;
}

double CanvasElementViewController._imageSize.getter()
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  return *(v0 + direct field offset for CanvasElementViewController.__imageSize);
}

uint64_t CanvasElementViewController._imageSize.setter(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v6 = (v2 + direct field offset for CanvasElementViewController.__imageSize);
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }

  return result;
}

double CanvasElementViewController._imageHeadroom.getter()
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  return *(v0 + direct field offset for CanvasElementViewController.__imageHeadroom);
}

uint64_t CanvasElementViewController._imageHeadroom.setter(double a1)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + direct field offset for CanvasElementViewController.__imageHeadroom) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }

  return result;
}

id CanvasElementViewController.init(context:editingMode:allowMediaCanvasElements:transparentBackground:isImageAnalysisEnabled:)(uint64_t a1, char *a2, char a3, char a4, char a5)
{
  v17 = *a2;
  *&v5[direct field offset for CanvasElementViewController._canvasView] = 0;
  v6 = &v5[direct field offset for CanvasElementViewController._liveStreamMessenger];
  *v6 = 0;
  v6[1] = 0;
  *&v5[direct field offset for CanvasElementViewController._participantDetailsDataSource + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v5[direct field offset for CanvasElementViewController._showParticipantCursors] = 0;
  *&v5[direct field offset for CanvasElementViewController._mediaAnalysisObserver] = 0;
  v5[direct field offset for CanvasElementViewController._allowsContentSnapping] = 0;
  *&v5[direct field offset for CanvasElementViewController._contentViewController] = 0;
  *&v5[direct field offset for CanvasElementViewController._canvasSubscribeCancellable] = 0;
  v7 = direct field offset for CanvasElementViewController.passThroughSubject;
  type metadata accessor for Capsule();
  type metadata accessor for PassthroughSubject();
  *&v5[v7] = PassthroughSubject.__allocating_init()();
  v8 = &v5[direct field offset for CanvasElementViewController.__imageSize];
  *v8 = 0;
  v8[1] = 0;
  *&v5[direct field offset for CanvasElementViewController.__imageHeadroom] = 0;
  v5[direct field offset for CanvasElementViewController._liveStreamDrawings] = 0;
  v5[direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled] = 1;
  v9 = direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting;
  v5[direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting] = 0;
  v5[direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent] = 0;
  v5[direct field offset for CanvasElementViewController._canEditVellumOpacity] = 0;
  v10 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  v5[direct field offset for CanvasElementViewController._isImageAnalysisEnabled] = 1;
  v5[direct field offset for CanvasElementViewController._canEditDescription] = 1;
  v11 = direct field offset for CanvasElementViewController.plusButton;
  type metadata accessor for FormPlusButtonView();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration] = 0;
  v12 = &v5[direct field offset for CanvasElementViewController._bannerViewConfiguration];
  *v12 = 1;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 8) = 0u;
  v13 = [objc_allocWithZone(PPKQuickLookBannerView) init];
  *&v5[direct field offset for CanvasElementViewController._bannerView] = v13;
  *&v5[direct field offset for CanvasElementViewController.__rulerHostingDelegate] = 0;
  *&v5[direct field offset for CanvasElementViewController._rulerHostView] = 0;
  *&v5[direct field offset for CanvasElementViewController._formDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *&v5[direct field offset for CanvasElementViewController._analysis] = 0;
  ObservationRegistrar.init()();
  v5[direct field offset for CanvasElementViewController.allowMediaCanvasElements] = a3;
  *&v5[direct field offset for CanvasElementViewController.context] = a1;
  v5[direct field offset for CanvasElementViewController.transparentBackground] = a4;
  v5[direct field offset for CanvasElementViewController._editingMode] = v17;
  v5[v10] = a5;
  v5[v9] = 1;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for CanvasElementViewController();
  return objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
}

void CanvasElementViewController.liveStreamDrawings.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 & 1;
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v6 = direct field offset for CanvasElementViewController._liveStreamDrawings;
    swift_beginAccess();
    *(v2 + v6) = v4;
    CanvasElementViewController._allowsContentSnapping.didset(CanvasElementViewController.liveStreamDrawings.getter, AnyCanvas.liveStreamDrawings.setter);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void CanvasElementViewController.isSixChannelBlendingEnabled.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 & 1;
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v6 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
    swift_beginAccess();
    *(v2 + v6) = v4;
    CanvasElementViewController._isSixChannelBlendingEnabled.didset(CanvasElementViewController.isSixChannelBlendingActive.getter, &selRef_setSixChannelBlending_);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void CanvasElementViewController.sixChannelBlendingDisableSnapshotting.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 & 1;
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v6 = direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting;
    swift_beginAccess();
    *(v2 + v6) = v4;
    CanvasElementViewController._isSixChannelBlendingEnabled.didset(CanvasElementViewController.sixChannelBlendingDisableSnapshotting.getter, &selRef_setSixChannelBlendingDisableSnapshotting_);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void CanvasElementViewController.sixChannelBlendingRendersTransparent.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 & 1;
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v6 = direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent;
    swift_beginAccess();
    *(v2 + v6) = v4;
    CanvasElementViewController._isSixChannelBlendingEnabled.didset(CanvasElementViewController.sixChannelBlendingRendersTransparent.getter, &selRef_setSixChannelBlendingRendersTransparent_);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void CanvasElementViewController.canEditVellumOpacity.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 & 1;
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v6 = direct field offset for CanvasElementViewController._canEditVellumOpacity;
    swift_beginAccess();
    *(v2 + v6) = v4;
    CanvasElementViewController._canEditVellumOpacity.didset(CanvasElementViewController.canEditVellumOpacity.getter, &OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditVellumOpacity, &OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_opacityItemVisible);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t CanvasElementViewController.showParticipantCursors.setter(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  swift_beginAccess();
  v10 = a1 & 1;
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v11)
  {
    v12 = *a2;
    v13 = swift_beginAccess();
    *(v8 + v12) = v10;
    return a5(v13);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void CanvasElementViewController.canEditDescription.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 & 1;
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v6 = direct field offset for CanvasElementViewController._canEditDescription;
    swift_beginAccess();
    *(v2 + v6) = v4;
    CanvasElementViewController._canEditVellumOpacity.didset(CanvasElementViewController.canEditDescription.getter, &OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditDescription, &OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_descriptionItemVisible);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t CanvasElementViewController.isUpdatingBannerConfiguration.setter(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration) = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }

  return result;
}

uint64_t CanvasElementViewController.bannerViewConfiguration.setter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  CanvasElementViewController._bannerViewConfiguration.getter(v3);
  outlined consume of BannerViewConfiguration?(v3[0], v3[1], v3[2], v3[3], v3[4], v3[5], v3[6]);
  swift_getKeyPath();
  CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit23BannerViewConfigurationVSgMd);
}

void CanvasElementViewController.bannerView.setter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22PPKQuickLookBannerViewCSgMd);
  lazy protocol witness table accessor for type PPKQuickLookBannerView? and conformance <A> A?();
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v3)
  {
    v4 = *(v1 + direct field offset for CanvasElementViewController._bannerView);
    *(v1 + direct field offset for CanvasElementViewController._bannerView) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void CanvasElementViewController._rulerHostingDelegate.setter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit20RulerHostingDelegateCSgMd);
  lazy protocol witness table accessor for type RulerHostingDelegate? and conformance <A> A?();
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v3)
  {
    v4 = *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate);
    *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

void CanvasElementViewController.rulerHostView.setter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewCSgMd);
  lazy protocol witness table accessor for type UIView? and conformance <A> A?();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v2)
  {
    specialized CanvasElementViewController._rulerHostView.setter(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t CanvasElementViewController.participantDetailsDataSource.init@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t CanvasElementViewController.participantDetailsDataSource.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  CanvasElementViewController.withMutation<A, B>(keyPath:_:)();

  return swift_unknownObjectRelease();
}

void CanvasElementViewController.analysis.setter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16VKCImageAnalysisCSgMd);
  lazy protocol witness table accessor for type VKCImageAnalysis? and conformance <A> A?();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v2)
  {
    specialized CanvasElementViewController._analysis.setter(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    CanvasElementViewController.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t CanvasElementViewController.__ivar_destroyer()
{
  swift_unknownObjectRelease();
  outlined destroy of weak AnyContainerCanvasElementView?(v0 + direct field offset for CanvasElementViewController._participantDetailsDataSource);

  outlined consume of BannerViewConfiguration?(*(v0 + direct field offset for CanvasElementViewController._bannerViewConfiguration), *(v0 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 8), *(v0 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 16), *(v0 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 24), *(v0 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 32), *(v0 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 40), *(v0 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 48));
  outlined destroy of weak AnyContainerCanvasElementView?(v0 + direct field offset for CanvasElementViewController._formDelegate);

  v1 = direct field offset for CanvasElementViewController._$observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id CanvasElementViewController.__deallocating_deinit()
{
  v3 = 1;

  PassthroughSubject.send(completion:)();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc CanvasElementViewController.__ivar_destroyer(uint64_t a1)
{
  swift_unknownObjectRelease();
  outlined destroy of weak AnyContainerCanvasElementView?(a1 + direct field offset for CanvasElementViewController._participantDetailsDataSource);

  outlined consume of BannerViewConfiguration?(*(a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration), *(a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 8), *(a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 16), *(a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 24), *(a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 32), *(a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 40), *(a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration + 48));
  outlined destroy of weak AnyContainerCanvasElementView?(a1 + direct field offset for CanvasElementViewController._formDelegate);

  v2 = direct field offset for CanvasElementViewController._$observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t CanvasElementViewController.__allocating_init(context:allowsEditing:allowMediaCanvasElements:transparentBackground:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 == 2) | a2 & 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  return (*(v4 + 1024))(a1, &v7, a3, a4, 1);
}

Swift::Void __swiftcall CanvasElementViewController.updateToolPickerVisibility()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasElementViewController.updateToolPickerVisibility(), v7);
}

uint64_t closure #1 in CanvasElementViewController.updateToolPickerVisibility()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementViewController.updateToolPickerVisibility(), v6, v5);
}

uint64_t closure #1 in CanvasElementViewController.updateToolPickerVisibility()()
{
  v12 = v0;
  v1 = *(v0 + 16);

  v2 = [v1 pencilKitResponderState];
  v3 = [v2 _currentActiveToolPicker];

  if (v3)
  {
LABEL_2:

    goto LABEL_3;
  }

  v6 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v6)
  {
    v3 = v6;
    v7 = CanvasView._activeToolPicker.getter();
    if (v7)
    {
      v8 = v7;
      v9 = *(v0 + 16);
      CanvasElementViewController.editingMode.getter(&v11);
      v10 = v11 == 3;
      [v8 setVisible:v10 forFirstResponder:v3];
      [v8 setVisible:v10 forFirstResponder:v9];

      v3 = v8;
    }

    goto LABEL_2;
  }

LABEL_3:
  v4 = *(v0 + 8);

  return v4();
}

uint64_t CanvasElementViewController.tool.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PKInkingTool.InkType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v6)
  {
    v7 = v6;
    Canvas.tool.getter(&v12);

    return outlined init with take of PaperKitHashable(&v12, a1);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    (*(v3 + 104))(v5, *MEMORY[0x1E6978328], v2);
    v9 = [objc_opt_self() blackColor];
    v10 = type metadata accessor for PKInkingTool();
    v11 = MEMORY[0x1E6978370];
    a1[3] = v10;
    a1[4] = v11;
    __swift_allocate_boxed_opaque_existential_1(a1);
    result = PKInkingTool.init(_:color:width:)();
    if (*(&v13 + 1))
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(&v12, &_s9PencilKit6PKTool_pSgMd);
    }
  }

  return result;
}

uint64_t CanvasElementViewController.tool.setter(uint64_t a1)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v2)
  {
    v3 = v2;
    outlined init with copy of FindResult(a1, v6);
    v4 = v3;
    Canvas.tool.setter(v6);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*CanvasElementViewController.tool.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  CanvasElementViewController.tool.getter(v3);
  return CanvasElementViewController.tool.modify;
}

void CanvasElementViewController.tool.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of FindResult(*a1, v2 + 40);
    CanvasElementViewController.tool.setter(v2 + 40);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    CanvasElementViewController.tool.setter(*a1);
  }

  free(v2);
}

void CanvasElementViewController._allowsContentSnapping.didset(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v4)
  {
    v6 = v4;
    v5 = a1();
    a2(v5 & 1);
  }
}

uint64_t CanvasElementViewController._liveStreamDrawings.getter()
{
  v1 = direct field offset for CanvasElementViewController._liveStreamDrawings;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*CanvasElementViewController._liveStreamDrawings.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._liveStreamDrawings.modify;
}

uint64_t key path getter for CanvasElementViewController.liveStreamDrawings : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.liveStreamDrawings.getter();
  *a1 = result & 1;
  return result;
}

void (*CanvasElementViewController.liveStreamDrawings.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._liveStreamDrawings.modify(v4);
  return CanvasElementViewController.liveStreamDrawings.modify;
}

Swift::Bool __swiftcall CanvasElementViewController.becomeFirstResponder()()
{
  v1 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v1)
  {
    return [v1 becomeFirstResponder];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CanvasElementViewController();
  return objc_msgSendSuper2(&v3, sel_becomeFirstResponder);
}

BOOL @objc CanvasElementViewController.becomeFirstResponder()(void *a1)
{
  v1 = a1;
  v2 = CanvasElementViewController.becomeFirstResponder()();

  return v2;
}

Swift::Bool __swiftcall CanvasElementViewController.resignFirstResponder()()
{
  v1 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v1)
  {
    v2 = v1;
    if ([v2 isFirstResponder])
    {
      v3 = [v2 resignFirstResponder];

      return v3;
    }
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CanvasElementViewController();
  return objc_msgSendSuper2(&v5, sel_resignFirstResponder);
}

BOOL @objc CanvasElementViewController.resignFirstResponder()(void *a1)
{
  v1 = a1;
  v2 = CanvasElementViewController.resignFirstResponder()();

  return v2;
}

Swift::Void __swiftcall CanvasElementViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CanvasElementViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  [v0 setDefinesPresentationContext_];
  if (one-time initialization token for isQuickLookUIExtension != -1)
  {
    swift_once();
  }

  if (static NSBundle.isQuickLookUIExtension)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for isMarkupPhotoEditingExtension != -1)
  {
    swift_once();
  }

  if (static NSBundle.isMarkupPhotoEditingExtension == 1)
  {
LABEL_7:
    CanvasElementViewController.setupExtensionKeyCommands()();
  }

  CanvasElementViewController.updateToolPickerVisibility()();
}

void @objc CanvasElementViewController.viewDidLoad()(void *a1)
{
  v1 = a1;
  CanvasElementViewController.viewDidLoad()();
}

Swift::Void __swiftcall CanvasElementViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CanvasElementViewController();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  CanvasElementViewController.clearFormFillingFields()();
}

void @objc CanvasElementViewController.viewWillDisappear(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  CanvasElementViewController.viewWillDisappear(_:)(a3);
}

id CanvasElementViewController.scrollView.getter()
{
  v0 = specialized CanvasElementViewController.scrollView.getter();

  return v0;
}

uint64_t CanvasElementViewController.isSixChannelBlendingActive.getter()
{
  if ((CanvasElementViewController.isSixChannelBlendingEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1DA6CCED0](0xD000000000000036, 0x80000001D4088200);
  v2 = [v0 BOOLForKey_];

  return v2 ^ 1;
}

uint64_t CanvasElementViewController._isSixChannelBlendingEnabled.getter()
{
  v1 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*CanvasElementViewController._isSixChannelBlendingEnabled.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._isSixChannelBlendingEnabled.modify;
}

uint64_t key path getter for CanvasElementViewController.isSixChannelBlendingEnabled : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.isSixChannelBlendingEnabled.getter();
  *a1 = result & 1;
  return result;
}

void (*CanvasElementViewController.isSixChannelBlendingEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._isSixChannelBlendingEnabled.modify(v4);
  return CanvasElementViewController.isSixChannelBlendingEnabled.modify;
}

void CanvasElementViewController._isSixChannelBlendingEnabled.didset(uint64_t (*a1)(void), SEL *a2)
{
  if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
  {
    v4 = specialized CanvasView.tiledView.getter();
    if (v4)
    {
      v5 = v4;
      [v5 *a2];
    }
  }
}

uint64_t CanvasElementViewController._sixChannelBlendingDisableSnapshotting.getter()
{
  v1 = direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*CanvasElementViewController._sixChannelBlendingDisableSnapshotting.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._sixChannelBlendingDisableSnapshotting.modify;
}

uint64_t key path getter for CanvasElementViewController.sixChannelBlendingDisableSnapshotting : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.sixChannelBlendingDisableSnapshotting.getter();
  *a1 = result & 1;
  return result;
}

void (*CanvasElementViewController.sixChannelBlendingDisableSnapshotting.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._sixChannelBlendingDisableSnapshotting.modify(v4);
  return CanvasElementViewController.sixChannelBlendingDisableSnapshotting.modify;
}

uint64_t CanvasElementViewController._sixChannelBlendingRendersTransparent.getter()
{
  v1 = direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CanvasElementViewController._allowsContentSnapping.setter(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v10 = *a2;
  swift_beginAccess();
  *(v5 + v10) = a1;
  return a5(a3, a4);
}

uint64_t (*CanvasElementViewController._sixChannelBlendingRendersTransparent.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._sixChannelBlendingRendersTransparent.modify;
}

uint64_t CanvasElementViewController._allowsContentSnapping.modify(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a5(a3, a4);
  }

  return result;
}

uint64_t key path getter for CanvasElementViewController.sixChannelBlendingRendersTransparent : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.sixChannelBlendingRendersTransparent.getter();
  *a1 = result & 1;
  return result;
}

void (*CanvasElementViewController.sixChannelBlendingRendersTransparent.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._sixChannelBlendingRendersTransparent.modify(v4);
  return CanvasElementViewController.sixChannelBlendingRendersTransparent.modify;
}

uint64_t CanvasElementViewController._canEditVellumOpacity.getter()
{
  v1 = direct field offset for CanvasElementViewController._canEditVellumOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*CanvasElementViewController._canEditVellumOpacity.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._canEditVellumOpacity.modify;
}

uint64_t key path getter for CanvasElementViewController.canEditVellumOpacity : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.canEditVellumOpacity.getter();
  *a1 = result & 1;
  return result;
}

void (*CanvasElementViewController.canEditVellumOpacity.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._canEditVellumOpacity.modify(v4);
  return CanvasElementViewController.canEditVellumOpacity.modify;
}

uint64_t CanvasElementViewController.imageView.getter()
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = specialized CanvasView.zoomView.getter();
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = v1;
  v4 = v2;
  v5 = [v4 subviews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA6CE0C0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  type metadata accessor for ImageElementView(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void CanvasElementViewController._isImageAnalysisEnabled.didset()
{
  v0 = CanvasElementViewController.imageView.getter();
  if (v0)
  {
    v1 = v0;
    *(v0 + direct field offset for ImageElementView.isImageAnalysisEnabled) = CanvasElementViewController.isImageAnalysisEnabled.getter() & 1;
    ImageElementView.updateMediaViewImageAnalysis()();
  }
}

uint64_t CanvasElementViewController._isImageAnalysisEnabled.getter()
{
  v1 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CanvasElementViewController._showParticipantCursors.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = swift_beginAccess();
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t (*CanvasElementViewController._isImageAnalysisEnabled.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._isImageAnalysisEnabled.modify;
}

uint64_t key path getter for CanvasElementViewController.isImageAnalysisEnabled : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.isImageAnalysisEnabled.getter();
  *a1 = result & 1;
  return result;
}

void (*CanvasElementViewController.isImageAnalysisEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._isImageAnalysisEnabled.modify(v4);
  return CanvasElementViewController.isImageAnalysisEnabled.modify;
}

void CanvasElementViewController._canEditVellumOpacity.didset(uint64_t (*a1)(void), void *a2, void *a3)
{
  v6 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v6)
  {
    v7 = v6;
    v13 = Canvas.canvasElementController.getter();

    if (v13)
    {
      v8 = a1() & 1;
      v9 = v13;
      v13[*a2] = v8;
      v10 = *&v13[OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController];
      if (v10)
      {
        v11 = v10;
        v12 = ToolPickerController.textToolListViewController.getter();
        v12[*a3] = v8;
        MarkupEditViewController.updateUI()();

        v9 = v13;
      }
    }
  }
}

uint64_t CanvasElementViewController._canEditDescription.getter()
{
  v1 = direct field offset for CanvasElementViewController._canEditDescription;
  swift_beginAccess();
  return *(v0 + v1);
}

void CanvasElementViewController._canEditVellumOpacity.setter(char a1, uint64_t *a2, uint64_t (*a3)(void), void *a4, void *a5)
{
  v10 = *a2;
  swift_beginAccess();
  *(v5 + v10) = a1;
  CanvasElementViewController._canEditVellumOpacity.didset(a3, a4, a5);
}

void (*CanvasElementViewController._canEditDescription.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._canEditDescription.modify;
}

void CanvasElementViewController._canEditVellumOpacity.modify(uint64_t a1, char a2, uint64_t (*a3)(void), void *a4, void *a5)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CanvasElementViewController._canEditVellumOpacity.didset(a3, a4, a5);
  }
}

uint64_t key path getter for CanvasElementViewController.canEditDescription : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.canEditDescription.getter();
  *a1 = result & 1;
  return result;
}

uint64_t CanvasElementViewController.showParticipantCursors.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void (*CanvasElementViewController.canEditDescription.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._canEditDescription.modify(v4);
  return CanvasElementViewController.canEditDescription.modify;
}

uint64_t CanvasElementViewController.shouldDeselectElementsWhenToolPickerIsHidden.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = Canvas.canvasElementController.getter();

  if (!v2)
  {
    return 0;
  }

  v3 = v2[OBJC_IVAR____TtC8PaperKit23CanvasElementController_shouldDeselectElementsWhenToolPickerIsHidden];

  return v3;
}

void CanvasElementViewController.shouldDeselectElementsWhenToolPickerIsHidden.setter(char a1)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v2)
  {
    v3 = v2;
    v4 = Canvas.canvasElementController.getter();

    if (v4)
    {
      v4[OBJC_IVAR____TtC8PaperKit23CanvasElementController_shouldDeselectElementsWhenToolPickerIsHidden] = a1 & 1;
    }
  }
}

void (*CanvasElementViewController.shouldDeselectElementsWhenToolPickerIsHidden.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CanvasElementViewController.shouldDeselectElementsWhenToolPickerIsHidden.getter() & 1;
  return CanvasElementViewController.shouldDeselectElementsWhenToolPickerIsHidden.modify;
}

Swift::Void __swiftcall CanvasElementViewController.zoomIn()()
{
  v1 = specialized CanvasElementViewController.scrollView.getter();
  [v1 zoomScale];
  [v1 setZoomScale_];
}

void @objc CanvasElementViewController.zoomIn()(void *a1)
{
  v1 = a1;
  CanvasElementViewController.zoomIn()();
}

Swift::Void __swiftcall CanvasElementViewController.zoomOut()()
{
  v1 = specialized CanvasElementViewController.scrollView.getter();
  [v1 zoomScale];
  [v1 setZoomScale_];
}

void @objc CanvasElementViewController.zoomOut()(void *a1)
{
  v1 = a1;
  CanvasElementViewController.zoomOut()();
}

Swift::Void __swiftcall CanvasElementViewController.setupExtensionKeyCommands()()
{
  v1 = MEMORY[0x1DA6CCED0](62, 0xE100000000000000);
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0x100000 action:sel_zoomIn];

  v4 = MEMORY[0x1DA6CCED0](0x6E49206D6F6F5ALL, 0xE700000000000000);
  [v3 setTitle_];

  [v0 addKeyCommand_];
  v5 = MEMORY[0x1DA6CCED0](60, 0xE100000000000000);
  v7 = [v2 keyCommandWithInput:v5 modifierFlags:0x100000 action:sel_zoomOut];

  v6 = MEMORY[0x1DA6CCED0](0x6E49206D6F6F5ALL, 0xE700000000000000);
  [v7 setTitle_];

  [v0 addKeyCommand_];
}

id CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v187 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v182 = &v176 - v6;
  v7 = type metadata accessor for Image(0);
  v177 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v179 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v181 = &v176 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v184 = &v176 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v185 = &v176 - v14;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd);
  v190 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v180 = &v176 - v15;
  v16 = type metadata accessor for CRKeyPath();
  v191 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v176 - v20;
  v22 = *((v4 & v3) + 0x80);
  v193 = *((v4 & v3) + 0x78);
  v194 = v22;
  v23 = type metadata accessor for Capsule();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v176 - v26;
  v28 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v183 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v192 = &v176 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v195 = (&v176 - v34);
  v196 = v1;
  if (!specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView) || (*(v28 + 48))(a1, 1, v23) != 1)
  {
    (*(v25 + 16))(v27, a1, v24);
    if ((*(v28 + 48))(v27, 1, v23) == 1)
    {
      return (*(v25 + 8))(v27, v24);
    }

    v188 = v28;
    v189 = v23;
    v41 = v195;
    (*(v28 + 32))(v195, v27, v23);
    v42 = v196;
    v43 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    if (v43)
    {
      v44 = v192;
      v45 = v43;
      Canvas.updatablePaper2.getter(v192);
      v46 = v45;
      v47 = v189;
      Capsule.rootID.getter();
      (*(v188 + 8))(v44, v47);
      Capsule.rootID.getter();
      v48 = CRKeyPath.rawValue.getter();
      v49 = v41;
      v51 = v50;
      v52 = CRKeyPath.rawValue.getter();
      v54 = v53;
      v55 = specialized static Data.== infix(_:_:)(v48, v51, v52, v53);
      outlined consume of Data._Representation(v52, v54);
      outlined consume of Data._Representation(v48, v51);
      v56 = *(v191 + 8);
      v56(v18, v16);
      v56(v21, v16);
      if (v55)
      {
        v198[0] = 3;
        AnyCanvas.merge<A>(_:from:)(v49, v198, v193, v194);

        v41 = v49;
        v42 = v196;
      }

      else
      {
        v42 = v196;
        v57 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
        if (v57)
        {
          [v57 removeFromSuperview];
        }

        CanvasElementViewController.canvasView.setter(0);

        v41 = v195;
      }
    }

    if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
    {
      return (*(v188 + 8))(v41, v189);
    }

    v58 = *&v42[direct field offset for CanvasElementViewController.context];
    result = [v42 view];
    if (!result)
    {
      __break(1u);
      goto LABEL_79;
    }

    v59 = result;
    v191 = *(v187 + 136);
    type metadata accessor for CanvasView();
    [v59 bounds];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    CanvasElementViewController.editingMode.getter(v198);
    v68 = v42[direct field offset for CanvasElementViewController.allowMediaCanvasElements];
    LOBYTE(v59) = v42[direct field offset for CanvasElementViewController.transparentBackground];
    v69 = v42;
    specialized CanvasView.__allocating_init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(v58, v41, v198, v68, v59, v42, v61, v63, v65, v67);
    v71 = v70;
    v72 = CanvasElementViewController.liveStreamDrawings.getter();
    AnyCanvas.liveStreamDrawings.setter(v72 & 1);
    v73 = CanvasView._activeToolPicker.getter();
    if (v73)
    {
      v74 = v73;
      CanvasView.registerToolPickerObservers(_:)(v73);
    }

    v75 = v71;
    specialized CanvasElementViewController.liveStreamMessenger.getter();
    v77 = v76;
    v78 = swift_unknownObjectRetain();
    specialized Canvas.liveStreamMessenger.setter(v78, v77);
    swift_unknownObjectRelease();
    CanvasElementViewController.participantDetailsDataSource.getter();
    v80 = v79;
    v81 = &v75[OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource];
    swift_beginAccess();
    *(v81 + 1) = v80;
    swift_unknownObjectWeakAssign();
    v82 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView;
    [*&v75[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView] setNeedsLayout];
    swift_unknownObjectRelease();
    v83 = CanvasElementViewController.showParticipantCursors.getter() & 1;
    v84 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
    swift_beginAccess();
    if (v83 == v75[v84])
    {
      v75[v84] = v83;
      [*&v75[v82] setNeedsLayout];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v176 - 2) = v75;
      *(&v176 - 8) = v83;
      v197 = v75;
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v87 = CanvasElementViewController.delegate.getter();
    if (v87)
    {
      v88 = *(v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v89 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v89);
    *(&v176 - 4) = v75;
    *(&v176 - 3) = v87;
    *(&v176 - 2) = v88;
    v197 = v75;
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
    v90 = specialized CanvasView.tiledView.getter();
    if (v90)
    {
      v91 = v90;
      [v91 setSixChannelBlending_];
    }

    v92 = specialized CanvasView.tiledView.getter();
    v93 = v191;
    if (v92)
    {
      v94 = v92;
      [v94 setSixChannelBlendingDisableSnapshotting_];
    }

    v95 = specialized CanvasView.tiledView.getter();
    if (v95)
    {
      v96 = v95;
      [v96 setSixChannelBlendingRendersTransparent_];
    }

    v97 = Canvas.canvasElementController.getter();
    if (v97)
    {
      v98 = v97;
      v99 = CanvasElementViewController.canEditDescription.getter() & 1;
      v98[OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditDescription] = v99;
      v100 = *&v98[OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController];
      if (v100)
      {
        v101 = v100;
        v102 = ToolPickerController.textToolListViewController.getter();
        v102[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_descriptionItemVisible] = v99;
        MarkupEditViewController.updateUI()();
      }
    }

    v103 = Canvas.canvasElementController.getter();
    if (v103)
    {
      v104 = v103;
      v105 = CanvasElementViewController.canEditVellumOpacity.getter() & 1;
      v104[OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditVellumOpacity] = v105;
      v106 = *&v104[OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController];
      if (v106)
      {
        v107 = v106;
        v108 = ToolPickerController.textToolListViewController.getter();
        v108[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_opacityItemVisible] = v105;
        MarkupEditViewController.updateUI()();
      }
    }

    v109 = specialized CanvasView.tiledView.getter();
    if (v109)
    {
      v110 = v109;
      [v110 setRulerHostingDelegate_];
    }

    v111 = CanvasElementViewController.allowsContentSnapping.getter();
    CanvasView.allowsContentSnapping.setter(v111 & 1);
    v112 = objc_opt_self();
    v113 = [v112 mainBundle];
    v114 = [v113 bundleIdentifier];

    if (!v114)
    {
      goto LABEL_46;
    }

    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    if (v115 == 0xD000000000000011 && 0x80000001D408E2E0 == v117)
    {
LABEL_49:

      goto LABEL_50;
    }

    v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v118 & 1) == 0)
    {
LABEL_46:
      v119 = [v112 mainBundle];
      v120 = [v119 bundleIdentifier];

      if (!v120)
      {
        goto LABEL_51;
      }

      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;

      if (v121 == 0xD000000000000019 && 0x80000001D408E2C0 == v123)
      {
        goto LABEL_49;
      }

      v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v175 & 1) == 0)
      {
LABEL_51:
        if ([v69 isFirstResponder])
        {
          [v75 becomeFirstResponder];
        }

        v127 = v75;
        [v127 setAutoresizingMask_];
        [v127 setTranslatesAutoresizingMaskIntoConstraints_];

        result = [v69 view];
        if (result)
        {
          v128 = result;
          [result addSubview_];

          v129 = v127;
          CanvasElementViewController.canvasView.setter(v127);
          v130 = CanvasElementViewController.imageView.getter();
          if (v130)
          {
            v131 = v130[direct field offset for ImageElementView.shouldShowMissingImagePlaceholder];
            v130[direct field offset for ImageElementView.shouldShowMissingImagePlaceholder] = 0;
            if (v131 == 1)
            {
              v132 = direct field offset for ImageElementView.missingImageView;
              v133 = v130;
              [*&v130[direct field offset for ImageElementView.missingImageView] removeFromSuperview];
              v134 = *&v133[v132];
              *&v133[v132] = 0;

              v130 = v134;
            }
          }

          v135 = CanvasElementViewController.imageView.getter();
          if (v135)
          {
            v136 = v135;
            *(v135 + direct field offset for ImageElementView.isImageAnalysisEnabled) = CanvasElementViewController.isImageAnalysisEnabled.getter() & 1;
            ImageElementView.updateMediaViewImageAnalysis()();
          }

          type metadata accessor for CanvasElementViewController.MediaAnalysisObserver();
          specialized CanvasElementViewController.MediaAnalysisObserver.__allocating_init(viewController:)();
          v137 = CanvasElementViewController.imageView.getter();
          if (v137)
          {
            v138 = v137;

            specialized ImageElementView.addImageAnalysisObserver(_:)(v139, v138);
          }

          CanvasElementViewController.mediaAnalysisObserver.setter();
          v140 = CanvasElementViewController.imageView.getter();
          if (v140)
          {
            v141 = *&v140[direct field offset for ImageElementView.mediaView];
            v142 = v140;
            v143 = v141;

            if (v141 && (v144 = [v143 imageAnalysisContext], v143, v144))
            {
              v145 = [v144 analysis];
              swift_unknownObjectRelease();
              v140 = v145;
            }

            else
            {
              v140 = 0;
            }
          }

          CanvasElementViewController.analysis.setter(v140);
          v197 = Canvas.publisher.getter();
          type metadata accessor for AnyPublisher();
          type metadata accessor for PassthroughSubject();
          swift_getWitnessTable();
          swift_getWitnessTable();
          v146 = Publisher.subscribe<A>(_:)();

          CanvasElementViewController.canvasSubscribeCancellable.setter(v146);
          if (CanvasElementViewController.delegate.getter())
          {
            v148 = v147;
            ObjectType = swift_getObjectType();
            (*(v148 + 16))(v69, ObjectType, v148);
            swift_unknownObjectRelease();
          }

          v150 = v183;
          Canvas.updatablePaper2.getter(v183);
          v151 = v184;
          v152 = v189;
          Capsule<>.sharedCanvasElement.getter(v189, *(v93 + 8));
          v153 = *(v188 + 8);
          v188 += 8;
          v153(v150, v152);
          v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
          v155 = *(v154 - 8);
          v156 = (*(v155 + 48))(v151, 1, v154);
          v157 = v185;
          if (v156 == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
            (*(v190 + 56))(v157, 1, 1, v186);
          }

          else
          {
            SharedTagged_10.tagged2.getter();
            (*(v155 + 8))(v151, v154);
            v158 = v190;
            v159 = v186;
            if ((*(v190 + 48))(v157, 1, v186) != 1)
            {
              (*(v158 + 32))();
              v160 = v181;
              v161 = v193;
              Ref.subscript.getter();
              v162 = type metadata accessor for TaskPriority();
              (*(*(v162 - 8) + 56))(v182, 1, 1, v162);
              v163 = v179;
              _s8PaperKit9ShapeTypeOWOcTm_2(v160, v179, type metadata accessor for Image);
              type metadata accessor for MainActor();
              v164 = v69;
              v165 = v159;
              v166 = v164;
              v167 = static MainActor.shared.getter();
              v168 = (*(v177 + 80) + 64) & ~*(v177 + 80);
              v169 = swift_allocObject();
              v170 = MEMORY[0x1E69E85E0];
              v169[2] = v167;
              v169[3] = v170;
              v171 = v194;
              v169[4] = v161;
              v169[5] = v171;
              v169[6] = v191;
              v169[7] = v166;
              v172 = v163;
              v93 = v191;
              _s8PaperKit5ShapeVWObTm_2(v172, v169 + v168, type metadata accessor for Image);
              _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v182, &async function pointer to partial apply for closure #1 in CanvasElementViewController.updateViewForPaper(_:), v169);

              _s8PaperKit5ImageVWOhTm_1(v181, type metadata accessor for Image);
              (*(v190 + 8))(v180, v165);
              goto LABEL_74;
            }
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v157, &_s9Coherence3RefVy8PaperKit5ImageVGSgMd);
LABEL_74:
          v173 = v192;
          Canvas.updatablePaper2.getter(v192);

          v174 = v189;
          Capsule<>.logSubelementHeadroomsOnInternalBuilds()(v189, v93);

          v153(v173, v174);
          return (v153)(v195, v174);
        }

LABEL_79:
        __break(1u);
        return result;
      }
    }

LABEL_50:
    type metadata accessor for CanvasCalculateDocumentProxy();
    v124 = swift_allocObject();
    *(v124 + 16) = 0;
    v125 = MEMORY[0x1E69E7CC0];
    *(v124 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v126 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(v125);
    *(v124 + 40) = 0;
    *(v124 + 48) = 0;
    *(v124 + 32) = v126;
    *(v124 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt0g5Tf4g_n(v125);
    *(v124 + 64) = 0;
    specialized CanvasView.calculateDocumentForTesting.setter(v124, &protocol witness table for CanvasCalculateDocumentProxy);

    goto LABEL_51;
  }

  v35 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v36 = v196;
  [v196 setView_];

  CanvasElementViewController.canvasView.setter(0);
  result = CanvasElementViewController.delegate.getter();
  if (result)
  {
    v39 = v38;
    v40 = swift_getObjectType();
    (*(v39 + 16))(v36, v40, v39);

    return swift_unknownObjectRelease();
  }

  return result;
}