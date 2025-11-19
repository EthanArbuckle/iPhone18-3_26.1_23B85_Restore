SwiftUI::BloomFilter TypedElement.copy(before:after:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 248);
  swift_allocObject();

  return specialized TypedElement.init(value:before:after:)(v2 + v5, a1, a2);
}

uint64_t initializeWithCopy for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18D0824E0(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t _ViewInputs.materialSubstrate.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v3);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v3, v7);
    if (result)
    {
      v6 = (result + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v6 = &static ArchivedViewInput.defaultValue;
    }

    v5 = 2 * (*v6 & 1);
  }

  *a1 = v5;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for UsingGraphicsRenderer)
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

uint64_t static HStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v38 = a2[2];
  v39 = v9;
  v40 = a2[4];
  v41 = *(a2 + 20);
  v10 = a2[1];
  v36 = *a2;
  v37 = v10;
  v18 = a3;
  v19 = a4;
  v17[1] = v8;
  type metadata accessor for HStack();
  type metadata accessor for _GraphValue();
  v11 = type metadata accessor for _VariadicView.Tree();
  _GraphValue.subscript.getter(partial apply for closure #1 in static HStack._makeView(view:inputs:), v11, v17);
  v12 = v17[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v26 = v36;
  v27 = v37;
  v33 = v41;
  v14 = v38;
  LODWORD(v28) = 0;
  v16 = v12;
  v32[0] = v36;
  v32[1] = v37;
  v32[3] = v39;
  v32[4] = v40;
  v32[2] = v28;
  v22 = v28;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  outlined init with copy of _ViewInputs(&v36, v34);
  outlined init with copy of _ViewInputs(v32, v34);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v16, &v20, &type metadata for _HStackLayout, a3, &protocol witness table for _HStackLayout, a4);
  v34[2] = v22;
  v34[3] = v23;
  v34[4] = v24;
  v35 = v25;
  v34[0] = v20;
  v34[1] = v21;
  outlined destroy of _ViewInputs(v34);
  LODWORD(v28) = v14;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v26);
    AGSubgraphEndTreeElement();
  }

  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v20 = v26;
  v21 = v27;
  return outlined destroy of _ViewInputs(&v20);
}

uint64_t type metadata completion function for DerivedValue()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

{
  return type metadata completion function for DerivedValue();
}

void type metadata accessor for Attribute<DisplayList>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Attribute();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized Array.remove(at:)(unint64_t a1)
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
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

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

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
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
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
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
    v6 = v3 + 32 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

Swift::Void __swiftcall PropertyList.Tracker.reset()()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 16));
  *(v1 + 24) = 0;
  if (*(*(v1 + 32) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + 32);
    *(v1 + 32) = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>();
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v1 + 32) = v6;
  }

  if (*(*(v1 + 40) + 16))
  {
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 40);
    *(v1 + 40) = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>();
    _NativeDictionary.removeAll(isUnique:)(v3);
    *(v1 + 40) = v7;
  }

  v4 = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 48);
  if (v4)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16));
  }

  else
  {
    *(v1 + 48) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15AnyTrackedValue33_D64CE6C88E7413721C59A34C0C940F2CLL_p_Tt1g5(0, *(v5 + 24) >> 1);
  }

  *(v1 + 56) = 0;
  os_unfair_lock_unlock((v1 + 16));
}

_DWORD *initializeWithCopy for PlatformViewChild(_DWORD *a1, _DWORD *a2)
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
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = ((v15 + 11) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 80);
  v26 = ((v21 + v25 + 16) & ~v25);
  v27 = ((v22 + v25 + 16) & ~v25);
  v28 = *(v24 + 48);

  if (v28(v27, 1, AssociatedTypeWitness))
  {
    v29 = *(v24 + 84);
    v30 = *(v24 + 64);
    if (v29)
    {
      v31 = *(v24 + 64);
    }

    else
    {
      v31 = v30 + 1;
    }

    memcpy(v26, v27, v31);
  }

  else
  {
    (*(v24 + 16))(v26, v27, AssociatedTypeWitness);
    v33 = *(v24 + 56);
    v32 = v24 + 56;
    v33(v26, 0, 1, AssociatedTypeWitness);
    v29 = *(v32 + 28);
    v30 = *(v32 + 8);
  }

  if (v29)
  {
    v34 = v30;
  }

  else
  {
    v34 = v30 + 1;
  }

  v35 = ((v26 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v27 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v36;
  v37 = ((v35 + 11) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v36 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;
  *((v37 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v38 + 11) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectRetain();

  return a1;
}

uint64_t destroy for PlatformViewChild(uint64_t a1)
{
  v1 = ((((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15;

  v2 = ((v1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (v2 + *(v4 + 80) + 16) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v5, AssociatedTypeWitness);
  }

  swift_unknownObjectRelease();
}

uint64_t static _OpacityEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  v39 = a2[2];
  v40 = v8;
  v41 = a2[4];
  v42 = *(a2 + 20);
  v9 = a2[1];
  v37 = *a2;
  v38 = v9;
  v10 = v8;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v8))
  {
    v30[0] = v7;
    v11 = a2[1];
    v31 = *a2;
    v32 = v11;
    v33 = a2[2];
    swift_retain_n();
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14_OpacityEffectV_Tt1B5(v30, &v31);
    v12 = v30[0];

    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA08_OpacityD0V_Tt3B503_s7a5UI14_nd3V9_e32View8modifier6inputs4bodyAA01_F7j6VAA11_kl6VyACG_s3_F6M29VAiA01_K0V_ANtctFZAiP_ANtcfU_ApnIIegnnr_AKyARGTf1nnnc_n(v12, &v37, a3, v7, a4);
  }

  v14 = a2[3];
  v33 = a2[2];
  v34 = v14;
  v35 = a2[4];
  v36 = *(a2 + 20);
  v15 = a2[1];
  v31 = *a2;
  v32 = v15;
  v16 = swift_retain_n();
  a3(v29, v16, &v31);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v10))
  {
    v17 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v29[0]);
    type metadata accessor for OpacityViewResponder();
    v18 = swift_allocObject();
    *(v18 + 216) = 0x3FF0000000000000;
    v19 = v40;
    *(v18 + 120) = v39;
    *(v18 + 136) = v19;
    *(v18 + 152) = v41;
    v20 = v38;
    *(v18 + 88) = v37;
    *(v18 + 184) = 0u;
    *(v18 + 200) = 0u;
    *(v18 + 168) = v42;
    *(v18 + 104) = v20;
    v21 = AGSubgraphGetCurrent();
    if (!v21)
    {
      outlined init with copy of _ViewInputs(&v37, &v31);

      __break(1u);

      __break(1u);
      return result;
    }

    if ((v17 & 0x100000000) != 0)
    {
      v22 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v22 = v17;
    }

    v23 = MEMORY[0x1E69E7CC0];
    *(v18 + 176) = v21;
    *(v18 + 40) = v23;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
    *(v18 + 80) = v23;
    *(v18 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(&v37, &v31);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v24 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v25 = *(v24 + 208);

    swift_beginAccess();
    *(v18 + 24) = v25;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v31 = __PAIR64__(v22, v7);
    *(&v31 + 1) = v18;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter();
    v26 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v31) = 0;
    PreferencesOutputs.subscript.setter(v26, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v37);
  MEMORY[0x1EEE9AC00](v27);
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  (*(v28 + 8))(partial apply for implicit closure #1 in closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:));

  *a4 = v29[0];
  a4[1] = v29[1];
  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14_OpacityEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA08_OpacityD0V_Tt3B503_s7a5UI14_nd3V9_e32View8modifier6inputs4bodyAA01_F7j6VAA11_kl6VyACG_s3_F6M29VAiA01_K0V_ANtctFZAiP_ANtcfU_ApnIIegnnr_AKyARGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, unsigned int a4@<W4>, void *a5@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  v65 = *(a2 + 32);
  v66 = v9;
  v67 = v10;
  v68 = *(a2 + 80);
  v11 = *(a2 + 16);
  v63 = *a2;
  v64 = v11;
  v46 = *a2;
  v12 = *(a2 + 16);
  v13 = *(a2 + 36);
  if ((v13 & 0x20) != 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) != 0 && (v13 & 0x2000) == 0)
  {
    v14 = a4;
    outlined init with copy of _ViewInputs(a2, &v57);
    v15 = AGMakeUniqueID();
    _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

    v44 = v15;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v63, v15);

    a4 = v14;
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v57);
    v44 = 0;
  }

  v43 = *(a2 + 48);
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v43);
  if (v16)
  {
    v17 = *(a2 + 48);
    v59 = *(a2 + 32);
    v60 = v17;
    v61 = *(a2 + 64);
    v62 = *(a2 + 80);
    v18 = *(a2 + 16);
    v57 = *a2;
    v58 = v18;
    swift_beginAccess();
    v19 = CachedEnvironment.animatedPosition(for:)(&v57);
    swift_endAccess();
    DWORD1(v67) = v19;
  }

  v55[2] = v65;
  v55[3] = v66;
  v55[4] = v67;
  v56 = v68;
  v55[0] = v63;
  v55[1] = v64;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v49 = v63;
  v50 = v64;
  v20 = outlined init with copy of _ViewInputs(v55, &v57);
  closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)(v20, &v49, a3, a4, v47);
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v57 = v49;
  v58 = v50;
  outlined destroy of _ViewInputs(&v57);
  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

  v21 = ++lastIdentity;
  if ((v13 & 0x100) == 0)
  {
    v22 = *MEMORY[0x1E698D3F8];
LABEL_11:
    v23 = *(a2 + 48);
    v51 = *(a2 + 32);
    v52 = v23;
    v53 = *(a2 + 64);
    v54 = *(a2 + 80);
    v24 = *(a2 + 16);
    v49 = *a2;
    v50 = v24;
    swift_beginAccess();
    v25 = CachedEnvironment.animatedPosition(for:)(&v49);
    v26 = *(a2 + 48);
    v51 = *(a2 + 32);
    v52 = v26;
    v53 = *(a2 + 64);
    v54 = *(a2 + 80);
    v27 = *(a2 + 16);
    v49 = *a2;
    v50 = v27;
    v28 = CachedEnvironment.animatedSize(for:)(&v49);
    swift_endAccess();
    v29 = *(v12 + 16);
    v30 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v47[0]);
    if ((v30 & 0x100000000) == 0)
    {
      v22 = v30;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v46, v49);
    if (v31)
    {
      v32 = *(v31 + 72);
    }

    else
    {
      v32 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v33 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v46, v49);
    if (v33)
    {
      v34 = *(v33 + 72);
    }

    else
    {
      v34 = 0;
    }

    v35 = *(a2 + 60);
    v36 = *(a2 + 68);
    v37 = *(a2 + 76);
    *&v49 = __PAIR64__(a1, v21);
    *(&v49 + 1) = __PAIR64__(v28, v25);
    *&v50 = __PAIR64__(v36, v35);
    *(&v50 + 1) = __PAIR64__(v37, v29);
    LODWORD(v51) = v22;
    BYTE4(v51) = v32;
    *(&v51 + 1) = __PAIR64__(v34, v44);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>();
    v38 = Attribute.init<A>(body:value:flags:update:)();
    if ((v13 & 0x20) != 0)
    {
      v39 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v43);
      if (v13 & 0x2000) == 0 && (v39)
      {
        AGGraphGetFlags();
        AGGraphSetFlags();
      }
    }

    LOBYTE(v49) = 0;
    PreferencesOutputs.subscript.setter(v38, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_24:
    v51 = v65;
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v49 = v63;
    v50 = v64;
    outlined destroy of _ViewInputs(&v49);

    *a5 = v47[0];
    a5[1] = v47[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v46, &v49);
  Attribute = AGWeakAttributeGetAttribute();
  v22 = *MEMORY[0x1E698D3F8];
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    v48[0] = v21;
    v42 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v48);
    v42(&v49, 0);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

id closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, unsigned int a4@<W4>, void *a5@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = a2[1];
  v32 = a2[2];
  v33 = v7;
  v9 = a2[3];
  v34 = a2[4];
  v10 = a2[1];
  v30 = *a2;
  v31 = v10;
  v26 = v32;
  v27 = v9;
  v28 = a2[4];
  v35 = *(a2 + 20);
  v29 = *(a2 + 20);
  v24 = v30;
  v25 = v8;
  a3(v23, a1, &v24);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v33) & 1) == 0)
  {
LABEL_7:
    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v30);
    MEMORY[0x1EEE9AC00](v21);
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    result = (*(v22 + 8))(implicit closure #1 in closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)partial apply);
    *a5 = v23[0];
    a5[1] = v23[1];
    return result;
  }

  v11 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v23[0]);
  type metadata accessor for OpacityViewResponder();
  v12 = swift_allocObject();
  *(v12 + 216) = 0x3FF0000000000000;
  v13 = v33;
  *(v12 + 120) = v32;
  *(v12 + 136) = v13;
  *(v12 + 152) = v34;
  v14 = v31;
  *(v12 + 88) = v30;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 168) = v35;
  *(v12 + 104) = v14;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    if ((v11 & 0x100000000) != 0)
    {
      v16 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v16 = v11;
    }

    v17 = MEMORY[0x1E69E7CC0];
    *(v12 + 176) = result;
    *(v12 + 40) = v17;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = v17;
    *(v12 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(&v30, &v24);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v18 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v19 = *(v18 + 208);

    swift_beginAccess();
    *(v12 + 24) = v19;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v24 = __PAIR64__(v16, a4);
    *(&v24 + 1) = v12;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter();
    v20 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v24) = 0;
    PreferencesOutputs.subscript.setter(v20, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter()
{
  result = lazy protocol witness table cache variable for type OpacityResponderFilter and conformance OpacityResponderFilter;
  if (!lazy protocol witness table cache variable for type OpacityResponderFilter and conformance OpacityResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpacityResponderFilter and conformance OpacityResponderFilter);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.OpacityAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028OpacityAccessibilityProviderV033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.OpacityAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t IDView.makeChildViewList(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30 = a1;
  v32 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 + 16);
  *&v14 = v13;
  *(&v14 + 1) = v8;
  v33 = *(v12 + 32);
  v38[0] = v14;
  v38[1] = v33;
  v15 = type metadata accessor for CachedView();
  v31 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29[-v16];
  outlined init with copy of _ViewListInputs(a2, v38);
  v18 = *(a3 + 52);
  _GraphInputs.pushStableID<A>(_:)(v5 + v18, v8);
  (*(v9 + 16))(v11, v5 + v18, v8);
  *v17 = v30;
  v39[0] = v13;
  v39[1] = v8;
  v40 = v33;
  v19 = type metadata accessor for CachedView();
  (*(v9 + 32))(&v17[*(v19 + 52)], v11, v8);
  v37[2] = v13;
  v37[3] = v15;
  v37[4] = swift_getWitnessTable();
  v20 = type metadata accessor for Attribute();
  v21 = MEMORY[0x1E69E73E0];
  v22 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v37, v15, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v23);
  (*(v31 + 8))(v17, v15);
  v24 = LODWORD(v39[0]);
  v35[2] = v13;
  v36 = v39[0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in Attribute.setValue(_:), v35, v13, v21, MEMORY[0x1E69E6370], v22, v25);
  _GraphValue.init(_:)(v24, v39);
  v26 = LODWORD(v39[0]);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v34[0] = v26;
  v27 = v33;
  (*(v33 + 32))(v34, v38, v13, v33);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v26, v13, v27);
  return outlined destroy of _ViewListInputs(v38);
}

uint64_t IDView.childInfo(metadata:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  (*(v6 + 16))(a1, v2 + *(a2 + 52), v5);
  (*(v6 + 56))(a1, 0, 1, v5);
  return v4;
}

uint64_t static IDView._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v12[1] = HIDWORD(a3);
  v13 = a4;
  v14 = a5;
  v15 = a6;
  type metadata accessor for IDView();
  v12[0] = v9;
  WitnessTable = swift_getWitnessTable();
  return static DynamicView.makeDynamicViewList(metadata:view:inputs:)(WitnessTable, v12, a2, a7);
}

uint64_t initializeWithTake for ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithCopy for Update.Action(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t static _TraitWritingModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, ValueMetadata *a5, uint64_t a6, void (*a7)(void, ValueMetadata *, uint64_t), uint64_t (*a8)(void, ValueMetadata *, uint64_t, double), uint64_t a9, uint64_t a10)
{
  v34 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  if (a5 != &type metadata for LayoutPriorityTraitKey || (*(a2 + 56) & 0x80) != 0)
  {
    v20 = outlined init with copy of _ViewListInputs(a2, v32);
    v29 = a3;
    v21 = *(a2 + 64);
    v31[0] = v15;
    v31[1] = v21;
    v22 = MEMORY[0x1EEE9AC00](v20);
    v27 = a8(0, a5, a6, v22);
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<ViewTraitCollection>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v31, a10, &v26, v27, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
    v33 = v30;
    v25 = _ViewListInputs.addTraitKey<A>(_:)(a5, a5);
    v29(v25, v32);
    return outlined destroy of _ViewListInputs(v32);
  }

  else
  {
    a7(0, &type metadata for LayoutPriorityTraitKey, a6);
    v16 = Attribute.unsafeBitCast<A>(to:)();
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      v18 = AGSubgraphBeginTreeElement();
      a3(v18, a2);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, a2, &type metadata for LayoutPriorityLayout, &protocol witness table for LayoutPriorityLayout);

      return AGSubgraphEndTreeElement();
    }

    else
    {
      a3(ShouldRecordTree, a2);
      return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, a2, &type metadata for LayoutPriorityLayout, &protocol witness table for LayoutPriorityLayout);
    }
  }
}

