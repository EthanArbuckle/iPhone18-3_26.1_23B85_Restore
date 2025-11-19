uint64_t static DynamicView<>.makeID()@<X0>(uint64_t *a1@<X8>)
{
  result = AGMakeUniqueID();
  *a1 = result;
  return result;
}

id DynamicViewContainer.init(metadata:view:inputs:outputs:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a3[2];
  v19 = a3[3];
  v20 = a3[4];
  v21 = *(a3 + 20);
  v16 = *a3;
  v17 = a3[1];
  v9 = *a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a4[1];
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = type metadata accessor for DynamicViewContainer();
  *(a5 + v12[9]) = a2;
  v13 = a5 + v12[10];
  *(v13 + 32) = v18;
  *(v13 + 48) = v19;
  *(v13 + 64) = v20;
  *(v13 + 80) = v21;
  *v13 = v16;
  *(v13 + 16) = v17;
  v14 = (a5 + v12[11]);
  *v14 = v9;
  v14[1] = v11;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a5 + v12[12]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicViewContainer.Value.matches(type:id:)(uint64_t a1)
{
  if (*v1 == a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = *(v3 + 24);
    v7[2] = *(v3 + 16);
    v7[3] = v4;
    v7[4] = v1;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in implicit closure #1 in DynamicViewContainer.Value.matches(type:id:), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v5, &v8);
    v2 = (v8 == 2) | v8;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t closure #1 in implicit closure #1 in DynamicViewContainer.Value.matches(type:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v52 = a5;
  v53 = a2;
  v51 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v9;
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v42 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  (*(v8 + 16))(&v42 - v19, v51, AssociatedTypeWitness, v18);
  (*(v8 + 56))(v20, 0, 1, AssociatedTypeWitness);
  v44 = a4;
  v45 = a3;
  v21 = *(type metadata accessor for DynamicViewContainer.Value() + 36);
  v48 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v50 = v14;
  v23 = *(v14 + 16);
  v23(v13, v20, v10);
  v51 = v22;
  v24 = (v53 + v21);
  v53 = v10;
  v25 = v10;
  v26 = v13;
  v23(&v13[v22], v24, v25);
  v49 = v8;
  v27 = *(v8 + 48);
  if (v27(v13, 1, AssociatedTypeWitness) != 1)
  {
    v31 = v50;
    v32 = v46;
    v23(v46, v26, v53);
    v33 = v51;
    if (v27(&v26[v51], 1, AssociatedTypeWitness) != 1)
    {
      v34 = v49;
      v35 = v43;
      (*(v49 + 32))(v43, &v26[v33], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v36 = v32;
      v37 = AssociatedTypeWitness;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v34 + 8);
      v38(v35, v37);
      v39 = *(v31 + 8);
      v40 = v20;
      v41 = v53;
      v39(v40, v53);
      v38(v36, v37);
      result = (v39)(v26, v41);
      goto LABEL_8;
    }

    (*(v31 + 8))(v20, v53);
    (*(v49 + 8))(v32, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v28 = *(v50 + 8);
  v28(v20, v53);
  if (v27(&v13[v51], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    result = (*(v47 + 8))(v26, v48);
    v30 = 0;
    goto LABEL_8;
  }

  result = (v28)(v13, v53);
  v30 = 1;
LABEL_8:
  *v52 = v30 & 1;
  return result;
}

uint64_t DynamicViewContainer.Value.init(type:id:subgraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for DynamicViewContainer.Value();
  v8 = *(v7 + 36);
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 40)] = a3;
  return result;
}

uint64_t DynamicViewContainer.updateValue()(uint64_t a1)
{
  v2 = v1;
  v72 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = type metadata accessor for DynamicViewContainer.Value();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v56 - v10;
  v11 = type metadata accessor for Optional();
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v67 = a1;
  v22 = &v56 - v21;
  Value = AGGraphGetValue();
  (*(v16 + 16))(v19, Value, v5);
  v24 = *(v4 + 56);
  v66 = v2;
  v25 = v2;
  v26 = v6;
  v27 = v24(v22, v25, v5, v4);
  (*(v16 + 8))(v19, v5);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    (*(v7 + 16))(v15, OutputValue, v26);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v68 = v7;
  v30 = (*(v7 + 56))(v15, v29, 1, v26);
  MEMORY[0x1EEE9AC00](v30);
  *(&v56 - 4) = v5;
  *(&v56 - 3) = v4;
  v61 = v27;
  *(&v56 - 2) = v27;
  *(&v56 - 1) = v22;
  v31 = v22;
  v70 = v15;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DynamicViewContainer.updateValue(), (&v56 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v32, &v71);
  if (v71 == 2)
  {
    v33 = v69;
  }

  else
  {
    v33 = v69;
    if (v71)
    {
      (*(v69 + 8))(v70, v11);
      return (*(v64 + 8))(v31, v65);
    }
  }

  v59 = v4;
  v34 = v60;
  (*(v33 + 16))(v60, v70, v11);
  v35 = v11;
  v36 = v68;
  v37 = (*(v68 + 48))(v34, 1, v26);
  v57 = v35;
  v58 = 0;
  v56 = v26;
  if (v37 == 1)
  {
    (*(v33 + 8))(v34, v35);
  }

  else
  {
    v38 = v26;
    (*(v36 + 32))(v62, v34, v26);
    v39 = (v66 + *(v67 + 44));
    v40 = v39[3];
    v41 = *(*v39 + 16);
    if (v41)
    {
      v42 = *MEMORY[0x1E698D3F8];
      v43 = *v39 + 48;

      do
      {
        v43 += 24;
        AGGraphSetIndirectAttribute();
        --v41;
      }

      while (v41);
    }

    else
    {

      v42 = *MEMORY[0x1E698D3F8];
    }

    v44 = v38;
    if (v40 != v42)
    {
      AGGraphSetIndirectAttribute();
    }

    v45 = v62;
    AGSubgraphRef.willInvalidate(isInserted:)(1);
    AGSubgraphInvalidate();
    v36 = v68;
    (*(v68 + 8))(v45, v44);
    v33 = v69;
  }

  v46 = v66;
  v47 = v67;
  v48 = AGSubgraphGetGraph();
  v49 = AGSubgraphCreate();

  AGSubgraphAddChild();
  AGGraphClearUpdate();
  v50 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v51 = v63;
  closure #2 in DynamicViewContainer.updateValue()(v46, v61, v31, v49, v5, v59, v63);
  AGSubgraphSetCurrent();

  v52 = AGGraphSetUpdate();
  MEMORY[0x1EEE9AC00](v52);
  *(&v56 - 2) = v47;
  *(&v56 - 1) = swift_getWitnessTable();
  v53 = v56;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, partial apply for closure #1 in StatefulRule.value.setter, (&v56 - 4), v56, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v54);

  (*(v36 + 8))(v51, v53);
  (*(v33 + 8))(v70, v57);
  return (*(v64 + 8))(v31, v65);
}

id closure #2 in DynamicViewContainer.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v67 = a4;
  v63 = a3;
  v64 = a7;
  v65 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v52 - v11;
  v12 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v13 = v54;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v52 - v14;
  v57 = v12;
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v17;
  v18 = type metadata accessor for DynamicViewContainer();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  v23 = a1 + *(v22 + 40);
  v24 = *(v23 + 48);
  v76[2] = *(v23 + 32);
  v76[3] = v24;
  v76[4] = *(v23 + 64);
  v77 = *(v23 + 80);
  v25 = *(v23 + 16);
  v76[0] = *v23;
  v76[1] = v25;
  v26 = v25;
  v75 = v76[0];
  v27 = *(v23 + 24);
  v28 = *(v23 + 40);
  v29 = *(v23 + 56);
  *(v74 + 12) = *(v23 + 68);
  v73 = v28;
  v74[0] = v29;
  v72 = v27;
  swift_beginAccess();
  v30 = v26[3];
  v78[1] = v26[2];
  v78[2] = v30;
  v31 = v26[5];
  v78[3] = v26[4];
  v78[4] = v31;
  v78[0] = v26[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v32 = swift_allocObject();
  memmove((v32 + 16), v26 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v76, v81);
  outlined init with copy of CachedEnvironment(v78, v81);

  (*(v19 + 16))(v21, a1, v18);
  v33 = *(v18 + 16);
  Value = AGGraphGetValue();
  (*(*(v33 - 8) + 16))(v17, Value, v33);
  (*(v19 + 8))(v21, v18);
  v35 = *(v13 + 16);
  v36 = v55;
  v37 = AssociatedTypeWitness;
  v35(v55, a1, AssociatedTypeWitness);
  v38 = *(v18 + 36);
  v58 = v32;
  *&v80[0] = v32;
  *(v80 + 8) = v72;
  *(&v80[3] + 4) = *(v74 + 12);
  *(&v80[2] + 8) = v74[0];
  *(&v80[1] + 8) = v73;
  *&v69[16] = v80[1];
  *&v69[32] = v80[2];
  v39 = *(a1 + v38);
  *&v69[48] = v80[3];
  v79 = v75;
  *&v69[64] = DWORD2(v74[1]);
  v68 = v75;
  *v69 = v80[0];
  v40 = *(a6 + 64);
  outlined init with copy of _ViewInputs(&v79, v81);
  v41 = v36;
  v42 = v36;
  v43 = v39;
  v44 = v53;
  v45 = v57;
  v66 = a6;
  v40(&v70, v42, v43, &v68, v57, a6);
  v81[2] = *&v69[16];
  v81[3] = *&v69[32];
  v81[4] = *&v69[48];
  v82 = *&v69[64];
  v81[0] = v68;
  v81[1] = *v69;
  outlined destroy of _ViewInputs(v81);
  (*(v54 + 8))(v41, v37);
  (*(v59 + 8))(v44, v45);
  v46 = v71;
  v47 = a1 + *(v18 + 44);
  v48 = *(v47 + 8);
  LODWORD(v18) = *(v47 + 12);
  *&v68 = *v47;
  DWORD2(v68) = v48;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v70);

  if (v18 != *MEMORY[0x1E698D3F8] && v46 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v68 = v75;
  *v69 = v58;
  *&v69[8] = v72;
  *&v69[24] = v73;
  *&v69[40] = v74[0];
  *&v69[52] = *(v74 + 12);
  outlined destroy of _ViewInputs(&v68);

  v49 = v60;
  (*(v61 + 16))(v60, v63, v62);
  DynamicViewContainer.Value.init(type:id:subgraph:)(v65, v49, v67, v64);
  v50 = v67;

  return v50;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance DynamicViewContainer<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DynamicViewContainer.Value();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t DynamicViewList.Item.__ivar_destroyer()
{
  v1 = *(*v0 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
}

uint64_t DynamicViewList.WrappedList.print(into:)(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v26 - v6;
  v8 = a1[2];
  if (v8)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000, v5);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x2D63696D616E7964, 0xEC00000077656976);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_13;
    }

    a1[2] = v8 + 1;
    v10 = 8224;
    v11 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000, v5);
    v10 = 0x2D63696D616E7964;
    v11 = 0xEC00000077656976;
  }

  MEMORY[0x193ABEDD0](v10, v11);
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](0x2064693A23, 0xE500000000000000);
  v12 = v1[5];
  (*(v4 + 16))(v7, &v12[*(*v12 + 136)], AssociatedTypeWitness);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  v13 = v26;
  v14 = v27;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v13, v14);

  v26 = 0x2072656E776F3A23;
  v27 = 0xE800000000000000;
  v15 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v15);

  v16 = v26;
  v17 = v27;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v16, v17);

  v26 = 0x20727474613A23;
  v27 = 0xE700000000000000;
  type metadata accessor for ViewList();
  v18 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v18);

  v19 = v26;
  v20 = v27;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v19, v20);

  if (!*(v12 + 6) || (AGSubgraphIsValid() & 1) == 0)
  {
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x64696C61766E69, 0xE700000000000000);
  }

  v21 = v1[3];
  v22 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v21);
  result = (*(v22 + 88))(a1, v21, v22);
  v23 = a1[2];
  if (!v23)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (!v24)
  {
    a1[2] = v25;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DynamicViewList<A>.WrappedList(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ViewList.debugDescription.getter(a1, WitnessTable);
}

uint64_t static DynamicViewList.WrappedIDs.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a4)
  {
    return (*(*a1 + 104))(a3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance DynamicViewList<A>.WrappedIDs()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

void (*protocol witness for Collection.subscript.read in conformance DynamicViewList<A>.WrappedIDs(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = DynamicViewList.WrappedIDs.subscript.read(v5, *a2, *v2);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

uint64_t (*DynamicViewList.WrappedIDs.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  (*(*a3 + 96))(a2);
  DynamicViewList.Item.bindID(_:)();
  return destroy for HostPreferencesCombiner;
}

uint64_t protocol witness for Collection.indices.getter in conformance DynamicViewList<A>.WrappedIDs()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance DynamicViewList<A>.WrappedIDs()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance DynamicViewList<A>.WrappedIDs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance DynamicViewList<A>.WrappedIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance DynamicViewList<A>.WrappedIDs()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t DynamicViewList.Transform.wrapSubgraph(into:)(void *a1)
{

  MEMORY[0x193ABF170](v2);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t initializeBufferWithCopyOfBuffer for DynamicViewList(void *a1, void *a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  *a1 = *a2;
  return  + (((v4 & 0xF8) + 23) & ~(v4 & 0xF8) & 0x1F8);
}

uint64_t assignWithCopy for DynamicViewList(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = v8 + 11;
  v10 = *v8;
  v8 += 147;
  *v7 = v10;
  v11 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = v9 & 0xFFFFFFFFFFFFFFF8;
  *v11 = *(v9 & 0xFFFFFFFFFFFFFFF8);

  *(v11 + 8) = *(v12 + 8);
  *(v11 + 16) = *(v12 + 16);

  *(v11 + 24) = *(v12 + 24);
  *(v11 + 28) = *(v12 + 28);
  *(v11 + 32) = *(v12 + 32);
  *(v11 + 36) = *(v12 + 36);
  *(v11 + 40) = *(v12 + 40);

  *(v11 + 48) = *(v12 + 48);
  *(v11 + 56) = *(v12 + 56);
  *(v11 + 64) = *(v12 + 64);
  *(v11 + 72) = *(v12 + 72);

  *(v11 + 80) = *(v12 + 80);
  *(v11 + 88) = *(v12 + 88);
  swift_weakCopyAssign();
  v13 = *(v12 + 112);
  *(v11 + 128) = *(v12 + 128);
  *(v11 + 112) = v13;
  v14 = (v7 + 147) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  v15 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v17 = *v14;
  *v14 = v15;
  v14 += 15;
  v18 = v15;

  v16 &= 0xFFFFFFFFFFFFFFF8;
  *(v14 & 0xFFFFFFFFFFFFFFF8) = *v16;

  *(((v14 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for DynamicViewList(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32) + 3;
  v7 = v6 + a1;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = v8 + 11;
  v10 = *v8;
  v8 += 147;
  *(v7 & 0xFFFFFFFFFFFFFFFCLL) = v10;
  v11 = (v7 & 0xFFFFFFFFFFFFFFFCLL) + 147;
  v12 = ((v7 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  v13 = v9 & 0xFFFFFFFFFFFFFFF8;
  v14 = *((v9 & 0xFFFFFFFFFFFFFFF8) + 32);
  v15 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 16) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v12 + 32) = v14;
  *v12 = v15;
  *(v12 + 48) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v12 + 56) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 56);
  *(v12 + 64) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 64);
  LOBYTE(v9) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 80);
  *(v12 + 72) = *(v13 + 72);
  *(v12 + 80) = v9;
  *(v12 + 88) = *(v13 + 88);
  swift_weakTakeInit();
  v16 = *(v13 + 112);
  *(v12 + 128) = *(v13 + 128);
  *(v12 + 112) = v16;
  *(v11 & 0xFFFFFFFFFFFFFFF8) = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v17 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DynamicViewList(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);

  *(v9 + 24) = *(v10 + 24);
  *(v9 + 28) = *(v10 + 28);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 40) = *(v10 + 40);

  *(v9 + 48) = *(v10 + 48);
  *(v9 + 56) = *(v10 + 56);
  *(v9 + 64) = *(v10 + 64);
  *(v9 + 72) = *(v10 + 72);

  *(v9 + 80) = *(v10 + 80);
  *(v9 + 88) = *(v10 + 88);
  swift_weakTakeAssign();
  v11 = *(v10 + 112);
  *(v9 + 128) = *(v10 + 128);
  *(v9 + 112) = v11;
  v12 = ((v7 + 147) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 147) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v12;
  *v12 = *v13;

  v15 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;

  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewList(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 147) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
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
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *(((((a1 + v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for DynamicViewList(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v6 + 84);
  v9 = *(v6 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 147) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((v9 + 3) & 0xFFFFFFFC) + 147) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = (((a1 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *(v19 + 128) = 0;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 16) = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18(a1, a2);
      }

      return result;
    }
  }

  if (((((((((v9 + 3) & 0xFFFFFFFC) + 147) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((v9 + 3) & 0xFFFFFFFC) + 147) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DynamicViewContainer.Value(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v8 + 7;
  v10 = v6 & 0x100000;
  v11 = *a2;
  *a1 = *a2;
  if (v7 > 7 || v10 != 0 || ((v8 + 7 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v11 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = ~v7;
    v15 = a1 + v7;
    v16 = a2 + v7;
    v17 = ((v15 + 8) & v14);
    v18 = ((v16 + 8) & v14);
    if ((*(v5 + 48))(v18, 1, AssociatedTypeWitness))
    {
      memcpy(v17, v18, v8);
    }

    else
    {
      (*(v5 + 16))(v17, v18, AssociatedTypeWitness);
      (*(v5 + 56))(v17, 0, 1, AssociatedTypeWitness);
    }

    v19 = *((v18 + v9) & 0xFFFFFFFFFFFFFFF8);
    *((v17 + v9) & 0xFFFFFFFFFFFFFFF8) = v19;
    v20 = v19;
  }

  return a1;
}

void *initializeWithTake for DynamicViewContainer.Value(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, AssociatedTypeWitness))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v8, AssociatedTypeWitness);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, AssociatedTypeWitness);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  *((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for DynamicViewContainer.Value(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, AssociatedTypeWitness);
  v11 = v9(v8, 1, AssociatedTypeWitness);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7, v8, AssociatedTypeWitness);
      (*(v5 + 56))(v7, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7, v8, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  if (*(v5 + 84))
  {
    v15 = *(v5 + 64);
  }

  else
  {
    v15 = *(v5 + 64) + 1;
  }

  v16 = ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  *v16 = *((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewContainer.Value(uint64_t *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = 7;
  if (!v6)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((v11 + v10 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v8 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_33:
    if ((v7 & 0x80000000) != 0)
    {
      v21 = (*(v5 + 48))((a1 + v9 + 8) & ~v9);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v8 + (v13 | v19) + 1;
}

void storeEnumTagSinglePayload for DynamicViewContainer.Value(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    if (((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a3 - v11 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 1;
    }

    if (((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v11 + a2;
      bzero(a1, ((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a1 + v13) = v16;
      }

      else
      {
        *(a1 + v13) = v16;
      }
    }

    else if (v6)
    {
      *(a1 + v13) = v16;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v13) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v9 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 8) & ~v10);
    if (v9 >= a2)
    {
      v23 = *(v7 + 56);

      v23(v19, a2 + 1);
    }

    else
    {
      if (v12 <= 3)
      {
        v20 = ~(-1 << (8 * v12));
      }

      else
      {
        v20 = -1;
      }

      if (v12)
      {
        v21 = v20 & (~v9 + a2);
        if (v12 <= 3)
        {
          v22 = v12;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v12);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v18 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v18 = a2 - 1;
    }

    *a1 = v18;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for DynamicViewContainer(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || ((((((((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v10 = ((a1 + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 24) = *(v13 + 24);
    *(v12 + 28) = *(v13 + 28);
    *(v12 + 32) = *(v13 + 32);
    *(v12 + 36) = *(v13 + 36);
    *(v12 + 40) = *(v13 + 40);
    *(v12 + 48) = *(v13 + 48);
    *(v12 + 56) = *(v13 + 56);
    *(v12 + 60) = *(v13 + 60);
    *(v12 + 64) = *(v13 + 64);
    *(v12 + 68) = *(v13 + 68);
    *(v12 + 72) = *(v13 + 72);
    *(v12 + 76) = *(v13 + 76);
    *(v12 + 80) = *(v13 + 80);
    v14 = (v12 + 91) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v13 + 91) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *(v14 + 12) = *(v15 + 12);
    v16 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *v16;

    v18 = v17;
  }

  return a1;
}

uint64_t assignWithCopy for DynamicViewContainer(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);

  *(v9 + 24) = *(v10 + 24);
  *(v9 + 28) = *(v10 + 28);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 40) = *(v10 + 40);

  *(v9 + 48) = *(v10 + 48);

  *(v9 + 56) = *(v10 + 56);
  *(v9 + 60) = *(v10 + 60);
  *(v9 + 64) = *(v10 + 64);
  *(v9 + 68) = *(v10 + 68);
  *(v9 + 72) = *(v10 + 72);
  *(v9 + 76) = *(v10 + 76);
  *(v9 + 80) = *(v10 + 80);
  v11 = (v9 + 91) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;

  *(v11 + 8) = *(v12 + 8);
  *(v11 + 12) = *(v12 + 12);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = *((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v13;
  *v13 = v14;
  v16 = v14;

  return a1;
}

uint64_t initializeWithTake for DynamicViewContainer(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32) + 3;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  v7 &= 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  v12 = *(v10 + 80);
  v14 = *(v10 + 48);
  v13 = *(v10 + 64);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 48) = v14;
  *(v9 + 64) = v13;
  *(v9 + 80) = v12;
  v15 = ((v9 + 91) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v10 + 91) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DynamicViewContainer(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);

  *(v9 + 24) = *(v10 + 24);
  *(v9 + 28) = *(v10 + 28);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 40) = *(v10 + 40);

  *(v9 + 48) = *(v10 + 48);

  *(v9 + 56) = *(v10 + 56);
  *(v9 + 60) = *(v10 + 60);
  *(v9 + 64) = *(v10 + 64);
  *(v9 + 68) = *(v10 + 68);
  *(v9 + 72) = *(v10 + 72);
  *(v9 + 76) = *(v10 + 76);
  *(v9 + 80) = *(v10 + 80);
  v11 = (v9 + 91) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;

  *(v11 + 8) = *(v12 + 8);
  *(v11 + 12) = *(v12 + 12);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  *v13 = *((v12 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewContainer(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
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
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *(((((a1 + v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for DynamicViewContainer(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v6 + 84);
  v9 = *(v6 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((v9 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 91) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = (((a1 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 72) = 0;
          result = 0.0;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *(v19 + 80) = 0;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 16) = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18(a1, a2);
      }

      return result;
    }
  }

  if (((((((((v9 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 91) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((v9 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 91) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }

  return result;
}

uint64_t partial apply for closure #1 in DynamicViewContainer.updateValue()@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  type metadata accessor for DynamicViewContainer.Value();
  result = DynamicViewContainer.Value.matches(type:id:)(v3);
  *a1 = result & 1;
  return result;
}

uint64_t initializeWithCopy for DynamicViewList.WrappedList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);

  if (v12(v11, 1, AssociatedTypeWitness))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v10, v11, v15);
  }

  else
  {
    (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v10, 0, 1, AssociatedTypeWitness);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  *((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithCopy for DynamicViewList.WrappedList(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 8) & ~v8);
  v10 = ((v5 + v8 + 8) & ~v8);
  v11 = *(v7 + 48);
  LODWORD(v5) = v11(v9, 1, AssociatedTypeWitness);
  v12 = v11(v10, 1, AssociatedTypeWitness);
  if (v5)
  {
    if (!v12)
    {
      (*(v7 + 16))(v9, v10, AssociatedTypeWitness);
      (*(v7 + 56))(v9, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v7 + 84);
    v14 = *(v7 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v7 + 24))(v9, v10, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, AssociatedTypeWitness);
    v13 = *(v7 + 84);
    v14 = *(v7 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(v9, v10, v15);
LABEL_12:
  if (*(v7 + 84))
  {
    v16 = *(v7 + 64);
  }

  else
  {
    v16 = *(v7 + 64) + 1;
  }

  *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for DynamicViewList.WrappedList(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 8) & ~v8);
  v10 = ((v5 + v8 + 8) & ~v8);
  if ((*(v7 + 48))(v10, 1, AssociatedTypeWitness))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, AssociatedTypeWitness);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, AssociatedTypeWitness);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DynamicViewList.WrappedList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  LODWORD(v6) = v12(v10, 1, AssociatedTypeWitness);
  v13 = v12(v11, 1, AssociatedTypeWitness);
  if (v6)
  {
    if (!v13)
    {
      (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
      (*(v8 + 56))(v10, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v8 + 40))(v10, v11, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, AssociatedTypeWitness);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v10, v11, v16);
LABEL_12:
  if (*(v8 + 84))
  {
    v17 = *(v8 + 64);
  }

  else
  {
    v17 = *(v8 + 64) + 1;
  }

  *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewList.WrappedList(uint64_t a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = 7;
  if (!v6)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((v11 + v10 + ((v9 + 48) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v8 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_33:
    if ((v7 & 0x80000000) != 0)
    {
      v21 = (*(v5 + 48))((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *(a1 + 24);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v8 + (v13 | v19) + 1;
}

void storeEnumTagSinglePayload for DynamicViewList.WrappedList(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((v12 + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    if (((v12 + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a3 - v11 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((v12 + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 1;
    }

    if (((v12 + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v11 + a2;
      bzero(a1, ((v12 + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a1 + v13) = v16;
      }

      else
      {
        *(a1 + v13) = v16;
      }
    }

    else if (v6)
    {
      *(a1 + v13) = v16;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v13) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v9 & 0x80000000) != 0)
  {
    v18 = ((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
    if (v9 >= a2)
    {
      v22 = *(v7 + 56);

      v22(v18, a2 + 1);
    }

    else
    {
      if (v12 <= 3)
      {
        v19 = ~(-1 << (8 * v12));
      }

      else
      {
        v19 = -1;
      }

      if (v12)
      {
        v20 = v19 & (~v9 + a2);
        if (v12 <= 3)
        {
          v21 = v12;
        }

        else
        {
          v21 = 4;
        }

        bzero(v18, v12);
        if (v21 > 2)
        {
          if (v21 == 3)
          {
            *v18 = v20;
            v18[2] = BYTE2(v20);
          }

          else
          {
            *v18 = v20;
          }
        }

        else if (v21 == 1)
        {
          *v18 = v20;
        }

        else
        {
          *v18 = v20;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0u;
    *(a1 + 6) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t instantiation function for generic protocol witness table for DynamicViewList<A>.WrappedList(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t EventBindingManager.send(_:)(int64_t a1)
{
  swift_weakInit();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = EventBindingManager.sendDownstream(_:)(a1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  static Update.end()();
  _MovableLockUnlock(v2);
  swift_weakDestroy();
  return v3;
}

Swift::Void __swiftcall EventBindingManager.reset(resetForwardedEventDispatchers:)(Swift::Bool resetForwardedEventDispatchers)
{
  v2 = v1;
  LOBYTE(v42[0]) = 17;
  v4 = swift_allocObject();
  swift_weakInit();

  static Update.enqueueAction(reason:_:)(v42, partial apply for closure #1 in EventBindingManager.reset(resetForwardedEventDispatchers:), v4);

  if (!resetForwardedEventDispatchers)
  {
LABEL_31:
    v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    *(v2 + 56) = v35;

    v36 = *(v2 + 72);
    if (v36)
    {
      [v36 invalidate];
      v37 = *(v2 + 72);
    }

    else
    {
      v37 = 0;
    }

    *(v2 + 72) = 0;

    swift_beginAccess();
    *(v2 + 64) = 0;
    return;
  }

  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v12 = v10;
LABEL_17:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(*(v5 + 48) + 8 * v16);
    outlined init with copy of AnyTrackedValue(*(v5 + 56) + 40 * v16, v38);
    *&v39 = v17;
    outlined init with take of AnyTrackedValue(v38, &v39 + 8);
LABEL_18:
    v42[0] = v39;
    v42[1] = v40;
    v42[2] = v41;
    if (!v41)
    {

      goto LABEL_31;
    }

    v18 = *&v42[0];
    outlined init with take of AnyTrackedValue((v42 + 8), &v39);
    v19 = *(&v40 + 1);
    v20 = v41;
    __swift_mutable_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    (*(v20 + 40))(v19, v20);
    swift_beginAccess();
    outlined init with copy of AnyTrackedValue(&v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + 48);
    *(v2 + 48) = 0x8000000000000000;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_36;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_38;
      }

LABEL_24:
      v31 = v22;
      if (v29)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v34 = v23;
    specialized _NativeDictionary.copy()();
    v23 = v34;
    v31 = v22;
    if (v29)
    {
LABEL_5:
      v11 = v31[7] + 40 * v23;
      __swift_destroy_boxed_opaque_existential_1(v11);
      outlined init with take of AnyTrackedValue(v38, v11);
      goto LABEL_6;
    }

LABEL_25:
    v31[(v23 >> 6) + 8] |= 1 << v23;
    *(v31[6] + 8 * v23) = v18;
    outlined init with take of AnyTrackedValue(v38, v31[7] + 40 * v23);
    v32 = v31[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_37;
    }

    v31[2] = v33;
LABEL_6:
    *(v2 + 48) = v31;

    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  if (v9 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v40 = 0u;
      v41 = 0u;
      v10 = v14;
      v39 = 0u;
      goto LABEL_18;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t EventBindingManager.willRemoveResponder(_:)(uint64_t a1)
{
  v3 = (*(*a1 + 88))();
  swift_beginAccess();
  v4 = *(v1 + 56);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + 56) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v31 = *(v1 + 56);

  v13 = 0;
  while (v10)
  {
LABEL_11:
    while (1)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v13 << 6);
      v17 = (*(v31 + 48) + 16 * v16);
      v28 = *v17;
      v29 = v17[1];
      v18 = *(*(v31 + 56) + 8 * v16);
      swift_retain_n();
      if (v18)
      {
        break;
      }

LABEL_6:

      if (!v10)
      {
        goto LABEL_7;
      }
    }

    if (v18 != a1)
    {

      if (v3 == v18)
      {
LABEL_5:
      }

      else
      {
        v19 = v18;
        while (1)
        {
          v20 = *(*v19 + 88);

          v19 = v20(v21);

          if (!v19)
          {
            break;
          }

          if (v19 == a1)
          {
            goto LABEL_20;
          }

          if (v3 && v19 == v3)
          {
            goto LABEL_5;
          }
        }
      }

      goto LABEL_6;
    }

LABEL_20:
    if (v3)
    {

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v27 + 56);
      *(v27 + 56) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v28, v29, isUniquelyReferenced_nonNull_native);
      *(v27 + 56) = v32;
    }

    else
    {
      swift_beginAccess();
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
      if (v24)
      {
        v30 = v23;
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v26 = *(v27 + 56);
        *(v27 + 56) = 0x8000000000000000;
        if (!v25)
        {
          specialized _NativeDictionary.copy()();
        }

        specialized _NativeDictionary._delete(at:)(v30, v26);
        *(v27 + 56) = v26;
      }
    }

    swift_endAccess();
  }

LABEL_7:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t EventBinding.responder.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EventBindingManager.host.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*EventBindingManager.host.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.updateDelegate.modify;
}

uint64_t EventBindingManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*EventBindingManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.renderDelegate.modify;
}

uint64_t EventBindingManager.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = MEMORY[0x1E69E7CC8];
  *(v0 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t EventBindingManager.deinit()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  outlined destroy of weak GestureGraphDelegate?(v0 + 16);
  outlined destroy of weak GestureGraphDelegate?(v0 + 32);

  return v0;
}

uint64_t EventBindingManager.rebindEvent(_:to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *a1;
  v7 = a1[1];
  swift_beginAccess();
  v9 = *(v3 + 56);
  if (!*(v9 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7), (v11 & 1) == 0))
  {
    result = swift_endAccess();
LABEL_8:
    a2 = 0;
    v12 = 1;
    goto LABEL_9;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  result = swift_endAccess();
  if (a2 && v12 == a2)
  {
    goto LABEL_8;
  }

  if (a2)
  {

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 56);
    *(v4 + 56) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v8, v7, isUniquelyReferenced_nonNull_native);
    *(v4 + 56) = v15;
  }

  else
  {
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(v8, v7, &v15);
  }

  result = swift_endAccess();
LABEL_9:
  *a3 = v12;
  a3[1] = a2;
  return result;
}

uint64_t EventBindingManager.sendDownstream(_:)(int64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = *(v1 + 24);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  if (one-time initialization token for _eventDebugTriggers != -1)
  {
LABEL_114:
    swift_once();
  }

  swift_beginAccess();
  v116 = v2;
  v117 = v7;
  if ((_eventDebugTriggers.rawValue & 2) != 0)
  {
    if (one-time initialization token for events != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.events);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v131 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x45444E4F50534552, 0xEA00000000005352, &v131);
      _os_log_impl(&dword_18D018000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      v14 = v13;
      v7 = v117;
      MEMORY[0x193AC4820](v14, -1, -1);
      MEMORY[0x193AC4820](v12, -1, -1);
    }

    if (v7)
    {
      type metadata accessor for ViewResponder();
      if (swift_dynamicCastClass())
      {
        v15 = default argument 0 of ViewResponder.printTree(depth:)();

        ViewResponder.printTree(depth:)(v15);
      }
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v131 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v131);
      _os_log_impl(&dword_18D018000, v16, v17, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v19;
      v7 = v117;
      MEMORY[0x193AC4820](v20, -1, -1);
      MEMORY[0x193AC4820](v18, -1, -1);
    }
  }

  printEvents(_:)(a1);
  v8 = EventBindingManager.dispatchNonGestureEvents(_:)(a1);
  v135 = v8;

  v21 = specialized Dictionary.optimisticFilter(_:)(a1, v2);

  v134 = v21;
  swift_beginAccess();
  if ((*(v2 + 64) & 1) != 0 || *(v21 + 16))
  {
    v115 = v4;
    v22 = v21 + 64;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v4 = v24 & *(v21 + 64);
    v118 = v21;

    swift_beginAccess();
    v25 = 0;
    a1 = (v23 + 63) >> 6;
    v119 = v22;
    v120 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!v4)
      {
        if (a1 <= v25 + 1)
        {
          v27 = v25 + 1;
        }

        else
        {
          v27 = a1;
        }

        v28 = v27 - 1;
        while (1)
        {
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v26 >= a1)
          {
            v4 = 0;
            v130 = 0;
            v128 = 0u;
            v129 = 0u;
            v25 = v28;
            v127 = 0u;
            goto LABEL_36;
          }

          v4 = *(v22 + 8 * v26);
          ++v25;
          if (v4)
          {
            v25 = v26;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v26 = v25;
LABEL_35:
      v29 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v30 = v29 | (v26 << 6);
      v31 = (*(v118 + 48) + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      outlined init with copy of AnyTrackedValue(*(v118 + 56) + 40 * v30, &v124);
      *&v127 = v32;
      *(&v127 + 1) = v33;
      outlined init with take of AnyTrackedValue(&v124, &v128);
LABEL_36:
      v131 = v127;
      v132[0] = v128;
      v132[1] = v129;
      v133 = v130;
      v34 = v127;
      if (!v127)
      {

        swift_beginAccess();

        printEventBindings(_:)(v91);

        v92 = 0;
        LOBYTE(v93) = 0;
        LOBYTE(v94) = 3;
        v95 = INFINITY;
        if (*(v2 + 64) == 1 && v117)
        {
          v96 = swift_getObjectType();
          v97 = v134;

          *&v131 = CACurrentMediaTime();
          v98 = v115;
          (*(v115 + 40))(&v124, v97, v117, &v131, v96, v115);
          v93 = v124;
          v94 = BYTE1(v124);
          (*(v98 + 32))(&v131, v96, v98);
          v95 = *&v131;
          (*(v98 + 56))(&v131, v96, v98);
          if (BYTE8(v131))
          {
            v92 = 0;
          }

          else
          {
            v92 = v131;
          }

          if (v94 != 3 || v93)
          {

            specialized Set.formUnion<A>(_:)(v99);
          }

          else
          {
            LOBYTE(v94) = 3;
          }

          v2 = v116;
        }

        if ((_eventDebugTriggers.rawValue & 0x10) != 0 && v117)
        {
          _s7SwiftUI12GesturePhaseOyytGMaTm_2(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
          *(&v132[0] + 1) = v100;
          LOBYTE(v131) = v93;
          BYTE1(v131) = v94;

          ResponderNode.log(action:data:)(0x6168702D746F6F72, 0xEA00000000006573, &v131);

          outlined destroy of Any?(&v131);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v101 = *(v2 + 40);
          v102 = swift_getObjectType();
          LOBYTE(v131) = v93;
          BYTE1(v131) = v94;
          (*(v101 + 16))(&v131, v2, v102, v101);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v103 = *(v2 + 40);
          v104 = swift_getObjectType();
          *&v131 = v92;
          (*(v103 + 24))(&v131, v2, v104, v103);
          swift_unknownObjectRelease();
        }

        if (*(v2 + 64) == 1 && v95 != INFINITY)
        {
          *&v131 = v95;
          EventBindingManager.scheduleNextEventUpdate(time:)(&v131);
        }

        v105 = *(v120 + 2);
        if (v105)
        {
          v106 = (v120 + 40);
          do
          {
            v108 = *(v106 - 1);
            v107 = *v106;
            swift_beginAccess();
            v109 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v107);
            if (v110)
            {
              v111 = v109;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v113 = *(v2 + 56);
              *&v124 = v113;
              *(v2 + 56) = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                specialized _NativeDictionary.copy()();
                v113 = v124;
              }

              specialized _NativeDictionary._delete(at:)(v111, v113);
              *(v2 + 56) = v113;
            }

            v106 += 2;
            swift_endAccess();
            --v105;
          }

          while (v105);
        }

        swift_unknownObjectRelease();

        v8 = v135;

        return v8;
      }

      v35 = *(&v131 + 1);
      outlined init with take of AnyTrackedValue(v132, &v127);
      swift_beginAccess();
      v36 = *(v2 + 56);
      v121 = v35;
      if (*(v36 + 16))
      {
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
        if (v38)
        {
          v39 = *(*(v36 + 56) + 8 * v37);
          swift_endAccess();
          outlined init with copy of AnyTrackedValue(&v127, &v124);
          v40 = v125;
          v41 = v126;
          __swift_mutable_project_boxed_opaque_existential_1(&v124, v125);
          v122[0] = v39;
          v42 = *(v41 + 32);
          swift_retain_n();
          v42(v122, v40, v41);
          v2 = v116;
          swift_beginAccess();
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v123 = *(v116 + 56);
          v44 = v123;
          *(v116 + 56) = 0x8000000000000000;
          v7 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v121);
          v46 = v44[2];
          v47 = (v45 & 1) == 0;
          v48 = v46 + v47;
          if (__OFADD__(v46, v47))
          {
            goto LABEL_111;
          }

          v49 = v45;
          if (v44[3] >= v48)
          {
            if ((v43 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }

            v50 = v121;
            v53 = v123;
            if ((v49 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, v43);
            v50 = v121;
            v51 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v121);
            if ((v49 & 1) != (v52 & 1))
            {
              goto LABEL_115;
            }

            v7 = v51;
            v53 = v123;
            if ((v49 & 1) == 0)
            {
LABEL_43:
              v53[(v7 >> 6) + 8] |= 1 << v7;
              v54 = (v53[6] + 16 * v7);
              *v54 = v34;
              v54[1] = v50;
              *(v53[7] + 8 * v7) = v39;
              v55 = v53[2];
              v56 = __OFADD__(v55, 1);
              v57 = v55 + 1;
              if (v56)
              {
                goto LABEL_113;
              }

              v53[2] = v57;
              goto LABEL_55;
            }
          }

          *(v53[7] + 8 * v7) = v39;

LABEL_55:
          *(v116 + 56) = v53;
          swift_endAccess();
          outlined init with copy of AnyTrackedValue(&v124, v122);
          specialized Dictionary.subscript.setter(v122, v34, v50);

          __swift_destroy_boxed_opaque_existential_1(&v124);
          v7 = v117;
          goto LABEL_72;
        }
      }

      swift_endAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v58 = *(v2 + 24);
        v59 = swift_getObjectType();
        v60 = (*(v58 + 24))(v59, v58);
        swift_unknownObjectRelease();
        if (v60)
        {
          v61 = *(&v128 + 1);
          v62 = v129;
          __swift_project_boxed_opaque_existential_1(&v127, *(&v128 + 1));
          if (EventType.isFocusEvent.getter(v61, v62))
          {
            v63 = (*(*v60 + 96))(&v127);
            if (v63)
            {
              v64 = v63;

              v60 = v64;
            }

            goto LABEL_59;
          }
        }
      }

      if (!v7)
      {
        goto LABEL_72;
      }

      v65 = *(*v7 + 96);

      v60 = v65(&v127);

      if (!v60)
      {
        goto LABEL_72;
      }

LABEL_59:

      outlined init with copy of AnyTrackedValue(&v127, &v124);
      v66 = v125;
      v67 = v126;
      __swift_mutable_project_boxed_opaque_existential_1(&v124, v125);
      v122[0] = v60;
      v7 = v67 + 32;
      v68 = *(v67 + 32);
      swift_retain_n();
      v68(v122, v66, v67);
      v2 = v116;
      swift_beginAccess();
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v123 = *(v116 + 56);
      v70 = v123;
      *(v116 + 56) = 0x8000000000000000;
      v71 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v121);
      v73 = v70[2];
      v74 = (v72 & 1) == 0;
      v56 = __OFADD__(v73, v74);
      v75 = v73 + v74;
      if (v56)
      {
        goto LABEL_110;
      }

      v76 = v72;
      if (v70[3] >= v75)
      {
        v7 = v117;
        if ((v69 & 1) == 0)
        {
          v90 = v71;
          specialized _NativeDictionary.copy()();
          v71 = v90;
        }

        v77 = v121;
        v79 = v123;
        if ((v76 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v75, v69);
        v77 = v121;
        v71 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v121);
        v7 = v117;
        if ((v76 & 1) != (v78 & 1))
        {
LABEL_115:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v79 = v123;
        if ((v76 & 1) == 0)
        {
LABEL_67:
          v79[(v71 >> 6) + 8] |= 1 << v71;
          v80 = (v79[6] + 16 * v71);
          *v80 = v34;
          v80[1] = v77;
          *(v79[7] + 8 * v71) = v60;
          v81 = v79[2];
          v56 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v56)
          {
            goto LABEL_112;
          }

          v79[2] = v82;
          goto LABEL_69;
        }
      }

      *(v79[7] + 8 * v71) = v60;

LABEL_69:
      *(v116 + 56) = v79;
      swift_endAccess();
      outlined init with copy of AnyTrackedValue(&v124, v122);
      specialized Dictionary.subscript.setter(v122, v34, v77);
      *(v116 + 64) = 1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v83 = *(v116 + 40);
        v84 = swift_getObjectType();
        v123 = v60;
        v122[0] = v34;
        v122[1] = v77;
        (*(v83 + 8))(&v123, v122, v84, v83);
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(&v124);
LABEL_72:
      v85 = *(&v128 + 1);
      v86 = v129;
      __swift_project_boxed_opaque_existential_1(&v127, *(&v128 + 1));
      (*(v86 + 8))(&v124, v85, v86);
      if (v124 - 2 >= 2)
      {
        v22 = v119;
      }

      else
      {
        v22 = v119;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v120 + 2) + 1, 1, v120);
        }

        v88 = *(v120 + 2);
        v87 = *(v120 + 3);
        if (v88 >= v87 >> 1)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v120);
        }

        *(v120 + 2) = v88 + 1;
        v89 = &v120[16 * v88];
        *(v89 + 4) = v34;
        *(v89 + 5) = v121;
      }

      __swift_destroy_boxed_opaque_existential_1(&v127);
    }
  }

  swift_unknownObjectRelease();

  return v8;
}

uint64_t EventBindingManager.send<A>(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ContiguousArrayStorage<(EventID, EventType)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  *(inited + 32) = a3;
  *(inited + 40) = a2;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (EventID, EventType)(inited + 32, type metadata accessor for (EventID, EventType));
  swift_weakInit();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v11 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    EventBindingManager.sendDownstream(_:)(v10);
  }

  static Update.end()();
  _MovableLockUnlock(v11);
  swift_weakDestroy();
}

uint64_t EventBindingManager.rootResponder.getter()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t EventBindingManager.focusedResponder.getter()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 24))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t EventBindingManager.dispatchNonGestureEvents(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CD0];
  v34 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v5 = *(v1 + 48);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v26 = v5;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(v5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      swift_beginAccess();
      v15 = *(v2 + 48);
      if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v17 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v15 + 56) + 40 * v16, &v28);
      }

      else
      {
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
      }

      result = swift_endAccess();
      if (!*(&v29 + 1))
      {
        break;
      }

      outlined init with take of AnyTrackedValue(&v28, v31);
      v18 = specialized Dictionary.optimisticFilter(_:)(a1, v31);
      if (*(v18 + 16))
      {
        v19 = a1;
        v20 = v32;
        v21 = v33;
        v27 = v14;
        v22 = v18;
        __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        v23 = *(v21 + 32);
        v24 = v21;
        a1 = v19;
        v5 = v26;
        v25 = v23(v22, v2, v20, v24);

        outlined init with copy of AnyTrackedValue(v31, &v28);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(&v28, v27);
        swift_endAccess();
        specialized Set.formUnion<A>(_:)(v25);
        v4 = v34;
      }

      else
      {
      }

      if (*(v4 + 16) == *(a1 + 16))
      {

        __swift_destroy_boxed_opaque_existential_1(v31);
        return v4;
      }

      v9 &= v9 - 1;
      result = __swift_destroy_boxed_opaque_existential_1(v31);
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_23:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    return v4;
  }

  return result;
}

void EventBindingManager.scheduleNextEventUpdate(time:)(double *a1)
{
  v2 = *a1;
  v3 = *(v1 + 72);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v1 + 72);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + 72) = 0;

  v5 = v2 - CACurrentMediaTime();
  if (v5 >= 0.0 && ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v5 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in EventBindingManager.scheduleNextEventUpdate(time:);
    *(v9 + 24) = v8;
    v15[4] = partial apply for closure #1 in withDelay(_:do:);
    v15[5] = v9;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    v15[3] = &block_descriptor_24;
    v10 = _Block_copy(v15);
    v11 = objc_opt_self();
    swift_retain_n();
    v12 = [v11 timerWithTimeInterval:0 repeats:v10 block:v5];
    _Block_release(v10);

    v13 = [objc_opt_self() mainRunLoop];
    [v13 addTimer:v12 forMode:*MEMORY[0x1E695DA28]];

    v14 = *(v1 + 72);
    *(v1 + 72) = v12;
  }
}

uint64_t closure #1 in EventBindingManager.scheduleNextEventUpdate(time:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 72);
    *(result + 72) = 0;

    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    swift_weakInit();
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v3 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      EventBindingManager.sendDownstream(_:)(v2);
    }

    static Update.end()();
    _MovableLockUnlock(v3);
    swift_weakDestroy();
  }

  return result;
}

uint64_t closure #1 in EventBindingManager.reset(resetForwardedEventDispatchers:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 48))(ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t EventBindingManager.isActive<A>(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * (__clz(__rbit64(v6)) | (v10 << 6)), v17);
      outlined init with take of AnyTrackedValue(v17, v14);
      __swift_project_boxed_opaque_existential_1(v14, v15);
      swift_getDynamicType();
      if ((*(v16 + 8))() == a1)
      {
        break;
      }

      v6 &= v6 - 1;
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v12 = v15;
    v13 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v11 = (*(v13 + 16))(v12, v13);

    __swift_destroy_boxed_opaque_existential_1(v14);
    return v11 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        swift_beginAccess();
        v11 = *(v1 + 64);
        return v11 & 1;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t EventBindingManager.binds<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(v3 + 48);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * (__clz(__rbit64(v9)) | (v13 << 6)), v24);
      outlined init with take of AnyTrackedValue(v24, v21);
      DynamicType = swift_getDynamicType();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      swift_getDynamicType();
      if (DynamicType == (*(v23 + 8))())
      {
        break;
      }

      v9 &= v9 - 1;
      result = __swift_destroy_boxed_opaque_existential_1(v21);
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v20[3] = a2;
    v20[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
    v15 = (*(v17 + 24))(v20, v3, v16, v17);

    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v15 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v15 = 0;
        return v15 & 1;
      }

      v9 = *(v6 + 64 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static EventBindingManager.current.getter()
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for EventGraphHost);
      (*(*(*(v3 + 16) + 8) + 16))(v9, v4, v4, ObjectType);
      swift_unknownObjectRelease();
      if (v9[0])
      {
        v5 = v9[1];
        v6 = swift_getObjectType();
        v7 = (*(v5 + 8))(v6, v5);
        swift_unknownObjectRelease();
        return v7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void type metadata accessor for _ContiguousArrayStorage<(EventID, EventType)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>)
  {
    type metadata accessor for (EventID, EventType)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>);
    }
  }
}

uint64_t outlined destroy of (EventID, EventType)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SizeGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t key path getter for SizeGesture.content : <A>SizeGesture<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(double *a1)@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CGSize) -> (@out A);
  a4[1] = v8;
}

uint64_t key path setter for SizeGesture.content : <A>SizeGesture<A>(uint64_t *a1, uint64_t (**a2)(double a1, double a2), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGSize) -> (@out A);
  a2[1] = v8;
  return result;
}

uint64_t SizeGesture.content.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SizeGesture.content.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static SizeGesture._makeGesture(gesture:inputs:)(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v30 = a2[2];
  v31 = v7;
  v32 = *(a2 + 8);
  v8 = a2[1];
  v28 = *a2;
  v29 = v8;
  v9 = *(a2 + 18);
  v26 = *(a2 + 76);
  v27 = *(a2 + 21);
  v10 = *(a2 + 11);
  v11 = a2[6];
  *(v25 + 12) = *(a2 + 108);
  v25[0] = v11;
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  *&v17[0] = __PAIR64__(IndirectAttribute2, v6);
  v14 = type metadata accessor for SizeGestureChild();
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(v17, a3, v14, WitnessTable, &v24);
  v17[2] = v30;
  v17[3] = v31;
  v18 = v32;
  v17[0] = v28;
  v17[1] = v29;
  v19 = v9;
  v20 = v26;
  v21 = v27;
  v22 = v10;
  *&v23[12] = *(v25 + 12);
  *v23 = v25[0];
  return (*(a4 + 32))(&v24, v17, a3, a4);
}

uint64_t SizeGestureChild.gesture.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for SizeGesture();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t SizeGestureChild.value.getter()
{
  SizeGestureChild.gesture.getter(&v3);
  v0 = v3;
  Value = AGGraphGetValue();
  v0(*Value, Value[1]);
}

uint64_t instantiation function for generic protocol witness table for SizeGesture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGSize) -> (@out A)(double a1, double a2)
{
  v3 = *(v2 + 32);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

uint64_t combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, double *a3, uint64_t a4, double *a5, uint64_t a6, double a7)
{
  v50 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CombinedAnimationState.Entry();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  if (a6 == MEMORY[0x1E69E63B0])
  {
    v31 = *a3;
    v32 = *a5;

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v31, a7, v32);
  }

  else
  {
    v49 = a2;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v19 == a6)
    {
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, v49, a4, *a3, a3[1], a3[2], a3[3], a7, *a5, a5[1], a5[2], a5[3]);
    }

    else
    {
      v48 = a4;
      v20 = *a1;
      type metadata accessor for AnimationBox<DefaultCombiningAnimation>();
      v22 = v21;
      v23 = swift_dynamicCastClass();
      v46 = v22;
      v47 = a1;
      if (v23)
      {
        v24 = *(v23 + 16);

        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        AnimationState.init()(&v52);
        v25 = v52;
        (*(v50 + 32))(v18, v15, a6);
        *&v18[*(v16 + 36)] = v25;
        v52 = *v49;
        v26 = type metadata accessor for AnimationState();
        v52 = AnimationState.combinedState.getter(v26);
        type metadata accessor for Array();
        Array.append(_:)();
        specialized AnimationState.combinedState.setter(v52, v26);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v28 = *(v24 + 2);
        v27 = *(v24 + 3);
        if (v28 >= v27 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
        }

        *(v24 + 2) = v28 + 1;
        v29 = &v24[16 * v28];
        *(v29 + 4) = v48;
        *(v29 + 5) = a7;
        result = swift_allocObject();
        *(result + 16) = v24;
        *v47 = result;
      }

      else
      {
        AnimationState.init()(&v52);
        v45 = v20;
        v33 = v50;
        (*(v50 + 16))(v15, a3, a6);
        v34 = *v49;
        v35 = *(v33 + 32);
        v50 = v33 + 32;
        v44 = v35;
        v35(v18, v15, a6);
        *&v18[*(v16 + 36)] = v34;
        v51 = v52;
        v36 = type metadata accessor for AnimationState();

        v51 = AnimationState.combinedState.getter(v36);
        v43 = type metadata accessor for Array();
        Array.append(_:)();
        specialized AnimationState.combinedState.setter(v51, v36);

        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        AnimationState.init()(&v51);
        v37 = v51;
        v44(v18, v15, a6);
        *&v18[*(v16 + 36)] = v37;
        v51 = v52;
        v51 = AnimationState.combinedState.getter(v36);
        Array.append(_:)();
        specialized AnimationState.combinedState.setter(v51, v36);

        v38 = v52;
        v39 = v49;

        *v39 = v38;
        v40 = v48;

        v41 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v45, v40, a7);
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        *v47 = v42;
      }
    }
  }

  return result;
}

uint64_t AnimationState.combinedState.getter(uint64_t a1)
{
  v2 = type metadata accessor for CombinedAnimationState();
  WitnessTable = swift_getWitnessTable();
  AnimationState.subscript.getter(v2, a1, v2, WitnessTable);
  return v5;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DefaultCombiningAnimation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DefaultCombiningAnimation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DefaultCombiningAnimation.Entry()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(**&v1 + 112))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DefaultCombiningAnimation.Entry()
{
  v1 = v0[1];
  (*(**v0 + 112))();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DefaultCombiningAnimation.Entry()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(**&v1 + 112))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DefaultCombiningAnimation.Entry(double *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  return (*(**a1 + 104))(*a2) & (v2 == v3);
}

uint64_t static CombinedAnimationState.defaultValue.getter()
{
  type metadata accessor for CombinedAnimationState.Entry();

  return static Array._allocateUninitialized(_:)();
}

uint64_t protocol witness for static AnimationStateKey.defaultValue.getter in conformance CombinedAnimationState<A>@<X0>(uint64_t *a1@<X8>)
{
  result = static CombinedAnimationState.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t specialized AnimationState.combinedState.setter(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = type metadata accessor for CombinedAnimationState();
  swift_getWitnessTable();
  return specialized AnimationState.subscript.setter(&v5, v3, a2, v3);
}

void specialized DefaultCombiningAnimation.animate<A>(value:time:context:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(_s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(*a1) + 16);

  v42 = a2;
  v7 = *(a2 + 16);
  if (v6 == v7 && v7 != 0)
  {
    type metadata accessor for CombinedAnimationState<Double>();
    v10 = v9;
    v11 = 0;
    v12 = 0.0;
    v13 = 5;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v15 = *a1;
      if (*(*a1 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v17 & 1) != 0))
      {
        outlined init with copy of Any(*(v15 + 56) + 32 * v16, v47);
        outlined init with take of Any(v47, &v48);
        outlined init with take of Any(&v48, v47);
        swift_dynamicCast();
        v18 = v44[0];
      }

      else
      {
        v18 = v14;
      }

      if (v11 >= v18[2])
      {
        break;
      }

      v19 = v18[v13];

      if (v19)
      {
        v21 = *a1;
        v20 = *(a1 + 8);
        v22 = *(a1 + 17);
        v45 = *(a1 + 16);
        v46 = v22;
        v44[0] = v19;
        v44[1] = v20;
        if (*(v21 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v24 & 1) != 0))
        {
          outlined init with copy of Any(*(v21 + 56) + 32 * v23, v47);
          outlined init with take of Any(v47, &v48);
          outlined init with take of Any(&v48, v47);
          swift_dynamicCast();
          v25 = v43;
        }

        else
        {
          v25 = v14;
        }

        if (v11 >= v25[2])
        {
          goto LABEL_46;
        }

        v26 = *&v25[v13 - 1];

        v27 = v26 - v12;
        v28 = *(v42 + v13 * 8 - 8);
        v29 = a3 - *(v42 + v13 * 8);
        *v47 = v27;
        v30 = *(*v28 + 120);

        v30(&v48, v47, v44, MEMORY[0x1E69E63B0], &protocol witness table for Double, v29);

        v31 = *&v48;
        if (BYTE8(v48))
        {
          if (*(v21 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v33 & 1) != 0))
          {
            outlined init with copy of Any(*(v21 + 56) + 32 * v32, v47);
            outlined init with take of Any(v47, &v48);
            outlined init with take of Any(&v48, v47);
            swift_dynamicCast();
            v34 = v43;
          }

          else
          {
            v34 = v14;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
          }

          if (v11 >= v34[2])
          {
            goto LABEL_49;
          }

          v34[v13] = 0;

          v49 = v10;
          *&v48 = v34;
          specialized Dictionary.subscript.setter(&v48, v10);
          if (v6 == 1)
          {
            goto LABEL_38;
          }

          v12 = v12 + v27;
        }

        else
        {
          v38 = v44[0];
          if (*(v21 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v40 & 1) != 0))
          {
            outlined init with copy of Any(*(v21 + 56) + 32 * v39, v47);
            outlined init with take of Any(v47, &v48);
            outlined init with take of Any(&v48, v47);

            swift_dynamicCast();
            v41 = v43;
          }

          else
          {

            v41 = v14;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
          }

          if (v11 >= v41[2])
          {
            goto LABEL_48;
          }

          v41[v13] = v38;

          v49 = v10;
          *&v48 = v41;
          specialized Dictionary.subscript.setter(&v48, v10);
          v12 = v12 + v31;
          if (v6 == 1)
          {
LABEL_38:
            *(a1 + 17) = v46;

            return;
          }
        }
      }

      else
      {
        if (*(v15 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v36 & 1) != 0))
        {
          outlined init with copy of Any(*(v15 + 56) + 32 * v35, v47);
          outlined init with take of Any(v47, &v48);
          outlined init with take of Any(&v48, v47);
          swift_dynamicCast();
          v37 = v44[0];
        }

        else
        {
          v37 = v14;
        }

        if (v11 >= v37[2])
        {
          goto LABEL_47;
        }

        v12 = *&v37[v13 - 1];
      }

      v13 += 2;
      ++v11;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type DefaultCombiningAnimation.Entry and conformance DefaultCombiningAnimation.Entry()
{
  result = lazy protocol witness table cache variable for type DefaultCombiningAnimation.Entry and conformance DefaultCombiningAnimation.Entry;
  if (!lazy protocol witness table cache variable for type DefaultCombiningAnimation.Entry and conformance DefaultCombiningAnimation.Entry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultCombiningAnimation.Entry and conformance DefaultCombiningAnimation.Entry);
  }

  return result;
}

void type metadata accessor for CombinedAnimationState<Double>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<Double>)
  {
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<Double>);
    }
  }
}

double *CGSize.clamped(to:)(double *result)
{
  v1 = result[2];
  if (*result > v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = result[3];
  if (v2 > result[5])
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void _LayoutTraits.Dimension.min.setter(double a1)
{
  *v1 = a1;
  v3 = v1[1];
  v2 = v1[2];
  v6 = *&a1 > -1 && ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a1 - 1) < 0xFFFFFFFFFFFFFLL || (*&a1 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v6 || v3 == INFINITY)
  {
LABEL_20:
    v8 = v2;
    _StringGuts.grow(_:)(22);

    if (v8 == a1)
    {
      v10 = Double.description.getter();
      v12 = v11;
    }

    else
    {
      v16 = Double.description.getter();
      v17 = v13;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v14 = Double.description.getter();
      MEMORY[0x193ABEDD0](v14);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      v10 = v16;
      v12 = v17;
    }

    MEMORY[0x193ABEDD0](v10, v12);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v2 < a1)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v3 < a1 || v3 > v2)
  {
    goto LABEL_20;
  }
}

double **_LayoutTraits.Dimension.min.modify(double **result, char a2)
{
  if (a2)
  {
    return result;
  }

  v2 = **result;
  v3 = (*result)[1];
  v4 = (*result)[2];
  v7 = *&v2 > -1 && ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v2 - 1) < 0xFFFFFFFFFFFFFLL || (*&v2 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v7 || v3 == INFINITY)
  {
    goto LABEL_21;
  }

  if (v2 > v4)
  {
    __break(1u);
LABEL_21:
    v9 = v4;
    v10 = v2;
    _StringGuts.grow(_:)(22);

    if (v10 == v9)
    {
      v11 = Double.description.getter();
      v13 = v12;
    }

    else
    {
      v17 = Double.description.getter();
      v18 = v14;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v16 = Double.description.getter();
      MEMORY[0x193ABEDD0](v16);

      v11 = v17;
      v13 = v18;
    }

    MEMORY[0x193ABEDD0](v11, v13);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v2 > v3 || v3 > v4)
  {
    goto LABEL_21;
  }

  return result;
}

void _LayoutTraits.Dimension.ideal.setter(double a1)
{
  v1[1] = a1;
  v2 = *v1;
  v3 = v1[2];
  v4 = *v1 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *v1 > -1 && (v4 - 0x10000000000000) >> 53 < 0x3FF || (*v1 - 1) < 0xFFFFFFFFFFFFFLL || v4 == 0;
  if (!v7 || a1 == INFINITY)
  {
LABEL_20:
    v9 = v3;
    v10 = v2;
    _StringGuts.grow(_:)(22);

    if (v10 == v9)
    {
      v11 = Double.description.getter();
      v13 = v12;
    }

    else
    {
      v17 = Double.description.getter();
      v18 = v14;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v16 = Double.description.getter();
      MEMORY[0x193ABEDD0](v16);

      v11 = v17;
      v13 = v18;
    }

    MEMORY[0x193ABEDD0](v11, v13);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v2 > v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v2 > a1 || v3 < a1)
  {
    goto LABEL_20;
  }
}

void _LayoutTraits.Dimension.max.setter(double a1)
{
  v1[2] = a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = *v1 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *v1 > -1 && (v4 - 0x10000000000000) >> 53 < 0x3FF || (*v1 - 1) < 0xFFFFFFFFFFFFFLL || v4 == 0;
  if (!v7 || v3 == INFINITY)
  {
LABEL_20:
    v10 = v2;
    _StringGuts.grow(_:)(22);

    if (v10 == a1)
    {
      v11 = Double.description.getter();
      v13 = v12;
    }

    else
    {
      v17 = Double.description.getter();
      v18 = v14;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v16 = Double.description.getter();
      MEMORY[0x193ABEDD0](v16);

      v11 = v17;
      v13 = v18;
    }

    MEMORY[0x193ABEDD0](v11, v13);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v2 > a1)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v2 > v3 || v3 > a1)
  {
    goto LABEL_20;
  }
}

void static _LayoutTraits.Dimension.fixed(_:)(double *a1@<X8>, double a2@<D0>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
}

double _LayoutTraits.width.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double _LayoutTraits.width.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

double _LayoutTraits.height.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

double _LayoutTraits.height.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = result;
  return result;
}

void _LayoutTraits.init()(void *a1@<X8>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0x7FF0000000000000;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0x7FF0000000000000;
}

double _LayoutTraits.subscript.getter@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = (v2 + 16);
  if (a1)
  {
    v3 = (v2 + 40);
  }

  result = *v3;
  v5 = vdup_n_s32((a1 & 1) == 0);
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  *a2 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v6, 0x3FuLL)), *v2, *(v2 + 24));
  *(a2 + 16) = result;
  return result;
}

void *_LayoutTraits.subscript.setter(void *result, char a2)
{
  v3 = result[1];
  v4 = result[2];
  v5 = 24;
  if ((a2 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 32;
  if ((a2 & 1) == 0)
  {
    v6 = 8;
  }

  *(v2 + v5) = *result;
  v7 = 16;
  if (a2)
  {
    v7 = 40;
  }

  *(v2 + v6) = v3;
  *(v2 + v7) = v4;
  return result;
}

void (*_LayoutTraits.subscript.modify(int8x16_t **a1, __int8 a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v5[1].i64[1] = v2;
  v5[2].i8[0] = a2;
  v6 = (v2 + 16);
  if (a2)
  {
    v6 = (v2 + 40);
  }

  v7 = *v6;
  v8 = vdup_n_s32((a2 & 1) == 0);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  *v5 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), *v2, *(v2 + 24));
  v5[1].i64[0] = v7;
  return _LayoutTraits.subscript.modify;
}

void _LayoutTraits.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = v1[1];
  v4 = v1[2];
  v5 = (v1[4] & 1) == 0;
  v6 = 24;
  if ((v1[4] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 32;
  if ((v1[4] & 1) == 0)
  {
    v7 = 8;
  }

  *(v2 + v6) = *v1;
  if (v5)
  {
    v8 = 16;
  }

  else
  {
    v8 = 40;
  }

  *(v2 + v7) = v3;
  *(v2 + v8) = v4;
  free(v1);
}

void _LayoutTraits.init(width:height:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a3;
  a1[5] = a3;
}

uint64_t _LayoutTraits.description.getter()
{
  v1 = v0[3];
  v2 = v0[5];
  if (*v0 == v0[2])
  {
    v3 = Double.description.getter();
    v5 = v4;
  }

  else
  {
    v16 = Double.description.getter();
    v18 = v6;
    MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
    v7 = Double.description.getter();
    MEMORY[0x193ABEDD0](v7);

    MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
    v8 = Double.description.getter();
    MEMORY[0x193ABEDD0](v8);

    v3 = v16;
    v5 = v18;
  }

  MEMORY[0x193ABEDD0](v3, v5);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  if (v1 == v2)
  {
    v9 = Double.description.getter();
    v11 = v10;
  }

  else
  {
    v17 = Double.description.getter();
    v19 = v12;
    MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
    v13 = Double.description.getter();
    MEMORY[0x193ABEDD0](v13);

    MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
    v14 = Double.description.getter();
    MEMORY[0x193ABEDD0](v14);

    v9 = v17;
    v11 = v19;
  }

  MEMORY[0x193ABEDD0](v9, v11);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 40;
}

uint64_t _LayoutTraits.Dimension.description.getter()
{
  if (*v0 == v0[2])
  {
    return Double.description.getter();
  }

  v4 = Double.description.getter();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  return v4;
}

void (*_LayoutTraits.idealSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  return _LayoutTraits.idealSize.modify;
}

void _LayoutTraits.minSize.setter(double a1, double a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  _LayoutTraits.Dimension._checkInvariant()();
  *v2 = a1;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  _LayoutTraits.Dimension._checkInvariant()();
  *(v2 + 24) = a2;
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;
}

void (*_LayoutTraits.minSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  v2 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  return _LayoutTraits.minSize.modify;
}

void _LayoutTraits.maxSize.setter(double a1, double a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  _LayoutTraits.Dimension._checkInvariant()();
  *v2 = v5;
  *(v2 + 1) = v6;
  v2[2] = a1;
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  _LayoutTraits.Dimension._checkInvariant()();
  *(v2 + 3) = v7;
  *(v2 + 4) = v8;
  v2[5] = a2;
}

void (*_LayoutTraits.maxSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return _LayoutTraits.maxSize.modify;
}

BOOL specialized static _LayoutTraits.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[3] == a2[3];
  if (a1[4] != a2[4])
  {
    v5 = 0;
  }

  return a1[5] == a2[5] && v5;
}

BOOL specialized static _LayoutTraits.FlexibilityEstimate.< infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1] - *a1;
  v3 = a2[1] - *a2;
  if (v2 == INFINITY)
  {
    v4 = a2[1] - *a2;
    if (v3 == INFINITY)
    {
      v5 = -*a1;
      v6 = -*a2;
      return v5 < v6;
    }
  }

  else
  {
    v4 = INFINITY;
    if (v3 != INFINITY)
    {
      v6 = 0.0;
      v5 = 0.0;
      v4 = a2[1] - *a2;
      if (v2 == v3)
      {
        return v5 < v6;
      }
    }
  }

  return v2 < v4;
}

unint64_t lazy protocol witness table accessor for type _LayoutTraits.FlexibilityEstimate and conformance _LayoutTraits.FlexibilityEstimate()
{
  result = lazy protocol witness table cache variable for type _LayoutTraits.FlexibilityEstimate and conformance _LayoutTraits.FlexibilityEstimate;
  if (!lazy protocol witness table cache variable for type _LayoutTraits.FlexibilityEstimate and conformance _LayoutTraits.FlexibilityEstimate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutTraits.FlexibilityEstimate and conformance _LayoutTraits.FlexibilityEstimate);
  }

  return result;
}

uint64_t static GestureUtilities.requestUpdate(by:useGestureGraph:)(double *a1, char a2)
{
  v3 = *a1;
  specialized static GraphHost.currentHost.getter();
  if (a2)
  {
    type metadata accessor for GestureGraph();
    v4 = swift_dynamicCastClassUnconditional();
    v5 = *(v4 + 272);
    if (v3 < v5)
    {
      v5 = v3;
    }

    *(v4 + 272) = v5;
  }

  else
  {
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v8 = *(v7 + 408);
    if (v3 < v8)
    {
      v8 = v3;
    }

    *(v7 + 408) = v8;
  }
}

uint64_t protocol witness for FontProvider.resolveTraits(in:) in conformance Font.DefaultProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  return (*(**(a1 + 32) + 104))(v3, *(a1 + 32));
}

uint64_t specialized static ViewModifier<>._makeViewList(modifier:inputs:body:)@<X0>(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v26[2] = a2[2];
  LODWORD(v23) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(&v23, v26);
  v10 = v23;
  static DynamicPropertyCache.fields(of:)(v5, &v23);
  v11 = v23;
  v12 = v24;
  v13 = v25;
  outlined init with copy of _ViewListInputs(a2, &v23);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v19) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v23, v11, *(&v11 + 1), v12 | (v13 << 32), v10, &v19);
    v16 = v21;
    v17 = v20;
    v14 = v22;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeW033_62A32D59B8A902A88963544196023CF7LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5(&v23, a5);
      AGSubgraphEndTreeElement();
      if ((v14 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v19) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v10, v11, *(&v11 + 1), v12, v17, v16);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(&v23);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5(&v23, a5);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v23);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v27[0] = *a2;
  v27[1] = v7;
  v27[2] = a2[2];
  LODWORD(v24) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(&v24, v27);
  v8 = v24;
  static DynamicPropertyCache.fields(of:)(v5, &v24);
  v9 = v24;
  v10 = v25;
  v11 = v26;
  outlined init with copy of _ViewListInputs(a2, &v24);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
    LOBYTE(v20) = v10;
    v16 = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v24, v9, *(&v9 + 1), v10 | (v11 << 32), v8, &v20);
    v12 = v21;
    v13 = v22;
    v14 = v23;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickW033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v24, a5);
      AGSubgraphEndTreeElement();
      if ((v14 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v20) = v10;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v16, v9, *(&v9 + 1), v10, v12, v13);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(&v24);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v24, a5);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v24);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

uint64_t static ViewModifier<>._makeViewList(modifier:inputs:body:)(unsigned int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  v20[0] = *a2;
  v20[1] = v11;
  v13 = *a2;
  v12 = a2[1];
  v20[2] = a2[2];
  v19 = *a1;
  v16 = v13;
  v17 = v12;
  v18 = a2[2];
  outlined init with copy of _GraphInputs(v20, v21);
  v14 = static Animatable.makeAnimatable(value:inputs:)(&v19, &v16, a5, a6);
  v21[0] = v16;
  v21[1] = v17;
  v21[2] = v18;
  outlined destroy of _GraphInputs(v21);
  _GraphValue.init(_:)(v14, &v16);
  return static ViewModifier.makeViewList(modifier:inputs:body:)(&v16, a2, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance KickModifier(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(unsigned int *, _OWORD *), uint64_t (*a8)(void, _OWORD *, uint64_t, uint64_t))
{
  v11 = *a1;
  v12 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v12;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v21[0] = v16[0];
  v21[1] = v13;
  v21[2] = v17;
  v15 = v11;
  a7(&v15, v21);
  return a8(v15, v16, a3, a4);
}

void static EmptyView._makeView(view:inputs:)(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA09GlassItemC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt0B5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = *a1;
  v1 = *(a1 + 24);
  v23 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21[0] = *(a1 + 57);
  *(v21 + 15) = *(a1 + 72);
  if (v1)
  {
    v6 = v1;
    while (*v6 != &type metadata for GlassItemView)
    {
      v6 = v6[3];
      if (!v6)
      {
        v17 = &type metadata for GlassItemView;
        v18 = 0;
        v19 = 256;
        v20 = v1;
        v1 = &v17;
        v5 &= 1u;
        v24 = *a1;
        v25 = *(a1 + 16);
        v26 = &v17;
        v27 = v2;
        v28 = v3;
        v29 = v4;
        v30 = v5;
        *v31 = *(a1 + 57);
        *&v31[15] = *(a1 + 72);
        outlined init with copy of _ViewListCountInputs(a1, &v9);
        v7 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA020GlassTransitionStateD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(&v24, protocol witness for static View._viewListCount(inputs:) in conformance Text, 0);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(a1, &v24);
    v7 = 0;
  }

  else
  {
    v17 = &type metadata for GlassItemView;
    v18 = 0;
    v19 = 256;
    v20 = 0;
    v1 = &v17;
    v24 = *a1;
    v25 = *(a1 + 16);
    v26 = &v17;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v5 = 1;
    v30 = 1;
    *&v31[15] = *(a1 + 72);
    *v31 = *(a1 + 57);
    outlined init with copy of _ViewListCountInputs(a1, &v9);
    outlined init with copy of _ViewListCountInputs(&v24, &v9);
    v7 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA020GlassTransitionStateD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(&v24, protocol witness for static View._viewListCount(inputs:) in conformance Text, 0);
    outlined destroy of _ViewListCountInputs(&v24);
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

LABEL_8:
  v9 = v22;
  v10 = v23;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  *v16 = v21[0];
  *&v16[15] = *(v21 + 15);
  outlined destroy of _ViewListCountInputs(&v9);
  return v7;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 24);
    v5 = *(a1 + 56);
    while (*v4 != &type metadata for SummarySymbol)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        v1 = &v9;
        v5 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v5 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt0B5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = *a1;
  v1 = *(a1 + 24);
  v23 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21[0] = *(a1 + 57);
  *(v21 + 15) = *(a1 + 72);
  if (v1)
  {
    v6 = v1;
    while (*v6 != &type metadata for GlassEntryView)
    {
      v6 = v6[3];
      if (!v6)
      {
        v17 = &type metadata for GlassEntryView;
        v18 = 0;
        v19 = 256;
        v20 = v1;
        v1 = &v17;
        v5 &= 1u;
        v24 = *a1;
        v25 = *(a1 + 16);
        v26 = &v17;
        v27 = v2;
        v28 = v3;
        v29 = v4;
        v30 = v5;
        *v31 = *(a1 + 57);
        *&v31[15] = *(a1 + 72);
        outlined init with copy of _ViewListCountInputs(a1, &v9);
        v7 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v24, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(a1, &v24);
    v7 = 0;
  }

  else
  {
    v17 = &type metadata for GlassEntryView;
    v18 = 0;
    v19 = 256;
    v20 = 0;
    v1 = &v17;
    v24 = *a1;
    v25 = *(a1 + 16);
    v26 = &v17;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v5 = 1;
    v30 = 1;
    *&v31[15] = *(a1 + 72);
    *v31 = *(a1 + 57);
    outlined init with copy of _ViewListCountInputs(a1, &v9);
    outlined init with copy of _ViewListCountInputs(&v24, &v9);
    v7 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v24, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
    outlined destroy of _ViewListCountInputs(&v24);
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

LABEL_8:
  v9 = v22;
  v10 = v23;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  *v16 = v21[0];
  *&v16[15] = *(v21 + 15);
  outlined destroy of _ViewListCountInputs(&v9);
  return v7;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 24);
    v5 = *(a1 + 56);
    while (*v4 != &type metadata for GlassEffectView)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        v1 = &v9;
        v5 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v5 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_M0VyAA0ij5LocalN008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGAA0ijkN0APLLVGG_Tt0B5(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
  v3 = v2;
  v4 = a1;
  v26 = *a1;
  v5 = *(a1 + 24);
  v27 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v25[0] = *(a1 + 57);
  *(v25 + 15) = *(a1 + 72);
  if (v5)
  {
    v10 = v5;
    do
    {
      if (*v10 == v3)
      {
        outlined init with copy of _ViewListCountInputs(a1, &v28);
        v11 = 0;
        goto LABEL_14;
      }

      v10 = v10[3];
    }

    while (v10);
    v21 = v3;
    v22 = 0;
    v23 = 256;
    v24 = v5;
    v9 &= 1u;
    v28 = *a1;
    v29 = *(a1 + 16);
    v30 = &v21;
    v31 = v6;
    v32 = v7;
    v33 = v8;
    v34 = v9;
    *v35 = *(a1 + 57);
    *&v35[15] = *(a1 + 72);
    outlined init with copy of _ViewListCountInputs(a1, &v13);
    if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5())
    {
      v11 = 1;
    }

    else
    {
      v11 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectLocalI008_3DF70D9O23D7473F4D189A049B764CFEFLLVG_TtB5();
    }

    v5 = &v21;
  }

  else
  {
    v21 = v3;
    v22 = 0;
    v23 = 256;
    v24 = 0;
    v28 = *a1;
    v29 = *(a1 + 16);
    v30 = &v21;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v11 = 1;
    v34 = 1;
    *&v35[15] = *(v4 + 72);
    *v35 = *(v4 + 57);
    outlined init with copy of _ViewListCountInputs(v4, &v13);
    outlined init with copy of _ViewListCountInputs(&v28, &v13);
    if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5() & 1) == 0)
    {
      v11 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectLocalI008_3DF70D9O23D7473F4D189A049B764CFEFLLVG_TtB5();
    }

    v5 = &v21;
    outlined destroy of _ViewListCountInputs(&v28);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

LABEL_14:
  v13 = v26;
  v14 = v27;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  *v20 = v25[0];
  *&v20[15] = *(v25 + 15);
  outlined destroy of _ViewListCountInputs(&v13);
  return v11;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5(uint64_t a1)
{

  return _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(a1, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA20CombinedContentShape33_6E67AD6866B38627EB183D41FF0BA80ALLV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 24);
    v5 = *(a1 + 56);
    while (*v4 != &type metadata for CombinedContentShape)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        v1 = &v9;
        v5 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v5 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA019GlassEntryContainerC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 24);
    v5 = *(a1 + 56);
    while (*v4 != &type metadata for GlassEntryContainerView)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        v1 = &v9;
        v5 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v5 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAQG_Tt0B5(uint64_t a1)
{

  return _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(a1, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2(0);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 24);
    v8 = *(a1 + 56);
    while (*v7 != v3)
    {
      v7 = v7[3];
      if (!v7)
      {
        v4 = &v11;
        v8 &= 1u;
        break;
      }
    }
  }

  else
  {
    v6 = 0;
    v4 = &v11;
    v5 = 0uLL;
    v8 = 1;
  }

  v11 = *a1;
  v12 = *(a1 + 16);
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  *v17 = *(a1 + 57);
  *&v17[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v10);
  outlined destroy of _ViewListCountInputs(&v11);
  return 0;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA022_GlassContainerStorageC0V_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for _GlassContainerStorageView)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA9RectangleVAAE17AsymmetricalInsetV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Rectangle.AsymmetricalInset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA14LinearGradientV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for LinearGradient)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA14RadialGradientV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for RadialGradient)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA15AngularGradientV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for AngularGradient)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA16RoundedRectangleV6_InsetV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for RoundedRectangle._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA16RoundedRectangleV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for RoundedRectangle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA18EllipticalGradientV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for EllipticalGradient)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA19ConcentricRectangleV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for ConcentricRectangle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA20_IntelligenceSupportO13AnimatingTextV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for _IntelligenceSupport.AnimatingText)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA20_IntelligenceSupportO22AnimatingSummarySymbolV_Tt0B5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = *a1;
  v1 = *(a1 + 24);
  v23 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21[0] = *(a1 + 57);
  *(v21 + 15) = *(a1 + 72);
  if (v1)
  {
    v6 = v1;
    while (*v6 != &type metadata for _IntelligenceSupport.AnimatingSummarySymbol)
    {
      v6 = v6[3];
      if (!v6)
      {
        v17 = &type metadata for _IntelligenceSupport.AnimatingSummarySymbol;
        v18 = 0;
        v19 = 256;
        v20 = v1;
        v1 = &v17;
        v5 &= 1u;
        v24 = *a1;
        v25 = *(a1 + 16);
        v26 = &v17;
        v27 = v2;
        v28 = v3;
        v29 = v4;
        v30 = v5;
        *v31 = *(a1 + 57);
        *&v31[15] = *(a1 + 72);
        outlined init with copy of _ViewListCountInputs(a1, &v9);
        outlined init with copy of _ViewListCountInputs(&v24, &v9);
        v7 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(&v24);
        outlined destroy of _ViewListCountInputs(&v24);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(a1, &v24);
    v7 = 0;
  }

  else
  {
    v17 = &type metadata for _IntelligenceSupport.AnimatingSummarySymbol;
    v18 = 0;
    v19 = 256;
    v20 = 0;
    v1 = &v17;
    v24 = *a1;
    v25 = *(a1 + 16);
    v26 = &v17;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v5 = 1;
    v30 = 1;
    *&v31[15] = *(a1 + 72);
    *v31 = *(a1 + 57);
    outlined init with copy of _ViewListCountInputs(a1, &v9);
    outlined init with copy of _ViewListCountInputs(&v24, &v9);
    v7 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(&v24);
    outlined destroy of _ViewListCountInputs(&v24);
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

LABEL_8:
  v9 = v22;
  v10 = v23;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  *v16 = v21[0];
  *&v16[15] = *(v21 + 15);
  outlined destroy of _ViewListCountInputs(&v9);
  return v7;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22ContainerRelativeShapeV6_InsetV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for ContainerRelativeShape._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22ContainerRelativeShapeV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for ContainerRelativeShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22ImplicitContainerShapeV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for ImplicitContainerShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22UnevenRoundedRectangleV6_InsetV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for UnevenRoundedRectangle._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22UnevenRoundedRectangleV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for UnevenRoundedRectangle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA23DefaultGlassEffectShapeV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for DefaultGlassEffectShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA29PartialContainerRelativeShapeV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for PartialContainerRelativeShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA4PathV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Path)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA6CircleV6_InsetV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Circle._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA6CircleV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Circle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA03AnyC0V_Tt0B5(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for AnyView)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v8;
        v4 &= 1u;
        break;
      }
    }
  }

  else
  {
    v3 = 0;
    v1 = &v8;
    v2 = 0uLL;
    v4 = 1;
  }

  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  *v14 = *(a1 + 57);
  *&v14[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v7);
  outlined destroy of _ViewListCountInputs(&v8);
  return 0;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7CapsuleV6_InsetV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Capsule._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7CapsuleV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Capsule)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7EllipseV6_InsetV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Ellipse._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7EllipseV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Ellipse)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA8AnyShapeV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for AnyShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA8_TestAppV04RootC0V_Tt0B5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = *a1;
  v1 = *(a1 + 24);
  v23 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21[0] = *(a1 + 57);
  *(v21 + 15) = *(a1 + 72);
  if (v1)
  {
    v6 = v1;
    while (*v6 != &type metadata for _TestApp.RootView)
    {
      v6 = v6[3];
      if (!v6)
      {
        v17 = &type metadata for _TestApp.RootView;
        v18 = 0;
        v19 = 256;
        v20 = v1;
        v1 = &v17;
        v5 &= 1u;
        v24 = *a1;
        v25 = *(a1 + 16);
        v26 = &v17;
        v27 = v2;
        v28 = v3;
        v29 = v4;
        v30 = v5;
        *v31 = *(a1 + 57);
        *&v31[15] = *(a1 + 72);
        outlined init with copy of _ViewListCountInputs(a1, &v9);
        outlined init with copy of _ViewListCountInputs(&v24, &v9);
        v7 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA03AnyC0V_Tt0B5(&v24);
        outlined destroy of _ViewListCountInputs(&v24);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(a1, &v24);
    v7 = 0;
  }

  else
  {
    v17 = &type metadata for _TestApp.RootView;
    v18 = 0;
    v19 = 256;
    v20 = 0;
    v1 = &v17;
    v24 = *a1;
    v25 = *(a1 + 16);
    v26 = &v17;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v5 = 1;
    v30 = 1;
    *&v31[15] = *(a1 + 72);
    *v31 = *(a1 + 57);
    outlined init with copy of _ViewListCountInputs(a1, &v9);
    outlined init with copy of _ViewListCountInputs(&v24, &v9);
    v7 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA03AnyC0V_Tt0B5(&v24);
    outlined destroy of _ViewListCountInputs(&v24);
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

LABEL_8:
  v9 = v22;
  v10 = v23;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  *v16 = v21[0];
  *&v16[15] = *(v21 + 15);
  outlined destroy of _ViewListCountInputs(&v9);
  return v7;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA9RectangleV6_InsetV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Rectangle._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA9RectangleV_Tt0B5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 24);
    while (*v5 != &type metadata for Rectangle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 72);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

__n128 _ViewList_Backing.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t static _VariadicView_Children._makeViewList(view:inputs:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>();
  lazy protocol witness table accessor for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child();
  v4 = Attribute.init<A>(body:value:flags:update:)();
  if (!AGSubgraphShouldRecordTree())
  {
    return _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v4, a1, a2);
  }

  AGSubgraphBeginTreeElement();
  _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v4, a1, a2);
  return AGSubgraphEndTreeElement();
}

