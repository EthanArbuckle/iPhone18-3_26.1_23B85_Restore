uint64_t closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for CustomModifier();
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t static KeyframeAnimator._makeView(view:inputs:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a8;
  v67 = *MEMORY[0x1E69E9840];
  v40 = type metadata accessor for KeyframeTrackState();
  MEMORY[0x1EEE9AC00](v40);
  v38 = v36 - v15;
  *&v61 = a3;
  *(&v61 + 1) = a4;
  v36[1] = a3;
  v36[2] = a4;
  *&v62 = a5;
  *(&v62 + 1) = a6;
  *&v63 = a7;
  v37 = type metadata accessor for AnimatorAttribute();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = v36 - v16;
  LODWORD(a1) = *a1;
  v18 = a2[3];
  v63 = a2[2];
  v64 = v18;
  v65 = a2[4];
  v66 = *(a2 + 20);
  v19 = a2[1];
  v61 = *a2;
  v62 = v19;
  v20 = a3;
  v21 = a5;
  closure #1 in static KeyframeAnimator._makeView(view:inputs:)(1, v20, a4, a5, a6, a7);
  LODWORD(a2) = AGGraphCreateOffsetAttribute2();
  v22 = DWORD2(v61);
  LODWORD(a4) = DWORD2(v62);
  v23 = v38;
  swift_storeEnumTagMultiPayload();
  v40 = a7;
  v24 = a4;
  v25 = v37;
  AnimatorAttribute.init(view:playback:phase:time:resetSeed:currentState:)(a1, a2, v24, v22, 0, v23, v17);
  v44[2] = v21;
  v44[3] = v25;
  v44[4] = swift_getWitnessTable();
  v26 = type metadata accessor for Attribute();
  v38 = v17;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v44, v25, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  v28 = LODWORD(v59[0]);
  AGGraphSetFlags();
  _GraphValue.init(_:)(v28, v43);
  v29 = v43[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v53 = v63;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v51 = v61;
  v52 = v62;
  v31 = v63;
  LODWORD(v53) = 0;
  v42 = v29;
  v57[0] = v61;
  v57[1] = v62;
  v58 = v66;
  v57[3] = v64;
  v57[4] = v65;
  v57[2] = v53;
  v47 = v53;
  v48 = v64;
  v49 = v65;
  v50 = v66;
  v45 = v61;
  v46 = v62;
  v32 = v40;
  v33 = *(v40 + 24);
  outlined init with copy of _ViewInputs(&v61, v59);
  outlined init with copy of _ViewInputs(v57, v59);
  v34 = v41;
  v33(&v42, &v45, v21, v32);
  v59[2] = v47;
  v59[3] = v48;
  v59[4] = v49;
  v60 = v50;
  v59[0] = v45;
  v59[1] = v46;
  outlined destroy of _ViewInputs(v59);
  LODWORD(v53) = v31;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v34, &v51);
    AGSubgraphEndTreeElement();
  }

  (*(v39 + 8))(v38, v25);
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v45 = v51;
  v46 = v52;
  return outlined destroy of _ViewInputs(&v45);
}

