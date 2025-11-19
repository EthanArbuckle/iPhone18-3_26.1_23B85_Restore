uint64_t BaseModifier.Child.item.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t BaseModifier.Child.stackKey.getter()
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

__int128 *BaseModifier.Child.listKey.getter@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for NavigationState.ListKey?);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
  }

  else
  {
    v5 = xmmword_18CD874C0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
  }

  else
  {
    v5 = xmmword_18CD874C0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double BaseModifier.Child.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for NavigationAuthority?);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyAccessibilityValue?(WeakValue, a1, &lazy cache variable for type metadata for NavigationAuthority?);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t BaseModifier.Child.requestKey.getter@<X0>(uint64_t *a1@<X8>)
{
  BaseModifier.Child.listKey.getter(&v11);
  result = BaseModifier.Child.stackKey.getter();
  v5 = v15;
  if ((v15 - 1) >= 2)
  {
    v9 = v12;
    v10 = v13;
    v8 = *(&v11 + 1);
    v7 = v11;
    v6 = v14 & 1 | 0x4000000000000000;
  }

  else
  {
    v6 = 0x1FFFFFFFELL;
    if ((v3 & 0xFE) == 6)
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }

    if ((v3 & 0xFE) == 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3;
    }

    if ((v3 & 0xFE) == 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4;
    }

    v10 = 0;
    if ((v3 & 0xFE) != 6)
    {
      v6 = 0;
    }

    v5 = 0;
  }

  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v6;
  a1[5] = v5;
  return result;
}

uint64_t BaseModifier.Child.value.getter@<X0>(char *a1@<X8>)
{
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-v3 - 16];
  v5 = specialized BaseModifier.Child.transform.getter();
  v7 = v6;

  BaseModifier.Child.item.getter(v4);
  v8 = *AGGraphGetValue();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v9 = *AGGraphGetValue();
  v13 = xmmword_18CD633F0;
  v21 = xmmword_18CD633F0;
  v22 = v9;
  BaseModifier.Child.requestKey.getter(v23);
  BaseModifier.Child.authority.getter(v16);
  outlined init with copy of NavigationAuthority??(v16, v14);
  if (v15 == 2)
  {
    outlined destroy of NavigationAuthority??(v16);
    v17 = v13;
    v18 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v14, &v17);
    outlined destroy of NavigationAuthority??(v16);
  }

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v11 = *WeakValue;
  }

  else
  {
    v11 = -1;
  }

  return BaseModifier.Presenter.init(transform:item:depth:selectionIdentifier:key:authority:navigationStateSeeds:)(v5, v7, v4, v8, v19, v23, &v17, v11, a1);
}

uint64_t BaseModifier.Presenter.init(transform:item:depth:selectionIdentifier:key:authority:navigationStateSeeds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for BaseModifier.Presenter();
  v17 = v16[13];
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  (*(*(v18 - 8) + 32))(&a9[v17], a3, v18);
  *&a9[v16[14]] = a4;
  v19 = &a9[v16[15]];
  v20 = a5[1];
  *v19 = *a5;
  *(v19 + 1) = v20;
  v21 = a5[3];
  *(v19 + 2) = a5[2];
  *(v19 + 3) = v21;
  v22 = &a9[v16[16]];
  v23 = a6[1];
  *v22 = *a6;
  *(v22 + 1) = v23;
  *(v22 + 2) = a6[2];
  result = outlined init with take of NavigationAuthority?(a7, &a9[v16[17]]);
  *&a9[v16[18]] = a8;
  return result;
}

uint64_t BaseModifier.Presenter.authorityIsPresenting.getter(int *a1)
{
  outlined init with copy of AnyAccessibilityValue?(v1 + a1[17], v36, &lazy cache variable for type metadata for NavigationAuthority?);
  if (*(&v36[0] + 1) == 1)
  {
    outlined destroy of NavigationAuthority?(v36);
  }

  else
  {
    outlined init with take of NavigationAuthority(v36, v38);
    v3 = v1 + a1[16];
    v4 = *(v3 + 32);
    if (v4 >> 1 != 0xFFFFFFFF)
    {
      v5 = *(v3 + 40);
      v6 = *(v3 + 16);
      v39[0] = *v3;
      v39[1] = v6;
      v40 = v4;
      v41 = v5;
      v7 = a1[15];
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        swift_beginAccess();
        v10 = v9[8];
        v33 = v9[7];
        v34 = v10;
        v35[0] = v9[9];
        *(v35 + 10) = *(v9 + 154);
        v11 = v9[4];
        v29 = v9[3];
        v30 = v11;
        v12 = v9[6];
        v31 = v9[5];
        v32 = v12;
        v13 = v9[2];
        v27 = v9[1];
        v28 = v13;
        outlined init with copy of AnyAccessibilityValue?(&v27, v25, &lazy cache variable for type metadata for NavigationState?);

        v36[6] = v33;
        v36[7] = v34;
        v37[0] = v35[0];
        *(v37 + 10) = *(v35 + 10);
        v36[2] = v29;
        v36[3] = v30;
        v36[4] = v31;
        v36[5] = v32;
        v36[0] = v27;
        v36[1] = v28;
        if (getEnumTag for AccessibilityActionCategory.Category(v36) != 1)
        {
          v22 = v33;
          v23 = v34;
          *v24 = v35[0];
          *&v24[10] = *(v35 + 10);
          v18 = v29;
          v19 = v30;
          v20 = v31;
          v21 = v32;
          v16 = v27;
          v17 = v28;
          v14 = NavigationState.isPresentingView(_:from:)((v1 + v7), v39);
          outlined destroy of NavigationAuthority(v38);
          v25[6] = v22;
          v25[7] = v23;
          v26[0] = *v24;
          *(v26 + 10) = *&v24[10];
          v25[2] = v18;
          v25[3] = v19;
          v25[4] = v20;
          v25[5] = v21;
          v25[0] = v16;
          v25[1] = v17;
          outlined destroy of NavigationState(v25);
          return v14 & 1;
        }
      }
    }

    outlined destroy of NavigationAuthority(v38);
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t BaseModifier.Presenter.request.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = type metadata accessor for Binding();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v49 - v8;
  v9 = *(a1 + 24);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v16 = &v49 - v15;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  LOBYTE(v77[0]) = 17;
  v21 = *(a1 + 32);
  *&v22 = v5;
  v55 = v9;
  *(&v22 + 1) = v9;
  v61 = v22;
  v62 = v21;
  v53 = v21;
  v63 = v3;
  static Update.dispatchImmediately<A>(reason:_:)();
  v23 = BaseModifier.Presenter.authorityIsPresenting.getter(a1);
  v59 = v17;
  v24 = v17;
  v25 = v56;
  v26 = *(v24 + 16);
  v57 = v6;
  v26(v16, v20, v6);
  if ((*(v25 + 48))(v16, 1, v5) == 1)
  {
    if (v23)
    {
      v27 = *(a1 + 60);
      v28 = (v3 + *(a1 + 64));
      v30 = *v28;
      v29 = v28[1];
      v31 = v28[3];
      v58 = v28[2];
      v33 = v28[4];
      v32 = v28[5];
      outlined init with copy of NavigationLinkSelectionIdentifier(v3 + v27, v83);
      outlined init with copy of AnyAccessibilityValue?(v3 + *(a1 + 68), v82, &lazy cache variable for type metadata for NavigationAuthority?);
      v77[0] = xmmword_18CD633F0;
      memset(&v77[1], 0, 144);
      v78 = 0x1FFFFFFFELL;
      v79 = 0;
      v81 = 0;
      v80 = 0;
      if (v33 >> 1 == 0xFFFFFFFF)
      {
        outlined destroy of NavigationLinkSelectionIdentifier(v83);
        (*(v59 + 8))(v20, v57);
        v31 = 0;
        v32 = 0;
        v75 = 0;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v33 = 0x1FFFFFFFELL;
        v70 = 0u;
        v71 = 0u;
      }

      else
      {
        outlined init with copy of NavigationLinkSelectionIdentifier(v83, &v64);
        LOBYTE(v70) = 19;
        v48 = Transaction.disablesAnimations.getter();
        outlined destroy of NavigationLinkSelectionIdentifier(v83);
        (*(v59 + 8))(v20, v57);
        *(&v70 + 1) = v30;
        *&v71 = v29;
        *(&v71 + 1) = v58;
        LOBYTE(v75) = v48 & 1;
      }

      v72 = v31;
      v73 = v33;
      v74 = v32;
      v76 = 0;
      _s7SwiftUI17NavigationRequestVSgWOdTm_0(&v64, &v77[1] + 8, &lazy cache variable for type metadata for NavigationRequest?);
      _s7SwiftUI17NavigationRequestVSgWOdTm_0(v82, v77, &lazy cache variable for type metadata for NavigationAuthority?);
      return outlined init with take of UpdateViewDestinationRequest(v77, v60);
    }

    else
    {
      result = (*(v59 + 8))(v20, v57);
      v40 = v60;
      *(v60 + 128) = 0u;
      *(v40 + 144) = 0u;
      *(v40 + 96) = 0u;
      *(v40 + 112) = 0u;
      *(v40 + 64) = 0u;
      *(v40 + 80) = 0u;
      *(v40 + 32) = 0u;
      *(v40 + 48) = 0u;
      *v40 = 0u;
      *(v40 + 16) = 0u;
      *(v40 + 160) = 0x1FFFFFFFCLL;
      *(v40 + 168) = 0;
      *(v40 + 176) = 0;
      *(v40 + 184) = 0;
    }
  }

  else
  {
    v34 = v58;
    (*(v25 + 32))(v58, v16, v5);
    v35 = v54;
    (*v3)(v34);
    if (v23)
    {
      v36 = *(a1 + 60);
      v37 = (v3 + *(a1 + 64));
      v38 = v37[1];
      v64 = *v37;
      v65 = v38;
      v66 = v37[2];
      outlined init with copy of NavigationLinkSelectionIdentifier(v3 + v36, v77);
      outlined init with copy of AnyAccessibilityValue?(v3 + *(a1 + 68), v83, &lazy cache variable for type metadata for NavigationAuthority?);
      UpdateViewDestinationRequest.init<A>(updateDestination:key:identifier:shouldTargetSourceColumn:navigationAuthority:)(v35, &v64, v77, 1, v83, v55, v60);
    }

    else
    {
      v41 = *(a1 + 52);
      v42 = v52;
      (*(v50 + 16))(v52, v3 + v41, v51);
      v43 = *(a1 + 60);
      v44 = (v3 + *(a1 + 64));
      v45 = v44[1];
      v64 = *v44;
      v65 = v45;
      v66 = v44[2];
      v46 = *(v3 + *(a1 + 56));
      outlined init with copy of NavigationLinkSelectionIdentifier(v3 + v43, v77);
      outlined init with copy of AnyAccessibilityValue?(v3 + *(a1 + 68), v83, &lazy cache variable for type metadata for NavigationAuthority?);
      v47 = *(v3 + v41);

      UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)(v35, v42, &v64, v46, v77, v83, v47, v5, v60, v55, v53, *(&v53 + 1));
    }

    (*(v25 + 8))(v58, v5);
    return (*(v59 + 8))(v20, v57);
  }

  return result;
}

uint64_t closure #1 in BaseModifier.Presenter.request.getter()
{
  type metadata accessor for BaseModifier.Presenter();
  type metadata accessor for Optional();
  v0 = type metadata accessor for Binding();
  return MEMORY[0x18D00ACC0](v0);
}

uint64_t UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v29[0] = xmmword_18CD633F0;
  memset(&v29[1], 0, 144);
  v30 = 0x1FFFFFFFELL;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v19 >> 1 == 0xFFFFFFFF)
  {

    memset(v23, 0, sizeof(v23));
    v24 = 0;
    v25 = 0x1FFFFFFFELL;
    v27 = 0;
    v28 = 0;
    v26 = 0;
  }

  else
  {
    v22[0] = v17;
    v22[1] = v18;
    v22[2] = v19;
    closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)(v22, a1, a7, a4, a5, a2, a8, a10, v23, a11, a12);
  }

  _s7SwiftUI17NavigationRequestVSgWOdTm_0(v23, &v29[1] + 8, &lazy cache variable for type metadata for NavigationRequest?);
  _s7SwiftUI17NavigationRequestVSgWOdTm_0(a6, v29, &lazy cache variable for type metadata for NavigationAuthority?);
  outlined init with copy of UpdateViewDestinationRequest(v29, a9);
  outlined destroy of NavigationLinkSelectionIdentifier(a5);
  type metadata accessor for Optional();
  v20 = type metadata accessor for Binding();
  (*(*(v20 - 8) + 8))(a2, v20);
  (*(*(a10 - 8) + 8))(a1, a10);
  return outlined destroy of UpdateViewDestinationRequest(v29);
}

uint64_t BaseModifier.Presenter.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  outlined init with copy of NavigationLinkSelectionIdentifier(v3 + *(v7 + 60), v20);
  (*(v5 + 16))(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v8 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(a2 + 32);
  *(v9 + 1) = *(a2 + 16);
  *(v9 + 2) = v10;
  v11 = v20[1];
  *(v9 + 3) = v20[0];
  *(v9 + 4) = v11;
  v12 = v20[3];
  *(v9 + 5) = v20[2];
  *(v9 + 6) = v12;
  (*(v5 + 32))(&v9[v8], v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  View.transformPreference<A>(_:_:)();

  v19 = v21;
  type metadata accessor for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>();
  v14 = type metadata accessor for ModifiedContent();
  updated = lazy protocol witness table accessor for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>();
  v18[0] = WitnessTable;
  v18[1] = updated;
  v16 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v19, v14, v16);

  v21 = v20[0];
  static ViewBuilder.buildExpression<A>(_:)(&v21, v14, v16);
}

uint64_t closure #1 in BaseModifier.Presenter.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of NavigationLinkSelectionIdentifier(a2, v14);
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v11 = type metadata accessor for BaseModifier.Presenter();
  BaseModifier.Presenter.request.getter(v11, v13);
  return specialized Dictionary.subscript.setter(v13, v14);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance BaseModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a4;
  v28 = a5;
  v25 = a2;
  v26 = a3;
  v24 = a9;
  v23 = a10;
  type metadata accessor for Optional();
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = a1[1];
  v29[0] = *a1;
  v29[1] = v19;
  v29[2] = a1[2];
  (*(v16 + 16))(&v23 - v17, a6, v15);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = v23;
  *(v21 + 5) = a11;
  (*(v16 + 32))(&v21[v20], v18, v15);
  static NavigationRequest.programmaticallyPresentView<A>(_:from:transaction:depth:identifier:dismiss:)(v25, v29, v27, v28, partial apply for closure #1 in closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:), v21, a8, v24);
}

uint64_t closure #1 in closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(*(a2 - 8) + 56))(&v9 - v6, 1, 1, a2, v5);
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

uint64_t partial apply for closure #1 in static BaseModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  return closure #1 in static BaseModifier._makeView(modifier:inputs:body:)(a1, v1[2], v1[3], v1[4], v1[5]);
}

{
  return closure #1 in static BaseModifier._makeView(modifier:inputs:body:)(a1, *(v1 + 16));
}

uint64_t partial apply for closure #2 in static BaseModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  return closure #2 in static BaseModifier._makeView(modifier:inputs:body:)(a1, v1[2], v1[3], v1[4], v1[5]);
}

{
  return closure #2 in static BaseModifier._makeView(modifier:inputs:body:)(a1);
}

uint64_t type metadata accessor for BaseModifier.Transform()
{
  return swift_getGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t partial apply for closure #3 in static BaseModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  return closure #3 in static BaseModifier._makeView(modifier:inputs:body:)(a1, v1[2], v1[3], v1[4], v1[5]);
}

{
  return closure #3 in static BaseModifier._makeView(modifier:inputs:body:)(a1);
}

