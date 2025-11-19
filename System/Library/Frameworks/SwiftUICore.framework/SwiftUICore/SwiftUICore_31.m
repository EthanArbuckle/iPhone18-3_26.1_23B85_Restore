double key path getter for EnvironmentValues.openURL : EnvironmentValues@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues._openURL.getter(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for EnvironmentPropertyKey();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013OpenURLActionV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013OpenURLActionV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t EnvironmentValues.resolvedDefaultOpenURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  swift_beginAccess();
  v5 = static OpenURLAction.defaultAction;
  v6 = qword_1ED538190;
  v7 = unk_1ED538198;
  v8 = word_1ED5381A0;
  if (word_1ED5381A0 == 0xFF)
  {
    if (v3)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v4, &v20);

      v9 = v23;
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>);
      BloomFilter.init(hashValue:)(v10);
      v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(v4, v20);
      v12 = closure #1 in static OpenURLAction.invalidAction.getter;
      if (!v11)
      {
        goto LABEL_8;
      }

      v13 = v11[10];
      v14 = v11[11];
      v15 = v11[12];
      v9 = *(v11 + 52);
      v20 = v11[9];
      *&v21 = v13;
      *(&v21 + 1) = v14;
      v22 = v15;
      outlined copy of OpenURLAction?(v20, v13, v14, v15, v9);
    }

    v12 = closure #1 in static OpenURLAction.invalidAction.getter;
    if (v9 != 0xFF)
    {
      v16 = v22;
      v18 = v21;
      v17 = (v9 >> 8) & 1;
      v12 = v20;
      goto LABEL_10;
    }

LABEL_8:
    v16 = 0;
    LOBYTE(v17) = 0;
    v18 = 0uLL;
    LOBYTE(v9) = 1;
LABEL_10:
    *a1 = v12;
    *(a1 + 8) = v18;
    *(a1 + 24) = v16;
    *(a1 + 32) = v9 & 1;
    *(a1 + 33) = v17;
    return outlined copy of OpenURLAction?(v5, *(&v5 + 1), v6, v7, v8);
  }

  *a1 = static OpenURLAction.defaultAction;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8 & 1;
  *(a1 + 33) = HIBYTE(v8) & 1;
  return outlined copy of OpenURLAction?(v5, *(&v5 + 1), v6, v7, v8);
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static _ViewListOutputs.groupViewList<A, B>(parent:footer:inputs:body:)@<X0>(unsigned int *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v55 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  outlined init with copy of _ViewListInputs(a3, v49);
  v15 = *(a3 + 56);
  if ((v15 & 0x1000) == 0 && (v51 & 0x108) != 0)
  {
    v51 &= 0xFFFFFFFFFFFFFEF7;
  }

  if ((v15 & 4) != 0)
  {
    LODWORD(v39) = *(a3 + 64);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type SectionedTrait and conformance SectionedTrait();
    v52 = Attribute.init<A>(body:value:flags:update:)();
    if (v53)
    {
      v39 = v53;
      v40 = v54 & 1;
      v53 = 0;
      v54 = 0;
      specialized Set._Variant.insert(_:)(&v46, &type metadata for IsSectionedTraitKey);

      v53 = v39;
      v54 = v40;
    }
  }

  outlined init with copy of _ViewListInputs(v49, &v39);
  if ((v15 & 8) != 0)
  {
    if ((v42 & 0x10) == 0)
    {
      v42 |= 0x10uLL;
    }

    LODWORD(v46) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type SectionHeaderTrait and conformance SectionHeaderTrait();
    v43 = Attribute.init<A>(body:value:flags:update:)();
    if (v44)
    {
      v46 = v44;
      v47 = v45 & 1;
      v44 = 0;
      v45 = 0;
      specialized Set._Variant.insert(_:)(v38, &type metadata for IsSectionHeaderTraitKey);
      v16 = v46;
      v17 = v47;

      v44 = v16;
      v45 = v17;
    }
  }

  if ((v15 & 0x20) != 0)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v18 = static StyleContextInput.defaultValue;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v39, v18, *(&v18 + 1));
  }

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v38[0]) = v14;
  (*(a7 + 32))(&v46, v38, &v39, a5, a7);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v14, a5, a7);
  v50 = v48;
  v20 = v51;
  if ((v51 & 0x10000) != 0)
  {
    _ViewListInputs.updateContentOffset(outputs:)(&v46);
  }

  v21 = outlined destroy of _ViewListInputs(&v39);
  if ((v15 & 4) != 0)
  {
    LODWORD(v39) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type DepthTrait and conformance DepthTrait();
    v21 = Attribute.init<A>(body:value:flags:update:)();
    v52 = v21;
    if (v53)
    {
      v39 = v53;
      v40 = v54 & 1;
      v53 = 0;
      v54 = 0;
      specialized Set._Variant.insert(_:)(v38, &type metadata for DepthTraitKey);
      v22 = v39;
      v23 = v40;

      v53 = v22;
      v54 = v23;
    }
  }

  a4(v38, v21, v49);
  v50 = v38[6];
  if ((v20 & 0x10000) != 0)
  {
    _ViewListInputs.updateContentOffset(outputs:)(v38);
  }

  outlined init with copy of _ViewListInputs(v49, &v39);
  if ((v15 & 8) != 0)
  {
    if ((v42 & 8) != 0)
    {
      v42 &= ~8uLL;
    }

    LODWORD(v35) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type SectionFooterTrait and conformance SectionFooterTrait();
    v43 = Attribute.init<A>(body:value:flags:update:)();
    if (v44)
    {
      v35 = v44;
      v36 = v45 & 1;
      v44 = 0;
      v45 = 0;
      specialized Set._Variant.insert(_:)(&v33, &type metadata for IsSectionFooterTraitKey);
      v24 = v35;
      v25 = v36;

      v44 = v24;
      v45 = v25;
    }
  }

  if ((v15 & 0x40) != 0)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v26 = static StyleContextInput.defaultValue;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v39, v26, *(&v26 + 1));
  }

  _GraphValue.init(_:)(a2, &v33);
  v27 = v33;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v34 = v27;
  (*(a9 + 32))(&v35, &v34, &v39, a6, a9);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v27, a6, a9);
  outlined destroy of _ViewListInputs(&v39);
  v28 = v37;
  v50 = v37;
  type metadata accessor for _ContiguousArrayStorage<_ViewListOutputs>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewListOutputs>, &type metadata for _ViewListOutputs, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_18DDAF080;
  outlined init with copy of _ViewListOutputs(&v46, v29 + 32);
  outlined init with copy of _ViewListOutputs(v38, v29 + 104);
  outlined init with copy of _ViewListOutputs(&v35, v29 + 176);
  if ((v15 & 0x100) != 0)
  {
    static _ViewListOutputs.sectionListOutputs(_:inputs:)(v29, a3, a8);
  }

  else
  {
    outlined init with copy of _ViewListInputs(a3, &v39);
    v41 = v28;
    static _ViewListOutputs.concat(_:inputs:)(v29, &v39, a8);

    outlined destroy of _ViewListInputs(&v39);
  }

  outlined destroy of _ViewListOutputs(&v35);
  outlined destroy of _ViewListOutputs(v38);
  outlined destroy of _ViewListOutputs(&v46);
  return outlined destroy of _ViewListInputs(v49);
}

unint64_t lazy protocol witness table accessor for type SectionedTrait and conformance SectionedTrait()
{
  result = lazy protocol witness table cache variable for type SectionedTrait and conformance SectionedTrait;
  if (!lazy protocol witness table cache variable for type SectionedTrait and conformance SectionedTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionedTrait and conformance SectionedTrait);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RequiresSourceModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  outlined init with copy of _ViewListInputs(a2, v7);
  v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v7[0]);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v7, v4 | 1);

  a3(v5, v7);
  return outlined destroy of _ViewListInputs(v7);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for CountViewsOptions);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17CountViewsOptions33_0A5F33F1FD54F6946F5E3F1CF78D7A25LLV_Tt0B5(a1, v3);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17CountViewsOptions33_0A5F33F1FD54F6946F5E3F1CF78D7A25LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17CountViewsOptions33_0A5F33F1FD54F6946F5E3F1CF78D7A25LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for CountViewsOptions)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for CountViewsOptions);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17CountViewsOptions33_0A5F33F1FD54F6946F5E3F1CF78D7A25LLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<CountViewsOptions>, &type metadata for CountViewsOptions, &protocol witness table for CountViewsOptions, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for CountViewsOptions, 0, v6);
  }

  return result;
}

