uint64_t _BenchmarkHost.stateForIdentifier<A, B, C>(_:type:in:)@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && v1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    ViewRendererHost.stateForIdentifier<A, B, C>(_:type:in:)(ObjectType, v4, a1);

    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = type metadata accessor for Binding();
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }
}

uint64_t closure #1 in ViewRendererHost.viewForIdentifier<A, B>(_:_:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a5;
  v23 = a6;
  v24 = a1;
  v25 = a8;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = type metadata accessor for ViewValuePredicate();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(*(a4 - 8) + 56))(v15, 1, 1, a4, v18);
  ViewValuePredicate.init(view:)(v15, a4, v20);
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = v22;
  v30 = v23;
  v31 = a7;
  v32 = v20;
  AGAttribute.breadthFirstSearch(options:_:)();
  (*(v13 + 16))(v25, v20, v12);
  return (*(v17 + 8))(v20, v16);
}

uint64_t ViewRendererHost.findIdentifier<A, B>(_:root:filter:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    (*(*(a4 + 8) + 8))(a2);
  }

  v6 = type metadata accessor for Optional();
  swift_allocBox();
  v8 = v7;
  v9 = (*(*(a3 - 8) + 56))(v7, 1, 1, a3);
  MEMORY[0x1EEE9AC00](v9);
  AGAttribute.breadthFirstSearch(options:_:)();
  swift_beginAccess();
  (*(*(v6 - 8) + 16))(a5, v8, v6);
}

uint64_t closure #1 in ViewRendererHost.stateForIdentifier<A, B, C>(_:type:in:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22[1] = a1;
  v23 = a9;
  v16 = type metadata accessor for ViewStatePredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v22 - v18;
  ViewStatePredicate.init()(v22 - v18);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = v19;
  AGAttribute.breadthFirstSearch(options:_:)();
  type metadata accessor for Binding();
  v20 = type metadata accessor for Optional();
  (*(*(v20 - 8) + 16))(v23, v19, v20);
  return (*(v17 + 8))(v19, v16);
}

uint64_t partial apply for closure #1 in ViewRendererHost.findIdentifier<A, B>(_:root:filter:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  AttributeInfo = AGGraphGetAttributeInfo();
  return project #1 <A><A1, B1><A2>(type:) in closure #1 in ViewRendererHost.findIdentifier<A, B>(_:root:filter:)(*AttributeInfo, a1, v7, v9, v10, v11, v3, v4, v5, *AttributeInfo, v6, v8) & 1;
}

uint64_t project #1 <A><A1, B1><A2>(type:) in closure #1 in ViewRendererHost.findIdentifier<A, B>(_:root:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a3;
  v41 = a8;
  v36 = a5;
  v37 = a4;
  v13 = type metadata accessor for Optional();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_projectBox();
  AGGraphGetAttributeInfo();
  (*(v23 + 16))(v26);
  type metadata accessor for IdentifierProvider();
  if (swift_dynamicCast())
  {
    v35 = v27;
    outlined init with take of AnyTrackedValue(v42, v44);
    v28 = v45;
    v29 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    if ((*(v29 + 8))(v40, v41, a12, v28, v29))
    {
      v37(a2);
      if ((*(v19 + 48))(v18, 1, a9) != 1)
      {
        v32 = *(v19 + 32);
        v32(v22, v18, a9);
        v32(v15, v22, a9);
        v30 = 1;
        (*(v19 + 56))(v15, 0, 1, a9);
        v33 = v35;
        swift_beginAccess();
        (*(v38 + 40))(v33, v15, v39);
        __swift_destroy_boxed_opaque_existential_1(v44);
        return v30;
      }

      (*(v38 + 8))(v18, v39);
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    outlined destroy of IdentifierProvider?(v42);
  }

  return 0;
}

unint64_t type metadata accessor for IdentifierProvider()
{
  result = lazy cache variable for type metadata for IdentifierProvider;
  if (!lazy cache variable for type metadata for IdentifierProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IdentifierProvider);
  }

  return result;
}

uint64_t outlined destroy of IdentifierProvider?(uint64_t a1)
{
  type metadata accessor for IdentifierProvider?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for IdentifierProvider?()
{
  if (!lazy cache variable for type metadata for IdentifierProvider?)
  {
    type metadata accessor for IdentifierProvider();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IdentifierProvider?);
    }
  }
}

uint64_t LazyVStack.init(alignment:spacing:pinnedViews:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _DWORD *a4@<X3>, void (*a5)(double)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = a5;
  v23 = a7;
  v24 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _VariadicView.Tree();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  LODWORD(v18) = *a4;
  v27[0] = a1;
  v27[1] = a2;
  v28 = a3 & 1;
  v29 = v18;
  v22(v17);
  _VariadicView.Tree.init(root:content:)(v27, v14, &type metadata for LazyVStackLayout, a6, v19);
  v25 = &protocol witness table for LazyVStackLayout;
  v26 = v23;
  WitnessTable = swift_getWitnessTable();
  View.resettableLazyLayoutRoot()(v15, WitnessTable);
  return (*(v16 + 8))(v19, v15);
}

uint64_t LazyVStackLayout.init(base:pinnedViews:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 20) = v5;
  return result;
}

uint64_t static LazyVStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  v41 = a2[2];
  v42 = v8;
  v43 = a2[4];
  v44 = *(a2 + 20);
  v9 = a2[1];
  v39 = *a2;
  v40 = v9;
  v19 = a3;
  v20 = a4;
  v18[1] = v7;
  type metadata accessor for LazyVStack();
  type metadata accessor for _GraphValue();
  v10 = type metadata accessor for _VariadicView.Tree();
  v37 = &protocol witness table for LazyVStackLayout;
  v38 = a4;
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for ResettableLazyLayoutRoot();
  _GraphValue.subscript.getter(partial apply for closure #1 in static LazyVStack._makeView(view:inputs:), v12, v18);
  v13 = v18[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v27 = v39;
  v28 = v40;
  v34 = v44;
  v15 = v41;
  LODWORD(v29) = 0;
  v17 = v13;
  v33[0] = v39;
  v33[1] = v40;
  v33[3] = v42;
  v33[4] = v43;
  v33[2] = v29;
  v23 = v29;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v21 = v39;
  v22 = v40;
  outlined init with copy of _ViewInputs(&v39, v35);
  outlined init with copy of _ViewInputs(v33, v35);
  static ResettableLazyLayoutRoot._makeView(view:inputs:)(&v17, &v21, v10, WitnessTable, a5);
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v36 = v26;
  v35[0] = v21;
  v35[1] = v22;
  outlined destroy of _ViewInputs(v35);
  LODWORD(v29) = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v27);
    AGSubgraphEndTreeElement();
  }

  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  return outlined destroy of _ViewInputs(&v21);
}

uint64_t closure #1 in static LazyVStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = type metadata accessor for LazyVStack();
  type metadata accessor for _VariadicView.Tree();
  v10 = &protocol witness table for LazyVStackLayout;
  v11 = a3;
  swift_getWitnessTable();
  v9 = type metadata accessor for ResettableLazyLayoutRoot();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v12;
}

uint64_t LazyVStackLayout.base.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

unint64_t instantiation function for generic protocol witness table for LazyVStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for LazyVStack()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Text.init(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  type metadata accessor for ConcatenatedTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7 & 1;
  *(result + 72) = a8;
  return result;
}

uint64_t ConcatenatedTextStorage.resolvesToEmpty(in:with:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(v2 + 16);
  if (*(v3 + 32) != 1)
  {
    v10 = *(v3 + 24);
    if ((v10 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v16 = *a1;
  v17 = v5;
  v15 = v6;
  if (((*(*v7 + 88))(&v16, &v15) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = *(v3 + 48);
  if (*(v3 + 64))
  {
    v16 = v4;
    v17 = v5;
    v15 = v6;
    v9 = (*(*v8 + 88))(&v16, &v15);
  }

  else
  {
    v12 = *(v3 + 56);
    if ((v12 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v13 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v13 == 0;
  }

  return v9 & 1;
}

uint64_t ConcatenatedTextStorage.isStyled(options:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + 40);
  if (*(v1 + 32) == 1)
  {
    v5 = *(v1 + 16);
    v20 = *a1;
    if ((*(*v5 + 104))(&v20))
    {
      return 1;
    }
  }

  v6 = (v4 + 40);
  v7 = *(v4 + 16) + 1;
  while (--v7)
  {
    if ((*v6 & 0xE0) == 0xC0)
    {
      v8 = v6 + 16;
      v9 = *(v6 - 1);
      v20 = v3;
      v10 = (*(*v9 + 80))(&v20);
      v6 = v8;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  v11 = *(v2 + 72);
  if (*(v2 + 64) == 1)
  {
    v12 = *(v2 + 48);
    v20 = v3;
    if ((*(*v12 + 104))(&v20))
    {
      return 1;
    }
  }

  v15 = (v11 + 40);
  v16 = *(v11 + 16) + 1;
  do
  {
    v13 = --v16 != 0;
    if (!v16)
    {
      break;
    }

    if ((*v15 & 0xE0) != 0xC0)
    {
      break;
    }

    v17 = v15 + 16;
    v18 = *(v15 - 1);
    v20 = v3;
    v19 = (*(*v18 + 80))(&v20);
    v15 = v17;
  }

  while ((v19 & 1) == 0);
  return v13;
}

uint64_t ConcatenatedTextStorage.__ivar_destroyer()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
}

void *Text.Encapsulation.resolve(in:)(uint64_t *a1)
{
  v28 = a1[1];
  v29 = *a1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = v1[4];
  v7 = *(v1 + 40);
  v8 = *(v1 + 6);
  v9 = *(v1 + 56);
  v10 = v1[8];
  v11 = *(v1 + 9);
  v30 = *(v1 + 80);
  v27 = v1[11];
  v12 = *(v1 + 96);
  v13 = [objc_allocWithZone(MEMORY[0x1E69655F0]) init];
  v14 = v13;
  if (v3)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v13 setScale_];
    if (v5)
    {
LABEL_3:
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  [v14 setShape_];
  if (v7)
  {
LABEL_4:
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v14 setStyle_];
  if (v12)
  {
LABEL_5:
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v14 setPlatterSize_];
  if (v9)
  {
LABEL_6:
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_15:
    v31[0] = v29;
    v31[1] = v28;
    v16 = *(*v10 + 112);

    v16(v31);
    if (one-time initialization token for cache != -1)
    {
      v23 = v17;
      v24 = v18;
      v25 = v19;
      v26 = v20;
      swift_once();
      v20 = v26;
      v19 = v25;
      v18 = v24;
      v17 = v23;
    }

    specialized ObjectCache.subscript.getter(v17, v18, v19, v20);
    v22 = v21;
    [v14 setPlatformColor_];

    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }

    return v14;
  }

LABEL_14:
  [v14 setLineWeight_];
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v30 & 1) == 0)
  {
LABEL_8:
    [v14 setMinimumWidth_];
  }

  return v14;
}

uint64_t Text.Encapsulation.init(scale:shape:style:lineWeight:color:minimumWidth:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *(result + 8);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *a3;
  v13 = *(a3 + 8);
  *a9 = *result;
  *(a9 + 8) = v9;
  *(a9 + 16) = v10;
  *(a9 + 24) = v11;
  *(a9 + 32) = v12;
  *(a9 + 40) = v13;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5 & 1;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8 & 1;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  return result;
}

uint64_t Text.Encapsulation.init(scale:shape:style:platterSize:lineWeight:color:minimumWidth:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *(result + 8);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *a4;
  v16 = *(a4 + 8);
  *a9 = *result;
  *(a9 + 8) = v10;
  *(a9 + 16) = v11;
  *(a9 + 24) = v12;
  *(a9 + 32) = v13;
  *(a9 + 40) = v14;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6 & 1;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10 & 1;
  *(a9 + 88) = v15;
  *(a9 + 96) = v16;
  return result;
}

void Text.Encapsulation.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v22 = v1[2];
  v23 = v1[4];
  v24 = *(v1 + 40);
  v4 = v1[6];
  v5 = *(v1 + 56);
  v7 = v1[8];
  v6 = v1[9];
  v8 = *(v1 + 80);
  v9 = v1[11];
  v10 = *(v1 + 96);
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = v1[8];
    v12 = *(v1 + 56);
    v13 = v1[6];
    v14 = *(v1 + 80);
    v15 = v1[9];
    v16 = *(v1 + 96);
    v17 = v1[11];
    v18 = *v1;
    Hasher._combine(_:)(1u);
    v19 = v18;
    v9 = v17;
    v10 = v16;
    v6 = v15;
    v8 = v14;
    v4 = v13;
    v5 = v12;
    v7 = v21;
    MEMORY[0x193AC11A0](v19);
    if (!v3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      MEMORY[0x193AC11A0](v22);
      if (!v24)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  Hasher._combine(_:)(0);
  if (!v24)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v23);
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_14:
  Hasher._combine(_:)(0);
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x193AC11E0](v11);
  if (v7)
  {
LABEL_9:
    Hasher._combine(_:)(1u);
    (*(*v7 + 152))(a1);
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_17:
    Hasher._combine(_:)(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = v6;
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x193AC11E0](v20);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_16:
  Hasher._combine(_:)(0);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_10:
  Hasher._combine(_:)(0);
  if (!v10)
  {
LABEL_11:
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v9);
    return;
  }

LABEL_21:
  Hasher._combine(_:)(0);
}

Swift::Int Text.Encapsulation.hashValue.getter()
{
  Hasher.init(_seed:)();
  Text.Encapsulation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Encapsulation()
{
  Hasher.init(_seed:)();
  Text.Encapsulation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Encapsulation()
{
  Hasher.init(_seed:)();
  Text.Encapsulation.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t Text.Encapsulation.codingProxy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
}

uint64_t property wrapper backing initializer of Text.Encapsulation.CodingProxy.platterSize@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t Text.Encapsulation.CodingProxy.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.Encapsulation.CodingProxy.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x576D756D696E696DLL;
  if (v1 != 5)
  {
    v3 = 0x5372657474616C70;
  }

  v4 = 0x67696557656E696CLL;
  if (v1 != 3)
  {
    v4 = 0x726F6C6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6570616873;
  if (v1 != 1)
  {
    v5 = 0x656C797473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Text.Encapsulation.CodingProxy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Text.Encapsulation.CodingProxy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.Encapsulation.CodingProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.Encapsulation.CodingProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.Encapsulation.CodingProxy.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v32 = *(v1 + 24);
  v27 = v1[4];
  v28 = v10;
  v26 = *(v1 + 40);
  v25 = v1[6];
  v24 = *(v1 + 56);
  v11 = v1[9];
  v23 = v1[8];
  v21 = v11;
  v22 = *(v1 + 80);
  v19 = v1[11];
  v20 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = v8;
  v31 = v9;
  v33 = 0;
  type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>();
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>);
  v12 = v29;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v26;
  v14 = v27;
  v15 = v24;
  v16 = v25;
  v30 = v28;
  v31 = v32;
  v33 = 1;
  type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>();
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Shape?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v30 = v14;
  v31 = v13;
  v33 = 2;
  type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>();
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Style?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v30 = v16;
  v31 = v15;
  v33 = 3;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v30 = v23;
  v33 = 4;
  type metadata accessor for ProxyCodable<Color>();
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);

  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  v30 = v21;
  v31 = v22;
  v33 = 5;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v30 = v19;
  v31 = v20;
  v33 = 6;
  type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>();
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.PlatterSize?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(0, v4);
}

uint64_t Text.Encapsulation.CodingProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>, MEMORY[0x1E69E6F48]);
  v31 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v70 = 1;
  v68 = 1;
  v66 = 1;
  v64 = 1;
  v62 = 1;
  v60 = 1;
  v9 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v71);
    v42 = 0;
    v43 = v70;
    *v44 = *v69;
    *&v44[3] = *&v69[3];
    v45 = 0;
    v46 = v68;
    *v47 = *v67;
    *&v47[3] = *&v67[3];
    v48 = 0;
    v49 = v66;
    *&v50[3] = *&v65[3];
    *v50 = *v65;
    v51 = 0;
    v52 = v64;
    *v53 = *v63;
    *&v53[3] = *&v63[3];
    v54 = 0;
    v55 = 0;
    v56 = v62;
    *v57 = *v61;
    *&v57[3] = *&v61[3];
    v58 = 0;
    v59 = v60;
  }

  else
  {
    v30 = v6;
    type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>();
    LOBYTE(v32) = 0;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>);
    v10 = v31;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v42;
    v70 = v43;
    type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>();
    LOBYTE(v32) = 1;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Shape?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v42;
    v68 = v43;
    type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>();
    LOBYTE(v32) = 2;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Style?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v42;
    v66 = v43;
    LOBYTE(v32) = 3;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v42;
    v64 = v43;
    type metadata accessor for ProxyCodable<Color>();
    LOBYTE(v32) = 4;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v42;
    LOBYTE(v32) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v42;
    v62 = v43;
    type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>();
    v39 = 6;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.PlatterSize?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v30 + 8))(v8, v10);
    v24 = v40;
    v60 = v41;
    *&v32 = v29;
    LODWORD(v31) = v70;
    BYTE8(v32) = v70;
    *(&v32 + 9) = *v69;
    HIDWORD(v32) = *&v69[3];
    v15 = v27;
    *&v33 = v28;
    LODWORD(v30) = v68;
    BYTE8(v33) = v68;
    *(&v33 + 9) = *v67;
    HIDWORD(v33) = *&v67[3];
    *&v34 = v12;
    v26 = v66;
    BYTE8(v34) = v66;
    *(&v34 + 9) = *v65;
    HIDWORD(v34) = *&v65[3];
    *&v35 = v27;
    v25 = v64;
    BYTE8(v35) = v64;
    *(&v35 + 9) = *v63;
    HIDWORD(v35) = *&v63[3];
    *&v36 = v13;
    *(&v36 + 1) = v14;
    v23 = v12;
    LOBYTE(v12) = v62;
    LOBYTE(v37) = v62;
    DWORD1(v37) = *&v61[3];
    *(&v37 + 1) = *v61;
    *(&v37 + 1) = v40;
    v16 = v41;
    v38 = v41;
    v17 = v36;
    v18 = v37;
    *(a2 + 96) = v41;
    *(a2 + 64) = v17;
    *(a2 + 80) = v18;
    v19 = v32;
    v20 = v33;
    v21 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v21;
    *a2 = v19;
    *(a2 + 16) = v20;
    outlined init with copy of Text.Encapsulation.CodingProxy(&v32, &v42);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v42 = v29;
    v43 = v31;
    *v44 = *v69;
    *&v44[3] = *&v69[3];
    v45 = v28;
    v46 = v30;
    *v47 = *v67;
    *&v47[3] = *&v67[3];
    v48 = v23;
    v49 = v26;
    *v50 = *v65;
    *&v50[3] = *&v65[3];
    v51 = v15;
    v52 = v25;
    *&v53[3] = *&v63[3];
    *v53 = *v63;
    v54 = v13;
    v55 = v14;
    v56 = v12;
    *&v57[3] = *&v61[3];
    *v57 = *v61;
    v58 = v24;
    v59 = v16;
  }

  return outlined destroy of Text.Encapsulation.CodingProxy(&v42);
}