uint64_t _ViewListInputs.addTraitKey<A>(_:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 72))
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80) & 1;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    ViewTraitKeys.insert<A>(_:)(result, a2);

    *(v2 + 72) = v3;
    *(v2 + 80) = v4;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TraitWritingModifier<A>.AddTrait()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for _TraitWritingModifier<A>.AddTrait(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x193AC1170](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  v6 = MEMORY[0x193AC1170](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  result = MEMORY[0x193AC1170](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  type metadata accessor for AnyKeyPath();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  result = MEMORY[0x193AC1150](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for NSAttributedStringKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<Int>);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  result = MEMORY[0x193AC1170](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata accessor for _SetStorage<ObjectIdentifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _SetStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t _TraitWritingModifier.AddTrait.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v12 = type metadata accessor for _TraitWritingModifier();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  _TraitWritingModifier.AddTrait.traits.getter(a1, &v18);
  v15 = v18;
  if (!v18)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v19 = v15;
  _TraitWritingModifier.AddTrait.modifier.getter(type metadata accessor for _TraitWritingModifier, v14);
  (*(v9 + 32))(v11, v14, AssociatedTypeWitness);
  result = ViewTraitCollection.subscript.setter(v11, v16, a2, a3);
  *a4 = v19;
  return result;
}

uint64_t _TraitWritingModifier.AddTrait.traits.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

uint64_t _TraitWritingModifier.AddTrait.modifier.getter@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

void _GraphInputs.pushStableID<A>(_:)(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  if (*(v2 + 37))
  {
    (*(v10 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v11);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for StronglyHashable);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(&v16, &v19);
      v12 = v22;
      v13 = v23;
      v14 = __swift_project_boxed_opaque_existential_1(&v19, v22);
      _GraphInputs.pushScope<A>(id:)(v14, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      outlined destroy of StronglyHashable?(&v16, &lazy cache variable for type metadata for StronglyHashable?, &lazy cache variable for type metadata for StronglyHashable, &protocol descriptor for StronglyHashable);
      makeStableIDData<A>(from:)(a1, a2, &v19);
      if (v21)
      {
        UUID.init()();
        _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4UUIDV_Tt1g5(v7, &v16);
        v15 = v17;
      }

      else
      {
        v15 = v20;
        v16 = v19;
      }

      specialized _GraphInputs.pushScope<A>(id:)(v16, *(&v16 + 1), v15);
    }
  }
}

uint64_t assignWithCopy for SimultaneousGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

_DWORD *initializeWithCopy for ForEachChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

void type metadata accessor for Attribute<ViewTraitCollection>()
{
  if (!lazy cache variable for type metadata for Attribute<ViewTraitCollection>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>);
    }
  }
}

uint64_t ViewTraitCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v8 = type metadata accessor for ViewTraitCollection.AnyTrait();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v37 - v11;
  v37[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v42 = v37 - v17;
  v18 = 0;
  v19 = 0;
  v46 = v4;
  v20 = *v4;
  v21 = *v4 + 32;
  v22 = *(*v4 + 16);
  do
  {
    if (v22 == v19)
    {
      v18 = v43;
      v5 = v44;
      a4 = v45;
      (*(v43 + 16))(v14, v45, v44, v16);
      v30 = swift_getAssociatedTypeWitness();
      v19 = v39;
      (*(*(v30 - 8) + 32))(v39, v14, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v46;
      *v46 = v20;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v33 = v20[2];
        v32 = v20[3];
        if (v33 >= v32 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v20);
          *v22 = v20;
        }

        (*(v18 + 8))(a4, v5);
        v35 = v40;
        v34 = v41;
        v36 = v38;
        (*(v40 + 16))(v38, v19, v41);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v33, v36, v22, v34, &protocol witness table for ViewTraitCollection.AnyTrait<A>);
        result = (*(v35 + 8))(v19, v34);
        goto LABEL_13;
      }

LABEL_15:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      *v22 = v20;
      goto LABEL_10;
    }

    if (v19 >= v20[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v19 = (v19 + 1);
    outlined init with copy of AnyTrackedValue(v21 + v18, v47);
    v23 = v48;
    v5 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    a4 = (*(v5 + 8))(v23, v5);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v18 += 40;
  }

  while (a4 != a3);
  v24 = v43;
  v26 = v44;
  v25 = v45;
  (*(v43 + 16))(v42, v45, v44);
  result = swift_isUniquelyReferenced_nonNull_native();
  v22 = v46;
  *v46 = v20;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    v20 = result;
    *v22 = result;
  }

  if (v19 - 1 < v20[2])
  {
    v28 = *(v20 + v18 + 16);
    v29 = *(v20 + v18 + 24);
    __swift_mutable_project_boxed_opaque_existential_1(v20 + v18 - 8, v28);
    (*(v29 + 24))(v42, v26, v28, v29);
    result = (*(v24 + 8))(v25, v26);
LABEL_13:
    *v22 = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for TagValueTraitKey.Value()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TraitWritingModifier(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 + 16) & ~v6));
  }

  return a1;
}

uint64_t implicit closure #1 in static _AnchorWritingModifier.makeView(modifier:inputs:animated:body:)(unsigned int a1, char a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(a3 + 48);
    v6 = *(a3 + 64);
    v7 = *(a3 + 16);
    v23 = *(a3 + 32);
    v24 = v5;
    v25 = v6;
    v26 = *(a3 + 80);
    v21 = *a3;
    v22 = v7;
    swift_beginAccess();
    v8 = CachedEnvironment.animatedPosition(for:)(&v21);
    v9 = *(a3 + 48);
    v23 = *(a3 + 32);
    v24 = v9;
    v25 = *(a3 + 64);
    v26 = *(a3 + 80);
    v10 = *(a3 + 16);
    v21 = *a3;
    v22 = v10;
    v11 = CachedEnvironment.animatedCGSize(for:)(&v21);
    OffsetAttribute2 = swift_endAccess();
  }

  else
  {
    v8 = *(a3 + 64);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v11 = OffsetAttribute2;
  }

  v13 = *(a3 + 60);
  *&v21 = __PAIR64__(v8, a1);
  *(&v21 + 1) = __PAIR64__(v13, v11);
  MEMORY[0x1EEE9AC00](OffsetAttribute2);
  v17[2] = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for AnchorWriter();
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v21, partial apply for closure #1 in Attribute.init<A>(_:), v17, v18, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  return v20;
}

uint64_t instantiation function for generic protocol witness table for AnchorWriter<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnchorWriter<A, B>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t partial apply for closure #1 in static ConcentricCornerPaddingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 36);
  result = a2(0, v5, v6);
  v10 = *MEMORY[0x1E698D3F8];
  if ((v8 & 1) == 0)
  {
    v10 = v7;
  }

  *(a1 + 20) = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer()
{
  result = lazy protocol witness table cache variable for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer;
  if (!lazy protocol witness table cache variable for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer);
  }

  return result;
}

__n128 one-time initialization function for one()
{
  static UnitRect.one = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1ED52E568 = result;
  return result;
}

void type metadata accessor for AnchorBox<UnitRect>()
{
  if (!lazy cache variable for type metadata for AnchorBox<UnitRect>)
  {
    v0 = type metadata accessor for AnchorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnchorBox<UnitRect>);
    }
  }
}

double static Anchor.Source<A>.bounds.getter()
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  type metadata accessor for AnchorBox<UnitRect>();
  v0 = swift_allocObject();
  result = *&static UnitRect.one;
  v2 = xmmword_1ED52E568;
  *(v0 + 16) = static UnitRect.one;
  *(v0 + 32) = v2;
  return result;
}

uint64_t View._concentricPadding<A>(edge:in:minimum:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v22 = a4;
  v9 = a1;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ConcentricEdgePaddingModifier();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a2, a5, v15);
  *v17 = v9;
  (*(v10 + 32))(&v17[*(v13 + 36)], v12, a5);
  v18 = &v17[*(v13 + 40)];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  v18[32] = *(a3 + 32);
  View.modifier<A>(_:)(v17, v22, v13);
  return (*(v14 + 8))(v17, v13);
}

uint64_t _GlassEffectContainer.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v16 = *v1;
  v11 = *(a1 + 24);
  View.modifier<A>(_:)(&v16, v3, &type metadata for GlassEffectContainerModifier);
  v15[1] = v11;
  v15[2] = &protocol witness table for GlassEffectContainerModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  static ViewBuilder.buildExpression<A>(_:)(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA010ConcentriccD033_7079FF89BCF97F81EB250A589B9A5CEDLLV0E0V_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<ConcentricLayoutComputer.Engine>, &type metadata for ConcentricLayoutComputer.Engine, &protocol witness table for ConcentricLayoutComputer.Engine, type metadata accessor for TracingLayoutEngineBox);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 228) = v7;
    *(v4 + 232) = v6;
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<ConcentricLayoutComputer.Engine>, &type metadata for ConcentricLayoutComputer.Engine, &protocol witness table for ConcentricLayoutComputer.Engine, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 224) = *(a1 + 208);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t one-time initialization function for edgeBelowText()
{
  result = AGMakeUniqueID();
  static Spacing.Category.edgeBelowText = result;
  return result;
}

uint64_t one-time initialization function for edgeAboveText()
{
  result = AGMakeUniqueID();
  static Spacing.Category.edgeAboveText = result;
  return result;
}

uint64_t closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = a2;
  v15 = HIDWORD(a2);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v23[0] = v13;
  v23[1] = v15;
  v23[2] = a3;
  v21 = a4;
  v22 = a5;

  return ViewLayoutEngine.init(layout:context:children:)(v18, v23, &v21, a6, a7, a8);
}

uint64_t ViewLayoutEngine.init(layout:context:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 8);
  v10 = *a3;
  v21 = *a3;
  v11 = *(a3 + 1);
  v12 = type metadata accessor for ViewLayoutEngine();
  v13 = a6 + v12[12];
  LOBYTE(v23) = 1;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 1;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 1;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 1;
  v14 = (a6 + v12[13]);
  *v14 = 0u;
  v14[1] = 0u;
  *(a6 + v12[14]) = MEMORY[0x1E69E7CC0];
  v15 = a6 + v12[15];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(a6 + v12[16]) = 0;
  v16 = a6 + v12[10];
  *v16 = v10;
  *(v16 + 8) = v11;
  swift_getKeyPath();
  type metadata accessor for Axis?(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v9);
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
  LOBYTE(v23) = 0;
  _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
  LOBYTE(v10) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  v17 = v12[11];
  *(a6 + v17) = v10;
  v18 = *(a4 - 8);
  (*(v18 + 16))(a6, a1, a4);
  v19 = *(a6 + v17);
  v23 = v21;
  v24 = v11;
  v25 = 0;
  v26 = v19;
  (*(a5 + 32))(&v23, a4, a5);
  (*(v18 + 8))(a1, a4);
}

unint64_t lazy protocol witness table accessor for type [GlassContainer.Effect] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GlassContainer.Effect] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GlassContainer.Effect] and conformance [A])
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Effect], &type metadata for GlassContainer.Effect, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GlassContainer.Effect] and conformance [A]);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.GlassContainerCacheKey);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019GlassContainerCacheV033_7521D6231838360D8883796B4320212FLLV_Tt0B5(a1, v6);
  if (v4)
  {
    return _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOcTm_0(v4 + 72, a2, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox, _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1);
  }

  swift_weakInit();
  return swift_weakAssign();
}

uint64_t static ContainerStorageView._makeView(view:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v33 = a1[2];
  v34 = v3;
  v35 = a1[4];
  v36 = *(a1 + 20);
  v4 = a1[1];
  v31 = *a1;
  v32 = v4;
  v5 = BYTE4(v33);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v31, v29);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of WeakBox<GlassContainerCache>(v29);
  if (Strong)
  {
    LODWORD(v29[0]) = AGGraphCreateOffsetAttribute2();
    *(&v29[0] + 1) = Strong;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type _GlassContainerStorageView.Init and conformance _GlassContainerStorageView.Init();

    v8 = Attribute.init<A>(body:value:flags:update:)();

    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v25 = v33;
    v26 = v34;
    v27 = v35;
    v23 = v31;
    v24 = v32;
    v10 = v33;
    v28 = v36;
    LODWORD(v25) = 0;
    v30 = v36;
    v29[3] = v34;
    v29[4] = v35;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v25;
    outlined init with copy of _ViewInputs(&v31, v21);
    outlined init with copy of _ViewInputs(v29, v21);
    specialized static View.makeView(view:inputs:)(v8, v29, &v19);
    outlined destroy of _ViewInputs(v29);
    LODWORD(v25) = v10;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v19, &v23);
      AGSubgraphEndTreeElement();
    }

    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v22 = v28;
    v21[0] = v23;
    v21[1] = v24;
    outlined destroy of _ViewInputs(v21);
    v11 = v19;
    v12 = v20;
    v17 = MEMORY[0x1E69E7CC0];
    v18 = *MEMORY[0x1E698D3F8];
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v34))
    {
      v13 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v11);
      v14 = v13;
      if ((v13 & 0x100000000) != 0)
      {
        v14 = 0;
      }

      PreferencesOutputs.subscript.setter(v14 | ((HIDWORD(v13) & 1) << 32), &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    }

    if ((v5 & 2) != 0)
    {

      v15 = 128;
    }

    else
    {

      v15 = 0;
      v12 = v18;
    }

    *a2 = v17;
    *(a2 + 8) = v15;
    *(a2 + 12) = v12;
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CC0];
    v16 = *MEMORY[0x1E698D3F8];
    *(a2 + 8) = 0;
    *(a2 + 12) = v16;
  }

  return result;
}

void *initializeWithCopy for _GlassEffectContainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

unint64_t lazy protocol witness table accessor for type UpdatedContainerStorage and conformance UpdatedContainerStorage()
{
  result = lazy protocol witness table cache variable for type UpdatedContainerStorage and conformance UpdatedContainerStorage;
  if (!lazy protocol witness table cache variable for type UpdatedContainerStorage and conformance UpdatedContainerStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdatedContainerStorage and conformance UpdatedContainerStorage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerStorageView.Init and conformance ContainerStorageView.Init()
{
  result = lazy protocol witness table cache variable for type ContainerStorageView.Init and conformance ContainerStorageView.Init;
  if (!lazy protocol witness table cache variable for type ContainerStorageView.Init and conformance ContainerStorageView.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerStorageView.Init and conformance ContainerStorageView.Init);
  }

  return result;
}

uint64_t _GlassEffectContainer.init(smoothness:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    swift_beginAccess();
    v6 = static Spacing.defaultValue;
    if (dbl_1EAB21528 < *&static Spacing.defaultValue)
    {
      v6 = *&dbl_1EAB21528;
    }
  }

  else
  {
    v6 = a1;
  }

  *a4 = v6;
  type metadata accessor for _GlassEffectContainer();
  return a3();
}

uint64_t initializeBufferWithCopyOfBuffer for ForEachState.Evictor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