uint64_t _ViewListInputs.pushModifierBody<A>(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v6 = 1;
  v3 = type metadata accessor for BodyInput();
  return _GraphInputs.append<A, B>(_:to:)(v5, v3, v3, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, &protocol witness table for BodyInputElement);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CountViews<A, B>.MakeDynamicContent()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for CountViews<A, B>.MakeDynamicContent(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *specialized _NativeSet.copy()(unint64_t *a1)
{
  v2 = v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t ChildValueTransaction.value.getter(void *a1, unint64_t a2)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v3 = HIDWORD(a2);
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v43 - v11;
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = *AGGraphGetValue();
  v56[0] = v17;

  v18 = AGGraphClearUpdate();
  v19 = *AGGraphGetValue();
  AGGraphSetUpdate();
  v20 = *AGGraphGetValue();
  v51 = v19;
  if (v20 != v19)
  {
    return v17;
  }

  v47 = v3;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(*(v21 + 2));
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(*(v21 + 2), v23);
    v55 = type metadata accessor for ObservationCenter();
    *&v54 = *(v21 + 3);
    outlined init with take of Any(&v54, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v52[0];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_25;
  }

  v44 = CurrentAttribute;
  swift_beginAccess();
  v46 = v24[3];
  v24[3] = MEMORY[0x1E69E7CC0];
  v26 = (*(v5 + 7))(v16, 1, 1, v4);
  v45 = &v43;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  MEMORY[0x1EEE9AC00](v26);
  *(&v43 - 2) = v56;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v29 = *Value;
  a1 = *(Value + 8);
  v52[0] = *Value;
  v52[1] = a1;
  if ((v30 & 2) == 0)
  {
    v29(v56);
    goto LABEL_11;
  }

  v43 = v5;
  v53 = 1;
  MEMORY[0x1EEE9AC00](Value);
  *(&v43 - 4) = &v53;
  *(&v43 - 3) = partial apply for closure #1 in closure #2 in ChildValueTransaction.value.getter;
  *(&v43 - 2) = (&v43 - 4);
  *(&v43 - 1) = v52;

  result = specialized static Update.syncMain(_:)(partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:), (&v43 - 6));
  if ((v53 & 1) == 0)
  {

    v5 = v43;
LABEL_11:
    v32 = v48;
    *(StatusReg + 848) = v18;
    outlined init with copy of ObservationTracking._AccessList?(v16, v32);
    if ((*(v5 + 6))(v32, 1, v4) != 1)
    {
      v18 = *(v5 + 4);
      v33 = v50;
      (v18)(v50, v32, v4);
      (*(v5 + 2))(v49, v33, v4);
      a1 = v24[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[3] = a1;
      v21 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

    outlined destroy of ObservationTracking._AccessList?(v16);
    v16 = v32;
    while (1)
    {
      outlined destroy of ObservationTracking._AccessList?(v16);
      v21 = v24[3];
      v38 = *(v21 + 2);
      if (v38)
      {
        v41 = *(v5 + 2);
        v39 = v5 + 16;
        v40 = v41;
        v16 = &v21[(v39[64] + 32) & ~v39[64]];
        v18 = v44;
        a1 = v24;
        v42 = *(v39 + 7);
        v50 = v21;

        do
        {
          v40(v7, v16, v4);
          specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v7);
          (*(v39 - 1))(v7, v4);
          v16 += v42;
          --v38;
        }

        while (v38);

        v21 = a1[3];
        v24 = a1;
      }

      v24[3] = v46;

      if (*AGGraphGetValue() == v51)
      {
        break;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
      v24[3] = a1;
LABEL_14:
      v36 = a1[2];
      v35 = a1[3];
      if (v36 >= v35 >> 1)
      {
        a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, a1);
      }

      a1[2] = v36 + 1;
      v37 = a1 + ((v21[80] + 32) & ~v21[80]) + *(v21 + 9) * v36;
      v5 = v21;
      (v18)(v37, v49, v4);
      v24[3] = a1;
      (*(v21 + 1))(v50, v4);
    }

    return v56[0];
  }

  __break(1u);
  return result;
}

uint64_t specialized Attribute.syncMainIfReferences<A>(do:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = a3;
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  v17[0] = *Value;
  v17[1] = v6;
  if ((v8 & 2) == 0)
  {
    return closure #1 in ChildTransaction.value.getter(v17, a2, a3);
  }

  v18 = 1;
  MEMORY[0x1EEE9AC00](Value);
  v16[2] = &v18;
  v16[3] = partial apply for closure #1 in ChildTransaction.value.getter;
  v16[4] = &v19;
  v16[5] = v17;
  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    v22 = v7;
    v23 = v6;
    result = closure #1 in ChildTransaction.value.getter(&v22, a2, a3);
    v18 = 0;
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
    *(v11 + 24) = v16;
    v12 = AGSubgraphGetCurrent();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v22 = thunk for @callee_guaranteed () -> ()partial apply;
    v23 = v11;
    v24 = v12;
    v25 = CurrentAttribute;
    v14 = one-time initialization token for _lock;

    if (v14 != -1)
    {
      swift_once();
    }

    _MovableLockSyncMain(static Update._lock, &v22, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
    v15 = v24;

    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }
  }

  if ((v18 & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = a3;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  v17[0] = *Value;
  v17[1] = v6;
  if ((v8 & 2) == 0)
  {
    return specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
  }

  v18 = 1;
  MEMORY[0x1EEE9AC00](Value);
  v16[2] = &v18;
  v16[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
  v16[4] = &v19;
  v16[5] = v17;
  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    result = specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
    v18 = 0;
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
    *(v11 + 24) = v16;
    v12 = AGSubgraphGetCurrent();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v22[0] = thunk for @callee_guaranteed () -> ()partial apply;
    v22[1] = v11;
    v23 = v12;
    v24 = CurrentAttribute;
    v14 = one-time initialization token for _lock;

    if (v14 != -1)
    {
      swift_once();
    }

    _MovableLockSyncMain(static Update._lock, v22, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
    v15 = v23;

    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }
  }

  if ((v18 & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = a3;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  v17[0] = *Value;
  v17[1] = v6;
  if ((v8 & 2) == 0)
  {
    return specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
  }

  v18 = 1;
  MEMORY[0x1EEE9AC00](Value);
  v16[2] = &v18;
  v16[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
  v16[4] = &v19;
  v16[5] = v17;
  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    result = specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
    v18 = 0;
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
    *(v11 + 24) = v16;
    v12 = AGSubgraphGetCurrent();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v22[0] = partial apply for thunk for @callee_guaranteed () -> ();
    v22[1] = v11;
    v23 = v12;
    v24 = CurrentAttribute;
    v14 = one-time initialization token for _lock;

    if (v14 != -1)
    {
      swift_once();
    }

    _MovableLockSyncMain(static Update._lock, v22, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
    v15 = v23;

    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }
  }

  if ((v18 & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = a3;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  v17[0] = *Value;
  v17[1] = v6;
  if ((v8 & 2) == 0)
  {
    return specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
  }

  v18 = 1;
  MEMORY[0x1EEE9AC00](Value);
  v16[2] = &v18;
  v16[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
  v16[4] = &v19;
  v16[5] = v17;
  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    result = specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
    v18 = 0;
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
    *(v11 + 24) = v16;
    v12 = AGSubgraphGetCurrent();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v22[0] = thunk for @callee_guaranteed () -> ()partial apply;
    v22[1] = v11;
    v23 = v12;
    v24 = CurrentAttribute;
    v14 = one-time initialization token for _lock;

    if (v14 != -1)
    {
      swift_once();
    }

    _MovableLockSyncMain(static Update._lock, v22, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
    v15 = v23;

    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }
  }

  if ((v18 & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = a3;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v17[0] = *Value;
  v17[1] = v6;
  if ((v8 & 2) != 0)
  {
    v18 = 1;
    MEMORY[0x1EEE9AC00](Value);
    v16[2] = &v18;
    v16[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
    v16[4] = &v19;
    v16[5] = v17;
    v10 = objc_opt_self();

    if ([v10 isMainThread])
    {
      result = specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3);
      v18 = 0;
    }

    else
    {
      v11 = swift_allocObject();
      *(v11 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v11 + 24) = v16;
      v12 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v22[0] = thunk for @callee_guaranteed () -> ()partial apply;
      v22[1] = v11;
      v23 = v12;
      v24 = CurrentAttribute;
      v14 = one-time initialization token for _lock;

      if (v14 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, v22, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v15 = v23;

      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
      }
    }

    if (v18)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {

    return specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3);
  }

  return result;
}

uint64_t closure #1 in ChildTransaction.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v48[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48[-v12];
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48[-v18];
  v20 = *a1;
  v21 = a1[1];
  v51 = v20;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v22 = static ObservationCenter._current;
  swift_beginAccess();
  v23 = pthread_getspecific(v22[2]);
  if (!v23)
  {
    v24 = swift_slowAlloc();
    v53 = v21;
    v25 = v6;
    v26 = a3;
    v27 = v24;
    pthread_setspecific(v22[2], v24);
    v56 = type metadata accessor for ObservationCenter();
    *&v55 = v22[3];
    outlined init with take of Any(&v55, v27);

    v23 = v27;
    a3 = v26;
    v6 = v25;
    v21 = v53;
  }

  outlined init with copy of Any(v23, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    *(v51 + 24) = v21;
    goto LABEL_9;
  }

  v49 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v19, 1, 1, v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v53 = v6;
  v31 = *(StatusReg + 848);
  *(StatusReg + 848) = v19;
  (v51)(a3);
  *(StatusReg + 848) = v31;
  v32 = v53;
  outlined init with copy of ObservationTracking._AccessList?(v19, v16);
  if ((v32[6])(v16, 1, v5) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v19);
    v19 = v16;
    goto LABEL_12;
  }

  v22 = v32[4];
  (v22)(v13, v16, v5);
  (v32[2])(v52, v13, v5);
  v21 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v28;
  *(v28 + 24) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v35 = v21[2];
  v34 = v21[3];
  if (v35 >= v34 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v21);
  }

  v21[2] = v35 + 1;
  v36 = v21 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v35;
  v32 = v53;
  (v22)(v36, v52, v5);
  v28 = v51;
  *(v51 + 24) = v21;
  (v32[1])(v13, v5);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v19);
  v37 = *(v28 + 24);
  v38 = v37[2];
  if (v38)
  {
    v41 = v32[2];
    v40 = v32 + 2;
    v39 = v41;
    v42 = v28;
    v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = v40[7];
    v45 = (v40 - 1);
    v53 = v37;

    v46 = v49;
    do
    {
      v39(v8, v43, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v46, v8);
      (*v45)(v8, v5);
      v43 += v44;
      --v38;
    }

    while (v38);

    v28 = v42;
  }

  *(v28 + 24) = v50;
}

Swift::UInt *EnvironmentValues.override(with:)(Swift::UInt *result)
{
  v2 = v1;
  value = *result;
  v4 = *v1;
  if (*v1)
  {
    if (value)
    {
      if (v4[3])
      {
        type metadata accessor for TypedElement<EmptyKey>();
        swift_allocObject();

        value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, value, v4).value;
      }

      else
      {
        v6 = v4[4];
        v7 = *(*v4 + 216);

        v9 = v7(v8, v6);

        value = v9;
      }
    }

    else
    {

      value = v4;
    }

    v5 = v4[8];
  }

  else
  {
    if (!value)
    {
      return result;
    }

    v5 = 0;
  }

  if (v5 == *(value + 64))
  {
  }

  else
  {
    if (v2[1])
    {
      PropertyList.Tracker.invalidateAllValues(from:to:)(v4, value);
    }

    *v2 = value;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018TintAdjustmentModeF033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt2B5(uint64_t *a1, int a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_8;
  }

  v5 = *(result + 72);
  if (a2 != 2 && v5 != 2)
  {
    if (((v5 ^ a2) & 1) == 0)
    {
      return result;
    }

LABEL_8:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TintAdjustmentModeKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  if (a2 != 2 || v5 != 2)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t one-time initialization function for presentation()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.presentation);
  v5 = __swift_project_value_buffer(v1, static Log.presentation);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD00000000000002BLL, 0x800000018DD83880);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SafeAreaIgnoringLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _SafeAreaIgnoringLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout()
{
  result = lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout;
  if (!lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout;
  if (!lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout);
  }

  return result;
}

_DWORD *initializeWithCopy for PreferenceBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  *(v7 + 5) = *(v8 + 5);
  *v7 = v9;
  v10 = ((v5 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v6 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v10 + v14 + 4;
  v16 = v11 + v14 + 4;
  if ((*(v13 + 48))(v16 & ~v14, 1, AssociatedTypeWitness))
  {
    if (*(v13 + 84))
    {
      v17 = *(v13 + 64);
    }

    else
    {
      v17 = *(v13 + 64) + 1;
    }

    memcpy((v15 & ~v14), (v16 & ~v14), v17);
  }

  else
  {
    (*(v13 + 16))(v15 & ~v14, v16 & ~v14, AssociatedTypeWitness);
    (*(v13 + 56))(v15 & ~v14, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t destroy for PreferenceBinder(uint64_t a1)
{
  v1 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = v1 + v4 + 4;
  v8 = v3;
  result = (*(v3 + 48))(v5 & ~v4, 1, AssociatedTypeWitness);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(v5 & ~v4, AssociatedTypeWitness);
  }

  return result;
}

_OWORD *initializeWithCopy for NamedCoordinateSpace(_OWORD *result, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v2 = *(a2 + 16);
    *result = *a2;
    result[1] = v2;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    *(v4 + 40) = 0;
    return v4;
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance AccessibilityTraits(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = *v2 & *a2;
  if (v5 != *a2)
  {
    v4 |= v3;
    *v2 = v4;
  }

  *a1 = v4;
  return v5 != v3;
}

uint64_t outlined init with copy of PreferenceValues.Entry?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t EnvironmentValues.isVisionEnabled.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(v1) & 1;
  }

  IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015IsVisionEnabledI0VG_Tt1g5(v1);

  return IsVisionEnabledI0VG_Tt1g5 & 1;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015IsVisionEnabledV0VG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t closure #1 in reduce #1 <A>(key:) in PreferenceValues.Entry.reduce(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if (v3 != -1 && v2 != 0)
  {
    if (v3)
    {
      v5 = v2 == -1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = a1;
      v7 = a2;
      v8 = merge32(_:_:)(*(a1 + 16), *(a2 + 16));
      a2 = v7;
      v2 = v8;
      a1 = v6;
    }

    *(a1 + 16) = v2;
  }

  outlined init with copy of Any(a2 + 24, &v10);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t View.overlayPreferenceValue<A, B>(_:alignment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void, void *))
{
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a2;
  v16[3] = a3;
  v15[0] = a7;
  v15[1] = a8;
  v15[2] = a10;
  v15[3] = a11;
  v13 = a12(0, v15);
  return View.modifier<A>(_:)(v16, a6, v13);
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TintAdjustmentModeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TintAdjustmentModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TintAdjustmentModeKey>>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for _SafeAreaIgnoringLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in DelayedPreferenceChild.value.getter(uint64_t (**a1)(uint64_t *))
{
  v1 = *a1;
  v3 = AGCreateWeakAttribute();
  return v1(&v3);
}

unint64_t lazy protocol witness table accessor for type DepthTrait and conformance DepthTrait()
{
  result = lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait;
  if (!lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait);
  }

  return result;
}

uint64_t static _ViewListOutputs.sectionListOutputs(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v34);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = a1 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      outlined init with copy of _ViewListOutputs(v9, &v28);
      v11 = _ViewListOutputs.makeAttribute(inputs:)(v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      *&v10[4 * v13 + 32] = v11;
      v35 = v31;
      if (v8)
      {
        outlined destroy of _ViewListOutputs(&v28);
      }

      else
      {
        v14 = v32;
        v15 = v33;
        outlined destroy of _ViewListOutputs(&v28);
        if ((v15 & 1) == 0)
        {
          v8 = 0;
          v7 += v14;
          goto LABEL_5;
        }
      }

      v7 = 0;
      v8 = 1;
LABEL_5:
      v9 += 72;
      if (!--v6)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = 0;
  v8 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v16 = *(a2 + 56);
  if ((v16 & 0x2000) != 0)
  {
    v17 = *(v10 + 2);
    if (v17)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v10, (v10 + 32), 1, (2 * v17) | 1);
      v18 = v27;
    }

    else
    {

      v18 = v10;
    }

    v28 = v18;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    v19 = type metadata accessor for ViewList();
    lazy protocol witness table accessor for type _ViewList_Group.Init and conformance _ViewList_Group.Init();
    v20 = Attribute.init<A>(body:value:flags:update:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    if (*(v10 + 2) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      *(v10 + 9) = v20;
      v21 = specialized static GraphHost.currentHost.getter();
      v22 = specialized GraphHost.intern<A>(_:for:id:)(v19, 0, v21);

      if (*(v10 + 2) >= 3uLL)
      {
        *(v10 + 10) = v22;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

LABEL_22:
  v23 = *(a2 + 64);
  v28 = v10;
  v29 = (v16 & 0x8000) != 0;
  v30 = v23;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ViewList();
  lazy protocol witness table accessor for type MakeSection and conformance MakeSection();
  v24 = Attribute.init<A>(body:value:flags:update:)();

  *a3 = v24;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  v25 = v35;
  result = outlined destroy of _ViewListInputs(v34);
  *(a3 + 48) = v25;
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type MakeSection and conformance MakeSection()
{
  result = lazy protocol witness table cache variable for type MakeSection and conformance MakeSection;
  if (!lazy protocol witness table cache variable for type MakeSection and conformance MakeSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MakeSection and conformance MakeSection);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MakeSection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);

  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ViewList_ID(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AGSubgraphRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

unint64_t ScrollAnchorStorage.init()@<X0>(uint64_t a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = result;
  *(a1 + 24) = 1;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
  v12 = v11;
  BloomFilter.init(hashValue:)(v11);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(v10, v21);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13[10];
  v15 = v13[11];
  v16 = *(v13 + 96);
  result = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt1g5(a2, *(v13 + 9));
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a5)
  {
    if (v16)
    {
      return result;
    }

LABEL_11:
    v19 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ScrollAnchorsKey>>();
    v20 = swift_allocObject();
    *(v20 + 72) = a2;
    *(v20 + 80) = *&a3;
    *(v20 + 88) = *&a4;
    *(v20 + 96) = a5 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v12, 0, v19);
  }

  if (v16)
  {
    goto LABEL_11;
  }

  if (v14 != *&a3 || v15 != *&a4)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t EnvironmentValues.scrollAnchors.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(v2, v3, v4, v5, v6);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013ScrollAnchorsK033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Ttg5(v7, *v2);
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ScrollAnchorsKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ScrollAnchorsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ScrollAnchorsKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollAnchorStorage.Role, UnitPoint>, lazy protocol witness table accessor for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t static CountViews._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59[17] = *MEMORY[0x1E69E9840];
  v11 = *a1;
  outlined init with copy of _ViewListInputs(a2, v59);
  v43 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v59[0]);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v59, 0);

  outlined init with copy of _ViewListInputs(v59, v57);
  v58 = 0;
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static CountViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6, type metadata accessor for CountViews, closure #1 in static PointerOffset.of(_:)partial apply);
  }

  v41 = v11;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v48);
  v13 = v48;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v45) = v13;
  (*(a5 + 32))(v55, &v45, v57, a3, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v13, a3, a5);
  if (v56)
  {
    outlined init with copy of _ViewListOutputs.Views(v55, &v53);
    if (v54)
    {
      v14 = v53;

      outlined init with copy of _ViewListInputs(v59, &v48);
      v15 = v48;
      v16 = DWORD1(v50);
      v17 = *(&v51 + 1);

      outlined destroy of _ViewListInputs(&v48);
      *&v45 = v15;
      *(&v45 + 1) = v17;
      *v46 = v16;
      memset(&v46[8], 0, 33);
      LOBYTE(v47) = 0;
      *(&v47 + 1) = 0;
      v18 = (*(a5 + 40))(&v45, a3, a5);
      v20 = v19;
      v50 = *&v46[16];
      v51 = *&v46[32];
      v52 = v47;
      v48 = v45;
      v49 = *v46;
      outlined destroy of _ViewListCountInputs(&v48);
      if (v20)
      {
        v21 = v14 | (*MEMORY[0x1E698D3F8] << 32);
      }

      else
      {
        v21 = v18;
      }
    }

    else
    {
      outlined init with take of _ViewList_Elements(&v53, &v48);
      v22 = *(&v49 + 1);
      v23 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      v21 = (*(v23 + 8))(v22, v23);
      __swift_destroy_boxed_opaque_existential_1(&v48);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v21 = v55[7];
  }

  v24 = type metadata accessor for PlaceholderContentView();
  outlined init with copy of _ViewListOutputs(v55, &v48);
  v25 = swift_allocObject();
  v26 = v51;
  *(v25 + 48) = v50;
  *(v25 + 64) = v26;
  *(v25 + 80) = v52;
  v27 = v49;
  *(v25 + 16) = v48;
  *(v25 + 32) = v27;
  _ViewListInputs.pushModifierBody<A>(_:body:)(v24, partial apply for closure #2 in static CountViews._makeViewList(view:inputs:), v25);

  if (v43)
  {
    if (v20)
    {
      KeyPath = swift_getKeyPath();
      LODWORD(v48) = v21;
      *(&v48 + 1) = closure #1 in Attribute.subscript.getterspecialized partial apply;
      *&v49 = KeyPath;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for Map<ViewList, Int>();
      lazy protocol witness table accessor for type Map<ViewList, Int> and conformance Map<A, B>();

      v29 = Attribute.init<A>(body:value:flags:update:)();

      LODWORD(v45) = v29;
      DWORD2(v45) = v41;
      *v46 = v21;
      v46[8] = 1;
      v30 = type metadata accessor for Optional();
      *&v48 = a3;
      *(&v48 + 1) = a4;
      *&v49 = a5;
      *(&v49 + 1) = a6;
      DynamicContent = type metadata accessor for CountViews.MakeDynamicContent();
      WitnessTable = swift_getWitnessTable();
      _GraphValue.init<A>(_:)(&v45, v30, DynamicContent, WitnessTable, &v48);
      v33 = v48;
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      LODWORD(v45) = v33;
      static Optional<A>._makeViewList(view:inputs:)(&v45, v59, a7);
      v34 = swift_getWitnessTable();
      v35 = v33;
      v36 = v30;
      goto LABEL_23;
    }

    if (v21 < 1)
    {
      static _ViewListOutputs.emptyViewList(inputs:)(v59, a7);
      goto LABEL_24;
    }

    LODWORD(v45) = v41;
    *(&v45 + 1) = v21;
    v46[0] = 0;
  }

  else
  {
    LODWORD(v45) = v41;
    *(&v45 + 1) = v21;
    v46[0] = v20 & 1;
  }

  *&v48 = a3;
  *(&v48 + 1) = a4;
  *&v49 = a5;
  *(&v49 + 1) = a6;
  v37 = type metadata accessor for CountViews.CountHelper();
  v38 = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(&v45, a4, v37, v38, &v48);
  v39 = v48;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v45) = v39;
  (*(a6 + 32))(&v45, v59, a4, a6);
  v35 = v39;
  v36 = a4;
  v34 = a6;
LABEL_23:
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v35, v36, v34);
LABEL_24:
  outlined destroy of _ViewListOutputs(v55);
  outlined destroy of _ViewListInputs(v57);
  return outlined destroy of _ViewListInputs(v59);
}

uint64_t sub_18D1C9DD0()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

void TupleView.CountViews.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 88) & 1) != 0 || (v7 = *(v5 + 16), v8 = *(v5 + 48), v23 = *(v5 + 32), v24 = v8, v9 = *(v5 + 48), v25 = *(v5 + 64), v10 = *(v5 + 16), v22[0] = *v5, v22[1] = v10, v19 = v23, v20 = v9, v21 = *(v5 + 64), v11 = *(v5 + 80), v17 = v22[0], v18 = v7, v12 = *(a4 + 40), v13 = a4, outlined init with copy of _ViewListCountInputs(v22, &v16), v14 = v12(&v17, a3, v13), LOBYTE(v13) = v15, v26[2] = v19, v26[3] = v20, v26[4] = v21, v26[0] = v17, v26[1] = v18, outlined destroy of _ViewListCountInputs(v26), (v13))
  {
    *(v5 + 80) = 0;
    *(v5 + 88) = 1;
  }

  else if (__OFADD__(v11, v14))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 80) = v11 + v14;
    *(v5 + 88) = 0;
  }
}

