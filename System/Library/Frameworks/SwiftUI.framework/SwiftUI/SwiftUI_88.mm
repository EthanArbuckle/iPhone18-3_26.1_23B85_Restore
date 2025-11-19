uint64_t closure #1 in List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  v61 = a5;
  v62 = a7;
  v59 = a2;
  v60 = a4;
  v58 = a1;
  v65 = a9;
  v63 = a3;
  v64 = a14;
  v51 = a10;
  v53 = a11;
  v16 = *a2;
  v57 = a13;
  v56 = *(*(v16 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v47 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = a6;
  v70 = &type metadata for OutlineSubgroupChildren;
  v71 = a11;
  v72 = &protocol witness table for OutlineSubgroupChildren;
  v21 = type metadata accessor for DisclosureGroup();
  v52 = v21;
  v76 = a8;
  v77 = a10;
  v22 = a8;
  WitnessTable = swift_getWitnessTable();
  v50 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v17;
  v70 = AssociatedTypeWitness;
  v71 = a6;
  v72 = a6;
  v25 = a6;
  v48 = a6;
  v73 = v21;
  v74 = WitnessTable;
  v75 = AssociatedConformanceWitness;
  v26 = type metadata accessor for OutlineGroup();
  v55 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v49 = &v47 - v31;
  v32 = v54;
  (*(v18 + 16))(v54, v58, v17, v30);
  v33 = swift_allocObject();
  v34 = v60;
  v35 = v56;
  v33[2] = v61;
  v33[3] = v35;
  v36 = v62;
  v33[4] = v25;
  v33[5] = v36;
  v37 = v22;
  v33[6] = v22;
  v38 = v51;
  v39 = v53;
  v33[7] = v51;
  v33[8] = v39;
  v40 = v63;
  v33[9] = a12;
  v33[10] = v40;
  v33[11] = v34;
  v41 = v59;

  OutlineGroup<>.init<A, B>(_:children:content:)(v32, v41, v64, v33, v50, v48, v39, v37, v28, v38, a12);
  v42 = swift_getWitnessTable();
  v66 = v39;
  v67 = v39;
  v68 = v42;
  v43 = swift_getWitnessTable();
  v44 = v49;
  static ViewBuilder.buildExpression<A>(_:)(v28, v26, v43);
  v45 = *(v55 + 8);
  v45(v28, v26);
  static ViewBuilder.buildExpression<A>(_:)(v44, v26, v43);
  return (v45)(v44, v26);
}

uint64_t closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18(v15);
  static ViewBuilder.buildExpression<A>(_:)(v13, a6, a10);
  v19 = *(v11 + 8);
  v19(v13, a6);
  static ViewBuilder.buildExpression<A>(_:)(v17, a6, a10);
  return (v19)(v17, a6);
}

uint64_t List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _UNKNOWN **a14)
{
  v40 = a6;
  v36 = a5;
  v43 = a4;
  v41 = a1;
  v45 = a2;
  v44 = a9;
  v34 = a13;
  v33 = a12;
  v39 = a10;
  v35 = *a2;
  v32 = *a3;
  v38 = a7;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v42 = type metadata accessor for Optional();
  v19 = *(v42 - 8);
  v20 = MEMORY[0x1EEE9AC00](v42);
  v37 = &v32 - v21;
  (*(v19 + 16))(v20);
  v47 = a7;
  v48 = a8;
  v49 = a10;
  v50 = a11;
  v22 = v33;
  v23 = v34;
  v51 = v33;
  v52 = v34;
  v53 = a14;
  v54 = a1;
  v55 = v45;
  v56 = a3;
  v57 = v36;
  v58 = a6;
  v24 = type metadata accessor for Binding();
  v25 = *(v35 + *MEMORY[0x1E69E77B0] + 8);
  v62 = a8;
  v63 = &type metadata for OutlineSubgroupChildren;
  v64 = a14;
  v65 = &protocol witness table for OutlineSubgroupChildren;
  v26 = type metadata accessor for DisclosureGroup();
  v69 = a11;
  v70 = v22;
  WitnessTable = swift_getWitnessTable();
  v62 = v24;
  v63 = v25;
  v64 = a8;
  v65 = a8;
  v66 = v26;
  v67 = WitnessTable;
  v68 = v23;
  v28 = type metadata accessor for OutlineGroup();
  v29 = swift_getWitnessTable();
  v59 = a14;
  v60 = a14;
  v61 = v29;
  v30 = swift_getWitnessTable();
  List.init(selection:content:)(v37, partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), v46, v38, v28, v39, v30, v44);

  (*(v19 + 8))(v43, v42);
  return (*(*(v24 - 8) + 8))(v41, v24);
}

uint64_t closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v56 = a8;
  v58 = a6;
  v59 = a4;
  v60 = a5;
  v53 = a1;
  v57 = a2;
  v62 = a9;
  v61 = a15;
  v54 = a14;
  v47 = a10;
  v16 = *a2;
  v55 = a3;
  v17 = *a3;
  v49 = a13;
  v52 = *(*(v17 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - v20;
  v46 = &v44 - v20;
  v22 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v66 = a7;
  v67 = &type metadata for OutlineSubgroupChildren;
  v68 = a13;
  v69 = &protocol witness table for OutlineSubgroupChildren;
  v23 = type metadata accessor for DisclosureGroup();
  v50 = v23;
  v73 = a10;
  v74 = a11;
  WitnessTable = swift_getWitnessTable();
  v66 = v18;
  v67 = v22;
  v68 = a7;
  v69 = a7;
  v45 = a7;
  v70 = v23;
  v71 = WitnessTable;
  v72 = a12;
  v25 = type metadata accessor for OutlineGroup();
  v51 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v48 = &v44 - v30;
  (*(v19 + 16))(v21, v53, v18, v29);
  v31 = swift_allocObject();
  v32 = v52;
  v31[2] = v58;
  v31[3] = v32;
  v31[4] = v22;
  v31[5] = a7;
  v33 = v57;
  v34 = v47;
  v31[6] = v56;
  v31[7] = v34;
  v31[8] = a11;
  v31[9] = a12;
  v35 = v49;
  v36 = v59;
  v37 = v60;
  v31[10] = v49;
  v31[11] = v36;
  v31[12] = v37;

  v38 = v55;

  OutlineGroup<>.init<A, B>(_:id:children:content:)(v46, v33, v38, v61, v31, v45, a12, v35, v27, v34, a11);
  v39 = swift_getWitnessTable();
  v63 = v35;
  v64 = v35;
  v65 = v39;
  v40 = swift_getWitnessTable();
  v41 = v48;
  static ViewBuilder.buildExpression<A>(_:)(v27, v25, v40);
  v42 = *(v51 + 8);
  v42(v27, v25);
  static ViewBuilder.buildExpression<A>(_:)(v41, v25, v40);
  return (v42)(v41, v25);
}

uint64_t closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;
  v20(v17);
  static ViewBuilder.buildExpression<A>(_:)(v15, a7, a12);
  v21 = *(v13 + 8);
  v21(v15, a7);
  static ViewBuilder.buildExpression<A>(_:)(v19, a7, a12);
  return (v21)(v19, a7);
}

uint64_t List<>.init<A, B>(_:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v14 = type metadata accessor for Binding();
  swift_getAssociatedTypeWitness();
  type metadata accessor for DisclosureGroup();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for OutlineGroup();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = type metadata accessor for List();
  *(a9 + v15[14]) = 0;
  v16 = a9 + v15[15];
  *v16 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v15[13], a10);

  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t closure #1 in List<>.init<A, B>(_:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v46 = a8;
  v44 = a7;
  v41 = a6;
  v52 = a4;
  v53 = a3;
  v50 = a1;
  v51 = a2;
  v54 = a9;
  v49 = *(*(*a2 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v40 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = a5;
  v59 = &type metadata for OutlineSubgroupChildren;
  v60 = a8;
  v61 = &protocol witness table for OutlineSubgroupChildren;
  v17 = type metadata accessor for DisclosureGroup();
  v45 = v17;
  v18 = v41;
  v65 = v41;
  v66 = a7;
  WitnessTable = swift_getWitnessTable();
  v43 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v13;
  v59 = AssociatedTypeWitness;
  v60 = a5;
  v61 = a5;
  v21 = a5;
  v40 = a5;
  v62 = v17;
  v63 = WitnessTable;
  v64 = AssociatedConformanceWitness;
  v22 = type metadata accessor for OutlineGroup();
  v48 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v42 = &v40 - v27;
  v28 = v47;
  (*(v14 + 16))(v47, v50, v13, v26);
  v29 = swift_allocObject();
  v29[2] = v49;
  v29[3] = v21;
  v30 = v18;
  v31 = v44;
  v29[4] = v18;
  v29[5] = v31;
  v32 = v46;
  v29[6] = v46;
  v29[7] = a10;
  v33 = v52;
  v29[8] = v53;
  v29[9] = v33;
  v34 = v51;

  OutlineGroup<>.init<A, B>(_:children:content:)(v28, v34, partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:), v29, v43, v40, v32, v30, v24, v31, a10);
  v35 = swift_getWitnessTable();
  v55 = v32;
  v56 = v32;
  v57 = v35;
  v36 = swift_getWitnessTable();
  v37 = v42;
  static ViewBuilder.buildExpression<A>(_:)(v24, v22, v36);
  v38 = *(v48 + 8);
  v38(v24, v22);
  static ViewBuilder.buildExpression<A>(_:)(v37, v22, v36);
  return (v38)(v37, v22);
}

uint64_t closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a5, a8);
  v18 = *(v10 + 8);
  v18(v12, a5);
  static ViewBuilder.buildExpression<A>(_:)(v16, a5, a8);
  return (v18)(v16, a5);
}

uint64_t List<>.init<A, B, C>(_:id:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for Binding();
  type metadata accessor for DisclosureGroup();
  swift_getWitnessTable();
  type metadata accessor for OutlineGroup();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v17 = type metadata accessor for List();
  *(a9 + v17[14]) = 0;
  v18 = a9 + v17[15];
  *v18 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v17[13], a10, a11);

  return (*(*(v16 - 8) + 8))(a1, v16);
}

uint64_t closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v47 = a8;
  v55 = a5;
  v56 = a4;
  v52 = a1;
  v53 = a3;
  v54 = a2;
  v57 = a9;
  v14 = *a2;
  v15 = *a3;
  v48 = a11;
  v51 = *(*(v15 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v46 = &v43 - v18;
  v20 = *(v14 + *MEMORY[0x1E69E77B0] + 8);
  v61 = a6;
  v62 = &type metadata for OutlineSubgroupChildren;
  v63 = a11;
  v64 = &protocol witness table for OutlineSubgroupChildren;
  v21 = type metadata accessor for DisclosureGroup();
  v49 = v21;
  v68 = a7;
  v69 = a8;
  WitnessTable = swift_getWitnessTable();
  v61 = v16;
  v62 = v20;
  v23 = v20;
  v63 = a6;
  v64 = a6;
  v45 = a6;
  v65 = v21;
  v66 = WitnessTable;
  v44 = a10;
  v67 = a10;
  v24 = type metadata accessor for OutlineGroup();
  v50 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v43 - v29;
  (*(v17 + 16))(v19, v52, v16, v28);
  v31 = swift_allocObject();
  v31[2] = v51;
  v31[3] = v23;
  v31[4] = a6;
  v31[5] = a7;
  v32 = a7;
  v33 = v47;
  v31[6] = v47;
  v31[7] = a10;
  v34 = v48;
  v36 = v55;
  v35 = v56;
  v31[8] = v48;
  v31[9] = v35;
  v31[10] = v36;
  v37 = v54;

  v38 = v53;

  OutlineGroup<>.init<A, B>(_:id:children:content:)(v46, v37, v38, partial apply for closure #1 in closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:), v31, v45, v44, v34, v26, v32, v33);
  v39 = swift_getWitnessTable();
  v58 = v34;
  v59 = v34;
  v60 = v39;
  v40 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v26, v24, v40);
  v41 = *(v50 + 8);
  v41(v26, v24);
  static ViewBuilder.buildExpression<A>(_:)(v30, v24, v40);
  return (v41)(v30, v24);
}

char *initializeBufferWithCopyOfBuffer for List(char *__dst, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v7 & 0xF8 | 7;
  if (*(v6 + 84))
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v10 <= v8)
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + (((v7 & 0xF8) + 23) & ~v9) + 1;
  v14 = *(*(a3 + 24) - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64) + 7;
  v17 = (*(v14 + 80) | v7) & 0x100000;
  if ((v15 | v9) == 7 && v17 == 0 && ((((v16 + ((v13 + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17 <= 0x18)
  {
    v47 = *(a3 + 24);
    v21 = *((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v21 < 0xFFFFFFFF)
    {
      v26 = a2;
      memcpy(__dst, a2, v13);
      v28 = ~v15;
      v27 = v47;
LABEL_54:
      v34 = &__dst[v15 + 17 + v12] & v28;
      v35 = (v26 + v15 + v12 + 17) & v28;
      (*(v14 + 16))(v34, v35, v27);
      v36 = ((v16 + v34) & 0xFFFFFFFFFFFFFFF8);
      v37 = (v16 + v35) & 0xFFFFFFFFFFFFFFF8;
      v38 = *v37;
      v37 += 15;
      *v36 = v38;
      v39 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = *(v37 & 0xFFFFFFFFFFFFFFF8);
      v41 = *((v37 & 0xFFFFFFFFFFFFFFF8) + 8);
      LOBYTE(v34) = *((v37 & 0xFFFFFFFFFFFFFFF8) + 16);
      outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
      *v39 = v40;
      *(v39 + 8) = v41;
      *(v39 + 16) = v34;
      return __dst;
    }

    v43 = v5;
    v44 = *(v6 + 84);
    *__dst = *a2;
    *((__dst + 15) & 0xFFFFFFFFFFFFFFF8) = v21;
    __src = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(__src + v12);

    if (v22 < 3)
    {
      v24 = __src;
      v29 = (__dst + 23);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = v12;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 1)
      {
        v24 = __src;
        if (v23 == 2)
        {
          v25 = *__src;
        }

        else if (v23 == 3)
        {
          v25 = *__src | (*(__src + 2) << 16);
        }

        else
        {
          v25 = *__src;
        }

        v29 = (__dst + 23);
        if (v12 >= 4)
        {
          goto LABEL_36;
        }

LABEL_32:
        v22 = (v25 | ((v22 - 3) << (8 * v12))) + 3;
        goto LABEL_37;
      }

      v24 = __src;
      v29 = (__dst + 23);
      if (v23)
      {
        v25 = *__src;
        if (v12 >= 4)
        {
LABEL_36:
          v22 = v25 + 3;
          goto LABEL_37;
        }

        goto LABEL_32;
      }
    }

LABEL_37:
    v30 = (v29 & 0xFFFFFFFFFFFFFFF8);
    if (v22 == 2)
    {
      (*(v6 + 16))(v29 & 0xFFFFFFFFFFFFFFF8, v24, v43);
      v31 = v8 + 1;
      *(v30 + v12) = 2;
      v26 = a2;
      v28 = ~v15;
      v27 = v47;
      v32 = v44;
    }

    else if (v22 == 1)
    {
      if ((*(v6 + 48))(v24, 1, v43))
      {
        memcpy(v30, __src, v10);
      }

      else
      {
        (*(v6 + 16))(v30, __src, v43);
        (*(v6 + 56))(v30, 0, 1, v43);
      }

      v26 = a2;
      *(v30 + v12) = 1;
      v28 = ~v15;
      v27 = v47;
      v32 = v44;
      v31 = v8 + 1;
    }

    else
    {
      v26 = a2;
      *v30 = *v24;
      *(v30 + v12) = 0;

      v28 = ~v15;
      v27 = v47;
      v32 = v44;
      v31 = v8 + 1;
    }

    v33 = 8;
    if (v8 > 8)
    {
      v33 = v8;
    }

    if (v31 <= v8)
    {
      v31 = v8;
    }

    if (v31 <= 8)
    {
      v31 = 8;
    }

    if (v32)
    {
      v12 = v33;
    }

    else
    {
      v12 = v31;
    }

    goto LABEL_54;
  }

  v20 = *a2;
  *__dst = *a2;
  __dst = (v20 + (((v15 | v9) + 16) & ~(v15 | v9)));

  return __dst;
}

void *initializeWithTake for List(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 84);
  v10 = *(v7 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = (v10 + 23) & ~(v10 | 7);
  v13 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 < 0xFFFFFFFF)
  {
    if (v9)
    {
      v25 = *(v7 + 64);
    }

    else
    {
      v25 = v8 + 1;
    }

    if (v25 > v8)
    {
      v8 = v25;
    }

    if (v8 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v8;
    }

    memcpy(__dst, __src, v20 + v12 + 1);
    goto LABEL_42;
  }

  *__dst = *__src;
  v15 = v9 == 0;
  v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = v14;
  v17 = ((v16 + v11 + 8) & ~v11);
  v18 = ((v13 + v11 + 8) & ~v11);
  if (v15)
  {
    v19 = v8 + 1;
  }

  else
  {
    v19 = v8;
  }

  if (v19 > v8)
  {
    v8 = v19;
  }

  if (v8 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v8;
  }

  v21 = *(v18 + v20);
  v22 = v21 - 3;
  if (v21 >= 3)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *v18;
      }

      else if (v23 == 3)
      {
        v24 = *v18 | (*(v18 + 2) << 16);
      }

      else
      {
        v24 = *v18;
      }

LABEL_31:
      v26 = (v24 | (v22 << (8 * v20))) + 3;
      v21 = v24 + 3;
      if (v20 < 4)
      {
        v21 = v26;
      }

      goto LABEL_33;
    }

    if (v23)
    {
      v24 = *v18;
      goto LABEL_31;
    }
  }

LABEL_33:
  if (v21 == 2)
  {
    (*(v7 + 32))(v17, v18, v6);
    v27 = 2;
LABEL_41:
    *(v17 + v20) = v27;
    goto LABEL_42;
  }

  if (v21 == 1)
  {
    if ((*(v7 + 48))(v18, 1, v6))
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v7 + 32))(v17, v18, v6);
      (*(v7 + 56))(v17, 0, 1, v6);
    }

    v27 = 1;
    goto LABEL_41;
  }

  *v17 = *v18;
  *(v17 + v20) = 0;
LABEL_42:
  v28 = *(*(a3 + 24) - 8);
  v29 = v28 + 32;
  v30 = *(v28 + 80);
  v31 = v20 + v12 + v30 + 1;
  v32 = (__dst + v31) & ~v30;
  v33 = (__src + v31) & ~v30;
  (*(v28 + 32))(v32, v33);
  v34 = *(v29 + 32) + 7;
  v35 = ((v34 + v32) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v34 + v33) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v36;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 16);
  *v37 = *v38;
  *(v37 + 16) = v39;
  return __dst;
}

