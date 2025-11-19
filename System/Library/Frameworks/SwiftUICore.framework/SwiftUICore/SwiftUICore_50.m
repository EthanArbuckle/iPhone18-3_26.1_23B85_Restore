uint64_t type metadata completion function for ApplyTransitionModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18D2E53E8()
{
  type metadata accessor for AsymmetricTransition();
  type metadata accessor for PlaceholderContentView();
  type metadata accessor for ApplyTransitionModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ApplyTransitionModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t initializeWithCopy for LazyFocusableFillerBoundsProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t ScrollStateEnqueueRequests.init(phaseState:scrollable:inputs:outputs:)@<X0>(int a1@<W0>, int a2@<W1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a3[3];
  v32 = a3[2];
  v33 = v8;
  v34 = a3[4];
  v35 = *(a3 + 20);
  v9 = a3[1];
  v30 = *a3;
  v31 = v9;
  v10 = *a4;
  v11 = *MEMORY[0x1E698D3F8];
  v12 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v13 = *(v12 + 64);

  *(a5 + 28) = v13;
  *(a5 + 32) = 0xFFFFFFFFLL;
  *(a5 + 40) = 0;
  *(a5 + 44) = 0xFFFFFFFF00000000;
  *(a5 + 52) = 0;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI18ScrollStateRequest_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(a5 + 56) = v15;
  *a5 = a1;
  *(a5 + 4) = a2;
  v16 = v30;
  *(a5 + 8) = *(&v31 + 1);
  v17 = (v10 + 32);
  v18 = *(v10 + 16) + 1;
  while (--v18)
  {
    v19 = v17 + 3;
    v20 = *v17;
    v17 += 3;
    if (v20 == &type metadata for UpdateScrollStateRequestKey)
    {
      v21 = *(v19 - 2);
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_6:
  v22 = v18 == 0;

  if (v22)
  {
    v23 = v11;
  }

  else
  {
    v23 = v21;
  }

  *(a5 + 16) = v23;
  *(a5 + 20) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(v16);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  v24 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v16, v29);
  if (v24)
  {
    v25 = *(v24 + 76);
    v26 = *(v24 + 72);
    result = outlined destroy of _ViewInputs(&v30);
    if (v25 <= 0xFEuLL)
    {
      v28 = v26 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
      if ((v28 & 0x100000000) == 0)
      {
        v11 = v28;
      }
    }
  }

  else
  {
    result = outlined destroy of _ViewInputs(&v30);
  }

  *(a5 + 24) = v11;
  return result;
}

uint64_t type metadata completion function for _ForegroundStyleModifier3()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI18ScrollStateRequest_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      outlined init with copy of (ObjectIdentifier, ScrollStateRequest)(i, &v11, &lazy cache variable for type metadata for (ObjectIdentifier, ScrollStateRequest), &lazy cache variable for type metadata for ScrollStateRequest);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of AnyTrackedValue(&v12, v3[7] + 40 * result);
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollStateRequestKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018ScrollStateRequestV033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt0B5(a1, v5);
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

    v3 = &static _GraphInputs.ScrollStateRequestKey.defaultValue;
  }

  return *v3;
}

uint64_t initializeWithCopy for ScrollStateEnqueueRequests(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t static Update.locked<A>(_:)(void (*a1)(uint64_t))
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  v3 = _MovableLockLock(static Update._lock);
  a1(v3);
  return _MovableLockUnlock(v2);
}

uint64_t instantiation function for generic protocol witness table for ValueToScrollPosition<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(a1, v14);
  if (v5)
  {
    v6 = v5 + 9;
    v7 = v5 + 10;
    v8 = v5 + 11;
    v9 = (v5 + 12);
  }

  else
  {
    v6 = &static ScrollAnchorsKey.defaultValue;
    v8 = &qword_1ED522CF0;
    v7 = &qword_1ED522CE8;
    v9 = &byte_1ED522CF8;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  v10 = *v8;
  v11 = *v7;
  v12 = *v9;
  *a2 = *v6;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021NearestScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  result = a5(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021NearestScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021NearestScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t LayoutComputer.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *v1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    return (*(*v6 + 120))(&v8);
  }

  return result;
}

void ViewSizeCache.get(_:makeValue:)(uint64_t a1, double (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v2 + 8);
  v8 = *(v2 + 24);
  v9 = *(v2 + 88);
  v10 = *(v2 + 96);
  if ((*(v2 + 48) & 1) == 0)
  {
    if (v4)
    {
      if ((v7 & 1) == 0)
      {
        if (*(v2 + 104))
        {
          goto LABEL_21;
        }

        goto LABEL_10;
      }
    }

    else if ((v7 & 1) != 0 || v3 != *v2)
    {
      goto LABEL_2;
    }

    if (v6)
    {
      if (v8)
      {
        goto LABEL_38;
      }
    }

    else if ((v8 & 1) == 0 && v5 == *(v2 + 16))
    {
      goto LABEL_38;
    }
  }

LABEL_2:
  if (*(v2 + 104))
  {
    goto LABEL_21;
  }

  if ((v4 & 1) == 0)
  {
    if ((*(v2 + 64) & 1) != 0 || *(v2 + 56) != v3)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((*(v2 + 64) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v6)
  {
    if (*(v2 + 80))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v2 + 80) & 1) == 0 && *(v2 + 72) == v5)
  {
    goto LABEL_38;
  }

LABEL_21:
  if (*(v2 + 160))
  {
    goto LABEL_22;
  }

  if (v4)
  {
    if ((*(v2 + 120) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((*(v2 + 120) & 1) != 0 || *(v2 + 112) != v3)
  {
    goto LABEL_22;
  }

  if ((v6 & 1) == 0)
  {
    if ((*(v2 + 136) & 1) == 0 && *(v2 + 128) == v5)
    {
      goto LABEL_38;
    }

LABEL_22:
    v17 = *(v2 + 104);
    v18 = *(v2 + 72);
    v19 = *(v2 + 56);
    v23 = *(v2 + 48);
    v24 = *(v2 + 24);
    v25 = *(v2 + 32);
    v21 = *(v2 + 8);
    v22 = *(v2 + 16);
    v20 = *v2;
    v26 = *(v2 + 40);
    v12 = swift_beginAccess();
    v13 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      v12 = swift_beginAccess();
      v13[4] = v3;
      *(v13 + 5) = v4;
      v13[6] = v5;
      *(v13 + 28) = v6;
    }

    v14 = a2(v12);
    *(v2 + 112) = v19;
    *(v2 + 128) = v18;
    *(v2 + 144) = v9;
    *(v2 + 152) = v10;
    *(v2 + 160) = v17;
    *(v2 + 56) = v20;
    *(v2 + 64) = v21;
    *(v2 + 72) = v22;
    *(v2 + 80) = v24;
    *(v2 + 88) = v25;
    *(v2 + 96) = v26;
    *(v2 + 104) = v23;
    *v2 = v3;
    *(v2 + 8) = v4;
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    *(v2 + 32) = v14;
    *(v2 + 40) = v15;
    *(v2 + 48) = 0;
    return;
  }

  if ((*(v2 + 136) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_38:
  swift_beginAccess();
  v16 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v16[4] = v3;
    *(v16 + 5) = v4;
    v16[6] = v5;
    *(v16 + 28) = v6 | 0x100;
  }
}

void type metadata accessor for AnyDynamicFontModifier<Font.WidthModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for AnyDynamicFontModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t initializeWithCopy for LazyPrefetchState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

int8x16_t ScrollAnchorStorage.anchor(role:)(_BYTE *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v2 + 1);
  v5 = *(v2 + 24);
  v6 = *(v3 + 16);
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (!v6)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

    else
    {
      if (!v6)
      {
        goto LABEL_11;
      }

      v7 = 2;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = 0;
  }

  v12 = v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v4 = v12;
  if (v9)
  {
    return *(*(v3 + 56) + 16 * v8);
  }

LABEL_11:
  if (v5)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  return vbicq_s8(v4, vdupq_n_s64(v11));
}

void Color.ResolvedHDR.kitColor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (one-time initialization token for cache != -1)
  {
    v5 = *v0;
    v6 = v0[1];
    v7 = v0[2];
    v8 = v0[3];
    swift_once();
    v4 = v8;
    v3 = v7;
    v2 = v6;
    v1 = v5;
  }

  specialized ObjectCache.subscript.getter(v1, v2, v3, v4);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA024UpdateScrollStateRequestI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for UpdateScrollStateRequestKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

double ValueToScrollPosition.get(base:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v11[2] = v5;
  v11[3] = v6;
  v12 = *v2;
  v13 = v4;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ValueToScrollPosition.get(base:), v11, MEMORY[0x1E69E73E0], &type metadata for ScrollPosition, v7, v14);
  if (v15)
  {
    v8 = v14[3];
    *(a2 + 32) = v14[2];
    *(a2 + 48) = v8;
    *(a2 + 64) = v15;
    *(a2 + 80) = v16;
    result = *v14;
    v10 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v10;
  }

  else
  {
    result = 0.0;
    *(a2 + 41) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 57) = 5;
    *(a2 + 64) = v5;
    *(a2 + 72) = v6;
    *(a2 + 80) = 0;
  }

  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 3;
    if (v13 != 3)
    {
      v17 = *(*(v3 + 56) + 16 * v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v15)
      {
        v16 = vmovn_s64(vceqq_f64(*(*(a2 + 56) + 16 * result), v17));
        if (v16.i32[0] & v16.i32[1])
        {
          continue;
        }
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL static ScrollAnchorStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    return (v7 & 1) == 0 && v2 == v5 && v3 == v6;
  }

  return (v7 & 1) != 0;
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15FocusableBoundsV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for FocusableBounds.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

uint64_t initializeWithCopy for DisplayList.InterpolatorLayer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  swift_unknownObjectRetain();

  return a1;
}

id closure #1 in implicit closure #1 in closure #3 in DisplayList.GraphicsRenderer.render(item:in:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v14 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v14 setDefaultColorSpace_];
  [v14 setDeviceScale_];
  RBDisplayListGetState();
  v15 = RBDrawingStateBeginCGContext();
  v16 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v16 push];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static TextDrawingContext.shared;
  if (a8[27])
  {
    v18 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v18 = 0;
  }

  (*(*a8 + 296))(1, v18, v17, a9, 0.0, 0.0, a2, a3, a2, a3);
  [v16 pop];

  RBDrawingStateEndCGContext();
  v19 = [v14 moveContents];

  return v19;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ApplyTransitionModifier<A>.Child()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for ApplyTransitionModifier<A>.Child(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for LazySubviewPrefetcher(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role()
{
  result = lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role;
  if (!lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role;
  if (!lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout()
{
  result = lazy protocol witness table cache variable for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout;
  if (!lazy protocol witness table cache variable for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>;
  if (!lazy protocol witness table cache variable for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for PreferenceTransform<UpdateScrollStateRequestKey>, &type metadata for UpdateScrollStateRequestKey, &protocol witness table for UpdateScrollStateRequestKey, type metadata accessor for PreferenceTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>);
  }

  return result;
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA21FocusableFillerBoundsV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for FocusableFillerBounds.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t lazy protocol witness table accessor for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider()
{
  result = lazy protocol witness table cache variable for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider;
  if (!lazy protocol witness table cache variable for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider);
  }

  return result;
}

uint64_t closure #1 in ValueToScrollPosition.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  return ScrollPosition.init<A>(id:anchor:)(v15, a2, a3, a4 & 1, a5, a6, a7);
}

uint64_t ScrollPosition.init<A>(id:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  DynamicType = swift_getDynamicType();
  *(&v20 + 1) = a5;
  *v21 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  v16 = *(a5 - 8);
  (*(v16 + 16))(boxed_opaque_existential_1, a1, a5);
  *&v21[8] = a2;
  *&v21[16] = a3;
  v21[24] = a4 & 1;
  v21[25] = 0;
  v17 = v20;
  *a7 = v19;
  *(a7 + 16) = v17;
  *(a7 + 32) = *v21;
  *(a7 + 42) = *&v21[10];
  *(a7 + 64) = DynamicType;
  *(a7 + 72) = a6;
  *(a7 + 80) = 0;
  return (*(v16 + 8))(a1, a5);
}

uint64_t storeEnumTagSinglePayload for ScrollPosition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ShadowEffect>, &type metadata for _ShadowEffect, &protocol witness table for _ShadowEffect, type metadata accessor for EnvironmentalBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>);
  }

  return result;
}

__n128 initializeWithCopy for ScrollPosition(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 57))
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 42) = *(a2 + 42);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    v5 = a1;
    (**(v4 - 8))();
    a1 = v5;
    *(v5 + 40) = *(a2 + 40);
    *(v5 + 56) = *(a2 + 56);
  }

  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

uint64_t initializeWithCopy for ScrollPositionBindingModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 73);

  if (v5)
  {
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 58) = *(a2 + 58);
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 40) = v7;
    (**(v7 - 8))(a1 + 16, a2 + 16);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t destroy for ScrollPositionBindingModifier(uint64_t a1)
{

  if (!*(a1 + 73))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  }

  return result;
}

uint64_t assignWithTake for LazyPrefetchState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t destroy for ScrollPosition(uint64_t a1)
{
  if (!*(a1 + 57))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved()
{
  result = lazy protocol witness table cache variable for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved;
  if (!lazy protocol witness table cache variable for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved);
  }

  return result;
}

uint64_t View.transaction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return View.modifier<A>(_:)(v4, a3, &type metadata for _TransactionModifier);
}

uint64_t specialized AnimatableAttribute.updateValue()(uint64_t a1, void (*a2)(_OWORD *, void, void, uint64_t))
{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v5 = Value[1];
  v8[0] = *Value;
  v8[1] = v5;
  v9 = v6 & 1;
  a2(v8, 0, *(v2 + 4), v2 + 8);
  if (v9)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

void ResolvedSafeAreaInsets.value.getter()
{
  v1 = *v0;
  v7 = *(v0 + 8);
  v2 = *(v0 + 24);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else if (v2 != *MEMORY[0x1E698D3F8])
  {
    v4 = CurrentAttribute;
    InputValue = AGGraphGetInputValue();
    v6 = *(InputValue + 16);
    v11 = *InputValue;
    v12 = v6;
    v8[0] = v4;
    v8[1] = v4;
    v9 = vrev64q_s32(v7);
    v10 = v2;
    SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(v1, 0, v8);
  }
}

uint64_t StatefulRule<>.updateIfNotEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    type metadata accessor for LayoutEngineBox();
    v11 = swift_dynamicCastClassUnconditional();
    v12 = *(*v11 + 192);
    (*(v5 + 16))(v7, v11 + v12, a3);
    swift_retain_n();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, a3);
    if ((v13 & 1) == 0)
    {
      (*(v5 + 24))(v11 + v12, a1, a3);
      v16 = v9;
      v17 = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    (*(v5 + 16))(v7, a1, a3);
    LayoutComputer.init<A>(_:)(v7, a3, &v16);
    v15[1] = v16;
    v15[2] = v17;
    AGGraphSetOutputValue();
  }
}

id protocol witness for static UserDefaultKeyedFeature.defaults.getter in conformance EnableScrollPrefetchFeature()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v1 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v0 = 0;
  }

  v2 = v0;
  return v1;
}

uint64_t EnvironmentValues.nearestScrollableAxes.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void))
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

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance EnableScrollPrefetchFeature(char a1)
{
  result = swift_beginAccess();
  static EnableScrollPrefetchFeature.cachedValue = a1;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021NearestScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021NearestScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void (*EnvironmentValues.allScrollableAxes.modify(void *a1))(uint64_t a1, char a2)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017AllScrollableAxesjI033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017AllScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7;
  return EnvironmentValues.allScrollableAxes.modify;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017AllScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017AllScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
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

void EnvironmentValues.nearestScrollableAxes.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void))
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

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017AllScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017AllScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollPosition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for EnvironmentPropertyKey<ScrollAnchorsKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>);
    }
  }
}

double ScrollAnchorStorage.adjustedAnchor(role:layoutDirection:)(char *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 24);
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v5;
  v7 = v3;
  *&result = ScrollAnchorStorage.anchor(role:)(&v7).u64[0];
  if (v4)
  {
    return 1.0 - result;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(a1, v7);
  if (result)
  {
    v6 = *(result + 72);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t ScrollAnchorStorage.initialOffset.getter(uint64_t result)
{
  if (*(*v1 + 16))
  {
    return specialized __RawDictionaryStorage.find<A>(_:)(result);
  }

  return result;
}

uint64_t EnvironmentValues.nearestScrollableAxes.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3);
  }

  v5 = a1(v3);

  return v5;
}

double EdgeInsets.in(_:)(double a1)
{
  if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
  {
    a1 = 0.0;
  }

  Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  return a1;
}

uint64_t Transaction.fromScrollView.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{

  a2(v2, a1, &v6);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<FromScrollViewKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<FromScrollViewKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<FromScrollViewKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<FromScrollViewKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

uint64_t default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)@<X0>(_DWORD *a1@<X8>)
{
  result = _threadTransactionID();
  *a1 = result;
  return result;
}