_DWORD *assignWithTake for ForEachState.LazyEdits(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v25 = *(a3 + 16);
    v24 = *(v25 - 8);
    v5 = *(v24 + 64);
    v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = type metadata accessor for IndexSet();
    v7 = *(v26 - 8);
    v8 = *(v7 + 80) & 0xF8 | 7;
    v23 = *(v7 + 64);
    if (((v23 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v23 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFF0)
    {
      v9 = ((v23 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v9 = 16;
    }

    v10 = *(a1 + v9);
    if (v10 >= 2 && v9 != 0)
    {
      v10 = *a1 + 2;
    }

    v12 = ~v8;
    if (v10 != 1)
    {
      (*(v24 + 8))(a1, v25);

      (*(v7 + 8))((((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v12, v26);
    }

    v13 = *(a2 + v9);
    if (v9)
    {
      v14 = v13 >= 2;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v13 = *a2 + 2;
    }

    if (v13 == 1)
    {
      *a1 = *a2;
    }

    else
    {
      (*(v24 + 32))(a1, a2, v25);
      v15 = ((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v15 = *v16;
      v17 = (v15 + v8 + 8) & v12;
      v18 = (v16 + v8 + 8) & v12;
      (*(v7 + 32))(v17, v18, v26);
      LOBYTE(v13) = 0;
      v19 = (v23 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
      v20 = (v23 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
      v21 = *v20;
      *(v19 + 16) = *(v20 + 16);
      *v19 = v21;
      *((v23 + 31 + v17) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 31 + v18) & 0xFFFFFFFFFFFFFFF8);
    }

    *(a1 + v9) = v13;
  }

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for Image.SymbolRenderingOptionsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

Swift::Int ForEachState.forEachItem(from:style:do:)(uint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t *, unint64_t *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v74 = a3;
  v75 = a4;
  v80 = a1;
  v7 = *v4;
  v8 = *(v7 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &value - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &value - v13;
  v16 = *(v15 + 104);
  v82 = *(*(v16 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &value - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = &value - v21;
  v79 = *a2;
  if (!AGSubgraphIsValid())
  {
LABEL_16:
    v29.value = 1;
    return v29.value;
  }

  v67 = v11;
  v69 = v17;
  v22 = *(v7 + 160);
  swift_beginAccess();
  v23 = *(v7 + 112);
  v84 = v8;
  v24 = *(v7 + 88);
  v25 = v22;
  v85 = v24;
  v86 = v16;
  v87 = v23;
  v26 = type metadata accessor for ForEach();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v70 = v27 + 48;
  v78 = v28;
  v29.value = v28(&v5[v25], 1, v26);
  if (LODWORD(v29.value) == 1)
  {
    goto LABEL_50;
  }

  v30 = v9;
  v32 = *(v9 + 16);
  v31 = v9 + 16;
  v76 = v32;
  v32(v14, &v5[v25], v8);
  v77 = v25;
  dispatch thunk of Collection.endIndex.getter();
  v33 = v77;
  v36 = *(v30 + 8);
  v35 = (v30 + 8);
  v34 = v36;
  v36(v14, v8);
  v73 = v26;
  v29.value = v78(&v5[v33], 1, v26);
  if (LODWORD(v29.value) == 1)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v76(v14, &v5[v33], v8);
  dispatch thunk of Collection.startIndex.getter();
  v34(v14, v8);
  v37 = *v80;
  v71 = v31;
  v72 = v34;
  if (v37 < 1)
  {
LABEL_20:
    v42 = 0;
    goto LABEL_36;
  }

  v68 = v37;
  v29 = ForEachState.fetchViewsPerElement()();
  if (v29.is_nil)
  {
    v67 = v35;
    v38 = *(*v5 + 184);
    v39 = *&v5[v38];
    v40 = *(v39 + 16);
    v41 = v77;
    if (!v40 || *&v5[*(*v5 + 192)] != v79)
    {
      v42 = 0;
      goto LABEL_36;
    }

    v42 = 0;
    v43 = v39 + 32;
    v44 = *(v39 + 16);
    do
    {
      v45 = v44 >> 1;
      v46 = v42 + (v44 >> 1);
      if (__OFADD__(v42, v44 >> 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v46 >= v40)
      {
        goto LABEL_45;
      }

      if (v68 >= *(v43 + 8 * v46))
      {
        v42 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_16;
        }

        v45 = v44 + ~v45;
      }

      v44 = v45;
    }

    while (v45 > 0);
    v29.value = v78(&v5[v77], 1, v73);
    if (LODWORD(v29.value) == 1)
    {
      goto LABEL_54;
    }

    v76(v14, &v5[v41], v8);
    Collection.formIndex(_:offsetBy:)();
    v29.value = v72(v14, v8);
    if (v42 < 1)
    {
      goto LABEL_36;
    }

    v56 = *&v5[v38];
    if (v42 > *(v56 + 16))
    {
      goto LABEL_48;
    }

    v55 = *(v56 + 8 * v42 + 24);
LABEL_35:
    *v80 = v68 - v55;
LABEL_36:
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v59 = *(v69 + 8);
        v60 = v19;
        v61 = AssociatedTypeWitness;
        v59(v60, AssociatedTypeWitness);
        v59(v83, v61);
        v29.value = 1;
        v5[*(*v5 + 248)] = 1;
        return v29.value;
      }

      v57 = ForEachState.item(at:offset:)(v19, v42);
      v84 = v79;
      if ((v74(v80, &v84, v57) & 1) == 0)
      {
        break;
      }

      v58 = v77;
      v29.value = v78(&v5[v77], 1, v73);
      if (LODWORD(v29.value) == 1)
      {
        goto LABEL_49;
      }

      v76(v14, &v5[v58], v8);
      dispatch thunk of Collection.formIndex(after:)();

      v72(v14, v8);
      ++v42;
    }

    v62 = *(v69 + 8);
    v63 = AssociatedTypeWitness;
    v62(v19, AssociatedTypeWitness);
    v62(v83, v63);
    v29.value = 0;
    return v29.value;
  }

  v48 = v76;
  v47 = v77;
  if (v79)
  {
    v49 = (v29.value * (v79 >> 1)) >> 64;
    v29.value *= v79 >> 1;
    if (v49 != v29.value >> 63)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  if (v68 < v29.value)
  {
    goto LABEL_20;
  }

  value = v29.value;
  v50 = v68 / v29.value;
  if (v29.value < 2)
  {
    v50 = v68;
  }

  v66 = v50;
  v29.value = v78(&v5[v77], 1, v73);
  if (LODWORD(v29.value) == 1)
  {
    goto LABEL_52;
  }

  v51 = &v5[v47];
  v52 = v67;
  v48(v67, v51, v8);
  v53 = dispatch thunk of Collection.count.getter();
  v72(v52, v8);
  if (v53 >= v66)
  {
    v42 = v66;
  }

  else
  {
    v42 = v53;
  }

  v54 = v77;
  v29.value = v78(&v5[v77], 1, v73);
  if (LODWORD(v29.value) != 1)
  {
    v76(v14, &v5[v54], v8);
    Collection.formIndex(_:offsetBy:)();
    v29.value = v72(v14, v8);
    v55 = value * v42;
    if ((value * v42) >> 64 == (value * v42) >> 63)
    {
      goto LABEL_35;
    }

    goto LABEL_47;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return v29.value;
}

Swift::Int specialized ForEachList.applyNodes(from:style:list:transform:to:)(uint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v13 = *a2;
  v9[2] = a6;
  v9[3] = v6;
  v10 = v7;
  v11 = a4;
  v12 = a5;
  return ForEachState.forEachItem(from:style:do:)(a1, &v13, partial apply for closure #1 in ForEachState.applyNodes(from:style:list:transform:to:), v9) & 1;
}

uint64_t getEnumTagSinglePayload for ForEach(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ForEachState<A, B, C>.Evictor()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for ForEachState<A, B, C>.Evictor(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ForEachList<A, B, C>.Init(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ForEach(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for IndexSetBuilder()
{
  result = type metadata accessor for IndexSet();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for evictByDefault()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
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
    result = static Semantics.forced >= v0;
  }

  static ForEachEvictionInput.evictByDefault = result;
  return result;
}

void type metadata accessor for AnyHashable2?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for ForEachState.Item()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for ForEachState.EditsBuilder()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IndexSetBuilder(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ForEachList<A, B, C>.Init()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

unint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for ForEachEvictionInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20ForEachEvictionInputV_Tt0B5(a1, v6);
  if (v2)
  {
    v3 = (v2 + 72);
    v4 = (v2 + 76);
  }

  else
  {
    v3 = &static ForEachEvictionInput.defaultValue;
    v4 = &static ForEachEvictionInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3 | (*v4 << 32);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20ForEachEvictionInputV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20ForEachEvictionInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ForEachEvictionInput)
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>, &type metadata for PreferencesOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(tag: Int, links: _DynamicPropertyBuffer)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Gradient.Stop>, &type metadata for Gradient.Stop, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.ResolvedHDR>, &type metadata for Color.ResolvedHDR, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.Resolved>, &type metadata for Color.Resolved, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeSet.Element>, &type metadata for _ShapeSet.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyHashable2>, &type metadata for AnyHashable2, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.RunSlice>, &type metadata for Text.Layout.RunSlice, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Float>, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutSubviews.Storage.IndexedAttributes>, &type metadata for LayoutSubviews.Storage.IndexedAttributes, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Gradient.StopDefinition>, &type metadata for Gradient.StopDefinition, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item>, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 656);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[656 * v8])
    {
      memmove(v12, v13, 656 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiffResult.MoveOperation>, &type metadata for DiffResult.MoveOperation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AttributedString.WritingDirection?>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvableTextSegmentAttribute.Value.Run>, &type metadata for ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString.AnyAttribute>, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphicsContext.ResolvedShading>, &type metadata for GraphicsContext.ResolvedShading, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID.Canonical>, &type metadata for _ViewList_ID.Canonical, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_ProposedSubview>, &type metadata for _LazyLayout_ProposedSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EndChildGeometries.CodableViewGeometry>, &type metadata for EndChildGeometries.CodableViewGeometry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAccessibilityCustomContentList.CodableEntry>, &type metadata for CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAccessibilityDataSeriesConfiguration.ValueDescription>, &type metadata for CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityDataSeriesConfiguration.ValueDescription>, &type metadata for AccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<GesturePhase<()>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutGestureBox.Child>, &type metadata for LayoutGestureBox.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableFillerBounds>, &type metadata for FocusableFillerBounds, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 112 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<TypedCanonicalViewID<ForEachConstantID>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Range<AttributedTextFormatting.Constraints.Index>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapeableContent>, &type metadata for ScrapeableContent, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt16>, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>, &type metadata for CAHostingLayerEvent.Resolved, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any.Type>, type metadata accessor for Any.Type, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview_V1>, &type metadata for _LazyLayout_PlacedSubview_V1, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionConfiguration>, &type metadata for SectionConfiguration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
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

uint64_t initializeWithCopy for ForEachState.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80) & 0xF8;
  v14 = v13 + 15;
  v15 = v7 + v13 + 15;
  v16 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 & v16;
  v18 = (v8 + v14) & v16;

  v11(v17, v18, v9);
  v19 = *(v12 + 48) + 7;
  v20 = (v19 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 16);
  *v20 = *v21;
  *(v20 + 16) = v22;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF8) + 17;
  v24 = v23 + v17;
  v25 = v23 + v18;
  *(v24 + 7) = *(v25 + 7);
  *(v24 + 15) = *(v25 + 15);

  return a1;
}

uint64_t ForEachState.EditsBuilder.init(data:idGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = *a2;
  v14 = type metadata accessor for ForEachState.EditsBuilder();
  v15 = a8 + v14[18];
  IndexSet.init()();
  v16 = v15 + *(type metadata accessor for IndexSetBuilder(0) + 20);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = (a8 + v14[19]);
  v18 = default argument 0 of ForEachState.Edits.init(removes:inserts:)(a3, a4, a5, a6, a7);
  v19 = default argument 0 of ForEachState.Edits.init(removes:inserts:)(a3, a4, a5, a6, a7);
  *v17 = v18;
  v17[1] = v19;
  result = (*(*(a3 - 8) + 32))(a8, a1, a3);
  *(a8 + v14[17]) = v22;
  return result;
}

uint64_t default argument 0 of ForEachState.Edits.init(removes:inserts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x193ABF2D0](v7, a2))
  {
    v8 = specialized Set.init(_nonEmptyArrayLiteral:)(v7, a2, a5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t ForEachState.update(view:)(uint64_t a1)
{
  v2 = v1;
  v258 = a1;
  v293 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v239.i64[0] = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  i = &v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v255 = &v227 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v256 = &v227 - v11;
  v262 = v5;
  v238 = *(v5 + 8);
  v12 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v236 = *(v13 - 8);
  v237 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v243 = &v227 - v14;
  v259 = v12;
  v244 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v254 = &v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v242 = &v227 - v18;
  v274 = *(v3 + 88);
  v19 = *(v3 + 112);
  v20 = *(v3 + 120);
  v289 = v274;
  v288 = v6;
  v290 = v4;
  v291 = v19;
  v292 = v20;
  v21 = type metadata accessor for ForEachState.LazyEdits();
  v248 = *(v21 - 8);
  v249 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v247 = (&v227 - v22);
  v23 = v274.i64[0];
  v263 = *(v274.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v24);
  v246 = &v227 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v253 = &v227 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v227 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v278 = &v227 - v32;
  v289 = v274;
  v288 = v6;
  v290 = v4;
  v291 = v19;
  v264 = v20;
  v292 = v20;
  v33 = type metadata accessor for ForEachState.Item();
  v280 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v272 = type metadata accessor for Optional();
  v241 = *(v272 - 1);
  MEMORY[0x1EEE9AC00](v272);
  v276 = &v227 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v265 = &v227 - v36;
  v260 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v270 = &v227 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v240 = (&v227 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v245 = (&v227 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v251 = (&v227 - v44);
  v252 = v4;
  v289 = v274;
  v288 = v6;
  v290 = v4;
  v291 = v19;
  v277 = v19;
  v45 = type metadata accessor for ForEach();
  v46 = type metadata accessor for Optional();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v250 = &v227 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v227 - v50;
  result = AGSubgraphIsValid();
  if (result)
  {
    v231 = v30;
    v279 = v33;
    v53 = AGMakeUniqueID();
    v271 = *(*v2 + 232);
    *&v2[v271] = v53;
    v54 = *(*v2 + 240);
    LODWORD(v268) = *&v2[v54];
    v269 = v54;
    *&v2[v54] = v268 + 1;
    ForEachState.invalidateViewCounts()();
    v55 = &v2[*(*v2 + 160)];
    swift_beginAccess();
    (*(v47 + 16))(v51, v55, v46);
    v233 = *(v45 - 8);
    v56 = v45;
    v57 = v233 + 48;
    v58 = *(v233 + 48);
    v261 = v56;
    v59 = v58(v51, 1);
    v234 = v47;
    v235 = v46;
    (*(v47 + 8))(v51, v46);
    v275 = v2;
    v257 = v6;
    v60 = v252;
    v61 = v6;
    v62 = v277;
    if (v59 == 1)
    {
      goto LABEL_5;
    }

    v232 = v57;
    if ((v58)(v55, 1, v261) == 1)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v63 = *&v55[*(v261 + 64)];
    v289 = v274;
    v288 = v61;
    v290 = v60;
    v291 = v62;
    type metadata accessor for ForEach.IDGenerator();
    if (v63)
    {
LABEL_5:
      v64 = v233;
      v65 = v250;
      v66 = v258;
      v67 = v261;
      (*(v233 + 16))(v250, v258, v261);
      (*(v64 + 56))(v65, 0, 1, v67);
      swift_beginAccess();
      (*(v234 + 40))(v55, v65, v235);
      swift_endAccess();
      v276 = v274.i64[1];
      v68 = v247;
      v69 = v61;
      v70 = v61;
      v71 = v264;
      ForEachState.LazyEdits.init()(v69, v280, v274.i64[1], v60, v62, v247);
      v72 = *(*v2 + 208);
      swift_beginAccess();
      (*(v248 + 40))(&v2[v72], v68, v249);
      swift_endAccess();
      v289 = v274;
      v288 = v70;
      v290 = v60;
      v291 = v62;
      v292 = v71;
      v250 = type metadata accessor for ForEachState.EditsBuilder();
      v249 = swift_allocBox();
      v74 = v73;
      v75 = v251;
      TupleTypeMetadata2 = *(v260 + 16);
      (TupleTypeMetadata2)(v251, v66, v70);
      v265 = *(v261 + 64);
      v288 = *&v265[v66];

      v268 = v74;
      ForEachState.EditsBuilder.init(data:idGenerator:)(v75, &v288, v70, v280, v276, v60, v62, v74);
      if ((v2[172] & 1) == 0)
      {
        v76 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        *&v2[*(*v2 + 216)] = Counter;
        (TupleTypeMetadata2)(v270, v66, v70);
        v78 = swift_allocObject();
        v79 = v78;
        v80 = *v2;
        if ((*&v2[*(*v2 + 224)] & 0x8000000000000000) != 0)
        {
          v95 = v70;
          *(v78 + 16) = 0x7FFFFFFFFFFFFFFFLL;
          v96 = v260;
LABEL_91:
          v2[*(v80 + 248)] = 0;
          swift_beginAccess();
          *&v2[*(*v2 + 224)] = *(v79 + 16);

          (*(v96 + 8))(v270, v95);
          $defer #1 <A, B, C>() in ForEachState.update(view:)(v2, v268);
        }

        v81 = *(*v2 + 200);
        swift_beginAccess();
        v82 = *&v2[v81];
        v83 = swift_allocObject();

        TupleTypeMetadata2 = v82;
        v85 = MEMORY[0x193ABE6A0](v84, v280, v279, v62);
        v234 = v83;
        *(v83 + 16) = v85;
        v272 = (v83 + 16);
        v86 = swift_allocObject();
        v87 = *(*v2 + 272);
        swift_beginAccess();

        v88 = Set.count.getter();

        v233 = v86;
        *(v86 + 16) = v88;
        v251 = (v86 + 16);
        v89 = swift_allocObject();
        v232 = v89;
        *(v89 + 16) = 0;
        v235 = (v89 + 16);
        v90 = swift_allocObject();
        v91 = Set.init()();
        v229 = v87;
        v230 = v90;
        *(v90 + 16) = v91;
        v247 = (v90 + 16);
        v92 = *&v2[v87];
        v93 = v257;
        *(v79 + 16) = 0;

        v94 = v258;
        if (dispatch thunk of Collection.isEmpty.getter())
        {

LABEL_12:
          v265 = 0;
          v100 = v279;
          v101 = TupleTypeMetadata2;
LABEL_68:
          v204 = *(*v2 + 248);
          if ((v2[v204] & 1) == 0)
          {
            v205 = v235;
            swift_beginAccess();
            v206 = *v205;
            swift_beginAccess();
            ForEachState.EditsBuilder.removeInserts(afterOffset:)(v206, v250);
            swift_endAccess();
          }

          v207 = v272;
          swift_beginAccess();
          v208 = *v207;
          if (*v207)
          {
            v271 = v204;
            v261 = v79;
            v281 = Array.init()();
            v209 = v280;
            v282 = MEMORY[0x193ABE620](v101, v280, v100, v62);
            v283 = v210;
            v284 = v211 & 1;
            v276 = MEMORY[0x193ABE6F0](v101, v209, v100, v62);
            v274.i64[0] = v212;
            LODWORD(TupleTypeMetadata2) = v213;
            v214 = (v263 + 8);
            do
            {
              v225 = v62;
              if (static Dictionary.Index.== infix(_:_:)())
              {
                break;
              }

              v225 = v62;
              v215 = v278;
              Dictionary.subscript.getter();
              (*v214)(v215, v209);
              v216 = v288;
              if ((*(v288 + *(*v288 + 240)) & 1) == 0 && *(v288 + *(*v288 + 216)) != *&v275[v269])
              {
                type metadata accessor for Array();

                v100 = v279;
                Array.append(_:)();
                *v272 = --v208;
                v217 = *(*v216 + 160);
                swift_beginAccess();
                ForEachState.EditsBuilder.appendInsert(id:)(v216 + v217, v250, ForEachState.Edits.appendRemove(id:));
                swift_endAccess();
              }

              v62 = v277;
              MEMORY[0x193ABE700](&v282, v101, v209, v100, v277);
            }

            while (v208);

            v218 = v281;
            v219 = MEMORY[0x193ABF2C0](v281, v100);
            v2 = v275;
            v95 = v257;
            v204 = v271;
            if (v219)
            {
              v220 = 4;
              do
              {
                v221 = v220 - 4;
                IsNativeType = Array._hoistableIsNativeTypeChecked()();
                Array._checkSubscript(_:wasNativeTypeChecked:)();
                if (IsNativeType)
                {
                  v223 = *(v218 + 8 * v220);

                  v224 = v220 - 3;
                  if (__OFADD__(v221, 1))
                  {
                    goto LABEL_85;
                  }
                }

                else
                {
                  v223 = _ArrayBuffer._getElementSlowPath(_:)();
                  v224 = v220 - 3;
                  if (__OFADD__(v221, 1))
                  {
LABEL_85:
                    __break(1u);
                    break;
                  }
                }

                ForEachState.eraseItem(_:)(v223);

                ++v220;
              }

              while (v224 != MEMORY[0x193ABF2C0](v218, v279));
            }

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v276, v274.i64[0], TupleTypeMetadata2 & 1);

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v282, v283, v284);
            v79 = v261;
          }

          else
          {

            v95 = v257;
          }

          v96 = v260;
          if ((v2[v204] & 1) == 0)
          {
            swift_beginAccess();
            *(v79 + 16) = 0x7FFFFFFFFFFFFFFFLL;
          }

          swift_beginAccess();
          *&v2[v229] = *(v230 + 16);

          v80 = *v2;
          goto LABEL_91;
        }

        v97 = v243;
        Collection.first.getter();
        v98 = v244;
        v99 = v259;
        if ((*(v244 + 48))(v97, 1, v259) == 1)
        {

          (*(v236 + 8))(v97, v237);
          goto LABEL_12;
        }

        v248 = v92;
        v261 = v79;
        v132 = *(v98 + 32);
        v133 = v242;
        v132(v242, v97, v99);
        if (*&v265[v94])
        {

          v134 = KeyPath.makeGetFunction()();
          v258 = v135;
          MEMORY[0x1EEE9AC00](v134);
          *(&v227 - 8) = v93;
          *(&v227 - 7) = v274;
          *(&v227 - 5) = v252;
          *(&v227 - 4) = v62;
          *(&v227 - 3) = v264;
          v226 = v136;
          v137 = v231;
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v133, partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<A.Sequence.Element>) -> (@out B), (&v227 - 10), v99, MEMORY[0x1E69E73E0], v280, MEMORY[0x1E69E7410], v138);
          v139 = v256;
          v140 = v270;
          v141 = dispatch thunk of Collection.startIndex.getter();
          v285 = 0;
          MEMORY[0x1EEE9AC00](v141);
          *(&v227 - 16) = &v285;
          *(&v227 - 15) = TupleTypeMetadata2;
          *(&v227 - 14) = v137;
          v142 = v248;
          *(&v227 - 13) = v248;
          *(&v227 - 12) = v249;
          *(&v227 - 11) = v134;
          v245 = v134;
          v143 = v233;
          v144 = v234;
          *(&v227 - 10) = v258;
          *(&v227 - 9) = v144;
          v145 = v261;
          *(&v227 - 8) = v143;
          *(&v227 - 7) = v145;
          v146 = v232;
          *(&v227 - 6) = v2;
          *(&v227 - 5) = v146;
          *(&v227 - 4) = v230;
          *(&v227 - 3) = v139;
          v225 = v140;
          dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
          v265 = 0;
          v147 = v239.i64[0];
          if (v285)
          {
            (*(v244 + 8))(v242, v259);

            v148 = *(v147 + 8);
            v100 = v279;
            v149 = AssociatedTypeWitness;
LABEL_66:
            v101 = TupleTypeMetadata2;
LABEL_67:
            v148(v139, v149);
            (*(v263 + 8))(v231, v280);

            v79 = v261;
            goto LABEL_68;
          }

          v177 = v231;
          v178 = v280;
          MEMORY[0x193ABE750](&v288, v231, TupleTypeMetadata2, v280, v279, v62);
          v286[0] = v288;
          v179 = type metadata accessor for Optional();
          _ViewInputs.base.modify(v286, v179);
          v139 = v256;

          LOBYTE(v288) = MEMORY[0x193ABF5D0](v177, v142, v178, v62) & 1;
          _ViewInputs.base.modify(&v288, MEMORY[0x1E69E6370]);
          swift_beginAccess();
          v180 = v257;
          dispatch thunk of Collection.endIndex.getter();
          swift_beginAccess();
          swift_beginAccess();
          swift_beginAccess();
          swift_beginAccess();
          v181 = 0;
          v241 = *(swift_getAssociatedConformanceWitness() + 8);
          v237 = (v147 + 16);
          v238 = (v244 + 16);
          v236 = v147 + 24;
          v243 = (v147 + 8);
          v244 += 8;
          v228 = (v263 + 16);
          v182.i64[0] = v180;
          v239 = vzip1q_s64(v182, v274);
          v182.i64[0] = vdupq_laneq_s64(v274, 1).u64[0];
          v182.i64[1] = v252;
          v274 = v182;
          v101 = TupleTypeMetadata2;
          v240 = (v263 + 8);
          while (1)
          {
            v149 = AssociatedTypeWitness;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {

              v148 = *v243;
              (*v243)(v255, v149);
              (*v244)(v242, v259);
              v2 = v275;
              v100 = v279;
              v62 = v277;
              goto LABEL_67;
            }

            v276 = v181;
            v188 = dispatch thunk of Collection.subscript.read();
            v189 = v254;
            v190 = v259;
            (*v238)(v254);
            v191 = v188(&v288, 0);
            MEMORY[0x1EEE9AC00](v191);
            v192 = v274;
            *(&v227 - 4) = v239;
            *(&v227 - 3) = v192;
            v62 = v277;
            v193 = v264;
            v194 = v265;
            *(&v227 - 4) = v277;
            *(&v227 - 3) = v193;
            v225 = v245;
            v226 = v258;
            v195 = v253;
            v196 = v280;
            _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v189, thunk for @callee_guaranteed (@unowned UnsafePointer<A.Sequence.Element>) -> (@out B)partial apply, (&v227 - 10), v190, MEMORY[0x1E69E73E0], v280, MEMORY[0x1E69E7410], v197);
            v265 = v194;
            v198 = *v244;
            (*v244)(v189, v190);
            (*v237)(i, v139, v149);
            v199 = *v272;
            if (!*v272 && !*v251)
            {

              v148 = *v243;
              v149 = AssociatedTypeWitness;
              (*v243)(i, AssociatedTypeWitness);
              (*v240)(v195, v196);
              v148(v255, v149);
              v198(v242, v259);
              v2 = v275;
              v100 = v279;
              v139 = v256;
              goto LABEL_66;
            }

            v101 = TupleTypeMetadata2;
            MEMORY[0x193ABE750](&v288, v195, TupleTypeMetadata2, v196, v279, v62);
            v200 = v288;
            if (v288)
            {
              v186 = v276;
              *(v261 + 16) = v276;
              v201 = *(*v200 + 192);
              swift_beginAccess();
              (*v236)(v200 + v201, i, AssociatedTypeWitness);
              swift_endAccess();
              v202 = v275;
              *(v200 + *(*v200 + 208)) = *&v275[v271];
              *(v200 + *(*v200 + 200)) = v186;
              *(v200 + *(*v200 + 216)) = *&v202[v269];
              *v272 = v199 - 1;
              LOBYTE(v201) = *(v200 + *(*v200 + 240));

              v139 = v256;
              v203 = v240;
              if ((v201 & 1) == 0)
              {
                *v235 = v186;
                if ((MEMORY[0x193ABF5D0](v195, v248, v280, v277) & 1) == 0)
                {
                  goto LABEL_63;
                }

                goto LABEL_51;
              }
            }

            else
            {
              v139 = v256;
              v203 = v240;
              v186 = v276;
            }

            if ((MEMORY[0x193ABF5D0](v195, v248, v280, v277) & 1) == 0)
            {
              swift_beginAccess();
              ForEachState.EditsBuilder.appendInsert(atOffset:)(v186, v250);
              swift_endAccess();
LABEL_63:
              (*v243)(i, AssociatedTypeWitness);
              v183 = v280;
              goto LABEL_52;
            }

LABEL_51:
            v183 = v280;
            (*v228)(v246, v195, v280);
            swift_beginAccess();
            type metadata accessor for Set();
            v184 = v278;
            v101 = TupleTypeMetadata2;
            Set.insert(_:)();
            swift_endAccess();
            v185 = v184;
            v186 = v276;
            (*v203)(v185, v183);
            (*v243)(i, AssociatedTypeWitness);
            --*v251;
LABEL_52:
            dispatch thunk of Collection.formIndex(after:)();
            (*v203)(v195, v183);
            v187 = __OFADD__(v186, 1);
            v181 = v186 + 1;
            if (v187)
            {
              goto LABEL_94;
            }
          }
        }

LABEL_101:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_96;
    }

    if ((v58)(v55, 1, v261) == 1)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v102 = v58;
    v103 = v260;
    v104 = *(v260 + 16);
    v105 = v251;
    v277 = v55;
    v274.i64[0] = v260 + 16;
    v270 = v104;
    v104(v251, v55, v61);
    v106 = dispatch thunk of Collection.count.getter();
    v107 = *(v103 + 8);
    v259 = v103 + 8;
    v256 = v107;
    (v107)(v105, v61);
    v108 = dispatch thunk of Collection.count.getter();
    v109 = v276;
    if (v106 != v108)
    {
      v288 = 0;
      v289.i64[0] = 0xE000000000000000;
      _StringGuts.grow(_:)(204);
      v110 = v261;
      v111 = _typeName(_:qualified:)();
      MEMORY[0x193ABEDD0](v111);

      MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
      v287 = dispatch thunk of Collection.count.getter();
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v112);

      MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
      if (v102(v277, 1, v110) == 1)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v113 = v251;
      (v270)(v251, v277, v61);
      v114 = dispatch thunk of Collection.count.getter();
      (v256)(v113, v61);
      v287 = v114;
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v115);

      MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
      specialized static Log.externalWarning(_:)(v288, v289.u64[0]);

      v2 = v275;
    }

    v116 = v61;
    v117 = v261;
    AssociatedTypeWitness = v102;
    if (v102(v277, 1, v261) == 1)
    {
      goto LABEL_98;
    }

    v118 = v277;
    v119 = v270;
    (v270)(v245, v277, v116);
    v120 = v233;
    v121 = v250;
    (*(v233 + 16))(v250, v258, v117);
    (*(v120 + 56))(v121, 0, 1, v117);
    swift_beginAccess();
    (*(v234 + 40))(v118, v121, v235);
    v122 = v240;
    v119(v240, v245, v116);
    v123 = (AssociatedTypeWitness)(v118, 1, v117);
    v124 = TupleTypeMetadata2;
    if (v123 == 1)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    (*(v260 + 40))(v277, v122, v116);
    swift_endAccess();
    v125 = *(*v2 + 200);
    swift_beginAccess();
    v126 = *&v2[v125];
    v127 = v265;
    if ((v126 & 0xC000000000000001) != 0)
    {
      v128 = __CocoaDictionary.makeIterator()();
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v270 = v128 | 0x8000000000000000;
    }

    else
    {
      v150 = -1 << *(v126 + 32);
      v130 = ~v150;
      v129 = v126 + 64;
      v151 = -v150;
      if (v151 < 64)
      {
        v152 = ~(-1 << v151);
      }

      else
      {
        v152 = -1;
      }

      v131 = v152 & *(v126 + 64);
      v270 = v126;
    }

    v153 = v280;
    v260 = v130;
    v154 = (v130 + 64) >> 6;
    v261 = v263 + 16;
    v262 = (v263 + 32);
    AssociatedTypeWitness = (v241 + 32);
    v264 = (v263 + 8);

    v155 = 0;
    for (i = v154; ; v154 = i)
    {
      v274.i64[0] = v155;
      if ((v270 & 0x8000000000000000) != 0)
      {
        if (__CocoaDictionary.Iterator.next()())
        {
          v171 = v278;
          _forceBridgeFromObjectiveC<A>(_:_:)();
          swift_unknownObjectRelease();
          _forceBridgeFromObjectiveC<A>(_:_:)();
          swift_unknownObjectRelease();
          v172 = *(v124 + 48);
          v173 = v171;
          v109 = v276;
          (*v262)(v276, v173, v153);
          *(v109 + v172) = v287;
          v170 = *(v124 - 8);
          (*(v170 + 56))(v109, 0, 1, v124);
        }

        else
        {
          v170 = *(v124 - 8);
          (*(v170 + 56))(v109, 1, 1, v124);
        }

        v159 = v274.i64[0];
        v277 = v131;
      }

      else
      {
        v156 = v131;
        v157 = v155;
        if (v131)
        {
LABEL_39:
          v277 = (v156 - 1) & v156;
          v161 = __clz(__rbit64(v156)) | (v157 << 6);
          v162 = v263;
          v163 = v278;
          v164 = v270;
          (*(v263 + 16))(v278, *(v270 + 48) + *(v263 + 72) * v161, v153);
          v165 = *(*(v164 + 56) + 8 * v161);
          v166 = v153;
          v167 = *(TupleTypeMetadata2 + 48);
          v168 = *(v162 + 32);
          v124 = TupleTypeMetadata2;
          v169 = v163;
          v109 = v276;
          v168(v276, v169, v166);
          *(v109 + v167) = v165;
          v170 = *(v124 - 8);
          (*(v170 + 56))(v109, 0, 1, v124);

          v159 = v157;
        }

        else
        {
          v158 = v154 <= v155 + 1 ? v155 + 1 : v154;
          v159 = v158 - 1;
          v160 = v155;
          while (1)
          {
            v157 = v160 + 1;
            if (__OFADD__(v160, 1))
            {
              __break(1u);
LABEL_94:
              __break(1u);
            }

            if (v157 >= v154)
            {
              break;
            }

            v156 = *(v129 + 8 * v157);
            ++v160;
            if (v156)
            {
              goto LABEL_39;
            }
          }

          v170 = *(v124 - 8);
          (*(v170 + 56))(v109, 1, 1, v124);
          v277 = 0;
        }

        v127 = v265;
      }

      (*AssociatedTypeWitness)(v127, v109, v272);
      if ((*(v170 + 48))(v127, 1, v124) == 1)
      {
        break;
      }

      v174 = *&v127[*(v124 + 48)];
      v175 = v275;
      *(v174 + *(*v174 + 208)) = *&v275[v271];
      v176 = *(*v174 + 216);
      if (*(v174 + v176) == v268)
      {
        *(v174 + v176) = *&v175[v269];
      }

      v153 = v280;
      (*v264)(v127, v280);
      v155 = v159;
      v131 = v277;
    }

    (v256)(v245, v257);
    return outlined consume of Set<EventID>.Iterator._Variant();
  }

  return result;
}

uint64_t sub_18D08B310()
{

  return swift_deallocObject();
}

uint64_t $defer #1 <A, B, C>() in ForEachState.update(view:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v17 = *(*a1 + 80);
  v5 = v4[11];
  v6 = v4[12];
  v7 = v4[13];
  v8 = v4[14];
  v9 = v4[15];
  v18 = v17;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v10 = type metadata accessor for ForEachState.LazyEdits();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  swift_beginAccess();
  v18 = v17;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v14 = type metadata accessor for ForEachState.EditsBuilder();
  (*(*(v14 - 8) + 16))(v13, a2, v14);
  swift_storeEnumTagMultiPayload();
  v15 = *(*a1 + 208);
  swift_beginAccess();
  (*(v11 + 40))(a1 + v15, v13, v10);
  return swift_endAccess();
}

uint64_t destroy for ForEachState.EditsBuilder(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  (*(v6 + 8))((v4 + v7 + 8) & ~v7, v5);
}

uint64_t ForEachState.Info.Init.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v8 = type metadata accessor for ForEach();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;

  ForEachState.Info.Init.view.getter(v11);
  ForEachState.update(view:)(v11);
  (*(v9 + 8))(v11, v8);
  return a2;
}

uint64_t ForEachList.Init.updateValue()(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 4);
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[7];
  specialized ForEachList.Init.info.getter();

  ForEachState.invalidateViewCounts()();

  *(v1 + 4) = v2 + 1;
  v6 = specialized ForEachList.Init.info.getter();
  v10 = HIDWORD(v3);
  v11 = v4;
  v14 = v5;
  v12 = type metadata accessor for ForEachList();
  WitnessTable = swift_getWitnessTable();
  v8 = v6;
  v9 = v2 + 1;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);

  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

Swift::Void __swiftcall ForEachState.invalidateViewCounts()()
{
  v1 = v0;
  v2 = *(*v0 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v4 + 16));
  }

  else
  {
    *(v1 + v2) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v4 + 24) >> 1);
  }

  *(v1 + *(*v1 + 192)) = 2;
}

id ForEachState.init(inputs:)(uint64_t a1)
{
  v3 = *v1;
  *(v1 + 160) = 0;
  *(v1 + 164) = 1;
  *(v1 + 168) = 0;
  *(v1 + 172) = 1;
  v4 = v3[20];
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[13];
  v9 = v3[14];
  v10 = type metadata accessor for ForEach();
  (*(*(v10 - 8) + 56))(v1 + v4, 1, 1, v10);
  *(v1 + *(*v1 + 168)) = 0;
  v11 = v1 + *(*v1 + 176);
  *v11 = 0;
  *(v11 + 8) = 256;
  *(v1 + *(*v1 + 184)) = MEMORY[0x1E69E7CC0];
  *(v1 + *(*v1 + 192)) = 2;
  v12 = *(*v1 + 200);
  type metadata accessor for ForEachState.Item();
  *(v1 + v12) = Dictionary.init()();
  ForEachState.LazyEdits.init()(v5, v6, v7, v8, v9, (v1 + *(*v1 + 208)));
  *(v1 + *(*v1 + 216)) = 0;
  *(v1 + *(*v1 + 224)) = -1;
  *(v1 + *(*v1 + 232)) = 0;
  *(v1 + *(*v1 + 240)) = 0;
  *(v1 + *(*v1 + 248)) = 0;
  *(v1 + *(*v1 + 256)) = 0;
  *(v1 + *(*v1 + 264)) = 0;
  v13 = *(*v1 + 272);
  *(v1 + v13) = Set.init()();
  v14 = *(*v1 + 280);
  type metadata accessor for ForEachState.IDTypeMatchingStrategy();
  *(v1 + v14) = Dictionary.init()();
  outlined init with copy of _ViewListInputs(a1, v1 + 16);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v16 = result;
    outlined destroy of _ViewListInputs(a1);
    *(v1 + 152) = v16;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  return a3(a1, v9, v8, v7, a2);
}

uint64_t ForEach<>.init(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[1] = a6;
  v20[2] = a7;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18, v15);
  v21 = a2;
  ForEach.init(_:idGenerator:content:)(v17, &v21, a3, a4, a5, a8);
  return (*(v14 + 8))(a1, a5);
}

uint64_t ForEachState.LazyEdits.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = default argument 0 of ForEachState.Edits.init(removes:inserts:)(a1, a2, a3, a4, a5);
  v13 = default argument 0 of ForEachState.Edits.init(removes:inserts:)(a1, a2, a3, a4, a5);
  *a6 = v12;
  a6[1] = v13;
  type metadata accessor for ForEachState.LazyEdits();
  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for Rule.value.getter in conformance ForEachState<A, B, C>.Info.Init@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ForEachState.Info.Init.value.getter(*v2, *(v2 + 1), a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t ForEachState.Info.Init.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ForEach();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

void type metadata accessor for Material?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<Any>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _ContiguousArrayStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCyypGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCyypGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static Layout.makeDynamicView(root:inputs:properties:list:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, int a3@<W3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v100 = a5;
  LODWORD(v98) = a3;
  v125 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v121 = a2[2];
  v122 = v9;
  v123 = a2[4];
  v124 = *(a2 + 20);
  v10 = a2[1];
  v119 = *a2;
  v120 = v10;
  v11 = v9;
  v12 = DWORD2(v9);
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v9);
  v91 = v12;
  LODWORD(v96) = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v11);
  v14 = v119;
  outlined init with copy of _GraphInputs(&v119, &v109);
  v103 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v14);
  v102 = *MEMORY[0x1E698D3F8];
  LODWORD(v94) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v14);
  v15 = DWORD1(v121);
  v95 = a6;
  v97 = v14;
  if ((WORD2(v121) & 0x1000) != 0)
  {
    v104 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v14);
  }

  else
  {
    v104 = 0;
  }

  v92 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 20) = 1;
  v101 = v15;
  v99 = v13;
  if (v13 & 1 | ((v15 & 0x22) != 0) || (v104 & 1) != 0)
  {
    v19 = v120;
    v20 = swift_beginAccess();
    *&v109 = __PAIR64__(*(v19 + 16), v8);
    DWORD2(v109) = v102;
    *&v110[0] = MEMORY[0x1E69E7CC0];
    *(&v110[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v110[1]) = 0;
    MEMORY[0x1EEE9AC00](v20);
    v18 = v100;
    v82 = type metadata accessor for DynamicLayoutComputer();
    WitnessTable = swift_getWitnessTable();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v109, closure #1 in Attribute.init<A>(_:)partial apply, v81, v82, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

    v23 = v117[0];
    *(v16 + 16) = v117[0];
    *(v16 + 20) = 0;
    *&v109 = __PAIR64__(v123, DWORD2(v123));
    DWORD2(v109) = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v17 = Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v17 = v102;
    v18 = v100;
  }

  v24 = swift_allocObject();
  v93 = a4;
  v24[2] = a4;
  v24[3] = v18;
  v24[4] = v16;
  v113 = v121;
  v114 = v122;
  v115 = v123;
  v116 = v124;
  v111 = v119;
  v112 = v120;
  DWORD1(v113) = v101 & 0xFFFFFFFD;
  if (v96 & 1) != 0 && (v94)
  {
    v25 = v114;
    *&v117[0] = v114;
    v26 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);

    outlined init with copy of _ViewInputs(&v119, &v109);

    v27 = *(v25 + 16);
    if (v26 != v27)
    {
      if (v26 >= v27)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      if (*(v25 + 16 * v26 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v26);
        v25 = v114;
      }
    }

    *&v109 = v25;
    v28 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v29 = *(v25 + 16);
    if (v28 != v29)
    {
      if (v28 >= v29)
      {
        goto LABEL_52;
      }

      if (*(v25 + 16 * v28 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v28);
      }
    }
  }

  else
  {

    outlined init with copy of _ViewInputs(&v119, &v109);
  }

  v30 = v102;
  if (v103 != v102)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v111, v30);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v111, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v111, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v111, v30);
  }

  v117[2] = v113;
  v117[3] = v114;
  v117[4] = v115;
  v118 = v116;
  v117[0] = v111;
  v117[1] = v112;
  v31 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v105, v98 | (v17 << 32), partial apply for mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v24, v117);

  v108 = v31;
  v32 = swift_beginAccess();
  if ((*(v16 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v32);
    v81[0] = v93;
    v81[1] = v100;
    v82 = &v108;
    v33 = type metadata accessor for DynamicLayoutComputer();
    MEMORY[0x1EEE9AC00](v33);
    AGGraphMutateAttribute();
  }

  if (!((v99 | v104) & 1 | (v103 != v30)))
  {
    outlined destroy of _GraphInputs(&v119);
    v43 = v95;
    v44 = v101;
    goto LABEL_44;
  }

  v100 = AGCreateWeakAttribute();
  v98 = HIDWORD(v100);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v96 = HIDWORD(v34);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v94 = HIDWORD(v36);
  v85 = v123;
  v38 = AGCreateWeakAttribute();
  v39 = v38;
  v93 = HIDWORD(v38);
  v84 = HIDWORD(v122);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v90 = HIDWORD(v40);
  v42 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v97);
  v86 = 0;
  if (v42 == v30)
  {
    v88 = 0;
    v89 = 0;
  }

  else
  {
    v45 = AGCreateWeakAttribute();
    v88 = HIDWORD(v45);
    v89 = v45;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v105);
  v46 = AGCreateWeakAttribute();
  v47 = v46;
  v87 = HIDWORD(v46);
  if ((v99 | v104))
  {
    type metadata accessor for [ScrollStateRequest](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_18DDA6EB0;
    *(v48 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v48 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v49 = swift_allocObject();
    *(v48 + 32) = v49;
    v50 = v98;
    v49[4] = v100;
    v49[5] = v50;
    v51 = v96;
    v49[6] = v35;
    v49[7] = v51;
    v52 = v93;
    v53 = v94;
    v49[8] = v37;
    v49[9] = v53;
    v49[10] = v39;
    v49[11] = v52;
    v54 = v89;
    v55 = v90;
    v49[12] = v41;
    v49[13] = v55;
    v49[14] = v54;
    v49[15] = v88;
    v49[16] = v47;
    v49[17] = v87;
    *&v109 = v48;
    type metadata accessor for [ScrollStateRequest](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v56 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v109) = 0;
    v57 = v56;
    v30 = v102;
    PreferencesOutputs.subscript.setter(v57, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v103 == v30)
  {
    outlined destroy of _GraphInputs(&v119);
    v43 = v95;
    v44 = v101;
    if ((v104 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  *(&v110[0] + 1) = &type metadata for DynamicLayoutScrollable;
  *&v110[1] = &protocol witness table for DynamicLayoutScrollable;
  v58 = swift_allocObject();
  *&v109 = v58;
  v59 = v98;
  v58[4] = v100;
  v58[5] = v59;
  v60 = v96;
  v58[6] = v35;
  v58[7] = v60;
  v61 = v93;
  v62 = v94;
  v58[8] = v37;
  v58[9] = v62;
  v58[10] = v39;
  v58[11] = v61;
  v63 = v89;
  v64 = v90;
  v58[12] = v41;
  v58[13] = v64;
  v58[14] = v63;
  v58[15] = v88;
  v58[16] = v47;
  v58[17] = v87;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
  v65 = Attribute.init<A>(body:value:flags:update:)();
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v66 = v92;
  *&v109 = v92;
  v67 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
  v68 = *(v66 + 16);
  if (v67 != v68)
  {
    if (v67 < v68)
    {
      if (*(v66 + 16 * v67 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v109 = __PAIR64__(v65, v103);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v69 = Attribute.init<A>(body:value:flags:update:)();
        v70 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v105);
        if ((v70 & 0x100000000) != 0)
        {
          v71 = v30;
        }

        else
        {
          v71 = v70;
        }

        *&v109 = __PAIR64__(v71, v69);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        type metadata accessor for _TraitWritingModifier<ZIndexTraitKey>(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v30 = v102;
        v72 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v109) = 0;
        PreferencesOutputs.subscript.setter(v72, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_38:
  memset(&v110[4] + 8, 0, 28);
  *(&v110[3] + 8) = 0u;
  *&v109 = __PAIR64__(v84, v85);
  *(&v109 + 1) = __PAIR64__(v65, DWORD2(v120));
  v43 = v95;
  v44 = v101;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v73 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v74 = specialized CachedEnvironment.attribute<A>(id:_:)(v73);
  v75 = swift_endAccess();
  LODWORD(v110[0]) = v74;
  *(v110 + 8) = v119;
  *(&v110[1] + 8) = v120;
  *(&v110[2] + 8) = v121;
  MEMORY[0x1EEE9AC00](v75);
  v82 = &v109;
  _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v66, v91, partial apply for implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:));
  outlined destroy of ScrollStateRequestTransform(&v109);
  if (v104)
  {
LABEL_43:
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v97);
    v110[1] = v121;
    v110[2] = v122;
    v110[3] = v123;
    LODWORD(v110[4]) = v124;
    v109 = v119;
    v110[0] = v120;
    (*(v76 + 8))(&v109, &v105);
  }

LABEL_44:
  if ((v44 & 2) != 0)
  {
    v77 = *(v16 + 16);
    v79 = *(v16 + 20);

    if (v79)
    {
      v77 = v30;
    }

    v78 = v106 | 0x80;
  }

  else
  {

    v78 = v106;
    v77 = v107;
  }

  v110[1] = v113;
  v110[2] = v114;
  v110[3] = v115;
  LODWORD(v110[4]) = v116;
  v109 = v111;
  v110[0] = v112;
  outlined destroy of _ViewInputs(&v109);

  *v43 = v105;
  *(v43 + 8) = v78;
  *(v43 + 12) = v77;
  return result;
}

uint64_t sub_18D08D094()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1)
{
  v3 = **(v1 + 32);
  result = type metadata accessor for DynamicLayoutComputer();
  *(a1 + 8) = v3;
  return result;
}

uint64_t ConcentricProxy.updateValue()()
{
  ++*(v0 + 20);
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  return AGGraphSetOutputValue();
}

__n128 __swift_memcpy52_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void *Transaction.animationIgnoringTransitionPhase.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (v2 && *(v2 + 72) == 1)
  {
    v4 = 0;
    _s7SwiftUI11TransactionV7forEach7keyType_yxm_y5ValueQz_SbztXEtAA0C3KeyRzlFAA09AnimationI033_D98E9A1069CEEADA58829ED440E36F30LLV_Ttg503_s7a4UI11c38V32animationIgnoringTransitionPhaseAA9J18VSgvgyAG_SbztXEfU_AA0J0VSgTf1cn_n(a1, &v4);
    return v4;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
    if (result)
    {
    }
  }

  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  v203 = *MEMORY[0x1E69E9840];
  v185 = type metadata accessor for OSSignpostID();
  v181 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v16 = (&v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v164 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v184 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v164 - v29;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 48) = 1;
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_129;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v34 = *(a1 + 24);
  if (a4[48])
  {
    goto LABEL_128;
  }

  v35 = v32;
  v5 = *(a4 + 4);
  v36 = *(a4 + 5);
  v7 = *(a4 + 2);
  v6 = *(a4 + 3);
  if (v8 != v7 || v9 != v6 || v10 != v5 || v34 != v36)
  {
    v182 = v16;
    v180 = v22;
    v164 = v19;
    v170 = v34;
    v172 = a1;
    AGGraphClearUpdate();
    v37 = *(a4 + 1);
    v198 = *a4;
    v199 = v37;
    v38 = *(a4 + 3);
    v200 = *(a4 + 2);
    v201 = v38;
    v202 = *(a4 + 16);
    v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    v39 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v40 = Transaction.effectiveAnimation.getter(v39);
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      if (!a2)
      {

        a1 = v172;
        v32 = v35;
        goto LABEL_127;
      }

      v41 = a2;
    }

    v42 = *(&v201 + 1);
    v43 = v8 - v7;
    v44 = v9 - v6;
    v45 = v10 - v5;
    v46 = v170 - v36;
    v47 = *AGGraphGetValue();
    v171 = a4;
    v165 = a3;
    v168 = v47;
    v167 = v39;
    v166 = v41;
    if (v42)
    {
      v164 = v25;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v194.f64[0]) = 0;
      v169 = v42;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, v39, v43, v44, v45, v46, v47);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v49 = CurrentAttribute;
      LODWORD(v50) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v51) = 0;
      }

      else
      {
        LODWORD(v51) = CurrentAttribute;
      }

      (*(*v41 + 96))(&v190);
      v52 = v190.f64[1];
      v4 = *&v190.f64[0];
      v53 = v191;
      *&v189 = NAN;
      v188 = NAN;
      *&v187 = 1.0;
      v186 = NAN;
      v194 = v190;
      v195 = v191;
      v54 = *(&v191 + 1);
      v182 = v192;
      v196 = *&v192;
      LODWORD(v183) = v193;
      LOBYTE(v197) = v193;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v189, &v188, &v187, &v186);
      v32 = *&v189;
      v5 = v188;
      v6 = *&v187;
      v7 = v186;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_24;
    }

    *&v190.f64[0] = &type metadata for ViewFrame;
    type metadata accessor for ViewFrame.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v74 = swift_dynamicCast();
    if (v74)
    {
      v75 = *&v194.f64[0];
    }

    else
    {
      v75 = 0;
    }

    if (v74)
    {
      v76 = *&v194.f64[1];
    }

    else
    {
      v76 = 0;
    }

    v169 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v77, v39, v75, v76, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v43, v44, v45, v46, v47);
    v78 = AGGraphGetCurrentAttribute();
    a4 = v78;
    LODWORD(v59) = *MEMORY[0x1E698D3F8];
    if (v78 == *MEMORY[0x1E698D3F8])
    {
      v79 = 0;
    }

    else
    {
      v79 = v78;
    }

    (*(*v41 + 96))(&v190);
    v80 = v190;
    v81 = v191;
    v82 = v192;
    *&v189 = NAN;
    v188 = NAN;
    *&v187 = 1.0;
    v186 = NAN;
    v194 = v190;
    v195 = v191;
    v196 = *&v192;
    LODWORD(v183) = v193;
    LOBYTE(v197) = v193;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v189, &v188, &v187, &v186);
    v32 = *&v189;
    v5 = v188;
    v6 = *&v187;
    v7 = v186;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v180 = v82;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v83 = *(v81 + 16);
        LODWORD(v194.f64[0]) = v79;
        BYTE4(v194.f64[0]) = a4 == LODWORD(v59);
        *&v194.f64[1] = &type metadata for ViewFrame;
        *&v195 = v32;
        *(&v195 + 1) = v5;
        v196 = v6;
        v197 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v84 = v83;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v80.f64[0], *&v80.f64[1], v81, *(&v81 + 1), v180, v183);

        goto LABEL_88;
      }

      v86 = *&v80.f64[1];
      v85 = *&v80.f64[0];
      v87 = v81;
    }

    else
    {
      v86 = *&v80.f64[1];
      v85 = *&v80.f64[0];
      v87 = v81;
    }

    outlined consume of Animation.Function(v85, v86, v87, *(&v81 + 1), v82, v183);