BOOL specialized static Text.Encapsulation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v19 = *(a2 + 24);
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v20 = *(a2 + 40);
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    if (v8 != v13)
    {
      v22 = *(*v8 + 88);

      v24 = v22(v23);

      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v10)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v14)
    {
      v25 = v15;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if ((v12 & 1) == 0)
  {
    if (v11 == v16)
    {
      v27 = v17;
    }

    else
    {
      v27 = 1;
    }

    return (v27 & 1) == 0;
  }

  return (v17 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys);
  }

  return result;
}

void type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Scale?>)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Text.Encapsulation.Scale?);
    lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(&lazy protocol witness table cache variable for type Text.Encapsulation.Scale? and conformance <A> A?, &lazy cache variable for type metadata for Text.Encapsulation.Scale?, &type metadata for Text.Encapsulation.Scale, lazy protocol witness table accessor for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale);
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Scale?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale()
{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale);
  }

  return result;
}

void type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Shape?>)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Text.Encapsulation.Shape?);
    lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(&lazy protocol witness table cache variable for type Text.Encapsulation.Shape? and conformance <A> A?, &lazy cache variable for type metadata for Text.Encapsulation.Shape?, &type metadata for Text.Encapsulation.Shape, lazy protocol witness table accessor for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape);
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Shape?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HitTestableEvent?(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape()
{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Style?>)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Text.Encapsulation.Style?);
    lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(&lazy protocol witness table cache variable for type Text.Encapsulation.Style? and conformance <A> A?, &lazy cache variable for type metadata for Text.Encapsulation.Style?, &type metadata for Text.Encapsulation.Style, lazy protocol witness table accessor for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style);
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Style?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style()
{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style);
  }

  return result;
}

void type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.PlatterSize?>)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Text.Encapsulation.PlatterSize?);
    lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(&lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize? and conformance <A> A?, &lazy cache variable for type metadata for Text.Encapsulation.PlatterSize?, &type metadata for Text.Encapsulation.PlatterSize, lazy protocol witness table accessor for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize);
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.PlatterSize?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize()
{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize;
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();
    v7 = a3(a1, &unk_1F007F518, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Text.Encapsulation.CodingProxy(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *a2 = v3;
  v4 = a1[2];
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 16) = v4;
  v5 = a1[4];
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 32) = v5;
  v6 = a1[6];
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v6;
  *(a2 + 64) = a1[8];
  v7 = a1[9];
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 72) = v7;
  v8 = a1[11];
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 88) = v8;

  return a2;
}

unint64_t instantiation function for generic protocol witness table for Text.Encapsulation.CodingProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy();
  result = lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy();
  *(a1 + 16) = result;
  return result;
}

uint64_t initializeWithCopy for Text.Encapsulation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 80) = *(a2 + 80);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithCopy for Text.Encapsulation(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  v6 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v6;
  v7 = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v7;
  *(a1 + 64) = a2[8];

  v8 = a2[9];
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v8;
  v9 = a2[11];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v9;
  return a1;
}

uint64_t assignWithTake for Text.Encapsulation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Encapsulation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for Text.Encapsulation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t specialized Text.Encapsulation.CodingProxy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67696557656E696CLL && a2 == 0xEA00000000007468 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x576D756D696E696DLL && a2 == 0xEC00000068746469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5372657474616C70 && a2 == 0xEB00000000657A69)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t EnvironmentValues.textSizing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5(v3, a1);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(*v1);
    if (v5)
    {
      v6 = *(v5 + 72);
      v7 = v5[10];
      *a1 = v6;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v7 = qword_1ED537550;
      *a1 = static TextSizingKey.defaultValue;
    }

    *(a1 + 8) = v7;
  }
}

uint64_t Text.Sizing.Storage.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

_BYTE *Text.Sizing.init(_:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ConcreteTextSizingModifier.isEqual(to:)(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 120), v2);

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t static Text.Sizing.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Sizing(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance TextSizingKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED537550;
  *a1 = static TextSizingKey.defaultValue;
  *(a1 + 8) = v2;
}

void (*EnvironmentValues.textSizing.modify(void *a1))(unsigned __int8 **a1, char a2)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5(v5, v4);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
      v9 = v7[10];
      *v4 = v8;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = qword_1ED537550;
      *v4 = static TextSizingKey.defaultValue;
    }

    *(v4 + 8) = v9;
  }

  return EnvironmentValues.textSizing.modify;
}

void EnvironmentValues.textSizing.modify(unsigned __int8 **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 1);

  v6 = *(v3 + 6);
  v7 = *(v3 + 4);
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(v7, v4, v5);

    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(*(v3 + 5), **(v3 + 4));
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(v7, v4, v5);

    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(*(v3 + 5), **(v3 + 4));
    }
  }

  free(v3);
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance PreferTextLayoutManagerInputModifier(uint64_t a1, uint64_t *a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28PreferTextLayoutManagerInputV_Tt2g5(a2, 1);
}

unint64_t lazy protocol witness table accessor for type Text.Sizing.Storage and conformance Text.Sizing.Storage()
{
  result = lazy protocol witness table cache variable for type Text.Sizing.Storage and conformance Text.Sizing.Storage;
  if (!lazy protocol witness table cache variable for type Text.Sizing.Storage and conformance Text.Sizing.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Sizing.Storage and conformance Text.Sizing.Storage);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyTextSizingModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyTextSizingModifier and conformance AnyTextSizingModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyTextSizingModifier and conformance AnyTextSizingModifier()
{
  result = lazy protocol witness table cache variable for type AnyTextSizingModifier and conformance AnyTextSizingModifier;
  if (!lazy protocol witness table cache variable for type AnyTextSizingModifier and conformance AnyTextSizingModifier)
  {
    type metadata accessor for AnyTextSizingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyTextSizingModifier and conformance AnyTextSizingModifier);
  }

  return result;
}

uint64_t static AnyTransition.slide.getter()
{
  type metadata accessor for TransitionBox<SlideTransition>();

  return swift_allocObject();
}

void type metadata accessor for TransitionBox<SlideTransition>()
{
  if (!lazy cache variable for type metadata for TransitionBox<SlideTransition>)
  {
    lazy protocol witness table accessor for type SlideTransition and conformance SlideTransition();
    v0 = type metadata accessor for TransitionBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransitionBox<SlideTransition>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SlideTransition and conformance SlideTransition()
{
  result = lazy protocol witness table cache variable for type SlideTransition and conformance SlideTransition;
  if (!lazy protocol witness table cache variable for type SlideTransition and conformance SlideTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SlideTransition and conformance SlideTransition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout>)
  {
    type metadata accessor for PlaceholderContentView<SlideTransition>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout>);
    }
  }
}

void type metadata accessor for PlaceholderContentView<SlideTransition>()
{
  if (!lazy cache variable for type metadata for PlaceholderContentView<SlideTransition>)
  {
    v0 = type metadata accessor for PlaceholderContentView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlaceholderContentView<SlideTransition>);
    }
  }
}

uint64_t ResolvableAbsoluteDate.init(_:style:in:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = a2[16];
  v10 = *a3;
  v9 = *(a3 + 8);
  v11 = type metadata accessor for Date();
  v26 = *(v11 - 8);
  (*(v26 + 16))(a4, a1, v11);
  v12 = type metadata accessor for ResolvableAbsoluteDate();
  v13 = a4 + v12[5];
  *v13 = v6;
  *(v13 + 8) = v7;
  *(v13 + 16) = v8;
  v14 = v12[6];
  if (v9)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, a4 + v14);

    v15 = v12[7];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, a4 + v15);

    v16 = v12[8];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, a4 + v16);

    v17 = *(v26 + 8);

    return v17(a1, v11);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v10, a4 + v14);
    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
    if (v19)
    {
      v20 = *(*v19 + 248);
      v21 = v12[7];
      v22 = v19;
      v23 = type metadata accessor for Locale();
      (*(*(v23 - 8) + 16))(a4 + v21, &v22[v20], v23);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Locale();
      v25 = __swift_project_value_buffer(v24, static LocaleKey.defaultValue);
      (*(*(v24 - 8) + 16))(a4 + v12[7], v25, v24);
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v10, a4 + v12[8]);
    (*(v26 + 8))(a1, v11);
  }
}

uint64_t _s7SwiftUI18TimeDataFormattingO13ConfigurationV04makeF04from6format11sizeVariant28secondsUpdateFrequencyBudgetAEy_xq_G13configuration_Sb5exacttx_q_AA08TextSizeK0VSdtFZAA0cD6SourceVAA10Foundation4DateVRszlE0V7StorageOyAT_G_AA17SystemFormatStyleO5TimerVTt4B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v62 = a2;
  v64 = a1;
  type metadata accessor for (SystemFormatStyle.Timer, Bool)(0, &lazy cache variable for type metadata for (SystemFormatStyle.Timer, Bool), type metadata accessor for SystemFormatStyle.Timer);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v59 - v13;
  v14 = type metadata accessor for SystemFormatStyle.Timer();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.Timer>();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, &lazy cache variable for type metadata for (style: SystemFormatStyle.Timer, exact: Bool), type metadata accessor for SystemFormatStyle.Timer);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v59 - v21;
  v24 = *(v23 + 56);
  v61 = specialized FormatStyle.exactSizeVariant(_:)(&v59 - v21, a4);
  v22[v24] = v61 & 1;
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(a3, v19, type metadata accessor for SystemFormatStyle.Timer);
  type metadata accessor for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v72, &v65);
    v25 = *&v66[8];
    v26 = *&v66[16];
    __swift_project_boxed_opaque_existential_1(&v65, *&v66[8]);
    *&v72 = a4;
    LOBYTE(v25) = (*(v26 + 24))(&v70, &v72, v25, v26, a5);
    v27 = v71;
    __swift_project_boxed_opaque_existential_1(&v70, v71);
    v28 = lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v29 = v62;
    DiscreteFormatStyle.paused<A>(accordingTo:)(v62, v27, v12, v28, &v72);
    v73[24] = v25 & 1;
    __swift_destroy_boxed_opaque_existential_1(&v70);
  }

  else
  {
    *&v66[8] = v14;
    *&v66[16] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v65);
    _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(a3, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.Timer);
    v59 = *&v66[8];
    v31 = __swift_project_boxed_opaque_existential_1(&v65, *&v66[8]);
    v71 = v59;
    v32 = __swift_allocate_boxed_opaque_existential_1(&v70);
    _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v31, v32, type metadata accessor for SystemFormatStyle.Timer);
    v33 = static Duration.seconds(_:)();
    v35 = v34;
    v36 = (v31 + *(v14 + 36));
    v37 = *v36;
    v38 = v36[1];
    v39 = static Duration.< infix(_:_:)();
    if (v39)
    {
      v40 = v33;
    }

    else
    {
      v40 = v37;
    }

    if (v39)
    {
      v41 = v35;
    }

    else
    {
      v41 = v38;
    }

    v42 = (v32 + *(v14 + 40));
    *v42 = v40;
    v42[1] = v41;
    v43 = v71;
    v44 = __swift_project_boxed_opaque_existential_1(&v70, v71);
    *&v67 = a4;
    v45 = *(v43 - 8);
    MEMORY[0x1EEE9AC00](v44);
    v47 = &v59 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = FormatStyle.exactSizeVariant(_:)(v47, &v67, v43);
    *&v73[8] = v43;
    v49 = __swift_allocate_boxed_opaque_existential_1(&v72);
    (*(v45 + 32))(v49, v47, v43);
    v73[24] = v48 & 1;
    type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0, &lazy cache variable for type metadata for (style: UpdateFrequencyDependentFormatStyle, exact: Bool), &lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle);
    v50 = v60;
    swift_dynamicCast();
    LOBYTE(v50) = v10[*(v50 + 48)];
    outlined init with take of SystemFormatStyle.DateOffset(v10, v16, type metadata accessor for SystemFormatStyle.Timer);
    __swift_destroy_boxed_opaque_existential_1(&v70);
    v29 = v62;
    specialized DiscreteFormatStyle.paused<A>(accordingTo:)(v62, &v72);
    outlined destroy of ResolvableAbsoluteDate(v16, type metadata accessor for SystemFormatStyle.Timer);
    v73[24] = v50;
  }

  __swift_destroy_boxed_opaque_existential_1(&v65);
  v51 = v63;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v29, v63);
  specialized DiscreteFormatStyle.paused<A>(accordingTo:)(v29, &v70);
  outlined destroy of (style: SystemFormatStyle.Timer, exact: Bool)(v22, &lazy cache variable for type metadata for (style: SystemFormatStyle.Timer, exact: Bool), type metadata accessor for SystemFormatStyle.Timer);
  if (*&v73[8])
  {
    outlined init with copy of AnyTrackedValue(&v72, &v65);
    v66[24] = v73[24];
  }

  else
  {
    v65 = v72;
    *v66 = *v73;
    *&v66[9] = *&v73[9];
  }

  if (*&v66[8])
  {
    outlined init with take of AnyTrackedValue(&v65, &v67);
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
  }

  v52 = v64;
  outlined init with take of Date?(v51, v64, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, type metadata accessor for TimeDataSource<Date><A>.DateStorage);
  type metadata accessor for TimeDataFormatting.Configuration<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>(0, &lazy cache variable for type metadata for TimeDataFormatting.Configuration<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>, type metadata accessor for TimeDataFormatting.Configuration);
  v54 = v53;
  outlined init with take of AnyTrackedValue(&v70, v52 + *(v53 + 52));
  v55 = v52 + *(v54 + 56);
  v56 = v68;
  *v55 = v67;
  *(v55 + 16) = v56;
  *(v55 + 32) = v69;
  if (v61)
  {
    if (*&v73[8])
    {
      __swift_destroy_boxed_opaque_existential_1(&v72);
    }

    return 1;
  }

  else
  {
    *&v66[9] = *&v73[9];
    *v66 = *v73;
    v65 = v72;
    if (*&v73[8])
    {
      v58 = v66[24];
      __swift_destroy_boxed_opaque_existential_1(&v65);
      return v58;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _s7SwiftUI18TimeDataFormattingO13ConfigurationV04makeF04from6format11sizeVariant28secondsUpdateFrequencyBudgetAEy_xq_G13configuration_Sb5exacttx_q_AA08TextSizeK0VSdtFZAA0cD6SourceVAA10Foundation4DateVRszlE0V7StorageOyAT_G_AA17SystemFormatStyleO0V6OffsetVTt4B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v51 = a2;
  v53 = a1;
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - v10;
  type metadata accessor for (SystemFormatStyle.Timer, Bool)(0, &lazy cache variable for type metadata for (SystemFormatStyle.DateOffset, Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for SystemFormatStyle.DateOffset();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.DateOffset>();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, &lazy cache variable for type metadata for (style: SystemFormatStyle.DateOffset, exact: Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v48 - v21;
  v24 = *(v23 + 56);
  v50 = specialized FormatStyle.exactSizeVariant(_:)(&v48 - v21, a4);
  v22[v24] = v50 & 1;
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(a3, v19, type metadata accessor for SystemFormatStyle.DateOffset);
  type metadata accessor for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v61, &v54);
    v25 = *&v55[8];
    v26 = *&v55[16];
    __swift_project_boxed_opaque_existential_1(&v54, *&v55[8]);
    *&v61 = a4;
    LOBYTE(v25) = (*(v26 + 24))(&v59, &v61, v25, v26, a5);
    v27 = v60;
    __swift_project_boxed_opaque_existential_1(&v59, v60);
    v28 = lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v29 = v51;
    DiscreteFormatStyle.paused<A>(accordingTo:)(v51, v27, v9, v28, &v61);
    v62[24] = v25 & 1;
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

  else
  {
    *&v55[8] = v14;
    *&v55[16] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
    _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(a3, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.DateOffset);
    v48 = *&v55[8];
    v31 = __swift_project_boxed_opaque_existential_1(&v54, *&v55[8]);
    v60 = v48;
    v32 = __swift_allocate_boxed_opaque_existential_1(&v59);
    _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v31, v32, type metadata accessor for SystemFormatStyle.DateOffset);
    *(v32 + *(v14 + 44)) = 2;
    v33 = v60;
    v34 = __swift_project_boxed_opaque_existential_1(&v59, v60);
    *&v56 = a4;
    v35 = *(v33 - 8);
    MEMORY[0x1EEE9AC00](v34);
    v37 = &v48 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    LOBYTE(v31) = FormatStyle.exactSizeVariant(_:)(v37, &v56, v33);
    *&v62[8] = v33;
    v38 = __swift_allocate_boxed_opaque_existential_1(&v61);
    (*(v35 + 32))(v38, v37, v33);
    v62[24] = v31 & 1;
    type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0, &lazy cache variable for type metadata for (style: UpdateFrequencyDependentFormatStyle, exact: Bool), &lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle);
    v39 = v49;
    swift_dynamicCast();
    LOBYTE(v39) = v13[*(v39 + 48)];
    outlined init with take of SystemFormatStyle.DateOffset(v13, v16, type metadata accessor for SystemFormatStyle.DateOffset);
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v29 = v51;
    specialized DiscreteFormatStyle.paused<A>(accordingTo:)(v51, &v61);
    outlined destroy of ResolvableAbsoluteDate(v16, type metadata accessor for SystemFormatStyle.DateOffset);
    v62[24] = v39;
  }

  __swift_destroy_boxed_opaque_existential_1(&v54);
  v40 = v52;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v29, v52);
  specialized DiscreteFormatStyle.paused<A>(accordingTo:)(v29, &v59);
  outlined destroy of (style: SystemFormatStyle.Timer, exact: Bool)(v22, &lazy cache variable for type metadata for (style: SystemFormatStyle.DateOffset, exact: Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  if (*&v62[8])
  {
    outlined init with copy of AnyTrackedValue(&v61, &v54);
    v55[24] = v62[24];
  }

  else
  {
    v54 = v61;
    *v55 = *v62;
    *&v55[9] = *&v62[9];
  }

  if (*&v55[8])
  {
    outlined init with take of AnyTrackedValue(&v54, &v56);
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
  }

  v41 = v53;
  outlined init with take of Date?(v40, v53, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, type metadata accessor for TimeDataSource<Date><A>.DateStorage);
  type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>(0, &lazy cache variable for type metadata for TimeDataFormatting.Configuration<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>, type metadata accessor for TimeDataFormatting.Configuration);
  v43 = v42;
  outlined init with take of AnyTrackedValue(&v59, v41 + *(v42 + 52));
  v44 = v41 + *(v43 + 56);
  v45 = v57;
  *v44 = v56;
  *(v44 + 16) = v45;
  *(v44 + 32) = v58;
  if (v50)
  {
    if (*&v62[8])
    {
      __swift_destroy_boxed_opaque_existential_1(&v61);
    }

    return 1;
  }

  else
  {
    *&v55[9] = *&v62[9];
    *v55 = *v62;
    v54 = v61;
    if (*&v62[8])
    {
      v47 = v55[24];
      __swift_destroy_boxed_opaque_existential_1(&v54);
      return v47;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t specialized FormatStyle.exactSizeVariant(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for (SystemFormatStyle.Timer, Bool)(0, &lazy cache variable for type metadata for (SystemFormatStyle.Timer, Bool), type metadata accessor for SystemFormatStyle.Timer);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, &lazy cache variable for type metadata for (style: SystemFormatStyle.Timer, exact: Bool), type metadata accessor for SystemFormatStyle.Timer);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  *&v28 = type metadata accessor for SystemFormatStyle.Timer();
  *(&v28 + 1) = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v3, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.Timer);
  v22 = v28;
  v14 = v28;
  v15 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v23 = a2;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = SystemFormatStyle.Timer.withSizeVariant(_:)(v18, &v23);
  v25 = v22;
  v19 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(v16 + 32))(v19, v18, v14);
  v26 = a2 & 1;
  type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0, &lazy cache variable for type metadata for (style: SizeAdaptiveFormatStyle, exact: Bool), &lazy cache variable for type metadata for SizeAdaptiveFormatStyle);
  swift_dynamicCast();
  v20 = v9[*(v7 + 48)];
  outlined init with take of SystemFormatStyle.DateOffset(v9, v12, type metadata accessor for SystemFormatStyle.Timer);
  __swift_destroy_boxed_opaque_existential_1(v27);
  outlined init with take of SystemFormatStyle.DateOffset(v12, a1, type metadata accessor for SystemFormatStyle.Timer);
  return v20;
}

{
  v3 = v2;
  type metadata accessor for (SystemFormatStyle.Timer, Bool)(0, &lazy cache variable for type metadata for (SystemFormatStyle.DateOffset, Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, &lazy cache variable for type metadata for (style: SystemFormatStyle.DateOffset, exact: Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  *&v28 = type metadata accessor for SystemFormatStyle.DateOffset();
  *(&v28 + 1) = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v3, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.DateOffset);
  v22 = v28;
  v14 = v28;
  v15 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v23 = a2;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = SystemFormatStyle.DateOffset.withSizeVariant(_:)(v18, &v23);
  v25 = v22;
  v19 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(v16 + 32))(v19, v18, v14);
  v26 = a2 & 1;
  type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0, &lazy cache variable for type metadata for (style: SizeAdaptiveFormatStyle, exact: Bool), &lazy cache variable for type metadata for SizeAdaptiveFormatStyle);
  swift_dynamicCast();
  v20 = v9[*(v7 + 48)];
  outlined init with take of SystemFormatStyle.DateOffset(v9, v12, type metadata accessor for SystemFormatStyle.DateOffset);
  __swift_destroy_boxed_opaque_existential_1(v27);
  outlined init with take of SystemFormatStyle.DateOffset(v12, a1, type metadata accessor for SystemFormatStyle.DateOffset);
  return v20;
}

uint64_t ResolvableAbsoluteDate.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ResolvableAbsoluteDate.date.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ResolvableAbsoluteDate.style.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ResolvableAbsoluteDate();
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v4) = v4[16];
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  return result;
}