uint64_t type metadata completion function for KeyframeTrackState()
{
  result = type metadata accessor for KeyframeTrackState.RepeatingState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTrackState.RepeatingState()
{
  result = type metadata accessor for KeyframeTimeline();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTimeline()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AnimatorAttribute()
{
  result = type metadata accessor for KeyframeTrackState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in static KeyframeAnimator._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v7 = type metadata accessor for KeyframeAnimator();
  v8 = *(v7 + 64);
  v12[2] = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, &unk_1F00569F0, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t AnimatorAttribute.init(view:playback:phase:time:resetSeed:currentState:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  *(a7 + 4) = a5;
  v9 = *(type metadata accessor for AnimatorAttribute() + 76);
  v10 = type metadata accessor for KeyframeTrackState();
  return (*(*(v10 - 8) + 32))(&a7[v9], a6, v10);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnimatorAttribute<A, B, C>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

_DWORD *initializeWithCopy for AnimatorAttribute(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 80) & 0xF8;
  v15 = v14 + 11;
  v16 = v11 + v14 + 11;
  v17 = ~v14 & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 & v17);
  v19 = ((v12 + v15) & v17);
  v20 = *(v13 + 64) + 7;
  if ((((v20 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = (((v20 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v22 = *(v19 + v21);
  if (v22 >= 2 && v21 != 0)
  {
    v22 = *v19 + 2;
  }

  if (v22 == 1)
  {
    v24 = (v20 & 0xFFFFFFFFFFFFFFF8) + 8;
    (*(v13 + 16))(v18, v19);
    *((v18 + v20) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v20) & 0xFFFFFFFFFFFFFFF8);
    v25 = v18 + v24;
    v26 = *(v19 + v24);
    *(v25 + 2) = *(v19 + v24 + 16);
    *v25 = v26;
    *(v18 + v21) = 1;
  }

  else if (v22)
  {
    memcpy(v18, v19, v21 | 1);
  }

  else
  {
    *v18 = *v19;
    v18[1] = *(((v12 + v15) & v17) + 8);
    *(v18 + v21) = 0;
  }

  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out C)(void *a1)
{
  return (*(v1 + 32))(*a1);
}

{
  return (*(v1 + 24))(*a1);
}

unint64_t lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID()
{
  result = lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID;
  if (!lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID;
  if (!lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID);
  }

  return result;
}

void type metadata accessor for ViewTraitCollection.AnyTrait<TagValueTraitKey<Int>>()
{
  if (!lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<TagValueTraitKey<Int>>)
  {
    _sSnySiGMaTm_6(255, &lazy cache variable for type metadata for TagValueTraitKey<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TagValueTraitKey);
    lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>();
    v0 = type metadata accessor for ViewTraitCollection.AnyTrait();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<TagValueTraitKey<Int>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>()
{
  result = lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>;
  if (!lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>)
  {
    _sSnySiGMaTm_6(255, &lazy cache variable for type metadata for TagValueTraitKey<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TagValueTraitKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>);
  }

  return result;
}

uint64_t assignWithCopy for KeyframeAnimator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 15;
  outlined copy of _SymbolEffect.Trigger(v12);
  v13 = *v10;
  *v10 = v12;
  outlined consume of _SymbolEffect.Trigger(v13);
  v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  v14[1] = v15;

  return a1;
}

uint64_t static ConditionallyArchivableView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a2 + 48);
  v44 = *(a2 + 32);
  v45 = v8;
  v46 = *(a2 + 64);
  v47 = *(a2 + 80);
  v9 = *(a2 + 16);
  v42 = *a2;
  v43 = v9;
  static DynamicPropertyCache.fields(of:)(a3, &v54);
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36 = v42;
  v37 = v43;
  v19 = v7;
  v20 = v55;
  LODWORD(v25) = v7;
  v21 = *(&v54 + 1);
  v22 = v54;
  v48 = v54;
  LOBYTE(v49) = v55;
  v18 = DWORD1(v55);
  DWORD1(v49) = DWORD1(v55);
  outlined init with copy of _ViewInputs(&v42, &v54);
  static ConditionallyArchivableView.makeBody(view:inputs:fields:)(&v30, &v54, &v25, &v36, &v48, a3, a4);
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v48 = v36;
  v49 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v17 = v54;
  v10 = v55;
  LODWORD(v29) = v30;
  BYTE4(v29) = BYTE4(v30);
  v53 = v41;
  v35 = v41;
  v30 = v36;
  v31 = v37;
  outlined init with copy of _ViewInputs(&v48, &v54);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for ConditionalGraphValue();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  ConditionalGraphValue<>.makeView(inputs:)(&v30, v11, AssociatedConformanceWitness, v13, &v25);
  v56 = v32;
  v57 = v33;
  v58 = v34;
  v59 = v35;
  v54 = v30;
  v55 = v31;
  outlined destroy of _ViewInputs(&v54);
  v14 = v25;
  v15 = v26;
  if (v10)
  {
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v30 = v36;
    v31 = v37;
    outlined destroy of _ViewInputs(&v30);
  }

  else
  {
    v29 = v17;
    v24 = v19;
    v25 = v22;
    v26 = v21;
    v27 = v20;
    v28 = v18;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v24, &v25, a3);
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v30 = v36;
    v31 = v37;
    outlined destroy of _ViewInputs(&v30);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a5 = v14;
  a5[1] = v15;
  return result;
}

uint64_t ConditionalGraphValue<>.makeView(inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a1[3];
  v53[2] = a1[2];
  v53[3] = v11;
  v53[4] = a1[4];
  v54 = *(a1 + 20);
  v12 = a1[1];
  v53[0] = *a1;
  v53[1] = v12;
  v13 = *v5;
  v14 = *(v5 + 4);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v16 = ShouldRecordTree;
  if (v14)
  {
    v17 = *(a2 + 24);
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v18 = a1[3];
    v37 = a1[2];
    v38 = v18;
    v39 = a1[4];
    v40 = *(a1 + 20);
    v19 = a1[1];
    v35 = *a1;
    v36 = v19;
    v20 = v37;
    LODWORD(v37) = 0;
    v28 = v13;
    v41 = v35;
    v42 = v19;
    v46 = v40;
    v44 = v18;
    v45 = v39;
    v43 = v37;
    v31 = v37;
    v32 = v18;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v19;
    v21 = *(a4 + 24);
    outlined init with copy of _ViewInputs(v53, &v47);
    outlined init with copy of _ViewInputs(&v41, &v47);
    v21(&v28, &v29, v17, a4);
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v52 = v34;
    v47 = v29;
    v48 = v30;
    outlined destroy of _ViewInputs(&v47);
    LODWORD(v37) = v20;
    if (v16)
    {
LABEL_5:
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v35);
      AGSubgraphEndTreeElement();
    }
  }

  else
  {
    v23 = *(a2 + 16);
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v24 = a1[3];
    v37 = a1[2];
    v38 = v24;
    v39 = a1[4];
    v40 = *(a1 + 20);
    v25 = a1[1];
    v35 = *a1;
    v36 = v25;
    v26 = v37;
    LODWORD(v37) = 0;
    v28 = v13;
    v41 = v35;
    v42 = v25;
    v46 = v40;
    v44 = v24;
    v45 = v39;
    v43 = v37;
    v31 = v37;
    v32 = v24;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v25;
    v27 = *(a3 + 24);
    outlined init with copy of _ViewInputs(v53, &v47);
    outlined init with copy of _ViewInputs(&v41, &v47);
    v27(&v28, &v29, v23, a3);
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v52 = v34;
    v47 = v29;
    v48 = v30;
    outlined destroy of _ViewInputs(&v47);
    LODWORD(v37) = v26;
    if (v16)
    {
      goto LABEL_5;
    }
  }

  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v29 = v35;
  v30 = v36;
  return outlined destroy of _ViewInputs(&v29);
}

void type metadata accessor for Map<ResolvedStyledText, TimelineSchedule?>()
{
  if (!lazy cache variable for type metadata for Map<ResolvedStyledText, TimelineSchedule?>)
  {
    type metadata accessor for ResolvedStyledText();
    type metadata accessor for ScrollStateRequest?(255, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<ResolvedStyledText, TimelineSchedule?>);
    }
  }
}

double ForEach<>.init(_:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a3;
  v12[5] = a4;
  _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v14 = v13;
  _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_8(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  ForEach.init(_:idGenerator:content:)(v19, &v18, partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out C), v12, v14, v20);
  v15 = v22;
  v16 = v20[1];
  *a7 = v20[0];
  *(a7 + 16) = v16;
  result = *&v21;
  *(a7 + 32) = v21;
  *(a7 + 48) = v15;
  return result;
}

uint64_t sub_18D22FE68()
{

  return swift_deallocObject();
}

uint64_t instantiation function for generic protocol witness table for AnimatorAttribute<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for AnimatorAttribute(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8 | 7;
  v4 = ((((((((((result + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4) & ~v3);
  v5 = ((((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5;
  v7 = *(v4 + v5);
  if (v7 >= 2 && v6 != 0)
  {
    v7 = *v4 + 2;
  }

  if (v7 == 1)
  {
    (*(v2 + 8))((((((((((result + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4) & ~v3);
  }

  else if (!v7)
  {
  }

  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA03TaggdK0VySiG_Tt0g5(uint64_t a1, char a2)
{
  v4 = *v3;
  result = *v3 + 32;
  v6 = -*(*v3 + 16);
  v7 = -1;
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E6540];
  while (v6 + v7 != -1)
  {
    if (++v7 >= v4[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v2 = (result + 40);
    outlined init with copy of AnyTrackedValue(result, &v22);
    v10 = v23;
    v11 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    v12 = (v11[1])(v10, v11);
    _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for TagValueTraitKey<Int>, v8, v9, type metadata accessor for TagValueTraitKey);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v22);
    result = v2;
    if (v12 == v14)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v21;
  *v21 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_11:
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
  *v2 = v4;
LABEL_7:
  v17 = v4[2];
  v16 = v4[3];
  if (v17 >= v16 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v4);
    *v2 = v4;
  }

  type metadata accessor for ViewTraitCollection.AnyTrait<TagValueTraitKey<Int>>();
  v23 = v18;
  v24 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
  *&v22 = a1;
  BYTE8(v22) = a2 & 1;
  v4[2] = v17 + 1;
  result = outlined init with take of AnyTrackedValue(&v22, &v4[5 * v17 + 4]);
  *v2 = v4;
  return result;
}

uint64_t static _ContainerValueWritingModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v6 = *(a2 + 64);
  v12[0] = v5;
  v12[1] = v6;
  v14 = type metadata accessor for _ContainerValueWritingModifier.AddTrait();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<ViewTraitCollection>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16, v13, v14, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v17 = v11;

  v18 = 0;
  v19 = 0;
  a3(v9, v16);
  return outlined destroy of _ViewListInputs(v16);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ContainerValueWritingModifier<A>.AddTrait()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for _ContainerValueWritingModifier<A>.AddTrait(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _ContainerValueWritingModifier.AddTrait.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _ContainerValueWritingModifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  _TagTraitWritingModifier.AddTrait.traits.getter(a1, &v19);
  v15 = v19;
  if (!v19)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v19 = v15;
  _ContainerValueWritingModifier.AddTrait.modifier.getter(v14);
  v16 = *(v9 + 8);

  v16(v14, v8);
  _ContainerValueWritingModifier.AddTrait.modifier.getter(v11);
  (*(v5 + 16))(v7, &v11[*(v8 + 28)], a2);
  v16(v11, v8);
  swift_setAtWritableKeyPath();

  *v18 = v19;
  return result;
}

uint64_t _ContainerValueWritingModifier.AddTrait.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ContainerValueWritingModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t _TagTraitWritingModifier.AddTrait.traits.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    result = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  *a2 = result;
  return result;
}

uint64_t outlined assign with take of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ContainerValues.subscript.setter(uint64_t a1)
{
  specialized ContainerValues.subscript.setter(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

Swift::Int __swiftcall SubviewsCollection.index(after:)(Swift::Int after)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v3 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = ViewList.count.getter(v4, v5);
  static Update.end()();
  result = _MovableLockUnlock(v3);
  if ((after & 0x8000000000000000) == 0 && v6 > after)
  {
    return after + 1;
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for SubviewsCollectionSlice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  (**(v4 - 8))(a1 + 16, a2 + 16);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  v7 = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for SubviewsCollectionSlice(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t static SubviewsCollectionSlice._makeViewList(view:inputs:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>();
  lazy protocol witness table accessor for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child();
  v4 = Attribute.init<A>(body:value:flags:update:)();
  if (!AGSubgraphShouldRecordTree())
  {
    return _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(v4, a1, a2);
  }

  AGSubgraphBeginTreeElement();
  _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(v4, a1, a2);
  return AGSubgraphEndTreeElement();
}

unint64_t lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection()
{
  result = lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection;
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection;
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection;
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection;
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child()
{
  result = lazy protocol witness table cache variable for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child;
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child);
  }

  return result;
}

uint64_t _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v10);
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v10);
  v10 = a1;
  v11 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init, type metadata accessor for ForEachState.Info.Init);
  lazy protocol witness table accessor for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init(&lazy protocol witness table cache variable for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init, type metadata accessor for ForEachState.Info.Init);

  v7 = Attribute.init<A>(body:value:flags:update:)();

  v6[40] = v7;
  *(v6 + 164) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*a2);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_5:
    specialized static GraphHost.currentHost.getter();
    swift_beginAccess();

    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Evictor, type metadata accessor for ForEachState.Evictor);
    lazy protocol witness table accessor for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init(&lazy protocol witness table cache variable for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Evictor and conformance ForEachState<A, B, C>.Evictor, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Evictor, type metadata accessor for ForEachState.Evictor);

    Attribute.init<A>(body:value:flags:update:)();

    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview>.Init, type metadata accessor for ForEachList.Init);
  lazy protocol witness table accessor for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init(&lazy protocol witness table cache variable for type ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview>.Init and conformance ForEachList<A, B, C>.Init, &lazy cache variable for type metadata for ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview>.Init, type metadata accessor for ForEachList.Init);
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v6[42] = v8;
  *(v6 + 172) = 0;

  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2[6];
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

void type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for Slice<_VariadicView_Children>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v9[0] = v6;
    v9[1] = &type metadata for Subview.ID;
    v9[2] = &type metadata for Subview;
    v9[3] = lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    v9[4] = lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v9[5] = &protocol witness table for Subview;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for Slice<_VariadicView_Children>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void *assignWithCopy for SubviewsCollectionSlice(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  __swift_assign_boxed_opaque_existential_1(a1 + 2, a2 + 2);
  v4 = a2[7];
  v5 = a1[7];
  a1[7] = v4;
  v6 = v4;

  a1[8] = a2[8];

  a1[9] = a2[9];
  return a1;
}

uint64_t static EnumeratedViews._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  outlined init with copy of _ViewListInputs(a2, v61);
  if ((~v62 & 0x10800) != 0)
  {
    v62 |= 0x10800uLL;
  }

  v14 = *(*(a3 - 8) + 64);
  v44 = a7;
  if (v14)
  {
    closure #1 in static CountViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6, type metadata accessor for EnumeratedViews, closure #1 in static PointerOffset.of(_:)partial apply);
  }

  v43 = v13;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v56);
  v16 = v56;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v49) = v16;
  (*(a5 + 32))(&v49, v61, a3, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v16, a3, a5);
  outlined init with copy of _ViewListOutputs.Views(v44, v60);
  if (v60[40])
  {
    outlined destroy of _ViewListOutputs.Views(v60);
    v17 = _ViewListOutputs.makeAttribute(inputs:)(v61);
    *&v56 = a3;
    *(&v56 + 1) = a4;
    *&v57 = a5;
    *(&v57 + 1) = a6;
    if (*(*(type metadata accessor for MappedViews() - 8) + 64))
    {
      closure #2 in static EnumeratedViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6, closure #1 in static PointerOffset.of(_:)partial apply);
    }

    v22 = AGGraphCreateOffsetAttribute2();
    v23 = *(a2 + 16);
    v53 = *a2;
    v54 = v23;
    v25 = *a2;
    v24 = *(a2 + 16);
    v55 = *(a2 + 32);
    v56 = v25;
    v26 = *(a2 + 32);
    v57 = v24;
    v58 = v26;
    outlined init with copy of _GraphInputs(&v53, &v49);
    v27 = default argument 3 of MappedViews.MappedList.Init.init(list:view:baseInputs:views:)();
    MappedViews.MappedList.Init.init(list:view:baseInputs:views:)(v17, v22, &v56, v27, &v49);
    MEMORY[0x1EEE9AC00](v28);
    *&v56 = a3;
    *(&v56 + 1) = a4;
    *&v57 = a5;
    *(&v57 + 1) = a6;
    v29 = type metadata accessor for MappedViews.MappedList.Init();
    v41 = v29;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<ViewList>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v49, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_6, &v40, v29, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);
    v56 = v49;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    (*(*(v29 - 8) + 8))(&v56, v29);
    outlined destroy of _ViewListInputs(v61);
    v32 = v48[0];
    v33 = v44;
    result = outlined destroy of _ViewListOutputs.Views(v44);
    *v33 = v32;
    *(v33 + 8) = 0;
    *(v33 + 40) = 1;
    return result;
  }

  outlined init with take of _ViewList_Elements(v60, v48);
  outlined init with copy of AnyTrackedValue(v48, v47);
  v18 = *(a2 + 16);
  v56 = *a2;
  v57 = v18;
  v20 = *a2;
  v19 = *(a2 + 16);
  v58 = *(a2 + 32);
  v49 = v20;
  v50 = v19;
  v51 = *(a2 + 32);
  v21 = *(a2 + 48);
  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v21 > 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  v45[0] = 0;
  v45[1] = v21;
  v46 = MEMORY[0x1E69E7CC0];
  *&v53 = a3;
  *(&v53 + 1) = a4;
  *&v54 = a5;
  *(&v54 + 1) = a6;
  if (*(*(type metadata accessor for MappedViews() - 8) + 64))
  {
    outlined init with copy of _GraphInputs(&v56, &v53);
    closure #2 in static EnumeratedViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6, partial apply for closure #1 in static PointerOffset.of(_:));
  }

  else
  {
    outlined init with copy of _GraphInputs(&v56, &v53);
  }

  v43 = AGGraphCreateOffsetAttribute2();
  v35 = type metadata accessor for WeakAttribute();
  v36 = lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
  type metadata accessor for Dictionary();
  type metadata accessor for MutableBox();
  swift_getTupleTypeMetadata2();
  v37 = static Array._allocateUninitialized(_:)();
  v38 = specialized Dictionary.init(dictionaryLiteral:)(v37, &type metadata for _ViewList_ID.Canonical, v35, v36);

  __swift_destroy_boxed_opaque_existential_1(v48);
  outlined destroy of _ViewListInputs(v61);
  *&v53 = v38;
  v39 = MutableBox.__allocating_init(_:)(&v53);
  *&v53 = a3;
  *(&v53 + 1) = a4;
  *&v54 = a5;
  *(&v54 + 1) = a6;
  *(&v54 + 1) = type metadata accessor for MappedViews.MappedElements();
  *&v55 = &protocol witness table for MappedViews<A, B>.MappedElements;
  *&v53 = swift_allocObject();
  v41 = a6;
  MappedViews.MappedElements.init(base:baseInputs:id:list:view:views:)(v47, &v49, v45, 0, v43, v39, v53 + 16);
  BYTE8(v55) = 0;
  return outlined assign with take of _ViewListOutputs.Views(&v53, v44);
}

uint64_t sub_18D231A74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t _ViewListInputs.updateContentOffset(outputs:)(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    outlined init with copy of _ViewListOutputs.Views(a1, &v22);
    if ((v23 & 1) == 0)
    {
      outlined init with take of _ViewList_Elements(&v22, v19);
      v15 = v20;
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v17 = (*(v16 + 8))(v15, v16);
      _ViewListInputs.updateStaticContentOffset(count:needsDynamicView:)(v17, 0);
      return __swift_destroy_boxed_opaque_existential_1(v19);
    }

    v2 = v22;

    LODWORD(v19[0]) = v2;
    v19[1] = partial apply for specialized closure #1 in Attribute.subscript.getter;
    v19[2] = swift_getKeyPath();
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Map<ViewList, Int>();
    lazy protocol witness table accessor for type Map<ViewList, Int> and conformance Map<A, B>();

    v3 = Attribute.init<A>(body:value:flags:update:)();

    v5 = *(v1 + 128);
    if (v5 == 255)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v1 + 112);
      if (v5)
      {
        v7 = *(v1 + 120);
        v19[0] = __PAIR64__(v6, v3);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation();
        result = Attribute.init<A>(body:value:flags:update:)();
        v3 = result;
        v6 = v7;
      }

      else
      {
        v19[0] = __PAIR64__(*MEMORY[0x1E698D3F8], v3);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation();
        result = Attribute.init<A>(body:value:flags:update:)();
        v3 = result;
      }
    }

    *(v1 + 112) = v3;
    *(v1 + 120) = v6;
    goto LABEL_17;
  }

  v8 = *(a1 + 56);
  outlined init with copy of _ViewListOutputs.Views(a1, &v22);
  v9 = v23;
  result = outlined destroy of _ViewListOutputs.Views(&v22);
  v10 = *(v1 + 128);
  if (v10 == 255)
  {
    *(v1 + 112) = v8;
    *(v1 + 120) = v9;
    *(v1 + 128) = 0;
    return result;
  }

  v12 = *(v1 + 112);
  v11 = *(v1 + 120);
  if ((v10 & 1) == 0)
  {
    v13 = __OFADD__(v12, v8);
    v18 = v12 + v8;
    if (!v13)
    {
      *(v1 + 112) = v18;
      *(v1 + 120) = (v11 | v9) & 1;
      *(v1 + 128) = 0;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  v13 = __OFADD__(v11, v8);
  v14 = v11 + v8;
  if (v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v1 + 112) = v12;
  *(v1 + 120) = v14;
LABEL_17:
  *(v1 + 128) = 1;
  return result;
}

uint64_t sub_18D231DA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = ViewList.count.getter(v3, v4);
  *a2 = result;
  return result;
}

uint64_t closure #2 in static EnumeratedViews._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[2] = type metadata accessor for EnumeratedViews();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v16 = type metadata accessor for MappedViews();
  v12 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v15, v16, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v17;
}

uint64_t default argument 3 of MappedViews.MappedList.Init.init(list:view:baseInputs:views:)()
{
  type metadata accessor for WeakAttribute();
  lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
  type metadata accessor for Dictionary();
  type metadata accessor for MutableBox();
  v1 = Dictionary.init()();
  return MutableBox.__allocating_init(_:)(&v1);
}

__n128 MappedViews.MappedList.Init.init(list:view:baseInputs:views:)@<Q0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 4) = a2;
  v5 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v5;
  result = *(a3 + 32);
  *(a5 + 40) = result;
  *(a5 + 56) = a4;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MappedViews<A, B>.MappedList.Init()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for MappedViews<A, B>.MappedList.Init(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for MappedViews.MappedList.Init()
{
}

uint64_t MappedViews.MappedList.Init.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  *v14 = *v1;
  *&v14[16] = v3;
  v4 = v1[3];
  *&v14[32] = v1[2];
  *&v14[48] = v4;
  MappedViews.MappedList.Init.list.getter(v13);
  v10 = *&v14[8];
  v11 = *&v14[24];
  v12 = *&v14[40];
  v5 = *&v14[4];
  v6 = *&v14[56];
  a1[3] = type metadata accessor for MappedViews.MappedList();
  a1[4] = swift_getWitnessTable();
  v7 = swift_allocObject();
  *a1 = v7;
  outlined init with take of AnyTrackedValue(v13, v7 + 16);
  v8 = v11;
  *(v7 + 56) = v10;
  *(v7 + 72) = v8;
  *(v7 + 88) = v12;
  *(v7 + 104) = v5;
  *(v7 + 112) = v6;
  outlined init with copy of _GraphInputs(&v14[8], &v10);
}

uint64_t sub_18D23218C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t MappedViews.MappedList.Init.list.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  Value = AGGraphGetValue();
  return outlined init with copy of AnyTrackedValue(Value, a1);
}

void type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v9[0] = v6;
    v9[1] = &type metadata for Subview.ID;
    v9[2] = &type metadata for Subview;
    v9[3] = lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    v9[4] = lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v9[5] = &protocol witness table for Subview;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v9[0] = v6;
    v9[1] = &type metadata for Subview.ID;
    v9[2] = &type metadata for Subview;
    v9[3] = lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    v9[4] = lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v9[5] = &protocol witness table for Subview;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Set<EventID>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Subview and conformance Subview()
{
  result = lazy protocol witness table cache variable for type Subview and conformance Subview;
  if (!lazy protocol witness table cache variable for type Subview and conformance Subview)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subview and conformance Subview);
  }

  return result;
}

uint64_t outlined destroy of Slice<SubviewsCollection>(uint64_t a1)
{
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized ForEachState.update(view:)(uint64_t *a1)
{
  v2 = v1;
  v186 = *MEMORY[0x1E69E9840];
  _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder);
  v156 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v159 = v135 - v5;
  _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v135 - v8;
  v10 = v1[19];
  result = AGSubgraphIsValid();
  if (result)
  {
    v12 = AGMakeUniqueID();
    v146 = *(*v1 + 232);
    *(v1 + v146) = v12;
    v13 = *(*v1 + 240);
    v14 = *(v1 + v13);
    v154 = v13;
    *(v1 + v13) = v14 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v1[40];
    v145 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v16 + 16));
    }

    else
    {
      *(v2 + 320) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v16 + 24) >> 1);
    }

    *(v2 + 328) = 2;
    swift_beginAccess();
    _s2os6LoggerVSgWOcTm_0(v2 + 176, v180, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>?, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    v17 = *(&v181 + 1);
    _s2os6LoggerVSgWOhTm_0(v180, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>?, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    if (v17)
    {
      if (!*(v2 + 216))
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      if (!*(v2 + 272))
      {
        outlined init with copy of Set<EventID>(v2 + 176, v180, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
        v46 = specialized Slice.distance(from:to:)(*&v180[0], *(&v180[0] + 1));
        outlined destroy of Slice<SubviewsCollection>(v180);
        v47 = *a1;
        v48 = a1[1];
        if (v46 != specialized Slice.distance(from:to:)(*a1, v48))
        {
          *&v180[0] = 0;
          *(&v180[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(204);
          v168 = v180[0];
          MEMORY[0x193ABEDD0](0xD00000000000002FLL, 0x800000018DD7D030);
          MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
          *&v180[0] = specialized Slice.distance(from:to:)(v47, v48);
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v49);

          MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
          if (!*(v2 + 216))
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          outlined init with copy of Set<EventID>(v2 + 176, v180, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
          v50 = specialized Slice.distance(from:to:)(*&v180[0], *(&v180[0] + 1));
          outlined destroy of Slice<SubviewsCollection>(v180);
          *&v166[0] = v50;
          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v51);

          MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
          specialized static Log.externalWarning(_:)(v168, *(&v168 + 1));
        }

        if (*(v2 + 216))
        {
          v52 = MEMORY[0x1E69E74D0];
          outlined init with copy of Set<EventID>(v2 + 176, &v168, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v180, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
          swift_beginAccess();
          outlined assign with take of ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?(v180, v2 + 176, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>?, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
          outlined init with copy of Set<EventID>(&v168, v180, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, v52);
          if (*(v2 + 216))
          {
            outlined assign with take of Slice<SubviewsCollection>(v180, v2 + 176);
            swift_endAccess();
            swift_beginAccess();
            v53 = *(v2 + 336);
            v45 = v53 + 64;
            v54 = 1 << *(v53 + 32);
            v55 = -1;
            if (v54 < 64)
            {
              v55 = ~(-1 << v54);
            }

            v56 = v55 & *(v53 + 64);
            v57 = (v54 + 63) >> 6;

            v58 = 0;
LABEL_28:
            if (v56)
            {
              goto LABEL_33;
            }

            while (1)
            {
              v59 = v58 + 1;
              if (__OFADD__(v58, 1))
              {
                break;
              }

              if (v59 >= v57)
              {
                goto LABEL_36;
              }

              v56 = *(v45 + 8 * v59);
              ++v58;
              if (v56)
              {
                v58 = v59;
LABEL_33:
                v60 = __clz(__rbit64(v56)) | (v58 << 6);
                v61 = *(*(v53 + 48) + 16 * v60 + 8);
                v62 = *(*(v53 + 56) + 8 * v60);

                if (!v61)
                {
LABEL_36:
                  outlined destroy of Slice<SubviewsCollection>(&v168);
                }

                *(v62 + 128) = *(v2 + v146);
                if (*(v62 + 136) == v14)
                {
                  *(v62 + 136) = *(v2 + v154);
                }

                v56 &= v56 - 1;

                goto LABEL_28;
              }
            }

            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
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
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          goto LABEL_165;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v180, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    swift_beginAccess();
    outlined assign with take of ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?(v180, v2 + 176, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>?, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    swift_endAccess();
    v18 = MEMORY[0x1E69E7CD0];
    v19 = v145;
    *v145 = MEMORY[0x1E69E7CD0];
    v19[1] = v18;
    v139 = v7;
    swift_storeEnumTagMultiPayload();
    v20 = *(*v2 + 208);
    swift_beginAccess();
    v138 = v20;
    outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(v19, v2 + v20, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.LazyEdits, type metadata accessor for ForEachState.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
    swift_endAccess();
    v21 = v159;
    outlined init with copy of Set<EventID>(a1, v159, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v22 = a1[12];
    v23 = v156;
    v24 = v21 + *(v156 + 72);

    IndexSet.init()();
    v140 = type metadata accessor for IndexSetBuilder(0);
    v25 = v24 + *(v140 + 20);
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    v26 = (v21 + *(v23 + 76));
    *v26 = v18;
    v26[1] = v18;
    *(v21 + 80) = v22;
    if ((*(v2 + 172) & 1) == 0)
    {
      v27 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      *(v2 + *(*v2 + 216)) = Counter;
      outlined init with copy of Set<EventID>(a1, &v175, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
      v29 = *v2;
      v30 = *(*v2 + 224);
      if ((*(v2 + v30) & 0x8000000000000000) != 0)
      {
        v40 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_155:
        *(v2 + *(v29 + 248)) = 0;
        *(v2 + v30) = v40;
        outlined destroy of Slice<SubviewsCollection>(&v175);
        v132 = v159;
        swift_beginAccess();
        v133 = v145;
        outlined init with copy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(v132, v145, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
        outlined destroy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(v132, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
        swift_storeEnumTagMultiPayload();
        v134 = v138;
        swift_beginAccess();
        outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(v133, v2 + v134, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.LazyEdits, type metadata accessor for ForEachState.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
        return swift_endAccess();
      }

      v137 = *(*v2 + 224);
      swift_beginAccess();
      v31 = *(v2 + 336);
      v160 = *(v31 + 16);
      v32 = *(*v2 + 272);
      swift_beginAccess();
      v136 = v32;
      v152 = *(v2 + v32);
      v153 = v2;
      v157 = *(v152 + 16);
      v163 = v18;
      v34 = *a1;
      v33 = a1[1];
      v35 = *a1 == v33;
      v36 = *a1 < v33;
      v141 = v10;
      v155 = v31;
      if (v35)
      {

        v37 = 0;
        v38 = 0;
        v39 = 0;
        v142 = 0;
        v143 = 1;
        goto LABEL_46;
      }

      if (!v36)
      {
        __break(1u);
        goto LABEL_157;
      }

      _VariadicView_Children.subscript.getter(v34, &v168);
      v183 = v172;
      v184 = v173;
      v185 = v174;
      v180[0] = v168;
      v180[1] = v169;
      v181 = v170;
      v182 = v171;
      v41 = a1[12];
      if (v41)
      {

        v42 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
        if (v43)
        {

          v44 = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
          v45 = v41;
          (partial apply for specialized closure #2 in KeyPath.makeGetFunction())(&v164, v180);
        }

        else
        {
          v63 = v42;
          v45 = swift_allocObject();
          *(v45 + 16) = v63;
          v44 = partial apply for specialized closure #1 in KeyPath.makeGetFunction();
          (partial apply for specialized closure #1 in KeyPath.makeGetFunction())(&v164, v180);
        }

        v64 = v175;
        if (*(v31 + 16) && (v65 = specialized __RawDictionaryStorage.find<A>(_:)(v164, v165), (v66 & 1) != 0))
        {
          v67 = *(*(v31 + 56) + 8 * v65);
        }

        else
        {
          v67 = 0;
        }

        v135[2] = v41;
        *&v168 = v67;
        type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item?(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item?, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
        _ViewInputs.base.modify(&v168, v68);

        v135[1] = v165;
        LOBYTE(v168) = specialized Set.contains(_:)(v164, v165, v152) & 1;
        _ViewInputs.base.modify(&v168, MEMORY[0x1E69E6370]);
        if (v64 == v176)
        {
          v2 = 0;
          v38 = 0;
          v144 = 0;
          v142 = 0;
          v143 = 1;
LABEL_44:
          v37 = v2;
          outlined destroy of Subview(v180);

LABEL_45:
          v31 = v155;

          v2 = v153;
          v39 = v144;
LABEL_46:
          v69 = *(*v2 + 248);
          if ((*(v2 + v69) & 1) == 0)
          {
            v70 = v159;
            swift_beginAccess();
            v71 = v70 + *(v156 + 72);
            if ((v143 & 1) == 0)
            {
              v72 = v71 + *(v140 + 20);
              if (v37 >= v39)
              {
                *v72 = 0;
                *(v72 + 8) = 0;
                *(v72 + 16) = 1;
              }

              else if (v38 >= v39)
              {
                *v72 = v37;
                *(v72 + 8) = v39;
                *(v72 + 16) = 0;
              }
            }

            IndexSet.remove(integersIn:)();
            swift_endAccess();
          }

          if (!v160)
          {

LABEL_151:
            if (*(v2 + v69))
            {
              v40 = v142;
            }

            else
            {
              v40 = 0x7FFFFFFFFFFFFFFFLL;
            }

            swift_beginAccess();
            *(v2 + v136) = v163;

            v29 = *v2;
            v30 = v137;
            goto LABEL_155;
          }

          v149 = v69;
          v152 = MEMORY[0x1E69E7CC0];
          *&v166[0] = MEMORY[0x1E69E7CC0];
          v45 = v31 + 64;
          v96 = _HashTable.startBucket.getter();
          v158 = 1 << *(v31 + 32);
          v97 = *(v31 + 36);
          v150 = v31 + 72;
          v151 = v31 + 64;
          v98 = v97;
          v99 = v97;
          while (1)
          {
            if (v99 != v97)
            {
              goto LABEL_138;
            }

            if (v96 == v158)
            {
              break;
            }

            if (v96 < 0)
            {
              goto LABEL_139;
            }

            v2 = 1 << *(v31 + 32);
            if (v96 >= v2)
            {
              goto LABEL_139;
            }

            v100 = v96 >> 6;
            if ((*(v45 + 8 * (v96 >> 6)) & (1 << v96)) == 0)
            {
              goto LABEL_140;
            }

            v101 = *(*(v31 + 56) + 8 * v96);
            if (*(v101 + 142))
            {

              v102 = v98;
            }

            else
            {
              v157 = v98;
              v103 = *(v101 + 136);
              v104 = *(v153 + v154);

              if (v103 != v104)
              {

                MEMORY[0x193ABF170](v105);
                if (*((*&v166[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v166[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v152 = *&v166[0];
                --v160;
                swift_beginAccess();
                v107 = *(v101 + 32);
                v106 = *(v101 + 40);

                specialized Set._Variant.insert(_:)(&v168, v107, v106);

                swift_endAccess();
                v31 = v155;
                v2 = 1 << *(v155 + 32);
              }

              v45 = v151;
              v102 = v157;
            }

            if (v96 >= v2)
            {
              goto LABEL_141;
            }

            v108 = *(v45 + 8 * v100);
            if ((v108 & (1 << v96)) == 0)
            {
              goto LABEL_142;
            }

            if (v97 != *(v31 + 36))
            {
              goto LABEL_143;
            }

            v109 = v108 & (-2 << (v96 & 0x3F));
            if (v109)
            {

              v2 = __clz(__rbit64(v109)) | v96 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v110 = v100 << 6;
              v111 = v100 + 1;
              v112 = (v150 + 8 * v100);
              while (v111 < (v2 + 63) >> 6)
              {
                v114 = *v112++;
                v113 = v114;
                v110 += 64;
                ++v111;
                if (v114)
                {
                  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v96, v102, 0);

                  v2 = __clz(__rbit64(v113)) + v110;
                  goto LABEL_94;
                }
              }

              outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v96, v102, 0);
            }

LABEL_94:
            v98 = *(v31 + 36);
            v99 = *(v31 + 36);
            v96 = v2;
            if (!v160)
            {
              goto LABEL_118;
            }
          }

          v2 = v158;
LABEL_118:
          v157 = v98;

          v45 = v152;
          if (!(v152 >> 62))
          {
            v115 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v115)
            {
LABEL_120:
              if (v115 < 1)
              {
LABEL_157:
                __break(1u);
LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
              }

              v116 = 0;
              v117 = v45 & 0xC000000000000001;
              v160 = v115;
              while (1)
              {
                if (v117)
                {
                  v118 = MEMORY[0x193AC03C0](v116, v45);
                }

                else
                {
                  v118 = *(v45 + 8 * v116 + 32);
                }

                AGSubgraphApply();
                AGSubgraphRemoveChild();
                *(v118 + 141) = 256;
                v119 = *(v118 + 24) - 1;
                *(v118 + 24) = v119;
                if (!v119)
                {
                  break;
                }

LABEL_123:
                ++v116;

                if (v115 == v116)
                {
                  goto LABEL_150;
                }
              }

              Strong = swift_weakLoadStrong();
              if (Strong)
              {
                v121 = Strong;
                swift_beginAccess();
                v122 = *(v121 + 336);
                if (*(v122 + 16))
                {
                  v124 = *(v118 + 32);
                  v123 = *(v118 + 40);

                  v125 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v123);
                  if (v126)
                  {
                    v127 = v125;
                    v128 = *(v122 + 36);

                    swift_beginAccess();
                    specialized Dictionary._Variant.remove(at:)(&v168, v127, v128);
                    swift_endAccess();

                    goto LABEL_134;
                  }
                }

                v130 = specialized _NativeDictionary.filter(_:)(v129, v118, specialized _NativeDictionary.extractDictionary(using:count:));

                *(v121 + 336) = v130;
              }

LABEL_134:
              IsValid = AGSubgraphIsValid();
              v45 = v152;
              if (IsValid)
              {
                AGSubgraphRef.willInvalidate(isInserted:)(1);
                AGSubgraphInvalidate();
              }

              v115 = v160;
              goto LABEL_123;
            }

            goto LABEL_150;
          }

LABEL_149:
          v115 = __CocoaSet.count.getter();
          if (v115)
          {
            goto LABEL_120;
          }

LABEL_150:

          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v157, 0);
          v2 = v153;
          v69 = v149;
          goto LABEL_151;
        }

        v73 = 0;
        v142 = 0;
        v38 = 0;
        v2 = 0;
        if (v176 <= v64)
        {
          v74 = v64;
        }

        else
        {
          v74 = v176;
        }

        v150 = v64;
        v151 = v74;
        v143 = 1;
        v144 = 0;
        v75 = v64;
        v148 = v44;
        v149 = v45;
        v147 = v176;
        while (1)
        {
          if (v151 == v75)
          {
            goto LABEL_144;
          }

          _VariadicView_Children.subscript.getter(v75, &v168);
          v166[4] = v172;
          v166[5] = v173;
          v167 = v174;
          v166[0] = v168;
          v166[1] = v169;
          v166[2] = v170;
          v166[3] = v171;
          (v44)(&v161, v166);
          outlined destroy of Subview(v166);
          if (!v160 && !v157)
          {
            v37 = v2;
            outlined destroy of Subview(v180);

            v160 = 0;
            goto LABEL_45;
          }

          v158 = v2;
          v76 = v38;
          v77 = v155;
          if (*(v155 + 16))
          {
            v78 = v161;
            v79 = v162;
            v80 = specialized __RawDictionaryStorage.find<A>(_:)(v161, v162);
            v81 = v78;
            v82 = HIDWORD(v78);
            if (v83)
            {
              v84 = *(*(v77 + 56) + 8 * v80);
              swift_beginAccess();
              *(v84 + 112) = v75;
              v85 = v153;
              v86 = *(v153 + v146);
              *(v84 + 120) = v73;
              *(v84 + 128) = v86;
              *(v84 + 136) = *(v85 + v154);
              --v160;
              LODWORD(v86) = *(v84 + 142);
              v87 = v86 ^ 1;
              v35 = v86 == 0;
              v88 = v144;
              if (v35)
              {
                v88 = v73;
              }

              v144 = v88;
              v142 = v73;
            }

            else
            {
              v87 = 0;
            }
          }

          else
          {
            v87 = 0;
            v81 = v161;
            v82 = HIDWORD(v161);
            v79 = v162;
          }

          if (specialized Set.contains(_:)(v81 | (v82 << 32), v79, v152))
          {
            swift_beginAccess();

            specialized Set._Variant.insert(_:)(v166, v81 | (v82 << 32), v79);
            swift_endAccess();

            --v157;
            v38 = v76;
          }

          else
          {
            v38 = v76;
            if (!v87)
            {
              v89 = v159;
              swift_beginAccess();
              v90 = v89 + *(v156 + 72);
              v45 = *(v140 + 20);
              v2 = v158;
              if (v143)
              {
                v38 = v73 + 1;
                if (__OFADD__(v73, 1))
                {
                  goto LABEL_147;
                }

                if (v38 < v73)
                {
                  goto LABEL_148;
                }

                goto LABEL_80;
              }

              if (v73 == v38)
              {
                if (__OFADD__(v38++, 1))
                {
                  goto LABEL_158;
                }

                if (v38 < v158)
                {
                  goto LABEL_160;
                }
              }

              else
              {
                IndexSet.insert(integersIn:)();
                v38 = v73 + 1;
                if (__OFADD__(v73, 1))
                {
                  goto LABEL_159;
                }

                if (v38 < v73)
                {
                  goto LABEL_161;
                }

LABEL_80:
                v2 = v73;
              }

              v92 = v90 + v45;
              *v92 = v2;
              *(v92 + 8) = v38;
              *(v92 + 16) = 0;
              swift_endAccess();
              v143 = 0;
              goto LABEL_82;
            }
          }

          v2 = v158;
LABEL_82:
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          v45 = static Update._lock;
          _MovableLockLock(static Update._lock);
          specialized static Update.begin()();
          v93 = v178;
          v94 = v179;
          __swift_project_boxed_opaque_existential_1(v177, v178);
          *&v168 = 2;
          v95 = (*(v94 + 16))(&v168, v93, v94);
          static Update.end()();
          _MovableLockUnlock(v45);
          if (v150 < 0 || v75 >= v95)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v73, 1))
          {
            goto LABEL_146;
          }

          ++v75;
          ++v73;
          v44 = v148;
          v45 = v149;
          if (v147 == v75)
          {
            goto LABEL_44;
          }
        }
      }

LABEL_167:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_163;
  }

  return result;
}

{
  v177[52] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = a1[2];
  v4 = a1[3];
  v168 = a1[1];
  v169 = v5;
  v170 = v4;
  v7 = a1[4];
  v6 = a1[5];
  _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder);
  v167 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v147 - v9;
  _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v147 - v13);
  v171 = v1;
  v15 = v1[19];
  result = AGSubgraphIsValid();
  if (result)
  {
    v164 = v6;
    v165 = v3;
    v154 = v15;
    v152 = v12;
    v17 = AGMakeUniqueID();
    v18 = v171;
    v19 = *(*v171 + 232);
    *(v171 + v19) = v17;
    v20 = *(*v18 + 240);
    v21 = *(v18 + v20);
    v166 = v20;
    *(v18 + v20) = v21 + 1;
    v22 = v18 + 31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v24 + 16));
    }

    else
    {
      *v22 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v24 + 24) >> 1);
    }

    v25 = v171;
    v171[32] = 2;
    swift_beginAccess();
    v26 = v25[22];
    v27 = v25[25];
    v156 = v19;
    if (v26 && !v27)
    {
      v167 = v7;
      LODWORD(v163) = v21;
      v28 = *(*a1 + 16);
      if (*(v26 + 16) != v28)
      {
        v177[0] = 0;
        v177[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(204);
        MEMORY[0x193ABEDD0](0xD0000000000000DELL, 0x800000018DD7D120);
        MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
        v176[0] = v28;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v29);

        MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
        v30 = v171[22];
        if (!v30)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v176[0] = *(v30 + 16);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v31);

        MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
        specialized static Log.externalWarning(_:)(v177[0], v177[1]);

        v26 = v171[22];
        if (!v26)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }
      }

      v32 = v171;
      swift_beginAccess();
      v33 = v32[22];
      v7 = v32[26];
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v177, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);

      outlined consume of ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>?(v33);
      v34 = v165;
      v35 = v168;
      v36 = v169;
      v32[22] = v165;
      v32[23] = v35;
      v37 = v170;
      v32[24] = v36;
      v32[25] = v37;
      v38 = v164;
      v32[26] = v167;
      v32[27] = v38;
      if (v34)
      {
        v39 = v171;
        v171[22] = v26;

        swift_endAccess();

        swift_beginAccess();
        v40 = v39[33];
        v41 = v40 + 64;
        v42 = 1 << *(v40 + 32);
        v43 = -1;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        v44 = v43 & *(v40 + 64);
        v45 = (v42 + 63) >> 6;

        v46 = 0;
        v47 = v156;
        v48 = v163;
        while (v44)
        {
LABEL_19:
          v50 = *(*(v40 + 56) + ((v46 << 9) | (8 * __clz(__rbit64(v44)))));
          v44 &= v44 - 1;
          *(v50 + 120) = *(v171 + v47);
          if (*(v50 + 128) == v48)
          {
            *(v50 + 128) = *(v171 + v166);
          }
        }

        while (1)
        {
          v49 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v49 >= v45)
          {
          }

          v44 = *(v41 + 8 * v49);
          ++v46;
          if (v44)
          {
            v46 = v49;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v51 = v171;
    v162 = v10;
    v163 = v171[27];
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v177, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
    v52 = v168;
    v53 = v169;
    v51[22] = v165;
    v51[23] = v52;
    v54 = v170;
    v51[24] = v53;
    v51[25] = v54;
    v55 = v164;
    v51[26] = v7;
    v51[27] = v55;
    v56 = v162;
    outlined consume of ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>?(v26);
    v57 = MEMORY[0x1E69E7CD0];
    *v14 = MEMORY[0x1E69E7CD0];
    v14[1] = v57;
    swift_storeEnumTagMultiPayload();
    v58 = *(*v51 + 208);
    swift_beginAccess();
    v150 = v58;
    v151 = v14;
    outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(v14, v51 + v58, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
    swift_endAccess();
    v173[0] = *a1;
    v59 = a1[3];
    v60 = v167;
    v61 = v56 + *(v167 + 72);
    outlined init with copy of [GlassContainer.Item](v173, v177, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);

    IndexSet.init()();
    v155 = type metadata accessor for IndexSetBuilder(0);
    v62 = &v61[*(v155 + 20)];
    *v62 = 0;
    *(v62 + 1) = 0;
    v62[16] = 1;
    v63 = (v56 + *(v60 + 76));
    *v63 = v57;
    v63[1] = v57;
    v64 = v173[0];
    *v56 = v173[0];
    v56[1] = v59;
    if (*(v51 + 172))
    {
      __break(1u);
      goto LABEL_134;
    }

    v65 = v171;
    v66 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    *(v65 + *(*v65 + 216)) = Counter;
    v68 = *v65;
    v41 = *(*v65 + 224);
    if (*(v65 + v41) < 0)
    {

      v78 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_130:
      v143 = v171;
      *(v171 + *(v68 + 248)) = 0;
      *(v143 + v41) = v78;
      outlined destroy of [GlassContainer.Item](v173, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8], type metadata accessor for [_ViewList_ID]);
      v144 = v162;
      swift_beginAccess();
      v145 = v151;
      outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v144, v151, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
      swift_storeEnumTagMultiPayload();
      v146 = v150;
      swift_beginAccess();
      outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(v145, v143 + v146, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
      swift_endAccess();
      return outlined destroy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v144, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
    }

    v149 = v59;
    v69 = v171;
    swift_beginAccess();
    v70 = v69[33];
    v170 = *(v70 + 16);
    v71 = *(*v69 + 272);
    swift_beginAccess();
    v147 = v71;
    v148 = v41;
    v72 = *(v69 + v71);
    v168 = v70;
    v169 = v72;
    v160 = *(v72 + 16);
    v175 = v57;
    v73 = *(v64 + 16);
    if (!v73)
    {
      outlined init with copy of [GlassContainer.Item](v173, v177, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);

      v153 = 0;
      v79 = 0;
      v45 = 0;
      v161 = 1;
LABEL_63:
      v107 = *(*v171 + 248);
      if ((*(v171 + v107) & 1) == 0)
      {
        v108 = v162;
        swift_beginAccess();
        v109 = v108 + *(v167 + 72);
        if ((v161 & 1) == 0)
        {
          v110 = v109 + *(v155 + 20);
          if (v79 >= v45)
          {
            *v110 = 0;
            *(v110 + 8) = 0;
            *(v110 + 16) = 1;
          }

          else if (v73 >= v45)
          {
            *v110 = v79;
            *(v110 + 8) = v45;
            *(v110 + 16) = 0;
          }
        }

        IndexSet.remove(integersIn:)();
        swift_endAccess();
      }

      if (!v170)
      {

LABEL_126:
        v142 = v171;
        if (*(v171 + v107))
        {
          v78 = v153;
        }

        else
        {
          v78 = 0x7FFFFFFFFFFFFFFFLL;
        }

        swift_beginAccess();
        *(v142 + v147) = v175;

        v68 = *v142;
        goto LABEL_130;
      }

      v161 = v107;
      v164 = MEMORY[0x1E69E7CC0];
      v176[0] = MEMORY[0x1E69E7CC0];
      v111 = v168;
      v169 = v168 + 64;
      v41 = _HashTable.startBucket.getter();
      v165 = 1 << *(v111 + 32);
      v112 = *(v111 + 36);
      v163 = v111 + 72;
      v7 = v112;
      v113 = v112;
      while (v113 == v112)
      {
        if (v41 == v165)
        {
          v45 = v165;
LABEL_97:

          v41 = v164;
          if (v164 >> 62)
          {
            goto LABEL_124;
          }

          v127 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v127)
          {
            goto LABEL_125;
          }

          goto LABEL_99;
        }

        if (v41 < 0)
        {
          goto LABEL_118;
        }

        v45 = 1 << *(v111 + 32);
        if (v41 >= v45)
        {
          goto LABEL_118;
        }

        v114 = v7;
        v7 = v112;
        v115 = v41 >> 6;
        if ((*(v169 + 8 * (v41 >> 6)) & (1 << v41)) == 0)
        {
          goto LABEL_119;
        }

        v116 = *(*(v111 + 56) + 8 * v41);
        if (*(v116 + 134))
        {
        }

        else
        {
          v117 = *(v116 + 128);
          v118 = *(v171 + v166);

          if (v117 == v118)
          {
            v111 = v168;
          }

          else
          {

            MEMORY[0x193ABF170](v119);
            if (*((v176[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v164 = v176[0];
            --v170;
            swift_beginAccess();
            specialized Set._Variant.insert(_:)(v174, *(v116 + 32));
            swift_endAccess();
            v111 = v168;
            v45 = 1 << *(v168 + 32);
          }
        }

        if (v41 >= v45)
        {
          goto LABEL_120;
        }

        v120 = *(v169 + 8 * v115);
        if ((v120 & (1 << v41)) == 0)
        {
          goto LABEL_121;
        }

        if (v112 != *(v111 + 36))
        {
          goto LABEL_122;
        }

        v121 = v120 & (-2 << (v41 & 0x3F));
        if (v121)
        {

          v45 = __clz(__rbit64(v121)) | v41 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v122 = v115 << 6;
          v123 = v115 + 1;
          v124 = (v163 + 8 * v115);
          while (v123 < (v45 + 63) >> 6)
          {
            v126 = *v124++;
            v125 = v126;
            v122 += 64;
            ++v123;
            if (v126)
            {
              outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v41, v114, 0);

              v45 = __clz(__rbit64(v125)) + v122;
              goto LABEL_73;
            }
          }

          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v41, v114, 0);
        }

LABEL_73:
        v7 = *(v111 + 36);
        v113 = *(v111 + 36);
        v41 = v45;
        if (!v170)
        {
          goto LABEL_97;
        }
      }

LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
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
      v127 = __CocoaSet.count.getter();
      if (v127)
      {
LABEL_99:
        if (v127 < 1)
        {
          __break(1u);
        }

        v128 = 0;
        v169 = 0;
        v170 = v127;
        v129 = v41 & 0xC000000000000001;
        do
        {
          if (v129)
          {
            v130 = MEMORY[0x193AC03C0](v128, v41);
          }

          else
          {
            v130 = *(v41 + 8 * v128 + 32);
          }

          AGSubgraphApply();
          AGSubgraphRemoveChild();
          *(v130 + 133) = 256;
          v131 = *(v130 + 24) - 1;
          *(v130 + 24) = v131;
          if (!v131)
          {
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v133 = Strong;
              swift_beginAccess();
              v134 = *(v133 + 264);
              if (*(v134 + 16) && (v135 = specialized __RawDictionaryStorage.find<A>(_:)(*(v130 + 32)), (v136 & 1) != 0))
              {
                v137 = v135;
                v138 = *(v134 + 36);
                swift_beginAccess();
                specialized Dictionary._Variant.remove(at:)(&v172, v137, v138);
                swift_endAccess();
              }

              else
              {

                v140 = v169;
                v141 = specialized _NativeDictionary.filter(_:)(v139, v130, specialized _NativeDictionary.extractDictionary(using:count:));
                v169 = v140;

                *(v133 + 264) = v141;
              }

              v41 = v164;
            }

            if (AGSubgraphIsValid())
            {
              AGSubgraphRef.willInvalidate(isInserted:)(1);
              AGSubgraphInvalidate();
            }

            v127 = v170;
          }

          ++v128;
        }

        while (v127 != v128);
      }

LABEL_125:

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v45, v7, 0);
      v41 = v148;
      v107 = v161;
      goto LABEL_126;
    }

    v165 = v64 + 32;
    memcpy(v177, (v64 + 32), 0x154uLL);
    v74 = v149;
    if (!v149)
    {
LABEL_137:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    outlined init with copy of [GlassContainer.Item](v173, v176, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);

    outlined init with copy of GlassContainer.Entry(v177, v176);
    v75 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
    if (v76)
    {

      v77 = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
    }

    else
    {
      v80 = v75;
      v74 = swift_allocObject();
      *(v74 + 16) = v80;
      v77 = partial apply for specialized closure #1 in KeyPath.makeGetFunction();
    }

    v81 = v77;
    memcpy(v176, v177, 0x154uLL);
    v81(v174, v176);
    v82 = v174[0];
    v83 = v168;
    if (*(v168 + 16) && (v84 = specialized __RawDictionaryStorage.find<A>(_:)(v174[0]), (v85 & 1) != 0))
    {
      v86 = *(*(v83 + 56) + 8 * v84);
    }

    else
    {
      v86 = 0;
    }

    v176[0] = v86;
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item?(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item?, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
    _ViewInputs.base.modify(v176, v87);

    v88 = v169;
    LOBYTE(v176[0]) = specialized Set.contains(_:)(v82, v169);
    _ViewInputs.base.modify(v176, MEMORY[0x1E69E6370]);
    v45 = 0;
    v153 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v89 = v88 + 56;
    v161 = 1;
    v163 = v73;
    v164 = v74;
    while (1)
    {
      if (v45 == v73)
      {
        goto LABEL_116;
      }

      v7 = v45;
      v81(v174, v165 + 344 * v45);
      if (!v170 && !v160)
      {
        v170 = 0;
LABEL_62:
        outlined destroy of GlassContainer.Entry(v177);

        v41 = v148;
        v79 = v158;
        v45 = v159;
        v73 = v157;
        goto LABEL_63;
      }

      v90 = v174[0];
      v91 = v168;
      if (*(v168 + 16) && (v92 = specialized __RawDictionaryStorage.find<A>(_:)(v174[0]), (v93 & 1) != 0))
      {
        v94 = *(*(v91 + 56) + 8 * v92);
        swift_beginAccess();
        *(v94 + 104) = v45;
        v95 = v171;
        v96 = *(v171 + v156);
        *(v94 + 112) = v45;
        *(v94 + 120) = v96;
        *(v94 + 128) = *(v95 + v166);
        --v170;
        LODWORD(v96) = *(v94 + 134);
        v41 = v96 ^ 1;
        v97 = v96 == 0;
        v98 = v159;
        if (v97)
        {
          v98 = v45;
        }

        v159 = v98;
        v153 = v45;
      }

      else
      {
        v41 = 0;
      }

      ++v45;
      if (*(v169 + 16))
      {
        v99 = v169;
        Hasher.init(_seed:)();
        MEMORY[0x193AC11A0](v90);
        v100 = Hasher._finalize()();
        v101 = -1 << *(v99 + 32);
        v102 = v100 & ~v101;
        if ((*(v89 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
        {
          break;
        }
      }

LABEL_53:
      if (v41)
      {
LABEL_37:
        v73 = v163;
        if (v45 == v163)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v104 = v162;
        swift_beginAccess();
        v105 = v104 + *(v167 + 72);
        v41 = *(v155 + 20);
        v73 = v163;
        if ((v161 & 1) == 0)
        {
          if (v157 == v7)
          {
            v7 = v158;
            if (v45 < v158)
            {
              goto LABEL_123;
            }
          }

          else
          {
            IndexSet.insert(integersIn:)();
          }
        }

        v106 = v105 + v41;
        v158 = v7;
        *v106 = v7;
        *(v106 + 8) = v45;
        *(v106 + 16) = 0;
        swift_endAccess();
        v161 = 0;
        v157 = v45;
        if (v45 == v73)
        {
          goto LABEL_62;
        }
      }
    }

    v103 = ~v101;
    while (*(*(v169 + 48) + 8 * v102) != v90)
    {
      v102 = (v102 + 1) & v103;
      if (((*(v89 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v172, v90);
    swift_endAccess();
    --v160;
    goto LABEL_37;
  }

  return result;
}

{
  v2 = v1;
  v186[1] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v174 = *a1;
  v175 = v4;
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder);
  v172 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v173 = (&v152 - v11);
  _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v152 - v14;
  v167 = *(v2 + 152);
  result = AGSubgraphIsValid();
  if (!result)
  {
    return result;
  }

  v168 = v5;
  v169 = v8;
  v170 = v7;
  v160 = v13;
  v17 = AGMakeUniqueID();
  v18 = *(*v2 + 232);
  *(v2 + v18) = v17;
  v19 = *(*v2 + 240);
  LODWORD(v166) = *(v2 + v19);
  v171 = v19;
  *(v2 + v19) = v166 + 1;
  v20 = v2;
  specialized ForEachState.invalidateViewCounts()();
  swift_beginAccess();
  v21 = *(v2 + 192);
  v22 = *(v2 + 208);
  v176 = v2;
  v164 = v18;
  if (v21 && !v22)
  {
    v23 = *(v2 + 176);
    v24 = *(v2 + 184);
    v25 = __OFSUB__(v24, v23);
    v26 = v24 - v23;
    if (v25)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v27 = a1[1];
    v28 = v27 - *a1;
    if (__OFSUB__(v27, *a1))
    {
      goto LABEL_147;
    }

    v172 = v9;
    v173 = v6;
    if (v26 != v28)
    {
      v184 = 0;
      v185 = 0xE000000000000000;
      _StringGuts.grow(_:)(204);
      MEMORY[0x193ABEDD0](0xD0000000000000A2, 0x800000018DD7CEB0);
      MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
      v183 = v28;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = &v184;
      MEMORY[0x193ABEDD0](v29);

      MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
      if (!*(v2 + 192))
      {
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v30 = *(v2 + 176);
      v31 = *(v2 + 184);
      v25 = __OFSUB__(v31, v30);
      v32 = v31 - v30;
      if (v25)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v183 = v32;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v33);

      MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
      specialized static Log.externalWarning(_:)(v184, v185);

      if (!*(v2 + 192))
      {
        goto LABEL_164;
      }
    }

    v34 = *(v2 + 176);
    v167 = *(v2 + 184);
    swift_beginAccess();
    v35 = *(v2 + 176);
    v36 = *(v2 + 184);
    v21 = *(v2 + 192);
    v2 = v176[25];
    v9 = v176[28];
    outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(a1, &v184, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEach, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);
    v37 = v36;
    v38 = v176;
    outlined consume of ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>?(v35, v37, v21);
    v39 = v175;
    v38[22] = v174;
    v38[23] = v39;
    v40 = v173;
    v41 = v168;
    v42 = v169;
    v38[24] = v173;
    v38[25] = v41;
    v43 = v170;
    v38[26] = v42;
    v38[27] = v43;
    v38[28] = v172;
    if (v40)
    {
      v44 = v167;
      v38[22] = v34;
      v38[23] = v44;
      swift_endAccess();
      swift_beginAccess();
      v45 = v38[34];
      v47 = *(v45 + 64);
      v20 = v45 + 64;
      v46 = v47;
      v48 = 1 << *(v38[34] + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & v46;
      v51 = (v48 + 63) >> 6;

      v53 = 0;
      v54 = v164;
      v55 = v166;
      while (v50)
      {
LABEL_19:
        v57 = *(*(v52 + 56) + ((v53 << 9) | (8 * __clz(__rbit64(v50)))));
        v50 &= v50 - 1;
        *(v57 + 120) = *(v38 + v54);
        if (*(v57 + 128) == v55)
        {
          *(v57 + 128) = *(v38 + v171);
        }
      }

      while (1)
      {
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v56 >= v51)
        {
        }

        v50 = *(v20 + 8 * v56);
        ++v53;
        if (v50)
        {
          v53 = v56;
          goto LABEL_19;
        }
      }

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
LABEL_139:
      __break(1u);
LABEL_140:
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
      goto LABEL_146;
    }

LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v58 = v176[22];
  v59 = v176[23];
  v60 = v176[27];
  v163 = v176[28];
  v165 = v60;
  v166 = type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>;
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(a1, &v184, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEach, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);
  v61 = v175;
  v176[22] = v174;
  v176[23] = v61;
  v176[24] = v6;
  v62 = v169;
  v176[25] = v168;
  v176[26] = v62;
  v176[27] = v170;
  v176[28] = v9;
  v63 = v58;
  v64 = v176;
  outlined consume of ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>?(v63, v59, v21);
  v65 = v15;
  v66 = MEMORY[0x1E69E7CD0];
  *v65 = MEMORY[0x1E69E7CD0];
  v65[1] = v66;
  swift_storeEnumTagMultiPayload();
  v67 = *(*v64 + 208);
  swift_beginAccess();
  v155 = v67;
  v156 = v65;
  outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(v65, v64 + v67, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
  swift_endAccess();
  v68 = *a1;
  v69 = a1[1];
  v186[0] = a1[4];
  v71 = v172;
  v70 = v173;
  v161 = v68;
  *v173 = v68;
  v70[1] = v69;
  v174 = v69;
  v72 = v70 + *(v71 + 72);
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v186, &v184, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.IDGenerator, type metadata accessor for ForEach.IDGenerator, v166);
  IndexSet.init()();
  v159 = type metadata accessor for IndexSetBuilder(0);
  v73 = &v72[*(v159 + 20)];
  *v73 = 0;
  *(v73 + 1) = 0;
  v73[16] = 1;
  v74 = (v70 + *(v71 + 76));
  *v74 = v66;
  v74[1] = v66;
  v70[2] = v186[0];
  if (*(v64 + 172))
  {
    __break(1u);
    goto LABEL_162;
  }

  v75 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  *(v64 + *(*v64 + 216)) = Counter;
  v77 = *v64;
  v78 = *(*v64 + 224);
  if ((*(v64 + v78) & 0x8000000000000000) != 0)
  {
    v84 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_159;
  }

  v154 = *(*v64 + 224);
  swift_beginAccess();
  v79 = v64[34];
  v175 = *(v79 + 16);
  v20 = *(*v64 + 272);
  swift_beginAccess();
  v153 = v20;
  v2 = *(v64 + v20);
  v165 = *(v2 + 16);
  v180 = v66;
  v80 = v161;
  if (v161 == v174)
  {

    v163 = 0;
    v81 = 0;
    v82 = 0;
    v158 = 0;
    v83 = 1;
    v64 = v176;
    goto LABEL_75;
  }

  v85 = v186[0];
  if (!v186[0])
  {
    goto LABEL_165;
  }

  v86 = v161;
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v186, v182, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.IDGenerator, type metadata accessor for ForEach.IDGenerator, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);

  v87 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v88)
  {

    v89 = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
  }

  else
  {
    v90 = v87;
    v85 = swift_allocObject();
    *(v85 + 16) = v90;
    v89 = partial apply for specialized closure #1 in KeyPath.makeGetFunction();
  }

  v91 = v89;
  v182[0] = v80;
  (v89)(v181, v182);
  v92 = v181[0];
  v93 = *(v79 + 16);
  v169 = v91;
  v170 = v85;
  if (v93 && (v94 = specialized __RawDictionaryStorage.find<A>(_:)(v181[0]), (v95 & 1) != 0))
  {
    v20 = *(*(v79 + 56) + 8 * v94);
  }

  else
  {
    v20 = 0;
  }

  v182[0] = v20;
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item?(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item?, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
  _ViewInputs.base.modify(v182, v96);

  LOBYTE(v182[0]) = specialized Set.contains(_:)(v92, v2);
  _ViewInputs.base.modify(v182, MEMORY[0x1E69E6370]);
  v9 = 0;
  v162 = 0;
  v163 = 0;
  v81 = 0;
  v158 = 0;
  v21 = v2 + 56;
  v97 = v174;
  if (v174 <= v80)
  {
    v97 = v80;
  }

  v168 = v97;
  v166 = 1;
  while (1)
  {
    if (v86 == v174)
    {
      goto LABEL_72;
    }

    v182[0] = v86;
    v20 = v170;
    v169(v179, v182);
    v98 = v179[0];
    if (!v175 && !v165)
    {
      break;
    }

    if (*(v79 + 16) && (v99 = specialized __RawDictionaryStorage.find<A>(_:)(v179[0]), (v100 & 1) != 0))
    {
      v101 = *(*(v79 + 56) + 8 * v99);
      swift_beginAccess();
      *(v101 + 104) = v86;
      v102 = v176;
      v103 = *(v176 + v164);
      *(v101 + 112) = v9;
      *(v101 + 120) = v103;
      *(v101 + 128) = *(v102 + v171);
      --v175;
      LODWORD(v103) = *(v101 + 134);
      v20 = v103 ^ 1;
      v104 = v103 == 0;
      v105 = v162;
      if (v104)
      {
        v105 = v9;
      }

      v162 = v105;
      v158 = v9;
      if (!*(v2 + 16))
      {
        goto LABEL_53;
      }
    }

    else
    {
      v20 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_53;
      }
    }

    v106 = MEMORY[0x193AC1170](*(v2 + 40), v98);
    v107 = -1 << *(v2 + 32);
    v108 = v106 & ~v107;
    if ((*(v21 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
    {
      v109 = ~v107;
      while (*(*(v2 + 48) + 8 * v108) != v98)
      {
        v108 = (v108 + 1) & v109;
        if (((*(v21 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      swift_beginAccess();
      v20 = &v180;
      specialized Set._Variant.insert(_:)(v179, v98);
      swift_endAccess();
      --v165;
      goto LABEL_67;
    }

LABEL_53:
    if (!v20)
    {
      v110 = v173;
      swift_beginAccess();
      v20 = v110 + *(v172 + 72);
      v111 = *(v159 + 20);
      if (v166)
      {
        v81 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_144;
        }

        if (v81 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_65;
      }

      if (v81 == v9)
      {
        v81 = v9 + 1;
        v112 = v163;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_149;
        }

        if (v81 < v163)
        {
          goto LABEL_150;
        }
      }

      else
      {
        IndexSet.insert(integersIn:)();
        v81 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_148;
        }

        if (v81 < v9)
        {
          goto LABEL_151;
        }

LABEL_65:
        v112 = v9;
      }

      v113 = v20 + v111;
      v163 = v112;
      *v113 = v112;
      *(v113 + 8) = v81;
      *(v113 + 16) = 0;
      swift_endAccess();
      v166 = 0;
      v80 = v161;
    }

LABEL_67:
    if (v174 < v80)
    {
      goto LABEL_135;
    }

    if (v86 == v168)
    {
      goto LABEL_136;
    }

    ++v86;
    v25 = __OFADD__(v9++, 1);
    if (v25)
    {
      __break(1u);
LABEL_72:

      goto LABEL_74;
    }
  }

  v175 = 0;
LABEL_74:
  outlined destroy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v186, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.IDGenerator, type metadata accessor for ForEach.IDGenerator, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);

  v64 = v176;
  v82 = v162;
  v83 = v166;
LABEL_75:
  v114 = *(*v64 + 248);
  if ((*(v114 + v64) & 1) == 0)
  {
    v115 = v173;
    swift_beginAccess();
    v20 = v115 + *(v172 + 72);
    if ((v83 & 1) == 0)
    {
      v116 = v20 + *(v159 + 20);
      if (v163 >= v82)
      {
        *v116 = 0;
        *(v116 + 8) = 0;
        *(v116 + 16) = 1;
      }

      else if (v81 >= v82)
      {
        *v116 = v163;
        *(v116 + 8) = v82;
        *(v116 + 16) = 0;
      }
    }

    IndexSet.remove(integersIn:)();
    swift_endAccess();
  }

  if (!v175)
  {

    goto LABEL_155;
  }

  v166 = v114;
  v9 = MEMORY[0x1E69E7CC0];
  v179[0] = MEMORY[0x1E69E7CC0];
  v117 = v79 + 64;
  v2 = _HashTable.startBucket.getter();
  v21 = *(v79 + 36);
  v174 = 1 << *(v79 + 32);
  v168 = v79 + 72;
  v169 = 0;
  v170 = v21;
  v157 = v79;
  while (v2 != v174)
  {
    if (v2 < 0)
    {
      goto LABEL_137;
    }

    v20 = 1 << *(v79 + 32);
    if (v2 >= v20)
    {
      goto LABEL_137;
    }

    v118 = v9;
    v119 = v2 >> 6;
    v9 = 1 << v2;
    if ((*(v117 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
    {
      goto LABEL_138;
    }

    if (v21 != *(v79 + 36))
    {
      goto LABEL_139;
    }

    v120 = *(*(v79 + 56) + 8 * v2);
    if (*(v120 + 134) == 1)
    {
    }

    else
    {
      v121 = v117;
      v122 = *(v120 + 128);
      v123 = *(v176 + v171);

      if (v122 == v123)
      {
        v21 = v170;
        v117 = v121;
        v79 = v157;
      }

      else
      {

        MEMORY[0x193ABF170](v124);
        v117 = v121;
        if (*((v179[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v165 = *((v179[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v118 = v179[0];
        --v175;
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v178, *(v120 + 32));
        swift_endAccess();
        v79 = v157;
        v20 = 1 << *(v157 + 32);
        v21 = v170;
      }
    }

    if (v2 >= v20)
    {
      goto LABEL_140;
    }

    v125 = *(v117 + 8 * v119);
    if ((v125 & v9) == 0)
    {
      goto LABEL_141;
    }

    if (v21 != *(v79 + 36))
    {
      goto LABEL_142;
    }

    v126 = v125 & (-2 << (v2 & 0x3F));
    if (v126)
    {

      v2 = __clz(__rbit64(v126)) | v2 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v127 = v119 << 6;
      v128 = v119 + 1;
      v129 = (v168 + 8 * v119);
      while (v128 < (v20 + 63) >> 6)
      {
        v131 = *v129++;
        v130 = v131;
        v127 += 64;
        ++v128;
        if (v131)
        {
          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v21, 0);

          v2 = __clz(__rbit64(v130)) + v127;
          goto LABEL_85;
        }
      }

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v21, 0);

      v2 = v20;
    }

LABEL_85:
    v9 = v118;
    if (!v175)
    {
      goto LABEL_109;
    }
  }

  v2 = v174;
LABEL_109:

  v20 = v9 >> 62;
  if (v9 >> 62)
  {
LABEL_153:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_111;
    }

    goto LABEL_154;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_111:
    v132 = 0;
    v133 = v9 & 0xFFFFFFFFFFFFFF8;
    v174 = v9 & 0xFFFFFFFFFFFFFF8;
    v175 = v9 & 0xC000000000000001;
    if (v9 < 0)
    {
      v133 = v9;
    }

    v171 = v20;
    v172 = v133;
    v168 = v9;
    do
    {
      if (v175)
      {
        v135 = MEMORY[0x193AC03C0](v132, v9);
        v136 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (v132 >= *(v174 + 16))
        {
          goto LABEL_143;
        }

        v135 = *(v9 + 8 * v132 + 32);

        v136 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          goto LABEL_134;
        }
      }

      AGSubgraphApply();
      AGSubgraphRemoveChild();
      *(v135 + 133) = 256;
      v137 = *(v135 + 24) - 1;
      *(v135 + 24) = v137;
      if (!v137)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v139 = Strong;
          swift_beginAccess();
          v140 = *(v139 + 272);
          if (*(v140 + 16) && (v141 = specialized __RawDictionaryStorage.find<A>(_:)(*(v135 + 32)), (v142 & 1) != 0))
          {
            v143 = v141;
            v144 = *(v140 + 36);
            swift_beginAccess();
            specialized Dictionary._Variant.remove(at:)(&v177, v143, v144);
            swift_endAccess();
          }

          else
          {

            v146 = v169;
            v147 = specialized _NativeDictionary.filter(_:)(v145, v135, specialized _NativeDictionary.extractDictionary(using:count:));
            v169 = v146;

            *(v139 + 272) = v147;
          }

          v9 = v168;
          v20 = v171;
        }

        IsValid = AGSubgraphIsValid();
        v21 = v170;
        if (IsValid)
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          v20 = v171;
          AGSubgraphInvalidate();
        }
      }

      if (v20)
      {
        v134 = __CocoaSet.count.getter();
      }

      else
      {
        v134 = *(v174 + 16);
      }

      ++v132;
    }

    while (v136 != v134);
  }

LABEL_154:

  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v21, 0);
  v64 = v176;
  v114 = v166;
LABEL_155:
  if (*(v114 + v64))
  {
    v84 = v158;
  }

  else
  {
    v84 = 0x7FFFFFFFFFFFFFFFLL;
  }

  swift_beginAccess();
  *(v64 + v153) = v180;

  v77 = *v64;
  v78 = v154;
LABEL_159:
  *(v64 + *(v77 + 248)) = 0;
  *(v64 + v78) = v84;
  v149 = v173;
  swift_beginAccess();
  v150 = v156;
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v149, v156, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
  swift_storeEnumTagMultiPayload();
  v151 = v155;
  swift_beginAccess();
  outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(v150, v64 + v151, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
  swift_endAccess();
  return outlined destroy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v149, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
}

uint64_t MappedViews.MappedList.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = *a2;
  v9 = *(a4 + 8);
  v31 = *a4;
  v32 = v9;
  v10 = *(v7 + 88);
  v11 = *(v7 + 56);
  v34[0] = *(v7 + 40);
  v34[1] = v11;
  v35 = *(v7 + 72);
  v12 = *(v7 + 96);
  v13 = a7[4];
  v14 = a7[5];
  *&v30[36] = v35;
  *&v30[20] = v11;
  *&v30[4] = v34[0];
  *v29 = v10;
  *&v29[4] = *v30;
  *&v29[20] = *&v30[16];
  *&v29[36] = *&v30[32];
  *&v29[52] = HIDWORD(v35);
  *&v29[56] = v12;
  v15 = a7[3];
  v19 = a7[2];
  v20 = v15;
  v21 = v13;
  v22 = v14;
  v23 = a1;
  v24 = v8;
  v25 = a3;
  v26 = BYTE4(a3) & 1;
  v27 = a5;
  v28 = a6;
  outlined init with copy of _GraphInputs(v34, &v36);

  *&v36 = v19;
  *(&v36 + 1) = v15;
  *&v37 = v13;
  *(&v37 + 1) = v14;
  v16 = type metadata accessor for MappedViews.Transform();
  _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(v29, partial apply for closure #1 in MappedViews.MappedList.applyNodes(from:style:list:transform:to:), &v18, MEMORY[0x1E69E6370], v16, &protocol witness table for MappedViews<A, B>.Transform);
  v36 = *v29;
  v37 = *&v29[16];
  v38 = *&v29[32];
  v39 = *&v29[48];
  (*(*(v16 - 8) + 8))(&v36, v16);
  return v33;
}

uint64_t initializeWithCopy for MappedViews.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;

  return a1;
}

double MappedViews.Transform.apply(sublist:)(void *a1, uint64_t a2)
{
  v5 = v2[1];
  *v21 = *v2;
  *&v21[16] = v5;
  v6 = v2[3];
  *&v21[32] = v2[2];
  *&v21[48] = v6;
  outlined init with copy of AnyTrackedValue((a1 + 4), v20);
  v17 = *&v21[8];
  v18 = *&v21[24];
  *v19 = *&v21[40];
  v7 = a1[3];
  v8 = a1[2];
  outlined init with copy of _GraphInputs(&v21[8], v16);

  v9 = AGCreateWeakAttribute();
  v10 = *v21;
  v11 = *&v21[56];

  __swift_destroy_boxed_opaque_existential_1((a1 + 4));
  v12 = *(a2 + 32);
  v16[0] = *(a2 + 16);
  v16[1] = v12;
  a1[7] = type metadata accessor for MappedViews.MappedElements();
  a1[8] = &protocol witness table for MappedViews<A, B>.MappedElements;
  v13 = swift_allocObject();
  a1[4] = v13;
  outlined init with take of AnyTrackedValue(v20, v13 + 16);
  v14 = v18;
  *(v13 + 56) = v17;
  *(v13 + 72) = v14;
  result = v19[0];
  *(v13 + 88) = *v19;
  *(v13 + 104) = v8;
  *(v13 + 112) = v7;
  *(v13 + 120) = v9;
  *(v13 + 128) = v10;
  *(v13 + 136) = v11;
  return result;
}

uint64_t sub_18D234088()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a3 + 48);
  v19[2] = *(a3 + 32);
  v19[3] = v11;
  v19[4] = *(a3 + 64);
  v20 = *(a3 + 80);
  v12 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v12;
  AGWeakAttributeGetAttribute();
  result = swift_allocObject();
  v14 = *(v6 + 96);
  v15 = *a2;
  *(result + 20) = *(v6 + 92);
  *(result + 24) = v14;
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(result + 16) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;

  v17 = closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(a1, _s7SwiftUI11_ViewInputsVAcA01_C7OutputsVIegnr_AESgSbIgngrd_A2cEIegnr_AFSbIegngrd_TRTA_0, v16, v6, a2, v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v17 & 1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_18D2342D0()
{

  return swift_deallocObject();
}

uint64_t closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v8 = *(a6 + 48);
  v13[2] = *(a6 + 32);
  v13[3] = v8;
  v13[4] = *(a6 + 64);
  v14 = *(a6 + 80);
  v9 = *(a6 + 16);
  v13[0] = *a6;
  v13[1] = v9;
  return (*(v7 + 16))(a1, a5, v13) & 1;
}

uint64_t closure #1 in closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, _OWORD *, uint64_t (*)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>), uint64_t), uint64_t a7, int a8, int a9, char a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  v17 = *(a2 + 48);
  v39[2] = *(a2 + 32);
  v39[3] = v17;
  v39[4] = *(a2 + 64);
  v40 = *(a2 + 80);
  v18 = *(a2 + 16);
  v39[0] = *a2;
  v39[1] = v18;
  v31 = a13;
  v32 = a14;
  v19 = type metadata accessor for MappedViews.MappedElements();
  (*(*(v19 - 8) + 16))(&v31, a11, v19);
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 136) = v35;
  *(v20 + 152) = v21;
  v22 = v38;
  *(v20 + 168) = v37;
  *(v20 + 184) = v22;
  v23 = v32;
  *(v20 + 72) = v31;
  *(v20 + 88) = v23;
  v24 = v34;
  *(v20 + 104) = v33;
  *(v20 + 16) = a13;
  *(v20 + 32) = a14;
  *(v20 + 48) = a5;
  *(v20 + 56) = a8;
  *(v20 + 60) = a9;
  *(v20 + 64) = a10 & 1;
  *(v20 + 120) = v24;
  *(v20 + 200) = a12;
  *(v20 + 208) = a3;
  *(v20 + 216) = a4;

  v25 = a6(a1, v39, partial apply for closure #1 in closure #1 in closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:), v20);

  result = swift_beginAccess();
  v27 = *(a5 + 16);
  if (v27 == 0x7FFFFFFF)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v27 + 1;
    return v25 & 1;
  }

  return result;
}

uint64_t sub_18D2345E8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocObject();
}

uint64_t initializeWithCopy for MappedViews.MappedElements(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t closure #1 in closure #1 in closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10)
{
  v83 = *MEMORY[0x1E69E9840];
  v13 = a1[3];
  v79 = a1[2];
  v80 = v13;
  v81 = a1[4];
  v82 = *(a1 + 20);
  v14 = a1[1];
  v77 = *a1;
  v78 = v14;
  swift_beginAccess();
  v15 = *(a2 + 24);

  *&v60 = *(a2 + 16);
  *(&v60 + 1) = v15;
  LODWORD(v61) = a3;
  *(&v61 + 4) = AGCreateWeakAttribute();
  v34 = *(&a9 + 1);
  v66 = a9;
  v67 = a10;
  v35 = type metadata accessor for MappedViews.ElementView();
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v60, partial apply for closure #1 in Attribute.init<A>(_:), v33, v35, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);

  v18 = v66;
  swift_beginAccess();
  v19 = *(a2 + 24);
  *&v66 = *(a2 + 16);
  *(&v66 + 1) = v19;

  _ViewList_ID.Canonical.init(id:)(&v66, &v60);
  v20 = *(&v60 + 1);
  *&v52[0] = AGCreateWeakAttribute();
  BYTE8(v52[0]) = 0;
  *&v54 = v60;
  *(&v54 + 1) = v20;
  swift_beginAccess();
  type metadata accessor for WeakAttribute();
  lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v21 = *(a4 + 56);
  v75[0] = *(a4 + 40);
  v75[1] = v21;
  v76 = *(a4 + 72);
  v72 = v75[0];
  v73 = v21;
  v74 = v76;
  outlined init with copy of _GraphInputs(v75, &v66);
  if (a5)
  {

    _GraphInputs.makeReusable(indirectMap:)(v22);
  }

  v62 = v79;
  v63 = v80;
  v64 = v81;
  v65 = v82;
  v60 = v77;
  v61 = v78;
  v54 = v72;
  v55 = v73;
  v56 = v74;
  outlined init with copy of _ViewInputs(&v77, &v66);
  _GraphInputs.merge(_:ignoringPhase:)(&v54, 0);
  _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA17MappedViewElementV04BodyG033_0869CE5E72C6BD6754FF980DEA862555LLV_AA01_K7OutputsVAA01_kD0VcTt0g5(a6, a7);
  _GraphValue.init(_:)(v18, v32);
  v23 = v32[0];
  v68 = v62;
  v69 = v63;
  v70 = v64;
  v71 = v65;
  v66 = v60;
  v67 = v61;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v48 = v68;
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v46 = v66;
  v47 = v67;
  v25 = v68;
  LODWORD(v48) = 0;
  LODWORD(v37[0]) = v23;
  v52[0] = v66;
  v52[1] = v67;
  v53 = v71;
  v52[3] = v69;
  v52[4] = v70;
  v52[2] = v48;
  v42 = v48;
  v43 = v69;
  v44 = v70;
  v45 = v71;
  v40 = v66;
  v41 = v67;
  v26 = *(*(&a10 + 1) + 24);
  outlined init with copy of _ViewInputs(&v66, &v54);
  outlined init with copy of _ViewInputs(v52, &v54);
  v26(v37, &v40, *(&a9 + 1), *(&a10 + 1));
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v54 = v40;
  v55 = v41;
  outlined destroy of _ViewInputs(&v54);
  LODWORD(v48) = v25;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v46);
    AGSubgraphEndTreeElement();
  }

  v37[2] = v62;
  v37[3] = v63;
  v37[4] = v64;
  v38 = v65;
  v37[0] = v60;
  v37[1] = v61;
  outlined destroy of _ViewInputs(v37);
  v39[0] = v72;
  v39[1] = v73;
  v39[2] = v74;
  outlined destroy of _GraphInputs(v39);
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v40 = v46;
  v41 = v47;
  return outlined destroy of _ViewInputs(&v40);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MappedViews<A, B>.ElementView()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for MappedViews<A, B>.ElementView(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for MappedViews.ElementView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for MappedViewElement.BodyInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17MappedViewElementV9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for MappedViewElement.BodyInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(v4, v7) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack), result = AGCompareValues(), !result))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<MappedViewElement.BodyInput>, &type metadata for MappedViewElement.BodyInput, &protocol witness table for MappedViewElement.BodyInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for MappedViewElement.BodyInput, 0, v6);
  }

  return result;
}

uint64_t static MappedViewElement.Placeholder._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v34 = *(a1 + 32);
  v35 = v3;
  v5 = *(a1 + 48);
  v36 = *(a1 + 64);
  v6 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v6;
  v29 = v34;
  v30 = v5;
  v31 = *(a1 + 64);
  v37 = *(a1 + 80);
  v32 = *(a1 + 80);
  v27 = v33[0];
  v28 = v4;
  outlined init with copy of _ViewInputs(v33, &v21);
  v7 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA17MappedViewElementV04BodyG033_0869CE5E72C6BD6754FF980DEA862555LLV_AA01_K7OutputsVAA01_kD0VcTt0g5();
  if (v7)
  {
    v8 = v7;
    v17[2] = v29;
    v17[3] = v30;
    v17[4] = v31;
    v18 = v32;
    v17[0] = v27;
    v17[1] = v28;
    v13 = v29;
    v14 = v30;
    v15 = v31;
    v16 = v32;
    v11 = v27;
    v12 = v28;
    outlined init with copy of _ViewInputs(v17, &v21);
    v8(&v11);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v8);
    v19[2] = v13;
    v19[3] = v14;
    v19[4] = v15;
    v20 = v16;
    v19[0] = v11;
    v19[1] = v12;
    outlined destroy of _ViewInputs(v19);
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    return outlined destroy of _ViewInputs(&v21);
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = 0;
    v10 = *MEMORY[0x1E698D3F8];
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    result = outlined destroy of _ViewInputs(&v21);
    *(a2 + 12) = v10;
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA17MappedViewElementV04BodyG033_0869CE5E72C6BD6754FF980DEA862555LLV_AA01_K7OutputsVAA01_kD0VcTt0g5()
{
  v1 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for MappedViewElement.BodyInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(v1, v7);
  if (v2 && (v3 = *(v2 + 72)) != 0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17MappedViewElementV9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt2B5(v0, v4);

  return v5;
}

uint64_t closure #1 in MappedViews.ElementView.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = a3;
  v15 = a1;
  v16 = HIDWORD(a1);
  v17 = HIDWORD(a3);
  type metadata accessor for MappedViews.ElementView();
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = v15;
  v28 = v16;
  v29 = a2;
  v30 = v13;
  v31 = v17;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v18 = type metadata accessor for MappedViews();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in MappedViews.ElementView.value.getter, v22, v18, a6, a9);
}

uint64_t View.enumerated<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, v9);
  MappedViews.init(content:transform:)(v11, a1, a2, a3, a4);
}

uint64_t MappedViews.init(content:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for MappedViews();
  v9 = (a5 + *(result + 52));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t closure #1 in closure #1 in MappedViews.ElementView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v14 = *(a1 + *(type metadata accessor for MappedViews() + 52));

  v19[0] = a6;
  v19[1] = a7;
  v19[2] = a8;
  v19[3] = a9;
  type metadata accessor for MappedViews.ElementView();
  MappedViews.ElementView.list.getter(&v21);
  v15 = v24;
  if (v24)
  {
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(&v21, v24);
    (*(v16 + 56))(v19, v15, v16);
    v17 = v19[0];
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    outlined destroy of ViewList?(&v21);
    v17 = MEMORY[0x1E69E7CC0];
  }

  v21 = a2;
  v22 = a3;
  v23 = v17;
  v14(&v21);
}

double MappedViews.ElementView.list.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BodyHeadOutdentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BodyHeadOutdentKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BodyHeadOutdentKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BodyHeadOutdentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BodyHeadOutdentKey>>);
    }
  }
}

uint64_t SubscriptionLifetime.Connection.receive(_:)(uint64_t a1, uint64_t a2)
{
  if (swift_weakLoadStrong())
  {
    if (SubscriptionLifetime.shouldAcceptValue(for:)(*(v2 + *(a2 + 60))))
    {
      dispatch thunk of Subscriber.receive(_:)();
    }
  }

  return static Subscribers.Demand.none.getter();
}

uint64_t SubscriptionLifetime.shouldAcceptValue(for:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for SubscriptionLifetime.StateType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v9, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v15[-6], "to subscriber subscription subscriptionID ");
    v15[1] = v4;
    v15[2] = type metadata accessor for AnyCancellable();
    v15[3] = type metadata accessor for Subscription();
    v15[4] = MEMORY[0x1E69E6530];
    TupleTypeMetadata = swift_getTupleTypeMetadata();

    v12 = *(TupleTypeMetadata + 64);
    v13 = *&v8[*(TupleTypeMetadata + 80)];
    __swift_destroy_boxed_opaque_existential_1(&v8[v12]);
    (*(*(v4 - 8) + 8))(v8, v4);
    if (v13 == a1)
    {
      return 1;
    }
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

unint64_t instantiation function for generic protocol witness table for AppearanceEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unsigned __int8 *assignWithTake for _ConditionalContent(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 32))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t specialized static AppearanceEffect.didReinsert(attribute:)()
{
  result = AGGraphGetAttributeInfo();
  *(v1 + 41) = 0;
  if (*(v1 + 48) != *MEMORY[0x1E698D3F8])
  {
    AGGraphInvalidateValue();
    v2 = AGGraphGetAttributeGraph();
    result = AGGraphGetContext();
    if (result)
    {
      v3 = result;

      if ((*(*v3 + 192))())
      {
        v5 = v4;
        ObjectType = swift_getObjectType();
        (*(v5 + 16))(ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI15TypeConformanceVyAC28RemovableAttributeDescriptor33_372497ED4F569296C4450147CA418CD0LLVGTt0g5Tf4g_nTm(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>(0, a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v7 = *(i - 1);
      v13 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 16 * result) = v13;
      v10 = v5[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v5[2] = v12;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v15 = *v7;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v24 = result;
      a5();
      result = v24;
      goto LABEL_8;
    }

    a6(v21, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v10;
  if (v22)
  {
    v27 = (*(v26 + 56) + 16 * result);
    *v27 = a1;
    v27[1] = a2;
  }

  else
  {

    return a7(result, a3, a1, a2, v26);
  }

  return result;
}

uint64_t closure #1 in AGSubgraphRef.didReinsert()(uint64_t a1)
{
  AttributeInfo = AGGraphGetAttributeInfo();
  result = static RemovableAttributeDescriptor.cachedConformance(of:)(*AttributeInfo, v4);
  if (v4[0])
  {
    return (*(v4[1] + 24))(a1);
  }

  return result;
}

uint64_t specialized closure #1 in AGSubgraphRef.willRemove()(uint64_t a1)
{
  AttributeInfo = AGGraphGetAttributeInfo();
  result = static RemovableAttributeDescriptor.cachedConformance(of:)(*AttributeInfo, v4);
  if (v4[0])
  {
    return (*(v4[1] + 16))(a1);
  }

  return result;
}

uint64_t static RemovableAttributeDescriptor.cachedConformance(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static RemovableAttributeDescriptor.typeCache;
    if (*(static RemovableAttributeDescriptor.typeCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
    {
      v10 = *(v4[7] + 16 * v5);
      result = swift_endAccess();
      *a2 = v10;
    }

    else
    {
      swift_endAccess();
      _removableAttributeProtocolDescriptor();
      result = swift_conformsToProtocol();
      if (result)
      {
        v8 = result;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = static RemovableAttributeDescriptor.typeCache;
        static RemovableAttributeDescriptor.typeCache = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, a1, isUniquelyReferenced_nonNull_native);
        static RemovableAttributeDescriptor.typeCache = v11;
        result = swift_endAccess();
        *a2 = a1;
        *(a2 + 8) = v8;
      }

      else
      {
        *a2 = 0;
        *(a2 + 8) = 0;
      }
    }
  }

  return result;
}

void *one-time initialization function for typeCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI15TypeConformanceVyAC28RemovableAttributeDescriptor33_372497ED4F569296C4450147CA418CD0LLVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static RemovableAttributeDescriptor.typeCache = result;
  return result;
}

{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI15TypeConformanceVyAC32InvalidatableAttributeDescriptor33_372497ED4F569296C4450147CA418CD0LLVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static InvalidatableAttributeDescriptor.typeCache = result;
  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for TypeConformance<RemovableAttributeDescriptor>, &type metadata for RemovableAttributeDescriptor, &protocol witness table for RemovableAttributeDescriptor, type metadata accessor for TypeConformance);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>);
    }
  }
}

uint64_t destroy for AttributeInvalidatingSubscriber.StateType(uint64_t a1)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

Swift::Void __swiftcall AnimatableAttribute.destroy()()
{
  v2 = v1 + *(v0 + 40);
  if (*(v2 + *(type metadata accessor for AnimatableAttributeHelper() + 48)))
  {
    AnimatorState.removeListeners()();
  }
}

uint64_t Material.Layer.SDFLayer.Contents.Gradient.colors.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v6 = *v4;
      v10 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        v8 = *v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v5 + 1, 1);
        v6 = v8;
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 16 * v5 + 32) = v6;
      v4 = (v4 + 20);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void one-time initialization function for ultraThin()
{
  dword_1ED51CC2C = 0;
  static Material.ultraThin = 0;
  byte_1ED51CC28 = 3;
}

uint64_t static Material.ultraThin.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for ultraThin != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.ultraThin;
  v3 = dword_1ED51CC2C;
  *a1 = static Material.ultraThin;
  v4 = byte_1ED51CC28;
  *(a1 + 8) = byte_1ED51CC28;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

uint64_t specialized static AppearanceEffect.willRemove(attribute:)()
{
  result = AGGraphGetAttributeInfo();
  if (*(v1 + 8) != 1 && *(v1 + 40) == 1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      v3 = *(v1 + 32);
      v4 = v1;
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;
      v6 = swift_allocObject();
      *(v6 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
      *(v6 + 24) = v5;
      v7 = 2;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2);

      static Update.enqueueAction(reason:_:)(&v7, thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v6);

      v1 = v4;
    }

    *(v1 + 40) = 0;
  }

  *(v1 + 41) = 1;
  return result;
}

double static Animation.easeInOut.getter(__n128 a1, __n128 a2)
{
  type metadata accessor for InternalAnimationBox<BezierAnimation>();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 32) = a2;
  result = -2.0;
  *(v2 + 48) = xmmword_18DDAF520;
  *(v2 + 64) = 0;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *Font.feature(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;

  return v6;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.FeatureSettingModifier>, lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier, &type metadata for Font.FeatureSettingModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier()
{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.FeatureSettingModifier>, lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier, &type metadata for Font.FeatureSettingModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<CustomRecursiveStringConvertible>(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnyTrackedValue(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI18LocalizedStringKeyV14FormatArgumentVG_s7CVarArg_ps5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v16;
  v9 = *(type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(v15, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v13 + 1;
    outlined init with take of AnyTrackedValue(v15, v6 + 40 * v13 + 32);
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<CustomRecursiveStringConvertible>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t partial apply for closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)(a1, a2);
}

{
  LOBYTE(v4) = *(v2 + 80);
  return closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), a2, *(v2 + 72), v4, *(v2 + 88), *(v2 + 96), *(v2 + 104));
}

uint64_t closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v140 = a7;
  *(&v147 + 1) = a5;
  v148 = a6;
  *&v147 = a4;
  v168 = a2;
  v145 = a8;
  v138 = type metadata accessor for AttributedString();
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v139 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v146 = v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v141 = v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v142 = v126 - v25;
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Morphology?, MEMORY[0x1E6967EA8]);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v144 = v126 - v27;
  type metadata accessor for ScopedAttributeContainer<AttributeScopes.FoundationAttributes>();
  v29 = v28;
  v143 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocalizedStringKey.FormatArgument(a1, v34, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v34, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    v45 = v145;
LABEL_11:
    *&v150 = v168;
    *(&v150 + 1) = a3;
    v159[0] = v147;
    v46 = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(&v160, &v150);
    *v148 = (*v148 | v46) & 1;
    return outlined init with take of AnyTrackedValue(&v160, v45);
  }

  v134 = a1;
  v135 = v13;
  v35 = a3;
  v36 = *v34;
  v37 = *(v34 + 1);
  if (v34[16] != 1)
  {
    outlined consume of Text.Storage(*v34, *(v34 + 1), 0);
LABEL_9:

    goto LABEL_10;
  }

  v133 = *(v34 + 3);
  v38 = *(v34 + 4);
  type metadata accessor for AttributedStringTextStorage(0);
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    outlined consume of Text.Storage(v36, v37, 1);
    goto LABEL_9;
  }

  v40 = v39;
  v131 = v38;
  v41 = OBJC_IVAR____TtC7SwiftUI27AttributedStringTextStorage_str;
  swift_getKeyPath();
  v132 = v37;
  outlined copy of Text.Storage(v36, v37, 1);
  type metadata accessor for AttributeScopes.FoundationAttributes();

  v129 = v41;
  v130 = v40;
  AttributedString.subscript.getter();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute();
  v42 = v144;
  ScopedAttributeContainer.subscript.getter();

  (*(v143 + 8))(v31, v29);
  v43 = type metadata accessor for Morphology();
  LODWORD(v41) = (*(*(v43 - 8) + 48))(v42, 1, v43);
  _sypSgWOhTm_3(v42, &lazy cache variable for type metadata for Morphology?, MEMORY[0x1E6967EA8], type metadata accessor for NSInlinePresentationIntent?);
  if (v41 == 1)
  {
    v44 = v132;
    outlined consume of Text.Storage(v36, v132, 1);
    outlined consume of Text.Storage(v36, v44, 1);

LABEL_10:
    v45 = v145;
    a3 = v35;
    goto LABEL_11;
  }

  v143 = v36;
  if (v35)
  {

    v48 = v142;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v168, v142);
  }

  else
  {
    v49 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v168);
    v48 = v142;
    if (v49)
    {
      v50 = *(*v49 + 248);
      v51 = v49;
      v52 = type metadata accessor for Locale();
      (*(*(v52 - 8) + 16))(v48, &v51[v50], v52);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Locale();
      v54 = __swift_project_value_buffer(v53, static LocaleKey.defaultValue);
      (*(*(v53 - 8) + 16))(v48, v54, v53);
    }
  }

  v55 = type metadata accessor for Locale();
  v126[0] = *(v55 - 8);
  v127 = *(v126[0] + 56);
  v128 = v55;
  v126[1] = v126[0] + 56;
  (v127)(v48, 0, 1);
  v56 = *(a11 + 16);
  if (v56)
  {
    v167 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
    v57 = v167;
    v58 = a11 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v144 = *(v139 + 72);
    do
    {
      v59 = v146;
      outlined init with copy of LocalizedStringKey.FormatArgument(v58, v146, type metadata accessor for LocalizedStringKey.FormatArgument);
      *&v160 = v168;
      *(&v160 + 1) = v35;
      v159[0] = v147;
      v60 = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(&v150, &v160);
      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v59, type metadata accessor for LocalizedStringKey.FormatArgument);
      *v148 = (*v148 | v60) & 1;
      outlined init with take of AnyTrackedValue(&v150, &v160);
      v167 = v57;
      v62 = v57[2];
      v61 = v57[3];
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        v57 = v167;
      }

      v57[2] = v62 + 1;
      outlined init with take of AnyTrackedValue(&v160, &v57[5 * v62 + 4]);
      v58 += v144;
      --v56;
    }

    while (v56);
    v48 = v142;
  }

  v63 = getVaList(_:)();

  v64 = v126[0];
  v65 = v128;
  if ((*(v126[0] + 48))(v48, 1, v128) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v64 + 8))(v48, v65);
  }

  v67 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v68 = [v67 initSwiftUIAttributedStringWithFormat:v140 options:0 locale:isa arguments:v63];

  v146 = v68;
  v69 = [v68 string];
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  v144 = v71;

  *&v160 = v70;
  *(&v160 + 1) = v72;
  *&v150 = 0;
  *(&v150 + 1) = 0xE000000000000000;
  Character.write<A>(to:)();
  *&v159[0] = v131;
  v73 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v73);

  Character.write<A>(to:)();
  v74 = v141;
  v127(v141, 1, 1, v65);
  lazy protocol witness table accessor for type String and conformance String();
  v75 = StringProtocol.range<A>(of:options:range:locale:)();
  v77 = v76;
  v79 = v78;
  _sypSgWOhTm_3(v74, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], type metadata accessor for NSInlinePresentationIntent?);

  if (v79)
  {
    v80 = v143;
    v81 = v132;
    outlined consume of Text.Storage(v143, v132, 1);
    *&v150 = v168;
    *(&v150 + 1) = v35;
    v159[0] = v147;
    v82 = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(&v160, &v150);

    outlined consume of Text.Storage(v80, v81, 1);

    outlined consume of Text.Storage(v80, v81, 1);
    *v148 = (*v148 | v82) & 1;
    return outlined init with take of AnyTrackedValue(&v160, v145);
  }

  else
  {
    *&v160 = v75;
    *(&v160 + 1) = v77;
    v83 = v146;
    v84 = [v146 string];
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    *&v150 = v85;
    *(&v150 + 1) = v87;
    _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    v88 = _NSRange.init<A, B>(_:in:)();
    v90 = [v83 attributesAtIndex:v88 longestEffectiveRange:0 inRange:{v88, v89}];
    type metadata accessor for NSAttributedStringKey(0);
    v92 = v91;
    *&v147 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    *(&v147 + 1) = v92;
    v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of LocalizedStringKey.FormatArgument(a12, v19, type metadata accessor for Text.Style);
    v94 = Text.withInlinePresentationIntent(from:)(v93, v143, v132, 1, v133);
    v96 = v95;
    LOBYTE(v85) = v97;
    v99 = v98;

    outlined consume of Text.Storage(v94, v96, v85 & 1);
    v100 = *(v99 + 16);
    if (v100)
    {
      v101 = 0;
      v102 = (v99 + 16 * v100 + 24);
      while (v100 <= *(v99 + 16))
      {
        v103 = *(v102 - 1);
        v104 = *v102;
        if ((*v102 & 0xE0) == 0x80)
        {
          v101 = 1;
        }

        else
        {
          outlined copy of Text.Modifier(*(v102 - 1), *v102);
        }

        --v100;
        *&v160 = v168;
        *(&v160 + 1) = v35;
        Text.Modifier.modify(style:environment:)(v19, &v160, v103, v104);
        outlined consume of Text.Modifier(v103, v104);
        v102 -= 16;
        if (!v100)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
    }

    v101 = 0;
LABEL_39:

    LOWORD(v162) = 0;
    v160 = 0u;
    v161 = 0u;
    v105 = MEMORY[0x1E69E7CC0];
    *(&v162 + 1) = MEMORY[0x1E69E7CC0];
    *&v163[0] = MEMORY[0x1E69E7CC0];
    *(v163 + 8) = 0u;
    *(&v163[1] + 8) = 0u;
    *(&v163[2] + 1) = 0;
    v164 = xmmword_18DD85510;

    v165 = v105;
    *&v166[1] = 0;
    v166[0] = MEMORY[0x1E69E7CD0];
    BYTE8(v166[1]) = 3;
    *&v150 = v168;
    *(&v150 + 1) = v35;
    *&v159[0] = a13;
    outlined copy of Text.Storage(v143, v132, 1);
    v106 = v130;
    v107 = v19;
    v108 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #2 in closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:), v130, &v150, 1, v159, &v160);

    v167 = v108;
    if (v101)
    {
      if (one-time initialization token for kitTracking != -1)
      {
        swift_once();
      }

      v109 = static NSAttributedStringKey.kitTracking;
      if (v107[72])
      {
        v110 = static NSAttributedStringKey.kitTracking;
        specialized Dictionary._Variant.removeValue(forKey:)(&v150);

        _sypSgWOhTm_3(&v150, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyypGMaTm_0);
      }

      else
      {
        v111 = *(v107 + 8);
        *(&v151 + 1) = MEMORY[0x1E69E7DE0];
        *&v150 = v111;
        outlined init with take of Any(&v150, v159);
        v112 = v109;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149 = v108;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v112, isUniquelyReferenced_nonNull_native);

        v167 = v149;
      }
    }

    v114 = v107;
    v115 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    v116 = v137;
    (*(v136 + 16))(v137, v106 + v129, v138);
    AttributeScopeContext.init()(&v150);
    v159[0] = v150;
    v159[1] = v151;
    v117 = NSAttributedString.init(swiftUIAttributedString:in:)(v116, v159);
    v118 = Dictionary._bridgeToObjectiveC()().super.isa;
    v119 = v117;
    v120 = [v119 length];

    [v119 addAttributes:v118 range:{0, v120}];
    v121 = v148;
    v122 = *v148;

    *v121 = (v122 | BYTE1(v162)) & 1;
    v123 = v145;
    v145[3] = v115;
    v123[4] = lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSMutableAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSMutableAttributedString);

    v124 = v143;
    v125 = v132;
    outlined consume of Text.Storage(v143, v132, 1);
    *v123 = v119;

    outlined consume of Text.Storage(v124, v125, 1);
    outlined consume of Text.Storage(v124, v125, 1);
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v114, type metadata accessor for Text.Style);
    v156 = v164;
    v157 = v165;
    v158[0] = v166[0];
    *(v158 + 9) = *(v166 + 9);
    v152 = v162;
    v153 = v163[0];
    v154 = v163[1];
    v155 = v163[2];
    v150 = v160;
    v151 = v161;
    return outlined destroy of Text.ResolvedProperties(&v150);
  }
}

