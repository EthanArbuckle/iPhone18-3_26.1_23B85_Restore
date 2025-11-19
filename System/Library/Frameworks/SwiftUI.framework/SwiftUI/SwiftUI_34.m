uint64_t InsetListStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext);
  v7 = type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for PlainListBody();
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext);
  v30 = v9;
  v31 = v7;
  v32 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v33 = WitnessTable;
  type metadata accessor for InsetList();
  v10 = type metadata accessor for StaticIf();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v22[4] = a2;
  v22[5] = a3;
  v23 = a1;
  v17 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  StaticIf<>.init<A>(idiom:then:else:)();
  v27 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v28 = v17;
  v29 = v21;
  v18 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, v18);
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, v18);
  return (v19)(v16, v10);
}

uint64_t closure #1 in InsetListStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = v30 - v9;
  v38 = &type metadata for InsetListStyle;
  v39 = a2;
  v40 = &protocol witness table for InsetListStyle;
  v41 = a3;
  v10 = type metadata accessor for _ListValue();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext);
  v15 = v14;
  v30[2] = v14;
  v16 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v30[1] = v16;
  v30[3] = v7;
  WitnessTable = swift_getWitnessTable();
  v38 = v15;
  v39 = v7;
  v40 = v16;
  v41 = WitnessTable;
  v18 = type metadata accessor for PlainListBody();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v30 - v23;
  InsetListStyle.Body.base.getter(v13);
  v25 = &v13[*(v11 + 60)];
  v26 = v31;
  (*(v32 + 32))(v31, v25, v33);
  v35 = a2;
  v36 = a3;
  v37 = a1;
  PlainListBody.init(selection:isOutline:content:)(v26, 0, partial apply for closure #1 in closure #1 in InsetListStyle.Body.value.getter, v21);
  v27 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v18, v27);
  v28 = *(v19 + 8);
  v28(v21, v18);
  static ViewBuilder.buildExpression<A>(_:)(v24, v18, v27);
  return (v28)(v24, v18);
}

uint64_t InsetListStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t PlainListBody.init(selection:isOutline:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for PlainListBody();
  *(a4 + *(v9 + 52)) = a2;
  return a3(v9, v10, v11, v12);
}

uint64_t closure #1 in closure #1 in InsetListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = &type metadata for InsetListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for InsetListStyle;
  v8[3] = a3;
  v3 = type metadata accessor for _ListValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  InsetListStyle.Body.base.getter(v8 - v5);
  return (*(v4 + 8))(v6, v3);
}

void *initializeWithCopy for PlainListBody(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    v19 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v19 & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  *(__dst + v14) = *(__src + v14);
  v17 = *(*(a3 + 16) - 8);
  (*(v17 + 16))((__dst + v14 + *(v17 + 80) + 1) & ~*(v17 + 80), (__src + v14 + *(v17 + 80) + 1) & ~*(v17 + 80));
  return __dst;
}

uint64_t destroy for PlainListBody(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = *(v5 + 64);
  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if (!(*(v5 + 48))((v9 + v6 + 8) & v7))
    {
LABEL_5:

      (*(v5 + 8))((v9 + v6 + 8) & v7, v4);
    }
  }

  else
  {
    v10 = *v9;
    if (*v9 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    if (v10 == -1)
    {
      goto LABEL_5;
    }
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (a1 + v8 + ((v6 + 16) & v7) + *(v11 + 80) + 1) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t closure #2 in InsetListStyle.Body.value.getter(int a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext);
  v17[0] = v6;
  v17[1] = type metadata accessor for SelectionManagerBox();
  v17[2] = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v17[3] = swift_getWitnessTable();
  v7 = type metadata accessor for InsetList();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  InsetListStyle.Body.insetListBody.getter(a1, a2, a3, v10);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  return (v15)(v13, v7);
}

uint64_t InsetListStyle.Body.insetListBody.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v39 = type metadata accessor for Optional();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - v9;
  v44 = &type metadata for InsetListStyle;
  v45 = a2;
  v46 = &protocol witness table for InsetListStyle;
  v47 = a3;
  v10 = type metadata accessor for _ListValue();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext);
  v17 = v16;
  v34 = v16;
  v18 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v33 = v18;
  v35 = v7;
  WitnessTable = swift_getWitnessTable();
  v44 = v17;
  v45 = v7;
  v46 = v18;
  v47 = WitnessTable;
  v19 = type metadata accessor for InsetList();
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  InsetListStyle.Body.base.getter(v15);
  v25 = *(v8 + 32);
  v26 = v38;
  v25(v38, &v15[*(v10 + 52)], v39);
  InsetListStyle.Body.base.getter(v12);
  v27 = *v12;
  (*(v37 + 8))(v12, v10);
  v41 = a2;
  v42 = a3;
  v43 = a1;
  InsetList.init(selection:options:content:)(v26, v27, partial apply for closure #1 in InsetListStyle.Body.insetListBody.getter, v21);
  v28 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v19, v28);
  v29 = *(v36 + 8);
  v29(v21, v19);
  static ViewBuilder.buildExpression<A>(_:)(v24, v19, v28);
  return (v29)(v24, v19);
}

uint64_t InsetList.init(selection:options:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for InsetList();
  *(a4 + *(v9 + 52)) = a2;
  return a3(v9, v10, v11, v12);
}

void *initializeWithCopy for InsetList(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    v21 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v21 & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v17 = ((__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = *(*(a3 + 16) - 8);
  (*(v19 + 16))((v17 + *(v19 + 80) + 8) & ~*(v19 + 80), (v18 + *(v19 + 80) + 8) & ~*(v19 + 80));
  return __dst;
}

uint64_t destroy for InsetList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = *(v5 + 64);
  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if (!(*(v5 + 48))((v9 + v6 + 8) & v7))
    {
LABEL_5:

      (*(v5 + 8))((v9 + v6 + 8) & v7, v4);
    }
  }

  else
  {
    v10 = *v9;
    if (*v9 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    if (v10 == -1)
    {
      goto LABEL_5;
    }
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (((a1 + v8 + ((v6 + 16) & v7) + 7) & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 8) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t InsetList.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[3] = a2;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  v22[2] = v4;
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v22[0] = type metadata accessor for InsetList.CollectionViewBody();
  v34 = v6;
  v35 = v5;
  v36 = v8;
  v37 = v7;
  type metadata accessor for InsetList.TableViewRoot();
  v22[1] = type metadata accessor for _VariadicView.Tree();
  v9 = type metadata accessor for StaticIf();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v24 = v6;
  v25 = v5;
  v26 = v8;
  v27 = v7;
  v28 = v2;
  v22[6] = v6;
  v22[7] = v5;
  v22[8] = v8;
  v22[9] = v7;
  v23 = v2;
  v16 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v33 = v8;
  v21 = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v29 = v16;
  v30 = WitnessTable;
  v31 = v21;
  v18 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, v18);
  v19 = *(v10 + 8);
  v19(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t closure #1 in InsetList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a1;
  v34 = a6;
  type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - v11;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v29 = a4;
  v16 = type metadata accessor for InsetList.CollectionViewBody();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v23 = type metadata accessor for InsetList();
  v24 = v31;
  (*(v12 + 16))(v15, v31 + *(v23 + 56), a2);
  v25 = v30;
  (*(v32 + 16))(v30, v24, v33);
  InsetList.CollectionViewBody.init(content:selection:)(v15, v25, a2, v19);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v16, WitnessTable);
  v27 = *(v17 + 8);
  v27(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)(v22, v16, WitnessTable);
  return (v27)(v22, v16);
}

uint64_t InsetList.CollectionViewBody.init(content:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 97) = 0;
  *(a4 + 104) = swift_getKeyPath();
  *(a4 + 112) = 0;
  v8 = type metadata accessor for InsetList.CollectionViewBody();
  (*(*(a3 - 8) + 32))(a4 + *(v8 + 64), a1, a3);
  v9 = *(v8 + 68);
  type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  return (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
}

uint64_t initializeWithCopy for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  *a1 = v5;
  *(a1 + 8) = v6;
  v47 = a1;
  v7 = a1 & 0xFFFFFFFFFFFFFFF8;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v8 + 25);
  v10 = *(v8 + 24);
  outlined copy of Environment<CGFloat?>.Content(v9, v10, v5);
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 25) = v5;
  v11 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 33) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  v19 = *(v12 + 48);
  v20 = *(v12 + 56);
  v44 = *(v12 + 64);
  v45 = *(v12 + 65);
  outlined copy of Environment<ListPadding>.Content(*v12, v14, v15, v16, v17, v18, v19, v20, v44, v45);
  *v11 = v13;
  *(v11 + 8) = v14;
  *(v11 + 16) = v15;
  *(v11 + 24) = v16;
  *(v11 + 32) = v17;
  *(v11 + 40) = v18;
  *(v11 + 48) = v19;
  *(v11 + 56) = v20;
  *(v11 + 64) = v44;
  *(v11 + 65) = v45;
  v21 = (v11 + 73) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + 73) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  LOBYTE(v14) = *(v22 + 8);
  outlined copy of Environment<Selector?>.Content(*v22, v14);
  *v21 = v23;
  *(v21 + 8) = v14;
  v24 = *(*(a3 + 16) - 8);
  v25 = v24 + 16;
  v26 = *(v24 + 80);
  v27 = (v26 + 9 + v21) & ~v26;
  v28 = (v26 + 9 + v22) & ~v26;
  (*(v24 + 16))(v27, v28);
  v29 = *(a3 + 24);
  v30 = *(v25 + 48);
  v31 = *(v29 - 8);
  v32 = *(v31 + 80);
  v33 = (v32 | 7) + v30;
  v34 = ((v33 + v27) & ~(v32 | 7));
  v35 = ((v33 + v28) & ~(v32 | 7));
  v36 = ~v32;
  v37 = *(v31 + 64);
  v38 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v31 + 84) & 0x80000000) == 0)
  {
    v39 = *v38;
    if (*v38 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    if (v39 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v34 = *v35;
    v40 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v40 = *v38;
    v41 = v40 + v32 + 8;
    v42 = *(v31 + 16);

    v42(v41 & v36, (v38 + v32 + 8) & v36, v29);
    return v47;
  }

  if (!(*(v31 + 48))((v38 + v32 + 8) & v36))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v34, v35, ((v32 + 16) & ~v32) + v37);
  return v47;
}

uint64_t destroy for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  v4 = (v3 + 33) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<ListPadding>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 65));
  v5 = (v4 + 73) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v5, *(v5 + 8));
  v6 = *(*(a2 + 16) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80) + 9) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + (v12 | 7)) & ~(v12 | 7);
  v14 = ~v12;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = v11;
  if ((*(v11 + 84) & 0x80000000) != 0)
  {
    result = (*(v11 + 48))((v15 + v12 + 8) & v14);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v16 = *v15;
  if (*v15 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  result = (v16 + 1);
  if (v16 == -1)
  {
LABEL_7:

    v18 = *(v19 + 8);

    return v18((v15 + v12 + 8) & v14, v10);
  }

  return result;
}

uint64_t closure #2 in InsetList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v37 = a1;
  v38 = a6;
  v32 = a3;
  type metadata accessor for Binding();
  v35 = type metadata accessor for Optional();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v31 - v11;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v13 = type metadata accessor for InsetList.TableViewRoot();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for _VariadicView.Tree();
  v36 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = v37;
  (*(v10 + 16))(v12, v37, v35, v20);
  v24 = v12;
  v26 = v32;
  v25 = v33;
  v27 = v34;
  InsetList.TableViewRoot.init(selection:)(v24, v15);
  v39 = a2;
  v40 = v26;
  v41 = v25;
  v42 = v27;
  v43 = v23;
  _VariadicView.Tree.init(_:content:)();
  WitnessTable = swift_getWitnessTable();
  v45 = v25;
  v28 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v18, v16, v28);
  v29 = *(v36 + 8);
  v29(v18, v16);
  static ViewBuilder.buildExpression<A>(_:)(v22, v16, v28);
  return (v29)(v22, v16);
}

uint64_t InsetList.TableViewRoot.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  v4 = *(type metadata accessor for InsetList.TableViewRoot() + 60);
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 32))(a2 + v4, a1, v5);
}

uint64_t closure #1 in closure #2 in InsetList.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for InsetList();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v14 + 56), a2, a4);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

unint64_t assignWithCopy for FocusState(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v7((v9 + *(v6 + 80) + 8) & ~*(v6 + 80), (v10 + *(v6 + 80) + 8) & ~*(v6 + 80), v5);
  return a1;
}

unint64_t assignWithCopy for SearchModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  outlined copy of Text.Storage(v6, v7, v8);
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(v4 + 32) = *(v5 + 32);

  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = (v14 + 40 + v4) & ~v14;
  v16 = (v14 + 40 + v5) & ~v14;
  (*(v12 + 24))(v15, v16);
  v17 = *(v13 + 40);
  v18 = type metadata accessor for AttributedString();
  v19 = *(v18 - 8);
  v20 = *(v19 + 80);
  v21 = v20 | 7;
  v22 = (v20 | 7) + v17;
  v45 = ~(v20 | 7);
  v23 = ((v22 + v15) & v45);
  v24 = ((v22 + v16) & v45);
  *v23 = *v24;

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  v27 = v25 + v20 + 8;
  v28 = ~v20;
  v44 = *(v19 + 24);
  v44(v27 & ~v20, (v26 + v20 + 8) & ~v20, v18);
  v29 = *(v19 + 64);
  v30 = v29 + ((v20 + 16) & ~v20) + 7;
  v31 = (v23 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v24 + v30) & 0xFFFFFFFFFFFFFFF8;
  if (v31 != v32)
  {
    v33 = *(v31 + 17);
    if (v33 >= 2)
    {
      v33 = *v31 + 2;
    }

    if (v33 == 1)
    {
    }

    v34 = *(v32 + 17);
    if (v34 >= 2)
    {
      v34 = *v32 + 2;
    }

    if (v34 == 1)
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 17) = 1;
    }

    else
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 17) = 0;
    }
  }

  v35 = (v21 + 18 + v31) & v45;
  v36 = (v21 + 18 + v32) & v45;
  *v35 = *v36;
  *(v35 + 1) = *(v36 + 1);
  *(v35 + 2) = *(v36 + 2);
  *(v35 + 3) = *(v36 + 3);
  v37 = *(v36 + 4);
  *(v35 + 8) = *(v36 + 8);
  *(v35 + 4) = v37;
  v38 = v20 + 9;
  v39 = (v38 + v35) & v28;
  v40 = (v38 + v36) & v28;
  v44(v39, v40, v18);
  *(v39 + v29) = *(v40 + v29);
  v41 = (v39 + v29) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = (v40 + v29) & 0xFFFFFFFFFFFFFFFCLL;
  *(v41 + 4) = *(v42 + 4);
  *(v41 + 8) = *(v42 + 8);
  *((v29 + (v38 & v28) + 16 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v29 + (v38 & v28) + 16 + v36) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t InsetList.CollectionViewBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = *(a1 + 24);
  v4 = v47;
  type metadata accessor for Binding();
  v45 = type metadata accessor for Optional();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - v5;
  v40 = *(a1 + 16);
  v6 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v9;
  v43 = *(a1 + 32);
  *&v11 = v10;
  *(&v11 + 1) = v4;
  v50 = v11;
  v51 = v43;
  v12 = type metadata accessor for CollectionViewListRoot();
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v39 - v16;
  v17 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  v24 = specialized Environment.wrappedValue.getter(*(v2 + 104), *(v2 + 112));
  v25 = MEMORY[0x1E69DC240];
  if ((v24 & 1) == 0)
  {
    v25 = MEMORY[0x1E69DC248];
  }

  (*(v18 + 104))(v23, *v25, v17);
  v26 = v9;
  v27 = v40;
  (*(v6 + 16))(v26, v2 + *(a1 + 64), v40);
  (*(v18 + 16))(v20, v23, v17);
  v28 = specialized Environment.wrappedValue.getter(*v2, *(v2 + 8));
  v29 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24) | (*(v2 + 25) << 8)));
  if (v30)
  {
    v31 = 26.0;
  }

  else
  {
    v31 = v29;
  }

  v32 = v2 + *(a1 + 68);
  v33 = v42;
  (*(v44 + 16))(v42, v32, v45);
  v34 = *(v2 + 80);
  v52 = *(v2 + 64);
  v53 = v34;
  v54 = *(v2 + 96);
  v35 = *(v2 + 48);
  v50 = *(v2 + 32);
  v51 = v35;
  specialized Environment.wrappedValue.getter(v49);
  (*(v18 + 8))(v23, v17);
  CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)(v39, v20, v33, v49, v27, v14, v28, v31);
  v36 = v41;
  static ViewBuilder.buildExpression<A>(_:)(v14, v12, &protocol witness table for CollectionViewListRoot<A, B>);
  v37 = *(v46 + 8);
  v37(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)(v36, v12, &protocol witness table for CollectionViewListRoot<A, B>);
  return (v37)(v36, v12);
}

void *assignWithCopy for SearchFocusContext(void *a1, void *a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  v4 = a2[7];
  a1[6] = a2[6];
  a1[7] = v4;

  v5 = a2[9];
  a1[8] = a2[8];
  a1[9] = v5;

  return a1;
}

uint64_t assignWithCopy for SubmitScopeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v3, v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v6, v7, v8);
  return a1;
}