uint64_t ResolvableAbsoluteDate.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableAbsoluteDate() + 24);
  v4 = type metadata accessor for Calendar();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableAbsoluteDate.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableAbsoluteDate() + 28);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableAbsoluteDate.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableAbsoluteDate() + 32);
  v4 = type metadata accessor for TimeZone();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableAbsoluteDate.CodingKeys()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x7261646E656C6163;
  v4 = 0x656C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x656E6F5A656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C797473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableAbsoluteDate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResolvableAbsoluteDate.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableAbsoluteDate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableAbsoluteDate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ResolvableAbsoluteDate.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  type metadata accessor for SystemFormatStyle.DateOffset?(0, &lazy cache variable for type metadata for SystemFormatStyle.DateOffset?, type metadata accessor for SystemFormatStyle.DateOffset);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for SystemFormatStyle.DateOffset();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for ResolvableAbsoluteDate();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyTrackedValue(a1, v37);
  result = ResolvableAbsoluteDate.init(from:)(v37, v16);
  if (!v2)
  {
    v18 = v39;
    v36 = 0;
    v19 = &v16[v14[5]];
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v19) = v19[16];
    LOBYTE(v37[0]) = v20;
    v37[1] = v21;
    v38 = v19;
    Text.DateStyle.format(for:)(v16, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of ResolvableAbsoluteDate(v16, type metadata accessor for ResolvableAbsoluteDate);
      result = _s10Foundation4DateVSgWOhTm_0(v6, &lazy cache variable for type metadata for SystemFormatStyle.DateOffset?, type metadata accessor for SystemFormatStyle.DateOffset);
      *v18 = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0;
    }

    else
    {
      v35 = v13;
      outlined init with take of SystemFormatStyle.DateOffset(v6, v13, type metadata accessor for SystemFormatStyle.DateOffset);
      type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>();
      v22 = v18;
      *(v18 + 24) = v23;
      v24 = v23;
      v22[4] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset> and conformance TimeDataFormatting.Resolvable<A, B>, type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
      (*(*(v26 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v26);
      v27 = v14[7];
      _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v35, v10, type metadata accessor for SystemFormatStyle.DateOffset);
      v28 = v7[9];
      v29 = type metadata accessor for Locale();
      (*(*(v29 - 8) + 24))(&v10[v28], &v16[v27], v29);
      v30 = v14[6];
      v31 = boxed_opaque_existential_1 + v24[15];
      _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v10, v31, type metadata accessor for SystemFormatStyle.DateOffset);
      v32 = v7[10];
      v33 = type metadata accessor for Calendar();
      (*(*(v33 - 8) + 24))(v31 + v32, &v16[v30], v33);
      outlined destroy of ResolvableAbsoluteDate(v10, type metadata accessor for SystemFormatStyle.DateOffset);
      *(v31 + v7[12]) = 0;
      _s7SwiftUI18TimeDataFormattingO13ConfigurationV04makeF04from6format11sizeVariant28secondsUpdateFrequencyBudgetAEy_xq_G13configuration_Sb5exacttx_q_AA08TextSizeK0VSdtFZAA0cD6SourceVAA10Foundation4DateVRszlE0V7StorageOyAT_G_AA17SystemFormatStyleO0V6OffsetVTt4B5(boxed_opaque_existential_1 + v24[17], boxed_opaque_existential_1, v31, 0, 0.0);
      *(boxed_opaque_existential_1 + v24[16]) = 0;
      *(boxed_opaque_existential_1 + v24[18]) = 0;
      outlined destroy of ResolvableAbsoluteDate(v35, type metadata accessor for SystemFormatStyle.DateOffset);
      return outlined destroy of ResolvableAbsoluteDate(v16, type metadata accessor for ResolvableAbsoluteDate);
    }
  }

  return result;
}

uint64_t ResolvableAbsoluteDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v38 = type metadata accessor for TimeZone();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Locale();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Calendar();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<ResolvableAbsoluteDate.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableAbsoluteDate.CodingKeys>, MEMORY[0x1E69E6F48]);
  v46 = v9;
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ResolvableAbsoluteDate();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();
  v48 = v11;
  v15 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v6;
  v34 = v12;
  v49 = v14;
  v18 = v42;
  v17 = v43;
  v50 = 0;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v18 + 32);
  v20 = v49;
  v21 = v47;
  v47 = v7;
  v19(v49, v21);
  v53 = 1;
  lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v51;
  v23 = v52;
  v24 = v20 + v34[5];
  *v24 = v50;
  *(v24 + 8) = v22;
  *(v24 + 16) = v23;
  v50 = 2;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  v25 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v17;
  v27 = v34;
  (*(v26 + 32))(v20 + v34[6], v16, v25);
  v50 = 3;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  v29 = v39;
  v28 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v45 + 32))(v20 + v27[7], v29, v28);
  v50 = 4;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  v31 = v37;
  v30 = v38;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 8))(v48, v46);
  (*(v35 + 32))(v20 + v34[8], v31, v30);
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v20, v36, type metadata accessor for ResolvableAbsoluteDate);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ResolvableAbsoluteDate(v20, type metadata accessor for ResolvableAbsoluteDate);
}

id static ResolvableAbsoluteDate.attribute.getter()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableAbsoluteDate.attribute;

  return v1;
}

uint64_t ResolvableAbsoluteDate.invalidationConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ResolvableAbsoluteDate() + 20));
  v4 = *v3;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (v5)
  {
    if (v6 >= 2 || v3[16] == 3 || (v3[8] & 0x80) != 0)
    {
      v7 = type metadata accessor for Date();
      (*(*(v7 - 8) + 16))(a1, v1, v7);
      type metadata accessor for ResolvableAttributeConfiguration(0);
    }

    else
    {
      *a1 = 0x404E000000000000;
      *(a1 + 8) = 0;
      type metadata accessor for ResolvableAttributeConfiguration(0);
    }
  }

  else
  {
    type metadata accessor for ResolvableAttributeConfiguration(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ResolvableAbsoluteDate.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<ResolvableAbsoluteDate.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableAbsoluteDate.CodingKeys>, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3 + *(type metadata accessor for ResolvableAbsoluteDate() + 20);
    v11 = *v10;
    v12 = *(v10 + 8);
    LOBYTE(v10) = *(v10 + 16);
    v15 = v11;
    v16 = v12;
    v17 = v10;
    v14[7] = 1;
    lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = 2;
    type metadata accessor for Calendar();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = 3;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = 4;
    type metadata accessor for TimeZone();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

id protocol witness for static ResolvableStringAttributeFamily.attribute.getter in conformance ResolvableAbsoluteDate()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableAbsoluteDate.attribute;

  return v1;
}

uint64_t ResolvableAbsoluteDate.hash(into:)()
{
  type metadata accessor for Date();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = (v0 + *(type metadata accessor for ResolvableAbsoluteDate() + 20));
  MEMORY[0x193AC11A0](*v1);
  v2 = v1[16];
  if (v2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v2);
  }

  if (v1[16] == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v1 + 1);
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v3);
  }

  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ResolvableAbsoluteDate.hashValue.getter()
{
  Hasher.init(_seed:)();
  ResolvableAbsoluteDate.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvableAbsoluteDate()
{
  Hasher.init(_seed:)();
  ResolvableAbsoluteDate.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableAbsoluteDate()
{
  Hasher.init(_seed:)();
  ResolvableAbsoluteDate.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized DiscreteFormatStyle.paused<A>(accordingTo:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  type metadata accessor for SystemFormatStyle.DateOffset?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, v7);
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v15 = 1;
  v16 = (*(*(v14 - 8) + 48))(v7, 1, v14);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if (v16 != 1)
  {
    (*(*(v17 - 8) + 32))(v10, v7, v17);
    v15 = 0;
  }

  (*(v18 + 56))(v10, v15, 1, v17);
  v19 = MEMORY[0x1E6969530];
  outlined init with take of Date?(v10, v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], type metadata accessor for SystemFormatStyle.DateOffset?);
  v20 = (*(v18 + 48))(v13, 1, v17);
  _s10Foundation4DateVSgWOhTm_0(v13, &lazy cache variable for type metadata for Date?, v19);
  if (v20 == 1)
  {
    a2[3] = type metadata accessor for SystemFormatStyle.Timer();
    a2[4] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  }

  else
  {
    type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>(0);
    v23 = v22;
    a2[3] = v22;
    a2[4] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer> and conformance PausedFormatStyle<A, B>, type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>);
    v24 = __swift_allocate_boxed_opaque_existential_1(a2);
    outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, v24);
    boxed_opaque_existential_1 = (v24 + *(v23 + 52));
  }

  return _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v2, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.Timer);
}

{
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  type metadata accessor for SystemFormatStyle.DateOffset?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, v7);
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v15 = 1;
  v16 = (*(*(v14 - 8) + 48))(v7, 1, v14);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if (v16 != 1)
  {
    (*(*(v17 - 8) + 32))(v10, v7, v17);
    v15 = 0;
  }

  (*(v18 + 56))(v10, v15, 1, v17);
  v19 = MEMORY[0x1E6969530];
  outlined init with take of Date?(v10, v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], type metadata accessor for SystemFormatStyle.DateOffset?);
  v20 = (*(v18 + 48))(v13, 1, v17);
  _s10Foundation4DateVSgWOhTm_0(v13, &lazy cache variable for type metadata for Date?, v19);
  if (v20 == 1)
  {
    a2[3] = type metadata accessor for SystemFormatStyle.DateOffset();
    a2[4] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  }

  else
  {
    type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>(0);
    v23 = v22;
    a2[3] = v22;
    a2[4] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset> and conformance PausedFormatStyle<A, B>, type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>);
    v24 = __swift_allocate_boxed_opaque_existential_1(a2);
    outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, v24);
    boxed_opaque_existential_1 = (v24 + *(v23 + 52));
  }

  return _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v2, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.DateOffset);
}