uint64_t sub_18D23869C@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.foundation.getter();
  result = type metadata accessor for AttributeScopes.FoundationAttributes();
  *a1 = result;
  return result;
}

void type metadata accessor for ScopedAttributeContainer<AttributeScopes.FoundationAttributes>()
{
  if (!lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.FoundationAttributes>)
  {
    type metadata accessor for AttributeScopes.FoundationAttributes();
    v0 = type metadata accessor for ScopedAttributeContainer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.FoundationAttributes>);
    }
  }
}

uint64_t initializeWithCopy for LocalizedStringKey.FormatArgument.Storage(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = type metadata accessor for AttributedString();
    }

    else
    {
      v8 = type metadata accessor for LocalizedStringResource();
    }

    (*(*(v8 - 8) + 16))(a1, a2, v8);
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v10, v11);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    v12 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v12;
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    v6 = *(a2 + 40);
    *(a1 + 40) = v6;
    v7 = v6;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

BOOL LocalizedStringKey.FormatArgument.resolve(in:idiom:)(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v4 = type metadata accessor for LocalizedStringResource();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v72 - v8;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  v17 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = *(a2 + 8);
  v76 = v20;
  outlined init with copy of LocalizedStringKey.FormatArgument(v2, v19, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v11 + 32))(v16, v19, v10);
      v35 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString);
      (*(v11 + 16))(v13, v16, v10);
      v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v37 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
      v38 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes);
      v39 = type metadata accessor for TaskPriority();
      (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply, v40);

      _sypSgWOhTm_3(v9, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], type metadata accessor for NSInlinePresentationIntent?);
      v79 = MEMORY[0x1E69E7CC0];
      v80 = v36;
      v81 = v37;
      v82 = v38;
      v41 = NSAttributedString.init(swiftUIAttributedString:in:)(v13, &v79);
      v42 = v75;
      v75[3] = v35;
      v42[4] = lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString);
      *v42 = v41;
      if (v21)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v76, &v79);
      }

      else
      {
        v59 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v76);
        if (v59)
        {
          v60 = v59[9];
        }

        else
        {
          v60 = 0;
        }

        v79 = v60;
      }

      (*(v11 + 8))(v16, v10);
    }

    else
    {
      (*(v73 + 32))(v6, v19, v74);
      v49 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString);
      v50 = v76;
      v79 = v76;
      v80 = v21;
      LocalizedStringResource.resolve(in:)(&v79, v13);
      v51 = MEMORY[0x1E69E7CC0];
      v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v53 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
      v54 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes);
      v55 = type metadata accessor for TaskPriority();
      (*(*(v55 - 8) + 56))(v9, 1, 1, v55);
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v56);

      _sypSgWOhTm_3(v9, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], type metadata accessor for NSInlinePresentationIntent?);
      v79 = v51;
      v80 = v52;
      v81 = v53;
      v82 = v54;
      v57 = NSAttributedString.init(swiftUIAttributedString:in:)(v13, &v79);
      v58 = v75;
      v75[3] = v49;
      v58[4] = lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString);
      *v58 = v57;
      if (v21)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v50, &v79);
      }

      else
      {
        v62 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v50);
        if (v62)
        {
          v63 = v62[9];
        }

        else
        {
          v63 = 0;
        }

        v79 = v63;
      }

      (*(v73 + 8))(v6, v74);
    }

    goto LABEL_36;
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = *(v19 + 5);
    outlined init with take of AnyTrackedValue(v19, &v79);
    if (!v23)
    {
      outlined init with copy of AnyTrackedValue(&v79, v75);
      if (v21)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v76, &v77);

        v34 = v77;
      }

      else
      {
        v70 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v76);
        if (v70)
        {
          v34 = v70[9];
        }

        else
        {
          v34 = 0;
        }
      }

      goto LABEL_39;
    }

    ObjectType = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (v25)
    {
      v77 = v76;
      v78 = v21;
      v26 = *(v25 + 8);
      v27 = v25;
      v28 = v23;
      v26(&v77, ObjectType, v27);
    }

    __swift_project_boxed_opaque_existential_1(&v79, v82);
    v29 = [v23 stringForObjectValue_];
    swift_unknownObjectRelease();
    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = v75;
      v75[3] = MEMORY[0x1E69E6158];
      v33[4] = lazy protocol witness table accessor for type String and conformance String();
      *v33 = v30;
      v33[1] = v32;
      if (v21)
      {
LABEL_8:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v76, &v77);

        swift_unknownObjectRelease();
        v34 = v77;