uint64_t static _VariadicView_Children._viewListCount(inputs:)(_OWORD *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(v4, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
}

double protocol witness for static Rule.initialValue.getter in conformance _VariadicView_Children.Child@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance _VariadicView_Children.Child@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of _VariadicView_Children(Value, v4);
  return _s7SwiftUI7ForEachVAA7Element_2IDQZRs_AA4ViewR0_s12IdentifiableADRpzrlE_7contentACyxq_q0_Gx_q0_AIctcfCAA09_VariadicG9_ChildrenV_s11AnyHashableVAmDVTt2g5(v4, closure #1 in _VariadicView_Children.Child.value.getter, 0, a1);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance _VariadicView_Children(_OWORD *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(v4, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
}

uint64_t _VariadicView_Children.Element.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 96) = v2;
  return result;
}

uint64_t _VariadicView_Children.Element.id<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(*(v3 + 64) + 16))
  {
  }

  else
  {
    v7 = 0;
  }

  v10[5] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10[2] = a1;
  v10[3] = a2;
  type metadata accessor for AnyHashable2?(0, &lazy cache variable for type metadata for AnyHashable2?, &type metadata for AnyHashable2, MEMORY[0x1E69E6720]);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _VariadicView_Children.Element.id<A>(as:), v10, MEMORY[0x1E69E73E0], a1, v8, a3);
}