uint64_t type metadata accessor for BaseModifier.Child()
{
  return swift_getGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t type metadata completion function for BaseModifier.Presenter()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for BaseModifier.Presenter(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (a1 + (v6 | 7) + 16) & ~(v6 | 7);

  v8 = v6 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!(*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    (*(v5 + 8))(v8 & ~v6, v4);
  }

  v9 = ((v6 + 16) & ~v6) + *(v5 + 64) + v7;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  v10 = (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  result = *(v10 + 48);
  if (result != 1)
  {
  }

  v12 = *(((((v10 + 71) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  if (v12 - 1 < 0)
  {
    swift_weakDestroy();
  }

  return result;
}

void *initializeWithCopy for BaseModifier.Presenter(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v39 = a1;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v38 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v38;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v11 + v8 + 8;
  v14 = v12 + v8 + 8;
  v15 = *(v6 + 48);

  if (v15(v14 & ~v8, 1, v5))
  {
    v16 = *(v7 + 84);
    v17 = *(v7 + 64);
    if (v16)
    {
      v18 = *(v7 + 64);
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy((v13 & ~v8), (v14 & ~v8), v18);
  }

  else
  {
    (*(v7 + 16))(v13 & ~v8, v14 & ~v8, v5);
    v20 = *(v7 + 56);
    v19 = v7 + 56;
    v20(v13 & ~v8, 0, 1, v5);
    v16 = *(v19 + 28);
    v17 = *(v19 + 8);
  }

  v21 = v17 + ((v8 + 16) & ~v8);
  if (!v16)
  {
    ++v21;
  }

  v22 = v10 + v21 + 7;
  v23 = ((v38 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 &= 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 24);
  if (v26)
  {
    *(v24 + 24) = v26;
    *(v24 + 32) = *(v25 + 32);
    (**(v26 - 8))(v24, v25);
  }

  else
  {
    v27 = *v25;
    v28 = *(v25 + 16);
    *(v24 + 32) = *(v25 + 32);
    *v24 = v27;
    *(v24 + 16) = v28;
  }

  if (*(v25 + 48) == 1)
  {
    *(v24 + 40) = *(v25 + 40);
  }

  else
  {
    *(v24 + 40) = *(v25 + 40);
    *(v24 + 44) = *(v25 + 44);
    *(v24 + 48) = *(v25 + 48);
  }

  *(v24 + 56) = *(v25 + 56);
  v29 = ((v24 + 71) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v25 + 71) & 0xFFFFFFFFFFFFFFF8);
  v31 = *v30;
  v32 = v30[2];
  v29[1] = v30[1];
  v29[2] = v32;
  *v29 = v31;
  v33 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v34 + 8);
  if (v35 >= 0xFFFFFFFF)
  {
    LODWORD(v35) = -1;
  }

  if (v35 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v33 + 8) = *(v34 + 8);
    *(v33 + 16) = *(v34 + 16);
  }

  else
  {
    v36 = *v34;
    *(v33 + 16) = *(v34 + 16);
    *v33 = v36;
  }

  *((v33 + 27) & 0xFFFFFFFFFFFFFFF8) = *((v34 + 27) & 0xFFFFFFFFFFFFFFF8);
  return v39;
}

void *assignWithCopy for BaseModifier.Presenter(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + 16;
  v48 = a1;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((v4 + v10) & ~(v9 | 7));
  *v11 = *v12;

  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

  v14 = v13 + v9 + 8;
  v15 = v9 + 8 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = *(v8 + 48);
  LODWORD(v4) = v16(v14 & ~v9, 1, v7);
  v17 = v16(v15 & ~v9, 1, v7);
  if (v4)
  {
    if (!v17)
    {
      (*(v8 + 16))(v14 & ~v9, v15 & ~v9, v7);
      (*(v8 + 56))(v14 & ~v9, 0, 1, v7);
      goto LABEL_12;
    }

    v18 = *(v8 + 84);
    v19 = *(v8 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v8 + 24))(v14 & ~v9, v15 & ~v9, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v14 & ~v9, v7);
    v18 = *(v8 + 84);
    v19 = *(v8 + 64);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  memcpy((v14 & ~v9), (v15 & ~v9), v20);
LABEL_12:
  v21 = *(v8 + 64) + ((v9 + 16) & ~v9);
  if (!*(v8 + 84))
  {
    ++v21;
  }

  v22 = ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = v22 + 15;
  v25 = v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 24);
  if (*((v24 & 0xFFFFFFFFFFFFFFF8) + 24))
  {
    v28 = (v24 & 0xFFFFFFFFFFFFFFF8);
    if (v27)
    {
      __swift_assign_boxed_opaque_existential_1(v28, v26);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v28);
      v29 = *(v26 + 32);
      v30 = *(v26 + 16);
      *v25 = *v26;
      *(v25 + 16) = v30;
      *(v25 + 32) = v29;
    }
  }

  else if (v27)
  {
    *(v25 + 24) = v27;
    *(v25 + 32) = *(v26 + 32);
    (**(v27 - 8))(v25, v26);
  }

  else
  {
    v31 = *v26;
    v32 = *(v26 + 16);
    *(v25 + 32) = *(v26 + 32);
    *v25 = v31;
    *(v25 + 16) = v32;
  }

  v33 = *(v26 + 48);
  if (*(v25 + 48) == 1)
  {
    if (v33 != 1)
    {
      *(v25 + 40) = *(v26 + 40);
      *(v25 + 44) = *(v26 + 44);
      *(v25 + 48) = *(v26 + 48);

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v33 == 1)
  {
    outlined destroy of _ViewList_ID.Canonical(v25 + 40);
LABEL_26:
    *(v25 + 40) = *(v26 + 40);
    goto LABEL_28;
  }

  *(v25 + 40) = *(v26 + 40);
  *(v25 + 44) = *(v26 + 44);
  *(v25 + 48) = *(v26 + 48);

LABEL_28:
  *(v25 + 56) = *(v26 + 56);
  v34 = ((v25 + 71) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v26 + 71) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v35;
  v37 = v35[2];
  v34[1] = v35[1];
  v34[2] = v37;
  *v34 = v36;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v35 + 55) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v38 + 8);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  v41 = v40 - 1;
  v42 = *(v39 + 8);
  if (v42 >= 0xFFFFFFFF)
  {
    LODWORD(v42) = -1;
  }

  v43 = v42 - 1;
  if (v41 < 0)
  {
    if (v43 < 0)
    {
      swift_weakCopyAssign();
      *(v38 + 8) = *(v39 + 8);

      *(v38 + 16) = *(v39 + 16);

      goto LABEL_38;
    }

    swift_weakDestroy();

    goto LABEL_37;
  }

  if ((v43 & 0x80000000) == 0)
  {
LABEL_37:
    v44 = *v39;
    *(v38 + 16) = *(v39 + 16);
    *v38 = v44;
    goto LABEL_38;
  }

  swift_weakCopyInit();
  *(v38 + 8) = *(v39 + 8);
  *(v38 + 16) = *(v39 + 16);

LABEL_38:
  v45 = ((v38 + 27) & 0xFFFFFFFFFFFFFFF8);
  v46 = ((v39 + 27) & 0xFFFFFFFFFFFFFFF8);
  *v45 = *v46;
  v45[1] = v46[1];
  return v48;
}

_OWORD *initializeWithTake for BaseModifier.Presenter(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v11 + v7 + 8;
  v14 = v12 + v7 + 8;
  if ((*(v5 + 48))(v14 & ~v7, 1, v4))
  {
    v15 = *(v6 + 84);
    v16 = *(v6 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy((v13 & ~v7), (v14 & ~v7), v17);
  }

  else
  {
    (*(v6 + 32))(v13 & ~v7, v14 & ~v7, v4);
    v19 = *(v6 + 56);
    v18 = v6 + 56;
    v19(v13 & ~v7, 0, 1, v4);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  v20 = v16 + ((v7 + 16) & ~v7);
  if (!v15)
  {
    ++v20;
  }

  v21 = ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[3];
  v23[2] = v24[2];
  v23[3] = v27;
  *v23 = v25;
  v23[1] = v26;
  v28 = ((v23 + 71) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v24 + 71) & 0xFFFFFFFFFFFFFFF8);
  v30 = *v29;
  v31 = v29[2];
  v28[1] = v29[1];
  v28[2] = v31;
  *v28 = v30;
  v32 = (v28 + 55) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v33 + 8);
  if (*(v33 + 8) >= 0xFFFFFFFFuLL)
  {
    v34 = -1;
  }

  if (v34 - 1 < 0)
  {
    v32 = swift_weakTakeInit();
    *(v32 + 8) = *(v33 + 8);
  }

  else
  {
    v35 = *v33;
    *(v32 + 16) = *(v33 + 16);
    *v32 = v35;
  }

  *((v32 + 27) & 0xFFFFFFFFFFFFFFF8) = *((v33 + 27) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_OWORD *assignWithTake for BaseModifier.Presenter(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 16;
  v43 = a1;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = v12 + v8 + 8;
  v15 = v13 + v8 + 8;
  v16 = *(v7 + 48);
  LODWORD(v13) = v16(v14 & ~v8, 1, v6);
  v17 = v16(v15 & ~v8, 1, v6);
  if (v13)
  {
    if (!v17)
    {
      (*(v7 + 32))(v14 & ~v8, v15 & ~v8, v6);
      (*(v7 + 56))(v14 & ~v8, 0, 1, v6);
      goto LABEL_12;
    }

    v18 = *(v7 + 84);
    v19 = *(v7 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v7 + 40))(v14 & ~v8, v15 & ~v8, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v14 & ~v8, v6);
    v18 = *(v7 + 84);
    v19 = *(v7 + 64);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  memcpy((v14 & ~v8), (v15 & ~v8), v20);
LABEL_12:
  v21 = *(v7 + 64) + ((v8 + 16) & ~v8);
  if (!*(v7 + 84))
  {
    ++v21;
  }

  v22 = v10 + v21 + 7;
  v23 = ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 &= 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  v24 = v22 + 15;
  v25 = v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*((v24 & 0xFFFFFFFFFFFFFFF8) + 24))
  {
    if (*(v26 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v24 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v24 & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v27 = *v26;
  v28 = *(v26 + 16);
  *(v25 + 32) = *(v26 + 32);
  *v25 = v27;
  *(v25 + 16) = v28;
  if (*(v25 + 48) == 1)
  {
    goto LABEL_21;
  }

  if (*(v26 + 48) == 1)
  {
    outlined destroy of _ViewList_ID.Canonical(v25 + 40);
LABEL_21:
    *(v25 + 40) = *(v26 + 40);
    goto LABEL_23;
  }

  *(v25 + 40) = *(v26 + 40);
  *(v25 + 44) = *(v26 + 44);
  *(v25 + 48) = *(v26 + 48);

LABEL_23:
  *(v25 + 56) = *(v26 + 56);
  v29 = ((v25 + 71) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v26 + 71) & 0xFFFFFFFFFFFFFFF8);
  v31 = *v30;
  v32 = v30[2];
  v29[1] = v30[1];
  v29[2] = v32;
  *v29 = v31;
  v33 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v33 + 8);
  if (*(v33 + 8) >= 0xFFFFFFFFuLL)
  {
    v35 = -1;
  }

  v36 = v35 - 1;
  v37 = *(v34 + 8);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  v38 = v37 - 1;
  if (v36 < 0)
  {
    if (v38 < 0)
    {
      swift_weakTakeAssign();
      *(v33 + 8) = *(v34 + 8);

      *(v33 + 16) = *(v34 + 16);

      goto LABEL_33;
    }

    swift_weakDestroy();

    goto LABEL_32;
  }

  if ((v38 & 0x80000000) == 0)
  {
LABEL_32:
    v39 = *v34;
    *(v33 + 16) = *(v34 + 16);
    *v33 = v39;
    goto LABEL_33;
  }

  swift_weakTakeInit();
  *(v33 + 8) = *(v34 + 8);
LABEL_33:
  v40 = ((v33 + 27) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v34 + 27) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;
  v40[1] = v41[1];
  return v43;
}

uint64_t getEnumTagSinglePayload for BaseModifier.Presenter(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v8 >= a2)
  {
    goto LABEL_36;
  }

  v12 = ((((((((((v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-17 - v9) | v11))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_36:
    if (v8 == 0x7FFFFFFF)
    {
      v21 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v22 = (*(v4 + 48))((v9 + ((((a1 + v11 + 16) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for BaseModifier.Presenter(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v6 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v13;
  }

  v14 = ((v11 + 16) & ~v11) + v13;
  v15 = ((((((((((v14 + ((v11 + 16) & ~(v11 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 < a3)
  {
    v16 = a3 - v10;
    if (((((((((((v14 + ((v11 + 16) & ~(v11 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((((((((((v14 + ((v11 + 16) & ~(v11 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a2 - v10;
    }

    else
    {
      v19 = 1;
    }

    if (((((((((((v14 + ((v11 + 16) & ~(v11 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v20 = ~v10 + a2;
      v21 = a1;
      bzero(a1, v15);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v15) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  *(a1 + v15) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      a1[1] = 0;
    }

    else
    {
      *a1 = a2 - 1;
    }
  }

  else
  {
    v22 = (a1 + v12 + 16) & ~v12;
    if (v9 >= a2)
    {
      v26 = *(v6 + 56);
      v27 = a2 + 1;

      v26((v11 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11, v27);
    }

    else
    {
      if (v14 <= 3)
      {
        v23 = ~(-1 << (8 * v14));
      }

      else
      {
        v23 = -1;
      }

      if (v14)
      {
        v24 = v23 & (~v9 + a2);
        if (v14 <= 3)
        {
          v25 = v14;
        }

        else
        {
          v25 = 4;
        }

        bzero(((a1 + v12 + 16) & ~v12), v14);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            *(v22 + 2) = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }
}

uint64_t partial apply for closure #1 in BaseModifier.Presenter.body(content:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for BaseModifier.Presenter() - 8);
  v8 = v1 + ((*(v7 + 80) + 112) & ~*(v7 + 80));

  return closure #1 in BaseModifier.Presenter.body(content:)(a1, (v1 + 6), v8, v3, v4, v5, v6);
}

void type metadata accessor for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for Optional();
  v2 = *(type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return closure #1 in closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)(v3, v1);
}

uint64_t protocol witness for static Gesture._makeGesture(gesture:inputs:) in conformance HitTestingLayoutGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture();

  return MEMORY[0x1EEDDE2E8](a1, a2, a3, v6);
}

void type metadata accessor for LayoutGestureModifier<HitTestingLayoutGesture>()
{
  if (!lazy cache variable for type metadata for LayoutGestureModifier<HitTestingLayoutGesture>)
  {
    v0 = type metadata accessor for LayoutGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutGestureModifier<HitTestingLayoutGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LayoutGestureModifier<HitTestingLayoutGesture> and conformance LayoutGestureModifier<A>()
{
  result = lazy protocol witness table cache variable for type LayoutGestureModifier<HitTestingLayoutGesture> and conformance LayoutGestureModifier<A>;
  if (!lazy protocol witness table cache variable for type LayoutGestureModifier<HitTestingLayoutGesture> and conformance LayoutGestureModifier<A>)
  {
    type metadata accessor for LayoutGestureModifier<HitTestingLayoutGesture>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutGestureModifier<HitTestingLayoutGesture> and conformance LayoutGestureModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture()
{
  result = lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture;
  if (!lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture;
  if (!lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture;
  if (!lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture);
  }

  return result;
}

uint64_t specialized HitTestingLayoutGesture.updateEventBindings(_:proxy:)(void *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = v3 + 64;
  v47 = *a2;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v46 = v3;

  v10 = 0;
  v48 = v4;
  v44 = v2;
LABEL_6:
  while (v7)
  {
    v11 = v10;
LABEL_16:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v46 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    outlined init with copy of _Benchmark(*(v46 + 56) + 40 * v15, &v64);
    *&v78 = v17;
    *(&v78 + 1) = v18;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v64, v79);
LABEL_17:
    v97 = v78;
    v98[0] = *v79;
    v98[1] = *&v79[16];
    v99 = *&v79[32];
    v19 = v78;
    if (!v78)
    {
    }

    v20 = *(&v97 + 1);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v98, v96);
    v21 = *v2;
    if (!*(*v2 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20), (v23 & 1) == 0))
    {
      v78 = 0u;
      memset(v79, 0, 24);
      goto LABEL_5;
    }

    v45 = v20;
    outlined init with copy of _Benchmark(*(v21 + 56) + 40 * v22, &v78);
    v24 = *&v79[8];
    if (*&v79[8])
    {
      v25 = *&v79[16];
      __swift_project_boxed_opaque_existential_1(&v78, *&v79[8]);
      (*(v25 + 24))(&v64, v24, v25);
      v26 = v64;
      outlined destroy of LocationBasedSensoryFeedback?(&v78, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType);
      if (v26)
      {
        outlined init with copy of _Benchmark(v96, v94);
        type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType);
        type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for HitTestableEventType);
        if (swift_dynamicCast())
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v92, v95);
          outlined init with copy of _Benchmark(v95, &v64);
          HitTestableEvent.init(_:)();
          __swift_destroy_boxed_opaque_existential_1(v95);
          v90[0] = v78;
          *(v91 + 9) = *&v79[25];
          v90[1] = *v79;
          v91[0] = *&v79[16];
          *&v79[25] = *(v91 + 9);
          HitTestableEvent.hitTestLocation.getter();
          v28 = v27;
          v30 = v29;
          *&v78 = v47;
          result = LayoutGestureChildProxy.endIndex.getter();
          if (result < 0)
          {
            goto LABEL_49;
          }

          v31 = result;
          if (!result)
          {
LABEL_28:
            __swift_destroy_boxed_opaque_existential_1(v96);

            goto LABEL_29;
          }

          v32 = 0;
          while (1)
          {
            *&v50 = v47;
            LayoutGestureChildProxy.subscript.getter();
            v86 = v74;
            v87 = v75;
            v88 = v76;
            v89 = v77;
            v82 = v70;
            v83 = v71;
            v84 = v72;
            v85 = v73;
            *&v79[16] = v66;
            *&v79[32] = v67;
            v80 = v68;
            v81 = v69;
            v78 = v64;
            *v79 = v65;
            *&v50 = v26;
            if (LayoutGestureChildProxy.Child.binds(_:)())
            {
              break;
            }

            ++v32;
            outlined destroy of LayoutGestureChildProxy.Child(&v78);
            if (v31 == v32)
            {
              goto LABEL_28;
            }
          }

          v74 = v86;
          v75 = v87;
          v76 = v88;
          v77 = v89;
          v70 = v82;
          v71 = v83;
          v72 = v84;
          v73 = v85;
          v66 = *&v79[16];
          v67 = *&v79[32];
          v68 = v80;
          v69 = v81;
          v64 = v78;
          v65 = *v79;
          if (LayoutGestureChildProxy.Child.containsGlobalLocation(_:)(__PAIR128__(v30, v28)))
          {
            __swift_destroy_boxed_opaque_existential_1(v96);

            outlined destroy of LayoutGestureChildProxy.Child(&v78);
LABEL_29:
            result = outlined destroy of HitTestableEvent(v90);
            v2 = v44;
            v4 = v48;
          }

          else
          {
            *&v64 = v47;
            result = LayoutGestureChildProxy.endIndex.getter();
            if (result < 0)
            {
              goto LABEL_50;
            }

            v33 = result;
            v43 = v8;
            v34 = v47;
            if (result)
            {
              v35 = v32 + 1;
              v36 = result;
              while (v33 >= v36)
              {
                v37 = v36--;
                if (v35 != v37)
                {
                  v49[0] = v34;
                  LayoutGestureChildProxy.subscript.getter();
                  v38 = LayoutGestureChildProxy.Child.containsGlobalLocation(_:)(__PAIR128__(v30, v28));
                  v74 = v60;
                  v75 = v61;
                  v76 = v62;
                  v77 = v63;
                  v70 = v56;
                  v71 = v57;
                  v72 = v58;
                  v73 = v59;
                  v66 = v52;
                  v67 = v53;
                  v68 = v54;
                  v69 = v55;
                  v64 = v50;
                  v65 = v51;
                  result = outlined destroy of LayoutGestureChildProxy.Child(&v64);
                  if (v38)
                  {
                    v49[5] = v34;
                    v49[0] = v19;
                    v49[1] = v45;
                    result = LayoutGestureChildProxy.bindChild(index:event:id:)();
                    v39 = v50;
                    if (v50 != 1)
                    {
                      v40 = *(&v50 + 1);
                      outlined init with copy of _Benchmark(v96, &v50);

                      v42 = *(&v51 + 1);
                      v41 = v52;
                      __swift_mutable_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
                      v49[0] = v40;
                      (*(v41 + 32))(v49, v42, v41);
                      outlined init with copy of _Benchmark(&v50, v49);
                      v2 = v44;
                      specialized Dictionary.subscript.setter(v49, v19, v45);

                      outlined destroy of LayoutGestureChildProxy.Child(&v78);
                      outlined destroy of HitTestableEvent(v90);
                      outlined consume of EnvironmentValues?(v39);
                      __swift_destroy_boxed_opaque_existential_1(v96);
                      result = __swift_destroy_boxed_opaque_existential_1(&v50);
                      v4 = v48;
                      v8 = v43;
                      goto LABEL_6;
                    }

                    v34 = v47;
                  }
                }

                if (!v36)
                {
                  goto LABEL_45;
                }
              }

              goto LABEL_48;
            }

LABEL_45:

            outlined destroy of LayoutGestureChildProxy.Child(&v78);
            outlined destroy of HitTestableEvent(v90);
            result = __swift_destroy_boxed_opaque_existential_1(v96);
            v8 = v43;
            v2 = v44;
            v4 = v48;
          }
        }

        else
        {

          v93 = 0;
          memset(v92, 0, sizeof(v92));
          outlined destroy of LocationBasedSensoryFeedback?(v92, &lazy cache variable for type metadata for HitTestableEventType?, &lazy cache variable for type metadata for HitTestableEventType);
          result = __swift_destroy_boxed_opaque_existential_1(v96);
          v4 = v48;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v96);
        v4 = v48;
      }
    }

    else
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v96);
      result = outlined destroy of LocationBasedSensoryFeedback?(&v78, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType);
      v4 = v48;
    }
  }

  if (v8 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v7 = 0;
      memset(v79, 0, 40);
      v10 = v13;
      v78 = 0u;
      goto LABEL_17;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigationLinkLabel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
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
    outlined copy of Environment<Bool>.Content(*v11, v13);
    *v10 = v12;
    *(v10 + 8) = v13;
  }

  return v3;
}

uint64_t assignWithTake for NavigationLinkLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v8;
  outlined consume of Environment<Bool>.Content(v10, v11);
  return a1;
}

uint64_t closure #1 in NavigationLinkLabel.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  static ViewBuilder.buildExpression<A>(_:)(v12, v13, v14);
  v15 = type metadata accessor for NavigationLinkLabel();
  if (specialized Environment.wrappedValue.getter(*(a1 + *(v15 + 36)), *(a1 + *(v15 + 36) + 8)) == 2)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 2;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    EdgeInsets.init(_:edges:)();
    v18 = v23;
    v20 = v24;
    v21 = v25;
    v22 = v26;
    v27 = static Edge.Set.all.getter();
    v19 = 0;
    LOBYTE(v33[0]) = 1;
    LOBYTE(v35[0]) = 0;
    v17 = 1;
    v16 = v27;
  }

  (*(v6 + 16))(v8, v11, a2);
  v33[0] = 0;
  v33[1] = v17;
  v33[2] = v19;
  v33[3] = v16;
  v33[4] = v18;
  v33[5] = v20;
  v33[6] = v21;
  v33[7] = v22;
  v34 = 0;
  v35[0] = v8;
  v35[1] = v33;
  v32[0] = a2;
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?(0, &lazy cache variable for type metadata for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>, MEMORY[0x1E69E6720]);
  v32[1] = v28;
  v31[0] = a3;
  v31[1] = lazy protocol witness table accessor for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>? and conformance <A> A?();
  static ViewBuilder.buildBlock<each A>(_:)(v35, 2uLL, v32);
  v29 = *(v6 + 8);
  v29(v11, a2);
  return (v29)(v8, a2);
}

void type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)()
{
  if (!lazy cache variable for type metadata for (Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<_DisclosureIndicator, SquareLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_DisclosureIndicator, SquareLayout>, &type metadata for _DisclosureIndicator, &unk_1EFFC6440, MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>)
  {
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>)
  {
    type metadata accessor for InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>();
    type metadata accessor for StyleContextAcceptsPredicate<SidebarListStyleContext>();
    lazy protocol witness table accessor for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>);
    lazy protocol witness table accessor for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>);
    }
  }
}

void type metadata accessor for InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>()
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>)
  {
    type metadata accessor for ModifiedContent<_DisclosureIndicator, SquareLayout>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
    v0 = type metadata accessor for InvertedViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>? and conformance <A> A?)
  {
    type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?(255, &lazy cache variable for type metadata for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>? and conformance <A> A?);
  }

  return result;
}

unint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceAppIntentsPayloads(for:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for IntelligenceDataSourceItemRequest();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 16))(&v26, a3, a4, v12);
  if (v27)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v26, v28);
    v15 = IntelligenceDataSourceItemRequest.requestedItems.getter();
    v16 = implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceAppIntentsPayloads(for:request:)(v5, a3, a4);
    v24 = a2;
    v18 = specialized ItemsMap.init(platformItems:idForPlatformItem:)(v15, v16, v17);
    v25 = v10;
    v20 = v19;

    IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.mapToIdentifiableItems(fromPlatformItems:using:)(a1, v20, v14);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v21 = dispatch thunk of IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceAppIntentsPayloads(for:request:)();
    v22 = specialized IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.mapToPlatformItemPayloads(fromIdentifiableItemPayloads:using:)(v21, v18);

    (*(v11 + 8))(v14, v25);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v22;
  }

  else
  {
    outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(&v26, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21UIIntelligenceSupport26IntelligenceDataSourceItemO_AC0E17AppIntentsPayloadVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for IntelligenceDataSourceItemRequest();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 16))(&v24, a3, a4, v12);
  if (v25)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v24, v26);
    v15 = IntelligenceDataSourceItemRequest.requestedItems.getter();
    v16 = implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)(v5, a3, a4);
    v22 = a2;
    specialized ItemsMap.init(platformItems:idForPlatformItem:)(v15, v16, v17);
    v23 = v10;
    v19 = v18;

    IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.mapToIdentifiableItems(fromPlatformItems:using:)(a1, v19, v14);

    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v20 = dispatch thunk of IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)();
    (*(v11 + 8))(v14, v23);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(&v24, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = type metadata accessor for IntelligenceDataSourceItemRequest();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:), 0, 0);
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)()
{
  (*(*(v0 + 128) + 16))(*(v0 + 120));
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 120);
    v21 = *(v0 + 112);
    v5 = *(v0 + 96);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>((v0 + 56), v0 + 16);
    v6 = IntelligenceDataSourceItemRequest.requestedItems.getter();
    v7 = implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(v2, v4, v3);
    v9 = specialized ItemsMap.init(platformItems:idForPlatformItem:)(v6, v7, v8);
    v11 = v10;

    *(v0 + 168) = v9;
    *(v0 + 176) = v11;
    IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.mapToIdentifiableItems(fromPlatformItems:using:)(v5, v11, v1);
    v12 = specialized IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.mapToPlatformItemPayloads(fromIdentifiableItemPayloads:using:)(v21, v11);
    *(v0 + 184) = v12;
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    *v15 = v0;
    v15[1] = IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:);
    v16 = *(v0 + 160);
    v17 = *(v0 + 104);

    return MEMORY[0x1EEE4BE18](v16, v17, v12, v13, v14);
  }

  else
  {
    outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(v0 + 56, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?);
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21UIIntelligenceSupport26IntelligenceDataSourceItemO_AC0E17AppIntentsPayloadVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v19 = *(v0 + 8);

    return v19(v18);
  }
}

{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = specialized IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.mapToPlatformItemPayloads(fromIdentifiableItemPayloads:using:)(v0[26], v0[21]);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v5 = v0[1];

  return v5(v4);
}

{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    v5 = IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:);
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:), 0, 0);
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:)()
{
  v1 = v0[5];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21UIIntelligenceSupport26IntelligenceDataSourceItemO_AC0E17AppIntentsPayloadVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v0[7] = v2;
  v3 = *(v1 + 8);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:);
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x1EEE4BE18](v7, v5, v2, v6, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t View.appIntentIntelligenceDataSourceProvider<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);
  v12 = *(a3 - 8);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  else
  {
    *(&v17 + 1) = a3;
    v18 = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
    (*(v12 + 32))(boxed_opaque_existential_1, v11, a3);
  }

  View.environment<A>(_:_:)();

  return outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(&v16, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?);
}

uint64_t EnvironmentValues.appIntentsDataSourcePayloadProvider.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>();
    lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>();
    lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.appIntentsDataSourcePayloadProvider : EnvironmentValues(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>();
    lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>();
    lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);

    return PropertyList.subscript.getter();
  }
}

void type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<IntelligenceAppIntentsDataSourcePayloadProviding?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntelligenceAppIntentsDataSourcePayloadProviding?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntelligenceAppIntentsDataSourcePayloadProviding?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<IntelligenceAppIntentsDataSourcePayloadProviding?>, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntelligenceAppIntentsDataSourcePayloadProviding?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t EnvironmentValues.appIntentsDataSourcePayloadProvider.setter(uint64_t a1)
{
  outlined init with copy of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(a1, v5, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?);
  outlined init with copy of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(v5, &v4, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>();
  lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(a1, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?);
  return outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(v5, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?);
}

uint64_t specialized implicit closure #1 in _GraphInputs.appIntentsDataSourcePayloadProvider.getter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>();
    lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>();
    lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);

    PropertyList.subscript.getter();
  }
}

uint64_t implicit closure #1 in ItemsMap.init(platformItems:idForPlatformItem:)()
{
  _StringGuts.grow(_:)(17);
  MEMORY[0x18D00C9B0](0x20676E697373694DLL, 0xEF20726F66206469);
  type metadata accessor for IntelligenceDataSourceItem();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.mapToIdentifiableItems(fromPlatformItems:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v72[2] = a3;
  v5 = type metadata accessor for IntelligenceDataSourceItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v76 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = v72 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v75 = v72 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v81 = v72 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v72 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v74 = v72 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v79 = v72 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v72 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v72 - v25;
  v27 = IntelligenceDataSourceItemRequest.requestedItems.getter();
  v28 = *(v27 + 16);
  v77 = v6;
  v83 = v16;
  v80 = v23;
  v72[3] = a1;
  if (v28)
  {
    v29 = v6 + 16;
    v85 = *(v6 + 16);
    v86 = (v6 + 16);
    v30 = *(v6 + 80);
    v72[1] = v27;
    v73 = (v30 + 32) & ~v30;
    v31 = v27 + v73;
    v32 = *(v29 + 56);
    v33 = (v29 - 8);
    v78 = (v29 + 16);
    v84 = MEMORY[0x1E69E7CC0];
    v85(v26, v27 + v73, v5);
    while (1)
    {
      if (*(a2 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v35 & 1) != 0))
      {
        v36 = v74;
        v85(v74, *(a2 + 56) + v34 * v32, v5);
        (*v33)(v26, v5);
        v37 = *v78;
        (*v78)(v79, v36, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 2) + 1, 1, v84);
        }

        v39 = *(v84 + 2);
        v38 = *(v84 + 3);
        if (v39 >= v38 >> 1)
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v84);
        }

        v40 = v84;
        *(v84 + 2) = v39 + 1;
        v37(&v40[v73 + v39 * v32], v79, v5);
        v16 = v83;
        v23 = v80;
      }

      else
      {
        (*v33)(v26, v5);
      }

      v31 += v32;
      if (!--v28)
      {
        break;
      }

      v85(v26, v31, v5);
    }
  }

  else
  {

    v84 = MEMORY[0x1E69E7CC0];
  }

  v41 = IntelligenceDataSourceItemRequest.visibleRequestedItems.getter();
  v42 = *(v41 + 16);
  v43 = v77;
  if (v42)
  {
    v86 = *(v77 + 16);
    v44 = *(v77 + 80);
    v74 = v41;
    v78 = ((v44 + 32) & ~v44);
    v45 = &v78[v41];
    v46 = *(v77 + 72);
    v47 = (v77 + 8);
    v79 = (v77 + 32);
    v85 = MEMORY[0x1E69E7CC0];
    v86(v23, &v78[v41], v5);
    while (1)
    {
      if (*(a2 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v49 & 1) != 0))
      {
        v50 = v75;
        v86(v75, (*(a2 + 56) + v48 * v46), v5);
        (*v47)(v23, v5);
        v51 = *v79;
        (*v79)(v81, v50, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85);
        }

        v53 = *(v85 + 2);
        v52 = *(v85 + 3);
        if (v53 >= v52 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v85);
        }

        v54 = v85;
        *(v85 + 2) = v53 + 1;
        v51(&v78[v54 + v53 * v46], v81, v5);
        v16 = v83;
        v23 = v80;
      }

      else
      {
        (*v47)(v23, v5);
      }

      v45 += v46;
      if (!--v42)
      {
        break;
      }

      v86(v23, v45, v5);
    }

    v43 = v77;
  }

  else
  {

    v85 = MEMORY[0x1E69E7CC0];
  }

  v56 = MEMORY[0x18D001340](v55);
  v57 = *(v56 + 16);
  if (v57)
  {
    v59 = *(v43 + 16);
    v58 = v43 + 16;
    v86 = v59;
    v60 = *(v58 + 64);
    v79 = v56;
    v80 = (v60 + 32) & ~v60;
    v61 = v56 + v80;
    v62 = *(v58 + 56);
    v63 = (v58 - 8);
    v81 = (v58 + 16);
    v64 = MEMORY[0x1E69E7CC0];
    v77 = v58;
    v59(v16, (v56 + v80), v5);
    while (1)
    {
      if (*(a2 + 16) && (v65 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v66 & 1) != 0))
      {
        v67 = v76;
        v86(v76, (*(a2 + 56) + v65 * v62), v5);
        (*v63)(v16, v5);
        v68 = *v81;
        (*v81)(v82, v67, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
        }

        v70 = *(v64 + 2);
        v69 = *(v64 + 3);
        if (v70 >= v69 >> 1)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1, v64);
        }

        *(v64 + 2) = v70 + 1;
        v68(&v64[v80 + v70 * v62], v82, v5);
        v16 = v83;
      }

      else
      {
        (*v63)(v16, v5);
      }

      v61 += v62;
      if (!--v57)
      {
        break;
      }

      v86(v16, v61, v5);
    }
  }

  return IntelligenceDataSourceItemRequest.init(requestedItems:visibleRequestedItems:selectedRequestedItems:)();
}

uint64_t (*implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceAppIntentsPayloads(for:request:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceAppIntentsPayloads(for:request:);
}

uint64_t (*implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:);
}

uint64_t (*implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v68 = a3;
  v6 = type metadata accessor for IntelligenceAppIntentsPayload();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for IntelligenceDataSourceItem();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)();
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v63 + 80);
  v61 = a1;
  v16 = a1 + ((v15 + 32) & ~v15);
  v17 = (v64 + 32);
  v18 = (v65 + 32);
  v58 = v16;
  outlined init with copy of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(v16, v13, type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload));
  v57 = *v17;
  v57(v9, v13, v67);
  v19 = *v18;
  v59 = v14;
  v62 = v6;
  v20 = v6;
  v21 = v19;
  v19(v66, &v13[v14], v20);
  v22 = *v68;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, a2 & 1);
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v33 = v67;
      v34 = *v68;
      *(*v68 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v57((v34[6] + *(v64 + 72) * v24), v9, v33);
      v35 = v62;
      v21((v34[7] + *(v65 + 72) * v24), v66, v62);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          outlined init with copy of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(v58 + *(v63 + 72) * v39, v13, type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload));
          v40 = *v17;
          (*v17)(v9, v13, v67);
          v41 = *v18;
          (*v18)(v66, &v13[v59], v35);
          v42 = *v68;
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v37 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v37)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, 1);
            v43 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v50 = v67;
          v51 = *v68;
          *(*v68 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v40((v51[6] + *(v64 + 72) * v43), v9, v50);
          v53 = v51[7] + *(v65 + 72) * v52;
          v35 = v62;
          v41(v53, v66, v62);
          v54 = v51[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v51[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v31 = swift_allocError();
    swift_willThrow();

    v71 = v31;
    v32 = v31;
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Error);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v65 + 8))(v66, v62);
      (*(v64 + 8))(v9, v67);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD4B1C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized ItemsMap.init(platformItems:idForPlatformItem:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, void (**)(unint64_t, char *, uint64_t)), uint64_t a3)
{
  v69 = a2;
  v70 = a3;
  v4 = type metadata accessor for IntelligenceDataSourceItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v65 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v65 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v65 - v16);
  v18 = *(a1 + 16);
  v19 = lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58]);
  v20 = MEMORY[0x18D00C430](v18, v4, v4, v19);
  v21 = MEMORY[0x18D00C430](v18, v4, v4, v19);
  if (!v18)
  {
    return v20;
  }

  v24 = *(v5 + 16);
  v23 = v5 + 16;
  v22 = v24;
  v25 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
  v79 = *(v23 + 56);
  v68 = (v23 + 88);
  v67 = *MEMORY[0x1E69DBC40];
  v66 = (v23 + 16);
  v65 = (v23 + 24);
  v76 = (v23 - 8);
  v77 = v24;
  v24(v17, v25, v4);
  while (1)
  {
    v69(&v80, v17);
    if (!*(&v81 + 1))
    {
      v26 = outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(&v80, type metadata accessor for AnyHashable?);
      MEMORY[0x1EEE9AC00](v26);
      *(&v65 - 2) = v17;
      static Log.internalError(_:)();
      v27 = *v76;
      goto LABEL_4;
    }

    v71 = v18;
    v83[0] = v80;
    v83[1] = v81;
    v84 = v82;
    v28 = v22;
    v29 = v78;
    outlined init with copy of AnyHashable(v83, v78);
    (*v68)(v29, v67, v4);
    v30 = v75;
    v28(v75, v29, v4);
    v31 = v17;
    v32 = v17;
    v33 = v23;
    v28(v73, v32, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v80 = v20;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    v37 = v20[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v20[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v80;
        if ((v35 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v20 = v80;
        if ((v40 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_34;
      }

      v36 = v41;
      v20 = v80;
      if ((v40 & 1) == 0)
      {
LABEL_16:
        v20[(v36 >> 6) + 8] |= 1 << v36;
        v43 = v36 * v79;
        v44 = v20[6] + v36 * v79;
        v45 = v75;
        v77(v44, v75, v4);
        (*v66)(v20[7] + v43, v73, v4);
        v27 = *v76;
        (*v76)(v45, v4);
        v46 = v20[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_32;
        }

        v20[2] = v48;
        goto LABEL_18;
      }
    }

    (*v65)(v20[7] + v36 * v79, v73, v4);
    v27 = *v76;
    (*v76)(v75, v4);
LABEL_18:
    v49 = v74;
    v50 = v77;
    v77(v74, v31, v4);
    v50(v72, v78, v4);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v80 = v21;
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
    v54 = v21[2];
    v55 = (v53 & 1) == 0;
    v47 = __OFADD__(v54, v55);
    v56 = v54 + v55;
    if (v47)
    {
      goto LABEL_31;
    }

    v57 = v53;
    if (v21[3] >= v56)
    {
      if ((v51 & 1) == 0)
      {
        v63 = v52;
        specialized _NativeDictionary.copy()();
        v52 = v63;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v51);
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v74);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_34;
      }
    }

    v23 = v33;
    v21 = v80;
    v17 = v31;
    if (v57)
    {
      (*v65)(*(v80 + 56) + v52 * v79, v72, v4);
      v27(v74, v4);
      v27(v78, v4);
      outlined destroy of AnyHashable(v83);
    }

    else
    {
      *(v80 + 8 * (v52 >> 6) + 64) |= 1 << v52;
      v59 = v52 * v79;
      v60 = v74;
      v77(v21[6] + v52 * v79, v74, v4);
      (*v66)(v21[7] + v59, v72, v4);
      v27(v60, v4);
      v27(v78, v4);
      outlined destroy of AnyHashable(v83);
      v61 = v21[2];
      v47 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v47)
      {
        goto LABEL_33;
      }

      v21[2] = v62;
    }

    v18 = v71;
    v22 = v77;
LABEL_4:
    v27(v17, v4);
    v25 += v79;
    if (!--v18)
    {
      return v20;
    }

    v22(v17, v25, v4);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.mapToPlatformItemPayloads(fromIdentifiableItemPayloads:using:)(uint64_t a1, uint64_t a2)
{
  v75 = type metadata accessor for IntelligenceDataSourceItem();
  v4 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v55 - v7;
  type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)?(0, &lazy cache variable for type metadata for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)?, type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v55 - v9;
  type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)();
  v74 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v55 - v15;
  type metadata accessor for (key: IntelligenceDataSourceItem, value: IntelligenceAppIntentsPayload)();
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v71 = a1;
  v72 = v4 + 16;
  v70 = v4;
  v59 = (v4 + 32);
  v57 = v12;
  v63 = (v12 + 48);
  v64 = (v12 + 56);

  v24 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v68 = v10;
  v69 = a2;
  v65 = v23;
  v66 = a1 + 64;
  v73 = v18;
LABEL_4:
  v25 = v24;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
    v24 = v25;
LABEL_9:
    v26 = __clz(__rbit64(v22)) | (v24 << 6);
    v27 = v71;
    v28 = *(v70 + 72);
    v29 = *(v70 + 16);
    v29(v18, *(v71 + 48) + v28 * v26, v75);
    v30 = *(v27 + 56);
    v31 = type metadata accessor for IntelligenceAppIntentsPayload();
    v32 = *(v31 - 8);
    v33 = *(v32 + 16);
    v34 = v30 + *(v32 + 72) * v26;
    v18 = v73;
    v35 = *(v67 + 48);
    v33(&v73[v35], v34, v31);
    if (*(a2 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v37 & 1) != 0))
    {
      v38 = *(a2 + 56) + v36 * v28;
      v39 = v60;
      v40 = v75;
      v29(v60, v38, v75);
      v41 = *v59;
      (*v59)(v62, v39, v40);
      v42 = v41;
      v43 = *(v74 + 48);
      v44 = v68;
      v45 = v40;
      v18 = v73;
      v42(v68, v62, v45);
      v33((v44 + v43), &v18[v35], v31);
      v46 = 0;
    }

    else
    {
      v46 = 1;
      v44 = v68;
    }

    v23 = v65;
    v19 = v66;
    v22 &= v22 - 1;
    v47 = v74;
    (*v64)(v44, v46, 1, v74);
    outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(v18, type metadata accessor for (key: IntelligenceDataSourceItem, value: IntelligenceAppIntentsPayload));
    if ((*v63)(v44, 1, v47) != 1)
    {
      v48 = v56;
      outlined init with take of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(v44, v56);
      outlined init with take of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(v48, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
      }

      a2 = v69;
      v50 = v61[2];
      v49 = v61[3];
      if (v50 >= v49 >> 1)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v61);
      }

      v51 = v61;
      v61[2] = v50 + 1;
      outlined init with take of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(v58, v51 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v50);
      goto LABEL_4;
    }

    outlined destroy of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)?(v44);
    v25 = v24;
    a2 = v69;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v24 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v24);
    ++v25;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  v52 = v61;
  if (v61[2])
  {
    type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceAppIntentsPayload>();
    v53 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC8];
  }

  v76 = v53;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v52, 1, &v76);
  return v76;
}

void type metadata accessor for (key: IntelligenceDataSourceItem, value: IntelligenceAppIntentsPayload)()
{
  if (!lazy cache variable for type metadata for (key: IntelligenceDataSourceItem, value: IntelligenceAppIntentsPayload))
  {
    type metadata accessor for IntelligenceDataSourceItem();
    type metadata accessor for IntelligenceAppIntentsPayload();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: IntelligenceDataSourceItem, value: IntelligenceAppIntentsPayload));
    }
  }
}

uint64_t outlined destroy of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)?(uint64_t a1)
{
  type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)?(0, &lazy cache variable for type metadata for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)?, type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload), MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PlatformUnaryViewResponder.bindEvent(_:)()
{

  v0 = dispatch thunk of ResponderNode.bindEvent(_:)();

  return v0;
}

uint64_t PlatformUnaryViewResponder.makeGesture(inputs:)()
{

  dispatch thunk of ResponderNode.makeGesture(inputs:)();
}

Swift::Void __swiftcall PlatformUnaryViewResponder.resetGesture()()
{

  dispatch thunk of ResponderNode.resetGesture()();
}

uint64_t PlatformUnaryViewResponder.children.getter()
{
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18CD69590;
  *(v1 + 32) = *(v0 + 256);

  return v1;
}

uint64_t PlatformUnaryViewResponder.features.getter@<X0>(_WORD *a1@<X8>)
{

  dispatch thunk of ViewResponder.features.getter();

  *a1 = v3 | 3;
  return result;
}

uint64_t PlatformUnaryViewResponder.deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  swift_weakDestroy();
  MEMORY[0x18D011290](v0 + 40);
  MEMORY[0x18D011290](v0 + 48);
  outlined destroy of ContentResponderHelper<UIViewContentResponder>(v0 + 56, type metadata accessor for ContentResponderHelper<UIViewContentResponder>);
  outlined destroy of ContentResponderHelper<UIViewContentResponder>(v0 + 184, type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?);
  MEMORY[0x18D011290](v0 + 224);
  MEMORY[0x18D011290](v0 + 232);

  return v0;
}

uint64_t PlatformUnaryViewResponder.__deallocating_deinit()
{
  PlatformUnaryViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t static ToolbarContent._makeContent(content:inputs:resolved:)()
{
  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t protocol witness for static ToolbarContent._makeContent(content:inputs:resolved:) in conformance DefaultToolbarItem.InternalContent()
{
  return protocol witness for static ToolbarContent._makeContent(content:inputs:resolved:) in conformance DefaultToolbarItem.InternalContent();
}

{
  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t protocol witness for static ToolbarContent._makeToolbar(content:inputs:) in conformance DefaultToolbarItem@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v5[2] = a1[2];
  v6[0] = v2;
  *(v6 + 12) = *(a1 + 60);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return specialized static ToolbarContent._makeToolbar(content:inputs:)(v5, a2);
}

uint64_t specialized static ToolbarContent._makeToolbar(content:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v3 = v23;
  v4 = v24;
  v5 = DWORD1(v24);
  v6 = a1[3];
  v21 = a1[2];
  v22[0] = v6;
  *(v22 + 12) = *(a1 + 60);
  v7 = a1[1];
  v19 = *a1;
  v20 = v7;
  outlined init with copy of _ToolbarInputs(a1, &v23);
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v23 = v3;
    LOBYTE(v24) = v4;
    DWORD1(v24) = v5;
    type metadata accessor for ToolbarContentBodyAccessory<DefaultToolbarItem>();
    lazy protocol witness table accessor for type Map<SearchToolbarItem, Never> and conformance Map<A, B>(&lazy protocol witness table cache variable for type ToolbarContentBodyAccessory<DefaultToolbarItem> and conformance ToolbarContentBodyAccessory<A>, type metadata accessor for ToolbarContentBodyAccessory<DefaultToolbarItem>);
    BodyAccessor.makeBody(container:inputs:fields:)();
    v8 = v16;
    v25 = v21;
    v26[0] = v22[0];
    *(v26 + 12) = *(v22 + 12);
    v23 = v19;
    v24 = v20;
    _s7SwiftUI19TupleToolbarContentV05_makeD07content6inputsAA01_D7OutputsVAA11_GraphValueVyACyxGG_AA01_D6InputsVtFZAA07DefaultD4ItemV08InternalE0V_Tt2B5(v14, &v23, &v15);
    v12 = v15;
    v9 = DWORD2(v15);
    v10 = v16;
    if ((v8 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v17 = v21;
    v18[0] = v22[0];
    *(v18 + 12) = *(v22 + 12);
    v15 = v19;
    v16 = v20;
    outlined destroy of _ToolbarInputs(&v15);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v12;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v3 = v24;
  v4 = v25;
  v5 = DWORD1(v25);
  v6 = a1[3];
  v22 = a1[2];
  v23[0] = v6;
  *(v23 + 12) = *(a1 + 60);
  v7 = a1[1];
  v20 = *a1;
  v21 = v7;
  outlined init with copy of _ToolbarInputs(a1, &v24);
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    *&v24 = 0xD000000000000025;
    *(&v24 + 1) = 0x800000018CD4B270;
    MEMORY[0x18D00C9B0](0x726576654ELL, 0xE500000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v24 = v3;
    LOBYTE(v25) = v4;
    DWORD1(v25) = v5;
    type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(0, &lazy cache variable for type metadata for ToolbarContentBodyAccessory<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for ToolbarContentBodyAccessory);
    lazy protocol witness table accessor for type ToolbarContentBodyAccessory<Never> and conformance ToolbarContentBodyAccessory<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v8 = v17;
    v26 = v22;
    v27[0] = v23[0];
    *(v27 + 12) = *(v23 + 12);
    v24 = v20;
    v25 = v21;
    outlined init with copy of _ToolbarInputs(&v24, &v16);
    specialized static ToolbarContent._makeToolbar(content:inputs:)(&v16, v15, &v24);
    outlined destroy of _ToolbarInputs(&v24);
    v9 = v16;
    v10 = DWORD2(v16);
    v13 = v17;
    if ((v8 & 1) == 0)
    {
      v11 = DWORD2(v16);
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
      v10 = v11;
    }

    v18 = v22;
    v19[0] = v23[0];
    *(v19 + 12) = *(v23 + 12);
    v16 = v20;
    v17 = v21;
    outlined destroy of _ToolbarInputs(&v16);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
  }

  return result;
}

uint64_t static ToolbarContent._makeToolbar(content:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v33 = a1[2];
  v34[0] = v2;
  *(v34 + 12) = *(a1 + 60);
  v3 = a1[1];
  v31 = *a1;
  v32 = v3;
  static DynamicPropertyCache.fields(of:)();
  v4 = v40;
  v29 = v33;
  v30[0] = v34[0];
  *(v30 + 12) = *(v34 + 12);
  v27 = v31;
  v28 = v32;
  v15 = DWORD1(v40);
  v16 = *(&v39 + 1);
  v17 = v39;
  v35 = v39;
  LOBYTE(v36) = v40;
  DWORD1(v36) = DWORD1(v40);
  outlined init with copy of _ToolbarInputs(&v31, &v39);
  static ToolbarContent.makeBody(toolbar:inputs:fields:)();
  v5 = *(&v39 + 1);
  v14 = v39;
  v6 = v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = v29;
  v38[0] = v30[0];
  *(v38 + 12) = *(v30 + 12);
  v35 = v27;
  v36 = v28;
  v22 = v29;
  v23[0] = v30[0];
  *(v23 + 12) = *(v30 + 12);
  v20 = v27;
  v21 = v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _ToolbarInputs(&v35, &v39);
  v9(&v24, v19, &v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  v40 = v21;
  v41 = v22;
  v42[0] = v23[0];
  *(v42 + 12) = *(v23 + 12);
  v39 = v20;
  outlined destroy of _ToolbarInputs(&v39);
  v10 = v24;
  v11 = v25;
  v12 = v26;
  if ((v6 & 1) == 0)
  {
    v19[0] = v14;
    v19[1] = v5;
    v24 = v17;
    v25 = v16;
    LOBYTE(v26) = v4;
    HIDWORD(v26) = v15;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v22 = v29;
  v23[0] = v30[0];
  *(v23 + 12) = *(v30 + 12);
  v20 = v27;
  v21 = v28;
  outlined destroy of _ToolbarInputs(&v20);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  return result;
}

uint64_t specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)()
{
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(0, &lazy cache variable for type metadata for Map<DefaultToolbarItem.InternalContent, Never>, &type metadata for DefaultToolbarItem.InternalContent, MEMORY[0x1E69E73E0], MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<DefaultToolbarItem.InternalContent, Never> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<DefaultToolbarItem.InternalContent, Never> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<DefaultToolbarItem.InternalContent, Never>, &type metadata for DefaultToolbarItem.InternalContent);

  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

{
  v0 = MEMORY[0x1E69E73E0];
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(0, &lazy cache variable for type metadata for Map<Never, Never>, v0, v0, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<DefaultToolbarItem.InternalContent, Never> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<Never, Never> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<Never, Never>, v0);

  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

{
  lazy protocol witness table accessor for type DefaultToolbarItem and conformance DefaultToolbarItem();
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for TupleToolbarContent<DefaultToolbarItem.InternalContent>(0, &lazy cache variable for type metadata for TupleToolbarContent<DefaultToolbarItem.InternalContent>, type metadata accessor for TupleToolbarContent);
  type metadata accessor for Map<DefaultToolbarItem, TupleToolbarContent<DefaultToolbarItem.InternalContent>>();
  lazy protocol witness table accessor for type Map<SearchToolbarItem, Never> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<DefaultToolbarItem, TupleToolbarContent<DefaultToolbarItem.InternalContent>> and conformance Map<A, B>, type metadata accessor for Map<DefaultToolbarItem, TupleToolbarContent<DefaultToolbarItem.InternalContent>>);

  Attribute.init<A>(body:value:flags:update:)();
}

{
  type metadata accessor for SearchToolbarItem();
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<SearchToolbarItem, Never>();
  lazy protocol witness table accessor for type Map<SearchToolbarItem, Never> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<SearchToolbarItem, Never> and conformance Map<A, B>, type metadata accessor for Map<SearchToolbarItem, Never>);

  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

{
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(0, &lazy cache variable for type metadata for Map<ToolbarSpacer, Never>, &type metadata for ToolbarSpacer, MEMORY[0x1E69E73E0], MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<DefaultToolbarItem.InternalContent, Never> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<ToolbarSpacer, Never> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<ToolbarSpacer, Never>, &type metadata for ToolbarSpacer);

  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

{
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(0, &lazy cache variable for type metadata for Map<EmptyToolbarContent, Never>, &type metadata for EmptyToolbarContent, MEMORY[0x1E69E73E0], MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<DefaultToolbarItem.InternalContent, Never> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EmptyToolbarContent, Never> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EmptyToolbarContent, Never>, &type metadata for EmptyToolbarContent);

  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

{
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(0, &lazy cache variable for type metadata for Map<LimitedAvailabilityToolbarContent, Never>, &type metadata for LimitedAvailabilityToolbarContent, MEMORY[0x1E69E73E0], MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<DefaultToolbarItem.InternalContent, Never> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<LimitedAvailabilityToolbarContent, Never> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<LimitedAvailabilityToolbarContent, Never>, &type metadata for LimitedAvailabilityToolbarContent);
  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)(int a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16[1] = a1;
  type metadata accessor for _GraphValue();
  v21 = a4;
  v22 = a5;
  LODWORD(v23) = _GraphValue.value.getter();
  *(&v23 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  *&v24 = swift_getKeyPath();
  v18 = AssociatedTypeWitness;
  v19 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v23, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v17, v19, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);

  _GraphValue.init(_:)();
  v13 = a2[1];
  v23 = *a2;
  v24 = v13;
  v25 = a2[2];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v16, &v23, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static ToolbarContent.makeBody(toolbar:inputs:fields:)()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    _StringGuts.grow(_:)(39);

    v1 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ToolbarContentBodyAccessory();
    swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  return result;
}

uint64_t ToolbarContentBodyAccessory.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for ToolbarContentBodyAccessory();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t protocol witness for static ToolbarContent._makeToolbar(content:inputs:) in conformance Never@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v5[2] = a1[2];
  v6[0] = v2;
  *(v6 + 12) = *(a1 + 60);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return specialized static ToolbarContent._makeToolbar(content:inputs:)(v5, a2);
}

uint64_t static EmptyToolbarContent._makeToolbar(content:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  result = PreferencesOutputs.init()();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  return result;
}

uint64_t protocol witness for static ToolbarContent._makeToolbar(content:inputs:) in conformance EmptyToolbarContent@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  result = PreferencesOutputs.init()();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  return result;
}

uint64_t static ToolbarContentBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v9, a3);
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance ToolbarContentDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance ToolbarContentDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ToolbarContentDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance ToolbarContentDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

uint64_t _s7SwiftUI19TupleToolbarContentV05_makeD07content6inputsAA01_D7OutputsVAA11_GraphValueVyACyxGG_AA01_D6InputsVtFZAA07DefaultD4ItemV08InternalE0V_Tt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA014ToolbarContentD0V_Tt1g5(&type metadata for DefaultToolbarItem.InternalContent, v40);
  v5 = *a2;
  *&v40[24] = *(a2 + 16);
  v6 = *(a2 + 48);
  *&v40[40] = *(a2 + 32);
  *&v40[56] = v6;
  *&v40[68] = *(a2 + 60);
  v7 = *v40;
  *&v40[88] = 0;
  *&v41 = 0;
  *(&v41 + 1) = MEMORY[0x1E69E7CC0];
  *v40 = a1;
  *&v40[8] = v5;
  v8 = *(v7 + 16);
  if (v8)
  {
    outlined init with copy of _ToolbarInputs(a2, v34);
    v9 = (v7 + 48);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 3;
      *&v40[88] = AGTupleElementOffset();
      type metadata accessor for TupleToolbarContent<DefaultToolbarItem.InternalContent>(0, &lazy cache variable for type metadata for TupleToolbarContent<DefaultToolbarItem.InternalContent>.Visitor, type metadata accessor for TupleToolbarContent.Visitor);
      TupleToolbarContent.Visitor.visit<A>(type:)(v10, v12, v10, v11);
      --v8;
    }

    while (v8);
    v13 = *(&v41 + 1);
  }

  else
  {
    outlined init with copy of _ToolbarInputs(a2, v34);
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = a2;
    *&v34[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = *&v34[0];
    v17 = (v13 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      *&v34[0] = v15;
      v20 = *(v15 + 16);
      v21 = *(v15 + 24);

      if (v20 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v15 = *&v34[0];
      }

      v17 += 6;
      *(v15 + 16) = v20 + 1;
      v22 = v15 + 16 * v20;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      --v14;
    }

    while (v14);
    a2 = v16;
  }

  PreferencesOutputs.init()();
  v37 = v15;
  v38 = *&v34[0];
  v39 = DWORD2(v34[0]);
  v42 = *(a2 + 48);
  v32 = a2;
  v43 = *(a2 + 56);
  v35 = v42;
  v36 = 0;
  v23 = *(v42 + 16);
  if (v23)
  {
    outlined init with copy of PreferencesInputs(&v42, v34);
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();
    v24 = -v23;
    v25 = 1;
    do
    {
      v26 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v26(v34, 0);
      v36 = v25;
      static PreferenceKey.visitKey<A>(_:)();
      ++v25;
    }

    while (v24 + v25 != 1);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v42, v34);
  }

  if (*(v13 + 16))
  {
    v27 = (v13 + 48);
  }

  else
  {
    v27 = (v32 + 64);
  }

  v28 = *v27;
  v29 = v39;
  v30 = v38;

  *a3 = v30;
  *(a3 + 8) = v29;
  *(a3 + 16) = v28;
  v34[4] = *&v40[64];
  v34[5] = *&v40[80];
  v34[6] = v41;
  v34[0] = *v40;
  v34[1] = *&v40[16];
  v34[2] = *&v40[32];
  v34[3] = *&v40[48];
  return outlined destroy of TupleToolbarContent<DefaultToolbarItem.InternalContent>.Visitor(v34);
}

uint64_t assignWithCopy for _ToolbarInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for _ToolbarInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ToolbarInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ToolbarInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _ToolbarOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for _ToolbarOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for _ToolbarOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for _ToolbarItemList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for _ToolbarItemList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t partial apply for specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)()
{
  return specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)();
}

{
  return specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)();
}

{
  return specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)();
}

