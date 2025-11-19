__n128 initializeBufferWithCopyOfBuffer for SearchPrimitiveModifier.ForwardedEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a2 + 8);
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *(a2 + 16);
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
  }

  else
  {
    result = *v3;
    *(a1 + 8) = *v3;
  }

  return result;
}

uint64_t SearchPrimitiveModifier.BaseSearchImplementation.init(isSearchImplementedByChild:searchField:forwardEnv:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for SearchPrimitiveModifier.BaseSearchImplementation();
  v12 = v11[9];
  v13 = type metadata accessor for SearchField();
  (*(*(v13 - 8) + 32))(&a6[v12], a2, v13);
  v14 = &a6[v11[10]];
  *v14 = a3;
  *(v14 + 1) = a4;
  *(v14 + 2) = a5;
  v15 = &a6[v11[11]];
  result = swift_getKeyPath();
  *v15 = result;
  v15[41] = 0;
  return result;
}

_BYTE *initializeWithCopy for SearchPrimitiveModifier.BaseSearchImplementation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1;
  *a1 = *a2;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v71 = *(a3 + 16);
  v70 = *(v71 - 8);
  v9 = *(v70 + 80);
  v10 = v8 | v9 | 7;
  v11 = &v5[v10 + 1] & ~v10;
  v12 = &a2[v10 + 1] & ~v10;
  v13 = v8 + 9;
  v14 = (v8 + 9) & ~v8;
  v15 = *(v7 + 64);
  v16 = ((v15 + v14) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v17 = *(v7 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  if (v16 + ((v8 + 16) & v17) <= ((v15 + v14) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v18 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v18 = v16 + ((v8 + 16) & v17);
  }

  v19 = *(v12 + v18);
  v20 = v19 - 2;
  if (v19 < 2)
  {
    goto LABEL_18;
  }

  if (v18 <= 3)
  {
    v21 = v18;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = *v12;
  }

  else if (v21 == 2)
  {
    v22 = *v12;
  }

  else if (v21 == 3)
  {
    v22 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v22 = *v12;
  }

  v23 = (v22 | (v20 << (8 * v18))) + 2;
  v19 = v22 + 2;
  if (v18 < 4)
  {
    v19 = v23;
  }

LABEL_18:
  v24 = ~v8;
  if (v19 == 1)
  {
    *v11 = *v12;
    v25 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v27 = ((v25 + v8 + 8) & v17);
    v28 = ((v26 + v8 + 8) & v17);
    v29 = (v28 + 7);
    *v27 = *v28;
    v27[1] = v28[1];
    v27[2] = v28[2];
    v27[3] = v28[3];
    v30 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v29 &= 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v27) = *v29;
    *(v30 + 4) = *(v29 + 4);
    *v30 = v27;
    v31 = v8 + 5;
    v32 = (v31 + v30) & v24;
    v33 = (v31 + v29) & v24;
    v69 = v9;
    v34 = v5;
    v35 = *(v7 + 16);
    v36 = v18;
    v37 = v6;

    v38 = v37;
    v18 = v36;
    v35(v32, v33, v38);
    v5 = v34;
    v9 = v69;
    *(v32 + v15) = *(v33 + v15);
    v39 = (v32 + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = (v33 + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v41 = *(v40 + 4);
    *(v39 + 8) = *(v40 + 8);
    *(v39 + 4) = v41;
    v42 = v11 | 7;
    v43 = v12 | 7;
    v44 = 1;
  }

  else
  {
    *v11 = *v12;
    *(v11 + 1) = *(v12 + 1);
    *(v11 + 2) = *(v12 + 2);
    *(v11 + 3) = *(v12 + 3);
    v45 = *(v12 + 4);
    *(v11 + 8) = *(v12 + 8);
    *(v11 + 4) = v45;
    v46 = (v13 + v11) & v24;
    v47 = (v13 + v12) & v24;
    (*(v7 + 16))(v46, v47, v6);
    *(v46 + v15) = *(v47 + v15);
    v48 = (v46 + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v49 = (v47 + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *(v49 + 4);
    *(v48 + 8) = *(v49 + 8);
    *(v48 + 4) = v50;
    v42 = v11 | 7;
    v43 = v12 | 7;
    *(((v11 | 7) + v16) & 0xFFFFFFFFFFFFFFF8) = *((v43 + v16) & 0xFFFFFFFFFFFFFFF8);

    v44 = 0;
  }

  *(v11 + v18) = v44;
  v51 = (v42 + v18 + 1) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v43 + v18 + 1) & 0xFFFFFFFFFFFFFFF8;
  v53 = *(v52 + 17);
  if (v53 >= 2)
  {
    v53 = *v52 + 2;
  }

  if (v53 == 1)
  {
    *v51 = *v52;
    *(v51 + 8) = *(v52 + 8);
    *(v51 + 16) = *(v52 + 16);

    v54 = 1;
  }

  else
  {
    v54 = 0;
    *v51 = *v52;
    *(v51 + 8) = *(v52 + 8);
  }

  *(v51 + 17) = v54;
  v55 = (v9 + 18 + v51) & ~v9;
  v56 = (v9 + 18 + v52) & ~v9;
  (*(v70 + 16))(v55, v56, v71);
  v57 = *(v70 + 64);
  *(v57 + v55) = *(v57 + v56);
  v58 = ((v9 + (v18 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v9) + v57 + 1;
  v59 = (v42 + v58) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v43 + v58) & 0xFFFFFFFFFFFFFFF8;
  *v59 = *v60;
  v61 = *(v60 + 8);
  if (v61)
  {
    v62 = *(v60 + 16);
    *(v59 + 8) = v61;
    *(v59 + 16) = v62;
  }

  else
  {
    *(v59 + 8) = *(v60 + 8);
  }

  v63 = (v59 + 31) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v60 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v64 + 41))
  {
    if (*(v64 + 40) == 1)
    {
      v65 = *(v64 + 24);
      *(v63 + 24) = v65;
      *(v63 + 32) = *(v64 + 32);
      (**(v65 - 8))(v63);
      *(v63 + 40) = 1;
    }

    else
    {
      v66 = *v64;
      v67 = *(v64 + 16);
      *(v63 + 25) = *(v64 + 25);
      *v63 = v66;
      *(v63 + 16) = v67;
    }

    *(v63 + 41) = 1;
  }

  else
  {
    *v63 = *v64;
    *(v63 + 41) = 0;
  }

  return v5;
}

uint64_t SearchPrimitiveModifier.BaseSearchImplementation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v31 = type metadata accessor for SearchField();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v29 - v7;
  v34 = v5;
  v33 = v6;
  v8 = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = *v3;
  specialized Environment.wrappedValue.getter(v41);
  if (v41[40] == 255)
  {
    if (one-time initialization token for automatic != -1)
    {
      swift_once();
    }

    outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, &v39);
  }

  else
  {
    v39 = *v41;
    v40[0] = *&v41[16];
    *(v40 + 9) = *&v41[25];
  }

  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  *&v41[8] = v39;
  v41[0] = v17;
  *&v41[24] = v40[0];
  *&v41[33] = *(v40 + 9);
  v42 = 0;
  v43 = 0;
  v44 = KeyPath;
  v45 = 0;
  v46 = v19;
  v47 = 0;
  v48 = v20;
  v49 = 0;
  v21 = v29;
  (*(v30 + 16))(v29, &v3[*(a1 + 36)], v31);
  v22 = &v3[*(a1 + 40)];
  v23 = *(v22 + 1);
  SearchPrimitiveModifier.SearchConfigModifier.init(searchField:placement:forwardEnv:)(v21, 2, *v22, v23, *(v22 + 2), v10);
  outlined copy of AppIntentExecutor?(v23);
  v24 = lazy protocol witness table accessor for type SearchOverlayView and conformance SearchOverlayView();
  MEMORY[0x18D00A570](v10, &type metadata for SearchOverlayView, v8, v24);
  (*(v32 + 8))(v10, v8);
  outlined destroy of SearchOverlayView(v41);
  WitnessTable = swift_getWitnessTable();
  v37 = v24;
  v38 = WitnessTable;
  v26 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v11, v26);
  v27 = *(v35 + 8);
  v27(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, v26);
  return (v27)(v16, v11);
}

uint64_t initializeWithCopy for SearchPrimitiveModifier.SearchConfigModifier(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 9) & ~v7) + v8;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = v7 | 3;
  if (v10 + ((v7 + 16) & ~(v7 | 3)) <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10 + ((v7 + 16) & ~(v7 | 3));
  }

  v14 = a2[v13];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = *a2;
    if (v13 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v16 == 2)
  {
    v17 = *a2;
    if (v13 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 == 3)
    {
      v17 = *a2 | (a2[2] << 16);
      if (v13 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v14 = v17 + 2;
      goto LABEL_20;
    }

    v17 = *a2;
    if (v13 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v14 = (v17 | (v15 << (8 * v13))) + 2;
LABEL_20:
  v18 = ~v7;
  if (v14 == 1)
  {
    *a1 = *a2;
    v19 = ~v12;
    v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = v20 + v12;
    v23 = v21 + v12;
    v24 = ((v22 + 8) & v19);
    v25 = ((v23 + 8) & v19);
    v26 = (v25 + 7);
    *v24 = *v25;
    v24[1] = v25[1];
    v24[2] = v25[2];
    v24[3] = v25[3];
    v27 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v26) = *(v26 & 0xFFFFFFFFFFFFFFFCLL);
    *(v27 + 4) = *(v28 + 4);
    *v27 = v26;
    v29 = v7 + 5;
    v30 = (v29 + v27) & v18;
    v31 = (v29 + v28) & v18;
    v32 = *(v6 + 16);
    v33 = v5;

    v32(v30, v31, v33);
    *(v30 + v8) = *(v31 + v8);
    v34 = (v30 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = (v31 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *(v35 + 4);
    *(v34 + 8) = *(v35 + 8);
    *(v34 + 4) = v36;
    v37 = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = a2[3];
    v38 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *v39;
    *(v38 + 4) = *(v39 + 4);
    *v38 = v40;
    v41 = (v38 + v7 + 5) & v18;
    v42 = (v39 + v7 + 5) & v18;
    (*(v6 + 16))(v41, v42, v5);
    *(v41 + v8) = *(v42 + v8);
    v43 = (v41 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = (v42 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *(v44 + 4);
    *(v43 + 8) = *(v44 + 8);
    *(v43 + 4) = v45;
    *((a1 + 7 + v10) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v10 + 7] & 0xFFFFFFFFFFFFFFF8);

    v37 = 0;
  }

  *(a1 + v13) = v37;
  v46 = (v13 + 8 + a1) & 0xFFFFFFFFFFFFFFF8;
  v47 = &a2[v13 + 8] & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v47 + 17);
  if (v48 >= 2)
  {
    v48 = *v47 + 2;
  }

  if (v48 == 1)
  {
    *v46 = *v47;
    *(v46 + 8) = *(v47 + 8);
    *(v46 + 16) = *(v47 + 16);

    v49 = 1;
  }

  else
  {
    v49 = 0;
    *v46 = *v47;
    *(v46 + 8) = *(v47 + 8);
  }

  *(v46 + 17) = v49;
  v50 = *(*(a3 + 16) - 8);
  v51 = v50 + 16;
  v52 = *(v50 + 80);
  (*(v50 + 16))((v46 + v52 + 18) & ~v52, (v47 + v52 + 18) & ~v52);
  v53 = *(v51 + 48);
  *(((v46 + v52 + 18) & ~v52) + v53) = *(((v47 + v52 + 18) & ~v52) + v53);
  v54 = v53 + (((v13 & 0xFFFFFFFFFFFFFFF8) + v52 + 26) & ~v52) + 1;
  v55 = &a2[v54];
  *(v54 + a1) = a2[v54];
  v56 = (v54 + a1) & 0xFFFFFFFFFFFFFFF8;
  v55 &= 0xFFFFFFFFFFFFFFF8;
  v57 = (v55 + 8);
  *(v56 + 8) = *(v55 + 8);
  v58 = v56 + 8;
  v61 = *(v55 + 16);
  v59 = (v55 + 16);
  v60 = v61;
  if (v61)
  {
    v62 = *(v57 + 2);
    *(v58 + 8) = v60;
    *(v58 + 16) = v62;
  }

  else
  {
    *(v58 + 8) = *v59;
  }

  return a1;
}

double SearchOverlayView.body.getter@<D0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 0;
    *(a1 + 56) = 2;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    if (specialized Environment.wrappedValue.getter(v4, v5) == 7 || *(v1 + 50) != 1)
    {
      memset(v24, 0, 40);
      *&v24[40] = 512;
    }

    else
    {
      v6 = *(v1 + 49);
      outlined init with copy of ToolbarItemPlacement(v1 + 8, &v13);
      v14[25] = v6;
      *v24 = v13;
      *&v24[16] = *v14;
      *&v24[26] = *&v14[10];
    }

    if (*(v1 + 51) == 1)
    {
      specialized Environment.wrappedValue.getter(v4, v5);
    }

    outlined init with copy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v24, v12, type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?);
    outlined init with copy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v12, &v13, type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?);
    v22[0] = xmmword_18CD633F0;
    memset(&v22[1], 0, 96);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = xmmword_18CD633F0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    outlined init with copy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v22, v23, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?);
    outlined destroy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v24, type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?);
    v23[0] = xmmword_18CD633F0;
    memset(&v23[1], 0, 96);
    outlined destroy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v23, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?);
    outlined destroy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v12, type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?);
    v7 = v19;
    *(a1 + 96) = v18;
    *(a1 + 112) = v7;
    v8 = v21;
    *(a1 + 128) = v20;
    *(a1 + 144) = v8;
    v9 = v15;
    *(a1 + 32) = *&v14[16];
    *(a1 + 48) = v9;
    v10 = v17;
    *(a1 + 64) = v16;
    *(a1 + 80) = v10;
    result = *&v13;
    v11 = *v14;
    *a1 = v13;
    *(a1 + 16) = v11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarSearchFieldStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance EnvironmentValues.SearchField(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TextFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata accessor for ResolvedTextFieldStyle()
{
  result = type metadata singleton initialization cache for ResolvedTextFieldStyle;
  if (!type metadata singleton initialization cache for ResolvedTextFieldStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ResolvedTextFieldStyle()
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for TextField<_TextFieldStyleLabel>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for _TextFieldStyleLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ProvidesEditMenuInteraction>)
  {
    lazy protocol witness table accessor for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<ProvidesEditMenuInteraction>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction()
{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>>)
  {
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<SearchFieldConfiguration.Key>, &type metadata for SearchFieldConfiguration.Key, &protocol witness table for SearchFieldConfiguration.Key, MEMORY[0x1E6980750]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>;
  if (!lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>)
  {
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>);
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA24SearchFieldConfigurationV6ScopesV_TtB5()
{

  return _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA17EnvironmentValuesV11SearchFieldV_TtB5Tm(&lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Scopes>, lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes, &type metadata for SearchFieldConfiguration.Scopes, lazy protocol witness table accessor for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>);
}

unint64_t lazy protocol witness table accessor for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Scopes>, lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes, &type metadata for SearchFieldConfiguration.Scopes, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>);
  }

  return result;
}

uint64_t SearchPrimitiveModifier.SearchConfigModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21 = a2;
  swift_getWitnessTable();
  v3 = type metadata accessor for _ViewModifier_Content();
  v4 = *(a1 + 24);
  v19 = *(a1 + 16);
  type metadata accessor for SearchField();
  _s7SwiftUI5StateVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E6980A08]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
  WitnessTable = swift_getWitnessTable();
  v35 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v32 = swift_getWitnessTable();
  v33 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  v28 = &type metadata for EnvironmentValues.SearchField;
  v29 = v5;
  v30 = v6;
  v31 = swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v23 = v19;
  v24 = v4;
  v25 = v20;
  v14 = swift_getWitnessTable();
  View.viewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.SearchField, partial apply for closure #1 in SearchPrimitiveModifier.SearchConfigModifier.body(content:), v22, v3, &type metadata for EnvironmentValues.SearchField, v5, v14);
  v26 = v14;
  v27 = &protocol witness table for StaticSourceWriter<A, B>;
  v15 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, v15);
  v16 = *(v8 + 8);
  v16(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, v15);
  return (v16)(v13, v7);
}

uint64_t closure #1 in SearchPrimitiveModifier.SearchConfigModifier.body(content:)()
{
  type metadata accessor for SearchField();
  _s7SwiftUI5StateVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E6980A08]);
  v0 = type metadata accessor for ModifiedContent();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - v5;
  v7 = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier();
  SearchPrimitiveModifier.SearchConfigModifier.field.getter(v7);
  WitnessTable = swift_getWitnessTable();
  v9 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v15[2] = WitnessTable;
  v15[3] = v9;
  v10 = swift_getWitnessTable();
  v11 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  v15[0] = v10;
  v15[1] = v11;
  v12 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v3, v0, v12);
  v13 = *(v1 + 8);
  v13(v3, v0);
  static ViewBuilder.buildExpression<A>(_:)(v6, v0, v12);
  return (v13)(v6, v0);
}

uint64_t SearchZipLocation.update()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v32 = a2;
  v29 = a4;
  v30 = MEMORY[0x1E6968848];
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for (AttributedString, Bool), MEMORY[0x1E6968848]);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for (SearchFieldState, Bool), type metadata accessor for SearchFieldState);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v28 = v20;
  v21 = *(v20 + 48);
  v22 = dispatch thunk of AnyLocation.update()();
  v19[v21] = v22 & 1;
  v23 = *(v5 + 56);
  v10[v23] = dispatch thunk of AnyLocation.update()() & 1;
  outlined init with copy of (SearchFieldState, Bool)(v19, v16, &lazy cache variable for type metadata for (SearchFieldState, Bool), type metadata accessor for SearchFieldState);
  outlined init with take of (SearchFieldState, AttributedString)(v16, v31, type metadata accessor for SearchFieldState);
  outlined init with take of (SearchFieldState, Bool)(v10, v7, &lazy cache variable for type metadata for (AttributedString, Bool), v30);
  v24 = type metadata accessor for AttributedString();
  (*(*(v24 - 8) + 32))(v32, v7, v24);
  if (v22)
  {
    outlined destroy of (SearchFieldState, Bool)(v19, &lazy cache variable for type metadata for (SearchFieldState, Bool), type metadata accessor for SearchFieldState);
    return 1;
  }

  else
  {
    outlined init with take of (SearchFieldState, Bool)(v19, v13, &lazy cache variable for type metadata for (SearchFieldState, Bool), type metadata accessor for SearchFieldState);
    v25 = v13[*(v28 + 48)];
    _s7SwiftUI16SearchFieldStateVWOhTm_4(v13, type metadata accessor for SearchFieldState);
  }

  return v25;
}

uint64_t assignWithCopy for SearchFieldState(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v6 = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 4) = v6;
  v7 = a3[9];
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v9 = a3[11];
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 4) = *(v11 + 4);
  return a1;
}