uint64_t _VariadicView_Children.Element.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _VariadicView_Children.Element.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*_VariadicView_Children.Element.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  ViewTraitCollection.subscript.getter(a3, a4, v15);
  return _VariadicView_Children.Element.subscript.modify;
}

void _VariadicView_Children.Element.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized _VariadicView_Children.Element.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized _VariadicView_Children.Element.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double _ViewList_View.init(elements:id:index:count:contentSubgraph:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a2 + 8);
  outlined init with copy of _ViewList_SubgraphElements(a1, a6);

  v13 = _ViewList_SublistSubgraphStorage.retain()();
  outlined destroy of _ViewList_SubgraphElements(a1);

  a6[6] = v13;
  result = *a2;
  a6[7] = *a2;
  a6[8] = v12;
  a6[9] = a3;
  a6[10] = a4;
  a6[11] = a5;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _VariadicView_Children@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
LABEL_7:
    swift_once();
  }

  v5 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v5);
  if (v4 < 0 || v4 >= v8)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _VariadicView_Children(uint64_t *a1)
{
  v3 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = a1;
  if (one-time initialization token for _lock != -1)
  {
LABEL_7:
    swift_once();
  }

  v4 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = ViewList.count.getter(v5, v6);
  static Update.end()();
  result = _MovableLockUnlock(v4);
  if (v3 < 0 || v3 >= v7)
  {
    __break(1u);
  }

  else
  {
    *v1 = v3;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance _VariadicView_Children@<X0>(void *a1@<X8>)
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
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v6;
  }

  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _VariadicView_Children@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
LABEL_7:
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = ViewList.count.getter(v7, v8);
  static Update.end()();
  result = _MovableLockUnlock(v6);
  if (v5 < 0 || v9 < v5)
  {
    __break(1u);
  }

  else
  {
    *a3 = v5;
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance _VariadicView_Children@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v5 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v5);
  if (v4 < 0 || v4 >= v8)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance _VariadicView_Children@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  *(a1 + 64) = 0;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance _VariadicView_Children()
{
  v1 = v0;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v3 = v0[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = ViewList.count.getter(v3, v4);
  static Update.end()();
  _MovableLockUnlock(v2);
  _MovableLockLock(v2);
  specialized static Update.begin()();
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v2);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v2);
    specialized static Update.begin()();
    v10 = v1[3];
    v11 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v10);
    v12 = ViewList.count.getter(v10, v11);
    static Update.end()();
    result = _MovableLockUnlock(v2);
    if ((v5 & 0x8000000000000000) == 0 && v12 >= v5)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _VariadicView_Children()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of _VariadicView_Children(v0);
  return v1;
}