{
  return specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)();
}

{
  return specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)();
}

{
  return specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)();
}

{
  return specialized closure #1 in static ToolbarContent._makeContent(content:inputs:resolved:)();
}

uint64_t lazy protocol witness table accessor for type Map<DefaultToolbarItem.InternalContent, Never> and conformance Map<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(255, a2, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarContentBodyAccessory<Never> and conformance ToolbarContentBodyAccessory<A>()
{
  result = lazy protocol witness table cache variable for type ToolbarContentBodyAccessory<Never> and conformance ToolbarContentBodyAccessory<A>;
  if (!lazy protocol witness table cache variable for type ToolbarContentBodyAccessory<Never> and conformance ToolbarContentBodyAccessory<A>)
  {
    type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(255, &lazy cache variable for type metadata for ToolbarContentBodyAccessory<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for ToolbarContentBodyAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarContentBodyAccessory<Never> and conformance ToolbarContentBodyAccessory<A>);
  }

  return result;
}

void type metadata accessor for Map<DefaultToolbarItem.InternalContent, Never>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type DefaultToolbarItem and conformance DefaultToolbarItem()
{
  result = lazy protocol witness table cache variable for type DefaultToolbarItem and conformance DefaultToolbarItem;
  if (!lazy protocol witness table cache variable for type DefaultToolbarItem and conformance DefaultToolbarItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToolbarItem and conformance DefaultToolbarItem);
  }

  return result;
}