uint64_t SearchField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v50 = *(a1 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ResolvedSearchFieldStyle(255);
  v6 = *(a1 + 16);
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
  v47 = v6;
  type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle, &type metadata for SearchFieldConfigurationTokenFieldStyle, type metadata accessor for TokenFieldStyleModifier);
  v7 = type metadata accessor for ModifiedContent();
  v8 = lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control();
  v70 = *(a1 + 24);
  v71 = &protocol witness table for TextFieldStyleModifier<A>;
  v46 = v70;
  WitnessTable = swift_getWitnessTable();
  v69 = &protocol witness table for TokenFieldStyleModifier<A>;
  v9 = swift_getWitnessTable();
  v64 = &type metadata for SearchFieldConfiguration.Control;
  v65 = v7;
  v43 = v7;
  v66 = v8;
  v67 = v9;
  v41 = v9;
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  IsNotConfiguredFromStyle = type metadata accessor for SearchField.IsNotConfiguredFromStyle();
  v11 = swift_getWitnessTable();
  HasSuggestions = lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions();
  v64 = IsNotConfiguredFromStyle;
  v65 = &type metadata for SearchHasSuggestions;
  v66 = v11;
  v67 = HasSuggestions;
  type metadata accessor for AndOperationViewInputPredicate();
  type metadata accessor for StaticSourceWriter<SearchFieldConfiguration.Suggestions, _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>>();
  type metadata accessor for StaticIf();
  v13 = type metadata accessor for ModifiedContent();
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle, type metadata accessor for ResolvedSearchFieldStyle);
  v63 = &protocol witness table for StaticSourceWriter<A, B>;
  v14 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v60 = &protocol witness table for StaticSourceWriter<A, B>;
  v61 = MEMORY[0x1E697E100];
  v15 = swift_getWitnessTable();
  v57 = v14;
  v58 = v15;
  v44 = v13;
  v42 = swift_getWitnessTable();
  v64 = v13;
  v65 = v7;
  v66 = v42;
  v67 = v9;
  v16 = type metadata accessor for SearchFieldConfigurationReader();
  v45 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v40 = &v36[-v20];
  v21 = v48;
  SearchField.$state.getter(v53);
  v22 = v21;
  v39 = SearchField.$isPresented.getter(a1);
  v38 = v23;
  v37 = v24;
  v25 = v50;
  v26 = v49;
  v27 = v21;
  v28 = a1;
  (*(v50 + 16))(v49, v27, a1);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v31 = v47;
  v32 = v46;
  *(v30 + 16) = v47;
  *(v30 + 24) = v32;
  (*(v25 + 32))(v30 + v29, v26, v28);
  v54 = v31;
  v55 = v32;
  v56 = v22;
  SearchFieldConfigurationReader.init(state:isPresented:content:source:)(v53, v39, v38, v37 & 1, partial apply for closure #1 in SearchField.body.getter, v30, partial apply for closure #2 in SearchField.body.getter, v18);
  v33 = v40;
  static ViewBuilder.buildExpression<A>(_:)(v18, v16, &protocol witness table for SearchFieldConfigurationReader<A, B>);
  v34 = *(v45 + 8);
  v34(v18, v16);
  static ViewBuilder.buildExpression<A>(_:)(v33, v16, &protocol witness table for SearchFieldConfigurationReader<A, B>);
  return (v34)(v33, v16);
}

uint64_t sub_18BEEAB90()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for SearchField();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    type metadata accessor for Binding<SearchFieldState>(0);
    v5 = *(v4 + 32);
    v6 = v5 + *(type metadata accessor for SearchFieldState(0) + 36);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    v8 = *(type metadata accessor for SearchFieldState(0) + 36);
    v9 = type metadata accessor for AttributedString();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
    type metadata accessor for State<SearchFieldState>(0);
  }

  outlined consume of StateOrBinding<Bool>(*(v3 + *(v2 + 36)), *(v3 + *(v2 + 36) + 8), *(v3 + *(v2 + 36) + 16), *(v3 + *(v2 + 36) + 17));
  (*(*(v1 - 8) + 8))(v3 + *(v2 + 40), v1);

  return swift_deallocObject();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SearchField.$state.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for State<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<AttributedString>(v1, v8, type metadata accessor for StateOrBinding<SearchFieldState>);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v8, a1, type metadata accessor for Binding<SearchFieldState>);
  }

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v8, v5, type metadata accessor for State<SearchFieldState>);
  State.projectedValue.getter();
  return outlined destroy of StateOrBinding<SearchFieldState>(v5, type metadata accessor for State<SearchFieldState>);
}

uint64_t SearchField.$isPresented.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  if (*(v2 + 17))
  {
  }

  else
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    return v5;
  }

  return v3;
}

uint64_t SearchFieldConfigurationReader.init(state:isPresented:content:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_1(a1, a8, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v15 = type metadata accessor for SearchFieldConfigurationReader();
  v16 = a8 + *(v15 + 52);
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = a4;
  v17 = (a8 + *(v15 + 56));
  *v17 = a5;
  v17[1] = a6;
  return a7();
}

uint64_t SearchField.resolvedControl.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *(a1 + 24);
  v8 = lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle();
  View.textFieldStyle<A>(_:)(v8, v2, &type metadata for SearchFieldConfigurationTextFieldStyle, v7);
  v12[0] = v7;
  v12[1] = &protocol witness table for TextFieldStyleModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v10 = lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle();
  View.tokenFieldStyle<A>(_:)(v10, v3, &type metadata for SearchFieldConfigurationTokenFieldStyle, WitnessTable);
  return (*(v4 + 8))(v6, v3);
}

uint64_t View.textFieldStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextFieldStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

void *initializeWithCopy for SearchFieldConfigurationReader(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v10 = ((v4 + v8 + 8) & v9);
  v11 = ((v5 + v8 + 8) & v9);
  *v10 = *v11;
  v10[1] = v11[1];
  v10[2] = v11[2];
  v10[3] = v11[3];
  v12 = (v10 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  LOBYTE(v11) = *(v13 + 4);
  *v12 = *v13;
  *(v12 + 4) = v11;
  v14 = (v8 + 5 + v12) & ~v8;
  v15 = (v8 + 5 + v13) & ~v8;
  v17 = v7 + 16;
  v16 = *(v7 + 16);

  v16(v14, v15, v6);
  v18 = *(v17 + 48);
  *(v18 + v14) = *(v18 + v15);
  v19 = (v18 + v14) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = (v18 + v15) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 8);
  *(v19 + 4) = *(v20 + 4);
  *(v19 + 8) = v21;
  v22 = ((v8 + 16) & v9) + ((v18 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;
  *(v25 + 8) = *(v26 + 8);
  *(v25 + 16) = *(v26 + 16);
  v27 = ((v23 + 31) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 31) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;
  v30 = *(a3 + 24);
  v31 = *(*(v30 - 8) + 16);
  v32 = *(*(v30 - 8) + 80);
  v33 = v27 + v32 + 16;
  v34 = v28 + v32 + 16;

  v31(v33 & ~v32, v34 & ~v32, v30);
  return a1;
}

uint64_t destroy for SearchFieldConfigurationReader(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80);
  (*(v6 + 8))((v8 + (((((v4 & 0xFFFFFFFFFFFFFFF8) + (v8 | 3) + 8) & ~(v8 | 3)) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v8, v5);
  v9 = ((-17 - v8) | v8 | 3) - a1 + ((((-10 - v8) | v8) - *(v7 + 56)) | 3);

  v10 = *(*(a2 + 24) - 8);
  v11 = *(v10 + 8);
  v12 = (((38 - v9) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 16) & ~*(v10 + 80);

  return v11(v12);
}

uint64_t initializeWithCopy for TextFieldState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = (a2 + 16);
  v6 = *(a2 + 16);

  if (v6)
  {
    *(a1 + 16) = v6;
    v7 = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = v7;
  }

  else
  {
    v8 = v5[1];
    *(a1 + 16) = *v5;
    *(a1 + 32) = v8;
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    *(a1 + 48) = v9;
    v10 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v10;
  }

  else
  {
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
  }

  *(a1 + 80) = *(a2 + 80);
  v12 = *(a2 + 88);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = v12;
  return a1;
}

__n128 __swift_memcpy92_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t destroy for TextFieldState(uint64_t a1)
{

  if (*(a1 + 16))
  {
  }

  if (*(a1 + 48))
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextFieldState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
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

uint64_t TextField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ResolvedTextFieldStyle();
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v31 = lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel();
  v9 = *(a1 + 24);
  v44 = &type metadata for _TextFieldStyleLabel;
  v45 = v8;
  v46 = v31;
  v47 = v9;
  type metadata accessor for StaticSourceWriter();
  v10 = type metadata accessor for ModifiedContent();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>();
  v13 = type metadata accessor for ModifiedContent();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v32 = &v28 - v18;
  v19 = *(v3 + 16);
  v20 = v30;
  v19(v5, v30, a1, v17);
  TextField.init<A>(_:)(v5, v7);
  v37 = v8;
  v38 = v9;
  v39 = v20;
  v21 = lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(&lazy protocol witness table cache variable for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle, type metadata accessor for ResolvedTextFieldStyle);
  View.viewAlias<A, B>(_:_:)(&type metadata for _TextFieldStyleLabel, partial apply for closure #1 in TextField.body.getter, v36, v29, &type metadata for _TextFieldStyleLabel, v8, v21);
  outlined destroy of ResolvedTextFieldStyle(v7, type metadata accessor for ResolvedTextFieldStyle);
  v42 = v21;
  v43 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction();
  View.input<A>(_:)();
  (*(v33 + 8))(v12, v10);
  v23 = lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesEditMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>);
  v40 = WitnessTable;
  v41 = v23;
  v24 = swift_getWitnessTable();
  v25 = v32;
  static ViewBuilder.buildExpression<A>(_:)(v15, v13, v24);
  v26 = *(v34 + 8);
  v26(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)(v25, v13, v24);
  return (v26)(v25, v13);
}

uint64_t TextField.$text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t outlined init with copy of State<TextFieldState>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<String>(0, a3, &type metadata for TextFieldState, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI5StateVyAA09TextFieldC0VGWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(0, a3, &type metadata for TextFieldState, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI5StateVyAA09TextFieldC0VGWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_2(0, a3, &type metadata for TextFieldState, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection()
{
  result = lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection;
  if (!lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection;
  if (!lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection;
  if (!lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection);
  }

  return result;
}

uint64_t outlined destroy of ResolvedTextFieldStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with copy of Binding<TextSelection?>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TextSelection?>?(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in TextField.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextField();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 40), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t destroy for ResolvedTextFieldStyle(uint64_t a1)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v3 = a1 + *(v2 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v5 = v4;
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {

    v7 = *(v5 + 32);
    v8 = type metadata accessor for TextSelection(0);
    result = (*(*(v8 - 8) + 48))(v3 + v7, 1, v8);
    if (!result)
    {
      type metadata accessor for TextSelection.Indices(0);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v10 = *(*(v9 - 8) + 8);

        return v10(v3 + v7, v9);
      }
    }
  }

  return result;
}

uint64_t outlined consume of StateOrBinding<TextFieldState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  if (a15)
  {

    outlined consume of TextFieldState.FormatActions?(a5);
    return outlined consume of TextFieldState.FormatActions?(a9);
  }

  else
  {

    outlined consume of TextFieldState.FormatActions?(a3);
    outlined consume of TextFieldState.FormatActions?(a7);
  }
}

uint64_t SearchFieldConfigurationTextFieldStyle.value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  type metadata accessor for Binding<AttributedString>();
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v29 - v7);
  v9 = *(a1 + 180);
  v10 = *(a1 + 120);
  v11 = *(a1 + 152);
  if (v9)
  {
    v53 = *(a1 + 136);
    v54[0] = v11;
    *(v54 + 12) = *(a1 + 164);
    v12 = *(a1 + 88);
    v49 = *(a1 + 72);
    v50 = v12;
    v51 = *(a1 + 104);
    v52 = v10;
    v42 = v49;
    v43 = v12;
    v44 = v51;
    v45 = v10;
    v46 = v53;
    *v47 = v11;
    *&v47[12] = *(v54 + 12);
    v48 = v9;
    outlined init with copy of Binding<TextFieldState>(&v42, v40, &lazy cache variable for type metadata for Binding<TextFieldState>, MEMORY[0x1E6981948]);
  }

  else
  {
    v37 = *(a1 + 136);
    v38 = v11;
    v39 = *(a1 + 168);
    v13 = *(a1 + 88);
    v33 = *(a1 + 72);
    v34 = v13;
    v35 = *(a1 + 104);
    v36 = v10;
    v46 = v37;
    *v47 = v11;
    *&v47[12] = *(a1 + 164);
    v42 = v33;
    v43 = v13;
    v44 = v35;
    v45 = v10;
    v48 = v9;
    v14 = MEMORY[0x1E6981790];
    outlined init with copy of Binding<TextFieldState>(&v42, &v49, &lazy cache variable for type metadata for State<TextFieldState>, MEMORY[0x1E6981790]);
    type metadata accessor for Binding<TextFieldState>(0, &lazy cache variable for type metadata for State<TextFieldState>, v14);
    State.projectedValue.getter();
    v40[4] = v37;
    v40[5] = v38;
    v41 = v39;
    v40[0] = v33;
    v40[1] = v34;
    v40[2] = v35;
    v40[3] = v36;
    outlined destroy of Binding<TextFieldState>(v40, &lazy cache variable for type metadata for State<TextFieldState>, v14);
  }

  v46 = v53;
  *v47 = v54[0];
  *&v47[12] = *(v54 + 12);
  v42 = v49;
  v43 = v50;
  v44 = v51;
  v45 = v52;
  *&v40[0] = swift_getKeyPath();
  type metadata accessor for WritableKeyPath<TextFieldState, String>(0, &lazy cache variable for type metadata for WritableKeyPath<TextFieldState, String>, &type metadata for TextFieldState, MEMORY[0x1E69E6158], MEMORY[0x1E69E6CE0]);
  lazy protocol witness table accessor for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>();

  dispatch thunk of AnyLocation.projecting<A>(_:)();

  v15 = v42;

  outlined destroy of Binding<TextFieldState>(&v42, &lazy cache variable for type metadata for Binding<TextFieldState>, MEMORY[0x1E6981948]);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v16 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  *v8 = v15;
  v8[1] = v16;
  v17 = v32;
  result = outlined init with copy of Binding<AttributedString>(v8, v32);
  v19 = *(a1 + 64);
  if (v19)
  {
    v20 = *(a1 + 56);
    v23 = a1 + 40;
    v22 = *(a1 + 40);
    v21 = *(v23 + 8);
    v24 = v20 & 1;
    outlined copy of Text.Storage(v22, v21, v20 & 1);

    outlined destroy of Binding<AttributedString>(v8);
    v25 = v30;
    outlined init with take of Binding<AttributedString>(v17, v30);
    v26 = type metadata accessor for SearchFieldConfiguration.Data(0);
    v27 = v25 + *(v26 + 20);
    *v27 = v22;
    *(v27 + 8) = v21;
    *(v27 + 16) = v24;
    *(v27 + 24) = v19;
    v28 = v25 + *(v26 + 24);
    *v28 = 0;
    *(v28 + 8) = -1;
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>)
  {
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for WritableKeyPath<TextFieldState, String>, &type metadata for TextFieldState, MEMORY[0x1E69E6158], MEMORY[0x1E69E6CE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>);
  }

  return result;
}

uint64_t outlined destroy of Binding<TextFieldState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  type metadata accessor for Binding<TextFieldState>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Binding<AttributedString>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AttributedString>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Binding<AttributedString>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AttributedString>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_18BEECB0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }
}

uint64_t destroy for SearchFieldConfiguration.Data(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  outlined consume of Text.Storage(*(a1 + *(a2 + 20)), *(a1 + *(a2 + 20) + 8), *(a1 + *(a2 + 20) + 16));

  v8 = a1 + *(a2 + 24);
  v9 = *(v8 + 8);
  if (v9 != 255)
  {
    v10 = *v8;

    return outlined consume of PlatformItemCollection.Storage(v10, v9 & 1);
  }

  return result;
}

uint64_t outlined init with copy of SearchFieldConfiguration.Data?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t closure #1 in SearchFieldConfigurationReader.MakeContent.config.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a8;
  v43 = a3;
  v44 = a5;
  v45 = a2;
  v49 = a1;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = a7;
  v46 = type metadata accessor for SearchFieldConfigurationReader();
  v11 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v41 - v12;
  v48 = type metadata accessor for SearchFieldState;
  v47 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v41 - v17);
  SearchFieldConfigurationReader.MakeContent.reader.getter(v13);
  v19 = v46;
  v20 = &v13[*(v46 + 52)];
  v21 = *v20;
  v22 = *(v20 + 1);
  v42 = v20[16];
  v23 = *(v11 + 8);

  v23(v13, v19);
  v40 = a7;
  v24 = v49;
  LODWORD(v13) = v43;
  SearchFieldConfigurationReader.MakeContent.state(text:isPresented:)(v49, v21, v22, v42, v45, v43, a4, v44, v18, a6, v40);

  outlined init with copy of SearchFieldConfiguration.Data?(v18, v55, &lazy cache variable for type metadata for Binding<SearchFieldState>, v48, v47);
  v25 = type metadata accessor for SearchFieldConfiguration.Data(0);
  v26 = v24 + *(v25 + 24);
  v27 = *(v26 + 8);
  v48 = *v26;
  LODWORD(v47) = v27;
  outlined copy of PlatformItemCollection?(v48, v27);
  if (*MEMORY[0x1E698D3F8] == v13)
  {
    v28 = 2;
  }

  else
  {
    v28 = *AGGraphGetValue();
  }

  v29 = MEMORY[0x1E6981948];
  _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v18, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  LODWORD(v46) = (v28 == 2) | v28;
  v30 = v24 + *(v25 + 20);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  v49 = *(v30 + 24);
  v34 = type metadata accessor for SearchFieldConfiguration(0);
  v35 = v34[7];
  v36 = v50;
  v37 = v50 + v34[6];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_1(v55, v50, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v29);
  *v37 = v48;
  *(v37 + 8) = v47;
  *(v36 + v35) = v46 & 1;
  v38 = v36 + v34[8];
  *v38 = v31;
  *(v38 + 8) = v32;
  *(v38 + 16) = v33;
  *(v38 + 24) = v49;
  outlined copy of Text.Storage(v31, v32, v33);
}

uint64_t SearchFieldConfigurationReader.MakeContent.reader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchFieldConfigurationReader();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t SearchFieldConfigurationReader.MakeContent.state(text:isPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a6;
  v46 = a4;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v47 = a9;
  v37[1] = a10;
  v37[2] = a11;
  v39 = type metadata accessor for SearchFieldState;
  v40 = a5;
  v13 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  v51 = a11;
  v17 = type metadata accessor for SearchFieldConfigurationReader();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v37 - v19;
  v38 = type metadata accessor for (SearchFieldState, AttributedString);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<(SearchFieldState, AttributedString)>, type metadata accessor for (SearchFieldState, AttributedString), v13);
  v37[3] = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v37 - v22;
  type metadata accessor for Binding<((SearchFieldState, AttributedString), Bool)>(0);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  SearchFieldConfigurationReader.MakeContent.reader.getter(v20);
  v28 = v39;
  outlined init with copy of SearchFieldConfiguration.Data?(v20, v16, &lazy cache variable for type metadata for Binding<SearchFieldState>, v39, v13);
  (*(v18 + 8))(v20, v17);
  type metadata accessor for AttributedString();
  v29 = v42;
  Binding.zip<A>(with:)();
  _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v16, &lazy cache variable for type metadata for Binding<SearchFieldState>, v28, v13);
  v48 = v44;
  v49 = v45;
  LOBYTE(v50) = v46;
  Binding.zip<A>(with:)();
  _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v23, &lazy cache variable for type metadata for Binding<(SearchFieldState, AttributedString)>, v38, v13);
  v30 = v27 + *(v25 + 40);
  type metadata accessor for (SearchFieldState, AttributedString)();
  v32 = *(v31 + 48);
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v34 = v47;
  SearchStateProjection.get(base:)(v30, (v30 + v32), *(v30 + *(v33 + 48)), v47 + *(v29 + 32));
  lazy protocol witness table accessor for type SearchStateProjection and conformance SearchStateProjection();
  v35 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v34 = *v27;
  v34[1] = v35;

  return _s7SwiftUI16SearchFieldStateVWOhTm_4(v27, type metadata accessor for Binding<((SearchFieldState, AttributedString), Bool)>);
}