uint64_t static _DelayedPreferenceView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v78 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 48);
  v12 = *(a2 + 16);
  v68 = *(a2 + 32);
  v69 = v11;
  v13 = *(a2 + 48);
  v70 = *(a2 + 64);
  v14 = *(a2 + 16);
  v67[0] = *a2;
  v67[1] = v14;
  v63 = v68;
  v64 = v13;
  v65 = *(a2 + 64);
  v15 = *a1;
  v71 = *(a2 + 80);
  v66 = *(a2 + 80);
  v61 = v67[0];
  v62 = v12;
  outlined init with copy of _ViewInputs(v67, &v72);
  PreferencesInputs.add<A>(_:)(a3, a3, a5);
  *&v72 = 0;
  BYTE8(v72) = 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = type metadata accessor for PreferenceValueAttribute();
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for Attribute();
  v17 = MEMORY[0x1E69E73E0];
  v18 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v72, partial apply for closure #1 in Attribute.init<A>(_:), v39, v41, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v19);
  *&v59[0] = __PAIR64__(v59[0], v15);
  v36 = a4;
  *&v72 = a3;
  *(&v72 + 1) = a4;
  *&v73 = a5;
  *(&v73 + 1) = a6;
  v37 = type metadata accessor for DelayedPreferenceChild();
  v38 = swift_getWitnessTable();
  v20 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v59, closure #1 in Attribute.init<A>(_:)partial apply, v35, v37, v17, v20, v18, v21);
  _GraphValue.init(_:)(v72, &v31);
  v22 = v31;
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v77 = v66;
  v72 = v61;
  v73 = v62;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v53 = v74;
  v54 = v75;
  v55 = v76;
  v56 = v77;
  v51 = v72;
  v52 = v73;
  v24 = v74;
  LODWORD(v53) = 0;
  LODWORD(v43[0]) = v22;
  v57[0] = v72;
  v57[1] = v73;
  v58 = v77;
  v57[3] = v75;
  v57[4] = v76;
  v57[2] = v53;
  v47 = v53;
  v48 = v75;
  v49 = v76;
  v50 = v77;
  v45 = v72;
  v46 = v73;
  v25 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v72, v59);
  outlined init with copy of _ViewInputs(v57, v59);
  v25(&v32, v43, &v45, a4, a6);
  v59[2] = v47;
  v59[3] = v48;
  v59[4] = v49;
  v60 = v50;
  v59[0] = v45;
  v59[1] = v46;
  outlined destroy of _ViewInputs(v59);
  LODWORD(v53) = v24;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v32, &v51);
    AGSubgraphEndTreeElement();
  }

  v43[2] = v53;
  v43[3] = v54;
  v43[4] = v55;
  v44 = v56;
  v43[0] = v51;
  v43[1] = v52;
  outlined destroy of _ViewInputs(v43);
  v26 = v32;
  v27 = v33;
  v28 = v34;
  _ViewOutputs.subscript.getter(a3, a3, a5);
  static PreferenceValueAttribute.setSource(_:of:)();
  v47 = v63;
  v48 = v64;
  v49 = v65;
  v50 = v66;
  v45 = v61;
  v46 = v62;
  result = outlined destroy of _ViewInputs(&v45);
  *a7 = v26;
  *(a7 + 8) = v27;
  *(a7 + 12) = v28;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceValueAttribute<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for PreferenceValueAttribute<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DelayedPreferenceChild<A, B>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for DelayedPreferenceChild<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in static PreferenceValueAttribute.setSource(_:of:)(uint64_t a1)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t DelayedPreferenceChild.value.getter@<X0>(unint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a5;
  v9 = a1;
  v64 = a6;
  v80 = *MEMORY[0x1E69E9840];
  v10 = HIDWORD(a1);
  v67 = type metadata accessor for ObservationTracking._AccessList();
  v11 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v58 - v17;
  type metadata accessor for ObservationTracking._AccessList?();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v58 - v25;
  v66 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v58 - v30;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = v65;
  v76 = v9;
  v77 = v10;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v31 = static ObservationCenter._current;
  swift_beginAccess();
  v32 = pthread_getspecific(v31[2]);
  if (!v32)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v31[2], v33);
    v79 = type metadata accessor for ObservationCenter();
    v31 = v31[3];
    *&v78 = v31;
    outlined init with take of Any(&v78, v33);

    v32 = v33;
  }

  outlined init with copy of Any(v32, &v78);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v70;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v36 = v66;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(v34 + 24) = v31;
    goto LABEL_9;
  }

  v59 = v13;
  v60 = CurrentAttribute;
  swift_beginAccess();
  v65 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  v37 = v67;
  v38 = (*(v11 + 56))(v23, 1, 1, v67);
  MEMORY[0x1EEE9AC00](v38);
  *(&v58 - 4) = a3;
  *(&v58 - 3) = partial apply for closure #1 in DelayedPreferenceChild.value.getter;
  *(&v58 - 2) = &v71;
  v39 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v58 - 6), v19, v39, a3, MEMORY[0x1E69E7288], &v70);
  a2 = *(v36 + 32);
  a2(v69, v28, a3);
  v40 = v68;
  outlined init with take of ObservationTracking._AccessList?(v23, v68);
  v41 = v61;
  outlined init with copy of ObservationTracking._AccessList?(v40, v61);
  if ((*(v11 + 48))(v41, 1, v37) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v40);
    v42 = v41;
    v43 = v64;
    goto LABEL_12;
  }

  v19 = *(v11 + 32);
  v44 = v63;
  v19(v63, v41, v37);
  (*(v11 + 16))(v62, v44, v37);
  v31 = *(v34 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 24) = v31;
  v58 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v47 = v31[2];
  v46 = v31[3];
  if (v47 >= v46 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v31);
  }

  v31[2] = v47 + 1;
  v48 = v31 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47;
  v11 = v58;
  v37 = v67;
  v19(v48, v62, v67);
  *(v34 + 24) = v31;
  (*(v11 + 8))(v63, v37);
  v43 = v64;
  v42 = v68;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42);
  a2(v43, v69, a3);
  v49 = *(v34 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v11 + 16);
    v51 = v11 + 16;
    v68 = *(v34 + 24);
    v69 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      (v69)(v56, v53, v37);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v37);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v34 + 24) = v65;
}