void type metadata accessor for Map<DefaultToolbarItem, TupleToolbarContent<DefaultToolbarItem.InternalContent>>()
{
  if (!lazy cache variable for type metadata for Map<DefaultToolbarItem, TupleToolbarContent<DefaultToolbarItem.InternalContent>>)
  {
    type metadata accessor for TupleToolbarContent<DefaultToolbarItem.InternalContent>(255, &lazy cache variable for type metadata for TupleToolbarContent<DefaultToolbarItem.InternalContent>, type metadata accessor for TupleToolbarContent);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<DefaultToolbarItem, TupleToolbarContent<DefaultToolbarItem.InternalContent>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Map<SearchToolbarItem, Never> and conformance Map<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ToolbarContentBodyAccessory<DefaultToolbarItem>()
{
  if (!lazy cache variable for type metadata for ToolbarContentBodyAccessory<DefaultToolbarItem>)
  {
    lazy protocol witness table accessor for type DefaultToolbarItem and conformance DefaultToolbarItem();
    v0 = type metadata accessor for ToolbarContentBodyAccessory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolbarContentBodyAccessory<DefaultToolbarItem>);
    }
  }
}

void type metadata accessor for TupleToolbarContent<DefaultToolbarItem.InternalContent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for DefaultToolbarItem.InternalContent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of TupleToolbarContent<DefaultToolbarItem.InternalContent>.Visitor(uint64_t a1)
{
  type metadata accessor for TupleToolbarContent<DefaultToolbarItem.InternalContent>(0, &lazy cache variable for type metadata for TupleToolbarContent<DefaultToolbarItem.InternalContent>.Visitor, type metadata accessor for TupleToolbarContent.Visitor);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Map<SearchToolbarItem, Never>()
{
  if (!lazy cache variable for type metadata for Map<SearchToolbarItem, Never>)
  {
    type metadata accessor for SearchToolbarItem();
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<SearchToolbarItem, Never>);
    }
  }
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInsetsTraitKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t View.formRowBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.formRowBackground<A>(_:), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E697E0B8], v5, &v8);
  v7[7] = v8;
  View._trait<A>(_:_:)();
}

uint64_t closure #1 in View.formRowBackground<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = AnyShapeStyle.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t View.formRowIndentationLevel(_:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  View.transformTrait<A>(_:transform:)();
}

void *partial apply for closure #1 in View.formRowIndentationLevel(_:)(void *result)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    *result = *(v1 + 16);
  }

  return result;
}