LABEL_39:
        __swift_destroy_boxed_opaque_existential_1(&v79);
        return v34 == 0;
      }
    }

    else
    {
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(101);
      MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD79BA0);
      v64 = [v23 description];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      MEMORY[0x193ABEDD0](v65, v67);

      MEMORY[0x193ABEDD0](0xD000000000000022, 0x800000018DD79BC0);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](0xD000000000000027, 0x800000018DD79BF0);
      specialized static Log.externalWarning(_:)(v77, v78);

      v68 = v75;
      v75[3] = MEMORY[0x1E69E6158];
      v68[4] = lazy protocol witness table accessor for type String and conformance String();
      *v68 = 0;
      v68[1] = 0xE000000000000000;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    v69 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v76);
    if (v69)
    {
      v34 = v69[9];
    }

    else
    {
      v34 = 0;
    }

    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v43 = *(v19 + 4);
  outlined consume of Text.Storage(*v19, *(v19 + 1), v19[16]);

  v79 = 0;
  v80 = 0xE000000000000000;
  Character.write<A>(to:)();
  v77 = v43;
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v44);

  Character.write<A>(to:)();
  v45 = v79;
  v46 = v80;
  v47 = v75;
  v75[3] = MEMORY[0x1E69E6158];
  v47[4] = lazy protocol witness table accessor for type String and conformance String();
  *v47 = v45;
  v47[1] = v46;
  v48 = v76;
  if (v21)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v48, &v79);