uint64_t closure #1 in DelayedPreferenceChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  v10[8] = a2;
  v10[9] = a3;
  v10[10] = a4;
  v10[11] = a5;
  v8 = type metadata accessor for _DelayedPreferenceView();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in DelayedPreferenceChild.value.getter, v10, v8, a3, a6);
}

uint64_t static AndOperationViewInputPredicate.evaluate(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v14 = a1[2];
  if ((*(a4 + 8))(&v12))
  {
    v9 = a1[1];
    v12 = *a1;
    v13 = v9;
    v14 = a1[2];
    v10 = (*(a5 + 8))(&v12, a3, a5);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t static ObservationCenter.current.getter()
{
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v1 = static ObservationCenter._current;
  swift_beginAccess();
  v2 = pthread_getspecific(v1[2]);
  if (!v2)
  {
    v3 = swift_slowAlloc();
    pthread_setspecific(v1[2], v3);
    v6 = v0;
    *&v5 = v1[3];
    outlined init with take of Any(&v5, v3);

    v2 = v3;
  }

  outlined init with copy of Any(v2, &v5);
  swift_dynamicCast();
  return v7;
}

uint64_t ObservationCenter._withObservation<A>(do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ObservationTracking._AccessList();
  (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  v20 = a5;
  v21 = a3;
  v22 = a4;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v16 = v15;
  v17 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, closure #1 in ObservationCenter._withObservation<A>(do:)partial apply, v19, v16, v17, a5, MEMORY[0x1E69E7288], &v23);
  if (v5)
  {
    return _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(a2, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  }

  else
  {
    return (*(v11 + 32))(a1, v13, a5);
  }
}

Swift::Void __swiftcall _ViewListCountInputs.resetCurrentStyleableView()()
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v0, 0);
}

uint64_t static _ViewListOutputs.groupViewListCount<A, B, C>(inputs:contentType:headerType:footerType:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a1[1];
  v94[0] = *a1;
  v94[1] = v13;
  v14 = a1[1];
  v94[2] = a1[2];
  v15 = a1[2];
  v94[3] = a1[3];
  v16 = a1[3];
  v94[4] = a1[4];
  v90 = v14;
  v91 = v15;
  v17 = *&v94[0];
  v18 = BYTE8(v94[0]);
  v92 = v16;
  v93 = a1[4];
  v19 = *(&v94[0] + 1);
  if ((WORD4(v94[0]) & 0x1000) == 0)
  {
    v20 = *(&v94[0] + 1) & 0xFFFFFFFFFFFFEFF7;
    if ((BYTE8(v94[0]) & 8) == 0)
    {
      v20 = *(&v94[0] + 1);
    }

    if ((v20 & 0x100) != 0)
    {
      v19 = v20 & 0xFFFFFFFFFFFFEEFFLL;
    }

    else
    {
      v19 = v20;
    }
  }

  *&v84 = *&v94[0];
  *(&v84 + 1) = v19;
  v21 = a1[2];
  v85 = a1[1];
  v86 = v21;
  v22 = a1[4];
  v87 = a1[3];
  v88 = v22;
  v81 = v21;
  v82 = v87;
  v83 = v22;
  v79 = v84;
  v80 = v85;
  v23 = *(a8 + 40);
  outlined init with copy of _ViewListCountInputs(v94, v89);
  outlined init with copy of _ViewListCountInputs(&v84, v89);
  v24 = v23(&v79, a5, a8);
  v26 = v25;
  v89[1] = v80;
  v89[2] = v81;
  v89[3] = v82;
  v89[4] = v83;
  v89[0] = v79;
  outlined destroy of _ViewListCountInputs(v89);
  if (v26)
  {
    *&v79 = v17;
    *(&v79 + 1) = v19;
    v27 = a1[2];
    v80 = a1[1];
    v81 = v27;
    v28 = a1[4];
    v82 = a1[3];
    v83 = v28;
    outlined destroy of _ViewListCountInputs(&v79);
    return v24;
  }

  *&v79 = v17;
  *(&v79 + 1) = v19;
  v30 = a1[2];
  v80 = a1[1];
  v81 = v30;
  v31 = a1[4];
  v82 = a1[3];
  v83 = v31;
  v76 = v30;
  v77 = v82;
  v78 = v31;
  v74 = v79;
  v75 = v80;
  if ((v18 & 8) != 0 && (v19 & 0x10) == 0)
  {
    *(&v74 + 1) = v19 | 0x10;
  }

  if ((v18 & 0x20) != 0)
  {
    outlined init with copy of _ViewListCountInputs(&v79, v73);
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v32 = static StyleContextInput.defaultValue;
    outlined init with copy of _ViewListCountInputs(&v79, v73);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v74, v32, *(&v32 + 1));
    outlined destroy of _ViewListCountInputs(&v79);
  }

  else
  {
    outlined init with copy of _ViewListCountInputs(&v79, v73);
  }

  v71[1] = v75;
  v71[2] = v76;
  v71[3] = v77;
  v71[4] = v78;
  v68 = v76;
  v69 = v77;
  v70 = v78;
  v71[0] = v74;
  v66 = v74;
  v67 = v75;
  v33 = *(a9 + 40);
  outlined init with copy of _ViewListCountInputs(v71, &v61);
  v29 = v33(&v66);
  v35 = v34;
  v72[2] = v68;
  v72[3] = v69;
  v72[4] = v70;
  v72[0] = v66;
  v72[1] = v67;
  outlined destroy of _ViewListCountInputs(v72);
  v73[2] = v76;
  v73[3] = v77;
  v73[4] = v78;
  v73[0] = v74;
  v73[1] = v75;
  outlined destroy of _ViewListCountInputs(v73);
  if (v35)
  {
    *&v66 = v17;
    *(&v66 + 1) = v19;
    v36 = a1[2];
    v67 = a1[1];
    v68 = v36;
    v37 = a1[4];
    v69 = a1[3];
    v70 = v37;
    outlined destroy of _ViewListCountInputs(&v66);
    return v29;
  }

  v38 = v24 + v29;
  if (__OFADD__(v24, v29))
  {
    __break(1u);
    goto LABEL_31;
  }

  v35 = a10;
  *&v66 = v17;
  *(&v66 + 1) = v19;
  v39 = a1[2];
  v67 = a1[1];
  v68 = v39;
  v40 = a1[4];
  v69 = a1[3];
  v70 = v40;
  v63 = v39;
  v64 = v69;
  v65 = v40;
  v61 = v66;
  v62 = v67;
  if ((v18 & 8) != 0 && (v19 & 8) != 0)
  {
    *(&v61 + 1) = v19 & 0xFFFFFFFFFFFFFFF7;
  }

  if ((v18 & 0x40) != 0)
  {
    outlined init with copy of _ViewListCountInputs(&v66, v60);
    if (one-time initialization token for defaultValue == -1)
    {
LABEL_26:
      v41 = static StyleContextInput.defaultValue;
      outlined init with copy of _ViewListCountInputs(&v66, v60);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v61, v41, *(&v41 + 1));
      outlined destroy of _ViewListCountInputs(&v66);
      goto LABEL_27;
    }

LABEL_31:
    swift_once();
    goto LABEL_26;
  }

  outlined init with copy of _ViewListCountInputs(&v66, v60);
LABEL_27:
  v53[1] = v62;
  v53[2] = v63;
  v53[3] = v64;
  v53[4] = v65;
  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53[0] = v61;
  v48 = v61;
  v49 = v62;
  v42 = *(v35 + 40);
  outlined init with copy of _ViewListCountInputs(v53, v47);
  v29 = v42(&v48);
  v44 = v43;
  v54[2] = v50;
  v54[3] = v51;
  v54[4] = v52;
  v54[0] = v48;
  v54[1] = v49;
  outlined destroy of _ViewListCountInputs(v54);
  v55[0] = v17;
  v55[1] = v19;
  v56 = v90;
  v57 = v91;
  v58 = v92;
  v59 = v93;
  outlined destroy of _ViewListCountInputs(v55);
  v60[2] = v63;
  v60[3] = v64;
  v60[4] = v65;
  v60[0] = v61;
  v60[1] = v62;
  result = outlined destroy of _ViewListCountInputs(v60);
  if (v44)
  {
    return v29;
  }

  v46 = __OFADD__(v38, v29);
  v29 += v38;
  if (!v46)
  {
    return v29;
  }

  __break(1u);
  return result;
}

uint64_t static TupleView._viewListCount(inputs:)(__int128 *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1[3];
  v24 = a1[2];
  v25 = v2;
  v26 = a1[4];
  v3 = a1[1];
  v22 = *a1;
  v23 = v3;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a2, &v17);
  v4 = v17;
  if ((BYTE9(v22) & 2) != 0)
  {
    v9 = *(v17 + 16);
  }

  else
  {
    v19 = v24;
    v20 = v25;
    *v21 = v26;
    v17 = v22;
    v18 = v23;
    *&v21[16] = 0;
    v21[24] = 0;
    v5 = *(v4 + 16);
    outlined init with copy of _ViewListCountInputs(&v22, &v12);
    if (v5)
    {
      v6 = 0;
      v7 = 40;
      while (1)
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
        }

        v12 = *(v4 + v7);
        v8 = type metadata accessor for TupleView.CountViews();
        TypeConformance<>.visitType<A>(visitor:)(&v17, v8, &protocol witness table for TupleView<A>.CountViews);
        if (v21[24])
        {
          break;
        }

        ++v6;
        v7 += 24;
        if (v5 == v6)
        {
          goto LABEL_7;
        }
      }

      v9 = *&v21[16];

      v14 = v19;
      v15 = v20;
      v16[0] = *v21;
      *(v16 + 9) = *&v21[9];
      v12 = v17;
      v13 = v18;
      (*(*(v8 - 8) + 8))(&v12, v8);
    }

    else
    {
LABEL_7:

      v9 = *&v21[16];
      v14 = v19;
      v15 = v20;
      v16[0] = *v21;
      *(v16 + 9) = *&v21[9];
      v12 = v17;
      v13 = v18;
      v10 = type metadata accessor for TupleView.CountViews();
      (*(*(v10 - 8) + 8))(&v12, v10);
    }
  }

  return v9;
}

uint64_t protocol witness for _ViewList_Elements.makeElements(from:inputs:indirectMap:body:) in conformance EmptyViewListElements(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return 1;
}

uint64_t one-time initialization function for bottomTrailing()
{
  if (one-time initialization token for trailing != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.trailing;
  if (one-time initialization token for bottom != -1)
  {
    result = swift_once();
  }

  static Alignment.bottomTrailing = v0;
  unk_1ED51F140 = static VerticalAlignment.bottom;
  return result;
}

id SystemColorType.kitColor.getter()
{
  v1 = *v0;
  if (v1 > 0xC)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *off_1E7243A28[v1]];
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle>, &type metadata for Rectangle, &protocol witness table for Rectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>);
    }
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollPositionKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollStateRequestKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018ScrollStateRequestV033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollStateRequestKey>, &type metadata for _GraphInputs.ScrollStateRequestKey, &protocol witness table for _GraphInputs.ScrollStateRequestKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollStateRequestKey, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018ScrollStateRequestV033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018ScrollStateRequestV033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollStateRequestKey)
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

unint64_t _ViewOutputs.viewResponders()()
{
  result = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(*v0);
  if ((result & 0x100000000) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for [ViewResponder](0);
    v3 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v2, 0);

    return v3;
  }

  return result;
}

Swift::Void __swiftcall _GraphInputs.convertScrollStateInputsToContent()()
{
  v1 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v1, v5);
  if (v2)
  {
    v3 = *(v2 + 72) | (*(v2 + 76) << 32);
  }

  else
  {
    v3 = 0xFF00000000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v0, v3);

  v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(*v0);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v0, v4);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v4, v8) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ScrollPositionStorage?, &type metadata for ScrollPositionStorage, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentScrollPositionKey>, &type metadata for _GraphInputs.ContentScrollPositionKey, &protocol witness table for _GraphInputs.ContentScrollPositionKey, type metadata accessor for TypedElement);
    v7 = swift_allocObject();
    *(v7 + 76) = BYTE4(a2);
    *(v7 + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ContentScrollPositionKey, 0, v6);
  }

  return result;
}