LABEL_88:
    v104 = one-time initialization token for animationState;

    a4 = v171;
    v32 = v168;
    if (v104 == -1)
    {
LABEL_89:
      v64 = *(&static Signpost.animationState + 1);
      *&v60 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      v61 = HIBYTE(word_1ED5283E8);
      v105 = byte_1ED5283EA;
      LOBYTE(v66) = static os_signpost_type_t.begin.getter();
      v194 = __PAIR128__(v64, *&v60);
      LOBYTE(v195) = v4;
      BYTE1(v195) = v61;
      BYTE2(v195) = v105;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v113 = v169;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_96;
      }

      v106 = one-time initialization token for _signpostLog;

      if (v106 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_91;
    }

LABEL_199:
    swift_once();
    goto LABEL_89;
  }

  v32 = v35;
LABEL_128:
  while (1)
  {
    *(a4 + 2) = v8;
    *(a4 + 3) = v9;
    *(a4 + 4) = v10;
    *(a4 + 5) = v34;
    a4[48] = 0;
LABEL_129:
    v51 = *(a4 + 7);
    if (!v51)
    {
      return result;
    }

    v131 = *(a1 + 16);
    v194 = *a1;
    v195 = v131;

    LOBYTE(v198) = 0;
    v132 = specialized AnimatorState.update(_:at:environment:)(&v194, a3, v32);
    v94 = AGGraphGetCurrentAttribute();
    LODWORD(v50) = *MEMORY[0x1E698D3F8];
    if (v94 == *MEMORY[0x1E698D3F8])
    {
      v90 = 0;
    }

    else
    {
      v90 = v94;
    }

    v93 = &type metadata instantiation cache for TupleTypeDescription;
    if (v132)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v143 = *(v93 + 616);
    if (*(v143 + 16) >= 0x43uLL)
    {
      if (*(v143 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v198) = v90;
        BYTE4(v198) = v94 == v50;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v135 = *(&static Signpost.animationState + 1);
    v54 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v49 = HIBYTE(word_1ED5283E8);
    v136 = byte_1ED5283EA;
    v51 = static os_signpost_type_t.end.getter();
    v198 = __PAIR128__(v135, v54);
    LOBYTE(v199) = v53;
    BYTE1(v199) = v49;
    BYTE2(v199) = v136;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v172 = a1;
    v137 = one-time initialization token for _signpostLog;

    if (v137 != -1)
    {
      swift_once();
    }

    v171 = a4;
    v52 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v50)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_31;
    }

    v55 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v179) = v50;
    if (v55 && (v56 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v57 = *(v56 + 16);
      LODWORD(v194.f64[0]) = v51;
      BYTE4(v194.f64[0]) = v49 == v50;
      *&v194.f64[1] = &type metadata for ViewFrame;
      *&v195 = v32;
      *(&v195 + 1) = v5;
      v196 = v6;
      v197 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v58 = v57;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v4, *&v52, v53, v54, v182, v183);
    }

    else
    {
      outlined consume of Animation.Function(v4, *&v52, v53, v54, v182, v183);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    v32 = v168;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_31:
    v60 = *(&static Signpost.animationState + 1);
    *&v59 = static Signpost.animationState;
    v61 = word_1ED5283E8;
    v62 = HIBYTE(word_1ED5283E8);
    v63 = byte_1ED5283EA;
    v64 = static os_signpost_type_t.event.getter();
    v194 = __PAIR128__(*&v60, *&v59);
    LOBYTE(v195) = v61;
    BYTE1(v195) = v62;
    BYTE2(v195) = v63;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
LABEL_85:
      a4 = v171;
      a3 = v165;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v65 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v66 = COERCE_DOUBLE(swift_allocObject());
    *(v66 + 16) = xmmword_18DDAF080;
    v67 = AGGraphGetCurrentAttribute();
    v4 = v179;
    if (v67 == v179)
    {
      __break(1u);
    }

    else
    {
      v68 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v70 = MEMORY[0x1E69E6870];
      *(v66 + 56) = MEMORY[0x1E69E6810];
      *(v66 + 64) = v70;
      *(v66 + 32) = Counter;
      v71 = AGGraphGetCurrentAttribute();
      if (v71 != v4)
      {
        v72 = MEMORY[0x1E69E76D0];
        *(v66 + 96) = MEMORY[0x1E69E7668];
        *(v66 + 104) = v72;
        *(v66 + 72) = v71;
        *(v66 + 136) = MEMORY[0x1E69E6158];
        *(v66 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v66 + 112) = 0x6D61724677656956;
        *(v66 + 120) = 0xE900000000000065;
        if (v62)
        {
          LOBYTE(v186) = v64;
          *&v189 = COERCE_DOUBLE(&dword_18D018000);
          v188 = v65;
          v194.f64[0] = v59;
          v194.f64[1] = v60;
          LOBYTE(v195) = v61;
          *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v190.f64[1] = 39;
          LOBYTE(v191) = 2;
          v187 = v66;
          v73 = v164;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          (*(v181 + 8))(v73, v185);
        }

        else
        {
          v88 = LOBYTE(v59);
          if (LOBYTE(v59) == 20)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          v89 = bswap32(LOWORD(v59)) | (4 * HIWORD(LODWORD(v59)));
          v90 = v64;
          v91 = (v181 + 16);
          v173 = *(v181 + 16);
          v92 = v173(v180, v164, v185);
          v93 = 0;
          LOBYTE(v190.f64[0]) = 1;
          v183 = v50;
          v178 = 16 * v50;
          v174 = v91;
          v179 = (v91 - 8);
          v177 = v66 + 32;
          v176 = v88;
          do
          {
            v182 = &v164;
            MEMORY[0x1EEE9AC00](v92);
            a1 = &v164 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (a1 + 8);
            v96 = v183;
            v97 = (a1 + 8);
            do
            {
              *(v97 - 1) = 0;
              *v97 = 0;
              v97 += 16;
              v96 = (v96 - 1);
            }

            while (v96);
            v4 = v177 + 40 * v93;
            v51 = v183;
            while (1)
            {
              v98 = *(v66 + 16);
              if (v93 == v98)
              {
                break;
              }

              if (v93 >= v98)
              {
                goto LABEL_186;
              }

              ++v93;
              outlined init with copy of AnyTrackedValue(v4, &v194);
              v50 = *(&v195 + 1);
              __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
              *(a4 - 1) = CVarArg.kdebugValue(_:)(v89 | v90, v50);
              *a4 = v99 & 1;
              a4 += 16;
              v94 = __swift_destroy_boxed_opaque_existential_1(&v194);
              v4 += 40;
              if (!--v51)
              {
                goto LABEL_68;
              }
            }

            LOBYTE(v190.f64[0]) = 0;
LABEL_68:
            v4 = v176;
            if (v176 == 20)
            {
              v100 = v180;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v100 = v180;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v101 = *v179;
            v50 = v185;
            (*v179)(v100, v185);
            v102 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
            v92 = v173(v100, v102, v50);
          }

          while ((LOBYTE(v190.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          v103 = v185;
          v101(v100, v185);
          v101(v164, v103);
        }

        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_91:
    v107 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v59))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v108 = AGGraphGetAttributeGraph();
    v109 = AGGraphGetCounter();

    v110 = MEMORY[0x1E69E6870];
    *(a4 + 7) = MEMORY[0x1E69E6810];
    *(a4 + 8) = v110;
    *(a4 + 4) = v109;
    v111 = AGGraphGetCurrentAttribute();
    if (v111 == LODWORD(v59))
    {
      goto LABEL_204;
    }

    v112 = MEMORY[0x1E69E76D0];
    *(a4 + 12) = MEMORY[0x1E69E7668];
    *(a4 + 13) = v112;
    *(a4 + 18) = v111;
    *(a4 + 17) = MEMORY[0x1E69E6158];
    *(a4 + 18) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 14) = 0x6D61724677656956;
    *(a4 + 15) = 0xE900000000000065;
    v50 = v164;
    if (v61)
    {
      LOBYTE(v186) = v66;
      *&v189 = COERCE_DOUBLE(&dword_18D018000);
      v188 = v107;
      v194.f64[0] = v60;
      *&v194.f64[1] = v64;
      LOBYTE(v195) = v4;
      *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v190.f64[1] = 39;
      LOBYTE(v191) = 2;
      v187 = a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v113 = v169;

      (*(v181 + 8))(v50, v185);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v171;
LABEL_96:
      *(a4 + 7) = v113;
    }

    else
    {
      v114 = LOBYTE(v60);
      v115 = v66;
      if (LOBYTE(v60) == 20)
      {
        v116 = 3;
      }

      else
      {
        v116 = 4;
      }

      a1 = bswap32(LOWORD(v60)) | (4 * HIWORD(LODWORD(v60)));
      v90 = v115;
      v117 = (v181 + 16);
      v173 = *(v181 + 16);
      v118 = v173(v182, v164, v185);
      v93 = 0;
      LOBYTE(v190.f64[0]) = 1;
      v179 = (16 * v116);
      v174 = v117;
      v180 = v117 - 8;
      v178 = (a4 + 32);
      v176 = v114;
      v177 = v116;
      do
      {
        v183 = &v164;
        MEMORY[0x1EEE9AC00](v118);
        v4 = &v164 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = (v4 + 8);
        v120 = v116;
        v121 = (v4 + 8);
        do
        {
          *(v121 - 1) = 0;
          *v121 = 0;
          v121 += 16;
          --v120;
        }

        while (v120);
        v122 = v178 + 40 * v93;
        while (1)
        {
          v123 = *(a4 + 2);
          if (v93 == v123)
          {
            break;
          }

          if (v93 >= v123)
          {
            goto LABEL_187;
          }

          ++v93;
          outlined init with copy of AnyTrackedValue(v122, &v194);
          v50 = *(&v195 + 1);
          __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
          *(v51 - 1) = CVarArg.kdebugValue(_:)(a1 | v90, v50);
          *v51 = v124 & 1;
          v51 += 16;
          v94 = __swift_destroy_boxed_opaque_existential_1(&v194);
          v122 += 40;
          if (!--v116)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v190.f64[0]) = 0;
LABEL_109:
        v125 = v176;
        if (v176 == 20)
        {
          v126 = v182;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v126 = v182;
        }

        v116 = v177;
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v125 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v50 = *v180;
        v127 = v185;
        (*v180)(v126, v185);
        v128 = __swift_project_value_buffer(v127, static OSSignpostID.continuation);
        v118 = v173(v126, v128, v127);
      }

      while ((LOBYTE(v190.f64[0]) & 1) != 0);
      v129 = v169;

      v130 = v185;
      (v50)(v126, v185);
      (v50)(v164, v130);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v171;
      *(v171 + 7) = v129;
    }

    a3 = v165;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v167);

    a1 = v172;
LABEL_127:
    v34 = v170;
  }

  v138 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v139 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v139;
  *(a1 + 32) = v4;
  v140 = AGGraphGetCurrentAttribute();
  if (v140 == v50)
  {
    goto LABEL_194;
  }

  v141 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v141;
  *(a1 + 72) = v140;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x6D61724677656956;
  *(a1 + 120) = 0xE900000000000065;
  if (v49)
  {
    LOBYTE(v186) = v51;
    *&v189 = COERCE_DOUBLE(&dword_18D018000);
    v188 = v52;
    *&v198 = v54;
    *(&v198 + 1) = v135;
    LOBYTE(v199) = v53;
    *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v190.f64[1] = 37;
    LOBYTE(v191) = 2;
    v187 = a1;
    v142 = v175;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v181 + 8))(v142, v185);
    goto LABEL_181;
  }

  v144 = v54;
  if (v54 == 20)
  {
    v145 = 3;
  }

  else
  {
    v145 = 4;
  }

  v90 = bswap32(v54) | (4 * WORD1(v54));
  v93 = v51;
  v146 = v181 + 16;
  v176 = *(v181 + 16);
  v147 = v176(v184, v175, v185);
  v148 = 0;
  LOBYTE(v190.f64[0]) = 1;
  v183 = v145;
  v179 = (16 * v145);
  v181 = v146;
  v180 = (v146 - 8);
  v178 = a1 + 32;
  v177 = v144;
  do
  {
    v182 = &v164;
    MEMORY[0x1EEE9AC00](v147);
    a4 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a4 + 8;
    v151 = v183;
    v152 = a4 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v4 = v178 + 40 * v148;
    v50 = v183;
    while (1)
    {
      v153 = *(a1 + 16);
      if (v148 == v153)
      {
        break;
      }

      if (v148 >= v153)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v162 = v94;
        swift_once();
        v94 = v162;
LABEL_135:
        v133 = *(v93 + 616);
        if (*(v133 + 16) >= 0x43uLL)
        {
          if (*(v133 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v198) = v90;
            BYTE4(v198) = v94 == v50;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v134 = one-time initialization token for animationState;
          v174 = v51;

          if (v134 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v163 = v94;
        swift_once();
        v94 = v163;
        goto LABEL_148;
      }

      ++v148;
      outlined init with copy of AnyTrackedValue(v4, &v198);
      v154 = *(&v199 + 1);
      v51 = v200;
      __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v90 | v93, v154);
      *v150 = v155 & 1;
      v150 += 16;
      v94 = __swift_destroy_boxed_opaque_existential_1(&v198);
      v4 += 40;
      if (!--v50)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v190.f64[0]) = 0;
LABEL_166:
    v156 = v177;
    if (v177 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v156 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v157 = *v180;
    v51 = v184;
    v158 = v185;
    (*v180)(v184, v185);
    v159 = __swift_project_value_buffer(v158, static OSSignpostID.continuation);
    v147 = v176(v51, v159, v158);
  }

  while ((LOBYTE(v190.f64[0]) & 1) != 0);

  v160 = v185;
  v157(v184, v185);
  v157(v175, v160);
LABEL_181:

  a1 = v172;
  a4 = v171;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 7) = 0;
LABEL_183:
  v161 = v195;
  *a1 = v194;
  *(a1 + 16) = v161;
  *(a1 + 48) = 1;
  return result;
}