LABEL_36:
    v34 = v79;
    return v34 == 0;
  }

  v61 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v76);
  if (v61)
  {
    v34 = v61[9];
  }

  else
  {
    v34 = 0;
  }

  return v34 == 0;
}

uint64_t sub_18D23930C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void destroy for LocalizedStringKey.FormatArgument.Storage(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v3 = type metadata accessor for AttributedString();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        return;
      }

      v3 = type metadata accessor for LocalizedStringResource();
    }

    v5 = *(*(v3 - 8) + 8);

    v5(a1, v3);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v4 = *(a1 + 40);
  }
}

uint64_t specialized LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *a4;
  v16 = specialized LocalizedStringKey.getTextArguments()(a6);
  if (*(v16 + 16))
  {
    v27 = v16;
    v17 = [a1 string];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v29 = v13;
    v30 = v14;
    v28 = v15;
    MEMORY[0x1EEE9AC00](v20);
    v24[10] = a7;
    v24[11] = a8;
    v24[12] = a1;
    v24[13] = a2;
    v24[14] = v13;
    v24[15] = v14;
    v24[16] = v15;
    v25 = a5 & 1;
    MEMORY[0x1EEE9AC00](v21);
    v24[2] = a7;
    v24[3] = a8;
    v24[4] = a1;
    v24[5] = a2;
    v24[6] = v15;
    specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v26, v19, &v29, &v28, v27, partial apply for closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v22, partial apply for closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v24);
  }

  else
  {

    v29 = v13;
    v30 = v14;
    v28 = v15;
    return (*(a8 + 72))(a1, &v29, &v28, a5 & 1, a7, a8);
  }
}