uint64_t outlined destroy of SearchFieldConfiguration.Data?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Binding<AttributedString>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *initializeWithCopy for SearchFieldConfiguration(void *a1, void *a2, int *a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = a3[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = v19[8];
  if (v20 == 255)
  {
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    v21 = *v19;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(*v19, v20 & 1);
    *v18 = v21;
    v18[8] = v22;
  }

  v23 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  v27 = *(v25 + 1);
  v28 = v25[16];
  outlined copy of Text.Storage(v26, v27, v28);
  *v24 = v26;
  *(v24 + 1) = v27;
  v24[16] = v28;
  *(v24 + 3) = *(v25 + 3);

  return a1;
}

uint64_t closure #1 in SearchFieldConfigurationReader.MakeContent.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v13 = a6;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v6 = type metadata accessor for SearchFieldConfigurationReader();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  SearchFieldConfigurationReader.MakeContent.reader.getter(&v13 - v8);
  v10 = *&v9[*(v6 + 56)];
  v11 = *(v7 + 8);

  v11(v9, v6);
  v10(v14);
}

uint64_t partial apply for closure #1 in SearchField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SearchField() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in SearchField.body.getter(a1, v8, v5, v6, a2);
}

uint64_t static ResolvedList.makeViewList<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v31 = a2;
  v32 = a8;
  v33 = a3;
  v11 = a1;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v16;
  v36 = v15;
  v37 = v18;
  v38 = v17;
  v19 = type metadata accessor for _ListValue.Init1();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v29 - v24;
  v34 = *v11;
  type metadata accessor for ResolvedList();
  type metadata accessor for _GraphValue();
  LODWORD(v11) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v31, a5);
  *v25 = v11;
  v35 = a5;
  v36 = a4;
  v26 = v30;
  v37 = v30;
  v38 = a6;
  v27 = type metadata accessor for _ListValue.Init1();
  (*(v12 + 32))(&v25[*(v27 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v35 = a5;
  v36 = a4;
  v37 = v26;
  v38 = a6;
  type metadata accessor for _ListValue();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  (*(v26 + 16))(&v35, v33, a4, a6, a5, v26);
  return (*(v20 + 8))(v25, v19);
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ContentListStyleContext>);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<InsetListStyle>, &type metadata for InsetListStyle, &protocol witness table for InsetListStyle, type metadata accessor for ListStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ContentListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ContentListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t static StyleType.makeViewList<A>(view:style:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for ResolvedList();
  type metadata accessor for _GraphValue();
  v16 = _GraphValue.value.getter();
  v17 = a4;
  type metadata accessor for _ListValue();
  v15[0] = a6;
  v15[1] = a7;
  v15[2] = a8;
  type metadata accessor for _ListValue.Init2();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(a8 + 16))(v15, a5, a7, a9, a6, a8);
}

{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for _GraphValue();
  v16 = _GraphValue.value.getter();
  v17 = a4;
  type metadata accessor for _PickerValue();
  v15[0] = a6;
  v15[1] = a7;
  v15[2] = a8;
  type metadata accessor for _PickerValue.Init2();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(a8 + 16))(v15, a5, a7, a9, a6, a8);
}

{
  type metadata accessor for ResolvedTabView();
  type metadata accessor for _GraphValue();
  v16 = _GraphValue.value.getter();
  v17 = a4;
  type metadata accessor for _TabViewValue();
  v15[0] = a6;
  v15[1] = a7;
  v15[2] = a8;
  type metadata accessor for _TabViewValue.Init2();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(a8 + 16))(v15, a5, a7, a9, a6, a8);
}

uint64_t protocol witness for static AnyStyleType.makeViewList<A>(view:style:inputs:) in conformance StyleType<A>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static StyleType.makeViewList<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

{
  return static StyleType.makeViewList<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

{
  return static StyleType.makeViewList<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

uint64_t initializeWithCopy for ResolvedNavigationDestinations(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v7;

  return a1;
}

uint64_t *assignWithCopy for FetchRequest(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<NSManagedObjectContext>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  outlined copy of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(v8, v9, v10);
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(a1 + 32);
  a1[2] = v8;
  a1[3] = v9;
  *(a1 + 32) = v10;
  outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(v11, v12, v13);
  v14 = a1[5];
  v15 = *(a2 + 40);
  if (!v14)
  {
    if (v15)
    {
      a1[5] = v15;
      v20 = *(a2 + 48);
      a1[6] = v20;
      v21 = v15;
      v22 = v20;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 5) = *(a2 + 40);
    goto LABEL_8;
  }

  if (!v15)
  {
    v23 = type metadata accessor for FetchedResults();
    (*(*(v23 - 8) + 8))(a1 + 5, v23);
    goto LABEL_7;
  }

  a1[5] = v15;
  v16 = v15;

  v17 = *(a2 + 48);
  v18 = a1[6];
  a1[6] = v17;
  v19 = v17;

LABEL_8:
  a1[7] = *(a2 + 56);

  a1[8] = *(a2 + 64);

  a1[9] = *(a2 + 72);

  return a1;
}

id specialized FetchController.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E7D40];
  *&v3[*((*MEMORY[0x1E69E7D40] & *v3) + 0x70)] = 0;
  *&v3[*((*v7 & *v3) + 0x80)] = 0;
  v8 = *((*v7 & *v3) + 0x88);
  type metadata accessor for Optional();
  v9 = type metadata accessor for Binding();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v3[*((*v7 & *v3) + 0x90)] = 0;
  v10 = &v3[*((*v7 & *v3) + 0x68)];
  *v10 = a1;
  *(v10 + 1) = a2;
  type metadata accessor for KeyPath();
  type metadata accessor for Optional();
  type metadata accessor for MutableBox();
  v13 = 0;

  *&v3[*((*v7 & *v3) + 0x78)] = MEMORY[0x18D002830](&v13);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t getEnumTagSinglePayload for GlassButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 41))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t getEnumTagSinglePayload for DefaultDragDropPreview(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t FetchRequest.controller.getter()
{
  type metadata accessor for FetchedResults();
  type metadata accessor for FetchController();
  swift_getWitnessTable();

  return StateObject.wrappedValue.getter();
}

void FetchRequest.update(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = specialized Environment.wrappedValue.getter(*v0, v2 & 1);
  v4 = [v3 persistentStoreCoordinator];

  if (v4)
  {

    v5 = FetchRequest.controller.getter();
    FetchRequest.$results.getter();
    type metadata accessor for FetchedResults();
    type metadata accessor for Optional();
    type metadata accessor for Binding();
    Binding.transaction(_:)();

    outlined consume of FetchedResults<A>?<A>(v16, v17);
    v6 = (v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x88));
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    *v6 = v18;
    v6[1] = v19;
    *(v6 + 1) = v20;
    outlined consume of Binding<FetchedResults<A>?>?<A>(v7, v8, v9, v10);

    v11 = FetchRequest.controller.getter();
    v22.value.super.isa = specialized Environment.wrappedValue.getter(v1, v2 & 1);
    isa = v22.value.super.isa;
    FetchController.update(in:)(v22);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18CD63400;
    v15 = specialized Environment.wrappedValue.getter(v1, v2 & 1);
    *(v14 + 56) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSManagedObjectContext);
    *(v14 + 64) = lazy protocol witness table accessor for type NSManagedObjectContext and conformance NSObject();
    *(v14 + 32) = v15;
    os_log(_:dso:log:_:_:)();
  }
}

id specialized Environment.wrappedValue.getter(void *a1, char a2)
{
  if (a2)
  {

    return a1;
  }

  else
  {
    v13[9] = v2;
    v13[10] = v3;

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13[0] = v8;
      *v7 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSManagedObjectContext);
      v9 = _typeName(_:qualified:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of ResolvableCLKTextProvider.FontStorage(a1, 0);

    return v13[2];
  }
}

void outlined consume of Binding<FetchedResults<A>?>?<A>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {

    outlined consume of FetchedResults<A>?<A>(a3, a4);
  }
}

id DeferredFetchRequest.result.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    v4 = (*(v0 + 24))();
    v5 = *(v0 + 16);
    *(v3 + 16) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance ListPresentationPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static ListPresentationPredicate.evaluate(inputs:)();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

void protocol witness for static PropertyKey.defaultValue.getter in conformance ListStyleInput(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t type metadata completion function for _ListValue.Init1()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static DefaultListStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for List();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<PlainListStyle>, &type metadata for PlainListStyle, &protocol witness table for PlainListStyle, type metadata accessor for ListStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for DefaultListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<MultimodalListStyle>, &type metadata for MultimodalListStyle, &protocol witness table for MultimodalListStyle, type metadata accessor for ListStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<InlineListStyle>, &type metadata for InlineListStyle, &protocol witness table for InlineListStyle, type metadata accessor for ListStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarStyleContext>);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<SidebarListStyle>, &type metadata for SidebarListStyle, &protocol witness table for SidebarListStyle, type metadata accessor for ListStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in static ListStyleWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ListStyleWriter();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t View.navigationTitle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *&v14 = Text.init<A>(_:)();
  *(&v14 + 1) = v10;
  *&v15 = v11 & 1;
  *(&v15 + 1) = v12;
  *v16 = 1;
  v16[8] = 5;
  *&v16[16] = 0;
  v16[24] = 3;
  View.navigationTitlePreferenceTransform(adding:)(&v14, a2, a3, a4);
  v17[0] = v14;
  v17[1] = v15;
  v18[0] = *v16;
  *(v18 + 9) = *&v16[9];
  return outlined destroy of NavigationTitleStorage(v17);
}

unint64_t lazy protocol witness table accessor for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter()
{
  result = lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter;
  if (!lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter);
  }

  return result;
}

uint64_t type metadata completion function for FocusedValueModifier.Transform()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ItemSheetPresentationModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v90 = (a2 + 24);
  v5 = *(a2 + 32);
  v89 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = &v64 - v13;
  v78 = *(a2 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a2 + 56);
  v16 = v69;
  v17 = type metadata accessor for CoreSheetPresentationModifier();
  v85 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  swift_getWitnessTable();
  v81 = type metadata accessor for _ViewModifier_Content();
  v87 = v17;
  v86 = type metadata accessor for ModifiedContent();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v64 - v22;
  v74 = v8;
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v75 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v73 = MEMORY[0x1E6981920];
  ItemSheetPresentationModifier.item.getter(a2, MEMORY[0x1E6981920]);
  *&v29 = v8;
  *(&v29 + 1) = *v90;
  v71 = v29;
  v90 = v5;
  *&v30 = v5;
  v66 = v12;
  *(&v30 + 1) = v12;
  v70 = v30;
  v93 = v29;
  v94 = v30;
  v95 = *(a2 + 48);
  v31 = v95;
  v96 = v16;
  v97 = v3;
  v32 = v3;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ItemSheetPresentationModifier.body(content:), v92, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v33, &v100);
  v34 = *(v24 + 8);
  v76 = v23;
  v35 = v34;
  v34(v28, v23);
  v72 = v100;
  v36 = v78;
  v37 = v77;
  (*(v78 + 16))(v77, v32, a2);
  v38 = v36;
  v39 = (*(v36 + 80) + 64) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v70;
  *(v40 + 16) = v71;
  *(v40 + 32) = v41;
  *(v40 + 48) = v31;
  v42 = v32;
  *(v40 + 56) = v69;
  (*(v38 + 32))(v40 + v39, v37, a2);
  v43 = v75;
  v44 = *(a2 + 80);
  LODWORD(v79) = *(v32 + *(a2 + 76));
  LODWORD(v78) = *(v32 + v44);
  ItemSheetPresentationModifier.item.getter(a2, v73);
  v45 = v80;
  v46 = v74;
  if ((*(v80 + 48))(v43, 1))
  {
    v35(v43, v76);
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
  }

  else
  {
    v47 = v65;
    (*(v45 + 16))(v65, v43, v46);
    v35(v43, v76);
    v48 = v64;
    dispatch thunk of Identifiable.id.getter();
    (*(v45 + 8))(v47, v46);
    v49 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    _convertToAnyHashable<A>(_:)();
    (*(v67 + 8))(v48, v49);
  }

  v50 = v89;
  v51 = v88;
  v52 = v90;
  (*(v89 + 16))(v88, v42 + *(a2 + 84), v90);
  v53 = v72;
  *v19 = 0;
  *(v19 + 1) = v53;
  v54 = v100;
  *(v19 + 56) = v101;
  *(v19 + 2) = partial apply for closure #2 in ItemSheetPresentationModifier.body(content:);
  *(v19 + 3) = v40;
  v19[32] = v79;
  v19[33] = v78;
  *(v19 + 9) = v102;
  *(v19 + 40) = v54;
  v55 = v87;
  (*(v50 + 32))(&v19[*(v87 + 56)], v51, v52);
  v19[*(v55 + 60)] = 2;
  v56 = v81;
  WitnessTable = swift_getWitnessTable();
  v58 = v82;
  MEMORY[0x18D00A570](v19, v56, v55, WitnessTable);
  (*(v85 + 8))(v19, v55);
  v98 = WitnessTable;
  v99 = &protocol witness table for CoreSheetPresentationModifier<A>;
  v59 = v86;
  v60 = swift_getWitnessTable();
  v61 = v83;
  static ViewBuilder.buildExpression<A>(_:)(v58, v59, v60);
  v62 = *(v84 + 8);
  v62(v58, v59);
  static ViewBuilder.buildExpression<A>(_:)(v61, v59, v60);
  return (v62)(v61, v59);
}

uint64_t sub_18BEF0270()
{
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v1 = type metadata accessor for ItemSheetPresentationModifier();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));

  type metadata accessor for Optional();
  v3 = *(type metadata accessor for Binding() + 32);
  v4 = *(v6 - 8);
  if (!(*(v4 + 48))(v2 + v3, 1, v6))
  {
    (*(v4 + 8))(v2 + v3, v6);
  }

  if (*(v2 + *(v1 + 68)))
  {
  }

  (*(*(v7 - 8) + 8))(v2 + *(v1 + 84));
  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for Bool?);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool?>);
    }
  }
}

uint64_t static ResolvedList._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  lazy protocol witness table accessor for type ListStyleInput and conformance ListStyleInput();
  PropertyList.subscript.getter();
  if (v11[0])
  {
    LODWORD(v11[0]) = v9;
    return (*(v11[1] + 16))(v11);
  }

  else
  {
    LODWORD(v11[0]) = v9;
    return static ResolvedList.makeViewList<A>(view:style:inputs:)(v11, 0, a2, a3, &type metadata for DefaultListStyle, a4, &protocol witness table for DefaultListStyle, a5);
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CollectionViewListRoot<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

void storeEnumTagSinglePayload for TextInputSuggestions(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NavigationDestinationModifier.MakeSeededResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for Section(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  v14 = *(a3[4] - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  if (*(v22 + 8) < 0xFFFFFFFFuLL)
  {
    v23 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v23;
  }

  else
  {
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    *(v21 + 16) = *(v22 + 16);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for Menu(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))();
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for SearchFocusContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t destroy for SearchFocusContext(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
}

void type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>);
    }
  }
}

