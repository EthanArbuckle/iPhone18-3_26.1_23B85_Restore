uint64_t NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)(void *a1)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1, v25);
  if ((v25[120] & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v25, &v19);

    v4 = v24;
    v16 = v21;
    v17 = v22;
    *v18 = *v23;
    *&v18[9] = *&v23[9];
    v14 = v19;
    v15 = v20;
    outlined init with copy of NavigationColumnState.ReplacedRoot?(&v14, v9);
    if (v11 == 255)
    {
      v6 = outlined destroy of NavigationColumnState.ReplacedRoot?(v9, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    }

    else if (v11)
    {
      v12[2] = v9[2];
      v12[3] = v9[3];
      v12[4] = v9[4];
      v13 = v10;
      v12[0] = v9[0];
      v12[1] = v9[1];
      v5 = NavigationLinkSelectionIdentifier.matches(_:)(a1);
      v6 = outlined destroy of NavigationViewDestinationView(v12);
      if (v5)
      {
        outlined destroy of NavigationColumnState.ReplacedRoot?(&v14, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);

        v3 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = outlined destroy of NavigationColumnState.ReplacedRoot(v9);
    }

    MEMORY[0x1EEE9AC00](v6);
    specialized Sequence.first(where:)(partial apply for closure #1 in NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:), v4, v9);

    v7 = MEMORY[0x1E69E6720];
    outlined destroy of NavigationColumnState.ReplacedRoot?(&v14, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v3 = *&v9[0] != 0;
    outlined destroy of NavigationColumnState.ReplacedRoot?(v9, &lazy cache variable for type metadata for NavigationViewDestinationView?, &type metadata for NavigationViewDestinationView, v7);
    goto LABEL_15;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v25, &v19);
  if (v23[24] == 255)
  {
    outlined destroy of NavigationColumnState.ReplacedRoot?(&v19, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_12:
    v3 = 0;
    goto LABEL_15;
  }

  if ((v23[24] & 1) == 0)
  {
    outlined destroy of NavigationColumnState.ReplacedRoot(&v19);
    goto LABEL_12;
  }

  v16 = v21;
  v17 = v22;
  *v18 = *v23;
  *&v18[16] = *&v23[16];
  v14 = v19;
  v15 = v20;
  v3 = NavigationLinkSelectionIdentifier.matches(_:)(a1);
  outlined destroy of NavigationViewDestinationView(&v14);
LABEL_15:
  outlined destroy of NavigationColumnState.ColumnContent(v25);
  return v3 & 1;
}

uint64_t outlined init with copy of NavigationColumnState.ReplacedRoot?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationColumnState.ReplacedRoot?(0, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      outlined init with copy of NavigationViewDestinationView(v7, v10);
      result = v6(v10);
      if (v3)
      {
        return outlined destroy of NavigationViewDestinationView(v10);
      }

      if (result)
      {
        break;
      }

      result = outlined destroy of NavigationViewDestinationView(v10);
      v7 += 88;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v10[3];
    *(a3 + 32) = v10[2];
    *(a3 + 48) = v8;
    *(a3 + 64) = v10[4];
    *(a3 + 80) = v11;
    v9 = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = v9;
  }

  else
  {
LABEL_6:
    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 160) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t outlined destroy of (NavigationRequest.Action?, NavigationRequest.Action?)(uint64_t a1)
{
  type metadata accessor for (NavigationRequest.Action?, NavigationRequest.Action?)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (NavigationRequest.Action?, NavigationRequest.Action?)()
{
  if (!lazy cache variable for type metadata for (NavigationRequest.Action?, NavigationRequest.Action?))
  {
    type metadata accessor for NavigationAuthority?(255, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationRequest.Action?, NavigationRequest.Action?));
    }
  }
}

double UpdateViewDestinationViewModifier.RequestWriter.selectionIdentifier.getter@<D0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for UpdateViewDestinationViewModifier();
  v3 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v5 = &v10 - v4;
  UpdateViewDestinationViewModifier.RequestWriter.viewListID.getter(&v10);
  if (v11 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v10;
  }

  if (v11 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v11;
  }

  UpdateViewDestinationViewModifier.RequestWriter.modifier.getter(v5);
  v8 = *&v5[*(updated + 48)];
  (*(v3 + 8))(v5, updated);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  return result;
}

uint64_t $defer #2 <A>() in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(a2, v7, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  if (v8[17] >> 1 == 4294967294)
  {
    v3 = &lazy cache variable for type metadata for UpdateViewDestinationRequest?;
    v4 = &type metadata for UpdateViewDestinationRequest;
    v5 = v7;
  }

  else
  {
    _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v8, v9, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
    outlined destroy of UpdateViewDestinationRequest(v7);
    if (v10 >> 1 != 0xFFFFFFFF)
    {
      outlined init with copy of NavigationRequest.Action(v9, v11);
      outlined destroy of NavigationRequest(v9);
      return outlined assign with take of NavigationRequest?(v11, a1 + 32, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
    }

    v3 = &lazy cache variable for type metadata for NavigationRequest?;
    v4 = &type metadata for NavigationRequest;
    v5 = v9;
  }

  outlined destroy of NavigationAuthority?(v5, v3, v4);
  memset(v11, 0, 96);
  v11[96] = -1;
  return outlined assign with take of NavigationRequest?(v11, a1 + 32, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
}

uint64_t outlined assign with take of NavigationRequest?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationAuthority?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI17NavigationRequestVSgWOdTm_0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  type metadata accessor for AnyAccessibilityValue?(0, a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t $defer #1 <A>() in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(uint64_t a1)
{
  updated = type metadata accessor for UpdateViewDestinationViewModifier.RequestWriter();
  v3 = *(updated - 8);
  (*(v3 + 16))(v8, a1, updated);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v5 = *WeakValue;
  }

  else
  {
    v5 = 0;
  }

  v6 = WeakValue == 0;
  result = (*(v3 + 8))(v8, updated);
  *(a1 + 20) = v5;
  *(a1 + 24) = v6;
  return result;
}

uint64_t closure #1 in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of NavigationLinkSelectionIdentifier(a2, v6);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(a3, v5, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  return specialized Dictionary.subscript.setter(v5, v6);
}

uint64_t outlined destroy of TabEntry?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<Bool>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 160) >> 1 == 4294967294)
  {
    v4 = MEMORY[0x1E69E6720];
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    outlined destroy of NavigationLinkSelectionIdentifier(a2);
    return outlined destroy of TabEntry?(v8, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest, v4);
  }

  else
  {
    outlined init with take of UpdateViewDestinationRequest(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of NavigationLinkSelectionIdentifier(a2);
    *v2 = v7;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined destroy of NavigationLinkSelectionIdentifier(*(v9 + 48) + (v7 << 6));
    outlined init with take of UpdateViewDestinationRequest(*(v9 + 56) + 192 * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 160) = 0x1FFFFFFFCLL;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  Hasher.init(_seed:)();
  NavigationLinkSelectionIdentifier.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      outlined init with copy of NavigationLinkSelectionIdentifier(*(v6 + 48) + (v5 << 6), v30);
      _sypSgWOcTm_0(v30, v26, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
      _sypSgWOcTm_0(a1, &v27, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
      if (v26[3])
      {
        _sypSgWOcTm_0(v26, v23, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
        if (!*(&v28 + 1))
        {
          outlined destroy of AnyNavigationLinkPresentedValue(v23);
LABEL_4:
          outlined destroy of (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(v26, &lazy cache variable for type metadata for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?), &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
          goto LABEL_5;
        }

        v21[0] = v27;
        v21[1] = v28;
        v22 = v29;
        v9 = v24;
        v10 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        v11 = (*(v10 + 112))(v21, v9, v10);
        outlined destroy of AnyNavigationLinkPresentedValue(v21);
        outlined destroy of AnyNavigationLinkPresentedValue(v23);
        _sypSgWOhTm_0(v26, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
        if ((v11 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (*(&v28 + 1))
        {
          goto LABEL_4;
        }

        _sypSgWOhTm_0(v26, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
      }

      v12 = v8;
      v13 = v3;
      v14 = v31;
      v15 = v32;
      v16 = a1[5];
      v17 = a1[6];
      if (v32 == 1)
      {
        outlined copy of Text.LineStyle?(v31, 1);
        if (v17 != 1)
        {
          outlined copy of Text.LineStyle?(v16, v17);
          goto LABEL_18;
        }

        outlined copy of Text.LineStyle?(v16, 1);
        outlined consume of Text.LineStyle?(v14, 1);
        v3 = v13;
        v8 = v12;
        v6 = v20;
      }

      else
      {
        v26[0] = v31;
        v26[1] = v32;
        if (v17 == 1)
        {
          outlined copy of Text.LineStyle?(v31, v32);
          outlined copy of Text.LineStyle?(v16, 1);
          outlined copy of Text.LineStyle?(v14, v15);

LABEL_18:
          outlined consume of Text.LineStyle?(v14, v15);
          outlined consume of Text.LineStyle?(v16, v17);
          v3 = v13;
          v8 = v12;
          v6 = v20;
          goto LABEL_5;
        }

        v23[0] = v16;
        v23[1] = v17;
        outlined copy of Text.LineStyle?(v31, v32);
        outlined copy of Text.LineStyle?(v16, v17);
        outlined copy of Text.LineStyle?(v14, v15);
        v18 = MEMORY[0x18D003E10](v26, v23);

        outlined consume of Text.LineStyle?(v14, v15);
        v3 = v13;
        v8 = v12;
        v6 = v20;
        if ((v18 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (v33 == a1[7])
      {
        outlined destroy of NavigationLinkSelectionIdentifier(v30);
        return v5;
      }

LABEL_5:
      outlined destroy of NavigationLinkSelectionIdentifier(v30);
      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t *UpdateViewDestinationRequestProcessor.PreferenceDebouncer.updateValue()()
{
  v1 = v0;
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 56);
  if (v2 != *AGGraphGetValue() >> 1)
  {
    *(v1 + 56) = *AGGraphGetValue() >> 1;
    *(v1 + 36) = 0xFFFFFFFFLL;
    *(v1 + 44) = 0;
  }

  AGGraphGetValue();
  v4 = v3;
  type metadata accessor for Optional();
  AGGraphGetValue();
  v6 = v5;
  UpdateViewDestinationRequestProcessor.PreferenceDebouncer.viewListID.getter(&v19);
  if (v20 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v19;
  }

  if (v20 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v20;
  }

  v9 = *(v1 + 48);
  v10 = *AGGraphGetValue();
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v23 = v7;
  v24 = v8;
  v25 = v10;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v12 = *WeakValue;
  }

  else
  {
    v12 = 0;
  }

  v13 = WeakValue == 0;
  outlined init with copy of NavigationLinkSelectionIdentifier(v21, v18);
  v14 = swift_allocObject();
  *(v14 + 28) = v9;
  v15 = v18[1];
  *(v14 + 40) = v18[0];
  *(v14 + 56) = v15;
  v16 = v18[3];
  *(v14 + 72) = v18[2];
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 36) = v4 & 1;
  *(v14 + 37) = v6 & 1;
  *(v14 + 88) = v16;
  *(v14 + 104) = 0;
  type metadata accessor for (_:)();
  AGGraphSetOutputValue();
  outlined destroy of NavigationLinkSelectionIdentifier(v21);

  return $defer #1 <A, B>() in UpdateViewDestinationRequestProcessor.PreferenceDebouncer.updateValue()(v1);
}

uint64_t sub_18C046F28()
{
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  }

  if (*(v0 + 88) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t *UpdateViewDestinationRequestProcessor.PreferenceDebouncer.viewListID.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NavigationAuthority?(0, &lazy cache variable for type metadata for _ViewList_ID.Canonical?, MEMORY[0x1E697E088], MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    result = outlined copy of Text.LineStyle?(*result, v4);
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t *$defer #1 <A, B>() in UpdateViewDestinationRequestProcessor.PreferenceDebouncer.updateValue()(uint64_t a1)
{
  type metadata accessor for UpdateViewDestinationRequestProcessor.PreferenceDebouncer();
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0;
  }

  v4 = HIDWORD(v3);
  if (!result)
  {
    LODWORD(v3) = -1;
    LODWORD(v4) = -1;
  }

  *(a1 + 48) = v3;
  *(a1 + 52) = v4;
  return result;
}

unint64_t closure #1 in UpdateViewDestinationRequestProcessor.PreferenceDebouncer.updateValue()(unint64_t result, unint64_t a2, char a3, uint64_t a4, char a5, char a6, void *a7, char a8)
{
  if ((a3 & 1) == 0)
  {
    if (a4 == a2)
    {
      if ((a4 ^ a2) >> 32)
      {
        if ((a5 & 1) == 0 && (a6 & 1) == 0)
        {
          v9 = *result;
          if (*(*result + 16))
          {
            v10 = a4;
            v11 = a2;
            v12 = a7;
            v13 = a8;
            result = specialized __RawDictionaryStorage.find<A>(_:)(a7);
            a8 = v13;
            a7 = v12;
            LODWORD(a4) = v10;
            v14 = a2;
            LODWORD(a2) = v11;
            if (v14)
            {
              outlined init with copy of UpdateViewDestinationRequest(*(v9 + 56) + 192 * result, v21);
              outlined init with take of UpdateViewDestinationRequest(v21, v24);
              _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v25, v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
              if (v22 >> 1 == 0xFFFFFFFF)
              {
                outlined destroy of UpdateViewDestinationRequest(v24);
                result = outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
              }

              else
              {
                outlined init with copy of NavigationRequest.Action(v21, &v17);
                outlined destroy of NavigationRequest(v21);
                if (v20 == 14)
                {

                  outlined destroy of NavigationLinkSelectionIdentifier(&v18);
                  specialized Dictionary._Variant.removeValue(forKey:)(v12, v21);
                  outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
                  return outlined destroy of UpdateViewDestinationRequest(v24);
                }

                outlined destroy of UpdateViewDestinationRequest(v24);
                result = outlined destroy of NavigationRequest.Action(&v17);
              }

              LODWORD(a4) = v10;
              LODWORD(a2) = v11;
              a7 = v12;
              a8 = v13;
            }
          }
        }
      }
    }

    if (a8)
    {
      return result;
    }

    v15 = a2;
    v16 = a4;
    specialized Dictionary._Variant.removeValue(forKey:)(a7, v21);
    if (v23 >> 1 == 4294967294)
    {
      return outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
    }

    outlined init with take of UpdateViewDestinationRequest(v21, v24);
    if ((a6 & 1) == 0)
    {
      _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v25, v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      if (v22 >> 1 == 0xFFFFFFFF)
      {
        outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      }

      else
      {
        outlined init with copy of NavigationRequest.Action(v21, &v17);
        outlined destroy of NavigationRequest(v21);
        if (v20 == 18)
        {

          outlined destroy of NavigationLinkSelectionIdentifier(&v19);
          if (v16 != v15)
          {
            return outlined destroy of UpdateViewDestinationRequest(v24);
          }
        }

        else
        {
          outlined destroy of NavigationRequest.Action(&v17);
        }
      }

      _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v25, v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      if (v22 >> 1 == 0xFFFFFFFF)
      {
        outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      }

      else
      {
        outlined init with copy of NavigationRequest.Action(v21, &v17);
        outlined destroy of NavigationRequest(v21);
        if (v20 == 13)
        {

          outlined destroy of NavigationLinkSelectionIdentifier(&v18);
          if (v16 != v15)
          {
            return outlined destroy of UpdateViewDestinationRequest(v24);
          }
        }

        else
        {
          outlined destroy of NavigationRequest.Action(&v17);
        }
      }
    }

    UpdateViewDestinationRequest.enqueue()();
    return outlined destroy of UpdateViewDestinationRequest(v24);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance UpdateViewDestinationRequest.UpdateViewDestinationRequestKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

Swift::Void __swiftcall ListCollectionViewCellBase.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ListCollectionViewCellBase();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  if ((static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv & 1) == 0)
  {
    v1 = *&v0[direct field offset for ListCollectionViewCellBase.host];
    if (v1)
    {
      [*&v0[direct field offset for ListCollectionViewCellBase.host] bounds];
      Width = CGRectGetWidth(v9);
      v3 = &v0[direct field offset for ListCollectionViewCellBase.cellHostWidth];
      v4 = &v0[direct field offset for ListCollectionViewCellBase.cellHostWidth + 8];
      if (!*v4 && Width == *v3)
      {
        return;
      }
    }

    else
    {
      v3 = &v0[direct field offset for ListCollectionViewCellBase.cellHostWidth];
      if (v0[direct field offset for ListCollectionViewCellBase.cellHostWidth + 8])
      {
        return;
      }

      v4 = (v3 + 1);
      Width = 0.0;
    }

    v5 = &v0[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_insetsDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v0, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    *v3 = Width;
    *v4 = v1 == 0;
  }
}

void @objc ListCollectionViewCellBase.layoutSubviews()(void *a1)
{
  v1 = a1;
  ListCollectionViewCellBase.layoutSubviews()();
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.listCollectionViewSeparatorInsetsChanged(for:)(UICollectionViewCell *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong _cellPreferredSeparatorInsetsChanged_];
}

uint64_t destroy for FocusStore.Entry.Target(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    type metadata accessor for Binding<SearchFieldState>(0);
    v3 = a1 + *(v2 + 32);
    v4 = *(type metadata accessor for SearchFieldState(0) + 36);
    v5 = type metadata accessor for AttributedString();
    v6 = *(*(v5 - 8) + 8);

    return v6(v3 + v4, v5);
  }

  else
  {
    swift_weakDestroy();

    return swift_weakDestroy();
  }
}

uint64_t FocusStore.Entry.searchFieldState.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FocusStore.Entry.Target();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, v2 + *(a1 + 40), v5, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Binding<SearchFieldState>(v9, a2, type metadata accessor for Binding<SearchFieldState>);
    type metadata accessor for Binding<SearchFieldState>(0);
    return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  }

  else
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t BaseModifier.SelectionObserver.updateValue()()
{
  Attribute = AGWeakAttributeGetAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    AGGraphGetValue();
    v3 = v4 & 1;
  }

  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v7 = v6;
  outlined init with copy of NavigationLinkPresentedValue?(Value, v67, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (*(v0 + 36) == v2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  else
  {
    v12 = MEMORY[0x1E69E69B8];
    type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v13 = AGGraphGetValue();
    v8 = v14;
    outlined init with copy of NavigationLinkPresentedValue?(v13, &v68, &lazy cache variable for type metadata for AnyHashable?, v12);
    v10 = v68;
    v11 = v69;
    v9 = v70;
  }

  v65[0] = v10;
  v65[1] = v11;
  v66 = v9;
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
LABEL_17:
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v65, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    v16 = &lazy cache variable for type metadata for NavigationLinkPresentedValue?;
    v17 = &type metadata for NavigationLinkPresentedValue;
    v18 = v67;
    return _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v18, v16, v17);
  }

  outlined init with copy of NavigationLinkPresentedValue?(WeakValue, v63, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v64 != 1)
  {
    Strong = swift_weakLoadStrong();
    outlined destroy of NavigationAuthority(v63);
    if (Strong)
    {
      swift_beginAccess();
      v20 = Strong[8];
      v51 = Strong[7];
      v52 = v20;
      v53[0] = Strong[9];
      *(v53 + 10) = *(Strong + 154);
      v21 = Strong[4];
      v47 = Strong[3];
      v48 = v21;
      v22 = Strong[6];
      v49 = Strong[5];
      v50 = v22;
      v23 = Strong[2];
      v45 = Strong[1];
      v46 = v23;
      outlined init with copy of NavigationLinkPresentedValue?(&v45, &v68, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

      v60 = v51;
      v61 = v52;
      v62[0] = v53[0];
      *(v62 + 10) = *(v53 + 10);
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v54 = v45;
      v55 = v46;
      if (getEnumTag for AccessibilityActionCategory.Category(&v54) != 1)
      {
        v74 = v60;
        v75 = v61;
        v76[0] = v62[0];
        *(v76 + 10) = *(v62 + 10);
        v70 = v56;
        v71 = v57;
        v72 = v58;
        v73 = v59;
        v68 = v54;
        v69 = v55;
        type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
        v24 = AGGraphGetWeakValue();
        if (v24)
        {
          v25 = *(v24 + 40);
          if (v25 != 1 && ((v3 | v8 | v7) & 1) != 0)
          {
            v37 = *(v24 + 16);
            v38 = *v24;
            v26 = *(v24 + 32) & 1;
            v44 = 11;
            v27 = swift_allocObject();
            swift_weakInit();
            outlined init with copy of NavigationLinkPresentedValue?(v67, v42, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
            v28 = MEMORY[0x1E69E69B8];
            outlined init with copy of NavigationLinkPresentedValue?(v65, v40, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
            v29 = swift_allocObject();
            v30 = v75;
            *(v29 + 120) = v74;
            *(v29 + 136) = v30;
            *(v29 + 152) = v76[0];
            *(v29 + 162) = *(v76 + 10);
            v31 = v71;
            *(v29 + 56) = v70;
            *(v29 + 72) = v31;
            v32 = v73;
            *(v29 + 88) = v72;
            *(v29 + 104) = v32;
            v33 = v69;
            *(v29 + 24) = v68;
            *(v29 + 16) = v27;
            *(v29 + 40) = v33;
            *(v29 + 200) = v37;
            *(v29 + 184) = v38;
            *(v29 + 216) = v26;
            *(v29 + 217) = v77[0];
            *(v29 + 220) = *(v77 + 3);
            *(v29 + 224) = v25;
            v34 = v42[1];
            *(v29 + 232) = v42[0];
            *(v29 + 248) = v34;
            *(v29 + 264) = v43;
            *(v29 + 304) = v41;
            v35 = v40[1];
            *(v29 + 272) = v40[0];
            *(v29 + 288) = v35;
            outlined init with copy of NavigationLinkPresentedValue?(&v45, v39, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

            static Update.enqueueAction(reason:_:)();

            _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v45, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
            _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v65, &lazy cache variable for type metadata for AnyHashable?, v28);
            _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v67, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
          }
        }

        _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v45, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
      }
    }

    goto LABEL_17;
  }

  _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v65, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v67, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  v16 = &lazy cache variable for type metadata for NavigationAuthority?;
  v17 = &type metadata for NavigationAuthority;
  v18 = v63;
  return _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v18, v16, v17);
}

uint64_t sub_18C0483A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0483E0()
{

  if (v0[8])
  {
  }

  v1 = v0[16];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_10;
    }
  }

  if (v0[18])
  {
  }

  if (v0[21])
  {
  }

LABEL_10:
  if (v0[32] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 29));
  }

  if (v0[37])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 34));
  }

  return swift_deallocObject();
}

uint64_t NavigationSelectionModifier.body(content:)()
{
  type metadata accessor for ShouldUseNavigationLinkV4();
  v1 = *v0;
  outlined init with copy of NavigationLinkPresentedValue?((v0 + 8), v9, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  v9[40] = v1;
  outlined init with copy of NavigationLinkPresentedValue?((v0 + 8), &v11, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  LOBYTE(v10) = v1;
  swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  swift_getWitnessTable();
  v2 = type metadata accessor for _ViewModifier_Content();
  v3 = type metadata accessor for StaticIf();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v10, v12, v2, v3, WitnessTable);
  (*(*(v3 - 8) + 8))(v12, v3);
  v5 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v10, v5, v6);
  v7 = *(*(v5 - 8) + 8);
  v7(&v10, v5);
  static ViewBuilder.buildExpression<A>(_:)(v12, v5, v6);
  return v7(v12, v5);
}

uint64_t initializeWithCopy for BaseModifier(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 > 1)
  {
    v4 = *(a2 + 32);
    *(result + 24) = v2;
    *(result + 32) = v4;
    v5 = result;
    v6 = a2;
    (**(v2 - 8))();
    a2 = v6;
    result = v5;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
    *(result + 32) = *(a2 + 32);
  }

  *(result + 40) = *(a2 + 40);
  return result;
}

uint64_t destroy for BaseModifier(uint64_t a1)
{
  if (*(a1 + 24) >= 2uLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t closure #1 in BaseModifier.SelectionStateBox.update(state:listKey:presentedValue:tag:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = a2[7];
    v14[6] = a2[6];
    v14[7] = v10;
    v15[0] = a2[8];
    *(v15 + 10) = *(a2 + 138);
    v11 = a2[3];
    v14[2] = a2[2];
    v14[3] = v11;
    v12 = a2[5];
    v14[4] = a2[4];
    v14[5] = v12;
    v13 = a2[1];
    v14[0] = *a2;
    v14[1] = v13;
    BaseModifier.SelectionStateBox.updateSelectionState(state:listKey:presentedValue:tag:)(v14, a3, a4, a5);
  }

  return result;
}

uint64_t BaseModifier.SelectionStateBox.updateSelectionState(state:listKey:presentedValue:tag:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  outlined init with copy of NavigationLinkPresentedValue?(a3, &v30, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (!*(&v31 + 1))
  {
    outlined destroy of NavigationLinkPresentedValue(&v30);
    goto LABEL_5;
  }

  if (*(&v31 + 1) == 1)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v30, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
LABEL_5:
    v9 = 2;
    v10 = 1;
    goto LABEL_6;
  }

  v39 = v30;
  v40 = v31;
  v41 = v32;
  v20 = a1[7];
  v36 = a1[6];
  v37 = v20;
  v38[0] = a1[8];
  *(v38 + 10) = *(a1 + 138);
  v21 = a1[3];
  v32 = a1[2];
  v33 = v21;
  v22 = a1[5];
  v34 = a1[4];
  v35 = v22;
  v23 = a1[1];
  v30 = *a1;
  v31 = v23;
  v24 = NavigationState.isSelected(_:in:)(&v39, a2);
  outlined destroy of AnyNavigationLinkPresentedValue(&v39);
  if (v24)
  {
    v19 = 1;
    v9 = 1;
    goto LABEL_14;
  }

  v10 = 0;
  v9 = 0;
LABEL_6:
  outlined init with copy of NavigationLinkPresentedValue?(a4, &v30, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  if (*(&v31 + 1))
  {
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v11 = a1[7];
    v36 = a1[6];
    v37 = v11;
    v38[0] = a1[8];
    *(v38 + 10) = *(a1 + 138);
    v12 = a1[3];
    v32 = a1[2];
    v33 = v12;
    v13 = a1[5];
    v34 = a1[4];
    v35 = v13;
    v14 = a1[1];
    v30 = *a1;
    v31 = v14;
    outlined init with copy of AnyHashable(&v39, v26);
    outlined init with copy of AnyHashable(v26, &v27);
    type metadata accessor for AnyNavigationLinkPresentedValueStorage<AnyHashable>(0, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorage<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for AnyNavigationLinkPresentedValueStorage);
    v16 = v15;
    v17 = swift_allocObject();
    v18 = v28;
    *(v17 + 16) = v27;
    *(v17 + 32) = v18;
    *(v17 + 48) = v29;
    *(&v28 + 1) = v16;
    v29 = lazy protocol witness table accessor for type AnyNavigationLinkPresentedValueStorage<AnyHashable> and conformance AnyNavigationLinkPresentedValueStorage<A>();
    *&v27 = v17;
    outlined destroy of AnyHashable(v26);
    v19 = NavigationState.isSelected(_:in:)(&v27, a2);
    outlined destroy of AnyHashable(&v39);
    outlined destroy of AnyNavigationLinkPresentedValue(&v27);
    v9 = v19 & 1;
  }

  else
  {
    result = _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v30, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    if (v10)
    {
      v9 = 2;
      goto LABEL_16;
    }

    v19 = 0;
  }

LABEL_14:
  result = swift_weakLoadStrong();
  if (result)
  {
    static Transaction.current.getter();
    *&v30 = *(v5 + 16);
    BYTE8(v30) = v19 & 1;
    lazy protocol witness table accessor for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    LOBYTE(v27) = 1;
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
  }

LABEL_16:
  *(v5 + 32) = v9;
  return result;
}

uint64_t NavigationState.isSelected(_:in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  if (v5 == 6)
  {
    v6 = *(v2 + 80);
    v8 = *(v2 + 64);
    v7 = *(v2 + 72);
    v10 = *(v2 + 48);
    v9 = *(v2 + 56);
    v12 = *(v2 + 32);
    v11 = *(v2 + 40);
    outlined copy of NavigationListState?(v12, v11);
    if (!v11)
    {
LABEL_8:
      v16 = 0;
      return v16 & 1;
    }
  }

  else
  {
    v13 = *(v2 + 24);
    if (!*(v13 + 16))
    {
      goto LABEL_8;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(*(a2 + 8), v5, *(a2 + 24));
    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }

    outlined init with copy of NavigationColumnState(*(v13 + 56) + 360 * v14, &v18);
    v12 = v23;
    v11 = v24;
    v10 = v25;
    v9 = v26;
    v8 = v27;
    v7 = v28;
    v6 = v29;
    outlined copy of NavigationListState?(v23, v24);
    outlined destroy of NavigationColumnState(&v18);
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v23 = v7;
  LODWORD(v24) = v6;
  v16 = NavigationListState.isSelected(key:value:)(a2, a1);
  outlined consume of NavigationListState?(v12, v11);
  return v16 & 1;
}

uint64_t outlined copy of NavigationListState?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NavigationListState.isSelected(key:value:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (*(v3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of NavigationListState.Selection(*(v3 + 56) + 72 * v5, v14);
    type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v9 = (*(v8 + 48))(a2, v7, v8);
    outlined destroy of NavigationListState.Selection(v14);
    outlined destroy of AnyListSelection(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t AnyListSelection.Storage.isSelected(value:)()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for SelectionManagerBox();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v0 + v8, v4);
  v9 = AnyNavigationLinkPresentedValue.isSelected<A>(in:)(v7, v2, v3);
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

uint64_t AnyNavigationLinkPresentedValue.isSelected<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 72))(a1, a2, a3, v7, v8) & 1;
}

uint64_t AnyNavigationLinkPresentedValueStorage.isSelected<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a3;
  v25[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 96)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = type metadata accessor for SelectionManagerBox();
    v23 = SelectionManagerBox.isSelected(_:)(v18, v22);
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v23 = 0;
  }

  return v23 & 1;
}

unint64_t lazy protocol witness table accessor for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation()
{
  result = lazy protocol witness table cache variable for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation;
  if (!lazy protocol witness table cache variable for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation);
  }

  return result;
}

uint64_t specialized ListCollectionViewCellBase.hostingView<A>(_:didChangePreferences:)()
{
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    result = swift_once();
  }

  if ((static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv & 1) == 0)
  {
    v1 = direct field offset for ListCollectionViewCellBase.popUpButtonSeed;
    swift_beginAccess();
    PreferenceValues.subscript.getter();
    v2 = *&v0[v1];
    if (v2 == -1 || v7 == -1 || v2 != v7)
    {
      *&v0[v1] = v7;
      closure #1 in ListCollectionViewCellBase.hostingView<A>(_:didChangePreferences:)(v6, v0);
    }

    _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v6, type metadata accessor for PreferenceValues.Value<WeakBox<UIButton>?>);
    return swift_endAccess();
  }

  return result;
}

void closure #1 in ListCollectionViewCellBase.hostingView<A>(_:didChangePreferences:)(uint64_t a1, void *a2)
{
  outlined init with copy of UIListContentConfiguration?(a1, v5, type metadata accessor for WeakBox<UIButton>?);
  v3 = type metadata accessor for WeakBox<UIButton>?;
  if (v5[8])
  {
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = type metadata accessor for WeakBox<UIButton>;
  }

  _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v5, v3);
  [a2 _setPopupMenuButton_];
}

