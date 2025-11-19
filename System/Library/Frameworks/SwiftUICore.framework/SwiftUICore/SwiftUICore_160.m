uint64_t _s7SwiftUI15ModifiedContentVA2A12ViewModifierRzAaDR_rlE05_makeE08modifier6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVAjA01_L0V_APtctFZAA016AutomaticPaddingeF033_47C1BD8C61550BB60F4F3D12F752D53DLLV0P6LayoutV07WrappedZ0V_AA015_SafeAreaInsetsF0VTt3B503_s7a4UI28ope13Modifier33_47qrstuvwxy7DLLV05_g30E08modifier6inputs4bodyAA01_E7k6VAA11_lm13VyADG_AA01_E6N29VAjA01_U0V_AOtctFZAjQ_AOtcfU_ArpJIegnnr_09AttributeL09AttributeVyACyAYA_GGTf1nnnc_n@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v55 = *(a1 + 32);
  v56 = v6;
  v57 = *(a1 + 64);
  v58 = *(a1 + 80);
  v7 = *(a1 + 16);
  v53 = *a1;
  v54 = v7;
  v21 = v55;
  LODWORD(v55) = 0;
  v59 = v53;
  v60 = v7;
  v63 = v58;
  *&v61[16] = v6;
  v62 = v57;
  *v61 = v55;
  outlined init with copy of _ViewInputs(a1, &v64);
  outlined init with copy of _ViewInputs(&v59, &v64);
  v8 = AGMakeUniqueID();
  v51 = v59;
  v52 = v60;
  v9 = *v61;
  v49 = *&v61[4];
  v50 = *&v61[20];
  v23 = v62;
  v10 = v63;
  v24 = DWORD2(v62);
  v11 = *&v61[28];
  v66 = *v61;
  v67 = *&v61[16];
  v68 = v62;
  v69 = v63;
  v64 = v59;
  v65 = v60;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v59, &v44);
  v12 = CachedEnvironment.animatedPosition(for:)(&v64);
  v66 = *v61;
  v67 = *&v61[16];
  v68 = v62;
  v69 = v63;
  v64 = v59;
  v65 = v60;
  v13 = CachedEnvironment.animatedSize(for:)(&v64);
  swift_endAccess();
  *&v64 = v8;
  *(&v64 + 1) = __PAIR64__(v12, v11);
  LODWORD(v65) = v13;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  v15 = v9 | 4;
  *&v64 = v8;
  *(&v64 + 1) = __PAIR64__(HIDWORD(v62), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets();
  v16 = Attribute.init<A>(body:value:flags:update:)();
  v44 = v51;
  v45 = v52;
  *&v46[4] = v49;
  *&v46[20] = v50;
  *v46 = v9 | 4;
  *&v46[28] = v14;
  *&v47 = v23;
  *(&v47 + 1) = __PAIR64__(v16, v24);
  v48 = v10;
  outlined init with copy of _ViewInputs(&v44, &v64);
  v17 = AGGraphCreateOffsetAttribute2();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v40 = *v46;
  v41 = *&v46[16];
  v42 = v47;
  v43 = v48;
  v38 = v44;
  v39 = v45;
  v18 = *v46;
  LODWORD(v40) = 0;
  v69 = v48;
  v67 = *&v46[16];
  v68 = v47;
  v64 = v44;
  v65 = v45;
  v66 = v40;

  outlined init with copy of _ViewInputs(&v44, v29);
  outlined init with copy of _ViewInputs(&v64, v29);
  specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v17, &v64, a2, a3);
  outlined destroy of _ViewInputs(&v64);
  LODWORD(v40) = v18;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v38);
    AGSubgraphEndTreeElement();
  }

  v27[2] = v40;
  v27[3] = v41;
  v27[4] = v42;
  v28 = v43;
  v27[0] = v38;
  v27[1] = v39;
  outlined destroy of _ViewInputs(v27);
  outlined destroy of _ViewInputs(&v44);
  v32 = v50;
  v29[0] = v51;
  v29[1] = v52;
  v31 = v49;
  v30 = v15;
  v33 = v14;
  v34 = v23;
  v35 = v24;
  v36 = v16;
  v37 = v10;
  outlined destroy of _ViewInputs(v29);
  outlined destroy of _ViewInputs(&v59);
  LODWORD(v55) = v21;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v53);
    AGSubgraphEndTreeElement();
  }

  v25[2] = v55;
  v25[3] = v56;
  v25[4] = v57;
  v26 = v58;
  v25[0] = v53;
  v25[1] = v54;
  outlined destroy of _ViewInputs(v25);
}

uint64_t static ModifiedContent<>._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *a1;
  v14 = v22;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeView(view:inputs:), a6, &v21);
  v15 = v21;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 40) = a8;
  *(v16 + 48) = v14;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v20 = v15;
  (*(a8 + 32))(&v20, a2, partial apply for closure #2 in static ModifiedContent<>._makeViewList(modifier:inputs:body:), v16, a6, a8);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v15, a6, a8);
}

uint64_t closure #2 in static ModifiedContent<>._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeViewList(modifier:inputs:body:), a6, v16);
  v13 = v16[0];
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v15 = v13;
  (*(a8 + 32))(&v15, a2, a4, a5, a6, a8);
  return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v13, a6, a8);
}

uint64_t static ModifiedContent<>._viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1[3];
  v11[2] = a1[2];
  v11[3] = v7;
  v11[4] = a1[4];
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  v10[6] = a2;
  v10[7] = a3;
  return (*(a7 + 40))(v11, partial apply for closure #1 in static ModifiedContent<>._viewListCount(inputs:body:), v10, a5, a7);
}

uint64_t ModifiedContent.customViewDebugMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Mirror();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ContentTransitionGroup(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentTransitionEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SaturationEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectPlatformItemModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEntryFlexInteractionModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance MaterialEffect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 20) = v16;
  *(v17 + 24) = v9;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  a9(v9, a2, a8, v17);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContainerCornerOffsetLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ColorMultiplyEffect._Resolved(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _TransactionModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SpacingLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SafeAreaInsetsModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SystemColorSchemeModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SystemColorSchemeModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = off_1F00BCAD8();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _HueRotationEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t specialized ModifiedContent<>.animatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *(a2 + 24);
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v22 - v9;
  v11 = *(a2 + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  (*(v16 + 16))(&v22 - v14, a1, v12, v13);
  (*(a3 + 32))(v15, v11, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = v23;
  v19 = swift_getAssociatedConformanceWitness();
  v26 = v12;
  v27 = AssociatedTypeWitness;
  v28 = AssociatedConformanceWitness;
  v29 = v19;
  v20 = type metadata accessor for AnimatablePair();
  (*(v24 + 16))(v10, a1 + *(v20 + 52), AssociatedTypeWitness);
  return (*(a4 + 32))(v10, v18, a4);
}

void specialized ModifiedContent<>.body.getter()
{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  specialized View.bodyError()();
}

uint64_t partial apply for closure #1 in static ModifiedContent<>._viewListCount(inputs:body:)(_OWORD *a1)
{
  v2 = v1[4];
  v3 = v1[6];
  v4 = v1[7];
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return (*(v2 + 40))(v8, v3, v4);
}

unint64_t lazy protocol witness table accessor for type ChildEnvironment<RedactionReasons> and conformance ChildEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type ChildEnvironment<RedactionReasons> and conformance ChildEnvironment<A>;
  if (!lazy protocol witness table cache variable for type ChildEnvironment<RedactionReasons> and conformance ChildEnvironment<A>)
  {
    type metadata accessor for ChildEnvironment<RedactionReasons>(255, &lazy cache variable for type metadata for ChildEnvironment<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for ChildEnvironment);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChildEnvironment<RedactionReasons> and conformance ChildEnvironment<A>);
  }

  return result;
}

void type metadata accessor for ChildEnvironment<RedactionReasons>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment()
{
  if (!lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment)
  {
    v0 = type metadata accessor for _ForegroundStyleModifier2.ForegroundStyleEnvironment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment);
    }
  }
}

double static DSLDynamicPropertyCache.fields(of:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)(a1, &v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  return result;
}

uint64_t DSLBodyAccessor.makeBody(container:inputs:fields:)(_DWORD *a1, void *a2, int *a3, __int128 *a4, uint64_t *a5, uint64_t a6)
{
  v34 = a1;
  v35 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Transformer();
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30[-v14];
  v31 = *a3;
  v17 = *a5;
  v16 = a5[1];
  v18 = *(a5 + 16);
  LODWORD(a5) = *(a5 + 5);
  v19 = a4[1];
  v43 = *a4;
  v44 = v19;
  v45 = a4[2];
  (*(v10 + 16))(v12, v32, a6);
  (*(v10 + 32))(v15, v12, a6);
  v36 = v31;
  v38[0] = v17;
  v38[1] = v16;
  v39 = v18;
  v40 = a5;
  outlined copy of DynamicPropertyCache.Fields.Layout();
  WitnessTable = swift_getWitnessTable();
  BodyAccessor.makeBody(container:inputs:fields:)(&v37, v41, &v36, &v43, v38, v13, WitnessTable);
  outlined consume of DynamicPropertyCache.Fields.Layout();
  result = (*(v33 + 8))(v15, v13);
  v22 = v37;
  v23 = v41[0];
  v24 = v41[1];
  v25 = v42;
  v26 = v44;
  *a4 = v43;
  a4[1] = v26;
  a4[2] = v45;
  *v34 = v22;
  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = v23;
  }

  if (v25)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  v29 = v35;
  *v35 = v27;
  v29[1] = v28;
  *(v29 + 16) = v25;
  return result;
}

uint64_t DSLBodyAccessor.setBody(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v67 = a1;
  v93 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v76 = v5;
  v77 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v62 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v62 - v10;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Transformer();
  v63 = *(v64 - 8);
  v15 = MEMORY[0x1EEE9AC00](v64);
  v17 = &v62 - v16;
  (*(v11 + 16))(v14, v3, a3, v15);
  v18 = *(v11 + 32);
  v62 = v17;
  v18(v17, v14, a3);
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v19 = static Signpost.bodyInvoke;
  v20 = word_1ED539040;
  v21 = HIBYTE(word_1ED539040);
  v22 = byte_1ED539042;
  v23 = static os_signpost_type_t.begin.getter();
  v88 = v19;
  v89 = v20;
  v90 = v21;
  v91 = v22;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v80) = v23;
    swift_getAssociatedTypeWitness();
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18DDAB4C0;
    v25 = AGTypeID.description.getter();
    v27 = v26;
    v28 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v29 = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 64) = v29;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v30 = specialized static Tracing.libraryName(defining:)();
    *(v24 + 96) = v28;
    *(v24 + 104) = v29;
    *(v24 + 72) = v30;
    *(v24 + 80) = v31;
    if (one-time initialization token for _signpostLog == -1)
    {
      v32 = v80;
      if (v21)
      {
LABEL_6:
        v87 = v32;
        v85 = _signpostLog;
        v86 = &dword_18D018000;
        v88 = v19;
        v89 = v20;
        v82 = "%{public}@.body [in %{public}@]";
        v83 = 31;
        v84 = 2;
        v81 = v24;
        v33 = v70;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v77 + 8))(v33, v76);
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v32 = v80;
      if (v21)
      {
        goto LABEL_6;
      }
    }

    if (v19 == 20)
    {
      v34 = 3;
    }

    else
    {
      v34 = 4;
    }

    v35 = bswap32(v19) | (4 * WORD1(v19));
    v36 = v32;
    v37 = v77 + 16;
    v71 = *(v77 + 16);
    v38 = v71(v78, v70, v76);
    v39 = 0;
    LOBYTE(v82) = 1;
    v80 = v34;
    v77 = v37;
    v74 = 16 * v34;
    v75 = (v37 - 8);
    v73 = v24 + 32;
    v72 = *(&v19 + 1);
    do
    {
      v79 = &v62;
      MEMORY[0x1EEE9AC00](v38);
      v41 = &v62 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = v41 + 8;
      v43 = v80;
      v44 = v41 + 8;
      do
      {
        *(v44 - 1) = 0;
        *v44 = 0;
        v44 += 16;
        --v43;
      }

      while (v43);
      v45 = v73 + 40 * v39;
      v46 = v80;
      while (1)
      {
        v47 = *(v24 + 16);
        if (v39 == v47)
        {
          break;
        }

        if (v39 >= v47)
        {
          __break(1u);
        }

        ++v39;
        outlined init with copy of AnyTrackedValue(v45, &v88);
        v48 = v92;
        __swift_project_boxed_opaque_existential_1(&v88, v92);
        *(v42 - 1) = CVarArg.kdebugValue(_:)(v35 | v36, v48);
        *v42 = v49 & 1;
        v42 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v88);
        v45 += 40;
        if (!--v46)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v82) = 0;
LABEL_20:
      v50 = v72;
      if (v72 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v41[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v41[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v41[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v50 != 20 && v41[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v51 = v76;
      v52 = *v75;
      v53 = v78;
      (*v75)(v78, v76);
      v54 = __swift_project_value_buffer(v51, static OSSignpostID.continuation);
      v38 = v71(v53, v54, v51);
    }

    while ((v82 & 1) != 0);
    v55 = v76;
    v52(v78, v76);
    v52(v70, v55);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v56 = v65;
  v67();
  AGGraphSetUpdate();
  v57 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v57);
  v58 = v64;
  *(&v62 - 2) = v64;
  *(&v62 - 1) = swift_getWitnessTable();
  v59 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v56, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v62 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v60);
  (*(v68 + 8))(v56, v59);
  return (*(v63 + 8))(v62, v58);
}

uint64_t DSLDynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v15 = *v3;
  v16 = v3[1];
  v14 = v5;
  v11[0] = v6;
  v11[1] = v7;
  v12 = v8;
  v13 = v9;
  outlined copy of DynamicPropertyCache.Fields.Layout();
  _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v14, v11, a3);

  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

unsigned __int8 *EnvironmentValues.effectiveAllowedDynamicRange(hdrContent:explicitRange:)@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v6 = *v3;
    v5 = v4;
    return EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v5, a3);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t Image.DynamicRange.Storage.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int Image.DynamicRange.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t Image.allowedDynamicRange(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for ImageProviderBox<Image.DynamicRangeProvider>();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  return v4;
}

uint64_t protocol witness for ImageProvider.resolve(in:) in conformance Image.DynamicRangeProvider(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v2 + 8);
  outlined init with copy of ImageResolutionContext(a1, v6);
  if (v8 != 3)
  {
    v6[*(v4 + 36)] = v8;
  }

  (*(*v7 + 80))(v6);
  return outlined destroy of ImageResolutionContext(v6);
}

uint64_t protocol witness for ImageProvider.resolveNamedImage(in:) in conformance Image.DynamicRangeProvider(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v2 + 8);
  outlined init with copy of ImageResolutionContext(a1, v6);
  if (v8 != 3)
  {
    v6[*(v4 + 36)] = v8;
  }

  (*(*v7 + 88))(v6);
  return outlined destroy of ImageResolutionContext(v6);
}

void *EnvironmentValues.allowedDynamicRange.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 3;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.allowedDynamicRange : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 3;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.allowedDynamicRange : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV019AllowedDynamicRangeF033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV019AllowedDynamicRangeK033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Ttg5(v3, *a2);
  }
}

uint64_t EnvironmentValues.allowedDynamicRange.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV019AllowedDynamicRangeF033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV019AllowedDynamicRangeK033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.allowedDynamicRange.modify(char **a1))(uint64_t *a1)
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 3;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.allowedDynamicRange.modify;
}

void EnvironmentValues.allowedDynamicRange.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV019AllowedDynamicRangeF033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV019AllowedDynamicRangeK033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void type metadata accessor for ImageProviderBox<Image.DynamicRangeProvider>()
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.DynamicRangeProvider>)
  {
    lazy protocol witness table accessor for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider();
    v0 = type metadata accessor for ImageProviderBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ImageProviderBox<Image.DynamicRangeProvider>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider()
{
  result = lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider;
  if (!lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider;
  if (!lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider);
  }

  return result;
}

uint64_t EnvironmentValues.maxAllowedDynamicRange.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v7 = *a1;
  v3 = *v1;
  v4 = v1[1];
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    return (*(v5 + 16))(&type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, v1, &v7, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey);
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV022MaxAllowedDynamicRangeF0VG_Tt2B5(v1, v2);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV022MaxAllowedDynamicRangeK0VG_Ttg5(v3, *v1);
  }
}

uint64_t (*EnvironmentValues.maxAllowedDynamicRange.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAC022MaxAllowedDynamicRangeG0V_Tt0B5(*v1, *(v1 + 8), (a1 + 24));
  return EnvironmentValues.maxAllowedDynamicRange.modify;
}

uint64_t EnvironmentValues.maxAllowedDynamicRange.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  *(a1 + 25) = v3;
  v4 = a1 + 25;
  v5 = *(a1 + 16);
  v6 = *v5;
  v7 = v5[1];
  if (a2)
  {
    v8 = EnvironmentValues.bridgedEnvironmentResolver.getter();
    v10 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_6;
    }

    return (*(v9 + 16))(&type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, v10, v4, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey);
  }

  v11 = EnvironmentValues.bridgedEnvironmentResolver.getter();
  v10 = *(a1 + 16);
  if (v11)
  {
    return (*(v9 + 16))(&type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, v10, v4, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey);
  }

LABEL_6:
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV022MaxAllowedDynamicRangeF0VG_Tt2B5(v10, v3);

  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV022MaxAllowedDynamicRangeK0VG_Ttg5(v6, **(a1 + 16));
  }
}