uint64_t outlined init with copy of SearchFocusContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchFocusContext?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.searchFocusContext.setter(uint64_t a1)
{
  outlined init with copy of ToolbarItemPlacement?(a1, v5, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  outlined init with copy of ToolbarItemPlacement?(v5, &v4, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ToolbarItemPlacement?(a1, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  return outlined destroy of ToolbarItemPlacement?(v5, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
}

void type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InsettableGroupedListBodyRule.init(base:insetMode:context:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 16);
  *(a5 + 8) = *a2;
  *a5 = a1;
  *(a5 + 24) = v8;
  *(a5 + 40) = *(a2 + 32);
  v9 = type metadata accessor for InsettableGroupedListBodyRule();
  return (*(*(a4 - 8) + 32))(a5 + *(v9 + 72), a3, a4);
}

uint64_t type metadata completion function for InsettableGroupedListBodyRule()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for StyleContextWriter<InsetGroupedListStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<InsetGroupedListStyleContext>)
  {
    lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<InsetGroupedListStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>();
    lazy protocol witness table accessor for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance DisableCollectionViewGroupedListsFeature(char a1)
{
  result = swift_beginAccess();
  static DisableCollectionViewGroupedListsFeature.cachedValue = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate()
{
  result = lazy protocol witness table cache variable for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate;
  if (!lazy protocol witness table cache variable for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, Modifi()
{
  result = lazy protocol witness table cache variable for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ;
  if (!lazy protocol witness table cache variable for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, )
  {
    type metadata accessor for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryVie( 255,  &lazy cache variable for type metadata for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedCo,  type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>,  type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>);
    lazy protocol witness table accessor for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate();
    lazy protocol witness table accessor for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?,);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate()
{
  result = lazy protocol witness table cache variable for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasCustomScopeBarPredicate()
{
  lazy protocol witness table accessor for type HasCustomScopeBar and conformance HasCustomScopeBar();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t implicit closure #1 in static FocusedValueModifier._makeView(modifier:inputs:body:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for FocusedValueModifier.Transform();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  LODWORD(a1) = *(a1 + 24);
  v28 = a2;
  type metadata accessor for FocusedValueModifier();
  type metadata accessor for _GraphValue();
  v15 = _GraphValue.value.getter();
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();

  PropertyList.subscript.getter();
  v16 = v25;
  lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();
  PropertyList.subscript.getter();
  v17 = v25;
  (*(*(a4 - 8) + 56))(v10, 1, 1, a4);
  default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v25);
  v22 = v25;
  v23 = v26;
  v24 = v27;
  FocusedValueModifier.Transform.init(viewPhase:modifier:responder:depth:focusItem:content:isFocused:cycleDetector:lastResetSeed:)(a1, v15, a3, v16, v17, v10, 0, &v22, v14, 0);
  v30 = v11;
  WitnessTable = swift_getWitnessTable();
  _sSay7SwiftUI13ViewResponderCGMaTm_4(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_24, v29, v11, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  (*(v12 + 8))(v14, v11);
  return v25;
}

_DWORD *initializeWithCopy for FocusedValueModifier.Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 11) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 11) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = *(a3 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = ((v9 + v13 + 8) & ~v13);
  v15 = ((v10 + v13 + 8) & ~v13);
  v16 = *(v12 + 48);

  if (v16(v15, 1, v11))
  {
    v17 = *(v12 + 84);
    v18 = *(v12 + 64);
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + 1;
    }

    memcpy(v14, v15, v19);
  }

  else
  {
    (*(v12 + 16))(v14, v15, v11);
    v21 = *(v12 + 56);
    v20 = v12 + 56;
    v21(v14, 0, 1, v11);
    v17 = *(v20 + 28);
    v18 = *(v20 + 8);
  }

  if (v17)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + 1;
  }

  v23 = &v14[v22];
  v24 = &v15[v22];
  *v23 = *v24;
  v23 &= 0xFFFFFFFFFFFFFFFCLL;
  v24 &= 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 4);
  *(v23 + 9) = *(v24 + 9);
  *(v23 + 4) = v25;
  *(v23 + 20) = *(v24 + 20);
  return a1;
}

uint64_t FocusedValueModifier.Transform.updateValue()(uint64_t a1)
{
  v79[8] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v70 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v72 = v3;
  v11 = type metadata accessor for FocusedValueModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  Value = AGGraphGetValue();
  v19 = v18;
  v71 = v12;
  v20 = *(v12 + 16);
  v74 = v16;
  v75 = v11;
  v66 = v12 + 16;
  v65 = v20;
  v20(v16, Value, v11);
  v69 = type metadata accessor for (_:)();
  OutputValue = AGGraphGetOutputValue();
  v22 = *AGGraphGetValue();
  v23 = *(a1 + 64);
  v24 = *(v1 + v23);
  v73 = a1;
  if (v24 == v22 >> 1)
  {
    v25 = OutputValue == 0;
    v26 = v1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v1 + v23) = *AGGraphGetValue() >> 1;
    v27 = v1 + *(a1 + 60);
    *(v27 + 4) = 0xFFFFFFFFLL;
    *(v27 + 12) = 0;
    v25 = 1;
    v26 = v1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v28 = *(v73 + 52);
  v29 = v70;
  v62 = *(v70 + 16);
  v62(v10, v26 + v28, v4);
  v30 = v4;
  v31 = *(v72 - 8);
  v61 = *(v31 + 48);
  v32 = v25;
  v33 = v61(v10, 1);
  v34 = v10;
  v35 = *(v29 + 8);
  v35(v34, v30);
  if (v33 == 1)
  {
LABEL_8:
    (*(v70 + 24))(v26 + v28, &v74[*(v75 + 28)], v30);
    v25 = 1;
    goto LABEL_9;
  }

  v25 = v32;
  v60 = v28;
  v59 = v26;
  v36 = v26 + v28;
  v37 = v64;
  v62(v64, v36, v30);
  v38 = v72;
  result = (v61)(v37, 1, v72);
  if (result != 1)
  {
    v40 = v63;
    (*(v31 + 32))(v63, v37, v38);
    v41 = (*(v31 + 56))(v40, 0, 1, v38);
    MEMORY[0x1EEE9AC00](v41);
    *(&v59 - 4) = v30;
    *(&v59 - 3) = v42;
    *(&v59 - 4) = 3;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v40, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v59 - 6), v30, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v43);
    v35(v40, v30);
    v28 = v60;
    v26 = v59;
    if ((v79[0] & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    v44 = v73;
    FocusedValueModifier.Transform.focusItem.getter(v76);
    if (v77 == 1 && v78 == 1)
    {
      outlined destroy of FocusItem??(v76);
      v45 = v71;
    }

    else
    {
      outlined init with take of FocusItem?(v76, v79);
      v45 = v71;
      if (v79[5] || v79[6] != 1)
      {
        if (swift_weakLoadStrong())
        {
          v46 = dispatch thunk of ResponderNode.isDescendant(of:)();
        }

        else
        {
          v46 = 0;
        }

        outlined destroy of FocusItem(v79);
        v48 = (v26 + *(v44 + 56));
        v47 = *v48;
        if ((v46 & 1) != v47)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      outlined destroy of FocusItem?(v79);
    }

    v46 = 0;
    LOBYTE(v47) = 0;
    v48 = (v26 + *(v44 + 56));
    if (*v48)
    {
LABEL_16:
      *v48 = v46 & 1;
      LOBYTE(v47) = v46;
      goto LABEL_22;
    }

LABEL_21:
    if (!v25)
    {
      return (*(v45 + 8))(v74, v75);
    }

LABEL_22:
    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      DisplayList.Version.init(forUpdate:)();
      v49 = v79[0];
      v50 = *AGGraphGetValue();
      v51 = v68;
      v52 = v75;
      v65(v68, v74, v75);
      v53 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v54 = (v67 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      v56 = v72;
      *(v55 + 16) = *(v44 + 16);
      *(v55 + 24) = v56;
      (*(v45 + 32))(v55 + v53, v51, v52);
      v57 = v55 + v54;
      *v57 = v50;
      *(v57 + 8) = v47 & 1;
      v58 = swift_allocObject();
      *(v58 + 16) = v49;
      *(v58 + 24) = v47 & 1;
      *(v58 + 32) = partial apply for closure #1 in FocusedValueModifier.Transform.updateValue();
      *(v58 + 40) = v55;
      v79[0] = partial apply for closure #2 in FocusedValueModifier.Transform.updateValue();
      v79[1] = v58;
      AGGraphSetOutputValue();
    }

    return (*(v45 + 8))(v74, v75);
  }

  __break(1u);
  return result;
}

uint64_t sub_18BEF2164()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for FocusedValueModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = v2[9];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18BEF2294()
{

  return swift_deallocObject();
}

void FocusedValueModifier.Transform.focusItem.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = vdupq_n_s64(1uLL);
    *(a1 + 56) = 0;
  }

  else
  {
    type metadata accessor for FocusItem?();
    Value = AGGraphGetValue();

    outlined init with copy of FocusItem?(Value, a1);
  }
}

uint64_t MakeConfirmationDialog.updateValue()(void *a1)
{
  v2 = v1;
  v298 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[5];
  v189 = a1[3];
  v190 = v4;
  *&v287 = v4;
  *(&v287 + 1) = v189;
  v187 = v6;
  v188 = v5;
  *&v288 = v5;
  *(&v288 + 1) = v6;
  v194 = type metadata accessor for ConfirmationDialogModifierCore();
  v7 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v186 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v164 - v10;
  v182 = type metadata accessor for (_:)();
  OutputValue = AGGraphGetOutputValue();
  v184 = v7;
  v192 = v11;
  if (!OutputValue)
  {
    v14 = v7;
    v193 = 0;
    v185 = 0;
    v176 = 0;
    v177 = 0;
    v174 = 0;
    v175 = 0;
    v173 = 0;
    v172 = 0;
    v180 = 0;
    v15 = 0;
    v16 = 0;
    v178 = 0;
    v179 = 1;
    goto LABEL_5;
  }

  LODWORD(v287) = *v1;
  v13 = AGGraphAnyInputsChanged();
  *v1 = v287;
  if ((v13 & 1) == 0)
  {
    v22 = v1[6];
    v294 = v1[7];
    v23 = v1[9];
    v295 = v1[8];
    v296 = v23;
    v24 = v1[2];
    v290 = v1[3];
    v25 = v1[5];
    v291 = v1[4];
    v292 = v25;
    v293 = v22;
    v26 = v1[1];
    v287 = *v1;
    v288 = v26;
    v297 = *(v1 + 160);
    v289 = v24;
    MakeConfirmationDialog.environment.getter(&v276);

    v27 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

    if ((v27 & 1) == 0)
    {
      return result;
    }

    v29 = v2[6];
    v283 = v2[7];
    v30 = v2[7];
    v284 = v2[8];
    v31 = v2[8];
    v285 = v2[9];
    v32 = v2[2];
    v279 = v2[3];
    v33 = v2[3];
    v280 = v2[4];
    v34 = v2[4];
    v281 = v2[5];
    v35 = v2[5];
    v282 = v2[6];
    v36 = v2[1];
    v276 = *v2;
    v37 = *v2;
    v277 = v2[1];
    v278 = v2[2];
    v273 = v31;
    v274 = v2[9];
    v269 = v34;
    v270 = v35;
    v271 = v29;
    v272 = v30;
    v265 = v37;
    v266 = v36;
    v286 = *(v2 + 160);
    v275 = *(v2 + 160);
    v267 = v32;
    v268 = v33;
    v38 = *(a1 - 1);
    v193 = *(v38 + 16);
    v193(&v254, &v276, a1);
    Confirmation = MakeConfirmationDialog.resolveTitle()(a1);
    v183 = v39;
    v294 = v272;
    v295 = v273;
    v296 = v274;
    v290 = v268;
    v291 = v269;
    v292 = v270;
    v293 = v271;
    v287 = v265;
    v288 = v266;
    v297 = v275;
    v289 = v267;
    v40 = *(v38 + 8);
    v40(&v287, a1);
    v41 = v2[9];
    v273 = v2[8];
    v274 = v41;
    v275 = *(v2 + 160);
    v42 = v2[5];
    v269 = v2[4];
    v270 = v42;
    v43 = v2[7];
    v271 = v2[6];
    v272 = v43;
    v44 = v2[1];
    v265 = *v2;
    v266 = v44;
    v45 = v2[3];
    v267 = v2[2];
    v268 = v45;
    MakeConfirmationDialog.environment.getter(&v252);
    if (v253)
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    if (v196 == 2)
    {
      v126 = v2[9];
      v262 = v2[8];
      v263 = v126;
      v264 = *(v2 + 160);
      v127 = v2[5];
      v258 = v2[4];
      v259 = v127;
      v128 = v2[7];
      v260 = v2[6];
      v261 = v128;
      v129 = v2[1];
      v254 = *v2;
      v255 = v129;
      v130 = v2[3];
      v256 = v2[2];
      v257 = v130;
      MakeConfirmationDialog.environment.getter(&v239);
      EnvironmentValues.explicitPreferredColorScheme.getter();

      LODWORD(v170) = v197;
    }

    else
    {
      LODWORD(v170) = v196;
      v197 = v196;
    }

    v131 = v2[9];
    v262 = v2[8];
    v263 = v131;
    v264 = *(v2 + 160);
    v132 = v2[5];
    v258 = v2[4];
    v259 = v132;
    v133 = v2[7];
    v260 = v2[6];
    v261 = v133;
    v134 = v2[1];
    v254 = *v2;
    v255 = v134;
    v135 = v2[3];
    v256 = v2[2];
    v257 = v135;
    MakeConfirmationDialog.environment.getter(v251);
    if (v251[1])
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    v180 = v250;

    v136 = v2[7];
    v137 = v2[9];
    v236 = v2[8];
    v237 = v137;
    v138 = v2[3];
    v139 = v2[5];
    v232 = v2[4];
    v233 = v139;
    v140 = v2[5];
    v141 = v2[7];
    v234 = v2[6];
    v235 = v141;
    v142 = v2[1];
    v229[0] = *v2;
    v229[1] = v142;
    v143 = v2[3];
    v145 = *v2;
    v144 = v2[1];
    v230 = v2[2];
    v231 = v143;
    v146 = v2[9];
    v226 = v236;
    v227 = v146;
    v222 = v232;
    v223 = v140;
    v224 = v234;
    v225 = v136;
    v218 = v145;
    v219 = v144;
    v238 = *(v2 + 160);
    v228 = *(v2 + 160);
    v220 = v230;
    v221 = v138;
    v193(v207, v229, a1);
    v193 = MakeConfirmationDialog.resolveTintColor()();
    v185 = v147;
    v179 = v148;
    v247 = v226;
    v248 = v227;
    v249 = v228;
    v243 = v222;
    v244 = v223;
    v245 = v224;
    v246 = v225;
    v239 = v218;
    v240 = v219;
    v241 = v220;
    v242 = v221;
    v40(&v239, a1);
    v149 = v2[9];
    v226 = v2[8];
    v227 = v149;
    v228 = *(v2 + 160);
    v150 = v2[5];
    v222 = v2[4];
    v223 = v150;
    v151 = v2[7];
    v224 = v2[6];
    v225 = v151;
    v152 = v2[1];
    v218 = *v2;
    v219 = v152;
    v153 = v2[3];
    v220 = v2[2];
    v221 = v153;
    MakeConfirmationDialog.environment.getter(v206);
    if (v206[1])
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    v169 = v195;
    v154 = v2[1];
    v207[0] = *v2;
    v207[1] = v154;
    v207[2] = v2[2];
    v155 = *(v2 + 6);
    v156 = *(v2 + 7);
    v157 = *(v2 + 10);
    v212 = *(v2 + 88);
    v213 = *(v2 + 104);
    v214 = *(v2 + 120);
    v215 = *(v2 + 136);
    v158 = *(v2 + 19);
    v159 = *(v2 + 160);
    v208 = v155;
    v209 = v156;
    v171 = v2[4];
    v210 = v171;
    v160 = v157;
    v211 = v157;
    v216 = v158;
    v217 = v159;
    MakeConfirmationDialog.environment.getter(v205);
    if (v205[1])
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    v16 = v183;
    v14 = v184;
    v161 = Confirmation;
    v176 = v199;
    v177 = v198;
    v174 = v201;
    v175 = v200;
    v173 = v202;
    v178 = v203;
    v172 = v204;

    if (!v171 || (v161 != v156 || v171 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v15 = v161;
      v11 = v192;
      goto LABEL_5;
    }

    v162 = *(v2 + 72);
    if (v170 == 2)
    {
      if (v162 != 2)
      {
LABEL_60:
        v15 = v161;
LABEL_61:
        v11 = v192;
        goto LABEL_5;
      }
    }

    else if (v162 == 2 || ((v162 ^ v170) & 1) != 0)
    {
      goto LABEL_60;
    }

    if (v180)
    {
      if (!v160)
      {
        goto LABEL_60;
      }

      v163 = static Image.== infix(_:_:)();

      if ((v163 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v160)
    {
      v15 = v161;
      v180 = 0;
      goto LABEL_61;
    }

    if (v179)
    {
      if ((BYTE8(v234) & 1) == 0)
      {
        v15 = v161;
        v179 = 1;
        goto LABEL_61;
      }
    }

    else if ((BYTE8(v234) & 1) != 0 || *&v193 != *(&v233 + 2) || *(&v193 + 1) != *(&v233 + 3) || *&v185 != *&v234 || *(&v185 + 1) != *(&v234 + 1))
    {
      v15 = v161;
      v179 = 0;
      goto LABEL_61;
    }

    if (v169 == BYTE9(v234))
    {
      v11 = v192;
      if (v178)
      {
        v15 = v161;
      }

      else
      {
        if (!v158)
        {
        }

        v15 = v161;
        v178 = 0;
      }

      goto LABEL_5;
    }

    goto LABEL_60;
  }

  v14 = v7;
  v178 = 0;
  v179 = 1;
  v193 = 0;
  v185 = 0;
  v176 = 0;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v173 = 0;
  v172 = 0;
  v180 = 0;
  v15 = 0;
  v16 = 0;
LABEL_5:
  v17 = v194;
  Value = AGGraphGetValue();
  v20 = v19;
  v170 = *(v14 + 16);
  *&v171 = v14 + 16;
  v170(v11, Value, v17);
  if (v16)
  {
    Confirmation = v15;
    v183 = v16;
  }

  else
  {
    v21 = *(v2 + 8);
    if (!v21 || (v20 & 1) != 0)
    {
      v46 = v2[6];
      v283 = v2[7];
      v47 = v2[7];
      v284 = v2[8];
      v48 = v2[8];
      v285 = v2[9];
      v49 = v2[2];
      v279 = v2[3];
      v50 = v2[3];
      v280 = v2[4];
      v51 = v2[4];
      v281 = v2[5];
      v52 = v2[5];
      v282 = v2[6];
      v53 = v2[1];
      v276 = *v2;
      v54 = *v2;
      v277 = v2[1];
      v278 = v2[2];
      v273 = v48;
      v274 = v2[9];
      v269 = v51;
      v270 = v52;
      v271 = v46;
      v272 = v47;
      v265 = v54;
      v266 = v53;
      v286 = *(v2 + 160);
      v275 = *(v2 + 160);
      v267 = v49;
      v268 = v50;
      v55 = *(a1 - 1);
      (*(v55 + 16))(&v287, &v276, a1);
      Confirmation = MakeConfirmationDialog.resolveTitle()(a1);
      v183 = v56;
      v294 = v272;
      v295 = v273;
      v296 = v274;
      v290 = v268;
      v291 = v269;
      v292 = v270;
      v293 = v271;
      v287 = v265;
      v288 = v266;
      v297 = v275;
      v289 = v267;
      (*(v55 + 8))(&v287, a1);
    }

    else
    {
      Confirmation = *(v2 + 7);
      v183 = v21;
    }
  }

  v57 = v14;
  v58 = v2[6];
  v294 = v2[7];
  v59 = v2[9];
  v295 = v2[8];
  v296 = v59;
  v60 = v2[2];
  v290 = v2[3];
  v61 = v2[5];
  v291 = v2[4];
  v292 = v61;
  v293 = v58;
  v62 = v2[1];
  v287 = *v2;
  v288 = v62;
  v297 = *(v2 + 160);
  v289 = v60;
  MakeConfirmationDialog.environment.getter(&v218);
  if (*(&v218 + 1))
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  if (LOBYTE(v206[0]) == 2)
  {
    v63 = v2[6];
    v283 = v2[7];
    v64 = v2[9];
    v284 = v2[8];
    v285 = v64;
    v65 = v2[2];
    v279 = v2[3];
    v66 = v2[5];
    v280 = v2[4];
    v281 = v66;
    v282 = v63;
    v67 = v2[1];
    v276 = *v2;
    v277 = v67;
    v286 = *(v2 + 160);
    v278 = v65;
    MakeConfirmationDialog.environment.getter(&v265);
    EnvironmentValues.explicitPreferredColorScheme.getter();

    v169 = LOBYTE(v251[0]);
  }

  else
  {
    v169 = LOBYTE(v206[0]);
    LOBYTE(v251[0]) = v206[0];
  }

  v68 = v2[6];
  v283 = v2[7];
  v69 = v2[9];
  v284 = v2[8];
  v285 = v69;
  v70 = v2[2];
  v279 = v2[3];
  v71 = v2[5];
  v280 = v2[4];
  v281 = v71;
  v282 = v68;
  v72 = v2[1];
  v276 = *v2;
  v277 = v72;
  v286 = *(v2 + 160);
  v278 = v70;
  MakeConfirmationDialog.environment.getter(&v265);
  if (*(&v265 + 1))
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v73 = v254;

  v168 = v73;
  if (v179)
  {
    v74 = v2[7];
    v273 = v2[8];
    v75 = v2[8];
    v274 = v2[9];
    v76 = v2[3];
    v77 = v2[5];
    v269 = v2[4];
    v270 = v77;
    v78 = v2[5];
    v79 = v2[7];
    v271 = v2[6];
    v272 = v79;
    v80 = v2[1];
    v265 = *v2;
    v266 = v80;
    v81 = v2[3];
    v83 = *v2;
    v82 = v2[1];
    v267 = v2[2];
    v268 = v81;
    v84 = v2[9];
    v262 = v75;
    v263 = v84;
    v258 = v269;
    v259 = v78;
    v260 = v271;
    v261 = v74;
    v254 = v83;
    v255 = v82;
    v275 = *(v2 + 160);
    v264 = *(v2 + 160);
    v256 = v267;
    v257 = v76;
    v85 = *(a1 - 1);
    (*(v85 + 16))(&v276, &v265, a1);
    v86 = MakeConfirmationDialog.resolveTintColor()();
    v185 = v87;
    LODWORD(v179) = v88;
    v283 = v261;
    v284 = v262;
    v285 = v263;
    v279 = v257;
    v280 = v258;
    v281 = v259;
    v282 = v260;
    v276 = v254;
    v277 = v255;
    v286 = v264;
    v278 = v256;
    (*(v85 + 8))(&v276, a1);
  }

  else
  {
    LODWORD(v179) = 0;
    v86 = v193;
  }

  v193 = v86;
  v89 = v2[6];
  v283 = v2[7];
  v90 = v2[9];
  v284 = v2[8];
  v285 = v90;
  v91 = v2[2];
  v279 = v2[3];
  v92 = v2[5];
  v280 = v2[4];
  v281 = v92;
  v282 = v89;
  v93 = v2[1];
  v276 = *v2;
  v277 = v93;
  v286 = *(v2 + 160);
  v278 = v91;
  MakeConfirmationDialog.environment.getter(v207);
  if (*(&v207[0] + 1))
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v167 = LOBYTE(v205[0]);
  v94 = v2[9];
  v273 = v2[8];
  v274 = v94;
  v275 = *(v2 + 160);
  v95 = v2[5];
  v269 = v2[4];
  v270 = v95;
  v96 = v2[7];
  v271 = v2[6];
  v272 = v96;
  v97 = v2[1];
  v265 = *v2;
  v266 = v97;
  v98 = v2[3];
  v267 = v2[2];
  v268 = v98;
  MakeConfirmationDialog.environment.getter(&v198);
  if (v199)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v254 = v239;
  v255 = v240;
  v256 = v241;
  LOBYTE(v257) = v242;

  v100 = *(v2 + 1);
  v99 = *(v2 + 2);
  LODWORD(v252) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  AnchorGeometry.init(position:size:transform:)();
  v101 = DWORD2(v229[0]);
  v102 = *&v229[0];
  static Anchor.Source<A>.bounds.getter();
  *&v229[0] = v102;
  DWORD2(v229[0]) = v101;
  type metadata accessor for CGRect(0);
  v166 = Anchor.Source.prepare(geometry:)();

  v103 = v192[64];
  v164 = *(v2 + 10);
  v165 = v103;
  v104 = v194;
  (v170)(v186);
  v105 = *(v14 + 80);
  *&v171 = v2;
  v106 = (v105 + 52) & ~v105;
  v107 = (v181 + v106 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v108 = (v107 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v109 = v104;
  v170 = ((v108 + 15) & 0xFFFFFFFFFFFFFFF8);
  v181 = (v108 + 39) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v108 + 55) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 11) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v111 + 25) & 0xFFFFFFFFFFFFFFF8;
  v113 = swift_allocObject();
  v114 = v189;
  *(v113 + 16) = v190;
  *(v113 + 24) = v114;
  v115 = v187;
  *(v113 + 32) = v188;
  *(v113 + 40) = v115;
  *(v113 + 48) = v164;
  (*(v57 + 32))(v113 + v106, v186, v109);
  *(v113 + v107) = v100;
  *(v113 + v108) = v99;
  v116 = v170 + v113;
  v117 = v183;
  *v116 = Confirmation;
  *(v116 + 1) = v117;
  v116[16] = v165;
  v118 = v113 + v181;
  *v118 = v166;
  LOBYTE(v109) = v169;
  *(v118 + 8) = v169;
  v119 = v168;
  *(v113 + v110) = v168;
  v120 = v113 + v111;
  v121 = v193;
  v122 = v185;
  *v120 = v193;
  *(v120 + 8) = v122;
  v123 = v179 & 1;
  *(v120 + 16) = v179 & 1;
  LOBYTE(v111) = v167;
  *(v120 + 17) = v167;
  v124 = v113 + v112;
  *(v124 + 48) = v257;
  v125 = v256;
  *(v124 + 16) = v255;
  *(v124 + 32) = v125;
  *v124 = v254;
  v252 = partial apply for closure #2 in MakeConfirmationDialog.updateValue();
  v253 = v113;

  outlined init with copy of DialogSuppressionConfiguration?(&v254, v229);
  AGGraphSetOutputValue();

  $defer #1 <A, B>() in MakeConfirmationDialog.updateValue()(v171, Confirmation, v117, v109, v119, v121, v122, v123, v111, &v254);

  outlined consume of DialogSuppressionConfiguration?(v177, v176, v175, v174, v173, v178);
  outlined destroy of DialogSuppressionConfiguration?(&v254, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration);

  return (*(v184 + 8))(v192, v194);
}

uint64_t sub_18BEF3B74()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v2 = (type metadata accessor for ConfirmationDialogModifierCore() - 8);
  v3 = (*(*v2 + 80) + 52) & ~*(*v2 + 80);
  v4 = (((((((((*(*v2 + 64) + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 55) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  outlined consume of Text.Storage(*(v5 + 32), *(v5 + 40), *(v5 + 48));

  (*(*(v1 - 8) + 8))(v5 + v2[18], v1);
  (*(*(v8 - 8) + 8))(v5 + v2[19]);

  v6 = v0 + v4;
  if (*(v0 + v4 + 40))
  {
    if (*(v6 + 24))
    {
      outlined consume of Text.Storage(*v6, *(v6 + 8), *(v6 + 16));
    }
  }

  return swift_deallocObject();
}

void *assignWithCopy for FocusedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((a1 + v8 + 8) & ~v8);
  v10 = ((a2 + v8 + 8) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  *(v9 + v17) = *(v10 + v17);
  return a1;
}

uint64_t static NavigationDestinationModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a4;
  v44 = a3;
  v45 = a9;
  v61 = *MEMORY[0x1E69E9840];
  v42 = *a1;
  v14 = *a2;
  v15 = *(a2 + 24);
  v48 = *(a2 + 8);
  v49 = v15;
  v16 = *(a2 + 48);
  v50 = *(a2 + 40);
  v17 = *(a2 + 56);
  v46 = *(a2 + 60);
  v47 = *(a2 + 76);
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.getter();
  if (v53 != 1)
  {
    _StringGuts.grow(_:)(206);
    MEMORY[0x18D00C9B0](0xD0000000000000B6, 0x800000018CD3EB90);
    v51[0] = a5;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v22);

    MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD3EC50);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    v53 = v14;
    v54 = v48;
    v55 = v49;
    v56 = v50;
    v57 = v16;
    v58 = v17;
    v59 = v46;
    v60 = v47;
    return v44();
  }

  v41 = a7;
  v53 = v14;
  v54 = *(a2 + 8);
  v55 = *(a2 + 24);
  v56 = *(a2 + 40);
  v57 = v16;
  v58 = v17;
  v59 = *(a2 + 60);
  v60 = *(a2 + 76);
  if (_ViewInputs.disableNavigationDestination.getter())
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    v40 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    v18 = static SemanticFeature.isEnabled.getter();
    v19 = 0x800000018CD3EC70;
    v20 = 0xD000000000000014;
    if (v18)
    {
      v20 = 0;
    }

    v39 = v20;
    if (v18)
    {
      v19 = 0xE000000000000000;
    }

    v38 = v19;
    _StringGuts.grow(_:)(410);
    MEMORY[0x18D00C9B0](0x1000000000000180, 0x800000018CD3EC90);
    v51[0] = a5;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v21);

    MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD3EE20);
    MEMORY[0x18D00C9B0](v39, v38);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    if (static SemanticFeature.isEnabled.getter())
    {
      v53 = v14;
      v54 = v48;
      v55 = v49;
      v56 = v50;
      v57 = v16;
      v58 = v17;
      v59 = v46;
      v60 = v47;
      return v44();
    }
  }

  v24 = a6;
  v25 = v41;
  type metadata accessor for NavigationDestinationModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in static NavigationDestinationModifier._makeView(modifier:inputs:body:)(1, a5, v24, v41, a8);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v27 = OffsetAttribute2;
  v53 = v14;
  v54 = v48;
  v55 = v49;
  v56 = v50;
  v57 = v16;
  v58 = v17;
  v59 = v46;
  v60 = v47;
  v28 = (v44)(OffsetAttribute2, &v53);
  v44 = &v37;
  LODWORD(v51[0]) = v27;
  v51[1] = 0;
  v52 = 0;
  MEMORY[0x1EEE9AC00](v28);
  v53 = a5;
  *&v54 = v24;
  *(&v54 + 1) = v25;
  *&v55 = a8;
  v34[2] = type metadata accessor for NavigationDestinationModifier.SeededResolver();
  v53 = a5;
  *&v54 = v24;
  *(&v54 + 1) = v25;
  *&v55 = a8;
  SeededResolver = type metadata accessor for NavigationDestinationModifier.MakeSeededResolver();
  WitnessTable = swift_getWitnessTable();
  v29 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v34, SeededResolver, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  v31 = AGCreateWeakAttribute();
  v53 = v16;
  LODWORD(v54) = v17;
  MEMORY[0x1EEE9AC00](v31);
  v34[-6] = a5;
  v34[-5] = v24;
  v34[-4] = v25;
  v34[-3] = a8;
  LODWORD(v34[-2]) = v32;
  HIDWORD(v34[-2]) = v33;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

unint64_t instantiation function for generic protocol witness table for SectionStyleConfiguration.Actions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SearchFocusContext?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for SearchFocusContext?()
{
  if (!lazy cache variable for type metadata for SearchFocusContext?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchFocusContext?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchFocusContext?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchFocusContext?>, type metadata accessor for SearchFocusContext?, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t implicit closure #1 in static NavigationDestinationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v10 = type metadata accessor for NavigationDestinationModifier.PreferenceTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for [NavigationDestinationResolverBase](0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, v9, v10, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v12;
}

uint64_t Section<>.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8(v5);
  return Section.init(header:content:footer:)(v9, v7, v10, MEMORY[0x1E6981E70], a2, MEMORY[0x1E6981E70], a3);
}

uint64_t Section.init(header:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Section();
  v15 = a7 + v14[13];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  (*(*(a5 - 8) + 32))(a7 + v14[11], a2, a5);
  v16 = *(*(a6 - 8) + 32);
  v17 = a7 + v14[12];

  return v16(v17, a3, a6);
}

uint64_t destroy for Section(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  result = (*(v10 + 8))(v12);
  if (*(((*(v11 + 56) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t View._disableAutocorrection(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t View.searchFocused<A>(_:equals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[2] = a5;
  v19[0] = a7;
  v19[1] = a3;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FocusState.Binding();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v19 - v16;
  swift_getKeyPath();
  (*(v15 + 16))(v17, a1, v14);
  (*(v11 + 16))(v13, a2, a4);
  SearchFocusContext.init<A>(binding:value:)(v17, v13, a4, a6, v20);
  View.environment<A>(_:_:)();

  return outlined destroy of SearchFocusContext?(v20);
}

uint64_t SearchFocusContext.init<A>(binding:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for FocusState.Binding();
  *a5 = FocusState.Binding.propertyID.getter();
  _convertToAnyHashable<A>(_:)();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  a5[6] = FocusStateBindingUpdateAction.init<A>(binding:value:)(a1, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  a5[7] = v12;
  v13 = *(v10 + 32);
  v13(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  result = (v13)(v15 + v14, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  a5[8] = partial apply for closure #1 in SearchFocusContext.init<A>(binding:value:);
  a5[9] = v15;
  return result;
}

uint64_t sub_18BEF4F94()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for SearchFocusContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<InsetGroupedListStyleContext>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>);
    }
  }
}

uint64_t type metadata completion function for InsettableGroupedListBody()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for InsettableGroupedListBody.CollectionViewBody()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for InsettableGroupedListBody.TableViewRoot()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled()
{
  result = lazy protocol witness table cache variable for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled;
  if (!lazy protocol witness table cache variable for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature()
{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

void type metadata accessor for IDView<SearchFieldConfiguration.Suggestions, Bool>()
{
  if (!lazy cache variable for type metadata for IDView<SearchFieldConfiguration.Suggestions, Bool>)
  {
    v0 = type metadata accessor for IDView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IDView<SearchFieldConfiguration.Suggestions, Bool>);
    }
  }
}

void type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>()
{
  if (!lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_0(255, &lazy cache variable for type metadata for TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>, type metadata accessor for TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>, type metadata accessor for TupleToolbarContent);
    v0 = type metadata accessor for ToolbarModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>);
    }
  }
}

void type metadata accessor for Button<Text>?()
{
  if (!lazy cache variable for type metadata for Button<Text>?)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<Text>?);
    }
  }
}

void type metadata accessor for ToolbarItemGroup<Button<Text>?>()
{
  if (!lazy cache variable for type metadata for ToolbarItemGroup<Button<Text>?>)
  {
    type metadata accessor for Button<Text>?();
    lazy protocol witness table accessor for type Button<Text>? and conformance <A> A?(&lazy protocol witness table cache variable for type Button<Text>? and conformance <A> A?, type metadata accessor for Button<Text>?, lazy protocol witness table accessor for type Button<Text> and conformance Button<A>);
    v0 = type metadata accessor for ToolbarItemGroup();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolbarItemGroup<Button<Text>?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>(255);
    lazy protocol witness table accessor for type ToolbarSearchFieldStyle.Implementation and conformance ToolbarSearchFieldStyle.Implementation(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for SearchFieldConfiguration.Scopes?);
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for PickerStyleWriter<SectionPickerStyle>, &type metadata for SectionPickerStyle, &protocol witness table for SectionPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>);
    }
  }
}

void type metadata accessor for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>()
{
  if (!lazy cache variable for type metadata for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?(255);
    lazy protocol witness table accessor for type Button<Text>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>? and conformance <A> A?, type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for LazyPlatformItemWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>)
  {
    type metadata accessor for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>();
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>);
    }
  }
}

void type metadata accessor for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>)
  {
    type metadata accessor for SectionStyleModifier<MenuSectionStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>);
    }
  }
}