uint64_t FormRowAccessoryRevealState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUI27FormRowAccessoryRevealState__isHovered;
  type metadata accessor for Published<Bool>(0, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC7SwiftUI27FormRowAccessoryRevealState__isFocused, v3);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ColorProvider.tag.getter in conformance EmphasizedGroupBackgroundColorProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t protocol witness for ColorProvider.resolveHDR(in:) in conformance EmphasizedGroupBackgroundColorProvider@<X0>(_DWORD *a1@<X8>)
{
  result = specialized EmphasizedGroupBackgroundColorProvider.resolve(in:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = 2143289344;
  return result;
}

uint64_t one-time initialization function for emphasizedGroupBackground()
{
  lazy protocol witness table accessor for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider();
  result = Color.init<A>(provider:)();
  static Color.emphasizedGroupBackground = result;
  return result;
}

uint64_t static Color.emphasizedGroupBackground.getter()
{
  if (one-time initialization token for emphasizedGroupBackground != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for FormRowAccessoryRevealState()
{
  result = type metadata singleton initialization cache for FormRowAccessoryRevealState;
  if (!type metadata singleton initialization cache for FormRowAccessoryRevealState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FormRowAccessoryRevealState()
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<FormRowInsetsTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInsetsTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInsetsTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<FormRowInsetsTraitKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInsetsTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<FormRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<FormRowBackgroundTraitKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type GroupedFormSizeVariant.Value and conformance GroupedFormSizeVariant.Value()
{
  result = lazy protocol witness table cache variable for type GroupedFormSizeVariant.Value and conformance GroupedFormSizeVariant.Value;
  if (!lazy protocol witness table cache variable for type GroupedFormSizeVariant.Value and conformance GroupedFormSizeVariant.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedFormSizeVariant.Value and conformance GroupedFormSizeVariant.Value);
  }

  return result;
}

uint64_t specialized EmphasizedGroupBackgroundColorProvider.resolve(in:)()
{
  EnvironmentValues.colorScheme.getter();
  EnvironmentValues.colorSchemeContrast.getter();
  return Color.Resolved.init(white:opacity:)();
}

id UIKitRelationshipGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo19UIGestureRecognizerC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  *&v3[OBJC_IVAR____TtC7SwiftUI34UIKitRelationshipGestureRecognizer_gesturesRequiringFailure] = v7;
  outlined init with copy of Any?(a1, v19);
  v8 = v20;
  if (v20)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v14 = 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_initWithTarget_action_, v14, a2);
  swift_unknownObjectRelease();
  v16 = v15;
  [v16 setDelaysTouchesBegan_];
  [v16 setDelaysTouchesEnded_];

  outlined destroy of Any?(a1);
  return v16;
}

__n128 AutomaticSliderStyle.makeBody(configuration:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[7];
  v23 = a1[6];
  v24 = v4;
  v5 = a1[7];
  v25 = a1[8];
  v6 = a1[1];
  v7 = a1[3];
  v19 = a1[2];
  v20 = v7;
  v8 = a1[3];
  v9 = a1[5];
  v21 = a1[4];
  v22 = v9;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v17[6] = v23;
  v17[7] = v5;
  v17[8] = a1[8];
  v17[2] = v19;
  v17[3] = v8;
  v17[4] = v21;
  v17[5] = v3;
  v17[0] = v18[0];
  v17[1] = v6;
  outlined init with copy of SliderStyleConfiguration(v18, v26);
  Slider.init<>(_:)(v17, v26);
  KeyPath = swift_getKeyPath();
  LOBYTE(v17[0]) = 0;
  outlined copy of Environment<Selector?>.Content(KeyPath, 0);
  outlined consume of Environment<Selector?>.Content(KeyPath, 0);
  v12 = v17[0];
  v13 = v26[7];
  *(a2 + 96) = v26[6];
  *(a2 + 112) = v13;
  *(a2 + 128) = v26[8];
  v14 = v26[3];
  *(a2 + 32) = v26[2];
  *(a2 + 48) = v14;
  v15 = v26[5];
  *(a2 + 64) = v26[4];
  *(a2 + 80) = v15;
  result = v26[1];
  *a2 = v26[0];
  *(a2 + 16) = result;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v12;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>, SliderStyleModifier<PlatformSliderStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>, SliderStyleModifier<PlatformSliderStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>, SliderStyleModifier<PlatformSliderStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>, SliderStyleModifier<PlatformSliderStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>, SliderStyleModifier<PlatformSliderStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>, SliderStyleModifier<PlatformSliderStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>, SliderStyleModifier<PlatformSliderStyle>>)
  {
    type metadata accessor for ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>();
    type metadata accessor for SliderStyleModifier<MenuSliderStyle>(255, &lazy cache variable for type metadata for SliderStyleModifier<PlatformSliderStyle>, lazy protocol witness table accessor for type PlatformSliderStyle and conformance PlatformSliderStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>, SliderStyleModifier<PlatformSliderStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>)
  {
    type metadata accessor for Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>()
{
  if (!lazy cache variable for type metadata for Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>)
  {
    lazy protocol witness table accessor for type SliderStyleConfiguration.ValueLabel and conformance SliderStyleConfiguration.ValueLabel();
    v0 = type metadata accessor for Slider();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SliderStyleConfiguration.ValueLabel and conformance SliderStyleConfiguration.ValueLabel()
{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.ValueLabel and conformance SliderStyleConfiguration.ValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.ValueLabel and conformance SliderStyleConfiguration.ValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.ValueLabel and conformance SliderStyleConfiguration.ValueLabel);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
    type metadata accessor for SliderStyleModifier<MenuSliderStyle>(255, &lazy cache variable for type metadata for SliderStyleModifier<MenuSliderStyle>, lazy protocol witness table accessor for type MenuSliderStyle and conformance MenuSliderStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MenuSliderStyle and conformance MenuSliderStyle()
{
  result = lazy protocol witness table cache variable for type MenuSliderStyle and conformance MenuSliderStyle;
  if (!lazy protocol witness table cache variable for type MenuSliderStyle and conformance MenuSliderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuSliderStyle and conformance MenuSliderStyle);
  }

  return result;
}

void type metadata accessor for SliderStyleModifier<MenuSliderStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for SliderStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformSliderStyle and conformance PlatformSliderStyle()
{
  result = lazy protocol witness table cache variable for type PlatformSliderStyle and conformance PlatformSliderStyle;
  if (!lazy protocol witness table cache variable for type PlatformSliderStyle and conformance PlatformSliderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformSliderStyle and conformance PlatformSliderStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>>();
    lazy protocol witness table accessor for type Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel> and conformance Slider<A, B>(&lazy protocol witness table cache variable for type Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel> and conformance Slider<A, B>, type metadata accessor for Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel> and conformance Slider<A, B>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SliderStyleModifier<MenuSliderStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slider<SliderStyleConfiguration.Label, SliderStyleConfiguration.ValueLabel> and conformance Slider<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI25AccessibilityViewModifierPAAE26configureInputsForGeometryyyAA01_dG0VzFZAA0c5ImageE0V_Tt0g5Tm(uint64_t result)
{
  v1 = *(result + 36);
  if ((v1 & 0x20) != 0)
  {
    v2 = result;
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      if ((v1 & 0x40) != 0)
      {
        *(v2 + 36) = v1 & 0xFFFFFFBF;
      }

      lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();

      PropertyList.subscript.getter();

      if (v3 == 1)
      {
        return PreferenceKeys.add(_:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityImageModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(_BYTE *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
{
  v110 = *MEMORY[0x1E69E9840];
  v87 = *(a2 + 48);
  v88 = *(a2 + 56);
  *&v106 = *(a2 + 48);
  DWORD2(v106) = *(a2 + 56);
  outlined init with copy of PreferencesInputs(&v87, &v103);
  v80 = a1;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    outlined destroy of PreferencesInputs(&v87);
    v8 = *(a2 + 48);
    v108 = *(a2 + 32);
    *v109 = v8;
    *&v109[16] = *(a2 + 64);
    *&v109[32] = *(a2 + 80);
    v9 = *(a2 + 16);
    v106 = *a2;
    v107 = v9;
    outlined init with copy of _ViewInputs(a2, &v103);
    _s7SwiftUI25AccessibilityViewModifierPAAE26configureInputsForGeometryyyAA01_dG0VzFZAA0c5ImageE0V_Tt0g5Tm(&v106);
    v69 = *(a2 + 8);
    v71 = *a2;
    v73 = *(a2 + 16);
    v83 = *(a2 + 24);
    v10 = *(a2 + 36);
    v85 = *(a2 + 32);
    v67 = *(a2 + 40);
    if ((v10 & 0x10) != 0)
    {
      v11 = *(a2 + 48);
      v104[1] = *(a2 + 32);
      v105[0] = v11;
      v105[1] = *(a2 + 64);
      LODWORD(v105[2]) = *(a2 + 80);
      v12 = *(a2 + 16);
      v103 = *a2;
      v104[0] = v12;
      _ViewInputs.animatedPosition()();
      _ViewInputs.containerPosition.setter();
    }

    v13 = *(a2 + 48);
    v104[1] = *(a2 + 32);
    v105[0] = v13;
    v105[1] = *(a2 + 64);
    LODWORD(v105[2]) = *(a2 + 80);
    v14 = *(a2 + 16);
    v103 = *a2;
    v104[0] = v14;
    v15 = _ViewInputs.isScrapeable.getter();
    if (v15)
    {
      ScrapeableID.init()();
      v78 = v103;
      v15 = _ViewInputs.scrapeableParentID.setter();
    }

    else
    {
      v78 = 0;
    }

    v103 = v106;
    v104[0] = v107;
    v104[1] = v108;
    v21 = *v109;
    v22 = *&v109[8];
    *(v105 + 12) = *&v109[12];
    *(&v105[1] + 12) = *&v109[28];
    *&v105[0] = *v109;
    DWORD2(v105[0]) = *&v109[8];
    a3(v96, v15, &v103);
    *&v103 = v21;
    DWORD2(v103) = v22;
    if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
    {
      *&v103 = v21;
      DWORD2(v103) = v22;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v103 = *v96;
        DWORD2(v103) = *&v96[8];
        v23 = PreferencesOutputs.subscript.getter();
        v24 = *MEMORY[0x1E698D3F8];
        if ((v23 & 0x100000000) == 0)
        {
          v24 = v23;
        }

        v76 = v24;
        KeyPath = swift_getKeyPath();
        LODWORD(v103) = v80;
        *(&v103 + 1) = closure #1 in Attribute.subscript.getterspecialized partial apply;
        *&v104[0] = KeyPath;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for ModifiedContent<ArchivablePlaceholder, ArchivableAccessibilityViewModifier>(0, &lazy cache variable for type metadata for Map<AccessibilityImageModifier, AccessibilityAttachment>, &type metadata for AccessibilityImageModifier, MEMORY[0x1E697FFF0], MEMORY[0x1E698D398]);
        lazy protocol witness table accessor for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>();

        v26 = Attribute.init<A>(body:value:flags:update:)();

        *&v103 = __PAIR64__(v26, v76);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v103) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    v27 = *v96;
    v101 = *v96;
    v102 = *&v96[8];
    if ((v10 & 0x10) != 0)
    {
      v77 = *&v96[8];
      *&v103 = v87;
      DWORD2(v103) = v88;
      v66 = a4;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v103 = v27;
        DWORD2(v103) = v77;
        v37 = PreferencesOutputs.subscript.getter();
        v38 = *MEMORY[0x1E698D3F8];
        if ((v37 & 0x100000000) != 0)
        {
          v39 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v39 = v37;
        }

        v65 = v39;
      }

      else
      {
        v38 = *MEMORY[0x1E698D3F8];
        v65 = *MEMORY[0x1E698D3F8];
      }

      _DisplayList_Identity.init()();
      v64 = v103;
      v49 = *(a2 + 48);
      v104[1] = *(a2 + 32);
      v105[0] = v49;
      v105[1] = *(a2 + 64);
      LODWORD(v105[2]) = *(a2 + 80);
      v50 = *(a2 + 16);
      v103 = *a2;
      v104[0] = v50;
      *v96 = v64;
      _ViewInputs.pushIdentity(_:)();
      PropertyList.subscript.getter();
      *&v89 = v71;
      *(&v89 + 1) = v69;
      v90 = v73;
      v91 = v83;
      v92 = v85;
      v93 = v10;
      v94 = v67;
      _GraphInputs.interfaceIdiom.getter();
      PropertyList.subscript.getter();
      v51 = *(a2 + 48);
      v104[1] = *(a2 + 32);
      v105[0] = v51;
      v105[1] = *(a2 + 64);
      LODWORD(v105[2]) = *(a2 + 80);
      v52 = *(a2 + 16);
      v103 = *a2;
      v104[0] = v52;
      swift_beginAccess();
      v70 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v53 = *(a2 + 48);
      v104[1] = *(a2 + 32);
      v105[0] = v53;
      v105[1] = *(a2 + 64);
      LODWORD(v105[2]) = *(a2 + 80);
      v54 = *(a2 + 16);
      v103 = *a2;
      v104[0] = v54;
      v68 = _ViewInputs.animatedPosition()();
      v55 = *(a2 + 48);
      v104[1] = *(a2 + 32);
      v105[0] = v55;
      v105[1] = *(a2 + 64);
      LODWORD(v105[2]) = *(a2 + 80);
      v56 = *(a2 + 16);
      v103 = *a2;
      v104[0] = v56;
      v57 = _ViewInputs.containerPosition.getter();
      v58 = *(v73 + 16);
      *v96 = v27;
      *&v96[8] = v77;
      v59 = PreferencesOutputs.subscript.getter();
      if ((v59 & 0x100000000) != 0)
      {
        v60 = v38;
      }

      else
      {
        v60 = v59;
      }

      *v96 = v27;
      *&v96[8] = v77;
      v61 = PreferencesOutputs.subscript.getter();
      if ((v61 & 0x100000000) != 0)
      {
        v62 = v38;
      }

      else
      {
        v62 = v61;
      }

      type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityImageModifier>, lazy protocol witness table accessor for type AccessibilityImageModifier and conformance AccessibilityImageModifier, &type metadata for AccessibilityImageModifier, type metadata accessor for AccessibilityViewModifierAccessor);
      *v96 = v64;
      v96[4] = v82 & 1;
      *&v96[8] = v95;
      v96[24] = v81;
      *&v97 = v63;
      v28 = v80;
      *(&v97 + 1) = __PAIR64__(v70, v80);
      *&v98 = __PAIR64__(v57, v68);
      *(&v98 + 1) = __PAIR64__(v60, v58);
      *&v99 = __PAIR64__(v62, v65);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform();
      Attribute.init<A>(body:value:flags:update:)();
      v96[0] = 0;
      PreferencesOutputs.subscript.setter();
      v27 = v101;
      a4 = v66;
    }

    else
    {
      v28 = v80;
    }

    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c5ImageE0V_Tt5B5(v28, a2, v27, v102, 1, 0, 0, 0, 0, v78);
    LOBYTE(v103) = 0;
    PreferencesOutputs.subscript.setter();
    v104[1] = v108;
    v105[0] = *v109;
    v105[1] = *&v109[16];
    LODWORD(v105[2]) = *&v109[32];
    v103 = v106;
    v104[0] = v107;
    result = outlined destroy of _ViewInputs(&v103);
    *a4 = v101;
    v48 = v102;
  }

  else
  {
    *&v106 = v87;
    DWORD2(v106) = v88;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (*&v106 = v87, DWORD2(v106) = v88, (PreferencesInputs.contains<A>(_:includeHostPreferences:)()))
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      v16 = (v106 >> 4) & 1;
    }

    else
    {
      v16 = 0;
    }

    v74 = *(a2 + 8);
    v75 = *a2;
    v79 = *(a2 + 16);
    v89 = *(a2 + 24);
    v90 = *(a2 + 40);
    v17 = *(a2 + 48);
    v18 = *(a2 + 64);
    v108 = *(a2 + 32);
    *v109 = v17;
    *&v109[16] = v18;
    *&v109[32] = *(a2 + 80);
    v19 = *(a2 + 16);
    v106 = *a2;
    v107 = v19;
    if (v16)
    {
      outlined init with copy of _ViewInputs(a2, &v103);
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      LODWORD(v103) = v103 & 0xFFFFFFEF;
      v20 = PropertyList.subscript.setter();
    }

    else
    {
      v20 = outlined init with copy of _ViewInputs(a2, &v103);
    }

    v29 = *(a2 + 48);
    v104[1] = *(a2 + 32);
    v105[0] = v29;
    v105[1] = *(a2 + 64);
    LODWORD(v105[2]) = *(a2 + 80);
    v30 = *(a2 + 16);
    v103 = *a2;
    v104[0] = v30;
    a3(v96, v20, &v103);
    *&v103 = v87;
    DWORD2(v103) = v88;
    if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
    {
      *&v103 = v87;
      DWORD2(v103) = v88;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v103 = *v96;
        DWORD2(v103) = *&v96[8];
        v31 = PreferencesOutputs.subscript.getter();
        v32 = *MEMORY[0x1E698D3F8];
        if ((v31 & 0x100000000) == 0)
        {
          v32 = v31;
        }

        v72 = v32;
        v33 = swift_getKeyPath();
        LODWORD(v103) = a1;
        *(&v103 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
        *&v104[0] = v33;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for ModifiedContent<ArchivablePlaceholder, ArchivableAccessibilityViewModifier>(0, &lazy cache variable for type metadata for Map<AccessibilityImageModifier, AccessibilityAttachment>, &type metadata for AccessibilityImageModifier, MEMORY[0x1E697FFF0], MEMORY[0x1E698D398]);
        lazy protocol witness table accessor for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>();

        v34 = Attribute.init<A>(body:value:flags:update:)();

        *&v103 = __PAIR64__(v34, v72);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v103) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    v84 = *v96;
    v86 = *&v96[8];
    if (v16)
    {
      *&v103 = *v96;
      DWORD2(v103) = *&v96[8];
      PreferencesOutputs.subscript.getter();
      v35 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v35);
      *&v103 = v87;
      DWORD2(v103) = v88;
      MEMORY[0x1EEE9AC00](v36);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    else
    {
      outlined destroy of PreferencesInputs(&v87);
    }

    v40 = *(a2 + 48);
    v104[1] = *(a2 + 32);
    v105[0] = v40;
    v105[1] = *(a2 + 64);
    LODWORD(v105[2]) = *(a2 + 80);
    v41 = *(a2 + 16);
    v103 = *a2;
    v104[0] = v41;
    *v96 = 1024;
    if (_ViewInputs.requestsPlatformItem(for:)())
    {
      *&v103 = v84;
      DWORD2(v103) = v86;
      PreferencesOutputs.subscript.getter();
      swift_beginAccess();
      v42 = *(v79 + 16);
      type metadata accessor for PropertyList.Tracker();
      swift_allocObject();
      v43 = PropertyList.Tracker.init()();
      LODWORD(v103) = v42;
      *(&v103 + 1) = v43;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv();
      Attribute.init<A>(body:value:flags:update:)();

      *&v103 = v75;
      *(&v103 + 1) = v74;
      *&v104[0] = v79;
      *(v104 + 8) = v89;
      *(&v104[1] + 1) = v90;
      _GraphInputs.platformSystem.getter();
      v44 = *(a2 + 32);
      v45 = *(a2 + 64);
      v98 = *(a2 + 48);
      v99 = v45;
      v100 = *(a2 + 80);
      v46 = *(a2 + 16);
      *v96 = *a2;
      *&v96[16] = v46;
      v97 = v44;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform();
      Attribute.init<A>(body:value:flags:update:)();
      lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
      static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
    }

    v104[1] = v108;
    v105[0] = *v109;
    v105[1] = *&v109[16];
    LODWORD(v105[2]) = *&v109[32];
    v103 = v106;
    v104[0] = v107;
    result = outlined destroy of _ViewInputs(&v103);
    *a4 = v84;
    v48 = v86;
  }

  a4[1] = v48;
  return result;
}

double specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *)@<X2>, __int128 *a4@<X8>)
{
  v119 = *MEMORY[0x1E69E9840];
  v80 = *(a2 + 48);
  v81 = *(a2 + 56);
  *&v113 = *(a2 + 48);
  DWORD2(v113) = *(a2 + 56);
  outlined init with copy of PreferencesInputs(&v80, &v108);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v72 = a1;
    outlined destroy of PreferencesInputs(&v80);
    v8 = *(a2 + 48);
    v115 = *(a2 + 32);
    v116 = v8;
    v117 = *(a2 + 64);
    v118 = *(a2 + 80);
    v9 = *(a2 + 16);
    v113 = *a2;
    v114 = v9;
    outlined init with copy of _ViewInputs(a2, &v108);
    _s7SwiftUI25AccessibilityViewModifierPAAE26configureInputsForGeometryyyAA01_dG0VzFZAA0c5ImageE0V_Tt0g5Tm(&v113);
    v10 = *a2;
    v11 = *(a2 + 16);
    v78 = *(a2 + 24);
    v12 = *(a2 + 36);
    v79 = *(a2 + 32);
    v66 = *(a2 + 40);
    v68 = *(a2 + 8);
    if ((v12 & 0x10) != 0)
    {
      v13 = *(a2 + 48);
      v109[1] = *(a2 + 32);
      v110 = v13;
      v111 = *(a2 + 64);
      v112 = *(a2 + 80);
      v14 = *(a2 + 16);
      v108 = *a2;
      v109[0] = v14;
      _ViewInputs.animatedPosition()();
      _ViewInputs.containerPosition.setter();
    }

    v109[1] = v115;
    v110 = v116;
    v111 = v117;
    v112 = v118;
    v108 = v113;
    v109[0] = v114;
    v104 = v115;
    v105 = v116;
    v106 = v117;
    v107 = v118;
    v102 = v113;
    v103 = v114;
    v15 = outlined init with copy of _ViewInputs(&v108, v89);
    a3(v89, v15, &v102);
    v16 = v110;
    v17 = DWORD2(v110);
    *&v102 = v110;
    DWORD2(v102) = DWORD2(v110);
    if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
    {
      *&v102 = v16;
      DWORD2(v102) = v17;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v102 = *v89;
        DWORD2(v102) = *&v89[8];
        v18 = PreferencesOutputs.subscript.getter();
        v19 = a4;
        if ((v18 & 0x100000000) != 0)
        {
          v20 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v20 = v18;
        }

        OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
        *&v102 = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityPlatformViewModifier.PlatformViewAttachment and conformance AccessibilityPlatformViewModifier.PlatformViewAttachment();
        *&v102 = __PAIR64__(Attribute.init<A>(body:value:flags:update:)(), v20);
        a4 = v19;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v102) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    outlined destroy of _ViewInputs(&v108);
    v22 = *v89;
    v100 = *v89;
    v101 = *&v89[8];
    if ((v12 & 0x10) != 0)
    {
      v71 = *&v89[8];
      v65 = a4;
      *&v102 = v80;
      DWORD2(v102) = v81;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v102 = v22;
        DWORD2(v102) = v71;
        v30 = PreferencesOutputs.subscript.getter();
        v31 = *MEMORY[0x1E698D3F8];
        if ((v30 & 0x100000000) != 0)
        {
          v32 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v32 = v30;
        }

        v64 = v32;
      }

      else
      {
        v31 = *MEMORY[0x1E698D3F8];
        v64 = *MEMORY[0x1E698D3F8];
      }

      _DisplayList_Identity.init()();
      v63 = v102;
      v47 = *(a2 + 48);
      v104 = *(a2 + 32);
      v105 = v47;
      v106 = *(a2 + 64);
      v107 = *(a2 + 80);
      v48 = *(a2 + 16);
      v102 = *a2;
      v103 = v48;
      *v89 = v63;
      _ViewInputs.pushIdentity(_:)();
      PropertyList.subscript.getter();
      v82 = v10;
      v83 = v68;
      v84 = v11;
      v85 = v78;
      v86 = v79;
      v87 = v12;
      v88 = v66;
      _GraphInputs.interfaceIdiom.getter();
      PropertyList.subscript.getter();
      v49 = *(a2 + 48);
      v104 = *(a2 + 32);
      v105 = v49;
      v106 = *(a2 + 64);
      v107 = *(a2 + 80);
      v50 = *(a2 + 16);
      v102 = *a2;
      v103 = v50;
      swift_beginAccess();
      v67 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v51 = *(a2 + 48);
      v104 = *(a2 + 32);
      v105 = v51;
      v106 = *(a2 + 64);
      v107 = *(a2 + 80);
      v52 = *(a2 + 16);
      v102 = *a2;
      v103 = v52;
      v62 = _ViewInputs.animatedPosition()();
      v53 = *(a2 + 48);
      v104 = *(a2 + 32);
      v105 = v53;
      v106 = *(a2 + 64);
      v107 = *(a2 + 80);
      v54 = *(a2 + 16);
      v102 = *a2;
      v103 = v54;
      v55 = _ViewInputs.containerPosition.getter();
      v56 = *(v11 + 16);
      *v89 = v22;
      *&v89[8] = v71;
      v57 = PreferencesOutputs.subscript.getter();
      if ((v57 & 0x100000000) != 0)
      {
        v58 = v31;
      }

      else
      {
        v58 = v57;
      }

      *v89 = v22;
      *&v89[8] = v71;
      v59 = PreferencesOutputs.subscript.getter();
      if ((v59 & 0x100000000) != 0)
      {
        v60 = v31;
      }

      else
      {
        v60 = v59;
      }

      type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityPlatformViewModifier>, lazy protocol witness table accessor for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier, &type metadata for AccessibilityPlatformViewModifier, type metadata accessor for AccessibilityViewModifierAccessor);
      *v89 = v63;
      v89[4] = v75 & 1;
      *&v89[8] = v76;
      v90 = v74;
      v91 = v61;
      v24 = v72;
      v92 = v72;
      v93 = v67;
      v94 = v62;
      v95 = v55;
      v96 = v56;
      v97 = v58;
      v98 = v64;
      v99 = v60;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform();
      Attribute.init<A>(body:value:flags:update:)();
      v89[0] = 0;
      PreferencesOutputs.subscript.setter();
      v22 = v100;
      v23 = v65;
    }

    else
    {
      v23 = a4;
      v24 = v72;
    }

    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c8PlatformdE0V_Tt5B5(v24, a2, v22, SLODWORD(v101), 1, 0, 0, 0, 0, 0);
    LOBYTE(v102) = 0;
    PreferencesOutputs.subscript.setter();
    v104 = v115;
    v105 = v116;
    v106 = v117;
    v107 = v118;
    v102 = v113;
    v103 = v114;
    outlined destroy of _ViewInputs(&v102);
    *v23 = v100;
    result = v101;
    v23[1] = v101;
  }

  else
  {
    *&v113 = v80;
    DWORD2(v113) = v81;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (*&v113 = v80, DWORD2(v113) = v81, (PreferencesInputs.contains<A>(_:includeHostPreferences:)()))
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      v25 = (v113 >> 4) & 1;
    }

    else
    {
      v25 = 0;
    }

    v69 = *(a2 + 8);
    v70 = *a2;
    v73 = *(a2 + 16);
    *v89 = *(a2 + 24);
    *&v89[16] = *(a2 + 40);
    v26 = *(a2 + 48);
    v27 = *(a2 + 64);
    v115 = *(a2 + 32);
    v116 = v26;
    v117 = v27;
    v118 = *(a2 + 80);
    v28 = *(a2 + 16);
    v113 = *a2;
    v114 = v28;
    if (v25)
    {
      outlined init with copy of _ViewInputs(a2, &v108);
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      LODWORD(v108) = v108 & 0xFFFFFFEF;
      v29 = PropertyList.subscript.setter();
    }

    else
    {
      v29 = outlined init with copy of _ViewInputs(a2, &v108);
    }

    v33 = *(a2 + 48);
    v109[1] = *(a2 + 32);
    v110 = v33;
    v111 = *(a2 + 64);
    v112 = *(a2 + 80);
    v34 = *(a2 + 16);
    v108 = *a2;
    v109[0] = v34;
    a3(&v102, v29, &v108);
    *&v108 = v80;
    DWORD2(v108) = v81;
    if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
    {
      *&v108 = v80;
      DWORD2(v108) = v81;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v108 = v102;
        DWORD2(v108) = DWORD2(v102);
        v35 = PreferencesOutputs.subscript.getter();
        if ((v35 & 0x100000000) != 0)
        {
          v36 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v36 = v35;
        }

        v37 = AGGraphCreateOffsetAttribute2();
        *&v108 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v37);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityPlatformViewModifier.PlatformViewAttachment and conformance AccessibilityPlatformViewModifier.PlatformViewAttachment();
        *&v108 = __PAIR64__(Attribute.init<A>(body:value:flags:update:)(), v36);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v108) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    v77 = v102;
    if (v25)
    {
      *&v108 = v102;
      DWORD2(v108) = DWORD2(v102);
      PreferencesOutputs.subscript.getter();
      v38 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v38);
      *&v108 = v80;
      DWORD2(v108) = v81;
      MEMORY[0x1EEE9AC00](v39);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    else
    {
      outlined destroy of PreferencesInputs(&v80);
    }

    v40 = *(a2 + 48);
    v109[1] = *(a2 + 32);
    v110 = v40;
    v111 = *(a2 + 64);
    v112 = *(a2 + 80);
    v41 = *(a2 + 16);
    v108 = *a2;
    v109[0] = v41;
    *&v102 = 1024;
    if (_ViewInputs.requestsPlatformItem(for:)())
    {
      *&v108 = v77;
      DWORD2(v108) = DWORD2(v77);
      PreferencesOutputs.subscript.getter();
      swift_beginAccess();
      v42 = *(v73 + 16);
      type metadata accessor for PropertyList.Tracker();
      swift_allocObject();
      v43 = PropertyList.Tracker.init()();
      LODWORD(v108) = v42;
      *(&v108 + 1) = v43;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv();
      Attribute.init<A>(body:value:flags:update:)();

      *&v108 = v70;
      *(&v108 + 1) = v69;
      *&v109[0] = v73;
      *(v109 + 8) = *v89;
      *(&v109[1] + 1) = *&v89[16];
      _GraphInputs.platformSystem.getter();
      v44 = *(a2 + 48);
      v104 = *(a2 + 32);
      v105 = v44;
      v106 = *(a2 + 64);
      v107 = *(a2 + 80);
      v45 = *(a2 + 16);
      v102 = *a2;
      v103 = v45;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform();
      Attribute.init<A>(body:value:flags:update:)();
      lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
      static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
    }

    v109[1] = v115;
    v110 = v116;
    v111 = v117;
    v112 = v118;
    v108 = v113;
    v109[0] = v114;
    outlined destroy of _ViewInputs(&v108);
    *a4 = v77;
    return *(&v77 + 1);
  }

  return result;
}

double static AccessibilityViewModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[3];
  v96 = a2[2];
  v97 = v10;
  v98 = a2[4];
  v99 = *(a2 + 20);
  v11 = a2[1];
  v94 = *a2;
  v95 = v11;
  v12 = v10;
  v13 = DWORD2(v10);
  *&v88 = v10;
  DWORD2(v88) = DWORD2(v10);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v46 = (*(a6 + 24))(a5, a6);
    v90 = v96;
    v91 = v97;
    v92 = v98;
    v93 = v99;
    v88 = v94;
    v89 = v95;
    outlined init with copy of _ViewInputs(&v94, &v82);
    v45 = a6;
    static AccessibilityViewModifier.configureInputsForGeometry(_:)(&v88, a5, a6);
    v14 = BYTE4(v96);
    if ((BYTE4(v96) & 0x10) != 0)
    {
      v84 = v96;
      v85 = v97;
      v86 = v98;
      v87 = v99;
      v82 = v94;
      v83 = v95;
      _ViewInputs.animatedPosition()();
      _ViewInputs.containerPosition.setter();
    }

    if (v46 & 2) != 0 && (v84 = v96, v85 = v97, v86 = v98, v87 = v99, v82 = v94, v83 = v95, (_ViewInputs.isScrapeable.getter()))
    {
      ScrapeableID.init()();
      v43 = v82;
      _ViewInputs.scrapeableParentID.setter();
    }

    else
    {
      v43 = 0;
    }

    v78 = v90;
    v79 = v91;
    v80 = v92;
    v76 = v88;
    v77 = v89;
    v72 = v90;
    v73 = v91;
    v74 = v92;
    LODWORD(v57) = v9;
    v81 = v93;
    v75 = v93;
    v70 = v88;
    v71 = v89;
    v44 = v9;
    v18 = *(v45 + 72);
    outlined init with copy of _ViewInputs(&v76, &v82);
    v18(&v55, &v57, &v70, a3, a4, a5, v45);
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v82 = v70;
    v83 = v71;
    outlined destroy of _ViewInputs(&v82);
    if ((v14 & 0x10) != 0)
    {
      *&v70 = v12;
      DWORD2(v70) = v13;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v70 = v55;
        DWORD2(v70) = LODWORD(v56);
        v19 = PreferencesOutputs.subscript.getter();
        v20 = *MEMORY[0x1E698D3F8];
        if ((v19 & 0x100000000) != 0)
        {
          v21 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v21 = v19;
        }

        v50 = v21;
      }

      else
      {
        v20 = *MEMORY[0x1E698D3F8];
        v50 = *MEMORY[0x1E698D3F8];
      }

      _DisplayList_Identity.init()();
      v48 = v70;
      v72 = v96;
      v73 = v97;
      v74 = v98;
      v75 = v99;
      v70 = v94;
      v71 = v95;
      LODWORD(v57) = v48;
      _ViewInputs.pushIdentity(_:)();
      PropertyList.subscript.getter();
      v69[0] = v94;
      v69[1] = v95;
      v69[2] = v96;
      _GraphInputs.interfaceIdiom.getter();
      PropertyList.subscript.getter();
      LODWORD(v70) = v9;
      type metadata accessor for _GraphValue();
      v42 = _GraphValue.value.getter();
      v29 = v95;
      v72 = v96;
      v73 = v97;
      v74 = v98;
      v75 = v99;
      v70 = v94;
      v71 = v95;
      swift_beginAccess();
      v41 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v72 = v96;
      v73 = v97;
      v74 = v98;
      v75 = v99;
      v70 = v94;
      v71 = v95;
      v40 = _ViewInputs.animatedPosition()();
      v72 = v96;
      v73 = v97;
      v74 = v98;
      v75 = v99;
      v70 = v94;
      v71 = v95;
      v30 = _ViewInputs.containerPosition.getter();
      v31 = *(v29 + 16);
      v32 = v55;
      v33 = LODWORD(v56);
      v57 = v55;
      LODWORD(v58) = LODWORD(v56);
      v34 = PreferencesOutputs.subscript.getter();
      v35 = v20;
      if ((v34 & 0x100000000) == 0)
      {
        v20 = v34;
      }

      v57 = v32;
      LODWORD(v58) = v33;
      v36 = PreferencesOutputs.subscript.getter();
      if ((v36 & 0x100000000) != 0)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      v38 = type metadata accessor for AccessibilityViewModifierAccessor();
      LODWORD(v57) = v48;
      BYTE4(v57) = v54 & 1;
      v58 = v53;
      v59 = v52;
      v60 = v38;
      v61 = v42;
      v62 = v41;
      v63 = v40;
      v64 = v30;
      v65 = v31;
      v66 = v20;
      v67 = v50;
      v68 = v37;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v57) = 0;
      PreferencesOutputs.subscript.setter();
    }

    LODWORD(v70) = v44;
    type metadata accessor for _GraphValue();
    v39 = _GraphValue.value.getter();
    v72 = v96;
    v73 = v97;
    v74 = v98;
    v75 = v99;
    v70 = v94;
    v71 = v95;
    v57 = v55;
    *&v58 = v56;
    LODWORD(v69[0]) = v43;

    static AccessibilityViewModifier.makePropertiesTransform(modifier:inputs:outputs:includeGeometry:resolvableModifier:scrapeableID:)(v39, &v70, &v57, v46 & 1, 0, 0, 0, 0, v69);

    LOBYTE(v70) = 0;
    PreferencesOutputs.subscript.setter();
    v72 = v90;
    v73 = v91;
    v74 = v92;
    v75 = v93;
    v70 = v88;
    v71 = v89;
    outlined destroy of _ViewInputs(&v70);
    *a7 = v55;
    result = v56;
    a7[1] = v56;
    return result;
  }

  v15 = a6;
  *&v88 = v12;
  DWORD2(v88) = v13;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0 || (*&v88 = v12, DWORD2(v88) = v13, (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0))
  {
    v90 = v96;
    v91 = v97;
    v92 = v98;
    v93 = v99;
    v88 = v94;
    v89 = v95;
    goto LABEL_19;
  }

  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.getter();
  v16 = v88;
  v90 = v96;
  v91 = v97;
  v92 = v98;
  v93 = v99;
  v88 = v94;
  v89 = v95;
  if ((v16 & 0x10) == 0)
  {
LABEL_19:
    outlined init with copy of _ViewInputs(&v94, &v82);
    v17 = 0;
    goto LABEL_20;
  }

  outlined init with copy of _ViewInputs(&v94, &v82);
  PropertyList.subscript.getter();
  LODWORD(v82) = v82 & 0xFFFFFFEF;
  PropertyList.subscript.setter();
  v17 = 1;
LABEL_20:
  LODWORD(v76) = v9;
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v87 = v99;
  v82 = v94;
  v83 = v95;
  (*(v15 + 72))(v69, &v76, &v82, a3, a4, a5, v15);
  if (v17)
  {
    *&v82 = *&v69[0];
    DWORD2(v82) = DWORD2(v69[0]);
    PreferencesOutputs.subscript.getter();
    v22 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v22);
    *&v82 = v12;
    DWORD2(v82) = v13;
    MEMORY[0x1EEE9AC00](v23);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v84 = v96;
  v85 = v97;
  v86 = v98;
  v87 = v99;
  v82 = v94;
  v83 = v95;
  *&v76 = 1024;
  if (_ViewInputs.requestsPlatformItem(for:)())
  {
    *&v82 = *&v69[0];
    DWORD2(v82) = DWORD2(v69[0]);
    PreferencesOutputs.subscript.getter();
    v24 = v95;
    swift_beginAccess();
    v25 = *(v24 + 16);
    type metadata accessor for PropertyList.Tracker();
    swift_allocObject();
    v26 = PropertyList.Tracker.init()();
    LODWORD(v82) = v25;
    *(&v82 + 1) = v26;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv();
    v27 = Attribute.init<A>(body:value:flags:update:)();

    v82 = v94;
    v83 = v95;
    v84 = v96;
    _GraphInputs.platformSystem.getter();
    v78 = v96;
    v79 = v97;
    v80 = v98;
    v81 = v99;
    v76 = v94;
    v77 = v95;
    HIDWORD(v55) = v27;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform();
    LODWORD(v55) = Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
    static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
  }

  v84 = v90;
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v82 = v88;
  v83 = v89;
  outlined destroy of _ViewInputs(&v82);
  *a7 = *v69;
  result = *(v69 + 1);
  a7[1] = *(v69 + 1);
  return result;
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilitySectionHeaderModifier<A>.ChildModifier@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static AccessibilityViewModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable, a6);
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityLabelModifier<A>.ChildModifier@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static AccessibilityViewModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable, a6);
}