unint64_t Image.DynamicRange.init(protobufValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Image.DynamicRange.Storage and conformance Image.DynamicRange.Storage()
{
  result = lazy protocol witness table cache variable for type Image.DynamicRange.Storage and conformance Image.DynamicRange.Storage;
  if (!lazy protocol witness table cache variable for type Image.DynamicRange.Storage and conformance Image.DynamicRange.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.DynamicRange.Storage and conformance Image.DynamicRange.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Image.DynamicRange and conformance Image.DynamicRange()
{
  result = lazy protocol witness table cache variable for type Image.DynamicRange and conformance Image.DynamicRange;
  if (!lazy protocol witness table cache variable for type Image.DynamicRange and conformance Image.DynamicRange)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.DynamicRange and conformance Image.DynamicRange);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Image.DynamicRangeProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static Image.DynamicRangeProvider.== infix(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *(a2 + 8);
  if (*a1 != *a2 && ((*(**a1 + 96))() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v3 == 3 || v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t SymbolVariants.Shape.path(in:cornerRadius:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (!*v6)
  {
    if (!CGRectIsNull(*&a3))
    {
      v26.origin.x = a3;
      v26.size.width = a5;
      v26.origin.y = a4;
      v26.size.height = a6;
      IsInfinite = CGRectIsInfinite(v26);
      result = *&a3;
      *&v16 = a4;
      *(&v16 + 1) = a5;
      v18 = !IsInfinite;
      goto LABEL_21;
    }

    result = 0;
    v16 = 0uLL;
    goto LABEL_15;
  }

  v10 = *&a1;
  if (*&a1 > 0.5)
  {
    v10 = 0.5;
  }

  if (*&a1 < 0.0)
  {
    v10 = 0.0;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v11 = 0.225;
  }

  else
  {
    v11 = v10;
  }

  v12 = a6;
  Width = CGRectGetWidth(*&a3);
  v23.origin.x = a3;
  v23.size.width = a5;
  v23.origin.y = a4;
  v23.size.height = a6;
  Height = CGRectGetHeight(v23);
  if (Height < Width)
  {
    Width = Height;
  }

  v24.origin.x = a3;
  v24.size.width = a5;
  v24.origin.y = a4;
  v24.size.height = a6;
  IsNull = CGRectIsNull(v24);
  v16 = 0uLL;
  if (IsNull)
  {
    result = 0;
LABEL_15:
    v18 = 6;
    a6 = 0.0;
    goto LABEL_21;
  }

  v19 = v11 * Width;
  if (v19 == 0.0 || (v25.origin.x = a3, v25.size.width = a5, v25.origin.y = a4, v25.size.height = a6, CGRectIsInfinite(v25)))
  {
    v18 = 0;
    result = *&a3;
    *&v16 = a4;
    *(&v16 + 1) = a5;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a5;
    *(result + 40) = a6;
    v16 = 0uLL;
    *(result + 48) = v19;
    *(result + 56) = v19;
    v18 = 2;
    a6 = 0.0;
    *(result + 64) = 1;
  }

LABEL_21:
  *a2 = result;
  *(a2 + 8) = v16;
  *(a2 + 24) = a6;
  *(a2 + 32) = v18;
  return result;
}

uint64_t EnvironmentValues.symbolVariants.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v5 = static SymbolVariantsKey.defaultValue;
    }

    *a1 = v5;
  }

  return result;
}

void *EnvironmentValues.symbolsGrowToFitBackground.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA026SymbolsGrowToFitBackgroundI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

uint64_t EnvironmentValues.symbolBackgroundCornerRadius.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028SymbolBackgroundCornerRadiusI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*v0);
    if (v3)
    {
      return v3[9];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t SymbolVariants.Shape.suffix.getter()
{
  v1 = 0x6572617571732ELL;
  if (*v0 != 1)
  {
    v1 = 0x676E61746365722ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C637269632ELL;
  }
}

Swift::Int SymbolVariants.Shape.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void SymbolVariants.fill.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1 | 1;
  a1[1] = v2;
}

void SymbolVariants.background.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1 | 4;
  a1[1] = v2;
}

void SymbolVariants.slash.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1 | 2;
  a1[1] = v2;
}

_BYTE *SymbolVariants.formUnion(_:)(_BYTE *result)
{
  v2 = result[1];
  *v1 |= *result;
  v3 = v1[1];
  if (v2 != 3)
  {
    v3 = v2;
  }

  v1[1] = v3;
  return result;
}

void SymbolVariants.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }
}

Swift::Int SymbolVariants.hashValue.getter()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SymbolVariants()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SymbolVariants()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SymbolVariants()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }

  return Hasher._finalize()();
}

uint64_t EnvironmentValues.symbolVariants.setter(__int16 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014SymbolVariantsF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014SymbolVariantsK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.symbolVariants.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 36);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v8 = static SymbolVariantsKey.defaultValue;
    }

    *(v4 + 20) = v8;
  }

  return EnvironmentValues.symbolVariants.modify;
}

void EnvironmentValues.symbolVariants.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014SymbolVariantsF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014SymbolVariantsK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t key path getter for EnvironmentValues.symbolBackgroundCornerRadius : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028SymbolBackgroundCornerRadiusI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
      v6 = *(result + 80);
    }

    else
    {
      v4 = 0;
      v6 = 1;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.symbolBackgroundCornerRadius : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028SymbolBackgroundCornerRadiusF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(a2, v3, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028SymbolBackgroundCornerRadiusK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v5, *a2);
  }
}

uint64_t EnvironmentValues.symbolBackgroundCornerRadius.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028SymbolBackgroundCornerRadiusF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(v3, a1, a2 & 1);

  if (v3[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028SymbolBackgroundCornerRadiusK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v6, *v3);
  }
}

void (*EnvironmentValues.symbolBackgroundCornerRadius.modify(uint64_t **a1))(uint64_t **a1)
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
  v3[4] = v1;
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028SymbolBackgroundCornerRadiusI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v5);
    if (v10)
    {
      v7 = v10[9];
      v9 = *(v10 + 80);
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  *v4 = v7;
  *(v4 + 8) = v9 & 1;
  return EnvironmentValues.symbolBackgroundCornerRadius.modify;
}

void EnvironmentValues.symbolBackgroundCornerRadius.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  swift_retain_n();
  v4 = v1[6];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028SymbolBackgroundCornerRadiusF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(v1[4], v2, v3);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028SymbolBackgroundCornerRadiusK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v1[5], *v1[4]);
  }

  free(v1);
}

uint64_t key path getter for EnvironmentValues.symbolsGrowToFitBackground : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA026SymbolsGrowToFitBackgroundI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.symbolsGrowToFitBackground : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA026SymbolsGrowToFitBackgroundF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA026SymbolsGrowToFitBackgroundK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.symbolsGrowToFitBackground.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA026SymbolsGrowToFitBackgroundF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA026SymbolsGrowToFitBackgroundK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.symbolsGrowToFitBackground.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA026SymbolsGrowToFitBackgroundI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.symbolsGrowToFitBackground.modify;
}

void EnvironmentValues.symbolsGrowToFitBackground.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA026SymbolsGrowToFitBackgroundF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA026SymbolsGrowToFitBackgroundK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

unint64_t lazy protocol witness table accessor for type SymbolVariants.Shape and conformance SymbolVariants.Shape()
{
  result = lazy protocol witness table cache variable for type SymbolVariants.Shape and conformance SymbolVariants.Shape;
  if (!lazy protocol witness table cache variable for type SymbolVariants.Shape and conformance SymbolVariants.Shape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariants.Shape and conformance SymbolVariants.Shape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolVariants and conformance SymbolVariants()
{
  result = lazy protocol witness table cache variable for type SymbolVariants and conformance SymbolVariants;
  if (!lazy protocol witness table cache variable for type SymbolVariants and conformance SymbolVariants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariants and conformance SymbolVariants);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SymbolVariants.Flags and conformance SymbolVariants.Flags()
{
  result = lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags;
  if (!lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags;
  if (!lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags;
  if (!lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags;
  if (!lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags);
  }

  return result;
}

uint64_t View.appearanceAnimation<A>(animation:strategy:modifier:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v25[1] = a6;
  v26 = a7;
  v27 = a1;
  v28 = a5;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v25 - v19;
  v22 = *v21;
  v23(v7, 0, v18);
  a2(v7, 1);
  (*(v11 + 16))(v13, v7, a3);
  v29 = v22;
  AppearanceAnimationView.init(content:from:to:animation:strategy:)(v13, v20, v16, v27, &v29, a3, a4, v26);
}

uint64_t AppearanceAnimationView.init(content:from:to:animation:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a5;
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v14 = type metadata accessor for AppearanceAnimationView();
  v15 = *(*(a7 - 8) + 32);
  v15(a8 + v14[13], a2, a7);
  result = (v15)(a8 + v14[14], a3, a7);
  *(a8 + v14[15]) = a4;
  *(a8 + v14[16]) = v13;
  return result;
}

Swift::Int AppearanceAnimationStrategy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t AppearanceAnimationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v51 = *(a1 + 16);
  v3 = v51;
  v52 = v4;
  v53 = v5;
  v54 = v6;
  v7 = type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v37 - v11;
  v12 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v4;
  v44 = v3;
  v51 = v3;
  v52 = v4;
  v41 = v6;
  v42 = v5;
  v53 = v5;
  v54 = v6;
  v16 = type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v23 = type metadata accessor for _ConditionalContent();
  v46 = *(v23 - 8);
  v47 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v45 = &v37 - v25;
  LOBYTE(v5) = *(v40 + *(a1 + 64));
  (*(v12 + 16))(v15, v24);
  if (v5)
  {
    AppearanceAnimationView.NormalBody_WithAnimation.init(view:)(v15, v44, v43, v42, v41, type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue.AnimationState, type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue, v9);
    WitnessTable = swift_getWitnessTable();
    v27 = v38;
    static ViewBuilder.buildExpression<A>(_:)(v9, v7, WitnessTable);
    v28 = *(v39 + 8);
    v28(v9, v7);
    static ViewBuilder.buildExpression<A>(_:)(v27, v7, WitnessTable);
    v28(v27, v7);
    swift_getWitnessTable();
    v29 = v45;
    static ViewBuilder.buildEither<A, B>(second:)(v9, v7, v45);
    v28(v9, v7);
  }

  else
  {
    AppearanceAnimationView.NormalBody_WithAnimation.init(view:)(v15, v44, v43, v42, v41, type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation.AnimationState, type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation, v19);
    v30 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v19, v16, v30);
    v31 = *(v17 + 8);
    v31(v19, v16);
    static ViewBuilder.buildExpression<A>(_:)(v22, v16, v30);
    v31(v22, v16);
    swift_getWitnessTable();
    v29 = v45;
    static ViewBuilder.buildEither<A, B>(first:)(v19, v16, v45);
    v31(v19, v16);
  }

  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v49 = v32;
  v50 = v33;
  v34 = v47;
  v35 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v29, v34, v35);
  return (*(v46 + 8))(v29, v34);
}

uint64_t AppearanceAnimationView.NormalBody_WithAnimation.init(view:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void *)@<X5>, uint64_t (*a7)(void, uint64_t *)@<X6>, uint64_t a8@<X8>)
{
  v15 = property wrapper backing initializer of AppearanceAnimationView.NormalBody_WithAnimation.state(0, a2, a3, a4, a5, a6);
  *a8 = v15;
  *(a8 + 4) = BYTE4(v15) & 1;
  *(a8 + 8) = v16;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v17 = *(a7(0, &v20) + 52);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v18 = type metadata accessor for AppearanceAnimationView();
  return (*(*(v18 - 8) + 32))(a8 + v17, a1, v18);
}

uint64_t AppearanceAnimationView.NormalBody_WithAnimation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v60 = a2;
  v4 = a1 - 8;
  v58 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - v7;
  v8 = *(v4 + 32);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 48);
  *&v69 = v8;
  *(&v69 + 1) = MEMORY[0x1E69E7668];
  *&v70 = v12;
  *(&v70 + 1) = MEMORY[0x1E69E7678];
  v13 = type metadata accessor for IDView();
  v53 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v48 - v14;
  v54 = v15;
  v57 = type metadata accessor for ModifiedContent();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v48 - v18;
  v19 = *v2;
  v20 = *(v2 + 4);
  v21 = v2[1];
  v66 = *v2;
  v67 = v20;
  v68 = v21;
  *&v22 = *(v4 + 40);
  *&v23 = *(v4 + 24);
  *(&v23 + 1) = v8;
  *(&v22 + 1) = v12;
  v62 = v23;
  v63 = v22;
  v70 = v22;
  v69 = v23;
  type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation.AnimationState();
  v24 = type metadata accessor for State();
  State.wrappedValue.getter(v24, &v69);
  v25 = *(v4 + 60);
  if (BYTE4(v69) == 1)
  {
    v69 = v62;
    v70 = v63;
    v26 = type metadata accessor for AppearanceAnimationView();
    v27 = 56;
  }

  else
  {
    v69 = v62;
    v70 = v63;
    v26 = type metadata accessor for AppearanceAnimationView();
    v27 = 52;
  }

  v28 = v48;
  v48[2](v11, v3 + v25 + *(v26 + v27), v8);
  LODWORD(v69) = v19;
  BYTE4(v69) = v20;
  *(&v69 + 1) = v21;
  State.wrappedValue.getter(v24, &v66);
  LODWORD(v69) = v66;
  View.id<A>(_:)(&v69, v8, MEMORY[0x1E69E7668], v61);
  (v28[1])(v11, v8);
  v30 = v58;
  v29 = v59;
  v31 = *(v58 + 16);
  v32 = v49;
  v31(v49, v3, v59);
  v33 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v48 = v3;
  v34 = swift_allocObject();
  v35 = v63;
  *(v34 + 16) = v62;
  *(v34 + 32) = v35;
  v36 = *(v30 + 32);
  v36(v34 + v33, v32, v29);
  v37 = v56;
  v31(v56, v48, v29);
  v38 = swift_allocObject();
  v39 = v63;
  *(v38 + 16) = v62;
  *(v38 + 32) = v39;
  v36(v38 + v33, v37, v29);
  *&v69 = partial apply for closure #1 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter;
  *(&v69 + 1) = v34;
  *&v70 = partial apply for closure #2 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter;
  *(&v70 + 1) = v38;
  v40 = v50;
  v41 = v54;
  v42 = v61;
  View.modifier<A>(_:)(&v69, v54, &type metadata for _AppearanceActionModifier);

  (*(v53 + 8))(v42, v41);
  v64 = &protocol witness table for IDView<A, B>;
  v65 = &protocol witness table for _AppearanceActionModifier;
  v43 = v57;
  WitnessTable = swift_getWitnessTable();
  v45 = v52;
  static ViewBuilder.buildExpression<A>(_:)(v40, v43, WitnessTable);
  v46 = *(v55 + 8);
  v46(v40, v43);
  static ViewBuilder.buildExpression<A>(_:)(v45, v43, WitnessTable);
  return (v46)(v45, v43);
}

uint64_t closure #1 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v9 = a1 + *(type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation() + 52);
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10 = *(v9 + *(type metadata accessor for AppearanceAnimationView() + 60));
  v13 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v13, v10);

  specialized closure #1 in withTransaction<A>(_:_:)(v11, partial apply for closure #1 in closure #1 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter);
}

uint64_t closure #1 in closure #1 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = HIDWORD(a2);
  v8 = *(a1 + 4);
  v9 = *(a1 + 1);
  v19 = *a1;
  v20 = v8;
  v21 = v9;

  v15 = v7;
  v17 = a4;
  v18 = a5;
  type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation.AnimationState();
  v10 = type metadata accessor for State();
  State.wrappedValue.getter(v10, &v22);
  v14 = v19;
  LOBYTE(v15) = v8;
  v16 = v9;
  v12 = v22;
  v13 = (v23 & 1) == 0;
  specialized LazyState.wrappedValue.setter(&v12, v10);
}

uint64_t property wrapper backing initializer of AppearanceAnimationView.NormalBody_WithAnimation.state(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *))
{
  v9 = a1;
  v10 = BYTE4(a1) & 1;
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v6 = a6(0, v8);
  State.init(wrappedValue:)(&v9, v6, v8);
  return v8[0];
}

uint64_t AppearanceAnimationView.NormalBody_AnimationValue.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v77 = a1;
  v3 = a1 - 8;
  v74 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v72 = v4;
  v73 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v56 - v6;
  v7 = *(v3 + 32);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnimationModifier<Bool>();
  v12 = type metadata accessor for ModifiedContent();
  v63 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v56 - v13;
  v87 = *(v3 + 48);
  v14 = v87;
  v88 = &protocol witness table for _AnimationModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v64 = v12;
  *&v85 = v12;
  *(&v85 + 1) = MEMORY[0x1E69E7668];
  v62 = WitnessTable;
  *&v86 = WitnessTable;
  *(&v86 + 1) = MEMORY[0x1E69E7678];
  v16 = type metadata accessor for IDView();
  v68 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v56 - v17;
  v69 = v18;
  v71 = type metadata accessor for ModifiedContent();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v66 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v56 - v21;
  v22 = *(v2 + 4);
  v23 = *(v2 + 1);
  v59 = *v2;
  v82 = v59;
  v83 = v22;
  v58 = v23;
  v84 = v23;
  *&v24 = *(v3 + 40);
  *&v25 = *(v3 + 24);
  v26 = v7;
  *(&v25 + 1) = v7;
  v61 = v14;
  *(&v24 + 1) = v14;
  v78 = v25;
  v79 = v24;
  v86 = v24;
  v85 = v25;
  type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue.AnimationState();
  v27 = type metadata accessor for State();
  State.wrappedValue.getter(v27, &v85);
  v28 = *(v3 + 60);
  if (BYTE4(v85) == 1)
  {
    v85 = v78;
    v86 = v79;
    v29 = type metadata accessor for AppearanceAnimationView();
    v30 = 56;
  }

  else
  {
    v85 = v78;
    v86 = v79;
    v29 = type metadata accessor for AppearanceAnimationView();
    v30 = 52;
  }

  v56 = v2;
  (*(v8 + 16))(v11, v2 + v28 + *(v29 + v30), v26);
  v31 = v2 + *(v77 + 52);
  v86 = v79;
  v85 = v78;
  v32 = *(v31 + *(type metadata accessor for AppearanceAnimationView() + 60));
  v33 = v59;
  LODWORD(v85) = v59;
  BYTE4(v85) = v22;
  v57 = v22;
  v34 = v58;
  *(&v85 + 1) = v58;
  State.wrappedValue.getter(v27, &v82);
  LOBYTE(v85) = v83;
  v35 = v60;
  View.animation<A>(_:value:)(v32, &v85, v26, MEMORY[0x1E69E6370], v61);
  (*(v8 + 8))(v11, v26);
  LODWORD(v85) = v33;
  BYTE4(v85) = v57;
  *(&v85 + 1) = v34;
  State.wrappedValue.getter(v27, &v82);
  LODWORD(v85) = v82;
  v36 = v64;
  View.id<A>(_:)(&v85, v64, MEMORY[0x1E69E7668], v76);
  (*(v63 + 8))(v35, v36);
  v37 = v74;
  v38 = *(v74 + 16);
  v39 = v65;
  v40 = v77;
  v38(v65, v2, v77);
  v41 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v42 = swift_allocObject();
  v43 = v79;
  *(v42 + 16) = v78;
  *(v42 + 32) = v43;
  v44 = *(v37 + 32);
  v44(v42 + v41, v39, v40);
  v45 = v73;
  v38(v73, v56, v40);
  v46 = swift_allocObject();
  v47 = v79;
  *(v46 + 16) = v78;
  *(v46 + 32) = v47;
  v44(v46 + v41, v45, v40);
  *&v85 = partial apply for closure #1 in AppearanceAnimationView.NormalBody_AnimationValue.body.getter;
  *(&v85 + 1) = v42;
  *&v86 = partial apply for closure #2 in AppearanceAnimationView.NormalBody_AnimationValue.body.getter;
  *(&v86 + 1) = v46;
  v48 = v66;
  v49 = v69;
  v50 = v76;
  View.modifier<A>(_:)(&v85, v69, &type metadata for _AppearanceActionModifier);

  (*(v68 + 8))(v50, v49);
  v80 = &protocol witness table for IDView<A, B>;
  v81 = &protocol witness table for _AppearanceActionModifier;
  v51 = v71;
  v52 = swift_getWitnessTable();
  v53 = v67;
  static ViewBuilder.buildExpression<A>(_:)(v48, v51, v52);
  v54 = *(v70 + 8);
  v54(v48, v51);
  static ViewBuilder.buildExpression<A>(_:)(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t closure #1 in AppearanceAnimationView.NormalBody_AnimationValue.body.getter(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = HIDWORD(a2);
  v8 = *(a1 + 4);
  v9 = *(a1 + 1);
  v19 = *a1;
  v20 = v8;
  v21 = v9;

  v15 = v7;
  v17 = a4;
  v18 = a5;
  type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue.AnimationState();
  v10 = type metadata accessor for State();
  State.wrappedValue.getter(v10, &v22);
  v14 = v19;
  LOBYTE(v15) = v8;
  v16 = v9;
  v12 = v22;
  v13 = (v23 & 1) == 0;
  specialized LazyState.wrappedValue.setter(&v12, v10);
}