uint64_t specialized LocalizedStringKey.getTextArguments()(uint64_t a1)
{
  type metadata accessor for (Int, LocalizedStringKey.FormatArgument)();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v49);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v41 - v7);
  v9 = type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v48 = v15;
  if (v18)
  {
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v21 = a1 + v20;
    v22 = *(v15 + 72);
    v23 = v42;
    v43 = v22;
    v44 = v20;
    do
    {
      outlined init with copy of LocalizedStringKey.FormatArgument(v21, v17, type metadata accessor for LocalizedStringKey.FormatArgument);
      outlined init with copy of LocalizedStringKey.FormatArgument(v17, v8, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v8, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v8, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
          outlined init with take of LocalizedStringKey.FormatArgument(v17, v23, type metadata accessor for LocalizedStringKey.FormatArgument);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
            v23 = v42;
            v19 = v50;
          }

          v27 = *(v19 + 16);
          v26 = *(v19 + 24);
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
            v23 = v42;
            v19 = v50;
          }

          *(v19 + 16) = v27 + 1;
          v22 = v43;
          outlined init with take of LocalizedStringKey.FormatArgument(v23, v19 + v44 + v27 * v43, type metadata accessor for LocalizedStringKey.FormatArgument);
          goto LABEL_5;
        }

        __swift_destroy_boxed_opaque_existential_1(v8);
      }

      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v17, type metadata accessor for LocalizedStringKey.FormatArgument);
LABEL_5:
      v21 += v22;
      --v18;
    }

    while (v18);
  }

  v28 = *(v19 + 16);
  if (v28)
  {
    v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = 0;
    v30 = v50;
    v31 = v48;
    v32 = v19 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    while (v29 < *(v19 + 16))
    {
      outlined init with copy of LocalizedStringKey.FormatArgument(v32 + *(v31 + 72) * v29, v11, type metadata accessor for LocalizedStringKey.FormatArgument);
      outlined init with copy of LocalizedStringKey.FormatArgument(v11, v5, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_25;
      }

      v33 = *(v47 + 48);
      v34 = *(v5 + 4);
      outlined consume of Text.Storage(*v5, *(v5 + 1), v5[16]);

      v35 = v45;
      *v45 = v34;
      v36 = v35 + v33;
      v37 = v35;
      outlined init with take of LocalizedStringKey.FormatArgument(v11, v36, type metadata accessor for LocalizedStringKey.FormatArgument);
      v50 = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
        v30 = v50;
      }

      ++v29;
      *(v30 + 16) = v39 + 1;
      outlined init with take of LocalizedStringKey.FormatArgument(v37, v30 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39, type metadata accessor for (Int, LocalizedStringKey.FormatArgument));
      v31 = v48;
      if (v28 == v29)
      {

        return v30;
      }
    }

    __break(1u);
LABEL_25:
    result = _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v5, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void type metadata accessor for (Int, LocalizedStringKey.FormatArgument)()
{
  if (!lazy cache variable for type metadata for (Int, LocalizedStringKey.FormatArgument))
  {
    type metadata accessor for LocalizedStringKey.FormatArgument(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, LocalizedStringKey.FormatArgument));
    }
  }
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>)
  {
    type metadata accessor for LocalizedStringKey.FormatArgument(255);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>);
    }
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Int, LocalizedStringKey.FormatArgument)();
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = *(a1 + 16);
  if (!v55)
  {
    goto LABEL_23;
  }

  v52 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v54 = *(v13 + 72);
  v56 = a1;
  v51 = v17;
  outlined init with copy of LocalizedStringKey.FormatArgument(a1 + v17, &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for (Int, LocalizedStringKey.FormatArgument));
  v60 = *v15;
  v18 = v60;
  v53 = v16;
  outlined init with take of LocalizedStringKey.FormatArgument(v15 + v16, v10, type metadata accessor for LocalizedStringKey.FormatArgument);
  v19 = *a3;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, a2 & 1);
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_13:
      v30 = *a3;
      *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      *(v30[6] + 8 * v21) = v18;
      v31 = *(v8 + 72);
      outlined init with take of LocalizedStringKey.FormatArgument(v10, v30[7] + v31 * v21, type metadata accessor for LocalizedStringKey.FormatArgument);
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (!v33)
      {
        v30[2] = v34;
        v35 = v56;
        if (v55 != 1)
        {
          v36 = v56 + v54 + v51;
          v37 = 1;
          while (v37 < *(v35 + 16))
          {
            outlined init with copy of LocalizedStringKey.FormatArgument(v36, v15, type metadata accessor for (Int, LocalizedStringKey.FormatArgument));
            v60 = *v15;
            v38 = v60;
            outlined init with take of LocalizedStringKey.FormatArgument(v15 + v53, v10, type metadata accessor for LocalizedStringKey.FormatArgument);
            v39 = *a3;
            v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
            v42 = v39[2];
            v43 = (v41 & 1) == 0;
            v33 = __OFADD__(v42, v43);
            v44 = v42 + v43;
            if (v33)
            {
              goto LABEL_24;
            }

            v45 = v41;
            if (v39[3] < v44)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, 1);
              v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
              if ((v45 & 1) != (v46 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v45)
            {
              goto LABEL_10;
            }

            v47 = *a3;
            *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
            *(v47[6] + 8 * v40) = v38;
            outlined init with take of LocalizedStringKey.FormatArgument(v10, v47[7] + v31 * v40, type metadata accessor for LocalizedStringKey.FormatArgument);
            v48 = v47[2];
            v33 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v33)
            {
              goto LABEL_25;
            }

            ++v37;
            v47[2] = v49;
            v36 += v54;
            v35 = v56;
            if (v55 == v37)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v28 = swift_allocError();
    swift_willThrow();
    v59 = v28;
    v29 = v28;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
    if ((swift_dynamicCast() & 1) == 0)
    {
      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v10, type metadata accessor for LocalizedStringKey.FormatArgument);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD744D0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for EnvironmentValues.CapitalizationContext();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
  v9 = v8;
  BloomFilter.init(hashValue:)(v8);
  v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE0V033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt0B5(v7, v16[0]);
  if (!v10 || (outlined init with copy of EnvironmentValues.CapitalizationContext(v10 + *(*v10 + 248), v6, type metadata accessor for EnvironmentValues.CapitalizationContext), v11 = AGCompareValues(), result = outlined destroy of EnvironmentValues.CapitalizationContext(v6, type metadata accessor for EnvironmentValues.CapitalizationContext), !v11))
  {
    outlined init with copy of EnvironmentValues.CapitalizationContext(a2, v6, type metadata accessor for EnvironmentValues.CapitalizationContext);
    v13 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.Key>>();
    v14 = swift_allocObject();
    outlined init with copy of EnvironmentValues.CapitalizationContext(v6, v14 + *(*v14 + 248), type metadata accessor for EnvironmentValues.CapitalizationContext);

    value = PropertyList.Element.init(keyType:before:after:)(v9, 0, v13).value;
    outlined destroy of EnvironmentValues.CapitalizationContext(v6, type metadata accessor for EnvironmentValues.CapitalizationContext);
    *a1 = value;
  }

  return result;
}

__n128 protocol witness for ResolvedTextContainer.idiom.getter in conformance Text.Resolved@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v14 = v13[1];
    v15 = type metadata accessor for EnvironmentValues.CapitalizationContext();
    v14(v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.Key>>();
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    outlined init with copy of EnvironmentValues.CapitalizationContext(a2, boxed_opaque_existential_1, type metadata accessor for EnvironmentValues.CapitalizationContext);
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE0V033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt0B5(a1, v7);
  if (v5)
  {
    return _s7SwiftUI24TypesettingConfigurationVWOcTm_0(v5 + *(*v5 + 248), a2, type metadata accessor for EnvironmentValues.CapitalizationContext);
  }

  MEMORY[0x193ABCCE0]();
  type metadata accessor for EnvironmentValues.CapitalizationContext();
  return swift_storeEnumTagMultiPayload();
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE0V033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE0V033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.Key>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.Key>>);
    }
  }
}