unint64_t assignWithCopy for SearchPrimitiveModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  outlined copy of Text.Storage(v6, v7, v8);
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(v4 + 32) = *(v5 + 32);

  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v96 = ~v15;
  v16 = (v15 + 40 + v4) & ~v15;
  v85 = v15 + 40;
  v88 = v15;
  v17 = (v15 + 40 + v5) & ~v15;
  v89 = *(v13 + 24);
  v90 = v12;
  v89(v16, v17);
  v18 = *(v14 + 40);
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v95 = v18;
  v22 = (v21 | 7) + v18;
  v83 = ~(v21 | 7);
  v84 = v21 | 7;
  v23 = ((v22 + v16) & v83);
  v24 = ((v22 + v17) & v83);
  *v23 = *v24;

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  v93 = ~v21;
  v77 = v21 + 8;
  v87 = v20;
  v94 = v19;
  v78 = *(v20 + 24);
  v78((v25 + v21 + 8) & ~v21, (v26 + v21 + 8) & ~v21, v19);
  v92 = *(v20 + 64);
  v82 = v92 + ((v21 + 16) & ~v21);
  v27 = (v23 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v24 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v27 != v28)
  {
    v29 = *(v27 + 17);
    if (v29 >= 2)
    {
      v29 = *v27 + 2;
    }

    if (v29 == 1)
    {
    }

    v30 = *(v28 + 17);
    if (v30 >= 2)
    {
      v30 = *v28 + 2;
    }

    if (v30 == 1)
    {
      *v27 = *v28;
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 16) = *(v28 + 16);
      *(v27 + 17) = 1;
    }

    else
    {
      *v27 = *v28;
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 17) = 0;
    }
  }

  v31 = (v84 + 18 + v27) & v83;
  v32 = (v84 + 18 + v28) & v83;
  *v31 = *v32;
  *(v31 + 1) = *(v32 + 1);
  *(v31 + 2) = *(v32 + 2);
  *(v31 + 3) = *(v32 + 3);
  v33 = *(v32 + 4);
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 4) = v33;
  v34 = (v21 + 9 + v31) & v93;
  v35 = (v21 + 9 + v32) & v93;
  v78(v34, v35, v19);
  *(v34 + v92) = *(v35 + v92);
  v36 = (v34 + v92) & 0xFFFFFFFFFFFFFFFCLL;
  v37 = (v35 + v92) & 0xFFFFFFFFFFFFFFFCLL;
  *(v36 + 4) = *(v37 + 4);
  *(v36 + 8) = *(v37 + 8);
  v79 = v21 + 9;
  v38 = v92 + ((v21 + 9) & v93);
  v80 = v21 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + ((v21 + 16) & v80);
  v81 = v38 + 16;
  *((v38 + 16 + v31) & 0xFFFFFFFFFFFFFFF8) = *((v38 + 16 + v32) & 0xFFFFFFFFFFFFFFF8);

  v40 = (v38 & 0xFFFFFFFFFFFFFFF8) + 24;
  v41 = ((v84 + 18 + ((v82 + (((v85 & v96) + v95 + v84) & v83) + 7) & 0xFFFFFFFFFFFFFFF8)) & v83) + v40 + (v84 | v88);
  v42 = ((v41 + a1) & ~(v84 | v88));
  v43 = ((v41 + a2) & ~(v84 | v88));
  if (v39 + 9 <= v40)
  {
    v44 = v40;
  }

  else
  {
    v44 = v39 + 9;
  }

  if (v42 != v43)
  {
    v45 = v42[v44];
    v46 = v45 - 2;
    if (v45 < 2)
    {
      goto LABEL_30;
    }

    if (v44 <= 3)
    {
      v47 = v44;
    }

    else
    {
      v47 = 4;
    }

    if (v47 <= 1)
    {
      if (!v47)
      {
        goto LABEL_30;
      }

      v48 = *v42;
      if (v44 < 4)
      {
LABEL_33:
        if ((v48 | (v46 << (8 * v44))) != 0xFFFFFFFF)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }
    }

    else if (v47 == 2)
    {
      v48 = *v42;
      if (v44 < 4)
      {
        goto LABEL_33;
      }
    }

    else if (v47 == 3)
    {
      v48 = *v42 | (v42[2] << 16);
      if (v44 < 4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v48 = *v42;
      if (v44 < 4)
      {
        goto LABEL_33;
      }
    }

    v45 = v48 + 2;
LABEL_30:
    if (v45 != 1)
    {
LABEL_34:
      (*(v87 + 8))(&v42[v79] & v93, v94);

LABEL_35:
      v49 = v43[v44];
      v50 = v49 - 2;
      if (v49 < 2)
      {
        goto LABEL_49;
      }

      if (v44 <= 3)
      {
        v51 = v44;
      }

      else
      {
        v51 = 4;
      }

      if (v51 <= 1)
      {
        if (!v51)
        {
          goto LABEL_49;
        }

        v52 = *v43;
        if (v44 < 4)
        {
LABEL_52:
          if ((v52 | (v50 << (8 * v44))) != 0xFFFFFFFF)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }
      }

      else if (v51 == 2)
      {
        v52 = *v43;
        if (v44 < 4)
        {
          goto LABEL_52;
        }
      }

      else if (v51 == 3)
      {
        v52 = *v43 | (v43[2] << 16);
        if (v44 < 4)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v52 = *v43;
        if (v44 < 4)
        {
          goto LABEL_52;
        }
      }

      v49 = v52 + 2;
LABEL_49:
      if (v49 != 1)
      {
LABEL_53:
        *v42 = *v43;
        v42[1] = v43[1];
        v42[2] = v43[2];
        v42[3] = v43[3];
        v66 = *(v43 + 1);
        v42[8] = v43[8];
        *(v42 + 1) = v66;
        v67 = &v42[v79] & v93;
        v68 = &v43[v79] & v93;
        (*(v87 + 16))(v67, v68, v94);
        *(v67 + v92) = *(v68 + v92);
        v69 = (v67 + v92) & 0xFFFFFFFFFFFFFFFCLL;
        v70 = (v68 + v92) & 0xFFFFFFFFFFFFFFFCLL;
        v71 = *(v70 + 4);
        *(v69 + 8) = *(v70 + 8);
        *(v69 + 4) = v71;
        *(&v42[v81] & 0xFFFFFFFFFFFFFFF8) = *(&v43[v81] & 0xFFFFFFFFFFFFFFF8);
        v42[v44] = 0;

        goto LABEL_54;
      }

LABEL_50:
      *v42 = *v43;
      v53 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
      v54 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v53 = *v54;
      v55 = ((v53 + v77) & v80);
      v56 = ((v54 + v77) & v80);
      v57 = (v56 + 7);
      *v55 = *v56;
      v55[1] = v56[1];
      v55[2] = v56[2];
      v55[3] = v56[3];
      v58 = (v55 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      LODWORD(v57) = *(v57 & 0xFFFFFFFFFFFFFFFCLL);
      *(v58 + 4) = *(v59 + 4);
      *v58 = v57;
      v60 = (v21 + 5 + v58) & v93;
      v61 = (v21 + 5 + v59) & v93;
      v62 = *(v87 + 16);

      v62(v60, v61, v94);
      *(v60 + v92) = *(v61 + v92);
      v63 = (v60 + v92) & 0xFFFFFFFFFFFFFFFCLL;
      v64 = (v61 + v92) & 0xFFFFFFFFFFFFFFFCLL;
      v65 = *(v64 + 4);
      *(v63 + 8) = *(v64 + 8);
      *(v63 + 4) = v65;
      v42[v44] = 1;
      goto LABEL_54;
    }

LABEL_31:

    (*(v87 + 8))((v21 + ((((v77 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) & v80) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v93, v94);
    goto LABEL_35;
  }

LABEL_54:
  v72 = &v42[v44 + 8] & 0xFFFFFFFFFFFFFFF8;
  v73 = &v43[v44 + 8] & 0xFFFFFFFFFFFFFFF8;
  if (v72 != v73)
  {
    v74 = *(v72 + 17);
    if (v74 >= 2)
    {
      v74 = *v72 + 2;
    }

    if (v74 == 1)
    {
    }

    v75 = *(v73 + 17);
    if (v75 >= 2)
    {
      v75 = *v73 + 2;
    }

    if (v75 == 1)
    {
      *v72 = *v73;
      *(v72 + 8) = *(v73 + 8);
      *(v72 + 16) = *(v73 + 16);
      *(v72 + 17) = 1;
    }

    else
    {
      *v72 = *v73;
      *(v72 + 8) = *(v73 + 8);
      *(v72 + 17) = 0;
    }
  }

  (v89)((v88 + 18 + v72) & v96, (v88 + 18 + v73) & v96, v90);
  *(((v88 + 18 + v72) & v96) + v95) = *(((v88 + 18 + v73) & v96) + v95);
  return a1;
}

void *assignWithCopy for SearchEnvironmentWritingModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 24);
  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  *v15 = *v16;
  v15[4] = v16[4];
  v17 = *(a3 + 20);
  v18 = a1 + v17;
  v19 = a2 + v17;
  *(a1 + v17) = *(a2 + v17);

  *(v18 + 1) = *(v19 + 1);

  type metadata accessor for Binding<AttributedString>();
  v13(&v18[*(v20 + 32)], &v19[*(v20 + 32)], v12);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

_BYTE *assignWithCopy for SearchPrimitiveModifier.BaseSearchImplementation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 | 3;
  v81 = *(a3 + 16);
  v82 = a1;
  v10 = *(v81 - 8);
  v11 = *(v10 + 80);
  v12 = v8 | v11 | 7;
  v13 = &a1[v12 + 1] & ~v12;
  v14 = &a2[v12 + 1] & ~v12;
  if (v13 == v14)
  {
    v15 = *(v7 + 64) + ((v8 + 9) & ~v8);
    v79 = (v15 & 0xFFFFFFFFFFFFFFF8) + 24;
    v80 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = (v8 + 16) & ~v9;
    goto LABEL_45;
  }

  v17 = v8 + 9;
  v76 = *(v7 + 64);
  v18 = v76 + ((v8 + 9) & ~v8);
  v80 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v78 = (v8 + 16) & ~v9;
  v79 = (v18 & 0xFFFFFFFFFFFFFFF8) + 24;
  v75 = v19;
  if (v19 + v78 <= v79)
  {
    v20 = (v18 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v20 = v19 + v78;
  }

  v21 = *(v13 + v20);
  v22 = v21 - 2;
  if (v21 >= 2)
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
        v24 = *v13;
        if (v20 >= 4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v23 == 3)
        {
          v24 = *v13 | (*(v13 + 2) << 16);
          if (v20 < 4)
          {
            goto LABEL_21;
          }

LABEL_19:
          v21 = v24 + 2;
          goto LABEL_22;
        }

        v24 = *v13;
        if (v20 >= 4)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v21 = (v24 | (v22 << (8 * v20))) + 2;
      goto LABEL_22;
    }

    if (!v23)
    {
      goto LABEL_22;
    }

    v24 = *v13;
    if (v20 < 4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_22:
  v25 = ~v8;
  v26 = ~v9;
  v77 = v6;
  if (v21 == 1)
  {
    v73 = ~v9;
    v74 = v20;
    v27 = v6;

    v17 = v8 + 9;
    v25 = ~v8;
    v26 = v73;
    v28 = v27;
    v20 = v74;
    (*(v7 + 8))((v8 + ((((v8 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v73) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v8, v28);
  }

  else
  {
    (*(v7 + 8))((v17 + v13) & v25, v6);
  }

  v29 = *(v14 + v20);
  v30 = v29 - 2;
  if (v29 >= 2)
  {
    if (v20 <= 3)
    {
      v31 = v20;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_39;
      }

      v32 = *v14;
      if (v20 < 4)
      {
LABEL_42:
        if ((v32 | (v30 << (8 * v20))) != 0xFFFFFFFF)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    else if (v31 == 2)
    {
      v32 = *v14;
      if (v20 < 4)
      {
        goto LABEL_42;
      }
    }

    else if (v31 == 3)
    {
      v32 = *v14 | (*(v14 + 2) << 16);
      if (v20 < 4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v32 = *v14;
      if (v20 < 4)
      {
        goto LABEL_42;
      }
    }

    v29 = v32 + 2;
  }

LABEL_39:
  if (v29 != 1)
  {
LABEL_43:
    *v13 = *v14;
    *(v13 + 1) = *(v14 + 1);
    *(v13 + 2) = *(v14 + 2);
    *(v13 + 3) = *(v14 + 3);
    v47 = *(v14 + 4);
    *(v13 + 8) = *(v14 + 8);
    *(v13 + 4) = v47;
    v48 = v17;
    v49 = (v17 + v13) & v25;
    v50 = (v48 + v14) & v25;
    (*(v7 + 16))(v49, v50, v77);
    *(v76 + v49) = *(v76 + v50);
    v51 = (v76 + v49) & 0xFFFFFFFFFFFFFFFCLL;
    v52 = (v76 + v50) & 0xFFFFFFFFFFFFFFFCLL;
    v53 = *(v52 + 4);
    *(v51 + 8) = *(v52 + 8);
    *(v51 + 4) = v53;
    *((v75 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v75 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(v13 + v20) = 0;

    goto LABEL_44;
  }

LABEL_40:
  *v13 = *v14;
  v33 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = ((v33 + v8 + 8) & v26);
  v36 = ((v34 + v8 + 8) & v26);
  v37 = (v36 + 7);
  *v35 = *v36;
  v35[1] = v36[1];
  v35[2] = v36[2];
  v35[3] = v36[3];
  v38 = (v35 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v37) = *(v37 & 0xFFFFFFFFFFFFFFFCLL);
  *(v38 + 4) = *(v39 + 4);
  *v38 = v37;
  v40 = v8 + 5;
  v41 = (v8 + 5 + v38) & v25;
  v42 = (v40 + v39) & v25;
  v43 = *(v7 + 16);

  v43(v41, v42, v77);
  *(v76 + v41) = *(v76 + v42);
  v44 = (v76 + v41) & 0xFFFFFFFFFFFFFFFCLL;
  v45 = (v76 + v42) & 0xFFFFFFFFFFFFFFFCLL;
  v46 = *(v45 + 4);
  *(v44 + 8) = *(v45 + 8);
  *(v44 + 4) = v46;
  *(v13 + v20) = 1;
LABEL_44:
  v16 = v78;
LABEL_45:
  v54 = v16 + v80 + 9;
  if (v54 <= v79)
  {
    v55 = v79;
  }

  else
  {
    v55 = v54;
  }

  v56 = ((v13 | 7) + v55 + 1) & 0xFFFFFFFFFFFFFFF8;
  v57 = ((v14 | 7) + v55 + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v56 != v57)
  {
    v58 = *(v56 + 17);
    if (v58 >= 2)
    {
      v58 = *v56 + 2;
    }

    if (v58 == 1)
    {
    }

    v59 = *(v57 + 17);
    if (v59 >= 2)
    {
      v59 = *v57 + 2;
    }

    if (v59 == 1)
    {
      *v56 = *v57;
      *(v56 + 8) = *(v57 + 8);
      *(v56 + 16) = *(v57 + 16);
      *(v56 + 17) = 1;
    }

    else
    {
      *v56 = *v57;
      *(v56 + 8) = *(v57 + 8);
      *(v56 + 17) = 0;
    }
  }

  (*(v10 + 24))((v11 + 18 + v56) & ~v11, (v11 + 18 + v57) & ~v11, v81);
  v60 = *(v10 + 64);
  *(v60 + ((v11 + 18 + v56) & ~v11)) = *(v60 + ((v11 + 18 + v57) & ~v11));
  v61 = ((v11 + (v55 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v11) + v60 + 1;
  v62 = ((v13 | 7) + v61) & 0xFFFFFFFFFFFFFFF8;
  v63 = ((v14 | 7) + v61) & 0xFFFFFFFFFFFFFFF8;
  *v62 = *v63;
  v64 = *(v63 + 8);
  if (*(v62 + 8))
  {
    if (v64)
    {
      v65 = *(v63 + 16);
      *(v62 + 8) = v64;
      *(v62 + 16) = v65;

      goto LABEL_66;
    }

    outlined destroy of TriggerSubmitAction(v62 + 8);
  }

  else if (v64)
  {
    v66 = *(v63 + 16);
    *(v62 + 8) = v64;
    *(v62 + 16) = v66;

    goto LABEL_66;
  }

  *(v62 + 8) = *(v63 + 8);
LABEL_66:
  v67 = (v62 + 31) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v63 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (v67 != v68)
  {
    outlined destroy of Environment<ToolbarItemPlacement?>.Content((v62 + 31) & 0xFFFFFFFFFFFFFFF8);
    if (*(v68 + 41))
    {
      if (*(v68 + 40) == 1)
      {
        v69 = *(v68 + 24);
        *(v67 + 24) = v69;
        *(v67 + 32) = *(v68 + 32);
        (**(v69 - 8))((v62 + 31) & 0xFFFFFFFFFFFFFFF8, v68);
        *(v67 + 40) = 1;
      }

      else
      {
        v70 = *v68;
        v71 = *(v68 + 16);
        *(v67 + 25) = *(v68 + 25);
        *v67 = v70;
        *(v67 + 16) = v71;
      }

      *(v67 + 41) = 1;
    }

    else
    {
      *v67 = *v68;
      *(v67 + 41) = 0;
    }
  }

  return v82;
}

uint64_t assignWithCopy for SearchOverlayView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 32);
      *(a1 + 32) = v5;
      *(a1 + 40) = *(a2 + 40);
      (**(v5 - 8))(v4, a2 + 8);
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      *(v4 + 25) = *(a2 + 33);
      *v4 = v6;
      v4[1] = v7;
    }
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 51) = *(a2 + 51);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v16, v17);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  return a1;
}

unsigned __int8 *assignWithCopy for SearchPrimitiveModifier.SearchConfigModifier(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  if (a1 == a2)
  {
    goto LABEL_44;
  }

  v73 = type metadata accessor for AttributedString();
  v6 = *(v73 - 8);
  v7 = *(v6 + 80);
  v71 = *(v6 + 64);
  v8 = ((v7 + 9) & ~v7) + v71;
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  v11 = v7 | 3;
  if (v9 + ((v7 + 16) & ~(v7 | 3)) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9 + ((v7 + 16) & ~(v7 | 3));
  }

  v13 = a1[v12];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (a1[2] << 16);
          if (v12 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v13 = v16 + 2;
          goto LABEL_21;
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v13 = (v16 | (v14 << (8 * v12))) + 2;
      goto LABEL_21;
    }

    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_21:
  v17 = ~v7;
  v18 = ~v11;
  if (v13 == 1)
  {

    (*(v6 + 8))((v7 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v18) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v17, v73);
  }

  else
  {
    (*(v6 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 5) & v17, v73);
  }

  v19 = a2[v12];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v12 <= 3)
    {
      v21 = v12;
    }

    else
    {
      v21 = 4;
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        goto LABEL_38;
      }

      v22 = *a2;
      if (v12 < 4)
      {
LABEL_41:
        if ((v22 | (v20 << (8 * v12))) != 0xFFFFFFFF)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }
    }

    else if (v21 == 2)
    {
      v22 = *a2;
      if (v12 < 4)
      {
        goto LABEL_41;
      }
    }

    else if (v21 == 3)
    {
      v22 = *a2 | (a2[2] << 16);
      if (v12 < 4)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v22 = *a2;
      if (v12 < 4)
      {
        goto LABEL_41;
      }
    }

    v19 = v22 + 2;
  }

LABEL_38:
  if (v19 != 1)
  {
LABEL_42:
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    v37 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *v38;
    *(v37 + 4) = *(v38 + 4);
    *v37 = v39;
    v40 = (v37 + v7 + 5) & v17;
    v41 = (v38 + v7 + 5) & v17;
    (*(v6 + 16))(v40, v41, v73);
    *(v40 + v71) = *(v41 + v71);
    v42 = (v40 + v71) & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v41 + v71) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *(v43 + 4);
    *(v42 + 8) = *(v43 + 8);
    *(v42 + 4) = v44;
    *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
    a1[v12] = 0;

    goto LABEL_43;
  }

LABEL_39:
  *a1 = *a2;
  v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + v11 + 8) & v18);
  v26 = ((v24 + v11 + 8) & v18);
  v27 = (v26 + 7);
  *v25 = *v26;
  v25[1] = v26[1];
  v25[2] = v26[2];
  v25[3] = v26[3];
  v28 = (v25 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v27) = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
  *(v28 + 4) = *(v29 + 4);
  *v28 = v27;
  v30 = v7 + 5;
  v31 = (v7 + 5 + v28) & v17;
  v32 = (v30 + v29) & v17;
  v33 = *(v6 + 16);

  v33(v31, v32, v73);
  *(v31 + v71) = *(v32 + v71);
  v34 = (v31 + v71) & 0xFFFFFFFFFFFFFFFCLL;
  v35 = (v32 + v71) & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 4);
  *(v34 + 8) = *(v35 + 8);
  *(v34 + 4) = v36;
  a1[v12] = 1;
LABEL_43:
  v3 = a3;
LABEL_44:
  v45 = *(type metadata accessor for AttributedString() - 8);
  v46 = ((*(v45 + 80) + 9) & ~*(v45 + 80)) + *(v45 + 64);
  v47 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = (v46 & 0xFFFFFFFFFFFFFFF8) + 24;
  v49 = ((*(v45 + 80) & 0xFC ^ 0x1FCu) & (*(v45 + 80) + 16)) + v47 + 9;
  if (v49 <= v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v49;
  }

  v51 = &a1[v50 + 8] & 0xFFFFFFFFFFFFFFF8;
  v52 = &a2[v50 + 8] & 0xFFFFFFFFFFFFFFF8;
  if (v51 != v52)
  {
    v53 = *(v51 + 17);
    if (v53 >= 2)
    {
      v53 = *v51 + 2;
    }

    if (v53 == 1)
    {
    }

    v54 = *(v52 + 17);
    if (v54 >= 2)
    {
      v54 = *v52 + 2;
    }

    if (v54 == 1)
    {
      *v51 = *v52;
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 16) = *(v52 + 16);
      *(v51 + 17) = 1;
    }

    else
    {
      *v51 = *v52;
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 17) = 0;
    }
  }

  v55 = *(*(v3 + 16) - 8);
  v56 = v55 + 24;
  v57 = *(v55 + 80);
  v58 = (v51 + v57 + 18) & ~v57;
  (*(v55 + 24))(v58, (v52 + v57 + 18) & ~v57);
  v59 = *(v56 + 40);
  *(v58 + v59) = *(((v52 + v57 + 18) & ~v57) + v59);
  v60 = v59 + (((v50 & 0xFFFFFFFFFFFFFFF8) + v57 + 26) & ~v57) + 1;
  v61 = &a2[v60];
  a1[v60] = a2[v60];
  v62 = &a1[v60] & 0xFFFFFFFFFFFFFFF8;
  v63 = v61 & 0xFFFFFFFFFFFFFFF8;
  *(v62 + 8) = *((v61 & 0xFFFFFFFFFFFFFFF8) + 8);
  v64 = v62 + 8;
  v65 = (v64 + 8);
  v67 = ((v61 & 0xFFFFFFFFFFFFFFF8) + 16);
  v66 = *v67;
  if (!*(v64 + 8))
  {
    if (v66)
    {
      v69 = *(v63 + 24);
      *(v64 + 8) = v66;
      *(v64 + 16) = v69;

      return a1;
    }

LABEL_64:
    *v65 = *v67;
    return a1;
  }

  if (!v66)
  {
    outlined destroy of TriggerSubmitAction(v64 + 8);
    goto LABEL_64;
  }

  v68 = *(v63 + 24);
  *(v64 + 8) = v66;
  *(v64 + 16) = v68;

  return a1;
}

uint64_t assignWithCopy for ToolbarSearchFieldStyle(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1);
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *a2;
      v6 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v5;
      *(a1 + 16) = v6;
    }
  }

  *(a1 + 41) = *(a2 + 41);
  return a1;
}