uint64_t type metadata accessor for ResolvableAbsoluteDate()
{
  result = type metadata singleton initialization cache for ResolvableAbsoluteDate;
  if (!type metadata singleton initialization cache for ResolvableAbsoluteDate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>()
{
  if (!lazy cache variable for type metadata for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    type metadata accessor for SystemFormatStyle.DateOffset();
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
    v0 = type metadata accessor for TimeDataFormatting.Resolvable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle()
{
  result = lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle;
  if (!lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle;
  if (!lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle);
  }

  return result;
}

uint64_t _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for KeyedDecodingContainer<ResolvableAbsoluteDate.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();
    v7 = a3(a1, &unk_1F007F958, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized static ResolvableAbsoluteDate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static Date.== infix(_:_:)())
  {
    v4 = type metadata accessor for ResolvableAbsoluteDate();
    v5 = v4[5];
    v6 = *(a1 + v5 + 8);
    v7 = *(a1 + v5 + 16);
    v15[0] = *(a1 + v5);
    v16 = v6;
    v17 = v7;
    v8 = a2 + v5;
    v9 = *v8;
    v10 = *(v8 + 8);
    LOBYTE(v8) = *(v8 + 16);
    v12[0] = v9;
    v13 = v10;
    v14 = v8;
    if (specialized static Text.DateStyle.== infix(_:_:)(v15, v12) & 1) != 0 && (MEMORY[0x193ABDC80](a1 + v4[6], a2 + v4[6]) & 1) != 0 && (MEMORY[0x193ABDB20](a1 + v4[7], a2 + v4[7]))
    {

      JUMPOUT(0x193ABDE90);
    }
  }

  return 0;
}

uint64_t instantiation function for generic protocol witness table for ResolvableAbsoluteDate(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type ResolvableAbsoluteDate and conformance ResolvableAbsoluteDate, type metadata accessor for ResolvableAbsoluteDate);
  result = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type ResolvableAbsoluteDate and conformance ResolvableAbsoluteDate, type metadata accessor for ResolvableAbsoluteDate);
  *(a1 + 16) = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for ResolvableAbsoluteDate(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = &a1[v8];
    v11 = &a2[v8];
    *v10 = *v11;
    v10[16] = v11[16];
    v12 = type metadata accessor for Calendar();
    (*(*(v12 - 8) + 16))(&a1[v9], &a2[v9], v12);
    v13 = a3[7];
    v14 = type metadata accessor for Locale();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    v15 = a3[8];
    v16 = type metadata accessor for TimeZone();
    (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
  }

  return a1;
}

uint64_t destroy for ResolvableAbsoluteDate(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a2[6];
  v6 = type metadata accessor for Calendar();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a2[7];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a2[8];
  v10 = type metadata accessor for TimeZone();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

uint64_t initializeWithCopy for ResolvableAbsoluteDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  v11 = type metadata accessor for Calendar();
  (*(*(v11 - 8) + 16))(a1 + v8, a2 + v8, v11);
  v12 = a3[7];
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
  v14 = a3[8];
  v15 = type metadata accessor for TimeZone();
  (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t assignWithCopy for ResolvableAbsoluteDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  v10 = *(v9 + 8);
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 8) = v10;
  v11 = a3[6];
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  v13 = a3[7];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  v15 = a3[8];
  v16 = type metadata accessor for TimeZone();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  return a1;
}

uint64_t initializeWithTake for ResolvableAbsoluteDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  v11 = type metadata accessor for Calendar();
  (*(*(v11 - 8) + 32))(a1 + v8, a2 + v8, v11);
  v12 = a3[7];
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  v14 = a3[8];
  v15 = type metadata accessor for TimeZone();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t assignWithTake for ResolvableAbsoluteDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  v11 = type metadata accessor for Calendar();
  (*(*(v11 - 8) + 40))(a1 + v8, a2 + v8, v11);
  v12 = a3[7];
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = a3[8];
  v15 = type metadata accessor for TimeZone();
  (*(*(v15 - 8) + 40))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t type metadata completion function for ResolvableAbsoluteDate()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Calendar();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Locale();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TimeZone();
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t specialized ResolvableAbsoluteDate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void type metadata accessor for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.Timer>()
{
  if (!lazy cache variable for type metadata for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.Timer>)
  {
    type metadata accessor for SystemFormatStyle.Timer();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
    v0 = type metadata accessor for _MixedAoDFrequencyFormatInitializer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.Timer>);
    }
  }
}

unint64_t type metadata accessor for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>()
{
  result = lazy cache variable for type metadata for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>;
  if (!lazy cache variable for type metadata for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>)
  {
    type metadata accessor for Date();
    type metadata accessor for AttributedString();
    result = swift_getExtendedExistentialTypeMetadata_unique();
    atomic_store(result, &lazy cache variable for type metadata for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>);
  }

  return result;
}

void type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined init with take of SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ResolvableAbsoluteDate(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TimeDataSource<Date><A>.DateStorage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for SystemFormatStyle.DateOffset?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for TimeDataFormatting.Configuration<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    v9[0] = v6;
    v9[1] = type metadata accessor for SystemFormatStyle.Timer();
    v9[2] = lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v9[3] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for (SystemFormatStyle.Timer, Bool)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.DateOffset>()
{
  if (!lazy cache variable for type metadata for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.DateOffset>)
  {
    type metadata accessor for SystemFormatStyle.DateOffset();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
    v0 = type metadata accessor for _MixedAoDFrequencyFormatInitializer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.DateOffset>);
    }
  }
}

void type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined destroy of (style: SystemFormatStyle.Timer, exact: Bool)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    v9[0] = v6;
    v9[1] = type metadata accessor for SystemFormatStyle.DateOffset();
    v9[2] = lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v9[3] = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

NSAttributedString __swiftcall AnyCustomTextAttachment.nsAttributedString(with:)(Swift::OpaquePointer with)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = one-time initialization token for coreTextRunDelegate;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static NSAttributedStringKey.coreTextRunDelegate;
  callbacks.version = 1;
  callbacks.dealloc = @objc closure #1 in AnyCustomTextAttachment.runDelegate.getter;
  callbacks.getAscent = @objc closure #2 in AnyCustomTextAttachment.runDelegate.getter;
  callbacks.getDescent = @objc closure #3 in AnyCustomTextAttachment.runDelegate.getter;
  callbacks.getWidth = @objc closure #4 in AnyCustomTextAttachment.runDelegate.getter;

  v4 = CTRunDelegateCreate(&callbacks, v1);
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  type metadata accessor for CTRunDelegateRef(0);
  callbacks.getDescent = v6;
  callbacks.version = v5;
  outlined init with take of Any(&callbacks, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v3, isUniquelyReferenced_nonNull_native);
  if (one-time initialization token for customAttachment != -1)
  {
    swift_once();
  }

  v8 = static NSAttributedStringKey.customAttachment;
  callbacks.getDescent = type metadata accessor for AnyCustomTextAttachment();
  callbacks.version = v1;
  outlined init with take of Any(&callbacks, v15);

  v9 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v8, v9);
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v11 = MEMORY[0x193ABEC20](12369903, 0xA300000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type [TextAttributeModifierBase] and conformance [A](&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithString:v11 attributes:isa];

  return v13;
}

uint64_t initializeWithCopy for LineAttachment(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithCopy for LineAttachment(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2);
  v7 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Layout.Line.Line(v7);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for LineAttachment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Layout.Line.Line(v5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for LineAttachment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 96))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for LineAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void LineAttachment.customAttributes.getter(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v47 = *(v1 + 16);
  v4 = v47;
  outlined copy of Text.Layout.Line.Line(v3);
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4)
    {
      v7 = v3;
      v8 = _NSTextLineFragmentGetCTLine(v7);

      if (!v8)
      {
        if (!v5)
        {
          goto LABEL_52;
        }

        goto LABEL_10;
      }
    }

    else
    {
      outlined copy of Text.Layout.Line.Line(v3);

      v8 = v3;
    }

    RunCount = CTLineGetRunCount();

    if (v5 == RunCount)
    {
LABEL_52:
      outlined consume of Text.Layout.Line.Line(v3);
      *a1 = v6;
      return;
    }

    if (!v4)
    {
      outlined copy of Text.Layout.Line.Line(v3);

      outlined copy of Text.Layout.Line.Line(v3);

      outlined copy of Text.Layout.Line.Line(v3);

      v11 = v3;
      v13 = v3;
      goto LABEL_14;
    }

LABEL_10:
    v10 = v3;
    v11 = _NSTextLineFragmentGetCTLine(v10);

    if (!v11)
    {
      goto LABEL_59;
    }

    outlined copy of Text.Layout.Line.Line(v3);

    v12 = v10;
    v13 = _NSTextLineFragmentGetCTLine(v12);

    if (!v13)
    {
      v14 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v14 = CTLineGetRunCount();

LABEL_15:
    if (v5 >= v14)
    {
      break;
    }

    if (one-time initialization token for customAttributes != -1)
    {
      swift_once();
    }

    v15 = static NSAttributedStringKey.customAttributes;
    v16 = CTLineGetRunAtIndex();
    v17 = _CTRunGetAttributeValueForKey(v16, v15);

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46[0] = v44;
    v46[1] = v45;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast())
      {
        v18 = v44 >> 62;
        if (v44 >> 62)
        {
          v19 = __CocoaSet.count.getter();
        }

        else
        {
          v19 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v20 = v6 >> 62;
        if (v6 >> 62)
        {
          v21 = __CocoaSet.count.getter();
        }

        else
        {
          v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v42 = v19;
        v22 = __OFADD__(v21, v19);
        v23 = v21 + v19;
        if (v22)
        {
          goto LABEL_54;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v20)
          {
            goto LABEL_45;
          }

          v24 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v23 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_46;
          }

          v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (!v18)
          {
            goto LABEL_33;
          }

LABEL_47:
          v43 = v25;
          v37 = a1;
          v38 = v24;
          v27 = __CocoaSet.count.getter();
          v25 = v43;
          v24 = v38;
          a1 = v37;
          v18 = v44 >> 62;
          ++v5;
          if (!v27)
          {
            goto LABEL_48;
          }

LABEL_34:
          if (((v25 >> 1) - v26) < v42)
          {
            goto LABEL_56;
          }

          v40 = v4;
          v41 = v6;
          v28 = v24 + 8 * v26 + 32;
          v39 = v24;
          if (v18)
          {
            if (v27 < 1)
            {
              goto LABEL_58;
            }

            v29 = v27;
            type metadata accessor for [TextAttributeModifierBase]();
            lazy protocol witness table accessor for type [TextAttributeModifierBase] and conformance [A](&lazy protocol witness table cache variable for type [TextAttributeModifierBase] and conformance [A], type metadata accessor for [TextAttributeModifierBase]);
            v30 = 0;
            v31 = v44;
            do
            {
              v32 = specialized protocol witness for Collection.subscript.read in conformance [A](v46, v30, v31);
              v34 = *v33;

              (v32)(v46, 0);
              v31 = v44;
              *(v28 + 8 * v30++) = v34;
            }

            while (v29 != v30);
          }

          else
          {
            type metadata accessor for TextAttributeModifierBase();
            swift_arrayInitWithCopy();
          }

          v6 = v41;
          v4 = v40;
          if (v42 > 0)
          {
            v35 = *(v39 + 16);
            v22 = __OFADD__(v35, v42);
            v36 = v35 + v42;
            if (v22)
            {
              goto LABEL_57;
            }

            *(v39 + 16) = v36;
          }
        }

        else
        {
          if (v20)
          {
LABEL_45:
            __CocoaSet.count.getter();
          }

LABEL_46:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v6 & 0xFFFFFFFFFFFFFF8;
          v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (v18)
          {
            goto LABEL_47;
          }

LABEL_33:
          v27 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          ++v5;
          if (v27)
          {
            goto LABEL_34;
          }

LABEL_48:

          if (v42 > 0)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {

        ++v5;
      }
    }

    else
    {

      outlined destroy of Any?(v46);
      ++v5;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t protocol witness for TextAttachment.draw(with:in:) in conformance LineAttachment(__int128 *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 40);
  v7 = *a2;
  v9[0] = v3;
  v9[1] = v4;
  v10 = v5;
  v11 = *a1;
  v12 = v6;
  outlined copy of Text.Layout.Line.Line(v3);
  outlined copy of Text.Layout.Line.Line(v3);
  GraphicsContext.draw(_:options:)(v9, 0, v7);
  outlined consume of Text.Layout.Line.Line(v9[0]);

  return outlined consume of Text.Layout.Line.Line(v3);
}

void type metadata accessor for [TextAttributeModifierBase]()
{
  if (!lazy cache variable for type metadata for [TextAttributeModifierBase])
  {
    type metadata accessor for TextAttributeModifierBase();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TextAttributeModifierBase]);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [TextAttributeModifierBase] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EnvironmentValues.writingMode.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011WritingModeK0023_82074A2E22E8635055FCB3O8D5E40280LLVG_Ttg5(v4, *v2);
  }
}

uint64_t key path getter for EnvironmentValues.writingMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.writingMode : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011WritingModeK0023_82074A2E22E8635055FCB3O8D5E40280LLVG_Ttg5(v4, *a2);
  }
}

void (*EnvironmentValues.writingMode.modify(void *a1))(uint64_t *a1)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.writingMode.modify;
}

void EnvironmentValues.writingMode.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011WritingModeK0023_82074A2E22E8635055FCB3O8D5E40280LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t View.writingMode(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t Text.WritingMode.init(protobufValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    if (result == 1)
    {
      *a2 = 1;
    }

    else
    {
      *a2 = 2;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance Text.WritingMode@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result == 1)
  {
    *a2 = 1;
  }

  else if (result)
  {
    *a2 = 2;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.WritingMode.Storage and conformance Text.WritingMode.Storage()
{
  result = lazy protocol witness table cache variable for type Text.WritingMode.Storage and conformance Text.WritingMode.Storage;
  if (!lazy protocol witness table cache variable for type Text.WritingMode.Storage and conformance Text.WritingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingMode.Storage and conformance Text.WritingMode.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.WritingMode and conformance Text.WritingMode()
{
  result = lazy protocol witness table cache variable for type Text.WritingMode and conformance Text.WritingMode;
  if (!lazy protocol witness table cache variable for type Text.WritingMode and conformance Text.WritingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingMode and conformance Text.WritingMode);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.WritingMode>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.WritingMode>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.WritingMode>);
    }
  }
}

uint64_t NSTextHorizontalAlignment.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.TextAlignment();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6965568])
  {
    v8 = 2;
LABEL_7:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x1E6965578])
  {
    v8 = 4;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x1E6965570])
  {
    v8 = 3;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t EnvironmentValues.avoidsOrphans.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3) & 1;
  }

  v5 = a1(v3);

  return v5 & 1;
}

void *EnvironmentValues.hyphenationDisabled.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

uint64_t EnvironmentValues.minimumScaleFactor.setter(double a1)
{
  if (a1 <= 1.0 && a1 > 0.0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *v1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(v1, v3);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018MinimumScaleFactorK0VG_Ttg5(v4, *v1);
  }
}

uint64_t NSTextHorizontalAlignment.init(in:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.TextAlignment();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  v12 = *a1;
  v13 = *(a1 + 8);
  v29 = *a1;
  v30 = v13;
  v14 = EnvironmentValues.multilineTextAlignment.getter();
  if (v13)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v12, &v28);

    v15 = v28;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v12, &v27);

    if (v27)
    {
LABEL_3:
      v16 = *(v3 + 104);
      if (v14)
      {
        v17 = MEMORY[0x1E6965568];
        if (v14 == 1)
        {
          v18 = *MEMORY[0x1E6965578];
        }

        else
        {
          v18 = *MEMORY[0x1E6965570];
        }
      }

      else
      {
        v17 = MEMORY[0x1E6965568];
        v18 = *MEMORY[0x1E6965568];
      }

      goto LABEL_23;
    }
  }

  else
  {
    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v12);
    if (v19)
    {
      v15 = *(v19 + 72);
    }

    else
    {
      v15 = 0;
    }

    v28 = v15;
    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v12);
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v27 = v21;

    if (v21)
    {
      goto LABEL_3;
    }
  }

  if (!v14)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v22 = MEMORY[0x1E6965570];
    goto LABEL_20;
  }

  if (v14 == 1)
  {
    v22 = MEMORY[0x1E6965578];
LABEL_20:
    (*(v3 + 104))(v8, *v22, v2);
    v17 = MEMORY[0x1E6965568];
    goto LABEL_24;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v17 = MEMORY[0x1E6965568];
  v18 = *MEMORY[0x1E6965568];
  v16 = *(v3 + 104);
LABEL_23:
  v16(v8, v18, v2);
LABEL_24:
  (*(v3 + 32))(v11, v8, v2);
  (*(v3 + 16))(v5, v11, v2);
  v23 = (*(v3 + 88))(v5, v2);
  if (v23 == *v17)
  {
    v24 = 2;
LABEL_30:
    (*(v3 + 8))(v11, v2);
    return v24;
  }

  if (v23 == *MEMORY[0x1E6965578])
  {
    v24 = 4;
    goto LABEL_30;
  }

  if (v23 == *MEMORY[0x1E6965570])
  {
    v24 = 3;
    goto LABEL_30;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int Text.TruncationMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

unint64_t Text.TruncationMode.init(protobufValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2010003u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableTextCase.CodingKeys()
{
  if (*v0)
  {
    return 0x7361637265776F6CLL;
  }

  else
  {
    return 0x7361637265707075;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableTextCase.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7361637265707075 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7361637265776F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableTextCase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableTextCase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableTextCase.LowercaseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableTextCase.LowercaseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableTextCase.UppercaseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableTextCase.UppercaseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableTextCase.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>, lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys, &unk_1F0080040, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableTextCase.UppercaseCodingKeys>, lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys, &unk_1F0080020, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableTextCase.CodingKeys>, lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys, &unk_1F0080000, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys();
    v15 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys();
    v15 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

uint64_t CodableTextCase.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableTextCase.LowercaseCodingKeys>, lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys, &unk_1F0080040, MEMORY[0x1E69E6F48]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableTextCase.UppercaseCodingKeys>, lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys, &unk_1F0080020, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableTextCase.CodingKeys>, lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys, &unk_1F0080000, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys();
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = specialized Collection<>.popFirst()();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = &type metadata for CodableTextCase;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void (*EnvironmentValues.multilineTextAlignment.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = *v1;
  *(v3 + 32) = v1[1];
  *(v3 + 40) = EnvironmentValues.multilineTextAlignment.getter();
  return EnvironmentValues.multilineTextAlignment.modify;
}

void EnvironmentValues.multilineTextAlignment.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013TextAlignmentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013TextAlignmentK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void *EnvironmentValues.explicitTruncationMode.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*v1);
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

void (*EnvironmentValues.truncationMode.modify(void *a1))(uint64_t a1, char a2)
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

    v7 = &v11;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5, &v11);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (!v8)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }

    v7 = (v8 + 9);
  }

  v9 = *v7;
  if (*v7 == 3)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v4 + 40) = v9;
  return EnvironmentValues.truncationMode.modify;
}