uint64_t _ViewList_Backing.viewCount.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return ViewList.count.getter(v2, v3);
}

uint64_t specialized closure #1 in closure #1 in _ViewList_Backing.visitViews<A>(applying:from:)(uint64_t result, uint64_t a2, char **a3)
{
  v50 = a3;
  v4 = *result;
  v3 = *(result + 8);
  v51 = result;
  if (v4 >= v3)
  {
    return 1;
  }

  v5 = *(v51 + 20);
  v49 = *(v51 + 16);
  v6 = *(v51 + 24);
  v7 = *(a2 + 40);
  v9 = v3 == 1 && v5 < 0;
  HIDWORD(v44) = v9;
  v47 = v3;
  v48 = v5;
  v46 = v6;
  v45 = v7;
  while (1)
  {
    if (v4 >= v3)
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    outlined init with copy of _ViewList_SubgraphElements(v51 + 32, v54);
    outlined init with copy of _ViewList_SubgraphElements(v54, v57);
    v10 = v56;
    if (v56 >> 62)
    {
      break;
    }

    v11 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_46:

    v27 = v7;
LABEL_47:
    outlined destroy of _ViewList_SubgraphElements(v54);
    v26 = 0;
LABEL_48:
    v58 = v26;
    v59 = v49;
    v60 = v5;
    v61 = v6;
    v62 = v4;
    v63 = v3;
    v64 = v7;
    v28 = *(v6 + 16);

    if (v28)
    {
      v29 = *(v6 + 32);
      v30 = *(v6 + 52);

      if (v30)
      {
        v31 = -1;
      }

      else
      {
        v31 = v5;
      }

      if (v3 == 1 && v31 < 0)
      {
        if (!v29)
        {
          goto LABEL_76;
        }

        (*(*v29 + 104))(v53, result);
        v32 = __swift_project_boxed_opaque_existential_1(v53, v53[3]);
        v33 = MEMORY[0x1EEE9AC00](v32);
        (*(v35 + 16))(&v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v33);

        AnyHashable.init<A>(_:)();
        __swift_destroy_boxed_opaque_existential_1(v53);

        goto LABEL_61;
      }
    }

    else
    {

      if ((v44 & 0x100000000) != 0)
      {
        goto LABEL_76;
      }

      v29 = 0;
      v31 = v5;
    }

    if (v4 < 0xFFFFFFFF80000000)
    {
      goto LABEL_71;
    }

    if (v4 > 0x7FFFFFFF)
    {
      goto LABEL_72;
    }

    v53[0] = __PAIR64__(v31, v4);
    v53[1] = v29;
    lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();

    AnyHashable.init<A>(_:)();

LABEL_61:
    v36 = v50;
    v37 = *v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v36 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
      *v50 = v37;
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
      *v50 = v37;
    }

    ++v4;
    *(v37 + 2) = v40 + 1;
    v41 = &v37[40 * v40];
    v42 = v54[0];
    v43 = v54[1];
    *(v41 + 8) = v55;
    *(v41 + 2) = v42;
    *(v41 + 3) = v43;
    result = outlined destroy of _ViewList_View(v57);
    if (v4 == v3)
    {
      return 1;
    }
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_46;
  }

  v11 = __CocoaSet.count.getter();