void *assignWithTake for List(void *__dst, void *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = ~(v9 | 7);
  v56 = (v9 + 23) & v11;
  v12 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v15 = v7 == 0;
      *__dst = *__src;
      *v12 = *v13;
      v16 = ((v12 + v10 + 8) & v11);
      v17 = ((v13 + v10 + 8) & v11);
      if (v15)
      {
        v18 = v8 + 1;
      }

      else
      {
        v18 = v8;
      }

      if (v18 <= v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = v18;
      }

      if (v25 <= 8)
      {
        v20 = 8;
      }

      else
      {
        v20 = v25;
      }

      v26 = *(v17 + v20);
      v27 = v26 - 3;
      if (v26 < 3)
      {
        goto LABEL_98;
      }

      if (v20 <= 3)
      {
        v28 = v20;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 1)
      {
        if (v28 == 2)
        {
LABEL_93:
          v29 = *v17;
          goto LABEL_96;
        }

LABEL_37:
        if (v28 == 3)
        {
          v29 = *v17 | (*(v17 + 2) << 16);
        }

        else
        {
          v29 = *v17;
        }

LABEL_96:
        v41 = (v29 | (v27 << (8 * v20))) + 3;
        v26 = v29 + 3;
        if (v20 < 4)
        {
          v26 = v41;
        }

LABEL_98:
        if (v26 == 2)
        {
          (*(v6 + 32))(v16, v17, v5);
          v42 = 2;
        }

        else
        {
          if (v26 != 1)
          {
            *v16 = *v17;
            v16[v20] = 0;
LABEL_107:
            v38 = v56;
            v39 = a3;
            goto LABEL_108;
          }

          if ((*(v6 + 48))(v17, 1, v5))
          {
            memcpy(v16, v17, v18);
          }

          else
          {
            (*(v6 + 32))(v16, v17, v5);
            (*(v6 + 56))(v16, 0, 1, v5);
          }

          v42 = 1;
        }

        v16[v20] = v42;
        goto LABEL_107;
      }

LABEL_94:
      if (!v28)
      {
        goto LABEL_98;
      }

      v29 = *v17;
      goto LABEL_96;
    }

    if (v7)
    {
      v36 = *(v6 + 64);
    }

    else
    {
      v36 = v8 + 1;
    }

    if (v36 <= v8)
    {
      v36 = *(v6 + 64);
    }

    if (v36 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v36;
    }

    goto LABEL_75;
  }

  if (v14 >= 0xFFFFFFFF)
  {
    *__dst = *__src;

    *v12 = *v13;

    v15 = v7 == 0;
    v16 = ((v12 + v10 + 8) & v11);
    v17 = ((v13 + v10 + 8) & v11);
    if (v15)
    {
      v18 = v8 + 1;
    }

    else
    {
      v18 = v8;
    }

    if (v18 <= v8)
    {
      v19 = v8;
    }

    else
    {
      v19 = v18;
    }

    if (v19 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v19;
    }

    if (v16 == v17)
    {
      goto LABEL_107;
    }

    v21 = v16[v20];
    v22 = v21 - 3;
    if (v21 >= 3)
    {
      if (v20 <= 3)
      {
        v23 = v20;
      }

      else
      {
        v23 = 4;
      }

      if (v23 <= 1)
      {
        if (!v23)
        {
          goto LABEL_82;
        }

        v24 = *v16;
      }

      else if (v23 == 2)
      {
        v24 = *v16;
      }

      else if (v23 == 3)
      {
        v24 = *v16 | (v16[2] << 16);
      }

      else
      {
        v24 = *v16;
      }

      v40 = (v24 | (v22 << (8 * v20))) + 3;
      v21 = v24 + 3;
      if (v20 < 4)
      {
        v21 = v40;
      }
    }

LABEL_82:
    if (v21 != 2)
    {
      if (v21 != 1)
      {

LABEL_87:
        v26 = *(v17 + v20);
        v27 = v26 - 3;
        if (v26 < 3)
        {
          goto LABEL_98;
        }

        if (v20 <= 3)
        {
          v28 = v20;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 1)
        {
          if (v28 == 2)
          {
            goto LABEL_93;
          }

          goto LABEL_37;
        }

        goto LABEL_94;
      }

      if ((*(v6 + 48))(v16, 1, v5))
      {
        goto LABEL_87;
      }
    }

    (*(v6 + 8))(v16, v5);
    goto LABEL_87;
  }

  v15 = v7 == 0;
  v30 = ((v12 + v10 + 8) & v11);
  if (v15)
  {
    v31 = v8 + 1;
  }

  else
  {
    v31 = v8;
  }

  if (v31 <= v8)
  {
    v31 = v8;
  }

  if (v31 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v31;
  }

  v32 = *(v30 + v20);
  v33 = v32 - 3;
  if (v32 >= 3)
  {
    if (v20 <= 3)
    {
      v34 = v20;
    }

    else
    {
      v34 = 4;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v35 = *v30;
      }

      else if (v34 == 3)
      {
        v35 = *((v12 + v10 + 8) & v11) | (*(((v12 + v10 + 8) & v11) + 2) << 16);
      }

      else
      {
        v35 = *v30;
      }

LABEL_68:
      v37 = (v35 | (v33 << (8 * v20))) + 3;
      v32 = v35 + 3;
      if (v20 < 4)
      {
        v32 = v37;
      }

      goto LABEL_70;
    }

    if (v34)
    {
      v35 = *v30;
      goto LABEL_68;
    }
  }

LABEL_70:
  if (v32 == 2)
  {
    goto LABEL_73;
  }

  if (v32 != 1)
  {

    goto LABEL_75;
  }

  if (!(*(v6 + 48))(v30, 1, v5))
  {
LABEL_73:
    (*(v6 + 8))(v30, v5);
  }

LABEL_75:
  v38 = v56;
  memcpy(__dst, __src, v20 + v56 + 1);
  v39 = a3;
LABEL_108:
  v43 = *(*(v39 + 24) - 8);
  v44 = v43 + 40;
  v45 = *(v43 + 80);
  v46 = v20 + v38 + v45 + 1;
  v47 = (__dst + v46) & ~v45;
  v48 = (__src + v46) & ~v45;
  (*(v43 + 40))(v47, v48);
  v49 = *(v44 + 24) + 7;
  v50 = v49 + v47;
  v51 = ((v49 + v48) & 0xFFFFFFFFFFFFFFF8);
  v50 &= 0xFFFFFFFFFFFFFFF8;
  *v50 = *v51;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = *(v53 + 16);
  *v52 = *v53;
  *(v52 + 16) = v54;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  return __dst;
}

uint64_t partial apply for closure #1 in closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)(uint64_t a1)
{
  return closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(a1, v1[9], v1[10], v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8]);
}

{
  return partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:));
}

uint64_t partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:));
}

{
  return closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, v1[7], v1[8], v1[2], v1[3], v1[4], v1[5]);
}

uint64_t partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(uint64_t a1)
{
  return closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(a1, v1[11], v1[12], v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9], v1[10]);
}

{
  return partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(a1, closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:));
}

uint64_t partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(a1, closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:));
}

{
  return closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(a1, v1[9], v1[10], v1[2], v1[3], v1[4], v1[5], v1[6], v1[7]);
}

uint64_t partial apply for closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)(a1, partial apply for closure #1 in closure #1 in closure #1 in List.init<A>(_:selection:rowContent:), a2);
}

{
  return partial apply for closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)(a1, partial apply for closure #1 in closure #1 in closure #1 in List.init<A>(_:selection:rowContent:), a2);
}

uint64_t partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(a1, partial apply for closure #1 in closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), a2);
}

{
  return partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(a1, partial apply for closure #1 in closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), a2);
}

uint64_t View.listRowSeparator(_:edges:)(char a1, char a2)
{
  return View.listRowSeparator(_:edges:)(a1, a2);
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 17) = a2;
  View.transformTrait<A>(_:transform:)();
}

uint64_t View.listRowSeparatorTint(_:edges:)(uint64_t a1, char a2)
{
  return View.listRowSeparatorTint(_:edges:)(a1, a2);
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  View.transformTrait<A>(_:transform:)();
}

_BYTE *partial apply for closure #1 in View.listRowSeparator(_:edges:)(_BYTE *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  if ((v3 & 1) == 0)
  {
    if ((*(v1 + 17) & 2) == 0)
    {
      return result;
    }

LABEL_5:
    result[16] = v2;
    return result;
  }

  *result = v2;
  if ((v3 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t closure #1 in View.listRowSeparatorTint(_:edges:)(uint64_t result, uint64_t a2, char a3)
{
  v4 = result;
  if (a3)
  {

    *(v4 + 8) = a2;
  }

  if ((a3 & 2) != 0)
  {

    *(v4 + 24) = a2;
  }

  return result;
}

uint64_t assignWithCopy for ListSeparatorConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ListSeparatorConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for ListSeparatorConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ListSeparatorConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized static ListSeparatorConfiguration.Appearance.== infix(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      if (a2 == a4)
      {
        return 1;
      }

      v4 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized static ListSeparatorConfiguration.== infix(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a2 != a6)
    {
      v8 = a8;
      v9 = a4;
      v10 = a7;
      v11 = a3;

      v12 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      a3 = v11;
      a7 = v10;
      a4 = v9;
      a8 = v8;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3 == a7)
  {
    if (a4)
    {
      if (a8)
      {
        if (a4 == a8)
        {
          return 1;
        }

        v14 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t EditMenuBridge.presentedMenu.didset(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 8);
  v10 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16);
  v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24);
  v12 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32);
  v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  if (v7 == 1)
  {
    if (v13 == 1)
    {
      outlined copy of ActiveEditMenu?(v8, *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 8), v10, v11, v12, 1);
      outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, 1);

      return outlined consume of ActiveEditMenu?(v2, v3, v5, v4, v6, 1);
    }

    v15 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32);
    v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16);
    v18 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
    v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24);
    outlined copy of ActiveEditMenu?(v8, v9, v10, v11, v12, v13);
    outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, 1);
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32);
    v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16);
    v18 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
    v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24);
    if (v13 != 1)
    {
      outlined copy of ActiveEditMenu?(v8, v9, v10, v11, v12, v13);
      outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, v7);
      outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, v7);
      outlined consume of ActiveEditMenu?(v18, v9, v17, v16, v15, v13);

      result = outlined consume of ActiveEditMenu?(v2, v3, v5, v4, v6, v7);
      if (v2 == v18)
      {
        return result;
      }

      goto LABEL_10;
    }

    outlined copy of ActiveEditMenu?(v8, v9, v10, v11, v12, 1);
    outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, v7);
    outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, v7);
  }

  outlined consume of ActiveEditMenu?(v2, v3, v5, v4, v6, v7);
  outlined consume of ActiveEditMenu?(v18, v9, v17, v16, v15, v13);
LABEL_10:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void EditMenuBridge.presentMenu(_:)(unsigned int *a1)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 3);
  v69 = *(a1 + 32);
  v6 = *(a1 + 5);
  v7 = v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v10 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v8 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v10)
  {
    return;
  }

  v67 = v2;
  v11 = OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction;
  v12 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
    [v10 swiftui:v13 addManagedInteraction:?];
    v14 = *(v1 + v11);
    *(v1 + v11) = v13;

    v12 = 0;
  }

  v66 = v3;
  v15 = v12;
  AGGraphClearUpdate();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_32;
  }

  v16 = *(v7 + 8);
  v17 = swift_getObjectType();
  (*(*(v16 + 8) + 8))(v17);
  swift_unknownObjectRelease();
  ViewGraph.transform.getter();

  AGGraphSetUpdate();
  v75 = v71;
  v76 = v72;
  v77 = v73;
  type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
  Anchor.convert(to:)();

  if (v82)
  {

    return;
  }

  v63 = v13;
  v64 = v10;
  v18 = v5;
  v19 = v78;
  v20 = v79;
  v21 = v4;
  v22 = v6;
  v24 = v80;
  v23 = v81;
  v25 = v78;
  v26 = v79;
  v27 = v80;
  v28 = v81;
  LODWORD(v71) = v67;
  v61 = v22;
  v62 = v21;
  *(&v71 + 1) = v21;
  *&v72 = v66;
  v60 = v18;
  *(&v72 + 1) = v18;
  LOBYTE(v73) = v69;
  *(&v73 + 1) = v22;
  v29 = EditMenuBridge.attributedString(from:in:)(&v71);
  v65 = v1;
  v30 = (v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v31 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v32 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  v33 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48);
  if (v32 != 1)
  {
    v43 = *(v30 + 1);
    v44 = *(v30 + 2);
    v68 = *(v30 + 4);
    v70 = *(v30 + 3);
    *v30 = v31;
    v30[1] = v19;
    v30[2] = v20;
    v30[3] = v24;
    v30[4] = v23;
    *(v30 + 5) = v29;
    *(v30 + 6) = v33;
    v45 = v29;
    swift_retain_n();
    outlined copy of ActiveEditMenu?(v31, v43, v44, v70, v68, v32);
    outlined consume of ActiveEditMenu?(v31, v43, v44, v70, v68, v32);
    *&v71 = v31;
    *(&v71 + 1) = v43;
    *&v72 = v44;
    *(&v72 + 1) = v70;
    *&v73 = v68;
    *(&v73 + 1) = v32;
    v74 = v33;
    EditMenuBridge.presentedMenu.didset(&v71);
    outlined consume of ActiveEditMenu?(v31, v43, v44, v70, v68, v32);
    [v63 reloadVisibleMenu];

LABEL_25:
    v42 = v64;
    goto LABEL_26;
  }

  v58 = *(v30 + 1);
  v59 = *(v30 + 4);
  v34 = *(v30 + 1);
  *v30 = v67;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v24;
  v30[4] = v23;
  *(v30 + 5) = v29;
  *(v30 + 6) = v62;
  v35 = v29;

  v57 = v35;
  outlined copy of ActiveEditMenu?(v31, v34, v58, *(&v58 + 1), v59, 1);
  outlined consume of ActiveEditMenu?(v31, v34, v58, *(&v58 + 1), v59, 1);
  *&v71 = v31;
  *(&v71 + 1) = v34;
  v72 = v58;
  *&v73 = v59;
  *(&v73 + 1) = 1;
  v74 = v33;
  EditMenuBridge.presentedMenu.didset(&v71);
  outlined consume of ActiveEditMenu?(v31, v34, v58, *(&v58 + 1), v59, 1);
  if (v62)
  {
    v36 = (v65 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation);
    v37 = *(v65 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation);
    v38 = *(v65 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 8);
    v39 = *(v65 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 16);
    v40 = *(v65 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 24);
    *v36 = v67;
    v36[1] = v62;
    v36[2] = v66;
    v36[3] = v60;
    v36[4] = v69;
    v36[5] = v61;

    outlined consume of EditMenuPresentation?(v37, v38, v39, v40);
    if (*(v30 + 5) != 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIEditMenuConfiguration);
      LODWORD(v75) = *v30;
      lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
      AnyHashable.init<A>(_:)();
      v83.origin.x = v25;
      v83.origin.y = v26;
      v83.size.width = v27;
      v83.size.height = v28;
      CGRectGetWidth(v83);
      v84.origin.x = v25;
      v84.origin.y = v26;
      v84.size.width = v27;
      v84.size.height = v28;
      CGRectGetHeight(v84);
      v41 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
      [v63 presentEditMenuWithConfiguration_];

      v42 = v57;
LABEL_26:

      return;
    }

    goto LABEL_33;
  }

  v85.origin.x = v25;
  v85.origin.y = v26;
  v85.size.width = v27;
  v85.size.height = v28;
  Width = CGRectGetWidth(v85);
  v86.origin.x = v25;
  v86.origin.y = v26;
  v86.size.width = v27;
  v86.size.height = v28;
  Height = CGRectGetHeight(v86);
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v48 = *(v7 + 8);
  v49 = swift_getObjectType();
  v50 = ViewGraphDelegate.uiView.getter(v49, *(*(v48 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v50)
  {
    goto LABEL_24;
  }

  [v50 convertPoint:0 toView:{Width * 0.5 + v25, Height * 0.5 + v26}];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_35:
    __break(1u);
    return;
  }

  v51 = *(v7 + 8);
  v52 = swift_getObjectType();
  v53 = (*(v51 + 24))(v52, v51);
  swift_unknownObjectRelease();
  if (!v53)
  {
    goto LABEL_23;
  }

  type metadata accessor for ViewResponder();
  if (!swift_dynamicCastClass())
  {

    return;
  }

  *&v71 = 0;
  LOBYTE(v75) = 1;
  v54 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

  if (!v54)
  {
LABEL_23:

    goto LABEL_24;
  }

  type metadata accessor for EditMenuResponder();
  ResponderNode.firstAncestor<A>(ofType:)();

  if (!v71)
  {
LABEL_24:

    goto LABEL_25;
  }

  v55 = EditMenuBridge.configurationFromResponder(_:)(v71);
  if (v55)
  {
    v56 = v55;
    [v63 presentEditMenuWithConfiguration_];
  }

  else
  {
  }
}

uint64_t closure #1 in EditMenuBridge.outermostResponder()@<X0>(uint64_t *a1@<X1>, char *a2@<X8>)
{
  type metadata accessor for EditMenuResponder();
  result = swift_dynamicCastClass();
  if (result)
  {
    *a1 = result;

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t EditMenuBridge.configurationFromResponder(_:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40) == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    type metadata accessor for UIKitEditMenuConfiguration();
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    AnyHashable.init<A>(_:)();
    v3 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
    *(v3 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder) = v2;

    return v3;
  }

  return result;
}

uint64_t EditMenuBridge.attributedString(from:in:)(uint64_t a1)
{
  v3 = type metadata accessor for ResolvableStringResolutionContext();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    v11 = *(v10 + 8);

    v11(ObjectType, v10);
    swift_unknownObjectRelease();
    GraphHost.environment.getter();

    v14[0] = v14[1];
    ResolvableStringResolutionContext.init(environment:maximumWidth:)();
    v12 = ResolvedStyledText.resolvedContent(in:)();
    outlined destroy of MenuVisitor(v5, MEMORY[0x1E6980B68]);
    if (v12)
    {
      dispatch thunk of ResolvedStyledText.drawingScale(size:)();
      v13 = NSAttributedString.scaled(by:)();

      return v13;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void closure #1 in EditMenuBridge.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() generalPasteboard];
  type metadata accessor for PlatformItemList?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CD69590;
  *(v4 + 32) = a2;
  type metadata accessor for NSItemProviderWriting();
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setObjects_];
}