unsigned __int8 *assignWithCopy for SearchField(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v63 = type metadata accessor for AttributedString();
    v6 = *(v63 - 8);
    v7 = *(v6 + 80);
    v61 = *(v6 + 64);
    v8 = ((v7 + 9) & ~v7) + v61;
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 9;
    v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
    v11 = v7 | 3;
    if (v9 + ((v7 + 16) & ~(v7 | 3)) <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9 + ((v7 + 16) & ~(v7 | 3));
    }

    v13 = a1[v12];
    v14 = v13 - 2;
    if (v13 < 2)
    {
LABEL_21:
      v62 = a3;
      v17 = ~v7;
      v18 = ~v11;
      if (v13 == 1)
      {

        (*(v6 + 8))((v7 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v18) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v17, v63);
      }

      else
      {
        (*(v6 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 5) & v17, v63);
      }

      v19 = a2[v12];
      v20 = v19 - 2;
      if (v19 >= 2)
      {
        if (v12 <= 3)
        {
          v21 = v12;
        }

        else
        {
          v21 = 4;
        }

        if (v21 <= 1)
        {
          if (!v21)
          {
            goto LABEL_38;
          }

          v22 = *a2;
          if (v12 < 4)
          {
LABEL_41:
            if ((v22 | (v20 << (8 * v12))) != 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            goto LABEL_39;
          }
        }

        else if (v21 == 2)
        {
          v22 = *a2;
          if (v12 < 4)
          {
            goto LABEL_41;
          }
        }

        else if (v21 == 3)
        {
          v22 = *a2 | (a2[2] << 16);
          if (v12 < 4)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v22 = *a2;
          if (v12 < 4)
          {
            goto LABEL_41;
          }
        }

        v19 = v22 + 2;
      }

LABEL_38:
      if (v19 != 1)
      {
LABEL_42:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        v37 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v38 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v39 = *v38;
        *(v37 + 4) = *(v38 + 4);
        *v37 = v39;
        v40 = (v37 + v7 + 5) & v17;
        v41 = (v38 + v7 + 5) & v17;
        (*(v6 + 16))(v40, v41, v63);
        *(v40 + v61) = *(v41 + v61);
        v42 = (v40 + v61) & 0xFFFFFFFFFFFFFFFCLL;
        v43 = (v41 + v61) & 0xFFFFFFFFFFFFFFFCLL;
        v44 = *(v43 + 4);
        *(v42 + 8) = *(v43 + 8);
        *(v42 + 4) = v44;
        *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        a1[v12] = 0;

        goto LABEL_43;
      }

LABEL_39:
      *a1 = *a2;
      v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v24 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v23 = *v24;
      v25 = ((v23 + v11 + 8) & v18);
      v26 = ((v24 + v11 + 8) & v18);
      v27 = (v26 + 7);
      *v25 = *v26;
      v25[1] = v26[1];
      v25[2] = v26[2];
      v25[3] = v26[3];
      v28 = (v25 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      LODWORD(v27) = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
      *(v28 + 4) = *(v29 + 4);
      *v28 = v27;
      v30 = v7 + 5;
      v31 = (v7 + 5 + v28) & v17;
      v32 = (v30 + v29) & v17;
      v33 = *(v6 + 16);

      v33(v31, v32, v63);
      *(v31 + v61) = *(v32 + v61);
      v34 = (v31 + v61) & 0xFFFFFFFFFFFFFFFCLL;
      v35 = (v32 + v61) & 0xFFFFFFFFFFFFFFFCLL;
      v36 = *(v35 + 4);
      *(v34 + 8) = *(v35 + 8);
      *(v34 + 4) = v36;
      a1[v12] = 1;
LABEL_43:
      a3 = v62;
      goto LABEL_44;
    }

    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (a1[2] << 16);
          if (v12 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v13 = v16 + 2;
          goto LABEL_21;
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v13 = (v16 | (v14 << (8 * v12))) + 2;
      goto LABEL_21;
    }

    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_44:
  v45 = *(type metadata accessor for AttributedString() - 8);
  v46 = ((*(v45 + 80) + 9) & ~*(v45 + 80)) + *(v45 + 64);
  v47 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = (v46 & 0xFFFFFFFFFFFFFFF8) + 24;
  v49 = ((*(v45 + 80) & 0xFC ^ 0x1FCu) & (*(v45 + 80) + 16)) + v47 + 9;
  if (v49 <= v48)
  {
    v49 = v48;
  }

  v50 = v49 + 8;
  v51 = &a1[v50] & 0xFFFFFFFFFFFFFFF8;
  v52 = &a2[v50] & 0xFFFFFFFFFFFFFFF8;
  if (v51 != v52)
  {
    v53 = *(v51 + 17);
    if (v53 >= 2)
    {
      v53 = *v51 + 2;
    }

    if (v53 == 1)
    {
    }

    v54 = *(v52 + 17);
    if (v54 >= 2)
    {
      v54 = *v52 + 2;
    }

    if (v54 == 1)
    {
      *v51 = *v52;
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 16) = *(v52 + 16);
      *(v51 + 17) = 1;
    }

    else
    {
      *v51 = *v52;
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 17) = 0;
    }
  }

  v55 = *(*(a3 + 16) - 8);
  v56 = v55 + 24;
  v57 = *(v55 + 80);
  v58 = (v51 + v57 + 18) & ~v57;
  v59 = (v52 + v57 + 18) & ~v57;
  (*(v55 + 24))(v58, v59);
  *(v58 + *(v56 + 40)) = *(v59 + *(v56 + 40));
  return a1;
}

void *assignWithCopy for SearchFieldConfigurationReader(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10 + 8;
  v12 = *(v9 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v13 = (v11 & v12);
  v14 = ((v10 + 8 + v6) & v12);
  *v13 = *v14;
  v13[1] = v14[1];
  v13[2] = v14[2];
  v13[3] = v14[3];
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  LOBYTE(v14) = *(v16 + 4);
  *v15 = *v16;
  *(v15 + 4) = v14;
  v17 = (v10 + 5 + v15) & ~v10;
  v18 = (v10 + 5 + v16) & ~v10;
  v19 = v9 + 24;
  (*(v9 + 24))(v17, v18, v8);
  v20 = *(v19 + 40);
  *(v20 + v17) = *(v20 + v18);
  v21 = (v20 + v17) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v20 + v18) & 0xFFFFFFFFFFFFFFFCLL;
  *(v21 + 4) = *(v22 + 4);
  *(v21 + 8) = *(v22 + 8);
  v23 = ((v10 + 16) & v12) + ((v20 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (a1 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (a2 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v26 = *v27;

  *(v26 + 8) = *(v27 + 8);

  *(v26 + 16) = *(v27 + 16);
  v28 = ((v24 + 31) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v25 + 31) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;

  v31 = *(*(a3 + 24) - 8);
  (*(v31 + 24))((v28 + *(v31 + 80) + 16) & ~*(v31 + 80), (v29 + *(v31 + 80) + 16) & ~*(v31 + 80));
  return a1;
}

uint64_t assignWithCopy for ResolvedTextFieldStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      v5 = *(a2 + 40);
      v6 = *(a2 + 48);
      v7 = *(a2 + 56);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v14 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v14;
    }
  }

  else if (v4)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v15 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v15;
  }

  v16 = *(a2 + 72);
  v17 = *(a2 + 80);
  v18 = *(a2 + 88);
  v19 = *(a2 + 96);
  v20 = *(a2 + 104);
  v21 = *(a2 + 112);
  v22 = *(a2 + 120);
  v23 = *(a2 + 128);
  v71 = *(a2 + 136);
  v72 = *(a2 + 144);
  v73 = *(a2 + 152);
  v74 = *(a2 + 160);
  v75 = *(a2 + 168);
  v76 = *(a2 + 176);
  v78 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v16, v17, v18, v19, v20, v21, v22, v23, v71, v72, v73, v74, v75, v76, v78);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v28 = *(a1 + 104);
  v29 = *(a1 + 112);
  v30 = *(a1 + 120);
  v31 = *(a1 + 128);
  v32 = *(a1 + 136);
  v33 = *(a1 + 152);
  v34 = *(a1 + 168);
  v35 = *(a1 + 176);
  v36 = *(a1 + 180);
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  *(a1 + 112) = v21;
  *(a1 + 120) = v22;
  *(a1 + 128) = v23;
  *(a1 + 136) = v71;
  *(a1 + 144) = v72;
  *(a1 + 152) = v73;
  *(a1 + 160) = v74;
  *(a1 + 168) = v75;
  *(a1 + 176) = v76;
  *(a1 + 180) = v78;
  outlined consume of StateOrBinding<TextFieldState>(v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, v35, v36);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v38 = *(v37 + 56);
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  type metadata accessor for Binding<TextSelection?>(0);
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 48);
  LODWORD(v19) = v44(v39, 1, v41);
  v45 = v44(v40, 1, v42);
  if (v19)
  {
    if (!v45)
    {
      *v39 = *v40;
      *(v39 + 1) = *(v40 + 1);
      v46 = *(v42 + 32);
      v79 = &v39[v46];
      v77 = &v40[v46];
      v47 = type metadata accessor for TextSelection(0);
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);

      if (v49(v77, 1, v47))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v79, v77, *(*(v50 - 8) + 64));
      }

      else
      {
        v65 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v66 - 8) + 16))(v79, v77, v66);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v79, v77, *(*(v65 - 8) + 64));
        }

        v79[*(v47 + 20)] = v77[*(v47 + 20)];
        (*(v48 + 56))(v79, 0, 1, v47);
      }

      (*(v43 + 56))(v39, 0, 1, v42);
      return a1;
    }

    goto LABEL_14;
  }

  if (v45)
  {
    outlined destroy of TextSelection.Indices(v39, type metadata accessor for Binding<TextSelection?>);
LABEL_14:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v52 = *(*(v51 - 8) + 64);
    v53 = v39;
    v54 = v40;
LABEL_15:
    memcpy(v53, v54, v52);
    return a1;
  }

  *v39 = *v40;

  *(v39 + 1) = *(v40 + 1);

  v55 = *(v42 + 32);
  v56 = &v39[v55];
  v57 = &v40[v55];
  v58 = type metadata accessor for TextSelection(0);
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v61 = v60(v56, 1, v58);
  v62 = v60(v57, 1, v58);
  if (v61)
  {
    if (!v62)
    {
      v63 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v64 - 8) + 16))(v56, v57, v64);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v56, v57, *(*(v63 - 8) + 64));
      }

      v56[*(v58 + 20)] = v57[*(v58 + 20)];
      (*(v59 + 56))(v56, 0, 1, v58);
      return a1;
    }

    goto LABEL_24;
  }

  if (v62)
  {
    outlined destroy of TextSelection.Indices(v56, type metadata accessor for TextSelection);
LABEL_24:
    type metadata accessor for TextSelection?(0);
    v52 = *(*(v67 - 8) + 64);
    v53 = v56;
    v54 = v57;
    goto LABEL_15;
  }

  if (a1 != a2)
  {
    outlined destroy of TextSelection.Indices(v56, type metadata accessor for TextSelection.Indices);
    v69 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v70 - 8) + 16))(v56, v57, v70);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v56, v57, *(*(v69 - 8) + 64));
    }
  }

  v56[*(v58 + 20)] = v57[*(v58 + 20)];
  return a1;
}

char *assignWithCopy for SearchFieldConfiguration.Data(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *&a2[v9];
  v13 = *&a2[v9 + 8];
  v14 = a2[v9 + 16];
  outlined copy of Text.Storage(v12, v13, v14);
  v15 = *v10;
  v16 = *(v10 + 1);
  v17 = v10[16];
  *v10 = v12;
  *(v10 + 1) = v13;
  v10[16] = v14;
  outlined consume of Text.Storage(v15, v16, v17);
  *(v10 + 3) = *(v11 + 3);

  v18 = *(a3 + 24);
  v19 = &a1[v18];
  v20 = &a2[v18];
  v21 = a1[v18 + 8];
  v22 = v20[8];
  if (v21 == 255)
  {
    if (v22 == 255)
    {
      v30 = *v20;
      *(v19 + 8) = v20[8];
      *v19 = v30;
    }

    else
    {
      v27 = *v20;
      v28 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(v27, v22 & 1);
      *v19 = v27;
      *(v19 + 8) = v28;
    }
  }

  else if (v22 == 255)
  {
    outlined destroy of PlatformItemCollection(v19);
    v29 = v20[8];
    *v19 = *v20;
    *(v19 + 8) = v29;
  }

  else
  {
    v23 = *v20;
    v24 = v22 & 1;
    outlined copy of PlatformItemCollection.Storage(v23, v22 & 1);
    v25 = *v19;
    v26 = *(v19 + 8);
    *v19 = v23;
    *(v19 + 8) = v24;
    outlined consume of PlatformItemCollection.Storage(v25, v26);
  }

  return a1;
}

void *assignWithCopy for ToolbarSearchFieldStyle.Implementation(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  v21 = *(a2 + v17 + 8);
  if (v20 == 255)
  {
    if (v21 == 255)
    {
      v29 = *v19;
      *(v18 + 8) = v19[8];
      *v18 = v29;
    }

    else
    {
      v26 = *v19;
      v27 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v21 & 1);
      *v18 = v26;
      *(v18 + 8) = v27;
    }
  }

  else if (v21 == 255)
  {
    outlined destroy of PlatformItemCollection(v18);
    v28 = v19[8];
    *v18 = *v19;
    *(v18 + 8) = v28;
  }

  else
  {
    v22 = *v19;
    v23 = v21 & 1;
    outlined copy of PlatformItemCollection.Storage(v22, v21 & 1);
    v24 = *v18;
    v25 = *(v18 + 8);
    *v18 = v22;
    *(v18 + 8) = v23;
    outlined consume of PlatformItemCollection.Storage(v24, v25);
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v30 = v16[8];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a2 + v30);
  v34 = *(a2 + v30 + 8);
  v35 = *(a2 + v30 + 16);
  outlined copy of Text.Storage(v33, v34, v35);
  v36 = *v31;
  v37 = *(v31 + 1);
  v38 = v31[16];
  *v31 = v33;
  *(v31 + 1) = v34;
  v31[16] = v35;
  outlined consume of Text.Storage(v36, v37, v38);
  *(v31 + 3) = *(v32 + 3);

  v39 = a3[5];
  v40 = a1 + v39;
  v41 = a2 + v39;
  v42 = *v41;
  LOBYTE(v34) = v41[8];
  outlined copy of Environment<Selector?>.Content(*v41, v34);
  v43 = *v40;
  v44 = v40[8];
  *v40 = v42;
  v40[8] = v34;
  outlined consume of Environment<Selector?>.Content(v43, v44);
  v45 = a3[6];
  v46 = a1 + v45;
  v47 = a2 + v45;
  v48 = *v47;
  LOBYTE(v34) = v47[8];
  outlined copy of Environment<Selector?>.Content(*v47, v34);
  v49 = *v46;
  v50 = v46[8];
  *v46 = v48;
  v46[8] = v34;
  outlined consume of Environment<Selector?>.Content(v49, v50);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v51 = a3[8];
  v52 = a1 + v51;
  v53 = a2 + v51;
  v54 = *v53;
  LOBYTE(v34) = v53[8];
  outlined copy of Environment<Selector?>.Content(*v53, v34);
  v55 = *v52;
  v56 = v52[8];
  *v52 = v54;
  v52[8] = v34;
  outlined consume of Environment<Selector?>.Content(v55, v56);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for ToolbarSearchFieldStyle.Implementation();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = *(v4 + 32);
  v6 = v5 + *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = type metadata accessor for SearchFieldConfiguration(0);
  v9 = v0 + v2 + *(v8 + 24);
  v10 = *(v9 + 8);
  if (v10 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v9, v10 & 1);
  }

  outlined consume of Text.Storage(*(v3 + *(v8 + 32)), *(v3 + *(v8 + 32) + 8), *(v3 + *(v8 + 32) + 16));

  outlined consume of Environment<Selector?>.Content(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  outlined consume of Environment<Selector?>.Content(*(v3 + v1[6]), *(v3 + v1[6] + 8));
  outlined consume of Environment<Selector?>.Content(*(v3 + v1[8]), *(v3 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm()
{
  v1 = type metadata accessor for ToolbarSearchFieldStyle.Implementation();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  type metadata accessor for Binding<SearchFieldState>(0);
  v6 = *(v5 + 32);
  v7 = v6 + *(type metadata accessor for SearchFieldState(0) + 36);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = type metadata accessor for SearchFieldConfiguration(0);
  v10 = v4 + *(v9 + 24);
  v11 = *(v10 + 8);
  if (v11 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v10, v11 & 1);
  }

  outlined consume of Text.Storage(*(v4 + *(v9 + 32)), *(v4 + *(v9 + 32) + 8), *(v4 + *(v9 + 32) + 16));

  outlined consume of Environment<Selector?>.Content(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  outlined consume of Environment<Selector?>.Content(*(v4 + v1[6]), *(v4 + v1[6] + 8));
  outlined consume of Environment<Selector?>.Content(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_0(uint64_t (*a1)(void, uint64_t *))
{
  v3 = *(v1 + 40);
  v11 = *(v1 + 16);
  v2 = v11;
  v12 = *(v1 + 24);
  v10 = v12;
  v13 = v3;
  v4 = a1(0, &v11);
  v5 = v1 + ((*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80));
  (*(*(v2 - 8) + 8))(v5, v2);
  v6 = v5 + *(v4 + 52);
  (*(*(v10 - 8) + 8))(v6, v10);
  v7 = type metadata accessor for NavigationDestinationPayload();
  v8 = v6 + v7[7];
  if (*(v8 + 24) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  outlined consume of StateOrBinding<Bool>(*(v6 + v7[10]), *(v6 + v7[10] + 8), *(v6 + v7[10] + 16), *(v6 + v7[10] + 17));
  if (*(v6 + v7[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

void *assignWithCopy for UIKitSearchBarAdaptor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  v21 = *(a2 + v17 + 8);
  if (v20 == 255)
  {
    if (v21 == 255)
    {
      v29 = *v19;
      *(v18 + 8) = v19[8];
      *v18 = v29;
    }

    else
    {
      v26 = *v19;
      v27 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v21 & 1);
      *v18 = v26;
      *(v18 + 8) = v27;
    }
  }

  else if (v21 == 255)
  {
    outlined destroy of PlatformItemCollection(v18);
    v28 = v19[8];
    *v18 = *v19;
    *(v18 + 8) = v28;
  }

  else
  {
    v22 = *v19;
    v23 = v21 & 1;
    outlined copy of PlatformItemCollection.Storage(v22, v21 & 1);
    v24 = *v18;
    v25 = *(v18 + 8);
    *v18 = v22;
    *(v18 + 8) = v23;
    outlined consume of PlatformItemCollection.Storage(v24, v25);
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v30 = v16[8];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a2 + v30);
  v34 = *(a2 + v30 + 8);
  v35 = *(a2 + v30 + 16);
  outlined copy of Text.Storage(v33, v34, v35);
  v36 = *v31;
  v37 = *(v31 + 1);
  v38 = v31[16];
  *v31 = v33;
  *(v31 + 1) = v34;
  v31[16] = v35;
  outlined consume of Text.Storage(v36, v37, v38);
  *(v31 + 3) = *(v32 + 3);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithCopy for SearchToolbarItem(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  v21 = *(a2 + v17 + 8);
  if (v20 == 255)
  {
    if (v21 == 255)
    {
      v29 = *v19;
      *(v18 + 8) = v19[8];
      *v18 = v29;
    }

    else
    {
      v26 = *v19;
      v27 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v21 & 1);
      *v18 = v26;
      *(v18 + 8) = v27;
    }
  }

  else if (v21 == 255)
  {
    outlined destroy of PlatformItemCollection(v18);
    v28 = v19[8];
    *v18 = *v19;
    *(v18 + 8) = v28;
  }

  else
  {
    v22 = *v19;
    v23 = v21 & 1;
    outlined copy of PlatformItemCollection.Storage(v22, v21 & 1);
    v24 = *v18;
    v25 = *(v18 + 8);
    *v18 = v22;
    *(v18 + 8) = v23;
    outlined consume of PlatformItemCollection.Storage(v24, v25);
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v30 = v16[8];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a2 + v30);
  v34 = *(a2 + v30 + 8);
  v35 = *(a2 + v30 + 16);
  outlined copy of Text.Storage(v33, v34, v35);
  v36 = *v31;
  v37 = *(v31 + 1);
  v38 = v31[16];
  *v31 = v33;
  *(v31 + 1) = v34;
  v31[16] = v35;
  outlined consume of Text.Storage(v36, v37, v38);
  *(v31 + 3) = *(v32 + 3);

  *(a1 + a3[5]) = *(a2 + a3[5]);
  v39 = a3[6];
  v40 = a1 + v39;
  v41 = a2 + v39;
  v42 = *(a1 + v39);
  v43 = *(a2 + v39);
  if (v42)
  {
    if (v43)
    {
      v44 = *(v41 + 1);
      *v40 = v43;
      *(v40 + 8) = v44;
      *(v40 + 16) = *(v41 + 4);
      *(v40 + 24) = *(v41 + 3);
      v45 = *(v41 + 4);
      v46 = *(v40 + 32);
      *(v40 + 32) = v45;
      v47 = v45;

      *(v40 + 40) = *(v41 + 5);

      *(v40 + 48) = *(v41 + 12);
      *(v40 + 56) = *(v41 + 7);

      *(v40 + 64) = *(v41 + 16);
      *(v40 + 68) = *(v41 + 17);
      *(v40 + 72) = *(v41 + 18);
      *(v40 + 76) = *(v41 + 19);
      *(v40 + 80) = *(v41 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v40);
      v51 = *(v41 + 1);
      *v40 = *v41;
      *(v40 + 16) = v51;
      v53 = *(v41 + 3);
      v52 = *(v41 + 4);
      v54 = *(v41 + 2);
      *(v40 + 80) = *(v41 + 10);
      *(v40 + 48) = v53;
      *(v40 + 64) = v52;
      *(v40 + 32) = v54;
    }
  }

  else if (v43)
  {
    v48 = *(v41 + 1);
    *v40 = v43;
    *(v40 + 8) = v48;
    *(v40 + 16) = *(v41 + 4);
    *(v40 + 24) = *(v41 + 3);
    v49 = *(v41 + 4);
    *(v40 + 32) = v49;
    *(v40 + 40) = *(v41 + 5);
    *(v40 + 48) = *(v41 + 12);
    *(v40 + 56) = *(v41 + 7);
    *(v40 + 64) = *(v41 + 16);
    *(v40 + 68) = *(v41 + 17);
    *(v40 + 72) = *(v41 + 18);
    *(v40 + 76) = *(v41 + 19);
    *(v40 + 80) = *(v41 + 10);
    v50 = v49;
  }

  else
  {
    v55 = *(v41 + 1);
    *v40 = *v41;
    *(v40 + 16) = v55;
    v56 = *(v41 + 2);
    v57 = *(v41 + 3);
    v58 = *(v41 + 4);
    *(v40 + 80) = *(v41 + 10);
    *(v40 + 48) = v57;
    *(v40 + 64) = v58;
    *(v40 + 32) = v56;
  }

  v59 = a3[7];
  v60 = a1 + v59;
  v61 = a2 + v59;
  v62 = *(a1 + v59);
  v63 = *(a2 + v59);
  if (v62)
  {
    if (v63)
    {
      v64 = *(v61 + 1);
      *v60 = v63;
      *(v60 + 8) = v64;
      *(v60 + 16) = *(v61 + 4);
      *(v60 + 24) = *(v61 + 3);
      v65 = *(v61 + 4);
      v66 = *(v60 + 32);
      *(v60 + 32) = v65;
      v67 = v65;

      *(v60 + 40) = *(v61 + 5);

      *(v60 + 48) = *(v61 + 12);
      *(v60 + 56) = *(v61 + 7);

      *(v60 + 64) = *(v61 + 16);
      *(v60 + 68) = *(v61 + 17);
      *(v60 + 72) = *(v61 + 18);
      *(v60 + 76) = *(v61 + 19);
      *(v60 + 80) = *(v61 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v60);
      v71 = *(v61 + 1);
      *v60 = *v61;
      *(v60 + 16) = v71;
      v73 = *(v61 + 3);
      v72 = *(v61 + 4);
      v74 = *(v61 + 2);
      *(v60 + 80) = *(v61 + 10);
      *(v60 + 48) = v73;
      *(v60 + 64) = v72;
      *(v60 + 32) = v74;
    }
  }

  else if (v63)
  {
    v68 = *(v61 + 1);
    *v60 = v63;
    *(v60 + 8) = v68;
    *(v60 + 16) = *(v61 + 4);
    *(v60 + 24) = *(v61 + 3);
    v69 = *(v61 + 4);
    *(v60 + 32) = v69;
    *(v60 + 40) = *(v61 + 5);
    *(v60 + 48) = *(v61 + 12);
    *(v60 + 56) = *(v61 + 7);
    *(v60 + 64) = *(v61 + 16);
    *(v60 + 68) = *(v61 + 17);
    *(v60 + 72) = *(v61 + 18);
    *(v60 + 76) = *(v61 + 19);
    *(v60 + 80) = *(v61 + 10);
    v70 = v69;
  }

  else
  {
    v75 = *(v61 + 1);
    *v60 = *v61;
    *(v60 + 16) = v75;
    v76 = *(v61 + 2);
    v77 = *(v61 + 3);
    v78 = *(v61 + 4);
    *(v60 + 80) = *(v61 + 10);
    *(v60 + 48) = v77;
    *(v60 + 64) = v78;
    *(v60 + 32) = v76;
  }

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v79 = a3[9];
  v80 = a1 + v79;
  v81 = a2 + v79;
  v82 = *(a1 + v79);
  v83 = *(a2 + v79);
  if (v82)
  {
    if (v83)
    {
      v84 = *(v81 + 1);
      *v80 = v83;
      *(v80 + 8) = v84;
      *(v80 + 16) = *(v81 + 4);
      *(v80 + 24) = *(v81 + 3);
      v85 = *(v81 + 4);
      v86 = *(v80 + 32);
      *(v80 + 32) = v85;
      v87 = v85;

      *(v80 + 40) = *(v81 + 5);

      *(v80 + 48) = *(v81 + 12);
      *(v80 + 56) = *(v81 + 7);

      *(v80 + 64) = *(v81 + 16);
      *(v80 + 68) = *(v81 + 17);
      *(v80 + 72) = *(v81 + 18);
      *(v80 + 76) = *(v81 + 19);
      *(v80 + 80) = *(v81 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v80);
      v91 = *(v81 + 1);
      *v80 = *v81;
      *(v80 + 16) = v91;
      v93 = *(v81 + 3);
      v92 = *(v81 + 4);
      v94 = *(v81 + 2);
      *(v80 + 80) = *(v81 + 10);
      *(v80 + 48) = v93;
      *(v80 + 64) = v92;
      *(v80 + 32) = v94;
    }
  }

  else if (v83)
  {
    v88 = *(v81 + 1);
    *v80 = v83;
    *(v80 + 8) = v88;
    *(v80 + 16) = *(v81 + 4);
    *(v80 + 24) = *(v81 + 3);
    v89 = *(v81 + 4);
    *(v80 + 32) = v89;
    *(v80 + 40) = *(v81 + 5);
    *(v80 + 48) = *(v81 + 12);
    *(v80 + 56) = *(v81 + 7);
    *(v80 + 64) = *(v81 + 16);
    *(v80 + 68) = *(v81 + 17);
    *(v80 + 72) = *(v81 + 18);
    *(v80 + 76) = *(v81 + 19);
    *(v80 + 80) = *(v81 + 10);
    v90 = v89;
  }

  else
  {
    v95 = *(v81 + 1);
    *v80 = *v81;
    *(v80 + 16) = v95;
    v96 = *(v81 + 2);
    v97 = *(v81 + 3);
    v98 = *(v81 + 4);
    *(v80 + 80) = *(v81 + 10);
    *(v80 + 48) = v97;
    *(v80 + 64) = v98;
    *(v80 + 32) = v96;
  }

  return a1;
}

unint64_t assignWithCopy for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 24))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void type metadata accessor for Binding<AnyListSelection>()
{
  if (!lazy cache variable for type metadata for Binding<AnyListSelection>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AnyListSelection>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>)
  {
    type metadata accessor for NavigationDestinationResolverBase();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>);
    }
  }
}

uint64_t NavigationDestinationResolver.inputTypeTag.getter()
{
  result = dynamic_cast_existential_2_conditional(*(*v0 + 144));
  if (result)
  {
    return _typeName(_:qualified:)();
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NavigationSplitViewState.updatePreferredCompactColumn(_:newValue:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *result;
  v5 = *(result + 8);
  v7 = *(result + 16);
  v8 = *a2;
  v9 = *(v3 + 16);
  if (!v9)
  {
    v13 = *(v3 + 8);

    result = outlined consume of Binding<NavigationSplitViewColumn>?(v13, 0);
    *(v3 + 8) = v6;
    *(v3 + 16) = v5;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    v14 = v8 != 0;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 321) = 0u;
    goto LABEL_11;
  }

  v10 = *(v3 + 25);
  if (v10 != 3)
  {
    if (v5 != v9)
    {
      v15 = *(v3 + 8);

      result = outlined consume of Binding<NavigationSplitViewColumn>?(v15, v9);
      *(v3 + 8) = v6;
      *(v3 + 16) = v5;
      *(v3 + 24) = v7;
    }

    if (v8 == v10)
    {
      v11 = 0uLL;
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      v12 = 0x1FFFFFFFCLL;
      goto LABEL_9;
    }

    *(v3 + 25) = v8;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 321) = 0u;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    v14 = 1;
LABEL_11:
    *(a3 + 340) = v14;
    goto LABEL_12;
  }

  v11 = 0uLL;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  v12 = 0x1FFFFFFFELL;
LABEL_9:
  *(a3 + 152) = 0;
  *(a3 + 160) = v12;
  *(a3 + 184) = v11;
  *(a3 + 200) = v11;
  *(a3 + 216) = v11;
  *(a3 + 232) = v11;
  *(a3 + 168) = v11;
  *(a3 + 248) = v11;
  *(a3 + 264) = v11;
  *(a3 + 280) = v11;
  *(a3 + 296) = v11;
  *(a3 + 312) = v11;
  *(a3 + 321) = v11;
  *a3 = xmmword_18CD6A6D0;
  *(a3 + 16) = 2;
  *(a3 + 340) = 0;
LABEL_12:
  *(a3 + 344) = 0;
  return result;
}

unsigned int *storeEnumTagSinglePayload for ToolbarModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if (v6 > 0x7FFFFFFE)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *result = 0;
        *(result + 1) = 0;
        *result = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(result + 1) = a2;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

double NavigationColumnState.reestablishStateAfterPathReplacement(oldShadowPath:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v2 + 120, v18);
  if (v23)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v18);
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = v20;

    outlined destroy of NavigationRequest.Action?(v18, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    if (a1)
    {
      v6 = (*(*v5 + 96))(a1);

      if (v6)
      {
LABEL_6:
        v7 = 0;
        v8 = 1;
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v2 + 120, v18);
  if ((v23 & 1) == 0)
  {

    specialized Collection<>.dismiss(from:)(0, v21, v22);
  }

  outlined destroy of NavigationRequest.Action?(v18, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  outlined init with copy of NavigationColumnState.ColumnContent(v2 + 120, v18);
  if (v23)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v18);
  }

  else
  {
    outlined destroy of NavigationColumnState.ColumnContent(v2 + 120);
    v9 = v20;

    v15 = v18[2];
    v16 = v18[3];
    *v17 = v19[0];
    *&v17[9] = *(v19 + 9);
    v13 = v18[0];
    v14 = v18[1];
    *(v2 + 200) = 0;
    *(v2 + 184) = 0u;
    *(v2 + 168) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 208) = -1;
    *(v2 + 240) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(v2 + 120);
    v10 = MEMORY[0x1E69E7CC0];
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v2 + 152) = v15;
    *(v2 + 168) = v16;
    *(v2 + 184) = *v17;
    *(v2 + 193) = *&v17[9];
    *(v2 + 120) = v13;
    *(v2 + 136) = v14;
    *(v2 + 216) = v9;
    *(v2 + 224) = v10;
    *(v2 + 232) = v11;
    *(v2 + 240) = 0;
  }

  *(v2 + 352) = 0;
  v7 = 1;
  v8 = 2;
LABEL_14:
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0x1FFFFFFFCLL;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 321) = 0u;
  *(a2 + 340) = v7;
  *(a2 + 344) = 0;
  return result;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.equals(_:)()
{
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 56);
    v12 = *(v0 + 48);
    v19 = *(v0 + 16);
    v20 = v2;
    v21 = v3;
    v22 = v4;
    v23 = v12;
    v24 = v5;
    swift_beginAccess();
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    v10 = *(v1 + 48);
    v9 = *(v1 + 56);
    v13 = *(v1 + 16);
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = v10;
    v18 = v9;
    outlined copy of NavigationPath.Representation(v19, v2, v3, v4);

    outlined copy of NavigationPath.Representation(v13, v6, v7, v8);

    LOBYTE(v1) = static NavigationPath.== infix(_:_:)(&v19, &v13);
    outlined consume of NavigationPath.Representation(v13, v14, v15, v16);

    outlined consume of NavigationPath.Representation(v19, v20, v21, v22);
  }

  return v1 & 1;
}