uint64_t specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for LinearGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for LinearGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEffectLocalModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEffectLocalModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Circle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Circle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Circle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Circle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Circle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Circle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for AnyShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for AnyShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<AnyShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RoundedRectangle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RoundedRectangle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContainerRelativeShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContainerRelativeShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Path, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Path, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Path, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Path, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Path, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Path, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Path>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle.AsymmetricalInset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle.AsymmetricalInset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _GlassContainerStorageView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
      type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
    type metadata accessor for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _GlassContainerStorageView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
      type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
    type metadata accessor for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEntryContainerView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
      type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEntryContainerView>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<GlassEntryContainerView>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEntryContainerView>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
    type metadata accessor for StaticBody<ViewBodyAccessor<GlassEntryContainerView>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<GlassEntryContainerView>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<GlassEntryContainerView>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEntryContainerView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
      type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEntryContainerView>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<GlassEntryContainerView>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEntryContainerView>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
    type metadata accessor for StaticBody<ViewBodyAccessor<GlassEntryContainerView>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<GlassEntryContainerView>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<GlassEntryContainerView>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for CombinedContentShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for CombinedContentShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm(a2, a3, v11, a5, a1, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], &v16, type metadata accessor for ScheduledAnimationModifier);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm(a2, a3, v11, a5, a1, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], &v16, type metadata accessor for ScheduledAnimationModifier);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<ScheduledAnimationModifier<Int>>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for KickModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<KickModifier>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<KickModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<KickModifier>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<KickModifier>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<KickModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<KickModifier>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for KickModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<KickModifier>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<KickModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<KickModifier>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<KickModifier>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<KickModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<KickModifier>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm(a2, a3, v11, a5, a1, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], &v16, type metadata accessor for TranslationKickModifier);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm(a2, a3, v11, a5, a1, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], &v16, type metadata accessor for TranslationKickModifier);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<TranslationKickModifier<Int>>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm(a2, a3, v11, a5, a1, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], &v16, type metadata accessor for ScalePulseModifier);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm(a2, a3, v11, a5, a1, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], &v16, type metadata accessor for ScalePulseModifier);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<ScalePulseModifier<Int>>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassTransitionStateModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassTransitionStateModifier>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<GlassTransitionStateModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassTransitionStateModifier>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<GlassTransitionStateModifier>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<GlassTransitionStateModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<GlassTransitionStateModifier>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassTransitionStateModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassTransitionStateModifier>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<GlassTransitionStateModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassTransitionStateModifier>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<GlassTransitionStateModifier>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<GlassTransitionStateModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<GlassTransitionStateModifier>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEffectShapeModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectShapeModifier>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<GlassEffectShapeModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectShapeModifier>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectShapeModifier>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<GlassEffectShapeModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectShapeModifier>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEffectShapeModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectShapeModifier>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<GlassEffectShapeModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectShapeModifier>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectShapeModifier>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<GlassEffectShapeModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectShapeModifier>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA21_GlassEffectContainerVyAA15ModifiedContentVyAA014_ViewModifier_R0VyAA0no5LocalT008_3DF70D9W23D7473F4D189A049B764CFEFLLVGAA0nopT0AWLLVGG_Tt3B5(a2, a3, v11, a5, a1, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
      type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
    type metadata accessor for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA21_GlassEffectContainerVyAA15ModifiedContentVyAA014_ViewModifier_R0VyAA0no5LocalT008_3DF70D9W23D7473F4D189A049B764CFEFLLVGAA0nopT0AWLLVGG_Tt3B5(a2, a3, v11, a5, a1, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
      type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
    type metadata accessor for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for FlexInteractionModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexInteractionModifier>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<FlexInteractionModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexInteractionModifier>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<FlexInteractionModifier>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<FlexInteractionModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<FlexInteractionModifier>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for FlexInteractionModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexInteractionModifier>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<FlexInteractionModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexInteractionModifier>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<FlexInteractionModifier>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<FlexInteractionModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<FlexInteractionModifier>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEffectView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
      type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEffectView>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<GlassEffectView>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEffectView>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
    type metadata accessor for StaticBody<ViewBodyAccessor<GlassEffectView>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<GlassEffectView>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<GlassEffectView>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEffectView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
      type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEffectView>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<GlassEffectView>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEffectView>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
    type metadata accessor for StaticBody<ViewBodyAccessor<GlassEffectView>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<GlassEffectView>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<GlassEffectView>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEntryView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEntryView>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<GlassEntryView>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEntryView>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>();
    type metadata accessor for StaticBody<ViewBodyAccessor<GlassEntryView>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<GlassEntryView>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<GlassEntryView>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassEntryView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEntryView>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<GlassEntryView>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<GlassEntryView>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>();
    type metadata accessor for StaticBody<ViewBodyAccessor<GlassEntryView>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<GlassEntryView>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<GlassEntryView>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for SummarySymbol, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>();
    type metadata accessor for StaticBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for SummarySymbol, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>();
    type metadata accessor for StaticBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassItemView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
      type metadata accessor for DynamicBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
    type metadata accessor for StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for GlassItemView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
      type metadata accessor for DynamicBody<ViewBodyAccessor<GlassItemView>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<GlassItemView>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<GlassItemView>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
    type metadata accessor for StaticBody<ViewBodyAccessor<GlassItemView>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<GlassItemView>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<GlassItemView>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for DistanceGesture, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>();
      type metadata accessor for DynamicBody<GestureBodyAccessor<DistanceGesture>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<GestureBodyAccessor<DistanceGesture>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<GestureBodyAccessor<DistanceGesture>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>();
    type metadata accessor for StaticBody<GestureBodyAccessor<DistanceGesture>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<GestureBodyAccessor<DistanceGesture>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<GestureBodyAccessor<DistanceGesture>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for DistanceGesture, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>();
      type metadata accessor for DynamicBody<GestureBodyAccessor<DistanceGesture>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<GestureBodyAccessor<DistanceGesture>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<GestureBodyAccessor<DistanceGesture>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>();
    type metadata accessor for StaticBody<GestureBodyAccessor<DistanceGesture>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<GestureBodyAccessor<DistanceGesture>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<GestureBodyAccessor<DistanceGesture>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm(a2, a3, v11, a5, a1, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, &v16, type metadata accessor for SingleTapGesture);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>();
      type metadata accessor for DynamicBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>();
    type metadata accessor for StaticBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm(a2, a3, v11, a5, a1, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, &v16, type metadata accessor for SingleTapGesture);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>();
      type metadata accessor for DynamicBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>();
    type metadata accessor for StaticBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<GestureBodyAccessor<SingleTapGesture<TappableEvent>>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContentCaptureProtectionViewModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContentCaptureProtectionViewModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for FlexibleButtonFrameModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for FlexibleButtonFrameModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
      type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
    type metadata accessor for StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for SafeAreaPaddingModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
    type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for SafeAreaPaddingModifier, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
    type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _TestApp.RootView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _TestApp.RootView, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Ellipse, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Ellipse, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Ellipse._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Ellipse._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Capsule, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Capsule, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Capsule, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Capsule, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Capsule, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Capsule, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Capsule._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Capsule._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Circle._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Circle._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for PartialContainerRelativeShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for PartialContainerRelativeShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for DefaultGlassEffectShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for DefaultGlassEffectShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for UnevenRoundedRectangle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for UnevenRoundedRectangle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for UnevenRoundedRectangle._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for UnevenRoundedRectangle._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ImplicitContainerShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ImplicitContainerShape, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContainerRelativeShape._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContainerRelativeShape._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _IntelligenceSupport.AnimatingSummarySymbol, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>();
    type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _IntelligenceSupport.AnimatingSummarySymbol, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>();
    type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _IntelligenceSupport.AnimatingText, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>();
    type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _IntelligenceSupport.AnimatingText, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>();
    type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ConcentricRectangle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ConcentricRectangle, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for EllipticalGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for EllipticalGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RoundedRectangle._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RoundedRectangle._Inset, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
    type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for AngularGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, AngularGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, AngularGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for AngularGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, AngularGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, AngularGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RadialGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, RadialGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, RadialGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RadialGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, RadialGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, RadialGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for MeshGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>);
      goto LABEL_6;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v16) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for MeshGradient, &v16);
    v12 = v16;
    v13 = v17;
    v14 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v16 = __PAIR64__(*(a1 + 24), a5);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
      type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13 | (v14 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v17 = v17;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v16) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
    type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle>, &type metadata for Rectangle, &protocol witness table for Rectangle, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void static Layout.layoutProperties.getter(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 2) = 0;
}

{
  static Layout.layoutProperties.getter(a1);
}

uint64_t _GraphInputs.layoutDirection.getter()
{
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t _GraphInputs.isEnabled.getter()
{
  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.isEnabled;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t _GraphInputs.scrollAnchors.getter()
{
  if (one-time initialization token for scrollAnchors != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.scrollAnchors;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t one-time initialization function for scrollAnchors()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.scrollAnchors = result;
  return result;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ViewFrame(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ViewFrameV_Tt1B5(a1, v4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ViewFrameV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ViewFrame> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA10EdgeInsetsV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<EdgeInsets> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance EdgeInsets(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA10EdgeInsetsV_Tt1B5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets()
{
  result = lazy protocol witness table cache variable for type EdgeInsets and conformance EdgeInsets;
  if (!lazy protocol witness table cache variable for type EdgeInsets and conformance EdgeInsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EdgeInsets and conformance EdgeInsets);
  }

  return result;
}

uint64_t _GraphInputs.scrollPositionBinding(kind:)(_BYTE *a1)
{
  v2 = *v1;
  if (*a1)
  {
    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v2, v6);
    if (!v3)
    {
      return *MEMORY[0x1E698D3F8];
    }
  }

  else
  {
    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v2, v6);
    if (!v3)
    {
      return *MEMORY[0x1E698D3F8];
    }
  }

  if (*(v3 + 76) == 255 || ((*(v3 + 76) << 32) & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  return *(v3 + 72);
}

Swift::Bool __swiftcall _GraphInputs.hasValueScrollPosition(kind:)(SwiftUI::ScrollStateInputKind kind)
{
  v2 = *v1;
  if (*kind)
  {
    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v2, v5);
    if (!v3)
    {
      return v3;
    }

    goto LABEL_5;
  }

  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v2, v5);
  if (v3)
  {
LABEL_5:
    LOBYTE(v3) = *(v3 + 76) != 255;
  }

  return v3;
}

uint64_t _GraphInputs.updateScrollStateRequest.setter(int a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(v1, a1);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionAnchorKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020ScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static _GraphInputs.ScrollPositionAnchorKey.defaultValue;
  }

  return *v3;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020ScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020ScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollPositionAnchorKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionAnchorKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027ContentScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentScrollPositionAnchorKey>, &type metadata for _GraphInputs.ContentScrollPositionAnchorKey, &protocol witness table for _GraphInputs.ContentScrollPositionAnchorKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ContentScrollPositionAnchorKey, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027ContentScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027ContentScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ContentScrollPositionAnchorKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v4, v8) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ScrollPositionStorage?, &type metadata for ScrollPositionStorage, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollPositionKey>, &type metadata for _GraphInputs.ScrollPositionKey, &protocol witness table for _GraphInputs.ScrollPositionKey, type metadata accessor for TypedElement);
    v7 = swift_allocObject();
    *(v7 + 76) = BYTE4(a2);
    *(v7 + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollPositionKey, 0, v6);
  }

  return result;
}

Swift::Void __swiftcall _GraphInputs.resetScrollPosition(kind:)(SwiftUI::ScrollStateInputKind kind)
{
  v2 = *kind;

  if (v2)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v1, 0xFF00000000);

    v3 = *MEMORY[0x1E698D3F8];

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v1, v3);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v1, 0xFF00000000);

    v4 = *MEMORY[0x1E698D3F8];

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v1, v4);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionAnchorKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020ScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollPositionAnchorKey>, &type metadata for _GraphInputs.ScrollPositionAnchorKey, &protocol witness table for _GraphInputs.ScrollPositionAnchorKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollPositionAnchorKey, 0, v6);
  }

  return result;
}