void EditMenuBridge.share()()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  if (v2 == 1 || v2 == 0)
  {
    return;
  }

  v4 = *v1;
  v5 = v1[3];
  v32 = v1[2];
  v33 = v1[1];
  v6 = v1[4];
  v7 = v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v10 = v2;
  outlined copy of ActiveEditMenu?(v4, v33, v32, v5, v6, v2);
  v11 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v8 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v11)
  {

    v24 = v4;
    v26 = v32;
    v25 = v33;
    v27 = v5;
    v28 = v6;
    v29 = v2;
    goto LABEL_18;
  }

  type metadata accessor for PlatformItemList?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 56) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  *(v12 + 32) = v10;
  v13 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v30 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithActivityItems:isa applicationActivities:0];

  type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIActivityType>, type metadata accessor for UIActivityType, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  v17 = *MEMORY[0x1E69CDB18];
  *(v16 + 32) = *MEMORY[0x1E69CDB18];
  type metadata accessor for UIActivityType(0);
  v18 = v17;
  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v15 setExcludedActivityTypes_];

  v20 = [v15 popoverPresentationController];
  if (v20)
  {
    v21 = v20;
    [v20 setSourceView_];
    [v21 setSourceRect_];
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_22:
    __break(1u);
    return;
  }

  v22 = *(v7 + 8);
  v23 = swift_getObjectType();
  v31 = ViewGraphDelegate.uiViewController.getter(v23, *(*(v22 + 16) + 8));
  swift_unknownObjectRelease();
  if (v31)
  {
    [v31 presentViewController:v15 animated:1 completion:0];

    outlined consume of ActiveEditMenu?(v4, v33, v32, v5, v6, v2);

    return;
  }

  v24 = v4;
  v25 = v33;
  v26 = v32;
  v27 = v5;
  v28 = v6;
  v29 = v2;
LABEL_18:

  outlined consume of ActiveEditMenu?(v24, v25, v26, v27, v28, v29);
}

void closure #2 in EditMenuBridge.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void EditMenuBridge.lookup()()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  if (v2 == 1 || v2 == 0)
  {
    return;
  }

  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v9 = (v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_24;
  }

  v32 = v9;
  v10 = v9[1];
  ObjectType = swift_getObjectType();
  v12 = v2;
  outlined copy of ActiveEditMenu?(v4, v5, v7, v6, v8, v2);
  v13 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v10 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v13)
  {

    v26 = v4;
    v27 = v5;
    v28 = v7;
    v29 = v6;
    v30 = v8;
    goto LABEL_20;
  }

  v31 = v12;
  v14 = [v12 string];
  if (!v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = MEMORY[0x18D00C850](v15);
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DCE50]) initWithTerm_];

  v17 = [v16 popoverPresentationController];
  v18 = v4;
  v19 = v8;
  v20 = v6;
  v21 = v7;
  v22 = v5;
  if (v17)
  {
    v23 = v17;
    [v17 setSourceView_];
    [v23 setSourceRect_];
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_24:
    __break(1u);
    return;
  }

  v24 = v32[1];
  v25 = swift_getObjectType();
  v33 = ViewGraphDelegate.uiViewController.getter(v25, *(*(v24 + 16) + 8));
  swift_unknownObjectRelease();
  if (v33)
  {
    [v33 presentViewController:v16 animated:1 completion:0];

    outlined consume of ActiveEditMenu?(v18, v22, v21, v20, v19, v2);

    return;
  }

  v26 = v18;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
LABEL_20:

  outlined consume of ActiveEditMenu?(v26, v27, v28, v29, v30, v2);
}

uint64_t closure #1 in EditMenuBridge.editMenuInteraction(_:willPresentMenuFor:animator:)(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 24))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t closure #1 in EditMenuBridge.editMenuInteraction(_:willDismissMenuFor:animator:)(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation;
  if (*(a1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 24))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();

    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  return outlined consume of EditMenuPresentation?(v3, v4, v5, v2);
}

void @objc EditMenuBridge.editMenuInteraction(_:willPresentMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id))
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  a6(v10);

  swift_unknownObjectRelease();
}

uint64_t specialized EditMenuBridge.editMenuInteraction(_:menuFor:suggestedActions:)(void *a1)
{
  v3 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = (v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  if (v9 == 1)
  {
    return v7;
  }

  v10 = v4;
  v11 = *v8;
  v12 = v8[1];
  v14 = v8[2];
  v13 = v8[3];
  v83 = v8[4];
  v84 = v13;
  v15 = v8[6];
  v16 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CC0];
  type metadata accessor for UIKitEditMenuConfiguration();
  v17 = swift_dynamicCastClass();
  v85 = v15;
  if (v17)
  {
    if (*(v17 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      v18 = v12;
      v19 = a1;

      v82 = v18;
      outlined copy of ActiveEditMenu?(v11, v18, v14, v84, v83, v9);
      type metadata accessor for PlatformItemList?(0, &lazy cache variable for type metadata for PlatformItemList?, &type metadata for PlatformItemList, MEMORY[0x1E69E6720]);
      static Update.ensure<A>(_:)();
      if (v90)
      {
        v20 = v90;
      }

      else
      {
        v20 = v16;
      }

      if (*(v20 + 16))
      {
        v81 = v11;
        *&v90 = v16;
        v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(v16);
        v22 = MEMORY[0x1E69E7CC8];
        v6[8] = 0;
        *(v6 + 2) = v22;
        *(v6 + 3) = v21;
        *(v6 + 4) = v16;
        *(v6 + 5) = v22;
        v6[48] = 0;
        type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
        v23 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
        v24 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_18CD63400;
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v26 = __swift_project_value_buffer(v23, static MenuVisitor.MenuStackGroup.empty);
        outlined init with copy of MenuVisitor.MenuStackGroup(v26, v25 + v24);
        *(v6 + 7) = v25;
        v27 = *(v10 + 32);
        v28 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
        (*(*(v28 - 8) + 56))(&v6[v27], 1, 1, v28);
        *v6 = 0;
        MenuVisitor.visit(_:uniqueNames:)(v20, &v90);

        v29 = *(v6 + 4);

        outlined destroy of MenuVisitor(v6, type metadata accessor for MenuVisitor);

        v11 = v81;
        v12 = v82;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
        v12 = v82;
      }

      goto LABEL_35;
    }

    goto LABEL_15;
  }

  if (!v15)
  {
LABEL_15:
    v32 = v9;
    v29 = MEMORY[0x1E69E7CC0];
LABEL_35:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v92.value.super.isa = 0;
    v92.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v72, v71, 0, v92, 0, 0xFFFFFFFFFFFFFFFFLL, v29, v74);
    v7 = v73;
    outlined consume of ActiveEditMenu?(v11, v12, v14, v84, v83, v9);
    return v7;
  }

  v82 = v12;
  v80 = v14;
  if (v9)
  {

    v30 = v9;
    v31 = v30;
  }

  else
  {
    v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v31 = [v33 init];
    v30 = 0;
  }

  v81 = v11;
  v34 = v30;
  v35 = static Text.System.uiCopy.getter();
  v37 = v36;
  v39 = v38;
  v79 = v1;
  v40 = v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v42 = *(v40 + 8);
  v43 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  ObjectType = swift_getObjectType();
  (*(*(v42 + 8) + 8))(ObjectType);
  swift_unknownObjectRelease();
  GraphHost.environment.getter();

  v89 = v90;
  v87 = 0;
  v88 = 0;
  MEMORY[0x18D009CB0](&v86, v45);
  Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v35, v37, v39 & 1);

  *(swift_allocObject() + 16) = v31;
  v46 = v31;
  v78 = v43;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x18D00CC30]();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = v91;
  result = swift_unknownObjectWeakLoadStrong();
  v11 = v81;
  v12 = v82;
  if (!result)
  {
    goto LABEL_38;
  }

  v47 = *(v40 + 8);
  v48 = swift_getObjectType();
  v49 = ViewGraphDelegate.uiViewController.getter(v48, *(*(v47 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v49)
  {

    v14 = v80;
    goto LABEL_35;
  }

  v77 = v46;

  v50 = static Text.System.shareEllipses.getter();
  v52 = v51;
  v54 = v53;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_39;
  }

  v76 = v40;
  v55 = *(v40 + 8);
  v56 = swift_getObjectType();
  (*(*(v55 + 8) + 8))(v56);
  swift_unknownObjectRelease();
  GraphHost.environment.getter();

  v89 = v90;
  v87 = 0;
  v88 = 0;
  MEMORY[0x18D009CB0](&v86, v57);
  Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v50, v52, v54 & 1);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x18D00CC30]();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = v91;
  v58 = v77;
  v59 = [v77 string];
  v14 = v80;
  v11 = v81;
  if (!v59)
  {
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = MEMORY[0x18D00C850](v60);
  }

  v61 = [objc_opt_self() dictionaryHasDefinitionForTerm_];

  if (!v61)
  {

    goto LABEL_35;
  }

  v62 = static Text.System.uiLookUp.getter();
  v64 = v63;
  v66 = v65;
  v67 = v76;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v68 = *(v67 + 8);
    v69 = swift_getObjectType();
    (*(*(v68 + 8) + 8))(v69);
    swift_unknownObjectRelease();
    GraphHost.environment.getter();

    v89 = v90;
    v87 = 0;
    v88 = 0;
    MEMORY[0x18D009CB0](&v86, v70);
    Text.resolveString(in:with:idiom:)();
    outlined consume of Text.Storage(v62, v64, v66 & 1);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x18D00CC30]();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v29 = v91;
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized EditMenuBridge.editMenuInteraction(_:willPresentMenuFor:animator:)(void *a1)
{
  type metadata accessor for UIKitEditMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      return result;
    }

    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    v6 = a1;

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
    *(swift_allocObject() + 16) = v1;
    v7 = v1;
    static Update.enqueueAction(reason:_:)();
  }
}

uint64_t specialized EditMenuBridge.editMenuInteraction(_:willDismissMenuFor:animator:)(void *a1)
{
  type metadata accessor for UIKitEditMenuConfiguration();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    if (!*(v3 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      goto LABEL_6;
    }

    LOBYTE(v17[0]) = 17;
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v6 = a1;

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
    LOBYTE(v17[0]) = 17;
    *(swift_allocObject() + 16) = v1;
    v7 = v1;
    static Update.enqueueAction(reason:_:)();
  }

LABEL_6:
  v8 = &v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu];
  v9 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu];
  v10 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 8];
  v11 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16];
  v12 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24];
  v13 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32];
  v14 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40];
  v15 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 40) = xmmword_18CD6A6D0;
  outlined copy of ActiveEditMenu?(v9, v10, v11, v12, v13, v14);
  outlined consume of ActiveEditMenu?(v9, v10, v11, v12, v13, v14);
  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v13;
  v17[5] = v14;
  v17[6] = v15;
  EditMenuBridge.presentedMenu.didset(v17);

  return outlined consume of ActiveEditMenu?(v9, v10, v11, v12, v13, v14);
}

uint64_t outlined init with copy of MenuVisitor.MenuStackGroup(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSItemProviderWriting()
{
  result = lazy cache variable for type metadata for NSItemProviderWriting;
  if (!lazy cache variable for type metadata for NSItemProviderWriting)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSItemProviderWriting);
  }

  return result;
}

uint64_t outlined copy of EditMenuPresentation?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for static Rule.initialValue.getter in conformance ToolbarItem<A, B>.MakeView@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t closure #1 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ToolbarItem();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

double protocol witness for static Rule.initialValue.getter in conformance ToString<A>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD633F0;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PreferenceTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
  v2 = *AGGraphGetValue();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in PreferenceTransform.value.getter;
  *(v4 + 24) = v3;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = v4;
}

uint64_t ToolbarItem<>.init(id:placement:showsByDefault:isEmpty:defaultItemKind:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, void (*a7)(uint64_t)@<X6>, void *a8@<X8>)
{
  v14 = *a6;
  v15 = type metadata accessor for ToolbarItem();
  v16 = v15[15];
  *(a8 + v16) = 5;
  *a8 = a1;
  a8[1] = a2;
  v17 = outlined init with copy of ToolbarItemPlacement(a3, (a8 + 2));
  *(a8 + v15[13]) = a4;
  *(a8 + v15[14]) = a5;
  *(a8 + v16) = v14;
  a7(v17);

  return outlined destroy of ToolbarItemPlacement(a3);
}

uint64_t ToolbarItem<>.init(id:placement:showsByDefault:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, void *a6@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a3, v14);
  v13 = 5;
  ToolbarItem<>.init(id:placement:showsByDefault:isEmpty:defaultItemKind:content:)(a1, a2, v14, a4, 0, &v13, a5, a6);
  return outlined destroy of ToolbarItemPlacement(a3);
}

uint64_t *initializeBufferWithCopyOfBuffer for ToolbarItem(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v8 | *(v4 + 80) & 0xF8;
  if (((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || (((((-8 - v5) | 7) - v8 - 41) | v8) - v9 - 3 >= 0xFFFFFFFFFFFFFFE7 ? (v11 = v10 > 7) : (v11 = 1), v11))
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + (((v10 | 7) + 16) & ~(v10 | 7)));
  }

  else
  {
    v12 = ~v8;
    (*(v4 + 16))(a1);
    v14 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*(v15 + 40) == 1)
    {
      v16 = *(v15 + 24);
      *(v14 + 24) = v16;
      *(v14 + 32) = *(v15 + 32);
      (**(v16 - 8))((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8, v15);
      *(v14 + 40) = 1;
    }

    else
    {
      v18 = *v15;
      v19 = *(v15 + 16);
      *(v14 + 25) = *(v15 + 25);
      *v14 = v18;
      *(v14 + 16) = v19;
    }

    v20 = (v14 + v8 + 41) & v12;
    v21 = (v15 + v8 + 41) & v12;
    (*(v7 + 16))(v20, v21, v6);
    v22 = (v20 + v9);
    *v22 = *(v21 + v9);
    v22[1] = *(v21 + v9 + 1);
    v22[2] = *(v21 + v9 + 2);
  }

  return v3;
}

uint64_t initializeWithTake for ToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 25);
  v11 = v9[1];
  *v8 = *v9;
  v8[1] = v11;
  *(v8 + 25) = v10;
  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v8 + v14 + 41) & ~v14;
  v16 = (v9 + v14 + 41) & ~v14;
  (*(v12 + 32))(v15, v16);
  v17 = *(v13 + 32);
  v18 = (v17 + v15);
  v19 = (v17 + v16);
  *v18 = *v19;
  v18[1] = v19[1];
  v18[2] = v19[2];
  return a1;
}