uint64_t specialized static NavigationPath.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2;
  v57 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v58 = *(a2 + 32);
  v59 = *(a2 + 8);
  v11 = *a1 >> 62;
  v12 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    if (v11)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_12;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if (*(v2 + 16))
    {
      goto LABEL_12;
    }

    v12 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    if (*(v12 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_12;
  }

LABEL_10:
  v13 = v6 >> 62;
  if (v6 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    v13 = v6 >> 62;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  v22 = v8 >> 62;
  v23 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v9)
  {
    if (v22)
    {
      v54 = v13;
      v28 = __CocoaSet.count.getter();
      v22 = v8 >> 62;
      v13 = v54;
      if (v28)
      {
        goto LABEL_12;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if (*(v59 + 16))
    {
      goto LABEL_12;
    }

    v23 = v57 & 0xFFFFFFFFFFFFFF8;
    if (v57 >> 62)
    {
LABEL_50:
      v52 = v22;
      v55 = v13;
      v29 = __CocoaSet.count.getter();
      v22 = v52;
      v13 = v55;
      if (v29)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }
  }

  else if (v22)
  {
    goto LABEL_50;
  }

  if (*(v23 + 16))
  {
    goto LABEL_12;
  }

LABEL_35:
  v24 = v58 >> 62;
  if (v58 >> 62)
  {
    v53 = v22;
    v56 = v13;
    v30 = __CocoaSet.count.getter();
    v22 = v53;
    v13 = v56;
    v24 = v58 >> 62;
    if (!v30)
    {
LABEL_37:
      if (v5)
      {
        if (v11)
        {
          v31 = v22;
          v32 = v24;
          v33 = v13;
          v34 = __CocoaSet.count.getter();
          v13 = v33;
          v24 = v32;
          v22 = v31;
          v25 = v57;
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v25 = v57;
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }
        }

        if (!*(v2 + 16))
        {
          if (v4 >> 62)
          {
            v38 = v22;
            v39 = v24;
            v40 = v13;
            v41 = __CocoaSet.count.getter();
            v13 = v40;
            v24 = v39;
            v22 = v38;
            if (!v41)
            {
LABEL_58:
              if (v13)
              {
                v43 = v22;
                v44 = v24;
                v42 = __CocoaSet.count.getter();
                v24 = v44;
                v22 = v43;
              }

              else
              {
                v42 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v27 = v42 == 0;
LABEL_62:
              v45 = v8 & 0xFFFFFFFFFFFFFF8;
              if (v9)
              {
                if (v22)
                {
                  v47 = v24;
                  v48 = __CocoaSet.count.getter();
                  v24 = v47;
                  if (v48)
                  {
                    goto LABEL_70;
                  }
                }

                else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_70;
                }

                if (*(v59 + 16))
                {
                  goto LABEL_70;
                }

                v45 = v25 & 0xFFFFFFFFFFFFFF8;
                if (v25 >> 62)
                {
                  goto LABEL_73;
                }
              }

              else if (v22)
              {
LABEL_73:
                v49 = v24;
                v50 = __CocoaSet.count.getter();
                v24 = v49;
                if (!v50)
                {
                  goto LABEL_74;
                }

                goto LABEL_70;
              }

              if (!*(v45 + 16))
              {
LABEL_74:
                if (v24)
                {
                  v51 = __CocoaSet.count.getter();
                }

                else
                {
                  v51 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v46 = v51 == 0;
                goto LABEL_78;
              }

LABEL_70:
              v46 = 0;
LABEL_78:
              v15 = v27 ^ v46 ^ 1;
              return v15 & 1;
            }
          }

          else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if (v11)
        {
          v35 = v22;
          v36 = v24;
          v37 = v13;
          v26 = __CocoaSet.count.getter();
          v13 = v37;
          v24 = v36;
          v22 = v35;
        }

        else
        {
          v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v57;
        if (!v26)
        {
          goto LABEL_58;
        }
      }

LABEL_47:
      v27 = 0;
      goto LABEL_62;
    }
  }

  else if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

LABEL_12:
  v66 = v3;
  v67 = v2;
  v68 = v4;
  v69 = v5;
  v70 = v6;
  v71 = v7;
  v14 = NavigationPath.count.getter();
  v60 = v8;
  v61 = v59;
  v62 = v57;
  v63 = v9;
  v64 = v58;
  v65 = v10;
  if (v14 == NavigationPath.count.getter())
  {
    if (v5)
    {
      if (v9)
      {
        v66 = v3;
        v67 = v2;
        v68 = v4;
        v60 = v8;
        v61 = v59;
        v62 = v57;
        outlined copy of NavigationPath.Representation(v8, v59, v57, 1);
        outlined copy of NavigationPath.Representation(v3, v2, v4, 1);
        outlined copy of NavigationPath.Representation(v3, v2, v4, 1);
        outlined copy of NavigationPath.Representation(v8, v59, v57, 1);
        v15 = specialized static NavigationPath.CodableRepresentation.== infix(_:_:)(&v66, &v60);
        outlined consume of NavigationPath.Representation(v3, v2, v4, 1);
        outlined consume of NavigationPath.Representation(v8, v59, v57, 1);
        outlined consume of NavigationPath.Representation(v8, v59, v57, 1);
        v16 = v3;
        v17 = v2;
        v18 = v4;
        v19 = 1;
LABEL_20:
        outlined consume of NavigationPath.Representation(v16, v17, v18, v19);
        return v15 & 1;
      }
    }

    else if ((v9 & 1) == 0)
    {
      outlined copy of NavigationPath.Representation(v8, v59, v57, 0);
      outlined copy of NavigationPath.Representation(v3, v2, v4, 0);
      outlined copy of NavigationPath.Representation(v3, v2, v4, 0);
      outlined copy of NavigationPath.Representation(v8, v59, v57, 0);
      v15 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5(v3, v8);
      outlined consume of NavigationPath.Representation(v8, v59, v57, 0);
      outlined consume of NavigationPath.Representation(v3, v2, v4, 0);
      outlined consume of NavigationPath.Representation(v3, v2, v4, 0);
      v16 = v8;
      v17 = v59;
      v18 = v57;
      v19 = 0;
      goto LABEL_20;
    }

    outlined copy of NavigationPath.Representation(v3, v2, v4, v5);
    outlined copy of NavigationPath.Representation(v8, v59, v57, v9);
    outlined consume of NavigationPath.Representation(v3, v2, v4, v5);
    outlined consume of NavigationPath.Representation(v8, v59, v57, v9);
    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t initializeWithCopy for NavigationSplitViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
  }

  v5 = *(a2 + 32);
  *(a1 + 25) = *(a2 + 25);
  if (!v5)
  {
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 56);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_8:
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    goto LABEL_9;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  v7 = *(a2 + 56);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  *(a1 + 64) = *(a2 + 64);

LABEL_9:
  *(a1 + 65) = *(a2 + 65);
  return a1;
}

uint64_t NavigationColumnState.setSelection(from:splitViewState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of NavigationRequest.TargetedRequest(a1, v8);
  NavigationRequest.ListRequest.init(_:)(v8, v10);
  if (v11 == 1)
  {
    outlined destroy of NavigationRequest.Action?(v10, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14[8] = v10[8];
    v14[9] = v11;
    v14[10] = v12;
    v15 = v13;
    v14[4] = v10[4];
    v14[5] = v10[5];
    v14[6] = v10[6];
    v14[7] = v10[7];
    v14[0] = v10[0];
    v14[1] = v10[1];
    v14[2] = v10[2];
    v14[3] = v10[3];
    v5 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v5;
    v9 = *(a2 + 64);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    NavigationColumnState.updateListState(_:splitViewState:)(v14, v8, a3);
    return outlined destroy of NavigationRequest.ListRequest(v14);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchZipLocation()
{
  if (dispatch thunk of AnyLocation.isEqual(to:)())
  {
    return dispatch thunk of AnyLocation.isEqual(to:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationSplitViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL specialized static SearchFieldState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return v4;
    }
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return v4;
    }
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
    {
      return v4;
    }
  }

  v4 = a2[8];
  if (a1[8])
  {
    if (!a2[8])
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v12 = type metadata accessor for SearchFieldState(0);
  v15 = 0;
  if ((static AttributedString.== infix(_:_:)() & 1) != 0 && a1[*(v12 + 40)] == a2[*(v12 + 40)])
  {
    v13 = *(v12 + 44);
    v14 = *&a1[v13];
    if (v14 != -1 && v14 == *&a2[v13])
    {
      return 1;
    }
  }

  return v15;
}

double NavigationRequest.ListRequest.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = xmmword_18CD67BC0;
  v35 = 0;
  v4 = *(a1 + 200);
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    v5 = (a1 + 104);
    v6 = (a1 + 112);
    v7 = (a1 + 120);
    v8 = (a1 + 128);
    v4 = *(a1 + 136);
    v9 = (a1 + 144);
  }

  else
  {
    v5 = (a1 + 168);
    v6 = (a1 + 176);
    v7 = (a1 + 184);
    v8 = (a1 + 192);
    v9 = (a1 + 208);
  }

  if (v4 >> 62 == 1)
  {
    v10 = *v9;
    v11 = *v8;
    v12 = *v7;
    v13 = *v6;
    *(&v30 + 1) = *v5;
    *&v31 = v13;
    *(&v31 + 1) = v12;
    *&v32 = v11;
    BYTE8(v32) = v4 & 1;
    *&v33 = v10;
    outlined init with copy of NavigationRequest.Action?(a1 + 216, v21);
    if (v22 == 255)
    {
      outlined init with copy of NavigationRequest.Action(a1, &v24);
      if (v22 != 255)
      {
        outlined destroy of ToolbarItemPlacement.Role?(v21, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v28 = v21[4];
      v29 = v21[5];
      LOBYTE(v30) = v22;
      v24 = v21[0];
      v25 = v21[1];
      v26 = v21[2];
      v27 = v21[3];
    }

    outlined init with copy of NavigationRequest(a1, v21);
    outlined destroy of NavigationRequest.TargetedRequest(a1);
    v15 = v23;
    outlined destroy of NavigationRequest(v21);
    BYTE8(v33) = v15;
    v16 = v33;
    *(a2 + 128) = v32;
    *(a2 + 144) = v16;
    *(a2 + 160) = v34;
    *(a2 + 176) = v35;
    v17 = v29;
    *(a2 + 64) = v28;
    *(a2 + 80) = v17;
    v18 = v31;
    *(a2 + 96) = v30;
    *(a2 + 112) = v18;
    v19 = v25;
    *a2 = v24;
    *(a2 + 16) = v19;
    result = *&v26;
    v20 = v27;
    *(a2 + 32) = v26;
    *(a2 + 48) = v20;
  }

  else
  {
    outlined destroy of NavigationRequest.TargetedRequest(a1);
    result = 0.0;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 144) = 1;
    *(a2 + 152) = 0u;
    *(a2 + 168) = 0u;
  }

  return result;
}

uint64_t outlined init with copy of NavigationRequest.Action?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVySiGMaTm_0(0, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for InsetListLabelStyle.StyleView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t NavigationColumnState.updateListState(_:splitViewState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 48))
  {
    v5 = *(a2 + 48);
    v19 = *(a2 + 32);
    v20 = v5;
    v21 = *(a2 + 64);
    v6 = *(a2 + 16);
    v17 = *a2;
    v18 = v6;
    return NavigationListState.update(for:splitViewState:)(result, &v17, a3);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v8 = result;
  v9 = a3;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC0egF0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SayAC7BindingVySbGGTt0g5Tf4g_n(v7);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC03AnyG9SelectionVTt0g5Tf4g_n(v7);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SbTt0g5Tf4g_n(v7);
  outlined consume of NavigationListState?(*(v3 + 40), *(v3 + 48));
  a3 = v9;
  result = v8;
  *(v3 + 40) = 0;
  *(v3 + 48) = v10;
  *(v3 + 56) = v11;
  *(v3 + 64) = v12;
  v14 = MEMORY[0x1E69E7CD0];
  *(v3 + 72) = v13;
  *(v3 + 80) = v14;
  *(v3 + 88) = 0;
  v15 = *(a2 + 48);
  v19 = *(a2 + 32);
  v20 = v15;
  v21 = *(a2 + 64);
  v16 = *(a2 + 16);
  v17 = *a2;
  v18 = v16;
  if (v10)
  {
    return NavigationListState.update(for:splitViewState:)(result, &v17, a3);
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for InsetListLabelStyle.StyleView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC0egF0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, NavigationListState.Selection>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 120)
    {
      outlined init with copy of (String, TabEntry)(i, v17, &lazy cache variable for type metadata for (NavigationState.ListKey, NavigationListState.Selection), &type metadata for NavigationState.ListKey, &type metadata for NavigationListState.Selection, type metadata accessor for (Badge, Spacer));
      v19 = v17[0];
      v20 = v17[1];
      v21 = v17[2];
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v19);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v20;
      v9 = v21;
      *v7 = v19;
      v7[1] = v8;
      v7[2] = v9;
      v10 = v3[7] + 72 * result;
      v11 = v17[4];
      v12 = v17[5];
      v13 = v17[6];
      *(v10 + 64) = v18;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      *v10 = v17[3];
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {
        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SayAC7BindingVySbGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>, type metadata accessor for [Binding<Bool>], lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 2);
      v16 = *(i - 3);
      v17 = v8;
      LOBYTE(v18) = v5;
      *(&v18 + 1) = v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 48 * result);
      v12 = v17;
      *v11 = v16;
      v11[1] = v12;
      v11[2] = v18;
      *(v3[7] + 8 * result) = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;

      if (!--v1)
      {
        return v3;
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

uint64_t NavigationListState.update(for:splitViewState:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a2[3];
  v68 = a2[2];
  v69 = v7;
  v70 = *(a2 + 32);
  v8 = a2[1];
  v66 = *a2;
  v67 = v8;
  result = outlined init with copy of NavigationRequest.Action(a1, &v55);
  if (v60 > 7u)
  {
    if (v60 == 8)
    {
      v21 = v55;
      v22 = *(&v55 + 1);
      v23 = *(a1 + 120);
      v65[0] = *(a1 + 104);
      v65[1] = v23;
      v65[2] = *(a1 + 136);
      v24 = *(v3 + 8);
      if (!*(v24 + 16))
      {
        goto LABEL_22;
      }

      result = specialized __RawDictionaryStorage.find<A>(_:)(v65);
      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      outlined init with copy of NavigationListState.Selection(*(v24 + 56) + 72 * result, __dst);
      if (*&__dst[4] == v22)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&__src[0] = *(v4 + 32);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v65, isUniquelyReferenced_nonNull_native);
        result = outlined destroy of NavigationListState.Selection(__dst);
        *(v4 + 32) = *&__src[0];
        v26 = 0uLL;
        *(a3 + 136) = 0u;
        *(a3 + 120) = 0u;
        *(a3 + 104) = 0u;
        *(a3 + 88) = 0u;
        *(a3 + 72) = 0u;
        *(a3 + 56) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 24) = 0u;
        v27 = 0x1FFFFFFFCLL;
        goto LABEL_23;
      }

      v15 = __dst;
      goto LABEL_21;
    }

    if (v60 == 10)
    {
      __src[0] = v55;
      __src[1] = v56;
      *&__src[2] = v57;
      __dst[2] = v68;
      __dst[3] = v69;
      LOWORD(__dst[4]) = v70;
      __dst[0] = v66;
      __dst[1] = v67;
      NavigationListState.presentValue(_:activeBinding:selectionPopsSubsequentColumn:request:splitViewState:)(__src, *(&v57 + 1), v58, v59, SBYTE1(v59), a1, a3);
      outlined destroy of AnyNavigationLinkPresentedValue(__src);
    }

LABEL_11:
    result = outlined destroy of NavigationRequest.Action(&v55);
LABEL_22:
    v26 = 0uLL;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    v27 = 0x1FFFFFFFELL;
LABEL_23:
    *(a3 + 152) = 0;
    *(a3 + 160) = v27;
    *(a3 + 184) = v26;
    *(a3 + 200) = v26;
    *(a3 + 216) = v26;
    *(a3 + 232) = v26;
    *(a3 + 248) = v26;
    *(a3 + 168) = v26;
    *(a3 + 264) = v26;
    *(a3 + 280) = v26;
    *(a3 + 296) = v26;
    *(a3 + 312) = v26;
    *(a3 + 321) = v26;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    *(a3 + 340) = 0;
    return result;
  }

  if (v60 == 2)
  {
    v46 = v59;
    __src[0] = v55;
    __src[1] = v56;
    __src[2] = v57;
    *&__src[3] = v58;
    v16 = *(a1 + 120);
    v61[0] = *(a1 + 104);
    v61[1] = v16;
    v61[2] = *(a1 + 136);
    v17 = *(v3 + 8);
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v61), (v19 & 1) != 0))
    {
      outlined init with copy of NavigationListState.Selection(*(v17 + 56) + 72 * v18, __dst);
      if (*(&__dst[0] + 1))
      {
        v20 = *(&__dst[3] + 1);
        outlined destroy of NavigationRequest.TargetedRequest?(__dst, &lazy cache variable for type metadata for NavigationListState.Selection?, &type metadata for NavigationListState.Selection, MEMORY[0x1E69E6720]);
        if (v20 == v46)
        {
          result = outlined destroy of NavigationRequest.TargetedRequest?(__src, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = 0u;
          *(a3 + 72) = 0u;
          *(a3 + 88) = 0u;
          *(a3 + 104) = 0u;
          *(a3 + 120) = 0u;
          *(a3 + 136) = 0u;
          *(a3 + 152) = 0;
          *(a3 + 160) = 0x1FFFFFFFCLL;
          *(a3 + 184) = 0u;
          *(a3 + 200) = 0u;
          *(a3 + 216) = 0u;
          *(a3 + 232) = 0u;
          *(a3 + 168) = 0u;
          *(a3 + 248) = 0u;
          *(a3 + 264) = 0u;
          *(a3 + 280) = 0u;
          *(a3 + 296) = 0u;
          *(a3 + 312) = 0u;
          *(a3 + 321) = 0u;
          *a3 = xmmword_18CD6A6D0;
          *(a3 + 16) = 2;
          *(a3 + 340) = 0;
LABEL_27:
          *(a3 + 344) = 0;
          return result;
        }

LABEL_26:
        v28 = MEMORY[0x1E6981948];
        outlined init with copy of NavigationSplitViewState?(__src, __dst, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
        *(&__dst[3] + 8) = v46;
        specialized Dictionary.subscript.setter(__dst, v61);
        type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v28);
        MEMORY[0x18D00ACC0](__dst);
        v29 = NavigationListState.updateSelection(_:for:)(__dst, v61);
        outlined destroy of AnyListSelection(__dst);
        result = outlined destroy of NavigationRequest.TargetedRequest?(__src, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v28);
        *a3 = xmmword_18CD6A6D0;
        *(a3 + 16) = 2;
        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        *(a3 + 72) = 0u;
        *(a3 + 88) = 0u;
        *(a3 + 104) = 0u;
        *(a3 + 120) = 0u;
        *(a3 + 136) = 0u;
        *(a3 + 152) = 0;
        *(a3 + 160) = 0x1FFFFFFFCLL;
        *(a3 + 184) = 0u;
        *(a3 + 200) = 0u;
        *(a3 + 216) = 0u;
        *(a3 + 232) = 0u;
        *(a3 + 248) = 0u;
        *(a3 + 168) = 0u;
        *(a3 + 264) = 0u;
        *(a3 + 280) = 0u;
        *(a3 + 296) = 0u;
        *(a3 + 312) = 0u;
        *(a3 + 321) = 0u;
        *(a3 + 340) = v29 & 1;
        goto LABEL_27;
      }
    }

    else
    {
      memset(__dst, 0, 72);
    }

    outlined destroy of NavigationRequest.TargetedRequest?(__dst, &lazy cache variable for type metadata for NavigationListState.Selection?, &type metadata for NavigationListState.Selection, MEMORY[0x1E69E6720]);
    goto LABEL_26;
  }

  if (v60 != 7)
  {
    goto LABEL_11;
  }

  v10 = v55;
  v11 = BYTE8(v55);
  v12 = *(a1 + 120);
  v62 = *(a1 + 104);
  v63 = v12;
  v64 = *(a1 + 136);
  v13 = *(v3 + 8);
  if (!*(v13 + 16))
  {
    goto LABEL_22;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(&v62);
  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

  outlined init with copy of NavigationListState.Selection(*(v13 + 56) + 72 * result, v53);
  if (v54 != v10)
  {
    v15 = v53;
LABEL_21:
    result = outlined destroy of NavigationListState.Selection(v15);
    goto LABEL_22;
  }

  NavigationListState.removePendingDeselections()();
  type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](__dst);
  v30 = NavigationListState.updateSelection(_:for:)(__dst, &v62);
  outlined destroy of AnyListSelection(__dst);
  if ((v30 & 1) == 0)
  {
    if (v11)
    {
      result = outlined destroy of NavigationListState.Selection(v53);
      v38 = 0;
LABEL_46:
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 152) = 0;
      *(a3 + 160) = 0x1FFFFFFFCLL;
      *(a3 + 184) = 0u;
      *(a3 + 200) = 0u;
      *(a3 + 216) = 0u;
      *(a3 + 232) = 0u;
      *(a3 + 248) = 0u;
      *(a3 + 168) = 0u;
      *(a3 + 264) = 0u;
      *(a3 + 280) = 0u;
      *(a3 + 296) = 0u;
      *(a3 + 312) = 0u;
      *(a3 + 321) = 0u;
      *a3 = xmmword_18CD6A6D0;
      *(a3 + 16) = 2;
      *(a3 + 340) = v38;
      goto LABEL_27;
    }

    v38 = 0;
LABEL_45:
    result = outlined destroy of NavigationListState.Selection(v53);
    goto LABEL_46;
  }

  if (v67 != 1)
  {
    v31 = v68;
    if (v68)
    {
      v32 = *(&v68 + 1);
      v33 = v63;
      if (v63 >= 3u)
      {
        v33 = 3;
      }

      memset(&__src[1], 0, 40);
      if (v63 == 6)
      {
        v33 = 3;
      }

      __src[0] = 0uLL;
      BYTE8(__src[3]) = 4;
      BYTE9(__src[3]) = v33;
      v50 = 17;
      outlined init with copy of NavigationUpdateEvent(__src, &v47);
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v34 + 24) = v32;
      v35 = v48;
      *(v34 + 32) = v47;
      *(v34 + 48) = v35;
      *(v34 + 64) = *v49;
      *(v34 + 74) = *&v49[10];
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v31, v32);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v31, v32);
      v36 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationSplitViewState?(&v66, __dst, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationRequest.TargetedRequest?(&v66, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v36);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31);
      outlined destroy of NavigationUpdateEvent(__src);
      result = outlined destroy of NavigationListState.Selection(v53);
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 152) = 0;
      *(a3 + 160) = 0x1FFFFFFFCLL;
      *(a3 + 184) = 0u;
      *(a3 + 200) = 0u;
      *(a3 + 216) = 0u;
      *(a3 + 232) = 0u;
      *(a3 + 248) = 0u;
      *(a3 + 168) = 0u;
      *(a3 + 264) = 0u;
      *(a3 + 280) = 0u;
      *(a3 + 296) = 0u;
      *(a3 + 312) = 0u;
      *(a3 + 321) = 0u;
      goto LABEL_36;
    }
  }

  if ((v11 & 1) == 0)
  {
    v38 = 1;
    goto LABEL_45;
  }

  v39 = (v30 >> 8) & 1;
  v40 = *(v4 + 8);
  v41 = *(v4 + 16);
  v42 = *(v4 + 24);
  v43 = *(v4 + 32);
  v44 = *(v4 + 40);
  v45 = *(v4 + 48);
  LODWORD(v47) = *v4;
  *(&v47 + 1) = v40;
  *&v48 = v41;
  *(&v48 + 1) = v42;
  *v49 = v43;
  *&v49[8] = v44;
  *&v49[16] = v45;

  NavigationListState.requestToPopSubsequentColumn(original:popReplacedRoots:)(a1, v39, __src);
  outlined destroy of NavigationListState.Selection(v53);

  if (*(&__src[8] + 1) >> 1 == 0xFFFFFFFFLL)
  {
    result = outlined destroy of NavigationRequest.TargetedRequest?(__src, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
    v38 = 1;
    goto LABEL_46;
  }

  memcpy(__dst, __src, 0x139uLL);
  result = memcpy((a3 + 24), __dst, 0x139uLL);
LABEL_36:
  *a3 = xmmword_18CD6A6D0;
  *(a3 + 16) = 2;
  *(a3 + 340) = 1;
  return result;
}