void *initializeWithCopy for EnvironmentValues.CapitalizationContext(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    v5 = type metadata accessor for FormatStyleCapitalizationContext();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.Key>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.Key>>);
    }
  }
}

uint64_t Text.withInlinePresentationIntent(from:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5)
{
  if (!*(a1 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A4A0]), (v11 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v10, v28), (swift_dynamicCast() & 1) == 0))
  {
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    return a2;
  }

  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if (v27)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    }

    v14 = *(a5 + 2);
    v13 = *(a5 + 3);
    if (v14 >= v13 >> 1)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a5);
    }

    *(a5 + 2) = v14 + 1;
    v15 = &a5[16 * v14];
    *(v15 + 4) = 0;
    v15[40] = -32;
    if ((v27 & 2) == 0)
    {
LABEL_6:
      if ((v27 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_21:
      type metadata accessor for MonospacedTextModifier();
      v21 = swift_allocObject();
      *(v21 + 16) = 1;
      outlined copy of Text.Storage(a2, a3, a4 & 1);

      v22 = a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
      }

      outlined consume of Text.Storage(a2, a3, a4 & 1);

      *(v22 + 2) = v24 + 1;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v21;
      v25[40] = -64;
      a5 = v22;
      if ((v27 & 0x20) != 0)
      {
        goto LABEL_26;
      }

      return a2;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_6;
  }

  type metadata accessor for BoldTextModifier();
  v16 = swift_allocObject();
  *(v16 + 16) = 1;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  v17 = a5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
  }

  outlined consume of Text.Storage(a2, a3, a4 & 1);

  *(v17 + 2) = v19 + 1;
  v20 = &v17[16 * v19];
  *(v20 + 4) = v16;
  v20[40] = -64;
  a5 = v17;
  if ((v27 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v27 & 0x20) != 0)
  {
LABEL_26:
    v26 = Text.strikethrough(_:color:)(1, 0, a2, a3, a4 & 1, a5);
    outlined consume of Text.Storage(a2, a3, a4 & 1);

    return v26;
  }

  return a2;
}

uint64_t Text.Storage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = *a3;
  if (a6)
  {
    v17 = *a2;
    v18 = v10;
    v16[0] = v12;
    return (*(*a4 + 80))(a1, &v17, v16, a7, a8);
  }

  else
  {
    v17 = a4;
    v18 = a5;
    v16[0] = v11;
    v16[1] = v10;
    v15 = v12;
    v14 = lazy protocol witness table accessor for type String and conformance String();
    return ResolvedTextContainer.append<A>(_:in:with:)(&v17, v16, &v15, a7, MEMORY[0x1E69E6158], a8, v14);
  }
}

uint64_t AttachmentTextStorage.resolveAndWriteAuxiliaryMetadataIfNeeded<A>(into:context:environment:options:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = *a4;
  if ((*a4 & 4) == 0)
  {
    return 0;
  }

  v14 = *a3;
  (*(**(v6 + 16) + 88))(&v24, a2);
  v10 = v25;
  if (!v25)
  {
    return 0;
  }

  v11 = v26;
  v12 = v24;
  v23 = v28 & 1;
  v17[0] = v24;
  v17[1] = v25;
  v17[2] = v26;
  v18 = v27;
  v19 = v28 & 1;
  v20 = v29 & 0x1FF;
  v21 = v30;
  v22 = v31;
  v16 = v14;
  v15 = v7;
  (*(a6 + 88))(v17, &v16, &v15, a5, a6);
  outlined consume of Image.NamedResolved?(v12, v10, v11);
  return 1;
}

uint64_t outlined init with take of NamedImage.BitmapKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Text.Style.fontTraits(in:)@<X0>(int64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *&v23 = *v2;
  *&v26 = v4;
  *(&v26 + 1) = v5;
  outlined copy of Text.Style.TextStyleFont(v23);
  v6 = Text.Style.TextStyleFont.resolve(in:includeDefaultAttributes:)(&v26, 1);
  outlined consume of EffectAnimator<A>.State<A>(v23);
  if (v5)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v4);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v4);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  v9 = v2[1];
  if (v9 >> 62)
  {
    v10 = v7 >> 62;
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v7 >> 62;
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }
  }

  if (v10)
  {
    goto LABEL_38;
  }

  for (result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = __CocoaSet.count.getter())
  {
LABEL_10:
    if (v5)
    {

      _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v4, &v26);
    }

    else
    {
      v23 = v4;

      static EnvironmentValues.FontContextKey.value(in:)(&v23, &v26);
    }

    v23 = v26;
    v24 = v27;
    v25 = v28;
    if (!v6)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v19 = v26;
    v20 = v27;
    v21 = v28;
    v12 = *(*v6 + 96);
    v5 = *v6 + 96;

    v13 = v12(&v19);

    v22 = v13;
    if (v10)
    {
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_37;
    }

    v5 = 0;
    v10 = v7 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v14 = MEMORY[0x193AC03C0](v5, v7);
      }

      else
      {
        v14 = *(v7 + 8 * v5 + 32);
      }

      ++v5;
      v19 = v23;
      v20 = v24;
      v21 = v25;
      (*(*v14 + 80))(&v22, &v19);
    }

    while (v4 != v5);
LABEL_25:

    if (v9 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_35;
      }
    }

    if (v7 >= 1)
    {
      v15 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x193AC03C0](v15, v9);
        }

        else
        {
          v16 = *(v9 + 8 * v15 + 32);
        }

        ++v15;
        v19 = v23;
        v20 = v24;
        v21 = v25;
        (*(*v16 + 80))(&v22, &v19);
      }

      while (v7 != v15);
LABEL_35:
      v17 = v22;
      Font.ResolvedTraits.init(_:)(v17, a2);
      outlined destroy of Font.Context(&v23);
    }

LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  if (!v6)
  {
    goto LABEL_45;
  }

  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v4, v18);
  }

  else
  {
    v26 = v4;

    static EnvironmentValues.FontContextKey.value(in:)(&v26, v18);
  }

  v26 = v18[0];
  v27 = v18[1];
  v28 = v18[2];
  (*(*v6 + 104))(v18);

  return outlined destroy of Font.Context(&v26);
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesVAAE021MaterialBackdropProxyD033_DEF3755CDC6B87C0368876C9F497EC3DLLV_Tt1B5(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return a1 == a2;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:

    return 0;
  }

  return 1;
}

void type metadata accessor for VibrantColorStyle.Type?()
{
  if (!lazy cache variable for type metadata for VibrantColorStyle.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for VibrantColorStyle.Type, &lazy cache variable for type metadata for VibrantColorStyle);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VibrantColorStyle.Type?);
    }
  }
}

uint64_t type metadata completion function for EnvironmentValues.CapitalizationContext()
{
  result = type metadata accessor for FormatStyleCapitalizationContext();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyHashable2(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 112))() & 1;
  }
}

uint64_t assignWithCopy for Text.ResolvedProperties.Transition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  v8 = *a1;
  v9 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v10 = *(a1 + 13);
  *(a1 + 13) = v7;
  outlined consume of ContentTransition.Storage(v8, v9, v10);
  *(a1 + 14) = *(a2 + 14);
  return a1;
}

uint64_t initializeWithCopy for SpringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, v5);
  v11 = (v8 + v9 + v10) & ~v9;
  v7((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, v5);
  v12 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t destroy for SpringState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v9 = *(v4 + 8);
  v9(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = (v6 + a1) & ~v5;
  v9(v7, v3);

  return (v9)((v6 + v7) & ~v5, v3);
}

uint64_t MaterialBackdropProxy.luminance.setter(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 4);
  if ((v3[7]._os_unfair_lock_opaque & 1) == 0)
  {
    if ((a1 & 0x100000000) != 0 || *&v3[6]._os_unfair_lock_opaque != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v3[6]._os_unfair_lock_opaque = a1;
  LOBYTE(v3[7]._os_unfair_lock_opaque) = BYTE4(a1) & 1;
  v4 = *&v3[8]._os_unfair_lock_opaque;

LABEL_8:
  os_unfair_lock_unlock(v3 + 4);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      outlined init with copy of MaterialBackdropProxy.Observer(v6, v12);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = v13;
        ObjectType = swift_getObjectType();
        os_unfair_lock_lock(v3 + 4);
        os_unfair_lock_opaque = v3[6]._os_unfair_lock_opaque;
        v10 = v3[7]._os_unfair_lock_opaque;
        os_unfair_lock_unlock(v3 + 4);
        (*(v7 + 8))(os_unfair_lock_opaque | (v10 << 32), ObjectType, v7);
        swift_unknownObjectRelease();
      }

      outlined destroy of weak GestureGraphDelegate?(v12);
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

uint64_t _AnyEquatableBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));

  return swift_deallocClassInstance();
}

void type metadata accessor for [ScrollStateRequest](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of ViewList?(uint64_t a1)
{
  type metadata accessor for [ScrollStateRequest](0, &lazy cache variable for type metadata for ViewList?, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t AnimationState.init()@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TextLayoutProperties and conformance TextLayoutProperties()
{
  result = lazy protocol witness table cache variable for type TextLayoutProperties and conformance TextLayoutProperties;
  if (!lazy protocol witness table cache variable for type TextLayoutProperties and conformance TextLayoutProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextLayoutProperties and conformance TextLayoutProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.Context and conformance Font.Context()
{
  result = lazy protocol witness table cache variable for type Font.Context and conformance Font.Context;
  if (!lazy protocol witness table cache variable for type Font.Context and conformance Font.Context)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Context and conformance Font.Context);
  }

  return result;
}

void ShapeLayerHelper.gradientLayer()()
{
  v1 = *v0;
  if ((*(v0 + 128) & 1) == 0)
  {
    v3 = [v1 sublayers];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](0, v5);
        goto LABEL_9;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v5 + 32);
LABEL_9:

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v2 = v1;
}

double makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a5 > a6)
  {
    v6 = a5;
  }

  else
  {
    v6 = a6;
  }

  return a1 / v6 * (v6 / a5);
}

unint64_t specialized static GradientLayer.clippedValues(gradient:function:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = 1.0;
  v6 = 0.0;
  if ((*(a2 + 32) & 0xFE) == 2)
  {
    v7 = *(a2 + 16);
    if (v7 != 0.0)
    {
      v8 = *(a2 + 24);
      if (v7 >= v8)
      {
        v5 = v8 / v7 + -1.0;
        v6 = 1.0;
      }

      else
      {
        v5 = (v8 - v7) / v8;
        v6 = v7 / v8;
      }
    }
  }

  v101 = *(a1 + 8);
  v9 = *(a1 + 12);
  LODWORD(v10) = *(a1 + 16);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  v96 = v11;
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v13 = (v11 + 16);
  v133 = v12;
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = v12;
  if (v6 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v6;
  }

  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  v17 = v5 + v6;
  if (v5 + v6 < 0.0)
  {
    v17 = 0.0;
  }

  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v16 > v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  v20 = *(v4 + 16);
  if (!v20)
  {
    v88 = v12;
    if (v12 >> 62)
    {
      goto LABEL_80;
    }

    goto LABEL_75;
  }

  v107 = v13;
  v99 = v14;
  v100 = (v14 + 16);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v4 + 32;
  v27 = v20 - 1;
  if (v5 > 0.0)
  {
    v27 = 0;
  }

  v28 = *&v9;
  if (v10)
  {
    v28 = NAN;
  }

  v105 = v28;
  v94 = v9 << 32;
  v29 = 0.0;
  v15 = 1;
  v98 = MEMORY[0x1E69E7CC0];
  v106 = *(v4 + 16);
  v30 = v106;
  v31 = 1;
  v97 = v5;
  v103 = v19;
  v104 = v6;
  v102 = v18;
  v108 = v4 + 32;
  v110 = v4;
  v109 = v10;
  while (1)
  {
    v32 = *(v4 + 16);
    if (v27 >= v32)
    {
      break;
    }

    v33 = v26 + 48 * v27;
    v34 = *v33;
    v35 = *(v33 + 4);
    v2 = *(v33 + 8);
    v3 = *(v33 + 12);
    v36 = *(v33 + 24);
    v37 = *(v33 + 32);
    v38 = *(v33 + 40);
    v39 = v6 + v5 * *(v33 + 16);
    if (v39 >= v18)
    {
      if (v19 >= v39)
      {
        goto LABEL_46;
      }

      if (v15 != 1)
      {
        v43 = v15 - 2;
        if (v5 <= 0.0)
        {
          v43 = v30;
        }

        if (v43 >= v32)
        {
          goto LABEL_87;
        }

        v44 = v26 + 48 * v43;
        v45 = v6 + v5 * *(v44 + 16);
        if (v45 <= v19)
        {
          v46 = *(v44 + 8);
          v47 = *(v44 + 12);
          v48 = *v44;
          v49 = *(v44 + 4);
          v117 = v34;
          v50 = (v19 - v45) / (v39 - v45);
          v115 = v50;
          v131[0].i8[0] = v101;
          v123 = v37;
          v126 = v36;
          v120 = v38;
          v51 = v35;
          v10 = v22;
          v52 = v23;
          ResolvedGradient.ColorSpace.convertIn(_:)(v132, v48, v49, v46, v47);
          v129.i8[0] = v101;
          ResolvedGradient.ColorSpace.convertIn(_:)(v131, v117, v51, v2, v3);
          v130[0] = v101;
          v129 = vaddq_f32(vmulq_n_f32(v132[0], 1.0 - v115), vmulq_n_f32(v131[0], v115));
          v12 = v130;
          v53 = ResolvedGradient.ColorSpace.convertOut(_:)(&v129);
          v23 = v52;
          v22 = v10;
          v38 = v120;
          LOBYTE(v10) = v109;
          v37 = v123;
          v36 = v126;
          v4 = v110;
          v26 = v108;
          v34 = v53;
          v35 = v54;
          v2 = v55;
          v3 = v56;
        }
      }

      v39 = v19;
      if (v31)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v15 >= v106)
      {
        v39 = v18;
LABEL_46:
        if (v31)
        {
          goto LABEL_67;
        }

        goto LABEL_47;
      }

      v40 = v30 - 2;
      if (v5 > 0.0)
      {
        v40 = v15;
      }

      if (v40 >= v32)
      {
        goto LABEL_85;
      }

      v41 = v26 + 48 * v40;
      v42 = v6 + v5 * *(v41 + 16);
      if (v18 <= v42)
      {
        v75 = *(v41 + 8);
        v74 = *(v41 + 12);
        v77 = *v41;
        v76 = *(v41 + 4);
        v78 = (v102 - v39) / (v42 - v39);
        v119 = v78;
        v131[0].i8[0] = v101;
        v125 = v37;
        v128 = v36;
        v122 = v38;
        v10 = v22;
        v79 = v23;
        ResolvedGradient.ColorSpace.convertIn(_:)(v132, v34, v35, v2, v3);
        v129.i8[0] = v101;
        v80 = v77;
        v81 = v76;
        v18 = v102;
        v19 = v103;
        v82 = v75;
        v5 = v97;
        v83 = v74;
        v6 = v104;
        ResolvedGradient.ColorSpace.convertIn(_:)(v131, v80, v81, v82, v83);
        v130[0] = v101;
        v129 = vaddq_f32(vmulq_n_f32(v132[0], 1.0 - v119), vmulq_n_f32(v131[0], v119));
        v12 = v130;
        v84 = ResolvedGradient.ColorSpace.convertOut(_:)(&v129);
        v23 = v79;
        v22 = v10;
        v38 = v122;
        LOBYTE(v10) = v109;
        v37 = v125;
        v36 = v128;
        v4 = v110;
        v26 = v108;
        v34 = v84;
        v35 = v85;
        v2 = v86;
        v3 = v87;
        v39 = v102;
        if (v31)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v39 = v18;
        if (v31)
        {
          goto LABEL_67;
        }
      }
    }

LABEL_47:
    v111 = v23;
    v113 = v22;
    v116 = *&v35;
    v118 = v34;
    v121 = v38;
    v124 = v37;
    v127 = v36;
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    MEMORY[0x193ABF170]();
    if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v4 = HIDWORD(v25);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v134[0] = v25;
    v134[1] = v24;
    v135 = v105;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    LOBYTE(v10) = specialized ObjectCache.subscript.getter(v134);
    v57 = v107;
    v58 = swift_beginAccess();
    MEMORY[0x193ABF170](v58);
    if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v57 = v107;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = *v57;
    swift_endAccess();
    if (v21)
    {
      v34 = v118;
      *&v35 = v116;
      if (v101 != 2)
      {
        v4 = v110;
        LOBYTE(v10) = v109;
        v26 = v108;
        v37 = v124;
        v36 = v127;
        v38 = v121;
        goto LABEL_67;
      }

      v132[0].i8[0] = 2;
      ResolvedGradient.ColorSpace.mix(_:_:by:)(*&v25, *(&v25 + 1), *&v24, *(&v24 + 1), v118, v116, v2, v3, 0.5);
      v60 = v59;
      v62 = v61;
      v114 = v63;
      v112 = v64;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v12 = &v133;
      MEMORY[0x193ABF170]();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v110;
      v95 = v95 & 0xFFFFFF00 | v94 | 2;
      LOBYTE(v10) = v109;
      appendColor #1 (_:) in static GradientLayer.clippedValues(gradient:function:)(v96, v60, v62, v114, v112, v110, v95, v109);
      v5 = v97;
      v6 = v104;
    }

    else
    {
      if (v12 >> 62)
      {
        v65 = __CocoaSet.count.getter();
      }

      else
      {
        v65 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v100;
      v66 = __OFSUB__(v65, 1);
      v67 = v65 - 1;
      if (v66)
      {
        goto LABEL_86;
      }

      addMissingInterpolations #1 (to:) in static GradientLayer.clippedValues(gradient:function:)(v67, v99);
      v68 = objc_allocWithZone(MEMORY[0x1E69793D0]);
      LODWORD(v70) = HIDWORD(v111);
      LODWORD(v69) = v111;
      LODWORD(v72) = HIDWORD(v113);
      LODWORD(v71) = v113;
      [v68 initWithControlPoints__:v69 :{v70, v71, v72}];
      v73 = swift_beginAccess();
      MEMORY[0x193ABF170](v73);
      if (*((*(v99 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v99 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v98 = *v100;
      swift_endAccess();
      v4 = v110;
      LOBYTE(v10) = v109;
      v6 = v104;
      v18 = v102;
    }

    v19 = v103;
    v26 = v108;
    v37 = v124;
    v36 = v127;
    v38 = v121;
    v34 = v118;
    *&v35 = v116;
LABEL_67:
    if (v30 == 1)
    {
      LODWORD(v18) = v35;
      *&v19 = v34;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      MEMORY[0x193ABF170]();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_91;
      }

      goto LABEL_74;
    }

    v31 = 0;
    v24 = LODWORD(v2) | (LODWORD(v3) << 32);
    v25 = LODWORD(v34) | (v35 << 32);
    v27 = v30 - 2;
    if (v5 > 0.0)
    {
      v27 = v15;
    }

    ++v15;
    --v30;
    v21 = v38;
    v22 = v37;
    v23 = v36;
    v29 = v39;
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  v93 = __CocoaSet.count.getter();
  v66 = __OFSUB__(v93, 1);
  v91 = v93 - 1;
  while (v66)
  {
    __break(1u);
LABEL_91:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_74:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v133;
    appendColor #1 (_:) in static GradientLayer.clippedValues(gradient:function:)(v96, *&v19, *&v18, v2, v3, v4, v94 | v101, v10);
    v15 = v99;
    v13 = v107;
    v88 = v98;
    if (v98 >> 62)
    {
LABEL_80:
      if (!__CocoaSet.count.getter())
      {
LABEL_81:
        swift_beginAccess();

        goto LABEL_82;
      }
    }

    else
    {
LABEL_75:
      if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }
    }

    swift_beginAccess();
    v89 = *v13;
    if (v89 >> 62)
    {
      goto LABEL_88;
    }

    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v66 = __OFSUB__(v90, 1);
    v91 = v90 - 1;
  }

  addMissingInterpolations #1 (to:) in static GradientLayer.clippedValues(gradient:function:)(v91, v15);
  swift_beginAccess();

LABEL_82:

  return v12;
}

uint64_t sub_18D23CA34()
{

  return swift_deallocObject();
}

void ResolvedGradient.ColorSpace.mix(_:_:by:)(float a1, float a2, float a3, float32_t a4, float a5, float a6, float a7, float32_t a8, float a9)
{
  v25.i8[0] = *v17;
  v22 = v25.i8[0];
  ResolvedGradient.ColorSpace.convertIn(_:)(&v26, a1, LODWORD(a2), a3, a4);
  ResolvedGradient.ColorSpace.convertIn(_:)(&v25, a5, LODWORD(a6), a7, a8);
  v24 = v22;
  v23 = vaddq_f32(vmulq_n_f32(v26, 1.0 - a9), vmulq_n_f32(v25, a9));
  ResolvedGradient.ColorSpace.convertOut(_:)(&v23);
}

float32_t ResolvedGradient.ColorSpace.convertOut(_:)(float32x2_t *a1)
{
  v2 = *a1;
  v3 = a1[1].f32[0];
  v4 = a1[1].f32[1];
  if (v4 == 0.0)
  {
    if (*v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = vmul_n_f32(v2, 1.0 / v4);
    v3 = v3 * (1.0 / v4);
    if (*v1)
    {
LABEL_3:
      if (*v1 != 1)
      {
        v5 = vmul_f32(v2, vmul_f32(v2, v2));
        v2.i32[0] = vadd_f32(vsub_f32(vmul_f32(v5, 0x40270644408274ABLL), vrev64_s32(vmul_f32(v5, 0x4053B18C3FA25C2DLL))), vmul_n_f32(0x3EAEC16A3E6C8362, v3 * (v3 * v3))).u32[0];
      }

      return v2.f32[0];
    }
  }

  if (v2.f32[0] <= 0.0)
  {
    v6 = -v2.f32[0];
  }

  else
  {
    v6 = v2.f32[0];
  }

  if (v6 <= 0.04045)
  {
    v7 = v6 * 0.077399;
  }

  else
  {
    v7 = 1.0;
    if (v6 != 1.0)
    {
      v8 = v3;
      v14 = v2;
      v7 = powf((v6 * 0.94787) + 0.052133, 2.4);
      v2 = v14;
      v3 = v8;
    }
  }

  if (v2.f32[0] <= 0.0)
  {
    v9 = -v7;
  }

  else
  {
    v9 = v7;
  }

  if (v2.f32[1] <= 0.0)
  {
    v10 = -v2.f32[1];
  }

  else
  {
    v10 = v2.f32[1];
  }

  if (v10 > 0.04045 && v10 != 1.0)
  {
    v11 = v3;
    v15 = v9;
    powf((v10 * 0.94787) + 0.052133, 2.4);
    v9 = v15;
    v3 = v11;
  }

  if (v3 <= 0.0)
  {
    v12 = -v3;
  }

  else
  {
    v12 = v3;
  }

  if (v12 > 0.04045 && v12 != 1.0)
  {
    v16 = v9;
    powf((v12 * 0.94787) + 0.052133, 2.4);
    v9 = v16;
  }

  v2.f32[0] = v9;
  return v2.f32[0];
}

uint64_t appendColor #1 (_:) in static GradientLayer.clippedValues(gradient:function:)(uint64_t a1, float a2, float a3, float a4, float a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = *(&a7 + 1);
  if (a8)
  {
    v9 = NAN;
  }

  v12 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v13 = a4;
  v14 = a5;
  v15 = v9;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(&v12);
  v10 = swift_beginAccess();
  MEMORY[0x193ABF170](v10);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x193AC03C0](i, a1);
        type metadata accessor for CGColorRef(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColorRef(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t _CGColorSpaceGetPerceptual()
{
  if (_CGColorSpaceGetPerceptual_once != -1)
  {
    _CGColorSpaceGetPerceptual_cold_1();
  }

  return _CGColorSpaceGetPerceptual_space;
}

int16x8_t DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)@<Q0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v6 = *a1 & 0xFFFFFFFFFFFFFFF8;
  v12 = *a2;
  v5 = v12;
  v7 = (*(v6 + 96))(&v12);
  swift_unknownObjectRetain();
  v8 = CoreViewLayer(v4 & 3, v7);
  v9 = AGMakeUniqueID();
  *a3 = v4;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  v10 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a3 + 32) = v10;
  *(a3 + 48) = v10;
  *(a3 + 64) = v5;
  *(a3 + 65) = 0;
  result = vdupq_n_s16(2 * ((v5 - 15) < 2));
  *(a3 + 72) = v9;
  *(a3 + 80) = -1;
  *(a3 + 88) = result;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0x7FF0000000000000;
  return result;
}

id static CALayerPlatformViewDefinition.makeView(kind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v3 = v2;
  if (v1 != 14)
  {
    v9 = v2;
    [v9 setCoordinatedAnimationDelegate];
    [v9 setAnchorPoint_];
    if (v1 <= 0xD)
    {
      v10 = 1;
      if (((1 << v1) & 0x3801) != 0)
      {
        goto LABEL_6;
      }

      if (((1 << v1) & 0xE) != 0)
      {
        v11 = &selRef_setAllowsEdgeAntialiasing_;
        goto LABEL_9;
      }
    }

LABEL_10:

    return v3;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E6979398]);
  v5 = v3;
  v6 = [v4 init];
  [v5 setMask_];

  result = [v5 mask];
  if (result)
  {
    v8 = result;
    [result setCoordinatedAnimationDelegate];
    [v8 setAnchorPoint_];
    [v8 setAllowsGroupOpacity_];
    [v8 setAllowsGroupBlending_];

    [v5 setCoordinatedAnimationDelegate];
    [v5 setAnchorPoint_];
LABEL_6:
    [v3 setAllowsGroupOpacity_];
    v10 = 0;
    v11 = &selRef_setAllowsGroupBlending_;
LABEL_9:
    [v3 *v11];
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AnyColorBox.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for ColorBox();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v9 = *(a1 - 8);
    (*(v9 + 16))(a2, v4 + *(*v4 + 192), a1);
    v5 = v9;
    v6 = 0;
  }

  else
  {
    v5 = *(a1 - 8);
    v6 = 1;
  }

  v7 = *(v5 + 56);

  return v7(a2, v6, 1, a1);
}

uint64_t EventBindingManager.__deallocating_deinit()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  outlined destroy of weak GestureGraphDelegate?(v0 + 16);
  outlined destroy of weak GestureGraphDelegate?(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ColorProvider.staticColor.getter in conformance ResolvedColorProvider()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  return specialized ObjectCache.subscript.getter(&v2);
}

uint64_t partial apply for closure #1 in ShapeStyledDisplayList.updateValue()()
{
  v1 = *(v0 + 32);
  result = AGGraphAnyInputsChanged();
  *v1 = result;
  return result;
}

BOOL DisplayList.Item.canInheritShadowOrFilters.getter()
{
  v1 = *(v0 + 64) >> 30;
  if (v1 > 1)
  {
    if (v1 != 3)
    {
LABEL_49:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18D23DAB8);
    }

    return 1;
  }

  v2 = *(v0 + 40);
  if (!v1)
  {
    return (v2 >> 60) - 10 < 0xFFFFFFFD;
  }

  v4 = *(v0 + 48);
  switch(BYTE4(v4))
  {
    case 1:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 1);
      v5 = v2;
      v6 = v4;
      v7 = 1;
      goto LABEL_39;
    case 2:
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      v10 = 2;
      goto LABEL_27;
    case 3:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 3);
      v15 = v2;
      v16 = v4;
      v17 = 3;
      goto LABEL_37;
    case 4:
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      v10 = 4;
      goto LABEL_27;
    case 5:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 5);
      outlined consume of DisplayList.Effect(v2, v4, 5);
      return (v2 == 0) & ~v4;
    case 6:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 6);
      v15 = v2;
      v16 = v4;
      v17 = 6;
      goto LABEL_37;
    case 7:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 7);
      v15 = v2;
      v16 = v4;
      v17 = 7;
      goto LABEL_37;
    case 8:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 8);
      v15 = v2;
      v16 = v4;
      v17 = 8;
      goto LABEL_37;
    case 9:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 9);
      a = *(v2 + 16);
      b = *(v2 + 24);
      c = *(v2 + 32);
      if (*(v2 + 88) <= 1u)
      {
        if (!*(v2 + 88))
        {
          d = *(v2 + 40);
          goto LABEL_32;
        }

LABEL_36:
        v15 = v2;
        v16 = v4;
        v17 = 9;
        goto LABEL_37;
      }

      if (*(v2 + 88) != 2)
      {
        goto LABEL_36;
      }

      CGAffineTransformMakeTranslation(__dst, *(v2 + 24), *(v2 + 32));
      CGAffineTransformRotate(&v19, __dst, a);
      __dst[0] = v19;
      CGAffineTransformTranslate(&v19, __dst, -b, -c);
      a = v19.a;
      b = v19.b;
      c = v19.c;
      d = v19.d;