uint64_t assignWithTake for ToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  if (v8 != v9)
  {
    outlined destroy of ToolbarItemPlacement.Role(v8);
    v10 = *(v9 + 25);
    v11 = v9[1];
    *v8 = *v9;
    v8[1] = v11;
    *(v8 + 25) = v10;
  }

  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v8 + v14 + 41) & ~v14;
  v16 = (v9 + v14 + 41) & ~v14;
  (*(v12 + 40))(v15, v16);
  v17 = *(v13 + 24);
  v18 = (v15 + v17);
  v19 = (v16 + v17);
  *v18 = *v19;
  v18[1] = v19[1];
  v18[2] = v19[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarItem(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 + 64);
  v9 = *(v6 + 80);
  v10 = *(v6 + 64);
  if (v5 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v4 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v13 = v10 + ((v9 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v9) + 3;
  v14 = 8 * v13;
  if (v13 != 3 && v10 + ((v9 + ((v8 + 7) & 0xFFFFFFF8) + 41) & ~v9) < 0xFFFFFFFD)
  {
    goto LABEL_10;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 <= 0xFF)
    {
      if (v16 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

LABEL_17:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v10 + ((v9 + ((v8 + 7) & 0xFFFFFFF8) + 41) & ~v9) == -3)
      {
        v19 = 0;
      }

      else
      {
        if (v13 <= 3)
        {
          v18 = v10 + ((v9 + ((v8 + 7) & 0xFFFFFFF8) + 41) & ~v9) + 3;
        }

        else
        {
          v18 = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v19 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v19 = *a1;
          }
        }

        else if (v18 == 1)
        {
          v19 = *a1;
        }

        else
        {
          v19 = *a1;
        }
      }

      return v11 + (v19 | v17) + 1;
    }

    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v21 = (((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 41) & ~v9;
  if (v7 == v11)
  {
    return (*(v6 + 48))(v21);
  }

  v22 = *(v21 + v10);
  if (v22 < 2)
  {
    return 0;
  }

  return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *storeEnumTagSinglePayload for ToolbarItem(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v11 + ((v10 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v10) + 3;
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v11 + ((v10 + ((v9 + 7) & 0xFFFFFFF8) + 41) & ~v10) != -3)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_50:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
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
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = (((&result[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + v10 + 41) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for ToolbarMakeEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  v6 = v4;

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

uint64_t assignWithTake for ToolbarMakeEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarMakeEntries(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarMakeEntries(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double GroupedListStyle.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void static GroupedListStyle._sectionInset(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
}

uint64_t static GroupedListStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>();
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for InsettableGroupedListBody();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for GroupedListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<GroupedListStyleContext>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>);
    }
  }
}

void type metadata accessor for StyleContextWriter<GroupedListStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<GroupedListStyleContext>)
  {
    lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<GroupedListStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext()
{
  result = lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext;
  if (!lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext;
  if (!lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>();
    lazy protocol witness table accessor for type StyleContextWriter<GroupedListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<GroupedListStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<GroupedListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static GroupedListStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>();
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for InsettableGroupedListBody();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for GroupedListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t GroupedListStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t GroupedListStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-v10];
  v21[0] = &type metadata for GroupedListStyle;
  v21[1] = a2;
  v21[2] = &protocol witness table for GroupedListStyle;
  v21[3] = a3;
  v12 = type metadata accessor for _ListValue();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17[-v14];
  GroupedListStyle.Body.base.getter(&v17[-v14]);
  (*(v9 + 32))(v11, &v15[*(v13 + 60)], v8);
  GroupedListStyle.Body.insetMode.getter(a2, a3, v21);
  v18 = a2;
  v19 = a3;
  v20 = a1;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  return InsettableGroupedListBody.init(selection:insetMode:content:)(v11, v21, partial apply for closure #1 in GroupedListStyle.Body.value.getter, a4);
}

uint64_t GroupedListStyle.Body.insetMode.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15 = &type metadata for GroupedListStyle;
  v16 = a1;
  v17 = &protocol witness table for GroupedListStyle;
  v18 = a2;
  v4 = type metadata accessor for _ListValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  GroupedListStyle.Body.base.getter(&v13 - v6);
  v8 = *(v7 + 1);
  v13 = *v7;
  v14 = v8;
  v9 = v7[32];
  result = (*(v5 + 8))(v7, v4);
  v12 = v13;
  v11 = v14;
  if (v9 == 1)
  {
    type metadata accessor for _SemanticFeature<Semantics_v2>();
    lazy protocol witness table accessor for type StyleContextWriter<GroupedListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, type metadata accessor for _SemanticFeature<Semantics_v2>);
    result = static SemanticFeature.isEnabled.getter();
    v11 = 0uLL;
    v12 = (result & 1) == 0;
  }

  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = 0;
  *(a3 + 33) = v9;
  return result;
}

uint64_t closure #1 in GroupedListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = &type metadata for GroupedListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for GroupedListStyle;
  v8[3] = a3;
  v3 = type metadata accessor for _ListValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  GroupedListStyle.Body.base.getter(v8 - v5);
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance GroupedListStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>();
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  v2 = type metadata accessor for InsettableGroupedListBody();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t storeEnumTagSinglePayload for GroupedListStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GroupedListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();
  *(a1 + 8) = result;
  return result;
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance GroupedListStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();

  return specialized static ListStyleContext.accepts<A>(_:at:)(a4, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance GroupedListStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<GroupedListStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

uint64_t ModifiedContent<>.accessibilitySortPriority(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a3;
  v5 = 0;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980040], &v4, 1, a1, a2);
}

void *Array<A>.sortedSupplementaryItems()(unint64_t a1)
{
  v6 = specialized _copySequenceToContiguousArray<A>(_:)(a1);
  specialized MutableCollection<>.sort(by:)(&v6);
  v1 = v6;
  v2 = v6[2];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = 5;
    do
    {
      v4 = v1[v3];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v2;
    }

    while (v2);

    return v6;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t CGRect.compare(to:layoutDirection:)(unsigned __int8 *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v16 = *a1;
  MinY = CGRectGetMinY(*&a2);
  v34.origin.x = a6;
  v34.origin.y = a7;
  v34.size.width = a8;
  v34.size.height = a9;
  if (MinY >= CGRectGetMidY(v34) || (v35.origin.x = a6, v35.origin.y = a7, v35.size.width = a8, v35.size.height = a9, v18 = CGRectGetMidY(v35), v36.origin.x = a2, v36.origin.y = a3, v36.size.width = a4, v36.size.height = a5, v18 >= CGRectGetMaxY(v36)))
  {
    v37.origin.x = a6;
    v37.origin.y = a7;
    v37.size.width = a8;
    v37.size.height = a9;
    v19 = CGRectGetMinY(v37);
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    if (v19 >= CGRectGetMidY(v38))
    {
      goto LABEL_16;
    }

    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    MidY = CGRectGetMidY(v39);
    v40.origin.x = a6;
    v40.origin.y = a7;
    v40.size.width = a8;
    v40.size.height = a9;
    if (MidY >= CGRectGetMaxY(v40))
    {
      goto LABEL_16;
    }
  }

  if (v16 == 2)
  {
    goto LABEL_16;
  }

  v41.origin.x = a6;
  v41.origin.y = a7;
  v41.size.width = a8;
  v41.size.height = a9;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  if (CGRectGetMinX(v42) < MinX)
  {
    v43.origin.x = a6;
    v43.origin.y = a7;
    v43.size.width = a8;
    v43.size.height = a9;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = a2;
    v44.origin.y = a3;
    v44.size.width = a4;
    v44.size.height = a5;
    if (CGRectGetMaxX(v44) < MaxX)
    {
      return v16 & 1;
    }
  }

  v45.origin.x = a6;
  v45.origin.y = a7;
  v45.size.width = a8;
  v45.size.height = a9;
  v24 = CGRectGetMinX(v45);
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  if (v24 < CGRectGetMinX(v46))
  {
    v47.origin.x = a6;
    v47.origin.y = a7;
    v47.size.width = a8;
    v47.size.height = a9;
    v25 = CGRectGetMaxX(v47);
    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    if (v25 < CGRectGetMaxX(v48))
    {
      return (v16 & 1) == 0;
    }
  }

  v49.origin.x = a6;
  v49.origin.y = a7;
  v49.size.width = a8;
  v49.size.height = a9;
  v32 = CGRectGetWidth(v49) * 0.5 + a6;
  v50.origin.x = a6;
  v50.origin.y = a7;
  v50.size.width = a8;
  v50.size.height = a9;
  Height = CGRectGetHeight(v50);
  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  v30 = CGRectGetWidth(v51) * 0.5 + a2;
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  v26 = CGRectGetHeight(v52) * 0.5 + a3;
  if (v32 == v30 && Height * 0.5 + a7 == v26)
  {
    return 2;
  }

LABEL_16:
  v53.origin.x = a6;
  v53.origin.y = a7;
  v53.size.width = a8;
  v53.size.height = a9;
  v28 = CGRectGetMinY(v53);
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  if (v28 < CGRectGetMinY(v54))
  {
    return 1;
  }

  v55.origin.x = a6;
  v55.origin.y = a7;
  v55.size.width = a8;
  v55.size.height = a9;
  MaxY = CGRectGetMaxY(v55);
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  return MaxY < CGRectGetMaxY(v56);
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimationTimelineSchedule.Entries();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  outlined init with copy of AnimationTimelineSchedule.Entries(a1, v11);
  v13 = *(v9 + 28);
  v14 = v11;
  if (v11[v13 + 8])
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = 0;
    v43 = v12;
    v16 = MEMORY[0x1E69E7CC0];
    v44 = (v12 + 32) & ~v12;
    v22 = MEMORY[0x1E69E7CC0] + v44;
    v23 = *(v6 + 16);
    v46 = (v6 + 56);
    v47 = v23;
    v45 = (v6 + 48);
    v48 = v6 + 16;
    v24 = (v6 + 32);
    v41 = v11;
    v42 = v6;
    v23(v4, v11, v5);
    while (1)
    {
      (*v46)(v4, 0, 1, v5);
      static Date.+= infix(_:_:)();
      if ((*v45)(v4, 1, v5) == 1)
      {
        break;
      }

      v26 = *v24;
      result = (*v24)(v49, v4, v5);
      if (v15)
      {
        v25 = v16;
        v20 = __OFSUB__(v15--, 1);
        if (v20)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v27 = v16[3];
        if (((v27 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
        v30 = *(v6 + 72);
        v31 = v44;
        v25 = swift_allocObject();
        result = _swift_stdlib_malloc_size_1(v25);
        if (!v30)
        {
          goto LABEL_35;
        }

        v32 = result - v31;
        if (result - v31 == 0x8000000000000000 && v30 == -1)
        {
          goto LABEL_36;
        }

        v34 = v32 / v30;
        v25[2] = v29;
        v25[3] = 2 * (v32 / v30);
        v35 = v25 + v31;
        v36 = v16[3] >> 1;
        v37 = v36 * v30;
        if (v16[2])
        {
          if (v25 < v16 || v35 >= v16 + v44 + v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v22 = &v35[v37];
        v39 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v14 = v41;
        v6 = v42;
        v20 = __OFSUB__(v39, 1);
        v15 = v39 - 1;
        if (v20)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      v26(v22, v49, v5);
      v22 += *(v6 + 72);
      v16 = v25;
      v47(v4, v14, v5);
    }
  }

  outlined destroy of AnimationTimelineSchedule.Entries(v14);
  result = outlined destroy of Date?(v4);
  v18 = v16[3];
  if (v18 < 2)
  {
    return v16;
  }

  v19 = v18 >> 1;
  v20 = __OFSUB__(v19, v15);
  v21 = v19 - v15;
  if (!v20)
  {
    v16[2] = v21;
    return v16;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t specialized _copySequenceToContiguousArray<A>(_:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x18D00E9C0](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = __CocoaSet.count.getter();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>, type metadata accessor for (offset: Int, element: AccessibilityNode), MEMORY[0x1E69E6F90]);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size_1(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

Swift::Int specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  outlined init with copy of AccessibilityAttachment?(a1, v28, &lazy cache variable for type metadata for EnumeratedSequence<SubviewsCollection>, MEMORY[0x1E69E6E48], type metadata accessor for EnumeratedSequence<SubviewsCollection>);
  v1 = SubviewsCollection.endIndex.getter();
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = SubviewsCollection.index(after:)(v4);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v4 = result;
      if (!v5)
      {
        v9 = v2[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: Subview)>, type metadata accessor for (offset: Int, element: Subview), MEMORY[0x1E69E6F90]);
        v12 = swift_allocObject();
        v13 = (_swift_stdlib_malloc_size_1(v12) - 32) / 112;
        v12[2] = v11;
        v12[3] = 2 * v13;
        v14 = (v12 + 4);
        v15 = v2[3] >> 1;
        if (v2[2])
        {
          if (v12 != v2 || v14 >= &v2[14 * v15 + 4])
          {
            memmove(v12 + 4, v2 + 4, 112 * v15);
          }

          v2[2] = 0;
        }

        v6 = v14 + 112 * v15;
        v5 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v2 = v12;
      }

      v17 = __OFSUB__(v5--, 1);
      if (v17)
      {
        goto LABEL_27;
      }

      *v6 = v3;
      *(v6 + 104) = v27;
      *(v6 + 40) = v23;
      *(v6 + 24) = v22;
      *(v6 + 8) = v21;
      *(v6 + 88) = v26;
      *(v6 + 72) = v25;
      *(v6 + 56) = v24;
      v6 += 112;
      ++v3;
      if (v4 == SubviewsCollection.endIndex.getter())
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = 0;
  v8 = 0;
  v4 = 0;
LABEL_22:
  v29 = v4;
  v30 = v8;
  result = outlined destroy of AccessibilityAttachment?(v28, &lazy cache variable for type metadata for EnumeratedSequence<SubviewsCollection>.Iterator, MEMORY[0x1E69E6E40], type metadata accessor for EnumeratedSequence<SubviewsCollection>);
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v5);
  v20 = v19 - v5;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_29:
  __break(1u);
  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for (offset: Int, element: AccessibilityNode)();
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = a1;
  v5 = *a4;
  v6 = &unk_1ED580000;
  v7 = MEMORY[0x1E697FFF0];
  v36 = *a4;
  while (2)
  {
    v8 = (v5 + 16 * a3);
    v9 = *v8;
    v10 = v8[1];
    v35 = a3;
    do
    {
      v49 = v9;
      v41 = a3 - 1;
      v11 = (v5 + 16 * (a3 - 1));
      v12 = v11[1];
      v42 = *v11;
      v43 = a3;
      v40 = v11;
      v13 = v6[454];
      swift_beginAccess();
      outlined init with copy of AccessibilityAttachment?(v10 + v13, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, v7, type metadata accessor for AnyAccessibilityValue?);
      if (__src[35])
      {
        memcpy(__dst, __src, 0x128uLL);
        v14 = v10;
        v15 = v12;
      }

      else
      {
        v16 = v10;
        v39 = v12;
        v17 = v12;
        outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v7, type metadata accessor for AnyAccessibilityValue?);
        v18 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
        swift_beginAccess();
        v38 = v16;
        v19 = *&v16[v18];
        v20 = *(v19 + 16);
        if (v20)
        {
          v44 = MEMORY[0x1E69E7CC0];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
          v21 = v44;
          v22 = v19 + 32;
          do
          {
            outlined init with copy of AccessibilityAttachmentStorage(v22, __dst);
            outlined init with copy of AccessibilityAttachment(__dst, __src);
            outlined destroy of AccessibilityAttachmentStorage(__dst);
            v24 = *(v44 + 16);
            v23 = *(v44 + 24);
            if (v24 >= v23 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
            }

            *(v44 + 16) = v24 + 1;
            memcpy((v44 + 296 * v24 + 32), __src, 0x128uLL);
            v22 += 320;
            --v20;
          }

          while (v20);

          v4 = a1;
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        v25 = *(v21 + 16);
        v7 = MEMORY[0x1E697FFF0];
        if (v25 == 1)
        {
          outlined init with copy of AccessibilityAttachment(v21 + 32, __dst);
        }

        else
        {
          if (v25)
          {
            v29 = v21 + 296 * v25;
            outlined init with copy of AccessibilityAttachment(v29 - 264, __src);

            v30 = v25 - 2;
            v31 = v29 - 560;
            while (v30 < v25 - 1)
            {
              outlined init with copy of AccessibilityAttachment(v31, __dst);
              AccessibilityProperties.merge(with:)(__dst);
              v32 = AccessibilityAttachment.platformElement.getter();
              if (v32)
              {
              }

              else if (AccessibilityAttachment.platformElement.getter())
              {
                AccessibilityAttachment.platformElement.setter();
              }

              outlined destroy of AccessibilityAttachment(__dst);
              --v30;
              v31 -= 296;
              if (v30 == -1)
              {

                memcpy(__dst, __src, 0x128uLL);

                v7 = MEMORY[0x1E697FFF0];
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_56:
            __break(1u);
            return;
          }

          AccessibilityAttachment.init()();
        }

LABEL_18:
        outlined init with copy of AccessibilityAttachment(__dst, __src);
        swift_beginAccess();
        outlined assign with copy of AccessibilityAttachment?(__src, v10 + v13);
        swift_endAccess();
        outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v7, type metadata accessor for AnyAccessibilityValue?);
        v12 = v39;
        v38[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
        v5 = v36;
        v6 = &unk_1ED580000;
      }

      outlined init with copy of AccessibilityProperties(__dst, __src);
      outlined destroy of AccessibilityAttachment(__dst);
      lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
      AccessibilityProperties.subscript.getter();
      outlined destroy of AccessibilityProperties(__src);
      if (v48 == 255)
      {
        outlined destroy of AccessibilityAttachment?(v47, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
LABEL_24:

        goto LABEL_25;
      }

      outlined init with copy of AccessibilityScrollableContext(v47, __dst);
      if (BYTE6(__dst[8]))
      {
        outlined destroy of AccessibilityScrollableContext(__dst);
        outlined destroy of AccessibilityScrollableContext(v47);
        goto LABEL_24;
      }

      v26 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      outlined destroy of AccessibilityScrollableContext(v47);
      if ((v26 & 0xFF00000000) == 0x200000000)
      {
        goto LABEL_24;
      }

      AccessibilityNode.attachment.getter(__dst);
      outlined init with copy of AccessibilityProperties(__dst, __src);
      outlined destroy of AccessibilityAttachment(__dst);
      AccessibilityProperties.subscript.getter();
      outlined destroy of AccessibilityProperties(__src);
      if (v48 == 255)
      {
        outlined destroy of AccessibilityAttachment?(v47, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);

LABEL_41:
        v4 = a1;
LABEL_25:
        v27 = v43;
        if (v49 >= v42)
        {
          break;
        }

        goto LABEL_26;
      }

      outlined init with copy of AccessibilityScrollableContext(v47, __dst);
      if (BYTE6(__dst[8]))
      {
        outlined destroy of AccessibilityScrollableContext(__dst);
        outlined destroy of AccessibilityScrollableContext(v47);

        goto LABEL_41;
      }

      v33 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      outlined destroy of AccessibilityScrollableContext(v47);

      v4 = a1;
      if ((v33 & 0xFF00000000) == 0x200000000 || v26 != v33)
      {
        goto LABEL_25;
      }

      v27 = v43;
      if ((v26 & 0x100000000) != 0)
      {
        if ((v33 & 0x100000000) == 0)
        {
          goto LABEL_26;
        }
      }

      else if ((v33 & 0x100000000) != 0)
      {
        break;
      }

      if ((v26 & 0x10000000000) != 0)
      {
        if ((v33 & 0x10000000000) == 0)
        {
          break;
        }
      }

      else if ((v33 & 0x10000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v49 >= v42)
      {
        break;
      }

LABEL_26:
      if (!v5)
      {
        goto LABEL_56;
      }

      v28 = (v5 + 16 * v27);
      v9 = *v28;
      v10 = v28[1];
      *v28 = *v40;
      *v40 = v9;
      v40[1] = v10;
      a3 = v41;
    }

    while (v41 != v4);
    a3 = v35 + 1;
    if (v35 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

{
  v8 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      swift_getObjectType();
      v12 = v8;
      v13 = v11;
      v14 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v13);

      if (v14 != -1)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  v7 = MEMORY[0x1E69E7CC0];
  if (v6 < 1)
  {
LABEL_203:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_244;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_205;
    }

    goto LABEL_235;
  }

  v8 = 0;
  v9 = MEMORY[0x1E697FFF0];
LABEL_4:
  v10 = v8;
  v11 = (v8 + 1);
  v157 = v8;
  if (v8 + 1 >= v6)
  {
    goto LABEL_64;
  }

  v12 = (v8 + 1);
  v13 = *a3 + 16 * v11;
  v14 = *v13;
  v160 = *a3;
  v15 = (*a3 + 16 * v10);
  v17 = *v15;
  v16 = v15[1];
  v164 = v6;
  v18 = *(v13 + 8);
  v19 = v16;
  v20 = v17;
  v10 = v157;
  v162 = specialized static AccessibilityCore.sortedSupplementaryItems(lhs:rhs:)(v14, v18, v20);

  v21 = (v157 + 2);
  v9 = MEMORY[0x1E697FFF0];
  if ((v157 + 2) >= v164)
  {
    goto LABEL_56;
  }

  v11 = v12;
  while (1)
  {
    v22 = (v160 + 16 * v11);
    v11 = v21;
    v23 = (v160 + 16 * v21);
    v24 = v23[1];
    v25 = v22[1];
    v169 = *v22;
    v171 = *v23;
    v26 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
    swift_beginAccess();
    outlined init with copy of AccessibilityAttachment?(v24 + v26, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, v9, type metadata accessor for AnyAccessibilityValue?);
    v173 = v25;
    if (__src[35])
    {
      memcpy(__dst, __src, 0x128uLL);
      v27 = v24;
      v28 = v25;
      goto LABEL_29;
    }

    v166 = v11;
    v154 = v5;
    v158 = v24;
    v29 = v24;
    v30 = v25;
    outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v9, type metadata accessor for AnyAccessibilityValue?);
    v31 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v150 = v29;
    v32 = *&v29[v31];
    v33 = *(v32 + 16);
    if (v33)
    {
      v176 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
      v5 = v176;
      v34 = v32 + 32;
      do
      {
        outlined init with copy of AccessibilityAttachmentStorage(v34, __dst);
        outlined init with copy of AccessibilityAttachment(__dst, __src);
        outlined destroy of AccessibilityAttachmentStorage(__dst);
        v36 = *(v176 + 16);
        v35 = *(v176 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        }

        *(v176 + 16) = v36 + 1;
        memcpy((v176 + 296 * v36 + 32), __src, 0x128uLL);
        v34 += 320;
        --v33;
      }

      while (v33);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v37 = *(v5 + 16);
    if (v37 == 1)
    {
      outlined init with copy of AccessibilityAttachment(v5 + 32, __dst);

      v11 = v166;
      goto LABEL_28;
    }

    v11 = v166;
    if (!v37)
    {
      AccessibilityAttachment.init()();

      goto LABEL_28;
    }

    v38 = v5 + 296 * v37;
    outlined init with copy of AccessibilityAttachment(v38 - 264, __src);

    v39 = v37 - 2;
    v40 = v38 - 560;
    do
    {
      if (v39 >= v37 - 1)
      {
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_205:
        v183 = v7;
        v143 = *(v7 + 2);
        if (v143 >= 2)
        {
          while (*a3)
          {
            v144 = *&v7[16 * v143];
            v145 = *&v7[16 * v143 + 24];
            specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v144), (*a3 + 16 * *&v7[16 * v143 + 16]), (*a3 + 16 * v145), v11);
            if (v5)
            {
              goto LABEL_213;
            }

            if (v145 < v144)
            {
              goto LABEL_230;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            }

            if (v143 - 2 >= *(v7 + 2))
            {
              goto LABEL_231;
            }

            v146 = &v7[16 * v143];
            *v146 = v144;
            *(v146 + 1) = v145;
            v183 = v7;
            specialized Array.remove(at:)(v143 - 1);
            v7 = v183;
            v143 = *(v183 + 2);
            if (v143 <= 1)
            {
              goto LABEL_213;
            }
          }

          goto LABEL_240;
        }

LABEL_213:

        return;
      }

      outlined init with copy of AccessibilityAttachment(v40, __dst);
      AccessibilityProperties.merge(with:)(__dst);
      v41 = AccessibilityAttachment.platformElement.getter();
      if (v41)
      {
      }

      else if (AccessibilityAttachment.platformElement.getter())
      {
        AccessibilityAttachment.platformElement.setter();
      }

      outlined destroy of AccessibilityAttachment(__dst);
      --v39;
      v40 -= 296;
    }

    while (v39 != -1);

    memcpy(__dst, __src, 0x128uLL);

LABEL_28:
    outlined init with copy of AccessibilityAttachment(__dst, __src);
    v24 = v158;
    swift_beginAccess();
    outlined assign with copy of AccessibilityAttachment?(__src, v158 + v26);
    swift_endAccess();
    outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], type metadata accessor for AnyAccessibilityValue?);
    v150[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
    v5 = v154;
    v10 = v157;
LABEL_29:
    outlined init with copy of AccessibilityProperties(__dst, __src);
    outlined destroy of AccessibilityAttachment(__dst);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(__src);
    if (v182 == 255)
    {
      outlined destroy of AccessibilityAttachment?(v181, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);

      v9 = MEMORY[0x1E697FFF0];
      goto LABEL_37;
    }

    outlined init with copy of AccessibilityScrollableContext(v181, __dst);
    if (BYTE6(__dst[8]))
    {
      outlined destroy of AccessibilityScrollableContext(__dst);
      outlined destroy of AccessibilityScrollableContext(v181);
      goto LABEL_36;
    }

    v42 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    outlined destroy of AccessibilityScrollableContext(v181);
    if ((v42 & 0xFF00000000) == 0x200000000)
    {
LABEL_36:

      v9 = MEMORY[0x1E697FFF0];
      goto LABEL_37;
    }

    v167 = v42;
    AccessibilityNode.attachment.getter(__dst);
    outlined init with copy of AccessibilityProperties(__dst, __src);
    outlined destroy of AccessibilityAttachment(__dst);
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(__src);
    if (v182 == 255)
    {
      outlined destroy of AccessibilityAttachment?(v181, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
      goto LABEL_36;
    }

    outlined init with copy of AccessibilityScrollableContext(v181, __dst);
    v9 = MEMORY[0x1E697FFF0];
    if (BYTE6(__dst[8]))
    {
      outlined destroy of AccessibilityScrollableContext(__dst);
      outlined destroy of AccessibilityScrollableContext(v181);

      goto LABEL_37;
    }

    v43 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    outlined destroy of AccessibilityScrollableContext(v181);

    v10 = v157;
    if ((v43 & 0xFF00000000) == 0x200000000 || v167 != v43)
    {
      goto LABEL_37;
    }

    if ((v167 & 0x100000000) == 0)
    {
      break;
    }

    if ((v43 & 0x100000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_48:
    if ((v167 & 0x10000000000) != 0)
    {
      if ((v43 & 0x10000000000) == 0)
      {
        goto LABEL_53;
      }
    }

    else if ((v43 & 0x10000000000) != 0)
    {
LABEL_50:
      if ((v162 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_38;
    }

LABEL_37:
    if ((v162 ^ (v171 < v169)))
    {
      v21 = v11;
LABEL_56:
      v11 = v21;
      if (v162)
      {
        goto LABEL_57;
      }

LABEL_64:
      v53 = a3[1];
      if (v11 >= v53)
      {
        goto LABEL_72;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_234;
      }

      if (v11 - v10 >= a4)
      {
LABEL_72:
        if (v11 < v10)
        {
          goto LABEL_233;
        }

        goto LABEL_73;
      }

      if (__OFADD__(v10, a4))
      {
        __break(1u);
LABEL_237:
        __break(1u);
        goto LABEL_238;
      }

      if (v10 + a4 < v53)
      {
        v53 = (v10 + a4);
      }

      if (v53 < v10)
      {
        goto LABEL_237;
      }

      if (v11 == v53)
      {
        goto LABEL_72;
      }

      v100 = v10;
      v147 = v53;
      v101 = *a3;
      v148 = *a3;
      do
      {
        v102 = (v101 + 16 * v11);
        v103 = *v102;
        v104 = v102[1];
        v105 = v11;
        v168 = v11;
        while (1)
        {
          v170 = v105;
          v161 = (v105 - 1);
          v106 = (v101 + 16 * (v105 - 1));
          v107 = v106[1];
          v163 = *v106;
          v165 = v103;
          v159 = v106;
          v11 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
          v108 = v104;
          swift_beginAccess();
          outlined init with copy of AccessibilityAttachment?(v11 + v108, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, v9, type metadata accessor for AnyAccessibilityValue?);
          v172 = v107;
          v174 = v108;
          if (__src[35])
          {
            memcpy(__dst, __src, 0x128uLL);
            v109 = v108;
            v110 = v107;
            goto LABEL_139;
          }

          v155 = v5;
          v111 = v108;
          v112 = v107;
          outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v9, type metadata accessor for AnyAccessibilityValue?);
          v113 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
          swift_beginAccess();
          v151 = v111;
          v114 = *&v111[v113];
          v115 = *(v114 + 16);
          if (v115)
          {
            v177 = MEMORY[0x1E69E7CC0];

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115, 0);
            v116 = v177;
            v117 = v114 + 32;
            do
            {
              outlined init with copy of AccessibilityAttachmentStorage(v117, __dst);
              outlined init with copy of AccessibilityAttachment(__dst, __src);
              outlined destroy of AccessibilityAttachmentStorage(__dst);
              v119 = *(v177 + 16);
              v118 = *(v177 + 24);
              if (v119 >= v118 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1);
              }

              *(v177 + 16) = v119 + 1;
              memcpy((v177 + 296 * v119 + 32), __src, 0x128uLL);
              v117 += 320;
              --v115;
            }

            while (v115);
          }

          else
          {
            v116 = MEMORY[0x1E69E7CC0];
          }

          v120 = *(v116 + 16);
          v5 = v155;
          if (v120 == 1)
          {
            outlined init with copy of AccessibilityAttachment(v116 + 32, __dst);
          }

          else
          {
            if (v120)
            {
              v126 = v116 + 296 * v120;
              outlined init with copy of AccessibilityAttachment(v126 - 264, __src);

              v127 = v120 - 2;
              v128 = v126 - 560;
              do
              {
                if (v127 >= v120 - 1)
                {
                  goto LABEL_215;
                }

                outlined init with copy of AccessibilityAttachment(v128, __dst);
                AccessibilityProperties.merge(with:)(__dst);
                v129 = AccessibilityAttachment.platformElement.getter();
                if (v129)
                {
                }

                else if (AccessibilityAttachment.platformElement.getter())
                {
                  AccessibilityAttachment.platformElement.setter();
                }

                outlined destroy of AccessibilityAttachment(__dst);
                --v127;
                v128 -= 296;
              }

              while (v127 != -1);

              memcpy(__dst, __src, 0x128uLL);

              goto LABEL_138;
            }

            AccessibilityAttachment.init()();
          }

LABEL_138:
          outlined init with copy of AccessibilityAttachment(__dst, __src);
          swift_beginAccess();
          outlined assign with copy of AccessibilityAttachment?(__src, v11 + v174);
          swift_endAccess();
          v9 = MEMORY[0x1E697FFF0];
          outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], type metadata accessor for AnyAccessibilityValue?);
          v151[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
          v100 = v157;
          v101 = v148;
LABEL_139:
          outlined init with copy of AccessibilityProperties(__dst, __src);
          outlined destroy of AccessibilityAttachment(__dst);
          lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
          AccessibilityProperties.subscript.getter();
          outlined destroy of AccessibilityProperties(__src);
          v121 = v168;
          if (v182 == 255)
          {
            goto LABEL_140;
          }

          outlined init with copy of AccessibilityScrollableContext(v181, __dst);
          if (BYTE6(__dst[8]))
          {
            outlined destroy of AccessibilityScrollableContext(__dst);
            outlined destroy of AccessibilityScrollableContext(v181);
LABEL_144:

LABEL_145:
            v123 = v170;
            v124 = v165;
LABEL_146:
            if (v124 >= v163)
            {
              goto LABEL_200;
            }

LABEL_147:
            if (!v101)
            {
              goto LABEL_242;
            }

            goto LABEL_148;
          }

          v122 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
          __swift_destroy_boxed_opaque_existential_1(__dst);
          outlined destroy of AccessibilityScrollableContext(v181);
          if ((v122 & 0xFF00000000) == 0x200000000)
          {
            goto LABEL_144;
          }

          v152 = v122;
          v130 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
          swift_beginAccess();
          outlined init with copy of AccessibilityAttachment?(&v172[v130], __src, &lazy cache variable for type metadata for AccessibilityAttachment?, v9, type metadata accessor for AnyAccessibilityValue?);
          if (__src[35])
          {
            memcpy(__dst, __src, 0x128uLL);
            goto LABEL_173;
          }

          v156 = v5;
          outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v9, type metadata accessor for AnyAccessibilityValue?);
          v131 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
          swift_beginAccess();
          v132 = *&v172[v131];
          v133 = *(v132 + 16);
          if (v133)
          {
            v178 = MEMORY[0x1E69E7CC0];

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133, 0);
            v134 = v178;
            v135 = v132 + 32;
            do
            {
              outlined init with copy of AccessibilityAttachmentStorage(v135, __dst);
              outlined init with copy of AccessibilityAttachment(__dst, __src);
              outlined destroy of AccessibilityAttachmentStorage(__dst);
              v137 = *(v178 + 16);
              v136 = *(v178 + 24);
              if (v137 >= v136 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1);
              }

              *(v178 + 16) = v137 + 1;
              memcpy((v178 + 296 * v137 + 32), __src, 0x128uLL);
              v135 += 320;
              --v133;
            }

            while (v133);
          }

          else
          {
            v134 = MEMORY[0x1E69E7CC0];
          }

          v138 = *(v134 + 16);
          v11 = (v138 - 1);
          v5 = v156;
          if (v138 == 1)
          {
            outlined init with copy of AccessibilityAttachment(v134 + 32, __dst);
          }

          else
          {
            if (v138)
            {
              v140 = v134 + 296 * v138;
              outlined init with copy of AccessibilityAttachment(v140 - 264, __src);

              v5 = v138 - 2;
              v141 = v140 - 560;
              do
              {
                if (v5 >= v11)
                {
                  goto LABEL_216;
                }

                outlined init with copy of AccessibilityAttachment(v141, __dst);
                AccessibilityProperties.merge(with:)(__dst);
                v142 = AccessibilityAttachment.platformElement.getter();
                if (v142)
                {
                }

                else if (AccessibilityAttachment.platformElement.getter())
                {
                  AccessibilityAttachment.platformElement.setter();
                }

                outlined destroy of AccessibilityAttachment(__dst);
                --v5;
                v141 -= 296;
              }

              while (v5 != -1);

              memcpy(__dst, __src, 0x128uLL);

              v5 = v156;
              goto LABEL_172;
            }

            AccessibilityAttachment.init()();
          }

LABEL_172:
          outlined init with copy of AccessibilityAttachment(__dst, __src);
          swift_beginAccess();
          outlined assign with copy of AccessibilityAttachment?(__src, &v172[v130]);
          swift_endAccess();
          v9 = MEMORY[0x1E697FFF0];
          outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], type metadata accessor for AnyAccessibilityValue?);
          v172[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
          v121 = v168;
LABEL_173:
          v100 = v157;
          outlined init with copy of AccessibilityProperties(__dst, __src);
          outlined destroy of AccessibilityAttachment(__dst);
          AccessibilityProperties.subscript.getter();
          outlined destroy of AccessibilityProperties(__src);
          v101 = v148;
          if (v182 == 255)
          {
LABEL_140:
            outlined destroy of AccessibilityAttachment?(v181, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
            goto LABEL_144;
          }

          outlined init with copy of AccessibilityScrollableContext(v181, __dst);
          if (BYTE6(__dst[8]))
          {
            outlined destroy of AccessibilityScrollableContext(__dst);
            outlined destroy of AccessibilityScrollableContext(v181);

            goto LABEL_145;
          }

          v139 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
          __swift_destroy_boxed_opaque_existential_1(__dst);
          outlined destroy of AccessibilityScrollableContext(v181);

          if ((v139 & 0xFF00000000) == 0x200000000)
          {
            v101 = v148;
            goto LABEL_145;
          }

          v123 = v170;
          v124 = v165;
          if (v152 != v139)
          {
            v101 = v148;
            goto LABEL_146;
          }

          if ((v152 & 0x100000000) != 0)
          {
            if ((v139 & 0x100000000) == 0)
            {
              goto LABEL_194;
            }
          }

          else if ((v139 & 0x100000000) != 0)
          {
            goto LABEL_199;
          }

          if ((v152 & 0x10000000000) != 0)
          {
            break;
          }

          if ((v139 & 0x10000000000) == 0)
          {
            goto LABEL_197;
          }

LABEL_194:
          v101 = v148;
          if (!v148)
          {
            goto LABEL_242;
          }

LABEL_148:
          v125 = (v101 + 16 * v123);
          v103 = *v125;
          v104 = v125[1];
          *v125 = *v159;
          *v159 = v103;
          v159[1] = v104;
          v105 = v161;
          if (v161 == v100)
          {
            goto LABEL_200;
          }
        }

        if ((v139 & 0x10000000000) != 0)
        {
LABEL_197:
          v101 = v148;
          if (v165 >= v163)
          {
            goto LABEL_200;
          }

          goto LABEL_147;
        }

LABEL_199:
        v101 = v148;
LABEL_200:
        v11 = (v121 + 1);
      }

      while (v11 != v147);
      v11 = v147;
      v10 = v100;
      if (v147 < v100)
      {
        goto LABEL_233;
      }

LABEL_73:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v55 = *(v7 + 2);
      v54 = *(v7 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v7);
      }

      *(v7 + 2) = v56;
      v57 = &v7[16 * v55];
      *(v57 + 4) = v10;
      *(v57 + 5) = v11;
      v8 = v11;
      v11 = *a1;
      if (!*a1)
      {
        goto LABEL_243;
      }

      if (v55)
      {
        while (2)
        {
          v58 = v56 - 1;
          if (v56 >= 4)
          {
            v63 = &v7[16 * v56 + 32];
            v64 = *(v63 - 64);
            v65 = *(v63 - 56);
            v69 = __OFSUB__(v65, v64);
            v66 = v65 - v64;
            if (v69)
            {
              goto LABEL_220;
            }

            v68 = *(v63 - 48);
            v67 = *(v63 - 40);
            v69 = __OFSUB__(v67, v68);
            v61 = v67 - v68;
            v62 = v69;
            if (v69)
            {
              goto LABEL_221;
            }

            v70 = &v7[16 * v56];
            v72 = *v70;
            v71 = *(v70 + 1);
            v69 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v69)
            {
              goto LABEL_223;
            }

            v69 = __OFADD__(v61, v73);
            v74 = v61 + v73;
            if (v69)
            {
              goto LABEL_226;
            }

            if (v74 >= v66)
            {
              v92 = &v7[16 * v58 + 32];
              v94 = *v92;
              v93 = *(v92 + 1);
              v69 = __OFSUB__(v93, v94);
              v95 = v93 - v94;
              if (v69)
              {
                goto LABEL_232;
              }

              if (v61 < v95)
              {
                v58 = v56 - 2;
              }
            }

            else
            {
LABEL_92:
              if (v62)
              {
                goto LABEL_222;
              }

              v75 = &v7[16 * v56];
              v77 = *v75;
              v76 = *(v75 + 1);
              v78 = __OFSUB__(v76, v77);
              v79 = v76 - v77;
              v80 = v78;
              if (v78)
              {
                goto LABEL_225;
              }

              v81 = &v7[16 * v58 + 32];
              v83 = *v81;
              v82 = *(v81 + 1);
              v69 = __OFSUB__(v82, v83);
              v84 = v82 - v83;
              if (v69)
              {
                goto LABEL_228;
              }

              if (__OFADD__(v79, v84))
              {
                goto LABEL_229;
              }

              if (v79 + v84 < v61)
              {
                goto LABEL_106;
              }

              if (v61 < v84)
              {
                v58 = v56 - 2;
              }
            }
          }

          else
          {
            if (v56 == 3)
            {
              v59 = *(v7 + 4);
              v60 = *(v7 + 5);
              v69 = __OFSUB__(v60, v59);
              v61 = v60 - v59;
              v62 = v69;
              goto LABEL_92;
            }

            v85 = &v7[16 * v56];
            v87 = *v85;
            v86 = *(v85 + 1);
            v69 = __OFSUB__(v86, v87);
            v79 = v86 - v87;
            v80 = v69;
LABEL_106:
            if (v80)
            {
              goto LABEL_224;
            }

            v88 = &v7[16 * v58];
            v90 = *(v88 + 4);
            v89 = *(v88 + 5);
            v69 = __OFSUB__(v89, v90);
            v91 = v89 - v90;
            if (v69)
            {
              goto LABEL_227;
            }

            if (v91 < v79)
            {
              break;
            }
          }

          v96 = v58 - 1;
          if (v58 - 1 >= v56)
          {
            goto LABEL_217;
          }

          if (!*a3)
          {
            goto LABEL_239;
          }

          v97 = *&v7[16 * v96 + 32];
          v98 = *&v7[16 * v58 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v97), (*a3 + 16 * *&v7[16 * v58 + 32]), (*a3 + 16 * v98), v11);
          if (v5)
          {
            goto LABEL_213;
          }

          if (v98 < v97)
          {
            goto LABEL_218;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          }

          if (v96 >= *(v7 + 2))
          {
            goto LABEL_219;
          }

          v99 = &v7[16 * v96];
          *(v99 + 4) = v97;
          *(v99 + 5) = v98;
          v183 = v7;
          specialized Array.remove(at:)(v58);
          v7 = v183;
          v56 = *(v183 + 2);
          if (v56 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      v9 = MEMORY[0x1E697FFF0];
      if (v8 >= v6)
      {
        goto LABEL_203;
      }

      goto LABEL_4;
    }

LABEL_38:
    v21 = (v11 + 1);
    if ((v11 + 1) == v164)
    {
      v21 = v164;
      goto LABEL_56;
    }
  }

  if ((v43 & 0x100000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  if ((v162 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_57:
  if (v11 >= v10)
  {
    if (v10 < v11)
    {
      v44 = 0;
      v45 = 16 * v11;
      v46 = 16 * v10;
      v47 = v10;
      while (1)
      {
        if (v47 != (v11 + v44 - 1))
        {
          v48 = *a3;
          if (!*a3)
          {
            goto LABEL_241;
          }

          v49 = (v48 + v46);
          v50 = v48 + v45;
          v51 = *v49;
          v52 = v49[1];
          *v49 = *(v50 - 16);
          *(v50 - 16) = v51;
          *(v50 - 8) = v52;
        }

        v47 = (v47 + 1);
        --v44;
        v45 -= 16;
        v46 += 16;
        if (v47 >= (v11 + v44))
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[2 * v9] <= a4)
    {
      memmove(a4, __dst, 16 * v9);
    }

    v33 = &v13[2 * v9];
    if (v7 < 16)
    {
LABEL_10:
      v5 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v16 = *v5;
      v18 = *v13;
      v17 = v13[1];
      v19 = v5[1];
      v20 = v17;
      LOBYTE(v16) = specialized static AccessibilityCore.sortedSupplementaryItems(lhs:rhs:)(v16, v19, v18);

      if (v16)
      {
        break;
      }

      v14 = v13;
      v15 = v6 == v13;
      v13 += 2;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 2;
      if (v13 >= v33)
      {
        goto LABEL_10;
      }
    }

    v14 = v5;
    v15 = v6 == v5;
    v5 += 2;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v14;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v12] <= a4)
  {
    v21 = a4;
    memmove(a4, __src, 16 * v12);
    a4 = v21;
  }

  v32 = a4;
  v33 = &a4[2 * v12];
  if (v10 < 16)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4;
    if (v5 > v6)
    {
LABEL_24:
      v31 = v5 - 2;
      v4 -= 2;
      v22 = v33;
      do
      {
        v23 = v4 + 2;
        v25 = *(v22 - 2);
        v24 = *(v22 - 1);
        v22 -= 2;
        v26 = *(v5 - 2);
        v27 = *(v5 - 1);
        v28 = v24;
        v29 = v27;
        LOBYTE(v25) = specialized static AccessibilityCore.sortedSupplementaryItems(lhs:rhs:)(v25, v28, v26);

        if (v25)
        {
          if (v23 != v5)
          {
            *v4 = *v31;
          }

          v13 = v32;
          if (v33 <= v32 || (v5 -= 2, v31 <= v6))
          {
            v5 = v31;
            goto LABEL_36;
          }

          goto LABEL_24;
        }

        if (v23 != v33)
        {
          *v4 = *v22;
        }

        v4 -= 2;
        v33 = v22;
        v13 = v32;
      }

      while (v22 > v32);
      v33 = v22;
    }
  }

LABEL_36:
  if (v5 != v13 || v5 >= (v13 + ((v33 - v13 + (v33 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v13, 16 * ((v33 - v13) / 16));
  }

  return 1;
}

BOOL specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4, char *a5, uint64_t *a6)
{
  v94 = *a5;
  v95 = *a3;
  v10 = *a6;
  v11 = *(*a6 + 16);
  if (v11 && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v13 & 1) != 0))
  {
    v14 = *(v10 + 56) + 96 * v12;
    v15 = *v14;
    v106 = *(v14 + 9);
    v119 = *(v14 + 10);
    v120 = *(v14 + 14);
    v107 = *(v14 + 16);
    v108 = *(v14 + 24);
    v109 = *(v14 + 32);
    v110 = *(v14 + 40);
    v16 = *(v14 + 48);
    *&v118[3] = *(v14 + 52);
    *v118 = *(v14 + 49);
    v17 = *(v14 + 8);
    v18 = *(v14 + 64);
    v99 = *(v14 + 56);
    v20 = *(v14 + 72);
    v19 = *(v14 + 80);
    v21 = *(v14 + 88);
    v121 = v17;
    v97 = v21;
    v98 = v16;
  }

  else
  {
    v17 = 1;
    LOBYTE(v152) = 1;
    LOBYTE(v140) = 1;
    LOBYTE(v138[0]) = 1;
    v15 = 0.0;
    v109 = 0.0;
    v110 = 0.0;
    v121 = 1;
    v106 = 2;
    v16 = 1;
    v107 = 0.0;
    v108 = 0.0;
    v97 = 1;
    v98 = 1;
    v19 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    v99 = 0.0;
    v21 = 1;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v23)
  {
    v100 = v18;
    v101 = v20;
    v102 = v19;
    v24 = *(v10 + 56) + 96 * v22;
    v25 = *v24;
    v103 = *(v24 + 9);
    v115 = *(v24 + 10);
    v116 = *(v24 + 14);
    v104 = *(v24 + 16);
    v105 = *(v24 + 24);
    v27 = *(v24 + 32);
    v26 = *(v24 + 40);
    v111 = *(v24 + 48);
    *&v114[3] = *(v24 + 52);
    *v114 = *(v24 + 49);
    v28 = *(v24 + 8);
    v30 = *(v24 + 56);
    v29 = *(v24 + 64);
    v32 = *(v24 + 72);
    v31 = *(v24 + 80);
    v33 = *(v24 + 88);
    v117 = v28;
    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_8:
  v100 = v18;
  v101 = v20;
  v102 = v19;
  v28 = 1;
  LOBYTE(v152) = 1;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  LOBYTE(v140) = 1;
  LOBYTE(v138[0]) = 1;
  v117 = 1;
  v103 = 2;
  v111 = 1;
  v104 = 0.0;
  v105 = 0.0;
  v33 = 1;
  v31 = 0.0;
  v32 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v34 = COERCE_DOUBLE(AccessibilityNode.sortPriority.getter());
  if (v35)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v34;
  }

  v121 = 0;
LABEL_13:
  if (v28)
  {
    v36 = COERCE_DOUBLE(AccessibilityNode.sortPriority.getter());
    if (v37)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v36;
    }

    v117 = 0;
  }

  v38 = v33;
  if (v15 != v25)
  {
    *&v152 = v15;
    v41 = v25 < v15;
    BYTE8(v152) = v121;
    BYTE9(v152) = v106;
    *(&v152 + 10) = v119;
    HIWORD(v152) = v120;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v156 = v110;
    v157 = v98;
    *v158 = *v118;
    *&v158[3] = *&v118[3];
    v159 = v99;
    v160 = v100;
    v161 = v101;
    v162 = v102;
    v163 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, isUniquelyReferenced_nonNull_native);
    *a6 = v140;
    *&v140 = v25;
    BYTE8(v140) = v117;
    BYTE9(v140) = v103;
    *(&v140 + 10) = v115;
    HIWORD(v140) = v116;
    v141 = v104;
    v142 = v105;
    v143 = v27;
    v144 = v26;
    v145 = v111;
    *v146 = *v114;
    *&v146[3] = *&v114[3];
    v147 = v30;
    v148 = v29;
    v149 = v32;
    v150 = v31;
LABEL_56:
    v151 = v33;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v138[0] = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v140, a2, v78);
    goto LABEL_57;
  }

  if (a4)
  {
LABEL_20:
    *&v152 = v15;
    BYTE8(v152) = v121;
    BYTE9(v152) = v106;
    *(&v152 + 10) = v119;
    HIWORD(v152) = v120;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v156 = v110;
    v157 = v98;
    *v158 = *v118;
    *&v158[3] = *&v118[3];
    v159 = v99;
    v160 = v100;
    v161 = v101;
    v162 = v102;
    v163 = v21;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, v39);
    *a6 = v140;
    *&v140 = v25;
    BYTE8(v140) = v117;
    BYTE9(v140) = v103;
    *(&v140 + 10) = v115;
    HIWORD(v140) = v116;
    v141 = v104;
    v142 = v105;
    v143 = v27;
    v144 = v26;
    v145 = v111;
    *v146 = *v114;
    *&v146[3] = *&v114[3];
    v147 = v30;
    v148 = v29;
    v149 = v32;
    v150 = v31;
    v151 = v33;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v138[0] = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v140, a2, v40);
    v41 = 0;
LABEL_57:
    v79 = v138[0];
LABEL_58:
    *a6 = v79;
    return v41;
  }

  if (v16)
  {
    AccessibilityNode.globalFrame.getter(v122);
    v107 = *v122;
    v108 = *&v122[1];
    v109 = *&v122[2];
    v110 = *&v122[3];
    v43 = v123;
    v98 = v123;
    if ((v111 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v43 = 0;
    if ((v111 & 1) == 0)
    {
LABEL_24:
      v44 = 0;
      if ((v43 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  AccessibilityNode.globalFrame.getter(v124);
  v104 = *v124;
  v105 = *&v124[1];
  v27 = *&v124[2];
  v26 = *&v124[3];
  v44 = v125;
  v111 = v125;
  if ((v43 & 1) == 0)
  {
LABEL_25:
    v92 = v27;
    v93 = v26;
    v45 = v44 ^ 1;
    v46 = v107;
    v47 = v108;
    v49 = v109;
    v48 = v110;
    if (v44)
    {
      goto LABEL_26;
    }

LABEL_36:
    v87 = v30;
    v88 = v31;
    v89 = v29;
    v90 = v32;
    v51 = v104;
    v52 = v105;
    v32 = v92;
    v31 = v93;
    goto LABEL_38;
  }

LABEL_31:
  if (v97)
  {
    LOBYTE(v152) = v94;
    AccessibilityNode.contentFrame(with:)(&v152, &v126);
    v21 = v130;
    v101 = v128;
    v102 = v129;
    v99 = v126;
    v100 = v127;
    if (v130)
    {
      goto LABEL_20;
    }

    v92 = v27;
    v93 = v26;
    v45 = 0;
    v46 = v126;
    v47 = v127;
    v49 = v128;
    v48 = v129;
    v97 = v130;
    if (!v44)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v92 = v27;
    v93 = v26;
    v45 = 0;
    v97 = 0;
    v46 = v99;
    v47 = v100;
    v49 = v101;
    v48 = v102;
    if (!v44)
    {
      goto LABEL_36;
    }
  }

LABEL_26:
  if ((v33 & 1) == 0)
  {
    v38 = 0;
    v87 = v30;
    v88 = v31;
    v51 = v30;
    v89 = v29;
    v90 = v32;
    v52 = v29;
LABEL_38:
    v50 = v95;
    if (v95 != 2)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  v84 = v48;
  v85 = v46;
  LOBYTE(v152) = v94;
  AccessibilityNode.contentFrame(with:)(&v152, &v131);
  v30 = v131;
  v29 = v132;
  v32 = v133;
  v31 = v134;
  v33 = v135;
  v50 = v95;
  if (v135)
  {
    v27 = v92;
    v26 = v93;
    goto LABEL_20;
  }

  v87 = v131;
  v88 = v134;
  v51 = v131;
  v89 = v132;
  v90 = v133;
  v52 = v132;
  v38 = v135;
  v48 = v84;
  v46 = v85;
  if (v95 == 2)
  {
LABEL_39:
    v96 = v51;
    v86 = v15;
    if (v106 == 2)
    {
      v152 = *(a1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
      v53 = v25;
      v54 = v49;
      v55 = v47;
      v56 = v46;
      v57 = v48;
      EnvironmentValues.layoutDirection.getter();
      v51 = v96;
      v48 = v57;
      v46 = v56;
      v47 = v55;
      v49 = v54;
      v25 = v53;
      v15 = v86;
      LOBYTE(v106) = v140;
    }

    v58 = v103;
    if (v103 == 2)
    {
      v152 = *(a2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
      v59 = v25;
      v60 = v49;
      v61 = v47;
      v62 = v46;
      v63 = v48;
      EnvironmentValues.layoutDirection.getter();
      v51 = v96;
      v48 = v63;
      v46 = v62;
      v47 = v61;
      v49 = v60;
      v25 = v59;
      v15 = v86;
      v58 = v140;
    }

    LOBYTE(v103) = v58;
    if ((v58 ^ v106))
    {
      v50 = 2;
    }

    else
    {
      v50 = v106;
    }
  }

LABEL_46:
  v64 = v50;
  LOBYTE(v152) = v50;
  v65 = CGRect.compare(to:layoutDirection:)(&v152, v51, v52, v32, v31, v46, v47, v49, v48);
  if (v65 != 2)
  {
    v41 = v65;
    *&v152 = v15;
    BYTE8(v152) = v121;
    BYTE9(v152) = v106;
    *(&v152 + 10) = v119;
    HIWORD(v152) = v120;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v156 = v110;
    v157 = v98;
    *v158 = *v118;
    *&v158[3] = *&v118[3];
    v159 = v99;
    v160 = v100;
    v161 = v101;
    v162 = v102;
    v163 = v21;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, v77);
    *a6 = v140;
    *&v140 = v25;
    BYTE8(v140) = v117;
    BYTE9(v140) = v103;
    *(&v140 + 10) = v115;
    HIWORD(v140) = v116;
    v141 = v104;
    v142 = v105;
    v143 = v92;
    v144 = v93;
    v145 = v111;
    *v146 = *v114;
    *&v146[3] = *&v114[3];
    v147 = v87;
    v148 = v89;
    v149 = v90;
    v150 = v88;
    goto LABEL_56;
  }

  v66 = v87;
  v67 = v88;
  v68 = v90;
  v70 = v100;
  v69 = v101;
  v71 = v99;
  if (!v45)
  {
    goto LABEL_52;
  }

  if (v97)
  {
    LOBYTE(v152) = v94;
    v72 = v90;
    v73 = v87;
    AccessibilityNode.contentFrame(with:)(&v152, v136);
    v68 = v90;
    v71 = *v136;
    v70 = *&v136[1];
    v69 = *&v136[2];
    v102 = *&v136[3];
    v66 = v87;
    v21 = v137;
    if (v137)
    {
      goto LABEL_53;
    }
  }

  if (v38)
  {
    LOBYTE(v152) = v94;
    AccessibilityNode.contentFrame(with:)(&v152, v138);
    v66 = *v138;
    v89 = *&v138[1];
    v68 = *&v138[2];
    v67 = *&v138[3];
    v33 = v139;
    if (v139)
    {
LABEL_52:
      v73 = v66;
      v72 = v68;
LABEL_53:
      v74 = v103;
      goto LABEL_54;
    }
  }

  LOBYTE(v152) = v64;
  v73 = v66;
  v91 = v68;
  v81 = CGRect.compare(to:layoutDirection:)(&v152, v66, v89, v68, v67, v71, v70, v69, v102);
  if (v81 != 2)
  {
    v41 = v81;
    *&v152 = v15;
    BYTE8(v152) = v121;
    BYTE9(v152) = v106;
    *(&v152 + 10) = v119;
    HIWORD(v152) = v120;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v156 = v110;
    v157 = v98;
    *v158 = *v118;
    *&v158[3] = *&v118[3];
    v159 = v71;
    v160 = v70;
    v161 = v69;
    v162 = v102;
    v163 = v21;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, v82);
    *a6 = v140;
    *&v140 = v25;
    BYTE8(v140) = v117;
    BYTE9(v140) = v103;
    *(&v140 + 10) = v115;
    HIWORD(v140) = v116;
    v141 = v104;
    v142 = v105;
    v143 = v92;
    v144 = v93;
    v145 = v111;
    *v146 = *v114;
    *&v146[3] = *&v114[3];
    v147 = v73;
    v148 = v89;
    v149 = v91;
    v150 = v67;
    v151 = v33;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v140, a2, v83);
    v79 = v113;
    goto LABEL_58;
  }

  v72 = v91;
  v74 = v103;
LABEL_54:
  *&v152 = v15;
  BYTE8(v152) = v121;
  BYTE9(v152) = v106;
  *(&v152 + 10) = v119;
  HIWORD(v152) = v120;
  v153 = v107;
  v154 = v108;
  v155 = v109;
  v156 = v110;
  v157 = v98;
  *v158 = *v118;
  *&v158[3] = *&v118[3];
  v159 = v71;
  v160 = v70;
  v161 = v69;
  v162 = v102;
  v163 = v21;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *&v140 = *a6;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, v75);
  *a6 = v140;
  *&v140 = v25;
  BYTE8(v140) = v117;
  BYTE9(v140) = v74;
  *(&v140 + 10) = v115;
  HIWORD(v140) = v116;
  v141 = v104;
  v142 = v105;
  v143 = v92;
  v144 = v93;
  v145 = v111;
  *v146 = *v114;
  *&v146[3] = *&v114[3];
  v147 = v73;
  v148 = v89;
  v149 = v72;
  v150 = v67;
  v151 = v33;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *a6;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v140, a2, v76);
  *a6 = v112;
  return 1;
}

void type metadata accessor for (offset: Int, element: AccessibilityNode)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: AccessibilityNode))
  {
    type metadata accessor for AccessibilityNode();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: AccessibilityNode));
    }
  }
}

uint64_t specialized static AccessibilityCore.sortedSupplementaryItems(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AccessibilityNode.attachment.getter(v8);
  outlined init with copy of AccessibilityProperties(v8, v12);
  outlined destroy of AccessibilityAttachment(v8);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v12);
  if (v14 == 255)
  {
LABEL_2:
    outlined destroy of AccessibilityAttachment?(v13, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
    return a1 < a3;
  }

  outlined init with copy of AccessibilityScrollableContext(v13, v8);
  if (v11)
  {
    goto LABEL_4;
  }

  v5 = v9 | (v10 << 32);
  __swift_destroy_boxed_opaque_existential_1(v8);
  outlined destroy of AccessibilityScrollableContext(v13);
  if ((v5 & 0xFF00000000) == 0x200000000)
  {
    return a1 < a3;
  }

  AccessibilityNode.attachment.getter(v8);
  outlined init with copy of AccessibilityProperties(v8, v12);
  outlined destroy of AccessibilityAttachment(v8);
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v12);
  if (v14 == 255)
  {
    goto LABEL_2;
  }

  outlined init with copy of AccessibilityScrollableContext(v13, v8);
  if (v11)
  {
LABEL_4:
    outlined destroy of AccessibilityScrollableContext(v8);
    outlined destroy of AccessibilityScrollableContext(v13);
    return a1 < a3;
  }

  v7 = v9 | (v10 << 32);
  __swift_destroy_boxed_opaque_existential_1(v8);
  outlined destroy of AccessibilityScrollableContext(v13);
  if ((v7 & 0xFF00000000) == 0x200000000 || v5 != v7)
  {
    return a1 < a3;
  }

  if ((v5 & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      return 1;
    }

    goto LABEL_15;
  }

  if ((v7 & 0x100000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000000000) != 0)
    {
      if ((v7 & 0x10000000000) != 0)
      {
        return a1 < a3;
      }

      return 0;
    }

    if ((v7 & 0x10000000000) == 0)
    {
      return a1 < a3;
    }

    return 1;
  }

  return 0;
}

uint64_t outlined init with copy of AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimationTimelineSchedule.Entries();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnimationTimelineSchedule.Entries(uint64_t a1)
{
  v2 = type metadata accessor for AnimationTimelineSchedule.Entries();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilitySortCache(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilitySortCache(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t outlined init with copy of AccessibilityAttachment?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (offset: Int, element: Subview)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: Subview))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: Subview));
    }
  }
}

void type metadata accessor for EnumeratedSequence<SubviewsCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
    v7 = a3(a1, MEMORY[0x1E697F4E8], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 120 * a1;
    v9 = *(v8 + 112);
    v10 = v7 - 1;
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v9;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = *(v8 + 144);
    v11 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v11;
    v12 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v12;
    result = memmove((v8 + 32), (v8 + 152), 120 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

unint64_t specialized RangeReplaceableCollection<>.popLast()()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = specialized Array._customRemoveLast()();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = __CocoaSet.count.getter();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return specialized Array.remove(at:)(result, specialized _ArrayBuffer._consumeAndCreateNew());
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return specialized Array.remove(at:)(result, specialized _ArrayBuffer._consumeAndCreateNew());
      }
    }

    __break(1u);
    return result;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t DictionaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = *(v3 + 32);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v52 = *(v3 + 64);
  v7 = *(v3 + 80);
  v6 = *(v3 + 88);
  v48 = *(v3 + 24);
  v8 = *(v3 + 104);
  v44 = *(v3 + 96);
  v45 = *(v3 + 72);
  v10 = *(v3 + 112);
  v9 = *(v3 + 120);
  v58 = *(v3 + 128);
  v11 = *(v3 + 40);
  v46 = v11;
  type metadata accessor for __DictionaryEncoder();
  v12 = swift_allocObject();
  *(v12 + 32) = v53;
  *(v12 + 40) = v11;
  *(v12 + 48) = v4;
  *(v12 + 56) = v5;
  v13 = v45;
  *(v12 + 64) = v52;
  *(v12 + 72) = v45;
  *(v12 + 80) = v7;
  *(v12 + 88) = v6;
  *(v12 + 96) = v44;
  *(v12 + 104) = v8;
  *(v12 + 112) = v10;
  *(v12 + 120) = v9;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = v48;
  *(v12 + 128) = v58;
  *(v12 + 136) = v14;
  v56 = a2;
  v57 = a3;
  v15 = __swift_allocate_boxed_opaque_existential_1(&v54);
  v16 = *(*(a2 - 8) + 16);
  v16(v15, a1, a2);
  _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOy_0(v48, v53, v46);
  sub_18C0C046C(v4);
  outlined copy of DictionaryEncoder.NonConformingFloatEncodingStrategy(v52, v45);
  sub_18C0C046C(v10);

  __DictionaryEncoder.box_(_:)(&v54);
  if (!v50)
  {
    v18 = v17;
    v58 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v54);
    if (!v18)
    {
      v22 = type metadata accessor for EncodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (Any, EncodingError.Context)();
      v24[3] = a2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
      v58(boxed_opaque_existential_1, a1, a2);
      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v54 = 0x6576656C2D706F54;
      v55 = 0xEA0000000000206CLL;
      v26 = _typeName(_:qualified:)();
      v13 = v27;
      MEMORY[0x18D00C9B0](v26);

      MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD46CC0);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B30], v22);
      swift_willThrow();

      return v13;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_18CD63400;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v20 = 0x4C4C554E5F5FLL;