size_t closure #1 in View.transformPlatformItemSelectionBehavior(_:)(size_t result, void (*a2)(__int128 *))
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v25 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v2[2])
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
      if (*(result + 16))
      {
LABEL_4:
        v5 = type metadata accessor for PlatformItemList.Item();
        v6 = 0;
        v7 = *(v5 - 8);
        result = v5 - 8;
        v8 = *(v7 + 72);
        v9 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 408;
        v10 = v3 - 1;
        do
        {
          v12 = *v9;
          v11 = *(v9 + 8);
          v13 = *(v9 + 16);
          v14 = *(v9 + 32);
          v15 = *(v9 + 48);
          v41 = *(v9 + 64);
          v39 = v14;
          v40 = v15;
          v38 = v13;
          v16 = *(v9 + 16);
          v17 = *(v9 + 32);
          v18 = *(v9 + 48);
          v45 = *(v9 + 64);
          v43 = v17;
          v44 = v18;
          v42 = v16;
          if (v11 != 1)
          {
            *&v33 = v12;
            *(&v33 + 1) = v11;
            v34 = v42;
            v35 = v43;
            v36 = v44;
            v37 = v45;
            v26[0] = v12;
            v26[1] = v11;
            v27 = v38;
            v28 = v39;
            v29 = v40;
            v30 = v41;
            outlined init with copy of PlatformItemList.Item.SelectionBehavior(v26, v31);
            a2(&v33);
            v31[0] = *v9;
            v19 = *(v9 + 16);
            v20 = *(v9 + 32);
            v21 = *(v9 + 48);
            v32 = *(v9 + 64);
            v31[2] = v20;
            v31[3] = v21;
            v31[1] = v19;
            v22 = v36;
            v23 = v35;
            v24 = v34;
            *(v9 + 64) = v37;
            *(v9 + 32) = v23;
            *(v9 + 48) = v22;
            *(v9 + 16) = v24;
            *v9 = v33;
            result = _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v31, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
          }

          if (v10 == v6)
          {
            goto LABEL_10;
          }

          ++v6;
          v9 += v8;
        }

        while (v6 < v2[2]);
      }
    }

    __break(1u);
LABEL_10:
    *v25 = v2;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemList.Item.SelectionBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t partial apply for closure #1 in StyledNavigationLinkButton.body.getter(uint64_t a1)
{
  type metadata accessor for StyledNavigationLinkButton();

  return closure #1 in StyledNavigationLinkButton.body.getter(a1);
}

uint64_t closure #1 in StyledNavigationLinkButton.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for StyledNavigationLinkButton();
  result = StyledNavigationLinkButton.isPresentingViewDestinationView.getter(v2);
  if (result)
  {
    *(a1 + 4) = 2;
  }

  return result;
}

uint64_t StyledNavigationLinkButton.isPresentingViewDestinationView.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v6);
  return v6;
}

uint64_t destroy for PlatformItemList.Item.SelectionBehavior(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
  }

  if (*(v1 + 24))
  {
  }

  if (*(v1 + 40))
  {
  }

  return result;
}

uint64_t BaseModifier.Child.value.getter@<X0>(_BYTE *a1@<X8>)
{
  Attribute = AGWeakAttributeGetAttribute();
  v3 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v4 = 2;
  }

  else
  {
    type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v4 = *AGGraphGetValue();
  }

  result = AGWeakAttributeGetAttribute();
  if (result != v3)
  {
    result = AGGraphRegisterDependency();
  }

  if (v4 == 2 || (v4 & 1) == 0)
  {
    type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
    result = AGGraphGetWeakValue();
    if (result)
    {
      v6 = *(result + 16);
      if (*(result + 40) != 1 && v6 != 6)
      {
        v8 = *(result + 8);
        v9 = *(result + 24);
        type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
        result = AGGraphGetWeakValue();
        if (result)
        {
          outlined init with copy of NavigationLinkPresentedValue?(result, v46, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
          if (v47 == 1)
          {
            result = _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v46, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
          }

          else
          {
            Strong = swift_weakLoadStrong();
            result = outlined destroy of NavigationAuthority(v46);
            if (Strong)
            {
              swift_beginAccess();
              v11 = Strong[8];
              v34 = Strong[7];
              v35 = v11;
              v36[0] = Strong[9];
              *(v36 + 10) = *(Strong + 154);
              v12 = Strong[4];
              v30 = Strong[3];
              v31 = v12;
              v13 = Strong[6];
              v32 = Strong[5];
              v33 = v13;
              v14 = Strong[2];
              v28 = Strong[1];
              v29 = v14;
              outlined init with copy of NavigationLinkPresentedValue?(&v28, &v19, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

              v43 = v34;
              v44 = v35;
              v45[0] = v36[0];
              *(v45 + 10) = *(v36 + 10);
              v39 = v30;
              v40 = v31;
              v41 = v32;
              v42 = v33;
              v37 = v28;
              v38 = v29;
              result = getEnumTag for AccessibilityActionCategory.Category(&v37);
              if (result != 1)
              {
                type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
                Value = AGGraphGetValue();
                outlined init with copy of NavigationLinkPresentedValue?(Value, &v19, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
                if (*(&v20 + 1))
                {
                  if (*(&v20 + 1) == 1)
                  {
                    _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v28, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
                    result = _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v19, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
                  }

                  else
                  {
                    v17[0] = v19;
                    v17[1] = v20;
                    v18 = v21;
                    v25 = v43;
                    v26 = v44;
                    v27[0] = v45[0];
                    *(v27 + 10) = *(v45 + 10);
                    v21 = v39;
                    v22 = v40;
                    v23 = v41;
                    v24 = v42;
                    v19 = v37;
                    v20 = v38;
                    v16 = NavigationState.isSelected(_:in:)(v17, v8, v6, v9);
                    outlined destroy of AnyNavigationLinkPresentedValue(v17);
                    result = _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v28, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
                    if (v16)
                    {
                      LOBYTE(v4) = 1;
                    }
                  }
                }

                else
                {
                  _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v28, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
                  result = outlined destroy of NavigationLinkPresentedValue(&v19);
                }
              }
            }
          }
        }
      }
    }
  }

  *a1 = v4;
  return result;
}

uint64_t NavigationState.isSelected(_:in:)(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (!*(v5 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4), (v11 & 1) == 0))
  {
LABEL_9:
    v16 = 0;
    return v16 & 1;
  }

  outlined init with copy of NavigationColumnState(*(v5 + 56) + 360 * v10, v24);
  outlined init with copy of NavigationColumnState.ColumnContent(&v25, v22);
  if (v23)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v22);
    goto LABEL_7;
  }

  v12 = v22[12];

  outlined destroy of Binding<NavigationSplitViewColumn>(v22, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 120))(v12, v13, v14);

  if ((v15 & 1) == 0)
  {
LABEL_7:
    if (a3 - 2 >= 4)
    {
      if (a3)
      {
        v19 = 2;
        v18 = a4;
      }

      else
      {
        v18 = a4;
        v19 = a4 == 3 ? 1 : 2;
      }

      if (*(v5 + 16))
      {
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, v19, v18);
        if (v21)
        {
          outlined init with copy of NavigationColumnState(*(v5 + 56) + 360 * v20, v22);
          v16 = NavigationColumnState.ColumnContent.isRoot(_:)(a1);
          outlined destroy of NavigationColumnState(v22);
          outlined destroy of NavigationColumnState(v24);
          return v16 & 1;
        }
      }
    }

    outlined destroy of NavigationColumnState(v24);
    goto LABEL_9;
  }

  outlined destroy of NavigationColumnState(v24);
  v16 = 1;
  return v16 & 1;
}

uint64_t NavigationColumnState.ColumnContent.isRoot(_:)(uint64_t a1)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1, v10);
  if ((v10[120] & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v10, v7);

    if (v9 != 255)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_8:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v7, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_9;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v10, v7);
  if (v9 == 255)
  {
    goto LABEL_8;
  }

  if (v9)
  {
LABEL_7:
    outlined destroy of NavigationColumnState.ReplacedRoot(v7);
LABEL_9:
    outlined destroy of NavigationColumnState.ColumnContent(v10);
    v5 = 0;
    return v5 & 1;
  }

LABEL_4:
  v11 = v7[0];
  v12 = v7[1];
  v13 = v8;
  outlined destroy of NavigationColumnState.ColumnContent(v10);
  v3 = *(&v12 + 1);
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  v5 = (*(v4 + 112))(a1, v3, v4);
  outlined destroy of AnyNavigationLinkPresentedValue(&v11);
  return v5 & 1;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance PlatformItemNavigationSelectionStyleModifier@<X0>(size_t (**a1)(size_t a1)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in PlatformItemNavigationSelectionStyleModifier.body(content:);
  *(result + 24) = v4;
  *a1 = partial apply for closure #1 in View.transformPlatformItemSelectionBehavior(_:);
  a1[1] = result;
  return result;
}

uint64_t sub_18C04A1A8()
{

  return swift_deallocObject();
}

_BYTE *partial apply for closure #1 in PlatformItemNavigationSelectionStyleModifier.body(content:)(_BYTE *result)
{
  v2 = *(v1 + 16);
  *result = 0;
  if (v2 != 2)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    result[4] = v3;
  }

  return result;
}