uint64_t static Signpost.scrollNotifyDidMoveToWindow(_:)(char a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (a1)
  {
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }
  }

  else if (one-time initialization token for _signpostLog != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t one-time initialization function for _signpostLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  _signpostLog = result;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SectionAccumulator.formResult(from:listAttribute:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = *(a4 + 8);
  v9 = *a2;
  v7 = v4;
  v8 = v5;
  return SectionAccumulator.apply(start:style:node:transform:)(a1, &v9, a3, &v7) & 1;
}

uint64_t SectionAccumulator.RowIDAccumulator.count.getter()
{
  outlined init with copy of SectionAccumulator.RowIDAccumulator(v0, v15);
  if (v17)
  {
    v13[3] = v15[4];
    v13[4] = v15[5];
    v14 = v16;
    v12 = v15[0];
    v13[0] = v15[1];
    v13[1] = v15[2];
    v13[2] = v15[3];
    v1 = *(&v15[0] + 1);
    outlined init with copy of ViewList?(v13, v9, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray);
    v2 = v10;
    if (v10)
    {
      v3 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v4 = (*(v3 + 40))(v2, v3);
      outlined destroy of HeterogeneousViewIDsAccumulator(&v12);
      __swift_destroy_boxed_opaque_existential_1(v9);
      result = v1 + v4;
      if (!__OFADD__(v1, v4))
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = *(*&v15[0] + 16);
    if (!v6)
    {
LABEL_13:

      return 0;
    }

    v7 = *&v15[0] + 56 * v6;
    v2 = *(v7 + 16);
    v8 = *(v7 + 24);

    result = v8 + v2;
    if (!__OFADD__(v8, v2))
    {
      return result;
    }

    __break(1u);
  }

  outlined destroy of HeterogeneousViewIDsAccumulator(&v12);
  _s7SwiftUI8ViewList_pSgWOhTm_0(v9, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t initializeWithCopy for SectionAccumulator.RowIDAccumulator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 97);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  *a1 = *a2;
  if (v4 == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    v5 = *(a2 + 40);

    if (v5)
    {
      v6 = *(a2 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      (**(v5 - 8))(a1 + 16, a2 + 16, v5);
      v7 = *(a2 + 80);
      if (v7)
      {
LABEL_6:
        v8 = *(a2 + 88);
        *(a1 + 80) = v7;
        *(a1 + 88) = v8;
        (**(v7 - 8))(a1 + 56, a2 + 56);
        *(a1 + 96) = *(a2 + 96);
LABEL_10:
        *(a1 + 97) = 1;
        return a1;
      }
    }

    else
    {
      v9 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v9;
      *(a1 + 48) = *(a2 + 48);
      v7 = *(a2 + 80);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 81) = *(a2 + 81);
    goto LABEL_10;
  }

  *(a1 + 97) = 0;

  return a1;
}

uint64_t outlined init with copy of ViewList?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for ViewList?(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _ViewList_TemporarySublistTransform.bindID(_:)(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  if (v1[1])
  {
    v4 = *v3;
    v5 = *(*v3 + 16);
    if (v5)
    {

      v6 = &v4[5 * v5 - 1];
      while (v5 <= v4[2])
      {
        --v5;
        outlined init with copy of AnyTrackedValue(v6, v11);
        v7 = v12;
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(v8 + 24))(v2, v7, v8);
        result = __swift_destroy_boxed_opaque_existential_1(v11);
        v6 -= 40;
        if (!v5)
        {
        }
      }

      __break(1u);
    }
  }

  else
  {
    for (; v3; v3 = *v3)
    {
      outlined init with copy of AnyTrackedValue((v3 + 1), v11);
      v9 = v12;
      v10 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v10 + 24))(v2, v9, v10);
      result = __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  return result;
}

uint64_t specialized StatefulRule<>.update<A>(to:)(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 176);
  v22[10] = *(a1 + 160);
  v22[11] = v2;
  v23 = *(a1 + 192);
  v3 = *(a1 + 112);
  v22[6] = *(a1 + 96);
  v22[7] = v3;
  v4 = *(a1 + 144);
  v22[8] = *(a1 + 128);
  v22[9] = v4;
  v5 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v5;
  v6 = *(a1 + 80);
  v22[4] = *(a1 + 64);
  v22[5] = v6;
  v7 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);

      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = *(a1 + 176);
    v24[10] = *(a1 + 160);
    v24[11] = v15;
    v25 = *(a1 + 192);
    v16 = *(a1 + 112);
    v24[6] = *(a1 + 96);
    v24[7] = v16;
    v17 = *(a1 + 144);
    v24[8] = *(a1 + 128);
    v24[9] = v17;
    v18 = *(a1 + 48);
    v24[2] = *(a1 + 32);
    v24[3] = v18;
    v19 = *(a1 + 80);
    v24[4] = *(a1 + 64);
    v24[5] = v19;
    v20 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA021ContainerCornerOffsetC033_1EB28CBBC8B70D90A6FD32242CBBC5E6LLVG_Tt1B5Tm(v24, type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>, type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 176);
  v22[10] = *(a1 + 160);
  v22[11] = v2;
  v23 = *(a1 + 192);
  v3 = *(a1 + 112);
  v22[6] = *(a1 + 96);
  v22[7] = v3;
  v4 = *(a1 + 144);
  v22[8] = *(a1 + 128);
  v22[9] = v4;
  v5 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v5;
  v6 = *(a1 + 80);
  v22[4] = *(a1 + 64);
  v22[5] = v6;
  v7 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;

    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);
      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = *(a1 + 176);
    v24[10] = *(a1 + 160);
    v24[11] = v15;
    v25 = *(a1 + 192);
    v16 = *(a1 + 112);
    v24[6] = *(a1 + 96);
    v24[7] = v16;
    v17 = *(a1 + 144);
    v24[8] = *(a1 + 128);
    v24[9] = v17;
    v18 = *(a1 + 48);
    v24[2] = *(a1 + 32);
    v24[3] = v18;
    v19 = *(a1 + 80);
    v24[4] = *(a1 + 64);
    v24[5] = v19;
    v20 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA021ContainerCornerOffsetC033_1EB28CBBC8B70D90A6FD32242CBBC5E6LLVG_Tt1B5Tm(v24, type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>, type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 176);
  v22[10] = *(a1 + 160);
  v22[11] = v2;
  v23 = *(a1 + 192);
  v3 = *(a1 + 112);
  v22[6] = *(a1 + 96);
  v22[7] = v3;
  v4 = *(a1 + 144);
  v22[8] = *(a1 + 128);
  v22[9] = v4;
  v5 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v5;
  v6 = *(a1 + 80);
  v22[4] = *(a1 + 64);
  v22[5] = v6;
  v7 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;

    if (v11 != -1)
    {
      IsOwner = swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    IsOwner = _MovableLockIsOwner(static Update._lock);
    if ((IsOwner & 1) == 0)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      v13 = MEMORY[0x1EEE9AC00](IsOwner);
      (*(*v9 + 80))(v13);
      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = *(a1 + 176);
    v24[10] = *(a1 + 160);
    v24[11] = v15;
    v25 = *(a1 + 192);
    v16 = *(a1 + 112);
    v24[6] = *(a1 + 96);
    v24[7] = v16;
    v17 = *(a1 + 144);
    v24[8] = *(a1 + 128);
    v24[9] = v17;
    v18 = *(a1 + 48);
    v24[2] = *(a1 + 32);
    v24[3] = v18;
    v19 = *(a1 + 80);
    v24[4] = *(a1 + 64);
    v24[5] = v19;
    v20 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05InsetcD0V0E0V_Tt1B5(v24, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v20[8] = *(a1 + 128);
  v20[9] = v2;
  v20[10] = *(a1 + 160);
  v21 = *(a1 + 176);
  v3 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v3;
  v4 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v4;
  v5 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v5;
  v6 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = *(a1 + 144);
    v22[8] = *(a1 + 128);
    v22[9] = v14;
    v22[10] = *(a1 + 160);
    v23 = *(a1 + 176);
    v15 = *(a1 + 80);
    v22[4] = *(a1 + 64);
    v22[5] = v15;
    v16 = *(a1 + 112);
    v22[6] = *(a1 + 96);
    v22[7] = v16;
    v17 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v17;
    v18 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v20[8] = *(a1 + 128);
  v20[9] = v2;
  v20[10] = *(a1 + 160);
  v21 = *(a1 + 176);
  v3 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v3;
  v4 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v4;
  v5 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v5;
  v6 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = *(a1 + 144);
    v22[8] = *(a1 + 128);
    v22[9] = v14;
    v22[10] = *(a1 + 160);
    v23 = *(a1 + 176);
    v15 = *(a1 + 80);
    v22[4] = *(a1 + 64);
    v22[5] = v15;
    v16 = *(a1 + 112);
    v22[6] = *(a1 + 96);
    v22[7] = v16;
    v17 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v17;
    v18 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v20[8] = *(a1 + 128);
  v20[9] = v2;
  v20[10] = *(a1 + 160);
  v21 = *(a1 + 176);
  v3 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v3;
  v4 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v4;
  v5 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v5;
  v6 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<Capsule._Inset>>();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = *(a1 + 144);
    v22[8] = *(a1 + 128);
    v22[9] = v14;
    v22[10] = *(a1 + 160);
    v23 = *(a1 + 176);
    v15 = *(a1 + 80);
    v22[4] = *(a1 + 64);
    v22[5] = v15;
    v16 = *(a1 + 112);
    v22[6] = *(a1 + 96);
    v22[7] = v16;
    v17 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v17;
    v18 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<Capsule._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<Capsule._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<Capsule._Inset>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v20[8] = *(a1 + 128);
  v20[9] = v2;
  v20[10] = *(a1 + 160);
  v21 = *(a1 + 176);
  v3 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v3;
  v4 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v4;
  v5 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v5;
  v6 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<Circle._Inset>>();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = *(a1 + 144);
    v22[8] = *(a1 + 128);
    v22[9] = v14;
    v22[10] = *(a1 + 160);
    v23 = *(a1 + 176);
    v15 = *(a1 + 80);
    v22[4] = *(a1 + 64);
    v22[5] = v15;
    v16 = *(a1 + 112);
    v22[6] = *(a1 + 96);
    v22[7] = v16;
    v17 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v17;
    v18 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<Circle._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<Circle._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<Circle._Inset>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v20[8] = *(a1 + 128);
  v20[9] = v2;
  v20[10] = *(a1 + 160);
  v21 = *(a1 + 176);
  v3 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v3;
  v4 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v4;
  v5 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v5;
  v6 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = *(a1 + 144);
    v22[8] = *(a1 + 128);
    v22[9] = v14;
    v22[10] = *(a1 + 160);
    v23 = *(a1 + 176);
    v15 = *(a1 + 80);
    v22[4] = *(a1 + 64);
    v22[5] = v15;
    v16 = *(a1 + 112);
    v22[6] = *(a1 + 96);
    v22[7] = v16;
    v17 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v17;
    v18 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t sub_18D2EB9DC()
{
  type metadata accessor for FilteredTransition();
  type metadata accessor for PlaceholderContentView();
  type metadata accessor for ApplyTransitionModifier();
  type metadata accessor for _PushPopTransactionModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

double LazySubviewPrefetcher.init(layout:size:position:transform:environment:prefetchState:cache:containerSize:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 44) = 0;
  *(a9 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x1E69E7CC0]);
  result = 0.0;
  *(a9 + 56) = xmmword_18DD85550;
  *(a9 + 72) = 0;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  *(a9 + 28) = a8;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazySubviewPrefetcher<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for LazySubviewPrefetcher<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 Image.NamedImageProvider.resolveError(in:)@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v7 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  v33 = v1[8];
  v9 = *(v1 + 72);
  if (v5 >= 2)
  {
    v10 = [v5 bundlePath];
    v31 = v7;
    v11 = v9;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v6;
    v14 = v13;

    _StringGuts.grow(_:)(49);

    *(&v44 + 1) = 0x800000018DD7C960;
    MEMORY[0x193ABEDD0](v3, v4);
    MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD7C980);
    v15 = v12;
    v9 = v11;
    v7 = v31;
    MEMORY[0x193ABEDD0](v15, v14);
    v6 = v32;

    specialized static Log.externalWarning(_:)(0xD000000000000010, 0x800000018DD7C960);

    outlined consume of Image.Location(v5);
  }

  else
  {
    _StringGuts.grow(_:)(47);

    *(&v44 + 1) = 0x800000018DD7C920;
    MEMORY[0x193ABEDD0](v3, v4);
    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD7C940);
    specialized static Log.externalWarning(_:)(0xD000000000000011, 0x800000018DD7C920);
  }

  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  LOBYTE(v35) = 1;
  *&v44 = 0;
  BYTE8(v44) = -1;
  v46 = 0;
  *v47 = 0;
  v45 = 0x3FF0000000000000;
  v47[8] = 0;
  v48 = 0;
  *&v47[12] = 0;
  v49 = 0;
  v50[0] = 1;
  memset(&v50[8], 0, 32);
  *&v50[40] = 65794;
  v39 = 0x3FF0000000000000uLL;
  v40 = *v47;
  v38 = v44;
  *(v43 + 12) = *&v50[28];
  v42 = *v50;
  v43[0] = *&v50[16];
  v41 = 0u;
  outlined copy of AccessibilityImageLabel?(v7, v6, v8);
  outlined init with copy of GraphicsImage(&v44, &v35);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  if (BYTE8(v44) == 2)
  {
    v18 = *(v44 + 32);
    v19 = v8;
    v20 = *(v44 + 48);
    v21 = v6;
    v22 = *(v44 + 16);
    outlined copy of Image.Location(v18);
    v23 = v20;
    v8 = v19;
    v24 = v23;
    outlined copy of Image.Location(v18);
    v34 = v18;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v22 styleMask], &v34, &v35);

    v6 = v21;
    outlined consume of Image.Location(v18);

    outlined destroy of GraphicsImage(&v44);
    v25 = v35;
    v17 = v36;
    v16 = v37 & 0xFD;
  }

  else
  {
    if (BYTE8(v44) == 255)
    {
      outlined destroy of GraphicsImage(&v44);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v17 = (v50[0] & 1) == 0;
      outlined destroy of GraphicsImage(&v44);
      v16 = 0;
    }

    v25 = 0;
  }

  result = v41;
  v27 = v43[0];
  v28 = v43[1];
  *(a1 + 64) = v42;
  *(a1 + 80) = v27;
  *(a1 + 96) = v28;
  v29 = v39;
  v30 = v40;
  *a1 = v38;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  *(a1 + 48) = result;
  *(a1 + 112) = v7;
  *(a1 + 120) = v6;
  *(a1 + 128) = v8;
  *(a1 + 136) = v33;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = v9;
  *(a1 + 161) = 3;
  *(a1 + 164) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = v25;
  *(a1 + 184) = v17;
  *(a1 + 186) = v16;
  return result;
}

uint64_t specialized static Log.externalWarning(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for unlocatedIssuesLog != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, static Log.unlocatedIssuesLog);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_18D018000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x193AC4820](v12, -1, -1);
    MEMORY[0x193AC4820](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t one-time initialization function for unlocatedIssuesLog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.unlocatedIssuesLog);
  __swift_project_value_buffer(v0, static Log.unlocatedIssuesLog);
  return Logger.init(subsystem:category:)();
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for ScrollTargetRole.ContentKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>;
  if (!lazy protocol witness table cache variable for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>)
  {
    type metadata accessor for _TraitWritingModifier<ZIndexTraitKey>(255, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>);
  }

  return result;
}

unint64_t _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t))
{
  result = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);
  v8 = *(a1 + 16);
  if (result != v8)
  {
    if (result >= v8)
    {
      __break(1u);
    }

    if (*(a1 + 16 * result + 32) == &type metadata for UpdateScrollStateRequestKey)
    {
      a3(result, v7);
      _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA024UpdateScrollStateRequestI0V_TtB5(*v3);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [ScrollStateRequest], &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E62F8]);
      _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<UpdateScrollStateRequestKey>, &type metadata for UpdateScrollStateRequestKey, &protocol witness table for UpdateScrollStateRequestKey, type metadata accessor for PreferenceTransform);
      lazy protocol witness table accessor for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>();
      v9 = Attribute.init<A>(body:value:flags:update:)();
      return PreferencesOutputs.subscript.setter(v9, &type metadata for UpdateScrollStateRequestKey, &protocol witness table for UpdateScrollStateRequestKey);
    }
  }

  return result;
}

uint64_t implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1)
{
  v3[15] = *MEMORY[0x1E69E9840];
  outlined init with copy of ScrollStateRequestTransform(a1, v3);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform();
  v1 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ScrollStateRequestTransform(v3);
  return v1;
}

uint64_t initializeWithCopy for ScrollStateRequestTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 96);

  if (v4)
  {
    v5 = *(a2 + 104);
    *(a1 + 96) = v4;
    *(a1 + 104) = v5;
    (**(v4 - 8))(a1 + 72, a2 + 72, v4);
  }

  else
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform()
{
  result = lazy protocol witness table cache variable for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform;
  if (!lazy protocol witness table cache variable for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform);
  }

  return result;
}

uint64_t destroy for ScrollStateRequestTransform(uint64_t a1)
{

  if (*(a1 + 96))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 72);
  }

  return result;
}