LABEL_6:
      *(v19 + 32) = v20 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000;
      v21 = 0xE800000000000000;
LABEL_13:
      *(v19 + 40) = v21;
      v29 = v19;
      *(v19 + 88) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      *(v29 + 64) = v18;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary);
      v13 = NSDictionary.init(dictionaryLiteral:)();

      return v13;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_18CD63400;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v28 = 0x5245424D554E5F5FLL;
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          *(v19 + 32) = 0x5F5F5445535F5FLL;
          v21 = 0xE700000000000000;
          goto LABEL_13;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          *(v19 + 32) = 0x5F59415252415F5FLL;
          v21 = 0xE90000000000005FLL;
          goto LABEL_13;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          *(v19 + 32) = 0x4F49544349445F5FLL;
          v21 = 0xEE005F5F5952414ELL;
          goto LABEL_13;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          v20 = 0x455441445F5FLL;
        }

        else
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              _sypSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_18CD63400;
              v54 = 0;
              v55 = 0xE000000000000000;
              _StringGuts.grow(_:)(71);
              MEMORY[0x18D00C9B0](0xD00000000000002FLL, 0x800000018CD46CE0);
              DefaultStringInterpolation.appendInterpolation<A>(_:)();
              MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD46D10);
              v32 = [v18 description];
              v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v35 = v34;

              MEMORY[0x18D00C9B0](v33, v35);

              v36 = v54;
              v37 = v55;
              *(v31 + 56) = MEMORY[0x1E69E6158];
              *(v31 + 32) = v36;
              *(v31 + 40) = v37;
              print(_:separator:terminator:)();

              v38 = type metadata accessor for EncodingError();
              swift_allocError();
              v40 = v39;
              type metadata accessor for (Any, EncodingError.Context)();
              v40[3] = a2;
              v41 = __swift_allocate_boxed_opaque_existential_1(v40);
              v58(v41, a1, a2);
              v54 = 0;
              v55 = 0xE000000000000000;
              _StringGuts.grow(_:)(38);

              v54 = 0x6576656C2D706F54;
              v55 = 0xEA0000000000206CLL;
              v42 = _typeName(_:qualified:)();
              v13 = v43;
              MEMORY[0x18D00C9B0](v42);

              MEMORY[0x18D00C9B0](0xD00000000000001ALL, 0x800000018CD46D30);
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6B30], v38);
              swift_willThrow();

              return v13;
            }

            type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_18CD63400;
            v21 = 0x800000018CD46D50;
            *(v19 + 56) = MEMORY[0x1E69E6158];
            *(v19 + 32) = 0xD000000000000011;
            goto LABEL_13;
          }

          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          v20 = 0x415441445F5FLL;
        }

        goto LABEL_6;
      }

      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_18CD63400;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v28 = 0x474E495254535F5FLL;
    }

    *(v19 + 32) = v28;
    v21 = 0xEA00000000005F5FLL;
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1(&v54);
  return v13;
}