void type metadata accessor for SectionStyleModifier<MenuSectionStyle>()
{
  if (!lazy cache variable for type metadata for SectionStyleModifier<MenuSectionStyle>)
  {
    lazy protocol witness table accessor for type MenuSectionStyle and conformance MenuSectionStyle();
    v0 = type metadata accessor for SectionStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SectionStyleModifier<MenuSectionStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValue()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Environmen;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Environmen)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAcces( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.Se,  type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC,  type metadata accessor for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>);
    lazy protocol witness table accessor for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAc();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Environmen);
  }

  return result;
}

uint64_t closure #2 in static LazyPlatformItemWriter._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v12[2] = type metadata accessor for LazyPlatformItemWriter();
  v8 = MEMORY[0x1E69E6370];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationDestinationModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance NavigationAuthority.DepthKey@<X0>(_DWORD *a1@<X8>)
{
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

uint64_t destroy for FocusedValueModifier.Transform(uint64_t a1, uint64_t a2)
{
  v3 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 11;

  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7 + 8;
  v11 = v6;
  result = (*(v6 + 48))(v8 & ~v7, 1, v5);
  if (!result)
  {
    v10 = *(v11 + 8);

    return v10(v8 & ~v7, v5);
  }

  return result;
}

uint64_t closure #2 in FocusedValueModifier.Transform.updateValue()(char **a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[32 * v12];
  *(v13 + 4) = a2;
  v13[40] = a3 & 1;
  *(v13 + 6) = a4;
  *(v13 + 7) = a5;
  *a1 = v10;
}

uint64_t MakeConfirmationDialog.resolveTitle()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v30 = *(a1 + 16);
  v31 = v2;
  v19 = type metadata accessor for ConfirmationDialogModifierCore();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v19 - v4;
  v6 = v1[1];
  v20 = *v1;
  v21 = v6;
  v22 = v1[2];
  v7 = *(v1 + 6);
  v27 = *(v1 + 104);
  v28 = *(v1 + 120);
  v29[0] = *(v1 + 136);
  *(v29 + 9) = *(v1 + 145);
  v24 = *(v1 + 56);
  v25 = *(v1 + 72);
  v26 = *(v1 + 88);

  PropertyList.Tracker.reset()();
  v8 = v1[1];
  v30 = *v1;
  v31 = v8;
  v32 = v1[2];
  v33 = v7;
  v37 = *(v1 + 104);
  v38 = *(v1 + 120);
  v39[0] = *(v1 + 136);
  *(v39 + 9) = *(v1 + 145);
  v34 = *(v1 + 56);
  v35 = *(v1 + 72);
  v36 = *(v1 + 88);
  MakeConfirmationDialog.environment.getter(&v40);

  EnvironmentValues.init(_:tracker:)();
  v10 = v41;
  v9 = v42;
  v23 = v7;
  MakeConfirmationDialog.modifier.getter(v5);
  v11 = *(v5 + 4);
  v12 = *(v5 + 5);
  v13 = v5[48];
  outlined copy of Text.Storage(v11, v12, v13);
  v14 = *(v3 + 8);

  v14(v5, v19);
  *&v30 = v10;
  *(&v30 + 1) = v9;
  static Semantics.v7.getter();
  v15 = isLinkedOnOrAfter(_:)();
  v16 = 256;
  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  v40 = v16;
  v41 = 0;
  v42 = 0;
  v17 = Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v11, v12, v13);

  return v17;
}

uint64_t MakeConfirmationDialog.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ConfirmationDialogModifierCore();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t MakeConfirmationDialog.resolveTintColor()()
{
  v1 = v0[1];
  v32 = *v0;
  v33 = v1;
  v34 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  v30 = *(v0 + 120);
  v31[0] = v4;
  *(v31 + 9) = *(v0 + 145);
  v5 = *(v0 + 72);
  v26 = *(v0 + 56);
  v27 = v5;
  v28 = *(v0 + 88);
  v29 = v3;
  static Semantics.v6_4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v6 = v0[1];
    v15 = *v0;
    v16 = v6;
    v17 = v0[2];
    v18 = v2;
    v22 = *(v0 + 104);
    v23 = *(v0 + 120);
    v24[0] = *(v0 + 136);
    *(v24 + 9) = *(v0 + 145);
    v19 = *(v0 + 56);
    v20 = *(v0 + 72);
    v21 = *(v0 + 88);
    MakeConfirmationDialog.environment.getter(&v25);
    v7 = EnvironmentValues.tintColor.getter();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[1];
  v15 = *v0;
  v16 = v8;
  v17 = v0[2];
  v18 = v2;
  v22 = *(v0 + 104);
  v23 = *(v0 + 120);
  v24[0] = *(v0 + 136);
  *(v24 + 9) = *(v0 + 145);
  v19 = *(v0 + 56);
  v20 = *(v0 + 72);
  v21 = *(v0 + 88);
  MakeConfirmationDialog.environment.getter(&v25);
  if (*(&v25 + 1))
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  if (v14)
  {
    goto LABEL_10;
  }

  if (v7)
  {

LABEL_10:

    PropertyList.Tracker.reset()();
    v15 = v32;
    v16 = v33;
    v17 = v34;
    v22 = v29;
    v23 = v30;
    v24[0] = v31[0];
    *(v24 + 9) = *(v31 + 9);
    v19 = v26;
    v20 = v27;
    v18 = v2;
    v21 = v28;
    MakeConfirmationDialog.environment.getter(&v14);

    EnvironmentValues.init(_:tracker:)();
    v15 = v25;
    dispatch thunk of AnyColorBox.resolve(in:)();
    v10 = v9;
    v12 = v11;

    return v10 | (v12 << 32);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.isEmpty.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v2 + 232);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = dispatch thunk of Collection.isEmpty.getter();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t closure #1 in static NavigationDestinationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v9[2] = type metadata accessor for NavigationDestinationModifier();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, FunctionTypeMetadata1, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

unint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions()
{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzSyRd__r__lAA15ModifiedContentVyADyxAA40TransactionalPreferenceTransformModifierVyAA18NavigationTitleKeyVGGAA01_ghI0VyAA07ToolbarL0VGGAaBHPAjaBHPxAaBHD1__AiA0cI0HPyHCHC_AoaQHPyHCHCTm()
{
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable();
}

void type metadata accessor for [NavigationDestinationResolverBase](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unsigned int *storeEnumTagSinglePayload for Menu(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((v11 + 7 + v14) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(result + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v16) = 0;
      }

      else if (v20)
      {
        *(result + v16) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = ((result + v13) & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = 0;
            v27[1] = 0;
            *v27 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v27 = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(result + v16) = v22;
    }

    else
    {
      *(result + v16) = v22;
    }
  }

  else if (v20)
  {
    *(result + v16) = v22;
  }

  return result;
}

uint64_t static ToolbarContentBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v9, a3);
}

uint64_t View.searchable(text:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v80 = a3;
  v83 = a1;
  v84 = a2;
  v73 = a9;
  v72 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v60 - v17;
  v18 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v20 - 8);
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v60 - v24);
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v77 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v76 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *a5;

  if (a10)
  {
    v75 = a6;
    v81 = a10;
    v82 = a7;
    v28 = a8;
  }

  else
  {
    v75 = static Text.System.search.getter();
    v81 = v30;
    v82 = v29;
    v28 = v31;
  }

  v64 = v28;
  v65 = a6;
  v66 = a7;
  outlined copy of Text?(a6, a7, a8, a10);

  outlined copy of Text?(a6, a7, a8, a10);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v32 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v68 = a8;
  *v25 = v83;
  v25[1] = v32;
  v69 = v25;
  outlined init with copy of Binding<AttributedString>(v25, v79, type metadata accessor for Binding<AttributedString>);
  v33 = v77;
  v34 = &v76[v77[12]];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 8) = 0;
  v35 = v78;
  *v78 = 2;

  v36 = v28 & 1;
  outlined copy of Text.Storage(v75, v82, v28 & 1);
  v35[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v35 + 1) = 2;
  *(v35 + 1) = 0;
  v35[8] = 1;
  AttributedString.init()();
  v35[*(v18 + 40)] = 0;
  v37 = *(v18 + 44);
  v67 = a10;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
    v35 = v78;
  }

  v38 = &v35[v37];
  v39 = byte_1EAB095CC;
  *v38 = static SearchFocusUpdate.empty;
  v38[4] = v39;
  v40 = v81;

  v41 = v75;
  v42 = v82;
  v43 = outlined copy of Text.Storage(v75, v82, v36);
  MEMORY[0x18D009CE0](v86, v43);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v41, v42, v36);

  v44 = v76;
  *(v76 + 1) = v41;
  *(v44 + 16) = v42;
  v81 = v40;
  v82 = v42;
  *(v44 + 24) = v36;
  *(v44 + 32) = v40;
  outlined init with copy of Binding<AttributedString>(v79, v44 + v33[11], type metadata accessor for Binding<AttributedString>);
  v45 = v44 + v33[13];
  outlined init with copy of Binding<AttributedString>(v35, v45, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v45 + *(v46 + 28)) = 0;
  v47 = v44 + v33[10];
  v64 &= 1u;
  v87 = 1;
  v63 = v36;
  v86[0] = v83;
  v86[1] = v84;
  v86[2] = v80;
  v86[3] = a4;

  outlined copy of Text.Storage(v41, v42, v36);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v85);
  v48 = v85[1];
  v61 = v85[0];
  v62 = v87;
  type metadata accessor for Binding<TextSelection?>(0);
  v50 = v49;
  v51 = *(*(v49 - 8) + 56);
  v52 = v71;
  v51(v71, 1, 1, v49);
  type metadata accessor for TextField<EmptyView>();
  v53 = a4;
  v55 = *(v54 + 56);
  v51((v47 + v55), 1, 1, v50);
  LOBYTE(v86[0]) = 0;
  *(v47 + 72) = v61;
  *(v47 + 80) = v48;
  *(v47 + 88) = 0u;
  *(v47 + 104) = 0u;
  *(v47 + 120) = 0u;
  *(v47 + 136) = 0u;
  *(v47 + 152) = 0;
  *(v47 + 156) = 0;
  *(v47 + 160) = v62;
  *(v47 + 161) = 2;
  *(v47 + 163) = 0;
  *(v47 + 168) = 0;
  *(v47 + 180) = 0;
  v56 = v84;
  *v47 = v83;
  *(v47 + 8) = v56;
  v57 = v81;
  *(v47 + 16) = v80;
  *(v47 + 24) = v53;
  *(v47 + 32) = 0;
  v58 = v82;
  *(v47 + 40) = v41;
  *(v47 + 48) = v58;
  *(v47 + 56) = v64;
  *(v47 + 64) = v57;
  outlined assign with take of Binding<TextSelection?>?(v52, v47 + v55);

  *v44 = v70;
  outlined consume of Text.Storage(v41, v58, v63);

  outlined consume of Text?(v65, v66, v68, v67);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v78, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v79, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v69, type metadata accessor for Binding<AttributedString>);
  MEMORY[0x18D00A570](v44, v72, v77, v74);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v44, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t View.searchFocused(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v7 = 1;
  return View.searchFocused<A>(_:equals:)(v8, &v7, a4, MEMORY[0x1E69E6370], a5, MEMORY[0x1E69E6380], a6);
}