void ScrollPositionToValue.hash(into:)()
{
  if (*(v0 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v0;
    v1 = *(v0 + 8);
    Hasher._combine(_:)(1u);

    UnitPoint.hash(into:)(v2, v1);
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t ViewGraphGeometryObservers.resetObserver(for:)(uint64_t a1)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for ViewGraphGeometryObservers.Observer();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  MEMORY[0x193ABE750](&v9, a1, v3, AssociatedTypeWitness, v5, AssociatedConformanceWitness);
  if (v9)
  {
    v7 = ViewGraphGeometryObservers.Observer.reset()();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double static UnitCurve.easeInEaseOut.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.42;
  *a1 = xmmword_18DDBA7C0;
  *(a1 + 16) = xmmword_18DDBA7D0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static _ViewList_ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t Path.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (CGPathIsEmpty(a1))
  {

    result = 0;
    v5 = 6;
  }

  else
  {
    type metadata accessor for Path.PathBox();
    result = swift_allocObject();
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0;
    *(result + 16) = 0;
    v5 = 5;
    *(result + 24) = a1;
  }

  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  return result;
}

{
  if (CGPathIsEmpty(a1))
  {

    result = 0;
    v5 = 6;
LABEL_5:
    *a2 = result;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v5;
    return result;
  }

  result = CGPathCreateMutableCopy(a1);
  if (result)
  {
    v6 = result;

    type metadata accessor for Path.PathBox();
    result = swift_allocObject();
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0;
    *(result + 16) = 0;
    v5 = 5;
    *(result + 24) = v6;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<AnyShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type AnyShape and conformance AnyShape();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<AnyShape, ForegroundStyle>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<AnyShape>, &type metadata for AnyShape, &protocol witness table for AnyShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<AnyShape>, &type metadata for AnyShape, &protocol witness table for AnyShape, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance AnyShape(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA8AnyShapeV_Tt1B5(a1, v4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA8AnyShapeV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v11[0] = v6;
    v11[1] = v8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11[2] = v4;
    v11[3] = v2;
    v15 = 0;
    v11[4] = v5;
    outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(v11, v10, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v11, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape);
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>);
  }

  return result;
}

double _AnyShapeBox.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = *v4;
  v9 = *(*v4 + 152);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17[-v11];
  v13 = *(v8 + 168);
  swift_beginAccess();
  (*(v10 + 16))(v12, v4 + v13, v9);
  v14 = *(*(v8 + 160) + 48);
  v17[16] = a2 & 1;
  v17[8] = a4 & 1;
  v15 = v14(a1);
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t specialized static Path.Storage.== infix(_:_:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 32);
  v5 = a2[32];
  if (v4 <= 2)
  {
    if (*(a1 + 32))
    {
      if (v4 != 1)
      {
        if (v5 != 2)
        {
          return 0;
        }

        v8 = *(*&v3 + 64);
        v10 = *(*&v3 + 48);
        v9 = *(*&v3 + 56);
        v11 = *(*a2 + 48);
        v12 = *(*a2 + 56);
        v13 = *(*a2 + 64);
        v14 = CGRectEqualToRect(*(*&v3 + 16), *(*a2 + 16));
        v15 = v10 == v11 && v14;
        if (v9 != v12)
        {
          v15 = 0;
        }

        return v15 & (v8 ^ v13 ^ 1u);
      }

      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (a2[32])
    {
      return 0;
    }

    v18.origin.x = v3;
    v18.origin.y = *(a1 + 8);
    v18.size.width = *(a1 + 16);
    v18.size.height = *(a1 + 24);
    return CGRectEqualToRect(v18, *a2);
  }

  if (*(a1 + 32) <= 4u)
  {
    if (v4 == 3)
    {
      if (v5 == 3)
      {
        return 1;
      }
    }

    else if (v5 == 4)
    {
      return 1;
    }

    return 0;
  }

  if (v4 != 5)
  {
    if (v5 == 6)
    {
      v16 = vorrq_s8(*a2, *(a2 + 1));
      if (!*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (v5 != 5)
  {
    return 0;
  }

  v6 = *a2;

  return specialized static Path.PathBox.== infix(_:_:)(*&v3, v6);
}

uint64_t sub_18D2F06A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static Path.Storage.== infix(_:_:)(v5, v7) & 1;
}

uint64_t specialized static Path.PathBox.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(result + 16) == 1)
    {
      result = *(result + 24);
      v3 = *(a2 + 16);
      if (!*(a2 + 16))
      {
        goto LABEL_7;
      }

LABEL_12:
      if (v3 != 1 && one-time initialization token for bufferCallbacks != -1)
      {
        swift_once();
      }

      return RBPathEqualToPath();
    }

    if (one-time initialization token for bufferCallbacks != -1)
    {
      v4 = result;
      swift_once();
      result = v4;
    }

    v3 = *(a2 + 16);
    if (*(a2 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *(result + 24);
    if (!result)
    {
      __break(1u);
      goto LABEL_17;
    }

    v3 = *(a2 + 16);
    if (*(a2 + 16))
    {
      goto LABEL_12;
    }
  }

LABEL_7:
  if (*(a2 + 24))
  {
    return RBPathEqualToPath();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance SystemColorType@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  SystemColorType.resolveHDR(in:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void type metadata accessor for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>)
  {
    v0 = type metadata accessor for ShapeStylePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>);
    }
  }
}

double LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v9 = (*(v8 + 32))(a4, v8);
  Array.subscript.getter();
  if (a3)
  {
    Array.subscript.getter();
  }

  else
  {
    memset(v27, 0, 112);
  }

  v10 = v9 & 1;
  v11 = (v9 & 1) == 0;
  if (v9)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a1;
  }

  if (v9)
  {
    v13 = *&a1;
  }

  else
  {
    v13 = 0;
  }

  (*(v8 + 40))(a4, v8);
  v14 = *(LazyLayoutViewCache.item(data:)(v29) + 44);

  v15 = *MEMORY[0x1E698D3F8];
  v24 = v28[2];
  v25 = v14;
  v26 = v15;
  v20 = v13;
  v21 = v11;
  v22 = v12;
  v23 = v10;
  v16 = LayoutProxy.lengthThatFits(_:in:)(&v20, v10);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v16);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:));
  outlined destroy of _LazyLayout_Subview?(v27);
  outlined destroy of _LazyLayout_Subview(v28);
  return v18;
}

uint64_t LazyHVStack<>.spacing.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(a2 + 32))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t _ViewInputs.withoutGeometryDependencies.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v17 = *(v1 + 32);
  v18 = v4;
  v19 = *(v1 + 64);
  v20 = *(v1 + 80);
  v5 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v5;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v2 + 64);
  *(a1 + 48) = *(v2 + 48);
  *(a1 + 64) = v7;
  v8 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v8;
  *(a1 + 80) = *(v2 + 80);
  *a1 = *v2;
  *(a1 + 64) = *(v6 + 248);
  v9 = *(a1 + 32);
  *(a1 + 32) = v9 | 8;
  memset(v15, 0, sizeof(v15));
  outlined init with copy of _ViewInputs(v16, v14);
  LODWORD(v2) = specialized GraphHost.intern<A>(_:for:id:)(v15, &type metadata for ViewTransform, 0);
  outlined destroy of ViewTransform(v15);
  *(a1 + 60) = v2;
  *(a1 + 32) = v9 | 0xC;
  v10 = specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);
  v11 = v9 | 0x1C;
  if ((v9 & 0x10) != 0)
  {
    v11 = v9 | 0xC;
  }

  v12 = DWORD1(v17);
  *(a1 + 68) = *(v6 + 248);
  *(a1 + 72) = v10;
  *(a1 + 32) = v11;
  *(a1 + 36) = v12 & 0xFFFFFFDD;
  PreferenceKeys.remove(_:)(&type metadata for DisplayList.Key);
  PreferenceKeys.remove(_:)(&type metadata for ViewRespondersKey);
}

uint64_t specialized GraphHost.intern<A>(_:for:id:)(uint64_t a1, char a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 120);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 4 * v7);
    }
  }

  swift_beginAccess();
  v10 = *(v3 + 24);
  AGGraphClearUpdate();
  v11 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 120) = v14;
  swift_endAccess();
  return v9;
}

{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 120);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 4 * v7);
    }
  }

  swift_beginAccess();
  v10 = *(v3 + 24);
  AGGraphClearUpdate();
  v11 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  type metadata accessor for _UnaryViewAdaptor<EmptyView>();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 120) = v14;
  swift_endAccess();
  return v9;
}

{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 120);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 4 * v7);
    }
  }

  swift_beginAccess();
  v10 = *(v3 + 24);
  AGGraphClearUpdate();
  v11 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 120) = v14;
  swift_endAccess();
  return v9;
}

{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 120);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 4 * v7);
    }
  }

  swift_beginAccess();
  v10 = *(v3 + 24);
  AGGraphClearUpdate();
  v11 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  type metadata accessor for CGPoint(0);
  v9 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 120) = v14;
  swift_endAccess();
  return v9;
}

unint64_t lazy protocol witness table accessor for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext()
{
  result = lazy protocol witness table cache variable for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext;
  if (!lazy protocol witness table cache variable for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext);
  }

  return result;
}

uint64_t Transaction._disablesPageScrollAnimations.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{

  a2(v2, a1, &v6);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V027DisabledPageScrollAnimationF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t specialized Edge.Set.init(_:)(unsigned __int8 a1)
{
  if (a1 >= 8u)
  {
    v1 = 0;
  }

  else
  {
    v1 = 1 << a1;
  }

  if (a1 <= 8u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of _LazyLayout_Subview?(uint64_t a1)
{
  type metadata accessor for _LazyLayout_Subview?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _LazyLayout_Subview?()
{
  if (!lazy cache variable for type metadata for _LazyLayout_Subview?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _LazyLayout_Subview?);
    }
  }
}

uint64_t assignWithCopy for PlatformImageRepresentableContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  v14 = *(a2 + 128);
  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 128) >> 1 == 0xFFFFFFFFLL)
  {
    if (v15 == 0x1FFFFFFFELL)
    {
      v16 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v16;
    }

    else
    {
      v18 = *(a2 + 112);
      v19 = *(a2 + 120);
      v20 = *(a2 + 136);
      outlined copy of AccessibilityImageLabel(v18, v19, *(a2 + 128));
      *(a1 + 112) = v18;
      *(a1 + 120) = v19;
      *(a1 + 128) = v14;
      *(a1 + 136) = v20;
    }
  }

  else if (v15 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 112);
    v17 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v17;
  }

  else
  {
    v21 = *(a2 + 112);
    v22 = *(a2 + 120);
    v23 = *(a2 + 136);
    outlined copy of AccessibilityImageLabel(v21, v22, *(a2 + 128));
    v24 = *(a1 + 112);
    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    *(a1 + 112) = v21;
    *(a1 + 120) = v22;
    *(a1 + 128) = v14;
    *(a1 + 136) = v23;
    outlined consume of AccessibilityImageLabel(v24, v25, v26);
  }

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v27 = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 164) = v27;
  v28 = *(a1 + 176);
  v29 = *(a2 + 176);
  *(a1 + 176) = v29;
  v30 = v29;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);

  return a1;
}

void *assignWithCopy for PlatformNamedImageRepresentableContext(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t static ViewGraphFeatureBuffer._VTable.update(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 64))(a2, v4);
}

uint64_t CoreInteractionEffect.updateValue()(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  v32 = a1[4];
  v30 = type metadata accessor for CoreInteractionRepresentableEffect();
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v27 - v5;
  v6 = a1[3];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Optional();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v27 - v12;
  v14 = v1[4];
  LODWORD(v12) = *(v1 + 2);
  v15 = v1[2];
  v34 = *v1;
  v35 = v12;
  v36 = v15;
  v37 = v1[3];
  v38 = v14;
  CoreInteractionEffect.representable.getter(v13);
  Value = AGGraphGetValue();
  (*(v7 + 16))(v10, Value, v6);
  v17 = v1[4];
  v18 = *AGGraphGetValue();
  v19 = AGGraphCurrentAttributeWasModified();
  v27 = a1;
  v20 = a1[5];
  v33 = v18;
  v21 = *(*v14 + 88);
  v28 = v3;
  LOBYTE(v18) = v21(v13, v10, &v33, v19, v3, v6, v32, v20);
  (*(v7 + 8))(v10, v6);
  result = (*(v11 + 8))(v13, v31);
  if (v18)
  {
    v23 = v29;
    (*(*v17 + 80))(v28, v6, v28, v6, v32, v20);
    v24 = v30;
    v25 = *(v30 - 8);
    result = (*(v25 + 48))(v23, 1, v30);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v27 - 2) = v27;
      *(&v27 - 1) = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in StatefulRule.value.setter, (&v27 - 4), v24, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v26);
      return (*(v25 + 8))(v23, v24);
    }
  }

  return result;
}

uint64_t View.coreInteractionRepresentable<A, B>(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a6;
  v26[1] = a7;
  v27 = a1;
  v29 = a9;
  v30 = a3;
  v28 = a2;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v26 - v17;
  v32 = a4;
  v33 = a5;
  v34 = a7;
  v35 = a8;
  v19 = type metadata accessor for CoreInteractionRepresentableModifier();
  v20 = *(v19 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v23 = v26 - v22;
  v24 = *(a4 - 8);
  (*(v24 + 16))(v18, v27, a4, v21);
  (*(v24 + 56))(v18, 0, 1, a4);
  (*(v13 + 16))(v15, v28, a5);
  CoreInteractionRepresentableModifier.init(representable:id:)(v18, v15, a5, v23);
  View.modifier<A>(_:)(v23, v30, v19);
  return (*(v20 + 8))(v23, v19);
}

uint64_t getEnumTag for UnitCurve.Function(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for UnitCurve.Function(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t protocol witness for ViewList.estimatedCount(style:) in conformance ModifiedViewList(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v6 = v2;
  return (*(v4 + 24))(&v6, v3, v4);
}

uint64_t CoreInteractionRepresentableEffect.effectValue(size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_allocObject();
  v5[5] = a1;
  v5[6] = &protocol witness table for CoreInteractionRepresentableEffect<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 12) = 3;
  return result;
}

uint64_t sub_18D2F2048()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

__n128 initializeWithCopy for ScrollPosition.Storage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 57);
  if (v2 >= 5)
  {
    v2 = *a2 + 5;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))();
      result = *(a2 + 40);
      *(a1 + 40) = result;
      *(a1 + 56) = *(a2 + 56);
      return result;
    }

    if (v2 == 1)
    {
      *a1 = *a2;
      *(a1 + 57) = 1;
      return result;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        result = *a2;
        *a1 = *a2;
        *(a1 + 57) = 2;
        return result;
      case 3:
        *a1 = *a2;
        *(a1 + 57) = 3;
        return result;
      case 4:
        *a1 = *a2;
        *(a1 + 57) = 4;
        return result;
    }
  }

  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t destroy for ScrollPosition.Storage(uint64_t a1)
{
  v1 = *(a1 + 57);
  if (v1 >= 5)
  {
    v1 = *a1 + 5;
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t static Layout.makeStaticView(root:inputs:properties:list:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v53 = a5;
  v54 = a6;
  v58 = a7;
  v84 = *MEMORY[0x1E69E9840];
  v52 = *a1;
  v83 = *a2;
  v9 = *(a2 + 2);
  v10 = a2 + 3;
  v64 = *(a2 + 3);
  v11 = *(a2 + 9);
  v65 = *(a2 + 8);
  v81 = *(a2 + 40);
  v82 = *(a2 + 7);
  v12 = *(a2 + 17);
  LODWORD(v55) = *(a2 + 16);
  v56 = v12;
  v59 = *(a2 + 18);
  v60 = v11;
  v57 = *(a2 + 76);
  v13 = *(a3 + 1);
  v14 = *(a3 + 2);
  v15 = a4[3];
  v16 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v15);
  result = (*(v16 + 8))(v15, v16);
  if (result == 1)
  {
    if (v14)
    {
      v18 = a4[3];
      v19 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v18);
      v80[0] = 0;
      v69 = *a2;
      v20 = *v10;
      v70 = v9;
      v71 = v20;
      v72 = *(v10 + 2);
      v73 = v60;
      v74 = *(a2 + 40);
      v75 = *(a2 + 7);
      v76 = v55;
      v77 = v56;
      v78 = v59;
      v79 = v57;
      (*(v19 + 16))(v68, v80, &v69, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v18, v19);
      v22 = v68[0];
      v21 = v68[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v22)
        {
          v23 = v58;
          *v58 = v22;
          v23[1] = v21;
          return result;
        }

        goto LABEL_24;
      }

LABEL_27:
      __break(1u);
    }
  }

  else if (!result && v13)
  {
LABEL_24:
    v45 = v58;
    *v58 = MEMORY[0x1E69E7CC0];
    v46 = *MEMORY[0x1E698D3F8];
    *(v45 + 2) = 0;
    *(v45 + 3) = v46;
    return result;
  }

  v66 = 0;
  v67 = 1;
  v51 = v60 & 0x22;
  if ((v60 & 0x22) != 0)
  {
    v24 = v9;
    v25 = swift_beginAccess();
    *&v69 = __PAIR64__(*(v9 + 16), v52);
    *(&v69 + 1) = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v25);
    v49 = type metadata accessor for StaticLayoutComputer();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v69, closure #1 in Attribute.init<A>(_:)partial apply, v48, v49, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);

    v28 = v55;
    *&v69 = __PAIR64__(v55, v59);
    v52 = v80[0];
    DWORD2(v69) = v80[0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v66 = Attribute.init<A>(body:value:flags:update:)();
    v67 = 0;
  }

  else
  {
    v52 = 0;
    v28 = v55;
    v24 = v9;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v62 = 0;
  v63 = MEMORY[0x1E69E7CC0];
  v30 = a4[4];
  v31 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v55 = &v51;
  MEMORY[0x1EEE9AC00](v31);
  v48[0] = &v66;
  v48[1] = &v62;
  v49 = &v63;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #2 in static Layout.makeStaticView(root:inputs:properties:list:);
  *(v32 + 24) = &v47;
  v61 = 0;
  v69 = v83;
  v70 = v24;
  v71 = v64;
  v33 = v60;
  v72 = v65;
  v73 = v60;
  v74 = v81;
  v75 = v82;
  v76 = v28;
  v77 = v56;
  v78 = v59;
  v79 = v57;
  v34 = MEMORY[0x1EEE9AC00](v32);
  (*(v30 + 16))(v80, &v61, &v69, 0, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), v34);
  v36 = v80[0];
  v35 = v80[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_27;
  }

  v39 = *MEMORY[0x1E698D3F8];
  v40 = v36 == 0;
  if (v36)
  {
    v41 = HIDWORD(v35);
  }

  else
  {
    v36 = v29;
    v41 = *MEMORY[0x1E698D3F8];
  }

  if (v40)
  {
    LODWORD(v35) = 0;
  }

  if (v51)
  {
    MEMORY[0x1EEE9AC00](v38);
    v42 = type metadata accessor for StaticLayoutComputer();
    MEMORY[0x1EEE9AC00](v42);
    v39 = v52;
    AGGraphMutateAttribute();
  }

  if ((v33 & 2) != 0)
  {
    v43 = v39;
  }

  else
  {
    v43 = v41;
  }

  v44 = v58;
  *v58 = v36;
  *(v44 + 2) = v35 | ((v33 & 2) << 6);
  *(v44 + 3) = v43;
}