void __DictionaryEncoder.box_(_:)(void *a1)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == type metadata accessor for Date() || DynamicType == type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDate))
  {
    outlined init with copy of _Benchmark(a1, v29);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable);
    v13 = &lazy cache variable for type metadata for NSDate;
LABEL_13:
    type metadata accessor for NSObject(0, v13);
LABEL_14:
    swift_dynamicCast();
    return;
  }

  if (DynamicType == MEMORY[0x1E6969080] || DynamicType == type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSData))
  {
    outlined init with copy of _Benchmark(a1, v29);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable);
    v13 = &lazy cache variable for type metadata for NSData;
    goto LABEL_13;
  }

  if (DynamicType == v4)
  {
    outlined init with copy of _Benchmark(a1, v29);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable);
    swift_dynamicCast();
    v14 = URL.absoluteString.getter();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v18 = MEMORY[0x18D00C850](v14, v16);

    v19 = [v17 initWithString_];

    if (v19)
    {
      (*(v5 + 8))(v7, v4);
      return;
    }

    goto LABEL_44;
  }

  if (DynamicType == type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSURL))
  {
    outlined init with copy of _Benchmark(a1, v29);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable);
    goto LABEL_14;
  }

  type metadata accessor for NSDecimal(0);
  if (DynamicType == v9 || DynamicType == type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDecimalNumber))
  {
    outlined init with copy of _Benchmark(a1, v29);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable);
    v13 = &lazy cache variable for type metadata for NSDecimalNumber;
    goto LABEL_13;
  }

  outlined init with copy of _Benchmark(a1, v29);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for _DictionaryStringDictionaryEncodableMarker);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    v10 = a1[3];
    v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
    v30 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    type metadata accessor for [String : Encodable]();
    swift_dynamicCast();
    __DictionaryEncoder.box(_:)(v28[0]);

    return;
  }

  swift_beginAccess();
  v20 = *(v1 + 16);
  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = type metadata accessor for __DictionaryEncoder();
  v31 = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryEncoder);
  v29[0] = v1;

  dispatch thunk of Encodable.encode(to:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    v22 = *(v1 + 16);
    if (v22 >> 62)
    {
      if (v21 >= __CocoaSet.count.getter())
      {
        goto LABEL_28;
      }
    }

    else if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_28:
      swift_willThrow();
      return;
    }

    swift_beginAccess();
    v23 = *(v1 + 16);
    if (v23 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_26:
        v24 = specialized RangeReplaceableCollection<>.popLast()();
        if (v24)
        {
          v25 = v24;
          swift_endAccess();

          goto LABEL_28;
        }

        goto LABEL_45;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  v26 = *(v1 + 16);
  if (v26 >> 62)
  {
    if (v21 < __CocoaSet.count.getter())
    {
LABEL_31:
      swift_beginAccess();
      v27 = *(v1 + 16);
      if (v27 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_33:
          if (specialized RangeReplaceableCollection<>.popLast()())
          {
            swift_endAccess();
            return;
          }

          goto LABEL_46;
        }
      }

      else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

LABEL_43:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }
  }

  else if (v21 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }
}