uint64_t sub_18BFB5CAC()
{

  if (*(v0 + 88) - 1 <= 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  return swift_deallocObject();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC03AnyG9SelectionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, AnyListSelection>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 88)
    {
      outlined init with copy of (String, TabEntry)(i, v15, &lazy cache variable for type metadata for (NavigationState.ListKey, AnyListSelection), &type metadata for NavigationState.ListKey, &type metadata for AnyListSelection, type metadata accessor for (Badge, Spacer));
      v17 = v15[0];
      v18 = v15[1];
      v19 = v15[2];
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v17);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v18;
      *v7 = v17;
      v7[1] = v8;
      v7[2] = v19;
      v9 = v3[7] + 40 * result;
      v11 = v15[3];
      v10 = v15[4];
      *(v9 + 32) = v16;
      *v9 = v11;
      *(v9 + 16) = v10;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, Bool>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 2);
      v14 = *(i - 3);
      v15 = v5;
      v16 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 48 * result);
      v10 = v15;
      *v9 = v14;
      v9[1] = v10;
      v9[2] = v16;
      *(v3[7] + result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
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

uint64_t outlined consume of NavigationListState?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined destroy of NavigationRequest.TargetedRequest?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<AnyListSelection>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for Binding<AnyListSelection>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of NavigationSplitViewState?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for Binding<AnyListSelection>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t getEnumTagSinglePayload for UIKitSearchBarCoordinator.SearchToken(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 72 * v9;

    return outlined assign with take of NavigationListState.Selection(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return outlined assign with take of AnyListSelection(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = *(a1 + 32);
    do
    {
      v12 = *(v2 + 48) + 48 * result;
      if (*v12 == v7)
      {
        v13 = *(v12 + 16);
        v14 = *(v12 + 32);
        if (v13 == 6)
        {
          if (v9 == 6)
          {
            goto LABEL_4;
          }
        }

        else if (v9 != 6)
        {
          v15 = *(v12 + 8);
          v16 = *(v12 + 24);
          v17 = (v13 ^ v9);
          v18 = v15 == v8 && v17 == 0;
          if (v18 && v16 == v10)
          {
LABEL_4:
            if (((v14 ^ v11) & 1) == 0)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    v20 = a1[3];
    v21 = a1[2];
    v9 = *(a1 + 32);
    v10 = *(v2 + 48);
    do
    {
      v11 = (v10 + 40 * v5);
      v12 = *v11;
      v13 = v11[1];
      if (v11[4])
      {
        if (v9)
        {
          v14 = v11[2];
          v15 = v11[3];
          v16 = v12 == v8 && v13 == v7;
          if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            if (v14 == v21 && v15 == v20)
            {
              return v5;
            }

LABEL_3:
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              return v5;
            }
          }
        }
      }

      else if ((v9 & 1) == 0)
      {
        if (v12 == v8 && v13 == v7)
        {
          return v5;
        }

        goto LABEL_3;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey()
{
  result = lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey;
  if (!lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey;
  if (!lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  v6 = a4[7] + 72 * result;
  *(v6 + 64) = *(a3 + 64);
  v7 = *(a3 + 48);
  *(v6 + 32) = *(a3 + 32);
  *(v6 + 48) = v7;
  v8 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v8;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  v6 = a4[7] + 40 * result;
  v7 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a3 + 32);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + (result << 6));
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v6 = a2[3];
  v4[2] = a2[2];
  v4[3] = v6;
  *(a4[7] + 8 * result) = a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(a3 + 48);
  a4[(result >> 6) + 8] |= 1 << result;
  v7 = (a4[6] + 48 * result);
  v8 = a2[1];
  *v7 = *a2;
  v7[1] = v8;
  *(v7 + 25) = *(a2 + 25);
  v9 = a4[7] + 56 * result;
  *v9 = *a3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = *(a3 + 32);
  *(v9 + 48) = v6;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + (result << 7));
  v5 = a2[5];
  v4[4] = a2[4];
  v4[5] = v5;
  v4[6] = a2[6];
  *(v4 + 105) = *(a2 + 105);
  v6 = a2[1];
  *v4 = *a2;
  v4[1] = v6;
  v7 = a2[3];
  v4[2] = a2[2];
  v4[3] = v7;
  *(a4[7] + 8 * result) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t NavigationListState.updateSelection(_:for:)(void *a1, _OWORD *a2)
{
  outlined init with copy of AnyListSelection(a1, v14);
  specialized Dictionary._Variant.updateValue(_:forKey:)(v14, a2, &v15);
  if (*(&v16 + 1))
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 64))(&v18, v4, v5);
    v7 = *(&v19 + 1);
    v8 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v9 = (*(v8 + 16))(v7, v8);
    outlined destroy of AnyListSelection(&v18);
    if (v9)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    outlined destroy of NavigationRequest.TargetedRequest?(&v15, &lazy cache variable for type metadata for AnyListSelection?, &type metadata for AnyListSelection, MEMORY[0x1E69E6720]);
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v6 = (*(v12 + 16))(v11, v12);
    v10 = 256;
  }

  return v10 | ((v6 & 1) == 0);
}

unint64_t specialized Dictionary._Variant.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    specialized _NativeDictionary.copy()();
    result = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v10);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = v10[7] + 40 * result;
  v19 = *(v18 + 16);
  *a3 = *v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = *(v18 + 32);
  v20 = *(a1 + 16);
  *v18 = *a1;
  *(v18 + 16) = v20;
  *(v18 + 32) = *(a1 + 32);
LABEL_11:
  *v5 = v10;
  return result;
}

uint64_t AnyListSelection.Storage.isEmpty.getter(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  v4 = type metadata accessor for SelectionManagerBox();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  LOBYTE(a1) = a1(v4);
  (*(v5 + 8))(v7, v4);
  return a1 & 1;
}

uint64_t SelectionManagerBox.isEmpty.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = *(a1 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, v2, a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v8, v13, v5);
      v15 = (*(*(v4 - 8) + 48))(v8, 1, v4) == 1;
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v9 + 8))(v13, a1);
      v15 = 0;
    }
  }

  else
  {
    v15 = Set.isEmpty.getter();
  }

  return v15 & 1;
}

uint64_t destroy for NavigationSplitViewState(void *a1)
{
  if (a1[2])
  {
  }

  if (a1[4])
  {
  }

  result = a1[7];
  if (result)
  {
  }

  return result;
}

uint64_t NavigationColumnState.boundSelectionChange(request:splitViewState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of NavigationRequest.TargetedRequest(a1, v8);
  NavigationRequest.ListRequest.init(_:)(v8, v10);
  if (v11 == 1)
  {
    outlined destroy of NavigationRequest.Action?(v10, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14[8] = v10[8];
    v14[9] = v11;
    v14[10] = v12;
    v15 = v13;
    v14[4] = v10[4];
    v14[5] = v10[5];
    v14[6] = v10[6];
    v14[7] = v10[7];
    v14[0] = v10[0];
    v14[1] = v10[1];
    v14[2] = v10[2];
    v14[3] = v10[3];
    v5 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v5;
    v9 = *(a2 + 64);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    NavigationColumnState.updateListState(_:splitViewState:)(v14, v8, a3);
    return outlined destroy of NavigationRequest.ListRequest(v14);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationListState.Selection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v5;
  v7 = **(v5 - 8);

  v7(a1 + 16, a2 + 16, v6);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t AnyListSelection.Storage.equals(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for SelectionManagerBox();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  outlined init with copy of _Benchmark(a1, v22);
  type metadata accessor for AnyListSelection.StorageProtocol();
  if (swift_dynamicCast())
  {
    v12 = v21;
    v13 = *(*v1 + 96);
    swift_beginAccess();
    v20 = v3;
    v14 = *(v6 + 16);
    v14(v11, v1 + v13, v5);
    v15 = *(*v12 + 96);
    swift_beginAccess();
    v14(v8, v12 + v15, v5);
    v16 = static SelectionManagerBox.== infix(_:_:)(v11, v8, v20, v4);

    v17 = *(v6 + 8);
    v17(v8, v5);
    v17(v11, v5);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t type metadata accessor for AnyListSelection.StorageProtocol()
{
  result = lazy cache variable for type metadata for AnyListSelection.StorageProtocol;
  if (!lazy cache variable for type metadata for AnyListSelection.StorageProtocol)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnyListSelection.StorageProtocol);
  }

  return result;
}

uint64_t static SelectionManagerBox.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a1;
  v79 = a2;
  v76 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v64 - v8;
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v67 = &v64 - v10;
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v64 - v16;
  v72 = a4;
  v77 = a3;
  v17 = type metadata accessor for SelectionManagerBox();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = swift_getTupleTypeMetadata2();
  v75 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v64 - v29;
  v32 = *(v31 + 48);
  v73 = v18;
  v33 = *(v18 + 16);
  v33(&v64 - v29, v78, v17, v28);
  (v33)(&v30[v32], v79, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (v33)(v26, v30, v17);
    if (!swift_getEnumCaseMultiPayload())
    {
      v47 = static Set.== infix(_:_:)();

      v46 = v73;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (v33)(v20, v30, v17);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v49 = v76;
      v48 = v77;
      v50 = *(v76 + 32);
      v51 = v68;
      v50(v68, v20, v77);
      v52 = &v30[v32];
      v53 = v66;
      v50(v66, v52, v48);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *(v49 + 8);
      v54(v53, v48);
      v54(v51, v48);
      v46 = v73;
      goto LABEL_14;
    }

    (*(v76 + 8))(v20, v77);
LABEL_13:
    v47 = 0;
    v46 = v75;
    v17 = v27;
    goto LABEL_14;
  }

  (v33)(v23, v30, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v74 + 8))(v23, v9);
    goto LABEL_13;
  }

  v35 = v74;
  v36 = *(v74 + 32);
  v37 = v71;
  v36(v71, v23, v9);
  v38 = &v30[v32];
  v39 = v69;
  v36(v69, v38, v9);
  v40 = *(TupleTypeMetadata2 + 48);
  v41 = *(v35 + 16);
  v42 = v67;
  v41(v67, v37, v9);
  v79 = v40;
  v41(&v42[v40], v39, v9);
  v43 = *(v76 + 48);
  if (v43(v42, 1, v77) != 1)
  {
    v56 = v65;
    v41(v65, v42, v9);
    v57 = v79;
    v58 = v77;
    if (v43(&v42[v79], 1, v77) != 1)
    {
      v60 = v76;
      v61 = v68;
      (*(v76 + 32))(v68, &v42[v57], v58);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v62 = *(v60 + 8);
      v62(v61, v58);
      v63 = *(v74 + 8);
      v63(v69, v9);
      v63(v71, v9);
      v62(v65, v58);
      v63(v42, v9);
      v46 = v73;
      goto LABEL_14;
    }

    v59 = *(v74 + 8);
    v59(v69, v9);
    v59(v71, v9);
    (*(v76 + 8))(v56, v58);
    v46 = v73;
    goto LABEL_18;
  }

  v44 = *(v74 + 8);
  v44(v39, v9);
  v44(v71, v9);
  v45 = v43(&v42[v79], 1, v77);
  v46 = v73;
  if (v45 != 1)
  {
LABEL_18:
    (*(v64 + 8))(v42, TupleTypeMetadata2);
    v47 = 0;
    goto LABEL_14;
  }

  v44(v42, v9);
  v47 = 1;
LABEL_14:
  (*(v46 + 8))(v30, v17);
  return v47 & 1;
}