uint64_t static ResetScrollInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v34 = *(a2 + 32);
  v35 = v4;
  v6 = *(a2 + 48);
  v36 = *(a2 + 64);
  v7 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v7;
  v29 = v34;
  v30 = v6;
  v31 = *(a2 + 64);
  v37 = *(a2 + 80);
  v32 = *(a2 + 80);
  v27 = v33[0];
  v28 = v5;
  v8 = v6;
  *&v23[0] = v6;
  v9 = PreferenceKeys._index(of:)(&type metadata for ScrollPhasePreferenceKey);
  outlined init with copy of _ViewInputs(v33, v25);

  v11 = *(v8 + 16);
  if (v9 != v11)
  {
    if (v9 >= v11)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (*(v8 + 16 * v9 + 32) == &type metadata for ScrollPhasePreferenceKey)
    {
      specialized Array.remove(at:)(v9);
      v8 = v30;
    }
  }

  *&v25[0] = v8;
  v12 = PreferenceKeys._index(of:)(&type metadata for ScrollGeometryPreferenceKey);

  v13 = *(v8 + 16);
  if (v12 == v13)
  {
LABEL_9:
    v21[2] = v29;
    v21[3] = v30;
    v21[4] = v31;
    v22 = v32;
    v21[0] = v27;
    v21[1] = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v15 = v27;
    v16 = v28;
    v14 = outlined init with copy of _ViewInputs(v21, v25);
    a3(v14, &v15);
    v23[2] = v17;
    v23[3] = v18;
    v23[4] = v19;
    v24 = v20;
    v23[0] = v15;
    v23[1] = v16;
    outlined destroy of _ViewInputs(v23);
    v25[2] = v29;
    v25[3] = v30;
    v25[4] = v31;
    v26 = v32;
    v25[0] = v27;
    v25[1] = v28;
    return outlined destroy of _ViewInputs(v25);
  }

  if (v12 < v13)
  {
    if (*(v8 + 16 * v12 + 32) == &type metadata for ScrollGeometryPreferenceKey)
    {
      specialized Array.remove(at:)(v12);
    }

    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ScrollTargetRoleV0G0O_SayAC20ScrollableCollection_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>, type metadata accessor for [ScrollableCollection], lazy protocol witness table accessor for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  v57 = a5;
  v58 = a4;
  v51 = a3;
  v61 = a7;
  v87 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a2 + 48);
  *v86 = *(a2 + 32);
  *&v86[16] = v10;
  *&v86[32] = *(a2 + 64);
  *&v86[48] = *(a2 + 80);
  v11 = *(a2 + 16);
  v84 = *a2;
  v85 = v11;
  v12 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v10);
  v52 = a6;
  v50 = a8;
  closure #1 in static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v55 = v85;
  v14 = *&v86[4];
  v56 = OffsetAttribute2;
  v53 = v84;
  v59 = v12;
  if ((v86[4] & 0x20) != 0 || (v12) && (v15 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(v84)) != 0)
  {
    v64 = &v49;
    v16 = *MEMORY[0x1E698D3F8];
    *&v71 = __PAIR64__(OffsetAttribute2, v9);
    *(&v71 + 1) = vrev64_s32(*(&v85 + 8));
    LODWORD(v72) = *&v86[40];
    *(&v72 + 4) = vrev64_s32(*&v86[28]);
    v73[0] = v15;
    v62 = 1;
    LOBYTE(v73[1]) = 1;
    *(&v73[1] + 4) = v16;
    BYTE12(v73[1]) = 0;
    MEMORY[0x1EEE9AC00](v15);
    v17 = type metadata accessor for MatchedSharedFrame();
    v47 = v17;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<(ViewFrame?, AnyOptionalAttribute)>();
    v19 = v18;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v71, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_4, v46, v17, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
    v75 = v71;
    v76 = v72;
    v77[0] = v73[0];
    *(v77 + 13) = *(v73 + 13);
    (*(*(v17 - 8) + 8))(&v75, v17);
    v21 = v67;
    AGGraphSetFlags();

    v63 = *&v86[4];
  }

  else
  {
    v21 = 0;
    v62 = 0;
    v63 = *&v86[4];
  }

  v82 = v84;
  v83 = v85;
  v22 = *v86;
  v80 = *&v86[8];
  v81 = *&v86[24];
  v23 = *&v86[36];
  LODWORD(v64) = *&v86[32];
  v24 = *&v86[40];
  v25 = *&v86[44];
  v54 = 0;
  HIDWORD(v49) = v21;
  if (v14 & 0x20) != 0 && (v62)
  {
    v26 = *MEMORY[0x1E698D3F8];
    *&v71 = __PAIR64__(v56, v21);
    *(&v71 + 1) = __PAIR64__(v64, *&v86[40]);
    *&v72 = __PAIR64__(v26, *&v86[28]);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(&v84, &v75);
    lazy protocol witness table accessor for type MatchedFrame and conformance MatchedFrame();
    Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v64) = AGGraphCreateOffsetAttribute2();
    v24 = AGGraphCreateOffsetAttribute2();
    v22 |= 0x18u;
    v77[0] = *v86;
    v77[1] = *&v86[16];
    v78 = *&v86[32];
    v79 = *&v86[48];
    v75 = v84;
    v76 = v85;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedPosition(for:)(&v75);
    swift_endAccess();
    v27 = 0;
    v63 = v14 | 2;
  }

  else
  {
    outlined init with copy of _ViewInputs(&v84, &v75);
    v27 = 1;
  }

  v71 = v82;
  v72 = v83;
  *&v73[0] = __PAIR64__(v63, v22);
  *(&v73[1] + 1) = v81;
  *(v73 + 8) = v80;
  *&v74[0] = __PAIR64__(v23, v64);
  DWORD2(v74[0]) = v24;
  v60 = v25;
  *(v74 + 12) = v25;
  v69[0] = v73[0];
  v69[1] = v73[1];
  v70[0] = v74[0];
  LODWORD(v70[1]) = HIDWORD(v25);
  v67 = v82;
  v68 = v83;
  v28 = outlined init with copy of _ViewInputs(&v71, &v75);
  v58(v65, v28, &v67);
  v77[0] = v69[0];
  v77[1] = v69[1];
  v78 = v70[0];
  v79 = v70[1];
  v75 = v67;
  v76 = v68;
  v29 = outlined destroy of _ViewInputs(&v75);
  if ((v27 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v29);
    MEMORY[0x1EEE9AC00](v30);
    v47 = partial apply for closure #4 in static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:);
    WitnessTable = v31;
    AGGraphMutateAttribute();
  }

  if ((v59 & v62) != 1)
  {
    goto LABEL_19;
  }

  v32 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v65[0]);
  if ((v32 & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  v33 = v32;
  v34 = lastIdentity + 1;
  lastIdentity = v34;
  v62 = v34;
  if ((v14 & 0x100) == 0)
  {
LABEL_15:
    v69[0] = *v86;
    v69[1] = *&v86[16];
    v70[0] = *&v86[32];
    LODWORD(v70[1]) = *&v86[48];
    v67 = v84;
    v68 = v85;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v67);
    v69[0] = *v86;
    v69[1] = *&v86[16];
    v70[0] = *&v86[32];
    LODWORD(v70[1]) = *&v86[48];
    v67 = v84;
    v68 = v85;
    v36 = CachedEnvironment.animatedSize(for:)(&v67);
    swift_endAccess();
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v37 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v53, v67);
    if (v37)
    {
      v38 = *(v37 + 72);
    }

    else
    {
      v38 = 0;
    }

    *&v67 = __PAIR64__(HIDWORD(v49), v62);
    *(&v67 + 1) = __PAIR64__(v33, v56);
    *&v68 = __PAIR64__(v36, v35);
    *(&v68 + 1) = __PAIR64__(*&v86[36], *&v86[28]);
    LODWORD(v69[0]) = v51;
    BYTE4(v69[0]) = v38;
    MEMORY[0x1EEE9AC00](v37);
    v39 = type metadata accessor for MatchedDisplayList();
    v47 = v39;
    WitnessTable = swift_getWitnessTable();
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_2(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v67, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, v46, v39, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
    LOBYTE(v67) = 0;
    PreferencesOutputs.subscript.setter(v66[0], &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_19:
    v67 = v82;
    v68 = v83;
    *&v69[0] = __PAIR64__(v63, v22);
    *(v69 + 8) = v80;
    *(&v69[1] + 1) = v81;
    *&v70[0] = __PAIR64__(v23, v64);
    DWORD2(v70[0]) = v24;
    *(v70 + 12) = v60;
    result = outlined destroy of _ViewInputs(&v67);
    v43 = v61;
    *v61 = v65[0];
    v43[1] = v65[1];
    return result;
  }

  v44 = v54;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v53, &v67);
  v54 = v44;
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v66[0] = v34;
    v45 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v66);
    v45(&v67, 0);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t static _MatchedGeometryEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v9;
  v14[4] = *(a2 + 64);
  v15 = *(a2 + 80);
  v10 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v10;
  v11 = *MEMORY[0x1E698D3F8];
  v16 = v8;
  v12 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  return static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)(&v16, v14, v11, a3, a4, &type metadata for Rectangle, a5, v12);
}