uint64_t key path getter for EnvironmentValues.explicitTruncationMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
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

uint64_t (*EnvironmentValues.explicitTruncationMode.modify(char **a1))()
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
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

  return EnvironmentValues.explicitTruncationMode.modify;
}

uint64_t EnvironmentValues.textCase.getter(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t, uint64_t *))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3, &v6);
  }

  a1(v3);
}

void (*EnvironmentValues.defaultTextFieldTruncationMode.modify(char **a1))(uint64_t a1, char a2)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 3;
    }

    v4[40] = v9;
  }

  return EnvironmentValues.defaultTextFieldTruncationMode.modify;
}

void (*EnvironmentValues.lineSpacing.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011LineSpacingI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.lineSpacing.modify;
}

uint64_t EnvironmentValues.bodyHeadOutdent.getter(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3);
  }

  a1(v3);
}

uint64_t (*EnvironmentValues._lineHeightMultiple.modify(double **a1))()
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues._lineHeightMultiple.modify;
}

void (*EnvironmentValues.lineHeightMultiple.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.lineHeightMultiple.modify;
}

void (*EnvironmentValues.maximumLineHeight.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MaximumLineHeightI0VG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.maximumLineHeight.modify;
}

void (*EnvironmentValues.minimumLineHeight.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MinimumLineHeightI0VG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.minimumLineHeight.modify;
}

void (*EnvironmentValues.hyphenationFactor.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017HyphenationFactorI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.hyphenationFactor.modify;
}

uint64_t key path getter for EnvironmentValues.hyphenationDisabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
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

void (*EnvironmentValues.hyphenationDisabled.modify(void *a1))(uint64_t *a1)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
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
  return EnvironmentValues.hyphenationDisabled.modify;
}

void EnvironmentValues.hyphenationDisabled.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019HyphenationDisabledF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019HyphenationDisabledK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void (*EnvironmentValues.allowsTightening.modify(void *a1))(uint64_t a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016AllowsTighteningI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.allowsTightening.modify;
}

uint64_t EnvironmentValues.hyphenationDisabled.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void))
{
  v6 = v3;
  v8 = *v6;
  swift_retain_n();
  a2(v6, a1, &v10);

  if (v6[1])
  {
    a3(v8, *v6);
  }
}

void (*EnvironmentValues.avoidsOrphans.modify(void *a1))(uint64_t a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = v1[1];
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AvoidsOrphansI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.avoidsOrphans.modify;
}

void EnvironmentValues.allowsTightening.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void))
{
  v7 = *a1;
  v8 = *(*a1 + 48);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  a3(v10, v11, v12);

  if (v9)
  {
    a4(v7[3], *v7[2]);
  }

  free(v7);
}

void (*EnvironmentValues.minimumScaleFactor.modify(double **a1))(double **a1)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 1.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.minimumScaleFactor.modify;
}

void EnvironmentValues.minimumScaleFactor.modify(double **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2 <= 1.0 && v2 > 0.0)
  {
    v4 = **a1;
  }

  else
  {
    v4 = 1.0;
  }

  swift_retain_n();
  v5 = *(v1 + 5);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(*(v1 + 3), v4);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018MinimumScaleFactorK0VG_Ttg5(*(v1 + 4), **(v1 + 3));
  }

  free(v1);
}

uint64_t EnvironmentValues.lineSpacing.setter(void (*a1)(void *, uint64_t *, double), void (*a2)(uint64_t, void), double a3)
{
  v7 = *v3;
  swift_retain_n();
  a1(v3, &v9, a3);

  if (v3[1])
  {
    a2(v7, *v3);
  }
}

void (*EnvironmentValues.bodyHeadOutdent.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BodyHeadOutdentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.bodyHeadOutdent.modify;
}

void EnvironmentValues.lineSpacing.modify(double **a1, char a2, void (*a3)(void, void *, double), void (*a4)(void, void))
{
  v7 = *a1;
  v8 = **a1;
  swift_retain_n();
  v9 = *(v7 + 5);
  if (a2)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7 + 2;
  }

  a3(*(v7 + 3), v10, v8);

  if (v9)
  {
    a4(*(v7 + 4), **(v7 + 3));
  }

  free(v7);
}

void (*EnvironmentValues.textCase.modify(char **a1))(uint64_t a1, char a2)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 2;
    }

    v4[40] = v9;
  }

  return EnvironmentValues.textCase.modify;
}

void EnvironmentValues.truncationMode.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void))
{
  v7 = *a1;
  v8 = *(*a1 + 40);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  a3(v10, v11, v12);

  if (v9)
  {
    a4(v7[3], *v7[2]);
  }

  free(v7);
}

uint64_t View.multilineTextAlignment(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t View.truncationMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return View.truncationMode(_:)(a1, a2, a3);
}

{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);
}

uint64_t View.hyphenationDisabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  return View.hyphenationDisabled(_:)(a1, a2, a3);
}

{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t key path getter for EnvironmentValues.textCase : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v2 = *a1;
  if (!a1[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(*a1, a2);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v2, a2);
}

unint64_t lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Text.TruncationMode and conformance Text.TruncationMode()
{
  result = lazy protocol witness table cache variable for type Text.TruncationMode and conformance Text.TruncationMode;
  if (!lazy protocol witness table cache variable for type Text.TruncationMode and conformance Text.TruncationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.TruncationMode and conformance Text.TruncationMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Case and conformance Text.Case()
{
  result = lazy protocol witness table cache variable for type Text.Case and conformance Text.Case;
  if (!lazy protocol witness table cache variable for type Text.Case and conformance Text.Case)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Case and conformance Text.Case);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Case?>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for Text.Case?, &type metadata for Text.Case, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Case?>);
    }
  }
}

uint64_t Image.init(_:scale:orientation:label:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, double a7)
{
  v13 = a5 & 1;
  type metadata accessor for ImageProviderBox<Image.CGImageProvider>();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a7;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = v13;
  *(result + 64) = a6;
  *(result + 72) = 0;
  return result;
}

double CGImageRef.size.getter()
{
  Width = CGImageGetWidth(v0);
  CGImageGetHeight(v0);
  return Width;
}

uint64_t initializeWithCopy for Image.CGImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 48);
  v7 = v4;
  if (v6)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    *(a1 + 48) = v6;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for Image.CGImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v7)
    {
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      v10 = *(a2 + 40);
      outlined copy of Text.Storage(v8, v9, v10);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *(a1 + 24) = v8;
      *(a1 + 32) = v9;
      *(a1 + 40) = v10;
      outlined consume of Text.Storage(v11, v12, v13);
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      outlined destroy of Text(a1 + 24);
      v17 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v17;
    }
  }

  else if (v7)
  {
    v14 = *(a2 + 24);
    v15 = *(a2 + 32);
    v16 = *(a2 + 40);
    outlined copy of Text.Storage(v14, v15, v16);
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
    *(a1 + 40) = v16;
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v18 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v18;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for Image.CGImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  if (!*(a1 + 48))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 48);
  if (!v5)
  {
    outlined destroy of Text(a1 + 24);
LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_6;
  }

  v6 = *(a2 + 40);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 48) = v5;

LABEL_6:
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t static _FillMaskEffect._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v48 = a6;
  v49 = a5;
  v55 = a4;
  v56 = a3;
  v51 = a7;
  v96 = *MEMORY[0x1E69E9840];
  v45 = *a1;
  v8 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v8;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v9 = *(a2 + 16);
  v90 = *a2;
  v91 = v9;
  v54 = v8;
  v53 = DWORD2(v8);
  v52 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v8);
  v50 = v90;
  v46 = *(&v91 + 1);
  v47 = DWORD2(v90);
  v10 = v92;
  v11 = *a2;
  v59 = *(&v91 + 1);
  v12 = v91;
  v13 = *(a2 + 52);
  v87 = *(a2 + 36);
  v88 = v13;
  v89 = v11;
  v57 = DWORD1(v92);
  v58 = DWORD1(v94);
  v14 = *(a2 + 72);
  v64 = *(a2 + 80);
  v63 = v14;
  swift_beginAccess();
  LODWORD(v77) = *(v91 + 16);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(&v90, &v81);
  lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground();
  v15 = Attribute.init<A>(body:value:flags:update:)();
  v60 = 1;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_3(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 256;
  *(v18 + 88) = v17;

  v19 = v10 | 0x20;
  if (v52)
  {
    v83 = v92;
    v84 = v93;
    v85 = v94;
    v86 = v95;
    v81 = v90;
    v82 = v91;
    swift_beginAccess();
    v20 = CachedEnvironment.animatedPosition(for:)(&v81);
    swift_endAccess();
  }

  else
  {
    v20 = v58;
  }

  *(&v79[2] + 1) = *(a2 + 72);
  *&v78 = v18;
  *(&v78 + 1) = v59;
  LODWORD(v79[0]) = v10 | 0x20;
  *(&v79[1] + 4) = *(a2 + 52);
  *(v79 + 4) = *(a2 + 36);
  DWORD1(v79[2]) = v20;
  v75[0] = v79[0];
  v75[1] = v79[1];
  v75[2] = v79[2];
  v77 = *a2;
  v80 = *(a2 + 80);
  v76 = v80;
  v73 = v77;
  v74 = v78;
  v21 = outlined init with copy of _ViewInputs(&v77, &v81);
  v56(v62, v21, &v73);
  v83 = v75[0];
  v84 = v75[1];
  v85 = v75[2];
  v86 = v76;
  v81 = v73;
  v82 = v74;
  outlined destroy of _ViewInputs(&v81);
  v22 = v57;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v54) & 1) == 0)
  {
LABEL_18:
    v73 = v89;
    *&v74 = v18;
    *(&v74 + 1) = v59;
    LODWORD(v75[0]) = v19;
    *(v75 + 4) = v87;
    *(&v75[1] + 4) = v88;
    DWORD1(v75[2]) = v20;
    *(&v75[2] + 1) = v63;
    v76 = v64;
    result = outlined destroy of _ViewInputs(&v73);
    v41 = v51;
    *v51 = v62[0];
    v41[1] = v62[1];
    return result;
  }

  LODWORD(v56) = v19;
  v58 = v20;
  v44 = v12;
  if (v49 == &type metadata for ForegroundStyle)
  {
    v75[0] = v92;
    v75[1] = v93;
    v75[2] = v94;
    v76 = v95;
    v73 = v90;
    v74 = v91;
    LOBYTE(v68[0]) = 0;
    swift_beginAccess();
    v61[0] = 1;
    v23 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v73, v68, 0x100000000);
    swift_endAccess();
  }

  else
  {
    if (*(v49[-1].Description + 8))
    {
      closure #1 in static _FillMaskEffect._makeView(modifier:inputs:body:)(1, v49);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v25 = *(v12 + 16);
    v61[0] = 0;
    v75[0] = v92;
    v75[1] = v93;
    v75[2] = v94;
    v76 = v95;
    v73 = v90;
    v74 = v91;
    _ViewInputs.materialSubstrate.getter(&v65);
    v68[0] = v46;
    v68[1] = v47;
    v68[2] = HIDWORD(v46);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)(OffsetAttribute2, *MEMORY[0x1E698D3F8], v25, v61, &v65, v57 & 1, v68, v66);
    MEMORY[0x1EEE9AC00](v26);
    v27 = type metadata accessor for ShapeStyleResolver();
    v43[2] = v27;
    v43[3] = swift_getWitnessTable();
    v22 = v57;
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_3(0, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>, &type metadata for _ShapeStyle_Pack, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v66, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3, v43, v27, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
    v75[0] = v66[2];
    v75[1] = v66[3];
    *&v75[2] = v67;
    v73 = v66[0];
    v74 = v66[1];
    (*(*(v27 - 8) + 8))(&v73, v27);
    v23 = v68[0];
    AGGraphSetFlags();
  }

  v30 = ++lastIdentity;
  v19 = v56;
  if ((v22 & 0x100) == 0)
  {
    v31 = *MEMORY[0x1E698D3F8];
LABEL_12:
    v75[0] = v92;
    v75[1] = v93;
    v75[2] = v94;
    v76 = v95;
    v73 = v90;
    v74 = v91;
    v32 = v44;
    swift_beginAccess();
    v33 = CachedEnvironment.animatedPosition(for:)(&v73);
    v75[0] = v92;
    v75[1] = v93;
    v75[2] = v94;
    v76 = v95;
    v73 = v90;
    v74 = v91;
    v34 = CachedEnvironment.animatedCGSize(for:)(&v73);
    swift_endAccess();
    v35 = *(v32 + 16);
    v36 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v62[0]);
    if ((v36 & 0x100000000) == 0)
    {
      v31 = v36;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v37 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v50, v73);
    if (v37)
    {
      v38 = *(v37 + 72);
    }

    else
    {
      v38 = 0;
    }

    *&v73 = __PAIR64__(v23, v30);
    *(&v73 + 1) = __PAIR64__(v34, v33);
    *&v74 = __PAIR64__(v35, DWORD1(v94));
    DWORD2(v74) = v31;
    BYTE12(v74) = v38;
    HIWORD(v74) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type FillMaskDisplayList and conformance FillMaskDisplayList();
    v39 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v73) = 0;
    PreferencesOutputs.subscript.setter(v39, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v20 = v58;
    goto LABEL_18;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v50, &v73);
  result = AGWeakAttributeGetAttribute();
  v31 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    LODWORD(v66[0]) = v30;
    v42 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v66);
    v42(&v73, 0);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static _FillMaskEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _FillMaskEffect();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t FillMaskDisplayList.updateValue()()
{
  v58 = *MEMORY[0x1E69E9840];
  if (v0[6] == *MEMORY[0x1E698D3F8] || (Value = AGGraphGetValue(), v3 = *Value, !*(*Value + 16)))
  {
    *&__src[0] = MEMORY[0x1E69E7CC0];
    WORD4(__src[0]) = 0;
    HIDWORD(__src[0]) = 0;
    AGGraphSetOutputValue();
  }

  v4 = v2;
  v5 = *(Value + 8);
  v6 = *(Value + 12);

  v35 = *AGGraphGetValue();
  if (((v4 | v7) & 1) != 0 || !*(v0 + 15))
  {

    v10 = ++static DisplayList.Version.lastValue;
    if (static DisplayList.Version.lastValue)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v8 = v0[4];
  LODWORD(__src[0]) = v0[2];
  DWORD1(__src[0]) = v8;

  v9 = AGGraphAnyInputsChanged();
  v10 = ++static DisplayList.Version.lastValue;
  if (v9)
  {
    if (v10)
    {
LABEL_7:
      v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
LABEL_11:
      *(v0 + 15) = v11;
      goto LABEL_12;
    }

LABEL_10:
    LOWORD(v11) = 0;
    goto LABEL_11;
  }

LABEL_12:
  type metadata accessor for CGPoint(0);
  v13 = AGGraphGetValue();
  v14 = *v13;
  v15 = v13[1];
  v16 = AGGraphGetValue();
  v17 = v14 - *v16;
  v18 = v15 - v16[1];
  type metadata accessor for CGSize(0);
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = v19[1];
  v53 = 0uLL;
  *&v54 = v20;
  *(&v54 + 1) = v21;
  *&v55[8] = xmmword_18DDD08E0;
  *&v55[32] = v5 | (v6 << 32) | 0x40000000;
  *&v55[40] = 0;
  *&v55[24] = v3;
  *v55 = v10;
  LOBYTE(__src[0]) = *(v0 + 28);
  DisplayList.Item.canonicalize(options:)(__src);
  *&v52[80] = 0;
  *&v52[72] = 0x20000000;
  memset(v52, 0, 72);
  v56[0] = v53;
  v56[1] = v54;
  v56[2] = *v55;
  *v57 = *&v55[16];
  *&v57[12] = *&v55[28];
  v33 = *v57;
  v34 = v54;
  v31 = *v55;
  v32 = v53;
  v22 = *&v55[40];
  v23 = (*&v55[28] >> 32) & 0xFFFFFFFFC000FFFFLL;
  v24 = *v0;
  v25 = *(v0 + 15);
  v26 = *(v0 + 28);
  v27 = v0[5];
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  outlined init with copy of DisplayList.Item(v56, __dst);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[0] = v32;
  __src[1] = v34;
  __src[2] = v31;
  __src[3] = v33;
  *&__src[4] = v23;
  *(&__src[4] + 1) = v22;
  DWORD2(__src[6]) = 0x80000000;
  WORD6(__src[6]) = v25;
  *&__src[7] = v17;
  *(&__src[7] + 1) = v18;
  *&__src[8] = v20;
  *(&__src[8] + 1) = v21;
  *&__src[10] = v17;
  *(&__src[10] + 1) = v18;
  *&__src[11] = v20;
  *(&__src[11] + 1) = v21;
  __src[12] = v10;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v24;
  BYTE12(__src[14]) = v26;
  LODWORD(__src[15]) = v27;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v52, __src, v35);

  v28 = (*&v52[72] >> 28) & 3;
  if (v28)
  {
    if (v28 == 1)
    {
      v29 = *(v0 + 28);

      DisplayList.init(_:)(v30, &v40);
      __dst[0] = __src[7];
      __dst[1] = __src[8];
      *(&__dst[2] + 8) = xmmword_18DDA6ED0;
      *(&__dst[3] + 1) = v40;
      *&__dst[4] = WORD4(v40) | (HIDWORD(v40) << 32) | 0x40000000;
      DWORD2(__dst[4]) = DWORD2(__src[14]);
      *&__dst[2] = *&__src[12];
      LOBYTE(v40) = v29;
      DisplayList.Item.canonicalize(options:)(&v40);
      v49 = __dst[2];
      v50[0] = __dst[3];
      *(v50 + 12) = *(&__dst[3] + 12);
      v47 = __dst[0];
      v48 = __dst[1];
      v45[2] = __dst[2];
      v46[0] = __dst[3];
      *(v46 + 12) = *(&__dst[3] + 12);
      v45[0] = __dst[0];
      v45[1] = __dst[1];
      outlined init with copy of DisplayList.Item(&v47, &v40);
      DisplayList.init(_:)(v45, &v36);
      v42 = __dst[2];
      *v43 = __dst[3];
      *&v43[12] = *(&__dst[3] + 12);
      v40 = __dst[0];
      v41 = __dst[1];
      outlined destroy of DisplayList.Item(&v40);
      __dst[2] = *&v52[40];
      __dst[3] = *&v52[56];
      *(&__dst[3] + 12) = *&v52[68];
      __dst[0] = *&v52[8];
      __dst[1] = *&v52[24];
      outlined destroy of _ShapeStyle_RenderedLayers.Layers(__dst);
      memset(&v52[8], 0, 64);
      *&v52[72] = 0x20000000;
      *&v52[80] = 0;
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
      v37 = 0;
      v38 = 0;
      __dst[2] = *&v52[40];
      __dst[3] = *&v52[56];
      *(&__dst[3] + 12) = *&v52[68];
      __dst[0] = *&v52[8];
      __dst[1] = *&v52[24];
      outlined destroy of _ShapeStyle_RenderedLayers.Layers(__dst);
    }
  }

  else
  {
    __dst[0] = *&v52[8];
    __dst[1] = *&v52[24];
    __dst[2] = *&v52[40];
    __dst[3] = *&v52[56];
    *&__dst[4] = *&v52[72] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v52[80];
    v40 = *&v52[8];
    v41 = *&v52[24];
    v42 = *&v52[40];
    *v43 = *&v52[56];
    *&v43[16] = *&v52[72] & 0xFFFFFFFFCFFFFFFFLL;
    *&v43[24] = *&v52[80];
    outlined init with copy of DisplayList.Item(&v40, &v47);
    DisplayList.init(_:)(__dst, &v36);
    __dst[2] = *&v52[40];
    __dst[3] = *&v52[56];
    *(&__dst[3] + 12) = *&v52[68];
    __dst[0] = *&v52[8];
    __dst[1] = *&v52[24];
    outlined destroy of _ShapeStyle_RenderedLayers.Layers(__dst);
    memset(&v52[8], 0, 64);
    *&v52[72] = 0x20000000;
    *&v52[80] = 0;
  }

  *&v40 = v36;
  WORD4(v40) = v37;
  HIDWORD(v40) = v38;
  AGGraphSetOutputValue();
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);
  v49 = *v55;
  v50[0] = *&v55[16];
  *(v50 + 12) = *&v55[28];
  v47 = v53;
  v48 = v54;
  outlined destroy of DisplayList.Item(&v47);

  v42 = *&v52[32];
  *v43 = *&v52[48];
  *&v43[16] = *&v52[64];
  v44 = *&v52[80];
  v40 = *v52;
  v41 = *&v52[16];
  return outlined destroy of _ShapeStyle_RenderedLayers(&v40);
}