uint64_t closure #2 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t *))
{
  v12 = *(a1 + 4);
  v13 = *(a1 + 1);
  v22 = *a1;
  v11 = v22;
  v23 = v12;
  v24 = v13;

  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  a6(255, &v18);
  v14 = type metadata accessor for State();
  State.wrappedValue.getter(v14, &v25);
  LODWORD(v18) = v11;
  BYTE4(v18) = v12;
  v19 = v13;
  v16 = v25;
  v17 = 0;
  specialized LazyState.wrappedValue.setter(&v16, v14);
  LODWORD(v18) = v11;
  BYTE4(v18) = v12;
  v19 = v13;
  State.wrappedValue.getter(v14, &v25);
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v25 + 1;
  v17 = v26;
  specialized LazyState.wrappedValue.setter(&v16, v14);
}

uint64_t AppearanceAnimationView.displayListAnimation.getter@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v179 = a2;
  v5 = type metadata accessor for ModifiedContent();
  v152 = type metadata accessor for Optional();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v147 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v158 = &v140 - v8;
  v168 = v5;
  v159 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v140 - v12;
  v13 = type metadata accessor for ModifiedContent();
  v157 = type metadata accessor for Optional();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v150 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v165 = &v140 - v16;
  v167 = v13;
  v166 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v143 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v176 = &v140 - v20;
  v21 = type metadata accessor for ModifiedContent();
  v164 = type metadata accessor for Optional();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v154 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v172 = &v140 - v24;
  v175 = v21;
  v174 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v144 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v173 = &v140 - v28;
  v29 = type metadata accessor for ModifiedContent();
  v30 = type metadata accessor for Optional();
  v170 = *(v30 - 8);
  v171 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v178 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v140 - v33;
  v35 = *(a1 + 3);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v145 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v155 = &v140 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v149 = &v140 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v162 = &v140 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v153 = &v140 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v169 = &v140 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v161 = &v140 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v140 - v52;
  v54 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v148 = &v140 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v177 = &v140 - v59;
  v60 = a1;
  v61 = *(a1 + 13);
  v62 = *(v36 + 16);
  v63 = v3;
  *&v181 = v61;
  v62(v53, v3 + v61, v35, v58);
  v64 = swift_dynamicCast();
  v65 = v54[7];
  *&v180 = v36 + 16;
  if (v64)
  {
    v141 = v65;
    v65(v34, 0, 1, v29);
    v140 = v54[4];
    v140(v177, v34, v29);
    (v62)(v161, v3 + *(v60 + 14), v35);
    v66 = v35;
    if (swift_dynamicCast())
    {
      v67 = v178;
      v141(v178, 0, 1, v29);
      v68 = v148;
      v140(v148, v67, v29);
      v69 = *(v29 + 36);
      v70 = v177;
      v71 = *&v177[v69];
      v72 = *&v68[v69];
      v73 = *(v3 + *(v60 + 15));
      v74 = v179;
      v179[3] = &type metadata for DisplayList.OpacityAnimation;
      v74[4] = &protocol witness table for DisplayList.OpacityAnimation;
      *v74 = v71;
      v74[1] = v72;
      v74[2] = v73;
      v75 = v54[1];

      v75(v68, v29);
      return (v75)(v70, v29);
    }

    v79 = v62;
    v77 = v60;
    (v54[1])(v177, v29);
    v78 = v178;
    v65 = v141;
  }

  else
  {
    v66 = v35;
    v77 = v60;
    v78 = v34;
    v79 = v62;
  }

  v65(v78, 1, 1, v29);
  (*(v170 + 8))(v78, v171);
  v80 = v63;
  v81 = v66;
  (v79)(v169, v63 + v181, v66);
  v82 = v172;
  v83 = v175;
  v84 = swift_dynamicCast();
  v85 = v174;
  v86 = *(v174 + 56);
  v178 = v79;
  v160 = v63;
  if (v84)
  {
    v171 = v86;
    v86(v82, 0, 1, v83);
    v177 = *(v85 + 32);
    (v177)(v173, v82, v83);
    (v79)(v153, v63 + *(v77 + 14), v81);
    v82 = v154;
    v87 = swift_dynamicCast();
    v88 = v179;
    v89 = v176;
    if (v87)
    {
      v171(v82, 0, 1, v83);
      v90 = v144;
      (v177)(v144, v82, v83);
      v91 = *(v83 + 36);
      v92 = v173;
      v93 = *&v173[v91];
      v180 = *&v90[v91];
      v181 = v93;
      v94 = *(v160 + *(v77 + 15));
      v88[3] = &type metadata for DisplayList.OffsetAnimation;
      v88[4] = &protocol witness table for DisplayList.OffsetAnimation;
      v95 = swift_allocObject();
      *v88 = v95;
      v96 = v180;
      *(v95 + 16) = v181;
      *(v95 + 32) = v96;
      *(v95 + 48) = v94;
      v97 = *(v85 + 8);

      v97(v90, v83);
      return (v97)(v92, v83);
    }

    v177 = v77;
    (*(v85 + 8))(v173, v83);
    v98 = v166;
    v99 = v167;
    v100 = v165;
    v80 = v160;
    v86 = v171;
  }

  else
  {
    v177 = v77;
    v98 = v166;
    v99 = v167;
    v89 = v176;
    v100 = v165;
  }

  v86(v82, 1, 1, v83);
  (*(v163 + 8))(v82, v164);
  v101 = v178;
  (v178)(v162, v80 + v181, v81);
  v102 = swift_dynamicCast();
  v103 = v98[7];
  if (v102)
  {
    v103(v100, 0, 1, v99);
    v176 = v98[4];
    (v176)(v89, v100, v99);
    v104 = v89;
    v101(v149, v80 + *(v177 + 14), v81);
    v105 = v150;
    if (swift_dynamicCast())
    {
      v103(v105, 0, 1, v99);
      v106 = v143;
      (v176)(v143, v105, v99);
      v107 = *(v99 + 36);
      v108 = &v89[v107];
      v109 = &v106[v107];
      v110 = *(v80 + *(v177 + 15));
      v111 = v179;
      v179[3] = &type metadata for DisplayList.ScaleAnimation;
      v111[4] = &protocol witness table for DisplayList.ScaleAnimation;
      v112 = swift_allocObject();
      *v111 = v112;
      v113 = *(v108 + 1);
      *(v112 + 16) = *v108;
      *(v112 + 32) = v113;
      v114 = *(v109 + 1);
      *(v112 + 48) = *v109;
      *(v112 + 64) = v114;
      *(v112 + 80) = v110;
      v115 = v98[1];

      v115(v106, v99);
      return (v115)(v104, v99);
    }

    v116 = v80;
    (v98[1])(v104, v99);
    v117 = v158;
    v100 = v105;
    v118 = v179;
  }

  else
  {
    v116 = v80;
    v117 = v158;
    v118 = v179;
  }

  v103(v100, 1, 1, v99);
  (*(v156 + 8))(v100, v157);
  v119 = v178;
  (v178)(v155, v116 + v181, v81);
  v120 = v168;
  v121 = swift_dynamicCast();
  v122 = v159;
  v123 = *(v159 + 56);
  if (v121)
  {
    v123(v117, 0, 1, v120);
    v124 = v117;
    v125 = *(v122 + 32);
    v126 = v146;
    v125(v146, v124, v120);
    v119(v145, v160 + *(v177 + 14), v81);
    v127 = v126;
    v128 = v147;
    v120 = v168;
    if (swift_dynamicCast())
    {
      v123(v128, 0, 1, v120);
      v129 = v142;
      v125(v142, v128, v120);
      v130 = *(v120 + 36);
      v181 = *&v127[v130];
      *&v131 = *&v127[v130 + 16];
      v132 = &v129[v130];
      *(&v131 + 1) = *v132;
      v180 = v131;
      v133 = *(v132 + 1);
      v134 = *(v132 + 2);
      v135 = *(v160 + *(v177 + 15));
      v136 = v179;
      v179[3] = &type metadata for DisplayList.RotationAnimation;
      v136[4] = &protocol witness table for DisplayList.RotationAnimation;
      v137 = swift_allocObject();
      *v136 = v137;
      v138 = v180;
      *(v137 + 16) = v181;
      *(v137 + 32) = v138;
      *(v137 + 48) = v133;
      *(v137 + 56) = v134;
      *(v137 + 64) = v135;
      v139 = *(v122 + 8);

      v139(v129, v120);
      return (v139)(v127, v120);
    }

    (*(v122 + 8))(v127, v120);
    v117 = v128;
    v118 = v179;
  }

  v123(v117, 1, 1, v120);
  result = (*(v151 + 8))(v117, v152);
  v118[4] = 0;
  *v118 = 0u;
  *(v118 + 1) = 0u;
  return result;
}

uint64_t AppearanceAnimationView.archivedBody.getter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = v2;
  v19[0] = v15;
  v19[1] = v2;
  v3 = type metadata accessor for AppearanceAnimationView.AnimationEffect();
  v4 = v15;
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  AppearanceAnimationView.displayListAnimation.getter(a1, v19);
  View.modifier<A>(_:)(v19, v4, v3);
  (*(*(v3 - 8) + 8))(v19, v3);
  v17 = v16;
  v18 = &protocol witness table for AppearanceAnimationView<A, B>.AnimationEffect;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

unint64_t lazy protocol witness table accessor for type AppearanceAnimationStrategy and conformance AppearanceAnimationStrategy()
{
  result = lazy protocol witness table cache variable for type AppearanceAnimationStrategy and conformance AppearanceAnimationStrategy;
  if (!lazy protocol witness table cache variable for type AppearanceAnimationStrategy and conformance AppearanceAnimationStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppearanceAnimationStrategy and conformance AppearanceAnimationStrategy);
  }

  return result;
}

uint64_t AppearanceAnimationView.AnimationEffect.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of _DisplayList_AnyEffectAnimation?(v1, &v6);
  if (v7)
  {
    outlined init with take of AnyTrackedValue(&v6, v8);
    v3 = swift_allocObject();
    result = outlined init with take of AnyTrackedValue(v8, v3 + 16);
    v5 = 11;
  }

  else
  {
    result = outlined destroy of _DisplayList_AnyEffectAnimation?(&v6);
    v3 = 0;
    v5 = 20;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = v5;
  return result;
}

uint64_t instantiation function for generic protocol witness table for AppearanceAnimationView<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AppearanceAnimationView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + v8;
  v12 = v10 + 7;
  v13 = ((v10 + 7 + ((v10 + v8 + ((v5 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = v8 | *(v4 + 80) & 0xF8;
  if (v14 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + (((v14 | 7) + 16) & ~(v14 | 7)));
  }

  else
  {
    v18 = ~v8;
    (*(v4 + 16))(a1);
    v20 = (v3 + v9) & v18;
    v21 = (a2 + v9) & v18;
    v22 = *(v7 + 16);
    v22(v20, v21, v6);
    v23 = (v11 + v20) & v18;
    v24 = (v11 + v21) & v18;
    v22(v23, v24, v6);
    v25 = (v12 + v23) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v12 + v24) & 0xFFFFFFFFFFFFFFF8;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  return v3;
}

uint64_t destroy for AppearanceAnimationView(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = *(v7 + 80);
  v11 = (v5 + v10) & ~v10;
  v8(v11, v6);
  v8((*(v9 + 56) + v10 + v11) & ~v10, v6);
}

uint64_t initializeWithCopy for AppearanceAnimationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = *(v6 + 48) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 48);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = (v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);

  return a1;
}

uint64_t assignWithCopy for AppearanceAnimationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 24);
  v10 = v8 + 24;
  v11 = *(v8 + 80);
  v12 = *(v6 + 40) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 40);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = (v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;

  *(v18 + 8) = *(v19 + 8);
  return a1;
}

uint64_t initializeWithTake for AppearanceAnimationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v10 = v8 + 32;
  v11 = *(v8 + 80);
  v12 = *(v6 + 32) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 32);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = (v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);
  return a1;
}

uint64_t assignWithTake for AppearanceAnimationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 40);
  v10 = v8 + 40;
  v11 = *(v8 + 80);
  v12 = *(v6 + 24) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 24);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = (v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;

  *(v18 + 8) = *(v19 + 8);
  return a1;
}

void storeEnumTagSinglePayload for AppearanceAnimationView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  v16 = v12 + v11;
  v17 = (v12 + v11 + v15) & ~v11;
  v18 = v12 + 7;
  v19 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 >= a3)
  {
    v23 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = (a3 - v13 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v19] = 0;
      }

      else if (v23)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v26 = *(v6 + 56);

        v26();
      }

      else
      {
        v27 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v28 = *(v8 + 56);

          v28(v27);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v29 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v29 = a2 - 1;
          }

          *((v18 + ((v16 + v27) & ~v11)) & 0xFFFFFFFFFFFFFFF8) = v29;
        }
      }

      return;
    }
  }

  v24 = ~v13 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_29:
      if (v23 == 2)
      {
        *&a1[v19] = v25;
      }

      else
      {
        *&a1[v19] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v23)
  {
    a1[v19] = v25;
  }
}