uint64_t closure #1 in static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)(uint64_t a1)
{
  v2 = type metadata accessor for _MatchedGeometryEffect();
  v3 = *(v2 + 40);
  v9[2] = v2;
  type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
  v5 = v4;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

void type metadata accessor for Attribute<(ViewFrame?, AnyOptionalAttribute)>()
{
  if (!lazy cache variable for type metadata for Attribute<(ViewFrame?, AnyOptionalAttribute)>)
  {
    type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(ViewFrame?, AnyOptionalAttribute)>);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MatchedSharedFrame<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t sub_18D1CE220(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for MatchedSharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);

  return a1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MatchedDisplayList<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for MatchedDisplayList<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MatchedFrame and conformance MatchedFrame()
{
  result = lazy protocol witness table cache variable for type MatchedFrame and conformance MatchedFrame;
  if (!lazy protocol witness table cache variable for type MatchedFrame and conformance MatchedFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedFrame and conformance MatchedFrame);
  }

  return result;
}

double LayoutPriorityLayout.placement(of:in:)@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v25 = *(a1 + 1);
  v26 = a1[3];
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v29 = *(a1 + 2);
  v6 = *(a1 + 48);
  v24 = v3;
  v27 = v4;
  v28 = v5;
  v30 = v6;
  PlacementContext.proposedSize.getter(&v20);
  v7 = v20;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  if (v6)
  {
    InputValue = AGGraphGetInputValue();
    v12 = *InputValue;
    v13 = InputValue[1];
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  result = v12 * 0.5;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  __asm { FMOV            V2.2D, #0.5 }

  *(a2 + 32) = _Q2;
  *(a2 + 48) = result;
  *(a2 + 56) = v13 * 0.5;
  return result;
}

uint64_t static Font.system(size:weight:design:)(uint64_t a1, char a2, char *a3, double a4)
{
  v7 = *a3;
  type metadata accessor for FontBox<Font.SystemProvider>(0, &lazy cache variable for type metadata for FontBox<Font.SystemProvider>, lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider);
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a1;
  *(result + 32) = a2 & 1;
  *(result + 33) = v7;
  *(result + 34) = 14;
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

void type metadata accessor for FontBox<Font.SystemProvider>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for FontBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for Font.SystemProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider()
{
  result = lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider;
  if (!lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider;
  if (!lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider;
  if (!lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider);
  }

  return result;
}

uint64_t destroy for FullEnvironmentBox(uint64_t a1)
{

  if (*(a1 + 16) != 1)
  {
  }
}

uint64_t FullEnvironmentBox.update(property:phase:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v3 = v1;
  v6 = *a1;
  v5 = *(a1 + 8);

  v8 = *AGGraphGetValue();
  if (v1[1])
  {
    v9 = v7;
    v18 = v1[1];
    type metadata accessor for KeyPath<EnvironmentValues, EnvironmentValues>();
    outlined copy of Environment<EnvironmentValues>.Content(v6, v5, 0);
    outlined copy of Environment<EnvironmentValues>.Content(v6, v5, 0);

    v10 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v10)
    {
      result = outlined consume of Environment<EnvironmentValues>.Content(v6, v5, 0);
      v2 = 0;
      if ((v9 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

  else
  {
    outlined copy of Environment<EnvironmentValues>.Content(v6, v5, 0);
    outlined copy of Environment<EnvironmentValues>.Content(v6, v5, 0);
  }

  v3[1] = v6;
LABEL_9:

  swift_getAtKeyPath();

  if (v3[2] == 1 || (PropertyList.Tracker.hasDifferentUsedValues(_:)(v8) & 1) != 0)
  {
    v17 = v5;
    v12 = v3[4];
    PropertyList.Tracker.reset()();
    if (v18)
    {
      v13 = *(v18 + 64);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v12 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v14 + 16));
    *(v14 + 24) = v13;
    os_unfair_lock_unlock((v14 + 16));

    result = outlined consume of EnvironmentValues?(v3[2]);
    v3[2] = v18;
    v3[3] = v12;
    v2 = 1;
    v5 = v17;
  }

  else
  {

    v2 = 0;
  }

LABEL_16:
  v15 = v3[2];
  if (v15 != 1)
  {
    v16 = v3[3];
    outlined copy of EnvironmentValues?(v15);
    outlined consume of Environment<EnvironmentValues>.Content(v6, v5, 0);
    outlined consume of Environment<EnvironmentValues>.Content(*a1, *(a1 + 8), *(a1 + 16));

    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = 1;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of Environment<EnvironmentValues>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t outlined consume of Environment<EnvironmentValues>.Content(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for FullEnvironmentBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = (a2 + 16);
  v4 = *(a2 + 16);

  if (v4 == 1)
  {
    *(a1 + 16) = *v5;
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 16) = v4;
    *(a1 + 24) = v6;
  }

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t LeafResponderFilter.init(data:size:position:transform:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  *a5 = result;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t type metadata completion function for _LazyLayoutViewCache()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for _LazyStack_Cache()
{
  type metadata accessor for MinorProperties();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EstimationCache();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheChildren>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v6 = *(i - 6);
      v5 = *(i - 5);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6 | (v5 << 32), v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 16 * result;
      *v12 = v6;
      *(v12 + 4) = v5;
      *(v12 + 8) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
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

unint64_t lazy protocol witness table accessor for type PinnedScrollableViews and conformance PinnedScrollableViews()
{
  result = lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews;
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews;
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews;
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews;
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BackdropProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

double LazySubviewPlacements.init(layout:cache:inputs:)@<D0>(int a1@<W0>, int a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3[3];
  v7 = a3[1];
  v27 = a3[2];
  v6 = v27;
  *v28 = v5;
  *&v28[16] = a3[4];
  v29 = *(a3 + 20);
  v8 = a3[1];
  v25 = *a3;
  v9 = v25;
  v26 = v8;
  v10 = *MEMORY[0x1E698D3F8];
  *(a4 + 40) = *MEMORY[0x1E698D3F8];
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E695F050];
  *(a4 + 96) = MEMORY[0x1E69E7CC0];
  *(a4 + 104) = v11;
  *&v5 = *v12;
  *&v8 = v12[1];
  *(a4 + 112) = *v12;
  *(a4 + 120) = v8;
  *(a4 + 144) = v5;
  *(a4 + 152) = v8;
  *(a4 + 176) = v5;
  *(a4 + 184) = v8;
  *&v5 = v12[2];
  *&v8 = v12[3];
  *(a4 + 128) = v5;
  *(a4 + 136) = v8;
  *(a4 + 160) = v5;
  *(a4 + 168) = v8;
  *(a4 + 192) = v5;
  *(a4 + 200) = v8;
  *(a4 + 208) = 0;
  *(a4 + 256) = 0;
  *(a4 + 264) = 0;
  *(a4 + 248) = 0;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0u;
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0u;
  *(a4 + 416) = 0u;
  *(a4 + 432) = 0u;
  *(a4 + 448) = 1;
  *(a4 + 468) = 0;
  *(a4 + 452) = 0;
  *(a4 + 460) = 0;
  *(a4 + 472) = 1;
  *(a4 + 20) = a2;
  LODWORD(v11) = *&v28[24];
  *a4 = a1;
  *(a4 + 4) = v11;
  *(a4 + 8) = vrev64_s32(*&v28[12]);
  v23 = v7;
  v24 = v6;
  v22 = v9;
  swift_beginAccess();
  *(a4 + 16) = *(v26 + 16);
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v25);
  LODWORD(v14) = 0;
  LODWORD(v15) = 0;
  if (v13 != v10)
  {
    v14 = AGCreateWeakAttribute();
    v15 = HIDWORD(v14);
  }

  *(a4 + 24) = v14;
  *(a4 + 28) = v15;
  v16 = _s7SwiftUI12_GraphInputsV3topyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAcAE19ScrollPhaseStateKey33_6CF0FEE8B18B5917140F6DA7931A3E74LLV_09AttributeC008OptionalU0VyAA0ijK0VGTt0B5();
  v17 = v29;
  if ((v16 & 0x100000000) != 0)
  {
    v18 = v10;
  }

  else
  {
    v18 = v16;
  }

  *(a4 + 32) = v18;
  *(a4 + 36) = v17;
  outlined init with copy of _GraphInputs(&v25, &v21);
  outlined destroy of _ViewInputs(&v25);
  v19 = v23;
  *(a4 + 48) = v22;
  *(a4 + 64) = v19;
  result = *&v24;
  *(a4 + 80) = v24;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LazyLayoutComputer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19ScrollPrefetchStateV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for ScrollPrefetchState);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19ScrollPrefetchStateV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static ScrollPrefetchState.defaultValue;
  }

  return *v3;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19ScrollPrefetchStateV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19ScrollPrefetchStateV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ScrollPrefetchState)
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

uint64_t closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 132);
  v4 = v3 == *MEMORY[0x1E698D3F8];
  if (v3 == *MEMORY[0x1E698D3F8])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  type metadata accessor for LazySubviewPlacements();
  return LazySubviewPlacements.$layoutComputer.setter(v5 | (v4 << 32));
}

unint64_t lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment()
{
  result = lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment;
  if (!lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment;
  if (!lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment);
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 196) - *(*v14 + 196) >= 0)
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for LazyLayoutCacheItem();
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t one-time initialization function for lazyLayoutReuse()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.lazyLayoutReuse);
  v5 = __swift_project_value_buffer(v1, static Log.lazyLayoutReuse);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000028, 0x800000018DD83660);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

uint64_t instantiation function for generic protocol witness table for LazyTransition<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static LazyLayout._makeView(root:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v75 = *(a2 + 32);
  v76 = v10;
  v12 = *(a2 + 48);
  v77 = *(a2 + 64);
  v13 = *(a2 + 16);
  v73 = *a2;
  v74 = v13;
  v69 = v75;
  v70 = v12;
  v71 = *(a2 + 64);
  v14 = *a1;
  v78 = *(a2 + 80);
  v15 = v73;
  v72 = *(a2 + 80);
  v67 = v73;
  v68 = v11;
  outlined init with copy of _ViewInputs(&v73, v64);
  v37 = a4;
  (*(a5 + 32))(v64, a4, a5);
  v36 = a6;
  if (LOBYTE(v64[0]) == 1)
  {
    v16 = DWORD1(v69) | 0xC;
  }

  else
  {
    v16 = DWORD1(v69) & 0xFFFFFFF3;
    if (LOBYTE(v64[0]) == 2)
    {
      v16 |= 4u;
    }
  }

  DWORD1(v69) = v16;

  v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v17);
  if (!v18 || *(v18 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v67 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v15);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v67, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v67);
  static CorePlatformProvidersDefinition.providers.getter(v64);
  if (v65)
  {
    (*(v66 + 8))(&v67);
  }

  v59[2] = v69;
  v59[3] = v70;
  v59[4] = v71;
  v60 = v72;
  v59[0] = v67;
  v59[1] = v68;
  v41 = v69;
  v42 = v70;
  v43 = v71;
  v44 = v72;
  v39 = v67;
  v40 = v68;
  v19 = outlined init with copy of _ViewInputs(v59, v61);
  a3(v58, v19, &v39);
  v61[2] = v41;
  v61[3] = v42;
  v61[4] = v43;
  v62 = v44;
  v61[0] = v39;
  v61[1] = v40;
  outlined destroy of _ViewInputs(v61);
  LODWORD(v43) = *MEMORY[0x1E698D3F8];
  *(&v43 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v44) = 0;
  v45 = 0;
  v46 = 0;
  swift_weakInit();
  v47 = 0;
  v48 = 0;
  v49 = -1;
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = 0uLL;
  outlined init with copy of _GraphInputs(&v73, v56);
  outlined init with copy of _GraphInputs(&v73, v56);
  v20 = _ViewListOutputs.makeAttribute(inputs:)(&v39);
  outlined destroy of _ViewListInputs(&v39);
  LODWORD(v56[0]) = v14;
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v21 = a5;
  v22 = static Animatable.makeAnimatable(value:inputs:)(v56, &v39, v37, *(a5 + 8));
  v63[0] = v39;
  v63[1] = v40;
  v63[2] = v41;
  outlined destroy of _GraphInputs(v63);
  v23 = WORD2(v75);
  if ((WORD2(v75) & 0x1000) == 0)
  {
LABEL_19:
    v29 = v21;
    type metadata accessor for _LazyLayoutViewCache();
    v56[2] = v69;
    v56[3] = v70;
    v56[4] = v71;
    v57 = v72;
    v56[0] = v67;
    v56[1] = v68;
    v41 = v69;
    v42 = v70;
    v43 = v71;
    v44 = v72;
    v39 = v67;
    v40 = v68;
    outlined init with copy of _ViewInputs(v56, v54);
    v30 = _LazyLayoutViewCache.__allocating_init(layout:list:inputs:)(v22, v20, &v39);
    swift_beginAccess();
    v31 = *(v30 + 120);
    v32 = *(v30 + 128);
    v52 = v31;
    v53 = v32;
    if ((v23 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v15);
      static CorePlatformProvidersDefinition.providers.getter(&v39);
      v33 = v50;
      if (v50)
      {
        v34 = v51;
        v54[2] = v75;
        v54[3] = v76;
        v54[4] = v77;
        v55 = v78;
        v54[0] = v73;
        v54[1] = v74;
        v35 = *(v30 + 148);

        static LazyLayout.accessibilityRole.getter(v29, &v38);
        (*(v34 + 8))(&v52, v54, v35, &v38, v33, v34);

        outlined destroy of _ViewListOutputs(v58);
        v41 = v69;
        v42 = v70;
        v43 = v71;
        v44 = v72;
        v39 = v67;
        v40 = v68;
        result = outlined destroy of _ViewInputs(&v39);
        v31 = v52;
        v32 = v53;
LABEL_25:
        *v36 = v31;
        v36[1] = v32;
        return result;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v58);
    v41 = v69;
    v42 = v70;
    v43 = v71;
    v44 = v72;
    v39 = v67;
    v40 = v68;
    result = outlined destroy of _ViewInputs(&v39);
    goto LABEL_25;
  }

  v24 = v70;
  *&v39 = v70;
  v25 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v27 = *(v24 + 2);
  if (v25 != v27)
  {
    if (v25 >= v27)
    {
      goto LABEL_27;
    }

    if (*&v24[16 * v25 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_19;
    }
  }

  if (v27 >= v25)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v27 >= *(v24 + 3) >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27 + 1, 1, v24);
      *&v70 = v24;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v25, v25, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v70 = v24;
    goto LABEL_19;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateViewCache and conformance UpdateViewCache()
{
  result = lazy protocol witness table cache variable for type UpdateViewCache and conformance UpdateViewCache;
  if (!lazy protocol witness table cache variable for type UpdateViewCache and conformance UpdateViewCache)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateViewCache and conformance UpdateViewCache);
  }

  return result;
}

void type metadata accessor for Attribute<[_LazyLayout_PlacedSubview]>()
{
  if (!lazy cache variable for type metadata for Attribute<[_LazyLayout_PlacedSubview]>)
  {
    type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(255, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<[_LazyLayout_PlacedSubview]>);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazySubviewPlacements<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazyPreference<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for LazyPreference<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews()
{
  result = lazy protocol witness table cache variable for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews;
  if (!lazy protocol witness table cache variable for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazyLayoutComputer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t LazySubviewPlacements.$layoutComputer.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 40) = v2;
  return result;
}

uint64_t LazyPreference.updateCache(_:)(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  if (*(a2 + 16) == &type metadata for DisplayList.Key)
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for [LazyLayoutCacheItem], v6, type metadata accessor for LazyLayoutCacheItem, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems();

    v7 = Attribute.init<A>(body:value:flags:update:)();

    *(v2 + 4) = v7;
  }

  return result;
}

_OWORD *initializeWithCopy for LazyScrollable(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_weakCopyInit();
  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for LazyLayoutReuseIdleInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24LazyLayoutReuseIdleInputV_Tt0B5(a1, v3);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA21FocusableFillerBoundsV0I0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for FocusableFillerBounds.Key);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for FocusableFillerBounds.Key;
  }

  __break(1u);
  return result;
}

void *static LazyLayout.accessibilityRole.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 32))(&v5);
  if ((v5 & 1) != 0 || (v5 & 0x100) == 0)
  {
    v4 = (BYTE1(v5) >> 1) & 1;
    if ((v5 & 2) != 0)
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  *a2 = v4;
  return result;
}