Swift::Bool __swiftcall AnyAccessibilityViewModifier.willCreateNode(for:)(Swift::OpaquePointer a1)
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance PropertiesTransform()
{
  _StringGuts.grow(_:)(36);

  v2 = (*(*v0 + 136))(v1);
  MEMORY[0x18D00C9B0](v2);

  return 0xD000000000000022;
}

unint64_t static PropertiesTransform.scrapeContent(from:)@<X0>(uint64_t a1@<X8>)
{
  AGGraphGetAttributeInfo();
  v3 = v2;
  v4 = *v2;
  v5 = *(v2 + 8);
  outlined init with copy of PropertiesTransform(v2, v13);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = Value[1];

  outlined destroy of PropertiesTransform(v13);
  v12[0] = v7;
  v12[1] = v8;
  v11 = *(v3 + 24);
  (*(v4 + 112))(&v14, v5, v12, &v11);

  v10 = v14;
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v13[0] = v14;
    outlined copy of ScrapeableContent.Content(v14);
    closure #1 in static PropertiesTransform.scrapeContent(from:)(v13, v3);
    outlined consume of ScrapeableContent.Content?(v10);
    return outlined consume of ScrapeableContent.Content(v13[0]);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
  }

  return result;
}

uint64_t closure #1 in static PropertiesTransform.scrapeContent(from:)(unint64_t *a1, uint64_t a2)
{
  v11 = *a1;
  v3 = v11;
  v4 = *(a2 + 12);
  v9 = *(a2 + 16);
  v10 = v4;
  outlined init with copy of PropertiesTransform(a2, v8);
  outlined copy of ScrapeableContent.Content(v3);
  outlined destroy of PropertiesTransform(v8);
  outlined init with copy of PropertiesTransform(a2, v7);
  outlined destroy of PropertiesTransform(v7);
  outlined init with copy of PropertiesTransform(a2, v6);
  outlined destroy of PropertiesTransform(v6);
  return ScrapeableContent.Item.init(_:ids:_:position:size:transform:)();
}

uint64_t static ResolvableAccessibilityModifierStatefulRule.makeAnyAccessibilityModifier(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 40))(v6);
  v10 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = a2;
  v18 = v10;
  v11 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v15, a2, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  (*(v5 + 8))(v8, a2);
  return v14[3];
}

uint64_t closure #2 in PlatformItemListTransform.value.getter(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v108 = HIDWORD(a3);
  v6 = type metadata accessor for PlatformItemList.Item();
  v110 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v102 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - v16;
  result = outlined init with copy of AccessibilityAttachment.Tree(a2, v121);
  v109 = a1;
  if (!v122)
  {
    v31 = memcpy(v114, v121, sizeof(v114));
    v32 = *a1;
    if (*(*a1 + 16))
    {
      MEMORY[0x1EEE9AC00](v31);
      *(&v102 - 2) = v114;
      v33 = v108;
      *(&v102 - 2) = v3;
      *(&v102 - 1) = v33;
      PlatformItemList.modify(_:)(partial apply for closure #1 in closure #2 in PlatformItemListTransform.value.getter);
    }

    else
    {
      _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v116);
      outlined init with copy of AccessibilityProperties(v114, v118);
      Value = AGGraphGetValue();
      v47 = Value[1];
      v119 = *Value;
      v120 = v47;
      *(v17 + 1) = 0;
      *(v17 + 1) = 0u;
      v17[32] = 0;
      *(v17 + 5) = -1;
      v17[56] = 1;
      v48 = v116[9];
      *(v17 + 12) = v116[8];
      *(v17 + 13) = v48;
      *(v17 + 14) = v116[10];
      *(v17 + 235) = *(&v116[10] + 11);
      v49 = v116[5];
      *(v17 + 8) = v116[4];
      *(v17 + 9) = v49;
      v50 = v116[7];
      *(v17 + 10) = v116[6];
      *(v17 + 11) = v50;
      v51 = v116[1];
      *(v17 + 4) = v116[0];
      *(v17 + 5) = v51;
      v52 = v116[3];
      *(v17 + 6) = v116[2];
      *(v17 + 7) = v52;
      *(v17 + 19) = 0u;
      *(v17 + 20) = 0u;
      *(v17 + 17) = 0u;
      *(v17 + 18) = 0u;
      *(v17 + 16) = 0u;
      *(v17 + 42) = 0x3FFFFFFFCLL;
      v107 = v17 + 408;
      v108 = v32;
      *(v17 + 344) = 0u;
      *(v17 + 360) = 0u;
      *(v17 + 376) = 0u;
      *(v17 + 392) = 0u;
      *(v17 + 51) = 0;
      *(v17 + 52) = 1;
      *(v17 + 424) = 0u;
      *(v17 + 440) = 0u;
      *(v17 + 456) = 0u;
      v17[472] = 0;
      *(v17 + 60) = 0;
      *(v17 + 488) = 0u;
      v17[504] = 0;
      *(v17 + 32) = 0u;
      v17[528] = 4;
      *(v17 + 536) = 0u;
      *(v17 + 552) = 0u;
      *(v17 + 568) = 0u;
      *(v17 + 584) = 0u;
      *(v17 + 600) = 0u;
      *(v17 + 616) = 0u;
      *(v17 + 632) = 0u;
      *(v17 + 648) = 0u;
      *(v17 + 664) = 0u;
      *(v17 + 680) = 0u;
      *(v17 + 696) = 0u;
      *(v17 + 712) = 0u;
      *(v17 + 728) = 0u;
      *(v17 + 744) = 0u;
      *(v17 + 760) = 0u;
      *(v17 + 776) = 0u;
      *(v17 + 792) = 0u;
      *(v17 + 808) = 0u;
      *(v17 + 824) = 0u;
      *(v17 + 840) = 0u;
      *(v17 + 107) = 0;
      *(v17 + 108) = 1;
      *(v17 + 872) = 0u;
      *(v17 + 888) = 0u;
      *(v17 + 904) = 0u;
      *(v17 + 920) = 0u;
      *(v17 + 936) = 0u;
      *(v17 + 476) = 1283;
      v17[954] = 3;
      v53 = v6[28];
      v54 = type metadata accessor for CommandOperation();
      (*(*(v54 - 8) + 56))(&v17[v53], 1, 1, v54);
      v17[v6[29]] = 0;
      v17[v6[30]] = 0;
      v17[v6[31]] = 2;
      v17[v6[32]] = 0;
      v17[v6[33]] = 0;
      v55 = v6[34];
      *v17 = 0;
      v56 = *(v17 + 13);
      v113[8] = *(v17 + 12);
      v113[9] = v56;
      v113[10] = *(v17 + 14);
      *(&v113[10] + 11) = *(v17 + 235);
      v57 = *(v17 + 9);
      v113[4] = *(v17 + 8);
      v113[5] = v57;
      v58 = *(v17 + 11);
      v113[6] = *(v17 + 10);
      v113[7] = v58;
      v59 = *(v17 + 5);
      v113[0] = *(v17 + 4);
      v113[1] = v59;
      v60 = *(v17 + 7);
      v113[2] = *(v17 + 6);
      v113[3] = v60;

      v61 = MEMORY[0x1E69E6720];
      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v113, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
      v62 = v116[9];
      *(v17 + 12) = v116[8];
      *(v17 + 13) = v62;
      *(v17 + 14) = v116[10];
      *(v17 + 235) = *(&v116[10] + 11);
      v63 = v116[5];
      *(v17 + 8) = v116[4];
      *(v17 + 9) = v63;
      v64 = v116[7];
      *(v17 + 10) = v116[6];
      *(v17 + 11) = v64;
      v65 = v116[1];
      *(v17 + 4) = v116[0];
      *(v17 + 5) = v65;
      v66 = v116[3];
      *(v17 + 6) = v116[2];
      *(v17 + 7) = v66;
      v67 = v107[3];
      v112[2] = v107[2];
      v112[3] = v67;
      LOBYTE(v112[4]) = v17[472];
      v68 = v107[1];
      v69 = v107;
      v112[0] = *v107;
      v112[1] = v68;
      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v112, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, v61, type metadata accessor for AccessibilityAttachment?);
      *v69 = xmmword_18CD633F0;
      *(v17 + 424) = 0u;
      *(v17 + 440) = 0u;
      *(v17 + 456) = 0u;
      v70 = v108;
      v17[472] = 0;
      outlined assign with take of PlatformItemList.Item.Accessibility?(v118, (v17 + 536));
      *&v17[v55] = 0;
      *(v17 + 6) = 0;
      outlined init with copy of (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)(v17, v14, type metadata accessor for PlatformItemList.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
      }

      v72 = v70[2];
      v71 = v70[3];
      v73 = v109;
      if (v72 >= v71 >> 1)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1, v70);
      }

      v70[2] = v72 + 1;
      outlined init with take of AccessibilityNodeAttachment(v14, v70 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v72, type metadata accessor for PlatformItemList.Item);
      *v73 = v70;
      outlined destroy of PlatformItemList.Item(v17, type metadata accessor for PlatformItemList.Item);
    }

    return outlined destroy of AccessibilityAttachment(v114);
  }

  if (v122 != 1)
  {
    return result;
  }

  v106 = v6;
  v107 = v8;
  v19 = v121[0];
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (v21)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_5;
  }

  AccessibilityProperties.init()();
  v34 = *(v19 + 16);
  if (!v34)
  {
LABEL_66:

    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v113);
    outlined init with copy of AccessibilityProperties(v117, v118);
    v74 = AGGraphGetValue();
    v75 = v74[1];
    v108 = *v74;
    v119 = v108;
    v120 = v75;
    *(v11 + 1) = 0;
    *(v11 + 1) = 0u;
    v11[32] = 0;
    *(v11 + 5) = -1;
    v11[56] = 1;
    v76 = v113[9];
    *(v11 + 12) = v113[8];
    *(v11 + 13) = v76;
    *(v11 + 14) = v113[10];
    *(v11 + 235) = *(&v113[10] + 11);
    v77 = v113[5];
    *(v11 + 8) = v113[4];
    *(v11 + 9) = v77;
    v78 = v113[7];
    *(v11 + 10) = v113[6];
    *(v11 + 11) = v78;
    v79 = v113[1];
    *(v11 + 4) = v113[0];
    *(v11 + 5) = v79;
    v80 = v113[3];
    *(v11 + 6) = v113[2];
    *(v11 + 7) = v80;
    *(v11 + 19) = 0u;
    *(v11 + 20) = 0u;
    *(v11 + 17) = 0u;
    *(v11 + 18) = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 42) = 0x3FFFFFFFCLL;
    *(v11 + 344) = 0u;
    *(v11 + 360) = 0u;
    *(v11 + 376) = 0u;
    *(v11 + 392) = 0u;
    *(v11 + 51) = 0;
    *(v11 + 52) = 1;
    *(v11 + 424) = 0u;
    *(v11 + 440) = 0u;
    *(v11 + 456) = 0u;
    v11[472] = 0;
    *(v11 + 60) = 0;
    *(v11 + 488) = 0u;
    v11[504] = 0;
    *(v11 + 32) = 0u;
    v11[528] = 4;
    *(v11 + 536) = 0u;
    *(v11 + 552) = 0u;
    *(v11 + 568) = 0u;
    *(v11 + 584) = 0u;
    *(v11 + 600) = 0u;
    *(v11 + 616) = 0u;
    *(v11 + 632) = 0u;
    *(v11 + 648) = 0u;
    *(v11 + 664) = 0u;
    *(v11 + 680) = 0u;
    *(v11 + 696) = 0u;
    *(v11 + 712) = 0u;
    *(v11 + 728) = 0u;
    *(v11 + 744) = 0u;
    *(v11 + 760) = 0u;
    *(v11 + 776) = 0u;
    *(v11 + 792) = 0u;
    *(v11 + 808) = 0u;
    *(v11 + 824) = 0u;
    *(v11 + 840) = 0u;
    *(v11 + 107) = 0;
    *(v11 + 108) = 1;
    *(v11 + 872) = 0u;
    *(v11 + 888) = 0u;
    *(v11 + 904) = 0u;
    *(v11 + 920) = 0u;
    *(v11 + 936) = 0u;
    *(v11 + 476) = 1283;
    v11[954] = 3;
    v81 = v106;
    v82 = v106[28];
    v83 = type metadata accessor for CommandOperation();
    (*(*(v83 - 8) + 56))(&v11[v82], 1, 1, v83);
    v11[v81[29]] = 0;
    v11[v81[30]] = 0;
    v11[v81[31]] = 2;
    v11[v81[32]] = 0;
    v11[v81[33]] = 0;
    v84 = v81[34];
    *v11 = 0;
    v85 = *(v11 + 13);
    *&v114[128] = *(v11 + 12);
    *&v114[144] = v85;
    *&v114[160] = *(v11 + 14);
    *&v114[171] = *(v11 + 235);
    v86 = *(v11 + 9);
    *&v114[64] = *(v11 + 8);
    *&v114[80] = v86;
    v87 = *(v11 + 11);
    *&v114[96] = *(v11 + 10);
    *&v114[112] = v87;
    v88 = *(v11 + 5);
    *v114 = *(v11 + 4);
    *&v114[16] = v88;
    v89 = *(v11 + 7);
    *&v114[32] = *(v11 + 6);
    *&v114[48] = v89;

    v90 = MEMORY[0x1E69E6720];
    _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v114, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
    v91 = v113[9];
    *(v11 + 12) = v113[8];
    *(v11 + 13) = v91;
    *(v11 + 14) = v113[10];
    *(v11 + 235) = *(&v113[10] + 11);
    v92 = v113[5];
    *(v11 + 8) = v113[4];
    *(v11 + 9) = v92;
    v93 = v113[7];
    *(v11 + 10) = v113[6];
    *(v11 + 11) = v93;
    v94 = v113[1];
    *(v11 + 4) = v113[0];
    *(v11 + 5) = v94;
    v95 = v113[3];
    *(v11 + 6) = v113[2];
    *(v11 + 7) = v95;
    v96 = *(v11 + 456);
    v116[2] = *(v11 + 440);
    v116[3] = v96;
    LOBYTE(v116[4]) = v11[472];
    v97 = *(v11 + 424);
    v116[0] = *(v11 + 408);
    v116[1] = v97;
    _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v116, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, v90, type metadata accessor for AccessibilityAttachment?);
    *(v11 + 408) = xmmword_18CD633F0;
    *(v11 + 424) = 0u;
    *(v11 + 440) = 0u;
    *(v11 + 456) = 0u;
    v11[472] = 0;
    outlined assign with take of PlatformItemList.Item.Accessibility?(v118, (v11 + 536));
    *&v11[v84] = 0;
    *(v11 + 6) = 0;
    v98 = v107;
    outlined init with copy of (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)(v11, v107, type metadata accessor for PlatformItemList.Item);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v99 = v109;
    v101 = v20[2];
    v100 = v20[3];
    if (v101 >= v100 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v100 > 1, v101 + 1, 1, v20);
    }

    outlined destroy of AccessibilityProperties(v117);
    v20[2] = v101 + 1;
    outlined init with take of AccessibilityNodeAttachment(v98, v20 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v101, type metadata accessor for PlatformItemList.Item);
    *v99 = v20;
    return outlined destroy of PlatformItemList.Item(v11, type metadata accessor for PlatformItemList.Item);
  }

  v21 = 0;
  v35 = v19 + 32;
  v103 = v19 + 32;
  v104 = v34;
  while (v21 < *(v19 + 16))
  {
    outlined init with copy of AccessibilityAttachment.Tree(v35 + 304 * v21, v118);
    outlined init with copy of AccessibilityAttachment.Tree(v118, v114);
    if (v115)
    {
      if (v115 != 1)
      {
        outlined destroy of AccessibilityAttachment.Tree(v118);
        memset(v116, 0, 296);
LABEL_50:
        _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v116, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
        goto LABEL_25;
      }

      v36 = *(*v114 + 16);
      if (v36)
      {
        v105 = *v114;
        v37 = *v114 + 32;
        v38 = MEMORY[0x1E69E7CC0];
        do
        {
          outlined init with copy of AccessibilityAttachment.Tree(v37, v113);
          AccessibilityAttachment.Tree.attachment.getter(v112);
          memcpy(v111, v112, sizeof(v111));
          outlined destroy of AccessibilityAttachment.Tree(v113);
          if (v111[35])
          {
            memcpy(v112, v111, 0x128uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
            }

            v40 = *(v38 + 2);
            v39 = *(v38 + 3);
            if (v40 >= v39 >> 1)
            {
              v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
            }

            *(v38 + 2) = v40 + 1;
            memcpy(&v38[296 * v40 + 32], v112, 0x128uLL);
          }

          else
          {
            _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v111, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
          }

          v37 += 304;
          --v36;
        }

        while (v36);

        v35 = v103;
        v34 = v104;
      }

      else
      {

        v38 = MEMORY[0x1E69E7CC0];
      }

      v41 = *(v38 + 2);
      a1 = (v41 - 1);
      if (v41 == 1)
      {
        outlined init with copy of AccessibilityAttachment((v38 + 32), v116);
      }

      else
      {
        if (v41)
        {
          v42 = &v38[296 * v41];
          outlined init with copy of AccessibilityAttachment((v42 - 264), v113);

          v43 = v41 - 2;
          v44 = (v42 - 560);
          while (v43 < a1)
          {
            outlined init with copy of AccessibilityAttachment(v44, v112);
            AccessibilityProperties.merge(with:)(v112);
            v45 = AccessibilityAttachment.platformElement.getter();
            if (v45)
            {
            }

            else if (AccessibilityAttachment.platformElement.getter())
            {
              AccessibilityAttachment.platformElement.setter();
            }

            outlined destroy of AccessibilityAttachment(v112);
            --v43;
            v44 -= 296;
            if (v43 == -1)
            {

              memcpy(v116, v113, 0x128uLL);

              v35 = v103;
              v34 = v104;
              goto LABEL_49;
            }
          }

          __break(1u);
LABEL_72:
          __break(1u);
          break;
        }

        AccessibilityAttachment.init()();
      }

LABEL_49:
      outlined destroy of AccessibilityAttachment.Tree(v118);
      if (!*(&v116[17] + 1))
      {
        goto LABEL_50;
      }
    }

    else
    {
      outlined destroy of AccessibilityAttachment.Tree(v118);
      memcpy(v116, v114, 0x128uLL);
      if (!*(&v116[17] + 1))
      {
        goto LABEL_50;
      }
    }

    memcpy(v114, v116, sizeof(v114));
    AccessibilityProperties.merge(with:)(v114);
    outlined destroy of AccessibilityAttachment(v114);
LABEL_25:
    if (++v21 == v34)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_74:
  v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
LABEL_5:
  v22 = 0;
  v23 = v19 + 32;
  do
  {
    if (v22 >= v20[2])
    {
      goto LABEL_72;
    }

    if (v22 < *(v19 + 16))
    {
      v24 = *(v110 + 80);
      v25 = *(v110 + 72);
      AccessibilityAttachment.Tree.properties.getter(v118);
      if (*(&v118[17] + 1))
      {
        v26 = v20 + ((v24 + 32) & ~v24) + v25 * v22;
        memcpy(v114, v118, 0x120uLL);
        if (*(v26 + 816))
        {
          outlined init with copy of AccessibilityProperties(v26 + 536, v113);
          memcpy(v118, v113, sizeof(v118));
        }

        else
        {
          memset(v113, 0, 288);
          AccessibilityProperties.init()();
          if (*(&v113[17] + 1))
          {
            _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v113, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
          }
        }

        outlined init with copy of AccessibilityProperties(v114, v113);
        AccessibilityProperties.merge(with:)(v118);
        outlined destroy of AccessibilityProperties(v118);
        if (*(v26 + 816))
        {
          v27 = (v26 + 824);
          v28 = (v26 + 832);
        }

        else
        {
          v27 = AGGraphGetValue();
          v28 = v27 + 1;
        }

        v29 = *v28;
        v30 = *v27;

        outlined destroy of AccessibilityProperties(v114);
        memcpy(v118, v113, sizeof(v118));
        v119 = v30;
        v120 = v29;
        outlined assign with take of PlatformItemList.Item.Accessibility?(v118, v26 + 536);
        a1 = v109;
      }

      else
      {
        _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v118, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
      }
    }

    ++v22;
    *a1 = v20;
    v23 += 304;
  }

  while (v21 != v22);
}