uint64_t destroy for AppearanceAnimationView.AnimationEffect(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t type metadata completion function for AppearanceAnimationView.NormalBody_WithAnimation()
{
  result = type metadata accessor for AppearanceAnimationView();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = *(v6 + 80) & 0xF8 | v8;
  v10 = ((v9 | 7) + 16) & ~(v9 | 7);
  v11 = *(v6 + 64) + v8;
  v12 = *(v7 + 64);
  v13 = v12 + v8;
  v14 = v12 + 7;
  if (v9 > 7 || ((*(v7 + 80) | *(v6 + 80)) & 0x100000) != 0 || v10 + ((v12 + 7 + ((v12 + v8 + (v11 & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = v17 + v10;
  }

  else
  {
    v18 = ~v8;
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 8) = a2[1];
    v19 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v6 + 16);
    v29 = v4;

    v28((a1 + 23) & 0xFFFFFFFFFFFFFFF8, v19, v5);
    v20 = (v11 + ((a1 + 23) & 0xFFFFFFFFFFFFFFF8)) & v18;
    v21 = (v11 + v19) & v18;
    v22 = *(v7 + 16);
    v22(v20, v21, v29);
    v23 = (v13 + v20) & v18;
    v24 = (v13 + v21) & v18;
    v22(v23, v24, v29);
    v25 = (v14 + v23) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v14 + v24) & 0xFFFFFFFFFFFFFFF8;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  return a1;
}

uint64_t destroy for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(v4 - 8);
  v7 = v6 + 8;
  v8 = *(v5 - 8);
  v9 = *(v8 + 80);
  v10 = (a1 + (*(v6 + 80) & 0xF8 | v9 | 7) + 16) & ~(*(v6 + 80) & 0xF8 | v9 | 7);
  (*(v6 + 8))(v10);
  v11 = (*(v7 + 56) + v9 + v10) & ~v9;
  v12 = *(v8 + 8);
  v12(v11, v5);
  v12((*(v8 + 64) + v9 + v11) & ~v9, v5);
}

uint64_t initializeWithCopy for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = *(v6 + 80) & 0xF8 | v10 | 7;
  v12 = (v11 + 16 + a1) & ~v11;
  v13 = (v11 + 16 + a2) & ~v11;

  v7(v12, v13, v4);
  v14 = *(v8 + 48) + v10;
  v15 = (v14 + v12) & ~v10;
  v16 = (v14 + v13) & ~v10;
  v17 = *(v9 + 16);
  v17(v15, v16, v5);
  v18 = *(v9 + 64);
  v19 = (v18 + v10 + v15) & ~v10;
  v20 = (v18 + v10 + v16) & ~v10;
  v17(v19, v20, v5);
  v21 = (v18 + 7 + v19) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v18 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);

  return a1;
}

uint64_t assignWithCopy for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(v6 - 8);
  v9 = v8 + 24;
  v10 = *(v7 - 8);
  v11 = *(v10 + 80);
  v12 = *(v8 + 80) & 0xF8 | v11 | 7;
  v13 = (v12 + 16 + a1) & ~v12;
  v14 = (v12 + 16 + a2) & ~v12;
  (*(v8 + 24))(v13, v14);
  v15 = *(v9 + 40) + v11;
  v16 = (v15 + v13) & ~v11;
  v17 = (v15 + v14) & ~v11;
  v18 = *(v10 + 24);
  v18(v16, v17, v7);
  v19 = *(v10 + 64);
  v20 = (v19 + v11 + v16) & ~v11;
  v21 = (v19 + v11 + v17) & ~v11;
  v18(v20, v21, v7);
  v22 = (v19 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;

  *(v22 + 8) = *(v23 + 8);
  return a1;
}

_OWORD *initializeWithTake for AppearanceAnimationView.NormalBody_WithAnimation(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = *(v5 + 80) & 0xF8 | v8 | 7;
  v10 = (a1 + v9 + 16) & ~v9;
  v11 = (a2 + v9 + 16) & ~v9;
  (*(v5 + 32))(v10, v11, *(a3 + 16));
  v12 = *(v6 + 32) + v8;
  v13 = (v12 + v10) & ~v8;
  v14 = (v12 + v11) & ~v8;
  v15 = *(v7 + 32);
  v15(v13, v14, v4);
  v16 = *(v7 + 64);
  v17 = (v16 + v8 + v13) & ~v8;
  v18 = (v16 + v8 + v14) & ~v8;
  v15(v17, v18, v4);
  v19 = (v16 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  return a1;
}

uint64_t assignWithTake for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(v6 - 8);
  v9 = v8 + 40;
  v10 = *(v7 - 8);
  v11 = *(v10 + 80);
  v12 = *(v8 + 80) & 0xF8 | v11 | 7;
  v13 = (v12 + 16 + a1) & ~v12;
  v14 = (v12 + 16 + a2) & ~v12;
  (*(v8 + 40))(v13, v14);
  v15 = *(v9 + 24) + v11;
  v16 = (v15 + v13) & ~v11;
  v17 = (v15 + v14) & ~v11;
  v18 = *(v10 + 40);
  v18(v16, v17, v7);
  v19 = *(v10 + 64);
  v20 = (v19 + v11 + v16) & ~v11;
  v21 = (v19 + v11 + v17) & ~v11;
  v18(v20, v21, v7);
  v22 = (v19 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;

  *(v22 + 8) = *(v23 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppearanceAnimationView.NormalBody_WithAnimation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v4 + 80) & 0xF8 | v9 | 7;
  v13 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v14 = v10 + v9;
  v15 = v10 + 7;
  v16 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v17 = ((v12 + 16) & ~v12) + ((v15 + ((v14 + (v13 & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      v25 = (a1 + v12 + 16) & ~v12;
      if (v5 == v11)
      {
        return (*(v4 + 48))(v25);
      }

      v26 = (v13 + v25) & ~v9;
      if (v8 == v11)
      {
        return (*(v7 + 48))(v26, v8, v6);
      }

      v27 = *((v15 + ((v14 + v26) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (((v12 + 16) & ~v12) + ((v15 + ((v14 + (v13 & ~v9)) & ~v9)) & 0xFFFFFFF8) == -9)
  {
    v24 = 0;
  }

  else
  {
    if (v17 <= 3)
    {
      v23 = ((v12 + 16) & ~v12) + ((v15 + ((v14 + (v13 & ~v9)) & ~v9)) & 0xFFFFFFF8) + 9;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  return v11 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for AppearanceAnimationView.NormalBody_WithAnimation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v6 + 80) & 0xF8 | v10 | 7;
  v15 = ((v14 + 16) & ~v14) + ((v12 + 7 + ((v12 + v10 + ((v11 + v10) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v16 = a3 >= v13;
  v17 = a3 - v13;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v13 < a2)
  {
    v19 = ~v13 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (((v14 + 16) & ~v14) + ((v12 + 7 + ((v12 + v10 + ((v11 + v10) & ~v10)) & ~v10)) & 0xFFFFFFF8) != -9)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_52:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v18)
  {
    goto LABEL_32;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v24 = &a1[v14 + 16] & ~v14;
  if (v7 == v13)
  {
    v25 = *(v6 + 56);

    v25(v24);
  }

  else
  {
    v26 = (v11 + v10 + v24) & ~v10;
    if (v9 == v13)
    {
      v27 = *(v8 + 56);

      v27(v26);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v28 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v28 = a2 - 1;
      }

      *((v12 + 7 + ((v12 + v10 + v26) & ~v10)) & 0xFFFFFFFFFFFFFFF8) = v28;
    }
  }
}

uint64_t instantiation function for generic protocol witness table for AppearanceAnimationView<A, B>.AnimationEffect(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _AnimationModifier<Bool>()
{
  if (!lazy cache variable for type metadata for _AnimationModifier<Bool>)
  {
    v0 = type metadata accessor for _AnimationModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _AnimationModifier<Bool>);
    }
  }
}

uint64_t partial apply for closure #2 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter(uint64_t (*a1)(void, void *), void (*a2)(uint64_t, uint64_t *))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v10[0] = v2[2];
  v4 = v10[0];
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = *(a1(0, v10) - 8);
  return closure #2 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter((v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80))), v4, v5, v6, v7, a2);
}

uint64_t partial apply for closure #1 in AppearanceAnimationView.NormalBody_AnimationValue.body.getter(uint64_t (*a1)(void, void *), uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v11[0] = v2[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(a1(0, v11) - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a2(v8, v3, v4, v5, v6);
}

void type metadata accessor for _DisplayList_AnyEffectAnimation?()
{
  if (!lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?)
  {
    type metadata accessor for _DisplayList_AnyEffectAnimation();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?);
    }
  }
}

uint64_t outlined destroy of _DisplayList_AnyEffectAnimation?(uint64_t a1)
{
  type metadata accessor for _DisplayList_AnyEffectAnimation?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CodablePlatformImage.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CorePlatformImage();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = a1;
  v6 = a1;
  v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(0, v6);
  v8.receiver = v5;
  v8.super_class = v4;
  v7 = objc_msgSendSuper2(&v8, sel_init);

  *a2 = v7;
}

id RBDisplayListEncoderDelegate.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder];
  *v5 = *a1;
  *(v5 + 2) = v4;
  *(v5 + 24) = *(a1 + 24);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id RBDisplayListDecoderDelegate.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  v7 = &v3[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder];
  *v7 = *a1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v5;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

void specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(int a1, void (*a2)(void), unint64_t a3)
{
  v8 = type metadata accessor for OSSignpostID();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 2);
  v37 = *v3;
  v38 = v11;
  v39 = *(v3 + 24);
  v12 = ProtobufEncoder.archiveWriter.getter();
  if (v12)
  {
    v13 = v12;
    v34 = v8;
    v36 = a1;
    v14 = lazy protocol witness table accessor for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:)();
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v15 = v13[19];
    if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(&v37), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      swift_endAccess();
      outlined destroy of AnyHashable(&v37);
      if (one-time initialization token for archiving != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v19, static OSSignposter.archiving);
      lazy protocol witness table accessor for type Int and conformance Int();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v20, v21);
      static OSSignpostID.exclusive.getter();
      v14 = OSSignposter.logHandle.getter();
      v22 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v18;
        v24 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18D018000, v14, v22, v24, "addAttachment.cacheHit", "index=%{name=index}ld", v23, 0xCu);
        MEMORY[0x193AC4820](v23, -1, -1);
      }

      (*(v35 + 8))(v10, v34);
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      swift_endAccess();
      outlined destroy of AnyHashable(&v37);
      v37 = 0uLL;
      LODWORD(v38) = 0;
      BYTE4(v38) = 1;
      v25 = specialized ArchiveWriter.addAttachment(hash:from:)(&v37, v13, a2, a3);
      if (v4)
      {
        goto LABEL_11;
      }

      v18 = v25;
      v36 = a1;
      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v13[19];
      v13[19] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, &v37, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v37);
      v13[19] = v40;
      swift_endAccess();
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_9:
        ProtobufEncoder.encodeVarint(_:)(8uLL);
        ProtobufEncoder.encodeVarint(_:)(v18);
LABEL_11:

        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v14 = Mutable;
    v27 = CGDataConsumerCreateWithCFData(Mutable);
    if (v27)
    {
      v13 = v27;
      a2();
      if (v4)
      {

LABEL_19:
        return;
      }

LABEL_18:
      v29 = v14;
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      ProtobufEncoder.dataField(_:_:)(2, v30, v32);
      outlined consume of Data._Representation(v30, v32);

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id CodablePlatformImage.kitImage.getter()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

void CodablePlatformImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  v9 = _CorePlatformImageGetCGImage(v7, *(v5 + v8));
  if (!v9)
  {
    lazy protocol witness table accessor for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v10 = *(v5 + v6);
  v11 = *(v5 + v8);
  v12 = v9;
  _CorePlatformImageGetScale(v10, v11);
  v14 = v13;
  ImageOrientation = _CorePlatformImageGetImageOrientation(*(v5 + v6), *(v5 + v8));
  v16 = specialized Image.Orientation.init(rawValue:)(ImageOrientation);
  if (v16 == 8)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    LOBYTE(v17) = v16;
  }

  _CorePlatformImageGetBaselineOffsetFromBottom(*(v5 + v6), *(v5 + v8));
  v19 = v18;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v12);

  if (v2)
  {
    goto LABEL_46;
  }

  v20 = round(v14);
  if (v20 == 1.0)
  {
    goto LABEL_18;
  }

  v21 = fabs(v20);
  if (v21 >= 65536.0)
  {
    v22 = 17;
  }

  else
  {
    v22 = 21;
  }

  ProtobufEncoder.encodeVarint(_:)(v22);
  if (v21 >= 65536.0)
  {
    v25 = a1[1];
    v24 = v25 + 8;
    if (!__OFADD__(v25, 8))
    {
      if (a1[2] < v24)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v24) = v20;
      }

      else
      {
        a1[1] = v24;
        *(*a1 + v25) = v20;
      }

      goto LABEL_18;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v23 = a1[1];
  v24 = v23 + 4;
  if (__OFADD__(v23, 4))
  {
    __break(1u);
    goto LABEL_48;
  }

  *&v20 = v20;
  if (a1[2] < v24)
  {
    goto LABEL_51;
  }

  a1[1] = v24;
  *(*a1 + v23) = LODWORD(v20);
  while (1)
  {
LABEL_18:
    if (v17 > 3u)
    {
      if (v17 > 5u)
      {
        v17 = v17 == 6 ? 7 : 5;
      }

      else
      {
        v17 = v17 == 4 ? 1 : 3;
      }
    }

    else if (v17 > 1u)
    {
      v17 = v17 == 2 ? 6 : 4;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_33;
      }

      v17 = 2;
    }

    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v17);
LABEL_33:
    if (v19 == 0.0)
    {
      goto LABEL_44;
    }

    v20 = fabs(v19);
    v26 = v20 >= 65536.0 ? 33 : 37;
    ProtobufEncoder.encodeVarint(_:)(v26);
    if (v20 >= 65536.0)
    {
      break;
    }

    v27 = a1[1];
    v24 = v27 + 4;
    if (!__OFADD__(v27, 4))
    {
      v28 = v19;
      if (a1[2] < v24)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v24) = v28;
      }

      else
      {
        a1[1] = v24;
        *(*a1 + v27) = v28;
      }

      goto LABEL_44;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    *ProtobufEncoder.growBufferSlow(to:)(v24) = LODWORD(v20);
  }

  v29 = a1[1];
  v24 = v29 + 8;
  if (__OFADD__(v29, 8))
  {
    goto LABEL_50;
  }

  if (a1[2] < v24)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v24) = v19;
  }

  else
  {
    a1[1] = v24;
    *(*a1 + v29) = v19;
  }

LABEL_44:
  v30 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate;
  swift_beginAccess();
  if (*(v5 + v30))
  {
    ProtobufEncoder.encodeVarint(_:)(0x28uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

LABEL_46:
}

void CodablePlatformImage.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1.0;
    while (1)
    {
      v10 = a1[3];
      if (v10)
      {
        v11 = a1[4];
        if (v5 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v5)
        {
          goto LABEL_96;
        }

        a1[3] = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_97;
      }

      if (v10 < 8)
      {
        goto LABEL_96;
      }

LABEL_11:
      v12 = v10 >> 3;
      v13 = v10 & 7;
      if (v10 >> 3 <= 2)
      {
        if (v12 == 1)
        {
          if (v13 != 2)
          {
            goto LABEL_96;
          }

          v22 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
          }

          v24 = *(v22 + 2);
          v23 = *(v22 + 3);
          if (v24 >= v23 >> 1)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
          }

          *(v22 + 2) = v24 + 1;
          *&v22[8 * v24 + 32] = v6;
          a1[5] = v22;
          v25 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
LABEL_97:

            return;
          }

          if (v25 < 0)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            __break(1u);
            v44 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v45 = *(v44 + 2);
            if (v45)
            {
              v42 = v45 - 1;
              v43 = *&v44[8 * v42 + 32];
              *(v44 + 2) = v42;

              a1[5] = v44;
              a1[2] = v43;
            }

            else
            {
              __break(1u);
            }

            return;
          }

          v26 = a1[1] + v25;
          if (v6 < v26)
          {
            goto LABEL_96;
          }

          a1[2] = v26;
          v27 = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
          v28 = a1[5];
          if (!*(v28 + 2))
          {
            goto LABEL_102;
          }

          v29 = v27;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v30 = *(v28 + 2);
            if (!v30)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
            v30 = *(v28 + 2);
            if (!v30)
            {
LABEL_93:
              __break(1u);
              break;
            }
          }

          v31 = v30 - 1;
          v6 = *&v28[8 * v31 + 32];
          *(v28 + 2) = v31;

          a1[5] = v28;
          a1[2] = v6;
          v8 = v29;
          goto LABEL_4;
        }

        if (v12 == 2)
        {
          if (v13 == 5)
          {
            v34 = a1[1];
            if (v6 < (v34 + 1))
            {
              goto LABEL_96;
            }

            v35 = *v34;
            a1[1] = v34 + 1;
            v9 = v35;
          }

          else
          {
            if (v13 == 2)
            {
              v33 = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                goto LABEL_97;
              }

              if (v33 < 0)
              {
                goto LABEL_106;
              }

              v16 = a1[1];
              if (v6 < v16 + v33)
              {
                goto LABEL_96;
              }

              a1[3] = 17;
              a1[4] = v16 + v33;
            }

            else
            {
              if (v13 != 1)
              {
                goto LABEL_96;
              }

              v16 = a1[1];
            }

            if (v6 < (v16 + 1))
            {
              goto LABEL_96;
            }

            v9 = *v16;
            a1[1] = v16 + 1;
          }

          goto LABEL_4;
        }

LABEL_54:
        if ((v10 & 7) > 1)
        {
          if (v13 == 2)
          {
            v36 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_97;
            }

            if (v36 < 0)
            {
              goto LABEL_107;
            }

            v32 = a1[1] + v36;
            if (v6 < v32)
            {
              goto LABEL_96;
            }

            goto LABEL_80;
          }

          if (v13 != 5)
          {
            goto LABEL_96;
          }

LABEL_62:
          v32 = a1[1] + 4;
          if (v6 < v32)
          {
            goto LABEL_96;
          }

          goto LABEL_80;
        }

        if ((v10 & 7) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_56;
      }

      if (v12 == 3)
      {
        if ((v10 & 7) != 0)
        {
          if (v13 != 2)
          {
            goto LABEL_96;
          }

          v17 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_97;
          }

          if (v17 < 0)
          {
            goto LABEL_104;
          }

          v18 = a1[1] + v17;
          if (v6 < v18)
          {
LABEL_96:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();

            return;
          }

          a1[3] = 24;
          a1[4] = v18;
        }

        v19 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_97;
        }

        if (v19 <= 0xFF)
        {
          v7 = 0;
          if (v19 <= 3u)
          {
            switch(v19)
            {
              case 1u:
                v7 = 4;
                break;
              case 2u:
                v7 = 1;
                break;
              case 3u:
                v7 = 5;
                break;
            }
          }

          else if (v19 > 5u)
          {
            if (v19 == 6)
            {
              v7 = 2;
            }

            else if (v19 == 7)
            {
              v7 = 6;
            }
          }

          else if (v19 == 4)
          {
            v7 = 3;
          }

          else if (v19 == 5)
          {
            v7 = 7;
          }
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_4;
      }

      if (v12 != 4)
      {
        if (v12 == 5)
        {
          if ((v10 & 7) != 0)
          {
            if (v13 != 2)
            {
              goto LABEL_96;
            }

            v14 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_97;
            }

            if (v14 < 0)
            {
              goto LABEL_103;
            }

            v15 = a1[1] + v14;
            if (v6 < v15)
            {
              goto LABEL_96;
            }

            a1[3] = 40;
            a1[4] = v15;
          }

LABEL_3:
          ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_97;
          }

          goto LABEL_4;
        }

        goto LABEL_54;
      }

      if (v13 == 5)
      {
        goto LABEL_62;
      }

      if (v13 == 2)
      {
        v20 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_97;
        }

        if (v20 < 0)
        {
          goto LABEL_105;
        }

        v21 = a1[1];
        if (v6 < v21 + v20)
        {
          goto LABEL_96;
        }

        a1[3] = 33;
        a1[4] = v21 + v20;
        goto LABEL_58;
      }

LABEL_56:
      if (v13 != 1)
      {
        goto LABEL_96;
      }

      v21 = a1[1];
LABEL_58:
      v32 = v21 + 8;
      if (v6 < v32)
      {
        goto LABEL_96;
      }

LABEL_80:
      a1[1] = v32;