unint64_t lazy protocol witness table accessor for type FillMaskDisplayList and conformance FillMaskDisplayList()
{
  result = lazy protocol witness table cache variable for type FillMaskDisplayList and conformance FillMaskDisplayList;
  if (!lazy protocol witness table cache variable for type FillMaskDisplayList and conformance FillMaskDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FillMaskDisplayList and conformance FillMaskDisplayList);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FillMaskDisplayList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FillMaskDisplayList and conformance FillMaskDisplayList();
  *(a1 + 8) = result;
  return result;
}

uint64_t static PlatformScrollEdgeEffectTagDefinition.apply(inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  if (static PlatformScrollEdgeEffectTagDefinition.definition)
  {
    v9 = (*(static PlatformScrollEdgeEffectTagDefinition.definition + 10))(result);
    v10 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v10;
    v15[4] = *(a1 + 64);
    v16 = *(a1 + 80);
    v11 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v11;
    result = static PlatformScrollEdgeEffectTagDefinition._apply<A>(_:inputs:body:)(v9, v15, a2, a3, v9, v12);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *a4 = v13;
  a4[1] = v14;
  return result;
}

uint64_t static PlatformScrollEdgeEffectTagDefinition.definition.setter(void *a1)
{
  result = swift_beginAccess();
  static PlatformScrollEdgeEffectTagDefinition.definition = a1;
  return result;
}

uint64_t static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)(void *a1)
{
  result = swift_beginAccess();
  if (!static PlatformScrollEdgeEffectTagDefinition.definition)
  {
    static PlatformScrollEdgeEffectTagDefinition.definition = a1;
  }

  return result;
}

uint64_t static PlatformScrollEdgeEffectTagDefinition._apply<A>(_:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  v28[2] = *(v13 + 32);
  v28[3] = v14;
  v28[4] = *(v13 + 64);
  v29 = *(v13 + 80);
  v15 = *(v13 + 16);
  v28[0] = *v13;
  v28[1] = v15;
  (*(v16 + 16))(v17, v16);
  v27 = a5;
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in Attribute.init(value:), v26, a5, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  _GraphValue.init(_:)(v25, &v25);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = *(a6 + 8);
  v22 = *(v21 + 24);

  v22(&v25, v28, partial apply for closure #1 in static PlatformScrollEdgeEffectTagDefinition._apply<A>(_:inputs:body:), v20, a5, v21);

  return (*(v10 + 8))(v12, a5);
}

Swift::Void __swiftcall _ViewInputs.enableLegacyScrollEdgeEffectTag()()
{
  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5() & 1) == 0)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(v0, 1);
  }
}

Swift::Void __swiftcall _GraphInputs.enableLegacyScrollEdgeEffectTag()()
{
  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5() & 1) == 0)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(v0, 1);
  }
}

uint64_t static EnableLegacyScrollEdgeEffectTag._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v29 = *(a2 + 32);
  v30 = v4;
  v6 = *(a2 + 48);
  v31 = *(a2 + 64);
  v7 = *(a2 + 16);
  v28[0] = *a2;
  v28[1] = v7;
  v24 = v29;
  v25 = v6;
  v26 = *(a2 + 64);
  v32 = *(a2 + 80);
  v27 = *(a2 + 80);
  v22 = v28[0];
  v23 = v5;
  outlined init with copy of _ViewInputs(v28, v20);
  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5() & 1) == 0)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(&v22, 1);
  }

  v16[2] = v24;
  v16[3] = v25;
  v16[4] = v26;
  v17 = v27;
  v16[0] = v22;
  v16[1] = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v10 = v22;
  v11 = v23;
  v8 = outlined init with copy of _ViewInputs(v16, v20);
  a3(v8, &v10);
  v18[2] = v12;
  v18[3] = v13;
  v18[4] = v14;
  v19 = v15;
  v18[0] = v10;
  v18[1] = v11;
  outlined destroy of _ViewInputs(v18);
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  return outlined destroy of _ViewInputs(v20);
}

uint64_t partial apply for closure #1 in static PlatformScrollEdgeEffectTagDefinition._apply<A>(_:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return v3(a1, v7);
}

double ResolvedShadowStyle.insets.getter()
{
  result = 0.0;
  if ((*(v0 + 52) & 1) == 0)
  {
    return *(v0 + 40) + *(v0 + 24) * -2.8;
  }

  return result;
}

uint64_t ResolvedShadowStyle.init(color:radius:offset:midpoint:kind:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, float a7@<S3>)
{
  v7 = *a2;
  LODWORD(v8) = *(result + 16);
  *a3 = *result;
  *(a3 + 16) = v8;
  *(a3 + 24) = a4;
  *(a3 + 32) = a5;
  *(a3 + 40) = a6;
  *(a3 + 48) = a7;
  *(a3 + 52) = v7;
  return result;
}

double ResolvedShadowStyle.animatableData.setter(uint64_t a1)
{
  v3 = *a1;
  v4.i64[0] = 0x3C0000003C000000;
  v4.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v11 = *a1;
    swift_once();
    v4.i64[0] = 0x3C0000003C000000;
    v4.i64[1] = 0x3C0000003C000000;
    v3 = v11;
  }

  v10 = vmulq_f32(v3, v4);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v5 = v10.f32[0];
    v7 = v10.i32[2];
    v6 = v10.i32[1];
    v8 = v10.i32[3];
  }

  else
  {
    v13 = 2;
    v12 = v10;
    v5 = ResolvedGradient.ColorSpace.convertOut(_:)(&v12);
  }

  *v1 = v5;
  *(v1 + 4) = v6;
  *(v1 + 8) = v7;
  *(v1 + 12) = v8;
  result = *(a1 + 32);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 40) = result;
  return result;
}

double one-time initialization function for drop()
{
  qword_1EAB20090 = 0;
  result = 0.0;
  static ShadowStyle.drop = 0u;
  *&qword_1EAB20080 = 0u;
  dword_1EAB20098 = 1056964608;
  return result;
}

uint64_t static ShadowStyle.drop.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for drop != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = static ShadowStyle.drop;
  v3 = qword_1EAB20080;
  v4 = unk_1EAB20088;
  v5 = qword_1EAB20090;
  v6 = dword_1EAB20098;
  *a1 = static ShadowStyle.drop;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return outlined copy of ShadowStyle.Storage(v2, *(&v2 + 1));
}

double one-time initialization function for inner()
{
  static ShadowStyle.inner = 1;
  result = 0.0;
  *algn_1EAB200A8 = 0u;
  unk_1EAB200B8 = 0u;
  dword_1EAB200C8 = 1056964608;
  return result;
}

uint64_t static ShadowStyle.inner.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for inner != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ShadowStyle.inner;
  v3 = *algn_1EAB200A8;
  v4 = qword_1EAB200B0;
  v5 = unk_1EAB200B8;
  v6 = qword_1EAB200C0;
  v7 = dword_1EAB200C8;
  *a1 = static ShadowStyle.inner;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return outlined copy of ShadowStyle.Storage(v2, v3);
}

uint64_t ShadowStyle.midpoint(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = a2;
  *(a1 + 40) = v8;
  return outlined copy of ShadowStyle.Storage(v3, v4);
}

float _ShadowShapeStyle.init(style:shadowStyle:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for _ShadowShapeStyle() + 36);
  v7 = *(a2 + 32);
  result = *(a2 + 40);
  v9 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v9;
  *(v6 + 32) = v7;
  *(v6 + 40) = result;
  return result;
}

uint64_t _ShadowShapeStyle.shadowStyle.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  return outlined copy of ShadowStyle.Storage(v4, v5);
}

__n128 _ShadowShapeStyle.shadowStyle.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  outlined consume of ShadowStyle.Storage(*v4, *(v4 + 8));
  result = *a1;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

uint64_t closure #2 in _ShadowShapeStyle._apply(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + *(type metadata accessor for _ShadowShapeStyle() + 36);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  *a3 = a1;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  outlined copy of ShadowStyle.Storage(v6, v7);
}

float ResolvedShadowStyle.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 ResolvedShadowStyle.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

void (*ResolvedShadowStyle.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  ResolvedShadowStyle.animatableData.getter(v3 + 80);
  return ResolvedShadowStyle.animatableData.modify;
}

void ResolvedShadowStyle.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  ResolvedShadowStyle.animatableData.setter(v3);

  free(v2);
}

double protocol witness for Animatable.animatableData.getter in conformance ResolvedShadowStyle@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ResolvedShadowStyle(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  ResolvedShadowStyle.animatableData.getter(v3 + 80);
  return ResolvedShadowStyle.animatableData.modify;
}

void ResolvedShadowStyle.encode(to:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 52);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_32:
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    v9 = isUniquelyReferenced_nonNull_native;
    goto LABEL_20;
  }

  *(a1 + 8) = v8 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  ProtobufEncoder.endLengthDelimited()();
  if (v4 != 0.0)
  {
    v12 = fabs(v4);
    if (v12 >= 65536.0)
    {
      v13 = 17;
    }

    else
    {
      v13 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v13);
    if (v12 < 65536.0)
    {
      v14 = *(a1 + 8);
      v15 = v14 + 4;
      if (!__OFADD__(v14, 4))
      {
        *&v4 = v4;
        if (*(a1 + 16) >= v15)
        {
          *(a1 + 8) = v15;
          *(*a1 + v14) = LODWORD(v4);
          goto LABEL_17;
        }

LABEL_38:
        *ProtobufEncoder.growBufferSlow(to:)(v15) = LODWORD(v4);
        goto LABEL_17;
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v16 = *(a1 + 8);
    v15 = v16 + 8;
    if (__OFADD__(v16, 8))
    {
      goto LABEL_37;
    }

    if (*(a1 + 16) < v15)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v15) = v4;
    }

    else
    {
      *(a1 + 8) = v15;
      *(*a1 + v16) = v4;
    }
  }

LABEL_17:
  if (v3 == 0.0 && v5 == 0.0)
  {
    goto LABEL_24;
  }

  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  v19 = *(v9 + 2);
  v18 = *(v9 + 3);
  if (v19 >= v18 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v9);
    v9 = isUniquelyReferenced_nonNull_native;
  }

  *(v9 + 2) = v19 + 1;
  *&v9[8 * v19 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  *(a1 + 8) = v8 + 1;
  CGSize.encode(to:)(a1, v3, v5);
  ProtobufEncoder.endLengthDelimited()();
LABEL_24:
  if (v7)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)(v7);
  }

  if (v6 != 0.5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x2DuLL);
    v20 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v20 + 4;
    if (!__OFADD__(v20, 4))
    {
      if (*(a1 + 16) >= isUniquelyReferenced_nonNull_native)
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v20) = v6;
        return;
      }

LABEL_35:
      *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v6;
      return;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

BOOL specialized static ResolvedShadowStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), v2 ? (v3 = *(a1 + 32) == *(a2 + 32)) : (v3 = 0), v3 ? (v4 = *(a1 + 40) == *(a2 + 40)) : (v4 = 0), v4 ? (v5 = *(a1 + 48) == *(a2 + 48)) : (v5 = 0), v5))
  {
    return *(a1 + 52) == *(a2 + 52);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static ShadowStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v19 = *a1;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  outlined copy of ShadowStyle.Storage(v19, v2);
  outlined copy of ShadowStyle.Storage(v7, v8);
  LOBYTE(v7) = specialized static ShadowStyle.Storage.== infix(_:_:)(&v19, &v14);
  outlined consume of ShadowStyle.Storage(v14, v15);
  outlined consume of ShadowStyle.Storage(v19, v20);
  return v7 & (v6 == v12);
}

void type metadata accessor for _ShadowShapeStyle<AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for _ShadowShapeStyle<AnyShapeStyle>)
  {
    v0 = type metadata accessor for _ShadowShapeStyle();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShadowShapeStyle<AnyShapeStyle>);
    }
  }
}