uint64_t closure #1 in closure #2 in PlatformItemListTransform.value.getter(void *a1, uint64_t a2)
{
  outlined init with copy of AccessibilityProperties(a2, __dst);
  if (a1[102])
  {
    outlined init with copy of AccessibilityProperties((a1 + 67), __src);
    memcpy(v8, __src, sizeof(v8));
  }

  else
  {
    memset(__src, 0, sizeof(__src));
    AccessibilityProperties.init()();
  }

  outlined init with copy of AccessibilityProperties(__dst, __src);
  AccessibilityProperties.merge(with:)(v8);
  outlined destroy of AccessibilityProperties(v8);
  outlined destroy of AccessibilityProperties(__dst);
  if (a1[102])
  {
    Value = a1 + 103;
    v4 = a1 + 104;
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = Value + 1;
  }

  v5 = *Value;
  v6 = *v4;

  memcpy(__dst, __src, sizeof(__dst));
  v11 = v5;
  v12 = v6;
  return outlined assign with take of PlatformItemList.Item.Accessibility?(__dst, (a1 + 67));
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = PlatformItemListTransform.value.getter(*v1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t PlatformAccessibilityEnv.updateValue()()
{
  v8 = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v1 = v0;
  v3 = 2;
  if (!AGGraphGetOutputValue())
  {

    goto LABEL_7;
  }

  if (specialized getter of changed #1 in PlatformAccessibilityEnv.updateValue()(&v3, v1 & 1))
  {
LABEL_7:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    v4 = v6;
    v5 = v7;
    AGGraphSetOutputValue();
  }
}

uint64_t specialized getter of changed #1 in PlatformAccessibilityEnv.updateValue()(_BYTE *a1, char a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    if (a2)
    {

      LOBYTE(v2) = PropertyList.Tracker.hasDifferentUsedValues(_:)();
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    swift_beginAccess();
    *a1 = v2 & 1;
  }

  return v2 & 1;
}

uint64_t PlatformAccessibilityTransform.updateValue()()
{
  v1 = v0;
  v65 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  LODWORD(v4) = v3;
  v5 = Value[1];
  *&v61[0] = *Value;
  *(&v61[0] + 1) = v5;

  if (EnvironmentValues.accessibilityEnabled.getter())
  {
    if (*v0 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v6) = 0;
      v7 = 0;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 2;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
    }

    else
    {
      v28 = AGGraphGetValue();
      LODWORD(v6) = v29;
      outlined init with copy of AccessibilityAttachment.Tree(v28, v61);
      v8 = v61[0];
      v9 = v61[1];
      v10 = v61[2];
      v12 = v61[3];
      v13 = v61[4];
      v14 = v61[5];
      v15 = v61[6];
      v16 = v61[7];
      v17 = v61[8];
      v18 = v61[9];
      v19 = v61[10];
      v20 = v61[11];
      v21 = v61[12];
      v22 = v61[13];
      v23 = v61[14];
      v24 = v61[15];
      v25 = v61[16];
      v26 = v61[17];
      v7 = *&v61[18];
      v11 = BYTE8(v61[18]);
    }

    v62[0] = v8;
    v62[1] = v9;
    v62[2] = v10;
    v62[3] = v12;
    v62[4] = v13;
    v62[5] = v14;
    v62[6] = v15;
    v62[7] = v16;
    v62[8] = v17;
    v62[9] = v18;
    v62[10] = v19;
    v62[11] = v20;
    v62[12] = v21;
    v62[13] = v22;
    v62[14] = v23;
    v62[15] = v24;
    v62[16] = v25;
    v62[17] = v26;
    v63 = v7;
    v64 = v11;
    outlined init with copy of AccessibilityAttachment.Tree(v62, v61);
    if (BYTE8(v61[18]))
    {
      if (BYTE8(v61[18]) == 1)
      {
        v30 = *&v61[0];
        AccessibilityProperties.init()();
        v31 = *(v30 + 16);
        if (v31)
        {
          v46 = v6;
          v47 = v4;
          v48 = v1;
          v32 = 0;
          v33 = v30 + 32;
          v49 = v30;
          v50 = v30 + 32;
          v51 = *(v30 + 16);
          while (1)
          {
            if (v32 >= *(v30 + 16))
            {
              __break(1u);
            }

            outlined init with copy of AccessibilityAttachment.Tree(v33 + 304 * v32, v58);
            outlined init with copy of AccessibilityAttachment.Tree(v58, __dst);
            if (v56)
            {
              if (v56 != 1)
              {
                memset(__src, 0, 296);
LABEL_36:
                outlined destroy of AccessibilityAttachment.Tree(v58);
                _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
                goto LABEL_11;
              }

              v34 = *(__dst[0] + 16);
              if (v34)
              {
                v35 = __dst[0] + 32;
                v4 = MEMORY[0x1E69E7CC0];
                do
                {
                  outlined init with copy of AccessibilityAttachment.Tree(v35, v54);
                  AccessibilityAttachment.Tree.attachment.getter(v53);
                  memcpy(v52, v53, sizeof(v52));
                  outlined destroy of AccessibilityAttachment.Tree(v54);
                  if (v52[35])
                  {
                    memcpy(v53, v52, sizeof(v53));
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
                    }

                    v37 = *(v4 + 2);
                    v36 = *(v4 + 3);
                    if (v37 >= v36 >> 1)
                    {
                      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v4);
                    }

                    *(v4 + 2) = v37 + 1;
                    memcpy(&v4[296 * v37 + 32], v53, 0x128uLL);
                  }

                  else
                  {
                    _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v52, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
                  }

                  v35 += 304;
                  --v34;
                }

                while (v34);

                v30 = v49;
              }

              else
              {

                v4 = MEMORY[0x1E69E7CC0];
              }

              v6 = *(v4 + 2);
              v1 = v6 - 1;
              v31 = v51;
              if (v6 == 1)
              {
                outlined init with copy of AccessibilityAttachment((v4 + 32), __src);
              }

              else
              {
                if (v6)
                {
                  v38 = &v4[296 * v6];
                  outlined init with copy of AccessibilityAttachment((v38 - 264), v54);

                  v39 = v6 - 2;
                  v40 = (v38 - 560);
                  while (v39 < v1)
                  {
                    outlined init with copy of AccessibilityAttachment(v40, v53);
                    AccessibilityProperties.merge(with:)(v53);
                    v6 = v54;
                    v41 = AccessibilityAttachment.platformElement.getter();
                    if (v41)
                    {
                    }

                    else
                    {
                      v6 = v53;
                      if (AccessibilityAttachment.platformElement.getter())
                      {
                        v6 = v54;
                        AccessibilityAttachment.platformElement.setter();
                      }
                    }

                    outlined destroy of AccessibilityAttachment(v53);
                    --v39;
                    v40 -= 296;
                    if (v39 == -1)
                    {

                      memcpy(__src, v54, 0x128uLL);

                      v30 = v49;
                      v31 = v51;
                      goto LABEL_35;
                    }
                  }

                  __break(1u);
                  break;
                }

                AccessibilityAttachment.init()();
              }

LABEL_35:
              v33 = v50;
              if (!*(&__src[17] + 1))
              {
                goto LABEL_36;
              }
            }

            else
            {
              memcpy(__src, __dst, 0x128uLL);
              if (!*(&__src[17] + 1))
              {
                goto LABEL_36;
              }
            }

            memcpy(__dst, __src, sizeof(__dst));
            AccessibilityProperties.merge(with:)(__dst);
            outlined destroy of AccessibilityAttachment(__dst);
            outlined destroy of AccessibilityAttachment.Tree(v58);
LABEL_11:
            if (++v32 == v31)
            {

              LODWORD(v4) = v47;
              v1 = v48;
              LODWORD(v6) = v46;
              goto LABEL_50;
            }
          }
        }

LABEL_50:
        memcpy(v60, v59, sizeof(v60));
      }

      else
      {
        memset(v60, 0, sizeof(v60));
      }
    }

    else
    {
      memcpy(v58, v61, 0x128uLL);
      outlined init with copy of AccessibilityProperties(v58, v60);
      outlined destroy of AccessibilityAttachment(v58);
    }

    outlined init with copy of AccessibilityProperties?(v60, v61, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    if (*(&v61[17] + 1))
    {
      memcpy(v58, v61, 0x120uLL);
      if (((v4 | v6) & 1) != 0 || !AGGraphGetOutputValue())
      {
        LOBYTE(__dst[0]) = v1[8];
        static PlatformItem.AccessibilityContent.accessibility(properties:environment:system:)();
        AGGraphSetOutputValue();

        outlined destroy of AccessibilityPlatformItemTransform(v61);
      }

      else
      {
      }

      outlined destroy of AccessibilityProperties(v58);
      v42 = MEMORY[0x1E6980108];
      v43 = MEMORY[0x1E69E6720];
    }

    else
    {
      v44 = MEMORY[0x1E6980108];
      v45 = MEMORY[0x1E69E6720];
      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v61, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
      memset(v61, 0, 297);
      AGGraphSetOutputValue();

      outlined destroy of AccessibilityPlatformItemTransform(v61);
      v42 = v44;
      v43 = v45;
    }

    _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v60, &lazy cache variable for type metadata for AccessibilityProperties?, v42, v43, type metadata accessor for AccessibilityAttachment?);
    return outlined destroy of AccessibilityAttachment.Tree(v62);
  }

  else
  {
    memset(v61, 0, 297);
    AGGraphSetOutputValue();

    return outlined destroy of AccessibilityPlatformItemTransform(v61);
  }
}

double protocol witness for static StatefulRule.initialValue.getter in conformance PlatformAccessibilityTransform@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  return result;
}

uint64_t protocol witness for static PlatformItemsModifier.updateItems(modifier:items:) in conformance AccessibilityPlatformItemTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();

  return MEMORY[0x1EEDE22A8](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityPlatformItemTransform@<X0>(void (*a1)(void *__return_ptr)@<X2>, void *a2@<X8>)
{
  a1(a2);
  lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
  return static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
}

uint64_t static AccessibilityViewModifierAccessor.scrapeableContent(modifier:environment:idiom:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(v3 + 152);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15[-2] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = v9[1];
  Value = AGGraphGetValue();
  (*(v6 + 16))(v8, Value, v5);
  v15[0] = v10;
  v15[1] = v11;
  v14 = *a3;
  (*(*(v3 + 160) + 64))(v15, &v14, v5);
  return (*(v6 + 8))(v8, v5);
}

uint64_t AccessibilityArchivableViewAttachment.properties.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  result = AccessibilityProperties.init()();
  if (a4)
  {
    v6 = *(a4 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v43 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v43;
      v8 = (a4 + 32);
      do
      {
        v38 = v7;
        v44 = *v8;
        v9 = v8[1];
        v10 = v8[2];
        v11 = v8[3];
        v48 = *(v8 + 8);
        v46 = v10;
        v47 = v11;
        v45 = v9;
        if (a3)
        {
          v41 = a1;
          v42 = a2;
          outlined init with copy of CodableAccessibilityAction(&v44, &v39);
          outlined init with copy of CodableAccessibilityAction(&v44, &v39);
          outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 1);
        }

        else
        {
          outlined init with copy of CodableAccessibilityAction(&v44, &v39);
          outlined init with copy of CodableAccessibilityAction(&v44, &v39);
          outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 0);
          v12 = static os_log_type_t.fault.getter();
          v13 = static Log.runtimeIssuesLog.getter();
          if (os_log_type_enabled(v13, v12))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            *&v39 = v15;
            *v14 = 136315138;
            *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000018CD3F1C0, &v39);
            _os_log_impl(&dword_18BD4A000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v15);
            MEMORY[0x18D0110E0](v15, -1, -1);
            MEMORY[0x18D0110E0](v14, -1, -1);
          }

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          outlined consume of Environment<AppIntentExecutor?>.Content(a1, a2, 0);
        }

        v16 = v41;
        v17 = v42;
        if (v45 <= 0xFAu)
        {
          v39 = v44;
          v40 = v45;
          v18 = AccessibilityText.text.getter();
          v19 = v22;
          v21 = v23;
          v20 = v24 & 1;
        }

        else
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 4 - (v45 + 5);
        }

        v25 = swift_allocObject();
        *(v25 + 16) = v16;
        *(v25 + 24) = v17;
        v26 = v47;
        *(v25 + 64) = v46;
        *(v25 + 80) = v26;
        *(v25 + 96) = v48;
        v27 = v45;
        *(v25 + 32) = v44;
        *(v25 + 48) = v27;
        v28 = AccessibilityActionHandlerSeed++;
        type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
        v30 = v29;
        v31 = swift_allocObject();
        outlined destroy of CodableAccessibilityAction(&v44);
        *(v31 + 16) = v18;
        *(v31 + 24) = v19;
        *(v31 + 32) = v20;
        *(v31 + 40) = v21;
        *(v31 + 48) = 0;
        *(v31 + 56) = 0;
        *(v31 + 64) = 0;
        *(v31 + 72) = 2;
        *(v31 + 80) = 0u;
        *(v31 + 96) = 0u;
        *(v31 + 112) = 0;
        *(v31 + 120) = partial apply for closure #1 in AnyAccessibilityAction.init(_:appIntentExecutor:);
        *(v31 + 128) = v25;
        *(v31 + 136) = v28;
        v7 = v38;
        v33 = *(v38 + 16);
        v32 = *(v38 + 24);
        v43 = v38;
        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v7 = v43;
        }

        *(v7 + 16) = v33 + 1;
        v34 = v7 + 48 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v39;
        *(v34 + 56) = v30;
        *(v34 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
        *(v34 + 72) = 0;
        v8 = (v8 + 72);
        --v6;
      }

      while (v6);
    }

    *&v39 = v7;
    lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
    return AccessibilityProperties.subscript.setter();
  }

  return result;
}

uint64_t ArchivableAccessibilityViewModifier.Factory.encode(to:)(void *a1)
{
  type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableAccessibilityViewModifier.Factory.CodingKeys>, lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory.CodingKeys and conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys, &unk_1EFFC7180, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v25 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory.CodingKeys and conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys();

  v13 = v18;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v26 = 0;
  lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment and conformance AccessibilityArchivableViewAttachment();
  v14 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);

    return (*(v19 + 8))(v6, v13);
  }

  else
  {
    v16 = v19;
    outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);

    LODWORD(v21) = v25;
    v26 = 1;
    lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v11;
    v22 = v12;
    v26 = 2;
    type metadata accessor for CGSize(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v16 + 8))(v6, v13);
  }
}

uint64_t ArchivableAccessibilityViewModifier.Factory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableAccessibilityViewModifier.Factory.CodingKeys>, lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory.CodingKeys and conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys, &unk_1EFFC7180, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory.CodingKeys and conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v19;
  v24 = 0;
  lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment and conformance AccessibilityArchivableViewAttachment();
  v11 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v20;
  v12 = v22;
  v23 = v21;
  v24 = 1;
  lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIDWORD(v17) = v20;
  type metadata accessor for CGSize(0);
  v24 = 2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v9 + 8))(v8, v11);
  v14 = v20;
  v15 = v23;
  v16 = v18;
  *v10 = v18;
  *(v10 + 16) = v15;
  *(v10 + 24) = v12;
  *(v10 + 32) = HIDWORD(v17);
  *(v10 + 40) = v14;
  outlined copy of Environment<AppIntentExecutor?>.Content(v16, *(&v16 + 1), v15);

  __swift_destroy_boxed_opaque_existential_1(a1);
  outlined consume of Environment<AppIntentExecutor?>.Content(v16, *(&v16 + 1), v15);
}

uint64_t ArchivableAccessibilityViewModifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v15 = a5;
  HIDWORD(v14) = a4;
  type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableAccessibilityViewModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.CodingKeys and conformance ArchivableAccessibilityViewModifier.CodingKeys, &unk_1EFFC7388, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.CodingKeys and conformance ArchivableAccessibilityViewModifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = BYTE4(v14) & 1;
  v19 = v15;
  lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment and conformance AccessibilityArchivableViewAttachment();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys()
{
  v1 = 0x797469746E656469;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D686361747461;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ArchivableAccessibilityViewModifier.Factory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory.CodingKeys and conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory.CodingKeys and conformance ArchivableAccessibilityViewModifier.Factory.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for _DisplayList_ViewFactory.makeView() in conformance ArchivableAccessibilityViewModifier.Factory()
{
  outlined copy of Environment<AppIntentExecutor?>.Content(*v0, *(v0 + 8), *(v0 + 16));
  type metadata accessor for ModifiedContent<ArchivablePlaceholder, ArchivableAccessibilityViewModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ArchivablePlaceholder, ArchivableAccessibilityViewModifier>, &type metadata for ArchivablePlaceholder, &type metadata for ArchivableAccessibilityViewModifier, MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type ModifiedContent<ArchivablePlaceholder, ArchivableAccessibilityViewModifier> and conformance <> ModifiedContent<A, B>();

  return AnyView.init<A>(_:)();
}

uint64_t protocol witness for AnyViewFactory.encoding() in conformance ArchivableAccessibilityViewModifier.Factory@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  *a2 = 0xD00000000000002BLL;
  a2[1] = 0x800000018CD4AC80;
  a2[5] = a1;
  a2[6] = lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory();
  a2[7] = lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory();
  v11 = swift_allocObject();
  a2[2] = v11;
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableAccessibilityViewModifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableAccessibilityViewModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.CodingKeys and conformance ArchivableAccessibilityViewModifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableAccessibilityViewModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.CodingKeys and conformance ArchivableAccessibilityViewModifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ArchivableAccessibilityViewModifier@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ArchivableAccessibilityViewModifier.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityArchivableViewAttachment.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityArchivableViewAttachment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityArchivableViewAttachment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AccessibilityArchivableViewAttachment@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized AccessibilityArchivableViewAttachment.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ArchivedAttachmentModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<ArchivedAttachmentModifier>, lazy protocol witness table accessor for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier, &type metadata for ArchivedAttachmentModifier, a4);
}