uint64_t DictionaryEncoder.__deallocating_deinit()
{
  _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOe_0(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(*(v0 + 48));
  outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(*(v0 + 64), *(v0 + 72));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(*(v0 + 112));

  return swift_deallocClassInstance();
}

BOOL __DictionaryEncoder.canEncodeNewValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  return v2 == *(*(v0 + 136) + 16);
}

void __DictionaryEncoder.container<A>(keyedBy:)()
{
  v2 = v0 + 2;
  if ((*(*v0 + 168))())
  {
    swift_beginAccess();
    v1 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    MEMORY[0x18D00CC30]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v3 = v1;
    goto LABEL_14;
  }

  swift_beginAccess();
  v4 = *v2;
  if (*v2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_22;
    }

LABEL_7:
    v6 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
    }

    else if ((v4 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v1 = *(v4 + 8 * v6 + 32);
        goto LABEL_12;
      }

      __break(1u);
LABEL_21:

      goto LABEL_22;
    }

    v1 = MEMORY[0x18D00E9C0](v6, v4);

LABEL_12:
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v3 = v7;
LABEL_14:
      v8 = v1;
      swift_beginAccess();
      type metadata accessor for _JSONKeyedEncodingContainer();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v9 = v3;
      swift_getWitnessTable();
      KeyedEncodingContainer.init<A>(_:)();

      return;
    }

    goto LABEL_21;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_22:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void __DictionaryEncoder.unkeyedContainer()(void *a1@<X8>)
{
  v3 = v1;
  v5 = v1 + 2;
  if ((*(*v1 + 168))())
  {
    swift_beginAccess();
    v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    MEMORY[0x18D00CC30]();
    if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v6 = v2;
    goto LABEL_14;
  }

  swift_beginAccess();
  v7 = *v5;
  if (*v5 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      goto LABEL_22;
    }

LABEL_7:
    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else if ((v7 & 0xC000000000000001) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v2 = *(v7 + 8 * v9 + 32);
        goto LABEL_12;
      }

      __break(1u);
LABEL_21:

      goto LABEL_22;
    }

    v2 = MEMORY[0x18D00E9C0](v9, v7);

LABEL_12:
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v6 = v10;
LABEL_14:
      v11 = v2;
      swift_beginAccess();
      v12 = v3[17];
      a1[3] = &unk_1EFFB83A8;
      a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();

      *a1 = v3;
      a1[1] = v6;
      a1[2] = v12;
      return;
    }

    goto LABEL_21;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_22:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for Encoder.singleValueContainer() in conformance __DictionaryEncoder@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __DictionaryEncoder();
  a1[4] = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryEncoder);
  *a1 = v3;
}

unint64_t _JSONKeyedEncodingContainer._converted(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v5 = *(a2 + 112);
  if (!v5)
  {
    return outlined init with copy of _Benchmark(a1, a4);
  }

  if (v5 == 1)
  {
    v6 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of CodingKey.stringValue.getter();
    v9 = specialized static DictionaryEncoder.KeyEncodingStrategy._convertToSnakeCase(_:)(v7, v8);
    v11 = v10;

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v12 = dispatch thunk of CodingKey.intValue.getter();
    LOBYTE(v6) = v13;
    a4[3] = &unk_1EFFB8510;
    a4[4] = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    result = swift_allocObject();
    *a4 = result;
    *(result + 16) = v9;
    *(result + 24) = v11;
    *(result + 32) = v12;
    *(result + 40) = v6 & 1;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    outlined init with copy of _Benchmark(a1, inited + 32);
    sub_18C0C046C(v5);

    specialized Array.append<A>(contentsOf:)(inited);
    v5(a3);

    return _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(v5);
  }

  return result;
}

uint64_t _JSONKeyedEncodingContainer.encodeNil(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v8 = *(a2 + 24);
  v16 = *(a2 + 16);
  v7 = v16;
  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  _JSONKeyedEncodingContainer._converted(_:)(v15, v5, v6, v18);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v10 = dispatch thunk of CodingKey.stringValue.getter();
  v12 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v15[0] = v10;
  v15[1] = v12;
  [v4 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(__int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v12 = *(a3 + 24);
  v20 = *(a3 + 16);
  v11 = v20;
  v21 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2, v11);
  _JSONKeyedEncodingContainer._converted(_:)(v19, v9, v10, v22);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a4];
  v19[0] = v14;
  v19[1] = v16;
  [v8 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v12 = *(a4 + 24);
  v22 = *(a4 + 16);
  v11 = v22;
  v23 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a3, v11);
  _JSONKeyedEncodingContainer._converted(_:)(v21, v9, v10, v24);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  v16 = v15;
  v17 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v18 = MEMORY[0x18D00C850](a1, a2);
  v19 = [v17 initWithString_];

  v21[0] = v14;
  v21[1] = v16;
  [v8 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v40 = v3;
  v13 = *v3;
  v15 = *(v14 + 16);
  v38 = v16;
  v36 = v14;
  v37 = v15;
  (v15)(&v35 - v11, v10);
  swift_beginAccess();
  v17 = *(v13 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 136) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v13 + 136) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(v13 + 136) = v17;
  }

  v21 = v37;
  v37(v8, v12, v6);
  v22 = *(a2 + 24);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v8, (v13 + 136), v6, v22);
  (*(v36 + 8))(v12, v6);
  *(v13 + 136) = v17;
  swift_endAccess();
  v23 = v40;
  v25 = v40[1];
  v24 = v40[2];
  v41[3] = v6;
  v41[4] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  v21(boxed_opaque_existential_1, v38, v6);
  v27 = v25;
  _JSONKeyedEncodingContainer._converted(_:)(v41, v13, v24, v42);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  v28 = dispatch thunk of CodingKey.stringValue.getter();
  v30 = v29;
  v31 = v39;
  v32 = __DictionaryEncoder.box(_:)(a3);
  if (v31)
  {
  }

  else
  {
    v33 = v32;
    v41[0] = v28;
    v41[1] = v30;
    [v27 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v23);
}

id __DictionaryEncoder.box(_:)(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    *&v13 = a1;
    return [v12 initWithFloat_];
  }

  else
  {
    v3 = v1[9];
    if (v3)
    {
      v4 = v1[8];
      v5 = v1[12];
      v6 = v1[13];
      v7 = v1[10];
      v8 = v1[11];
      v9 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
      if (a1 == INFINITY)
      {
        v10 = v4;
        v11 = v3;
      }

      else if (a1 == -INFINITY)
      {
        v10 = v7;
        v11 = v8;
      }

      else
      {
        v10 = v5;
        v11 = v6;
      }

      v17 = MEMORY[0x18D00C850](v10, v11);
      v18 = [v9 initWithString_];

      return v18;
    }

    else
    {
      swift_beginAccess();
      type metadata accessor for EncodingError();
      swift_allocError();
      v16 = v15;

      _ss13EncodingErrorO7SwiftUIE26_invalidFloatingPointValue33_2462DFFC835A6F4511AFEB231EB4B8C2LL_2atABx_Says9CodingKey_pGtSFRzlFZSf_Tt2g5(v16, a1);

      return swift_willThrow();
    }
  }
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v40 = v3;
  v13 = *v3;
  v15 = *(v14 + 16);
  v38 = v16;
  v36 = v14;
  v37 = v15;
  (v15)(&v35 - v11, v10);
  swift_beginAccess();
  v17 = *(v13 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 136) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v13 + 136) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(v13 + 136) = v17;
  }

  v21 = v37;
  v37(v8, v12, v6);
  v22 = *(a2 + 24);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v8, (v13 + 136), v6, v22);
  (*(v36 + 8))(v12, v6);
  *(v13 + 136) = v17;
  swift_endAccess();
  v23 = v40;
  v25 = v40[1];
  v24 = v40[2];
  v41[3] = v6;
  v41[4] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  v21(boxed_opaque_existential_1, v38, v6);
  v27 = v25;
  _JSONKeyedEncodingContainer._converted(_:)(v41, v13, v24, v42);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  v28 = dispatch thunk of CodingKey.stringValue.getter();
  v30 = v29;
  v31 = v39;
  v32 = __DictionaryEncoder.box(_:)(a3);
  if (v31)
  {
  }

  else
  {
    v33 = v32;
    v41[0] = v28;
    v41[1] = v30;
    [v27 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v23);
}