uint64_t AnyListSelection.Storage.deinit()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for SelectionManagerBox();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AnyListSelection.Storage.__deallocating_deinit()
{
  AnyListSelection.Storage.deinit();

  return swift_deallocClassInstance();
}

uint64_t destroy for NavigationListState.Selection(uint64_t a1)
{

  return __swift_destroy_boxed_opaque_existential_1(a1 + 16);
}

double partial apply for closure #1 in NavigationSeedHost.seeds.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t assignWithCopy for PopoverPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Environment<CGFloat?>.Content(*v8, v10, v11);
  v12 = *v7;
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  outlined consume of Environment<CGFloat?>.Content(v12, v13, v14);
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 19) = *(v8 + 19);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 21) = *(v8 + 21);
  return a1;
}

uint64_t assignWithCopy for PopoverConditionalStateProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  v5 = *(a2 + 64);
  if (*(a1 + 64))
  {
    v6 = (a1 + 40);
    if (v5)
    {
      __swift_assign_boxed_opaque_existential_1(v6, (a2 + 40));
    }

    else
    {
      outlined destroy of AnyHashable(v6);
      v7 = *(a2 + 72);
      v8 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v8;
      *(a1 + 72) = v7;
    }
  }

  else if (v5)
  {
    *(a1 + 64) = v5;
    *(a1 + 72) = *(a2 + 72);
    (**(v5 - 8))(a1 + 40, a2 + 40);
  }

  else
  {
    v9 = *(a2 + 40);
    v10 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v10;
    *(a1 + 40) = v9;
  }

  return a1;
}

uint64_t assignWithCopy for ToolbarStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      outlined destroy of ToolbarItemPlacement.Role?(a1 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
      v5 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v6;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind()
{
  result = lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind;
  if (!lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind;
  if (!lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind);
  }

  return result;
}

uint64_t InsettableGroupedListBodyRule.value.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = a1[7];
  v20 = a1[4];
  v21 = v4;
  v5 = v4;
  v22 = type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v11 = a1[5];
  *&v31 = a1[2];
  v10 = v31;
  *(&v31 + 1) = v20;
  *&v32 = v11;
  *(&v32 + 1) = v5;
  v12 = type metadata accessor for _ListValue();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  InsettableGroupedListBodyRule.base.getter(&v20 - v14);
  (*(v7 + 16))(v9, &v15[*(v12 + 52)], v6);
  (*(v13 + 8))(v15, v12);
  v16 = *(v2 + 24);
  v31 = *(v2 + 8);
  v32 = v16;
  v33 = *(v2 + 40);
  *&v17 = v10;
  *(&v17 + 1) = a1[3];
  *&v16 = v20;
  *(&v16 + 1) = v11;
  v24 = v17;
  v25 = v16;
  v26 = a1[6];
  v27 = v21;
  v28 = v2;
  type metadata accessor for StyleContextWriter();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v29 = &protocol witness table for ListStyleContent;
  v30 = WitnessTable;
  swift_getWitnessTable();
  swift_getWitnessTable();
  return InsettableGroupedListBody.init(selection:insetMode:content:)(v9, &v31, partial apply for closure #1 in InsettableGroupedListBodyRule.value.getter, v23);
}

uint64_t InsettableGroupedListBodyRule.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t View.defaultScrollAnchor(_:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  View.transformEnvironment<A>(_:transform:)();
}

double sub_18BFB8CC8@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.scrollAnchors.getter();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t assignWithCopy for SystemScrollLayoutState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 96);
  outlined copy of SystemScrollLayoutState.ContentOffsetMode(v4);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v5);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t InsettableGroupedListBody.init(selection:insetMode:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for InsettableGroupedListBody();
  v10 = a4 + *(v9 + 52);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a2 + 32);
  return a3(v9, v12, v13, v14);
}

uint64_t closure #1 in InsettableGroupedListBodyRule.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22[1] = a7;
  v23 = a1;
  v24 = a3;
  v25 = a4;
  v26 = a6;
  v13 = type metadata accessor for _ListValue();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - v15;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  type metadata accessor for InsettableGroupedListBodyRule();
  InsettableGroupedListBodyRule.base.getter(v16);
  (*(v14 + 8))(v16, v13);
  View.styleContext<A>(_:)();
  type metadata accessor for StyleContextWriter();
  v17 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v22[2] = &protocol witness table for ListStyleContent;
  v22[3] = WitnessTable;
  v19 = swift_getWitnessTable();
  v20 = static ViewBuilder.buildExpression<A>(_:)(v19, v17, v19);
  return static ViewBuilder.buildExpression<A>(_:)(v20, v17, v19);
}

uint64_t ScrollViewProxy.scrollTo<A>(_:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = static Transaction.current.getter();
  v7 = v5;
  if ((a4 & 1) == 0)
  {
    Transaction.scrollTargetAnchor.setter();
    v5 = v7;
  }

  MEMORY[0x1EEE9AC00](v5);
  withTransaction<A>(_:_:)();
}

void *initializeWithCopy for InsettableGroupedListBody(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    v23 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v23 & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v17 = (__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  v21 = *(*(a3 + 16) - 8);
  (*(v21 + 16))((*(v21 + 80) + 34 + v17) & ~*(v21 + 80), (*(v21 + 80) + 34 + v18) & ~*(v21 + 80));
  return __dst;
}

uint64_t closure #1 in ScrollViewProxy.scrollTo<A>(_:anchor:)()
{
  type metadata accessor for ViewGraph();
  v0 = static GraphHost.isUpdating.getter();
  if (v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    return static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t destroy for InsettableGroupedListBody(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = *(v5 + 64);
  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if (!(*(v5 + 48))((v9 + v6 + 8) & v7))
    {
LABEL_5:

      (*(v5 + 8))((v9 + v6 + 8) & v7, v4);
    }
  }

  else
  {
    v10 = *v9;
    if (*v9 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    if (v10 == -1)
    {
      goto LABEL_5;
    }
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (((a1 + v8 + ((v6 + 16) & v7) + 7) & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 34) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t partial apply for closure #1 in ScrollViewProxy.apply(to:)()
{
  return partial apply for closure #1 in ScrollViewProxy.apply(to:)();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  AGGraphClearUpdate();
  closure #1 in closure #1 in ScrollViewProxy.apply(to:)(v1, v2);
  return AGGraphSetUpdate();
}

uint64_t closure #1 in ScrollViewProxy.apply(to:)partial apply()
{
  return partial apply for closure #1 in ScrollViewProxy.apply(to:)();
}

{
  return _s7SwiftUI15ScrollViewProxyV5apply33_6771D9CA74994071CD3B6B79860A981DLL2toySbAA10Scrollable_pXE_tFyyXEfU_TA_0();
}

uint64_t InsettableGroupedListBody.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  type metadata accessor for InsettableGroupedListBody.CollectionViewBody();
  v42 = v3;
  v43 = v2;
  v44 = v4;
  v45 = v5;
  type metadata accessor for InsettableGroupedListBody.TableViewRoot();
  v21 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>();
  v23 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for StaticIf();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v30 = v3;
  v31 = v2;
  v32 = v4;
  v33 = v5;
  v34 = v22;
  v25 = v3;
  v26 = v2;
  v27 = v4;
  v28 = v5;
  v29 = v22;
  v13 = lazy protocol witness table accessor for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled();
  WitnessTable = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v41 = v4;
  v15 = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>);
  v38 = v15;
  v39 = v16;
  v20 = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v35 = v13;
  v36 = WitnessTable;
  v37 = v20;
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, v17);
  v18 = *(v7 + 8);
  v18(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, v17);
  return (v18)(v12, v6);
}

uint64_t closure #1 in InsettableGroupedListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v34 = a4;
  *(&v34 + 1) = a5;
  v37 = a6;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  *&v38 = a2;
  *(&v38 + 1) = a3;
  *&v39 = a4;
  *(&v39 + 1) = a5;
  v16 = type metadata accessor for InsettableGroupedListBody.CollectionViewBody();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  (*(v13 + 16))(v15, a1, v12, v21);
  *&v38 = a2;
  *(&v38 + 1) = a3;
  v39 = v34;
  v24 = type metadata accessor for InsettableGroupedListBody();
  v25 = *(v24 + 56);
  v26 = (a1 + *(v24 + 52));
  v27 = v26[1];
  v38 = *v26;
  v39 = v27;
  v40 = *(v26 + 16);
  v28 = a1 + v25;
  v29 = v35;
  (*(v36 + 16))(v35, v28, a2);
  InsettableGroupedListBody.CollectionViewBody.init(selection:insetMode:content:)(v15, &v38, v29, a2, v19);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v16, WitnessTable);
  v31 = *(v17 + 8);
  v31(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)(v23, v16, WitnessTable);
  return (v31)(v23, v16);
}

uint64_t closure #1 in closure #1 in ScrollViewProxy.apply(to:)(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  result = v4 + 32;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (1)
  {
    if (v6 + v7 == -1)
    {
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v8 = result + 40;
    outlined init with copy of _Benchmark(result, v10);
    v9 = a2(v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v8;
    if (v9)
    {
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CVarArg(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t InsettableGroupedListBody.CollectionViewBody.init(selection:insetMode:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = swift_getKeyPath();
  *(a5 + 24) = 0;
  *(a5 + 32) = swift_getKeyPath();
  *(a5 + 97) = 0;
  v10 = type metadata accessor for InsettableGroupedListBody.CollectionViewBody();
  v11 = v10[15];
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 32))(a5 + v11, a1, v12);
  v13 = a5 + v10[16];
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 32);
  return (*(*(a4 - 8) + 32))(a5 + v10[17], a3, a4);
}

uint64_t initializeWithCopy for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v6);
  *a1 = v5;
  *(a1 + 8) = v6;
  v44 = a1;
  v7 = a1 & 0xFFFFFFFFFFFFFFF8;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v8 + 25);
  v10 = *(v8 + 24);
  outlined copy of Environment<CGFloat?>.Content(v9, v10, v5);
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 25) = v5;
  v11 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 33) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  v19 = *(v12 + 48);
  v20 = *(v12 + 56);
  v42 = *(v12 + 64);
  v43 = *(v12 + 65);
  outlined copy of Environment<ListPadding>.Content(*v12, v14, v15, v16, v17, v18, v19, v20, v42, v43);
  *v11 = v13;
  *(v11 + 8) = v14;
  *(v11 + 16) = v15;
  *(v11 + 24) = v16;
  *(v11 + 32) = v17;
  *(v11 + 40) = v18;
  *(v11 + 48) = v19;
  *(v11 + 56) = v20;
  *(v11 + 64) = v42;
  *(v11 + 65) = v43;
  v21 = *(a3 + 24);
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 | 7) + 66;
  v25 = ((v24 + v11) & ~(v23 | 7));
  v26 = ((v24 + v12) & ~(v23 | 7));
  v27 = ~v23;
  v28 = (v23 + 16) & ~v23;
  v29 = *(v22 + 64);
  v30 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v22 + 84) & 0x80000000) == 0)
  {
    v31 = *v30;
    if (*v30 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v28 + v29;
    if (v31 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v33 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v30;
    v34 = v33 + v23 + 8;
    v35 = *(v22 + 16);

    v35(v34 & v27, (v30 + v23 + 8) & v27, v21);
    goto LABEL_8;
  }

  v32 = v28 + v29;
  if (!(*(v22 + 48))((v30 + v23 + 8) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, v32);
LABEL_8:
  v36 = (v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = *v37;
  v39 = *(v37 + 16);
  *(v36 + 32) = *(v37 + 32);
  *v36 = v38;
  *(v36 + 16) = v39;
  v40 = *(*(a3 + 16) - 8);
  (*(v40 + 16))((*(v40 + 80) + 34 + v36) & ~*(v40 + 80), (*(v40 + 80) + 34 + v37) & ~*(v40 + 80));
  return v44;
}

uint64_t destroy for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  v4 = (v3 + 33) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<ListPadding>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 65));
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + (v7 | 7) + 66) & ~(v7 | 7);
  v9 = ~v7;
  v10 = *(v6 + 64);
  v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v6 + 84) & 0x80000000) != 0)
  {
    if (!(*(v6 + 48))((v11 + v7 + 8) & v9))
    {
LABEL_5:

      (*(v6 + 8))((v11 + v7 + 8) & v9, v5);
    }
  }

  else
  {
    v12 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 == -1)
    {
      goto LABEL_5;
    }
  }

  v13 = *(*(a2 + 16) - 8);
  v14 = *(v13 + 8);
  v15 = (((v10 + ((v7 + 16) & v9) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v13 + 80) + 34) & ~*(v13 + 80);

  return v14(v15);
}

uint64_t partial apply for closure #1 in closure #1 in ScrollViewProxy.scrollTo<A>(_:anchor:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 8))(v4, v2, v3, v5, v6) & 1;
}

uint64_t ScrollViewScrollable.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for [Scrollable]();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v6 = *WeakValue;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  result = v6 + 32;
  v8 = -*(v6 + 16);
  v9 = -1;
  while (1)
  {
    v10 = v8 + v9;
    if (v8 + v9 == -1)
    {
LABEL_8:

      return v10 != -1;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    v11 = result + 40;
    outlined init with copy of _Benchmark(result, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = (*(v13 + 8))(a1, a2, a3, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = v11;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in InsettableGroupedListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a4;
  v44 = a6;
  type metadata accessor for Binding();
  v39 = type metadata accessor for Optional();
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v35 - v12;
  *&v54 = a2;
  *(&v54 + 1) = a3;
  *&v55 = a4;
  *(&v55 + 1) = a5;
  v40 = type metadata accessor for InsettableGroupedListBody.TableViewRoot();
  MEMORY[0x1EEE9AC00](v40);
  v15 = &v35 - v14;
  v16 = type metadata accessor for _VariadicView.Tree();
  v42 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>();
  v19 = type metadata accessor for ModifiedContent();
  v43 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v41 = &v35 - v23;
  (*(v11 + 16))(v13, a1, v39, v22);
  *&v54 = a2;
  *(&v54 + 1) = a3;
  v24 = v37;
  v25 = v36;
  *&v55 = v37;
  *(&v55 + 1) = v36;
  v26 = (a1 + *(type metadata accessor for InsettableGroupedListBody() + 52));
  v27 = v26[1];
  v54 = *v26;
  v55 = v27;
  v56 = *(v26 + 16);
  InsettableGroupedListBody.TableViewRoot.init(selection:insetMode:)(v13, &v54, v15);
  v45 = a2;
  v46 = a3;
  v47 = v24;
  v48 = v25;
  v49 = a1;
  _VariadicView.Tree.init(_:content:)();
  WitnessTable = swift_getWitnessTable();
  v53 = v24;
  v28 = swift_getWitnessTable();
  lazy protocol witness table accessor for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders();
  v29 = v38;
  View.input<A>(_:)();
  (*(v42 + 8))(v18, v16);
  v30 = lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>);
  v50 = v28;
  v51 = v30;
  v31 = swift_getWitnessTable();
  v32 = v41;
  static ViewBuilder.buildExpression<A>(_:)(v29, v19, v31);
  v33 = *(v43 + 8);
  v33(v29, v19);
  static ViewBuilder.buildExpression<A>(_:)(v32, v19, v31);
  return (v33)(v32, v19);
}

BOOL ScrollViewScrollable.setContentTarget(_:)(void *a1, uint64_t a2)
{
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return WeakValue != 0;
  }

  v6 = *WeakValue;
  v7 = WeakValue[2];
  v82[1] = WeakValue[1];
  v82[2] = v7;
  v82[0] = v6;
  v8 = WeakValue[3];
  v9 = WeakValue[4];
  v10 = WeakValue[5];
  *&v83[12] = *(WeakValue + 92);
  v82[4] = v9;
  *v83 = v10;
  v82[3] = v8;
  v11 = WeakValue[1];
  v84 = *WeakValue;
  v85 = v11;
  v12 = WeakValue[2];
  v13 = WeakValue[3];
  v14 = WeakValue[5];
  v88 = WeakValue[4];
  v89 = v14;
  v86 = v12;
  v87 = v13;
  v39 = WeakValue;
  v40 = *&v83[16];
  v15 = *&v83[24];
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  outlined init with copy of SystemScrollLayoutState(v82, &v57);
  v16 = AGGraphGetWeakValue();
  if (!v16)
  {
    goto LABEL_6;
  }

  outlined init with copy of ScrollPosition?(v16, &v57, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  v45 = v58;
  v46 = v59;
  v47 = v60;
  *&v48 = v61;
  v44 = v57;
  if (!*(&v58 + 1))
  {
    outlined destroy of ResolvedScrollBehavior?(&v44, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
LABEL_6:
    v17 = a2;
    goto LABEL_7;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = v60;
  *(v17 + 64) = v59;
  *(v17 + 80) = v18;
  *(v17 + 96) = v61;
  v19 = v58;
  *(v17 + 32) = v57;
  *(v17 + 48) = v19;
  a1 = partial apply for closure #1 in ScrollViewScrollable.setContentTarget(_:);
LABEL_7:
  v20 = *v83;
  v21 = *&v83[8];
  v38 = v15;
  if (*v83 != 0.0 || *&v83[8] != 0.0)
  {
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = v17;
    v22[4] = v20;
    v22[5] = v21;
    v17 = v22;
    a1 = partial apply for closure #2 in ScrollViewScrollable.setContentTarget(_:);
  }

  v23 = *&v83[24];

  static Transaction.current.getter();

  ScrollTargetConfiguration.init(transaction:)();
  v24 = v57;
  v25 = BYTE8(v57);
  v26 = BYTE9(v57);
  v27 = *(v2 + 5);
  swift_beginAccess();
  v28 = (*(v27 + 16) + 1);
  *(v27 + 16) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = v17;
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  v41 = v29 | 0x4000000000000000;
  *(v29 + 41) = v26;

  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v40);
  if (v23)
  {
    LODWORD(v30) = v38;
    if (v23 == -1)
    {
      goto LABEL_18;
    }

    v30 = merge32(_:_:)(v23, v28);
    if (v30 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v30 = v28;
  if (v28 != -1)
  {
LABEL_15:
    if (v30)
    {
      LODWORD(v30) = merge32(_:_:)(v30, 5u);
    }

    else
    {
      LODWORD(v30) = 5;
    }
  }

LABEL_18:

  v69[2] = v86;
  v69[3] = v87;
  v69[4] = v88;
  *v70 = v89;
  v69[0] = v84;
  v69[1] = v85;
  *&v70[16] = v41;
  *&v70[24] = v30;
  v31 = *v2;
  v32 = v2[1];
  v71[0] = v84;
  v71[1] = v85;
  *&v72[12] = *&v70[12];
  v71[4] = v88;
  *v72 = v89;
  v71[2] = v86;
  v71[3] = v87;
  *&v72[28] = v31;
  v73 = v32;
  v76 = v86;
  v77 = v87;
  v74 = v84;
  v75 = v85;
  v81 = v32;
  v79 = v89;
  v80 = *&v72[16];
  v78 = v88;
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    outlined init with copy of SystemScrollLayoutState(v69, &v57);

    outlined destroy of SystemScrollLayoutState(v69);

    v59 = v86;
    v60 = v87;
    v61 = v88;
    v62 = v89;
    v57 = v84;
    v58 = v85;
    *&v63 = v41;
    DWORD2(v63) = v30;
    outlined destroy of SystemScrollLayoutState(&v57);
  }

  else
  {
    v33 = AGGraphGetAttributeGraph();

    outlined init with copy of SystemScrollLayoutState(v69, &v57);
    v34 = AGGraphRef.viewGraph()();

    v56 = v42;

    Transaction.fromScrollView.setter();
    v61 = v78;
    v62 = v79;
    v63 = v80;
    LODWORD(v64) = v81;
    v57 = v74;
    v58 = v75;
    v59 = v76;
    v60 = v77;
    *(&v64 + 1) = 5;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v53 = 0u;
    v54 = 0u;
    v49 = v79;
    v50 = v80;
    v51 = v64;
    v52 = 0u;
    v44 = v74;
    v45 = v75;
    v46 = v76;
    v68 = 257;
    v55 = 257;
    v47 = v77;
    v48 = v78;
    v43[119] = 1;
    outlined init with copy of ScrollEnvironmentTransform?(v71, v43, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
    lazy protocol witness table accessor for type ScrollViewCommitMutation and conformance ScrollViewCommitMutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    if (*&v70[16] == 0x8000000000000000)
    {
      outlined init with copy of SystemScrollLayoutState(v69, &v44);
      outlined init with copy of SystemScrollLayoutState(v69, &v44);
      static Semantics.v6.getter();
      v35 = isLinkedOnOrAfter(_:)();
    }

    else
    {
      outlined init with copy of SystemScrollLayoutState(v69, &v44);
      v35 = 0;
    }

    v43[0] = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = v35 & 1;
    *(v36 + 24) = v34;

    static Update.enqueueAction(reason:_:)();
    outlined destroy of ScrollViewCommitMutation(&v57);

    outlined destroy of SystemScrollLayoutState(v69);

    outlined destroy of SystemScrollLayoutState(v69);

    v47 = v87;
    v48 = v88;
    v49 = v89;
    v44 = v84;
    v45 = v85;
    v46 = v86;
    *&v50 = v41;
    DWORD2(v50) = v30;
    outlined destroy of SystemScrollLayoutState(&v44);
  }

  WeakValue = v39;
  return WeakValue != 0;
}

uint64_t sub_18BFBB27C()
{

  return swift_deallocObject();
}

uint64_t sub_18BFBB2B4()
{

  return swift_deallocObject();
}

uint64_t sub_18BFBB2F4()
{

  return swift_deallocObject();
}

uint64_t sub_18BFBB32C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

__n128 InsettableGroupedListBody.TableViewRoot.init(selection:insetMode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 97) = 0;
  v6 = type metadata accessor for InsettableGroupedListBody.TableViewRoot();
  v7 = *(v6 + 60);
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  v9 = a3 + *(v6 + 64);
  result = *a2;
  v11 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a2 + 32);
  return result;
}

double ScrollViewAdjustedBehavior.value.getter@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = lazy protocol witness table accessor for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior();
  MEMORY[0x18D000B90](&unk_1F0019D80, v3, v4);
  Rule.withObservation<A>(observationCenter:do:)();

  if (*AGGraphGetValue())
  {
    v5 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v9;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
  }

  else
  {
    outlined destroy of ResolvedScrollBehavior?(v8, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    *&v6 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  return *&v6;
}

uint64_t initializeWithCopy for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 9);
  v7 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v7, v6);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 9) = v6;
  v45 = a1;
  v8 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  LOBYTE(v5) = *(v9 + 9);
  v11 = *(v9 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v9, v11, v5);
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 9) = v5;
  v12 = (v8 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v9 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  v18 = *(v13 + 32);
  v19 = *(v13 + 40);
  v20 = *(v13 + 48);
  v21 = *(v13 + 56);
  v42 = *(v13 + 64);
  v43 = *(v13 + 65);
  outlined copy of Environment<ListPadding>.Content(*v13, v15, v16, v17, v18, v19, v20, v21, v42, v43);
  *v12 = v14;
  *(v12 + 8) = v15;
  *(v12 + 16) = v16;
  *(v12 + 24) = v17;
  *(v12 + 32) = v18;
  *(v12 + 40) = v19;
  *(v12 + 48) = v20;
  *(v12 + 56) = v21;
  *(v12 + 64) = v42;
  *(v12 + 65) = v43;
  v22 = *(a3 + 24);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = (v24 | 7) + 66;
  v26 = ((v25 + v12) & ~(v24 | 7));
  v27 = ((v25 + v13) & ~(v24 | 7));
  v28 = ~v24;
  v29 = (v24 + 16) & ~v24;
  v30 = *(v23 + 64);
  v31 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v23 + 84) & 0x80000000) == 0)
  {
    v32 = *v31;
    if (*v31 >= 0xFFFFFFFF)
    {
      LODWORD(v32) = -1;
    }

    v33 = v29 + v30;
    if (v32 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v26 = *v27;
    v34 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v31;
    v35 = v34 + v24 + 8;
    v36 = *(v23 + 16);

    v36(v35 & v28, (v31 + v24 + 8) & v28, v22);
    goto LABEL_8;
  }

  v33 = v29 + v30;
  if (!(*(v23 + 48))((v31 + v24 + 8) & v28))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v26, v27, v33);