uint64_t specialized ListCollectionViewCellBase.hostingView<A>(_:didChangePlatformItemList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v36 = *MEMORY[0x1E69E7D40] & *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlatformItemList.containerSelectionBehavior.getter(a1, v42);
  v12 = v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior;
  v13 = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 32);
  v14 = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 48);
  v15 = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior);
  v44[1] = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 16);
  v44[2] = v13;
  v44[3] = v14;
  v45 = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 64);
  v44[0] = v15;
  v16 = v42[1];
  *v12 = v42[0];
  *(v12 + 1) = v16;
  v17 = v42[3];
  *(v12 + 2) = v42[2];
  *(v12 + 3) = v17;
  v12[64] = v43;
  outlined destroy of AnyAccessibilityValue?(v44, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?);
  PlatformItemList.containerSecondaryNavigationBehavior.getter(a1, &v46);
  v18 = direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior;
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item.SecondaryNavigationBehavior?(&v46, v3 + v18);
  swift_endAccess();
  v19 = *(v12 + 1);
  v46 = *v12;
  v47 = v19;
  v20 = *(v12 + 3);
  v48 = *(v12 + 2);
  v49 = v20;
  v50 = v12[64];
  result = *(&v46 + 1);
  if (*(&v46 + 1) != 1)
  {
    v35 = v6;
    v22 = BYTE4(v46);
    v23 = *(&v47 + 1);
    v24 = *(&v48 + 1);
    outlined copy of AppIntentExecutor?(*(&v46 + 1));
    outlined copy of AppIntentExecutor?(v23);
    outlined copy of AppIntentExecutor?(v24);
    [v3 alpha];
    if (v25 == 0.0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v26 = static OS_dispatch_queue.main.getter();
      v27 = swift_allocObject();
      v28 = v38;
      *(v27 + 16) = v37;
      *(v27 + 24) = v28;
      *(v27 + 32) = v3;
      *(v27 + 40) = v22 == 2;
      v41[4] = partial apply for closure #1 in ListCollectionViewCellBase.hostingView<A>(_:didChangePlatformItemList:);
      v41[5] = v27;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 1107296256;
      v41[2] = thunk for @escaping @callee_guaranteed () -> ();
      v41[3] = &block_descriptor_49;
      v29 = _Block_copy(v41);
      v30 = v3;

      static DispatchQoS.unspecified.getter();
      v41[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      type metadata accessor for [DispatchWorkItemFlags]();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x18D00DA20](0, v11, v8, v29);
      _Block_release(v29);

      outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?);
      (*(v35 + 8))(v8, v5);
      return (*(v39 + 8))(v11, v40);
    }

    else
    {
      v31 = v3 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v31 + 1);
        ObjectType = swift_getObjectType();
        (*(v32 + 8))(v3, v22 == 2, *(v36 + 168), *(v36 + 176), ObjectType, v32);
        swift_unknownObjectRelease();
      }

      return outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?);
    }
  }

  return result;
}

uint64_t sub_18C04A6F4()
{

  return swift_deallocObject();
}

uint64_t PlatformItemList.containerSelectionBehavior.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlatformItemList.Item() - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    v39 = 0;
    v42 = 0;
    v41 = 0;
    v44 = 0;
    result = 0;
    v45 = 0;
    v40 = 1;
    goto LABEL_50;
  }

  v56 = a2;
  v9 = 0;
  LODWORD(v58) = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v10 = *(v5 + 72);
  v61 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v62 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v11 = v61 + v10 * v9;
  v12 = v9;
  while (1)
  {
    outlined init with copy of PlatformItemList.Item(v11, v7);
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_52;
    }

    v13 = *(v7 + 456);
    v68 = *(v7 + 440);
    v69 = v13;
    v70 = v7[472];
    v14 = *(v7 + 424);
    v66 = *(v7 + 408);
    v67 = v14;
    outlined init with copy of PlatformItemList.Item.SystemItem?(&v66, v65, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
    _s7SwiftUI16CommandOperationVWOhTm_0(v7, type metadata accessor for PlatformItemList.Item);
    v15 = *(&v66 + 1);
    if (*(&v66 + 1) != 1)
    {
      if ((BYTE1(v66) & 1) == 0)
      {
        _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v66, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        goto LABEL_8;
      }

      v16 = *(&v68 + 1);
      v54 = v69;
      v53 = v68;
      v55 = *(&v67 + 1);
      v48 = BYTE4(v66);
      v52 = v66;
      v51 = BYTE2(v66);
      v58 = *(&v68 + 1);
      if (*(&v66 + 1))
      {
        v17 = v67;
        v18 = swift_allocObject();
        *(v18 + 16) = v15;
        *(v18 + 24) = v17;
        v50 = v18;
        outlined copy of AppIntentExecutor?(v15);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
        }

        v20 = v62[2];
        v19 = v62[3];
        v49 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v62);
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v15);
        v21 = v62;
        v62[2] = v49;
        v22 = &v21[2 * v20];
        v23 = v50;
        v22[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
        v22[5] = v23;
        v16 = v58;
      }

      v24 = v55;
      if (v55)
      {
        v25 = swift_allocObject();
        v26 = v53;
        *(v25 + 16) = v24;
        *(v25 + 24) = v26;
        outlined copy of AppIntentExecutor?(v24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
        }

        v28 = v63[2];
        v27 = v63[3];
        if (v28 >= v27 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v63);
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v55);
        v29 = v63;
        v63[2] = v28 + 1;
        v30 = &v29[2 * v28];
        v30[4] = partial apply for thunk for @callee_guaranteed () -> ();
        v30[5] = v25;
        v16 = v58;
      }

      if (v16)
      {
        v31 = swift_allocObject();
        *(v31 + 16) = v16;
        *(v31 + 24) = v54;
        outlined copy of AppIntentExecutor?(v16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
        }

        v33 = v64[2];
        v32 = v64[3];
        if (v33 >= v32 >> 1)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v64);
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v58);
        v34 = v64;
        v64[2] = v33 + 1;
        v35 = &v34[2 * v33];
        v35[4] = partial apply for thunk for @escaping @callee_guaranteed (@unowned ()?) -> (@unowned Bool);
        v35[5] = v31;
      }

      v60 |= v51;
      v11 = v59 | v52;
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v66, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      v59 = v11;
      if (v57)
      {
        if (v9 == v8)
        {
LABEL_54:
          a2 = v56;
          goto LABEL_38;
        }

        LODWORD(v58) = 1;
        if (v9 < v8)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v9 == v8)
        {
LABEL_53:
          v57 = v48;
          goto LABEL_54;
        }

        LODWORD(v58) = 1;
        v57 = v48;
        if (v9 < v8)
        {
          goto LABEL_3;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_8:
    if (v9 == v8)
    {
      break;
    }

    ++v12;
    v11 += v10;
    if (v9 >= v8)
    {
      goto LABEL_51;
    }
  }

  if ((v58 & 1) == 0)
  {

    v39 = 0;
    v42 = 0;
    v41 = 0;
    v44 = 0;
    result = 0;
    v45 = 0;
    v40 = 1;
    a2 = v56;
    goto LABEL_50;
  }

  a2 = v56;
  LOBYTE(v11) = v59;
LABEL_38:
  v36 = v63;
  v37 = v64;
  v38 = v62;
  if (v62[2])
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = partial apply for specialized closure #1 in PlatformItemList.containerSelectionBehavior.getter;
    if (v36[2])
    {
      goto LABEL_40;
    }

LABEL_45:

    v42 = 0;
    v41 = 0;
    if (!v37[2])
    {
      goto LABEL_46;
    }

LABEL_41:
    result = swift_allocObject();
    *(result + 16) = v37;
    v44 = partial apply for specialized closure #3 in PlatformItemList.containerSelectionBehavior.getter;
  }

  else
  {

    v40 = 0;
    v39 = 0;
    if (!v36[2])
    {
      goto LABEL_45;
    }

LABEL_40:
    v41 = swift_allocObject();
    *(v41 + 16) = v36;
    v42 = partial apply for specialized closure #2 in PlatformItemList.containerSelectionBehavior.getter;
    if (v37[2])
    {
      goto LABEL_41;
    }

LABEL_46:

    v44 = 0;
    result = 0;
  }

  v46 = 0x10000;
  if ((v60 & 1) == 0)
  {
    v46 = 0;
  }

  v45 = v46 & 0xFFFFFFFFFFFFFFFELL | (v57 << 32) | v11 & 1 | 0x100;
LABEL_50:
  *a2 = v45;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39;
  *(a2 + 24) = v42;
  *(a2 + 32) = v41;
  *(a2 + 40) = v44;
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_18C04AE5C()
{

  return swift_deallocObject();
}

uint64_t sub_18C04AE94()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for PlatformItemList.Item.SelectionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double PlatformItemList.containerSecondaryNavigationBehavior.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PlatformItemList.Item() - 8;
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_8:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
    a2[5] = 0;
    a2[6] = 0;
    a2[4] = 0;
    return result;
  }

  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v5 + 72);
  while (1)
  {
    outlined init with copy of PlatformItemList.Item(v10, v8);
    outlined init with copy of PlatformItemList.Item.SystemItem?((v8 + 840), &v16, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
    _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
    if (*(&v17 + 1) != 1)
    {
      break;
    }

    v12 = &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?;
    v13 = &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior;
LABEL_4:
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v16, v12, v13);
    v10 += v11;
    if (!--v9)
    {
      goto LABEL_8;
    }
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  outlined init with copy of PlatformItemList.Item.SystemItem?(&v20, &v16, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  if (!*(&v17 + 1))
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(&v20);
    v12 = &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?;
    v13 = &type metadata for AnyNavigationLinkPresentedValue;
    goto LABEL_4;
  }

  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v16, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  v14 = v21;
  *a2 = v20;
  *(a2 + 1) = v14;
  result = *&v22;
  *(a2 + 2) = v22;
  a2[6] = v23;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t outlined assign with take of PlatformItemList.Item.SecondaryNavigationBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void UICollectionViewListCoordinatorBase.listCollectionViewCell<A>(_:platformItemIsSelected:)(_BYTE *a1, int a2)
{
  v122 = a2;
  type metadata accessor for (IndexPath?, IndexPath?)();
  v123 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v103 - v8;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v103 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v103 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v103 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v103 - v23;
  v25 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v29);
  if (*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8)))
  {
    return;
  }

  v34 = *&a1[direct field offset for ListCollectionViewCellBase.selectionBehavior + 16];
  v124 = *&a1[direct field offset for ListCollectionViewCellBase.selectionBehavior];
  v125 = v34;
  v35 = *&a1[direct field offset for ListCollectionViewCellBase.selectionBehavior + 48];
  v126 = *&a1[direct field offset for ListCollectionViewCellBase.selectionBehavior + 32];
  v127 = v35;
  v128 = a1[direct field offset for ListCollectionViewCellBase.selectionBehavior + 64];
  if (*(&v124 + 1) == 1 || (BYTE1(v124) & 1) == 0 || (v124 & 1) != 0)
  {
    return;
  }

  v117 = v33;
  v116 = v15;
  v113 = v12;
  v115 = v18;
  v114 = v6;
  v120 = &v103 - v31;
  v118 = v32;
  v121 = v30;
  v36 = *(&v125 + 1);
  v37 = *(&v126 + 1);
  outlined copy of AppIntentExecutor?(*(&v124 + 1));
  outlined copy of AppIntentExecutor?(v36);
  outlined copy of AppIntentExecutor?(v37);
  v119 = a1;
  v38 = [a1 _collectionView];
  if (!v38)
  {
LABEL_19:
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v124, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
    return;
  }

  v39 = v38;
  type metadata accessor for UpdateCoalescingCollectionView(0);
  v40 = swift_dynamicCastClass();
  if (!v40)
  {

    goto LABEL_19;
  }

  v41 = v40;
  v42 = v39;
  v43 = [v41 indexPathForCell_];
  if (!v43)
  {

    goto LABEL_19;
  }

  v112 = v42;
  v44 = v43;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = v118;
  v46 = v118[4];
  v47 = v120;
  v48 = v28;
  v49 = v121;
  v105 = v118 + 4;
  v104 = v46;
  v46(v120, v48, v121);
  v111 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  swift_beginAccess();
  v50 = v45[2];
  v107 = v45 + 2;
  v106 = v50;
  v50(v24, v47, v49);
  v51 = v45[7];
  v109 = v45 + 7;
  v108 = v51;
  v51(v24, 0, 1, v49);
  v52 = *(v123 + 48);
  v53 = MEMORY[0x1E6969C28];
  v54 = v41;
  v55 = MEMORY[0x1E69E6720];
  v110 = v54;
  outlined init with copy of SwipeActions.Configuration?(v54 + v111, v9, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
  v111 = v52;
  v56 = v45;
  outlined init with copy of SwipeActions.Configuration?(v24, &v9[v52], &lazy cache variable for type metadata for IndexPath?, v53, v55, _s10Foundation9IndexPathVSgMaTm_1);
  v58 = v45 + 6;
  v57 = v45[6];
  if (v57(v9, 1, v49) == 1)
  {
    _s10Foundation9IndexPathVSgWOhTm_1(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    if (v57(&v9[v111], 1, v121) == 1)
    {
      _s10Foundation9IndexPathVSgWOhTm_1(v9, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      v59 = v112;

      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v124, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      (v56[1])(v120, v121);
      return;
    }
  }

  else
  {
    outlined init with copy of SwipeActions.Configuration?(v9, v21, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
    v60 = v111;
    if (v57(&v9[v111], 1, v121) != 1)
    {
      v103 = v57;
      v111 = v58;
      v68 = v117;
      v69 = v121;
      v104(v117, &v9[v60], v121);
      _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      v70 = dispatch thunk of static Equatable.== infix(_:_:)();
      v71 = v56[1];
      v71(v68, v69);
      v72 = MEMORY[0x1E6969C28];
      v73 = MEMORY[0x1E69E6720];
      _s10Foundation9IndexPathVSgWOhTm_1(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      v71(v21, v69);
      v74 = v72;
      v58 = v111;
      v75 = v73;
      v56 = v118;
      _s10Foundation9IndexPathVSgWOhTm_1(v9, &lazy cache variable for type metadata for IndexPath?, v74, v75);
      v61 = v110;
      if (v70)
      {
        v76 = v112;

        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v124, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        v71(v120, v121);
        return;
      }

      goto LABEL_16;
    }

    _s10Foundation9IndexPathVSgWOhTm_1(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    (v56[1])(v21, v121);
  }

  v103 = v57;
  _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v9, type metadata accessor for (IndexPath?, IndexPath?));
  v61 = v110;
LABEL_16:
  v62 = [v61 isEditing];
  v63 = v112;

  if (v62)
  {
    (v56[1])(v120, v121);
LABEL_18:

    goto LABEL_19;
  }

  v64 = v120;
  if (v122)
  {
    v65 = v115;
    v66 = v121;
    v106(v115, v120, v121);
    v108(v65, 0, 1, v66);
    v67 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v65, v2 + v67, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    swift_endAccess();
    if (([v119 isSelected] & 1) == 0)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v61 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v124, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      (v56[1])(v64, v121);
      return;
    }

    (v56[1])(v64, v121);
    goto LABEL_18;
  }

  v111 = v58;
  if ([v119 isSelected])
  {
    v77 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v61 deselectItemAtIndexPath:v77 animated:0];
  }

  v78 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
  swift_beginAccess();
  v79 = v116;
  v80 = v121;
  v106(v116, v64, v121);
  v108(v79, 0, 1, v80);
  v81 = *(v123 + 48);
  v82 = MEMORY[0x1E6969C28];
  v83 = MEMORY[0x1E69E6720];
  v123 = v78;
  v84 = v2 + v78;
  v85 = v81;
  v86 = v114;
  outlined init with copy of SwipeActions.Configuration?(v84, v114, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
  outlined init with copy of SwipeActions.Configuration?(v79, v86 + v85, &lazy cache variable for type metadata for IndexPath?, v82, v83, _s10Foundation9IndexPathVSgMaTm_1);
  v87 = v103;
  if (v103(v86, 1, v80) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v124, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

    _s10Foundation9IndexPathVSgWOhTm_1(v79, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    v88 = v121;
    (v56[1])(v120, v121);
    if (v87(v86 + v85, 1, v88) == 1)
    {
      _s10Foundation9IndexPathVSgWOhTm_1(v86, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
LABEL_37:
      v101 = v115;
      v108(v115, 1, 1, v121);
      v102 = v123;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v101, v2 + v102, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
      swift_endAccess();
      return;
    }

LABEL_35:
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v86, type metadata accessor for (IndexPath?, IndexPath?));
    return;
  }

  v90 = v120;
  v91 = v113;
  outlined init with copy of SwipeActions.Configuration?(v86, v113, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
  if (v87(v86 + v85, 1, v121) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v124, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

    _s10Foundation9IndexPathVSgWOhTm_1(v116, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    v92 = v56[1];
    v93 = v121;
    v92(v90, v121);
    v92(v91, v93);
    goto LABEL_35;
  }

  v94 = v117;
  v95 = v121;
  v104(v117, (v86 + v85), v121);
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
  v122 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v124, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

  v96 = v90;
  v97 = v56[1];
  v97(v94, v95);
  v98 = MEMORY[0x1E6969C28];
  v99 = v86;
  v100 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgWOhTm_1(v116, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  v97(v96, v95);
  v97(v91, v95);
  _s10Foundation9IndexPathVSgWOhTm_1(v99, &lazy cache variable for type metadata for IndexPath?, v98, v100);
  if (v122)
  {
    goto LABEL_37;
  }
}

uint64_t protocol witness for GraphMutation.apply() in conformance BaseModifier.SelectionStateBox.Mutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    return AGGraphSetValue();
  }

  return result;
}

uint64_t ListLabelLayout.updateCache(_:subviews:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = *(v2 + 2);
  v11 = *(v2 + 3);
  v16 = *(v2 + 2);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 16) = 0xFFF0000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xFFF0000000000000;
  *(a1 + 40) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v13 + 16));
  }

  else
  {
    v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15ListLabelLayout33_46E184F179717CA4D1066F6C1EAE4B61LLV5ChildV_Tt1g5(0, *(v13 + 24) >> 1);

    *a1 = v14;
  }

  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v16;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  return ListLabelLayout.makeChildren(cache:subviews:)(a1, &v17);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 96 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + (result << 6) + (a3 << 6);
  v10 = (v6 + 32 + (a2 << 6));
  if (result != v10 || result >= v10 + 64 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, v9 << 6);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 104 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  if (result != v13 || result >= v13 + 104 * v12)
  {
    result = memmove(result, v13, 104 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 72 * a3;
  v12 = v7 + 32 + 72 * a2;
  if (result < v12 || result >= v12 + 72 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  type metadata accessor for (tag: String, item: String)();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 96 * result + 96 * a3;
  v10 = (v6 + 32 + 96 * a2);
  v11 = 96 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UIKitProxyFocusItem);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 320 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 320 * a3;
  v13 = (v7 + 32 + 320 * a2);
  v14 = 320 * v12;
  v15 = &v13[320 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 40 * result + 40 * a3;
  v10 = (v6 + 32 + 40 * a2);
  v11 = 40 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t assignWithCopy for OutsetByRowInsets(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of Environment<EdgeInsets>.Content(v4, v5, v6, v7, v8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  outlined consume of Environment<EdgeInsets>.Content(v9, v10, v11, v12, v13);
  v14 = *(a2 + 72);
  LOBYTE(v5) = *(a2 + 80);
  outlined copy of Environment<Bool>.Content(v14, v5);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  *(a1 + 72) = v14;
  *(a1 + 80) = v5;
  outlined consume of Environment<Bool>.Content(v15, v16);
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v19 = *(a2 + 104);
  v20 = *(a2 + 112);
  v21 = *(a2 + 120);
  v22 = *(a2 + 128);
  v23 = *(a2 + 136);
  v24 = *(a2 + 144);
  outlined copy of Environment<ResolvedSubviewsSizingOptions>.Content(v17, v18, v19, v20, v21, v22, v23, v24);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  v28 = *(a1 + 112);
  v29 = *(a1 + 120);
  v30 = *(a1 + 128);
  v31 = *(a1 + 136);
  v32 = *(a1 + 144);
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = v20;
  *(a1 + 120) = v21;
  *(a1 + 128) = v22;
  *(a1 + 136) = v23;
  *(a1 + 144) = v24;
  outlined consume of Environment<ResolvedSubviewsSizingOptions>.Content(v25, v26, v27, v28, v29, v30, v31, v32);
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

uint64_t assignWithCopy for AccessibilityScrollableContextModifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1);
    v4 = *(a2 + 70);
    if (v4 == 2)
    {
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 32);
      (**(v5 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
    }

    else if (v4 == 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 8) = *(a2 + 8);
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 32);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      v7 = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 64) = v7;
    }

    *(a1 + 70) = v4;
  }

  v8 = *(a2 + 352);
  if (*(a1 + 352))
  {
    if (v8)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);

      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      v9 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v9;
      v10 = *(a1 + 160);
      v11 = *(a2 + 160);
      if (v10 != 1)
      {
        if (v11 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 136);
          v18 = *(a2 + 168);
          v19 = *(a2 + 152);
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = v19;
          *(a1 + 168) = v18;
        }

        else
        {
          if (v10)
          {
            v20 = (a1 + 136);
            if (v11)
            {
              __swift_assign_boxed_opaque_existential_1(v20, (a2 + 136));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v20);
              v40 = *(a2 + 168);
              v41 = *(a2 + 152);
              *(a1 + 136) = *(a2 + 136);
              *(a1 + 152) = v41;
              *(a1 + 168) = v40;
            }
          }

          else if (v11)
          {
            *(a1 + 160) = v11;
            *(a1 + 168) = *(a2 + 168);
            (**(v11 - 8))(a1 + 136, a2 + 136);
          }

          else
          {
            v42 = *(a2 + 136);
            v43 = *(a2 + 152);
            *(a1 + 168) = *(a2 + 168);
            *(a1 + 152) = v43;
            *(a1 + 136) = v42;
          }

          *(a1 + 176) = *(a2 + 176);
        }

        goto LABEL_40;
      }

      if (v11)
      {
        if (v11 == 1)
        {
          v12 = *(a2 + 136);
          v13 = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 152) = v13;
          *(a1 + 136) = v12;
LABEL_40:
          v44 = *(a2 + 184);
          *(a1 + 192) = *(a2 + 192);
          *(a1 + 184) = v44;
          v45 = (a1 + 200);
          v46 = (a2 + 200);
          v47 = *(a2 + 312);
          if (*(a1 + 312) == 1)
          {
            if (v47 == 1)
            {
              v48 = *(a2 + 216);
              *v45 = *v46;
              *(a1 + 216) = v48;
              v49 = *(a2 + 232);
              v50 = *(a2 + 248);
              v51 = *(a2 + 280);
              *(a1 + 264) = *(a2 + 264);
              *(a1 + 280) = v51;
              *(a1 + 232) = v49;
              *(a1 + 248) = v50;
              v52 = *(a2 + 296);
              v53 = *(a2 + 312);
              v54 = *(a2 + 328);
              *(a1 + 344) = *(a2 + 344);
              *(a1 + 312) = v53;
              *(a1 + 328) = v54;
              *(a1 + 296) = v52;
            }

            else
            {
              v62 = *v46;
              *(a1 + 208) = *(a2 + 208);
              *v45 = v62;
              v63 = *(a2 + 216);
              *(a1 + 224) = *(a2 + 224);
              *(a1 + 216) = v63;
              *(a1 + 225) = *(a2 + 225);
              *(a1 + 226) = *(a2 + 226);
              *(a1 + 227) = *(a2 + 227);
              *(a1 + 228) = *(a2 + 228);
              *(a1 + 232) = *(a2 + 232);
              *(a1 + 240) = *(a2 + 240);
              *(a1 + 248) = *(a2 + 248);
              *(a1 + 256) = *(a2 + 256);
              *(a1 + 264) = *(a2 + 264);
              *(a1 + 272) = *(a2 + 272);
              *(a1 + 280) = *(a2 + 280);
              *(a1 + 281) = *(a2 + 281);
              *(a1 + 288) = *(a2 + 288);
              *(a1 + 296) = *(a2 + 296);
              *(a1 + 304) = *(a2 + 304);
              *(a1 + 312) = *(a2 + 312);
              v64 = *(a2 + 320);
              *(a1 + 336) = *(a2 + 336);
              *(a1 + 320) = v64;
              *(a1 + 344) = *(a2 + 344);
            }
          }

          else if (v47 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 200);
            v55 = *(a2 + 216);
            *v45 = *v46;
            *(a1 + 216) = v55;
            v56 = *(a2 + 280);
            v58 = *(a2 + 232);
            v57 = *(a2 + 248);
            *(a1 + 264) = *(a2 + 264);
            *(a1 + 280) = v56;
            *(a1 + 232) = v58;
            *(a1 + 248) = v57;
            v60 = *(a2 + 312);
            v59 = *(a2 + 328);
            v61 = *(a2 + 296);
            *(a1 + 344) = *(a2 + 344);
            *(a1 + 312) = v60;
            *(a1 + 328) = v59;
            *(a1 + 296) = v61;
          }

          else
          {
            v65 = *v46;
            *(a1 + 208) = *(a2 + 208);
            *v45 = v65;
            v66 = *(a2 + 216);
            *(a1 + 224) = *(a2 + 224);
            *(a1 + 216) = v66;
            *(a1 + 225) = *(a2 + 225);
            *(a1 + 226) = *(a2 + 226);
            *(a1 + 227) = *(a2 + 227);
            *(a1 + 228) = *(a2 + 228);
            *(a1 + 232) = *(a2 + 232);
            *(a1 + 240) = *(a2 + 240);
            *(a1 + 248) = *(a2 + 248);
            *(a1 + 256) = *(a2 + 256);
            *(a1 + 264) = *(a2 + 264);
            *(a1 + 272) = *(a2 + 272);
            *(a1 + 280) = *(a2 + 280);
            *(a1 + 281) = *(a2 + 281);
            *(a1 + 288) = *(a2 + 288);
            *(a1 + 296) = *(a2 + 296);
            *(a1 + 304) = *(a2 + 304);
            *(a1 + 312) = *(a2 + 312);

            v67 = *(a2 + 320);
            *(a1 + 336) = *(a2 + 336);
            *(a1 + 320) = v67;
            *(a1 + 344) = *(a2 + 344);
          }

          *(a1 + 352) = *(a2 + 352);

          v68 = *(a1 + 360);
          v69 = *(a2 + 360);
          *(a1 + 360) = v69;
          v70 = v69;

          return a1;
        }

        *(a1 + 160) = v11;
        *(a1 + 168) = *(a2 + 168);
        (**(v11 - 8))(a1 + 136, a2 + 136);
      }

      else
      {
        v38 = *(a2 + 136);
        v39 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v39;
        *(a1 + 136) = v38;
      }

      *(a1 + 176) = *(a2 + 176);

      goto LABEL_40;
    }

    outlined destroy of AccessibilityAttachment(a1 + 72);