LABEL_12:

  result = v7;
  if (!v11)
  {
    goto LABEL_47;
  }

  v52 = v10 >> 62;
  v12 = v11;
  while (1)
  {
    v13 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if ((v10 & 0xC000000000000001) == 0)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v14 = *(v10 + 32 + 8 * v13);

      v15 = *(v14 + 24);
      if (!v15)
      {
        break;
      }

      goto LABEL_19;
    }

    v14 = MEMORY[0x193AC03C0](v12 - 1, v10);
    v15 = *(v14 + 24);
    if (!v15)
    {
      break;
    }

LABEL_19:
    if (!AGSubgraphIsValid())
    {
      break;
    }

    *(v14 + 24) = v15 + 1;

    --v12;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v3 = v47;
  v5 = v48;
  v6 = v46;
  v7 = v45;
  v16 = v52;
  if (v12 >= v11)
  {
    goto LABEL_47;
  }

  if (v52)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v12)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v12 < 0)
  {
    goto LABEL_74;
  }

  if (v16)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v11)
  {
    v17 = v16;
    if ((v10 & 0xC000000000000001) == 0 || v12 == v11)
    {

      if (!v16)
      {
        goto LABEL_39;
      }
    }

    else
    {
      type metadata accessor for _ViewList_Subgraph();

      v18 = v12;
      do
      {
        v19 = v18 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v18);
        v18 = v19;
      }

      while (v11 != v19);
      if (!v17)
      {
LABEL_39:
        v20 = v10 & 0xFFFFFFFFFFFFFF8;
        v21 = v20 + 32;
        v22 = (2 * v11) | 1;
LABEL_42:
        outlined destroy of _ViewList_SubgraphElements(v54);
        type metadata accessor for _ViewList_SubgraphRelease();
        v26 = swift_allocObject();
        v26[2] = v20;
        v26[3] = v21;
        v26[4] = v12;
        v26[5] = v22;
        v5 = v48;
        goto LABEL_48;
      }
    }

    v20 = _CocoaArrayWrapper.subscript.getter();
    v21 = v23;
    v12 = v24;
    v22 = v25;
    goto LABEL_42;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t _ViewList_Backing.ids.getter()
{
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_boxed_opaque_existential_1(v0, v2);
  MEMORY[0x1EEE9AC00](v4);
  v6[2] = v0;
  v6[3] = &v9;
  v7 = 1;
  ViewList.applySublists(from:list:to:)(&v8, 0x100000000uLL, partial apply for specialized closure #1 in closure #1 in _ViewList_Backing.visitViews<A>(applying:from:), v6, v2, v3);
  static Update.end()();
  _MovableLockUnlock(v1);
  return v9;
}

uint64_t _ViewList_View.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

double _ViewList_View.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 64) = v3;
  return result;
}