uint64_t _ViewInputs.accessibilityEnabled.getter()
{
  if (one-time initialization token for accessibilityEnabled != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.accessibilityEnabled;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

id static Canvas._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v116 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  v112 = *(a2 + 32);
  v113 = v9;
  v114 = *(a2 + 64);
  v115 = *(a2 + 80);
  v10 = *(a2 + 16);
  v110 = *a2;
  v111 = v10;
  v74 = MEMORY[0x1E69E7CC0];
  v11 = *MEMORY[0x1E698D3F8];
  LODWORD(v75) = 0;
  HIDWORD(v75) = v11;
  v71 = v11;
  v69 = v113;
  v73 = a4;
  v70 = a3;
  v72 = v8;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v113) & 1) == 0)
  {
    goto LABEL_24;
  }

  v65 = a5;
  v63 = v110;
  LODWORD(v68) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v110);
  v12 = swift_beginAccess();
  v66 = v111;
  LODWORD(v98) = *(v111 + 16);
  MEMORY[0x1EEE9AC00](v12);
  v59 = type metadata accessor for Canvas.ChildEnvironment();
  WitnessTable = swift_getWitnessTable();
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, MEMORY[0x1E698D388]);
  v13 = a3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v98, closure #1 in Attribute.init<A>(_:)partial apply, v58, v59, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v67 = v85[0];
  if (a3 == &type metadata for EmptyView)
  {
    v28 = v72;
    v64 = v71;
    v25 = &v77;
    goto LABEL_21;
  }

  LODWORD(v102) = v71;
  *(&v102 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v103) = 0;
  v105 = 0;
  v104 = 0;
  v16 = swift_weakInit();
  v107 = 0;
  v106 = 0;
  v108 = -1;
  v98 = v110;
  v99 = v111;
  v100 = v112;
  v101 = 0uLL;
  MEMORY[0x1EEE9AC00](v16);
  v59 = a3;
  WitnessTable = a4;
  LODWORD(v77) = v72;
  outlined init with copy of _GraphInputs(&v110, v85);
  type metadata accessor for Canvas();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static Canvas._makeView(view:inputs:), a3, v85);
  v17 = LODWORD(v85[0]);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  *v88 = v17;
  v18 = v73;
  (*(v73 + 32))(v97, v88, &v98, v13, v73);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v17, v13, v18);
  v64 = _ViewListOutputs.makeAttribute(inputs:)(&v98);
  v19 = specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v62 = v19;
  v20 = swift_dynamicCastClassUnconditional();
  v95 = v114;
  v93 = v112;
  v94 = v113;
  v91 = v110;
  v96 = v115;
  v92 = v111;
  v21 = v112;
  LODWORD(v95) = *(v20 + 248);
  DWORD1(v95) = v95;
  memset(v109, 0, sizeof(v109));
  outlined init with copy of _ViewInputs(&v110, v85);
  LODWORD(v18) = specialized GraphHost.intern<A>(_:for:id:)(v109, &type metadata for ViewTransform, 0);
  outlined destroy of ViewTransform(v109);
  v61 = v21;
  HIDWORD(v94) = v18;
  LODWORD(v93) = v21 | 0xC;
  v22 = MEMORY[0x1E69E7CC0];
  LODWORD(v19) = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], &type metadata for PreferenceKeys, 0);

  *&v94 = v22;
  DWORD2(v94) = v19;
  *&v85[0] = v22;
  v23 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);

  v24 = *(v22 + 16);
  v25 = &v77;
  if (v23 == v24)
  {
    goto LABEL_8;
  }

  if (v23 >= v24)
  {
    goto LABEL_33;
  }

  if (*(MEMORY[0x1E69E7CC0] + 16 * v23 + 32) != &type metadata for DisplayList.Key)
  {
LABEL_8:
    if (v24 >= v23)
    {
      v26 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v94 = v26;
      if (!isUniquelyReferenced_nonNull_native || v24 >= *(v26 + 3) >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24 + 1, 1, MEMORY[0x1E69E7CC0]);
        *&v94 = v26;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v23, v23, 1, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      *&v94 = v26;
      goto LABEL_13;
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

LABEL_13:
  DWORD1(v93) = DWORD1(v112) | 0x22;
  if (v68)
  {
    v28 = v72;
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA21UsingGraphicsRendererV_Tt2g5(&v91, 1);

    LOBYTE(v85[0]) = 1;
    v29 = MEMORY[0x1E69E7CC0];
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v31 = swift_allocObject();
    *(v31 + 16) = v67;
    *(v31 + 24) = v29;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0u;
    *(v31 + 64) = 0u;
    *(v31 + 80) = 256;
    *(v31 + 88) = v30;

    *&v92 = v31;
    v28 = v72;
    if ((v61 & 0x20) == 0)
    {
      LODWORD(v93) = v61 | 0x2C;
    }
  }

  v89[2] = v93;
  v89[3] = v94;
  v89[4] = v95;
  v90 = v96;
  v89[0] = v91;
  v89[1] = v92;
  *&v88[36] = v93;
  *&v88[52] = v94;
  *&v88[68] = v95;
  *&v88[84] = v96;
  *&v88[4] = v91;
  *&v88[20] = v92;
  result = AGSubgraphGetCurrent();
  if (!result)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  LODWORD(v85[0]) = v64;
  *(v85 + 4) = *v88;
  *(&v85[1] + 4) = *&v88[16];
  *(&v85[5] + 4) = *&v88[80];
  *(&v85[4] + 4) = *&v88[64];
  *(&v85[3] + 4) = *&v88[48];
  *(&v85[2] + 4) = *&v88[32];
  *&v86 = result;
  *(&v86 + 1) = MEMORY[0x1E69E7CC8];
  v82 = v85[5];
  v83 = v86;
  v77 = v85[0];
  v78 = v85[1];
  v79 = v85[2];
  v87 = 0;
  v84 = 0;
  v80 = v85[3];
  v81 = v85[4];
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(v89, &v76);
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for [CanvasSymbols.Child], &type metadata for CanvasSymbols.Child, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type CanvasSymbols and conformance CanvasSymbols();
  v64 = Attribute.init<A>(body:value:flags:update:)();

  outlined destroy of _ViewListOutputs(v97);
  outlined destroy of _ViewListInputs(&v98);
  outlined destroy of CanvasSymbols(v85);
  v80 = v94;
  v81 = v95;
  LODWORD(v82) = v96;
  v77 = v91;
  v78 = v92;
  v79 = v93;
  outlined destroy of _ViewInputs(&v77);
LABEL_21:
  LODWORD(a5) = ++lastIdentity;
  if (BYTE5(v112))
  {
    goto LABEL_30;
  }

  for (i = v28; ; i = v72)
  {
    LODWORD(v77) = a5;
    v100 = v112;
    v101 = v113;
    v102 = v114;
    LODWORD(v103) = v115;
    v98 = v110;
    v99 = v111;
    swift_beginAccess();
    v34 = CachedEnvironment.animatedPosition(for:)(&v98);
    v100 = v112;
    v101 = v113;
    v102 = v114;
    LODWORD(v103) = v115;
    v98 = v110;
    v99 = v111;
    v35 = CachedEnvironment.animatedCGSize(for:)(&v98);
    swift_endAccess();
    v36 = *MEMORY[0x1E695F040];
    v37 = *(MEMORY[0x1E695F040] + 8);
    v38 = *(MEMORY[0x1E695F040] + 16);
    v39 = *(MEMORY[0x1E695F040] + 24);
    WitnessTable = v73;
    v59 = v70;
    v40 = CanvasDisplayList.init(identity:view:position:containerPosition:size:transform:environment:symbols:lastBounds:isFlattened:cachedSymbols:)(&v77, i, v34, SDWORD1(v114), v35, SHIDWORD(v113), v67, v64, v85, v36, v37, v38, v39, v68 & 1, 0);
    MEMORY[0x1EEE9AC00](v40);
    v41 = type metadata accessor for CanvasDisplayList();
    v59 = v41;
    WitnessTable = swift_getWitnessTable();
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v85, closure #1 in Attribute.init<A>(_:)partial apply, v58, v41, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);
    v44 = v25[11];
    v100 = v25[10];
    v101 = v44;
    v102 = v25[12];
    v103 = *&v85[5];
    v45 = v25[9];
    v98 = v25[8];
    v99 = v45;
    (*(*(v41 - 8) + 8))(&v98, v41);
    LOBYTE(v85[0]) = 0;
    PreferencesOutputs.subscript.setter(*v88, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v65;
    v8 = v72;
LABEL_24:
    v100 = v112;
    v101 = v113;
    v102 = v114;
    LODWORD(v103) = v115;
    v98 = v110;
    v99 = v111;
    swift_beginAccess();
    v46 = CachedEnvironment.animatedSize(for:)(&v98);
    v100 = v112;
    v101 = v113;
    v102 = v114;
    LODWORD(v103) = v115;
    v98 = v110;
    v99 = v111;
    v47 = CachedEnvironment.animatedPosition(for:)(&v98);
    swift_endAccess();
    v48 = HIDWORD(v113);
    type metadata accessor for Canvas();
    LeafResponderFilter.init(data:size:position:transform:)(v8, v46, v47, v48, &v98);
    v68 = v98;
    v49 = v99;
    v25 = v69;
    *&v98 = v69;
    v50 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v51 = *(v25 + 2);
    if (v50 == v51)
    {
      break;
    }

    if (v50 < v51)
    {
      if (*&v25[v50 + 2] == &type metadata for ViewRespondersKey)
      {
        v98 = v68;
        *&v99 = v49;
        MEMORY[0x1EEE9AC00](v50);
        v52 = type metadata accessor for LeafResponderFilter();
        v59 = v52;
        WitnessTable = swift_getWitnessTable();
        _sSay7SwiftUI13ViewResponderCGMaTm_8(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
        v54 = v53;

        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v98, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v58, v52, MEMORY[0x1E69E73E0], v54, MEMORY[0x1E69E7410], v55);

        LOBYTE(v98) = 0;
        v50 = PreferencesOutputs.subscript.setter(LODWORD(v85[0]), &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }

      break;
    }

    __break(1u);
LABEL_30:
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v63, &v98);
    result = AGWeakAttributeGetAttribute();
    if (result == v71)
    {
      goto LABEL_35;
    }

    LODWORD(v85[0]) = a5;
    v56 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v85);
    v56(&v98, 0);
  }

  v100 = v112;
  v101 = v113;
  v102 = v114;
  LODWORD(v103) = v115;
  v98 = v110;
  v99 = v111;
  MEMORY[0x1EEE9AC00](v50);
  v58[0] = v70;
  v58[1] = v73;
  LODWORD(v59) = v72;
  _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(&v98, partial apply for implicit closure #1 in static RendererLeafView.makeLeafView(view:inputs:), &v57, v71);

  *a5 = v74;
  a5[1] = v75;
  return result;
}

uint64_t CanvasDisplayList.init(identity:view:position:containerPosition:size:transform:environment:symbols:lastBounds:isFlattened:cachedSymbols:)@<X0>(_DWORD *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14, uint64_t a15)
{
  *a9 = *a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  *(a9 + 28) = a8;
  type metadata accessor for PropertyList.Tracker();
  v20 = swift_allocObject();
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  result = swift_allocObject();
  *(result + 16) = 0;
  v22 = MEMORY[0x1E69E7CC8];
  v23 = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  *(result + 32) = v22;
  *(result + 40) = v22;
  *(result + 48) = v23;
  *(result + 56) = 0;
  *(v20 + 16) = result;
  *(a9 + 32) = v20;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  *(a9 + 64) = a13;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  return result;
}

double Alignment.fraction.getter(unint64_t a1, unint64_t a2)
{
  AlignmentKey.fraction.getter(a1);
  v4 = v3;
  AlignmentKey.fraction.getter(a2);
  return v4;
}

uint64_t type metadata completion function for Canvas()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance Canvas<A>.ChildEnvironment()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for Canvas<A>.ChildEnvironment(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CanvasDisplayList<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for CanvasDisplayList<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for HorizontalAlignment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for LazyTransition()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazyTransition<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, a2, a3, type metadata accessor for _EnvironmentKeyWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void *assignWithCopy for EnvironmentObject(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  return a1;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_CompositingGroupEffect>, &type metadata for _CompositingGroupEffect, &protocol witness table for _CompositingGroupEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

uint64_t MutableBox.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t static Group<A>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for DisplayList.BackdropGroup(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t static ModifiedContent<>._makeCustomHoverEffect(effect:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a2[3];
  v21[2] = a2[2];
  v21[3] = v15;
  v22[0] = a2[4];
  *(v22 + 12) = *(a2 + 76);
  v16 = a2[1];
  v21[0] = *a2;
  v21[1] = v16;
  v20[1] = v14;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), a6, v20);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = v14;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  v18 = *(a8 + 32);

  v18(v20, v21, partial apply for closure #2 in static ModifiedContent<>._makeCustomHoverEffect(effect:inputs:body:), v17, a6, a8);
}

uint64_t sub_18D1D2144()
{

  return swift_deallocObject();
}

uint64_t View.foregroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _ForegroundStyleModifier();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, a3, v11);
  (*(v6 + 32))(v13, v8, a3);
  View.modifier<A>(_:)(v13, a2, v9);
  return (*(v10 + 8))(v13, v9);
}

unint64_t lazy protocol witness table accessor for type HorizontalEdge and conformance HorizontalEdge()
{
  result = lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge;
  if (!lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge;
  if (!lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for ViewLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for Circle._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset();
  *(a1 + 8) = result;
  return result;
}

uint64_t closure #1 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 + 36);
  v10[2] = v5;
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

void _OpacityShapeStyle._apply(to:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 36));
  if (v3 == 1.0)
  {
LABEL_2:
    v4 = *(*(a2 + 24) + 32);

    v4();
    return;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      MEMORY[0x1EEE9AC00](a1);
      v19 = *(v18 + 24);
      v30 = *(v18 + 16);
      v31 = v19;
      v32 = v2;
      v21 = v20;
      type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for _OpacityShapeStyle);
      ShapeStyle.mapCopiedStyle<A>(in:body:)(v21, partial apply for closure #2 in _OpacityShapeStyle._apply(to:), &v29, v30, v22);
      return;
    }

    if (v8 == 4 || !(v7 | v5 | v6))
    {
      goto LABEL_2;
    }
  }

  else if (*(a1 + 24))
  {
    if (v8 == 1)
    {
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      v12 = (*(v10 + 32))(a1, v11, v10);
      v34 = v6;
      MEMORY[0x1EEE9AC00](v12);
      v30 = v11;
      v31 = v10;
      v32 = v2;
      if (*(a1 + 40) == 1)
      {
        v14 = *(v13 + 32);
        v15 = v13;

        outlined consume of _ShapeStyle_Shape.Result(v16, 1u);
        *(v15 + 32) = 0;
        *(v15 + 40) = 5;
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v33 = v14;
      _ShapeStyle_Pack.modify(name:levels:_:)(&v34, v5, v7, partial apply for closure #1 in _OpacityShapeStyle._apply(to:));
      v26 = v14;
      v27 = a1[4];
      v28 = *(a1 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v27, v28);
      a1[4] = v26;
      *(a1 + 40) = 1;
    }

    else
    {
      (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
      if (*(a1 + 40) == 3)
      {
        v23 = a1[4];
        _s7SwiftUI8ColorBoxCyAA0C0V07OpacityC0VGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v3;

        outlined consume of _ShapeStyle_Shape.Result(v25, 3u);
        a1[4] = v24;
        *(a1 + 40) = 3;
      }
    }
  }

  else
  {
    outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
    a1[4] = 0;
    *(a1 + 40) = 0;
  }
}