LABEL_19:
    memcpy((a1 + 72), (a2 + 72), 0x128uLL);
    return a1;
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v14 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v14;
  v15 = *(a2 + 160);

  if (!v15)
  {
    v21 = *(a2 + 136);
    v22 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v22;
    *(a1 + 136) = v21;
LABEL_27:
    *(a1 + 176) = *(a2 + 176);

    goto LABEL_28;
  }

  if (v15 != 1)
  {
    *(a1 + 160) = v15;
    *(a1 + 168) = *(a2 + 168);
    (**(v15 - 8))(a1 + 136, a2 + 136, v15);
    goto LABEL_27;
  }

  v16 = *(a2 + 136);
  v17 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v17;
  *(a1 + 136) = v16;
LABEL_28:
  v23 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v23;
  v24 = (a1 + 200);
  v25 = (a2 + 200);
  if (*(a2 + 312) == 1)
  {
    v26 = *(a2 + 216);
    *v24 = *v25;
    *(a1 + 216) = v26;
    v27 = *(a2 + 232);
    v28 = *(a2 + 248);
    v29 = *(a2 + 280);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 280) = v29;
    *(a1 + 232) = v27;
    *(a1 + 248) = v28;
    v30 = *(a2 + 296);
    v31 = *(a2 + 312);
    v32 = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 312) = v31;
    *(a1 + 328) = v32;
    *(a1 + 296) = v30;
  }

  else
  {
    v33 = *v25;
    *(a1 + 208) = *(a2 + 208);
    *v24 = v33;
    v34 = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 216) = v34;
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 226) = *(a2 + 226);
    *(a1 + 227) = *(a2 + 227);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 281) = *(a2 + 281);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
    v35 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 320) = v35;
    *(a1 + 344) = *(a2 + 344);
  }

  *(a1 + 352) = *(a2 + 352);
  v36 = *(a2 + 360);
  *(a1 + 360) = v36;

  v37 = v36;
  return a1;
}

uint64_t assignWithCopy for ListCoreCellEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v4 = (a1 + 72);
  v5 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = (a2 + 72);
  v6 = *(a2 + 72);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      *(a1 + 80) = *(a2 + 80);
      *v4 = v8;
    }

    else
    {
      *(a1 + 72) = v6;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
    v9 = *(a2 + 80);
    *v4 = *v7;
    *(a1 + 80) = v9;
  }

  else
  {
    *(a1 + 72) = v6;

    *(a1 + 80) = *(a2 + 80);
  }

  v10 = (a1 + 152);
  v11 = *(a1 + 152);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v13 = (a2 + 152);
  v12 = *(a2 + 152);
  if (v11 == 1)
  {
    if (v12 == 1)
    {
      v14 = *v13;
      *(a1 + 160) = *(a2 + 160);
      *v10 = v14;
    }

    else
    {
      *(a1 + 152) = v12;
      *(a1 + 160) = *(a2 + 160);
    }
  }

  else if (v12 == 1)
  {
    outlined destroy of ListItemTint(a1 + 152);
    v15 = *(a2 + 160);
    *v10 = *v13;
    *(a1 + 160) = v15;
  }

  else
  {
    *(a1 + 152) = v12;

    *(a1 + 160) = *(a2 + 160);
  }

  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  return a1;
}

uint64_t assignWithCopy for WheelPickerRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  *(*(v9 + 40) + v12) = *(*(v9 + 40) + v13);
  return a1;
}

uint64_t assignWithCopy for Switch(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for CollectionViewCellModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 41);
  v14 = *(a2 + 40);
  outlined copy of Environment<ListItemTint?>.Content(v12, v14, v13);
  v15 = *(a1 + 32);
  v16 = *(a1 + 41);
  *(a1 + 32) = v12;
  v17 = *(a1 + 40);
  *(a1 + 40) = v14;
  *(a1 + 41) = v13;
  outlined consume of Environment<ListItemTint?>.Content(v15, v17, v16);
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 80);
  outlined copy of Environment<EdgeInsets>.Content(v18, v19, v20, v21, v22);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  v27 = *(a1 + 80);
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  outlined consume of Environment<EdgeInsets>.Content(v23, v24, v25, v26, v27);
  v28 = *(a2 + 88);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  v33 = *(a2 + 128);
  v34 = *(a2 + 136);
  v35 = *(a2 + 144);
  v60 = *(a2 + 152);
  v61 = *(a2 + 160);
  v62 = *(a2 + 168);
  v63 = *(a2 + 169);
  outlined copy of Environment<ListContentStyling>.Content(v28, v29, v30, v31, v32, v33, v34, v35, v60, v61, v62, v63);
  v36 = *(a1 + 88);
  v37 = *(a1 + 96);
  v38 = *(a1 + 104);
  v39 = *(a1 + 112);
  v40 = *(a1 + 120);
  v41 = *(a1 + 128);
  v42 = *(a1 + 136);
  v43 = *(a1 + 144);
  v44 = *(a1 + 152);
  v45 = *(a1 + 160);
  v46 = *(a1 + 168);
  v47 = *(a1 + 169);
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  *(a1 + 128) = v33;
  *(a1 + 136) = v34;
  *(a1 + 144) = v35;
  *(a1 + 152) = v60;
  *(a1 + 160) = v61;
  *(a1 + 168) = v62;
  *(a1 + 169) = v63;
  outlined consume of Environment<ListContentStyling>.Content(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  *(a1 + 170) = *(a2 + 170);
  v48 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v48;
  v49 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v49;
  v50 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v50;
  v51 = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = v51;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  v52 = *(a2 + 256);
  if (*(a1 + 256) == 1)
  {
    if (v52 == 1)
    {
      v53 = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 256) = v53;
    }

    else
    {
      *(a1 + 256) = v52;
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else
  {
    if (v52 == 1)
    {
      outlined destroy of ListItemTint(a1 + 256);
      v54 = *(a2 + 264);
      *(a1 + 256) = *(a2 + 256);
    }

    else
    {
      *(a1 + 256) = v52;

      v54 = *(a2 + 264);
    }

    *(a1 + 264) = v54;
  }

  *(a1 + 265) = *(a2 + 265);
  *(a1 + 272) = *(a2 + 272);
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 280);
    v55 = *(a2 + 350);
    if (v55 == 2)
    {
      v56 = *(a2 + 304);
      *(a1 + 304) = v56;
      *(a1 + 312) = *(a2 + 312);
      (**(v56 - 8))(a1 + 280, a2 + 280);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 324) = *(a2 + 324);
      *(a1 + 328) = *(a2 + 328);
    }

    else if (v55 == 1)
    {
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 284) = *(a2 + 284);
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v57 = *(a2 + 304);
      *(a1 + 304) = v57;
      *(a1 + 312) = *(a2 + 312);
      (**(v57 - 8))(a1 + 280, a2 + 280);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 332) = *(a2 + 332);
      *(a1 + 336) = *(a2 + 336);
      v58 = *(a2 + 344);
      *(a1 + 348) = *(a2 + 348);
      *(a1 + 344) = v58;
    }

    *(a1 + 350) = v55;
  }

  return a1;
}

void closure #1 in UICollectionViewListCoordinatorBase.updateListContents(_:)(uint64_t a1, char *a2, void *a3)
{
  v6 = *a2;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  v13 = *((v8 & v6) + 0x88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a2[v13], v9);
  v14 = *((*v7 & *a2) + 0xA0);
  swift_beginAccess();
  v15 = *&a2[v14];
  outlined copy of Transaction?(v15);
  ShadowListDataSource.configureCell(_:transaction:context:)(a3, v15, a1, v9);
  outlined consume of ListItemTint?(v15);
  (*(v10 + 8))(v12, v9);
  v16 = [a3 layer];
  swift_getWitnessTable();
  v17[1] = *(a1 + *(type metadata accessor for _RowVisitationContext() + 40));
  ViewTraitCollection.zIndex.getter();
  [v16 setZPosition_];
}

uint64_t assignWithTake for CollectionViewCellModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = *(a2 + 41);
  v13 = *(a1 + 32);
  v14 = *(a1 + 41);
  *(a1 + 32) = a2[4];
  v15 = *(a1 + 40);
  *(a1 + 40) = v11;
  *(a1 + 41) = v12;
  outlined consume of Environment<ListItemTint?>.Content(v13, v15, v14);
  v16 = *(a2 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v22;
  *(a1 + 80) = v16;
  outlined consume of Environment<EdgeInsets>.Content(v17, v18, v19, v20, v21);
  v23 = *(a2 + 168);
  v24 = *(a2 + 169);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  v28 = *(a1 + 112);
  v29 = *(a1 + 120);
  v30 = *(a1 + 128);
  v31 = *(a1 + 136);
  v32 = *(a1 + 144);
  v33 = *(a1 + 152);
  v34 = *(a1 + 160);
  v35 = *(a1 + 168);
  v36 = *(a1 + 169);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = v23;
  *(a1 + 169) = v24;
  outlined consume of Environment<ListContentStyling>.Content(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 176) = a2[22];
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = a2[24];
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = a2[26];
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = a2[28];
  *(a1 + 240) = a2[30];
  *(a1 + 248) = *(a2 + 248);
  if (*(a1 + 256) == 1)
  {
    goto LABEL_4;
  }

  v37 = a2[32];
  if (v37 == 1)
  {
    outlined destroy of ListItemTint(a1 + 256);
LABEL_4:
    *(a1 + 256) = a2[32];
    goto LABEL_6;
  }

  *(a1 + 256) = v37;

LABEL_6:
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 265) = *(a2 + 265);
  *(a1 + 272) = a2[34];
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 280);
    v38 = *(a2 + 41);
    *(a1 + 312) = *(a2 + 39);
    *(a1 + 328) = v38;
    *(a1 + 343) = *(a2 + 343);
    v39 = *(a2 + 37);
    *(a1 + 280) = *(a2 + 35);
    *(a1 + 296) = v39;
  }

  return a1;
}

uint64_t outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a4(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_18C0500E8()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C050120()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, a2, MEMORY[0x1E6981910], a3, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature)
  {
    v0 = MEMORY[0x1E697E108];
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, v0);
    v1 = type metadata accessor for _UIHostingView.EnableVFDFeature();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph)
  {
    v0 = MEMORY[0x1E697E108];
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, v0);
    v1 = type metadata accessor for _UIHostingView.HostViewGraph();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph);
    }
  }
}

unint64_t _s7SwiftUI14_UIHostingViewC2asyqd__Sgqd__mlFAA15ModifiedContentVyAA03AnyD0VAA13EmptyModifierVG_AA23ContainerBackgroundHost_pTt0g5()
{
  v1 = v0;
  v2 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ContainerBackgroundHost);
  UIHostingViewBase._as<A>(_:)();
  result = v8;
  if (v8)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingControllerProvider))
    {
      return v5;
    }
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for FocusHost))
  {
    v7 = &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>;
LABEL_17:
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(v7, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
    return swift_unknownObjectRetain();
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for PlatformItemListHost) || v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for AccessibilityHost))
  {
    return swift_unknownObjectRetain();
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UICoreViewControllerProvider))
  {
    v7 = &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>;
    goto LABEL_17;
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for EventGraphHost))
  {
    v7 = &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>;
    goto LABEL_17;
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for PointerHost) || v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for WindowLayoutHost))
  {
    return swift_unknownObjectRetain();
  }

  result = type metadata accessor for UIView();
  if (v2 != result)
  {
    if (v2 != type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for CurrentEventProvider) && v2 != type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for FallbackResponderProvider))
    {
      v6 = v1;
      return v1;
    }

    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t static Grid._makeView(view:inputs:)()
{
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for Grid();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static Grid._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for Grid();
  v6 = type metadata accessor for _VariadicView.Tree();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

unint64_t lazy protocol witness table accessor for type GridLayout and conformance GridLayout()
{
  result = lazy protocol witness table cache variable for type GridLayout and conformance GridLayout;
  if (!lazy protocol witness table cache variable for type GridLayout and conformance GridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridLayout and conformance GridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridLayout and conformance GridLayout;
  if (!lazy protocol witness table cache variable for type GridLayout and conformance GridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridLayout and conformance GridLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GridLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GridLayout and conformance GridLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance InsetGroupedListStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

_OWORD *initializeWithCopy for Grid(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *(a1 + 25) = *(a2 + 25);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 16))((a1 + *(v5 + 80) + 41) & ~*(v5 + 80), (a2 + *(v5 + 80) + 41) & ~*(v5 + 80));
  return a1;
}

void storeEnumTagSinglePayload for GridRow(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 9) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 9] & ~v8;

  v18(v19);
}

uint64_t getEnumTagSinglePayload for GridRow(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
  }

  v8 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

uint64_t static GridRow._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (*(a3 + 40))(v6);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance GridLayout@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 16);
  v11 = *(a1 + 17);
  *(a2 + 72) = 0x7FF8000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(a2 + 104) = MEMORY[0x1E69E7CC0];
  *(a2 + 112) = v12;
  *(a2 + 120) = v12;
  *(a2 + 128) = v12;
  v13 = MEMORY[0x1E69E7CC8];
  *(a2 + 136) = v12;
  *(a2 + 144) = v13;
  *a2 = *v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 65) = v11;

  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

uint64_t GridLayout.Cache.assignSubviews()()
{
  v2 = v0;
  v3 = (v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 104);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16));
  }

  else
  {
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10GridLayoutV5CacheV11RowOrColumn33_69F00159ECCD7162D5EDC19B53BBB085LLV_Tt1g5(0, *(v5 + 24) >> 1);

    *v3 = v6;
  }

  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 112);
  v159 = (v2 + 112);
  if (v7)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v8 + 16));
  }

  else
  {
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10GridLayoutV5CacheV11RowOrColumn33_69F00159ECCD7162D5EDC19B53BBB085LLV_Tt1g5(0, *(v8 + 24) >> 1);

    *(v2 + 112) = v9;
  }

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 136);
  v165 = v3;
  if (v10)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v11 + 2));
  }

  else
  {
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10GridLayoutV5CacheV4Cell33_69F00159ECCD7162D5EDC19B53BBB085LLV_Tt1g5(0, *(v11 + 3) >> 1);

    *(v2 + 136) = v12;
  }

  v13 = *(v2 + 144);
  if (*(v13 + 16))
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v176 = *(v2 + 144);
    type metadata accessor for _DictionaryStorage<GridIndex, Int>(0, &lazy cache variable for type metadata for _NativeDictionary<GridIndex, Int>, MEMORY[0x1E69E6DC8]);
    _NativeDictionary.removeAll(isUnique:)(v14);
    v13 = v176;
    *(v2 + 144) = v176;
  }

  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *(v2 + 65);
  v181 = *(v2 + 48);
  v182 = v15;
  v183 = v16;
  v184 = v17;
  v185 = 0;

  v18 = &v181;
  v175 = v2;
  v166 = (v2 + 136);
  if (!LayoutSubviews.endIndex.getter())
  {

    LODWORD(v1) = 0;
    LODWORD(v11) = 0;
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_205;
  }

  LayoutSubviews.subscript.getter();
  v19 = v176;
  v20 = v177;
  if (LayoutSubviews.endIndex.getter() < 1)
  {
    goto LABEL_261;
  }

  v21 = 0;
  v151 = 0;
  v22 = 0;
  LODWORD(v1) = 0;
  v150 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v23 = v21 + 1;
    v185 = v23;
    static UnitPoint.infinity.getter();
    v25 = v24;
    v27 = v26;
    v176 = v19;
    LODWORD(v177) = v20;
    v18 = &v176;
    LayoutProxy.subscript.getter();
    v28 = *(v180 + 16);
    v167 = v11;
    v155 = v23;
    v162 = v22;
    if (!v28)
    {

      if (v151)
      {
        v29 = 0.0;
        LODWORD(v1) = 1;
        v30 = 0.0;
        LODWORD(v32) = 1;
        LODWORD(v151) = 0;
        v47 = 0;
        v51 = 1;
        v163 = 1;
        if (!v162)
        {
          v157 = 0.0;
          v48 = HIDWORD(v151);
          LODWORD(v30) = 0;
          v156 = 0;
          v162 = 0;
          LODWORD(v32) = 1;
          v154 = 1;
          v47 = 0;
          v160 = 1;
          v163 = 1;
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v18) = 0;
      v29 = 0.0;
      LODWORD(v1) = 1;
      v30 = 0.0;
      LODWORD(v32) = 1;
      v50 = 0;
      v51 = 1;
      v52 = 1;
      if (v49)
      {
        v30 = 0.0;
        LODWORD(v151) = 0;
        LODWORD(v32) = 1;
        v50 = 0;
        v163 = 1;
        goto LABEL_78;
      }

LABEL_203:
      v163 = v52;
      v121 = v50;
      v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
      v50 = v121;
      v167 = v122;
LABEL_200:
      LODWORD(v151) = v18;
LABEL_78:
      LODWORD(v11) = v50;
      v54 = *(v167 + 2);
      v53 = *(v167 + 3);
      v18 = (v54 + 1);
      if (v54 >= v53 >> 1)
      {
        v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v167);
      }

      *(v167 + 2) = v18;
      v55 = &v167[8 * v54];
      *(v55 + 8) = v162;
      *(v55 + 9) = HIDWORD(v151);
      v150 = HIDWORD(v151);
      v47 = v11;
      if (!v162)
      {
        goto LABEL_81;
      }

      goto LABEL_83;
    }

    v156 = v1;
    v29 = 0.0;
    v157 = 0.0;
    v18 = 0;
    v30 = 0.0;
    v31 = 0;
    LODWORD(v1) = 1;
    LODWORD(v32) = 1;
    LODWORD(v11) = 1;
    v160 = 1;
    v163 = 1;
    v33 = 0;
    while (1)
    {
      while (1)
      {
        if (v33 >= v28)
        {
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          LODWORD(v11) = v150;
LABEL_205:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_282;
          }

          goto LABEL_206;
        }

        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_252;
        }

        v35 = v180 + 32 + 24 * v33;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v39 = v38 >> 5;
        if (!(v38 >> 5))
        {
          break;
        }

        if (v38 >> 5 > 3)
        {
          if (v39 == 4)
          {
            v163 = 0;
            v157 = v36;
            goto LABEL_65;
          }

          if (v39 == 5)
          {
            v160 = 0;
            goto LABEL_63;
          }

LABEL_64:
          v31 |= LODWORD(v36);
          goto LABEL_65;
        }

        if (v39 == 1)
        {
          if ((v38 & 1) == 0)
          {
            v29 = v37;
          }

          if ((v11 & 1) == 0)
          {
            goto LABEL_283;
          }

          v160 &= v38;
          LODWORD(v11) = 1;
          v18 = *&v36;
          goto LABEL_65;
        }

        if (v39 != 2)
        {
          goto LABEL_48;
        }