uint64_t _ViewList_View.elementID.getter@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 72);
  *(a1 + 4) = *(v1 + 60);
  *(a1 + 8) = result;
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    *a1 = v3;
  }

  __break(1u);
  return result;
}

Swift::Int _ViewList_View.reuseIdentifier.getter()
{
  v1 = *(v0 + 72);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    return _ViewList_ID.reuseIdentifier.getter();
  }

  __break(1u);
  return result;
}

uint64_t _ViewList_View.subviewID.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = *(v1 + 60);
  result = *(v1 + 64);
  v3 = *(v1 + 72);
  *(a1 + 8) = result;
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    *a1 = v3;
  }

  __break(1u);
  return result;
}

uint64_t PlaceholderInfo.reuseItem(info:placeholder:)(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 184);
  if (v3)
  {
    v4 = v2;
    if (*(v2 + 168))
    {
      outlined init with copy of AnyTrackedValue(v2 + 144, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v9 = a1[3];
      v16[3] = &type metadata for _ViewList_SubgraphElements;
      v16[4] = &protocol witness table for _ViewList_SubgraphElements;
      v16[0] = swift_allocObject();
      outlined init with copy of _ViewList_SubgraphElements(a2, v16[0] + 16);
      v10 = a2[9];
      v11 = *(v8 + 24);

      LOBYTE(v9) = v11(v9, v16, v10, v3, 0, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      if (v9)
      {
        if (*(v4 + 212))
        {
          __break(1u);
        }

        else
        {
          AGGraphMutateAttribute();
          v17[0] = a2[5];

          v13 = _ViewList_SublistSubgraphStorage.retain()();

          *(v4 + 136) = v13;
          v14 = a2[8];

          v15 = a2[7];

          result = 1;
          *a1 = v15;
          a1[1] = v14;
          a1[3] = v10;
        }

        return result;
      }
    }
  }

  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    v16[0] = &type metadata for _ViewList_View;
    AGGraphAddTraceEvent();
  }

  return 0;
}