void type metadata accessor for Attribute<LayoutComputer>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for closure #3 in static Layout.makeStaticView(root:inputs:properties:list:)(uint64_t a1)
{
  v3 = **(v1 + 32);

  *(a1 + 8) = v3;
  return result;
}

Swift::Void __swiftcall ViewTransform.appendSizedSpace(id:size:)(SwiftUI::CoordinateSpace::ID id, CGSize size)
{
  v3 = v2;
  height = size.height;
  width = size.width;
  v25[0] = *id.value.value;
  v26 = 1;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2 + 4;
  v9 = v2[4];
  v10 = v2[5];
  *&v21 = *v2;
  *(&v21 + 1) = v7;
  *v22 = *(v2 + 1);
  *&v22[16] = v9;
  *&v22[24] = v10;

  ViewTransform.coordinateSpaceTag(_:)(v25, &v23);

  if ((v24 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v25, &v21);
  type metadata accessor for CoordinateSpaceNode();
  v11 = swift_allocObject();
  v12 = v11;
  v13 = *v22;
  *(v11 + 24) = v21;
  *(v11 + 40) = v13;
  *(v11 + 49) = *&v22[9];
  *(v11 + 16) = v7;
  if (v7)
  {
    v14 = *(v7 + 72);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v17 = v23;
    outlined destroy of CoordinateSpace(v25);
    goto LABEL_9;
  }

  v16 = 1;
LABEL_8:
  *(v11 + 72) = v16;
  v3[1] = v11;
  outlined destroy of CoordinateSpace(v25);
  v17 = *(v12 + 72);
LABEL_9:
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for Element<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for Element);
  v18 = swift_allocObject();
  *(v18 + 4) = v9;
  *(v18 + 5) = v10;
  *(v18 + 6) = v17;
  v18[7] = width;
  v18[8] = height;
  *(v18 + 2) = v6;
  if (v6)
  {
    v19 = *(v6 + 3);
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v15)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v20 = 1;
LABEL_14:
  *(v18 + 3) = v20;
  *v3 = v18;
  *v8 = 0;
  v8[1] = 0;
}

int8x16_t static ScrollGeometry.viewTransform(contentInsets:contentSize:containerSize:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v18 = CGRect.outset(by:)(a2, a3, a4, a5, 0.0, 0.0, a8, a9);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a8;
  *(a1 + 72) = a9;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  v21.i64[1] = v20;
  result = vbicq_s8(v21, vclezq_f64(v21));
  *(a1 + 96) = result;
  return result;
}

void *static Spacing.Category.default.getter@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t one-time initialization function for all()
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.all = result;
  return result;
}

uint64_t ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v28[0] = *a1;
  v29 = 1;
  v9 = *(a2 + 8);
  *&v24 = *a2;
  *(&v24 + 1) = v9;
  v10 = *(a2 + 32);
  *v25 = *(a2 + 16);
  *&v25[16] = v10;

  ViewTransform.coordinateSpaceTag(_:)(v28, &v26);

  if ((v27 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v28, &v24);
  type metadata accessor for CoordinateSpaceNode();
  v11 = swift_allocObject();
  v12 = v11;
  v13 = *v25;
  *(v11 + 24) = v24;
  *(v11 + 40) = v13;
  *(v11 + 49) = *&v25[9];
  *(v11 + 16) = v9;
  if (v9)
  {
    v14 = *(v9 + 72);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v17 = v26;
    outlined destroy of CoordinateSpace(v28);
    goto LABEL_9;
  }

  v16 = 1;
LABEL_8:
  *(v11 + 72) = v16;
  *(a2 + 8) = v11;
  outlined destroy of CoordinateSpace(v28);
  v17 = *(v12 + 72);
LABEL_9:
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
  v19 = v18;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(48);
  *result = v19;
  *(result + 8) = 48;
  *(result + 16) = v17;
  *(result + 24) = a3;
  *(result + 32) = a4;
  if (*v5)
  {
    v21 = result - *v5;
    if (v21 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v21 <= 0x7FFFFFFF)
    {
      v22 = *(v5 + 12);
      v15 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (!v15)
      {
        *(v5 + 12) = v23;
        return result;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for horizontal()
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.horizontal = result;
  return result;
}

uint64_t one-time initialization function for content()
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.content = result;
  return result;
}

uint64_t one-time initialization function for safeArea()
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.safeArea = result;
  return result;
}

uint64_t LazyPreference.prefetchItems.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    return 0;
  }

  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for [LazyLayoutCacheItem], a3, type metadata accessor for LazyLayoutCacheItem, MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
}

uint64_t getEnumTagSinglePayload for Image.Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _DrawingGroupEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t LeafDisplayList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v10 = v9;
  (*(v5 + 16))(v7, Value, v4);
  (*(*(a1 + 24) + 40))(&v36, v4);
  v11 = v36;
  v12 = ++static DisplayList.Version.lastValue;
  if (v10)
  {
    if (v12)
    {
      v13 = (2 * ((33 * (v12 >> 16)) ^ v12)) | 1;
    }

    else
    {
      LOWORD(v13) = 0;
    }

    *(v2 + 11) = v13;
  }

  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  v17 = AGGraphGetValue();
  v18 = v15 - *v17;
  v19 = v16 - v17[1];
  v20 = *(v2 + 11);
  outlined copy of DisplayList.Content.Value(v11);
  type metadata accessor for CGSize(0);
  v21 = AGGraphGetValue();
  v22 = *v2;
  *&v30 = v18;
  *(&v30 + 1) = v19;
  v31 = *v21;
  *&v33[1] = 0;
  *(&v32 + 1) = v11;
  v33[0] = v20;
  DWORD2(v33[1]) = v22;
  *&v32 = v12;
  LOBYTE(v36) = *(v2 + 20);
  DisplayList.Item.canonicalize(options:)(&v36);
  v34[2] = v32;
  v35[0] = v33[0];
  *(v35 + 12) = *(v33 + 12);
  v34[0] = v30;
  v34[1] = v31;
  v38 = v32;
  v39[0] = v33[0];
  *(v39 + 12) = *(v33 + 12);
  v36 = v30;
  v37 = v31;
  outlined init with copy of DisplayList.Item(v34, &v27);
  DisplayList.init(_:)(&v36, &v27);
  v24 = v27;
  v25 = v28;
  v26 = v29;
  AGGraphSetOutputValue();
  outlined consume of DisplayList.Content.Value(v11);
  v38 = v32;
  v39[0] = v33[0];
  *(v39 + 12) = *(v33 + 12);
  v36 = v30;
  v37 = v31;
  outlined destroy of DisplayList.Item(&v36);
  (*(v5 + 8))(v7, v4);
}

uint64_t _CALayerView.content()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  *(v7 + 48) = &protocol witness table for _CALayerView<A>;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a2 = v7 | 0x9000000000000000;
}

uint64_t sub_18D2F3350()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t static CoordinateSpaceProtocol<>.named<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  result = _convertToAnyHashable<A>(_:)();
  *(a1 + 40) = 0;
  return result;
}

uint64_t Text.MakeRepresentableContext.value.getter@<X0>(void *a1@<X8>)
{
  v38 = a1;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for ResolvableStringResolutionContext(0);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of ResolvableStringResolutionContext(WeakValue, v3, type metadata accessor for Date?);
    _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v3, v6, type metadata accessor for Date?);
  }

  else
  {
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  Value = AGGraphGetValue();
  v16 = *Value;
  v17 = Value[1];
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = &v12[*(v7 + 24)];

  outlined assign with take of ResolvedTextHelper.NextUpdate(v6, v12, type metadata accessor for Date?);
  v20 = &v12[*(v7 + 20)];
  *v20 = v16;
  *(v20 + 1) = v17;
  *v19 = 0;
  v19[8] = 1;
  type metadata accessor for ResolvedStyledText();
  v21 = AGGraphGetValue();
  v22 = *v21;
  v23 = *(*v21 + 216);
  if (!v23)
  {
    goto LABEL_15;
  }

  v24 = v23;
  if (NSAttributedString.isDynamic.getter() && (*(v22 + 256) & 1) != 0)
  {
    [v24 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    if (swift_dynamicCast())
    {
      v26 = one-time initialization token for resolvableTextSegment;
      v27 = aBlock[6];
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = static NSAttributedStringKey.resolvableTextSegment;
      v29 = [v27 length];
      outlined init with copy of ResolvableStringResolutionContext(v12, v9, type metadata accessor for ResolvableStringResolutionContext);
      v30 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v9, v31 + v30, type metadata accessor for ResolvableStringResolutionContext);
      v32 = swift_allocObject();
      *(v32 + 16) = closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)partial apply;
      *(v32 + 24) = v31;
      aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      aBlock[3] = &block_descriptor_71;
      v33 = _Block_copy(aBlock);
      v23 = v27;

      [v23 enumerateAttribute:v28 inRange:0 options:v29 usingBlock:{2, v33}];

      _Block_release(v33);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      if ((v33 & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

LABEL_15:
    v34 = *AGGraphGetValue();

    outlined destroy of Date?(v12, type metadata accessor for ResolvableStringResolutionContext);
    v23 = *(v34 + 216);
    v35 = v23;

    goto LABEL_16;
  }

LABEL_8:
  result = outlined destroy of Date?(v12, type metadata accessor for ResolvableStringResolutionContext);
LABEL_16:
  *v38 = v23;
  return result;
}

void type metadata completion function for ResolvableStringResolutionContext()
{
  _s10Foundation4DateVSgMaTm_3(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t outlined assign with take of ResolvedTextHelper.NextUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double Color.NamedColor.resolve(in:)(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *a1;
  v7 = Color.NamedColor.resolveCGColor(in:)(&v19, a2, a3, a4);
  if (v7)
  {
    LODWORD(result) = specialized Color.Resolved.init(failableCGColor:)(v7);
    if (v9)
    {
      *&result = 0.0;
    }
  }

  else
  {
    if (a4)
    {
      v10 = [a4 bundlePath];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(&v19, "main bundle (");
      HIWORD(v19) = -4864;
      v14 = [objc_opt_self() mainBundle];
      v15 = [v14 bundlePath];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      MEMORY[0x193ABEDD0](v16, v18);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      v13 = *(&v19 + 1);
      v11 = v19;
    }

    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v19 = 0xD000000000000010;
    *(&v19 + 1) = 0x800000018DD7FA60;
    MEMORY[0x193ABEDD0](a2, a3);
    MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD7C980);
    MEMORY[0x193ABEDD0](v11, v13);

    specialized static Log.externalWarning(_:)(v19, *(&v19 + 1));

    return 0.0;
  }

  return result;
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.NamedColor(__int128 *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v11 = *a1;
  v7 = Color.NamedColor.resolve(in:)(&v11, v4, v5, v6);
  *a2 = LODWORD(v7);
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = 2143289344;
}

uint64_t Color.NamedColor.resolveCGColor(in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v58 = *a1;
  v59 = v8;

  CatalogKey.init(_:)(&v58, v60);
  v9 = v60[0];
  v10 = v60[1];
  if (v8)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v7, &v58);

    v11 = v58;
LABEL_5:
    v56 = v11;
    goto LABEL_6;
  }

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v7);
  if (v12)
  {
    v11 = *(v12 + 72);
    goto LABEL_5;
  }

  v56 = 0;
LABEL_6:
  v13 = one-time initialization token for colorCache;
  v14 = a4;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = colorCache;

  os_unfair_lock_lock(v15 + 4);
  v16 = *&v15[6]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v15 + 4);

  if (*(v16 + 16))
  {
    v17 = v10 ? 256 : 0;
    v18 = v17 | v9;
    v19 = v56 ? 0x10000 : 0;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18 | v19, a2, a3, a4);
    if (v21)
    {
      v22 = v20;

      v23 = *(*(v16 + 56) + 8 * v22);
      v24 = v23;

      if (v23)
      {
        v58 = v7;
        v59 = v8;
        v25 = v24;
        CUINamedColor.effectiveCGColor(in:)(&v58);
        v27 = v26;

        return v27;
      }

      goto LABEL_21;
    }
  }

  v29 = [objc_opt_self() defaultUICatalogForBundle_];

  if (!v29)
  {
LABEL_21:

    return 0;
  }

  v55 = a2;
  v53 = v10;
  v52 = a4;
  if (v8)
  {
    v30 = v9;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v7, &v58);

    v31 = v58;
  }

  else
  {
    v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v7);
    v30 = v9;
    if (v32)
    {
      v31 = *(v32 + 72);
    }

    else
    {
      v31 = 6;
    }
  }

  LOBYTE(v58) = v31;
  v33 = ViewGraphHost.Idiom.cuiDeviceClass.getter();
  v58 = v7;
  v59 = v8;
  matched = EnvironmentValues.cuiAssetMatchTypes.getter();
  if (v53)
  {
    v35 = 256;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 | v30;
  if (v56)
  {
    v37 = 0x10000;
  }

  else
  {
    v37 = 0;
  }

  v57 = v37;
  v38 = v14;
  swift_bridgeObjectRetain_n();
  v54 = v7;
  v39 = v29;
  v40 = v38;
  v41 = v36 | v37;
  v42 = v36;
  v43 = specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v36, matched, v39, v39, v55, a3, v52, v41, v55, a3, v52, v33);
  v44 = v39;

  swift_bridgeObjectRelease_n();
  v45 = colorCache;
  v46 = v43;

  v47 = v40;

  os_unfair_lock_lock(v45 + 4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *&v45[6]._os_unfair_lock_opaque;
  *&v45[6]._os_unfair_lock_opaque = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v42 | v57, v55, a3, v52, isUniquelyReferenced_nonNull_native);

  *&v45[6]._os_unfair_lock_opaque = v58;
  os_unfair_lock_unlock(v45 + 4);

  if (v43)
  {
    v58 = v54;
    v59 = v8;
    v49 = v46;
    CUINamedColor.effectiveCGColor(in:)(&v58);
    v51 = v50;

    return v51;
  }

  return 0;
}

uint64_t CatalogKey.init(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v10[0] = *a1;
  v10[1] = v4;
  EnvironmentValues.colorScheme.getter(&v9);
  v5 = v9;
  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v3, v10);

    v7 = v10[0];
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v3);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t one-time initialization function for colorCache()
{
  type metadata accessor for AtomicBuffer<[ColorCacheKey : NamedColorInfo]>();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC8];
  colorCache = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ColorCacheKey and conformance ColorCacheKey()
{
  result = lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey;
  if (!lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey;
  if (!lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey);
  }

  return result;
}

_OWORD *EnvironmentValues.cuiAssetMatchTypes.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v1, &v3);
  }

  else
  {
    _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v1);
  }

  if (ViewGraphHost.Idiom.cuiDeviceClass.getter() != 8)
  {
    return &outlined read-only object #0 of EnvironmentValues.cuiAssetMatchTypes.getter;
  }

  type metadata accessor for _ContiguousArrayStorage<Path>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CatalogAssetMatchType>, &type metadata for CatalogAssetMatchType, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  result[1] = xmmword_18DDAB4C0;
  *(result + 4) = 8;
  *(result + 40) = 0;
  *(result + 6) = 1;
  *(result + 56) = 1;
  return result;
}

id specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(__int16 a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unsigned int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  v12 = *(a2 + 16);
  if (!v12)
  {
    return v12;
  }

  v62 = *(a2 + 32);
  v61 = *(a2 + 40);
  if (v62 == 8)
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = 1;
  }

  v54 = a2 + 32;
  v53 = *(a2 + 16);
  if ((a1 & 0x100) != 0)
  {
    if ((v16 & 1) == 0)
    {
      v21 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
      goto LABEL_13;
    }

    v17 = a7;
    v23 = a1;
    type metadata accessor for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>();
    v24 = swift_allocObject();
    a1 = v23;
    *(v24 + 16) = xmmword_18DDACA80;
    *(v24 + 32) = v23 & 1;
    *(v24 + 33) = 1;
    *(v24 + 34) = v23 & 1;
    *(v24 + 35) = 512;
    *(v24 + 37) = 1;
    v20 = (v24 + 38);
    v21 = v24;
    v22 = (v24 + 39);
  }

  else
  {
    if ((v16 & 1) == 0)
    {
      v21 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
      goto LABEL_13;
    }

    v17 = a7;
    v18 = a1;
    type metadata accessor for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>();
    v19 = swift_allocObject();
    a1 = v18;
    *(v19 + 16) = xmmword_18DDAB4C0;
    *(v19 + 32) = v18 & 1;
    *(v19 + 33) = 0;
    v20 = (v19 + 34);
    v21 = v19;
    v22 = (v19 + 35);
  }

  *v20 = 2;
  *v22 = 0;
  a7 = v17;