LABEL_41:
        v32 = SLODWORD(v36) * v32;
        if (v32 != v32)
        {
          goto LABEL_273;
        }

LABEL_65:
        if (v34 == v28)
        {

          if ((v11 & 1) == 0)
          {
            goto LABEL_74;
          }

          if (v151)
          {
            v47 = v31;
            v51 = v160;
            v30 = v157;
            if (v18 && v18 == v151)
            {
              v154 = 1;
              LODWORD(v30) = v162;
              v48 = HIDWORD(v151);
              goto LABEL_84;
            }

            LODWORD(v151) = v18;
            if (!v162)
            {
LABEL_81:
              v157 = v30;
              v160 = v51;
              LODWORD(v30) = 0;
              v156 = 0;
              v162 = 0;
              v154 = 1;
              v48 = HIDWORD(v151);
              goto LABEL_84;
            }

LABEL_83:
            v157 = v30;
            v160 = v51;
            LODWORD(v30) = 0;
            v156 = 0;
            v162 = 0;
            v48 = (HIDWORD(v151) + 1);
            v154 = 1;
            v150 = ++HIDWORD(v151);
            goto LABEL_84;
          }

          v119 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v31;
          v51 = v160;
          v30 = v157;
          v52 = v163;
          if (v119)
          {
            goto LABEL_200;
          }

          goto LABEL_203;
        }

        v33 = v34;
      }

      LODWORD(v32) = LODWORD(v37) - LODWORD(v36);
      v40 = SLODWORD(v37) < SLODWORD(v36);
      if (__OFSUB__(LODWORD(v37), LODWORD(v36)))
      {
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
        goto LABEL_258;
      }

      v41 = HIDWORD(*&v37);
      if (v40 || v41 < SHIDWORD(v36))
      {
        goto LABEL_255;
      }

      LODWORD(v1) = v41 - HIDWORD(v36);
      if (__OFSUB__(v41, HIDWORD(v36)))
      {
        goto LABEL_256;
      }

      if (v18)
      {
        goto LABEL_283;
      }

      if (v34 == v28)
      {
        break;
      }

      v43 = (v180 + 72 + 24 * v33);
      v30 = v36;
      while (1)
      {
        if (v34 >= v28)
        {
          goto LABEL_251;
        }

        v33 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_252;
        }

        v36 = *(v43 - 2);
        v37 = *(v43 - 1);
        v44 = *v43 >> 5;
        if (v44)
        {
          break;
        }

        LODWORD(v32) = LODWORD(v37) - LODWORD(v36);
        if (__OFSUB__(LODWORD(v37), LODWORD(v36)))
        {
          goto LABEL_254;
        }

        if (SLODWORD(v37) < SLODWORD(v36))
        {
          goto LABEL_255;
        }

        v45 = HIDWORD(*&v37);
        LODWORD(v1) = v45 - HIDWORD(v36);
        if (v45 < SHIDWORD(v36))
        {
          goto LABEL_255;
        }

        if (__OFSUB__(v45, HIDWORD(v36)))
        {
          goto LABEL_256;
        }

        ++v34;
        v43 += 3;
        v30 = v36;
        if (v33 == v28)
        {
          goto LABEL_72;
        }
      }

      if (*v43 >> 5 <= 3u)
      {
        if (v44 != 2)
        {
          if (v44 != 3)
          {
            goto LABEL_283;
          }

          v18 = 0;
          LODWORD(v11) = 0;
          ++v34;
LABEL_48:
          if ((~*&v36 & 0x7FF0000000000000) != 0)
          {
            v25 = v36;
          }

          if ((~*&v37 & 0x7FF0000000000000) != 0)
          {
            v27 = v37;
          }

          goto LABEL_65;
        }

        v18 = 0;
        LODWORD(v11) = 0;
        ++v34;
        goto LABEL_41;
      }

      if (v44 != 4)
      {
        if (v44 == 5)
        {
          v18 = 0;
          LODWORD(v11) = 0;
          v160 = 0;
          ++v34;
LABEL_63:
          v29 = v36;
          goto LABEL_65;
        }

        v18 = 0;
        LODWORD(v11) = 0;
        ++v34;
        goto LABEL_64;
      }

      v18 = 0;
      LODWORD(v11) = 0;
      v163 = 0;
      v46 = 0;
      v157 = *(v43 - 2);
      if (v33 == v28)
      {
        goto LABEL_73;
      }
    }

LABEL_72:
    v30 = v36;
    v46 = v163;
LABEL_73:

    v163 = v46;
LABEL_74:
    v47 = v31;
    v154 = 0;
    v48 = HIDWORD(*&v30);
LABEL_84:
    if (__OFADD__(LODWORD(v30), v32))
    {
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
      goto LABEL_277;
    }

    v152 = *&v29;
    v173 = LODWORD(v30) + v32;
    v56 = LODWORD(v30) + v32;
    v57 = *v165;
    v18 = *(*v165 + 2);
    v158 = v32;
    v153 = v47;
    if (v18 < v56)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v18 + 1), 1, v57);
      }

      v58 = *(v57 + 2);
      v59 = (v58 << 6) | 0x38;
      if (v58)
      {
LABEL_89:
        v60 = 0;
        if ((*(v2 + 24) & 1) == 0)
        {
          v60 = *(v2 + 16);
        }

        goto LABEL_92;
      }

      while (1)
      {
        v60 = 0;
LABEL_92:
        v61 = *(v57 + 3);
        v18 = (v58 + 1);
        if (v58 >= v61 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v58 + 1, 1, v57);
        }

        LOBYTE(v180) = 1;
        *(v57 + 2) = v18;
        v62 = &v57[v59];
        *(v62 - 3) = v60;
        *(v62 - 2) = 0;
        *(v62 - 8) = v180;
        v63 = v176;
        *(v62 - 1) = *(&v176 + 3);
        *(v62 - 7) = v63;
        *v62 = 0u;
        *(v62 + 1) = 0u;
        *(v62 + 4) = 0;
        if (v18 >= v56)
        {
          break;
        }

        v59 += 64;
        if (++v58)
        {
          goto LABEL_89;
        }
      }

      *v165 = v57;
      LODWORD(v32) = v158;
    }

    if (v32 >= 2 && (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v176 = *v2;
      lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment();
      v18 = &v176;
      AlignmentGuide.fraction.getter();
      v25 = v64;
    }

    LODWORD(v11) = v48 + v1;
    if (__OFADD__(v48, v1))
    {
      goto LABEL_269;
    }

    v65 = *v159;
    v18 = *(*v159 + 2);
    v171 = v48;
    if (v18 < v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v18 + 1), 1, v65);
      }

      v66 = *(v65 + 2);
      v67 = (v66 << 6) | 0x38;
      if (v66)
      {
LABEL_106:
        v68 = 0;
        if ((*(v175 + 40) & 1) == 0)
        {
          v68 = *(v175 + 32);
        }

        goto LABEL_109;
      }

      while (1)
      {
        v68 = 0;
LABEL_109:
        v69 = *(v65 + 3);
        v18 = (v66 + 1);
        if (v66 >= v69 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v66 + 1, 1, v65);
        }

        LOBYTE(v180) = 1;
        *(v65 + 2) = v18;
        v70 = &v65[v67];
        *(v70 - 3) = v68;
        *(v70 - 2) = 0;
        *(v70 - 8) = v180;
        v71 = v176;
        *(v70 - 1) = *(&v176 + 3);
        *(v70 - 7) = v71;
        *v70 = 0u;
        *(v70 + 1) = 0u;
        *(v70 + 4) = 0;
        if (v18 >= v11)
        {
          break;
        }

        v67 += 64;
        if (++v66)
        {
          goto LABEL_106;
        }
      }

      *v159 = v65;
      v48 = v171;
    }

    if (v1 < 2)
    {
      if ((v163 & 1) == 0)
      {
        goto LABEL_119;
      }

LABEL_129:
      if (v160)
      {
        goto LABEL_141;
      }

      goto LABEL_130;
    }

    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v176 = *(v175 + 8);
      lazy protocol witness table accessor for type VerticalAlignment and conformance VerticalAlignment();
      v18 = &v176;
      AlignmentGuide.fraction.getter();
      v27 = v72;
    }

    if (v163)
    {
      goto LABEL_129;
    }

LABEL_119:
    if ((LODWORD(v30) & 0x80000000) != 0)
    {
      goto LABEL_275;
    }

    if (*(v57 + 2) <= SLODWORD(v30))
    {
      goto LABEL_276;
    }

    v73 = &v57[64 * SLODWORD(v30)];
    if ((v73[48] & 1) != 0 || *(v73 + 5) == *&v157)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
      }

      if (*(v57 + 2) <= SLODWORD(v30))
      {
        goto LABEL_280;
      }

      v74 = &v57[64 * SLODWORD(v30)];
      *(v74 + 5) = v157;
      v74[48] = 0;
      *v165 = v57;
      if (v160)
      {
        goto LABEL_141;
      }

LABEL_130:
      if ((v48 & 0x80000000) == 0)
      {
        if (*(v65 + 2) > v48)
        {
          v75 = &v65[64 * v48];
          v18 = v152;
          if ((v75[48] & 1) == 0 && *(v75 + 5) != v152)
          {
            v176 = 0;
            v177 = 0xE000000000000000;
            _StringGuts.grow(_:)(46);

            v176 = 0xD00000000000002CLL;
            v177 = 0x800000018CD56630;
            LODWORD(v180) = v48;
            v79 = dispatch thunk of CustomStringConvertible.description.getter();
            LODWORD(v1) = v80;
            MEMORY[0x18D00C9B0](v79);

            v18 = v177;
            MEMORY[0x18D009810](v176, v177);

            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
          }

          if (*(v65 + 2) > v48)
          {
            v76 = &v65[64 * v48];
            *(v76 + 5) = v152;
            v76[48] = 0;
            *v159 = v65;
            goto LABEL_141;
          }

LABEL_281:
          __break(1u);
LABEL_282:
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
LABEL_206:
          v124 = *(v18 + 2);
          v123 = *(v18 + 3);
          v174 = v124 + 1;
          if (v124 >= v123 >> 1)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v174, 1, v18);
          }

          *(v18 + 2) = v174;
          v125 = &v18[8 * v124];
          *(v125 + 8) = v1;
          *(v125 + 9) = v11;
LABEL_209:
          v11 = 0;
          v168 = v18;
          v170 = v18 + 32;
          while (1)
          {
            if (v11 >= *(v18 + 2))
            {
              goto LABEL_260;
            }

            if (*(v13 + 16))
            {
              v1 = *&v170[8 * v11 + 4];
              v18 = v13;
              v126 = specialized __RawDictionaryStorage.find<A>(_:)((*&v170[8 * v11] - 1) | (v1 << 32));
              if (v127)
              {
                v128 = *(*(v13 + 56) + 8 * v126);
                if ((v128 & 0x8000000000000000) != 0)
                {
                  goto LABEL_263;
                }

                v129 = *v166;
                v130 = *(*v166 + 2);
                if (v128 >= v130)
                {
                  goto LABEL_264;
                }

                if ((~*&v129[104 * v128 + 96] & 0x7FF0000000000000) == 0)
                {
                  v176 = *v175;
                  lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment();
                  v18 = &v176;
                  AlignmentGuide.fraction.getter();
                  v132 = v131;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v129 = specialized _ArrayBuffer._consumeAndCreateNew()(v129);
                  }

                  if (v128 >= *(v129 + 2))
                  {
                    goto LABEL_271;
                  }

                  *&v129[104 * v128 + 96] = v132;
                  *v166 = v129;
                  v130 = *(v129 + 2);
                }

                if (v128 >= v130)
                {
                  goto LABEL_265;
                }

                v133 = &v129[104 * v128];
                v134 = *(v133 + 8);
                v135 = *(v133 + 10);
                if (v135 < v134)
                {
                  goto LABEL_266;
                }

                v136 = *(*v165 + 2);
                if (v136 >> 31)
                {
                  goto LABEL_267;
                }

                if (v135 < v136)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v129 = specialized _ArrayBuffer._consumeAndCreateNew()(v129);
                  }

                  if (v128 >= *(v129 + 2))
                  {
                    goto LABEL_272;
                  }

                  v137 = &v129[104 * v128];
                  *(v137 + 8) = v134;
                  *(v137 + 10) = v136;
                  *v166 = v129;
                  if (v134 != v136)
                  {
                    break;
                  }
                }
              }
            }

LABEL_210:
            ++v11;
            v18 = v168;
            if (v11 == v174)
            {
            }
          }

          v172 = v1;
          v1 <<= 32;
          v18 = v175;
          while (2)
          {
            if (v134 >= v136)
            {
              goto LABEL_257;
            }

            if (v134 >= v135)
            {
              v13 = swift_isUniquelyReferenced_nonNull_native();
              v18 = *(v18 + 18);
              v176 = v18;
              v138 = specialized __RawDictionaryStorage.find<A>(_:)(v1 | v134);
              v140 = *(v18 + 2);
              v141 = (v139 & 1) == 0;
              v98 = __OFADD__(v140, v141);
              v142 = v140 + v141;
              if (v98)
              {
                goto LABEL_259;
              }

              v143 = v139;
              if (*(v18 + 3) >= v142)
              {
                if (v13)
                {
                  goto LABEL_240;
                }

                v18 = &v176;
                v148 = v138;
                specialized _NativeDictionary.copy()();
                v138 = v148;
                v13 = v176;
                if (v143)
                {
                  goto LABEL_230;
                }

LABEL_241:
                *(v13 + 8 * (v138 >> 6) + 64) |= 1 << v138;
                v145 = (*(v13 + 48) + 8 * v138);
                *v145 = v134;
                v145[1] = v172;
                *(*(v13 + 56) + 8 * v138) = v128;
                v146 = *(v13 + 16);
                v98 = __OFADD__(v146, 1);
                v147 = v146 + 1;
                if (v98)
                {
                  goto LABEL_262;
                }

                *(v13 + 16) = v147;
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, v13);
                v18 = v176;
                v138 = specialized __RawDictionaryStorage.find<A>(_:)(v1 | v134);
                if ((v143 & 1) != (v144 & 1))
                {
                  goto LABEL_284;
                }

LABEL_240:
                v13 = v176;
                if ((v143 & 1) == 0)
                {
                  goto LABEL_241;
                }

LABEL_230:
                *(*(v13 + 56) + 8 * v138) = v128;
              }

              v18 = v175;
              *(v175 + 144) = v13;
            }

            if (v136 == ++v134)
            {
              goto LABEL_210;
            }

            continue;
          }
        }

LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
        goto LABEL_281;
      }

LABEL_277:
      __break(1u);
      goto LABEL_278;
    }

    v176 = 0;
    v177 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v176 = 0xD00000000000002FLL;
    v177 = 0x800000018CD56660;
    LODWORD(v180) = LODWORD(v30);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v1) = v78;
    MEMORY[0x18D00C9B0](v77);

    v18 = v177;
    MEMORY[0x18D009810](v176, v177);

    if ((v160 & 1) == 0)
    {
      goto LABEL_130;
    }