BOOL specialized static ShadowStyle.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = *a1;
      outlined consume of ShadowStyle.Storage(*a1, v3);
      outlined consume of ShadowStyle.Storage(v6, v7);
      return v11 == v6;
    }

    goto LABEL_6;
  }

  v19 = *(a1 + 32);
  v13 = v3 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v7 & 0x8000000000000000) == 0)
  {

LABEL_6:
    v14 = v6;
    v15 = v7;
LABEL_7:
    outlined copy of ShadowStyle.Storage(v14, v15);
    outlined consume of ShadowStyle.Storage(v2, v3);
    outlined consume of ShadowStyle.Storage(v6, v7);
    return 0;
  }

  if (*a1 != v6)
  {
    outlined copy of ShadowStyle.Storage(v6, v7);
    v14 = v2;
    v15 = v3;
    goto LABEL_7;
  }

  if (v13 == (v7 & 0x7FFFFFFFFFFFFFFFLL))
  {
    outlined copy of ShadowStyle.Storage(v6, v7);
    v16 = v19;
    outlined copy of ShadowStyle.Storage(v2, v3);
    outlined consume of ShadowStyle.Storage(v2, v3);
    outlined consume of ShadowStyle.Storage(v6, v7);
    if (v5 != v9)
    {
      return 0;
    }

    return v16 == v10 && v4 == v8;
  }

  v18 = *(*v13 + 88);
  outlined copy of ShadowStyle.Storage(v6, v7);
  outlined copy of ShadowStyle.Storage(v2, v3);
  v17 = v18(v7 & 0x7FFFFFFFFFFFFFFFLL);
  outlined consume of ShadowStyle.Storage(v2, v3);
  outlined consume of ShadowStyle.Storage(v6, v7);
  result = 0;
  if (v17)
  {
    v16 = v19;
    if (v5 == v9)
    {
      return v16 == v10 && v4 == v8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShadowStyle.Kind and conformance ShadowStyle.Kind()
{
  result = lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind;
  if (!lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind;
  if (!lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind;
  if (!lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind;
  if (!lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind);
  }

  return result;
}

uint64_t _s7SwiftUI14AnimatablePairVyACySfACySfACyS2fGGGACy12CoreGraphics7CGFloatVACyA2IGGGACyxq_GAA16VectorArithmeticAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeWithCopy for ShadowStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of ShadowStyle.Storage(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for ShadowStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of ShadowStyle.Storage(*a2, v5);
  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  outlined consume of ShadowStyle.Storage(v9, v10);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ShadowStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  outlined consume of ShadowStyle.Storage(v5, v6);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShadowStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ShadowStyle(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 44) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      return result;
    }

    *(a1 + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for _ShadowShapeStyle()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ShadowShapeStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 44 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    outlined copy of ShadowStyle.Storage(*v11, v13);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 32) = v16;
    *(v10 + 40) = *(v11 + 40);
  }

  return v3;
}

uint64_t assignWithCopy for _ShadowShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  outlined copy of ShadowStyle.Storage(*v8, v10);
  v14 = *v7;
  v15 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  outlined consume of ShadowStyle.Storage(v14, v15);
  *(v7 + 40) = *(v8 + 40);
  return a1;
}

uint64_t initializeWithTake for _ShadowShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 28);
  v10 = v8[1];
  *v7 = *v8;
  v7[1] = v10;
  *(v7 + 28) = v9;
  return a1;
}

uint64_t assignWithTake for _ShadowShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 32);
  v9 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v7 + 16);
  *v9 = *v7;
  *(v9 + 16) = v12;
  *(v9 + 32) = v8;
  outlined consume of ShadowStyle.Storage(v10, v11);
  *(v9 + 40) = *(v7 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShadowShapeStyle(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 44))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 1);
  if (v9 > 0x80000000)
  {
    return -v9;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for _ShadowShapeStyle(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 44;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v14 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
          *(v14 + 40) = 0;
          *v14 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *v14 = -a2 << 8;
          result = 0.0;
          *(v14 + 8) = 0u;
          *(v14 + 24) = 0u;
        }
      }

      else
      {
        v13 = *(v6 + 56);

        v13();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for ShadowStyle.Storage(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of ShadowStyle.Storage(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

uint64_t *assignWithCopy for ShadowStyle.Storage(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of ShadowStyle.Storage(*a2, v4);
  v8 = *a1;
  v9 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  outlined consume of ShadowStyle.Storage(v8, v9);
  return a1;
}

uint64_t assignWithTake for ShadowStyle.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  outlined consume of ShadowStyle.Storage(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShadowStyle.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ShadowStyle.Storage(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 40) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      return result;
    }

    *(a1 + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ShadowStyle.Storage(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result = *result;
  result[1] = v2;
  return result;
}

uint64_t _AnchoredShapeStyle.bounds.setter(uint64_t result, double a2, double a3, double a4, double a5)
{
  v6 = (v5 + *(result + 36));
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return result;
}

uint64_t static _AnchoredShapeStyle._makeView<A>(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v9;
  v13[4] = *(a2 + 64);
  v14 = *(a2 + 80);
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v11 = type metadata accessor for _AnchoredShapeStyle();
  v15 = v8;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v15, v13, v11, a3, &protocol witness table for _AnchoredShapeStyle<A>, a4, a5);
}

uint64_t AnchoredResolvedPaint.draw(path:style:in:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = v5 + *(a5 + 36);
  v9 = *(v8 + 16);
  v10 = vdup_n_s32(*(a4 + 32));
  v11.i64[0] = v10.u32[0];
  v11.i64[1] = v10.u32[1];
  v12 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v11, 0x3FuLL)), *v8, vaddq_f64(*v8, *a4));
  v13 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v13;
  v16 = v6;
  v17 = v7;
  v18[0] = v12;
  v18[1] = v9;
  v19 = 0;
  return (*(*(a5 + 24) + 32))(a1, v15, a3, v18, *(a5 + 16));
}

uint64_t AnchoredResolvedPaint.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v16 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v11 = (v2 + *(a1 + 36));
  v12 = v11[1];
  v16[0] = *v11;
  v16[1] = v12;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v14 = v13;
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  return AnimatablePair.init(_:_:)(v10, v16, AssociatedTypeWitness, v14, a2);
}

uint64_t AnchoredResolvedPaint.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized AnchoredResolvedPaint.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*AnchoredResolvedPaint.animatableData.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = a2;
  *(v6 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  AnchoredResolvedPaint.animatableData.getter(a2, v16);
  return AnchoredResolvedPaint.animatableData.modify;
}

void AnchoredResolvedPaint.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    v8 = specialized AnchoredResolvedPaint.animatableData.setter(v3, v7);
    v9 = *(v6 + 8);
    v9(v3, v5, v8);
    (v9)(v4, v5);
  }

  else
  {
    v10 = specialized AnchoredResolvedPaint.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

BOOL static AnchoredResolvedPaint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AnchoredResolvedPaint() + 36);
  return CGRectEqualToRect(*(a1 + v4), *(a2 + v4));
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance AnchoredResolvedPaint<A>(uint64_t a1, uint64_t a2)
{
  specialized AnchoredResolvedPaint.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*protocol witness for Animatable.animatableData.modify in conformance AnchoredResolvedPaint<A>(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = AnchoredResolvedPaint.animatableData.modify(v4, a2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

int64_t AnchoredResolvedPaint.encode(to:)(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 24) + 96))(a1, *(a2 + 16));
  if (!v3)
  {
    v6 = (v2 + *(a2 + 36));
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
    return specialized ProtobufEncoder.encodeMessage<A>(_:)(v7, v8, v9, v10);
  }

  return result;
}

uint64_t ShapeStyle.in(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v13 = *(a1 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, a1, v14);
  (*(v13 + 32))(a2, v16, a1);
  result = type metadata accessor for _AnchoredShapeStyle();
  v18 = (a2 + *(result + 36));
  *v18 = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  return result;
}

double specialized AnchoredResolvedPaint.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v22 - v9;
  (*(v11 + 16))(&v22 - v9, a1, AssociatedTypeWitness, v8);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  v24 = AssociatedTypeWitness;
  v25 = v13;
  v26 = AssociatedConformanceWitness;
  v27 = v15;
  v16 = (a1 + *(type metadata accessor for AnimatablePair() + 52));
  v17 = *(v6 + 32);
  v18 = *v16;
  v22 = v16[1];
  v23 = v18;
  v17(v10, v5, v6);
  v19 = (v2 + *(a2 + 36));
  v21 = v22;
  result = *&v23;
  *v19 = v23;
  v19[1] = v21;
  return result;
}

uint64_t instantiation function for generic protocol witness table for AnchoredResolvedPaint<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _AnchoredShapeStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t assignWithCopy for _AnchoredShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  return a1;
}

uint64_t initializeWithTake for _AnchoredShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  return a1;
}

uint64_t assignWithTake for _AnchoredShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  return a1;
}

uint64_t StrokeStyle.dash.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void StrokeStyle.animatableData.setter(double a1, double a2, double a3)
{
  *v3 = a1;
  v3[2] = a2;
  v3[4] = a3;
}

double (*StrokeStyle.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  v2 = v1[2];
  v3 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  return StrokeStyle.animatableData.modify;
}

double StrokeStyle.animatableData.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[2] = v3;
  v1[4] = v4;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance StrokeStyle@<D0>(void *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance StrokeStyle(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[2] = v3;
  v1[4] = v4;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance StrokeStyle(void *a1))()
{
  a1[3] = v1;
  v2 = v1[2];
  v3 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  return protocol witness for Animatable.animatableData.modify in conformance StrokeStyle;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t assignWithCopy for StrokeStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void *assignWithTake for StrokeStyle(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  return a1;
}

uint64_t View.gestureComponent<A>(_:name:relations:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a7;
  v24[0] = a5;
  v25 = a2;
  v26 = a4;
  v27 = a9;
  v14 = *(a8 - 8);
  v24[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GestureComponentAttachmentModifier();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - v20;
  (*(v14 + 16))(v16, a1, a8, v19);
  v29[0] = v24[0];
  v29[1] = a6;
  v30 = 0;
  GestureComponentAttachmentModifier.init(component:name:relations:callbacks:)(v16, v25, a3, v26, v29, a8, v21);
  View.modifier<A>(_:)(v21, v28, v17);
  v22 = *(v18 + 8);

  return v22(v21, v17);
}

{
  v28 = a7;
  v24[0] = a5;
  v25 = a2;
  v26 = a4;
  v27 = a9;
  v14 = *(a8 - 8);
  v24[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GestureComponentAttachmentModifier();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - v20;
  (*(v14 + 16))(v16, a1, a8, v19);
  v29[0] = v24[0];
  v29[1] = a6;
  v30 = 1;
  GestureComponentAttachmentModifier.init(component:name:relations:callbacks:)(v16, v25, a3, v26, v29, a8, v21);
  View.modifier<A>(_:)(v21, v28, v17);
  v22 = *(v18 + 8);

  return v22(v21, v17);
}

uint64_t GestureComponentValues.AsyncIterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  type metadata accessor for Error();
  v4 = type metadata accessor for AsyncThrowingStream.Iterator();
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GestureComponentValues<A>.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return GestureComponentValues.AsyncIterator.next()(a1);
}

uint64_t _s7SwiftUI22GestureComponentValuesV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = _s7SwiftUI22GestureComponentValuesV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t _s7SwiftUI22GestureComponentValuesV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t GestureComponentValues.AsyncIterator.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, unint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Error();
  v9 = a3(0, a2, v8, MEMORY[0x1E69E7288]);
  v10 = *(*(v9 - 8) + 32);

  return v10(a4, a1, v9);
}

uint64_t GestureComponentValues.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  type metadata accessor for Error();
  v4 = type metadata accessor for AsyncThrowingStream.Iterator();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AsyncThrowingStream();
  MEMORY[0x193ABF450](v7);
  return GestureComponentValues.AsyncIterator.init(base:)(v6, v3, MEMORY[0x1E69E87B8], a2);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GestureComponentValues<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GestureComponentValues.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t GestureComponentFailure.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GestureFailureReason();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GestureComponentFailure.reason.setter(uint64_t a1)
{
  v3 = type metadata accessor for GestureFailureReason();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GestureComponentFailure.init(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GestureFailureReason();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata completion function for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Error();
  result = a4(319, v5, v6, MEMORY[0x1E69E7288]);
  if (v8 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  v10 = **(v9 - 8);

  return v10(a1, a2, v9);
}

uint64_t destroy for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t, void))
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Error();
  v7 = a3(0, v5, v6, MEMORY[0x1E69E7288]);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t initializeWithCopy for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  (*(*(v9 - 8) + 16))(a1, a2, v9);
  return a1;
}

uint64_t assignWithCopy for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  (*(*(v9 - 8) + 24))(a1, a2, v9);
  return a1;
}

uint64_t initializeWithTake for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  (*(*(v9 - 8) + 32))(a1, a2, v9);
  return a1;
}

uint64_t assignWithTake for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  (*(*(v9 - 8) + 40))(a1, a2, v9);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  v10 = *(*(v9 - 8) + 48);

  return v10(a1, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, unint64_t, void))
{
  v8 = *(a4 + 16);
  v9 = type metadata accessor for Error();
  v10 = a5(0, v8, v9, MEMORY[0x1E69E7288]);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, a2, a2, v10);
}

uint64_t initializeBufferWithCopyOfBuffer for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for GestureComponentFailure(uint64_t a1)
{
  v2 = type metadata accessor for GestureFailureReason();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata accessor for GestureComponentFailure()
{
  result = type metadata singleton initialization cache for GestureComponentFailure;
  if (!type metadata singleton initialization cache for GestureComponentFailure)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GestureComponentFailure()
{
  result = type metadata accessor for GestureFailureReason();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double Image.RenderingModeProvider.resolveNamedImage(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  v11 = *v2;
  v12 = *(v2 + 8);
  outlined init with copy of ImageResolutionContext(a1, v7);
  v13 = v7[1];
  v24 = *v7;
  v25 = v13;
  LOBYTE(v23[0]) = v12;

  v14 = EnvironmentValues.imageIsTemplate(renderingMode:)(v23);

  if ((v14 & 1) == 0)
  {
    v15 = *(v5 + 32);
    if (*(v7 + v15) == 8)
    {
      *(v7 + v15) = 1;
    }
  }

  outlined init with take of ImageResolutionContext(v7, v10);
  (*(*v11 + 88))(&v24, v10);
  v16 = v25;
  if (v25)
  {
    v17 = v10[1];
    v23[0] = *v10;
    v23[1] = v17;
    v22 = v12;

    v18 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v22);
    outlined destroy of ImageResolutionContext(v10);

    BYTE14(v26) = v18 & 1;
  }

  else
  {
    outlined destroy of ImageResolutionContext(v10);
  }

  *a2 = v24;
  *(a2 + 8) = v16;
  result = *&v26;
  v20 = v27;
  *(a2 + 16) = v26;
  *(a2 + 32) = v20;
  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)@<X0>(uint64_t result@<X0>, void (*a2)(__int128 *, void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a2;
  v5 = *(result + 16);
  v19 = *result;
  v20 = v5;
  v21 = *(result + 32);
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 68);
    while (1)
    {
      v8 = *(v7 - 36);
      v9 = *(v7 - 28);
      v10 = *(v7 - 20);
      v11 = *(v7 - 12);
      v12 = *(v7 - 4);
      v16[0] = v8;
      v16[1] = v9;
      v16[2] = v10;
      v16[3] = v11;
      v17 = v12;
      v18 = *v7;
      outlined copy of Path.Storage(v8, v9, v10, v11, v12);
      v22(&v19, v16);
      if (v4)
      {
        break;
      }

      result = outlined consume of Path.Storage(v8, v9, v10, v11, v12);
      v7 += 6;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    outlined consume of Path.Storage(v8, v9, v10, v11, v12);
    return outlined consume of Path.Storage(v19, *(&v19 + 1), v20, *(&v20 + 1), v21);
  }

  else
  {
LABEL_5:
    v13 = v21;
    v14 = v20;
    *a4 = v19;
    *(a4 + 16) = v14;
    *(a4 + 32) = v13;
  }

  return result;
}

uint64_t ContentShapePathData.transform.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentShapePathData.position.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentShapePathData.shapes.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t ContentShapePathData.init(transform:position:shapes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 4) = 0;
  *(a4 + 8) = a2;
  *(a4 + 12) = BYTE4(a2) & 1;
  *(a4 + 16) = v4;
  return result;
}

void static ContentShapePathData.defaultValue.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

Swift::Void __swiftcall MergedContentShapes.appending(contentsOf:)(SwiftUI::MergedContentShapes contentsOf)
{

  specialized Array.append<A>(contentsOf:)(v1);
}

unint64_t _ViewOutputs.appendContentPathPreference<A>(inputs:contentResponder:kinds:isHitTestable:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, int a5)
{
  v6 = v5;
  v29 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 48);
  v11 = *(a1 + 60);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v10);
  if (result)
  {
    v13 = a2();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v26[0] = __PAIR64__(OffsetAttribute2, v13);
    v26[1] = v11;
    v27 = a4;
    v28 = a5;
    MEMORY[0x1EEE9AC00](OffsetAttribute2);
    v23 = type metadata accessor for ContentResponderPathAppendingRule();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<(_:)>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, closure #1 in Attribute.init<A>(_:)partial apply, &v22, v23, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
    v17 = v25;
    v26[0] = v10;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v18 = *(v10 + 16);
    if (result != v18)
    {
      if (result >= v18)
      {
        __break(1u);
      }

      if (*(v10 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        v19 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA20ContentShapePathDataV_TtB5(*v6);
        v20 = *MEMORY[0x1E698D3F8];
        if ((v19 & 0x100000000) == 0)
        {
          v20 = v19;
        }

        v26[0] = __PAIR64__(v20, v17);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
        type metadata accessor for PreferenceTransform<ContentShapePathData>();
        lazy protocol witness table accessor for type PreferenceTransform<ContentShapePathData> and conformance PreferenceTransform<A>();
        v21 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v26[0]) = 0;
        return PreferencesOutputs.subscript.setter(v21, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  return result;
}

uint64_t (*ContentShapePathAppendingRule.value.getter(uint64_t a1))(void *a1)
{
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v5 = *v1;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  return partial apply for closure #1 in ContentShapePathAppendingRule.value.getter;
}

uint64_t closure #1 in ContentShapePathAppendingRule.value.getter(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v11 = *(a5 - 8);
  v32 = HIDWORD(a3);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for ContentShapePathAppendingRule() + 16);
  Value = AGGraphGetValue();
  (*(*(v14 - 8) + 16))(v13, Value, v14);
  type metadata accessor for CGSize(0);
  v16 = AGGraphGetValue();
  (*(a6 + 24))(v35, a5, a6, 0.0, 0.0, *v16, v16[1]);
  v17 = v35[0];
  v18 = v35[1];
  v20 = v35[2];
  v19 = v35[3];
  HIDWORD(v31) = v36;
  (*(v11 + 8))(v13, a5);
  v21 = a1[2];
  if (!v21)
  {

    *a1 = v9;
    a1[1] = 0x100000000;
    v21 = MEMORY[0x1E69E7CC0];
    a1[2] = MEMORY[0x1E69E7CC0];
  }

  if (*MEMORY[0x1E698D3F8] == a4)
  {
    v22 = 1;
LABEL_6:
    result = swift_isUniquelyReferenced_nonNull_native();
    a1[2] = v21;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      v21 = result;
      a1[2] = result;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
      v21 = result;
    }

    v21[2] = v25 + 1;
    v26 = &v21[7 * v25];
    v26[4] = v22;
    goto LABEL_11;
  }

  v22 = *AGGraphGetValue();
  v21 = a1[2];
  if (v22)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  a1[2] = v21;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    v21 = result;
    a1[2] = result;
  }

  v30 = v21[2];
  v29 = v21[3];
  if (v30 >= v29 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v21);
    v21 = result;
  }

  v21[2] = v30 + 1;
  v26 = &v21[7 * v30];
  v26[4] = 1;