{
  v203 = *MEMORY[0x1E69E9840];
  v185 = type metadata accessor for OSSignpostID();
  v181 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v16 = (&v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v164 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v184 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v164 - v29;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_129;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v34 = *(a1 + 24);
  if (a4[48])
  {
    goto LABEL_128;
  }

  v35 = v32;
  v5 = *(a4 + 4);
  v36 = *(a4 + 5);
  v7 = *(a4 + 2);
  v6 = *(a4 + 3);
  if (v8 != v7 || v9 != v6 || v10 != v5 || v34 != v36)
  {
    v182 = v16;
    v180 = v22;
    v164 = v19;
    v170 = v34;
    v172 = a1;
    AGGraphClearUpdate();
    v37 = *(a4 + 1);
    v198 = *a4;
    v199 = v37;
    v38 = *(a4 + 3);
    v200 = *(a4 + 2);
    v201 = v38;
    v202 = *(a4 + 16);
    v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
    v39 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v40 = Transaction.effectiveAnimation.getter(v39);
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      if (!a2)
      {

        a1 = v172;
        v32 = v35;
        goto LABEL_127;
      }

      v41 = a2;
    }

    v42 = *(&v201 + 1);
    v43 = v8 - v7;
    v44 = v9 - v6;
    v45 = v10 - v5;
    v46 = v170 - v36;
    v47 = *AGGraphGetValue();
    v171 = a4;
    v165 = a3;
    v168 = v47;
    v167 = v39;
    v166 = v41;
    if (v42)
    {
      v164 = v25;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v194.f64[0]) = 0;
      v169 = v42;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, v39, v43, v44, v45, v46, v47);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v49 = CurrentAttribute;
      LODWORD(v50) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v51) = 0;
      }

      else
      {
        LODWORD(v51) = CurrentAttribute;
      }

      (*(*v41 + 96))(&v190);
      v52 = v190.f64[1];
      v4 = *&v190.f64[0];
      v53 = v191;
      *&v189 = NAN;
      v188 = NAN;
      *&v187 = 1.0;
      v186 = NAN;
      v194 = v190;
      v195 = v191;
      v54 = *(&v191 + 1);
      v182 = v192;
      v196 = *&v192;
      LODWORD(v183) = v193;
      LOBYTE(v197) = v193;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v189, &v188, &v187, &v186);
      v32 = *&v189;
      v5 = v188;
      v6 = *&v187;
      v7 = v186;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_24;
    }

    *&v190.f64[0] = &type metadata for EdgeInsets;
    type metadata accessor for EdgeInsets.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Type, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v74 = swift_dynamicCast();
    if (v74)
    {
      v75 = *&v194.f64[0];
    }

    else
    {
      v75 = 0;
    }

    if (v74)
    {
      v76 = *&v194.f64[1];
    }

    else
    {
      v76 = 0;
    }

    v169 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v77, v39, v75, v76, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, v43, v44, v45, v46, v47);
    v78 = AGGraphGetCurrentAttribute();
    a4 = v78;
    LODWORD(v59) = *MEMORY[0x1E698D3F8];
    if (v78 == *MEMORY[0x1E698D3F8])
    {
      v79 = 0;
    }

    else
    {
      v79 = v78;
    }

    (*(*v41 + 96))(&v190);
    v80 = v190;
    v81 = v191;
    v82 = v192;
    *&v189 = NAN;
    v188 = NAN;
    *&v187 = 1.0;
    v186 = NAN;
    v194 = v190;
    v195 = v191;
    v196 = *&v192;
    LODWORD(v183) = v193;
    LOBYTE(v197) = v193;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v189, &v188, &v187, &v186);
    v32 = *&v189;
    v5 = v188;
    v6 = *&v187;
    v7 = v186;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v180 = v82;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v83 = *(v81 + 16);
        LODWORD(v194.f64[0]) = v79;
        BYTE4(v194.f64[0]) = a4 == LODWORD(v59);
        *&v194.f64[1] = &type metadata for EdgeInsets;
        *&v195 = v32;
        *(&v195 + 1) = v5;
        v196 = v6;
        v197 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v84 = v83;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v80.f64[0], *&v80.f64[1], v81, *(&v81 + 1), v180, v183);

        goto LABEL_88;
      }

      v86 = *&v80.f64[1];
      v85 = *&v80.f64[0];
      v87 = v81;
    }

    else
    {
      v86 = *&v80.f64[1];
      v85 = *&v80.f64[0];
      v87 = v81;
    }

    outlined consume of Animation.Function(v85, v86, v87, *(&v81 + 1), v82, v183);