LABEL_141:
    if (v173 < SLODWORD(v30))
    {
      goto LABEL_270;
    }

    if (LODWORD(v30) == v173)
    {
      v2 = v175;
LABEL_144:
      static ViewDimensions.invalidValue.getter();
      v81 = v176;
      v82 = v177;
      v161 = v179;
      v164 = v178;
      v83 = *v166;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83);
      }

      v85 = *(v83 + 2);
      v84 = *(v83 + 3);
      v86 = v153;
      if (v85 >= v84 >> 1)
      {
        v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v83);
        v86 = v153;
        v83 = v120;
      }

      *(v83 + 2) = v85 + 1;
      v87 = &v83[104 * v85];
      *(v87 + 8) = LODWORD(v30);
      *(v87 + 9) = v171;
      *(v87 + 10) = v173;
      *(v87 + 11) = v11;
      *(v87 + 6) = v81;
      *(v87 + 7) = v82;
      *(v87 + 4) = v164;
      *(v87 + 5) = v161;
      *(v87 + 12) = v25;
      *(v87 + 13) = v27;
      v87[112] = v86;
      v88 = *(&v180 + 3);
      *(v87 + 113) = v180;
      *(v87 + 29) = v88;
      *(v87 + 15) = 0;
      *(v87 + 16) = 0;
      *v166 = v83;
      v22 = v162;
      LODWORD(v1) = v156;
      if (v154)
      {
        LODWORD(v1) = v158 + v162;
      }

      v18 = &v181;
      v21 = v155;
      if (v155 == LayoutSubviews.endIndex.getter())
      {
        goto LABEL_248;
      }

      if (v154)
      {
        v22 = v158 + v162;
      }

      LayoutSubviews.subscript.getter();
      v19 = v176;
      v20 = v177;
      v11 = v167;
      if (v155 >= LayoutSubviews.endIndex.getter())
      {
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
        goto LABEL_268;
      }

      continue;
    }

    break;
  }

  v2 = v175;
  if (v11 < v48)
  {
    goto LABEL_279;
  }

  v89 = LODWORD(v30);
  v90 = v173;
  v169 = LODWORD(v30);
  while (2)
  {
    if (v89 >= v90)
    {
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    if (v48 == v11)
    {
LABEL_157:
      ++v89;
      v48 = v171;
      v90 = v173;
      LODWORD(v30) = v169;
      if (v89 == v173)
      {
        goto LABEL_144;
      }

      continue;
    }

    break;
  }

  while (2)
  {
    if (v48 < v11)
    {
      LODWORD(v1) = v89;
      if (*(v13 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v89 | (v48 << 32));
        if (v91)
        {
          goto LABEL_283;
        }
      }

      v92 = *(*(v2 + 136) + 16);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v93 = *(v2 + 144);
      v176 = v93;
      v18 = v93;
      v94 = specialized __RawDictionaryStorage.find<A>(_:)(v89 | (v48 << 32));
      v96 = *(v93 + 16);
      v97 = (v95 & 1) == 0;
      v98 = __OFADD__(v96, v97);
      v99 = v96 + v97;
      if (v98)
      {
        goto LABEL_246;
      }

      v100 = v95;
      if (*(v93 + 24) >= v99)
      {
        if (v13)
        {
          v13 = v93;
          goto LABEL_172;
        }

        v1 = v94;
        type metadata accessor for _DictionaryStorage<GridIndex, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<GridIndex, Int>, MEMORY[0x1E69E6EC8]);
        v18 = v105;
        v106 = static _DictionaryStorage.copy(original:)();
        v13 = v106;
        if (*(v93 + 16))
        {
          v107 = (v106 + 64);
          v18 = (v93 + 64);
          v108 = ((1 << *(v13 + 32)) + 63) >> 6;
          if (v13 != v93 || v107 >= &v18[8 * v108])
          {
            memmove(v107, (v93 + 64), 8 * v108);
          }

          v109 = 0;
          *(v13 + 16) = *(v93 + 16);
          v110 = 1 << *(v93 + 32);
          if (v110 < 64)
          {
            v111 = ~(-1 << v110);
          }

          else
          {
            v111 = -1;
          }

          v112 = v111 & *(v93 + 64);
          v113 = (v110 + 63) >> 6;
          if (!v112)
          {
            goto LABEL_184;
          }

          while (1)
          {
            v114 = __clz(__rbit64(v112));
            v112 &= v112 - 1;
            for (i = v114 | (v109 << 6); ; i = __clz(__rbit64(v117)) | (v109 << 6))
            {
              v118 = *(*(v93 + 56) + 8 * i);
              *(*(v13 + 48) + 8 * i) = *(*(v93 + 48) + 8 * i);
              *(*(v13 + 56) + 8 * i) = v118;
              if (v112)
              {
                break;
              }

LABEL_184:
              v116 = v109;
              do
              {
                v109 = v116 + 1;
                if (__OFADD__(v116, 1))
                {
                  goto LABEL_274;
                }

                if (v109 >= v113)
                {
                  goto LABEL_191;
                }

                v117 = *&v18[8 * v109];
                ++v116;
              }

              while (!v117);
              v112 = (v117 - 1) & v117;
            }
          }
        }

LABEL_191:

        v94 = v1;
        if (v100)
        {
          goto LABEL_161;
        }

LABEL_173:
        *(v13 + 8 * (v94 >> 6) + 64) |= 1 << v94;
        v102 = (*(v13 + 48) + 8 * v94);
        *v102 = v89;
        v102[1] = v48;
        *(*(v13 + 56) + 8 * v94) = v92;
        v103 = *(v13 + 16);
        v98 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v98)
        {
          goto LABEL_247;
        }

        *(v13 + 16) = v104;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v99, v13);
        v13 = v176;
        v18 = v176;
        v94 = specialized __RawDictionaryStorage.find<A>(_:)(v89 | (v48 << 32));
        if ((v100 & 1) != (v101 & 1))
        {
          while (1)
          {
LABEL_284:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_283:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

LABEL_172:
        if ((v100 & 1) == 0)
        {
          goto LABEL_173;
        }

LABEL_161:
        *(*(v13 + 56) + 8 * v94) = v92;
      }

      v48 = (v48 + 1);
      v2 = v175;
      *(v175 + 144) = v13;
      if (v48 == v11)
      {
        goto LABEL_157;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:

  v18 = v167;
  if (!v151)
  {
    goto LABEL_253;
  }

  v174 = *(v167 + 2);
  if (v174)
  {
    goto LABEL_209;
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10GridLayoutV5CacheV11RowOrColumn33_69F00159ECCD7162D5EDC19B53BBB085LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.RowOrColumn>, &type metadata for GridLayout.Cache.RowOrColumn, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance GridMetadata@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static GridMetadata.defaultValue;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  v2 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t lazy protocol witness table accessor for type GridIndex and conformance GridIndex()
{
  result = lazy protocol witness table cache variable for type GridIndex and conformance GridIndex;
  if (!lazy protocol witness table cache variable for type GridIndex and conformance GridIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridIndex and conformance GridIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridIndex and conformance GridIndex;
  if (!lazy protocol witness table cache variable for type GridIndex and conformance GridIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridIndex and conformance GridIndex);
  }

  return result;
}

uint64_t GridLayout.Cache.assignSpacing(in:)(uint64_t result)
{
  v2 = (v1 + 24);
  v40 = result & 1;
  if (result)
  {
    v2 = (v1 + 40);
  }

  if (*v2 != 1)
  {
    return result;
  }

  v3 = v1;
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v39 = v1;
  if (result)
  {
    v6 = *(v5 + 16);
    if (!v6)
    {
LABEL_18:
      v7 = *(v4 + 16);
      if (!v7)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      v7 = *(v5 + 16);
      if (!v7)
      {
        return result;
      }

LABEL_19:
      v14 = 0;
      v37 = v7;
      while (v14 != v7)
      {
        v38 = v14;
        if (v40)
        {
          v15 = *(v3 + 112);
        }

        else
        {
          v15 = *(v3 + 104);
        }

        v41 = *(v15 + 16);
        if (v41)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          LOBYTE(v19) = 2;
          v20 = 32;
          do
          {
            v21 = v19;
            v22 = v17;
            v23 = v16;
            if (*(*(v3 + 144) + 16))
            {
              v24 = *(v3 + 48);
              v25 = *(v3 + 56);
              v26 = *(v3 + 64);
              v27 = *(v3 + 65);
              if (v40)
              {
                v28 = v18;
              }

              else
              {
                v28 = v38;
              }

              if (v40)
              {
                v29 = v38;
              }

              else
              {
                v29 = v18;
              }

              result = specialized __RawDictionaryStorage.find<A>(_:)(v29 | (v28 << 32));
              if (v30)
              {
                LODWORD(v45) = v24;
                v46 = v25;
                v47 = v26;
                v48 = v27;
                result = LayoutSubviews.subscript.getter();
                v16 = v42;
                v17 = v43;
                v19 = v44;
              }

              else
              {
                v16 = 0;
                v17 = 0;
                v19 = 2;
              }

              v3 = v39;
            }

            else
            {
              v16 = 0;
              v17 = 0;
              v19 = 2;
            }

            if (v21 != 2 && v19 != 2 && (v23 != v16 || HIDWORD(v23) != HIDWORD(v16) || v22 != v17 || HIDWORD(v22) != HIDWORD(v17) || v19 != v21))
            {
              v45 = v23;
              v46 = v22;
              v47 = v21;
              LayoutSubview.spacing.getter();
              v42 = v16;
              v43 = v17;
              v44 = v19;
              LayoutSubview.spacing.getter();
              ViewSpacing.distance(to:along:)();
              v32 = v31;

              v33 = GridLayout.Cache.subscript.modify();
              v35 = v34;
              v36 = *v34;
              result = swift_isUniquelyReferenced_nonNull_native();
              *v35 = v36;
              if (result)
              {
                if ((v18 & 0x8000000000000000) != 0)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
                v36 = result;
                *v35 = result;
                if ((v18 & 0x8000000000000000) != 0)
                {
LABEL_54:
                  __break(1u);
                  return result;
                }
              }

              if (v18 >= *(v36 + 16))
              {
                __break(1u);
                goto LABEL_57;
              }

              if (*(v36 + v20) < v32)
              {
                *(v36 + v20) = v32;
              }

              result = v33(&v45, 0);
              v3 = v39;
            }

            ++v18;
            v20 += 64;
          }

          while (v41 != v18);
        }

        v7 = v37;
        v14 = v38 + 1;
        if (v38 + 1 == v37)
        {
          return result;
        }
      }

LABEL_58:
      __break(1u);
      return result;
    }
  }

  v8 = 0;
  v9 = 32;
  do
  {
    v10 = GridLayout.Cache.subscript.modify();
    v12 = v11;
    v13 = *v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v13;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v13 = result;
      *v12 = result;
    }

    if (v8 >= *(v13 + 16))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    ++v8;
    *(v13 + v9) = 0;
    result = v10(&v45, 0);
    v9 += 64;
    v3 = v39;
  }

  while (v6 != v8);
  if (v40)
  {
    v4 = *(v39 + 104);
    goto LABEL_18;
  }

  v7 = *(*(v39 + 112) + 16);
  if (v7)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t initializeWithCopy for GridLayout.Cache(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 81) = *(a2 + 81);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  v6 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v6;
  v7 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v7;

  return a1;
}

uint64_t destroy for GridLayout.Cache()
{
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance GridLayout(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(v20[0]) = a2 & 1;
  LOBYTE(v18[0]) = a4 & 1;
  GridLayout.Cache.setProposal(_:)(a1, a2 & 1, a3, a4 & 1);
  v7 = *(a6 + 112);
  v18[6] = *(a6 + 96);
  v18[7] = v7;
  v18[8] = *(a6 + 128);
  v19 = *(a6 + 144);
  v8 = *(a6 + 48);
  v18[2] = *(a6 + 32);
  v18[3] = v8;
  v9 = *(a6 + 80);
  v18[4] = *(a6 + 64);
  v18[5] = v9;
  v10 = *(a6 + 16);
  v18[0] = *a6;
  v18[1] = v10;
  *&v11 = *&GridLayout.Cache.size()();
  v12 = *(a6 + 112);
  v20[6] = *(a6 + 96);
  v20[7] = v12;
  v20[8] = *(a6 + 128);
  v21 = *(a6 + 144);
  v13 = *(a6 + 48);
  v20[2] = *(a6 + 32);
  v20[3] = v13;
  v14 = *(a6 + 80);
  v20[4] = *(a6 + 64);
  v20[5] = v14;
  v15 = *(a6 + 16);
  v20[0] = *a6;
  v20[1] = v15;
  outlined init with copy of GridLayout.Cache(v18, v17);
  outlined destroy of GridLayout.Cache(v20);
  return v11;
}

uint64_t GridLayout.Cache.setProposal(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  LOBYTE(v30) = a2 & 1;
  result = static ProposedViewSize.== infix(_:_:)();
  if (result)
  {
    return result;
  }

  if (v10)
  {
    v12 = 0x7FF0000000000000;
  }

  else
  {
    v12 = v9;
  }

  v13 = ~v12 & 0x7FF0000000000000;
  v14 = v12 & 0xFFFFFFFFFFFFFLL;
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 == 0;
  }

  if (v15)
  {
    v16 = *(v4 + 104);
    v17 = *(v16 + 2);
    if (!v17)
    {
      goto LABEL_16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_38;
    }

    while (v17 <= *(v16 + 2))
    {
      v18 = 56;
      do
      {
        v19 = &v16[v18];
        *v19 = 0;
        *(v19 + 1) = 0;
        v18 += 64;
        --v17;
      }

      while (v17);
      *(v4 + 104) = v16;
LABEL_16:
      v16 = *(v4 + 112);
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_22;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_18:
      if (v17 > *(v16 + 2))
      {
        __break(1u);
LABEL_42:
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        goto LABEL_24;
      }

      v20 = 56;
      do
      {
        v21 = &v16[v20];
        *v21 = 0;
        *(v21 + 1) = 0;
        v20 += 64;
        --v17;
      }

      while (v17);
      *(v4 + 112) = v16;
LABEL_22:
      v16 = *(v4 + 136);
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_28;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_24:
      v22 = 0;
      v23 = v16 + 64;
      while (v22 < *(v16 + 2))
      {
        ++v22;
        static ViewDimensions.invalidValue.getter();
        *(v23 - 2) = v30;
        *(v23 - 1) = v31;
        *v23 = v32;
        *(v23 + 1) = v33;

        *(v23 + 7) = 0;
        *(v23 + 8) = 0;
        v23 += 104;
        if (v17 == v22)
        {
          *(v4 + 136) = v16;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_38:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    __break(1u);
LABEL_40:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    goto LABEL_18;
  }

LABEL_28:
  *(v4 + 72) = a1;
  *(v4 + 80) = a2 & 1;
  *(v4 + 88) = a3;
  *(v4 + 96) = a4 & 1;
  static ProposedViewSize.unspecified.getter();
  if (static ProposedViewSize.== infix(_:_:)())
  {
    v24 = *(*(v4 + 136) + 16);
    if (v24)
    {
      for (i = 0; i != v24; ++i)
      {
        v26 = static ProposedViewSize.unspecified.getter();
        GridLayout.Cache.resize(at:proposal:)(i, v26, v27 & 1, v29, v28 & 1);
      }
    }
  }

  else
  {
    GridLayout.Cache.sizeGenerally()();
  }

  GridLayout.Cache.finalizeSizes()();
  GridLayout.Cache.applyAlignment(in:)(0);
  GridLayout.Cache.applyAlignment(in:)(1);
  assignPositions #1 (to:) in GridLayout.Cache.assignPositions()(v4 + 104);

  return assignPositions #1 (to:) in GridLayout.Cache.assignPositions()(v4 + 112);
}

uint64_t GridLayout.Cache.sizeGenerally()()
{
  v1 = v0;
  v202 = *(v0 + 80);
  LOBYTE(v0) = v202 ^ 1;
  v249[0] = v202 ^ 1;
  if ((*(v1 + 96) & 1) == 0)
  {
    LOBYTE(v0) = v0 | 2;
    v249[0] = v0;
  }

  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_7SwiftUI11GeneralItem33_69F00159ECCD7162D5EDC19B53BBB085LLVs5NeverOTg503_s7d42UI10GridLayoutV5CacheV13sizeGenerally33_69hijklm9LLyyFAA11fG12AGLLVSiXEfU_AG0qR0V0T0VAG4AxisO3SetVTf1cn_n(0, *(*(v1 + 136) + 16), v1, v249);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_336;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    v208 = v2 + 32;
    *&v239 = v2 + 32;
    *(&v239 + 1) = v3;
    result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v239);
    v207 = *(v2 + 16);
    if (!v207)
    {
      break;
    }

    v201 = v0;
    v5 = 0;
    v197 = v2 + 40;
    v206 = v2;
    v6 = *(v2 + 16);
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
        return result;
      }

      if (v5 >= v6)
      {
        break;
      }

      v7 = *(v197 + (v5 << 6));
      v205 = 1;
      v8 = v5;
      do
      {
        if (v8 >= *(v2 + 16))
        {
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
          goto LABEL_312;
        }

        v9 = v208 + (v8 << 6);
        if (*(v9 + 8) != v7)
        {
          goto LABEL_64;
        }

        v10 = *v9;
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_308;
        }

        v11 = *(v1 + 136);
        if (v10 >= *(v11 + 16))
        {
          goto LABEL_309;
        }

        v12 = (v11 + 104 * v10);
        v13 = v12[8];
        v14 = v12[10];
        if (v14 < v13)
        {
          goto LABEL_310;
        }

        v15 = v12[9];
        v16 = v12[11];
        if (v14 == v13)
        {
          goto LABEL_40;
        }

        if (v16 < v15)
        {
          goto LABEL_327;
        }

        if (__OFSUB__(v16, v15))
        {
          goto LABEL_328;
        }

        v0 = *(v1 + 104);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
          v0 = result;
        }

        v17 = (v14 ^ v13) >= 0;
        if (v13 >= 0)
        {
          v18 = v13;
        }

        else
        {
          v18 = -v13;
        }

        if (v14 >= 0)
        {
          v19 = v14;
        }

        else
        {
          v19 = -v14;
        }

        v20 = v14 - v13;
        if (!__OFSUB__(v14, v13))
        {
          v17 = 0;
        }

        v21 = v20;
        v22 = (v19 + v18);
        if ((v14 ^ v13) < 0)
        {
          v21 = -v22;
        }

        v23 = (v0 + (v13 << 6) + 92);
        v24 = v13;
        do
        {
          if (v24 >= v14)
          {
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
LABEL_295:
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            __break(1u);
LABEL_299:
            __break(1u);
LABEL_300:
            __break(1u);
LABEL_301:
            __break(1u);
          }

          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_289;
          }

          v25 = *(v0 + 16);
          if (v25 <= v24)
          {
            goto LABEL_290;
          }

          *(v23 - 1) += v16 - v15;
          if (v17)
          {
            goto LABEL_300;
          }

          if (v21 != v25)
          {
            ++*v23;
          }

          v23 += 16;
          ++v24;
          --v20;
        }

        while (v20);
        *(v1 + 104) = v0;
LABEL_40:
        if (v16 < v15)
        {
          goto LABEL_311;
        }

        if (v16 == v15)
        {
          goto LABEL_10;
        }

        v26 = __OFSUB__(v14, v13);
        v27 = v14 - v13;
        if (v26)
        {
          goto LABEL_329;
        }

        v0 = *(v1 + 112);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
          v0 = result;
        }

        v28 = (v16 ^ v15) >= 0;
        if (v15 >= 0)
        {
          v29 = v15;
        }

        else
        {
          v29 = -v15;
        }

        if (v16 >= 0)
        {
          v30 = v16;
        }

        else
        {
          v30 = -v16;
        }

        v31 = v16 - v15;
        if (!__OFSUB__(v16, v15))
        {
          v28 = 0;
        }

        v32 = v31;
        v33 = (v30 + v29);
        if ((v16 ^ v15) < 0)
        {
          v32 = -v33;
        }

        v34 = (v0 + (v15 << 6) + 92);
        v35 = v15;
        do
        {
          if (v35 >= v16)
          {
            goto LABEL_291;
          }

          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_292;
          }

          v36 = *(v0 + 16);
          if (v36 <= v35)
          {
            goto LABEL_293;
          }

          *(v34 - 1) += v27;
          if (v28)
          {
            goto LABEL_301;
          }

          if (v32 != v36)
          {
            ++*v34;
          }

          v34 += 16;
          ++v35;
          --v31;
        }

        while (v31);
        *(v1 + 112) = v0;
LABEL_10:
        ++v8;
        v6 = v207;
        v205 = v8 < v207;
      }

      while (v8 != v207);
      v8 = v207;