LABEL_4:
      v5 = a1[1];
      if (v5 >= v6)
      {
        a1[3] = 0;
        if (!v8)
        {
          goto LABEL_95;
        }

        KitImage = _CorePlatformImageMakeKitImage(v9, 0, v8, (0x507030104060200uLL >> (8 * v7)) & 7);
        v38 = type metadata accessor for CorePlatformImage();
        v39 = objc_allocWithZone(v38);
        v39[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = 0;
        *&v39[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = KitImage;
        v40 = KitImage;
        v39[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(0, v40);
        v46.receiver = v39;
        v46.super_class = v38;
        v41 = objc_msgSendSuper2(&v46, sel_init);

        *a2 = v41;
        return;
      }
    }
  }

  a1[3] = 0;
LABEL_95:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t CodableCGImage.encode(to:)(__int128 *a1)
{
  v3 = *v1;
  Identifier = CGImageGetIdentifier();
  v5 = *(a1 + 2);
  v8 = *a1;
  v9 = v5;
  v10 = *(a1 + 24);
  ProtobufEncoder.archiveHost.getter(v11);
  v7[2] = v11;
  v7[3] = v3;
  specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(Identifier, partial apply for closure #1 in CodableCGImage.encode(to:), v7);
  return outlined destroy of AnyArchivedViewHost?(v11, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
}

void closure #1 in CodableCGImage.encode(to:)(CGDataConsumer *a1, uint64_t a2, void *a3)
{
  v25 = a1;
  type metadata accessor for AnyArchivedViewHost?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UTType();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  outlined init with copy of AnyArchivedViewHost?(a2, v28);
  v15 = v29;
  if (v29)
  {
    v16 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v17 = (*(v16 + 16))(a3, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v28);
    if (v3)
    {
      return;
    }
  }

  else
  {
    outlined destroy of AnyArchivedViewHost?(v28, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
    v17 = a3;
  }

  outlined init with copy of AnyArchivedViewHost?(a2, &v26);
  if (!v27)
  {
    outlined destroy of AnyArchivedViewHost?(&v26, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
    static UTType.png.getter();
    v20 = v31;
LABEL_12:
    specialized static CodableCGImage.export(_:to:as:)(v17, v25, v14);
    (*(v20 + 8))(v14, v9);

    return;
  }

  outlined init with take of AnyTrackedValue(&v26, v28);
  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v19 + 32))(v17, v18, v19);
  v20 = v31;
  v21 = *(v31 + 48);
  if (v21(v8, 1, v9) != 1)
  {
    v23 = *(v20 + 32);
    v23(v11, v8, v9);
    v23(v14, v11, v9);
    __swift_destroy_boxed_opaque_existential_1(v28);
    goto LABEL_12;
  }

  lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
  swift_allocError();
  *v22 = 1;
  swift_willThrow();

  if (v21(v8, 1, v9) != 1)
  {
    outlined destroy of AnyArchivedViewHost?(v8, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t CodableCGImage.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t $defer #1 () in static CodableCGImage.export(_:to:as:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static OSSignposter.archiving);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v9, v10, v13, "CodableCGImage.export", v11, v12, 2u);
    MEMORY[0x193AC4820](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance CodableCGImage(__int128 *a1)
{
  v3 = *v1;
  Identifier = CGImageGetIdentifier();
  v5 = *(a1 + 2);
  v8 = *a1;
  v9 = v5;
  v10 = *(a1 + 24);
  ProtobufEncoder.archiveHost.getter(v11);
  v7[2] = v11;
  v7[3] = v3;
  specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(Identifier, closure #1 in CodableCGImage.encode(to:)partial apply, v7);
  return outlined destroy of AnyArchivedViewHost?(v11, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
}

uint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance CodableCGImage@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CodableRBDisplayListContents.base.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t CodableRBDisplayListContents.encode(to:)(__int128 *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = *(a1 + 2);
  v29 = *a1;
  v30 = v5;
  v31 = *(a1 + 24);
  v6 = ProtobufEncoder.archiveWriter.getter();
  if (v6)
  {
    v7 = v6;
    v27 = *a1;
    v9 = *(a1 + 2);
    v8 = *(a1 + 3);
    v10 = *(a1 + 4);
    v11 = type metadata accessor for RBDisplayListEncoderDelegate();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder];
    *v13 = v27;
    *(v13 + 2) = v9;
    *(v13 + 3) = v8;
    *(v13 + 4) = v10;
    v28.receiver = v12;
    v28.super_class = v11;

    v14 = objc_msgSendSuper2(&v28, sel_init);
    *&v29 = 0;
    v15 = [v4 encodedDataForDelegate:v14 error:&v29];

    v16 = v29;
    if (v15)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      outlined copy of Data._Representation(v17, v19);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v17, v19, &v29);
      v20 = v30;
      v21 = v29;
      v22 = specialized Collection<>.firstIndex(of:)(v29, *(&v29 + 1), v30, v7[4]);
      if ((v23 & 1) == 0 || (v29 = v21, LODWORD(v30) = v20, BYTE4(v30) = 0, outlined copy of Data._Representation(v17, v19), v22 = specialized ArchiveWriter.addAttachment(hash:from:)(&v29, v7, v17, v19), !v2))
      {
        if (v22 < 0)
        {
          __break(1u);
        }

        if (v22)
        {
          v24 = v22;
          ProtobufEncoder.encodeVarint(_:)(8uLL);
          ProtobufEncoder.encodeVarint(_:)(v24);
        }
      }

      return outlined consume of Data._Representation(v17, v19);
    }

    else
    {
      v26 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t RBDisplayListEncoderDelegate.encoder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 16);
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 24);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
}

id RBDisplayListEncoderDelegate.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder];
  *v5 = *a1;
  *(v5 + 2) = v4;
  *(v5 + 24) = *(a1 + 24);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t RBDisplayListEncoderDelegate.encoderSet.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);
  if (one-time initialization token for rbEncoderSetKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.rbEncoderSetKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for RBEncoderSet();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RBDisplayListEncoderDelegate.encodedData(image:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Data.Deallocator();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = *(v2 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  v9 = RBImageCopyCGImage();
  if (!v9)
  {
    lazy protocol witness table accessor for type CodableRBImage.Error and conformance CodableRBImage.Error();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v10 = v9;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v11 = v24;
  v12 = v26;
  result = swift_isUniquelyReferenced_nonNull_native();
  v28 = v6;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v15 + 1;
  *(v12 + 8 * v15 + 32) = v11;
  v26 = v12;
  if (!__OFADD__(v11, 1))
  {
    v24 = v11 + 1;
    Identifier = CGImageGetIdentifier();
    v21[1] = v23;
    v21[2] = v11 + 1;
    v21[3] = v25;
    v21[4] = v12;
    v21[5] = v27;
    ProtobufEncoder.archiveHost.getter(v22);
    MEMORY[0x1EEE9AC00](v17);
    v21[-2] = v22;
    v21[-1] = v10;
    specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(Identifier, closure #1 in CodableCGImage.encode(to:)partial apply, &v21[-4]);
    if (!v3)
    {
      outlined destroy of AnyArchivedViewHost?(v22, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
      ProtobufEncoder.endLengthDelimited()();

      swift_unknownObjectRelease();
      v19 = v23;
      if (v23)
      {
        v20 = v24;
        (*(v28 + 104))(v8, *MEMORY[0x1E6969000], v5);
        v19 = specialized Data.init(bytesNoCopy:count:deallocator:)(v19, v20, v8);
      }

      return v19;
    }

    outlined destroy of AnyArchivedViewHost?(v22, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
    swift_unknownObjectRelease();
    v18 = v23;
    v19 = v26;
LABEL_12:
    free(v18);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t RBDisplayListEncoderDelegate.encodedData(cgFont:)(CGFont *a1)
{
  v4 = type metadata accessor for Data.Deallocator();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);

  CodableCGFont.encode(to:)(&v13, a1);
  if (v2)
  {
    free(v13);
    v8 = v16;
  }

  else
  {
    if (v13)
    {
      v9 = v14;
      v10 = v13;
      (*(v5 + 104))(v7, *MEMORY[0x1E6969000], v4);
      v8 = specialized Data.init(bytesNoCopy:count:deallocator:)(v10, v9, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

Swift::Bool __swiftcall RBDisplayListEncoderDelegate.shouldEncodeFontSubset(cgFont:)(CGFontRef cgFont)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 16);
  v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder);
  v6 = v2;
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 24);
  ProtobufEncoder.archiveOptions.getter(v4);
  return (v4[0] & 0x14) != 4;
}

uint64_t RBDisplayListDecoderDelegate.decoder.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder);
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 32);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 40);
  v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 48);
  v7 = *v2;
  v6 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  v8 = v7;
}

id RBDisplayListDecoderDelegate.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder];
  *v7 = *a1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v5;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = v6;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t lazy protocol witness table accessor for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error()
{
  result = lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error;
  if (!lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error;
  if (!lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error);
  }

  return result;
}

void RBDisplayListDecoderDelegate.decodedImageContents(data:type:)(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  outlined copy of Data._Representation(a1, a2);
  ProtobufDecoder.init(_:)(a1, a2, v13);
  v8 = *(v3 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 48);

  v13[6].super.isa = v8;
  v9 = specialized CodableRBImage.init(from:)(v13);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!v9)
  {
    lazy protocol witness table accessor for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error();
    swift_allocError();
    swift_willThrow();
LABEL_2:
    isa = v13[0].super.isa;

    return;
  }

  *a3 = v10;
  v12 = v13[0].super.isa;
}

uint64_t RBDisplayListDecoderDelegate.decodedCGFont(data:)(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  ProtobufDecoder.init(_:)(a1, a2, v9);
  v5 = *(v2 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 48);

  v9[6].super.isa = v5;
  v6 = specialized CodableCGFont.init(from:)(v9);
  isa = v9[0].super.isa;

  return v6;
}

id RBDisplayListDecoderDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t type metadata accessor for RBEncoderSet()
{
  result = lazy cache variable for type metadata for RBEncoderSet;
  if (!lazy cache variable for type metadata for RBEncoderSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBEncoderSet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableRBImage.Error and conformance CodableRBImage.Error()
{
  result = lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error;
  if (!lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error;
  if (!lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error);
  }

  return result;
}

char *specialized CodableRBImage.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
LABEL_41:
    a1[3] = 0;
LABEL_42:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    v6 = swift_allocError();
    swift_willThrow();
    return v6;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = a1[4];
      if (v4 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v4)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_44;
    }

    if (v7 < 8)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_44:

      return v6;
    }

LABEL_11:
    v9 = v7 & 7;
    if ((v7 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((v7 & 7) > 1)
    {
      if (v9 == 2)
      {
        v19 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_44;
        }

        if (v19 < 0)
        {
          goto LABEL_51;
        }

        v18 = a1[1] + v19;
        if (v5 < v18)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_43;
        }

        v18 = a1[1] + 4;
        if (v5 < v18)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if ((v7 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_44;
        }

        goto LABEL_4;
      }

      if (v9 != 1)
      {
        goto LABEL_43;
      }

      v18 = a1[1] + 8;
      if (v5 < v18)
      {
        goto LABEL_43;
      }
    }

    a1[1] = v18;
LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      a1[3] = 0;
      if (!v6)
      {
        goto LABEL_42;
      }

      return v6;
    }
  }

  if (v9 != 2)
  {
    goto LABEL_43;
  }

  v2 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v11 + 1;
  *&v2[8 * v11 + 32] = v5;
  a1[5] = v2;
  v12 = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    goto LABEL_44;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = a1[1] + v12;
    if (v5 < v13)
    {
      goto LABEL_43;
    }

    a1[2] = v13;
    v14 = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
    v15 = a1[5];
    if (!*(v15 + 2))
    {
      goto LABEL_50;
    }

    v2 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = *(v15 + 2);
      if (!v16)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v16 = *(v15 + 2);
      if (!v16)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v17 = v16 - 1;
    v5 = *&v15[8 * v17 + 32];
    *(v15 + 2) = v17;

    a1[5] = v15;
    a1[2] = v5;
    v6 = v2;
    goto LABEL_4;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v23 = result;
  v24 = *(result + 2);
  if (v24)
  {
    v21 = v24 - 1;
    v22 = *&result[8 * v21 + 32];
    *(result + 2) = v21;

    a1[5] = v23;
    a1[2] = v22;
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t specialized static CodableCGImage.export(_:to:as:)(CGImage *a1, CGDataConsumer *a2, uint64_t a3)
{
  v58 = a2;
  v5 = type metadata accessor for OSSignpostID();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v15, static OSSignposter.archiving);
  (*(v12 + 16))(v14, a3, v11);
  static OSSignpostID.exclusive.getter();
  v16 = OSSignposter.logHandle.getter();
  v55 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = swift_slowAlloc();
    v54 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v53 = a3;
    v52 = v19;
    v59 = v19;
    *v18 = 136315138;
    v20 = UTType.identifier.getter();
    v22 = v10;
    v23 = v7;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v59);

    *(v18 + 4) = v24;
    v7 = v23;
    v10 = v22;
    (*(v12 + 8))(v14, v11);
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v16, v55, v25, "CodableCGImage.export", "typeIdentifier=%{name=typeIdentifier}s", v18, 0xCu);
    v26 = v52;
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x193AC4820](v26, -1, -1);
    v27 = v18;
    a1 = v54;
    MEMORY[0x193AC4820](v27, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v29 = v56;
  v28 = v57;
  (*(v56 + 16))(v7, v10, v57);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v29 + 8))(v10, v28);
  v30 = UTType.identifier.getter();
  v31 = MEMORY[0x193ABEC20](v30);

  CopyForImageIODestination = _CGImageCreateCopyForImageIODestination(a1);
  if (!CopyForImageIODestination)
  {
    CopyForImageIODestination = a1;
  }

  v33 = CGImageCopySourceData();
  if (v33)
  {
    v34 = v33;
    type metadata accessor for AnyArchivedViewHost?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, Any)>, type metadata accessor for (CFStringRef, Any), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDAB4C0;
    v36 = *MEMORY[0x1E696E118];
    *(inited + 32) = *MEMORY[0x1E696E118];
    type metadata accessor for CFStringRef(0);
    *(inited + 40) = v31;
    v37 = *MEMORY[0x1E696E040];
    *(inited + 64) = v38;
    *(inited + 72) = v37;
    *(inited + 104) = MEMORY[0x1E69E6370];
    *(inited + 80) = 1;
    v39 = v36;
    v40 = v31;
    v41 = v37;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    type metadata accessor for (CFStringRef, Any)();
    swift_arrayDestroy();
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v42.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v43 = CGImageSourceCreateWithData(v34, v42.super.isa);
    if (v43)
    {
      v44 = v43;
      v45 = CGImageSourceGetType(v43);
      if (v45)
      {
        v46 = v45;
        if (CFEqual(v45, v40))
        {
          v47 = v34;
          CFDataGetBytePtr(v47);
          CFDataGetLength(v47);

          CGDataConsumerPutBytes();
LABEL_19:

          $defer #1 () in static CodableCGImage.export(_:to:as:)();
        }
      }

      else
      {
        v46 = v44;
      }
    }
  }

  v48 = CGImageDestinationCreateWithDataConsumer(v58, v31, 1uLL, 0);
  if (v48)
  {
    v46 = v48;
    CGImageDestinationAddImage(v48, CopyForImageIODestination, 0);
    CGImageDestinationFinalize(v46);
    v42.super.isa = v31;
    v44 = CopyForImageIODestination;
    goto LABEL_19;
  }

  lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
  swift_allocError();
  *v50 = 0;
  swift_willThrow();

  $defer #1 () in static CodableCGImage.export(_:to:as:)();
}

uint64_t specialized RBDisplayListEncoderDelegate.encodedFontData(data:cgFont:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Data.Deallocator();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = *(v2 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);

  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v9 = v19;
  v10 = v21;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  v21 = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = v9 + 1;
    Data.encode(to:)(&v18, a1, a2);
    if (v3)
    {
      free(v18);
      v14 = v21;
    }

    else
    {
      ProtobufEncoder.endLengthDelimited()();
      v15 = v18;
      if (v18)
      {
        v16 = v19;
        (*(v23 + 104))(v8, *MEMORY[0x1E6969000], v6);
        v14 = specialized Data.init(bytesNoCopy:count:deallocator:)(v15, v16, v8);
      }

      else
      {
        v14 = 0;
      }
    }

    return v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error()
{
  result = lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error;
  if (!lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error;
  if (!lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:)()
{
  result = lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:);
  if (!lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:);
  if (!lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:));
  }

  return result;
}

uint64_t outlined init with copy of AnyArchivedViewHost?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyArchivedViewHost?(0, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyArchivedViewHost?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for AnyArchivedViewHost?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for AnyArchivedViewHost?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static CGImageRef.render(size:scale:environment:options:renderer:)(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v42 = a1[1];
  v43 = *a1;
  v10 = *a2;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = *(a2 + 5);
  v14 = a2[2];
  v15 = *(a2 + 12);
  if ((v14 & 1) != 0 && [objc_opt_self() sharedDefaultDevice])
  {
    v41 = swift_unknownObjectRetain();
  }

  else
  {
    v41 = [objc_opt_self() sharedDevice];
  }

  type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>();
  inited = swift_initStackObject();
  v17 = *MEMORY[0x1E69C71B8];
  *(inited + 32) = *MEMORY[0x1E69C71B8];
  v18 = MEMORY[0x1E69E7DE0];
  *(inited + 16) = xmmword_18DDACA80;
  *(inited + 40) = a7;
  v19 = *MEMORY[0x1E69C7198];
  *(inited + 64) = v18;
  *(inited + 72) = v19;
  LODWORD(aBlock) = v10;
  BYTE4(aBlock) = v11;
  BYTE5(aBlock) = v13;
  DWORD2(aBlock) = v14;
  BYTE12(aBlock) = v15;
  v20 = RasterizationOptions.resolvedColorMode.getter();
  v21 = MEMORY[0x1E69E72F0];
  *(inited + 80) = v20;
  v22 = *MEMORY[0x1E69C71A8];
  *(inited + 104) = v21;
  *(inited + 112) = v22;
  v23 = MEMORY[0x1E69E6370];
  *(inited + 120) = (v14 & 2) != 0;
  v24 = *MEMORY[0x1E69C7188];
  *(inited + 144) = v23;
  *(inited + 152) = v24;
  *(inited + 184) = v21;
  *(inited + 160) = 1;
  v25 = v17;
  v26 = v19;
  v27 = v22;
  v28 = v24;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (RBImageRendererProperty, Any)();
  swift_arrayDestroy();
  v30 = *MEMORY[0x1E69C71C0];
  v31 = dword_18DDEDA20[v12];
  v46 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = v31;
  outlined init with take of Any(&aBlock, v50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v29;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v30, isUniquelyReferenced_nonNull_native);
  type metadata accessor for RBImageRendererProperty(0);
  lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = swift_allocObject();
  v34[2] = v43;
  v34[3] = v42;
  v34[4] = a3;
  v34[5] = a4;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:);
  *(v35 + 24) = v34;
  v47 = _sSo13RBDisplayListCIgg_ABIegg_TRTA_0;
  v48 = v35;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v45 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v46 = &block_descriptor_26;
  v36 = _Block_copy(&aBlock);

  v37 = [v41 renderImageInRect:isa options:v36 renderer:{0.0, 0.0, a5, a6}];
  swift_unknownObjectRelease();
  _Block_release(v36);
  swift_unknownObjectRelease();

  LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

  if ((isa & 1) == 0)
  {
    return v37;
  }

  __break(1u);
  return result;
}

uint64_t Image.init(size:label:opaque:colorMode:renderer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v18 = *a6;
  if (one-time initialization token for defaultFlags != -1)
  {
    v23 = a5;
    swift_once();
    a5 = v23;
  }

  if (a5)
  {
    v19 = static RasterizationOptions.Flags.defaultFlags | 3;
  }

  else
  {
    v19 = (static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFC) + 1;
  }

  type metadata accessor for RenderedImageProviderBox();
  v20 = swift_allocObject();
  type metadata accessor for AtomicBuffer<RenderedImageProviderBox.CachedImage?>();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 24) = 0;
  *(v20 + 88) = a8;
  *(v20 + 96) = v21;
  *(v20 + 16) = a9;
  *(v20 + 24) = a10;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4;
  *(v20 + 64) = -1;
  *(v20 + 68) = v18;
  *(v20 + 69) = 3;
  *(v20 + 72) = v19;
  *(v20 + 76) = 3;
  *(v20 + 80) = a7;
  return v20;
}

uint64_t Image.init(size:label:options:renderer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v16 = *a5;
  v17 = *(a5 + 2);
  v18 = a5[2];
  v19 = *(a5 + 12);
  type metadata accessor for RenderedImageProviderBox();
  v20 = swift_allocObject();
  type metadata accessor for AtomicBuffer<RenderedImageProviderBox.CachedImage?>();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 24) = 0;
  *(v20 + 16) = a8;
  *(v20 + 24) = a9;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4;
  *(v20 + 64) = v16;
  *(v20 + 68) = v17;
  *(v20 + 72) = v18;
  *(v20 + 76) = v19;
  *(v20 + 80) = a6;
  *(v20 + 88) = a7;
  *(v20 + 96) = v21;
  return v20;
}