LABEL_88:
    v104 = one-time initialization token for animationState;

    a4 = v171;
    v32 = v168;
    if (v104 == -1)
    {
LABEL_89:
      v64 = *(&static Signpost.animationState + 1);
      *&v60 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      v61 = HIBYTE(word_1ED5283E8);
      v105 = byte_1ED5283EA;
      LOBYTE(v66) = static os_signpost_type_t.begin.getter();
      v194 = __PAIR128__(v64, *&v60);
      LOBYTE(v195) = v4;
      BYTE1(v195) = v61;
      BYTE2(v195) = v105;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v113 = v169;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_96;
      }

      v106 = one-time initialization token for _signpostLog;

      if (v106 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_91;
    }

LABEL_199:
    swift_once();
    goto LABEL_89;
  }

  v32 = v35;
LABEL_128:
  while (1)
  {
    *(a4 + 2) = v8;
    *(a4 + 3) = v9;
    *(a4 + 4) = v10;
    *(a4 + 5) = v34;
    a4[48] = 0;
LABEL_129:
    v51 = *(a4 + 7);
    if (!v51)
    {
      return result;
    }

    v131 = *(a1 + 16);
    v194 = *a1;
    v195 = v131;

    LOBYTE(v198) = 0;
    v132 = specialized AnimatorState.update(_:at:environment:)(&v194, a3, v32);
    v94 = AGGraphGetCurrentAttribute();
    LODWORD(v50) = *MEMORY[0x1E698D3F8];
    if (v94 == *MEMORY[0x1E698D3F8])
    {
      v90 = 0;
    }

    else
    {
      v90 = v94;
    }

    v93 = &type metadata instantiation cache for TupleTypeDescription;
    if (v132)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v143 = *(v93 + 616);
    if (*(v143 + 16) >= 0x43uLL)
    {
      if (*(v143 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v198) = v90;
        BYTE4(v198) = v94 == v50;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v135 = *(&static Signpost.animationState + 1);
    v54 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v49 = HIBYTE(word_1ED5283E8);
    v136 = byte_1ED5283EA;
    v51 = static os_signpost_type_t.end.getter();
    v198 = __PAIR128__(v135, v54);
    LOBYTE(v199) = v53;
    BYTE1(v199) = v49;
    BYTE2(v199) = v136;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v172 = a1;
    v137 = one-time initialization token for _signpostLog;

    if (v137 != -1)
    {
      swift_once();
    }

    v171 = a4;
    v52 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v50)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_31;
    }

    v55 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v179) = v50;
    if (v55 && (v56 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v57 = *(v56 + 16);
      LODWORD(v194.f64[0]) = v51;
      BYTE4(v194.f64[0]) = v49 == v50;
      *&v194.f64[1] = &type metadata for EdgeInsets;
      *&v195 = v32;
      *(&v195 + 1) = v5;
      v196 = v6;
      v197 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v58 = v57;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v4, *&v52, v53, v54, v182, v183);
    }

    else
    {
      outlined consume of Animation.Function(v4, *&v52, v53, v54, v182, v183);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
    v32 = v168;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_31:
    v60 = *(&static Signpost.animationState + 1);
    *&v59 = static Signpost.animationState;
    v61 = word_1ED5283E8;
    v62 = HIBYTE(word_1ED5283E8);
    v63 = byte_1ED5283EA;
    v64 = static os_signpost_type_t.event.getter();
    v194 = __PAIR128__(*&v60, *&v59);
    LOBYTE(v195) = v61;
    BYTE1(v195) = v62;
    BYTE2(v195) = v63;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
LABEL_85:
      a4 = v171;
      a3 = v165;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v65 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v66 = COERCE_DOUBLE(swift_allocObject());
    *(v66 + 16) = xmmword_18DDAF080;
    v67 = AGGraphGetCurrentAttribute();
    v4 = v179;
    if (v67 == v179)
    {
      __break(1u);
    }

    else
    {
      v68 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v70 = MEMORY[0x1E69E6870];
      *(v66 + 56) = MEMORY[0x1E69E6810];
      *(v66 + 64) = v70;
      *(v66 + 32) = Counter;
      v71 = AGGraphGetCurrentAttribute();
      if (v71 != v4)
      {
        v72 = MEMORY[0x1E69E76D0];
        *(v66 + 96) = MEMORY[0x1E69E7668];
        *(v66 + 104) = v72;
        *(v66 + 72) = v71;
        *(v66 + 136) = MEMORY[0x1E69E6158];
        *(v66 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v66 + 112) = 0x65736E4965676445;
        *(v66 + 120) = 0xEA00000000007374;
        if (v62)
        {
          LOBYTE(v186) = v64;
          *&v189 = COERCE_DOUBLE(&dword_18D018000);
          v188 = v65;
          v194.f64[0] = v59;
          v194.f64[1] = v60;
          LOBYTE(v195) = v61;
          *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v190.f64[1] = 39;
          LOBYTE(v191) = 2;
          v187 = v66;
          v73 = v164;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
          (*(v181 + 8))(v73, v185);
        }

        else
        {
          v88 = LOBYTE(v59);
          if (LOBYTE(v59) == 20)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          v89 = bswap32(LOWORD(v59)) | (4 * HIWORD(LODWORD(v59)));
          v90 = v64;
          v91 = (v181 + 16);
          v173 = *(v181 + 16);
          v92 = v173(v180, v164, v185);
          v93 = 0;
          LOBYTE(v190.f64[0]) = 1;
          v183 = v50;
          v178 = 16 * v50;
          v174 = v91;
          v179 = (v91 - 8);
          v177 = v66 + 32;
          v176 = v88;
          do
          {
            v182 = &v164;
            MEMORY[0x1EEE9AC00](v92);
            a1 = &v164 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (a1 + 8);
            v96 = v183;
            v97 = (a1 + 8);
            do
            {
              *(v97 - 1) = 0;
              *v97 = 0;
              v97 += 16;
              v96 = (v96 - 1);
            }

            while (v96);
            v4 = v177 + 40 * v93;
            v51 = v183;
            while (1)
            {
              v98 = *(v66 + 16);
              if (v93 == v98)
              {
                break;
              }

              if (v93 >= v98)
              {
                goto LABEL_186;
              }

              ++v93;
              outlined init with copy of AnyTrackedValue(v4, &v194);
              v50 = *(&v195 + 1);
              __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
              *(a4 - 1) = CVarArg.kdebugValue(_:)(v89 | v90, v50);
              *a4 = v99 & 1;
              a4 += 16;
              v94 = __swift_destroy_boxed_opaque_existential_1(&v194);
              v4 += 40;
              if (!--v51)
              {
                goto LABEL_68;
              }
            }

            LOBYTE(v190.f64[0]) = 0;
LABEL_68:
            v4 = v176;
            if (v176 == 20)
            {
              v100 = v180;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v100 = v180;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v101 = *v179;
            v50 = v185;
            (*v179)(v100, v185);
            v102 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
            v92 = v173(v100, v102, v50);
          }

          while ((LOBYTE(v190.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
          v103 = v185;
          v101(v100, v185);
          v101(v164, v103);
        }

        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_91:
    v107 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v59))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v108 = AGGraphGetAttributeGraph();
    v109 = AGGraphGetCounter();

    v110 = MEMORY[0x1E69E6870];
    *(a4 + 7) = MEMORY[0x1E69E6810];
    *(a4 + 8) = v110;
    *(a4 + 4) = v109;
    v111 = AGGraphGetCurrentAttribute();
    if (v111 == LODWORD(v59))
    {
      goto LABEL_204;
    }

    v112 = MEMORY[0x1E69E76D0];
    *(a4 + 12) = MEMORY[0x1E69E7668];
    *(a4 + 13) = v112;
    *(a4 + 18) = v111;
    *(a4 + 17) = MEMORY[0x1E69E6158];
    *(a4 + 18) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 14) = 0x65736E4965676445;
    *(a4 + 15) = 0xEA00000000007374;
    v50 = v164;
    if (v61)
    {
      LOBYTE(v186) = v66;
      *&v189 = COERCE_DOUBLE(&dword_18D018000);
      v188 = v107;
      v194.f64[0] = v60;
      *&v194.f64[1] = v64;
      LOBYTE(v195) = v4;
      *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v190.f64[1] = 39;
      LOBYTE(v191) = 2;
      v187 = a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v113 = v169;

      (*(v181 + 8))(v50, v185);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
      a4 = v171;
LABEL_96:
      *(a4 + 7) = v113;
    }

    else
    {
      v114 = LOBYTE(v60);
      v115 = v66;
      if (LOBYTE(v60) == 20)
      {
        v116 = 3;
      }

      else
      {
        v116 = 4;
      }

      a1 = bswap32(LOWORD(v60)) | (4 * HIWORD(LODWORD(v60)));
      v90 = v115;
      v117 = (v181 + 16);
      v173 = *(v181 + 16);
      v118 = v173(v182, v164, v185);
      v93 = 0;
      LOBYTE(v190.f64[0]) = 1;
      v179 = (16 * v116);
      v174 = v117;
      v180 = v117 - 8;
      v178 = (a4 + 32);
      v176 = v114;
      v177 = v116;
      do
      {
        v183 = &v164;
        MEMORY[0x1EEE9AC00](v118);
        v4 = &v164 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = (v4 + 8);
        v120 = v116;
        v121 = (v4 + 8);
        do
        {
          *(v121 - 1) = 0;
          *v121 = 0;
          v121 += 16;
          --v120;
        }

        while (v120);
        v122 = v178 + 40 * v93;
        while (1)
        {
          v123 = *(a4 + 2);
          if (v93 == v123)
          {
            break;
          }

          if (v93 >= v123)
          {
            goto LABEL_187;
          }

          ++v93;
          outlined init with copy of AnyTrackedValue(v122, &v194);
          v50 = *(&v195 + 1);
          __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
          *(v51 - 1) = CVarArg.kdebugValue(_:)(a1 | v90, v50);
          *v51 = v124 & 1;
          v51 += 16;
          v94 = __swift_destroy_boxed_opaque_existential_1(&v194);
          v122 += 40;
          if (!--v116)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v190.f64[0]) = 0;
LABEL_109:
        v125 = v176;
        if (v176 == 20)
        {
          v126 = v182;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v126 = v182;
        }

        v116 = v177;
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v125 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v50 = *v180;
        v127 = v185;
        (*v180)(v126, v185);
        v128 = __swift_project_value_buffer(v127, static OSSignpostID.continuation);
        v118 = v173(v126, v128, v127);
      }

      while ((LOBYTE(v190.f64[0]) & 1) != 0);
      v129 = v169;

      v130 = v185;
      (v50)(v126, v185);
      (v50)(v164, v130);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
      a4 = v171;
      *(v171 + 7) = v129;
    }

    a3 = v165;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v167);

    a1 = v172;
LABEL_127:
    v34 = v170;
  }

  v138 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v139 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v139;
  *(a1 + 32) = v4;
  v140 = AGGraphGetCurrentAttribute();
  if (v140 == v50)
  {
    goto LABEL_194;
  }

  v141 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v141;
  *(a1 + 72) = v140;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x65736E4965676445;
  *(a1 + 120) = 0xEA00000000007374;
  if (v49)
  {
    LOBYTE(v186) = v51;
    *&v189 = COERCE_DOUBLE(&dword_18D018000);
    v188 = v52;
    *&v198 = v54;
    *(&v198 + 1) = v135;
    LOBYTE(v199) = v53;
    *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v190.f64[1] = 37;
    LOBYTE(v191) = 2;
    v187 = a1;
    v142 = v175;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v181 + 8))(v142, v185);
    goto LABEL_181;
  }

  v144 = v54;
  if (v54 == 20)
  {
    v145 = 3;
  }

  else
  {
    v145 = 4;
  }

  v90 = bswap32(v54) | (4 * WORD1(v54));
  v93 = v51;
  v146 = v181 + 16;
  v176 = *(v181 + 16);
  v147 = v176(v184, v175, v185);
  v148 = 0;
  LOBYTE(v190.f64[0]) = 1;
  v183 = v145;
  v179 = (16 * v145);
  v181 = v146;
  v180 = (v146 - 8);
  v178 = a1 + 32;
  v177 = v144;
  do
  {
    v182 = &v164;
    MEMORY[0x1EEE9AC00](v147);
    a4 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a4 + 8;
    v151 = v183;
    v152 = a4 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v4 = v178 + 40 * v148;
    v50 = v183;
    while (1)
    {
      v153 = *(a1 + 16);
      if (v148 == v153)
      {
        break;
      }

      if (v148 >= v153)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v162 = v94;
        swift_once();
        v94 = v162;
LABEL_135:
        v133 = *(v93 + 616);
        if (*(v133 + 16) >= 0x43uLL)
        {
          if (*(v133 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v198) = v90;
            BYTE4(v198) = v94 == v50;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v134 = one-time initialization token for animationState;
          v174 = v51;

          if (v134 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v163 = v94;
        swift_once();
        v94 = v163;
        goto LABEL_148;
      }

      ++v148;
      outlined init with copy of AnyTrackedValue(v4, &v198);
      v154 = *(&v199 + 1);
      v51 = v200;
      __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v90 | v93, v154);
      *v150 = v155 & 1;
      v150 += 16;
      v94 = __swift_destroy_boxed_opaque_existential_1(&v198);
      v4 += 40;
      if (!--v50)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v190.f64[0]) = 0;
LABEL_166:
    v156 = v177;
    if (v177 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v156 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v157 = *v180;
    v51 = v184;
    v158 = v185;
    (*v180)(v184, v185);
    v159 = __swift_project_value_buffer(v158, static OSSignpostID.continuation);
    v147 = v176(v51, v159, v158);
  }

  while ((LOBYTE(v190.f64[0]) & 1) != 0);

  v160 = v185;
  v157(v184, v185);
  v157(v175, v160);
LABEL_181:

  a1 = v172;
  a4 = v171;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 7) = 0;
LABEL_183:
  v161 = v195;
  *a1 = v194;
  *(a1 + 16) = v161;
  *(a1 + 32) = 1;
  return result;
}