LABEL_8:
  v37 = (v27 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v26 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v37;
  v40 = *(v37 + 16);
  *(v38 + 32) = *(v37 + 32);
  *v38 = v39;
  *(v38 + 16) = v40;
  return v45;
}

uint64_t closure #1 in closure #2 in InsettableGroupedListBody.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for InsettableGroupedListBody();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v14 + 56), a2, a4);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

uint64_t destroy for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*v4, *(v4 + 8), *(v4 + 9));
  v5 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<ListPadding>.Content(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 65));
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + (v8 | 7) + 66) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

uint64_t closure #1 in ScrollViewAdjustedBehavior.value.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScrollEnvironmentStorage();
  v2 = *AGGraphGetValue();
  swift_getKeyPath();
  v10 = v2;
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v2 + 16, &v10);
  swift_getKeyPath();
  v9[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v2 + 280, v9, type metadata accessor for ScrollEnvironmentTransform?);
  if (v9[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v9, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 8))(&v10, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  outlined init with copy of ScrollPosition?(&v11, a1, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  return outlined destroy of ScrollEnvironmentProperties(&v10);
}

uint64_t assignWithCopy for OnModifierKeysChangedModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t InsettableGroupedListBody.CollectionViewBody.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v16[0] = *(a1 + 16);
  v16[1] = v6;
  v7 = type metadata accessor for CollectionViewListRoot();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  InsettableGroupedListBody.CollectionViewBody.style.getter(a1, v5);
  InsettableGroupedListBody.CollectionViewBody.collectionViewListRoot(style:)(v5, a1, v10);
  (*(v3 + 8))(v5, v2);
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, &protocol witness table for CollectionViewListRoot<A, B>);
  v14 = *(v8 + 8);
  v14(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, &protocol witness table for CollectionViewListRoot<A, B>);
  return (v14)(v13, v7);
}

uint64_t InsettableGroupedListBody.CollectionViewBody.style.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 64);
  if (*(v4 + 33) == 1 && ((v5 = *(v4 + 32), v6 = *(v4 + 16) | *(v4 + 24) | *v4 | *(v4 + 8), !v5) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v20 = *MEMORY[0x1E69DC250];
    v21 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v22 = *(*(v21 - 8) + 104);

    return v22(a2, v20, v21);
  }

  else
  {
    v8 = *(v2 + 80);
    v32[0] = *(v2 + 64);
    v32[1] = v8;
    v33 = *(v2 + 96);
    v9 = *(v2 + 48);
    v30 = *(v2 + 32);
    v31 = v9;
    specialized Environment.wrappedValue.getter(v23);
    *&v29[9] = *&v26[9];
    v28 = v25;
    *v29 = *v26;
    v27 = v24;
    v30 = v24;
    v31 = v25;
    v32[0] = *v26;
    *(v32 + 9) = *&v29[9];
    v10 = OptionalEdgeInsets.leading.getter();
    if (v11 & 1) != 0 || (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v30 = v27, v31 = v28, v32[0] = *v29, *(v32 + 9) = *&v29[9], v12 = OptionalEdgeInsets.trailing.getter(), (v13) || (v12 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v14 = *(v2 + 80), v32[0] = *(v2 + 64), v32[1] = v14, v33 = *(v2 + 96), v15 = *(v2 + 48), v30 = *(v2 + 32), v31 = v15, specialized Environment.wrappedValue.getter(v23), v23[0]))
    {
      v16 = MEMORY[0x1E69DC238];
    }

    else
    {
      v16 = MEMORY[0x1E69DC250];
    }

    v17 = *v16;
    v18 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    return (*(*(v18 - 8) + 104))(a2, v17, v18);
  }
}

void InsettableGroupedListBody.CollectionViewBody.collectionViewListRoot(style:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v27 = *(a2 + 24);
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3 + *(a2 + 68), v13, v15);
  (*(v10 + 16))(v12, v25, v9);
  v19 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8));
  v20 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v21)
  {
    v22 = 28.0;
  }

  else
  {
    v22 = v20;
  }

  (*(v6 + 16))(v8, v3 + *(a2 + 60), v5);
  v23 = *(v3 + 80);
  *&v28[13] = *(v3 + 64);
  *&v28[15] = v23;
  v29 = *(v3 + 96);
  v24 = *(v3 + 48);
  *&v28[9] = *(v3 + 32);
  *&v28[11] = v24;
  specialized Environment.wrappedValue.getter(v28);
  CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)(v17, v12, v8, v28, v13, v26, v19, v22);
}

uint64_t assignWithCopy for HelpView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v10, v11);
  v12 = *v7;
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  outlined consume of Text.Storage(v12, v13, v14);
  *(v7 + 24) = *(v8 + 24);

  return a1;
}

uint64_t assignWithCopy for TooltipModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t specialized static ContentScrollViewBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScrollView);
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v5)
  {
    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v6 = v8;
  if (Strong)
  {
    if (v8)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
      v9 = static NSObject.== infix(_:_:)();

      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

LABEL_10:

    goto LABEL_13;
  }

  if (v8)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
  if (*(a1 + 16) == *(a2 + 16))
  {
    type metadata accessor for CGPoint(0);
    if (static WeakAttribute.== infix(_:_:)() & 1) != 0 && (static WeakAttribute.== infix(_:_:)() & 1) != 0 && (static WeakAttribute.== infix(_:_:)())
    {
      v10 = *(a1 + 44) ^ *(a2 + 44) ^ 1;
      return v10 & 1;
    }
  }

LABEL_13:
  v10 = 0;
  return v10 & 1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance UIKitMenuButton<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

double static UIKitMenuButton._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v54 = a7;
  v82 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v78 = a2[2];
  v79 = v12;
  v80 = a2[4];
  v81 = *(a2 + 20);
  v13 = a2[1];
  v76 = *a2;
  v77 = v13;
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for WeakBox<UIButton>?(0);
  lazy protocol witness table accessor for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BridgedPopUpButtonProvider(&v70);
  v56 = v11;
  v63 = v11;
  *&v70 = a3;
  *(&v70 + 1) = a4;
  *&v71 = a5;
  *(&v71 + 1) = a6;
  v50 = type metadata accessor for UIKitMenuButton();
  v55 = type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v15 = *(*(a4 - 8) + 64);
  v52 = v14;
  if (v15)
  {
    closure #1 in static UIKitMenuButton._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v72 = v78;
  v73 = v79;
  v74 = v80;
  LODWORD(v75[0]) = v81;
  v70 = v76;
  v71 = v77;
  v17 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v70, 1, &v64);
  MEMORY[0x1EEE9AC00](v17);
  *&v70 = &type metadata for AllPlatformItemListFlags;
  *(&v70 + 1) = a4;
  *&v71 = &protocol witness table for AllPlatformItemListFlags;
  *(&v71 + 1) = a6;
  v18 = type metadata accessor for PlatformItemListGenerator();
  v47 = v18;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v76, &v70);
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v64, closure #1 in Attribute.init<A>(_:)partial apply, &v45, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  v49 = 0;
  v74 = v68;
  v75[0] = v69[0];
  *(v75 + 12) = *(v69 + 12);
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  (*(*(v18 - 8) + 8))(&v70, v18);
  v57 = v60;
  v21 = v56;
  LODWORD(v64) = v56;
  v22 = _GraphValue.value.getter();
  LODWORD(v60) = v21;
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #2 in static UIKitMenuButton._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  v23 = a4;
  v24 = a6;
  v25 = AGGraphCreateOffsetAttribute2();
  v26 = *MEMORY[0x1E698D3F8];
  type metadata accessor for UIKitButton();
  v60 = __PAIR64__(v57, v22);
  v27 = v52;
  v61 = COERCE_DOUBLE(__PAIR64__(v52, v25));
  v62 = v26;
  v53 = a3;
  *&v64 = a3;
  *(&v64 + 1) = v23;
  v51 = v23;
  *&v65 = a5;
  *(&v65 + 1) = v24;
  type metadata accessor for UIKitMenuButton.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v66 = v78;
  v67 = v79;
  v68 = v80;
  LODWORD(v69[0]) = v81;
  v64 = v76;
  v65 = v77;
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  lazy protocol witness table accessor for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton();
  PropertyList.subscript.getter();
  v28 = v24;
  if (v64 == 1)
  {
    *&v64 = v79;
    DWORD2(v64) = DWORD2(v79);
    MEMORY[0x1EEE9AC00](v79);
    LODWORD(v47) = v27;

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    v28 = v24;
  }

  v64 = v76;
  v65 = v77;
  v66 = v78;
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v29 = v56;
    LODWORD(v64) = v56;
    _GraphValue.value.getter();
    v30 = v53;
    v31 = v51;
    closure #3 in static UIKitMenuButton._makeView(view:inputs:)(1, v53, v51, a5, v28);
    v52 = AGGraphCreateOffsetAttribute2();
    LODWORD(v58) = v29;
    v32 = _GraphValue.value.getter();
    v33 = v32;
    MEMORY[0x1EEE9AC00](v32);
    v45 = v30;
    v46 = v31;
    v47 = a5;
    WitnessTable = v28;
    KeyPath = swift_getKeyPath();
    LODWORD(v64) = v33;
    *(&v64 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
    *&v65 = KeyPath;
    MEMORY[0x1EEE9AC00](KeyPath);
    type metadata accessor for (())?();
    v35 = type metadata accessor for Map();
    v47 = v35;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for WeakBox<UIButton>?(0, &lazy cache variable for type metadata for Attribute<(())?>, type metadata accessor for (())?, MEMORY[0x1E698D388]);
    v37 = v36;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v64, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_22, &v45, v35, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);

    v39 = v59;
    outlined init with copy of _GraphInputs(&v76, &v64);
    if (one-time initialization token for menuIndicatorVisibility != -1)
    {
      swift_once();
    }

    v58 = static CachedEnvironment.ID.menuIndicatorVisibility;
    swift_beginAccess();
    v40 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    outlined destroy of _GraphInputs(&v76);
    outlined init with copy of _GraphInputs(&v76, &v64);
    if (one-time initialization token for menuOrder != -1)
    {
      swift_once();
    }

    v58 = static CachedEnvironment.ID.menuOrder;
    swift_beginAccess();
    v41 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    v42 = outlined destroy of _GraphInputs(&v76);
    MEMORY[0x1EEE9AC00](v42);
    v45 = __PAIR64__(v52, v57);
    v46 = __PAIR64__(v40, v39);
    LODWORD(v47) = v41;
    *&v64 = v79;
    DWORD2(v64) = DWORD2(v79);
    MEMORY[0x1EEE9AC00](v79);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v43 = v54;
  *v54 = v60;
  result = v61;
  *(v43 + 1) = v61;
  return result;
}

__n128 sub_18BFBD158(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider()
{
  result = lazy protocol witness table cache variable for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider;
  if (!lazy protocol witness table cache variable for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider);
  }

  return result;
}

uint64_t closure #2 in static UIKitMenuButton._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for UIKitMenuButton();
  v8 = *(v7 + 60);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t type metadata completion function for UIKitButton()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UIKitButtonConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label;
  if (!lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label;
  if (!lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label);
  }

  return result;
}

uint64_t sub_18BFBD430()
{
  lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody()
{
  result = lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody;
  if (!lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody;
  if (!lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedUIKitButtonBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t type metadata completion function for UIKitButtonStyleModifier.ResolvedBody()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI11ButtonStyleRzlAA05UIKitcD8ModifierV12ResolvedBody33_64A26C7A8406856A733B1A7B593971F7LLVyx_GAA4ViewHPyHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t type metadata completion function for UIKitButtonStyleModifier.ResolvedBody_Nested()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BFBD8E0()
{
  type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat();
  type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Nested();
  type metadata accessor for StaticIf();
  type metadata accessor for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<ActionPlatformItemListFlags>, &type metadata for ActionPlatformItemListFlags, &protocol witness table for ActionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>);
  }

  return result;
}

void type metadata accessor for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
    lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>();
    v0 = type metadata accessor for StaticSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton()
{
  result = lazy protocol witness table cache variable for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton;
  if (!lazy protocol witness table cache variable for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton);
  }

  return result;
}

uint64_t specialized static ViewInputPredicate.evaluate(listInputs:)()
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)())
  {
    v0 = 0;
  }

  else
  {
    static Semantics.v7.getter();
    v1 = isLinkedOnOrAfter(_:)();
    if (one-time initialization token for userDefaultsValue != -1)
    {
      v3 = v1;
      swift_once();
      v1 = v3;
    }

    v0 = static UseFlattenedUIKitButtonFeature.userDefaultsValue;
    if (static UseFlattenedUIKitButtonFeature.userDefaultsValue == 2)
    {
      v0 = v1;
    }
  }

  return v0 & 1;
}

uint64_t one-time initialization function for userDefaultsValue()
{
  result = closure #1 in variable initialization expression of static UseFlattenedUIKitButtonFeature.userDefaultsValue();
  static UseFlattenedUIKitButtonFeature.userDefaultsValue = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static UseFlattenedUIKitButtonFeature.userDefaultsValue()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x18D00C850](0xD000000000000029, 0x800000018CD56D20);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v8, v9);
    _s7SwiftUI7BindingVySbGWOhTm_2(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v4 = [v0 standardUserDefaults];
    v5 = MEMORY[0x18D00C850](0xD000000000000029, 0x800000018CD56D20);
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    _s7SwiftUI7BindingVySbGWOhTm_2(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    return 2;
  }

  return v6;
}

uint64_t type metadata completion function for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner()
{
  return type metadata completion function for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner();
}