LABEL_13:
  v55 = a1;
  v25 = *(v21 + 2);
  v56 = a7;
  v59 = a7;

  v58 = a11;
  v63 = a4;

  if (!v25)
  {

    goto LABEL_58;
  }

  v12 = 0;
  v26 = v21 + 33;
  v52 = a6;
  do
  {
    if (v12)
    {
      goto LABEL_16;
    }

    v27 = *(v26 - 1);
    v28 = 0xD00000000000001BLL;
    if (!*v26)
    {
      v28 = 0x7261657070414955;
    }

    v29 = 0x800000018DD7CA20;
    if (!*v26)
    {
      v29 = 0xEF796E4165636E61;
    }

    v30 = 0xD00000000000001CLL;
    if (!*v26)
    {
      v30 = 0xD000000000000010;
    }

    v31 = "UIAppearanceHighContrastAny";
    if (!*v26)
    {
      v31 = "UIAppearanceHighContrastDark";
    }

    v32 = v31 | 0x8000000000000000;
    if (*v26)
    {
      v33 = 0xD00000000000001DLL;
    }

    else
    {
      v33 = 0xD000000000000011;
    }

    v34 = "UIAppearanceDark";
    if (!*v26)
    {
      v34 = "UIAppearanceHighContrastLight";
    }

    v35 = v34 | 0x8000000000000000;
    if (v27)
    {
      v33 = v30;
      v36 = v32;
    }

    else
    {
      v36 = v35;
    }

    if (v27 == 2)
    {
      v37 = v28;
    }

    else
    {
      v37 = v33;
    }

    if (v27 == 2)
    {
      v38 = v29;
    }

    else
    {
      v38 = v36;
    }

    v39 = MEMORY[0x193ABEC20](a5, a6);
    v40 = MEMORY[0x193ABEC20](v37, v38);
    v12 = [v63 colorWithName:v39 displayGamut:HIWORD(a8) & 1 deviceIdiom:a12 appearanceName:v40];

    if (!v12)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (!v61)
    {

      if ([v12 idiom] == v62)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }

    if (!v62)
    {
      goto LABEL_15;
    }

    v41 = [v12 appearance];
    if (!v41)
    {

LABEL_50:

      v12 = 0;
      goto LABEL_16;
    }

    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (v43 == v37 && v45 == v38)
    {

      a6 = v52;
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {

        v12 = 0;
      }

      a6 = v52;
    }

LABEL_16:
    v26 += 2;
    --v25;
  }

  while (v25);

  if (v12)
  {

    return v12;
  }

LABEL_58:
  v48 = v59;

  v49 = v58;
  v50 = v63;

  v51 = specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v55 & 0x101, a2, v54, 1, (2 * v53) | 1, a3, v50, a5, a6, v56, a8 & 0x10101, a9, a10, a11, a12);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v51;
}

void type metadata accessor for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>)
  {
    type metadata accessor for (ColorScheme?, ColorSchemeContrast)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>);
    }
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0x10101, a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0x10101, a3, a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v15, a2 & 0x10101, a3, a4, a5, a1, v25);
    v28 = a5;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  MEMORY[0x193AC11A0]((a1 >> 8) & 1);
  MEMORY[0x193AC11A0](HIWORD(a1) & 1);
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    v8 = a4;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 0x10101, a2, a3, a4, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = v5;
    v11 = a3;
    v13 = ~v7;
    v25 = a2;
    do
    {
      v14 = *(v9 + 48) + 32 * v8;
      if (*v14 == (a1 & 1) && ((*(v14 + 1) ^ ((a1 & 0x100) >> 8)) & 1) == 0 && ((*(v14 + 2) ^ ((a1 & 0x10000u) >> 16)) & 1) == 0)
      {
        v15 = *(v14 + 24);
        v16 = *(v14 + 8) == a2 && *(v14 + 16) == v11;
        if (v16 || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v25, (v17 & 1) != 0))
        {
          if (v15)
          {
            if (a4)
            {
              type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSBundle);

              v18 = v15;
              v19 = a4;
              v20 = a4;
              v21 = v18;
              v22 = static NSObject.== infix(_:_:)();

              a4 = v19;
              v11 = a3;

              a2 = v25;
              if (v22)
              {
                return v8;
              }
            }
          }

          else if (!a4)
          {
            return v8;
          }
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2 & 1;
  *(v7 + 1) = BYTE1(a2) & 1;
  *(v7 + 2) = BYTE2(a2) & 1;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *(a2 + 24);
  if (v13 <= 2)
  {
    v52 = v12;
    v53 = v11;
    v54 = v10;
    v55 = v9;
    v56 = v8;
    v57 = v7;
    v58 = v5;
    v59 = v6;
    v15 = result;
    v16 = *a2;
    if (v13)
    {
      if (v13 == 1)
      {
        v17 = *(a2 + 8);
        if (v17 == *(a2 + 16))
        {
          return result;
        }

        v45 = *(a2 + 48);
        v18 = Color.NamedColor.resolve(in:)(&v45, a3, a4, a5);
        v19 = LODWORD(v18);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = *(a2 + 56);
        *&v45 = *(a2 + 48);
        *(&v45 + 1) = v26;
        v27 = *(*v15 + 168);

        v28 = v27(v17, &v45);

        *&v45 = __PAIR64__(v21, v19);
        DWORD2(v45) = v23;
        *(&v45 + 3) = v25 * v28;
        v46 = 2143289344;
        v47 = 0;
        v48 = 1065353216;
        v49 = 0;
        v50 = -1;
        v29 = MEMORY[0x1E69E7CC0];
        v51 = MEMORY[0x1E69E7CC0];
        v44 = v16;
        if (*(a2 + 40) == 1)
        {
          v29 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v45, &v44, v17);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v29;
        v31 = 1;
      }

      else
      {
        v38 = result;
        if (v16 >= 1)
        {
          v39 = *(a2 + 56);
          *&v45 = *(a2 + 48);
          *(&v45 + 1) = v39;
          v40 = *(*v15 + 168);

          v41 = v40(v16, &v45);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v38 = swift_allocObject();
          *(v38 + 16) = v15;
          *(v38 + 24) = v41;
        }

        v42 = *(a2 + 32);
        v43 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v42, v43);
        *(a2 + 32) = v38;
        v31 = 3;
      }

      *(a2 + 40) = v31;
    }

    else
    {
      v32 = result;
      if (v16 >= 1)
      {
        v33 = *(a2 + 56);
        *&v45 = *(a2 + 48);
        *(&v45 + 1) = v33;
        v34 = *(*v15 + 168);

        v35 = v34(v16, &v45);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v32 = swift_allocObject();
        *(v32 + 16) = v15;
        *(v32 + 24) = v35;
      }

      v36 = *(a2 + 32);
      v37 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v36, v37);
      *(a2 + 32) = v32;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

Swift::Void __swiftcall _CALayerView.updatePlatformLayer(_:)(CALayer *a1)
{
  v2 = *v1;
  v3 = swift_dynamicCastUnknownClassUnconditional();
  v2(v3);
}

Swift::Void __swiftcall ViewTransform.UnsafeBuffer.appendTranslation(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  if (a1.width != 0.0 || a1.height != 0.0)
  {
    type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<TranslationElement>, lazy protocol witness table accessor for type TranslationElement and conformance TranslationElement, &unk_1F00BA9D8, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
    v5 = v4;
    v6 = UnsafeHeterogeneousBuffer.allocate(bytes:)(32);
    *v6 = v5;
    *(v6 + 1) = 32;
    v6[2] = width;
    v6[3] = height;
    if (!*v1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v6 - *v1;
    if (v7 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v7 <= 0x7FFFFFFF)
    {
      v8 = *(v1 + 12);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        *(v1 + 12) = v10;
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

uint64_t specialized static Image.ResizableProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (*a1 == *a2)
  {
    if (v3 != v8 || v2 != v7 || v5 != v10 || v4 != v9)
    {
      return 0;
    }

    return v6 ^ v11 ^ 1u;
  }

  v12 = (*(**a1 + 96))();
  result = 0;
  if (v12)
  {
    v14 = v3 == v8 && v2 == v7;
    v15 = v14 && v5 == v10;
    if (v15 && v4 == v9)
    {
      return v6 ^ v11 ^ 1u;
    }
  }

  return result;
}

uint64_t destroy for ResolvableStringResolutionContext(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

void type metadata accessor for PlatformTextRepresentable.Type?()
{
  if (!lazy cache variable for type metadata for PlatformTextRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformTextRepresentable.Type, &lazy cache variable for type metadata for PlatformTextRepresentable);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformTextRepresentable.Type?);
    }
  }
}

void type metadata accessor for PlatformImageRepresentable.Type?()
{
  if (!lazy cache variable for type metadata for PlatformImageRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformImageRepresentable.Type, &lazy cache variable for type metadata for PlatformImageRepresentable);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformImageRepresentable.Type?);
    }
  }
}

void type metadata accessor for PlatformNamedImageRepresentable.Type?()
{
  if (!lazy cache variable for type metadata for PlatformNamedImageRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformNamedImageRepresentable.Type, &lazy cache variable for type metadata for PlatformNamedImageRepresentable);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformNamedImageRepresentable.Type?);
    }
  }
}

void type metadata accessor for PlatformSpacerRepresentable.Type?()
{
  if (!lazy cache variable for type metadata for PlatformSpacerRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformSpacerRepresentable.Type, &lazy cache variable for type metadata for PlatformSpacerRepresentable);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformSpacerRepresentable.Type?);
    }
  }
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x193ABF270](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x193ABF2D0](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

double MappedViews.MappedElements.init(base:baseInputs:id:list:view:views:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v13 = HIDWORD(a4);
  v14 = *(a3 + 8);
  outlined init with take of AnyTrackedValue(a1, a7);
  v15 = a2[1];
  *(a7 + 40) = *a2;
  *(a7 + 56) = v15;
  *(a7 + 72) = a2[2];
  result = *a3;
  *(a7 + 88) = *a3;
  *(a7 + 96) = v14;
  *(a7 + 104) = v9;
  *(a7 + 108) = v13;
  *(a7 + 112) = a5;
  *(a7 + 120) = a6;
  return result;
}

BOOL static ScrollPositionToValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  }

  return (*(a2 + 16) & 1) != 0;
}

uint64_t assignWithCopy for ScrollPositionBindingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage(a1 + 16);
    if (*(a2 + 73))
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      *(a1 + 16) = v4;
    }

    else
    {
      v7 = *(a2 + 40);
      *(a1 + 40) = v7;
      *(a1 + 48) = *(a2 + 48);
      (**(v7 - 8))(a1 + 16, a2 + 16);
      v8 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v8;
    }
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  return a1;
}