LABEL_32:
      outlined consume of DisplayList.Effect(v2, v4, 9);
      if (b == 0.0 && c == 0.0)
      {
        if (a != d)
        {
          return 0;
        }
      }

      else
      {
        if (a != 0.0)
        {
          return 0;
        }

        if (d != 0.0 || a != d)
        {
          return 0;
        }
      }

      return b == c;
    case 0xA:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 10);
      memmove(__dst, (v2 + 16), 0x7CuLL);
      if (_s7SwiftUI14GraphicsFilterOWOg(__dst) != 4)
      {
        v5 = v2;
        v6 = v4;
        v7 = 10;
LABEL_39:
        outlined consume of DisplayList.Effect(v5, v6, v7);
        return 1;
      }

      _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
      v15 = v2;
      v16 = v4;
      v17 = 10;
LABEL_37:
      outlined consume of DisplayList.Effect(v15, v16, v17);
      return 0;
    case 0xB:
    case 0xD:
      goto LABEL_49;
    case 0xC:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 12);
      v5 = v2;
      v6 = v4;
      v7 = 12;
      goto LABEL_39;
    case 0xE:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 14);
      v5 = v2;
      v6 = v4;
      v7 = 14;
      goto LABEL_39;
    case 0xF:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 15);
      v5 = v2;
      v6 = v4;
      v7 = 15;
      goto LABEL_39;
    case 0x10:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 16);
      v5 = v2;
      v6 = v4;
      v7 = 16;
      goto LABEL_39;
    case 0x11:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 17);
      v5 = v2;
      v6 = v4;
      v7 = 17;
      goto LABEL_39;
    case 0x12:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 18);
      v5 = v2;
      v6 = v4;
      v7 = 18;
      goto LABEL_39;
    case 0x13:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 19);
      v5 = v2;
      v6 = v4;
      v7 = 19;
      goto LABEL_39;
    case 0x14:
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      v10 = 20;
LABEL_27:
      outlined copy of DisplayList.Effect(v8, v9, v10);
      return 1;
    default:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 0);
      v5 = v2;
      v6 = v4;
      v7 = 0;
      goto LABEL_39;
  }
}

uint64_t specialized GraphHost.continueTransaction<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v24 = *MEMORY[0x1E69E9840];
  v20 = a1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = *(v1 + 152);
    v5 = swift_retain_n();
    if (v4)
    {
      v6 = v2;
LABEL_12:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v21 = v6;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v2 = *(v6 + 160);
        v9 = v2[2];
        if (v9)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 160) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            *(v6 + 160) = v2;
          }

          if (v9 > v2[2])
          {
            __break(1u);
          }

          v11 = &v2[5 * v9];
          v12 = v11[2];
          v13 = v11[3];
          __swift_mutable_project_boxed_opaque_existential_1((v11 - 1), v12);
          v14 = (*(v13 + 16))(&v20, &type metadata for InvalidatingGraphMutation, &protocol witness table for InvalidatingGraphMutation, v12, v13);
          *(v6 + 160) = v2;
          swift_endAccess();
          if (v14)
          {
          }
        }

        swift_beginAccess();
        v15 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 160) = v2;
        if (v15)
        {
LABEL_24:
          v17 = v2[2];
          v16 = v2[3];
          if (v17 >= v16 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
          }

          v22 = &type metadata for InvalidatingGraphMutation;
          v23 = &protocol witness table for InvalidatingGraphMutation;
          *&v21 = a1;
          v2[2] = v17 + 1;
          outlined init with take of AnyTrackedValue(&v21, &v2[5 * v17 + 4]);
          *(v6 + 160) = v2;
          swift_endAccess();
        }
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
      *(v6 + 160) = v2;
      goto LABEL_24;
    }

    v7 = v2;
    while (1)
    {
      v6 = (*(*v7 + 200))(v5);

      if (!v6)
      {
        break;
      }

      v8 = *(v6 + 152);

      v7 = v6;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v21) = 17;
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = a1;

    static Update.enqueueAction(reason:_:)(&v21, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v19);
  }

  return result;
}

{
  v2 = v1;
  v24 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = v1[152];
    v5 = swift_retain_n();
    if (v4)
    {
      v6 = v1;
LABEL_11:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if ((*(static CustomEventTrace.enabledCategories + 116) & 1) != 0 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v20 = v6;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v2 = *(v6 + 160);
        v8 = v2[2];
        if (v8)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 160) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            *(v6 + 160) = v2;
          }

          if (v8 > v2[2])
          {
            __break(1u);
          }

          v10 = &v2[5 * v8];
          v11 = v10[2];
          v12 = v10[3];
          __swift_mutable_project_boxed_opaque_existential_1((v10 - 1), v11);
          v13 = (*(v12 + 16))(a1, &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation, &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation, v11, v12);
          *(v6 + 160) = v2;
          swift_endAccess();
          if (v13)
          {
          }
        }

        outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(a1, v19);
        swift_beginAccess();
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 160) = v2;
        if (v14)
        {
LABEL_23:
          v16 = v2[2];
          v15 = v2[3];
          if (v16 >= v15 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
            *(v6 + 160) = v2;
          }

          v21 = &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation;
          v22 = &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation;
          *&v20 = swift_allocObject();
          outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(v19, v20 + 16);
          v2[2] = v16 + 1;
          outlined init with take of AnyTrackedValue(&v20, &v2[5 * v16 + 4]);
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation(v19);
          *(v6 + 160) = v2;
          swift_endAccess();
        }
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
      *(v6 + 160) = v2;
      goto LABEL_23;
    }

    while (1)
    {
      v6 = (*(*v1 + 200))(v5);

      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 152);

      v1 = v6;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v23[0] = 17;
    outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(a1, &v20);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    outlined init with take of LazyLayoutCacheItem.AllItemsPhaseMutation(&v20, v18 + 24);

    static Update.enqueueAction(reason:_:)(v23, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v18);
  }

  return result;
}

{
  v2 = v1;
  v24 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = v1[152];
    v5 = swift_retain_n();
    if (v4)
    {
      v6 = v1;
LABEL_11:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if ((*(static CustomEventTrace.enabledCategories + 116) & 1) != 0 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v20 = v6;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v2 = *(v6 + 160);
        v8 = v2[2];
        if (v8)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 160) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            *(v6 + 160) = v2;
          }

          if (v8 > v2[2])
          {
            __break(1u);
          }

          v10 = &v2[5 * v8];
          v11 = v10[2];
          v12 = v10[3];
          __swift_mutable_project_boxed_opaque_existential_1((v10 - 1), v11);
          v13 = (*(v12 + 16))(a1, &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation, &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation, v11, v12);
          *(v6 + 160) = v2;
          swift_endAccess();
          if (v13)
          {
          }
        }

        outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(a1, v19);
        swift_beginAccess();
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 160) = v2;
        if (v14)
        {
LABEL_23:
          v16 = v2[2];
          v15 = v2[3];
          if (v16 >= v15 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
            *(v6 + 160) = v2;
          }

          v21 = &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation;
          v22 = &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation;
          *&v20 = swift_allocObject();
          outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(v19, v20 + 16);
          v2[2] = v16 + 1;
          outlined init with take of AnyTrackedValue(&v20, &v2[5 * v16 + 4]);
          outlined destroy of LazyLayoutCacheItem.SingleItemPhaseMutation(v19);
          *(v6 + 160) = v2;
          swift_endAccess();
        }
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
      *(v6 + 160) = v2;
      goto LABEL_23;
    }

    while (1)
    {
      v6 = (*(*v1 + 200))(v5);

      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 152);

      v1 = v6;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v23[0] = 17;
    outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(a1, &v20);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    outlined init with take of LazyLayoutCacheItem.SingleItemPhaseMutation(&v20, v18 + 24);

    static Update.enqueueAction(reason:_:)(v23, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v18);
  }

  return result;
}

{
  v2 = v1;
  v24 = *MEMORY[0x1E69E9840];
  v20 = a1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = *(v1 + 152);
    v5 = swift_retain_n();
    if (v4)
    {
      v6 = v2;
LABEL_12:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if ((*(static CustomEventTrace.enabledCategories + 116) & 1) != 0 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v21 = v6;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v2 = *(v6 + 160);
        v9 = v2[2];
        if (v9)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 160) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            *(v6 + 160) = v2;
          }

          if (v9 > v2[2])
          {
            __break(1u);
          }

          v11 = &v2[5 * v9];
          v12 = v11[2];
          v13 = v11[3];
          __swift_mutable_project_boxed_opaque_existential_1((v11 - 1), v12);
          v14 = (*(v13 + 16))(&v20, &type metadata for RepeatMutation, &protocol witness table for RepeatMutation, v12, v13);
          *(v6 + 160) = v2;
          swift_endAccess();
          if (v14)
          {
          }
        }

        swift_beginAccess();
        v15 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 160) = v2;
        if (v15)
        {
LABEL_24:
          v17 = v2[2];
          v16 = v2[3];
          if (v17 >= v16 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
          }

          v22 = &type metadata for RepeatMutation;
          v23 = &protocol witness table for RepeatMutation;
          *&v21 = a1;
          v2[2] = v17 + 1;
          outlined init with take of AnyTrackedValue(&v21, &v2[5 * v17 + 4]);
          *(v6 + 160) = v2;
          swift_endAccess();
        }
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
      *(v6 + 160) = v2;
      goto LABEL_24;
    }

    v7 = v2;
    while (1)
    {
      v6 = (*(*v7 + 200))(v5);

      if (!v6)
      {
        break;
      }

      v8 = *(v6 + 152);

      v7 = v6;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v21) = 17;
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = a1;

    static Update.enqueueAction(reason:_:)(&v21, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v19);
  }

  return result;
}

uint64_t sub_18D23E018()
{

  return swift_deallocObject();
}

void type metadata accessor for TappableEventType?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of ViewList?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for TappableEventType?(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI8ViewList_pSgWOhTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ViewList?(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for _NativeDictionary<UInt32, Int>()
{
  if (!lazy cache variable for type metadata for _NativeDictionary<UInt32, Int>)
  {
    v0 = type metadata accessor for _NativeDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NativeDictionary<UInt32, Int>);
    }
  }
}

uint64_t Color.init(_:red:green:blue:opacity:)(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      v14 = a5;
      type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<Color.DisplayP3>, lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3);
      result = swift_allocObject();
      *(result + 16) = a2;
      *(result + 24) = a3;
      *(result + 32) = a4;
      *(result + 40) = v14;
      return result;
    }

    v7 = a2;
    v8 = a3;
    v9 = a4;
  }

  else
  {
    v10 = a2;
    if (v10 <= 0.0)
    {
      v11 = -v10;
    }

    else
    {
      v11 = a2;
    }

    if (v11 <= 0.04045)
    {
      v12 = v11 * 0.077399;
    }

    else
    {
      v12 = 1.0;
      if (v11 != 1.0)
      {
        v13 = a5;
        v12 = powf((v11 * 0.94787) + 0.052133, 2.4);
        a5 = v13;
      }
    }

    if (v10 <= 0.0)
    {
      v7 = -v12;
    }

    else
    {
      v7 = v12;
    }

    v17 = a3;
    if (v17 <= 0.0)
    {
      v18 = -v17;
    }

    else
    {
      v18 = v17;
    }

    if (v18 <= 0.04045)
    {
      v19 = v18 * 0.077399;
    }

    else
    {
      v19 = 1.0;
      if (v18 != 1.0)
      {
        v20 = a5;
        v19 = powf((v18 * 0.94787) + 0.052133, 2.4);
        a5 = v20;
      }
    }

    if (v17 <= 0.0)
    {
      v8 = -v19;
    }

    else
    {
      v8 = v19;
    }

    v21 = a4;
    if (v21 <= 0.0)
    {
      v22 = -v21;
    }

    else
    {
      v22 = v21;
    }

    if (v22 <= 0.04045)
    {
      v23 = v22 * 0.077399;
    }

    else
    {
      v23 = 1.0;
      if (v22 != 1.0)
      {
        v24 = a5;
        v23 = powf((v22 * 0.94787) + 0.052133, 2.4);
        a5 = v24;
      }
    }

    if (v21 <= 0.0)
    {
      v9 = -v23;
    }

    else
    {
      v9 = v23;
    }
  }

  v25 = a5;
  type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 20) = v8;
  *(result + 24) = v9;
  *(result + 28) = v25;
  *(result + 32) = 2143289344;
  return result;
}

void type metadata accessor for ColorBox<Color.DisplayP3>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ColorBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double CGSize.apply(_:)(unsigned __int8 a1, double a2, double a3)
{
  if (a1 > 3u)
  {
    return a3;
  }

  return result;
}