{
  v203 = *MEMORY[0x1E69E9840];
  v185 = type metadata accessor for OSSignpostID();
  v181 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v16 = (&v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v164 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v184 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v164 - v29;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_129;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v34 = *(a1 + 24);
  if (a4[48])
  {
    goto LABEL_128;
  }

  v35 = v32;
  v5 = *(a4 + 4);
  v36 = *(a4 + 5);
  v7 = *(a4 + 2);
  v6 = *(a4 + 3);
  if (v8 != v7 || v9 != v6 || v10 != v5 || v34 != v36)
  {
    v182 = v16;
    v180 = v22;
    v164 = v19;
    v170 = v34;
    v172 = a1;
    AGGraphClearUpdate();
    v37 = *(a4 + 1);
    v198 = *a4;
    v199 = v37;
    v38 = *(a4 + 3);
    v200 = *(a4 + 2);
    v201 = v38;
    v202 = *(a4 + 16);
    v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
    v39 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v40 = Transaction.effectiveAnimation.getter(v39);
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      if (!a2)
      {

        a1 = v172;
        v32 = v35;
        goto LABEL_127;
      }

      v41 = a2;
    }

    v42 = *(&v201 + 1);
    v43 = v8 - v7;
    v44 = v9 - v6;
    v45 = v10 - v5;
    v46 = v170 - v36;
    v47 = *AGGraphGetValue();
    v171 = a4;
    v165 = a3;
    v168 = v47;
    v167 = v39;
    v166 = v41;
    if (v42)
    {
      v164 = v25;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v194.f64[0]) = 0;
      v169 = v42;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, v39, v43, v44, v45, v46, v47);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v49 = CurrentAttribute;
      LODWORD(v50) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v51) = 0;
      }

      else
      {
        LODWORD(v51) = CurrentAttribute;
      }

      (*(*v41 + 96))(&v190);
      v52 = v190.f64[1];
      v4 = *&v190.f64[0];
      v53 = v191;
      *&v189 = NAN;
      v188 = NAN;
      *&v187 = 1.0;
      v186 = NAN;
      v194 = v190;
      v195 = v191;
      v54 = *(&v191 + 1);
      v182 = v192;
      v196 = *&v192;
      LODWORD(v183) = v193;
      LOBYTE(v197) = v193;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v189, &v188, &v187, &v186);
      v32 = *&v189;
      v5 = v188;
      v6 = *&v187;
      v7 = v186;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_24;
    }

    *&v190.f64[0] = &type metadata for RectangleCornerRadii;
    type metadata accessor for RectangleCornerRadii.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v74 = swift_dynamicCast();
    if (v74)
    {
      v75 = *&v194.f64[0];
    }

    else
    {
      v75 = 0;
    }

    if (v74)
    {
      v76 = *&v194.f64[1];
    }

    else
    {
      v76 = 0;
    }

    v169 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v77, v39, v75, v76, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v43, v44, v45, v46, v47);
    v78 = AGGraphGetCurrentAttribute();
    a4 = v78;
    LODWORD(v59) = *MEMORY[0x1E698D3F8];
    if (v78 == *MEMORY[0x1E698D3F8])
    {
      v79 = 0;
    }

    else
    {
      v79 = v78;
    }

    (*(*v41 + 96))(&v190);
    v80 = v190;
    v81 = v191;
    v82 = v192;
    *&v189 = NAN;
    v188 = NAN;
    *&v187 = 1.0;
    v186 = NAN;
    v194 = v190;
    v195 = v191;
    v196 = *&v192;
    LODWORD(v183) = v193;
    LOBYTE(v197) = v193;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v189, &v188, &v187, &v186);
    v32 = *&v189;
    v5 = v188;
    v6 = *&v187;
    v7 = v186;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v180 = v82;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v83 = *(v81 + 16);
        LODWORD(v194.f64[0]) = v79;
        BYTE4(v194.f64[0]) = a4 == LODWORD(v59);
        *&v194.f64[1] = &type metadata for RectangleCornerRadii;
        *&v195 = v32;
        *(&v195 + 1) = v5;
        v196 = v6;
        v197 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v84 = v83;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v80.f64[0], *&v80.f64[1], v81, *(&v81 + 1), v180, v183);

        goto LABEL_88;
      }

      v86 = *&v80.f64[1];
      v85 = *&v80.f64[0];
      v87 = v81;
    }

    else
    {
      v86 = *&v80.f64[1];
      v85 = *&v80.f64[0];
      v87 = v81;
    }

    outlined consume of Animation.Function(v85, v86, v87, *(&v81 + 1), v82, v183);
LABEL_88:
    v104 = one-time initialization token for animationState;

    a4 = v171;
    v32 = v168;
    if (v104 == -1)
    {
LABEL_89:
      v64 = *(&static Signpost.animationState + 1);
      *&v60 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      v61 = HIBYTE(word_1ED5283E8);
      v105 = byte_1ED5283EA;
      LOBYTE(v66) = static os_signpost_type_t.begin.getter();
      v194 = __PAIR128__(v64, *&v60);
      LOBYTE(v195) = v4;
      BYTE1(v195) = v61;
      BYTE2(v195) = v105;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v114 = v169;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_96;
      }

      v106 = one-time initialization token for _signpostLog;

      if (v106 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_91;
    }

LABEL_199:
    swift_once();
    goto LABEL_89;
  }

  v32 = v35;
LABEL_128:
  while (1)
  {
    *(a4 + 2) = v8;
    *(a4 + 3) = v9;
    *(a4 + 4) = v10;
    *(a4 + 5) = v34;
    a4[48] = 0;
LABEL_129:
    v51 = *(a4 + 7);
    if (!v51)
    {
      return result;
    }

    v131 = *(a1 + 16);
    v194 = *a1;
    v195 = v131;

    LOBYTE(v198) = 0;
    v132 = specialized AnimatorState.update(_:at:environment:)(&v194, a3, v32);
    v94 = AGGraphGetCurrentAttribute();
    LODWORD(v50) = *MEMORY[0x1E698D3F8];
    if (v94 == *MEMORY[0x1E698D3F8])
    {
      v90 = 0;
    }

    else
    {
      v90 = v94;
    }

    v93 = &type metadata instantiation cache for TupleTypeDescription;
    if (v132)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v143 = *(v93 + 616);
    if (*(v143 + 16) >= 0x43uLL)
    {
      if (*(v143 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v198) = v90;
        BYTE4(v198) = v94 == v50;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v135 = *(&static Signpost.animationState + 1);
    v54 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v49 = HIBYTE(word_1ED5283E8);
    v136 = byte_1ED5283EA;
    v51 = static os_signpost_type_t.end.getter();
    v198 = __PAIR128__(v135, v54);
    LOBYTE(v199) = v53;
    BYTE1(v199) = v49;
    BYTE2(v199) = v136;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v172 = a1;
    v137 = one-time initialization token for _signpostLog;

    if (v137 != -1)
    {
      swift_once();
    }

    v171 = a4;
    v52 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v50)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_31;
    }

    v55 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v179) = v50;
    if (v55 && (v56 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v57 = *(v56 + 16);
      LODWORD(v194.f64[0]) = v51;
      BYTE4(v194.f64[0]) = v49 == v50;
      *&v194.f64[1] = &type metadata for RectangleCornerRadii;
      *&v195 = v32;
      *(&v195 + 1) = v5;
      v196 = v6;
      v197 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v58 = v57;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v4, *&v52, v53, v54, v182, v183);
    }

    else
    {
      outlined consume of Animation.Function(v4, *&v52, v53, v54, v182, v183);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
    v32 = v168;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_31:
    v60 = *(&static Signpost.animationState + 1);
    *&v59 = static Signpost.animationState;
    v61 = word_1ED5283E8;
    v62 = HIBYTE(word_1ED5283E8);
    v63 = byte_1ED5283EA;
    v64 = static os_signpost_type_t.event.getter();
    v194 = __PAIR128__(*&v60, *&v59);
    LOBYTE(v195) = v61;
    BYTE1(v195) = v62;
    BYTE2(v195) = v63;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
LABEL_85:
      a4 = v171;
      a3 = v165;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v65 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v66 = COERCE_DOUBLE(swift_allocObject());
    *(v66 + 16) = xmmword_18DDAF080;
    v67 = AGGraphGetCurrentAttribute();
    v4 = v179;
    if (v67 == v179)
    {
      __break(1u);
    }

    else
    {
      v68 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v70 = MEMORY[0x1E69E6870];
      *(v66 + 56) = MEMORY[0x1E69E6810];
      *(v66 + 64) = v70;
      *(v66 + 32) = Counter;
      v71 = AGGraphGetCurrentAttribute();
      if (v71 != v4)
      {
        v72 = MEMORY[0x1E69E76D0];
        *(v66 + 96) = MEMORY[0x1E69E7668];
        *(v66 + 104) = v72;
        *(v66 + 72) = v71;
        *(v66 + 136) = MEMORY[0x1E69E6158];
        *(v66 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v66 + 112) = 0xD000000000000014;
        *(v66 + 120) = 0x800000018DD7EC90;
        if (v62)
        {
          LOBYTE(v186) = v64;
          *&v189 = COERCE_DOUBLE(&dword_18D018000);
          v188 = v65;
          v194.f64[0] = v59;
          v194.f64[1] = v60;
          LOBYTE(v195) = v61;
          *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v190.f64[1] = 39;
          LOBYTE(v191) = 2;
          v187 = v66;
          v73 = v164;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
          (*(v181 + 8))(v73, v185);
        }

        else
        {
          v88 = LOBYTE(v59);
          if (LOBYTE(v59) == 20)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          v89 = bswap32(LOWORD(v59)) | (4 * HIWORD(LODWORD(v59)));
          v90 = v64;
          v91 = (v181 + 16);
          v173 = *(v181 + 16);
          v92 = v173(v180, v164, v185);
          v93 = 0;
          LOBYTE(v190.f64[0]) = 1;
          v183 = v50;
          v178 = 16 * v50;
          v174 = v91;
          v179 = (v91 - 8);
          v177 = v66 + 32;
          v176 = v88;
          do
          {
            v182 = &v164;
            MEMORY[0x1EEE9AC00](v92);
            a1 = &v164 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (a1 + 8);
            v96 = v183;
            v97 = (a1 + 8);
            do
            {
              *(v97 - 1) = 0;
              *v97 = 0;
              v97 += 16;
              v96 = (v96 - 1);
            }

            while (v96);
            v4 = v177 + 40 * v93;
            v51 = v183;
            while (1)
            {
              v98 = *(v66 + 16);
              if (v93 == v98)
              {
                break;
              }

              if (v93 >= v98)
              {
                goto LABEL_186;
              }

              ++v93;
              outlined init with copy of AnyTrackedValue(v4, &v194);
              v50 = *(&v195 + 1);
              __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
              *(a4 - 1) = CVarArg.kdebugValue(_:)(v89 | v90, v50);
              *a4 = v99 & 1;
              a4 += 16;
              v94 = __swift_destroy_boxed_opaque_existential_1(&v194);
              v4 += 40;
              if (!--v51)
              {
                goto LABEL_68;
              }
            }

            LOBYTE(v190.f64[0]) = 0;
LABEL_68:
            v4 = v176;
            if (v176 == 20)
            {
              v100 = v180;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v100 = v180;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v101 = *v179;
            v50 = v185;
            (*v179)(v100, v185);
            v102 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
            v92 = v173(v100, v102, v50);
          }

          while ((LOBYTE(v190.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
          v103 = v185;
          v101(v100, v185);
          v101(v164, v103);
        }

        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_91:
    v107 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v59))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v108 = AGGraphGetAttributeGraph();
    v109 = AGGraphGetCounter();

    v110 = MEMORY[0x1E69E6870];
    *(a4 + 7) = MEMORY[0x1E69E6810];
    *(a4 + 8) = v110;
    *(a4 + 4) = v109;
    v111 = AGGraphGetCurrentAttribute();
    if (v111 == LODWORD(v59))
    {
      goto LABEL_204;
    }

    v112 = MEMORY[0x1E69E76D0];
    *(a4 + 12) = MEMORY[0x1E69E7668];
    *(a4 + 13) = v112;
    *(a4 + 18) = v111;
    *(a4 + 17) = MEMORY[0x1E69E6158];
    *(a4 + 18) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 14) = 0xD000000000000014;
    *(a4 + 15) = 0x800000018DD7EC90;
    if (v61)
    {
      LOBYTE(v186) = v66;
      *&v189 = COERCE_DOUBLE(&dword_18D018000);
      v188 = v107;
      v194.f64[0] = v60;
      *&v194.f64[1] = v64;
      LOBYTE(v195) = v4;
      *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v190.f64[1] = 39;
      LOBYTE(v191) = 2;
      v187 = a4;
      v113 = v164;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v114 = v169;

      (*(v181 + 8))(v113, v185);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
      a4 = v171;
LABEL_96:
      *(a4 + 7) = v114;
    }

    else
    {
      v115 = LOBYTE(v60);
      v116 = v66;
      if (LOBYTE(v60) == 20)
      {
        v117 = 3;
      }

      else
      {
        v117 = 4;
      }

      a1 = bswap32(LOWORD(v60)) | (4 * HIWORD(LODWORD(v60)));
      v90 = v116;
      v50 = v181 + 16;
      v173 = *(v181 + 16);
      v118 = v173(v182, v164, v185);
      v93 = 0;
      LOBYTE(v190.f64[0]) = 1;
      v179 = (16 * v117);
      v174 = v50;
      v180 = (v50 - 8);
      v178 = (a4 + 32);
      v176 = v115;
      v177 = v117;
      do
      {
        v183 = &v164;
        MEMORY[0x1EEE9AC00](v118);
        v4 = &v164 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = (v4 + 8);
        v120 = v117;
        v121 = (v4 + 8);
        do
        {
          *(v121 - 1) = 0;
          *v121 = 0;
          v121 += 16;
          --v120;
        }

        while (v120);
        v122 = v178 + 40 * v93;
        while (1)
        {
          v123 = *(a4 + 2);
          if (v93 == v123)
          {
            break;
          }

          if (v93 >= v123)
          {
            goto LABEL_187;
          }

          ++v93;
          outlined init with copy of AnyTrackedValue(v122, &v194);
          v50 = *(&v195 + 1);
          __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
          *(v51 - 1) = CVarArg.kdebugValue(_:)(a1 | v90, v50);
          *v51 = v124 & 1;
          v51 += 16;
          v94 = __swift_destroy_boxed_opaque_existential_1(&v194);
          v122 += 40;
          if (!--v117)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v190.f64[0]) = 0;
LABEL_109:
        v125 = v176;
        if (v176 == 20)
        {
          v126 = v182;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v126 = v182;
        }

        v117 = v177;
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v125 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v50 = *v180;
        v127 = v185;
        (*v180)(v126, v185);
        v128 = __swift_project_value_buffer(v127, static OSSignpostID.continuation);
        v118 = v173(v126, v128, v127);
      }

      while ((LOBYTE(v190.f64[0]) & 1) != 0);
      v129 = v169;

      v130 = v185;
      (v50)(v126, v185);
      (v50)(v164, v130);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
      a4 = v171;
      *(v171 + 7) = v129;
    }

    a3 = v165;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v167);

    a1 = v172;
LABEL_127:
    v34 = v170;
  }

  v138 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v139 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v139;
  *(a1 + 32) = v4;
  v140 = AGGraphGetCurrentAttribute();
  if (v140 == v50)
  {
    goto LABEL_194;
  }

  v141 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v141;
  *(a1 + 72) = v140;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0xD000000000000014;
  *(a1 + 120) = 0x800000018DD7EC90;
  if (v49)
  {
    LOBYTE(v186) = v51;
    *&v189 = COERCE_DOUBLE(&dword_18D018000);
    v188 = v52;
    *&v198 = v54;
    *(&v198 + 1) = v135;
    LOBYTE(v199) = v53;
    *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v190.f64[1] = 37;
    LOBYTE(v191) = 2;
    v187 = a1;
    v142 = v175;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v181 + 8))(v142, v185);
    goto LABEL_181;
  }

  v144 = v54;
  if (v54 == 20)
  {
    v145 = 3;
  }

  else
  {
    v145 = 4;
  }

  v90 = bswap32(v54) | (4 * WORD1(v54));
  v93 = v51;
  v146 = v181 + 16;
  v176 = *(v181 + 16);
  v147 = v176(v184, v175, v185);
  v148 = 0;
  LOBYTE(v190.f64[0]) = 1;
  v183 = v145;
  v179 = (16 * v145);
  v181 = v146;
  v180 = (v146 - 8);
  v178 = a1 + 32;
  v177 = v144;
  do
  {
    v182 = &v164;
    MEMORY[0x1EEE9AC00](v147);
    a4 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a4 + 8;
    v151 = v183;
    v152 = a4 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v4 = v178 + 40 * v148;
    v50 = v183;
    while (1)
    {
      v153 = *(a1 + 16);
      if (v148 == v153)
      {
        break;
      }

      if (v148 >= v153)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v162 = v94;
        swift_once();
        v94 = v162;
LABEL_135:
        v133 = *(v93 + 616);
        if (*(v133 + 16) >= 0x43uLL)
        {
          if (*(v133 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v198) = v90;
            BYTE4(v198) = v94 == v50;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v134 = one-time initialization token for animationState;
          v174 = v51;

          if (v134 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v163 = v94;
        swift_once();
        v94 = v163;
        goto LABEL_148;
      }

      ++v148;
      outlined init with copy of AnyTrackedValue(v4, &v198);
      v154 = *(&v199 + 1);
      v51 = v200;
      __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v90 | v93, v154);
      *v150 = v155 & 1;
      v150 += 16;
      v94 = __swift_destroy_boxed_opaque_existential_1(&v198);
      v4 += 40;
      if (!--v50)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v190.f64[0]) = 0;
LABEL_166:
    v156 = v177;
    if (v177 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v156 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v157 = *v180;
    v51 = v184;
    v158 = v185;
    (*v180)(v184, v185);
    v159 = __swift_project_value_buffer(v158, static OSSignpostID.continuation);
    v147 = v176(v51, v159, v158);
  }

  while ((LOBYTE(v190.f64[0]) & 1) != 0);

  v160 = v185;
  v157(v184, v185);
  v157(v175, v160);
LABEL_181:

  a1 = v172;
  a4 = v171;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 7) = 0;
LABEL_183:
  v161 = v195;
  *a1 = v194;
  *(a1 + 16) = v161;
  *(a1 + 32) = 1;
  return result;
}