LABEL_98:
      if ((*(v1 + 80) & 1) == 0)
      {
        v0 = *(v1 + 104);
        v54 = *(v0 + 16);
        v55 = 0.0;
        if (v54)
        {
          v56 = (v0 + 72);
          v57 = 0.0;
          v58 = *(v0 + 16);
          do
          {
            v59 = *(v56 - 1);
            if (v59 <= *v56)
            {
              v59 = *v56;
            }

            v57 = v57 + *(v56 - 5) + v59;
            v56 += 8;
            --v58;
          }

          while (v58);
        }

        else
        {
          v57 = 0.0;
        }

        v60 = *(v1 + 120);
        v61 = *(v60 + 16);
        if (v61)
        {
          v62 = (v60 + 40);
          v55 = 0.0;
          do
          {
            v63 = *v62;
            v62 += 3;
            v55 = v55 + v63;
            --v61;
          }

          while (v61);
        }

        v64 = *(v1 + 112);
        v65 = *(v64 + 16);
        if (v65)
        {
          if (v65 > 7)
          {
            v66 = v65 & 0x7FFFFFFFFFFFFFF8;
            v69 = (v64 + 280);
            v70 = 0uLL;
            v71 = v65 & 0x7FFFFFFFFFFFFFF8;
            v72 = 0uLL;
            do
            {
              v73.i32[0] = *(v69 - 48);
              v73.i32[1] = *(v69 - 32);
              v73.i32[2] = *(v69 - 16);
              v73.i32[3] = *v69;
              v74.i32[0] = v69[16];
              v74.i32[1] = v69[32];
              v74.i32[2] = v69[48];
              v74.i32[3] = v69[64];
              v70 = vmaxq_s32(v73, v70);
              v72 = vmaxq_s32(v74, v72);
              v69 += 128;
              v71 -= 8;
            }

            while (v71);
            v67 = vmaxvq_s32(vmaxq_s32(v70, v72));
            if (v65 != v66)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v66 = 0;
            v67 = 0;
LABEL_116:
            v75 = v65 - v66;
            v76 = (v64 + (v66 << 6) + 88);
            do
            {
              v78 = *v76;
              v76 += 16;
              v77 = v78;
              if (v78 > v67)
              {
                v67 = v77;
              }

              --v75;
            }

            while (v75);
          }

          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v79 = (*(v1 + 72) - v57 - v55) / v68;
        v80 = v79 < 0.0 ? 0.0 : v79;
        if (v54)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if (v54 == 1)
            {
              goto LABEL_127;
            }

LABEL_129:
            v81 = v54 & 0x7FFFFFFFFFFFFFFELL;
            v82 = (v0 + 144);
            v83 = v54 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              *(v82 - 8) = v80;
              *v82 = v80;
              v82 += 16;
              v83 -= 2;
            }

            while (v83);
            if (v54 != v81)
            {
              goto LABEL_132;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
            v0 = result;
            if (v54 != 1)
            {
              goto LABEL_129;
            }

LABEL_127:
            v81 = 0;
LABEL_132:
            v84 = (v0 + (v81 << 6) + 80);
            v85 = v54 - v81;
            do
            {
              *v84 = v80;
              v84 += 8;
              --v85;
            }

            while (v85);
          }

          *(v1 + 104) = v0;
        }
      }

      if ((*(v1 + 96) & 1) == 0)
      {
        v0 = *(v1 + 112);
        v86 = *(v0 + 16);
        v87 = 0.0;
        if (v86)
        {
          v88 = (v0 + 72);
          v89 = 0.0;
          v90 = *(v0 + 16);
          do
          {
            v91 = *(v88 - 1);
            if (v91 <= *v88)
            {
              v91 = *v88;
            }

            v89 = v89 + *(v88 - 5) + v91;
            v88 += 8;
            --v90;
          }

          while (v90);
        }

        else
        {
          v89 = 0.0;
        }

        v92 = *(v1 + 128);
        v93 = *(v92 + 16);
        if (v93)
        {
          v94 = (v92 + 40);
          v87 = 0.0;
          do
          {
            v95 = *v94;
            v94 += 3;
            v87 = v87 + v95;
            --v93;
          }

          while (v93);
        }

        v96 = *(v1 + 104);
        v97 = *(v96 + 16);
        if (v97)
        {
          if (v97 > 7)
          {
            v98 = v97 & 0x7FFFFFFFFFFFFFF8;
            v101 = (v96 + 280);
            v102 = 0uLL;
            v103 = v97 & 0x7FFFFFFFFFFFFFF8;
            v104 = 0uLL;
            do
            {
              v105.i32[0] = *(v101 - 48);
              v105.i32[1] = *(v101 - 32);
              v105.i32[2] = *(v101 - 16);
              v105.i32[3] = *v101;
              v106.i32[0] = v101[16];
              v106.i32[1] = v101[32];
              v106.i32[2] = v101[48];
              v106.i32[3] = v101[64];
              v102 = vmaxq_s32(v105, v102);
              v104 = vmaxq_s32(v106, v104);
              v101 += 128;
              v103 -= 8;
            }

            while (v103);
            v99 = vmaxvq_s32(vmaxq_s32(v102, v104));
            if (v97 != v98)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v98 = 0;
            v99 = 0;
LABEL_153:
            v107 = v97 - v98;
            v108 = (v96 + (v98 << 6) + 88);
            do
            {
              v110 = *v108;
              v108 += 16;
              v109 = v110;
              if (v110 > v99)
              {
                v99 = v109;
              }

              --v107;
            }

            while (v107);
          }

          v100 = v99;
        }

        else
        {
          v100 = 0.0;
        }

        v111 = (*(v1 + 88) - v89 - v87) / v100;
        v112 = v111 < 0.0 ? 0.0 : v111;
        if (v86)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if (v86 == 1)
            {
              goto LABEL_164;
            }

LABEL_166:
            v113 = v86 & 0x7FFFFFFFFFFFFFFELL;
            v114 = (v0 + 144);
            v115 = v86 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              *(v114 - 8) = v112;
              *v114 = v112;
              v114 += 16;
              v115 -= 2;
            }

            while (v115);
            if (v86 != v113)
            {
              goto LABEL_169;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
            v0 = result;
            if (v86 != 1)
            {
              goto LABEL_166;
            }

LABEL_164:
            v113 = 0;
LABEL_169:
            v116 = (v0 + (v113 << 6) + 80);
            v117 = v86 - v113;
            do
            {
              *v116 = v112;
              v116 += 8;
              --v117;
            }

            while (v117);
          }

          *(v1 + 112) = v0;
        }
      }

      if (v8 < v5)
      {
        goto LABEL_340;
      }

      if (v5 != v8)
      {
        v125 = v5;
        do
        {
          if (v125 >= v8)
          {
            goto LABEL_332;
          }

          v126 = *(v2 + 16);
          if (v5 < v125)
          {
            if (v125 >= v126)
            {
              goto LABEL_339;
            }

            v127 = v208 + (v125 << 6);
            v128 = *(v127 + 8);
            v129 = v208 + (v5 << 6);
            v130 = *(v129 + 8);
            if (v128 == v130)
            {
              v131 = *(v127 + 32);
              v132 = *(v129 + 32);
              v133 = v131 < v132;
              if (v131 == v132)
              {
                v134 = *(v127 + 40);
                v135 = *(v129 + 40);
                v133 = v134 < v135;
                if (v134 == v135)
                {
                  v136 = *(v127 + 48);
                  v137 = *(v129 + 48);
                  v133 = v136 < v137;
                  if (v136 == v137)
                  {
                    if (*(v127 + 56) > *(v129 + 56))
                    {
                      goto LABEL_209;
                    }

                    goto LABEL_202;
                  }
                }
              }
            }

            else
            {
              v133 = v130 < v128;
            }

            if (!v133)
            {
              while (1)
              {
LABEL_209:
                if (v5 >= *(v2 + 16))
                {
                  __break(1u);
LABEL_303:
                  __break(1u);
LABEL_304:
                  __break(1u);
LABEL_305:
                  __break(1u);
LABEL_306:
                  __break(1u);
                  goto LABEL_307;
                }

                v152 = *(v208 + (v5 << 6));
                if ((v152 & 0x8000000000000000) != 0)
                {
                  goto LABEL_303;
                }

                v153 = *(v1 + 136);
                if (v152 >= *(v153 + 16))
                {
                  goto LABEL_304;
                }

                v154 = (v153 + 104 * v152);
                v155 = v154[8];
                v156 = v154[10];
                if (v156 < v155)
                {
                  goto LABEL_305;
                }

                v157 = v154[9];
                v158 = v154[11];
                if (v156 != v155)
                {
                  break;
                }

LABEL_224:
                if (((v156 ^ v155) & 0x80000000) != 0)
                {
                  if (v155 >= 0)
                  {
                    v163 = v155;
                  }

                  else
                  {
                    v163 = -v155;
                  }

                  if (v156 >= 0)
                  {
                    v164 = v156;
                  }

                  else
                  {
                    v164 = -v156;
                  }

                  v165 = __CFADD__(v163, v164);
                  v162 = (v163 + v164);
                  if (v165)
                  {
                    goto LABEL_330;
                  }

                  if (v155 >= 0)
                  {
                    v162 = -v162;
                  }
                }

                else
                {
                  LODWORD(v162) = v156 - v155;
                  if (__OFSUB__(v156, v155))
                  {
                    goto LABEL_318;
                  }

                  v162 = v162;
                }

                v0 = *(v1 + 104);
                if (v162 != *(v0 + 16))
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if ((v155 & 0x80000000) != 0)
                    {
                      goto LABEL_322;
                    }
                  }

                  else
                  {
                    v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
                    if ((v155 & 0x80000000) != 0)
                    {
                      goto LABEL_322;
                    }
                  }

                  if (*(v0 + 16) <= v155)
                  {
                    goto LABEL_323;
                  }

                  v166 = v0 + (v155 << 6);
                  --*(v166 + 92);
                  *(v1 + 104) = v0;
                  if (!*(v166 + 92))
                  {
                    LOBYTE(v0) = v1;
                    GridLayout.Cache.reassignAvailability(in:at:)(0, v155);
                  }
                }

                if (v158 < v157)
                {
                  goto LABEL_306;
                }

                if (v158 != v157)
                {
                  v26 = __OFSUB__(v156, v155);
                  v167 = v156 - v155;
                  if (v26)
                  {
                    goto LABEL_324;
                  }

                  v0 = *(v1 + 112);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
                  }

                  v168 = (v157 << 6) + 88;
                  v169 = v158 - v157;
                  v170 = v157;
                  while (v170 < v158)
                  {
                    if ((v157 & 0x80000000) != 0)
                    {
                      goto LABEL_286;
                    }

                    if (*(v0 + 16) <= v170)
                    {
                      goto LABEL_287;
                    }

                    *(v0 + v168) -= v167;
                    v168 += 64;
                    v170 = (v170 + 1);
                    if (!--v169)
                    {
                      *(v1 + 112) = v0;
                      goto LABEL_253;
                    }
                  }

                  goto LABEL_285;
                }

LABEL_253:
                if (((v158 ^ v157) & 0x80000000) != 0)
                {
                  if (v157 >= 0)
                  {
                    v172 = v157;
                  }

                  else
                  {
                    v172 = -v157;
                  }

                  if (v158 >= 0)
                  {
                    v173 = v158;
                  }

                  else
                  {
                    v173 = -v158;
                  }

                  v165 = __CFADD__(v172, v173);
                  v171 = (v172 + v173);
                  if (v165)
                  {
                    goto LABEL_331;
                  }

                  if (v157 >= 0)
                  {
                    v171 = -v171;
                  }
                }

                else
                {
                  LODWORD(v171) = v158 - v157;
                  if (__OFSUB__(v158, v157))
                  {
                    goto LABEL_319;
                  }

                  v171 = v171;
                }

                v0 = *(v1 + 112);
                if (v171 != *(v0 + 16))
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if ((v157 & 0x80000000) != 0)
                    {
                      goto LABEL_325;
                    }
                  }

                  else
                  {
                    v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
                    if ((v157 & 0x80000000) != 0)
                    {
                      goto LABEL_325;
                    }
                  }

                  if (*(v0 + 16) <= v157)
                  {
                    goto LABEL_326;
                  }

                  v174 = v0 + (v157 << 6);
                  --*(v174 + 92);
                  *(v1 + 112) = v0;
                  if (!*(v174 + 92))
                  {
                    LOBYTE(v0) = v1;
                    GridLayout.Cache.reassignAvailability(in:at:)(1, v157);
                  }
                }

                if (++v5 >= v125)
                {
                  if (v125 < *(v2 + 16))
                  {
                    goto LABEL_203;
                  }

                  goto LABEL_333;
                }
              }

              if (v158 < v157)
              {
                goto LABEL_320;
              }

              v2 = (v158 - v157);
              if (!__OFSUB__(v158, v157))
              {
                v0 = *(v1 + 104);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
                }

                v159 = (v155 << 6) + 88;
                v160 = v156 - v155;
                v161 = v155;
                while (v161 < v156)
                {
                  if ((v155 & 0x80000000) != 0)
                  {
                    goto LABEL_283;
                  }

                  if (*(v0 + 16) <= v161)
                  {
                    goto LABEL_284;
                  }

                  *(v0 + v159) -= v2;
                  v159 += 64;
                  v161 = (v161 + 1);
                  if (!--v160)
                  {
                    *(v1 + 104) = v0;
                    v2 = v206;
                    goto LABEL_224;
                  }
                }

                __break(1u);
LABEL_283:
                __break(1u);
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
                goto LABEL_288;
              }

              goto LABEL_321;
            }
          }

LABEL_202:
          if (v125 >= v126)
          {
            goto LABEL_333;
          }

LABEL_203:
          v138 = *(v208 + (v125 << 6));
          if ((v138 & 0x8000000000000000) != 0)
          {
            goto LABEL_334;
          }

          v139 = *(v1 + 136);
          if (v138 >= *(v139 + 16))
          {
            goto LABEL_335;
          }

          v140 = v139 + 104 * v138;
          v141 = *(v140 + 32);
          v142 = *(v140 + 36);
          v143 = *(v140 + 40);
          v144 = *(v140 + 44);
          v145 = *(v140 + 112);
          v146 = static ProposedViewSize.unspecified.getter();
          v150 = v148;
          v203 = v142;
          if (v202)
          {
            v151 = v146;
            if ((v201 & 2) != 0)
            {
              goto LABEL_276;
            }
          }

          else
          {
            v175 = *(v1 + 112);
            v176 = *(v1 + 80);
            v235 = *(v1 + 96);
            v236 = v175;
            v177 = *(v1 + 112);
            v237 = *(v1 + 128);
            v178 = *(v1 + 48);
            v179 = *(v1 + 16);
            v231 = *(v1 + 32);
            v232 = v178;
            v180 = *(v1 + 48);
            v181 = *(v1 + 80);
            v233 = *(v1 + 64);
            v234 = v181;
            v182 = *(v1 + 16);
            v229 = *v1;
            v230 = v182;
            v221 = v235;
            v223 = v177;
            v225 = *(v1 + 128);
            v213 = v231;
            v215 = v180;
            v217 = v233;
            v219 = v176;
            v238 = *(v1 + 144);
            v227 = *(v1 + 144);
            v209 = v229;
            v211 = v179;
            v199 = v148;
            v198 = v149;
            outlined init with copy of GridLayout.Cache(&v229, &v239);
            GridLayout.Cache.proposal(for:in:includeAvailable:)(0, v141 | (v142 << 32), v143 | (v144 << 32), (v145 & 1) == 0);
            v184 = v183;
            v245 = v221;
            v246 = v223;
            v247 = v225;
            v248 = v227;
            v241 = v213;
            v242 = v215;
            v243 = v217;
            v244 = v219;
            v239 = v209;
            v240 = v211;
            outlined destroy of GridLayout.Cache(&v239);
            v149 = v198;
            v150 = v199;
            v147 = 0;
            v151 = v184;
            if ((v201 & 2) != 0)
            {
LABEL_276:
              v185 = *(v1 + 112);
              v186 = *(v1 + 80);
              v235 = *(v1 + 96);
              v236 = v185;
              v187 = *(v1 + 112);
              v237 = *(v1 + 128);
              v188 = *(v1 + 48);
              v189 = *(v1 + 16);
              v231 = *(v1 + 32);
              v232 = v188;
              v190 = *(v1 + 48);
              v191 = *(v1 + 80);
              v233 = *(v1 + 64);
              v234 = v191;
              v192 = *(v1 + 16);
              v229 = *v1;
              v230 = v192;
              v222 = v235;
              v224 = v187;
              v226 = *(v1 + 128);
              v214 = v231;
              v216 = v190;
              v218 = v233;
              v220 = v186;
              v238 = *(v1 + 144);
              v228 = *(v1 + 144);
              v193 = (v145 & 2) == 0;
              v210 = v229;
              v212 = v189;
              v200 = v147;
              v194 = v151;
              outlined init with copy of GridLayout.Cache(&v229, &v239);
              GridLayout.Cache.proposal(for:in:includeAvailable:)(1, v141 | (v203 << 32), v143 | (v144 << 32), v193);
              v196 = v195;
              v245 = v222;
              v246 = v224;
              v247 = v226;
              v248 = v228;
              v241 = v214;
              v242 = v216;
              v243 = v218;
              v244 = v220;
              v239 = v210;
              v240 = v212;
              outlined destroy of GridLayout.Cache(&v239);
              v147 = v200;
              v151 = v194;
              v149 = 0;
              v150 = v196;
            }
          }

          ++v125;
          LOBYTE(v239) = v147 & 1;
          LOBYTE(v229) = v149 & 1;
          LOBYTE(v0) = v1;
          result = GridLayout.Cache.resize(at:proposal:)(v138, v151, v147 & 1, v150, v149 & 1);
          v2 = v206;
        }

        while (v125 != v8);
      }

      v118 = *(v1 + 104);
      v119 = *(v118 + 16);
      if (v119)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v118);
          v118 = result;
        }

        v120 = 72;
        do
        {
          v121 = (v118 + v120);
          *v121 = 0;
          v121[1] = 0;
          v121[2] = 0;
          v120 += 64;
          --v119;
        }

        while (v119);
        *(v1 + 104) = v118;
      }

      v0 = *(v1 + 112);
      v122 = *(v0 + 16);
      if (v122)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
          v0 = result;
        }

        v123 = 72;
        do
        {
          v124 = (v0 + v123);
          *v124 = 0;
          v124[1] = 0;
          v124[2] = 0;
          v123 += 64;
          --v122;
        }

        while (v122);
        *(v1 + 112) = v0;
      }

      v5 = v8;
      v6 = v207;
      if (!v205)
      {
      }
    }

    v205 = 0;
    v8 = v5;
LABEL_64:
    if (v6 < v8)
    {
      goto LABEL_338;
    }

    if (v8 == v6)
    {
      goto LABEL_98;
    }

    v204 = *(v1 + 136);
    v37 = v8;
    while (v37 < v6)
    {
      if (v37 >= *(v2 + 16))
      {
        goto LABEL_313;
      }

      v38 = v208 + (v37 << 6);
      v39 = *v38;
      if ((*v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_314;
      }

      if (v39 >= *(v204 + 16))
      {
        goto LABEL_315;
      }

      v40 = (v204 + 32 + 104 * v39);
      v2 = *v40;
      v41 = v40[2];
      if (v41 < v2)
      {
        goto LABEL_316;
      }

      v42 = *(v38 + 24);
      v43 = v40[1];
      v44 = v40[3];
      if (v41 == v2)
      {
        v6 = v207;
      }

      else
      {
        v45 = *(v38 + 16);
        v0 = *(v1 + 104);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
          v0 = result;
        }

        v46 = v45 / (v41 - v2);
        v47 = (v2 << 6) + 72;
        v48 = v41 - v2;
        v49 = v2;
        v6 = v207;
        do
        {
          if (v49 >= v41)
          {
            goto LABEL_294;
          }

          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_295;
          }

          if (*(v0 + 16) <= v49)
          {
            goto LABEL_296;
          }

          if (v46 < *(v0 + v47))
          {
            *(v0 + v47) = v46;
          }

          v47 += 64;
          ++v49;
          --v48;
        }

        while (v48);
        *(v1 + 104) = v0;
      }

      v2 = v206;
      if (v44 < v43)
      {
        goto LABEL_317;
      }

      if (v44 != v43)
      {
        v0 = *(v1 + 112);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
          v0 = result;
        }

        v50 = v42 / (v44 - v43);
        v51 = (v43 << 6) + 72;
        v52 = v44 - v43;
        v53 = v43;
        do
        {
          if (v53 >= v44)
          {
            goto LABEL_297;
          }

          if ((v43 & 0x80000000) != 0)
          {
            goto LABEL_298;
          }

          if (*(v0 + 16) <= v53)
          {
            goto LABEL_299;
          }

          if (v50 < *(v0 + v51))
          {
            *(v0 + v51) = v50;
          }

          v51 += 64;
          ++v53;
          --v52;
        }

        while (v52);
        *(v1 + 112) = v0;
      }

      if (++v37 == v6)
      {
        goto LABEL_98;
      }
    }

LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
LABEL_317:
    __break(1u);
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    __break(1u);
LABEL_323:
    __break(1u);
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_7SwiftUI11GeneralItem33_69F00159ECCD7162D5EDC19B53BBB085LLVs5NeverOTg503_s7d42UI10GridLayoutV5CacheV13sizeGenerally33_69hijklm9LLyyFAA11fG12AGLLVSiXEfU_AG0qR0V0T0VAG4AxisO3SetVTf1cn_n(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v36 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_33;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v39 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if (a2 < v36 || v4 < 0)
  {
    goto LABEL_34;
  }

  v5 = v39;
  v38 = 104 * v36 + 112;
  v33 = a3;
  v34 = a2 - 1;
  for (i = v36; ; ++i)
  {
    result = LayoutSubviews.subscript.getter();
    if (v36 < 0)
    {
      break;
    }

    v9 = *(a3 + 136);
    if (i >= *(v9 + 16))
    {
      goto LABEL_32;
    }

    v10 = *a4;
    v37 = *(v9 + v38);
    LayoutProxy.layoutPriority.getter();
    v12 = v11;
    static ProposedViewSize.zero.getter();
    LayoutSubview.sizeThatFits(_:)();
    v14 = v13;
    v16 = v15;
    static ProposedViewSize.infinity.getter();
    LayoutSubview.sizeThatFits(_:)();
    if (v10 == 1)
    {
      v28 = v14;
      goto LABEL_23;
    }

    if (v10 != 3)
    {
      v17 = v18;
      v28 = v16;
LABEL_23:
      v20 = v17 - v28;
      v29 = fabs(v17 - v28);
      v26 = -v28;
      v27 = 0.0;
      if (v29 >= 0x7FF0000000000000)
      {
        v24 = -v28;
      }

      else
      {
        v24 = 0.0;
      }

      goto LABEL_26;
    }

    v19 = v14 + v16;
    v20 = v17 + v18 - (v14 + v16);
    v21 = fabs(v20);
    v22 = v17 - v14;
    v23 = v18 - v16;
    if (v23 < v22)
    {
      v22 = v23;
    }

    if (v21 >= 0x7FF0000000000000)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL || v21 <= 0x7FEFFFFFFFFFFFFFLL;
    v26 = -v19;
    if (v25)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = -v19;
    }

LABEL_26:
    v31 = *(v39 + 16);
    v30 = *(v39 + 24);
    if (v31 >= v30 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
    }

    LODWORD(v26) = v37 & v10;
    *(v39 + 16) = v31 + 1;
    v32 = v39 + (v31 << 6);
    *(v32 + 32) = i;
    *(v32 + 40) = v12;
    *(v32 + 48) = v14;
    *(v32 + 56) = v16;
    *(v32 + 64) = v20;
    *(v32 + 72) = v24;
    *(v32 + 80) = v27;
    *(v32 + 88) = vaddlv_u8(vcnt_s8(*&v26));
    if (v34 == i)
    {
      return v5;
    }

    v38 += 104;
    a3 = v33;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t Text.accessibilityLabel<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = Text.accessibilityLabel(_:)(v4, v5, v7 & 1, v9);
  outlined consume of Text.Storage(v4, v6, v8 & 1);

  return v10;
}

uint64_t Text.accessibilityLabel(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  Text.assertUnstyled(_:options:)();
  type metadata accessor for AccessibilityTextModifier();
  v8 = swift_allocObject();
  *(v8 + 16) = 1800;
  *(v8 + 18) = 2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3 & 1;
  *(v8 + 48) = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  outlined copy of Text?(a1, a2, a3 & 1, a4);
  v9 = Text.modified(with:)();

  outlined consume of Text?(a1, a2, a3 & 1, a4);
  return v9;
}