void RenderedImageProviderBox.resolve(in:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v7 = *a1;
  v8 = *(v2 + 96);

  os_unfair_lock_lock((v8 + 16));
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v113 = *(v8 + 40);
  outlined copy of AnyGestureInfo<A>.Value?<A>(v9, *&v10);
  os_unfair_lock_unlock((v8 + 16));

  v111 = v10;
  v112 = v7;
  v115 = v9;
  if (!v9)
  {
    type metadata accessor for PropertyList.Tracker();
    v3 = swift_allocObject();
    type metadata accessor for Text?(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = MEMORY[0x1E69E7CC8];
    *(v18 + 24) = 0;
    *(v18 + 32) = v19;
    v20 = MEMORY[0x1E69E7CC0];
    *(v18 + 40) = v19;
    *(v18 + 48) = v20;
    *(v18 + 56) = 0;
    *(v3 + 16) = v18;

    if (v7)
    {
LABEL_23:
      v21 = v7[8];
      goto LABEL_24;
    }

LABEL_7:
    v21 = 0;
LABEL_24:
    v30 = *(v3 + 16);

    os_unfair_lock_lock((v30 + 16));
    *(v30 + 24) = v21;
    os_unfair_lock_unlock((v30 + 16));

    Height = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v7);

    v31 = *(v109 + 64);
    v32 = *(v109 + 68);
    v33 = *(v109 + 69);
    v34 = *(v109 + 72);
    v35 = *(v109 + 76);
    *&aBlock = v7;
    *(&aBlock + 1) = v3;
    LOBYTE(v149) = v33;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v149, &v121);
    v36 = v121;
    Width = *(v109 + 16);
    v37 = *(v109 + 24);
    v107 = *(v109 + 80);
    v105 = v121;
    if ((v34 & 1) != 0 && [objc_opt_self() sharedDefaultDevice])
    {
      v38 = v35;
      v104 = swift_unknownObjectRetain();
      v106 = v104;
    }

    else
    {
      v38 = v35;
      v104 = [objc_opt_self() sharedDevice];
      v106 = 0;
    }

    type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>();
    v39 = swift_allocObject();
    v40 = *MEMORY[0x1E69C71B8];
    *(v39 + 32) = *MEMORY[0x1E69C71B8];
    v41 = MEMORY[0x1E69E7DE0];
    *(v39 + 16) = xmmword_18DDACA80;
    *(v39 + 40) = Height;
    v42 = *MEMORY[0x1E69C7198];
    *(v39 + 64) = v41;
    *(v39 + 72) = v42;
    LODWORD(aBlock) = v31;
    BYTE4(aBlock) = v32;
    BYTE5(aBlock) = v36;
    DWORD2(aBlock) = v34;
    BYTE12(aBlock) = v38;
    v43 = RasterizationOptions.resolvedColorMode.getter();
    v44 = MEMORY[0x1E69E72F0];
    *(v39 + 80) = v43;
    v45 = *MEMORY[0x1E69C71A8];
    *(v39 + 104) = v44;
    *(v39 + 112) = v45;
    v46 = MEMORY[0x1E69E6370];
    *(v39 + 120) = (v34 & 2) != 0;
    v17 = *MEMORY[0x1E69C7188];
    *(v39 + 144) = v46;
    *(v39 + 152) = v17;
    *(v39 + 184) = v44;
    *(v39 + 160) = 1;
    v47 = v40;
    v48 = v42;
    v49 = v45;
    v50 = v17;
    v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(v39);
    swift_setDeallocating();
    type metadata accessor for (RBImageRendererProperty, Any)();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v52 = *MEMORY[0x1E69C71C0];
    v53 = dword_18DDEDA20[v105];
    v140 = MEMORY[0x1E69E6448];
    LODWORD(aBlock) = v53;
    outlined init with take of Any(&aBlock, &v121);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v121, v52, isUniquelyReferenced_nonNull_native);
    type metadata accessor for RBImageRendererProperty(0);
    lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v4 = swift_allocObject();
    *(v4 + 16) = v112;
    *(v4 + 24) = v3;
    *(v4 + 32) = v107;
    v10 = COERCE_DOUBLE(swift_allocObject());
    *(*&v10 + 16) = closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:)partial apply;
    *(*&v10 + 24) = v4;
    v141 = thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ()partial apply;
    v142 = v10;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v139 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
    v140 = COERCE_DOUBLE(&block_descriptor_22_0);
    v15 = _Block_copy(&aBlock);

    v55 = COERCE_DOUBLE([v104 renderImageInRect:isa options:v15 renderer:{0.0, 0.0, Width, v37}]);
    swift_unknownObjectRelease();
    _Block_release(v15);
    swift_unknownObjectRelease();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_49;
    }

    if (v55 == 0.0)
    {

      v58 = 0;
      v57 = 0.0;
    }

    else
    {
      v57 = Height;
      v58 = v3;
    }

    outlined copy of AnyGestureInfo<A>.Value?<A>(v58, *&v55);
    outlined consume of AnyGestureInfo<()>.Value?(v115, *&v111);
    v59 = *(v109 + 96);
    outlined copy of AnyGestureInfo<A>.Value?<A>(v58, *&v55);

    os_unfair_lock_lock((v59 + 16));
    v60 = *(v59 + 24);
    v61 = *(v59 + 32);
    *(v59 + 24) = v58;
    *(v59 + 32) = v55;
    *(v59 + 40) = v57;
    outlined consume of AnyGestureInfo<()>.Value?(v60, v61);
    os_unfair_lock_unlock((v59 + 16));

    outlined consume of AnyGestureInfo<()>.Value?(v58, *&v55);

    v17 = v58;
    v10 = v55;
    v113 = *&v57;
    if (v58)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v11 = v9[2];

  os_unfair_lock_lock((v11 + 16));
  v13 = *(v11 + 24);
  v12 = *(v11 + 32);
  isa = *(v11 + 40);
  v15 = *(v11 + 48);
  v16 = *(v11 + 56);

  os_unfair_lock_unlock((v11 + 16));

  if (v16)
  {
    goto LABEL_15;
  }

  if (v112)
  {
    if (*(v112 + 64) == v13)
    {
LABEL_5:

      v17 = v115;
LABEL_33:
      v62 = *&v10;
      outlined copy of AnyGestureInfo<A>.Value?<A>(v17, *&v10);
      Width = CGImageGetWidth(v62);
      Height = CGImageGetHeight(v62);
      v4 = *v108;
      v15 = v108[1];
      if (v15)
      {
        v63 = *(v17 + 16);

        os_unfair_lock_lock((v63 + 16));
        v64 = *(v63 + 32);
        v116 = v17;
        v65 = *&v10;
        v66 = *(v63 + 40);
        v67 = *(v63 + 48);
        v68 = *(v63 + 56);
        *&aBlock = *(v63 + 24);
        *(&aBlock + 1) = v64;
        v139 = v66;
        v140 = v67;
        LOBYTE(v141) = v68;
        v69 = v15[2];

        os_unfair_lock_lock(v69 + 4);
        TrackerData.formUnion(_:)(&aBlock);

        os_unfair_lock_unlock(v69 + 4);

        os_unfair_lock_unlock((v63 + 16));

        v70 = 0;
        v104 = v113;
        v111 = *&v65;
        v3 = v65;
        v17 = v116;
      }

      else
      {

        v70 = 0;
        v104 = v113;
        v111 = v10;
        v3 = *&v10;
      }

      goto LABEL_38;
    }
  }

  else if (!v13)
  {
    goto LABEL_5;
  }

  if ((compare(_:against:)(v12, v112) & 1) == 0 || (compare(_:against:)(isa, v112) & 1) == 0)
  {
LABEL_15:

    v25 = *(v115 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v25 + 16));
    *(v25 + 24) = 0;
    if (*(*(v25 + 32) + 16))
    {
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *(v25 + 32);
      *(v25 + 32) = 0x8000000000000000;
      type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>();
      _NativeDictionary.removeAll(isUnique:)(v26);
      *(v25 + 32) = aBlock;
    }

    if (*(*(v25 + 40) + 16))
    {
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *(v25 + 40);
      *(v25 + 40) = 0x8000000000000000;
      type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>();
      _NativeDictionary.removeAll(isUnique:)(v27);
      *(v25 + 40) = aBlock;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v25 + 48);
    v7 = v112;
    if (v28)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v29 + 16));
    }

    else
    {
      *(v25 + 48) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15AnyTrackedValue33_D64CE6C88E7413721C59A34C0C940F2CLL_p_Tt1g5(0, *(v29 + 24) >> 1);
    }

    *(v25 + 56) = 0;
    os_unfair_lock_unlock((v25 + 16));

    v3 = v115;
    if (v112)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v22 = (v15 + 4);
  v17 = -v15[2];
  v23 = -1;
  while (v17 + v23 != -1)
  {
    if (++v23 >= v15[2])
    {
      goto LABEL_65;
    }

    v4 = v22 + 40;
    outlined init with copy of AnyTrackedValue(v22, &aBlock);
    v10 = v140;
    v3 = v141;
    __swift_project_boxed_opaque_existential_1(&aBlock, *&v140);
    v24 = (*(v3 + 16))(v112, COERCE_DOUBLE(*&v10), v3);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v22 = v4;
    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = v111;
  v17 = v115;
  if (v115)
  {
    goto LABEL_33;
  }

LABEL_37:
  v111 = v10;
  v3 = 0;
  v4 = *v108;
  v15 = v108[1];
  v70 = -1;
  v104 = 0x3FF0000000000000;
  Height = 0.0;
  Width = 0.0;
LABEL_38:
  v10 = COERCE_DOUBLE(v137);
  *&aBlock = v4;
  *(&aBlock + 1) = v15;
  LOBYTE(v121) = 2;
  outlined copy of GraphicsImage.Contents?(v3, v70);

  v71 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v121);

  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  if (v71)
  {
    isa = 0x3F8000003F800000;
  }

  else
  {
    isa = 0;
  }

  if (v71)
  {
    v72 = 2143289344;
  }

  else
  {
    v72 = 0;
  }

  LODWORD(v108) = v72;
  LOBYTE(v107) = (v71 & 1) == 0;
  v146 = v107;
  v106 = v70;
  v105 = v3;
  if (v15)
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v4);
  }

  else
  {
    aBlock = v4;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(&aBlock);
  }

  v74 = v70;
  if ((ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1) == 0)
  {
    goto LABEL_50;
  }

  v3 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    goto LABEL_66;
  }

LABEL_49:
  *&aBlock = v4;
  *(&aBlock + 1) = v15;
  (*(*static Color.foreground + 120))(&v149, &aBlock);
  v75 = v152;
  v76 = v150;
  v77 = v151 * 0.16;
  *(v3 + 16) = v149;
  *(v3 + 24) = v76;
  *(v3 + 28) = v77;
  *(v3 + 32) = v75;
  outlined consume of GraphicsImage.Contents?(v105, v106);
  v74 = 4;
LABEL_50:
  *&aBlock = v3;
  BYTE8(aBlock) = v74;
  v139 = v104;
  v140 = Width;
  v141 = *&Height;
  LOBYTE(v142) = 0;
  *(*&v10 + 156) = isa;
  v114 = isa;
  *(*&v10 + 164) = isa;
  v143 = v108;
  v144 = v107;
  *(*&v10 + 184) = 0u;
  *(*&v10 + 200) = 0u;
  v145 = 65794;
  v78 = *(v109 + 32);
  v79 = *(v109 + 40);
  v81 = *(v109 + 48);
  v80 = *(v109 + 56);
  v82 = *(*&v10 + 128);
  **&v10 = *(*&v10 + 112);
  *(*&v10 + 16) = v82;
  v83 = *(*&v10 + 144);
  v84 = *(*&v10 + 160);
  *(*&v10 + 92) = *(*&v10 + 204);
  v85 = *(*&v10 + 192);
  *(*&v10 + 64) = *(*&v10 + 176);
  *(*&v10 + 80) = v85;
  *(*&v10 + 32) = v83;
  *(*&v10 + 48) = v84;
  outlined init with copy of GraphicsImage(&aBlock, &v121);
  v110 = v78;
  outlined copy of Text?(v78, v79, v81, v80);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  v117 = v17;
  if (BYTE8(aBlock) == 2)
  {
    v88 = *(aBlock + 32);
    v89 = v74;
    v90 = *(aBlock + 48);
    v91 = *(aBlock + 16);
    outlined copy of Image.Location(v88);
    v92 = v90;
    v74 = v89;
    v93 = v104;
    v102 = v92;
    outlined copy of Image.Location(v88);
    v94 = [v91 styleMask];
    *&v121 = v88;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v94, &v121, &v118);

    outlined consume of Image.Location(v88);
    outlined consume of GraphicsImage.Contents?(v105, v106);

    v95 = v118;
    v87 = v119;
    v86 = v120 & 0xFD;
  }

  else
  {
    if (BYTE8(aBlock) == 255)
    {
      outlined consume of GraphicsImage.Contents?(v105, v106);

      v86 = 0;
      v87 = 0;
    }

    else
    {
      v87 = (v144 & 1) == 0;
      outlined consume of GraphicsImage.Contents?(v105, v106);

      v86 = 0;
    }

    v95 = 0;
    v93 = v104;
  }

  v136 = 1;
  v96 = v81 & 1;
  if (!v80)
  {
    v96 = 0x1FFFFFFFELL;
  }

  v97 = *(*&v10 + 80);
  if (v80)
  {
    v98 = v79;
  }

  else
  {
    v98 = 0;
  }

  v99 = v110;
  if (!v80)
  {
    v99 = 0;
  }

  *(a2 + 64) = *(*&v10 + 64);
  *(a2 + 80) = v97;
  *(a2 + 96) = *(*&v10 + 96);
  v100 = *(*&v10 + 16);
  *a2 = **&v10;
  *(a2 + 16) = v100;
  v101 = *(*&v10 + 48);
  *(a2 + 32) = *(*&v10 + 32);
  *(a2 + 48) = v101;
  *(a2 + 112) = v99;
  *(a2 + 120) = v98;
  *(a2 + 128) = v96;
  *(a2 + 136) = v80;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = v80 == 0;
  *(a2 + 161) = 3;
  *(a2 + 164) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v95;
  *(a2 + 184) = v87;
  *(a2 + 186) = v86;
  *&v121 = v3;
  BYTE8(v121) = v74;
  *(&v121 + 9) = *(*&v10 + 241);
  HIDWORD(v121) = *(*&v10 + 244);
  v122 = v93;
  v123 = Width;
  v124 = Height;
  v125 = 0;
  v127 = v148;
  v126 = v147;
  v128 = v114;
  v129 = v114;
  v130 = v108;
  v131 = v107;
  *&v132[3] = *(*&v10 + 234);
  *v132 = *(*&v10 + 231);
  v133 = 0u;
  v134 = 0u;
  v135 = 65794;
  outlined destroy of GraphicsImage(&v121);
  outlined consume of AnyGestureInfo<()>.Value?(v117, *&v111);
}

uint64_t RenderedImageProviderBox.isEqual(to:)()
{
  v1 = v0;
  v36 = *MEMORY[0x1E69E9840];
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(v0 + 16) != *(result + 16) || *(v0 + 24) != *(result + 24))
    {
      return 0;
    }

    v4 = *(v0 + 56);
    v5 = *(result + 56);
    if (v4)
    {
      if (v5)
      {
        v6 = *(v0 + 32);
        v8 = *(result + 32);
        v7 = *(result + 40);
        v9 = *(result + 48);
        if (*(v1 + 48))
        {
          if (v9)
          {
            v31 = result;
            v10 = *(*v6 + 96);

            outlined copy of Text?(v8, v7, v9, v5);
            outlined copy of Text.Storage(v8, v7, 1);
            v11 = v10(v8);
            outlined consume of Text.Storage(v8, v7, 1);
            if (v11)
            {
LABEL_27:
              v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v4, v5);
              outlined consume of Text.Storage(v8, v7, v9 & 1);

              if ((v18 & 1) == 0)
              {
LABEL_30:

                return 0;
              }

LABEL_28:
              v19 = *(v1 + 68);
              v20 = *(v1 + 72);
              v21 = *(v1 + 76);
              LODWORD(v34) = *(v1 + 64);
              WORD2(v34) = v19;
              LODWORD(v35) = v20;
              BYTE4(v35) = v21;
              LOWORD(v20) = *(v31 + 68);
              v22 = *(v31 + 72);
              v23 = *(v31 + 76);
              LODWORD(v32) = *(v31 + 64);
              WORD2(v32) = v20;
              LODWORD(v33) = v22;
              BYTE4(v33) = v23;
              if (specialized static RasterizationOptions.== infix(_:_:)(&v34, &v32))
              {
                v25 = *(v1 + 80);
                v24 = *(v1 + 88);
                v26 = swift_allocObject();
                *(v26 + 16) = v25;
                *(v26 + 24) = v24;
                v28 = *(v31 + 80);
                v27 = *(v31 + 88);
                v29 = swift_allocObject();
                *(v29 + 16) = v28;
                *(v29 + 24) = v27;
                v34 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
                v35 = v26;
                v32 = partial apply for specialized closure #1 in StatefulRule<>.update<A>(modify:create:);
                v33 = v29;
                type metadata accessor for (_:)();

                v30 = AGCompareValues();

                return v30;
              }

              goto LABEL_30;
            }

LABEL_24:
            outlined consume of Text.Storage(v8, v7, v9 & 1);

            goto LABEL_25;
          }

          outlined copy of Text?(*(result + 32), v7, v9, v5);
          v12 = v8;
          v13 = v7;
          v14 = 0;
        }

        else
        {
          if ((v9 & 1) == 0)
          {
            v31 = result;
            v15 = *(v1 + 40);
            if (v6 == v8 && v15 == v7)
            {

              outlined copy of Text?(v6, v15, v9, v5);
              goto LABEL_27;
            }

            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined copy of Text?(v8, v7, v9, v5);
            if (v17)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }

          outlined copy of Text?(*(result + 32), v7, v9, v5);
          v12 = v8;
          v13 = v7;
          v14 = 1;
        }

        outlined consume of Text.Storage(v12, v13, v14);
LABEL_25:
      }
    }

    else if (!v5)
    {
      v31 = result;

      goto LABEL_28;
    }

    return 0;
  }

  return result;
}

uint64_t RenderedImageProviderBox.__ivar_destroyer()
{
  outlined consume of Text?(v0[4], v0[5], v0[6], v0[7]);
}

uint64_t RenderedImageProviderBox.__deallocating_deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];

  outlined consume of Text?(v1, v2, v3, v4);

  return swift_deallocClassInstance();
}