uint64_t PlaceholderInfo.eraseItem()()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v3 = *(v1 + 108);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *MEMORY[0x1E698D3F8];
    v6 = v2 + 48;

    do
    {
      v6 += 24;
      AGGraphSetIndirectAttribute();
      --v4;
    }

    while (v4);
    if (v3 != v5)
    {
      goto LABEL_5;
    }
  }

  else
  {

    if (v3 != *MEMORY[0x1E698D3F8])
    {
LABEL_5:
      AGGraphSetIndirectAttribute();
    }
  }

  v7 = *(v1 + 120);
  if (v7)
  {
    v8 = v7;
    AGSubgraphRef.willInvalidate(isInserted:)(1);
    AGSubgraphInvalidate();

    *(v1 + 120) = 0;
  }

  v9 = *(v1 + 192);
  if (v9)
  {
    AGSubgraphRemoveObserver();

    *(v1 + 192) = 0;
    *(v1 + 200) = 0;
  }

  *(v1 + 128) = 0;

  *(v1 + 136) = 0;
  outlined destroy of _ViewList_Elements?(v1 + 144);
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;

  *(v1 + 184) = 0;
  *(v1 + 208) = 0;
  *(v1 + 212) = 1;
  return result;
}

uint64_t closure #2 in PlaceholderInfo.makeItem(placeholder:seed:)()
{
  result = AGSubgraphIsValid();
  if (result)
  {
    AGGraphGetAttributeInfo();
    v2 = *(v1 + 192);
    *(v1 + 192) = 0;
    *(v1 + 200) = 0;

    return PlaceholderInfo.eraseItem()();
  }

  return result;
}

uint64_t protocol witness for ObservedAttribute.destroy() in conformance PlaceholderInfo()
{
  v1 = v0[24];
  if (v1)
  {
    AGSubgraphRemoveObserver();

    v0[24] = 0;
    v0[25] = 0;
  }

  v0[16] = 0;

  v0[17] = 0;
  return result;
}

_DWORD *PlaceholderViewPhase.value.getter@<X0>(int a1@<W1>, unsigned int *a2@<X8>)
{
  v4 = *AGGraphGetValue();
  result = AGGraphGetValue();
  *a2 = ((v4 & 0xFFFFFFFE) + 2 * a1 + *result) & 0xFFFFFFFE | (*result | v4) & 1;
  return result;
}

uint64_t _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO5EntryVG_AS8StableIDVAA15ModifiedContentVyAXyAA6ZStackVyAA0npoE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAA0N12EffectLayoutA0_LLV3KeyVGGGA4_yAA18TransitionTraitKeyVGGTt2B5@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v10);
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v10, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.LazyEdits, type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
  v10 = a1;
  v11 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init, type metadata accessor for ForEachState.Info.Init);
  lazy protocol witness table accessor for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init();

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
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor, type metadata accessor for ForEachState.Evictor);
    lazy protocol witness table accessor for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor();

    Attribute.init<A>(body:value:flags:update:)();

    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init, type metadata accessor for ForEachList.Init);
  lazy protocol witness table accessor for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init();
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

uint64_t _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO4ItemVG_AS2IDVAA0npE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVTt2B5@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v10);
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v10, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.LazyEdits, type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);
  v10 = a1;
  v11 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info.Init, type metadata accessor for ForEachState.Info.Init);
  lazy protocol witness table accessor for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info.Init and conformance ForEachState<A, B, C>.Info.Init, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info.Init, type metadata accessor for ForEachState.Info.Init);

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
    type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Evictor, type metadata accessor for ForEachState.Evictor);
    lazy protocol witness table accessor for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Evictor and conformance ForEachState<A, B, C>.Evictor, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Evictor, type metadata accessor for ForEachState.Evictor);

    Attribute.init<A>(body:value:flags:update:)();

    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init, type metadata accessor for ForEachList.Init);
  lazy protocol witness table accessor for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init, type metadata accessor for ForEachList.Init);
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

uint64_t _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSnySiG_SiAA15ModifiedContentVyARyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_L19TransactionModifierVySdGGAA13_OffsetEffectVGTt2B5@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v9);
  type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v9);
  v9 = a1;
  v10 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info.Init(0);
  lazy protocol witness table accessor for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init, type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info.Init);
  v6[40] = Attribute.init<A>(body:value:flags:update:)();
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
    type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Evictor(0);
    lazy protocol witness table accessor for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Evictor and conformance ForEachState<A, B, C>.Evictor, type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Evictor);
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  type metadata accessor for ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init(0);
  lazy protocol witness table accessor for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init, type metadata accessor for ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init);
  v7 = Attribute.init<A>(body:value:flags:update:)();
  v6[42] = v7;
  *(v6 + 172) = 0;

  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2[6];
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

id specialized ForEachState.init(inputs:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t, uint64_t (*)()))
{
  *(v3 + 160) = 0;
  *(v3 + 164) = 1;
  *(v3 + 168) = 0;
  *(v3 + 172) = 1;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 256;
  *(v3 + 248) = MEMORY[0x1E69E7CC0];
  *(v3 + 256) = 2;
  v5 = MEMORY[0x1E69E7CC8];
  *(v3 + 264) = MEMORY[0x1E69E7CC8];
  v6 = (v3 + *(*v3 + 208));
  v7 = MEMORY[0x1E69E7CD0];
  *v6 = MEMORY[0x1E69E7CD0];
  v6[1] = v7;
  a3(0, a2, type metadata accessor for ForEachState.LazyEdits);
  swift_storeEnumTagMultiPayload();
  *(v3 + *(*v3 + 216)) = 0;
  *(v3 + *(*v3 + 224)) = -1;
  *(v3 + *(*v3 + 232)) = 0;
  *(v3 + *(*v3 + 240)) = 0;
  *(v3 + *(*v3 + 248)) = 0;
  *(v3 + *(*v3 + 256)) = 0;
  *(v3 + *(*v3 + 264)) = 0;
  *(v3 + *(*v3 + 272)) = v7;
  *(v3 + *(*v3 + 280)) = v5;
  outlined init with copy of _ViewListInputs(a1, v3 + 16);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v9 = result;
    outlined destroy of _ViewListInputs(a1);
    *(v3 + 152) = v9;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA020GlassTransitionStateD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(v4, protocol witness for static View._viewListCount(inputs:) in conformance Text, 0);
}

uint64_t specialized _VariadicView_Children.Element.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return ViewTraitCollection.subscript.setter(v11, a2, a3, a4);
}

uint64_t lazy protocol witness table accessor for type Slice<_VariadicView_Children> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<_VariadicView_Children>(255, &lazy cache variable for type metadata for Slice<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, &type metadata for _VariadicView_Children, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_VariadicView_Children> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<_VariadicView_Children>(255, a2, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, &type metadata for _VariadicView_Children, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t assignWithTake for _VariadicView_Children.Element(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for PlaceholderInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  v7 = *(a1 + 120);
  v8 = *(a2 + 120);
  *(a1 + 120) = v8;
  v9 = v8;

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  v10 = *(a2 + 168);
  if (!*(a1 + 168))
  {
    if (v10)
    {
      *(a1 + 168) = v10;
      *(a1 + 176) = *(a2 + 176);
      (**(v10 - 8))(a1 + 144, a2 + 144);
      goto LABEL_8;
    }

LABEL_7:
    v12 = *(a2 + 144);
    v13 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 144) = v12;
    *(a1 + 160) = v13;
    goto LABEL_8;
  }

  v11 = (a1 + 144);
  if (!v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v11, (a2 + 144));
LABEL_8:
  *(a1 + 184) = *(a2 + 184);

  v14 = *(a2 + 192);
  v15 = *(a1 + 192);
  *(a1 + 192) = v14;
  v16 = v14;

  *(a1 + 200) = *(a2 + 200);
  v17 = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 208) = v17;
  return a1;
}