uint64_t FocusState.Binding.propertyID.getter()
{
  type metadata accessor for FocusStoreLocation();
  if (swift_dynamicCastClass())
  {
    return FocusStoreLocation.id.getter();
  }

  return type metadata accessor for FocusState.Binding.PrivateType();
}

uint64_t (*FocusStateBindingUpdateAction.init<A>(binding:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = type metadata accessor for FocusState.Binding();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(a3 - 8);
  v12 = (v10 + *(v9 + 64) + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v9 + 32))(v13 + v10, a1, v8);
  (*(v11 + 32))(v13 + v12, a2, a3);
  return partial apply for closure #1 in FocusStateBindingUpdateAction.init<A>(binding:value:);
}

uint64_t sub_18BEF7B9C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for FocusState.Binding() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + v3;

  v7 = type metadata accessor for Binding();
  v8 = *(v4 + 8);
  v8(v6 + *(v7 + 32), v1);
  v8(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t outlined destroy of SearchFocusContext?(uint64_t a1)
{
  type metadata accessor for SearchFocusContext?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SearchFocusContextKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of ToolbarItemPlacement?(&static SearchFocusContextKey.defaultValue, v1, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t static InsetGroupedListStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *a1;
  v20 = &type metadata for InsetGroupedListStyle;
  *&v21 = a3;
  *(&v21 + 1) = &protocol witness table for InsetGroupedListStyle;
  *&v22 = a4;
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  v6 = _GraphValue.value.getter();
  memset(v29, 0, sizeof(v29));
  v30 = 1;
  v7 = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  InsettableGroupedListBodyRule.init(base:insetMode:context:)(v6, v29, v8, &type metadata for InsetGroupedListStyleContext, &v20);
  v9 = v20;
  v10 = v23;
  v11 = BYTE1(v23);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>();
  v13 = v12;
  v14 = type metadata accessor for SelectionManagerBox();
  v15 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v18 = v22;
  v19 = v21;
  WitnessTable = swift_getWitnessTable();
  v20 = v13;
  *&v21 = v14;
  *(&v21 + 1) = v15;
  *&v22 = WitnessTable;
  type metadata accessor for InsettableGroupedListBody();
  v24 = v9;
  v26 = v18;
  v25 = v19;
  v27 = v10;
  v28 = v11;
  v20 = &type metadata for InsetGroupedListStyle;
  *&v21 = &type metadata for InsetGroupedListStyleContext;
  *(&v21 + 1) = a3;
  *&v22 = &protocol witness table for InsetGroupedListStyle;
  *(&v22 + 1) = v7;
  v23 = a4;
  type metadata accessor for InsettableGroupedListBodyRule();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<InsetGroupedListStyleContext>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders()
{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

uint64_t sub_18BEF8138()
{
  type metadata accessor for InsettableGroupedListBody.CollectionViewBody();
  type metadata accessor for InsettableGroupedListBody.TableViewRoot();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<PreferBaselineAlignedHeaders>)
  {
    lazy protocol witness table accessor for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<PreferBaselineAlignedHeaders>);
    }
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance CollectionViewGroupedListsEnabled(__int128 *a1)
{
  v1 = a1[1];
  v6 = *a1;
  v7 = v1;
  v8 = a1[2];
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  outlined init with copy of _GraphInputs(&v6, v5);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  if (LOBYTE(v5[0]) == 1 && (v5[0] = v6, v5[1] = v7, v5[2] = v8, (static InterfaceIdiomPredicate.evaluate(inputs:)() & 1) == 0))
  {
    lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature();
    v3 = static UserDefaultKeyedFeature.isEnabled.getter();
    outlined destroy of _GraphInputs(&v6);
    v2 = v3 ^ 1;
  }

  else
  {
    outlined destroy of _GraphInputs(&v6);
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t type metadata completion function for Grid()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Grid<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t type metadata completion function for LazyPlatformItemWriter()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAcces(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC()
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccess)
  {
    type metadata accessor for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryVie( 255,  &lazy cache variable for type metadata for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedCo,  type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>,  type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>);
    type metadata accessor for LazyPlatformItemWriter<LazySearchScopesKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ActionPlatformItemListFlags>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccess);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.S()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Envi)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAcces( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.Se,  type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC,  type metadata accessor for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>);
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarRoleKey>, &type metadata for ToolbarRoleKey, &protocol witness table for ToolbarRoleKey, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Envi);
    }
  }
}

void type metadata accessor for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryVie(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for StaticIf();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>()
{
  if (!lazy cache variable for type metadata for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for EnvironmentValues.SearchCustomScopeBar?);
    type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>(255);
    lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar? and conformance <A> A?, &lazy cache variable for type metadata for EnvironmentValues.SearchCustomScopeBar?);
    lazy protocol witness table accessor for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>();
    v0 = type metadata accessor for ViewInputsBinding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>);
    }
  }
}

void type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>()
{
  if (!lazy cache variable for type metadata for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for EnvironmentValues.SearchCustomAccessory?);
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>(255);
    lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?, &lazy cache variable for type metadata for EnvironmentValues.SearchCustomAccessory?);
    lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for ViewInputsBinding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>)
  {
    type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(255, &lazy cache variable for type metadata for ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>)
  {
    type metadata accessor for IDView<SearchFieldConfiguration.Suggestions, Bool>?(255);
    lazy protocol witness table accessor for type Button<Text>? and conformance <A> A?(&lazy protocol witness table cache variable for type IDView<SearchFieldConfiguration.Suggestions, Bool>? and conformance <A> A?, type metadata accessor for IDView<SearchFieldConfiguration.Suggestions, Bool>?, lazy protocol witness table accessor for type IDView<SearchFieldConfiguration.Suggestions, Bool> and conformance IDView<A, B>);
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Button<Text>? and conformance <A> A?(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for (ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)()
{
  if (!lazy cache variable for type metadata for (ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem))
  {
    type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(255, &lazy cache variable for type metadata for ToolbarItemGroup<UIKitSearchBarAdaptor>, type metadata accessor for UIKitSearchBarAdaptor, &protocol witness table for UIKitSearchBarAdaptor, type metadata accessor for ToolbarItemGroup);
    type metadata accessor for ToolbarItemGroup<Button<Text>?>();
    type metadata accessor for SearchToolbarItem();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(255, &lazy cache variable for type metadata for ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>(255);
    lazy protocol witness table accessor for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for LazyPlatformItemWriter<LazySearchScopesKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ActionPlatformItemListFlags>()
{
  if (!lazy cache variable for type metadata for LazyPlatformItemWriter<LazySearchScopesKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ActionPlatformItemListFlags>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, lazy protocol witness table accessor for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>);
    v0 = type metadata accessor for LazyPlatformItemWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyPlatformItemWriter<LazySearchScopesKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ActionPlatformItemListFlags>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>)
  {
    type metadata accessor for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>();
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>();
    lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes? and conformance <A> A?, &lazy cache variable for type metadata for SearchFieldConfiguration.Scopes?);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuSectionStyle and conformance MenuSectionStyle()
{
  result = lazy protocol witness table cache variable for type MenuSectionStyle and conformance MenuSectionStyle;
  if (!lazy protocol witness table cache variable for type MenuSectionStyle and conformance MenuSectionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuSectionStyle and conformance MenuSectionStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAc()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCu;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCu)
  {
    type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC();
    lazy protocol witness table accessor for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, Modifi();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCu);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarRoleKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarRoleKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarRoleKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarRoleKey>, &type metadata for ToolbarRoleKey, &protocol witness table for ToolbarRoleKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarRoleKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LazyPlatformItemWriter<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type HasCustomScopeBar and conformance HasCustomScopeBar()
{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasCustomAccessoryPredicate()
{
  lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory();
  PropertyList.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory()
{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

uint64_t static LazyPlatformItemWriter._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  v42 = a4;
  v43 = a3;
  v41 = a9;
  v92 = *MEMORY[0x1E69E9840];
  v14 = a2[3];
  v15 = a2[1];
  v88 = a2[2];
  v89 = v14;
  v16 = a2[3];
  v90 = a2[4];
  v17 = a2[1];
  v86 = *a2;
  v87 = v17;
  v82 = v88;
  v83 = v16;
  v84 = a2[4];
  v18 = *a1;
  v91 = *(a2 + 20);
  v85 = *(a2 + 20);
  v80 = v86;
  v81 = v15;
  outlined init with copy of _ViewInputs(&v86, &v68);
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
  v45 = v18;
  *&v68 = a5;
  *(&v68 + 1) = a6;
  *&v69 = a7;
  v44 = a8;
  *(&v69 + 1) = a8;
  v70 = a10;
  type metadata accessor for LazyPlatformItemWriter();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a6 - 8) + 64))
  {
    closure #1 in static LazyPlatformItemWriter._makeView(modifier:inputs:body:)(1, a5, a6, a7, v44, a10, *(&a10 + 1));
  }

  v37 = a5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v64[2] = v82;
  v64[3] = v83;
  v64[4] = v84;
  v65 = v85;
  v64[0] = v80;
  v64[1] = v81;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  LODWORD(v73[0]) = v85;
  v68 = v80;
  v69 = v81;
  PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v68, 1, v66);
  LODWORD(v58) = v18;
  outlined init with copy of _ViewInputs(v64, &v68);
  _GraphValue.value.getter();
  v20 = v44;
  closure #2 in static LazyPlatformItemWriter._makeView(modifier:inputs:body:)(1, a5, a6, a7, v44, a10, *(&a10 + 1));
  v40 = AGGraphCreateOffsetAttribute2();
  v21 = v87;
  v22 = swift_beginAccess();
  v39 = *(v21 + 16);
  v62 = v66[4];
  v63[0] = v67[0];
  *(v63 + 12) = *(v67 + 12);
  v58 = v66[0];
  v59 = v66[1];
  v60 = v66[2];
  v61 = v66[3];
  MEMORY[0x1EEE9AC00](v22);
  *&v68 = a7;
  *(&v68 + 1) = a6;
  *&v69 = *(&a10 + 1);
  *(&v69 + 1) = a10;
  v23 = type metadata accessor for PlatformItemListGenerator();
  v34 = v23;
  WitnessTable = swift_getWitnessTable();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v68, v66, v23);
  type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v58, closure #1 in Attribute.init<A>(_:)partial apply, v33, v23, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v72 = v62;
  v73[0] = v63[0];
  *(v73 + 12) = *(v63 + 12);
  v68 = v58;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v38 = *(v24 + 8);
  v27 = v38(&v68, v23);
  v36 = &v36;
  v57 = v91;
  v54 = v88;
  v55 = v89;
  v56 = v90;
  v52 = v86;
  v53 = v87;
  *&v78[0] = __PAIR64__(v78[0], v39);
  DWORD2(v78[0]) = v40;
  MEMORY[0x1EEE9AC00](v27);
  *&v58 = v37;
  *(&v58 + 1) = a6;
  *&v59 = a7;
  *(&v59 + 1) = v20;
  v60 = a10;
  updated = type metadata accessor for LazyPlatformItemWriter.UpdateEnvironment();
  v34 = updated;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v86, &v58);
  type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v78, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v33, updated, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  _GraphInputs.environment.setter();
  v74[2] = v54;
  v74[3] = v55;
  v74[4] = v56;
  v75 = v57;
  v74[0] = v52;
  v74[1] = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  v31 = outlined init with copy of _ViewInputs(v74, &v58);
  v43(v31, &v46);
  v38(v66, v23);
  v76[2] = v48;
  v76[3] = v49;
  v76[4] = v50;
  v77 = v51;
  v76[0] = v46;
  v76[1] = v47;
  outlined destroy of _ViewInputs(v76);
  v78[2] = v54;
  v78[3] = v55;
  v78[4] = v56;
  v79 = v57;
  v78[0] = v52;
  v78[1] = v53;
  outlined destroy of _ViewInputs(v78);
  v60 = v82;
  v61 = v83;
  v62 = v84;
  LODWORD(v63[0]) = v85;
  v58 = v80;
  v59 = v81;
  return outlined destroy of _ViewInputs(&v58);
}

uint64_t closure #1 in static LazyPlatformItemWriter._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v9 = type metadata accessor for LazyPlatformItemWriter();
  v10 = *(v9 + 76);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, partial apply for closure #1 in static PointerOffset.of(_:), v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

unint64_t lazy protocol witness table accessor for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext()
{
  result = lazy protocol witness table cache variable for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext;
  if (!lazy protocol witness table cache variable for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext);
  }

  return result;
}

uint64_t type metadata completion function for NavigableListModifier.BoundListSelectionDetector()
{
  type metadata accessor for SelectionManagerBox();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #3 in static NavigableListModifier._makeInputs(modifier:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for NavigableListModifier();
  v3 = *(v2 + 40);
  v8[2] = v2;
  v4 = type metadata accessor for NavigationStateHost();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_8, v8, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t specialized static ListPresentationPredicate.evaluate(inputs:)()
{
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag(), PropertyList.subscript.getter(), v5 == 1))
  {
    PropertyList.subscript.getter();
    v4 = v5;
    v3[0] = MEMORY[0x1E697F788];
    v2 = MEMORY[0x1E697F2A0];
    v3[1] = v3;
    v3[2] = &v2;
    v0 = AnyStyleContextType.acceptsAny<each A>(_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t static ListStyleWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ListStyleWriter();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static ListStyleWriter._makeInputs(modifier:inputs:)(1, a3);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for StyleType();
  lazy protocol witness table accessor for type ListStyleInput and conformance ListStyleInput();
  return PropertyList.subscript.setter();
}

uint64_t _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA17EnvironmentValuesV11SearchFieldV_TtB5Tm(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  type metadata accessor for StyleContextWriter<SidebarListStyleContext>(0, a1, a2, a3, type metadata accessor for SourceInput);
  a4();
  PropertyList.subscript.getter();
  if (!v8)
  {
    return *MEMORY[0x1E698D3F8];
  }

  v5 = *(v8 + 40);
  v6 = *(v8 + 44);

  if (v6)
  {
    return Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    return v5;
  }
}

uint64_t type metadata completion function for CollectionViewListRoot()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding();
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListPadding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[65])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t static CollectionViewListRoot._makeView(view:inputs:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, double *a7@<X8>)
{
  v41 = a7;
  v82 = *MEMORY[0x1E69E9840];
  updated = type metadata accessor for UpdateCollectionViewListCoordinator();
  v42 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v39 = &v35 - v13;
  LODWORD(v37) = *a1;
  v14 = *(a2 + 48);
  v78 = *(a2 + 32);
  v79 = v14;
  v80 = *(a2 + 64);
  v81 = *(a2 + 80);
  v15 = *(a2 + 16);
  v77[0] = *a2;
  v77[1] = v15;
  v73 = v78;
  v74 = v14;
  v75 = v80;
  v76 = v81;
  v71 = v77[0];
  v72 = v15;
  v16 = v15;
  swift_beginAccess();
  LODWORD(v65) = *(v16 + 16);
  *&v52 = a3;
  *(&v52 + 1) = a4;
  *&v53 = a5;
  *(&v53 + 1) = a6;
  v17 = type metadata accessor for CollectionViewListRoot.TransformContentEnvironment();
  v45[2] = v17;
  v45[3] = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v77, &v52);
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v65, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v45, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v38 = 0;
  _GraphInputs.environment.setter();
  LOBYTE(v52) = 0;
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type DisableListSections and conformance DisableListSections();
  PropertyList.subscript.getter();
  if (v52)
  {
    v20 = 96;
  }

  else
  {
    v20 = 356;
  }

  lazy protocol witness table accessor for type ListConcatenatesFooters and conformance ListConcatenatesFooters();
  PropertyList.subscript.getter();
  if (v52)
  {
    v21 = v20 & 0xFFFFFFFFFFFFDF3FLL | 0x2000;
  }

  else
  {
    v21 = v20;
  }

  v36 = v21;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  static ScrollGeometry.zero.getter();
  LOBYTE(v65) = 0;
  GraphHost.intern<A>(_:for:id:)();

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  v44[8] = a3;
  v44[9] = a4;
  v44[10] = a5;
  v44[11] = a6;
  v22 = v37;
  LODWORD(v61[0]) = v37;
  *&v52 = a3;
  *(&v52 + 1) = a4;
  v23 = a4;
  *&v53 = a5;
  *(&v53 + 1) = a6;
  v24 = a6;
  type metadata accessor for CollectionViewListRoot();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v59[0] = v71;
  v59[1] = v72;
  v59[2] = v73;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  *&v63[0] = v36;
  outlined init with copy of _GraphInputs(v59, &v52);
  _ViewListInputs.init(_:options:)();
  static View.makeDebuggableViewList(view:inputs:)();
  outlined destroy of _ViewListInputs(&v52);
  v60[0] = v71;
  v60[1] = v72;
  v60[2] = v73;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  outlined init with copy of _GraphInputs(v60, &v52);
  _ViewListInputs.init(_:)();
  v25 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListInputs(&v52);
  LODWORD(v65) = v22;
  v61[2] = v73;
  v61[3] = v74;
  v61[4] = v75;
  v62 = v76;
  v61[0] = v71;
  v61[1] = v72;
  outlined init with copy of _ViewInputs(v61, &v52);
  v26 = v39;
  UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(v25, &v65, &v71, IndirectAttribute2, v23, a3, v24, a5, v39);
  v37 = &v35;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v27 = type metadata accessor for CollectionViewListDataSource();
  WitnessTable = swift_getWitnessTable();
  *&v52 = v27;
  *(&v52 + 1) = v23;
  *&v53 = WitnessTable;
  *(&v53 + 1) = v24;
  v29 = type metadata accessor for UICollectionViewListCoordinator();
  v30 = updated;
  v44[2] = v29;
  v44[3] = updated;
  v44[4] = swift_getWitnessTable();
  v31 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v44, v30, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
  v33 = v52;
  AGGraphGetFlags();
  AGGraphSetFlags();
  v63[2] = v73;
  v63[3] = v74;
  v63[4] = v75;
  v64 = v76;
  v63[0] = v71;
  v63[1] = v72;
  v48 = v73;
  v49 = v74;
  v50 = v75;
  v51 = v76;
  v46 = v71;
  v47 = v72;
  outlined init with copy of _ViewInputs(v63, &v52);
  static CollectionViewListUtilities.makeOutputs<A, B>(inputs:coordinator:coordinatorKind:scrollGeometry:)(&v46, v33, 1, IndirectAttribute2, v27, v23, WitnessTable, v24, v41);
  v67 = v48;
  v68 = v49;
  v69 = v50;
  v70 = v51;
  v65 = v46;
  v66 = v47;
  outlined destroy of _ViewInputs(&v65);
  (*(v42 + 8))(v26, v30);
  outlined destroy of _ViewListOutputs(&v58);
  v54 = v73;
  v55 = v74;
  v56 = v75;
  v57 = v76;
  v52 = v71;
  v53 = v72;
  return outlined destroy of _ViewInputs(&v52);
}

uint64_t type metadata completion function for UpdateCollectionViewListCoordinator()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CollectionViewListDataSource();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier()
{
  result = lazy protocol witness table cache variable for type SubmitScopeModifier and conformance SubmitScopeModifier;
  if (!lazy protocol witness table cache variable for type SubmitScopeModifier and conformance SubmitScopeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitScopeModifier and conformance SubmitScopeModifier);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SearchEnvironmentWritingModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

void type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ListStyleContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ListStyleContent>, lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent, &type metadata for ListStyleContent, &lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

void type metadata completion function for BridgedListState()
{
  type metadata accessor for BridgedListState.ScrollTarget?(319, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_18BEFB4D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexPath();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t outlined init with take of BridgedListState.ScrollTarget?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_1(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *initializeWithCopy for BridgedListState(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 16))(v7, v8, v12);
    v13 = *(v9 + 20);
    v14 = &v7[v13];
    v15 = &v8[v13];
    *v14 = *v15;
    v14[16] = v15[16];
    v7[*(v9 + 24)] = v8[*(v9 + 24)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v16 = a3[6];
  v17 = a3[7];
  v18 = a1 + v16;
  v19 = a2 + v16;
  v18[112] = v19[112];
  v20 = *(v19 + 6);
  *(v18 + 5) = *(v19 + 5);
  *(v18 + 6) = v20;
  v21 = *(v19 + 4);
  v22 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v22;
  v23 = *(v19 + 3);
  *(v18 + 2) = *(v19 + 2);
  *(v18 + 3) = v23;
  *(v18 + 4) = v21;
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

uint64_t destroy for BridgedListState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for BridgedListState.ScrollTarget(0);
  result = (*(*(v4 - 8) + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = type metadata accessor for IndexPath();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v3, v6);
  }

  return result;
}

uint64_t sub_18BEFB8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t lazy protocol witness table accessor for type UpdateBridgedState and conformance UpdateBridgedState()
{
  result = lazy protocol witness table cache variable for type UpdateBridgedState and conformance UpdateBridgedState;
  if (!lazy protocol witness table cache variable for type UpdateBridgedState and conformance UpdateBridgedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateBridgedState and conformance UpdateBridgedState);
  }

  return result;
}

_DWORD *initializeWithCopy for TableViewListCore.UpdateBridgedState(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyInit();
  return a1;
}

void type metadata accessor for UIScrollView?()
{
  if (!lazy cache variable for type metadata for UIScrollView?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIScrollView);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIScrollView?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListScrollViewProvider and conformance ListScrollViewProvider()
{
  result = lazy protocol witness table cache variable for type ListScrollViewProvider and conformance ListScrollViewProvider;
  if (!lazy protocol witness table cache variable for type ListScrollViewProvider and conformance ListScrollViewProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListScrollViewProvider and conformance ListScrollViewProvider);
  }

  return result;
}

unint64_t type metadata accessor for Scrollable()
{
  result = lazy cache variable for type metadata for Scrollable;
  if (!lazy cache variable for type metadata for Scrollable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Scrollable);
  }

  return result;
}

uint64_t type metadata accessor for ListRepresentable()
{
  return swift_getGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

uint64_t SearchModifier.adjustedState.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  type metadata accessor for Binding<AttributedString>();
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Binding<(SearchFieldState, AttributedString)>(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Binding<((SearchFieldState, AttributedString), Bool)>(0);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  v35 = v2;
  State.projectedValue.getter();
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v2 + *(a1 + 44), v6, type metadata accessor for Binding<AttributedString>);
  v18 = v10[1];
  v19 = *(v6 + 1);
  v38 = v12;

  v39 = v8;
  MEMORY[0x18D00ACC0](v8);
  type metadata accessor for (SearchFieldState, AttributedString)();
  v21 = v20;
  MEMORY[0x18D00ACC0](v36);
  v43 = v18;
  v44 = v19;
  type metadata accessor for LocationBox<SearchZipLocation>();
  swift_allocObject();
  v22 = LocationBox.init(_:)();
  outlined destroy of SearchEnvironmentWritingModifier(v6, type metadata accessor for Binding<AttributedString>);
  v23 = *v10;

  outlined destroy of SearchEnvironmentWritingModifier(v10, type metadata accessor for Binding<SearchFieldState>);
  *v14 = v23;
  v14[1] = v22;
  v24 = (v35 + *(a1 + 48));
  v25 = *v24;
  v26 = v24[1];
  if (*(v24 + 17))
  {
    v27 = *(v24 + 16);
  }

  else
  {
    v41 = v25 & 1;
    v42 = v26;
    _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v25 = v43;
    v26 = v44;
    v27 = v45;
  }

  v43 = v25;
  v44 = v26;
  v45 = v27 & 1;
  Binding.zip<A>(with:)();

  outlined destroy of SearchEnvironmentWritingModifier(v14, type metadata accessor for Binding<(SearchFieldState, AttributedString)>);
  v28 = v17 + *(v37 + 32);
  v29 = *(v21 + 48);
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)();
  v31 = v40;
  SearchStateProjection.get(base:)(v28, (v28 + v29), *(v28 + *(v30 + 48)), v40 + *(v39 + 32));
  lazy protocol witness table accessor for type SearchStateProjection and conformance SearchStateProjection();
  v32 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v31 = *v17;
  v31[1] = v32;

  return outlined destroy of SearchEnvironmentWritingModifier(v17, type metadata accessor for Binding<((SearchFieldState, AttributedString), Bool)>);
}

void type metadata accessor for (SearchFieldState, AttributedString)()
{
  if (!lazy cache variable for type metadata for (SearchFieldState, AttributedString))
  {
    type metadata accessor for SearchFieldState(255);
    type metadata accessor for AttributedString();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SearchFieldState, AttributedString));
    }
  }
}