uint64_t storeEnumTagSinglePayload for _ViewList_View(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t _ViewList_SublistTransform.withTemporaryTransform<A>(do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  return _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in _ViewList_SublistTransform.withTemporaryTransform<A>(do:), v10, &type metadata for _ViewList_SublistTransform, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in _ViewList_SublistTransform.withTemporaryTransform<A>(do:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  v5 = 1;
  return v2(&v4);
}

uint64_t ViewList.applySublists(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v14 = *a2;
  v12 = v8;
  v13 = v9;
  v11[2] = a5;
  v11[3] = a6;
  return (*(a8 + 64))(a1, &v14, a3 | ((HIDWORD(a3) & 1) << 32), &v12, partial apply for closure #1 in ViewList.applySublists(from:style:list:transform:to:), v11) & 1;
}

uint64_t static Update.lock()(uint64_t (*a1)(uint64_t))
{
  v2 = a1;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
    v2 = a1;
  }

  v3 = static Update._lock;

  return v2(v3);
}

Swift::Void __swiftcall ScrollStateEnqueueRequests.updateValue()()
{
  v1 = v0;
  if (*(v0 + 44) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 44) = *AGGraphGetValue() >> 1;
    *(v0 + 32) = 0xFFFFFFFFLL;
    *(v0 + 40) = 0;
    v2 = *(v0 + 56);
    swift_beginAccess();
    *(v2 + 16) = MEMORY[0x1E69E7CC8];
  }

  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    v50 = 0;
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
LABEL_12:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v5 = v4;
  outlined init with copy of ScrollStateRequest?(Value, &v60);
  v64 = v60;
  v65 = v61;
  v66 = v62;
  if ((v5 & 1) == 0)
  {
LABEL_11:
    v50 = 0;
    goto LABEL_12;
  }

  outlined init with copy of ScrollStateRequest?(&v64, &v56);
  if (!*(&v57 + 1))
  {
    outlined destroy of ScrollStateRequest?(&v56, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
    goto LABEL_11;
  }

  outlined init with take of AnyTrackedValue(&v56, &v60);
  v6 = *(v1 + 4);
  v7 = *(&v61 + 1);
  v8 = v62;
  __swift_mutable_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  (*(v8 + 32))(v6, v7, v8);
  outlined init with copy of AnyTrackedValue(&v60, &v56);
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v67 = v9;
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
    v67 = v9;
  }

  v12 = *(&v57 + 1);
  v13 = v58;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17, v15);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v11, v17, &v67, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  v50 = 1;
LABEL_13:
  updated = ScrollStateEnqueueRequests.adjustedUpdateRequests()();
  v21 = v9[2];
  v51 = v1;
  v49 = updated;
  v48 = v20;
  if (!v21 && (v20 & 1) != 0)
  {
    v22 = updated[2];
    if (v22)
    {
      v23 = *(v1 + 4);
      v24 = (updated + 4);
      do
      {
        outlined init with copy of AnyTrackedValue(v24, &v60);
        v26 = *(&v61 + 1);
        v25 = v62;
        __swift_mutable_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
        (*(v25 + 32))(v23, v26, v25);
        outlined init with copy of AnyTrackedValue(&v60, &v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
          v67 = v9;
        }

        v29 = v9[2];
        v28 = v9[3];
        if (v29 >= v28 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v9);
          v67 = v9;
        }

        v30 = *(&v57 + 1);
        v31 = v58;
        v32 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
        v33 = MEMORY[0x1EEE9AC00](v32);
        v35 = &v47[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v36 + 16))(v35, v33);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v29, v35, &v67, v30, v31);
        __swift_destroy_boxed_opaque_existential_1(&v56);
        __swift_destroy_boxed_opaque_existential_1(&v60);
        v24 += 40;
        --v22;
      }

      while (v22);
    }
  }

  if ((v48 & 1) == 0)
  {

    v38 = v51;
    v40 = v50;
    if (!v9[2])
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  OutputValue = AGGraphGetOutputValue();
  v38 = v51;
  if (!OutputValue)
  {

    if (v50)
    {
      if (!v9[2])
      {
        goto LABEL_40;
      }

LABEL_39:
      v42 = v38[1];
      v56 = *v38;
      v57 = v42;
      v43 = v38[3];
      v45 = *v38;
      v44 = v38[1];
      v58 = v38[2];
      v59 = v43;
      v52 = v45;
      v53 = v44;
      v46 = v38[3];
      v54 = v38[2];
      v55 = v46;
      outlined init with copy of ScrollStateEnqueueRequests(&v56, &v60);
      ScrollStateEnqueueRequests.enqueueRequests(_:)(v9);

      v60 = v52;
      v61 = v53;
      v62 = v54;
      v63 = v55;
      outlined destroy of ScrollStateEnqueueRequests(&v60);
      outlined destroy of ScrollStateRequest?(&v64, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
      return;
    }

LABEL_37:
    v40 = specialized UpdateCycleDetector.dispatch(label:isDebug:)(1, v38 + 28);
    if (!v9[2])
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v39 = v49[2];

  v40 = v50;
  if (v39)
  {
    v41 = v50;
  }

  else
  {
    v41 = 1;
  }

  if (v39)
  {
    v40 = 1;
  }

  if ((v41 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (!v9[2])
  {
    goto LABEL_40;
  }

LABEL_38:
  if (v40)
  {
    goto LABEL_39;
  }

LABEL_40:
  outlined destroy of ScrollStateRequest?(&v64, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
}

Swift::Void __swiftcall ScrollPositionBindingModifier.MakeRequest.updateValue()()
{
  v1 = v0;
  v45[11] = *MEMORY[0x1E69E9840];
  AGGraphClearUpdate();
  outlined init with copy of ScrollPositionBindingModifier.MakeRequest(v0, &v32);
  v2 = *AGGraphGetValue();

  outlined destroy of ScrollPositionBindingModifier.MakeRequest(&v32);
  AGGraphSetUpdate();
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  Value = AGGraphGetValue();
  outlined init with copy of Binding<ScrollPosition>(Value, &v32, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(**(&v32 + 1) + 104))(1);
    outlined init with copy of ScrollPosition(&v33, v45);
  }

  else
  {
    (*(**(&v32 + 1) + 120))(v45);
  }

  outlined destroy of Binding<ScrollPosition>(&v32, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
  updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(v2);
  outlined init with copy of ScrollPosition(v45, v44);
  v5 = MEMORY[0x1E69E6720];
  outlined init with copy of Binding<ScrollPosition>(v1 + 16, v43, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
  outlined init with copy of Binding<ScrollPosition>(v44, &v32, &lazy cache variable for type metadata for ScrollPosition?, v5);
  outlined init with copy of Binding<ScrollPosition>(v43, &v37[8], &lazy cache variable for type metadata for ScrollPosition?, v5);
  if (!v36)
  {
    v11 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<ScrollPosition>(v43, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
    outlined destroy of Binding<ScrollPosition>(v44, &lazy cache variable for type metadata for ScrollPosition?, v11);
    if (!v41)
    {
      outlined destroy of Binding<ScrollPosition>(&v32, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
      v10 = 1;
      goto LABEL_18;
    }

LABEL_17:
    _s7SwiftUI18ScrollStateRequest_pSgWOhTm_0(&v32, type metadata accessor for (ScrollPosition?, ScrollPosition?));
    v10 = 0;
    goto LABEL_18;
  }

  outlined init with copy of Binding<ScrollPosition>(&v32, v29, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
  if (!v41)
  {
    v12 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<ScrollPosition>(v43, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
    outlined destroy of Binding<ScrollPosition>(v44, &lazy cache variable for type metadata for ScrollPosition?, v12);
    outlined destroy of ScrollPosition(v29);
    goto LABEL_17;
  }

  v26[2] = v39;
  v26[3] = v40;
  v27 = v41;
  v28 = v42;
  v26[0] = *&v37[8];
  v26[1] = v38;
  v6 = specialized static ScrollPosition.Storage.== infix(_:_:)(v29, v26);
  v7 = MEMORY[0x1E69E6720];
  outlined destroy of Binding<ScrollPosition>(v43, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
  outlined destroy of Binding<ScrollPosition>(v44, &lazy cache variable for type metadata for ScrollPosition?, v7);
  if ((v6 & 1) != 0 && v31 == v28)
  {
    v8 = v30;
    v9 = v27;
    outlined destroy of ScrollPosition(v26);
    v10 = project #1 <A, B>(lhs:rhs:) in static ScrollPosition.== infix(_:_:)(v8, v9);
  }

  else
  {
    outlined destroy of ScrollPosition(v26);
    v10 = 0;
  }

  outlined destroy of ScrollPosition(v29);
  outlined destroy of Binding<ScrollPosition>(&v32, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
LABEL_18:
  type metadata accessor for ScrollStateRequest?();
  OutputValue = AGGraphGetOutputValue();
  if (!((OutputValue == 0) | updated & 1) && !v10)
  {
    v14 = AGGraphGetValue();
    outlined init with copy of Binding<ScrollPosition>(v14, &v32, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
    _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
    v15 = AGGraphGetValue();
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(AGGraphGetValue() + 8);
    v44[3] = &type metadata for ScrollToScrollStateRequest;
    v44[4] = &protocol witness table for ScrollToScrollStateRequest;
    v20 = swift_allocObject();
    v44[0] = v20;
    outlined init with copy of ScrollPosition(v45, v20 + 152);
    v21 = *v37;
    *(v20 + 80) = v36;
    *(v20 + 96) = v21;
    v22 = *&v37[16];
    v23 = v33;
    *(v20 + 16) = v32;
    *(v20 + 32) = v23;
    v24 = v35;
    *(v20 + 48) = v34;
    *(v20 + 64) = v24;
    *(v20 + 112) = v22;
    *(v20 + 120) = v16;
    *(v20 + 128) = v17;
    *(v20 + 136) = v18;
    *(v20 + 144) = v19;
    *(v20 + 240) = v2;
    *(v20 + 248) = 0;

    AGGraphSetOutputValue();
    v25 = v44;
LABEL_23:
    _s7SwiftUI18ScrollStateRequest_pSgWOhTm_0(v25, type metadata accessor for ScrollStateRequest?);
    goto LABEL_24;
  }

  if ((OutputValue == 0 || v10) | updated & 1)
  {
    *&v34 = 0;
    v32 = 0u;
    v33 = 0u;
    AGGraphSetOutputValue();
    v25 = &v32;
    goto LABEL_23;
  }

LABEL_24:
  $defer #1 () in ScrollPositionBindingModifier.MakeRequest.updateValue()(v1);

  outlined destroy of ScrollPosition(v45);
}

uint64_t sub_18D2F6DD4()
{

  if (*(v0 + 89))
  {
    if (*(v0 + 209))
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
    if (*(v0 + 209))
    {
      goto LABEL_3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
LABEL_3:

  return swift_deallocObject();
}

uint64_t outlined init with copy of Binding<ScrollPosition>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, a3, &type metadata for ScrollPosition, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, unint64_t a8, void *a9, int a10)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v107 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v106 - v20;
  v122 = a1;
  *&v121[0] = a5;
  *(&v121[0] + 1) = a6;

  v22 = EnvironmentValues.accessibilityTextAttributeResolver.getter();
  if (v22)
  {
    (*(v23 + 8))(&v122, v22, v23);
  }

  v112 = a3;
  v111 = a9;
  if (one-time initialization token for coreAXLabel != -1)
  {
    swift_once();
  }

  v24 = v122;
  v25 = v122[2];
  v110 = v21;
  if (v25)
  {
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.coreAXLabel);
    if (v27)
    {
      outlined init with copy of Any(v24[7] + 32 * v26, v121);
      if (swift_dynamicCast())
      {
        v28 = v119;
        v21 = v120;
        *a7 = 1;
        specialized Dictionary._Variant.removeValue(forKey:)(v121);
        outlined destroy of Any?(v121);
        v29 = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD75310);
        v30 = v29;
        v24 = v122;
        if (v122[2])
        {
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((v32 & 1) == 0)
          {

            v93 = *(a8 + 8);
            if (!v93)
            {
              goto LABEL_84;
            }

            goto LABEL_78;
          }

          outlined init with copy of Any(v24[7] + 32 * v31, v121);

          type metadata accessor for NSTextAttachment();
          if (swift_dynamicCast())
          {
            v33 = v119;
            v34 = *(a8 + 8);
            if (v34)
            {
              v35 = *a8;
              v36 = (*(a8 + 16) + *(a8 + 24));

              if (v36 == a2)
              {
                if (v35 == v28 && v34 == v21)
                {

LABEL_94:
                  v108 = 1;
                  goto LABEL_88;
                }

                v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v105)
                {

                  goto LABEL_94;
                }
              }

              else
              {
LABEL_90:
              }
            }

            v102 = MEMORY[0x193ABEC20](v28, v21);
            [v33 setAccessibilityLabel_];

            v103 = MEMORY[0x193ABEC20](v28, v21);
            v104 = [v103 length];

            *a8 = v28;
            *(a8 + 8) = v21;
            *(a8 + 16) = a2;
            *(a8 + 24) = v104;
            goto LABEL_85;
          }
        }

        else
        {
        }

        v93 = *(a8 + 8);
        if (!v93)
        {
          goto LABEL_84;
        }

LABEL_78:
        v96 = *a8;
        v97 = (*(a8 + 16) + *(a8 + 24));

        if (v97 == a2)
        {
          if (v96 == v28 && v93 == v21)
          {

LABEL_87:

            [v111 deleteCharactersInRange_];
            v108 = 0;
            v112 = 0;
            goto LABEL_88;
          }

          v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v101)
          {
            goto LABEL_87;
          }
        }

        else
        {
        }

LABEL_84:
        v98 = MEMORY[0x193ABEC20](v28, v21);
        [v111 replaceCharactersInRange:a2 withString:{v112, v98}];

        v99 = MEMORY[0x193ABEC20](v28, v21);
        v100 = [v99 length];

        *a8 = v28;
        *(a8 + 8) = v21;
        *(a8 + 16) = a2;
        *(a8 + 24) = v100;
        v112 = v100;
LABEL_85:

        v108 = 0;
LABEL_88:
        v21 = v110;
        goto LABEL_17;
      }
    }
  }

  v108 = 0;
LABEL_17:
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    swift_once();
  }

  v33 = static NSAttributedStringKey.resolvableTextSegment;
  v37 = v24[2];
  v109 = a2;
  v106[2] = static NSAttributedStringKey.resolvableTextSegment;
  if (v37 && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.resolvableTextSegment), (v39 & 1) != 0))
  {
    outlined init with copy of Any(v24[7] + 32 * v38, v121);
    v33 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
    v40 = swift_dynamicCast();
    (*(*(v33 - 8) + 56))(v21, v40 ^ 1u, 1, v33);
  }

  else
  {
    v41 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
    (*(*(v41 - 8) + 56))(v21, 1, 1, v41);
  }

  v114 = a10;
  a2 = v24 + 8;
  v42 = 1 << *(v24 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  a8 = v43 & v24[8];
  v44 = (v42 + 63) >> 6;
  v113 = *MEMORY[0x1E69DB670];

  v28 = 0;
  v45 = v24;
  while (a8)
  {
LABEL_33:
    v47 = __clz(__rbit64(a8));
    a8 &= a8 - 1;
    v48 = v47 | (v28 << 6);
    v49 = *(v24[6] + 8 * v48);
    outlined init with copy of Any(v24[7] + 32 * v48, v121 + 8);
    v119 = v49;
    outlined init with take of Any((v121 + 8), &v120);
    outlined init with copy of (key: NSAttributedStringKey, value: Any)(&v119, &v117, type metadata accessor for (key: NSAttributedStringKey, value: Any));
    v50 = v117;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v51;
    v33 = v49;
    v52._countAndFlagsBits = 0x7373656363414955;
    v52._object = 0xEF7974696C696269;
    v53 = String.hasPrefix(_:)(v52);

    __swift_destroy_boxed_opaque_existential_1(v118);
    if (!v53)
    {
      if ((v114 & 0x10) == 0)
      {
        goto LABEL_40;
      }

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
      if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
      {

        goto LABEL_27;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
LABEL_40:
        if ((v114 & 1) == 0)
        {
          goto LABEL_43;
        }

        v58 = v107;
        outlined init with copy of Date?(v110, v107, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        v59 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
        if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
        {
          outlined destroy of ResolvableTextSegmentAttribute.Value?(v58);
LABEL_43:
          outlined init with copy of (key: NSAttributedStringKey, value: Any)(&v119, &v117, type metadata accessor for (key: NSAttributedStringKey, value: Any));
          v33 = v117;
          v60 = specialized __RawDictionaryStorage.find<A>(_:)(v117);
          if (v61)
          {
            v62 = v60;
            v45 = v122;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v115 = v45;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v45 = v115;
            }

            outlined init with take of Any((v45[7] + 32 * v62), v116);
            specialized _NativeDictionary._delete(at:)(v62, v45);

            v122 = v45;
          }

          else
          {

            memset(v116, 0, sizeof(v116));
          }

          outlined destroy of Any?(v116);
          __swift_destroy_boxed_opaque_existential_1(v118);
          goto LABEL_27;
        }

        v106[1] = v59;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v64;
        v21 = v67;
        if (v69 == v68 && v66 == v67)
        {
          goto LABEL_51;
        }

        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v70)
        {
          goto LABEL_53;
        }

        if (one-time initialization token for updateSchedule != -1)
        {
          swift_once();
        }

        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v75;
        if (v71 == v74 && v73 == v75)
        {
          v58 = v107;
LABEL_51:

LABEL_53:
          outlined destroy of Text.ResolvedString(v58, type metadata accessor for ResolvableTextSegmentAttribute.Value);
          goto LABEL_27;
        }

        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v58 = v107;
        if (v76)
        {
          goto LABEL_53;
        }

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v80;
        if (v33 == v79 && v78 == v80)
        {
          goto LABEL_51;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of Text.ResolvedString(v58, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        if ((v33 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_27:
    outlined destroy of Text.ResolvedString(&v119, type metadata accessor for (key: NSAttributedStringKey, value: Any));
  }

  while (1)
  {
    v46 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_90;
    }

    if (v46 >= v44)
    {
      break;
    }

    a8 = a2[v46];
    ++v28;
    if (a8)
    {
      v28 = v46;
      goto LABEL_33;
    }
  }

  v81 = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD75310);
  v82 = v81;
  if (!v45[2] || (v83 = specialized __RawDictionaryStorage.find<A>(_:)(v81), (v84 & 1) == 0))
  {

    v86 = v109;
    v87 = v110;
    v92 = v112;
    goto LABEL_76;
  }

  outlined init with copy of Any(v45[7] + 32 * v83, v121);

  type metadata accessor for NSTextAttachment();
  v85 = swift_dynamicCast();
  v86 = v109;
  v87 = v110;
  if ((v85 & 1) == 0)
  {
LABEL_75:
    v92 = v112;
    goto LABEL_76;
  }

  v88 = v119;
  v89 = [v119 accessibilityLabel];
  if (!v89)
  {

    goto LABEL_75;
  }

  v90 = v89;
  v91 = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD75310);
  specialized Dictionary._Variant.removeValue(forKey:)(v121);

  outlined destroy of Any?(v121);
  if (v108)
  {

    [v111 deleteCharactersInRange_];
    v92 = 0;
  }

  else
  {
    [v111 replaceCharactersInRange:v86 withString:{v112, v90}];
    v92 = [v90 length];
  }

LABEL_76:
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v111 setAttributes:isa range:{v86, v92}];

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v87);
}

uint64_t outlined destroy of Binding<ScrollPosition>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, a2, &type metadata for ScrollPosition, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t EnvironmentValues.accessibilityTextAttributeResolver.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v3);
  return v4;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t one-time initialization function for coreAXLabel()
{
  result = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD75610);
  static NSAttributedStringKey.coreAXLabel = result;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(void *result, uint64_t a2)
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
        IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t outlined destroy of ScrollStateRequest?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI18ScrollStateRequest_pSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (ScrollPosition?, ScrollPosition?)()
{
  if (!lazy cache variable for type metadata for (ScrollPosition?, ScrollPosition?))
  {
    _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(255, &lazy cache variable for type metadata for ScrollPosition?, &type metadata for ScrollPosition, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ScrollPosition?, ScrollPosition?));
    }
  }
}

uint64_t $defer #1 () in ScrollPositionBindingModifier.MakeRequest.updateValue()(uint64_t a1)
{
  outlined init with copy of ScrollPositionBindingModifier.MakeRequest(a1, v7);
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  Value = AGGraphGetValue();
  outlined init with copy of Binding<ScrollPosition>(Value, v4, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
  outlined destroy of ScrollPositionBindingModifier.MakeRequest(v7);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(*v5 + 104))(1);
    outlined init with copy of ScrollPosition(&v6, v8);
  }

  else
  {
    (*(*v5 + 120))(v8);
  }

  outlined destroy of Binding<ScrollPosition>(v4, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
  return outlined assign with take of Binding<ScrollPosition>(v8, a1 + 16, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
}

uint64_t outlined destroy of ResolvableTextSegmentAttribute.Value?(uint64_t a1)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Binding<ScrollPosition>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, a3, &type metadata for ScrollPosition, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ScrollStateRequest?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ScrollStateEnqueueRequests.adjustedUpdateRequests()()
{
  v1 = *AGGraphGetValue();
  v2 = *MEMORY[0x1E698D3F8];
  if (*(v0 + 16) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, &lazy cache variable for type metadata for [ScrollStateRequest], &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E62F8]);
    AGGraphGetValue();
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (!v4[2] && *(v0 + 24) != v2)
  {
    type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
    Value = AGGraphGetValue();
    outlined init with copy of Binding<ScrollPosition>(Value, v21);
    if (*(v0 + 52) == v1)
    {
      outlined destroy of UpdateScrollStateRequest?(v21, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
    }

    else
    {
      outlined init with copy of Binding<ScrollPosition>(v21, v12);
      outlined init with copy of Binding<ScrollPosition>(v12, v15);
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
      {
        (*(*v13 + 104))(1);
        outlined init with copy of ScrollPosition(&v14, &v16);
      }

      else
      {
        (*(*v13 + 120))(&v16);
      }

      outlined destroy of UpdateScrollStateRequest?(v12, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
      outlined destroy of ScrollPosition.Storage(&v16);
      v16 = 1;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 1280;
      outlined init with copy of PositionedByUserScrollStateRequest(v15, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
      }

      outlined destroy of UpdateScrollStateRequest?(v21, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
      v10 = &type metadata for PositionedByUserScrollStateRequest;
      v11 = &protocol witness table for PositionedByUserScrollStateRequest;
      *&v9 = swift_allocObject();
      outlined init with copy of PositionedByUserScrollStateRequest(v12, v9 + 16);
      v4[2] = v7 + 1;
      outlined init with take of AnyTrackedValue(&v9, &v4[5 * v7 + 4]);
      outlined destroy of PositionedByUserScrollStateRequest(v12);
      outlined destroy of PositionedByUserScrollStateRequest(v15);
    }
  }

  *(v0 + 52) = v1;
  return v4;
}

Swift::Void __swiftcall ScrollStateRequestTransform.updateValue()()
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(v0 + 112) != *AGGraphGetValue() >> 1)
  {
    outlined destroy of ScrollStateRequest?(v0 + 72, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    *(v0 + 112) = *AGGraphGetValue() >> 1;
  }

  v1 = *(v0 + 24);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v1, v29);
  if (v2 && *(v2 + 76) != 255)
  {
    type metadata accessor for CGPoint(0);
    v21 = *AGGraphGetValue();
    Value = AGGraphGetValue();
    v4 = *Value;
    v5 = *(Value + 8);
    v6 = vsubq_f64(*(Value + 32), vsubq_f64(v21, *(Value + 16)));
    v29 = 0u;
    memset(v30, 0, sizeof(v30));
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 1;
    v23 = v4;
    v24 = v5;
    v25 = v21;
    v26 = v6;

    specialized ViewTransform.forEach(inverted:_:)(0, &v23, &v29);
    if (v34)
    {
      goto LABEL_22;
    }

    v7 = v31;
    v8 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v1);
    v9 = *MEMORY[0x1E698D3F8];
    v10 = 0.0;
    if (v8 == *MEMORY[0x1E698D3F8])
    {
      v11 = 0.0;
    }

    else
    {
      type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
      v12 = AGGraphGetValue();
      v11 = 0.0;
      if ((*(v12 + 16) & 1) == 0)
      {
        v11 = *v12;
        v10 = *(v12 + 8);
      }
    }

    if (*AGGraphGetValue())
    {
      v11 = 1.0 - v11;
    }

    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
    v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v1, v29);
    if (!v13 || (v14 = *(v13 + 72), v9 == v14) || (v15 = v14 | (*(v13 + 76) << 32), HIDWORD(v15) > 0xFE) || (v15 & 0x100000000) != 0)
    {
LABEL_22:
      v29 = _ViewInputs.base.modify;
      type metadata accessor for (_:)();
      AGGraphSetOutputValue();
    }

    else
    {
      type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
      v16 = AGGraphGetValue();
      outlined init with copy of Binding<ScrollPosition>(v16, &v29);
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
      {
        (*(**(&v29 + 1) + 104))(1);
        outlined init with copy of ScrollPosition(v30, &v23);
      }

      else
      {
        (*(**(&v29 + 1) + 120))(&v23);
      }

      v18 = v27;
      v17 = v28;
      outlined destroy of ScrollPosition(&v23);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
      v19 = AGGraphGetValue();
      outlined init with copy of AnyTrackedValue(v19, v22);
      v20 = ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:)(v18, &v29, v22, v18, v17, v11, v10, *&v7, *(&v7 + 1));
      __swift_destroy_boxed_opaque_existential_1(v22);
      if (!v20)
      {
        v23 = _ViewInputs.base.modify;
        v24 = 0;
        type metadata accessor for (_:)();
        AGGraphSetOutputValue();
      }

      outlined destroy of UpdateScrollStateRequest?(&v29, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
    }
  }

  else
  {
    *&v29 = _ViewInputs.base.modify;
    *(&v29 + 1) = 0;
    type metadata accessor for (_:)();
    AGGraphSetOutputValue();
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionAnchorKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027ContentScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(a1, v5);
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

    v3 = &static _GraphInputs.ContentScrollPositionAnchorKey.defaultValue;
  }

  return *v3;
}

uint64_t outlined init with copy of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v33 = a2;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - v24;
  v44 = INFINITY;
  (*(v16 + 56))(&v32 - v24, 1, 1, a4, v23);
  v27 = a3[3];
  v26 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v27);
  v36 = a4;
  v37 = a5;
  v34 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v42 = &v44;
  v43 = v25;
  (*(v26 + 24))(partial apply for closure #1 in ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:), v35, v27, v26);
  (*(v19 + 16))(v21, v25, v18);
  if ((*(v16 + 48))(v21, 1, a4) == 1)
  {
    v28 = *(v19 + 8);
    v28(v21, v18);
    v29 = 0;
  }

  else
  {
    v30 = v32;
    (*(v16 + 32))(v32, v21, a4);
    v29 = ScrollStateRequestTransform.updateRequest<A>(id:position:targetDistance:)(v30, v33, a4, v34, v44);
    (*(v16 + 8))(v30, a4);
    v28 = *(v19 + 8);
  }

  v28(v25, v18);
  return v29;
}

uint64_t LazyScrollable.forEachVisibleSubview(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (AGSubgraphIsValid())
    {

      LazyScrollable.transform.getter(v29);
      if (v29[0] == 1)
      {
      }

      else
      {
        v9 = *&v29[4];
        v8 = *&v29[5];
        v11 = *&v29[2];
        v10 = *&v29[3];
        v30[0] = v29[0];
        v30[1] = v29[1];
        *&v12 = COERCE_DOUBLE(LazyScrollable.position.getter());
        if (v14)
        {
        }

        else
        {
          v15 = *&v12;
          v16 = v13;
          v17 = v12;
          v18 = v13;
          v19 = *AGGraphGetValue();
          type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
          v20 = *AGGraphGetValue();

          *&v30[4] = v9 - (v15 - v11);
          *&v30[5] = v8 - (v16 - v10);
          v30[2] = v17;
          *&v30[3] = v18;
          MEMORY[0x1EEE9AC00](v21);
          v22[1] = *(a3 + 16);
          v23 = v20;
          v24 = v3;
          v25 = v19;
          v26 = v30;
          v27 = a1;
          v28 = a2;
          _LazyLayoutViewCache.withPlacementData<A>(_:)(partial apply for closure #1 in LazyScrollable.forEachVisibleSubview(_:), v22, MEMORY[0x1E69E7CA8]);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t LazyScrollable.position.getter()
{
  type metadata accessor for CGPoint(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    return *WeakValue;
  }

  else
  {
    return 0;
  }
}

uint64_t LazyScrollable.transform.getter@<X0>(uint64_t a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v7 = *(result + 8);
    v8 = *(result + 24);
    v4 = *(result + 40);

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v4 = 0;
    v5 = 0uLL;
    v3 = 1;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 40) = v4;
  return result;
}

uint64_t _LazyLayoutViewCache.withPlacementData<A>(_:)@<X0>(void (*a1)(char *, __int128 *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v91 = a2;
  v92 = a1;
  v90 = a3;
  v5 = *v3;
  v6 = *(*v3 + 440);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v65 - v8;
  AGGraphClearUpdate();
  _LazyLayoutViewCache.layout.getter(v9);
  AGGraphSetUpdate();
  v89 = v3[37];
  swift_beginAccess();
  v10 = *(v3 + 6);
  swift_beginAccess();
  v11 = *(v10 + 16);
  v87 = v4[28];
  v88 = v11;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  *&v13 = *Value;
  v94 = v13;
  *&v13 = Value[1];
  v93 = v13;
  v14 = AGGraphGetValue();
  *&v15 = *v14;
  v96 = v15;
  *&v15 = v14[1];
  v95 = v15;
  v16 = AGGraphGetValue();
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = *(v16 + 24);
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);

  v23 = *AGGraphGetValue();
  (*(*(v5 + 448) + 120))(&v134, v6);
  v86 = v134;
  v24 = *AGGraphGetValue();
  v135 = 1;
  v25 = v21 - (*&v94 - v19);
  v26 = v22 - (*&v93 - v20);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  LOBYTE(v104) = 1;
  v128 = v17;
  v129 = v18;
  v130 = v94;
  v131 = v93;
  v132 = v25;
  v133 = v26;
  specialized ViewTransform.forEach(inverted:_:)(0, &v128, &v97);
  v80 = *(&v98 + 1);
  v81 = *(&v99 + 1);
  v82 = *&v98;
  v84 = *&v99;
  v83 = *(&v100 + 1);
  v85 = v100;
  v27 = LOBYTE(v104);
  v28 = 0.0;
  if (LOBYTE(v104))
  {
    v29 = 0.0;
  }

  else
  {
    v29 = *(&v102 + 1);
  }

  if (LOBYTE(v104))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *&v102;
  }

  v32 = *(&v101 + 1);
  v31 = *&v101;
  if (LOBYTE(v104))
  {
    v31 = *&v96;
    v32 = *&v95;
    v33 = 0.0;
  }

  else
  {
    v33 = *&v97;
  }

  if (LOBYTE(v104))
  {
    v34 = 0.0;
  }

  else
  {
    v34 = *(&v97 + 1);
  }

  v76 = v31;
  v74 = *(&v103 + 1);
  v77 = *&v103;
  v75 = v32;
  v73 = v34;
  if (v23 == 1)
  {
    v35 = v33;
    v36 = v34;
    v37 = *&v96 - CGRectGetMaxX(*(&v31 - 2));
    v78 = v30 + v37 - v33;
    v79 = v29 + v34 - v34;
    v33 = v37;
  }

  else
  {
    v78 = v30;
    v79 = v29;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  LOBYTE(v104) = 1;
  v128 = v17;
  v129 = v18;
  v130 = v94;
  v131 = v93;
  v132 = v25;
  v133 = v26;
  specialized ViewTransform.forEach(inverted:_:)(0, &v128, &v97);
  v71 = *(&v98 + 1);
  v72 = *&v98;
  v70 = *&v99;
  v67 = *&v100;
  v68 = *(&v99 + 1);
  v66 = *(&v100 + 1);
  v38 = LOBYTE(v104);
  if (LOBYTE(v104))
  {
    v39 = 0.0;
  }

  else
  {
    v39 = *(&v102 + 1);
  }

  if (LOBYTE(v104))
  {
    v40 = 0.0;
  }

  else
  {
    v40 = *&v102;
  }

  if (LOBYTE(v104))
  {
    v41 = *&v96;
  }

  else
  {
    v41 = *&v101;
  }

  if (LOBYTE(v104))
  {
    v42 = *&v95;
  }

  else
  {
    v42 = *(&v101 + 1);
  }

  if (LOBYTE(v104))
  {
    v43 = 0.0;
  }

  else
  {
    v43 = *&v97;
  }

  if ((LOBYTE(v104) & 1) == 0)
  {
    v28 = *(&v97 + 1);
  }

  v44 = v103;
  v69 = v41;
  if (v23)
  {
    v136.origin.x = v43;
    v136.origin.y = v28;
    v136.size.width = v41;
    v136.size.height = v42;
    v45 = *&v96 - CGRectGetMaxX(v136);
    v40 = v40 + v45 - v43;
    v39 = v39 + v28 - v28;
    v43 = v45;
  }

  *&v46 = v94;
  *(&v46 + 1) = v93;
  *&v47 = v96;
  *(&v47 + 1) = v95;
  v98 = v46;
  v99 = v47;
  if (v38)
  {
    v48 = *&v95;
  }

  else
  {
    v48 = *(&v44 + 1);
  }

  if (v38)
  {
    v49 = *&v96;
  }

  else
  {
    v49 = *&v44;
  }

  v50 = v72;
  *(&v100 + 1) = v33;
  *&v101 = v73;
  v51 = 0;
  v52 = v66;
  v53 = v67;
  if (v38)
  {
    v52 = 0.0;
    v53 = 0.0;
  }

  v54 = v68;
  if (v38)
  {
    v54 = 0.0;
  }

  v55 = v70;
  v56 = v71;
  if (v38)
  {
    v55 = 0.0;
    v56 = *&v95;
    v50 = *&v96;
  }

  v57 = v80;
  if (v27)
  {
    v57 = *&v95;
  }

  v58 = v82;
  if (v27)
  {
    v58 = *&v96;
  }

  *(&v101 + 1) = v58;
  *&v102 = v57;
  v59 = v81;
  if (v27)
  {
    v59 = 0.0;
  }

  v60 = v84;
  if (v27)
  {
    v60 = 0.0;
  }

  *(&v102 + 1) = v60;
  *&v103 = v59;
  v61 = v83;
  if (v27)
  {
    v61 = 0.0;
  }

  else
  {
    v51 = v85;
  }

  *(&v103 + 1) = v51;
  v104 = v61;
  v62 = v77;
  v105 = v76;
  v106 = v75;
  v107 = v78;
  v108 = v79;
  v63 = v74;
  if (v27)
  {
    v63 = *&v95;
    v62 = *&v96;
  }

  v109 = v62;
  v110 = v63;
  v111 = v43;
  v112 = v28;
  v113 = v50;
  v114 = v56;
  v115 = v55;
  v116 = v54;
  v117 = v53;
  v118 = v52;
  v119 = v69;
  v120 = v42;
  v121 = v40;
  v122 = v39;
  v123 = v49;
  v124 = v48;
  v125 = v96;
  v126 = v95;
  LODWORD(v97) = v89;
  *(&v97 + 4) = __PAIR64__(v88, v89);
  HIDWORD(v97) = v87;
  LODWORD(v100) = v86;
  v127 = v24;
  v92(v9, &v97);
  return (*(v7 + 8))(v9, v6);
}

uint64_t _LazyLayoutViewCache.layout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 440);
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, Value, v3);
}

uint64_t specialized static HoverEffectContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = a2[6];
  if (v5)
  {
    if (v5 == 1)
    {
      if (v10 != 1 || v4 != v9)
      {
        return 0;
      }
    }

    else if (v10 != 2 || v9 != 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8) || v4 != v9)
  {
    return 0;
  }

  if (v6 != *(a2 + 32))
  {
    return 0;
  }

  if (v8)
  {
    if (!v11 || (v7 != a2[5] || v8 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  return 1;
}

uint64_t ObjcColor.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI9ObjcColor_color);
  if (v3 == *&v6[OBJC_IVAR____TtC7SwiftUI9ObjcColor_color])
  {

    v4 = 1;
  }

  else
  {
    v4 = (*(*v3 + 88))();
  }

  return v4 & 1;
}

uint64_t closure #1 in LazyScrollable.forEachVisibleSubview(_:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(void, void))
{
  result = memcpy(__dst, a2, sizeof(__dst));
  v70 = 0;
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = (a3 + 32);
    v45 = *MEMORY[0x1E698D3F8];
    v43 = a5 & 1;
    v13 = v11 - 1;
    while (1)
    {
      v14 = v13;
      v15 = v12[1];
      v65 = *v12;
      v66 = v15;
      v16 = v12[3];
      v67 = v12[2];
      v68 = v16;
      *v69 = v12[4];
      v17 = v65;
      v18 = *(v65 + 152);
      v56[0] = *(v65 + 144);
      v56[1] = v18;
      if (*(v65 + 44) == v45)
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v65, v54);
        v19 = one-time initialization token for defaultValue;

        Value = &static LayoutComputer.defaultValue;
        if (v19 != -1)
        {
          swift_once();
          Value = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v65, v54);

        Value = AGGraphGetValue();
      }

      v21 = *Value;
      v22 = *(&v65 + 1);
      v23 = v66;
      v24 = *(&v66 + 1);
      v25 = v67;
      v26 = *(&v67 + 1);
      v27 = v68;
      v28 = v69[0];
      v29 = one-time initialization token for lockAssertionsAreEnabled;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      *v54 = v22;
      v54[8] = v23;
      *&v54[16] = v24;
      v54[24] = v25;
      v31 = (*(*v21 + 120))(v54);
      v33 = v32;

      if (*(v17 + 44) == v45)
      {
        v34 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v34 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v34 = AGGraphGetValue();
      }

      v35 = *v34;
      if (v30)
      {
        v36 = one-time initialization token for _lock;

        if (v36 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      else
      {
      }

      v37 = *(&v27 + 1) - v26 * v31;
      *v54 = v22;
      v54[8] = v23;
      *&v54[16] = v24;
      v54[24] = v25;
      v38 = (*(*v35 + 120))(v54);
      v40 = v39;

      v55 = v43;
      memcpy(v54, __dst, sizeof(v54));
      v41 = *(a6 + 8);
      *&v46 = *a6;
      *(&v46 + 1) = v41;
      v42 = *(a6 + 32);
      v47 = *(a6 + 16);
      v48 = v42;
      type metadata accessor for LazyScrollable();

      LazyScrollable.collectionSubview(id:frame:layoutDirection:context:transform:)(v56, &v55, v54, &v46, &v57, v37, v28 - *&v27 * v33, v38, v40);

      *&v54[64] = v61;
      *&v54[80] = v62;
      *&v54[96] = v63;
      *&v54[112] = v64;
      *v54 = v57;
      *&v54[16] = v58;
      *&v54[32] = v59;
      *&v54[48] = v60;
      v50 = v61;
      v51 = v62;
      v52 = v63;
      v53 = v64;
      v46 = v57;
      v47 = v58;
      v48 = v59;
      v49 = v60;
      a7(&v46, &v70);
      outlined destroy of _LazyLayout_PlacedSubview(&v65);
      result = outlined destroy of ScrollableCollectionSubview(v54);
      if ((v70 & 1) == 0)
      {
        v13 = v14 - 1;
        v12 += 5;
        if (v14)
        {
          continue;
        }
      }

      return result;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of UpdateScrollStateRequest?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<ScrollPosition>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t specialized GraphHost.intern<A>(_:for:id:)(uint64_t a1, uint64_t a2, Swift::UInt8 a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 120);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v9)
    {
      return *(*(v7 + 56) + 4 * v8);
    }
  }

  swift_beginAccess();
  v11 = *(v4 + 24);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 120) = v15;
  swift_endAccess();
  return v10;
}

uint64_t specialized closure #1 in PreferenceTransform.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *))
{
  v52 = a5;
  v54 = a4;
  v56 = a1;
  v60 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ObservationTracking._AccessList();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v49 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - v13;
  type metadata accessor for ObservationTracking._AccessList?();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v49 - v19;
  v21 = one-time initialization token for _current;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static ObservationCenter._current;
  swift_beginAccess();
  v23 = pthread_getspecific(v22[2]);
  if (!v23)
  {
    v24 = a2;
    v25 = v14;
    v26 = swift_slowAlloc();
    pthread_setspecific(v22[2], v26);
    v59 = type metadata accessor for ObservationCenter();
    *&v58 = v22[3];
    outlined init with take of Any(&v58, v26);

    v23 = v26;
    v14 = v25;
    a2 = v24;
  }

  outlined init with copy of Any(v23, &v58);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v27 = v57;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    *(v27 + 24) = v17;
    goto LABEL_9;
  }

  v50 = CurrentAttribute;
  v51 = v9;
  swift_beginAccess();
  v53 = *(v27 + 24);
  *(v27 + 24) = MEMORY[0x1E69E7CC0];
  (*(v7 + 56))(v20, 1, 1, v6);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v30 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  v31 = v54;
  v54 = a2;
  (v56)(v31);
  *(StatusReg + 848) = v30;
  outlined init with copy of ObservationTracking._AccessList?(v20, v17);
  v32 = (*(v7 + 48))(v17, 1, v6);
  v33 = v6;
  v56 = v27;
  if (v32 == 1)
  {
    v9 = v6;
    outlined destroy of ObservationTracking._AccessList?(v20);
    v20 = v17;
    v34 = v27;
    goto LABEL_12;
  }

  v6 = *(v7 + 32);
  (v6)(v14, v17, v33);
  v9 = v33;
  (*(v7 + 16))(v55, v14, v33);
  v17 = *(v27 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 24) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v37 = *(v17 + 2);
  v36 = *(v17 + 3);
  if (v37 >= v36 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v17);
  }

  *(v17 + 2) = v37 + 1;
  (v6)(&v17[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37], v55, v9);
  v34 = v56;
  *(v56 + 24) = v17;
  (*(v7 + 8))(v14, v9);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v20);
  v38 = *(v34 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v41 = *(v7 + 16);
    v40 = v7 + 16;
    v55 = v41;
    v42 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v43 = *(v40 + 56);
    v44 = (v40 - 8);
    v49[1] = v38;

    v45 = v51;
    v46 = v52;
    v47 = v50;
    do
    {
      (v55)(v45, v42, v9);
      v46(v47, v45);
      v34 = v56;
      (*v44)(v45, v9);
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  *(v34 + 24) = v53;
}

uint64_t specialized UpdateCycleDetector.dispatch(label:isDebug:)(char a1, uint64_t a2)
{
  AGGraphClearUpdate();
  v4 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*(a2 + 4) != v4)
  {
    *(a2 + 4) = v4;
    *(a2 + 8) = 2;
    return 1;
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 - 1;
    *(a2 + 8) = v6;
    if (v6)
    {
      return 1;
    }
  }

  if (*(a2 + 12))
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    _StringGuts.grow(_:)(44);

    MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
    specialized static Log.externalWarning(_:)(0x6F546C6C6F726353, 0xE800000000000000);
  }

  result = 0;
  *(a2 + 12) = 1;
  return result;
}