{
  v203 = *MEMORY[0x1E69E9840];
  v185 = type metadata accessor for OSSignpostID();
  v181 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v16 = (&v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v164 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v184 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v164 - v29;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 33) = 1;
  }

  else if (*(a1 + 33) != 1)
  {
    goto LABEL_129;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v34 = *(a1 + 24);
  if (a4[48])
  {
    goto LABEL_128;
  }

  v35 = v32;
  v5 = *(a4 + 4);
  v36 = *(a4 + 5);
  v7 = *(a4 + 2);
  v6 = *(a4 + 3);
  if (v8 != v7 || v9 != v6 || v10 != v5 || v34 != v36)
  {
    v182 = v16;
    v180 = v22;
    v164 = v19;
    v170 = v34;
    v172 = a1;
    AGGraphClearUpdate();
    v37 = *(a4 + 1);
    v198 = *a4;
    v199 = v37;
    v38 = *(a4 + 3);
    v200 = *(a4 + 2);
    v201 = v38;
    v202 = *(a4 + 16);
    v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    v39 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v40 = Transaction.effectiveAnimation.getter(v39);
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      if (!a2)
      {

        a1 = v172;
        v32 = v35;
        goto LABEL_127;
      }

      v41 = a2;
    }

    v42 = *(&v201 + 1);
    v43 = v8 - v7;
    v44 = v9 - v6;
    v45 = v10 - v5;
    v46 = v170 - v36;
    v47 = *AGGraphGetValue();
    v171 = a4;
    v165 = a3;
    v168 = v47;
    v167 = v39;
    v166 = v41;
    if (v42)
    {
      v164 = v25;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v194.f64[0]) = 0;
      v169 = v42;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, v39, v43, v44, v45, v46, v47);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v49 = CurrentAttribute;
      LODWORD(v50) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v51) = 0;
      }

      else
      {
        LODWORD(v51) = CurrentAttribute;
      }

      (*(*v41 + 96))(&v190);
      v52 = v190.f64[1];
      v4 = *&v190.f64[0];
      v53 = v191;
      *&v189 = NAN;
      v188 = NAN;
      *&v187 = 1.0;
      v186 = NAN;
      v194 = v190;
      v195 = v191;
      v54 = *(&v191 + 1);
      v182 = v192;
      v196 = *&v192;
      LODWORD(v183) = v193;
      LOBYTE(v197) = v193;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v189, &v188, &v187, &v186);
      v32 = *&v189;
      v5 = v188;
      v6 = *&v187;
      v7 = v186;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_24;
    }

    *&v190.f64[0] = &type metadata for UnevenRoundedRectangle;
    type metadata accessor for UnevenRoundedRectangle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v74 = swift_dynamicCast();
    if (v74)
    {
      v75 = *&v194.f64[0];
    }

    else
    {
      v75 = 0;
    }

    if (v74)
    {
      v76 = *&v194.f64[1];
    }

    else
    {
      v76 = 0;
    }

    v169 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v77, v39, v75, v76, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v43, v44, v45, v46, v47);
    v78 = AGGraphGetCurrentAttribute();
    a4 = v78;
    LODWORD(v59) = *MEMORY[0x1E698D3F8];
    if (v78 == *MEMORY[0x1E698D3F8])
    {
      v79 = 0;
    }

    else
    {
      v79 = v78;
    }

    (*(*v41 + 96))(&v190);
    v80 = v190;
    v81 = v191;
    v82 = v192;
    *&v189 = NAN;
    v188 = NAN;
    *&v187 = 1.0;
    v186 = NAN;
    v194 = v190;
    v195 = v191;
    v196 = *&v192;
    LODWORD(v183) = v193;
    LOBYTE(v197) = v193;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v189, &v188, &v187, &v186);
    v32 = *&v189;
    v5 = v188;
    v6 = *&v187;
    v7 = v186;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v180 = v82;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v83 = *(v81 + 16);
        LODWORD(v194.f64[0]) = v79;
        BYTE4(v194.f64[0]) = a4 == LODWORD(v59);
        *&v194.f64[1] = &type metadata for UnevenRoundedRectangle;
        *&v195 = v32;
        *(&v195 + 1) = v5;
        v196 = v6;
        v197 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v84 = v83;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v80.f64[0], *&v80.f64[1], v81, *(&v81 + 1), v180, v183);

        goto LABEL_88;
      }

      v86 = *&v80.f64[1];
      v85 = *&v80.f64[0];
      v87 = v81;
    }

    else
    {
      v86 = *&v80.f64[1];
      v85 = *&v80.f64[0];
      v87 = v81;
    }

    outlined consume of Animation.Function(v85, v86, v87, *(&v81 + 1), v82, v183);
LABEL_88:
    v104 = one-time initialization token for animationState;

    a4 = v171;
    v32 = v168;
    if (v104 == -1)
    {
LABEL_89:
      v64 = *(&static Signpost.animationState + 1);
      *&v60 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      v61 = HIBYTE(word_1ED5283E8);
      v105 = byte_1ED5283EA;
      LOBYTE(v66) = static os_signpost_type_t.begin.getter();
      v194 = __PAIR128__(v64, *&v60);
      LOBYTE(v195) = v4;
      BYTE1(v195) = v61;
      BYTE2(v195) = v105;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v114 = v169;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_96;
      }

      v106 = one-time initialization token for _signpostLog;

      if (v106 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_91;
    }

LABEL_199:
    swift_once();
    goto LABEL_89;
  }

  v32 = v35;
LABEL_128:
  while (1)
  {
    *(a4 + 2) = v8;
    *(a4 + 3) = v9;
    *(a4 + 4) = v10;
    *(a4 + 5) = v34;
    a4[48] = 0;
LABEL_129:
    v51 = *(a4 + 7);
    if (!v51)
    {
      return result;
    }

    v131 = *(a1 + 16);
    v194 = *a1;
    v195 = v131;

    LOBYTE(v198) = 0;
    v132 = specialized AnimatorState.update(_:at:environment:)(&v194, a3, v32);
    v94 = AGGraphGetCurrentAttribute();
    LODWORD(v50) = *MEMORY[0x1E698D3F8];
    if (v94 == *MEMORY[0x1E698D3F8])
    {
      v90 = 0;
    }

    else
    {
      v90 = v94;
    }

    v93 = &type metadata instantiation cache for TupleTypeDescription;
    if (v132)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v143 = *(v93 + 616);
    if (*(v143 + 16) >= 0x43uLL)
    {
      if (*(v143 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v198) = v90;
        BYTE4(v198) = v94 == v50;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v135 = *(&static Signpost.animationState + 1);
    v54 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v49 = HIBYTE(word_1ED5283E8);
    v136 = byte_1ED5283EA;
    v51 = static os_signpost_type_t.end.getter();
    v198 = __PAIR128__(v135, v54);
    LOBYTE(v199) = v53;
    BYTE1(v199) = v49;
    BYTE2(v199) = v136;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v172 = a1;
    v137 = one-time initialization token for _signpostLog;

    if (v137 != -1)
    {
      swift_once();
    }

    v171 = a4;
    v52 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v50)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_31;
    }

    v55 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v179) = v50;
    if (v55 && (v56 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v57 = *(v56 + 16);
      LODWORD(v194.f64[0]) = v51;
      BYTE4(v194.f64[0]) = v49 == v50;
      *&v194.f64[1] = &type metadata for UnevenRoundedRectangle;
      *&v195 = v32;
      *(&v195 + 1) = v5;
      v196 = v6;
      v197 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v58 = v57;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v4, *&v52, v53, v54, v182, v183);
    }

    else
    {
      outlined consume of Animation.Function(v4, *&v52, v53, v54, v182, v183);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    v32 = v168;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_31:
    v60 = *(&static Signpost.animationState + 1);
    *&v59 = static Signpost.animationState;
    v61 = word_1ED5283E8;
    v62 = HIBYTE(word_1ED5283E8);
    v63 = byte_1ED5283EA;
    v64 = static os_signpost_type_t.event.getter();
    v194 = __PAIR128__(*&v60, *&v59);
    LOBYTE(v195) = v61;
    BYTE1(v195) = v62;
    BYTE2(v195) = v63;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
LABEL_85:
      a4 = v171;
      a3 = v165;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v198, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v65 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v66 = COERCE_DOUBLE(swift_allocObject());
    *(v66 + 16) = xmmword_18DDAF080;
    v67 = AGGraphGetCurrentAttribute();
    v4 = v179;
    if (v67 == v179)
    {
      __break(1u);
    }

    else
    {
      v68 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v70 = MEMORY[0x1E69E6870];
      *(v66 + 56) = MEMORY[0x1E69E6810];
      *(v66 + 64) = v70;
      *(v66 + 32) = Counter;
      v71 = AGGraphGetCurrentAttribute();
      if (v71 != v4)
      {
        v72 = MEMORY[0x1E69E76D0];
        *(v66 + 96) = MEMORY[0x1E69E7668];
        *(v66 + 104) = v72;
        *(v66 + 72) = v71;
        *(v66 + 136) = MEMORY[0x1E69E6158];
        *(v66 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v66 + 112) = 0xD000000000000016;
        *(v66 + 120) = 0x800000018DD78ED0;
        if (v62)
        {
          LOBYTE(v186) = v64;
          *&v189 = COERCE_DOUBLE(&dword_18D018000);
          v188 = v65;
          v194.f64[0] = v59;
          v194.f64[1] = v60;
          LOBYTE(v195) = v61;
          *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v190.f64[1] = 39;
          LOBYTE(v191) = 2;
          v187 = v66;
          v73 = v164;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          (*(v181 + 8))(v73, v185);
        }

        else
        {
          v88 = LOBYTE(v59);
          if (LOBYTE(v59) == 20)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          v89 = bswap32(LOWORD(v59)) | (4 * HIWORD(LODWORD(v59)));
          v90 = v64;
          v91 = (v181 + 16);
          v173 = *(v181 + 16);
          v92 = v173(v180, v164, v185);
          v93 = 0;
          LOBYTE(v190.f64[0]) = 1;
          v183 = v50;
          v178 = 16 * v50;
          v174 = v91;
          v179 = (v91 - 8);
          v177 = v66 + 32;
          v176 = v88;
          do
          {
            v182 = &v164;
            MEMORY[0x1EEE9AC00](v92);
            a1 = &v164 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (a1 + 8);
            v96 = v183;
            v97 = (a1 + 8);
            do
            {
              *(v97 - 1) = 0;
              *v97 = 0;
              v97 += 16;
              v96 = (v96 - 1);
            }

            while (v96);
            v4 = v177 + 40 * v93;
            v51 = v183;
            while (1)
            {
              v98 = *(v66 + 16);
              if (v93 == v98)
              {
                break;
              }

              if (v93 >= v98)
              {
                goto LABEL_186;
              }

              ++v93;
              outlined init with copy of AnyTrackedValue(v4, &v194);
              v50 = *(&v195 + 1);
              __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
              *(a4 - 1) = CVarArg.kdebugValue(_:)(v89 | v90, v50);
              *a4 = v99 & 1;
              a4 += 16;
              v94 = __swift_destroy_boxed_opaque_existential_1(&v194);
              v4 += 40;
              if (!--v51)
              {
                goto LABEL_68;
              }
            }

            LOBYTE(v190.f64[0]) = 0;
LABEL_68:
            v4 = v176;
            if (v176 == 20)
            {
              v100 = v180;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v100 = v180;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v101 = *v179;
            v50 = v185;
            (*v179)(v100, v185);
            v102 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
            v92 = v173(v100, v102, v50);
          }

          while ((LOBYTE(v190.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          v103 = v185;
          v101(v100, v185);
          v101(v164, v103);
        }

        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_91:
    v107 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v59))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v108 = AGGraphGetAttributeGraph();
    v109 = AGGraphGetCounter();

    v110 = MEMORY[0x1E69E6870];
    *(a4 + 7) = MEMORY[0x1E69E6810];
    *(a4 + 8) = v110;
    *(a4 + 4) = v109;
    v111 = AGGraphGetCurrentAttribute();
    if (v111 == LODWORD(v59))
    {
      goto LABEL_204;
    }

    v112 = MEMORY[0x1E69E76D0];
    *(a4 + 12) = MEMORY[0x1E69E7668];
    *(a4 + 13) = v112;
    *(a4 + 18) = v111;
    *(a4 + 17) = MEMORY[0x1E69E6158];
    *(a4 + 18) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 14) = 0xD000000000000016;
    *(a4 + 15) = 0x800000018DD78ED0;
    if (v61)
    {
      LOBYTE(v186) = v66;
      *&v189 = COERCE_DOUBLE(&dword_18D018000);
      v188 = v107;
      v194.f64[0] = v60;
      *&v194.f64[1] = v64;
      LOBYTE(v195) = v4;
      *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v190.f64[1] = 39;
      LOBYTE(v191) = 2;
      v187 = a4;
      v113 = v164;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v114 = v169;

      (*(v181 + 8))(v113, v185);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v171;
LABEL_96:
      *(a4 + 7) = v114;
    }

    else
    {
      v115 = LOBYTE(v60);
      v116 = v66;
      if (LOBYTE(v60) == 20)
      {
        v117 = 3;
      }

      else
      {
        v117 = 4;
      }

      a1 = bswap32(LOWORD(v60)) | (4 * HIWORD(LODWORD(v60)));
      v90 = v116;
      v50 = v181 + 16;
      v173 = *(v181 + 16);
      v118 = v173(v182, v164, v185);
      v93 = 0;
      LOBYTE(v190.f64[0]) = 1;
      v179 = (16 * v117);
      v174 = v50;
      v180 = (v50 - 8);
      v178 = (a4 + 32);
      v176 = v115;
      v177 = v117;
      do
      {
        v183 = &v164;
        MEMORY[0x1EEE9AC00](v118);
        v4 = &v164 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = (v4 + 8);
        v120 = v117;
        v121 = (v4 + 8);
        do
        {
          *(v121 - 1) = 0;
          *v121 = 0;
          v121 += 16;
          --v120;
        }

        while (v120);
        v122 = v178 + 40 * v93;
        while (1)
        {
          v123 = *(a4 + 2);
          if (v93 == v123)
          {
            break;
          }

          if (v93 >= v123)
          {
            goto LABEL_187;
          }

          ++v93;
          outlined init with copy of AnyTrackedValue(v122, &v194);
          v50 = *(&v195 + 1);
          __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
          *(v51 - 1) = CVarArg.kdebugValue(_:)(a1 | v90, v50);
          *v51 = v124 & 1;
          v51 += 16;
          v94 = __swift_destroy_boxed_opaque_existential_1(&v194);
          v122 += 40;
          if (!--v117)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v190.f64[0]) = 0;
LABEL_109:
        v125 = v176;
        if (v176 == 20)
        {
          v126 = v182;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v126 = v182;
        }

        v117 = v177;
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v125 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v50 = *v180;
        v127 = v185;
        (*v180)(v126, v185);
        v128 = __swift_project_value_buffer(v127, static OSSignpostID.continuation);
        v118 = v173(v126, v128, v127);
      }

      while ((LOBYTE(v190.f64[0]) & 1) != 0);
      v129 = v169;

      v130 = v185;
      (v50)(v126, v185);
      (v50)(v164, v130);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v198, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v171;
      *(v171 + 7) = v129;
    }

    a3 = v165;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v167);

    a1 = v172;
LABEL_127:
    v34 = v170;
  }

  v138 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v139 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v139;
  *(a1 + 32) = v4;
  v140 = AGGraphGetCurrentAttribute();
  if (v140 == v50)
  {
    goto LABEL_194;
  }

  v141 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v141;
  *(a1 + 72) = v140;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0xD000000000000016;
  *(a1 + 120) = 0x800000018DD78ED0;
  if (v49)
  {
    LOBYTE(v186) = v51;
    *&v189 = COERCE_DOUBLE(&dword_18D018000);
    v188 = v52;
    *&v198 = v54;
    *(&v198 + 1) = v135;
    LOBYTE(v199) = v53;
    *&v190.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v190.f64[1] = 37;
    LOBYTE(v191) = 2;
    v187 = a1;
    v142 = v175;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v181 + 8))(v142, v185);
    goto LABEL_181;
  }

  v144 = v54;
  if (v54 == 20)
  {
    v145 = 3;
  }

  else
  {
    v145 = 4;
  }

  v90 = bswap32(v54) | (4 * WORD1(v54));
  v93 = v51;
  v146 = v181 + 16;
  v176 = *(v181 + 16);
  v147 = v176(v184, v175, v185);
  v148 = 0;
  LOBYTE(v190.f64[0]) = 1;
  v183 = v145;
  v179 = (16 * v145);
  v181 = v146;
  v180 = (v146 - 8);
  v178 = a1 + 32;
  v177 = v144;
  do
  {
    v182 = &v164;
    MEMORY[0x1EEE9AC00](v147);
    a4 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a4 + 8;
    v151 = v183;
    v152 = a4 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v4 = v178 + 40 * v148;
    v50 = v183;
    while (1)
    {
      v153 = *(a1 + 16);
      if (v148 == v153)
      {
        break;
      }

      if (v148 >= v153)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v162 = v94;
        swift_once();
        v94 = v162;
LABEL_135:
        v133 = *(v93 + 616);
        if (*(v133 + 16) >= 0x43uLL)
        {
          if (*(v133 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v198) = v90;
            BYTE4(v198) = v94 == v50;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v134 = one-time initialization token for animationState;
          v174 = v51;

          if (v134 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v163 = v94;
        swift_once();
        v94 = v163;
        goto LABEL_148;
      }

      ++v148;
      outlined init with copy of AnyTrackedValue(v4, &v198);
      v154 = *(&v199 + 1);
      v51 = v200;
      __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v90 | v93, v154);
      *v150 = v155 & 1;
      v150 += 16;
      v94 = __swift_destroy_boxed_opaque_existential_1(&v198);
      v4 += 40;
      if (!--v50)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v190.f64[0]) = 0;
LABEL_166:
    v156 = v177;
    if (v177 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v156 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v157 = *v180;
    v51 = v184;
    v158 = v185;
    (*v180)(v184, v185);
    v159 = __swift_project_value_buffer(v158, static OSSignpostID.continuation);
    v147 = v176(v51, v159, v158);
  }

  while ((LOBYTE(v190.f64[0]) & 1) != 0);

  v160 = v185;
  v157(v184, v185);
  v157(v175, v160);
LABEL_181:

  a1 = v172;
  a4 = v171;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 7) = 0;
LABEL_183:
  v161 = v195;
  *a1 = v194;
  *(a1 + 16) = v161;
  *(a1 + 33) = 1;
  return result;
}