void type metadata accessor for ((SearchFieldState, AttributedString), Bool)()
{
  if (!lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool))
  {
    type metadata accessor for (SearchFieldState, AttributedString)();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool));
    }
  }
}

void type metadata accessor for LocationBox<SearchZipLocation>()
{
  if (!lazy cache variable for type metadata for LocationBox<SearchZipLocation>)
  {
    lazy protocol witness table accessor for type SearchZipLocation and conformance SearchZipLocation();
    v0 = type metadata accessor for LocationBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LocationBox<SearchZipLocation>);
    }
  }
}

uint64_t SearchStateProjection.get(base:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v66 = a1;
  v67 = a2;
  v68 = a4;
  v4 = type metadata accessor for AttributedString.CharacterView();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  v63 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v70 = v58 - v12;
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v58 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v58 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v58 - v24;
  type metadata accessor for (SearchFieldState, AttributedString)();
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchFieldState(v66, v29, type metadata accessor for SearchFieldState);
  v30 = &v29[*(v27 + 56)];
  v58[0] = *(v7 + 16);
  v58[1] = v7 + 16;
  (v58[0])(v30, v67, v6);
  outlined init with take of (SearchFieldState, AttributedString)(v29, v25, type metadata accessor for (SearchFieldState, AttributedString));
  v25[*(v14 + 56)] = v65;
  v64 = v22;
  outlined init with copy of (SearchFieldState, Bool)(v25, v22, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v67 = *(v27 + 56);
  v31 = v68;
  outlined init with take of (SearchFieldState, AttributedString)(v22, v68, type metadata accessor for SearchFieldState);
  v32 = v19;
  outlined init with copy of (SearchFieldState, Bool)(v25, v19, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v33 = &v19[*(v27 + 56)];
  v34 = v70;
  v35 = v63;
  (*(v7 + 32))(v70, v33, v63);
  v66 = v25;
  outlined init with copy of (SearchFieldState, Bool)(v25, v16, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v36 = *(v27 + 56);
  v37 = v7;
  v65 = v16[*(v14 + 56)];
  v38 = *(v7 + 8);
  v38(&v16[v36], v35);
  _s7SwiftUI16SearchFieldStateVWOhTm_4(v16, type metadata accessor for SearchFieldState);
  v39 = v35;
  _s7SwiftUI16SearchFieldStateVWOhTm_4(v32, type metadata accessor for SearchFieldState);
  v38(&v67[v64], v35);
  v40 = *(type metadata accessor for SearchFieldState(0) + 36);
  lazy protocol witness table accessor for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v41 = *v31;
    goto LABEL_3;
  }

  v45 = v69;
  v46 = v34;
  v47 = v58[0];
  (v58[0])(v69, v46, v39);
  v67 = v38;
  v48 = v59;
  v47(v59, &v31[v40], v39);
  (*(v37 + 24))(&v31[v40], v45, v39);
  v49 = v60;
  AttributedString.characters.getter();
  v64 = AttributedString.CharacterView._count.getter();
  v50 = v62;
  v51 = *(v61 + 8);
  v51(v49, v62);
  AttributedString.characters.getter();
  v52 = AttributedString.CharacterView._count.getter();
  v51(v49, v50);
  v53 = v48;
  v38 = v67;
  (v67)(v53, v39);
  result = (v38)(v69, v39);
  v54 = v52 - v64;
  if (__OFSUB__(v52, v64))
  {
    __break(1u);
  }

  else
  {
    v34 = v70;
    if ((v54 & 0x8000000000000000) == 0 || (v55 = __OFSUB__(0, v54), v54 = v64 - v52, !v55))
    {
      v41 = *v31;
      if (v54 == 1)
      {
        v56 = v52 < 1;
        v42 = v66;
        if (!v56)
        {
          if (v41 == 2)
          {
            v43 = v65;
            if ((v65 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v57 = v31[2];
            v43 = v65;
            if (v57 != 2 || (v57 = v31[3], v57 != 2))
            {
              if (v57)
              {
                *v31 = 1;
              }
            }

            if (v43)
            {
              goto LABEL_6;
            }
          }

          goto LABEL_5;
        }

LABEL_4:
        v43 = v65;
        if ((v65 ^ (v41 == 2)))
        {
LABEL_6:
          v38(v34, v39);
          return outlined destroy of (SearchFieldState, Bool)(v42, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
        }

LABEL_5:
        SearchFieldState.isSearching.setter(v43);
        goto LABEL_6;
      }

LABEL_3:
      v42 = v66;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for ((SearchFieldState, AttributedString), Bool)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined init with copy of (SearchFieldState, Bool)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (SearchFieldState, Bool)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t property wrapper backing initializer of SearchField.state@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for State<SearchFieldState>(0);
  *(a2 + *(v4 + 28)) = 0;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(a1, a2, type metadata accessor for SearchFieldState);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t outlined destroy of StateOrBinding<SearchFieldState>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of StateOrBinding<Bool>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

void *initializeWithCopy for SearchEnvironmentWritingModifier(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = *(a3 + 20);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a2 + v17 + 8);
  *v18 = *(a2 + v17);
  *(v18 + 1) = v20;
  type metadata accessor for Binding<AttributedString>();
  v22 = *(v21 + 32);

  v13(&v18[v22], &v19[v22], v12);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t outlined init with copy of Binding<SearchFieldState>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage()
{
  result = lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage;
  if (!lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage)
  {
    type metadata accessor for SearchEnvironmentStorage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage);
  }

  return result;
}

uint64_t specialized static SearchEnvironmentWritingModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SearchEnvironmentWritingModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(Value, v8, type metadata accessor for SearchEnvironmentWritingModifier);
  v10 = v8[*(v6 + 24)];
  v17 = v8[*(v6 + 24)];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v11 = *(a2 + 8);
  if (v11)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  v12 = *v5;
  outlined destroy of SearchEnvironmentWritingModifier(v5, type metadata accessor for SearchFieldState);
  v16 = v12 != 2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v11)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    if (v10 != 4)
    {
      return outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchEnvironmentWritingModifier);
    }

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v15)
    {
      return outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchEnvironmentWritingModifier);
    }
  }

  else
  {

    if (v10 != 4)
    {
      return outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchEnvironmentWritingModifier);
    }

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    if (v15)
    {
      return outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchEnvironmentWritingModifier);
    }
  }

  v14[12] = 1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v11)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    return outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchEnvironmentWritingModifier);
  }

  outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchEnvironmentWritingModifier);
}

uint64_t protocol witness for Location.wasRead.setter in conformance SearchZipLocation()
{

  dispatch thunk of AnyLocation.wasRead.setter();
  dispatch thunk of AnyLocation.wasRead.setter();
}

uint64_t SearchPrimitiveModifier.MakeBaseView.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchPrimitiveModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance SearchPrimitiveModifier<A>.MakeForwardEnv@<X0>(uint64_t a1@<X8>)
{
  result = SearchPrimitiveModifier.MakeForwardEnv.value.getter();
  *a1 = result & 1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t SearchPrimitiveModifier.MakeForwardEnv.value.getter()
{
  v0 = *AGGraphGetValue();
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined copy of AppIntentExecutor?(*Value);
  return v0;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>);
    }
  }
}

unint64_t destroy for SearchPrimitiveModifier.BaseSearchImplementation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v25 = *(a2 + 16);
  v6 = *(v5 + 80);
  v7 = *(v25 - 8);
  v8 = *(v7 + 80);
  v9 = ((a1 + (v6 | v8 | 7) + 1) & ~(v6 | v8 | 7));
  v10 = *(v5 + 64) + ((v6 + 9) & ~v6);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v12 = (v10 & 0xFFFFFFFFFFFFFFF8) + 24;
  v13 = *(v5 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  if (v11 + ((v6 + 16) & v13) <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11 + ((v6 + 16) & v13);
  }

  v15 = v9[v14];
  v16 = v15 - 2;
  if (v15 < 2)
  {
    goto LABEL_18;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = *v9;
  }

  else if (v17 == 2)
  {
    v18 = *v9;
  }

  else if (v17 == 3)
  {
    v18 = *v9 | (v9[2] << 16);
  }

  else
  {
    v18 = *v9;
  }

  v19 = (v18 | (v16 << (8 * v14))) + 2;
  v15 = v18 + 2;
  if (v14 < 4)
  {
    v15 = v19;
  }

LABEL_18:
  v20 = ~v6;
  if (v15 == 1)
  {

    (*(v5 + 8))((v6 + ((((v6 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v13) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v20, v4);
  }

  else
  {
    (*(v5 + 8))(&v9[v6 + 9] & v20, v4);
  }

  v21 = &v9[v14 + 8] & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 17);
  if (v22 >= 2)
  {
    v22 = *v21 + 2;
  }

  if (v22 == 1)
  {
  }

  (*(v7 + 8))((v8 + v21 + 18) & ~v8, v25);
  v23 = &v9[*(v7 + 64) + 8 + ((v8 + (v14 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v8)] & 0xFFFFFFFFFFFFFFF8;
  if (*(v23 + 8))
  {
  }

  result = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 41))
  {
    if (*(result + 40) == 1)
    {

      return __swift_destroy_boxed_opaque_existential_1(result);
    }
  }

  else
  {
  }

  return result;
}

uint64_t SearchPrimitiveModifier.SearchConfigModifier.init(searchField:placement:forwardEnv:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SearchField();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier();
  *(a6 + *(result + 36)) = a2;
  v14 = a6 + *(result + 40);
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = a5;
  return result;
}

uint64_t initializeWithCopy for SearchOverlayView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(v4, a2 + 8);
    *(a1 + 48) = 1;
  }

  else
  {
    v6 = *(a2 + 24);
    *v4 = *(a2 + 8);
    v4[1] = v6;
    *(v4 + 25) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v9, v10);
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  return a1;
}

uint64_t destroy for SearchPrimitiveModifier.SearchConfigModifier(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 9) & ~v6) + *(v5 + 64);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 + ((v6 + 16) & ~(v6 | 3)) <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8 + ((v6 + 16) & ~(v6 | 3));
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_20;
  }

  if (v10 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 4;
  }

  if (v13 <= 1)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = *a1;
    if (v10 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v13 == 2)
  {
    v14 = *a1;
    if (v10 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
      if (v10 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v11 = v14 + 2;
      goto LABEL_20;
    }

    v14 = *a1;
    if (v10 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v11 = (v14 | (v12 << (8 * v10))) + 2;
LABEL_20:
  v15 = ~v6;
  if (v11 == 1)
  {

    (*(v5 + 8))((v6 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + (v6 | 3) + 8) & ~(v6 | 3)) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v15, v4);
  }

  else
  {
    (*(v5 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 5) & v15, v4);
  }

  v16 = &a1[v10 + 8] & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 17);
  if (v17 >= 2)
  {
    v17 = *v16 + 2;
  }

  if (v17 == 1)
  {
  }

  v18 = *(*(a2 + 16) - 8);
  v19 = v18 + 8;
  v20 = *(v18 + 80);
  result = (*(v18 + 8))((v16 + v20 + 18) & ~v20);
  if (*((&a1[*(v19 + 56) + 1 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v20 + 26) & ~v20)] & 0xFFFFFFFFFFFFFFF8) + 16))
  {
  }

  return result;
}

uint64_t destroy for SearchOverlayView(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Selector?>.Content(*(a1 + 72), *(a1 + 80));
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for ToolbarSearchFieldStyle(uint64_t result, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    result = v4;
    *(v4 + 40) = 1;
  }

  else
  {
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    *(result + 25) = *(a2 + 25);
  }

  *(result + 41) = *(a2 + 41);
  return result;
}

uint64_t outlined destroy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarModifier(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 > 0x7FFFFFFE)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for PlatformSearchFieldStyle.Implementation()
{
  result = type metadata accessor for SearchFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SearchFieldConfiguration.Control(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control);
  }

  return result;
}

uint64_t type metadata completion function for TextInputSuggestionsModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SearchFieldConfiguration.Suggestions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SearchFieldConfigurationReader<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t closure #1 in static SearchFieldConfigurationReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for SearchFieldConfigurationReader();
  v8 = *(v7 + 60);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TokenFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata completion function for TokenFieldConfiguration()
{
  type metadata accessor for Binding<AttributedString>();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel()
{
  result = lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel;
  if (!lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel;
  if (!lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel);
  }

  return result;
}

uint64_t sub_18BEFE560()
{
  type metadata accessor for ResolvedTextFieldStyle();
  lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(&lazy protocol witness table cache variable for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle, type metadata accessor for ResolvedTextFieldStyle);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesEditMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>);
  return swift_getWitnessTable();
}