uint64_t assignWithTake for GridLayout.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance GridLayout(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v28) = a3 & 1;
  v24[0] = a5 & 1;
  GridLayout.Cache.setProposal(_:)(a2, a3 & 1, a4, a5 & 1);
  v11 = *(a8 + 112);
  v34 = *(a8 + 96);
  v35 = v11;
  v36 = *(a8 + 128);
  v37 = *(a8 + 144);
  v12 = *(a8 + 48);
  v30 = *(a8 + 32);
  v31 = v12;
  v13 = *(a8 + 80);
  v32 = *(a8 + 64);
  v33 = v13;
  v14 = *(a8 + 16);
  v28 = *a8;
  v29 = v14;
  AlignmentKey.id.getter();
  v15 = *(&v36 + 1);
  v16 = swift_allocObject();
  v17 = v35;
  *(v16 + 120) = v34;
  *(v16 + 136) = v17;
  *(v16 + 152) = v36;
  v18 = v31;
  *(v16 + 56) = v30;
  *(v16 + 72) = v18;
  v19 = v33;
  *(v16 + 88) = v32;
  *(v16 + 104) = v19;
  v20 = v29;
  *(v16 + 24) = v28;
  *(v16 + 16) = a1;
  *(v16 + 168) = v37;
  *(v16 + 40) = v20;
  v25 = v15;
  v26 = closure #1 in GridLayout.Cache.alignment(of:)partial apply;
  v27 = v16;
  outlined init with copy of GridLayout.Cache(&v28, v24);
  type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>();
  lazy protocol witness table accessor for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>();
  v21 = COERCE_DOUBLE(static AlignmentID.combineExplicit<A>(_:)());
  LOBYTE(a8) = v22;

  if (a8)
  {
    *&result = v21;
  }

  else
  {
    *&result = v21 + a6;
  }

  return result;
}

void type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>)
  {
    type metadata accessor for VerticalAlignment?(255, &lazy cache variable for type metadata for [GridLayout.Cache.Cell], &type metadata for GridLayout.Cache.Cell, MEMORY[0x1E69E62F8]);
    type metadata accessor for VerticalAlignment?(255, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type [GridLayout.Cache.Cell] and conformance [A]();
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>)
  {
    type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for GridLayout.Cache.Cell(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t storeEnumTagSinglePayload for _ToolbarItemList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in GridLayout.Cache.alignment(of:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *a1;
  v7 = *(a1 + 1);
  v9 = a1[11];
  v10 = a1[12];
  *&result = COERCE_DOUBLE(MEMORY[0x18D004E50](a2));
  if (v12)
  {
LABEL_12:
    *a4 = *&result;
    *(a4 + 8) = v12 & 1;
    return result;
  }

  if ((v8 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(a3 + 104);
  if (*(v13 + 16) <= v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 & 0x80000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = *(a3 + 112);
  if (*(v14 + 16) > v7)
  {
    v15 = *(v13 + (v8 << 6) + 56);
    if (v5)
    {
      v16 = v10;
    }

    else
    {
      v16 = v9;
    }

    if (v5)
    {
      v15 = *(v14 + (v7 << 6) + 56);
    }

    *&result = v16 + v15 + *&result;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance GridLayout(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v39[0]) = a2 & 1;
  LOBYTE(v30[0]) = a4 & 1;
  GridLayout.Cache.setProposal(_:)(a1, a2 & 1, a3, a4 & 1);
  v11 = *(a8 + 112);
  v12 = *(a8 + 80);
  v35 = *(a8 + 96);
  v36 = v11;
  v13 = *(a8 + 112);
  v37 = *(a8 + 128);
  v14 = *(a8 + 48);
  v15 = *(a8 + 16);
  v31 = *(a8 + 32);
  v32 = v14;
  v16 = *(a8 + 48);
  v17 = *(a8 + 80);
  v33 = *(a8 + 64);
  v34 = v17;
  v18 = *(a8 + 16);
  v30[0] = *a8;
  v30[1] = v18;
  v26 = v35;
  v27 = v13;
  v28 = *(a8 + 128);
  v22 = v31;
  v23 = v16;
  v24 = v33;
  v25 = v12;
  v38 = *(a8 + 144);
  v29 = *(a8 + 144);
  v20 = v30[0];
  v21 = v15;
  outlined init with copy of GridLayout.Cache(v30, v39);
  GridLayout.Cache.placeSubviews(at:)(__PAIR128__(*&a6, *&a5));
  v39[6] = v26;
  v39[7] = v27;
  v39[8] = v28;
  v40 = v29;
  v39[2] = v22;
  v39[3] = v23;
  v39[4] = v24;
  v39[5] = v25;
  v39[0] = v20;
  v39[1] = v21;
  return outlined destroy of GridLayout.Cache(v39);
}

Swift::Void __swiftcall GridLayout.Cache.placeSubviews(at:)(CGPoint at)
{
  v2 = v1[17];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v6 = v1[13];
    v5 = v1[14];
    for (i = v2 + 64; ; i += 104)
    {
      v8 = *(i - 32);
      if ((v8 & 0x80000000) != 0)
      {
        break;
      }

      if (*(v6 + 16) <= v8)
      {
        goto LABEL_10;
      }

      v9 = *(i - 28);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      if (*(v5 + 16) <= v9)
      {
        goto LABEL_12;
      }

      v10 = v4 + 1;
      LayoutSubviews.subscript.getter();

      default argument 1 of LayoutSubview.place(at:anchor:dimensions:)();
      LayoutSubview.place(at:anchor:dimensions:)();

      v4 = v10;
      if (v3 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance GridLayout(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  LOBYTE(v29) = a3 & 1;
  v25[0] = a5 & 1;
  GridLayout.Cache.setProposal(_:)(a2, a3 & 1, a4, a5 & 1);
  v12 = *(a9 + 112);
  v35 = *(a9 + 96);
  v36 = v12;
  v37 = *(a9 + 128);
  v38 = *(a9 + 144);
  v13 = *(a9 + 48);
  v31 = *(a9 + 32);
  v32 = v13;
  v14 = *(a9 + 80);
  v33 = *(a9 + 64);
  v34 = v14;
  v15 = *(a9 + 16);
  v29 = *a9;
  v30 = v15;
  AlignmentKey.id.getter();
  v16 = *(&v37 + 1);
  v17 = swift_allocObject();
  v18 = v36;
  *(v17 + 120) = v35;
  *(v17 + 136) = v18;
  *(v17 + 152) = v37;
  v19 = v32;
  *(v17 + 56) = v31;
  *(v17 + 72) = v19;
  v20 = v34;
  *(v17 + 88) = v33;
  *(v17 + 104) = v20;
  v21 = v30;
  *(v17 + 24) = v29;
  *(v17 + 16) = a1;
  *(v17 + 168) = v38;
  *(v17 + 40) = v21;
  v26 = v16;
  v27 = closure #1 in GridLayout.Cache.alignment(of:)partial apply;
  v28 = v17;
  outlined init with copy of GridLayout.Cache(&v29, v25);
  type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>();
  lazy protocol witness table accessor for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>();
  v22 = COERCE_DOUBLE(static AlignmentID.combineExplicit<A>(_:)());
  LOBYTE(a9) = v23;

  if (a9)
  {
    *&result = v22;
  }

  else
  {
    *&result = v22 + a7;
  }

  return result;
}

uint64_t GridLayout.Cache.proposal(for:in:includeAvailable:)(char a1, unint64_t a2, unint64_t a3, char a4)
{
  v8 = v4[13];
  v9 = v4[14];
  v11 = v4[15];
  v10 = v4[16];
  v12 = a1 & 1;
  *&result = COERCE_DOUBLE(ProposedViewSize.subscript.getter());
  if (v14)
  {
    goto LABEL_64;
  }

  if (*&result == INFINITY)
  {
    return result;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  v15 = v8;
  if (a3 < a2)
  {
    __break(1u);
LABEL_6:
    v15 = v9;
    a2 >>= 32;
    a3 >>= 32;
    if (a3 < a2)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v16 = v9;
  v17 = v8;
  v18 = a4;
  v19 = *(v15 + 16);
  if (v19 <= a2)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v20 = *(v15 + (a2 << 6) + 64);
  *&result = COERCE_DOUBLE(specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a2, 1, a3, a2 | (a3 << 32)));
  if ((result & 0x100000000) != 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = result;
  }

  v22 = a3 - v21;
  if (a3 < v21)
  {
    goto LABEL_59;
  }

  if (a3 != v21)
  {
    v23 = v21;
    if (v19 <= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v19;
    }

    v25 = (v15 + (v21 << 6) + 64);
    while (v23 < a3)
    {
      if (v21 < 0)
      {
        goto LABEL_55;
      }

      if (v24 == v23)
      {
        goto LABEL_56;
      }

      v26 = *(v25 - 4);
      v27 = *v25;
      v25 += 8;
      v20 = v20 + v26 + v27;
      ++v23;
      if (!--v22)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_22:
  if (v12)
  {
    v28 = v10;
  }

  else
  {
    v28 = v11;
  }

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = (v28 + 40);
    v31 = v20;
    do
    {
      v32 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;
      v30 += 3;
      v35 = v34;
      v37 = v32 < a2 || a3 < v33;
      v38 = v31 + v35;
      if (!v37)
      {
        v31 = v38;
      }

      --v29;
    }

    while (v29);
  }

  if (v18)
  {
    v39 = v12 ? v16 : v17;
    v40 = 0.0;
    if (a2 != a3)
    {
      if (a3 < a2)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v41 = a2;
      v42 = *(v39 + 16);
      v43 = ~a2 + a3;
      v44 = v42 >= a2;
      v45 = v42 - a2;
      if (!v44)
      {
        v45 = 0;
      }

      if (v43 >= v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = ~a2 + a3;
      }

      if (v46 >= (a3 - a2))
      {
        goto LABEL_62;
      }

      if (v45 <= v43)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        return result;
      }

      v47 = (v39 + (a2 << 6) + 80);
      do
      {
        v40 = v40 + *v47;
        if (a2 < v41)
        {
          v40 = v40 + *(v47 - 6);
        }

        ++v41;
        v47 += 8;
      }

      while (a3 != v41);
    }
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (((a3 ^ result) & 0x80000000) != 0)
  {
    if ((result & 0x80000000) == 0)
    {
      v5 = result;
    }

    else
    {
      v5 = -result;
    }

    if (a3 >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = -a3;
    }

    v7 = __CFADD__(v5, v6);
    v4 = (v5 + v6);
    if (v7)
    {
      goto LABEL_33;
    }

    if ((result & 0x80000000) == 0)
    {
      v4 = -v4;
    }

    if (a2 > 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    LODWORD(v4) = a3 - result;
    if (__OFSUB__(a3, result))
    {
      __break(1u);
      goto LABEL_28;
    }

    v4 = v4;
    if (a2 > 0)
    {
LABEL_4:
      if (v4 < 0 || v4 >= a2)
      {
        goto LABEL_20;
      }

LABEL_19:
      LODWORD(v8) = 0;
      v9 = 1;
      return v8 | (v9 << 32);
    }
  }

  if (v4 <= 0 && v4 > a2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v8 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v8 >= a4)
  {
    if (SHIDWORD(a4) >= v8)
    {
      v9 = 0;
      return v8 | (v9 << 32);
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t GridLayout.Cache.resize(at:proposal:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a1;
  v17 = *(v6 + 136);
  if (*(v17 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_8;
  }

  v19 = v17 + 104 * a1;
  v20 = *(v19 + 32);
  v21 = *(v19 + 64);
  v44[1] = *(v19 + 48);
  v45 = v21;
  v44[0] = v20;
  v22 = *(v19 + 80);
  v23 = *(v19 + 96);
  v24 = *(v19 + 112);
  v49 = *(v19 + 128);
  v47 = v23;
  v48 = v24;
  v46 = v22;
  v42 = v45;
  v43 = v22;
  v38 = v17;
  outlined init with copy of GridLayout.Cache.Cell(v44, &v39);
  ViewSize.proposal.getter();
  ProposedViewSize.init(_:)();
  outlined destroy of GridLayout.Cache.Cell(v44);
  v26 = a3 & 1;
  LOBYTE(v39) = v26;
  LOBYTE(v42) = a5 & 1;
  result = static ProposedViewSize.== infix(_:_:)();
  if (result)
  {
    return result;
  }

  v5 = v6;
  v28 = *(v6 + 56);
  v29 = *(v6 + 64);
  v30 = *(v6 + 65);
  LODWORD(v42) = *(v6 + 48);
  *(&v42 + 1) = v28;
  LOBYTE(v43) = v29;
  BYTE1(v43) = v30;
  LayoutSubviews.subscript.getter();
  LOBYTE(v39) = v26;
  v31 = LayoutSubview.dimensions(in:)();
  v10 = *(&v39 + 1);
  v9 = v39;
  v14 = *(&v40 + 1);
  v13 = v40;
  v16 = *(&v41 + 1);
  v15 = v41;
  v39 = v40;
  v40 = v41;
  v32 = MEMORY[0x18D00B390](v31);
  v8 = v38;
  if (*(v38 + 16) <= v7)
  {
    goto LABEL_16;
  }

  v12 = v33;
  v11 = v34;
  v39 = *(v19 + 64);
  v40 = *(v19 + 80);
  if (MEMORY[0x18D00B390](v32) == v33 && v35 == v11)
  {
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (*(v8 + 16) <= v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  v36 = (v8 + 104 * v7);
  v36[6] = v9;
  v36[7] = v10;
  v36[8] = v13;
  v36[9] = v14;
  v36[10] = v15;
  v36[11] = v16;

  *(v5 + 136) = v8;
  if (*(v8 + 16) <= v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = GridLayout.Cache.resize(axis:size:in:)(0, v36[4], v36[5], v12);
  v37 = *(v5 + 136);
  if (*(v37 + 16) <= v7)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  GridLayout.Cache.resize(axis:size:in:)(1uLL, *(v37 + 104 * v7 + 32), *(v37 + 104 * v7 + 40), v11);
}

uint64_t outlined init with copy of GridLayout.Cache.Cell(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);

  return a2;
}

unint64_t GridLayout.Cache.resize(axis:size:in:)(unint64_t result, unint64_t a2, unint64_t a3, double a4)
{
  v10 = a4;
  v11 = a3;
  if ((result & 1) == 0)
  {
    LODWORD(v12) = a2;
    LODWORD(v13) = a3;
    if (a3 >= a2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  if (SHIDWORD(a3) < SHIDWORD(a2))
  {
    goto LABEL_90;
  }

LABEL_5:
  if (__OFSUB__(v13, v12))
  {
    goto LABEL_89;
  }

  v4 = (result & 1);
  if (v13 - v12 != 1)
  {
    v7 = *(v5 + 15);
    v8 = *(v5 + 16);
    if (result)
    {
      if (SHIDWORD(a3) < SHIDWORD(a2))
      {
        goto LABEL_97;
      }

      v26 = v5 + 112;
      a2 >>= 32;
      v11 = HIDWORD(a3);
    }

    else
    {
      if (a3 < a2)
      {
        goto LABEL_96;
      }

      v26 = v5 + 104;
    }

    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v27 = *v26;
    v6 = a2;
    v28 = *(*v26 + 16);
    if (v28 <= a2)
    {
      goto LABEL_94;
    }

    v9 = *(v27 + (a2 << 6) + 64);
    result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a2, 1, v11, a2 | (v11 << 32));
    if ((result & 0x100000000) != 0)
    {
      v29 = v11;
    }

    else
    {
      v29 = result;
    }

    v30 = v11 - v29;
    if (v11 < v29)
    {
      goto LABEL_95;
    }

    if (v11 != v29)
    {
      v31 = v29;
      if (v28 <= v29)
      {
        v32 = v29;
      }

      else
      {
        v32 = v28;
      }

      v33 = (v27 + (v29 << 6) + 64);
      while (v31 < v11)
      {
        if (v29 < 0)
        {
          goto LABEL_85;
        }

        if (v32 == v31)
        {
          goto LABEL_86;
        }

        v34 = *(v33 - 4);
        v35 = *v33;
        v33 += 8;
        v9 = v9 + v34 + v35;
        ++v31;
        if (!--v30)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_50:
    if (v4)
    {
      v36 = v8;
    }

    else
    {
      v36 = v7;
    }

    v37 = v36[2];
    if (v37)
    {
      v38 = v36 + 5;
      do
      {
        v39 = *(v38 - 2);
        v40 = *(v38 - 1);
        v41 = *v38;
        v38 += 3;
        v42 = v41;
        if (v39 <= v6)
        {
          v39 = v6;
        }

        if (v40 >= v11)
        {
          v40 = v11;
        }

        v43 = v9 + v42;
        if (v39 < v40)
        {
          v9 = v43;
        }

        --v37;
      }

      while (v37);
    }

    v10 = v10 - v9;
    if (v10 <= 0.0)
    {
      return result;
    }

    v4 = GridLayout.Cache.subscript.modify();
    v11 = v44;
    v5 = *v44;
    v45 = *(*v44 + 16);
    if (!v45)
    {
LABEL_70:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v11 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_71:
        v50 = *(v5 + 2);
        v49 = *(v5 + 3);
        if (v50 >= v49 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v5);
          *v11 = v5;
        }

        *(v5 + 2) = v50 + 1;
        v51 = &v5[24 * v50];
        *(v51 + 8) = v12;
        *(v51 + 9) = v13;
        *(v51 + 5) = v10;
        *(v51 + 6) = 0;
        return v4(v53, 0);
      }

LABEL_100:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      *v11 = v5;
      goto LABEL_71;
    }

    v46 = 0;
    v7 = 0;
    while (*&v5[v46 + 32] != v12 || *&v5[v46 + 36] != v13)
    {
      v7 = (v7 + 1);
      v46 += 24;
      if (v45 == v7)
      {
        goto LABEL_70;
      }
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v5;
    if ((v52 & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      *v11 = v5;
    }

    if (v7 < *(v5 + 2))
    {
      *&v5[v46 + 40] = v10 + *&v5[v46 + 40];
      return v4(v53, 0);
    }

    __break(1u);
LABEL_102:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    v11 = result;
    *v5 = result;
LABEL_79:
    if (v7 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v11 + 24 * v7 + 40) = *(v11 + 24 * v7 + 40) - v10;
      if (v7 < *(*v5 + 16))
      {
        *(*v5 + 24 * v7 + 48) = v10 + *(*v5 + 24 * v7 + 48);
        return v4(v53, 0);
      }
    }

    __break(1u);
    return result;
  }

  v14 = (v5 + 104);
  if (result)
  {
    v14 = (v5 + 112);
  }

  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_91;
  }

  v15 = *v14;
  v8 = v12;
  if (*(v15 + 16) <= v12)
  {
    goto LABEL_92;
  }

  v9 = *(v15 + (v12 << 6) + 64);
  if (v9 < a4)
  {
    v11 = GridLayout.Cache.subscript.modify();
    v7 = v16;
    v6 = *v16;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v6;
    if ((v17 & 1) == 0)
    {
      goto LABEL_98;
    }

    while (*(v6 + 16) > v8)
    {
      *(v6 + (v8 << 6) + 64) = v10;
      (v11)(v53, 0);
      v6 = v53;
      v4 = GridLayout.Cache.subscript.modify();
      v11 = *v18;
      v8 = *(*v18 + 16);
      if (!v8)
      {
        return v4(v53, 0);
      }

      v5 = v18;
      v7 = 0;
      v10 = v10 - v9;
      while (v7 < *(v11 + 16))
      {
        v19 = (v11 + 24 * v7);
        v21 = *(v19 + 8);
        v22 = *(v19 + 9);
        v20 = v19 + 32;
        if (v12 > v21)
        {
          v21 = v12;
        }

        if (v13 < v22)
        {
          v22 = v13;
        }

        if (v21 >= v22)
        {
          v7 = (v7 + 1);
          if (v7 >= v8)
          {
            return v4(v53, 0);
          }
        }

        else
        {
          v9 = *(v20 + 1);
          if (v10 < v9)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            *v5 = v11;
            if ((result & 1) == 0)
            {
              goto LABEL_102;
            }

            goto LABEL_79;
          }

          v23 = swift_isUniquelyReferenced_nonNull_native();
          *v5 = v11;
          if ((v23 & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            *v5 = v11;
          }

          v24 = *(v11 + 16);
          if (v7 >= v24)
          {
            goto LABEL_88;
          }

          v10 = v10 - v9;
          v25 = v24 - 1;
          memmove((v11 + 24 * v7 + 32), (v11 + 24 * v7 + 56), 24 * (v24 - 1 - v7));
          *(v11 + 16) = v25;
          *v5 = v11;
          if (v10 <= 0.0)
          {
            return v4(v53, 0);
          }

          if (v7 >= --v8)
          {
            return v4(v53, 0);
          }
        }
      }

LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      *v7 = v6;
    }

    __break(1u);
    goto LABEL_100;
  }

  return result;
}