void type metadata accessor for AtomicBuffer<RenderedImageProviderBox.CachedImage?>()
{
  if (!lazy cache variable for type metadata for AtomicBuffer<RenderedImageProviderBox.CachedImage?>)
  {
    type metadata accessor for Text?(255, &lazy cache variable for type metadata for RenderedImageProviderBox.CachedImage?, &unk_1F00AACC8, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AtomicBuffer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBuffer<RenderedImageProviderBox.CachedImage?>);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for RenderedImageProviderBox.CachedImage(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  v4 = v3;
  return a1;
}

void *assignWithCopy for RenderedImageProviderBox.CachedImage(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for RenderedImageProviderBox.CachedImage(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

BOOL Visibility.isVisible(automatic:)(uint64_t (*a1)(void), uint64_t a2, char a3)
{
  if (a3)
  {
    return a3 == 1;
  }

  else
  {
    return a1() & 1;
  }
}

SwiftUI::Visibility_optional __swiftcall Visibility.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

Swift::Int Visibility.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t CodableVisibility.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t lazy protocol witness table accessor for type Visibility and conformance Visibility()
{
  result = lazy protocol witness table cache variable for type Visibility and conformance Visibility;
  if (!lazy protocol witness table cache variable for type Visibility and conformance Visibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Visibility and conformance Visibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Visibility] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Visibility] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Visibility] and conformance [A])
  {
    type metadata accessor for [Visibility]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Visibility] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [Visibility]()
{
  if (!lazy cache variable for type metadata for [Visibility])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Visibility]);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for CodableVisibility(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
  result = lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CodableVisibility(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance EnableScrollPrefetchFeature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA020EnableScrollPrefetchF0V_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ScrollEdgeEffectTag.Feature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5();
  *a1 = result & 1;
  return result;
}

id static UserDefaultKeyedFeature.defaults.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

{
  return static UserDefaultKeyedFeature.defaults.getter();
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance DisableRemoteEffects@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA20DisableRemoteEffectsV_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance Semantics.UnifiedLayout@<X0>(_BYTE *a1@<X8>)
{
  result = specialized static Semantics.UnifiedLayout.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance UnifiedHitTestingFeature@<X0>(_BYTE *a1@<X8>)
{
  result = specialized static UnifiedHitTestingFeature.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ImprovedButtonGestureFeature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA026EndedGestureWaitsForActiveC0V_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance GestureContainerFeature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA016GestureContainerC0V_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance TapGestureUsesGesturesFrameworkFeature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA031TapGestureUsesGesturesFrameworkC0V_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _SemanticFeature<A>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = static Feature.defaultValue.getter(a1, WitnessTable);
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance Semantics.DismissPopsInNavigationSplitViewRoots@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v2 = static Semantics.DismissPopsInNavigationSplitViewRoots.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    result = dyld_program_minos_at_least();
  }

  else
  {
    result = dword_1ED53C520 >= v2;
  }

  *a1 = result;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance EnabledFeature@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v2 = static EnabledFeature.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v2;
  }

  *a1 = result;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance EnableLazyLayoutReuseLoggingAlways@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ContainerContextStylingFeatureEnabled@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA023ContainerContextStylingC7EnabledV_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t static UserDefaultKeyedFeature.test<A>(enabled:_:)(char a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 40))(a4, a6);
  v9 = *(a6 + 48);
  v10 = v9(a1 & 1, a4, a6);
  a2(v10);
  return v9(v13, a4, a6);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ResettableLazyLayoutsFeature@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  if (static ResettableLazyLayoutsFeature.isEnabledForTesting)
  {
    v3 = 1;
  }

  else
  {
    result = getenv("XCODE_RUNNING_FOR_PREVIEWS");
    if (result)
    {
      result = atoi(result);
      v3 = result != 0;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;
  return result;
}

uint64_t View.background<A, B>(_:in:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  return View.background<A, B>(_:in:fillStyle:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, type metadata accessor for _BackgroundShapeModifier, _BackgroundShapeModifier.init(style:shape:fillStyle:));
}

{
  return View.background<A, B>(_:in:fillStyle:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, type metadata accessor for _InsettableBackgroundShapeModifier, _InsettableBackgroundShapeModifier.init(style:shape:fillStyle:));
}

uint64_t _BackgroundModifier.alignment.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

BOOL static _BackgroundModifier<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for _BackgroundModifier() + 36);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t _BackgroundStyleModifier.init(style:ignoresSafeAreaEdges:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _BackgroundStyleModifier();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _BackgroundStyleModifier<A>.BackgroundInfo@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t _BackgroundShapeModifier.fillStyle.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t _BackgroundShapeModifier.fillStyle.setter(uint64_t result, uint64_t a2)
{
  v3 = (v2 + *(a2 + 56));
  *v3 = result & 1;
  v3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t static _BackgroundShapeModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = *a1;
  v17 = default argument 4 of static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(a5, a6, a7, a8);
  *&v20 = a7;
  *(&v20 + 1) = a8;
  static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(&v21, a2, 1, a3, a4, v17, v18, a5, a9, a6, v20);
}

uint64_t closure #4 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v6 = type metadata accessor for _BackgroundShapeModifier();
  v7 = *(v6 + 56);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for FillStyle, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12;
}

uint64_t _BackgroundShapeModifier.init(style:shape:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v17 = a8(0, v20);
  result = (*(*(a5 - 8) + 32))(a9 + *(v17 + 52), a2, a5);
  v19 = (a9 + *(v17 + 56));
  *v19 = a3 & 1;
  v19[1] = HIBYTE(a3) & 1;
  return result;
}

uint64_t View.background(ignoresSafeAreaEdges:)(char a1, uint64_t a2)
{
  v5 = a1;
  type metadata accessor for _BackgroundStyleModifier<BackgroundStyle>(0, &lazy cache variable for type metadata for _BackgroundStyleModifier<BackgroundStyle>, &type metadata for BackgroundStyle, &protocol witness table for BackgroundStyle, type metadata accessor for _BackgroundStyleModifier);
  return View.modifier<A>(_:)(&v5, a2, v3);
}

uint64_t View.background<A>(in:fillStyle:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return View.background<A>(in:fillStyle:)(a1, a2, a3, a4, a5, a6, _BackgroundShapeModifier.init(style:shape:fillStyle:), a7);
}

{
  return View.background<A>(in:fillStyle:)(a1, a2, a3, a4, a5, a6, _InsettableBackgroundShapeModifier.init(style:shape:fillStyle:), a7);
}

uint64_t View.background<A>(in:fillStyle:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, char *, void, ValueMetadata *, uint64_t, _UNKNOWN **, uint64_t)@<X7>, uint64_t a8@<X8>)
{
  v28 = a7;
  v29 = a5;
  v26[1] = a8;
  v27 = a3;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = &type metadata for BackgroundStyle;
  v30[1] = v16;
  v30[2] = &protocol witness table for BackgroundStyle;
  v30[3] = v17;
  v19 = v18(0, v30, v13);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v26 - v22;
  v24 = (*(v12 + 16))(v15, a1, a4, v21);
  v28(v24, v15, a2 & 0x101, &type metadata for BackgroundStyle, a4, &protocol witness table for BackgroundStyle, a6);
  View.modifier<A>(_:)(v23, v27, v19);
  return (*(v20 + 8))(v23, v19);
}

uint64_t View.background<A, B>(_:in:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(char *, char *, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v41 = a7;
  v34 = a8;
  v35 = a1;
  v39 = a9;
  v40 = a4;
  v37 = a3;
  v36 = a2;
  v38 = a12;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = v23;
  v42[1] = v24;
  v42[2] = v25;
  v42[3] = a10;
  v27 = v26(0, v42, v20);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v33 - v30;
  (*(v18 + 16))(v22, v35, a5, v29);
  (*(v14 + 16))(v16, v36, a6);
  v38(v22, v16, v37 & 0x101, a5, a6, v34, a10);
  View.modifier<A>(_:)(v31, v40, v27);
  return (*(v28 + 8))(v31, v27);
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA19_BackgroundModifierVyqd__GGAaBHPxAaBHD1__AgA0cG0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA5ShapeRd__r__lAA15ModifiedContentVyxAA011_BackgroundD8ModifierVyAA0G5StyleVqd__GGAaBHPxAaBHD1__AjA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void *))
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v5[0] = &type metadata for BackgroundStyle;
  v5[1] = v2;
  v5[2] = &protocol witness table for BackgroundStyle;
  v5[3] = v3;
  a2(255, v5);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA10ShapeStyleRd__AA0D0Rd_0_r_0_lAA15ModifiedContentVyxAA011_BackgroundD8ModifierVyqd__qd_0_GGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, _OWORD *))
{
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  a2(255, v4);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void *initializeBufferWithCopyOfBuffer for _BackgroundStyleModifier.BackgroundInfo.Value(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  v7 = *(v4 + 64);
  if ((v5 & 0x1000F8) == 0 && ((-49 - v6) | v6) - ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) - 32 >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    a1[2] = a2[2];
    v11 = a2 + 55;
    (*(v4 + 16))((a1 + 55) & 0xFFFFFFFFFFFFFFF8, (a2 + 55) & 0xFFFFFFFFFFFFFFF8);
    v12 = (((v11 | 7) + v7) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    v14 = ((((v3 + 55) | 7) + v7) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v14[1] = v13;
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

_OWORD *initializeWithTake for _BackgroundStyleModifier.BackgroundInfo.Value(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 55;
  v9 = a1 + v7 + 55;
  v10 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = v9 & v10;
  v12 = (a2 + v8) & v10;
  (*(v5 + 32))(v9 & v10, v12);
  v13 = *(v6 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  return a1;
}

_OWORD *assignWithTake for _BackgroundStyleModifier.BackgroundInfo.Value(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 55;
  v9 = a1 + v7 + 55;
  v10 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = v9 & v10;
  v12 = (a2 + v8) & v10;
  (*(v5 + 40))(v9 & v10, v12);
  v13 = *(v6 + 24) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  return a1;
}

uint64_t getEnumTagSinglePayload for _BackgroundStyleModifier.BackgroundInfo.Value(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 | 7;
  if (v5 >= a2)
  {
    return (*(v4 + 48))((a1 + v7 + 48) & ~v7);
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v6 + 55) & ~v7) + 32;
  v9 = a2 - v5;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((a1 + v7 + 48) & ~v7);
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v5 + (v10 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for _BackgroundStyleModifier.BackgroundInfo.Value(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 55) & ~(v7 | 7)) + 32;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) + ((v7 + 55) & ~(v7 | 7)) == -32)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (result + (v7 | 7) + 48) & ~(v7 | 7);

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) + ((v7 + 55) & ~(v7 | 7)) == -32)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) + ((v7 + 55) & ~(v7 | 7)) != -32)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, v8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

void type metadata accessor for _BackgroundStyleModifier<BackgroundStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for Attribute<_ShapeStyle_Pack>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void __swiftcall StrongHasher.init()(SwiftUI::StrongHasher *__return_ptr retstr)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, sizeof(v5));
  CC_SHA1_Init(&v5);
  v2 = *&v5.data[5];
  *&retstr->state.data[1] = *&v5.data[1];
  *&retstr->state.data[5] = v2;
  v3 = *&v5.data[13];
  *&retstr->state.data[9] = *&v5.data[9];
  *&retstr->state.data[13] = v3;
  v4 = *&v5.h4;
  *&retstr->state.h0 = *&v5.h0;
  *&retstr->state.h4 = v4;
}

double StrongHasher.finalize()@<D0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0uLL;
  v6 = 0;
  CC_SHA1_Final(&v5, v1);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

void StrongHash.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double static StrongHash.random()@<D0>(uint64_t a1@<X8>)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  return _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4UUIDV_Tt1g5(v4, a1);
}

double StrongHash.init<A>(encodable:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v7 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v3)
  {
    (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v8, v9, &v12);

    (*(*(a2 - 8) + 8))(a1, a2);
    v11 = v13;
    result = *&v12;
    *a3 = v12;
    *(a3 + 16) = v11;
  }

  return result;
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance ToggleState(CC_SHA1_CTX *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *v1;
  return CC_SHA1_Update(a1, v3, 8u);
}

uint64_t RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(a4 + 8))(a1, AssociatedTypeWitness, a4);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

const void *StrongHasher.combineBytes(_:count:)(const void *data, unint64_t len)
{
  if ((len & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(len))
  {
    return CC_SHA1_Update(v2, data, len);
  }

  __break(1u);
  return data;
}

uint64_t StrongHash.words.setter(uint64_t result, int a2, int a3, int a4, int a5)
{
  *v5 = result;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  return result;
}

uint64_t StrongHash.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  type metadata accessor for _ContiguousArrayStorage<CVarArg>();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18DDAB8A0;
  v7 = MEMORY[0x1E69E7668];
  v8 = MEMORY[0x1E69E76D0];
  *(v6 + 56) = MEMORY[0x1E69E7668];
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v4;
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 112) = v3;
  *(v6 + 176) = v7;
  *(v6 + 184) = v8;
  *(v6 + 152) = v2;
  *(v6 + 216) = v7;
  *(v6 + 224) = v8;
  *(v6 + 192) = v1;

  return String.init(format:_:)();
}

uint64_t StrongHash.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t StrongHash.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v13 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v9 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v5;
    a2[1] = v6;
    v10 = v13;
    a2[2] = v7;
    a2[3] = v10;
    a2[4] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int StrongHash.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StrongHash()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StrongHash()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance StrongHash(CC_SHA1_CTX *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 4);
  v4 = *v1;
  v5 = v2;
  return CC_SHA1_Update(a1, &v4, 0x14u);
}

Swift::Void __swiftcall StronglyHashableByBitPattern.hash(into:)(SwiftUI::StrongHasher *into)
{
  v5 = v1;
  v6 = into;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3, partial apply for closure #1 in StrongHasher.combineBitPattern<A>(_:), &v4, v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v2);
}

const void *closure #1 in StrongHasher.combineBitPattern<A>(_:)(const void *data, CC_SHA1_CTX *c, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    return CC_SHA1_Update(c, data, v3);
  }

  __break(1u);
  return data;
}

uint64_t StrongHasher.combineType(_:)()
{
  v3 = *MEMORY[0x1E69E9840];
  AGTypeGetSignature();
  return CC_SHA1_Update(v0, &v2, 0x14u);
}

Swift::Void __swiftcall String.hash(into:)(SwiftUI::StrongHasher *into)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = String.utf8CString.getter();
    v6 = *(v5 + 16);
    if (HIDWORD(v6))
    {
      __break(1u);
    }

    else
    {
      CC_SHA1_Update(&into->state, (v5 + 32), v6);
    }
  }
}

Swift::Void __swiftcall Data.hash(into:)(SwiftUI::StrongHasher *into)
{
  data[2] = *MEMORY[0x1E69E9840];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      data[0] = v1;
      LOWORD(data[1]) = v2;
      BYTE2(data[1]) = BYTE2(v2);
      BYTE3(data[1]) = BYTE3(v2);
      BYTE4(data[1]) = BYTE4(v2);
      v4 = BYTE6(v2);
      BYTE5(data[1]) = BYTE5(v2);
LABEL_27:
      CC_SHA1_Update(&into->state, data, v4);
      return;
    }

    v15 = v1;
    v16 = (v1 >> 32) - v1;
    if (v1 >> 32 >= v1)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
        MEMORY[0x193ABC2C0]();
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (!__OFSUB__(v15, v20))
      {
        v8 = (v15 - v20 + v19);
        v21 = MEMORY[0x193ABC2C0]();
        if (v8)
        {
          if (v21 >= v16)
          {
            LODWORD(v13) = v16;
          }

          else
          {
            LODWORD(v13) = v21;
          }

          v14 = into;
          goto LABEL_23;
        }

        goto LABEL_34;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (v3 != 2)
  {
    memset(data, 0, 14);
    v4 = 0;
    goto LABEL_27;
  }

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v9 = __DataStorage._offset.getter();
    if (__OFSUB__(v6, v9))
    {
      goto LABEL_32;
    }

    v8 += v6 - v9;
  }

  v10 = __OFSUB__(v7, v6);
  v11 = v7 - v6;
  if (v10)
  {
    goto LABEL_29;
  }

  v12 = MEMORY[0x193ABC2C0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  if (v13 > 0xFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  v14 = into;
LABEL_23:

  CC_SHA1_Update(&v14->state, v8, v13);
}

Swift::Void __swiftcall Bool.hash(into:)(SwiftUI::StrongHasher *into)
{
  v3 = *MEMORY[0x1E69E9840];
  data = v1;
  CC_SHA1_Update(&into->state, &data, 1u);
}

uint64_t Optional<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, v4, v7);
  v11 = *(v4 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    (*(a3 + 8))(a1, v11, a3);
    v6 = v12;
    v4 = v11;
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance Float(CC_SHA1_CTX *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  data = *v1;
  return CC_SHA1_Update(a1, &data, 4u);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance Double(CC_SHA1_CTX *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *v1;
  return CC_SHA1_Update(a1, v3, 8u);
}

CC_SHA1_CTX *protocol witness for StronglyHashable.hash(into:) in conformance UUID(CC_SHA1_CTX *result, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    return CC_SHA1_Update(result, v2, v3);
  }

  __break(1u);
  return result;
}

int64_t StrongHash.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v9 = a1[1];
  v10 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  a1[3] = v10;
  v14 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  a1[1] = v14;
  isUniquelyReferenced_nonNull_native = v9 + 5;
  if (__OFADD__(v14, 4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a1[2] >= isUniquelyReferenced_nonNull_native)
  {
    a1[1] = isUniquelyReferenced_nonNull_native;
    v15 = (*a1 + v14);
    goto LABEL_9;
  }

LABEL_24:
  v15 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_9:
  *v15 = v5;
  v16 = a1[1];
  v17 = v16 + 4;
  if (__OFADD__(v16, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v17)
  {
    a1[1] = v17;
    v18 = (*a1 + v16);
    goto LABEL_12;
  }

  v18 = ProtobufEncoder.growBufferSlow(to:)(v17);
LABEL_12:
  *v18 = v4;
  v19 = a1[1];
  v20 = v19 + 4;
  if (__OFADD__(v19, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v20)
  {
    a1[1] = v20;
    v21 = (*a1 + v19);
    goto LABEL_15;
  }

  v21 = ProtobufEncoder.growBufferSlow(to:)(v20);
LABEL_15:
  *v21 = v7;
  v22 = a1[1];
  v23 = v22 + 4;
  if (__OFADD__(v22, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v23)
  {
    a1[1] = v23;
    v24 = (*a1 + v22);
    goto LABEL_18;
  }

  v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
LABEL_18:
  *v24 = v6;
  v25 = a1[1];
  v26 = v25 + 4;
  if (__OFADD__(v25, 4))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (a1[2] < v26)
  {
LABEL_32:
    v27 = ProtobufEncoder.growBufferSlow(to:)(v26);
    goto LABEL_21;
  }

  a1[1] = v26;
  v27 = (*a1 + v25);
LABEL_21:
  *v27 = v8;
  return ProtobufEncoder.endLengthDelimited()();
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance UInt(CC_SHA1_CTX *a1)
{

  return sub_18D3C064C(a1);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance UInt8(CC_SHA1_CTX *a1)
{

  return protocol witness for StronglyHashable.hash(into:) in conformance Bool(a1);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance UInt16(CC_SHA1_CTX *a1)
{

  return sub_18D3C06A8(a1);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance UInt32(CC_SHA1_CTX *a1)
{

  return sub_18D3C0704(a1);
}

uint64_t View.contentShapeSecondaryView<A>(in:kind:fallbackKind:alignment:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v33 = a7;
  v31 = a4;
  v32 = a5;
  v30[1] = a9;
  v15 = *(a8 - 8);
  v30[0] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ContentShapeSecondaryViewModifier();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v30 - v21;
  v23 = *a2;
  v24 = *a3;
  (*(v15 + 16))(v17, a6, a8, v20);
  outlined init with copy of CoordinateSpace(a1, &v35);
  *&v34 = v23;
  *(&v34 + 1) = v24;
  (*(v15 + 32))(v22, v17, a8);
  v25 = &v22[*(v18 + 36)];
  v26 = v35;
  *v25 = v34;
  *(v25 + 1) = v26;
  *(v25 + 2) = v36[0];
  *(v25 + 41) = *(v36 + 9);
  v27 = &v22[*(v18 + 40)];
  v28 = v32;
  *v27 = v31;
  *(v27 + 1) = v28;
  View.modifier<A>(_:)(v22, v33, v18);
  return (*(v19 + 8))(v22, v18);
}

__n128 ContentPathOptions.init(kind:fallbackKind:coordinateSpace:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *a1;
  *(a4 + 8) = v4;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  result = *(a3 + 25);
  *(a4 + 41) = result;
  return result;
}

uint64_t ContentShapeChild.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  v8 = a4;
  v83 = a3;
  v82 = a2;
  v81 = a1;
  v102 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(a4);
  v10 = type metadata accessor for ObservationTracking._AccessList();
  v85 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v71 - v15;
  type metadata accessor for ObservationTracking._AccessList?();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v78 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v71 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  v91 = AssociatedTypeWitness;
  v92 = v25;
  v80 = v26;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v90 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v88 = &v71 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v89 = &v71 - v32;
  v33 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v33 + 16))(v36, Value, a5);
  v95 = a5;
  v96 = a6;
  v97 = v36;
  v98 = v8;
  v99 = v9;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v87 = v33;
  v38 = static ObservationCenter._current;
  swift_beginAccess();
  v39 = pthread_getspecific(v38[2]);
  v40 = v10;
  if (!v39)
  {
    v41 = swift_slowAlloc();
    pthread_setspecific(v38[2], v41);
    v101 = type metadata accessor for ObservationCenter();
    *&v100 = v38[3];
    outlined init with take of Any(&v100, v41);

    v39 = v41;
    v40 = v10;
  }

  outlined init with copy of Any(v39, &v100);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v42 = v93;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v42 + 24) = v17;
    goto LABEL_9;
  }

  v44 = v21;
  v73 = CurrentAttribute;
  v77 = v36;
  swift_beginAccess();
  v76 = *(v42 + 24);
  *(v42 + 24) = MEMORY[0x1E69E7CC0];
  v45 = v85;
  v46 = (*(v85 + 56))(v21, 1, 1, v40);
  MEMORY[0x1EEE9AC00](v46);
  v10 = TupleTypeMetadata3;
  *(&v71 - 4) = TupleTypeMetadata3;
  *(&v71 - 3) = partial apply for closure #1 in ContentShapeChild.value.getter;
  *(&v71 - 2) = &v94;
  v47 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v21, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v71 - 6), v17, v47, v10, MEMORY[0x1E69E7288], &v93);
  v48 = v90 + 32;
  v75 = *(v90 + 32);
  v75(v88, v28, v10);
  v49 = v84;
  outlined init with take of ObservationTracking._AccessList?(v44, v84);
  v50 = v78;
  outlined init with copy of ObservationTracking._AccessList?(v49, v78);
  if ((*(v45 + 48))(v50, 1, v40) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v49);
    v51 = v50;
    v52 = v80;
    v54 = v91;
    v53 = v92;
    v33 = v87;
    goto LABEL_12;
  }

  v90 = v48;
  v21 = v72;
  v78 = *(v45 + 32);
  (v78)(v72, v50, v40);
  (*(v45 + 16))(v79, v21, v40);
  v17 = *(v42 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v42 + 24) = v17;
  v33 = v87;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v57 = v17[2];
  v56 = v17[3];
  if (v57 >= v56 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1, v17);
  }

  v17[2] = v57 + 1;
  v58 = v17 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v57;
  v45 = v85;
  (v78)(v58, v79, v40);
  *(v42 + 24) = v17;
  (*(v45 + 8))(v21, v40);
  v52 = v80;
  v54 = v91;
  v53 = v92;
  v51 = v84;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v51);
  v75(v89, v88, v10);
  v59 = *(v42 + 24);
  v60 = *(v59 + 16);
  if (v60)
  {
    v88 = a5;
    v61 = v74;
    v63 = *(v45 + 16);
    v62 = v45 + 16;
    v90 = v63;
    v64 = v59 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
    v65 = *(v62 + 56);
    v85 = v59;

    v66 = v73;
    do
    {
      (v90)(v61, v64, v40);
      swift_getTupleTypeMetadata3();
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v66, v61);
      (*(v62 - 8))(v61, v40);
      v64 += v65;
      --v60;
    }

    while (v60);

    a5 = v88;
    v54 = v91;
    v53 = v92;
    v33 = v87;
    v10 = TupleTypeMetadata3;
  }

  *(v42 + 24) = v76;

  v67 = *(v10 + 48);
  v68 = *(v10 + 64);
  v69 = v89;
  (*(*(v54 - 8) + 32))(v81, v89, v54);
  (*(*(v53 - 8) + 32))(v82, &v69[v67], v53);
  (*(*(v52 - 8) + 32))(v83, &v69[v68], v52);
  return (*(v33 + 8))(v77, a5);
}