uint64_t $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 136) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

id __DictionaryEncoder.box(_:)(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v3 = v1[9];
  if (v3)
  {
    v4 = v1[8];
    v5 = v1[12];
    v6 = v1[13];
    v7 = v1[10];
    v8 = v1[11];
    v9 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    if (a1 == INFINITY)
    {
      v10 = v4;
      v11 = v3;
    }

    else if (a1 == -INFINITY)
    {
      v10 = v7;
      v11 = v8;
    }

    else
    {
      v10 = v5;
      v11 = v6;
    }

    v15 = MEMORY[0x18D00C850](v10, v11);
    v16 = [v9 initWithString_];

    return v16;
  }

  else
  {
    swift_beginAccess();
    type metadata accessor for EncodingError();
    swift_allocError();
    v14 = v13;

    _ss13EncodingErrorO7SwiftUIE26_invalidFloatingPointValue33_2462DFFC835A6F4511AFEB231EB4B8C2LL_2atABx_Says9CodingKey_pGtSFRzlFZSd_Tt2g5(v14, a1);

    return swift_willThrow();
  }
}

uint64_t _JSONKeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v41 = a1;
  v39 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = *v5;
  v15 = *(v7 + 16);
  v40 = v16;
  v15(&v37 - v12, v11);
  swift_beginAccess();
  v17 = *(v14 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 136) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v14 + 136) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(v14 + 136) = v17;
  }

  (v15)(v9, v13, v6);
  v38 = v15;
  v21 = *(v39 + 24);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v9, (v14 + 136), v6, v21);
  (*(v7 + 8))(v13, v6);
  *(v14 + 136) = v17;
  swift_endAccess();
  v22 = v49;
  v24 = v49[1];
  v23 = v49[2];
  v46 = v6;
  v47 = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  v38(boxed_opaque_existential_1, v40, v6);
  v40 = v24;
  _JSONKeyedEncodingContainer._converted(_:)(v45, v14, v23, v48);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  v26 = dispatch thunk of CodingKey.stringValue.getter();
  v28 = v27;
  v29 = v43;
  v46 = v43;
  v47 = v44;
  v30 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(v29 - 8) + 16))(v30, v41, v29);
  v31 = v42;
  __DictionaryEncoder.box_(_:)(v45);
  if (v31)
  {

    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v33 = v22;
  }

  else
  {
    v34 = v40;
    if (!v32)
    {
      v32 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    }

    v35 = v32;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v45[0] = v26;
    v45[1] = v28;
    [v34 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v48);
    v33 = v49;
  }

  return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v33);
}

void _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v42 = a6;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = *v6;
  v15 = v6[1];
  v35 = v6;
  v16 = v6 + 2;
  v17 = v6[2];
  v19 = *(v18 + 24);
  v47 = v8;
  v48 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
  v40 = v9;
  v21 = *(v9 + 16);
  v36 = a2;
  v37 = v21;
  v21(boxed_opaque_existential_1, a2, v8);
  v39 = v14;
  v41 = v19;
  _JSONKeyedEncodingContainer._converted(_:)(&v46, v14, v17, &v49);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  __swift_project_boxed_opaque_existential_1(&v49, v51);
  v22 = dispatch thunk of CodingKey.stringValue.getter();
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v49);
  *&v46 = v22;
  *(&v46 + 1) = v24;

  v25 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v46, &v49);
    outlined init with copy of Any(&v49, &v46);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableDictionary);
    if (!swift_dynamicCast())
    {
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(133);
      MEMORY[0x18D00C9B0](0xD000000000000038, 0x800000018CD475A0);
      v34 = _typeName(_:qualified:)();
      MEMORY[0x18D00C9B0](v34);

      MEMORY[0x18D00C9B0](0x656B20726F66203ELL, 0xEB00000000222079);
      MEMORY[0x18D00C9B0](v22, v24);
      MEMORY[0x18D00C9B0](0xD00000000000003ELL, 0x800000018CD475E0);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    outlined init with take of Any(&v49, &v46);
    swift_dynamicCast();
    v26 = v45;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v49 = v22;
    *(&v49 + 1) = v24;
    v26 = v27;
    [v15 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v28 = v37;
  v37(v13, v36, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v31 = v17[2];
  v30 = v17[3];
  if (v31 >= v30 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v17);
    *v16 = v17;
  }

  v32 = v38;
  v28(v38, v13, v8);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v31, v32, v16, v8, v41);
  (*(v40 + 8))(v13, v8);
  v33 = v35;
  v35[2] = v17;
  *&v49 = v39;
  *(&v49 + 1) = v26;
  v50 = v17;
  type metadata accessor for _JSONKeyedEncodingContainer();

  swift_getWitnessTable();
  KeyedEncodingContainer.init<A>(_:)();
  $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v33);
}

uint64_t $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 16) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void _JSONKeyedEncodingContainer.nestedUnkeyedContainer(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v31 - v11;
  v13 = *v3;
  v12 = v3[1];
  v14 = v3[2];
  v31 = v3 + 2;
  v16 = *(v15 + 24);
  v41 = v7;
  v42 = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
  v37 = v8;
  v18 = *(v8 + 16);
  v32 = a1;
  v38 = v18;
  v18(boxed_opaque_existential_1, a1, v7);
  v35 = v13;
  v36 = v16;
  _JSONKeyedEncodingContainer._converted(_:)(&v40, v13, v14, &v43);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(&v43, v44);
  v19 = dispatch thunk of CodingKey.stringValue.getter();
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v43);
  *&v40 = v19;
  *(&v40 + 1) = v21;

  v22 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v40, &v43);
    outlined init with copy of Any(&v43, &v40);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableArray);
    if (!swift_dynamicCast())
    {
      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(140);
      MEMORY[0x18D00C9B0](0xD000000000000043, 0x800000018CD47500);
      MEMORY[0x18D00C9B0](v19, v21);
      MEMORY[0x18D00C9B0](0xD000000000000047, 0x800000018CD47550);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    outlined init with take of Any(&v43, &v40);
    swift_dynamicCast();
    v23 = v39;
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    *&v43 = v19;
    *(&v43 + 1) = v21;
    v23 = v24;
    [v12 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v25 = v31;
  v26 = v34;
  v38(v34, v32, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
    *v25 = v14;
  }

  v29 = v14[2];
  v28 = v14[3];
  if (v29 >= v28 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v14);
    *v25 = v14;
  }

  v30 = v33;
  v38(v33, v26, v7);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v29, v30, v25, v7, v36);
  (*(v37 + 8))(v26, v7);
  *(v4 + 16) = v14;
  a3[3] = &unk_1EFFB83A8;
  a3[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();
  *a3 = v35;
  a3[1] = v23;
  a3[2] = v14;

  $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v4);
}

uint64_t _JSONKeyedEncodingContainer.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v9[3] = &unk_1EFFB8510;
  v9[4] = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v6 = swift_allocObject();
  v9[0] = v6;
  *(v6 + 16) = 0x7265707573;
  *(v6 + 24) = 0xE500000000000000;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;

  _JSONKeyedEncodingContainer._converted(_:)(v9, v4, v5, v10);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v7 = _s7SwiftUI30__DictionaryReferencingEncoder33_2462DFFC835A6F4511AFEB231EB4B8C2LLC11referencing3key12convertedKey8wrappingAdA02__cE0ACLLC_s06CodingP0_psAK_phSo09NSMutableC0CtcfCTf4nennn_nAA8_JSONKeyACLLV_Tt3g5(v4, 0x7265707573, 0xE500000000000000, 0, 1, v10, v3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  a1[3] = type metadata accessor for __DictionaryReferencingEncoder();
  result = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryReferencingEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryReferencingEncoder);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t _JSONKeyedEncodingContainer.superEncoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __DictionaryReferencingEncoder();
  v11 = *v3;
  v12 = v3[1];
  v13 = v3[2];
  v14 = *(a2 + 24);
  v22[3] = v6;
  v22[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v16 = *(v7 + 16);
  v16(boxed_opaque_existential_1, a1, v6);

  _JSONKeyedEncodingContainer._converted(_:)(v22, v11, v13, v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v16(v9, a1, v6);
  v17 = specialized __DictionaryReferencingEncoder.__allocating_init(referencing:key:convertedKey:wrapping:)(v11, v9, v23, v12, v10, v6, v14);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v18 = v21;
  v21[3] = v10;
  result = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryReferencingEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryReferencingEncoder);
  v18[4] = result;
  *v18 = v17;
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(char a1, uint64_t a2, uint64_t a3)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithInteger_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithInt_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithLongLong_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedInteger_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedInt_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedLongLong_);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)(float a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = [v4 count];
  *&v17 = 0x207865646E49;
  *(&v17 + 1) = 0xE600000000000000;
  v20 = v6;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  swift_beginAccess();
  v8 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v5 + 136) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v18 = &unk_1EFFB8510;
  v19 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v12 = swift_allocObject();
  *&v17 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v6;
  *(v12 + 40) = 0;
  v8[2] = v11 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v17, &v8[5 * v11 + 4]);
  *(v5 + 136) = v8;
  swift_endAccess();
  v13 = __DictionaryEncoder.box(_:)(a1);
  if (!v16)
  {
    v14 = v13;
    [v4 addObject_];
  }

  return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)(double a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = [v4 count];
  *&v17 = 0x207865646E49;
  *(&v17 + 1) = 0xE600000000000000;
  v20 = v6;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  swift_beginAccess();
  v8 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v5 + 136) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v18 = &unk_1EFFB8510;
  v19 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v12 = swift_allocObject();
  *&v17 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v6;
  *(v12 + 40) = 0;
  v8[2] = v11 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v17, &v8[5 * v11 + 4]);
  *(v5 + 136) = v8;
  swift_endAccess();
  v13 = __DictionaryEncoder.box(_:)(a1);
  if (!v16)
  {
    v14 = v13;
    [v4 addObject_];
  }

  return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
}

uint64_t _JSONUnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v19 = v3[1];
  v7 = [v19 count];
  *&v22 = 0x207865646E49;
  *(&v22 + 1) = 0xE600000000000000;
  v25 = v7;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v8);

  swift_beginAccess();
  v9 = *(v6 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 136) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    *(v6 + 136) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  v23 = &unk_1EFFB8510;
  v24 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v13 = swift_allocObject();
  *&v22 = v13;
  *(v13 + 16) = 0x207865646E49;
  *(v13 + 24) = 0xE600000000000000;
  *(v13 + 32) = v7;
  *(v13 + 40) = 0;
  v9[2] = v12 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v22, &v9[5 * v12 + 4]);
  *(v6 + 136) = v9;
  swift_endAccess();
  v23 = a2;
  v24 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(a2 - 1) + 16))(boxed_opaque_existential_1, a1, a2);
  v15 = v26;
  __DictionaryEncoder.box_(_:)(&v22);
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    if (!v16)
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    }

    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v22);
    [v19 addObject_];
  }

  return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v4);
}

uint64_t _JSONUnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)()
{
  v1 = v0;
  v2 = v0[1];
  v3 = [v2 count];
  *&v11 = 0x207865646E49;
  *(&v11 + 1) = 0xE600000000000000;
  v15 = v3;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v4);

  v5 = v0[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  v13 = &unk_1EFFB8510;
  v14 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v8 = swift_allocObject();
  *&v11 = v8;
  *(v8 + 16) = 0x207865646E49;
  *(v8 + 24) = 0xE600000000000000;
  *(v8 + 32) = v3;
  *(v8 + 40) = 0;
  v5[2] = v7 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v11, &v5[5 * v7 + 4]);
  v1[2] = v5;
  v9 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  [v2 addObject_];
  *&v11 = *v1;
  *(&v11 + 1) = v9;
  v12 = v5;
  type metadata accessor for _JSONKeyedEncodingContainer();

  swift_getWitnessTable();
  KeyedEncodingContainer.init<A>(_:)();
  return $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v1);
}

uint64_t _JSONUnkeyedEncodingContainer.nestedUnkeyedContainer()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  v5 = [v4 count];
  *&v14 = 0x207865646E49;
  *(&v14 + 1) = 0xE600000000000000;
  v17 = v5;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  v7 = v1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  v15 = &unk_1EFFB8510;
  v16 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v5;
  *(v10 + 40) = 0;
  v7[2] = v9 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v14, &v7[5 * v9 + 4]);
  v2[2] = v7;
  v11 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  [v4 addObject_];
  v12 = *v2;
  a1[3] = &unk_1EFFB83A8;
  a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();
  *a1 = v12;
  a1[1] = v11;
  a1[2] = v7;

  return $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v2);
}

void protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance _JSONUnkeyedEncodingContainer()
{
  v1 = *(v0 + 8);
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  [v1 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(char a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [v2 addObject_];
}

{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v7 = MEMORY[0x18D00C850](a1, a2);
  v8 = [v6 initWithString_];

  [v5 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithInteger_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithInt_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithLongLong_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedInteger_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedInt_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedLongLong_);
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  [v2 addObject_];
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer()
{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(v4 + 8);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a4];
  [v5 addObject_];
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance _JSONUnkeyedEncodingContainer()
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.superEncoder() in conformance _JSONUnkeyedEncodingContainer@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = [v3 count];
  v6 = type metadata accessor for __DictionaryReferencingEncoder();
  swift_allocObject();
  v7 = __DictionaryReferencingEncoder.init(referencing:at:wrapping:)(v4, v5, v3);
  a1[3] = v6;
  result = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryReferencingEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryReferencingEncoder);
  a1[4] = result;
  *a1 = v7;
  return result;
}

void __DictionaryEncoder.encodeNil()()
{
  v1 = v0;
  if ((*(*v0 + 168))())
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    swift_beginAccess();
    v3 = v2;
    MEMORY[0x18D00CC30]();
    if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(char a1)
{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(__int16 a1)
{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(unsigned __int8 a1)
{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(unsigned __int16 a1)
{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(uint64_t a1, SEL *a2)
{
  v4 = v2;
  if ((*(*v2 + 168))())
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a2];
    swift_beginAccess();
    v7 = v6;
    MEMORY[0x18D00CC30]();
    if (*((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*(*v2 + 168))())
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v7 = MEMORY[0x18D00C850](a1, a2);
    v8 = [v6 initWithString_];

    swift_beginAccess();
    v9 = v8;
    MEMORY[0x18D00CC30]();
    if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(float a1)
{
  v3 = v1;
  if ((*(*v1 + 168))())
  {
    v5 = __DictionaryEncoder.box(_:)(a1);
    if (!v2)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = v6;
      MEMORY[0x18D00CC30]();
      if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(double a1)
{
  v3 = v1;
  if ((*(*v1 + 168))())
  {
    v5 = __DictionaryEncoder.box(_:)(a1);
    if (!v2)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = v6;
      MEMORY[0x18D00CC30]();
      if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if ((*(*v3 + 168))())
  {
    v13[3] = a2;
    v13[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
    __DictionaryEncoder.box_(_:)(v13);
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      if (!v10)
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
      }

      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v13);
      swift_beginAccess();
      v12 = v11;
      MEMORY[0x18D00CC30]();
      if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __DictionaryEncoder(char a1)
{
  __DictionaryEncoder.encode(_:)(a1);
}

{
  __DictionaryEncoder.encode(_:)(a1);
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __DictionaryEncoder(uint64_t a1)
{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithInteger_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithInt_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithLongLong_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithUnsignedInteger_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithUnsignedInt_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithUnsignedLongLong_);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __DictionaryEncoder()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t _ss13EncodingErrorO7SwiftUIE26_invalidFloatingPointValue33_2462DFFC835A6F4511AFEB231EB4B8C2LL_2atABx_Says9CodingKey_pGtSFRzlFZSf_Tt2g5@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v4 = 0x616E2E74616F6C46;
  if (a2 == -INFINITY)
  {
    v4 = 0x692E74616F6C462DLL;
  }

  v5 = 0xE90000000000006ELL;
  if (a2 == -INFINITY)
  {
    v5 = 0xEF7974696E69666ELL;
  }

  if (a2 == INFINITY)
  {
    v6 = 0x6E692E74616F6C46;
  }

  else
  {
    v6 = v4;
  }

  if (a2 == INFINITY)
  {
    v7 = 0xEE007974696E6966;
  }

  else
  {
    v7 = v5;
  }

  _StringGuts.grow(_:)(154);
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD466E0);
  MEMORY[0x18D00C9B0](v6, v7);

  MEMORY[0x18D00C9B0](0xD000000000000087, 0x800000018CD46700);
  type metadata accessor for (Any, EncodingError.Context)();
  *(a1 + 24) = MEMORY[0x1E69E6448];
  *a1 = a2;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v8 = *MEMORY[0x1E69E6B30];
  v9 = type metadata accessor for EncodingError();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

uint64_t _ss13EncodingErrorO7SwiftUIE26_invalidFloatingPointValue33_2462DFFC835A6F4511AFEB231EB4B8C2LL_2atABx_Says9CodingKey_pGtSFRzlFZSd_Tt2g5@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = 0xEA00000000006E61;
  v5 = 0x6E2E656C62756F44;
  if (a2 == -INFINITY)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000018CD46790;
  }

  if (a2 == INFINITY)
  {
    v6 = 0x692E656C62756F44;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == INFINITY)
  {
    v7 = 0xEF7974696E69666ELL;
  }

  else
  {
    v7 = v4;
  }

  _StringGuts.grow(_:)(154);
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD466E0);
  MEMORY[0x18D00C9B0](v6, v7);

  MEMORY[0x18D00C9B0](0xD000000000000087, 0x800000018CD46700);
  type metadata accessor for (Any, EncodingError.Context)();
  *(a1 + 24) = MEMORY[0x1E69E63B0];
  *a1 = a2;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v8 = *MEMORY[0x1E69E6B30];
  v9 = type metadata accessor for EncodingError();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}