uint64_t protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityGestureAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityGestureAttachment(a1, a2, a3, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type AccessibilityGestureAttachment and conformance AccessibilityGestureAttachment);
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityGestureModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityGestureModifier>, lazy protocol witness table accessor for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier, &type metadata for AccessibilityGestureModifier, a4);
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityPlatformViewModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *)@<X2>, __int128 *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityDropActivationPointAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityGestureAttachment(a1, a2, a3, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment);
}

uint64_t key path getter for MutableBox.value : MutableBox<AccessibilityAttachment>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of AccessibilityAttachment(v3 + 16, a2);
}

uint64_t key path setter for MutableBox.value : MutableBox<AccessibilityAttachment>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  outlined assign with copy of AccessibilityAttachment(a1, v3 + 16);
  return swift_endAccess();
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityRotorModifier<A>@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static AccessibilityViewModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable, a6);
}

uint64_t protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance ButtonAccessibilityModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityGestureAttachment(a1, a2, a3, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type ButtonAccessibilityModifier and conformance ButtonAccessibilityModifier);
}

uint64_t protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityOpacityAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityGestureAttachment(a1, a2, a3, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type AccessibilityOpacityAttachment and conformance AccessibilityOpacityAttachment);
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityOpacityModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityOpacityModifier>, lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier, &type metadata for AccessibilityOpacityModifier, a4);
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityScrollableModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityScrollableModifier>, lazy protocol witness table accessor for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier, &type metadata for AccessibilityScrollableModifier, a4);
}

uint64_t protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance MakeAccessibilityScrollView(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityGestureAttachment(a1, a2, a3, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type MakeAccessibilityScrollView and conformance MakeAccessibilityScrollView);
}

uint64_t protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityDragActivationPointAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityGestureAttachment(a1, a2, a3, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type AccessibilityDragActivationPointAttachment and conformance AccessibilityDragActivationPointAttachment);
}

uint64_t protocol witness for static AnyResolvableAccessibilityViewModifier.makeAnyAccessibilityModifier(context:) in conformance AccessibilityGestureAttachment(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return Attribute.init<A>(body:value:flags:update:)();
}

void type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *specialized ArchivableAccessibilityViewModifier.init(from:)(void *a1)
{
  type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableAccessibilityViewModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.CodingKeys and conformance ArchivableAccessibilityViewModifier.CodingKeys, &unk_1EFFC7388, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.CodingKeys and conformance ArchivableAccessibilityViewModifier.CodingKeys();
  v9 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment and conformance AccessibilityArchivableViewAttachment();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v9 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t specialized AccessibilityArchivableViewAttachment.init(from:)(void *a1)
{
  type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityArchivableViewAttachment.CodingKeys>, lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys, &unk_1EFFC6C50, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  KeyPath = swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
  }

  else
  {
    v8 = v10;
    type metadata accessor for AccessibilityAttachment?(0, &lazy cache variable for type metadata for [CodableAccessibilityAction], &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [CodableAccessibilityAction] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityAction] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityAction and conformance CodableAccessibilityAction);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v8 + 8))(v6, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return KeyPath;
}

uint64_t specialized AccessibilityArchivableViewAttachment.encode(to:)(void *a1, uint64_t a2)
{
  type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityArchivableViewAttachment.CodingKeys>, lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys, &unk_1EFFC6C50, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  type metadata accessor for AccessibilityAttachment?(0, &lazy cache variable for type metadata for [CodableAccessibilityAction], &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [CodableAccessibilityAction] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityAction] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityAction and conformance CodableAccessibilityAction);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv()
{
  result = lazy protocol witness table cache variable for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv;
  if (!lazy protocol witness table cache variable for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform()
{
  result = lazy protocol witness table cache variable for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform;
  if (!lazy protocol witness table cache variable for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform()
{
  result = lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform;
  if (!lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform;
  if (!lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform;
  if (!lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform);
  }

  return result;
}

uint64_t outlined copy of AccessibilityArchivableViewAttachment?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined copy of Environment<AppIntentExecutor?>.Content(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of AccessibilityArchivableViewAttachment?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(result, a2, a3 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityArchivableViewAttachment.CodingKeys and conformance AccessibilityArchivableViewAttachment.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction and conformance CodableAccessibilityAction()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction and conformance CodableAccessibilityAction;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction and conformance CodableAccessibilityAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction and conformance CodableAccessibilityAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction and conformance CodableAccessibilityAction;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction and conformance CodableAccessibilityAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction and conformance CodableAccessibilityAction);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CodableAccessibilityAction] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityAttachment?(255, &lazy cache variable for type metadata for [CodableAccessibilityAction], &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for ArchivableAccessibilityViewModifier.Factory(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for ArchivableAccessibilityViewModifier.Factory(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for ArchivableAccessibilityViewModifier.Factory(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t destroy for AccessibilityPlatformItemTransform(uint64_t result)
{
  if (!*(result + 280))
  {
    return result;
  }

  v1 = result;

  v2 = *(v1 + 88);
  if (!v2)
  {
    goto LABEL_5;
  }

  if (v2 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 64);
LABEL_5:
  }

  if (*(v1 + 240) != 1)
  {
  }
}

char *initializeWithCopy for AccessibilityPlatformItemTransform(char *__dst, char *__src)
{
  if (*(__src + 35))
  {
    v4 = *(__src + 1);
    *__dst = *__src;
    *(__dst + 1) = v4;
    __dst[16] = __src[16];
    *(__dst + 3) = *(__src + 3);
    __dst[32] = __src[32];
    *(__dst + 40) = *(__src + 40);
    __dst[56] = __src[56];
    v5 = *(__src + 11);

    if (v5)
    {
      if (v5 == 1)
      {
        v6 = *(__src + 5);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = v6;
        *(__dst + 6) = *(__src + 6);
LABEL_11:
        *(__dst + 14) = *(__src + 14);
        __dst[120] = __src[120];
        v10 = *(__src + 30);
        if (v10 == 1)
        {
          v11 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v11;
          *(__dst + 16) = *(__src + 16);
          __dst[272] = __src[272];
          v12 = *(__src + 11);
          *(__dst + 10) = *(__src + 10);
          *(__dst + 11) = v12;
          v13 = *(__src + 13);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 13) = v13;
          v14 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v14;
        }

        else
        {
          *(__dst + 16) = *(__src + 16);
          __dst[136] = __src[136];
          *(__dst + 18) = *(__src + 18);
          __dst[152] = __src[152];
          *(__dst + 153) = *(__src + 153);
          __dst[155] = __src[155];
          __dst[156] = __src[156];
          v15 = *(__src + 11);
          *(__dst + 10) = *(__src + 10);
          *(__dst + 11) = v15;
          *(__dst + 12) = *(__src + 12);
          *(__dst + 104) = *(__src + 104);
          *(__dst + 216) = *(__src + 216);
          __dst[232] = __src[232];
          *(__dst + 30) = v10;
          *(__dst + 248) = *(__src + 248);
          *(__dst + 33) = *(__src + 33);
          __dst[272] = __src[272];
        }

        v16 = *(__src + 36);
        *(__dst + 35) = *(__src + 35);
        *(__dst + 36) = v16;
        __dst[296] = __src[296];

        return __dst;
      }

      v9 = *(__src + 12);
      *(__dst + 11) = v5;
      *(__dst + 12) = v9;
      (**(v5 - 8))(__dst + 64, __src + 64, v5);
    }

    else
    {
      v8 = *(__src + 5);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = v8;
      *(__dst + 12) = *(__src + 12);
    }

    *(__dst + 13) = *(__src + 13);

    goto LABEL_11;
  }

  return memcpy(__dst, __src, 0x129uLL);
}

char *assignWithCopy for AccessibilityPlatformItemTransform(char *__dst, char *__src)
{
  v4 = *(__src + 35);
  if (!*(__dst + 35))
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    *__dst = *__src;
    *(__dst + 1) = *(__src + 1);
    __dst[16] = __src[16];
    *(__dst + 3) = *(__src + 3);
    __dst[32] = __src[32];
    v10 = *(__src + 40);
    __dst[56] = __src[56];
    *(__dst + 40) = v10;
    v11 = *(__src + 11);

    if (v11)
    {
      if (v11 == 1)
      {
        v12 = *(__src + 4);
        v13 = *(__src + 6);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = v13;
        *(__dst + 4) = v12;
LABEL_23:
        v20 = *(__src + 14);
        __dst[120] = __src[120];
        *(__dst + 14) = v20;
        if (*(__src + 30) == 1)
        {
          v21 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v21;
          v22 = *(__src + 10);
          v23 = *(__src + 11);
          v24 = *(__src + 13);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 13) = v24;
          *(__dst + 10) = v22;
          *(__dst + 11) = v23;
          v25 = *(__src + 14);
          v26 = *(__src + 15);
          v27 = *(__src + 16);
          __dst[272] = __src[272];
          *(__dst + 15) = v26;
          *(__dst + 16) = v27;
          *(__dst + 14) = v25;
        }

        else
        {
          v28 = *(__src + 16);
          __dst[136] = __src[136];
          *(__dst + 16) = v28;
          v29 = *(__src + 18);
          __dst[152] = __src[152];
          *(__dst + 18) = v29;
          __dst[153] = __src[153];
          __dst[154] = __src[154];
          __dst[155] = __src[155];
          __dst[156] = __src[156];
          *(__dst + 20) = *(__src + 20);
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = *(__src + 22);
          *(__dst + 23) = *(__src + 23);
          *(__dst + 24) = *(__src + 24);
          *(__dst + 25) = *(__src + 25);
          __dst[208] = __src[208];
          __dst[209] = __src[209];
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          __dst[232] = __src[232];
          *(__dst + 30) = *(__src + 30);
          v30 = *(__src + 248);
          *(__dst + 33) = *(__src + 33);
          *(__dst + 248) = v30;
          __dst[272] = __src[272];
        }

        *(__dst + 35) = *(__src + 35);
        *(__dst + 36) = *(__src + 36);
        __dst[296] = __src[296];

        return __dst;
      }

      *(__dst + 11) = v11;
      *(__dst + 12) = *(__src + 12);
      (**(v11 - 8))(__dst + 64, __src + 64, v11);
    }

    else
    {
      v18 = *(__src + 4);
      v19 = *(__src + 5);
      *(__dst + 12) = *(__src + 12);
      *(__dst + 4) = v18;
      *(__dst + 5) = v19;
    }

    *(__dst + 13) = *(__src + 13);

    goto LABEL_23;
  }

  if (v4)
  {
    *__dst = *__src;
    *(__dst + 1) = *(__src + 1);

    __dst[16] = __src[16];
    *(__dst + 3) = *(__src + 3);

    __dst[32] = __src[32];
    v5 = *(__src + 40);
    __dst[56] = __src[56];
    *(__dst + 40) = v5;
    v6 = *(__dst + 11);
    v7 = *(__src + 11);
    if (v6 != 1)
    {
      if (v7 == 1)
      {
        outlined destroy of AccessibilityValueStorage((__dst + 64));
        v16 = *(__src + 5);
        v15 = *(__src + 6);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = v16;
        *(__dst + 6) = v15;
      }

      else
      {
        if (v6)
        {
          v17 = (__dst + 64);
          if (v7)
          {
            __swift_assign_boxed_opaque_existential_1(v17, __src + 8);
          }

          else
          {
            outlined destroy of AnyAccessibilityValue(v17);
            v33 = *(__src + 12);
            v34 = *(__src + 5);
            *(__dst + 4) = *(__src + 4);
            *(__dst + 5) = v34;
            *(__dst + 12) = v33;
          }
        }

        else if (v7)
        {
          *(__dst + 11) = v7;
          *(__dst + 12) = *(__src + 12);
          (**(v7 - 8))(__dst + 64, __src + 64);
        }

        else
        {
          v35 = *(__src + 4);
          v36 = *(__src + 5);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 4) = v35;
          *(__dst + 5) = v36;
        }

        *(__dst + 13) = *(__src + 13);
      }

      goto LABEL_35;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        v8 = *(__src + 4);
        v9 = *(__src + 6);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = v9;
        *(__dst + 4) = v8;
LABEL_35:
        v37 = *(__src + 14);
        __dst[120] = __src[120];
        *(__dst + 14) = v37;
        v38 = *(__src + 30);
        if (*(__dst + 30) == 1)
        {
          if (v38 == 1)
          {
            v39 = *(__src + 9);
            *(__dst + 8) = *(__src + 8);
            *(__dst + 9) = v39;
            v40 = *(__src + 10);
            v41 = *(__src + 11);
            v42 = *(__src + 13);
            *(__dst + 12) = *(__src + 12);
            *(__dst + 13) = v42;
            *(__dst + 10) = v40;
            *(__dst + 11) = v41;
            v43 = *(__src + 14);
            v44 = *(__src + 15);
            v45 = *(__src + 16);
            __dst[272] = __src[272];
            *(__dst + 15) = v44;
            *(__dst + 16) = v45;
            *(__dst + 14) = v43;
          }

          else
          {
            v53 = *(__src + 16);
            __dst[136] = __src[136];
            *(__dst + 16) = v53;
            v54 = *(__src + 18);
            __dst[152] = __src[152];
            *(__dst + 18) = v54;
            __dst[153] = __src[153];
            __dst[154] = __src[154];
            __dst[155] = __src[155];
            __dst[156] = __src[156];
            *(__dst + 20) = *(__src + 20);
            *(__dst + 21) = *(__src + 21);
            *(__dst + 22) = *(__src + 22);
            *(__dst + 23) = *(__src + 23);
            *(__dst + 24) = *(__src + 24);
            *(__dst + 25) = *(__src + 25);
            __dst[208] = __src[208];
            __dst[209] = __src[209];
            *(__dst + 27) = *(__src + 27);
            *(__dst + 28) = *(__src + 28);
            __dst[232] = __src[232];
            *(__dst + 30) = *(__src + 30);
            v55 = *(__src + 248);
            *(__dst + 33) = *(__src + 33);
            *(__dst + 248) = v55;
            __dst[272] = __src[272];
          }
        }

        else if (v38 == 1)
        {
          outlined destroy of AccessibilityTextLayoutProperties((__dst + 128));
          v46 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v46;
          v47 = *(__src + 13);
          v49 = *(__src + 10);
          v48 = *(__src + 11);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 13) = v47;
          *(__dst + 10) = v49;
          *(__dst + 11) = v48;
          v51 = *(__src + 15);
          v50 = *(__src + 16);
          v52 = *(__src + 14);
          __dst[272] = __src[272];
          *(__dst + 15) = v51;
          *(__dst + 16) = v50;
          *(__dst + 14) = v52;
        }

        else
        {
          v56 = *(__src + 16);
          __dst[136] = __src[136];
          *(__dst + 16) = v56;
          v57 = *(__src + 18);
          __dst[152] = __src[152];
          *(__dst + 18) = v57;
          __dst[153] = __src[153];
          __dst[154] = __src[154];
          __dst[155] = __src[155];
          __dst[156] = __src[156];
          *(__dst + 20) = *(__src + 20);
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = *(__src + 22);
          *(__dst + 23) = *(__src + 23);
          *(__dst + 24) = *(__src + 24);
          *(__dst + 25) = *(__src + 25);
          __dst[208] = __src[208];
          __dst[209] = __src[209];
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          __dst[232] = __src[232];
          *(__dst + 30) = *(__src + 30);

          v58 = *(__src + 248);
          *(__dst + 33) = *(__src + 33);
          *(__dst + 248) = v58;
          __dst[272] = __src[272];
        }

        *(__dst + 35) = *(__src + 35);

        *(__dst + 72) = *(__src + 72);
        *(__dst + 73) = *(__src + 73);
        __dst[296] = __src[296];
        return __dst;
      }

      *(__dst + 11) = v7;
      *(__dst + 12) = *(__src + 12);
      (**(v7 - 8))(__dst + 64, __src + 64);
    }

    else
    {
      v31 = *(__src + 4);
      v32 = *(__src + 5);
      *(__dst + 12) = *(__src + 12);
      *(__dst + 4) = v31;
      *(__dst + 5) = v32;
    }

    *(__dst + 13) = *(__src + 13);

    goto LABEL_35;
  }

  outlined destroy of PlatformItem.AccessibilityContent(__dst);
LABEL_12:

  return memcpy(__dst, __src, 0x129uLL);
}

char *assignWithTake for AccessibilityPlatformItemTransform(char *__dst, char *__src)
{
  if (*(__dst + 35))
  {
    v4 = *(__src + 35);
    if (v4)
    {
      v5 = *(__src + 1);
      *__dst = *__src;
      *(__dst + 1) = v5;

      __dst[16] = __src[16];
      *(__dst + 3) = *(__src + 3);

      __dst[32] = __src[32];
      *(__dst + 40) = *(__src + 40);
      __dst[56] = __src[56];
      v6 = *(__dst + 11);
      if (v6 != 1)
      {
        v7 = *(__src + 11);
        if (v7 != 1)
        {
          if (v6)
          {
            v10 = __dst + 64;
            if (v7)
            {
              __swift_destroy_boxed_opaque_existential_1(v10);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v10);
            }
          }

          v11 = *(__src + 5);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = v11;
          v12 = *(__src + 13);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 13) = v12;

LABEL_16:
          *(__dst + 14) = *(__src + 14);
          __dst[120] = __src[120];
          if (*(__dst + 30) != 1)
          {
            v13 = *(__src + 30);
            if (v13 != 1)
            {
              *(__dst + 16) = *(__src + 16);
              __dst[136] = __src[136];
              *(__dst + 18) = *(__src + 18);
              __dst[152] = __src[152];
              *(__dst + 153) = *(__src + 153);
              __dst[155] = __src[155];
              __dst[156] = __src[156];
              v18 = *(__src + 11);
              *(__dst + 10) = *(__src + 10);
              *(__dst + 11) = v18;
              *(__dst + 12) = *(__src + 12);
              __dst[208] = __src[208];
              __dst[209] = __src[209];
              *(__dst + 216) = *(__src + 216);
              __dst[232] = __src[232];
              *(__dst + 30) = v13;

              *(__dst + 248) = *(__src + 248);
              *(__dst + 33) = *(__src + 33);
              __dst[272] = __src[272];
              goto LABEL_21;
            }

            outlined destroy of AccessibilityTextLayoutProperties((__dst + 128));
          }

          v14 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v14;
          *(__dst + 16) = *(__src + 16);
          __dst[272] = __src[272];
          v15 = *(__src + 11);
          *(__dst + 10) = *(__src + 10);
          *(__dst + 11) = v15;
          v16 = *(__src + 13);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 13) = v16;
          v17 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v17;
LABEL_21:
          *(__dst + 35) = v4;

          *(__dst + 36) = *(__src + 36);
          __dst[296] = __src[296];
          return __dst;
        }

        outlined destroy of AccessibilityValueStorage((__dst + 64));
      }

      v8 = *(__src + 5);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = v8;
      *(__dst + 6) = *(__src + 6);
      goto LABEL_16;
    }

    outlined destroy of PlatformItem.AccessibilityContent(__dst);
  }

  return memcpy(__dst, __src, 0x129uLL);
}

uint64_t getEnumTagSinglePayload for AccessibilityPlatformItemTransform(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 297))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 280);
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

uint64_t storeEnumTagSinglePayload for AccessibilityPlatformItemTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 297) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 297) = 0;
    }

    if (a2)
    {
      *(result + 280) = a2;
    }
  }

  return result;
}

void destroy for ArchivedAttachmentModifier(void *a1)
{

  v2 = a1[11];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }

LABEL_5:
  if (a1[30] != 1)
  {
  }

  v3 = a1[36];
}

uint64_t initializeWithCopy for ArchivedAttachmentModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 280);
  v16 = *(a2 + 288);
  *(a1 + 280) = v15;
  *(a1 + 288) = v16;

  v17 = v16;
  return a1;
}

uint64_t assignWithCopy for ArchivedAttachmentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  v40 = *(a1 + 288);
  v41 = *(a2 + 288);
  *(a1 + 288) = v41;
  v42 = v41;

  return a1;
}

uint64_t assignWithTake for ArchivedAttachmentModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = a1 + 64;
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  v17 = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivedAttachmentModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchivedAttachmentModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for PropertiesTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
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
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v7 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(a2 + 128);
  v8 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v8;
  v9 = *(a2 + 152);
  v10 = *(a1 + 152);
  *(a1 + 152) = v9;
  v11 = v9;

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  v12 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v12;
  *(a1 + 192) = *(a2 + 192);
  v13 = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = v13;
  v14 = *(a2 + 216);
  v15 = *(a1 + 216);
  *(a1 + 216) = v14;
  v16 = v14;

  *(a1 + 224) = *(a2 + 224);
  v17 = *(a1 + 232);
  v18 = *(a2 + 232);
  *(a1 + 232) = v18;
  v19 = v18;

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t initializeWithTake for PropertiesTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  v4 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v4;
  v5 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v5;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  swift_unknownObjectWeakTakeInit();
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t assignWithTake for PropertiesTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);
  v6 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v7;
  *(a1 + 208) = *(a2 + 208);
  v8 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  v9 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 232);

  swift_unknownObjectWeakTakeAssign();
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t getEnumTagSinglePayload for PropertiesTransform(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 252))
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

uint64_t storeEnumTagSinglePayload for PropertiesTransform(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 252) = 1;
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

    *(result + 252) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ArchivedAttachmentModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier();
  result = lazy protocol witness table accessor for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier;
  if (!lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier;
  if (!lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier;
  if (!lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedAttachmentModifier and conformance ArchivedAttachmentModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment()
{
  result = lazy protocol witness table cache variable for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment;
  if (!lazy protocol witness table cache variable for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment;
  if (!lazy protocol witness table cache variable for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment);
  }

  return result;
}