__n128 __swift_memcpy213_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 205) = *(a2 + 205);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for PlaceholderInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v4 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  v5 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  if (*(a1 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 144);
  }

  v6 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v6;
  v7 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v7;

  v8 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlaceholderInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 213))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceholderInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 212) = 0;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 213) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 213) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for PlaceholderInfo.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for PlaceholderInfo.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for _VariadicView_Children.Child(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PlaceholderInfo(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PlaceholderInfo and conformance PlaceholderInfo();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined assign with take of _ViewList_Elements?(uint64_t a1, uint64_t a2)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ViewList_Elements?, &lazy cache variable for type metadata for _ViewList_Elements, &protocol descriptor for _ViewList_Elements, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI15ModifiedContentVyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVGACyxq_GAA4ViewA2aORzAA0sP0R_rlWlTm_1(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E6530];
    _sSnySiGMaTm_4(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v8 = v7;
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>();
    v10 = v9;
    v11 = _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_6(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    v12 = _s7SwiftUI15ModifiedContentVyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVGACyxq_GAA4ViewA2aORzAA0sP0R_rlWlTm_1(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>, lazy protocol witness table accessor for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>> and conformance <> ModifiedContent<A, B>);
    v15[0] = v8;
    v15[1] = v6;
    v15[2] = v10;
    v15[3] = v11;
    v15[4] = MEMORY[0x1E69E6540];
    v15[5] = v12;
    v13 = a3(a1, v15);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PlaceholderViewPhase(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PlaceholderViewPhase and conformance PlaceholderViewPhase();
  *(a1 + 8) = result;
  return result;
}

uint64_t _sSay7SwiftUI14GlassContainerO4ItemVGSayxGSksWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyHashable2?(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init()
{
  result = lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init;
  if (!lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init)
  {
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(255, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init, type metadata accessor for ForEachState.Info.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor()
{
  result = lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor;
  if (!lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor)
  {
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(255, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor, type metadata accessor for ForEachState.Evictor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init()
{
  result = lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init;
  if (!lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init)
  {
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(255, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init, type metadata accessor for ForEachList.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init);
  }

  return result;
}

void type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for AnyHashable2?(255, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);
    v7 = v6;
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>();
    v11[0] = v7;
    v11[1] = &type metadata for GlassContainer.Entry.StableID;
    v11[2] = v8;
    v11[3] = _sSay7SwiftUI14GlassContainerO4ItemVGSayxGSksWlTm_0(&lazy protocol witness table cache variable for type [GlassContainer.Entry] and conformance [A], &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry);
    v11[4] = lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v11[5] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for AnyHashable2?(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    v9[0] = v6;
    v9[1] = &type metadata for GlassContainer.Item.ID;
    v9[2] = &type metadata for GlassItemView;
    v9[3] = _sSay7SwiftUI14GlassContainerO4ItemVGSayxGSksWlTm_0(&lazy protocol witness table cache variable for type [GlassContainer.Item] and conformance [A], &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item);
    v9[4] = lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    v9[5] = lazy protocol witness table accessor for type GlassItemView and conformance GlassItemView();
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v22 = a1;
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v23 = v3;
    v24 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v22 = v3;
        return v7;
      }

      v12 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v12 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v13 = v3[2];
          if (v7 >= v13)
          {
            goto LABEL_27;
          }

          if (v9 >= v13)
          {
            goto LABEL_28;
          }

          v14 = &v24[7 * v7];
          v15 = v3;
          v3 = v14[2];
          v16 = *(v14 + 24);
          v26 = *(v14 + 2);
          v27 = *v14;
          v25 = v14[6];
          v4 = &v24[7 * v9];
          v17 = v4[1];
          v18 = v4[2];
          v19 = *(v4 + 24);
          v20 = v4[6];
          *v14 = *v4;
          v14[1] = v17;
          v14[2] = v18;
          *(v14 + 24) = v19;
          *(v14 + 2) = *(v4 + 2);
          v14[6] = v20;
          v28 = v15[2];

          if (v9 >= v28)
          {
            goto LABEL_29;
          }

          *v4 = v27;
          v4[2] = v3;
          *(v4 + 24) = v16;
          *(v4 + 2) = v26;
          v4[6] = v25;
          v4 = 0;

          v3 = v23;
        }

        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v22 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v21 = a1;
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v25 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v21 = v3;
        return v7;
      }

      v12 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v12 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v13 = v3[2];
          if (v7 >= v13)
          {
            goto LABEL_27;
          }

          if (v9 >= v13)
          {
            goto LABEL_28;
          }

          v14 = &v25[7 * v7];
          v23 = *(v14 + 1);
          v24 = *v14;
          v22 = *(v14 + 2);
          v15 = v14[6];
          v4 = &v25[7 * v9];
          v16 = v4[1];
          v17 = v4[6];
          *v14 = *v4;
          v14[1] = v16;
          v18 = *(v4 + 2);
          *(v14 + 1) = *(v4 + 1);
          *(v14 + 2) = v18;
          v14[6] = v17;
          v19 = v3[2];

          if (v9 >= v19)
          {
            goto LABEL_29;
          }

          *v4 = v24;
          *(v4 + 1) = v23;
          *(v4 + 2) = v22;
          v4[6] = v15;
          v4 = 0;
        }

        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v21 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v22 = a1;
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v23 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v22 = v3;
        return v7;
      }

      v12 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v12 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v13 = v3[2];
          if (v7 >= v13)
          {
            goto LABEL_27;
          }

          if (v9 >= v13)
          {
            goto LABEL_28;
          }

          v14 = &v23[6 * v7];
          v15 = v14[2];
          v24 = *(v14 + 3);
          v25 = *v14;
          v16 = v14[5];
          v4 = &v23[6 * v9];
          v17 = v4[1];
          v18 = v4[2];
          v19 = v4[5];
          *v14 = *v4;
          v14[1] = v17;
          v14[2] = v18;
          *(v14 + 3) = *(v4 + 3);
          v14[5] = v19;
          v20 = v3[2];

          if (v9 >= v20)
          {
            goto LABEL_29;
          }

          *v4 = v25;
          v4[2] = v15;
          *(v4 + 3) = v24;
          v4[5] = v16;
          v4 = 0;
        }

        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v22 = v3;
    return v7;
  }

  return v3[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2);
      if (v2)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v17 = a1;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v3 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v11 = v3;
    v3 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v17 = v4;
        return v8;
      }

      v13 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2);
      if (v11)
      {
        break;
      }

      if ((v13 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v14 = v4[2];
          if (v8 >= v14)
          {
            goto LABEL_27;
          }

          outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v3[10 * v8], v16, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData);
          if (v10 >= v14)
          {
            goto LABEL_28;
          }

          outlined assign with copy of AnimatorState<_AnyAnimatableData>.Fork(&v3[10 * v10], &v3[10 * v8]);
          if (v10 >= v4[2])
          {
            goto LABEL_29;
          }

          outlined assign with take of AnimatorState<_AnyAnimatableData>.Fork(v16, &v3[10 * v10]);
        }

        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_25;
        }
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v17 = v4;
    return v8;
  }

  return v4[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      v49 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v11 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v49 = v3;
        return v7;
      }

      v13 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v13 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v14 = v3[2];
          if (v7 >= v14)
          {
            goto LABEL_27;
          }

          v4 = &v11[9 * v7];
          v35 = *v4;
          v15 = *(v4 + 1);
          v16 = *(v4 + 2);
          v17 = *(v4 + 3);
          v39 = v4[8];
          v37 = v16;
          v38 = v17;
          v36 = v15;
          if (v9 >= v14)
          {
            goto LABEL_28;
          }

          v18 = &v11[9 * v9];
          v40 = *v18;
          v19 = *(v18 + 1);
          v20 = *(v18 + 2);
          v21 = *(v18 + 3);
          v44 = v18[8];
          v42 = v20;
          v43 = v21;
          v41 = v19;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v35, v47, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v40, v47, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          v45[0] = *v4;
          v22 = *(v4 + 1);
          v23 = *(v4 + 2);
          v24 = *(v4 + 3);
          v46 = v4[8];
          v45[2] = v23;
          v45[3] = v24;
          v45[1] = v22;
          v26 = v42;
          v25 = v43;
          v27 = v41;
          v4[8] = v44;
          *(v4 + 2) = v26;
          *(v4 + 3) = v25;
          *(v4 + 1) = v27;
          *v4 = v40;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v45, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          if (v9 >= v3[2])
          {
            goto LABEL_29;
          }

          v47[0] = *v18;
          v28 = *(v18 + 1);
          v29 = *(v18 + 2);
          v30 = *(v18 + 3);
          v48 = v18[8];
          v47[2] = v29;
          v47[3] = v30;
          v47[1] = v28;
          v32 = v37;
          v31 = v38;
          v33 = v36;
          v18[8] = v39;
          *(v18 + 2) = v32;
          *(v18 + 3) = v31;
          *(v18 + 1) = v33;
          *v18 = v35;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v47, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
        }

        v12 = __OFADD__(v7++, 1);
        if (v12)
        {
          goto LABEL_25;
        }
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v49 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      v45 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v11 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v45 = v3;
        return v7;
      }

      v13 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v13 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v14 = v3[2];
          if (v7 >= v14)
          {
            goto LABEL_27;
          }

          v4 = &v11[8 * v7];
          v15 = *v4;
          v16 = v4[1];
          v17 = v4[3];
          v37 = v4[2];
          v38 = v17;
          v35 = v15;
          v36 = v16;
          if (v9 >= v14)
          {
            goto LABEL_28;
          }

          v18 = &v11[8 * v9];
          v19 = *v18;
          v20 = v18[1];
          v21 = v18[3];
          v41 = v18[2];
          v42 = v21;
          v39 = v19;
          v40 = v20;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v35, v44, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v39, v44, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
          v22 = *v4;
          v23 = v4[1];
          v24 = v4[3];
          v43[2] = v4[2];
          v43[3] = v24;
          v43[0] = v22;
          v43[1] = v23;
          v25 = v39;
          v26 = v40;
          v27 = v42;
          v4[2] = v41;
          v4[3] = v27;
          *v4 = v25;
          v4[1] = v26;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v43, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
          if (v9 >= v3[2])
          {
            goto LABEL_29;
          }

          v28 = *v18;
          v29 = v18[1];
          v30 = v18[3];
          v44[2] = v18[2];
          v44[3] = v30;
          v44[0] = v28;
          v44[1] = v29;
          v31 = v35;
          v32 = v36;
          v33 = v38;
          v18[2] = v37;
          v18[3] = v33;
          *v18 = v31;
          v18[1] = v32;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v44, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
        }

        v12 = __OFADD__(v7++, 1);
        if (v12)
        {
          goto LABEL_25;
        }
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v45 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      v45 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v11 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v45 = v3;
        return v7;
      }

      v13 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v13 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v14 = v3[2];
          if (v7 >= v14)
          {
            goto LABEL_27;
          }

          v4 = &v11[8 * v7];
          v15 = *v4;
          v16 = v4[1];
          v17 = v4[3];
          v37 = v4[2];
          v38 = v17;
          v35 = v15;
          v36 = v16;
          if (v9 >= v14)
          {
            goto LABEL_28;
          }

          v18 = &v11[8 * v9];
          v19 = *v18;
          v20 = v18[1];
          v21 = v18[3];
          v41 = v18[2];
          v42 = v21;
          v39 = v19;
          v40 = v20;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v35, v44, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v39, v44, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
          v22 = *v4;
          v23 = v4[1];
          v24 = v4[3];
          v43[2] = v4[2];
          v43[3] = v24;
          v43[0] = v22;
          v43[1] = v23;
          v25 = v39;
          v26 = v40;
          v27 = v42;
          v4[2] = v41;
          v4[3] = v27;
          *v4 = v25;
          v4[1] = v26;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v43, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
          if (v9 >= v3[2])
          {
            goto LABEL_29;
          }

          v28 = *v18;
          v29 = v18[1];
          v30 = v18[3];
          v44[2] = v18[2];
          v44[3] = v30;
          v44[0] = v28;
          v44[1] = v29;
          v31 = v35;
          v32 = v36;
          v33 = v38;
          v18[2] = v37;
          v18[3] = v33;
          *v18 = v31;
          v18[1] = v32;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v44, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
        }

        v12 = __OFADD__(v7++, 1);
        if (v12)
        {
          goto LABEL_25;
        }
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v45 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      v65 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v11 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v65 = v3;
        return v7;
      }

      v13 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v13 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v14 = v3[2];
          if (v7 >= v14)
          {
            goto LABEL_27;
          }

          v4 = &v11[13 * v7];
          v15 = *v4;
          v16 = *(v4 + 2);
          v48 = *(v4 + 1);
          v49 = v16;
          v47 = v15;
          v17 = *(v4 + 3);
          v18 = *(v4 + 4);
          v19 = *(v4 + 5);
          v53 = v4[12];
          v51 = v18;
          v52 = v19;
          v50 = v17;
          if (v9 >= v14)
          {
            goto LABEL_28;
          }

          v20 = &v11[13 * v9];
          v21 = *v20;
          v22 = *(v20 + 2);
          v55 = *(v20 + 1);
          v56 = v22;
          v54 = v21;
          v23 = *(v20 + 3);
          v24 = *(v20 + 4);
          v25 = *(v20 + 5);
          v60 = v20[12];
          v58 = v24;
          v59 = v25;
          v57 = v23;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v47, v63, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v54, v63, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
          v26 = *v4;
          v27 = *(v4 + 2);
          v61[1] = *(v4 + 1);
          v61[2] = v27;
          v61[0] = v26;
          v28 = *(v4 + 3);
          v29 = *(v4 + 4);
          v30 = *(v4 + 5);
          v62 = v4[12];
          v61[4] = v29;
          v61[5] = v30;
          v61[3] = v28;
          v32 = v58;
          v31 = v59;
          v33 = v57;
          v4[12] = v60;
          *(v4 + 4) = v32;
          *(v4 + 5) = v31;
          *(v4 + 3) = v33;
          v34 = v54;
          v35 = v56;
          *(v4 + 1) = v55;
          *(v4 + 2) = v35;
          *v4 = v34;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v61, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
          if (v9 >= v3[2])
          {
            goto LABEL_29;
          }

          v36 = *v20;
          v37 = *(v20 + 2);
          v63[1] = *(v20 + 1);
          v63[2] = v37;
          v63[0] = v36;
          v38 = *(v20 + 3);
          v39 = *(v20 + 4);
          v40 = *(v20 + 5);
          v64 = v20[12];
          v63[4] = v39;
          v63[5] = v40;
          v63[3] = v38;
          v42 = v51;
          v41 = v52;
          v43 = v50;
          v20[12] = v53;
          *(v20 + 4) = v42;
          *(v20 + 5) = v41;
          *(v20 + 3) = v43;
          v44 = v47;
          v45 = v49;
          *(v20 + 1) = v48;
          *(v20 + 2) = v45;
          *v20 = v44;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v63, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
        }

        v12 = __OFADD__(v7++, 1);
        if (v12)
        {
          goto LABEL_25;
        }
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v65 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      v45 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v11 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v45 = v3;
        return v7;
      }

      v13 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v13 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v14 = v3[2];
          if (v7 >= v14)
          {
            goto LABEL_27;
          }

          v4 = &v11[8 * v7];
          v15 = *v4;
          v16 = v4[1];
          v17 = v4[3];
          v37 = v4[2];
          v38 = v17;
          v35 = v15;
          v36 = v16;
          if (v9 >= v14)
          {
            goto LABEL_28;
          }

          v18 = &v11[8 * v9];
          v19 = *v18;
          v20 = v18[1];
          v21 = v18[3];
          v41 = v18[2];
          v42 = v21;
          v39 = v19;
          v40 = v20;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v35, v44, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v39, v44, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          v22 = *v4;
          v23 = v4[1];
          v24 = v4[3];
          v43[2] = v4[2];
          v43[3] = v24;
          v43[0] = v22;
          v43[1] = v23;
          v25 = v39;
          v26 = v40;
          v27 = v42;
          v4[2] = v41;
          v4[3] = v27;
          *v4 = v25;
          v4[1] = v26;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v43, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          if (v9 >= v3[2])
          {
            goto LABEL_29;
          }

          v28 = *v18;
          v29 = v18[1];
          v30 = v18[3];
          v44[2] = v18[2];
          v44[3] = v30;
          v44[0] = v28;
          v44[1] = v29;
          v31 = v35;
          v32 = v36;
          v33 = v38;
          v18[2] = v37;
          v18[3] = v33;
          *v18 = v31;
          v18[1] = v32;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v44, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
        }

        v12 = __OFADD__(v7++, 1);
        if (v12)
        {
          goto LABEL_25;
        }
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v45 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      v36 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v11 = v3 + 4;
    v4 = &type metadata for Color.ResolvedHDR._Animatable;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v36 = v3;
        return v7;
      }

      v13 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v13 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v14 = v3[2];
          if (v7 >= v14)
          {
            goto LABEL_27;
          }

          v15 = &v11[8 * v7];
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[3];
          v39 = v15[2];
          v40 = v18;
          v37 = v16;
          v38 = v17;
          if (v9 >= v14)
          {
            goto LABEL_28;
          }

          v47 = 0;
          v19 = &v11[8 * v9];
          v20 = *v19;
          v21 = v19[1];
          v22 = v19[3];
          v43 = v19[2];
          v44 = v22;
          v41 = v20;
          v42 = v21;
          outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v37, v46, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
          outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v41, v46, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
          v23 = *v15;
          v24 = v15[1];
          v25 = v15[3];
          v45[2] = v15[2];
          v45[3] = v25;
          v45[0] = v23;
          v45[1] = v24;
          v26 = v41;
          v27 = v42;
          v28 = v44;
          v15[2] = v43;
          v15[3] = v28;
          *v15 = v26;
          v15[1] = v27;
          outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v45, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
          if (v9 >= v3[2])
          {
            goto LABEL_29;
          }

          v29 = *v19;
          v30 = v19[1];
          v31 = v19[3];
          v46[2] = v19[2];
          v46[3] = v31;
          v46[0] = v29;
          v46[1] = v30;
          v32 = v37;
          v33 = v38;
          v34 = v40;
          v19[2] = v39;
          v19[3] = v34;
          *v19 = v32;
          v19[1] = v33;
          outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v46, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
          v10 = v47;
          v11 = v3 + 4;
        }

        v12 = __OFADD__(v7++, 1);
        if (v12)
        {
          goto LABEL_25;
        }
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v36 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v22 = a1;
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v23 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v22 = v3;
        return v7;
      }

      v12 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v12 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v13 = v3[2];
          if (v7 >= v13)
          {
            goto LABEL_27;
          }

          if (v9 >= v13)
          {
            goto LABEL_28;
          }

          v14 = &v23[6 * v7];
          v15 = v14[2];
          v24 = *(v14 + 3);
          v25 = *v14;
          v16 = v14[5];
          v4 = &v23[6 * v9];
          v17 = v4[1];
          v18 = v4[2];
          v19 = v4[5];
          *v14 = *v4;
          v14[1] = v17;
          v14[2] = v18;
          *(v14 + 3) = *(v4 + 3);
          v14[5] = v19;
          v20 = v3[2];

          if (v9 >= v20)
          {
            goto LABEL_29;
          }

          *v4 = v25;
          v4[2] = v15;
          *(v4 + 3) = v24;
          v4[5] = v16;
          v4 = 0;
        }

        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v22 = v3;
    return v7;
  }

  return v3[2];
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
      if (v2)
      {
        return v7;
      }

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        return v3[2];
      }
    }

    v21 = a1;
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_9:
    v10 = v4;
    v22 = v3;
    v23 = v3 + 4;
    while (1)
    {
      if (v9 == v3[2])
      {
        *v21 = v3;
        return v7;
      }

      v12 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
      if (v10)
      {
        break;
      }

      if ((v12 & 1) == 0)
      {
        if (v7 != v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v13 = v3[2];
          if (v7 >= v13)
          {
            goto LABEL_27;
          }

          if (v9 >= v13)
          {
            goto LABEL_28;
          }

          v14 = &v23[6 * v7];
          v15 = v3;
          v3 = v14[2];
          v24 = *(v14 + 3);
          v25 = *v14;
          v16 = v14[5];
          v4 = &v23[6 * v9];
          v17 = v4[1];
          v18 = v4[2];
          v19 = v4[5];
          *v14 = *v4;
          v14[1] = v17;
          v14[2] = v18;
          *(v14 + 3) = *(v4 + 3);
          v14[5] = v19;
          v26 = v15[2];

          if (v9 >= v26)
          {
            goto LABEL_29;
          }

          *v4 = v25;
          v4[2] = v3;
          *(v4 + 3) = v24;
          v4[5] = v16;
          v4 = 0;

          v3 = v22;
        }

        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v21 = v3;
    return v7;
  }

  return v3[2];
}