uint64_t closure #1 in ContentShapeChild.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  Value = AGGraphGetValue();
  v7 = *(Value + 32);
  v8 = *(Value + 16);
  v20[0] = *Value;
  v20[1] = v8;
  v21 = v7;
  v9 = a4[7];
  outlined init with copy of Path(v20, v24);
  v9(v20, a3, a4);
  outlined destroy of Path(v20);
  v10 = AGGraphGetValue();
  v11 = *(v10 + 32);
  v12 = *(v10 + 16);
  v22[0] = *v10;
  v22[1] = v12;
  v23 = v11;
  v13 = a4[8];
  outlined init with copy of Path(v22, v24);
  v13(v22, a3, a4);
  outlined destroy of Path(v22);
  v14 = AGGraphGetValue();
  v15 = *(v14 + 32);
  v16 = *(v14 + 16);
  v24[0] = *v14;
  v24[1] = v16;
  v25 = v15;
  v17 = a4[9];
  outlined init with copy of Path(v24, v19);
  v17(v24, a3, a4);
  return outlined destroy of Path(v24);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ContentShapeChild<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v3 = *(*(TupleTypeMetadata3 - 8) + 56);

  return v3(a1, 1, 1, TupleTypeMetadata3);
}

uint64_t protocol witness for Rule.value.getter in conformance ContentShapeChild<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = a2 + *(TupleTypeMetadata3 + 48);
  v9 = a2 + *(TupleTypeMetadata3 + 64);

  return ContentShapeChild.value.getter(a2, v8, v9, v4, v6, v5);
}

uint64_t static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v62 = a5;
  v61 = a4;
  v64 = a3;
  v63 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v8 = a1[1];
  v76 = *a1;
  v9 = a1[2];
  v77 = v8;
  v78 = v9;
  v10 = *(a1 + 6);
  v11 = *(a1 + 14);
  v12 = *(a1 + 15);
  v14 = *(a1 + 16);
  v13 = *(a1 + 17);
  v15 = *(a1 + 18);
  v16 = *(a1 + 76);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v10))
  {
    v59 = v10;
    v60 = v11;
    v54 = v13;
    v56 = v16;
    v57 = a6;
    v17 = v61;
    type metadata accessor for ContentShapeSecondaryViewModifier();
    v18 = v62;
    AGGraphCreateOffsetAttribute2();
    AGGraphCreateOffsetAttribute2();
    AGGraphCreateOffsetAttribute2();
    AGGraphCreateOffsetAttribute2();
    v55 = v15;
    AGGraphCreateOffsetAttribute2();
    AGGraphCreateOffsetAttribute2();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v20 = *MEMORY[0x1E698D3F8];
    v52 = v12;
    v53 = v14;
    HIDWORD(v66) = v14;
    *&v67 = __PAIR64__(v20, OffsetAttribute2);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ContentShapePath and conformance ContentShapePath();
    v21 = Attribute.init<A>(body:value:flags:update:)();
    v22 = AGGraphCreateOffsetAttribute2();
    LODWORD(v66) = v22;
    v51 = v21;
    *(&v66 + 4) = __PAIR64__(v12, v21);
    MEMORY[0x1EEE9AC00](v22);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v58 = AssociatedTypeWitness;
    v47[2] = swift_getTupleTypeMetadata3();
    v48 = type metadata accessor for ContentShapeChild();
    WitnessTable = swift_getWitnessTable();
    v25 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v66, partial apply for closure #1 in Attribute.init<A>(_:), v47, v48, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    v27 = v65[0];
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v50 = v28 + 16;
    *(v28 + 20) = 1;
    v29 = swift_allocObject();
    *(v29 + 16) = v17;
    *(v29 + 24) = v18;
    *(v29 + 32) = v27;
    *(v29 + 40) = v63;
    *(v29 + 48) = v64;
    *(v29 + 56) = v28;

    closure #2 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(1);
    v30 = AGGraphCreateOffsetAttribute2();
    v31 = v30;
    if (v24 == &type metadata for EmptyView)
    {
      v33 = partial apply for closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:);
    }

    else
    {

      v32 = swift_allocObject();
      *(v32 + 16) = v17;
      *(v32 + 24) = v18;
      *(v32 + 32) = v27;
      *(v32 + 36) = v31;
      *(v32 + 40) = partial apply for closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:);
      *(v32 + 48) = v29;

      v33 = partial apply for closure #3 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:);
    }

    if (v58 == &type metadata for EmptyView)
    {
      v66 = v76;
      v67 = v77;
      v68 = v78;
      v69 = v59;
      v70 = v60;
      v71 = v52;
      v72 = v53;
      v73 = v54;
      v74 = v55;
      v75 = v56;
      v38 = (v33)(v65, v30, &v66);
    }

    else
    {
      v37 = v53;
      if (*(v58[-1].Description + 8))
      {
        closure #4 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(1);
      }

      v39 = AGGraphCreateOffsetAttribute2();
      v66 = v76;
      v67 = v77;
      v68 = v78;
      v69 = v59;
      v70 = v60;
      v71 = v52;
      v72 = v37;
      v73 = v54;
      v74 = v55;
      v75 = v56;
      v40 = v58;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      LOBYTE(v65[0]) = 0;
      v38 = makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(v39, v31, &v66, v33, 1, v40, AssociatedConformanceWitness, v65);
    }

    v42 = v65[0];
    v43 = v65[1];
    MEMORY[0x1EEE9AC00](v38);
    WitnessTable = v50;
    MEMORY[0x1EEE9AC00](v44);
    v47[0] = partial apply for closure #5 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:);
    v47[1] = v45;
    AGGraphMutateAttribute();

    v46 = v57;
    *v57 = v42;
    v46[1] = v43;
  }

  else
  {
    v34 = a1[1];
    v66 = *a1;
    v35 = a1[2];
    v67 = v34;
    v68 = v35;
    v69 = v10;
    v70 = v11;
    v71 = v12;
    v72 = v14;
    v73 = v13;
    v74 = v15;
    v75 = v16;
    return v63();
  }

  return result;
}

uint64_t closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a1[3];
  v40 = a1[2];
  v41 = v9;
  v42 = a1[4];
  v43 = *(a1 + 20);
  v10 = a1[1];
  v38 = *a1;
  v39 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64))
  {
    closure #1 in closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v21);
  v13 = v21;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v28 = v38;
  v29 = v39;
  v35 = v43;
  v16 = v40;
  LODWORD(v30) = 0;
  v20 = v13;
  v34[0] = v38;
  v34[1] = v39;
  v34[3] = v41;
  v34[4] = v42;
  v34[2] = v30;
  v24 = v30;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v22 = v38;
  v23 = v39;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v38, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  v18(&v20, &v22, partial apply for closure #2 in closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:), v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  outlined destroy of _ViewInputs(v36);
  LODWORD(v30) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t closure #1 in closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = *(TupleTypeMetadata3 + 64);
  v8[2] = TupleTypeMetadata3;
  v8[3] = AssociatedTypeWitness;
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v4, closure #1 in static PointerOffset.of(_:)partial apply, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t closure #2 in closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 16);
  v38 = *(a1 + 32);
  v39 = v7;
  v9 = *(a1 + 48);
  v40 = *(a1 + 64);
  v10 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v10;
  v33 = v38;
  v34 = v9;
  v35 = *(a1 + 64);
  v41 = *(a1 + 80);
  v36 = *(a1 + 80);
  v31 = v37[0];
  v32 = v8;
  v11 = v9;
  *&v23[0] = v9;
  v12 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
  outlined init with copy of _ViewInputs(v37, &v25);

  v14 = *(v11 + 2);
  if (v12 != v14)
  {
    if (v12 >= v14)
    {
      goto LABEL_11;
    }

    if (*&v11[16 * v12 + 32] == &type metadata for ContentShapePathData)
    {
LABEL_9:
      v21[2] = v33;
      v21[3] = v34;
      v21[4] = v35;
      v22 = v36;
      v21[0] = v31;
      v21[1] = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v25 = v31;
      v26 = v32;
      v16 = outlined init with copy of _ViewInputs(v21, v23);
      a2(v20, v16, &v25);
      v23[3] = v28;
      v23[4] = v29;
      v24 = v30;
      v23[0] = v25;
      v23[1] = v26;
      v23[2] = v27;
      outlined destroy of _ViewInputs(v23);
      v17 = v20[0];
      v19 = v20[1];
      v18 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA20ContentShapePathDataV_TtB5(v20[0]);
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v25 = v31;
      v26 = v32;
      outlined destroy of _ViewInputs(&v25);
      result = swift_beginAccess();
      *(a3 + 16) = v18;
      *(a3 + 20) = BYTE4(v18) & 1;
      *a4 = v17;
      a4[1] = v19;
      return result;
    }
  }

  if (v14 >= v12)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v14 >= *(v11 + 3) >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14 + 1, 1, v11);
      *&v34 = v11;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v12, v12, 1, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
    *&v34 = v11;
    goto LABEL_9;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t closure #2 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for ContentShapeSecondaryViewModifier();
  v3 = *(v2 + 40);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v7, &type metadata for Alignment, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #3 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, unsigned int a2@<W3>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64))
  {
    closure #1 in closure #3 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v10 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v10;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v11 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(OffsetAttribute2, a2, v14, a3, 0, AssociatedTypeWitness, AssociatedConformanceWitness, a4);
}

uint64_t closure #1 in closure #3 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = *(TupleTypeMetadata3 + 48);
  v8[2] = TupleTypeMetadata3;
  v8[3] = AssociatedTypeWitness;
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v4, closure #1 in static PointerOffset.of(_:)partial apply, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t closure #4 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6[2] = swift_getTupleTypeMetadata3();
  v6[3] = AssociatedTypeWitness;
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v6, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t dispatch thunk of ContentShapeModifier.background(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t dispatch thunk of ContentShapeModifier.overlay(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t dispatch thunk of ContentShapeModifier.effect(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t destroy for ContentPathOptions(uint64_t result)
{
  if (!*(result + 56))
  {
    return __swift_destroy_boxed_opaque_existential_1(result + 16);
  }

  return result;
}

_OWORD *initializeWithCopy for ContentPathOptions(_OWORD *result, uint64_t a2)
{
  *result = *a2;
  if (*(a2 + 56))
  {
    v2 = *(a2 + 32);
    result[1] = *(a2 + 16);
    result[2] = v2;
    *(result + 41) = *(a2 + 41);
  }

  else
  {
    v3 = *(a2 + 40);
    *(result + 40) = v3;
    v4 = result;
    (**(v3 - 8))((result + 1), a2 + 16);
    result = v4;
    *(v4 + 56) = 0;
  }

  return result;
}

uint64_t assignWithCopy for ContentPathOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 16);
    if (*(a2 + 56))
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v4;
      *(a1 + 32) = v5;
    }

    else
    {
      v6 = *(a2 + 40);
      *(a1 + 40) = v6;
      *(a1 + 48) = *(a2 + 48);
      (**(v6 - 8))(a1 + 16, a2 + 16);
      *(a1 + 56) = 0;
    }
  }

  return a1;
}

__n128 assignWithTake for ContentPathOptions(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 16);
    v5 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v5;
    result = *(a2 + 41);
    *(a1 + 41) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentPathOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentPathOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for ContentShapeSecondaryViewModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ContentShapeSecondaryViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 71) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = v3 + v5;
    v11 = a2 + v5;
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    if (*(v13 + 56))
    {
      v14 = *(v13 + 16);
      v15 = *(v13 + 32);
      *(v12 + 41) = *(v13 + 41);
      *(v12 + 16) = v14;
      *(v12 + 32) = v15;
    }

    else
    {
      v16 = *(v13 + 40);
      *(v12 + 40) = v16;
      *(v12 + 48) = *(v13 + 48);
      (**(v16 - 8))(v12 + 16, v13 + 16);
      *(v12 + 56) = 0;
    }

    *((v10 + 71) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 71) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  result = (*v3)();
  v5 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!*(v5 + 56))
  {

    return __swift_destroy_boxed_opaque_existential_1(v5 + 16);
  }

  return result;
}

uint64_t initializeWithCopy for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  if (*(v10 + 56))
  {
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    *(v9 + 41) = *(v10 + 41);
    *(v9 + 16) = v11;
    *(v9 + 32) = v12;
  }

  else
  {
    v13 = *(v10 + 40);
    *(v9 + 40) = v13;
    *(v9 + 48) = *(v10 + 48);
    (**(v13 - 8))(v9 + 16, v10 + 16);
    *(v9 + 56) = 0;
  }

  *((v7 + 71) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 71) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  if (v9 != v10)
  {
    outlined destroy of CoordinateSpace(v9 + 16);
    if (*(v10 + 56))
    {
      v11 = *(v10 + 16);
      v12 = *(v10 + 32);
      *(v9 + 41) = *(v10 + 41);
      *(v9 + 16) = v11;
      *(v9 + 32) = v12;
    }

    else
    {
      v13 = *(v10 + 40);
      *(v9 + 40) = v13;
      *(v9 + 48) = *(v10 + 48);
      (**(v13 - 8))(v9 + 16, v10 + 16);
      *(v9 + 56) = 0;
    }
  }

  v14 = ((v7 + 71) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v8 + 71) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  return a1;
}

uint64_t initializeWithTake for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = v10[1];
  v11 = v10[2];
  v13 = *v10;
  *(v9 + 41) = *(v10 + 41);
  v9[1] = v12;
  v9[2] = v11;
  *v9 = v13;
  *((v7 + 71) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 71) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  if (v9 != v10)
  {
    outlined destroy of CoordinateSpace(v9 + 16);
    v11 = *(v10 + 41);
    v12 = *(v10 + 32);
    *(v9 + 16) = *(v10 + 16);
    *(v9 + 32) = v12;
    *(v9 + 41) = v11;
  }

  v13 = ((v7 + 71) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 71) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v13[1] = v14[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentShapeSecondaryViewModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 71) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 > 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for ContentShapeSecondaryViewModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 71) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 71) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 71) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 71) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 71) & 0xFFFFFFFFFFFFFFF8) + 16);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFD)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFD)
    {
      result = 0.0;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *(v19 + 56) = 0;
      *v19 = a2 - 254;
    }

    else
    {
      *(v19 + 56) = -a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t partial apply for closure #5 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 4))
  {
    v5 = *MEMORY[0x1E698D3F8];
  }

  *(a1 + 20) = v5;
  return result;
}

int64_t EncodableAnimation.encodeAnimation(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 16))(a2, a3);
  if (v8)
  {
    return (*(*(a3 + 8) + 8))(a1, a2);
  }

  else
  {
    return ProtobufEncoder.messageField<A>(_:_:)(v7, v3, a2, *(a3 + 8));
  }
}

id withDelay(_:do:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v12[4] = _sIg_Ieg_TRTA_0;
  v12[5] = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v12[3] = &block_descriptor_27;
  v7 = _Block_copy(v12);
  v8 = objc_opt_self();

  v9 = [v8 timerWithTimeInterval:0 repeats:v7 block:a3];
  _Block_release(v7);

  v10 = [objc_opt_self() mainRunLoop];
  [v10 addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

  return v9;
}

uint64_t DynamicContentOffsetVisitor.offset.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DynamicContentOffsetVisitor.visit(view:traits:)(uint64_t a1, uint64_t *a2)
{
  *v2 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdJ0V_Tt0B5(0, 1, *a2);
  *(v2 + 8) = v3 & 1;
  return 0;
}

uint64_t instantiation function for generic protocol witness table for <> ForEach<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> ModifiedContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for ViewListVisitor.visit(view:traits:) in conformance DynamicContentOffsetVisitor(uint64_t a1, uint64_t *a2)
{
  *v2 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdJ0V_Tt0B5(0, 1, *a2);
  *(v2 + 8) = v3 & 1;
  return 0;
}

uint64_t PreferencesInputs.init(hostKeys:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = result;
  return result;
}

uint64_t PreferencesInputs.keys.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

__n128 _IgnoredByLayoutEffect.effectValue(size:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 24))(v5, *(a1 + 16));
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t _IgnoredByLayoutEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _IgnoredByLayoutEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*_IgnoredByLayoutEffect.animatableData.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  (*(v9 + 24))(v8, v9);
  return _IgnoredByLayoutEffect.animatableData.modify;
}

void _IgnoredByLayoutEffect.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    specialized _IgnoredByLayoutEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _IgnoredByLayoutEffect.animatableData.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _IgnoredByLayoutEffect<A>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _IgnoredByLayoutEffect.effectValue(size:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _IgnoredByLayoutEffect<A>(uint64_t a1, uint64_t a2)
{
  specialized _IgnoredByLayoutEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _IgnoredByLayoutEffect<A>(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  _IgnoredByLayoutEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _IgnoredByLayoutEffect<A>;
}