uint64_t lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI22ResolvedTextFieldStyleVAcA4ViewAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedTextFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7SwiftUI22ResolvedTextFieldStyleVAcA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle, type metadata accessor for ResolvedTextFieldStyle);

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

void type metadata completion function for SearchFieldConfiguration.Data()
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(319, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for WritableKeyPath<TextFieldState, String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t SearchFieldConfigurationReader.MakeContent.value.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = a7;
  v19 = HIDWORD(a1);
  v13 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  SearchFieldConfigurationReader.MakeContent.config.getter(a1, a2, a3, a4, a5, a6, &v19 - v15);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a1;
  v27 = v19;
  v28 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in SearchFieldConfigurationReader.MakeContent.value.getter, v21, MEMORY[0x1E69E73E0], a3, v17, v20);
  return _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v16, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, v13);
}

uint64_t SearchFieldConfigurationReader.MakeContent.config.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v9 = type metadata accessor for SearchFieldConfiguration.Data(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24[-v18];
  Value = AGGraphGetValue();
  outlined init with copy of SearchFieldConfiguration.Data?(Value, v19, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, v13);
  outlined init with copy of SearchFieldConfiguration.Data?(v19, v16, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, v13);
  v21 = 1;
  if ((*(v10 + 48))(v16, 1, v9) != 1)
  {
    outlined init with take of (SearchFieldState, AttributedString)(v16, v12, type metadata accessor for SearchFieldConfiguration.Data);
    closure #1 in SearchFieldConfigurationReader.MakeContent.config.getter(v12, a1, v25, v26, v27, v28, v29, a7);
    _s7SwiftUI16SearchFieldStateVWOhTm_4(v12, type metadata accessor for SearchFieldConfiguration.Data);
    v21 = 0;
  }

  _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v19, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, MEMORY[0x1E69E6720]);
  v22 = type metadata accessor for SearchFieldConfiguration(0);
  return (*(*(v22 - 8) + 56))(a7, v21, 1, v22);
}

uint64_t protocol witness for Location.update() in conformance SearchZipLocation(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for (SearchFieldState, AttributedString)();
  v6 = a1 + *(v5 + 48);

  return SearchZipLocation.update()(a1, v6, v4, v3);
}

uint64_t protocol witness for Projection.get(base:) in conformance SearchStateProjection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (SearchFieldState, AttributedString)();
  v5 = *(v4 + 48);
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v7 = *(a1 + *(v6 + 48));

  return SearchStateProjection.get(base:)(a1, (a1 + v5), v7, a2);
}

void type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle;
  if (!lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>, &type metadata for SearchSuggestionsPlacement, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in SearchField.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle, &type metadata for SearchFieldConfigurationTokenFieldStyle, type metadata accessor for TokenFieldStyleModifier);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = type metadata accessor for SearchField();
  SearchField.resolvedControl.getter(v11);
  v15[2] = a3;
  v15[3] = &protocol witness table for TextFieldStyleModifier<A>;
  v15[0] = swift_getWitnessTable();
  v15[1] = &protocol witness table for TokenFieldStyleModifier<A>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  static ViewBuilder.buildExpression<A>(_:)(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t storeEnumTagSinglePayload for TextFieldState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for TextFieldState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v5)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v6;

      *(a1 + 32) = *(a2 + 32);

      goto LABEL_6;
    }

    outlined destroy of TextFieldState.FormatActions(a1 + 16);
  }

  v7 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v7;
LABEL_6:
  v8 = *(a2 + 48);
  if (!*(a1 + 48))
  {
LABEL_10:
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    goto LABEL_11;
  }

  if (!v8)
  {
    outlined destroy of TextFieldState.FormatActions(a1 + 48);
    goto LABEL_10;
  }

  v9 = *(a2 + 56);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;

  *(a1 + 64) = *(a2 + 64);

LABEL_11:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 91) = *(a2 + 91);
  return a1;
}

uint64_t TextField.$state.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = *(v3 + 108);
  if (v4)
  {
    v5 = v3[4];
    v6 = v3[5];
    a2[4] = v5;
    a2[5] = v6;
    v7 = *(v3 + 92);
    *(a2 + 92) = v7;
    v8 = *v3;
    v9 = v3[1];
    *a2 = *v3;
    a2[1] = v9;
    v11 = v3[2];
    v10 = v3[3];
    a2[2] = v11;
    a2[3] = v10;
    v23 = v8;
    v24 = v9;
    v25 = v11;
    v26 = v10;
    v27 = v5;
    *v28 = v6;
    *&v28[12] = v7;
    v29 = v4;
    return outlined init with copy of State<TextFieldState>(&v23, v21, &lazy cache variable for type metadata for Binding<TextFieldState>, MEMORY[0x1E6981948]);
  }

  else
  {
    v19 = v3[5];
    v20 = *(v3 + 12);
    v14 = *v3;
    v15 = v3[1];
    v16 = v3[2];
    v17 = v3[3];
    v27 = v3[4];
    v18 = v27;
    *v28 = v19;
    *&v28[12] = *(v3 + 92);
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v29 = v4;
    v13 = MEMORY[0x1E6981790];
    outlined init with copy of State<TextFieldState>(&v23, v21, &lazy cache variable for type metadata for State<TextFieldState>, MEMORY[0x1E6981790]);
    type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v13);
    State.projectedValue.getter();
    v21[4] = v18;
    v21[5] = v19;
    v22 = v20;
    v21[0] = v14;
    v21[1] = v15;
    v21[2] = v16;
    v21[3] = v17;
    return outlined destroy of State<TextFieldState>(v21, &lazy cache variable for type metadata for State<TextFieldState>, v13);
  }
}

void type metadata accessor for Binding<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySiGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for ResolvedTextFieldStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = *(a2 + 64);

  if (v6)
  {
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    outlined copy of Text.Storage(v7, v8, v9);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    *(a1 + 64) = v6;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  v17 = *(a2 + 128);
  v38 = *(a2 + 136);
  v39 = *(a2 + 144);
  v40 = *(a2 + 152);
  v41 = *(a2 + 160);
  v42 = *(a2 + 168);
  __dsta = *(a2 + 176);
  v45 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v10, v11, v12, v13, v14, v15, v16, v17, v38, v39, v40, v41, v42, __dsta, v45);
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a1 + 136) = v38;
  *(a1 + 144) = v39;
  *(a1 + 152) = v40;
  *(a1 + 160) = v41;
  *(a1 + 168) = v42;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v45;
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v19 = *(v18 + 56);
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for Binding<TextSelection?>(0);
  v23 = v22;
  v24 = *(v22 - 8);
  if ((*(v24 + 48))(v21, 1, v22))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v26 = v21[1];
    *v20 = *v21;
    v20[1] = v26;
    v27 = *(v23 + 32);
    v46 = v20;
    __dst = v20 + v27;
    v28 = v21 + v27;
    v29 = type metadata accessor for TextSelection(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);

    v32 = v28;

    if (v31(v28, 1, v29))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v28, *(*(v33 - 8) + 64));
      v34 = v46;
    }

    else
    {
      v35 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v36 - 8) + 16))(__dst, v28, v36);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v28, *(*(v35 - 8) + 64));
      }

      v34 = v46;
      __dst[*(v29 + 20)] = v32[*(v29 + 20)];
      (*(v30 + 56))(__dst, 0, 1, v29);
    }

    (*(v24 + 56))(v34, 0, 1, v23);
  }

  return a1;
}

uint64_t TextFieldStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t outlined init with copy of Binding<TextFieldState>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, ValueMetadata *))
{
  type metadata accessor for Binding<TextFieldState>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_18BEFFCF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }
}

void *initializeWithCopy for ResolvedSearchFieldStyle(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  v12 = *(*(v11 - 8) + 16);

  v12(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v13 = v9[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v14[4] = v15[4];
  *v14 = *v15;
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = v19[8];
  if (v20 == 255)
  {
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    v21 = *v19;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(*v19, v20 & 1);
    *v18 = v21;
    v18[8] = v22;
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  v27 = *(v25 + 1);
  v28 = v25[16];
  outlined copy of Text.Storage(v26, v27, v28);
  *v24 = v26;
  *(v24 + 1) = v27;
  v24[16] = v28;
  *(v24 + 3) = *(v25 + 3);

  return a1;
}

uint64_t destroy for ResolvedSearchFieldStyle(uint64_t a1)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v3 = *(v2 + 32);
  v4 = a1 + *(type metadata accessor for SearchFieldState(0) + 36);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(v4 + v3, v5);
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = a1 + *(v6 + 24);
  v8 = *(v7 + 8);
  if (v8 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v7, v8 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(v6 + 32)), *(a1 + *(v6 + 32) + 8), *(a1 + *(v6 + 32) + 16));
}

uint64_t View.viewAlias<A, B, C>(if:_:source:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v32 = a3;
  v27 = a4;
  v28 = a2;
  v30 = a6;
  v31 = a7;
  v29 = a8;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v12;
  v34 = v13;
  v35 = v15;
  v36 = v14;
  v16 = type metadata accessor for StaticSourceWriter();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v20 = type metadata accessor for StaticIf();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v26 - v23;
  v28(v22);
  (*(v9 + 32))(v19, v11, a5);
  ViewModifier.requiring<A>(_:)(v27, v16);
  (*(v17 + 8))(v19, v16);
  MEMORY[0x18D00A570](v24, v32, v20, v31);
  return (*(v21 + 8))(v24, v20);
}

uint64_t closure #1 in static NavigableListModifier._makeInputs(modifier:inputs:)(uint64_t a1)
{
  v6[2] = type metadata accessor for NavigableListModifier();
  v2 = MEMORY[0x1E6981EA0];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey);
  }

  return result;
}

uint64_t outlined init with take of (SearchFieldState, AttributedString)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t initializeWithCopy for SearchPrimitiveModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  outlined copy of Text.Storage(v6, v7, v8);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = *(v5 + 32);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80);
  v14 = (v13 + 40 + v4) & ~v13;
  v81 = v13 + 40;
  v93 = v13;
  v15 = (v13 + 40 + v5) & ~v13;

  v83 = v11;
  v84 = v9;
  v11(v14, v15, v9);
  v16 = *(v12 + 48);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v20 = v18 + 16;
  v21 = *(v18 + 80);
  v91 = v16;
  v22 = (v21 | 7) + v16;
  v23 = ((v22 + v14) & ~(v21 | 7));
  v87 = v21 | 7;
  v24 = ((v22 + v15) & ~(v21 | 7));
  *v23 = *v24;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = v25 + v21 + 8;
  v79 = v21 + 8;
  v28 = v26 + v21 + 8;

  v88 = v19;
  v89 = v17;
  v19(v27 & ~v21, v28 & ~v21, v17);
  v92 = v21;
  v86 = *(v20 + 48);
  v80 = v86 + ((v21 + 16) & ~v21);
  v29 = (v23 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v24 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 17);
  if (v31 >= 2)
  {
    v31 = *v30 + 2;
  }

  v90 = ~v93;
  v32 = ~v87;
  v33 = ~v21;
  if (v31 == 1)
  {
    *v29 = *v30;
    *(v29 + 8) = *(v30 + 8);
    *(v29 + 16) = *(v30 + 16);

    v34 = 1;
  }

  else
  {
    v34 = 0;
    *v29 = *v30;
    *(v29 + 8) = *(v30 + 8);
  }

  *(v29 + 17) = v34;
  v35 = (v87 + 18 + v29) & v32;
  v36 = (v87 + 18 + v30) & v32;
  *v35 = *v36;
  *(v35 + 1) = *(v36 + 1);
  *(v35 + 2) = *(v36 + 2);
  *(v35 + 3) = *(v36 + 3);
  v37 = *(v36 + 4);
  *(v35 + 8) = *(v36 + 8);
  *(v35 + 4) = v37;
  v38 = v21 + 9;
  v39 = (v21 + 9 + v36) & v33;
  v88((v21 + 9 + v35) & v33, v39, v89);
  v40 = ((v21 + 9 + v35) & v33) + v86;
  *v40 = *(v39 + v86);
  v40 &= 0xFFFFFFFFFFFFFFFCLL;
  v41 = (v39 + v86) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = *(v41 + 4);
  *(v40 + 8) = *(v41 + 8);
  *(v40 + 4) = v42;
  v43 = v86 + ((v21 + 9) & v33);
  v44 = v21 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v45 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + ((v21 + 16) & v44);
  v46 = v43 + 16;
  *((v43 + 16 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v43 + 16 + v36) & 0xFFFFFFFFFFFFFFF8);
  v47 = (v43 & 0xFFFFFFFFFFFFFFF8) + 24;
  v48 = ((v87 + 18 + ((v80 + (((v81 & v90) + v91 + v87) & v32) + 7) & 0xFFFFFFFFFFFFFFF8)) & v32) + v47 + (v87 | v93);
  v49 = (v48 + a1) & ~(v87 | v93);
  v50 = ((v48 + a2) & ~(v87 | v93));
  v51 = v45 + 9;
  if (v51 <= v47)
  {
    v52 = v47;
  }

  else
  {
    v52 = v51;
  }

  v53 = v50[v52];

  if (v53 >= 2)
  {
    if (v52 <= 3)
    {
      v54 = v52;
    }

    else
    {
      v54 = 4;
    }

    if (v54 <= 1)
    {
      if (!v54)
      {
        goto LABEL_23;
      }

      v55 = *v50;
      if (v52 < 4)
      {
LABEL_26:
        if ((v55 | ((v53 - 2) << (8 * v52))) != 0xFFFFFFFF)
        {
          goto LABEL_27;
        }

LABEL_24:
        *v49 = *v50;
        v56 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
        v57 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v56 = *v57;
        v58 = ((v56 + v79) & v44);
        v59 = ((v57 + v79) & v44);
        v60 = (v59 + 7);
        *v58 = *v59;
        v58[1] = v59[1];
        v58[2] = v59[2];
        v58[3] = v59[3];
        v61 = (v58 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v62 = v60 & 0xFFFFFFFFFFFFFFFCLL;
        LODWORD(v60) = *(v60 & 0xFFFFFFFFFFFFFFFCLL);
        *(v61 + 4) = *(v62 + 4);
        *v61 = v60;
        v63 = (v92 + 5 + v61) & v33;
        v64 = (v92 + 5 + v62) & v33;

        v88(v63, v64, v89);
        *(v63 + v86) = *(v64 + v86);
        v65 = (v63 + v86) & 0xFFFFFFFFFFFFFFFCLL;
        v66 = (v64 + v86) & 0xFFFFFFFFFFFFFFFCLL;
        v67 = *(v66 + 4);
        *(v65 + 8) = *(v66 + 8);
        *(v65 + 4) = v67;
        v68 = 1;
        goto LABEL_28;
      }
    }

    else if (v54 == 2)
    {
      v55 = *v50;
      if (v52 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v54 == 3)
    {
      v55 = *v50 | (v50[2] << 16);
      if (v52 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v55 = *v50;
      if (v52 < 4)
      {
        goto LABEL_26;
      }
    }

    v53 = v55 + 2;
  }

LABEL_23:
  if (v53 == 1)
  {
    goto LABEL_24;
  }

LABEL_27:
  *v49 = *v50;
  *(v49 + 1) = v50[1];
  *(v49 + 2) = v50[2];
  *(v49 + 3) = v50[3];
  v69 = *(v50 + 1);
  *(v49 + 8) = v50[8];
  *(v49 + 4) = v69;
  v70 = &v50[v38] & v33;
  v88((v38 + v49) & v33, v70, v89);
  v71 = ((v38 + v49) & v33) + v86;
  *v71 = *(v70 + v86);
  v71 &= 0xFFFFFFFFFFFFFFFCLL;
  v72 = (v70 + v86) & 0xFFFFFFFFFFFFFFFCLL;
  v73 = *(v72 + 4);
  *(v71 + 8) = *(v72 + 8);
  *(v71 + 4) = v73;
  *((v46 + v49) & 0xFFFFFFFFFFFFFFF8) = *(&v50[v46] & 0xFFFFFFFFFFFFFFF8);

  v68 = 0;
LABEL_28:
  *(v49 + v52) = v68;
  v74 = (v52 + 8 + v49) & 0xFFFFFFFFFFFFFFF8;
  v75 = &v50[v52 + 8] & 0xFFFFFFFFFFFFFFF8;
  v76 = *(v75 + 17);
  if (v76 >= 2)
  {
    v76 = *v75 + 2;
  }

  if (v76 == 1)
  {
    *v74 = *v75;
    *(v74 + 8) = *(v75 + 8);
    *(v74 + 16) = *(v75 + 16);

    v77 = 1;
  }

  else
  {
    v77 = 0;
    *v74 = *v75;
    *(v74 + 8) = *(v75 + 8);
  }

  *(v74 + 17) = v77;
  v83((v93 + 18 + v74) & v90, (v93 + 18 + v75) & v90, v84);
  *(((v93 + 18 + v74) & v90) + v91) = *(((v93 + 18 + v75) & v90) + v91);
  return a1;
}

uint64_t destroy for SearchPrimitiveModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*((a1 & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + 16), *(v3 + 24));

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v39 = v5 + 8;
  v6 = *(v5 + 80);
  v35 = *(v5 + 8);
  v35((v6 + 40 + v3) & ~v6, v4);
  v7 = *(v39 + 56);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10 | 7;
  v32 = v7;
  v12 = ((v10 | 7) + v7 + ((v6 + 40 + v3) & ~v6)) & ~(v10 | 7);

  v38 = *(v9 + 8);
  v38((v10 + 8 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v10, v8);
  v13 = *(v9 + 64);
  v31 = v13 + ((v10 + 16) & ~v10);
  v14 = (v31 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 17);
  if (v15 >= 2)
  {
    v15 = *v14 + 2;
  }

  v34 = ~v6;
  v16 = ~v11;
  v36 = v4;
  v37 = ~v10;
  if (v15 == 1)
  {
  }

  v38((v10 + 9 + ((v11 + 18 + v14) & v16)) & v37, v8);
  v17 = v13 + ((v10 + 9) & v37);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + ((v10 + 16) & (v10 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL));

  v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + 24;
  v20 = (((v11 | v6) + a1 + v19 + ((v11 + 18 + ((v31 + ((((v6 + 40) & v34) + v32 + v11) & v16) + 7) & 0xFFFFFFFFFFFFFFF8)) & v16)) & ~(v11 | v6));
  if (v18 + 9 <= v19)
  {
    v21 = (v17 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v21 = v18 + 9;
  }

  v22 = v20[v21];
  v23 = v22 - 2;
  if (v22 < 2)
  {
    v26 = v36;
    goto LABEL_24;
  }

  if (v21 <= 3)
  {
    v24 = v21;
  }

  else
  {
    v24 = 4;
  }

  if (v24 <= 1)
  {
    v26 = v36;
    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = *v20;
  }

  else
  {
    if (v24 == 2)
    {
      v25 = *v20;
    }

    else if (v24 == 3)
    {
      v25 = *v20 | (v20[2] << 16);
    }

    else
    {
      v25 = *v20;
    }

    v26 = v36;
  }

  v27 = (v25 | (v23 << (8 * v21))) + 2;
  v22 = v25 + 2;
  if (v21 < 4)
  {
    v22 = v27;
  }

LABEL_24:
  if (v22 == 1)
  {

    v38((v10 + ((((v10 + 8 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) & (v10 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL)) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v37, v8);
  }

  else
  {
    v38(&v20[v10 + 9] & v37, v8);
  }

  v28 = &v20[v21 + 8] & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v28 + 17);
  if (v29 >= 2)
  {
    v29 = *v28 + 2;
  }

  if (v29 == 1)
  {
  }

  return (v35)((v6 + v28 + 18) & v34, v26);
}