{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for UIKitFlattenedButtonAdaptor()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for UIKitFlattenedButtonAdaptorStorage()
{
  result = type metadata singleton initialization cache for UIKitFlattenedButtonAdaptorStorage;
  if (!type metadata singleton initialization cache for UIKitFlattenedButtonAdaptorStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for UIButton.Configuration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for UIKitFlattenedButtonAdaptorStorage()
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(319, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

id static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v38 = *a1;
  v5 = *(a2 + 48);
  v68 = *(a2 + 32);
  v69 = v5;
  v70 = *(a2 + 64);
  v71 = *(a2 + 80);
  v6 = *(a2 + 16);
  v66 = *a2;
  v67 = v6;
  v73 = v6;
  v74 = v68;
  v72 = v66;
  v7 = BYTE4(v68);
  v42 = *(a2 + 56);
  v41 = *(a2 + 48);
  v35 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v8 = _ViewInputs.animatedPosition()();
  v9 = v73;
  swift_beginAccess();
  v36 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  outlined init with copy of _ViewInputs(&v66, v58);
  lazy protocol witness table accessor for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization();
  PropertyList.subscript.getter();
  if (LOBYTE(v58[0]) == 1)
  {
    _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA04TextfghM0V_Ttg5(2u);
  }

  v10 = *MEMORY[0x1E698D3F8];
  if ((v7 & 0x20) != 0)
  {
    HIDWORD(v64) = *MEMORY[0x1E698D3F8];
    *&v58[0] = __PAIR64__(v8, HIDWORD(v63));
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.transform.setter();
  }

  v37 = v8;
  _ViewInputs.containerPosition.setter();
  LODWORD(v58[0]) = v10;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for WeakBox<UIView>();
  lazy protocol witness table accessor for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider();
  LODWORD(v58[0]) = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput();
  PropertyList.subscript.setter();
  LOBYTE(v58[0]) = 1;
  lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag();
  PropertyList.subscript.setter();
  type metadata accessor for UIKitFlattenedButtonAdaptor();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)(1, a3);
  }

  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v56[2] = v62;
  v56[3] = v63;
  v56[4] = v64;
  v57 = v65;
  v56[0] = v60;
  v56[1] = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v50 = v60;
  v51 = v61;
  outlined init with copy of _ViewInputs(v56, v58);
  static View.makeDebuggableView(view:inputs:)();
  v58[2] = v52;
  v58[3] = v53;
  v58[4] = v54;
  v59 = v55;
  v58[0] = v50;
  v58[1] = v51;
  outlined destroy of _ViewInputs(v58);
  LODWORD(v44) = v38;
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for UIKitFlattenedButtonAdaptorStorage() - 8) + 64))
  {
    closure #2 in static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v34 = *(v9 + 16);
  lazy protocol witness table accessor for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput();
  PropertyList.subscript.getter();
  v39 = v50;
  outlined init with copy of _GraphInputs(&v72, &v50);
  lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior();
  PropertyList.subscript.getter();
  outlined destroy of _GraphInputs(&v72);
  v12 = v50;
  v13 = _ViewOutputs.layoutComputer.getter();
  if ((v13 & 0x100000000) != 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  *&v50 = v40;
  DWORD2(v50) = DWORD2(v40);
  v15 = PreferencesOutputs.subscript.getter();
  if ((v15 & 0x100000000) != 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  specialized static ViewGraph.eventGraphHost.getter();
  v18 = v17;
  *&v50 = __PAIR64__(v34, OffsetAttribute2);
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  *(&v50 + 1) = PropertyList.Tracker.init()();
  v51 = v39;
  LOBYTE(v52) = v12;
  *&v53 = v18;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(&v53 + 1) = __PAIR64__(v16, v14);
  v54 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for HostingUIButton();
  lazy protocol witness table accessor for type UpdateUIButton and conformance UpdateUIButton();
  v19 = Attribute.init<A>(body:value:flags:update:)();
  updated = outlined destroy of UpdateUIButton(&v50);
  MEMORY[0x1EEE9AC00](updated);
  MEMORY[0x1EEE9AC00](v21);
  AGGraphMutateAttribute();
  if (v35)
  {
    _DisplayList_Identity.init()();
    v22 = v50;
    v52 = v68;
    v53 = v69;
    v54 = v70;
    v55 = v71;
    v50 = v66;
    v51 = v67;
    LODWORD(v44) = v22;
    _ViewInputs.pushIdentity(_:)();
    *&v50 = v40;
    DWORD2(v50) = DWORD2(v40);
    v23 = PreferencesOutputs.subscript.getter();
    if ((v23 & 0x100000000) != 0)
    {
      v24 = v10;
    }

    else
    {
      v24 = v23;
    }

    v52 = v68;
    v53 = v69;
    v54 = v70;
    v55 = v71;
    v50 = v66;
    v51 = v67;
    v25 = _ViewInputs.containerPosition.getter();
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v26 = _GraphInputs.layoutDirection.getter();
    *&v50 = __PAIR64__(v19, v22);
    *(&v50 + 1) = __PAIR64__(v36, v37);
    *&v51 = __PAIR64__(v24, v25);
    DWORD2(v51) = v26;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for ButtonDisplayList<HostingUIButton>, type metadata accessor for HostingUIButton, type metadata accessor for ButtonDisplayList);
    lazy protocol witness table accessor for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v50) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *&v50 = v41;
  DWORD2(v50) = v42;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v27 = HIDWORD(v69);
    v50 = v40;

    v28 = _ViewOutputs.viewResponders()();

    v52 = v62;
    v53 = v63;
    v54 = v64;
    v55 = v65;
    v50 = v60;
    v51 = v61;
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v44 = v60;
    v45 = v61;
    v46 = v62;
    type metadata accessor for DefaultLayoutViewResponder();
    swift_allocObject();
    outlined init with copy of _ViewInputs(&v50, &v43);
    v29 = DefaultLayoutViewResponder.init(inputs:)();
    *&v44 = __PAIR64__(v37, v19);
    *(&v44 + 1) = __PAIR64__(v27, v36);
    LODWORD(v45) = v28;
    *(&v45 + 1) = v29;
    *&v46 = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type ButtonResponder and conformance ButtonResponder();
    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *&v50 = v41;
  DWORD2(v50) = v42;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  *&v50 = v41;
  DWORD2(v50) = v42;
  v30 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((v30 & 1) == 0)
  {
LABEL_26:
    LOBYTE(v50) = (v30 & 1) == 0;
    PreferencesOutputs.subscript.setter();
LABEL_27:
    v52 = v62;
    v53 = v63;
    v54 = v64;
    v55 = v65;
    v50 = v60;
    v51 = v61;
    result = outlined destroy of _ViewInputs(&v50);
    *a4 = v40;
    return result;
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    v32 = result;
    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c8PlatformdE0V_Tt5B5(v10, &v66, v40, SDWORD2(v40), 1, result, v19, &type metadata for ButtonAccessibilityModifier, &protocol witness table for ButtonAccessibilityModifier, 0);

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization()
{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

uint64_t closure #1 in static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for UIKitFlattenedButtonAdaptor();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static ResolvedButtonStyleBody._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a2[3];
  v30 = a2[2];
  v31 = v6;
  v32 = a2[4];
  v33 = *(a2 + 20);
  v7 = a2[1];
  v28 = *a2;
  v29 = v7;
  static DynamicPropertyCache.fields(of:)();
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  LODWORD(v16) = v5;
  v34 = v40;
  LOBYTE(v35) = v41;
  DWORD1(v35) = DWORD1(v41);
  outlined init with copy of _ViewInputs(&v28, &v40);
  static ResolvedButtonStyleBody.makeStyleBody(view:inputs:fields:)(v15, &v40, &v16, &v22, &v34, a3);
  v8 = *(&v40 + 1);
  v11 = v40;
  v9 = v41;
  swift_getAssociatedTypeWitness();
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v34 = v22;
  v35 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v16 = v22;
  v17 = v23;
  outlined init with copy of _ViewInputs(&v34, &v40);
  swift_getAssociatedConformanceWitness();
  static View.makeDebuggableView(view:inputs:)();
  v42 = v18;
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v40 = v16;
  v41 = v17;
  outlined destroy of _ViewInputs(&v40);
  if ((v9 & 1) == 0)
  {
    v15[0] = v11;
    v15[1] = v8;
    type metadata accessor for ResolvedButtonStyleBody();
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v16 = v22;
  v17 = v23;
  outlined destroy of _ViewInputs(&v16);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a4 = v13;
  a4[1] = v14;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance UIKitButtonConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<UIKitButtonConfiguration.Label>, lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label, &type metadata for UIKitButtonConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t specialized ResolvedNavigationDestinations.updatePossibilities<A>(for:over:)(unint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    if ((a2 + 1) < 2)
    {
LABEL_4:
      v6 = *(v3 + 16);
      v7 = a1;
      v8 = a2;

      ResolvedNavigationDestinations.ejectDestinations(at:)(v8);

      ResolvedNavigationDestinations.setPossibilities(_:depth:)(v7, v8);

      v9 = *(v3 + 48);
      v10 = *(v3 + 16);
      v26 = *(v3 + 32);
      v27 = v9;
      v11 = *(v3 + 48);
      v28 = *(v3 + 64);
      v12 = *(v3 + 16);
      v25[0] = *v3;
      v25[1] = v12;
      v21 = v26;
      v22 = v11;
      v23 = *(v3 + 64);
      v29 = *(v3 + 80);
      v24 = *(v3 + 80);
      v19 = v25[0];
      v20 = v10;
      outlined init with copy of ResolvedNavigationDestinations(v25, v30);
      v13 = ResolvedNavigationDestinations.domainDiffers(from:)(v6);

      v30[2] = v21;
      v30[3] = v22;
      v30[4] = v23;
      v31 = v24;
      v30[0] = v19;
      v30[1] = v20;
      outlined destroy of ResolvedNavigationDestinations(v30);
      v4 = v13 & 1;
      v5 = 0x100000000;
      return v5 | v4;
    }

    if (a1 >> 62)
    {
      v15 = a1;
      v16 = a2;
      v17 = __CocoaSet.count.getter();
      a2 = v16;
      v18 = v17;
      a1 = v15;
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    MEMORY[0x18D009810](0xD000000000000065, 0x800000018CD3DFA0);
    v4 = 0;
    v5 = 0;
    return v5 | v4;
  }

  v4 = 0;
  v5 = 0;
  return v5 | v4;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MenuStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Label>, lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label, &type metadata for MenuStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t ResolvedNavigationDestinations.domainDiffers(from:)(uint64_t a1)
{
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x1E69E5FE0];
  v6 = MEMORY[0x1E69E5FE8];
  do
  {
    while (1)
    {
      if (*(a1 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v11 & 1) != 0))
      {
        v12 = *(*(a1 + 56) + 8 * v10);

        if (!*(v4 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = 0;
        if (!*(v4 + 16))
        {
          goto LABEL_14;
        }
      }

      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
      if (v14)
      {
        v15 = *(*(v4 + 56) + 8 * v13);

        if (!v12)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }

LABEL_14:
      v15 = 0;
      if (!v12)
      {
LABEL_12:
        if (!v15)
        {
          return 0;
        }

        v7 = *(v15 + 16);
        goto LABEL_3;
      }

LABEL_15:
      if (!v15)
      {
        v7 = *(v12 + 16);
LABEL_3:

        if (v7)
        {
          return 1;
        }

        goto LABEL_4;
      }

      v16 = *(v12 + 16);
      v17 = *(v15 + 16);
      if (v16)
      {
        break;
      }

      if (v17)
      {
        return 1;
      }

      v9 = __OFADD__(v3++, 1);
      if (v9)
      {
        __break(1u);
        return 0;
      }
    }

    if (v16 != v17)
    {

      return 1;
    }

    v18 = 0;
    v24 = MEMORY[0x18D00D140](*(v12 + 16), v5, v6);
    do
    {
      v19 = *(v12 + 8 * v18++ + 32);
      specialized Set._Variant.insert(_:)(&v23, v19);
    }

    while (v16 != v18);

    v20 = v24;
    v24 = MEMORY[0x18D00D140](v16, v5, v6);
    v21 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(&v23, *(v15 + v21));
      v21 += 8;
      --v16;
    }

    while (v16);

    v22 = _sSh2eeoiySbShyxG_ABtFZSO_Tt1g5(v20, v24);

    if ((v22 & 1) == 0)
    {
      return 1;
    }

LABEL_4:
    v9 = __OFADD__(v3++, 1);
  }

  while (!v9);
  __break(1u);
  return result;
}

uint64_t destroy for ResolvedNavigationDestinations()
{
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.equals(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*(v4 + 200) + 8);
  v6 = *(v4 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v86 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = v81 - v10;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v90 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = v81 - v15;
  v101 = v6;
  v100 = swift_getAssociatedTypeWitness();
  v16 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v89 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v81 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v96 = v81 - v22;
  v88 = v4;
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v104 = v5;

    v26 = AnyNavigationPath.HomogeneousBoxBase.count.getter(v25);
    if (v26 == AnyNavigationPath.HomogeneousBoxBase.count.getter(v26))
    {
      v81[0] = a1;
      v27 = *(*v2 + 232);
      swift_beginAccess();
      v97 = v7;
      v28 = *(v11 + 16);
      v94 = v27;
      v29 = v2 + v27;
      v30 = v102;
      v91 = v16;
      v31 = v101;
      v28(v102, v29, v101);
      v99 = v20;
      dispatch thunk of Collection.startIndex.getter();
      v93 = v2;
      v32 = *(v11 + 8);
      v32(v30, v31);
      v33 = *(*v24 + 232);
      swift_beginAccess();
      v98 = v33;
      v34 = v24;
      v35 = (v24 + v33);
      v36 = v11 + 8;
      v37 = v90;
      v106 = v11 + 16;
      v103 = v28;
      v28(v90, v35, v31);
      dispatch thunk of Collection.startIndex.getter();
      v105 = v32;
      v32(v37, v31);
      v38 = (v91 + 8);
      v84 = (v97 + 16);
      v83 = (v97 + 8);
      v82 = (v91 + 32);
      v39 = v89;
      v85 = (v91 + 8);
      v92 = v34;
      v81[1] = v36;
      while (1)
      {
        v40 = v93;
        v41 = v94;
        v42 = v101;
        v43 = v102;
        v103(v102, v93 + v94, v101);
        dispatch thunk of Collection.endIndex.getter();
        v105(v43, v42);
        v44 = v100;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v43) = dispatch thunk of static Comparable.< infix(_:_:)();
        v45 = *v38;
        (*v38)(v39, v44);
        if ((v43 & 1) == 0)
        {
          break;
        }

        v47 = v101;
        v46 = v102;
        v103(v102, (v34 + v98), v101);
        dispatch thunk of Collection.endIndex.getter();
        v105(v46, v47);
        v48 = v100;
        LOBYTE(v47) = dispatch thunk of static Comparable.< infix(_:_:)();
        v45(v39, v48);
        if ((v47 & 1) == 0)
        {
          break;
        }

        v97 = v45;
        v49 = v40 + v41;
        v50 = v101;
        v51 = v102;
        v52 = v103;
        v103(v102, v49, v101);
        v53 = dispatch thunk of Collection.subscript.read();
        v91 = *v84;
        v54 = AssociatedTypeWitness;
        v91(v95);
        v53(v107, 0);
        v55 = v105;
        v105(v51, v50);
        v56 = v90;
        v52(v90, v34 + v98, v50);
        v57 = dispatch thunk of Collection.subscript.read();
        v58 = v86;
        v91(v86);
        v57(v107, 0);
        v55(v56, v50);
        v59 = v95;
        LOBYTE(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
        v60 = *v83;
        (*v83)(v58, v54);
        v60(v59, v54);
        if ((v56 & 1) == 0)
        {

          v78 = v100;
          v79 = v97;
          (v97)(v99, v100);
          v79(v96, v78);
          goto LABEL_13;
        }

        v61 = v103;
        v103(v51, v93 + v94, v50);
        v39 = v89;
        v62 = v96;
        dispatch thunk of Collection.index(after:)();
        v105(v51, v50);
        v63 = v100;
        v64 = v85;
        (v97)(v62, v100);
        v91 = *v82;
        (v91)(v62, v39, v63);
        v61(v51, v92 + v98, v50);
        v65 = v99;
        dispatch thunk of Collection.index(after:)();
        v105(v51, v50);
        (v97)(v65, v63);
        (v91)(v65, v39, v63);
        v38 = v64;
        v34 = v92;
      }

      v66 = v40 + v41;
      v68 = v101;
      v67 = v102;
      v103(v102, v66, v101);
      dispatch thunk of Collection.endIndex.getter();
      v105(v67, v68);
      v69 = v39;
      v70 = v96;
      v71 = v100;
      LOBYTE(v67) = dispatch thunk of static Equatable.== infix(_:_:)();
      v45(v69, v71);
      if (v67)
      {
        v73 = v101;
        v72 = v102;
        v103(v102, (v92 + v98), v101);
        dispatch thunk of Collection.endIndex.getter();
        v105(v72, v73);
        v74 = v99;
        v75 = v100;
        v76 = dispatch thunk of static Equatable.== infix(_:_:)();

        v45(v69, v75);
        v45(v74, v75);
        v45(v70, v75);
        return v76 & 1;
      }

      v77 = v100;
      v45(v99, v100);
      v45(v70, v77);
    }

    else
    {
    }
  }

LABEL_13:
  v76 = 0;
  return v76 & 1;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v2 + 232);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = dispatch thunk of Collection.count.getter();
  (*(v4 + 8))(v6, v3);
  return v8;
}

unsigned __int8 NavigationSplitSidebarStateMachine.dependenciesDidChange(visibilityEngine:splitController:isAnimated:)(__int128 *a1, UISplitViewController *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  *&v53[16] = a1[2];
  v54 = v11;
  v55 = a1[4];
  v56 = *(a1 + 80);
  v12 = a1[1];
  v52 = *a1;
  *v53 = v12;
  static Log.splitViewVisibility.getter();
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    outlined destroy of Logger?(v10);
  }

  else
  {
    v38 = v5;
    outlined init with copy of UISplitViewControllerVisibilityEngine(&v52, &v46);
    v5 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    outlined destroy of UISplitViewControllerVisibilityEngine(&v52);
    if (os_log_type_enabled(v5, v15))
    {
      v16 = swift_slowAlloc();
      v36 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v37 = v4;
      v19 = v18;
      v45 = v18;
      *v17 = 136315138;
      v41 = *&v53[16];
      v42 = v54;
      v43 = v55;
      v44 = v56;
      v39 = v52;
      v40 = *v53;
      outlined init with copy of UISplitViewControllerVisibilityEngine(&v52, &v46);
      v20 = UISplitViewControllerVisibilityEngine.description.getter();
      v22 = v21;
      v48 = v41;
      v49 = v42;
      v50 = v43;
      v51 = v44;
      v46 = v39;
      v47 = v40;
      outlined destroy of UISplitViewControllerVisibilityEngine(&v46);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v45);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_18BD4A000, v5, v15, "updated from dependencies, %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v24 = v19;
      v4 = v37;
      MEMORY[0x18D0110E0](v24, -1, -1);
      v25 = v17;
      a2 = v36;
      MEMORY[0x18D0110E0](v25, -1, -1);
    }

    (*(v14 + 8))(v10, v13);
    LOBYTE(v5) = v38;
  }

  v48 = *&v53[16];
  v49 = v54;
  v50 = v55;
  v51 = v56;
  v46 = v52;
  v47 = *v53;
  result = UISplitViewControllerVisibilityEngine.visibility.getter(&v39);
  v27 = *(v4 + 24);
  v28 = v39 & 0xFF00;
  v29 = (v27 & 0xFF00) == 0x200 && v28 == 512;
  if (v28 != 512 && (v27 & 0xFF00) != 0x200)
  {
    v29 = (v27 ^ v39) == 0;
  }

  if (!*&v53[16])
  {
    v31 = (v4 + 40);
    if (*(v4 + 40) == 2)
    {
      if (v29)
      {
        return result;
      }

      v33 = 1;
      goto LABEL_27;
    }

LABEL_20:
    if (v29)
    {
LABEL_23:
      v48 = *&v53[16];
      v49 = v54;
      v50 = v55;
      v51 = v56;
      v46 = v52;
      v47 = *v53;
      result = UISplitViewControllerVisibilityEngine.updateSplitViewControllerInspectorIfNeeded(_:isAnimated:)(a2, v5 & 1).value;
      *v31 = result;
LABEL_24:
      if (v5)
      {
        return NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(a2);
      }

      return result;
    }

    [(UISplitViewController *)a2 isCollapsed];
    v34 = 0;
LABEL_22:
    v48 = *&v53[16];
    v49 = v54;
    v50 = v55;
    v51 = v56;
    v46 = v52;
    v47 = *v53;
    result = UISplitViewControllerVisibilityEngine.updateSplitViewController(_:isAnimated:)(a2, v5 & 1).value.kind;
    *(v4 + 24) = v39;
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v46 = *&v53[8];
  LOBYTE(v47) = v53[24] & 1;
  type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  result = MEMORY[0x18D00ACC0](&v39);
  v31 = (v4 + 40);
  v30 = *(v4 + 40);
  if (v30 == 2)
  {
    goto LABEL_20;
  }

  v32 = v39 ^ v30;
  if (v29)
  {
    if ((v32 & 1) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  v33 = v32 ^ 1;
LABEL_27:
  result = [(UISplitViewController *)a2 isCollapsed];
  v34 = (result ^ 1) & v33;
  if (((result ^ 1) & 1) != 0 || (v33 & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

void WithCurrentHostingControllerAction.callAsFunction(_:)(void (*a1)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

uint64_t sub_18BFC09C8()
{
  type metadata accessor for MergePlatformItemsView();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
  swift_getWitnessTable();
  type metadata accessor for MergePlatformItemsView();
  type metadata accessor for PlatformItemListGeneratingViewModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier()
{
  result = lazy protocol witness table cache variable for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier;
  if (!lazy protocol witness table cache variable for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PlatformItemListGeneratingViewModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void closure #1 in UpdateCoalescingCollectionView.bridgedState.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UpdateCoalescingCollectionView.updateContent()();
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MergePlatformItemsView<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t UpdateCoalescingCollectionView.updateContent()()
{
  v1 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24[-v3];
  v5 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState, v1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  v12 = type metadata accessor for BridgedListState(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = v0;
  static Update.ensure<A>(_:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = &lazy cache variable for type metadata for BridgedListState?;
    v17 = type metadata accessor for BridgedListState;
    v18 = v11;
LABEL_7:
    result = _s10Foundation9IndexPathVSgWOhTm_2(v18, v16, v17);
LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v11, v15, type metadata accessor for BridgedListState);
  v19 = *&v15[*(v12 + 28)];
  if (*&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed] == v19 && v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingScrollTarget] != 1)
  {
LABEL_17:
    result = outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v15, type metadata accessor for BridgedListState);
    goto LABEL_18;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed] = v19;
  outlined init with copy of BridgedListState.ScrollTarget?(&v15[*(v12 + 20)], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v15, type metadata accessor for BridgedListState);
    v16 = &lazy cache variable for type metadata for BridgedListState.ScrollTarget?;
    v17 = type metadata accessor for BridgedListState.ScrollTarget;
    v18 = v4;
    goto LABEL_7;
  }

  outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v4, v8, type metadata accessor for BridgedListState.ScrollTarget);
  [v0 bounds];
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = 0.0;
  v27.size.height = 0.0;
  if (!CGRectEqualToRect(v26, v27))
  {
    v22.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    if (v8[*(v5 + 20) + 16])
    {
      v23 = 0;
    }

    else
    {
      static UnitPoint.bottom.getter();
      if (static UnitPoint.== infix(_:_:)() & 1) != 0 || (static UnitPoint.bottomLeading.getter(), (static UnitPoint.== infix(_:_:)()) || (static UnitPoint.bottomTrailing.getter(), (static UnitPoint.== infix(_:_:)()))
      {
        v23 = 4;
      }

      else
      {
        static UnitPoint.top.getter();
        if (static UnitPoint.== infix(_:_:)() & 1) != 0 || (static UnitPoint.topLeading.getter(), (static UnitPoint.== infix(_:_:)()))
        {
          v23 = 1;
        }

        else
        {
          static UnitPoint.topTrailing.getter();
          if (static UnitPoint.== infix(_:_:)())
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }
        }
      }
    }

    [v0 scrollToItemAtIndexPath:v22.super.isa atScrollPosition:v23 animated:v8[*(v5 + 24)]];

    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v8, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_17;
  }

  outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v8, type metadata accessor for BridgedListState.ScrollTarget);
  result = outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v15, type metadata accessor for BridgedListState);
  v21 = 1;
LABEL_19:
  v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingScrollTarget] = v21;
  return result;
}