{
  AGGraphClearUpdate();
  v4 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*(a2 + 4) != v4)
  {
    *(a2 + 4) = v4;
    *(a2 + 8) = 2;
    return 1;
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 - 1;
    *(a2 + 8) = v6;
    if (v6)
    {
      return 1;
    }
  }

  if (*(a2 + 12))
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    _StringGuts.grow(_:)(44);

    MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
    specialized static Log.externalWarning(_:)(0xD000000000000017, 0x800000018DD78C20);
  }

  result = 0;
  *(a2 + 12) = 1;
  return result;
}

Swift::Void __swiftcall LazySubviewPrefetcher.updateValue()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - v6;
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  Value = AGGraphGetValue();
  v11 = *Value;
  if (v8 != *Value)
  {
    v12 = *(Value + 8);
    v13 = *(Value + 16);
    *(v2 + 32) = v11;
    *(v2 + 40) = v13;
    if (v13 != v9)
    {
      type metadata accessor for LazyLayoutViewCache();
      AGGraphGetValue();

      LazyLayoutViewCache.resetPrefetchPhases()();
    }

    type metadata accessor for LazyLayoutViewCache();
    if ((*(*AGGraphGetValue() + 312) & v13) != 0)
    {
      v14 = *v2;
      if (one-time initialization token for lazyLayoutPrefetch != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v5, static Log.lazyLayoutPrefetch);
      outlined init with copy of Logger?(v15, v7);
      v16 = type metadata accessor for Logger();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v7, 1, v16) == 1)
      {
        outlined destroy of Logger?(v7);
      }

      else
      {
        v18 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v37))
        {
          v19 = swift_slowAlloc();
          v35 = v12;
          v20 = v19;
          v34 = swift_slowAlloc();
          v38 = v34;
          *v20 = 136446466;
          v32[3] = v14;
          v21 = _typeName(_:qualified:)();
          v36 = v3;
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v38);
          v33 = v18;
          v24 = v23;

          *(v20 + 4) = v24;
          *(v20 + 12) = 2082;
          v25 = AGAttribute.description.getter();
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v38);

          *(v20 + 14) = v27;
          v28 = v33;
          _os_log_impl(&dword_18D018000, v33, v37, "%{public}s %{public}s start prefetch", v20, 0x16u);
          v29 = v34;
          swift_arrayDestroy();
          MEMORY[0x193AC4820](v29, -1, -1);
          v30 = v20;
          v12 = v35;
          MEMORY[0x193AC4820](v30, -1, -1);
        }

        else
        {
        }

        (*(v17 + 8))(v7, v16);
      }

      if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
      {
        __break(1u);
      }

      else
      {
        v31 = AGGraphGetAttributeGraph();
        AGGraphGetDeadline();
        AGGraphSetDeadline();
        closure #1 in LazySubviewPrefetcher.updateValue()(v2, v11, v12, v13);
        AGGraphSetDeadline();
      }
    }
  }
}