LABEL_11:
  v26[5] = v17;
  v26[6] = v18;
  v26[7] = v20;
  v26[8] = v19;
  *(v26 + 72) = BYTE4(v31);
  v27 = v34;
  *(v26 + 73) = v33;
  *(v26 + 75) = v27;
  v28 = v32;
  *(v26 + 19) = v9;
  *(v26 + 20) = v28;
  a1[2] = v21;
  return result;
}

uint64_t MergedContentShapes.addPath(_:forKinds:transform:position:)(uint64_t *a1, uint64_t *a2, int a3, int a4)
{
  v7 = a1[1];
  v26 = *a1;
  v9 = a1[2];
  v8 = a1[3];
  v10 = *(a1 + 32);
  v11 = *a2;
  v12 = *v4;
  if (*a2)
  {
    v13 = *(a1 + 1);
    v29 = *a1;
    v30 = v13;
    v31 = *(a1 + 32);
    outlined init with copy of Path.Storage(&v29, &v27);
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v12;
    v15 = a4;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      v12 = result;
      *v4 = result;
    }

    v17 = v12[2];
    v16 = v12[3];
    if (v17 >= v16 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v12);
      v12 = result;
    }

    v12[2] = v17 + 1;
    v18 = &v12[7 * v17];
    v18[4] = v11;
    v18[5] = v26;
    v18[6] = v7;
    v18[7] = v9;
    v18[8] = v8;
    *(v18 + 72) = v10;
    v19 = v28;
    *(v18 + 73) = v27;
    *(v18 + 75) = v19;
    *(v18 + 19) = a3;
    *(v18 + 20) = v15;
  }

  else
  {
    v20 = *(a1 + 1);
    v29 = *a1;
    v30 = v20;
    v31 = *(a1 + 32);
    outlined init with copy of Path.Storage(&v29, &v27);
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v12;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      v12 = result;
      *v4 = result;
    }

    v22 = v12[2];
    v21 = v12[3];
    if (v22 >= v21 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v12);
      v12 = result;
    }

    v12[2] = v22 + 1;
    v23 = &v12[7 * v22];
    v23[4] = 1;
    v23[5] = v26;
    v23[6] = v7;
    v23[7] = v9;
    v23[8] = v8;
    *(v23 + 72) = v10;
    v24 = v28;
    *(v23 + 73) = v27;
    *(v23 + 75) = v24;
    *(v23 + 19) = a3;
    *(v23 + 20) = a4;
  }

  *v4 = v12;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ContentShapePathAppendingRule<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ContentShapePathAppendingRule.value.getter(a1);
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ContentShapePathAppendingRule.value.getter;
  *(result + 24) = v4;
  *a2 = partial apply for specialized closure #1 in StatefulRule<>.update<A>(modify:create:);
  a2[1] = result;
  return result;
}

uint64_t (*ContentResponderPathAppendingRule.value.getter(uint64_t a1))(void *a1)
{
  v3 = swift_allocObject();
  v4 = *v1;
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v1 + 2);
  return partial apply for closure #1 in ContentResponderPathAppendingRule.value.getter;
}

uint64_t closure #1 in ContentResponderPathAppendingRule.value.getter(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v37 = a3;
  v10 = *(a5 - 8);
  v11 = HIDWORD(a4);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContentResponderPathAppendingRule();
  v15 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == v11 || (result = AGGraphGetValue(), *result == 1))
  {
    if (v15 == v8)
    {
      v17 = 1;
    }

    else
    {
      v17 = *AGGraphGetValue();
    }

    v36 = HIDWORD(v37);
    v18 = *(v14 + 16);
    Value = AGGraphGetValue();
    (*(*(v18 - 8) + 16))(v13, Value, v18);
    type metadata accessor for CGSize(0);
    v20 = AGGraphGetValue();
    v21 = *v20;
    v22 = v20[1];
    v38 = v17;
    (*(a6 + 24))(v39, &v38, a5, a6, v21, v22);
    v24 = v39[0];
    v23 = v39[1];
    v26 = v39[2];
    v25 = v39[3];
    v27 = v40;
    (*(v10 + 8))(v13, a5);
    v28 = a1[2];
    if (!v28)
    {

      *a1 = v37;
      a1[1] = 0x100000000;
      v28 = MEMORY[0x1E69E7CC0];
      a1[2] = MEMORY[0x1E69E7CC0];
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a1[2] = v28;
    if (v17)
    {
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
        v28 = result;
        a1[2] = result;
      }

      v30 = v28[2];
      v29 = v28[3];
      if (v30 >= v29 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
        v28 = result;
      }

      v28[2] = v30 + 1;
      v31 = &v28[7 * v30];
      v31[4] = v17;
    }

    else
    {
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
        v28 = result;
        a1[2] = result;
      }

      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v28);
        v28 = result;
      }

      v28[2] = v33 + 1;
      v31 = &v28[7 * v33];
      v31[4] = 1;
    }

    v31[5] = v24;
    v31[6] = v23;
    v31[7] = v26;
    v31[8] = v25;
    *(v31 + 72) = v27;
    v34 = BYTE2(v38);
    *(v31 + 73) = v38;
    *(v31 + 75) = v34;
    v35 = v36;
    *(v31 + 19) = v37;
    *(v31 + 20) = v35;
    a1[2] = v28;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ContentResponderPathAppendingRule<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  ContentResponderPathAppendingRule.value.getter(a1);
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ContentResponderPathAppendingRule.value.getter;
  *(result + 24) = v4;
  *a2 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
  a2[1] = result;
  return result;
}

__n128 ContentResponderPathDataRule.value.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x1E698D3F8] == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = *AGGraphGetValue();
  }

  Value = AGGraphGetValue();
  (*(v8 + 16))(v10, Value, a2);
  type metadata accessor for CGSize(0);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  v26 = v12;
  (*(a3 + 24))(v27, &v26, a2, a3, v15, v16);
  v24 = v27[1];
  v25 = v27[0];
  v17 = v28;
  (*(v8 + 8))(v10, a2);
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  if (v12 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v12;
  }

  v18[2] = v20 + 1;
  v22 = &v18[7 * v20];
  v22[4] = v21;
  result = v25;
  *(v22 + 7) = v24;
  *(v22 + 5) = result;
  *(v22 + 72) = v17;
  *(v22 + 76) = a1;
  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = HIDWORD(a1);
  *(a4 + 12) = 0;
  *(a4 + 16) = v18;
  return result;
}

void *ContentShapePath.kinds.getter@<X0>(void *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*ContentShapePath.kinds.modify(uint64_t a1))()
{
  *(a1 + 16) = *v1;
  *a1 = *AGGraphGetValue();
  return ContentShapePath.kinds.modify;
}

uint64_t (*ContentShapePath.$kinds.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return DefaultLayoutResponderFilter.$children.modify;
}

void *ContentShapePath.fallbackKinds.getter@<X0>(void *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*ContentShapePath.fallbackKinds.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = *(v1 + 4);
  *a1 = *AGGraphGetValue();
  return ContentShapePath.fallbackKinds.modify;
}

_DWORD *(*ContentShapePath.$fallbackKinds.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return SecondaryLayerGeometryQuery.$layoutDirection.modify;
}

uint64_t ContentShapePath.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

uint64_t key path getter for ContentShapePath.transform : ContentShapePath@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

uint64_t ContentShapePath.transform.setter()
{
  AGGraphSetValue();
}

void (*ContentShapePath.transform.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x64uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = *(v1 + 8);
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 32);
  *v4 = *Value;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;

  return ContentShapePath.transform.modify;
}

void ContentShapePath.transform.modify(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v1[6] = **a1;
  v1[7] = v2;
  v3 = *(v1 + 2);
  *(v1 + 4) = *(v1 + 1);
  *(v1 + 5) = v3;
  AGGraphSetValue();

  free(v1);
}

_DWORD *(*ContentShapePath.$transform.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return _ViewInputs.time.modify;
}

void (*ContentShapePath.position.modify(uint64_t *a1))(_OWORD **a1)
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
  *(v3 + 40) = *(v1 + 12);
  type metadata accessor for CGPoint(0);
  *(v4 + 32) = v5;
  *v4 = *AGGraphGetValue();
  return SecondaryLayerGeometryQuery.primaryPosition.modify;
}

_DWORD *(*ContentShapePath.$position.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return SecondaryLayerGeometryQuery.$primarySize.modify;
}

uint64_t ContentShapePath.coordinateSpace.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();

  return outlined init with copy of CoordinateSpace(Value, a1);
}

uint64_t key path setter for ContentShapePath.coordinateSpace : ContentShapePath(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  outlined init with copy of CoordinateSpace(a1, v3);
  outlined init with copy of CoordinateSpace(v3, v2);
  AGGraphSetValue();
  outlined destroy of CoordinateSpace(v2);
  return outlined destroy of CoordinateSpace(v3);
}

uint64_t ContentShapePath.coordinateSpace.setter(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  outlined init with copy of CoordinateSpace(a1, v3);
  AGGraphSetValue();
  outlined destroy of CoordinateSpace(a1);
  return outlined destroy of CoordinateSpace(v3);
}

void (*ContentShapePath.coordinateSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x5CuLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 44) = *(v1 + 16);
  Value = AGGraphGetValue();
  outlined init with copy of CoordinateSpace(Value, v4);
  return ContentShapePath.coordinateSpace.modify;
}

void ContentShapePath.coordinateSpace.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of CoordinateSpace(*a1, v2 + 48);
    AGGraphSetValue();
    outlined destroy of CoordinateSpace(v2 + 48);
  }

  else
  {
    AGGraphSetValue();
  }

  outlined destroy of CoordinateSpace(v2);

  free(v2);
}

_DWORD *(*ContentShapePath.$coordinateSpace.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return ContentShapePath.$coordinateSpace.modify;
}

uint64_t ContentShapePath.data.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0uLL;
    result = 1;
  }

  else
  {
    type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
    v5 = *AGGraphGetValue();

    v3 = v5;
  }

  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

unint64_t ContentShapePath.$data.getter()
{
  LODWORD(v1) = *(v0 + 20);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t ContentShapePath.$data.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 20) = v2;
  return result;
}

_BYTE *(*ContentShapePath.$data.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 20);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return SecondaryLayerGeometryQuery.$secondaryLayoutComputer.modify;
}

uint64_t ContentShapePath.init(kinds:fallbackKinds:transform:position:size:coordinateSpace:data:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W6>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void ContentShapePath.value.getter(uint64_t a1@<X8>)
{
  v3 = 0;
  if (v1[5] == *MEMORY[0x1E698D3F8])
  {
    LOBYTE(v4) = 6;
    v5 = 0;
LABEL_52:
    *a1 = v3;
    *(a1 + 16) = v5;
    *(a1 + 32) = v4;
    return;
  }

  v7 = v1[2];
  v6 = v1[3];
  type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v9 = Value[2];
  if (!v9)
  {
    LOBYTE(v4) = 6;
    v5 = 0;
    v3 = 0;
    goto LABEL_52;
  }

  if ((*Value & 0x100000000) == 0)
  {
    v10 = Value[1];
    v11 = v7 == *Value && (v10 & 0x100000000) == 0;
    if (v11 && v6 == v10)
    {
      *&v35[0] = Value[2];
      swift_bridgeObjectRetain_n();
      *&v39[0] = *AGGraphGetValue();
      MergedContentShapes.unconvertedPath(for:)(v39, &v41);
      v32 = v41;
      v30 = v42;
      v4 = v43;

      if (v4 <= 2)
      {
        if (v4 >= 2)
        {
          x = *(*&v32.x + 16);
          y = *(*&v32.x + 24);
          width = *(*&v32.x + 32);
          height = *(*&v32.x + 40);
        }

        else
        {
          y = v32.y;
          x = v32.x;
          height = v30.height;
          width = v30.width;
        }

        if (!CGRectIsNull(*&x))
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (v4 != 5)
      {
        if (v4 != 6)
        {
          goto LABEL_37;
        }

LABEL_49:
        *&v39[0] = v9;
        *&v37[0] = *AGGraphGetValue();
        MergedContentShapes.unconvertedPath(for:)(v37, v35);
        v33 = v35[0];
        v31 = v35[1];
        LOBYTE(v4) = v36;
        outlined destroy of Path(&v41);

        goto LABEL_50;
      }

      if (*(*&v32.x + 16))
      {
        if (*(*&v32.x + 16) != 1)
        {
          v28 = one-time initialization token for bufferCallbacks;

          if (v28 != -1)
          {
            swift_once();
          }

LABEL_48:
          IsEmpty = RBPathIsEmpty();
          outlined destroy of Path(&v41);
          if ((IsEmpty & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }
      }

      else if (!*(*&v32.x + 24))
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }
  }

  v17 = AGGraphGetValue();
  outlined init with copy of CoordinateSpace(v17, v35);
  v18 = *AGGraphGetValue();
  *&v39[0] = v9;
  *&v37[0] = v18;
  v19 = MergedContentShapes.matchingPaths(for:)(v37, &v41);
  v20 = v41;
  MEMORY[0x1EEE9AC00](v19);
  v41 = 0u;
  v42 = 0;
  v43 = 6;
  specialized Sequence.reduce<A>(into:_:)(&v41, partial apply for closure #1 in MergedContentShapes.path(coordinateSpace:kinds:), v20, v37);
  v32 = v37[0];
  v30 = v37[1];
  v4 = v38;

  outlined destroy of CoordinateSpace(v35);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (!CGRectIsNull(*(*&v32.x + 16)))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v44.origin = v32;
      v44.size = v30;
      if (!CGRectIsNull(v44))
      {
        goto LABEL_51;
      }
    }

    goto LABEL_45;
  }

  if (v4 == 5)
  {
    v21 = *&v32.x;
    if (*(*&v32.x + 16))
    {
      if (*(*&v32.x + 16) != 1)
      {
        v22 = one-time initialization token for bufferCallbacks;

        if (v22 != -1)
        {
          swift_once();
        }

LABEL_44:
        v23 = RBPathIsEmpty();
        outlined destroy of Path(v37);
        if (v23)
        {
          goto LABEL_45;
        }

LABEL_51:

        v3 = v32;
        v5 = v30;
        goto LABEL_52;
      }

LABEL_24:

      goto LABEL_44;
    }

    goto LABEL_38;
  }

  if (v4 == 6)
  {
LABEL_45:
    v24 = AGGraphGetValue();
    outlined init with copy of CoordinateSpace(v24, v35);
    v25 = *AGGraphGetValue();
    v34[1] = v9;
    v34[0] = v25;
    v26 = MergedContentShapes.matchingPaths(for:)(v34, v39);
    v27 = *&v39[0];
    MEMORY[0x1EEE9AC00](v26);
    specialized Sequence.reduce<A>(into:_:)(&v41, closure #1 in MergedContentShapes.path(coordinateSpace:kinds:)partial apply, v27, v39);
    v33 = v39[0];
    v31 = v39[1];
    LOBYTE(v4) = v40;

    outlined destroy of Path(v37);
    outlined destroy of CoordinateSpace(v35);
LABEL_50:
    v5 = v31;
    v3 = v33;
    goto LABEL_52;
  }

LABEL_37:
  v21 = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_38:
  if (*(v21 + 24))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_54:
  __break(1u);
}