uint64_t closure #1 in removeValue #1 <A>(key:) in PreferenceBridge.removeValue(_:for:isInvalidating:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for WeakAttribute();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if ((v5 & 1) == 0)
  {
    result = Array.remove(at:)();
    *a3 = 1;
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ConditionalSpacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017SystemColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, _BYTE *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 0;
  }

  *a6 = v11;
  return result;
}

uint64_t key path getter for EnvironmentValues.headerProminence : EnvironmentValues@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016HeaderProminenceI0VG_Tt1g5(v3, &v5);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2g5(*a1, &v5);
  }

  *a2 = v5;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016HeaderProminenceV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016HeaderProminenceV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t initializeWithCopy for AccessibilityScrollableContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 70);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    LOBYTE(v3) = 2;
  }

  else if (v3 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1);
    LOBYTE(v3) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
  }

  *(a1 + 70) = v3;

  return a1;
}

Swift::Void __swiftcall GraphHost.uninstantiate(immediately:)(Swift::Bool immediately)
{
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    swift_beginAccess();
    v3 = one-time initialization token for enabledCategories;
    v4 = *(v1 + 32);
    if (v3 != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 99) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17475;
        type metadata accessor for AGSubgraphRef(0);
        AGGraphAddTraceEvent();
      }
    }

    closure #1 in GraphHost.uninstantiate(immediately:)(v1, immediately);
    $defer #1 <A>() in static CustomEventTrace.uninstantiate<A>(root:closure:)(v4);
  }
}

uint64_t closure #1 in GraphHost.uninstantiate(immediately:)(uint64_t a1, char a2)
{
  *&v33[57] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 88);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 256;
  *(v8 + 88) = v7;
  *(a1 + 88) = v8;
  swift_endAccess();

  (*(*a1 + 216))(v9);
  v10 = *(a1 + 32);
  AGSubgraphApply();

  if ((*(a1 + 40) & 1) == 0)
  {
    AGSubgraphRemoveChild();
  }

  v11 = *(a1 + 32);
  AGSubgraphRef.willInvalidate(isInserted:)(0);

  v12 = *(a1 + 32);
  if (a2)
  {
    AGSubgraphInvalidate();
  }

  else
  {
    v33[1] = 17;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = v12;
    static Update.enqueueAction(reason:_:)(&v33[1], partial apply for closure #1 in closure #1 in GraphHost.uninstantiate(immediately:), v13);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v15 = AGSubgraphCreate();
  v16 = *(a1 + 32);
  *(a1 + 32) = v15;

  v17 = *(a1 + 16);
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v20 = *(*a1 + 240);
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v20(v33);
  v24 = v33[0];
  v25 = one-time initialization token for enabledCategories;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1)
  {
    v29 = static CustomEventTrace.recorder;
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 16707;
      v30 = *(v29 + 16);
      v33[1] = v24;
      *&v33[9] = v17;
      *&v33[17] = v27;
      *&v33[25] = v28;
      type metadata accessor for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef)();

      v31 = v30;
      AGGraphAddTraceEvent();
    }
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    AGSubgraphAddChild();
  }

  result = swift_beginAccess();
  *(a1 + 128) = 0;
  return result;
}

Swift::Void __swiftcall ViewGraph.uninstantiateOutputs()()
{
  v1 = v0;
  ViewGraph.removePreferenceOutlets(isInvalidating:)(0);
  swift_beginAccess();
  v2 = *(v0 + 228);
  if (!v2)
  {
LABEL_8:
    AGGraphMutateAttribute();
    *(v1 + 332) = 0;
    *(v1 + 324) = 0;
    *(v1 + 340) = 0;
    swift_beginAccess();
    *(v1 + 132) = 0;
    *(v1 + 136) = 0;
    return;
  }

  v3 = *(v0 + 216);
  if (v3)
  {
    v4 = 0;
    v5 = v2 - 1;
    do
    {
      v8 = (v3 + v4);
      if (v5)
      {
        v4 += *(v8 + 2);
      }

      else
      {
        v4 = 0;
      }

      v6 = v5 | v4;
      v7 = *v8;
      v9[0] = v8;
      (*(v7 + 128))(v9, v1);
      --v5;
    }

    while (v6);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static ViewGraphFeatureBuffer._VTable.uninstantiate(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 24))(a2, v4);
}

uint64_t $defer #1 <A>() in static CustomEventTrace.uninstantiate<A>(root:closure:)(uint64_t a1)
{

  return static CustomEventTrace.instantiateBegin(_:)(a1, 69);
}

uint64_t specialized SpacerLayoutComputer.updateValue()()
{
  v1 = *(v0 + 4);
  if (v1 == 2)
  {
    if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
    {
      LOWORD(v1) = 2;
    }

    else
    {
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Axis?, &type metadata for Axis, MEMORY[0x1E69E6720]);
      LOWORD(v1) = *AGGraphGetValue();
    }
  }

  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16) | (v1 << 8);
  v5 = *Value;

  return specialized StatefulRule<>.update<A>(to:)(v5, v3, v4);
}

uint64_t specialized StatefulRule<>.update<A>(to:)(char a1, uint64_t a2, __int16 a3)
{
  v17 = *MEMORY[0x1E69E9840];
  LOBYTE(v13[0]) = a1;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v13[4] = &v14;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v7 = *OutputValue;
    v8 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v9 = one-time initialization token for lockAssertionsAreEnabled;

    if (v9 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>.Engine, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v11 = MEMORY[0x1EEE9AC00](v10);
      (*(*v7 + 80))(v11);
      v13[0] = v7;
      v13[1] = v8 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA011ConditionalF0V_G_Tt1B5(a1 & 1, a2, a3 & 0xFF01, v13);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA011ConditionalF0V_G_Tt1B5@<X0>(char a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>();
    v8 = swift_allocObject();
    result = AGGraphGetCurrentAttribute();
    v10 = result == *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = result;
    }

    *(v8 + 36) = v11;
    *(v8 + 40) = v10;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>();
    result = swift_allocObject();
    v8 = result;
  }

  *(v8 + 16) = a1 & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  *(v8 + 33) = HIBYTE(a3);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

uint64_t assignWithCopy for PlatformDrawableContent.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>.Engine, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>);
    }
  }
}

uint64_t static CoreInteractionRepresentableFeatureBuffer._VTable.deinitialize(elt:)()
{
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();

  return UnsafeMutablePointer.deinitialize(count:)();
}

uint64_t _CoreInteractionHelperBox.deinit()
{
  v1 = *(*v0 + 152);
  type metadata accessor for CoreInteractionRepresentableEffect();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 184);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 192);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t _CoreInteractionHelperBox.__deallocating_deinit()
{
  _CoreInteractionHelperBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance PlaceholderInfo(void *a1)
{
  v2 = a1 + 24;
  if (a1[24])
  {
    AGSubgraphRemoveObserver();
    v3 = a1[24];
    *v2 = 0;
    v2[1] = 0;
  }

  a1[16] = 0;

  a1[17] = 0;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LazyContainerContentModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v4;
  v6 = *(a2 + 48);
  v35 = *(a2 + 64);
  v7 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v7;
  v28 = v33;
  v29 = v6;
  v30 = *(a2 + 64);
  v36 = *(a2 + 80);
  v8 = *&v32[0];
  v31 = *(a2 + 80);
  v26 = v32[0];
  v27 = v5;
  outlined init with copy of _ViewInputs(v32, v23);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v8);
  static CorePlatformProvidersDefinition.providers.getter(v23);
  if (v24)
  {
    (*(v25 + 16))(&v26);
  }

  v17[2] = v28;
  v17[3] = v29;
  v17[4] = v30;
  v18 = v31;
  v17[0] = v26;
  v17[1] = v27;
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  v11 = v26;
  v12 = v27;
  v9 = outlined init with copy of _ViewInputs(v17, v21);
  a3(v9, &v11);
  v19[2] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v20 = v16;
  v19[0] = v11;
  v19[1] = v12;
  outlined destroy of _ViewInputs(v19);
  v21[2] = v28;
  v21[3] = v29;
  v21[4] = v30;
  v22 = v31;
  v21[0] = v26;
  v21[1] = v27;
  return outlined destroy of _ViewInputs(v21);
}

_DWORD *specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:)(_DWORD *result)
{
  v1 = *MEMORY[0x1E698D3F8];
  result[3] = *MEMORY[0x1E698D3F8];
  *result = v1;
  return result;
}

void protocol witness for UnaryLayout.placement(of:in:) in conformance _SafeAreaIgnoringLayout(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 6);
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = v2;
  _SafeAreaRegionsIgnoringLayout.placement(of:in:)(&v3, -1, a2);
}

uint64_t specialized static SafeAreaInsets.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && (v2 = a2[2], v3 = a1[2], (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14SafeAreaInsetsV7ElementV_Tt1g5(a1[1], a2[1]) & 1) != 0))
  {
    v6 = v2;
    v7 = v3;

    v4 = specialized static SafeAreaInsets.OptionalValue.== infix(_:_:)(&v7, &v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

double EdgeInsets.init(_:edges:)(double a1)
{
  if (Edge.Set.contains(_:)(SwiftUI_Edge_top))
  {
    v2 = a1;
  }

  else
  {
    v2 = 0.0;
  }

  Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  return v2;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.LazySubviewMinorSizingKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if (v2)
  {
    if (v3)
    {
      v4 = *(*v2 + 104);

      v6 = v4(v5);

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AccessibilityTextLayoutProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 144) = 0;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

uint64_t specialized static AccessibilityTextLayoutProperties.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 80);
  v45 = *(a1 + 96);
  v46 = v2;
  v4 = *(a1 + 112);
  v47 = *(a1 + 128);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v41 = *(a1 + 32);
  v42 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = v8;
  v9 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v9;
  v10 = a2[7];
  v11 = a2[5];
  v55 = a2[6];
  v56 = v10;
  v12 = a2[7];
  v57 = a2[8];
  v13 = a2[3];
  v14 = a2[1];
  v51 = a2[2];
  v52 = v13;
  v15 = a2[3];
  v16 = a2[5];
  v53 = a2[4];
  v54 = v16;
  v17 = a2[1];
  v49 = *a2;
  v50 = v17;
  v18 = *(a1 + 112);
  v59[6] = *(a1 + 96);
  v59[7] = v18;
  v59[8] = *(a1 + 128);
  v19 = *(a1 + 48);
  v59[2] = *(a1 + 32);
  v59[3] = v19;
  v20 = *(a1 + 80);
  v59[4] = *(a1 + 64);
  v59[5] = v20;
  v21 = *(a1 + 16);
  v59[0] = *a1;
  v59[1] = v21;
  v22 = a2[8];
  v68 = v12;
  v69 = v22;
  v67 = v55;
  v63 = v51;
  v64 = v15;
  v65 = v53;
  v66 = v11;
  v61 = v49;
  v62 = v14;
  v77 = v45;
  v78 = v4;
  v79 = *(a1 + 128);
  v73 = v41;
  v74 = v7;
  v75 = v43;
  v76 = v3;
  v48 = *(a1 + 144);
  v58 = *(a2 + 144);
  v60 = *(a1 + 144);
  v70 = *(a2 + 144);
  v80 = *(a1 + 144);
  v71 = v40[0];
  v72 = v6;
  if (getEnumTag for AccessibilityTextLayoutProperties(&v71) != 1)
  {
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v39 = v58;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    v35 = v54;
    v30 = v49;
    v31 = v50;
    if (getEnumTag for AccessibilityTextLayoutProperties(&v30) != 1)
    {
      v28[6] = v77;
      v28[7] = v78;
      v28[8] = v79;
      v29 = v80;
      v28[2] = v73;
      v28[3] = v74;
      v28[4] = v75;
      v28[5] = v76;
      v28[0] = v71;
      v28[1] = v72;
      v26[6] = v36;
      v26[7] = v37;
      v26[8] = v38;
      v27 = v39;
      v26[2] = v32;
      v26[3] = v33;
      v26[4] = v34;
      v26[5] = v35;
      v26[0] = v30;
      v26[1] = v31;
      outlined init with copy of AccessibilityTextLayoutProperties(&v49, v25);
      outlined init with copy of AccessibilityTextLayoutProperties(v40, v25);
      outlined init with copy of AccessibilityTextLayoutProperties(&v49, v25);
      outlined init with copy of AccessibilityTextLayoutProperties(v40, v25);
      v23 = static TextLayoutProperties.== infix(_:_:)(v28, v26);
      outlined destroy of (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)(v59);
      outlined destroy of AccessibilityTextLayoutProperties(&v49);
      outlined destroy of AccessibilityTextLayoutProperties(v40);
      return v23 & 1;
    }

    goto LABEL_5;
  }

  v36 = v55;
  v37 = v56;
  v38 = v57;
  v39 = v58;
  v32 = v51;
  v33 = v52;
  v34 = v53;
  v35 = v54;
  v30 = v49;
  v31 = v50;
  if (getEnumTag for AccessibilityTextLayoutProperties(&v30) != 1)
  {
LABEL_5:
    outlined init with copy of AccessibilityTextLayoutProperties(&v49, &v30);
    outlined init with copy of AccessibilityTextLayoutProperties(v40, &v30);
    outlined destroy of (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)(v59);
    v23 = 0;
    return v23 & 1;
  }

  outlined destroy of (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)(v59);
  v23 = 1;
  return v23 & 1;
}