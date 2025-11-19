uint64_t storeEnumTagSinglePayload for PathDrawingStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

void @objc closure #1 in static NSRunLoop.addObserver(_:)()
{
  v0 = MEMORY[0x193AC38C0]();
  specialized static NSRunLoop.flushObservers()();

  objc_autoreleasePoolPop(v0);
}

uint64_t specialized static NSRunLoop.flushObservers()()
{
  while (1)
  {
    if (one-time initialization token for observerActions != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    rawValue = observerActions._rawValue;
    if (!*(observerActions._rawValue + 2))
    {
      return result;
    }

    observerActions._rawValue = MEMORY[0x1E69E7CC0];
    specialized static Update.begin()();
    v2 = static Update.dispatchDepth;
    static Update.dispatchDepth = static Update.depth;
    swift_beginAccess();
    atomic_fetch_add_explicit(&static Update.Action.nextActionID, 2u, memory_order_relaxed);
    swift_endAccess();
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
    {
      __break(1u);
LABEL_21:
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
      type metadata accessor for (UInt32, UInt32?)();
      AGGraphAddTraceEvent();
    }

    v3 = rawValue[2];
    if (v3)
    {
      v4 = (rawValue + 5);
      do
      {
        v5 = *(v4 - 1);

        v5(v6);

        v4 += 16;
        --v3;
      }

      while (v3);
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
    {
      goto LABEL_21;
    }

    if (*(static CustomEventTrace.enabledCategories + 97) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17985;
        type metadata accessor for (UInt32, UInt32?)();
        AGGraphAddTraceEvent();
      }
    }

    static Update.dispatchDepth = v2;
    static Update.end()();
  }
}

uint64_t storeEnumTagSinglePayload for ViewGraphHost.Idiom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewGraphHost.Idiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t EnvironmentValues.viewGraphIdiom.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Ttg5(v3, *v2);
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t type metadata completion function for TypedElement()
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

SwiftUI::BloomFilter PropertyList.Element.init(keyType:before:after:)(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 64) = AGMakeUniqueID();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  result.value = BloomFilter.init(hashValue:)(a1).value;
  if (!a2)
  {
    v13 = v18;
    if (a3)
    {
      v14 = *(a3 + 48);
      v15 = v14 + 1;
      if (v14 == -1)
      {
        goto LABEL_17;
      }

      v16 = *(a3 + 52);
      if (v16 > 0xF)
      {
        v17 = 1;
        v12 = a3;
      }

      else
      {
        v17 = v16 + 1;
        v13 = *(a3 + 56) | v18;
        v12 = *(a3 + 40);
      }

      *(v3 + 48) = v15;
      *(v3 + 52) = v17;
    }

    else
    {
      v12 = 0;
      *(v3 + 48) = 0x100000001;
    }

    *(v3 + 56) = v13;
    goto LABEL_15;
  }

  v8 = *(a2 + 48);

  v9 = v8 + 1;
  if (v8 == -1)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
LABEL_6:
      *(v3 + 48) = v9;
      *(v3 + 52) = 0;
      *(v3 + 56) = -1;
      v12 = v3;
LABEL_15:
      *(v3 + 40) = v12;
      return v3;
    }

    v10 = *(a3 + 48);
    v11 = __CFADD__(v9, v10);
    v9 += v10;
    if (!v11)
    {

      goto LABEL_6;
    }
  }

LABEL_17:
  __break(1u);
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE025AssetCatalogConfigurationV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE025AssetCatalogConfigurationF033_F748B30B59970FC73194935C526E3031LLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(*a1);
  if (!v4 || (v5 = *(v4 + 11), v12[0] = *(v4 + 9), v12[1] = v5, v12[2] = *(v4 + 13), v13 = *(v4 + 120), result = _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE025AssetCatalogConfigurationE033_F748B30B59970FC73194935C526E3031LLV_Tt1B5(a2, v12), (result & 1) == 0))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>();
    v8 = swift_allocObject();
    v9 = *(a2 + 16);
    *(v8 + 72) = *a2;
    *(v8 + 88) = v9;
    *(v8 + 104) = *(a2 + 32);
    *(v8 + 120) = *(a2 + 48);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v7);
  }

  return result;
}

uint64_t one-time initialization function for forced()
{
  if (one-time initialization token for firstRelease != -1)
  {
    swift_once();
  }

  v0 = static Semantics.firstRelease;
  result = dyld_program_sdk_at_least();
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  static Semantics.forced = v2;
  byte_1ED53C51C = result;
  dword_1ED53C520 = v2;
  byte_1ED53C524 = result;
  return result;
}

uint64_t one-time initialization function for v1()
{
  result = swiftUI_v1_os_versions();
  static Semantics.v1 = HIDWORD(result);
  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  type metadata accessor for [String](0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static Solarium.isEnabled(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v1, v3);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  return v3[0] == 2;
}

void static Solarium.enablement(_:)(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v3, v4);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  *a2 = v4[0];
}

unint64_t one-time initialization function for cachedValues()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI8SolariumV15EnablementIdiomO_AE0F5LevelO_AE0F8CriteriaVtTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static Solarium.cachedValues = 0;
  qword_1ED539018 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey()
{
  result = lazy protocol witness table cache variable for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey;
  if (!lazy protocol witness table cache variable for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (v8[1] == a2 && *v8 == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v9 = *v8;
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      if (v9 == a1 && v10 == HIDWORD(a1) && v12 == a2 && v11 == HIDWORD(a2))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  MEMORY[0x193AC11A0](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  MEMORY[0x193AC11A0](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t one-time initialization function for hardwareSupportsSolarium()
{
  v1 = 1;
  if (!_SwiftUIIsAppleInternalBuild() || (result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei13HardwareCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5(), (result & 1) == 0))
  {
    result = _SwiftUIIsAppleInternalBuild();
    if (result)
    {
      result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV04Faili13HardwareCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5();
      if (result)
      {
        v1 = 0;
      }
    }
  }

  static Solarium.SolariumHardwareSupport.hardwareSupportsSolarium = v1;
  return result;
}

uint64_t _SwiftUIIsAppleInternalBuild()
{
  if (_SwiftUIIsAppleInternalBuild_once != -1)
  {
    _SwiftUIIsAppleInternalBuild_cold_1();
  }

  return _SwiftUIIsAppleInternalBuild_isInternal;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t one-time initialization function for v7()
{
  result = swiftUI_v7_0_os_versions();
  static Semantics.v7 = HIDWORD(result);
  return result;
}

uint64_t specialized static Update.begin()()
{
  v66 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for OSSignpostID();
  v0 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - v3;
  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    result = _MovableLockLock(static Update._lock);
    v6 = static Update.depth + 1;
    if (__OFADD__(static Update.depth, 1))
    {
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_5;
    }

    ++static Update.depth;
    if (v6 != 1)
    {
      return result;
    }

    if (one-time initialization token for viewHost != -1)
    {
      goto LABEL_44;
    }

LABEL_5:
    v7 = static Signpost.viewHost;
    v8 = word_1ED53C1D0;
    v9 = HIBYTE(word_1ED53C1D0);
    v10 = byte_1ED53C1D2;
    v11 = static os_signpost_type_t.begin.getter();
    if (one-time initialization token for traceHost != -1)
    {
      swift_once();
    }

    v12 = static Update.traceHost;
    v60 = v7;
    v61 = v8;
    v62 = v9;
    v63 = v10;
    result = Signpost.isEnabled.getter();
    if ((result & 1) == 0)
    {
      return result;
    }

    v13 = one-time initialization token for _signpostLog;
    swift_unknownObjectRetain();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = _signpostLog;
    OSSignpostID.init(log:object:)();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg);
    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = xmmword_18DDAB4C0;
    v17 = MEMORY[0x1E69E65A8];
    *(v15 + 56) = MEMORY[0x1E69E6530];
    *(v15 + 64) = v17;
    v18 = MEMORY[0x1E69E6810];
    *(v15 + 32) = 0;
    v19 = MEMORY[0x1E69E6870];
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    *(v15 + 72) = v12;
    if (v9)
    {
      break;
    }

    v45 = v7;
    if (v7 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v7) | (4 * WORD1(v7));
    v22 = v11;
    v24 = *(v0 + 16);
    v23 = v0 + 16;
    v42 = v4;
    v43 = v24;
    v25 = v24(v51, v4, v50);
    v26 = 0;
    LOBYTE(v54) = 1;
    v48 = 16 * *(&v7 + 1);
    v49 = (v23 - 8);
    v46 = v23;
    v47 = v16 + 32;
    v44 = *(&v7 + 1);
LABEL_16:
    v52 = &v41;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v28 + 8;
    v30 = v20;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v0 = v47 + 40 * v26;
    while (1)
    {
      v32 = *(v16 + 16);
      if (v26 == v32)
      {
        LOBYTE(v54) = 0;
LABEL_24:
        v35 = v45;
        if (v45 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v35 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v36 = v50;
        v37 = *v49;
        v38 = v51;
        (*v49)(v51, v50);
        v39 = __swift_project_value_buffer(v36, static OSSignpostID.continuation);
        v25 = v43(v38, v39, v36);
        v20 = v44;
        if ((v54 & 1) == 0)
        {
          v40 = v50;
          v37(v51, v50);
          v37(v42, v40);
        }

        goto LABEL_16;
      }

      if (v26 >= v32)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v0, &v60);
      v33 = v64;
      v4 = v65;
      __swift_project_boxed_opaque_existential_1(&v60, v64);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v33);
      *v29 = v34 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v60);
      v0 += 40;
      if (!--v20)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v59 = v11;
  v57 = v14;
  v58 = &dword_18D018000;
  v60 = v7;
  v61 = v8;
  v54 = "ViewHost: (%p) update began PlatformHost [ %p ]";
  v55 = 47;
  v56 = 2;
  v53 = v15;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
  (*(v0 + 8))(v4, v50);
}

pthread_mutex_t *one-time initialization function for _lock()
{
  result = _MovableLockCreate();
  static Update._lock = result;
  return result;
}

pthread_mutex_t *_MovableLockCreate()
{
  v0 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10E004046517BCFuLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  pthread_mutex_init(v0, 0);
  pthread_cond_init(&v1[1], 0);
  *&v1[1].__opaque[40] = pthread_main_thread_np();
  return v1;
}

uint64_t _MovableLockLock(uint64_t a1)
{
  result = pthread_self();
  if (result == *(a1 + 120))
  {
    v4 = *(a1 + 128) + 1;
  }

  else
  {
    v3 = result;
    result = pthread_mutex_lock(a1);
    while (*(a1 + 120))
    {
      result = wait_for_lock(a1, v3);
    }

    *(a1 + 120) = v3;
    v4 = 1;
  }

  *(a1 + 128) = v4;
  return result;
}

double one-time initialization function for viewHost()
{
  *&result = 594196;
  static Signpost.viewHost = xmmword_18DDB55E0;
  word_1ED53C1D0 = 0;
  byte_1ED53C1D2 = 3;
  return result;
}

uint64_t type metadata accessor for CAMediaTimingFunction(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t one-time initialization function for traceHost()
{
  type metadata accessor for Update.TraceHost();
  result = swift_allocObject();
  static Update.traceHost = result;
  return result;
}

uint64_t Signpost.isEnabled.getter()
{
  v1 = *(v0 + 18);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 == 2)
  {
    return _SwiftUIIsAppleInternalBuild();
  }

  if (*(v0 + 17))
  {
    static os_signpost_type_t.event.getter();
    result = kdebug_is_enabled();
    if (result)
    {
      if (one-time initialization token for _signpostLog != -1)
      {
        swift_once();
      }

      return OS_os_log.signpostsEnabled.getter() & 1;
    }
  }

  else
  {
    static os_signpost_type_t.event.getter();
    return kdebug_is_enabled();
  }

  return result;
}

uint64_t one-time initialization function for update()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.update = result;
  return result;
}

uint64_t handleTraceNotification(graph:token:)(void *a1, int token)
{
  state64[1] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  result = notify_get_state(token, state64);
  if (state64[0] == 1)
  {
    result = dlopen("/System/Library/PrivateFrameworks/SwiftUITracingSupport.framework/SwiftUITracingSupport", 4);
    if (result)
    {
      result = dlsym(result, "swiftUITraceRegister");
      if (result)
      {
        v4 = result;
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        v5 = static Update._lock;
        _MovableLockLock(static Update._lock);
        closure #1 in handleTraceNotification(graph:token:)(v4, a1);
        return _MovableLockUnlock(v5);
      }
    }
  }

  return result;
}

void GraphHost.Data.init()(uint64_t a1@<X8>)
{
  if (one-time initialization token for sharedGraph != -1)
  {
    swift_once();
  }

  Shared = AGGraphCreateShared();
  *a1 = Shared;
  v3 = Shared;
  v4 = AGSubgraphCreate();
  *(a1 + 8) = v4;
  v5 = AGSubgraphGetCurrent();
  v6 = v4;
  AGSubgraphSetCurrent();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
    type metadata accessor for AGSubgraphRef(0);
    AGGraphAddTraceEvent();
  }

  v7 = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 28) = v7;
  v8 = Attribute.init<A>(body:value:flags:update:)();
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
LABEL_15:
    __break(1u);
  }

  v9 = v8;
  v15 = v6;
  v16 = v5;
  v17 = v3;
  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0, &lazy cache variable for type metadata for (ViewGraphRootValues, AGAttribute), type metadata accessor for AGAttribute);
    AGGraphAddTraceEvent();
  }

  *(a1 + 32) = v9;
  v10 = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 36) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = Attribute.init<A>(body:value:flags:update:)();
  v12 = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 44) = v12;
  *(a1 + 48) = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 52) = Attribute.init<A>(body:value:flags:update:)();
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v11);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 256;
  *(v14 + 88) = v13;
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = v14;
  *(a1 + 80) = v10;
  *(a1 + 84) = v12;
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 96) = MEMORY[0x1E69E7CD0];
  *(a1 + 16) = AGSubgraphCreate();
  AGSubgraphAddChild();

  *(a1 + 24) = 0;
  $defer #1 () in GraphHost.Data.init()(v16, a1);
}

id one-time initialization function for sharedGraph()
{
  result = closure #1 in variable initialization expression of static GraphHost.sharedGraph();
  static GraphHost.sharedGraph = result;
  return result;
}

id closure #1 in variable initialization expression of static GraphHost.sharedGraph()
{
  v0 = AGGraphCreate();
  v1 = getenv("SWIFTUI_ASSERT_LOCKS");
  if (v1 && atoi(v1))
  {
    if (one-time initialization token for threadAssertionTrace != -1)
    {
      swift_once();
    }

    AGGraphSetTrace();
  }

  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v3 = static OS_dispatch_queue.main.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v8[4] = partial apply for closure #1 in closure #1 in variable initialization expression of static GraphHost.sharedGraph;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v8[3] = &block_descriptor_124_0;
  v5 = _Block_copy(v8);
  v6 = v0;

  swift_beginAccess();
  notify_register_dispatch("com.apple.swiftuitrace.state", (v2 + 16), v3, v5);
  swift_endAccess();
  _Block_release(v5);

  handleTraceNotification(graph:token:)(v6, *(v2 + 16));
  specialized static LayoutTrace.register(graph:)(v6);

  return v6;
}

uint64_t sub_18D01CB78()
{

  return swift_deallocObject();
}

uint64_t specialized static LayoutTrace.register(graph:)(void *a1)
{
  if (one-time initialization token for update != -1)
  {
    swift_once();
  }

  result = AGGraphTraceEventEnabled();
  if (result)
  {
    type metadata accessor for LayoutTrace.Recorder();
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 56) = 512;
    *(v3 + 64) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v3 + 16) = a1;
    swift_beginAccess();
    static LayoutTrace.recorder = v3;
    v4 = a1;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom()
{
  result = lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom;
  if (!lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom;
  if (!lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom);
  }

  return result;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei13HardwareCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5()
{
  swift_beginAccess();
  v0 = static Solarium.IgnoreSolariumHardwareCheckUserDefault.cachedValue;
  if (static Solarium.IgnoreSolariumHardwareCheckUserDefault.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002DLL, 0x800000018DD77140);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002DLL, 0x800000018DD77140);
      v0 = [v5 BOOLForKey_];

      static Solarium.IgnoreSolariumHardwareCheckUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static Solarium.IgnoreSolariumHardwareCheckUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

id static PlatformViewDefinition.for (_:)()
{
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = [swift_getObjCClassFromMetadata() _swiftUI_platformViewDefinition];
    if (result)
    {
      type metadata accessor for PlatformViewDefinition();
      return swift_dynamicCastMetatypeUnconditional();
    }
  }

  return result;
}

uint64_t ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a2;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 64) = 13;
  *(v6 + 72) = xmmword_18DD85500;
  *(v6 + 104) = 0;
  *(v6 + 112) = 511;
  *(v6 + 114) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 132) = 1;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 1;
  *(v6 + 160) = 0;
  type metadata accessor for ViewGraph();
  BYTE1(v15) = v11;
  *(v6 + 88) = ViewGraph.__allocating_init<A>(rootViewType:requestedOutputs:)(a1, &v15 + 1, a4, a5);
  (*(a3 + 80))(&v15);
  v12 = v15 | a3;
  type metadata accessor for DisplayList.ViewRenderer();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  *(v13 + 24) = 0;
  *(v13 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = 1;
  *(v13 + 16) = v12;
  *(v6 + 96) = v13;
  return v6;
}

uint64_t MaterialBackdropProxy.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MaterialBackdropProxy.Storage();
  result = swift_allocObject();
  *(result + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  *(result + 32) = v3;
  *(result + 28) = 1;
  *a1 = result;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t EnvironmentValues.viewGraphAssetCatalogConfiguration.setter(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = a1[2];
  v6 = 0;
  v3 = *v1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE025AssetCatalogConfigurationF033_F748B30B59970FC73194935C526E3031LLVG_Tt2B5(v1, v5);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE025AssetCatalogConfigurationK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(v3, *v1);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE025AssetCatalogConfigurationV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE025AssetCatalogConfigurationV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(void *result, uint64_t a2)
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
        HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
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

void *initializeBufferWithCopyOfBuffer for AnyTransition.InsertionVisitor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of HoverEffectContext?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for [LayoutDirection](0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI18HoverEffectContextVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for [LayoutDirection](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for OpenURLAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for OpenURLAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t outlined consume of OpenURLAction.Handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {

    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3);
  }

  return result;
}

uint64_t EnvironmentValues.setDefaultOpenURL(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 33))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v13[0] = *a1;
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v14 = v8 | v7;
  v9 = *v1;
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  swift_retain_n();
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(v1, v13);

  outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  v10 = v1[1];
  if (v10)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v9, *v2);
  }

  outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  v11 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v2, 1);

  if (v10)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v11, *v2);
  }
}

uint64_t outlined copy of OpenURLAction.Handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {

    return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(v4, *&v12[0]) || (v7 = *(a2 + 16), v12[0] = *a2, v12[1] = v7, v13 = *(a2 + 32), type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>();
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 72) = *a2;
    *(v10 + 88) = v11;
    *(v10 + 104) = *(a2 + 32);

    outlined init with copy of HoverEffectContext?(a2, v12, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t initializeWithCopy for OpenURLAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of OpenURLAction.Handler(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t destroy for AnyTransition.InsertionVisitor()
{
}

void type metadata accessor for MutableBox<CachedEnvironment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double one-time initialization function for enabledCategories()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 256;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  static CustomEventTrace.enabledCategories = v0;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (v3 + 8);
    v5 = (a1 + 56);
    while (1)
    {
      v23 = v1;
      v6 = *(v5 - 6);
      v7 = *(v5 - 5);
      v8 = *(v5 - 4);
      v9 = *(v5 - 3);
      v10 = *(v5 - 2);
      v11 = *(v5 - 4);
      v12 = *(v5 - 3);
      v13 = *(v5 - 2);
      v24 = *v5;
      v14 = v4 & 0xFF00000000000000 | v10 | (v11 << 32) | (v12 << 40);
      v15 = 0x1000000000000;
      if ((v13 & 1) == 0)
      {
        v15 = 0;
      }

      v22 = v15 | v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6 | (v7 << 32), v8 | (v9 << 32), v15 | v14);
      if (v17)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v3[6] + 24 * result;
      *v18 = v6;
      *(v18 + 4) = v7;
      *(v18 + 8) = v8;
      *(v18 + 12) = v9;
      *(v18 + 16) = v10;
      *(v18 + 20) = v11;
      *(v18 + 21) = v12;
      *(v18 + 22) = v13;
      *(v3[7] + 4 * result) = v24;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_12;
      }

      v5 += 7;
      v3[2] = v21;
      v4 = v22;
      v1 = v23 - 1;
      if (v23 == 1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void $defer #1 () in GraphHost.Data.init()(uint64_t a1, uint64_t a2)
{
  AGSubgraphSetCurrent();
  v3 = *(a2 + 8);
  v4 = one-time initialization token for enabledCategories;
  v5 = v3;
  if (v4 != -1)
  {
    v7 = v5;
    swift_once();
    v5 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17219;
    v6 = v5;
    type metadata accessor for AGSubgraphRef(0);
    AGGraphAddTraceEvent();
  }

  else
  {
  }
}

void *sub_18D01E854(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t initializeWithCopy for GraphHost.Data(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

uint64_t GraphHost.init(data:)(__int128 *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a1[3];
  v3 = a1[5];
  v34 = a1[4];
  v35 = v3;
  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v32 = a1[2];
  v8 = v32;
  v33 = v5;
  v9 = a1[5];
  *(v1 + 80) = v34;
  *(v1 + 96) = v9;
  *(v1 + 16) = v7;
  *(v1 + 32) = v6;
  v36 = *(a1 + 12);
  v10 = MEMORY[0x1E69E7CC8];
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 136) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + 140) = -1;
  *(v1 + 144) = v11;
  *(v1 + 152) = 0;
  *(v1 + 160) = v11;
  *(v1 + 168) = 1;
  *(v1 + 112) = *(a1 + 12);
  *(v1 + 120) = v10;
  *(v1 + 48) = v8;
  *(v1 + 64) = v2;
  v12 = v30;
  v13 = v31;
  v14 = *(*v1 + 240);
  v15 = outlined init with copy of GraphHost.Data(&v30, v29 + 1);
  v14(v29, v15);
  v16 = v29[0];
  v17 = one-time initialization token for enabledCategories;
  v18 = v12;
  v19 = *(&v12 + 1);
  v20 = v13;
  if (v17 != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && (v21 = static CustomEventTrace.recorder) != 0)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16707;
    v22 = *(v21 + 16);
    BYTE1(v29[0]) = v16;
    *(&v29[1] + 1) = v12;
    *(&v29[2] + 1) = v19;
    *(&v29[3] + 1) = v20;
    type metadata accessor for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef)();

    v23 = v22;
    AGGraphAddTraceEvent();
    outlined destroy of GraphHost.Data(&v30);
  }

  else
  {
    outlined destroy of GraphHost.Data(&v30);
  }

  swift_beginAccess();
  v24 = *(v1 + 16);
  if (!v24)
  {
    goto LABEL_13;
  }

  swift_allocObject();
  swift_weakInit();

  v25 = v24;
  AGGraphSetUpdateCallback();

  v26 = *(v1 + 16);
  if (!v26)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  swift_allocObject();
  swift_weakInit();
  v27 = v26;

  AGGraphSetInvalidationCallback();

  if (!*(v1 + 16))
  {
    goto LABEL_15;
  }

  AGGraphSetContext();
  return v1;
}

uint64_t sub_18D01EC88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t destroy for GraphHost.Data(id *a1)
{
}

uint64_t one-time initialization function for v6()
{
  result = swiftUI_v6_0_os_versions();
  static Semantics.v6 = HIDWORD(result);
  return result;
}

uint64_t type metadata accessor for AnyTrackedValue(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t ViewGraphHost.__allocating_init<A>(rootViewType:viewDefinition:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 53;
  v8 = swift_allocObject();
  ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)(a1, &v10, a2, a3, a4);
  return v8;
}

uint64_t ViewGraph.init<A>(rootViewType:requestedOutputs:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  *(v4 + 208) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 1;
  v9 = *MEMORY[0x1E698D3F8];
  *(v4 + 276) = *MEMORY[0x1E698D3F8];
  *(v4 + 296) = v9;
  *(v4 + 300) = v9;
  *(v4 + 304) = v9;
  *(v4 + 312) = 0;
  *(v4 + 332) = 0;
  *(v4 + 340) = 0;
  *(v4 + 324) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v4 + 352) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13_ProposedSizeV_AC26ViewGraphGeometryObserversV8Observer33_4717DAAA68693648A460F26E88C7D804LLCyAC0F16ThatFitsMeasurerV_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v4 + 360) = 0;
  *(v4 + 362) = 0;
  *(v4 + 368) = 0;
  *(v4 + 376) = 0x7FF0000000000000;
  *(v4 + 384) = 0x7FF0000000000000;
  v11 = MEMORY[0x1E69E7CD0];
  *(v4 + 392) = 0;
  *(v4 + 400) = v11;
  *(v4 + 408) = 0x7FF0000000000000;
  *(v4 + 416) = 0x7FF0000000000000;
  *(v4 + 424) = 0;
  *(v4 + 432) = v11;
  swift_weakInit();
  *(v4 + 448) = v10;
  *(v4 + 176) = a1;
  *(v4 + 361) = v8;
  GraphHost.Data.init()(v45);
  v36 = AGSubgraphGetCurrent();
  v12 = *(&v45[0] + 1);
  v13 = AGSubgraphSetCurrent();
  if (one-time initialization token for enabledCategories != -1)
  {
    v13 = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_25;
  }

  v35 = a4;
  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
    *&v38 = v12;
    type metadata accessor for AGSubgraphRef(0);
    v13 = AGGraphAddTraceEvent();
  }

  MEMORY[0x1EEE9AC00](v13);
  v34[2] = a3;
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, partial apply for closure #1 in Attribute.init(type:), v34, MEMORY[0x1E698D3D0], MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    goto LABEL_40;
  }

  v16 = v38;
  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    LOWORD(v38) = 1;
    DWORD1(v38) = v16;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)();
    AGGraphAddTraceEvent();
  }

  *(v4 + 236) = v16;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RootTransform and conformance RootTransform();
  v17 = Attribute.init<A>(body:value:flags:update:)();
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    goto LABEL_41;
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    LOWORD(v38) = 4;
    DWORD1(v38) = v17;
    v18 = v17;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)();
    AGGraphAddTraceEvent();
    v17 = v18;
  }

  *(v4 + 240) = v17;
  *(v4 + 244) = v17;
  type metadata accessor for CGPoint(0);
  v38 = 0uLL;
  *(v4 + 248) = Attribute.init<A>(body:value:flags:update:)();
  v38 = 0u;
  v39 = 0u;
  v19 = Attribute.init<A>(body:value:flags:update:)();
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    goto LABEL_42;
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    LOWORD(v38) = 8;
    DWORD1(v38) = v19;
    v20 = v19;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)();
    AGGraphAddTraceEvent();
    v19 = v20;
  }

  *(v4 + 252) = v19;
  v21 = v9;
  if ((v8 & 0x10) != 0)
  {
    v38 = 0u;
    v39 = 0u;
    v21 = Attribute.init<A>(body:value:flags:update:)();
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
      goto LABEL_45;
    }

    if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
      LOWORD(v38) = 32;
      DWORD1(v38) = v21;
      v22 = v21;
      type metadata accessor for (ViewGraphRootValues, AGAttribute)();
      AGGraphAddTraceEvent();
      v21 = v22;
    }
  }

  *(v4 + 276) = v21;
  if (one-time initialization token for v7 != -1)
  {
    goto LABEL_43;
  }

LABEL_25:
  LODWORD(v23) = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    goto LABEL_31;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_32:
    *&v38 = v10;
    *(&v38 + 1) = 1;
    v25 = Attribute.init<A>(body:value:flags:update:)();

    outlined consume of SafeAreaInsets.OptionalValue?(1);
    v26 = static CustomEventTrace.enabledCategories;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x44uLL)
    {
      goto LABEL_33;
    }

LABEL_45:
    __break(1u);
  }

  while (1)
  {
    v37[0] = 1;
    _s7SwiftUI12GesturePhaseOyytGMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, &type metadata for SafeAreaInsets.Element, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18DDA6EB0;
    v24 = v37[0];
    *(v23 + 32) = 1;
    *(v23 + 40) = 0u;
    *(v23 + 56) = 0u;
    *(v23 + 72) = 0u;
    *(v23 + 88) = 0u;
    *(v23 + 104) = 0u;
    *(v23 + 120) = 0u;
    *(v23 + 136) = v24;
    outlined consume of SafeAreaInsets.OptionalValue?(1);
    *&v38 = v23;
    *(&v38 + 1) = 1;
    v25 = Attribute.init<A>(body:value:flags:update:)();

    outlined consume of SafeAreaInsets.OptionalValue?(1);
    v26 = static CustomEventTrace.enabledCategories;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x44uLL)
    {
      break;
    }

    __break(1u);
LABEL_31:
    if (static Semantics.forced >= v23)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  if (v26[99] == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    LOWORD(v38) = 16;
    DWORD1(v38) = v25;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)();
    AGGraphAddTraceEvent();
  }

  *(v4 + 256) = v25;
  v38 = 0u;
  v39 = 0u;
  LOBYTE(v40) = 2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RootContainerShape and conformance RootContainerShape();
  *(v4 + 260) = Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v38 = static LayoutComputer.defaultValue;
  *(v4 + 320) = Attribute.init<A>(body:value:flags:update:)();
  *&v38 = 0;
  *(v4 + 280) = Attribute.init<A>(body:value:flags:update:)();
  *&v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v10);
  type metadata accessor for [EventID : EventType]();
  v27 = Attribute.init<A>(body:value:flags:update:)();

  *(v4 + 284) = v27;
  *&v38 = 1;
  *(v4 + 288) = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v38) = 0;
  *(v4 + 292) = Attribute.init<A>(body:value:flags:update:)();
  *&v38 = v10;
  *(v4 + 308) = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v38) = v9;
  *(&v38 + 4) = *(v4 + 252);
  HIDWORD(v38) = v9;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RootGeometry and conformance RootGeometry();
  *(v4 + 264) = Attribute.init<A>(body:value:flags:update:)();
  *(v4 + 268) = AGGraphCreateOffsetAttribute2();
  *(v4 + 272) = AGGraphCreateOffsetAttribute2();
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = a3;
  *(v28 + 24) = v29;
  v30 = vrev64q_s32(*(v4 + 248));
  v30.i64[0] = *(v4 + 248);
  *(v28 + 32) = v30;
  *(v4 + 184) = partial apply for closure #1 in ViewGraph.init<A>(rootViewType:requestedOutputs:);
  *(v4 + 192) = v28;
  v42 = v45[4];
  v43 = v45[5];
  v44 = v46;
  v38 = v45[0];
  v39 = v45[1];
  v40 = v45[2];
  v41 = v45[3];
  outlined init with copy of GraphHost.Data(v45, v37);
  v31 = GraphHost.init(data:)(&v38);

  v32 = v36;
  $defer #1 () in GestureGraph.init(rootResponder:)();

  outlined destroy of GraphHost.Data(v45);

  return v31;
}

uint64_t partial apply for closure #1 in Attribute.init(type:)@<X0>(_DWORD *a1@<X8>)
{
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RootTransform and conformance RootTransform()
{
  result = lazy protocol witness table cache variable for type RootTransform and conformance RootTransform;
  if (!lazy protocol witness table cache variable for type RootTransform and conformance RootTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootTransform and conformance RootTransform);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _SafeAreaInsetsModifier(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;

  if (v3 != 1)
  {
  }

  a1[1] = v3;
  return a1;
}

uint64_t outlined consume of SafeAreaInsets.OptionalValue?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void *sub_18D01FBCC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<EventID, EventType>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 56)
    {
      outlined init with copy of (ObjectIdentifier, ScrollStateRequest)(i, &v12, &lazy cache variable for type metadata for (EventID, EventType), &lazy cache variable for type metadata for EventType);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 16 * result);
      v8 = v13;
      *v7 = v12;
      v7[1] = v8;
      result = outlined init with take of AnyTrackedValue(&v14, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t type metadata completion function for ColorBox()
{
  result = swift_checkMetadataState();
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

void type metadata accessor for LayoutEngineBox<LayoutComputer.DefaultEngine>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LayoutComputer.DefaultEngine, &protocol witness table for LayoutComputer.DefaultEngine);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EventID and conformance EventID()
{
  result = lazy protocol witness table cache variable for type EventID and conformance EventID;
  if (!lazy protocol witness table cache variable for type EventID and conformance EventID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventID and conformance EventID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventID and conformance EventID;
  if (!lazy protocol witness table cache variable for type EventID and conformance EventID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventID and conformance EventID);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type RootGeometry and conformance RootGeometry()
{
  result = lazy protocol witness table cache variable for type RootGeometry and conformance RootGeometry;
  if (!lazy protocol witness table cache variable for type RootGeometry and conformance RootGeometry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootGeometry and conformance RootGeometry);
  }

  return result;
}

uint64_t one-time initialization function for defaultValue()
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for LayoutEngineBox<LayoutComputer.DefaultEngine>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LayoutComputer.DefaultEngine>, type metadata accessor for TracingLayoutEngineBox);
    v0 = swift_allocObject();
    result = AGGraphGetCurrentAttribute();
    v2 = result == *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      v3 = 0;
    }

    else
    {
      v3 = result;
    }

    *(v0 + 16) = v3;
    *(v0 + 20) = v2;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<LayoutComputer.DefaultEngine>(0, &lazy cache variable for type metadata for LayoutEngineBox<LayoutComputer.DefaultEngine>, type metadata accessor for LayoutEngineBox);
    result = swift_allocObject();
    v0 = result;
  }

  static LayoutComputer.defaultValue = v0;
  unk_1ED53B850 = 0;
  return result;
}

{
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  static TextSizingKey.defaultValue = static Text.Sizing.standard;
  qword_1ED537550 = qword_1ED5372E8;
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = static ContentTransition.default;
  v1 = dword_1ED536998 | (byte_1ED53699C << 32);
  byte_1ED53661F = 0;
  off_1ED536620 = 0;
  dword_1ED536628 = 0;
  static ContentTransition.State.defaultValue = static ContentTransition.default;
  byte_1ED53661C = byte_1ED53699C;
  dword_1ED536618 = dword_1ED536998;
  v2 = byte_1ED53699D;
  byte_1ED53661D = byte_1ED53699D;
  byte_1ED53661E = byte_1ED53699E;
  outlined copy of ContentTransition.Storage(static ContentTransition.default, v1, byte_1ED53699D);
  outlined copy of ContentTransition.Storage(v0, v1, v2);
  outlined consume of ContentTransition.Storage(v0, v1, v2);
  byte_1ED53661F = 0;
  off_1ED536620 = 0;

  dword_1ED536628 = 0;
  return result;
}

{
  if (one-time initialization token for none != -1)
  {
    result = swift_once();
  }

  static SymbolVariantsKey.defaultValue = static SymbolVariants.none;
  return result;
}

{
  result = type metadata accessor for CorePlatformProvidersDefinition();
  static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue = result;
  return result;
}

{
  v0 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TypesettingConfiguration();
  __swift_allocate_value_buffer(v3, static TypesettingConfigurationKey.defaultValue);
  v4 = __swift_project_value_buffer(v3, static TypesettingConfigurationKey.defaultValue);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static TypesettingLanguage.automatic);
  outlined init with copy of TypesettingConfiguration(v5, v2, type metadata accessor for TypesettingLanguage);
  outlined init with copy of TypesettingConfiguration(v5, v4, type metadata accessor for TypesettingLanguage);
  v6 = v4 + *(v3 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  result = outlined assign with take of TypesettingLanguage(v2, v4);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

{
  result = type metadata accessor for CorePlatformProvidersDefinition();
  static _GraphInputs.CorePlatfromProvidersDefinitionKey.defaultValue = result;
  return result;
}

{
  v0 = type metadata accessor for Locale();
  __swift_allocate_value_buffer(v0, static LocaleKey.defaultValue);
  __swift_project_value_buffer(v0, static LocaleKey.defaultValue);
  return Locale.init(identifier:)();
}

uint64_t UnsafeHeterogeneousBuffer.allocate(bytes:)(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 3);
  v4 = *(v1 + 2);
  if (!v3)
  {
    v6 = 0;
    if (v4 >= result)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (__OFADD__(v6, v4))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = UnsafeHeterogeneousBuffer.growBuffer(by:capacity:)(result, v6 + v4);
LABEL_12:
    v8 = *v1;
    if (!*v1)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v2 <= 0x7FFFFFFF)
    {
      v9 = *(v1 + 2);
      v10 = __OFSUB__(v9, v2);
      v11 = v9 - v2;
      if (!v10)
      {
        *(v1 + 2) = v11;
        return v8 + v6;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*v1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*v1 + 8 + v5);
      v5 += v7;
      if (!--v3)
      {
        v5 = 0;
      }

      v6 += v7;
    }

    while (v3);
    if (v4 >= result)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t UnsafeHeterogeneousBuffer.growBuffer(by:capacity:)(uint64_t result, uint64_t a2)
{
  v3 = a2 + result;
  if (__OFADD__(a2, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = a2;
  if (2 * a2 <= 64)
  {
    v5 = 64;
  }

  else
  {
    v5 = 2 * a2;
  }

    ;
  }

  result = swift_slowAlloc();
  v6 = *v2;
  if (*v2)
  {
    v21 = v2;
    v22 = result;
    v20 = v4;
    v7 = *(v2 + 12);
    if (v7)
    {
      v8 = 0;
      v9 = v7 - 1;
      v10 = *v2;
      v11 = result;
      do
      {
        if (v9)
        {
          v8 += *(v6 + v8 + 8);
        }

        else
        {
          v8 = 0;
        }

        v12 = v9 | v8;
        v13 = v10[1];
        v14 = v13;
        *v11 = *v10;
        v11[1] = v13;
        v15 = *v10;
        v23 = v10;
        v24 = v11;
        (*(v15 + 88))(&v24, &v23);
        v10 = (v10 + v14);
        v11 = (v11 + v14);
        --v9;
      }

      while (v12);
    }

    MEMORY[0x193AC4820](v6, -1, -1);
    v4 = v20;
    v2 = v21;
    result = v22;
  }

  *v2 = result;
  v16 = v5 - v4;
  if (v5 - v4 < 0xFFFFFFFF80000000)
  {
    goto LABEL_20;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = *(v2 + 8);
  v18 = __OFADD__(v17, v16);
  v19 = v17 + v16;
  if (!v18)
  {
    *(v2 + 8) = v19;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for LayoutDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EnvironmentValues._set<A>(_:for:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for EnvironmentPropertyKey();

  WitnessTable = swift_getWitnessTable();
  specialized PropertyList.subscript.setter(a1, v4, v4, WitnessTable);
  if (v1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)(v4, v3, *v1, v4);
  }
}

uint64_t EnvironmentValues.subscript.setter(uint64_t a1)
{
  EnvironmentValues.setValue<A>(_:for:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

{
  specialized EnvironmentValues.subscript.setter(a1);

  return swift_unknownObjectRelease();
}

{
  specialized EnvironmentValues.subscript.setter(a1);

  return swift_unknownObjectRelease();
}

{
  specialized EnvironmentValues.subscript.setter(a1);

  return swift_unknownObjectRelease();
}

{
  specialized EnvironmentValues.subscript.setter(a1);

  return swift_unknownObjectRelease();
}

{
  specialized EnvironmentValues.subscript.setter(a1);

  return swift_unknownObjectRelease();
}

uint64_t specialized PropertyList.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{

  closure #1 in PropertyList.subscript.setter(v4, a2, a1, a3, a4);
}

uint64_t closure #1 in PropertyList.subscript.setter(uint64_t *a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v19 - v12;
  v14 = *a1;
  BloomFilter.init(hashValue:)(a2);
  v15 = find1<A>(_:key:filter:)(v14, a2, &v20, a4, a5);
  if (!v15 || (closure #2 in closure #1 in PropertyList.subscript.getter(v15, v13), v16 = (*(a5 + 24))(a3, v13, a4, a5), result = (*(v11 + 8))(v13, AssociatedTypeWitness), (v16 & 1) == 0))
  {
    type metadata accessor for TypedElement();
    v18 = *a1;
    swift_allocObject();

    *a1 = specialized TypedElement.init(value:before:after:)(a3, 0, v18);
  }

  return result;
}

void *find1<A>(_:key:filter:)(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = *a3;
    while (1)
    {
      while ((v5 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      v6 = result[3];
      if (v6)
      {
        v13 = v5;
        v7 = result;
        v8 = a2;
        v9 = a4;
        v10 = a5;
        v11 = find1<A>(_:key:filter:)(v6, a2, &v13);
        a2 = v8;
        a4 = v9;
        a5 = v10;
        v12 = v11;
        result = v7;
        if (v12)
        {
          break;
        }
      }

      if (result[2] != a4)
      {
        result = result[4];
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v12;
  }

  return result;
}

SwiftUI::BloomFilter specialized TypedElement.init(value:before:after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 248);
  v8 = *(*v3 + 232);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v3 + v7, a1, AssociatedTypeWitness);

  return PropertyList.Element.init(keyType:before:after:)(v8, a2, a3);
}

uint64_t EnvironmentValues.appearsActive.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void))
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

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO13AppearsActiveVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO13AppearsActiveVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO13AppearsActiveVG_Tt0B5(void *result, uint64_t a2)
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
        active = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO13AppearsActiveVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = active;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for EnvironmentObject(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t EnvironmentValues.colorScheme.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019ExplicitColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v4, *v2);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019ColorSchemeContrastF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ColorSchemeContrastKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019ColorSchemeContrastV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019ColorSchemeContrastV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019ColorSchemeContrastV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ColorSchemeContrastKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ColorSchemeContrastKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ColorSchemeContrastKey>>);
    }
  }
}

uint64_t $defer #1 () in GestureGraph.init(rootResponder:)()
{
  result = AGSubgraphSetCurrent();
  if (one-time initialization token for enabledCategories != -1)
  {
    result = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17219;
      type metadata accessor for AGSubgraphRef(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

Swift::Void __swiftcall ViewGraphHost.setUp()()
{
  v1 = *(v0 + 88);
  swift_weakInit();
  swift_beginAccess();
  type metadata accessor for ViewGraphFeatureBuffer._VTable<ViewGraphHost.GraphFeature>(0, &lazy cache variable for type metadata for ViewGraphFeatureBuffer._VTable<ViewGraphHost.GraphFeature>);
  v3 = v2;
  v4 = UnsafeHeterogeneousBuffer.allocate(bytes:)(32);
  *v4 = v3;
  v4[1] = 32;
  outlined init with copy of ViewGraphHost.GraphFeature();
  v5 = *(v1 + 216);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v4 - v5;
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v1 + 228);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v1 + 228) = v9;
  swift_endAccess();
  outlined destroy of weak AnyGestureResponder?(v17);
  swift_beginAccess();
  type metadata accessor for ViewGraphFeatureBuffer._VTable<ViewGraphHost.GraphFeature>(0, &lazy cache variable for type metadata for ViewGraphFeatureBuffer._VTable<HitTestBindingFeature>);
  v11 = v10;
  v12 = UnsafeHeterogeneousBuffer.allocate(bytes:)(16);
  *v12 = v11;
  v12[1] = 16;
  v13 = *(v1 + 216);
  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = v12 - v13;
  if (v14 < 0xFFFFFFFF80000000)
  {
    goto LABEL_15;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v1 + 228);
  v8 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (v8)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + 228) = v16;
  swift_endAccess();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    ViewGraphRootValueUpdater.initializeViewGraph()();
    swift_unknownObjectRelease();
  }

  ViewGraphHost.setupInitialInheritedEnvironment()();
}

void type metadata accessor for ViewGraphFeatureBuffer._VTable<ViewGraphHost.GraphFeature>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ViewGraphFeatureBuffer._VTable();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t ViewGraphHost.setContainerShape(_:)()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  ViewGraph.setContainerShape(_:)();
  static Update.end()();

  return _MovableLockUnlock(v0);
}

uint64_t ViewGraphHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner);
  if (result == a1)
  {
    v9 = v3;
    v10 = &protocol witness table for ViewGraphHost;
    v3 = *(a1 - 8);
    if (*(v3 + 64) == 16)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    v9 = *(v3 + 96);
    v3 = *(a1 - 8);
    if (*(v3 + 64) != 8)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_10:
    (*(v3 + 16))(a2, &v9, a1);
    return (*(v3 + 56))(a2, 0, 1, a1);
  }

  result = type metadata accessor for DisplayList.ViewRenderer();
  if (result == a1)
  {
    goto LABEL_9;
  }

  if (type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderDelegate) == a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v3 + 40);
      v9 = result;
      v10 = v8;
      v3 = *(a1 - 8);
      if (*(v3 + 64) == 16)
      {
        (*(v3 + 16))(a2, &v9, a1);
        swift_unknownObjectRelease();
        return (*(v3 + 56))(a2, 0, 1, a1);
      }

      goto LABEL_21;
    }
  }

  if (type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderHost) == a1)
  {
    v3 = *(v3 + 88);
    result = type metadata accessor for ViewGraph();
    v11 = result;
    v12 = &protocol witness table for ViewGraph;
    v9 = v3;
    v6 = *(a1 - 8);
    if (*(v6 + 64) == 40)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for RootTransformProvider);
    if (result != a1)
    {
      return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
    }
  }

  v11 = v6;
  v12 = &protocol witness table for ViewGraphHost;
  v9 = v3;
  v6 = *(a1 - 8);
  if (*(v6 + 64) != 40)
  {
LABEL_22:
    __break(1u);
    return result;
  }

LABEL_18:
  (*(v6 + 16))(a2, &v9, a1);

  __swift_destroy_boxed_opaque_existential_1(&v9);
  return (*(v6 + 56))(a2, 0, 1, a1);
}

uint64_t ViewGraphHost.setupInitialInheritedEnvironment()()
{
  result = swift_beginAccess();
  v2 = static RepresentableContextValues.current;
  if (static RepresentableContextValues.current != 1)
  {
    v3 = qword_1ED527ED0;
    v4 = qword_1ED527ED8;
    v5 = byte_1ED527EE0;
    if (byte_1ED527EE0)
    {
      v6 = *(&static RepresentableContextValues.current + 1);

      outlined copy of RepresentableContextValues.EnvironmentStorage(v3, v4, 1);
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      v7 = static Update._lock;
      _MovableLockLock(static Update._lock);
      specialized static Update.begin()();
      InputValue = AGGraphGetInputValue();
      v9 = *InputValue;
      v10 = InputValue[1];

      static Update.end()();
      _MovableLockUnlock(v7);
      outlined consume of RepresentableContextValues?(v2, v6, v3, v4, v5);
      v3 = v9;
      v4 = v10;
    }

    else
    {
      outlined copy of RepresentableContextValues.EnvironmentStorage(qword_1ED527ED0, qword_1ED527ED8, 0);
    }

    swift_beginAccess();
    v11 = *(v0 + 72);
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    return outlined consume of EnvironmentValues?(v11);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*a1) || (type metadata accessor for CorePlatformProvidersDefinition.Type(), result = AGCompareValues(), !result))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t EnvironmentValues.platformProvidersDefinition.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE031CorePlatfromProvidersDefinitionK033_C648E6A51A5817691B7DBFA00A618C21LLVG_Ttg5(v4, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>);
    }
  }
}

uint64_t EnvironmentValues.hasSystemOpenURLAction.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v4, *v2);
  }
}

uint64_t static OpenURLAction.defaultAction.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = static OpenURLAction.defaultAction;
  v3 = qword_1ED538190;
  v4 = unk_1ED538198;
  *a1 = static OpenURLAction.defaultAction;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = word_1ED5381A0;
  *(a1 + 32) = word_1ED5381A0;
  return outlined copy of OpenURLAction?(v2, *(&v2 + 1), v3, v4, v5);
}

uint64_t outlined copy of OpenURLAction?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of OpenURLAction.Handler(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t static OpenURLAction.defaultAction.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = static OpenURLAction.defaultAction;
  v4 = qword_1ED538190;
  v5 = unk_1ED538198;
  v6 = *(a1 + 16);
  static OpenURLAction.defaultAction = *a1;
  *&qword_1ED538190 = v6;
  v7 = word_1ED5381A0;
  word_1ED5381A0 = v2;
  return outlined consume of OpenURLAction?(v3, *(&v3 + 1), v4, v5, v7);
}

uint64_t outlined consume of OpenURLAction?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of OpenURLAction.Handler(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t static OpenURLAction.defaultSensitiveAction.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = static OpenURLAction.defaultSensitiveAction;
  v4 = qword_1ED537C40;
  v5 = unk_1ED537C48;
  v6 = *(a1 + 16);
  static OpenURLAction.defaultSensitiveAction = *a1;
  *&qword_1ED537C40 = v6;
  v7 = word_1ED537C50;
  word_1ED537C50 = v2;
  return outlined consume of OpenURLAction?(v3, *(&v3 + 1), v4, v5, v7);
}

uint64_t AnyInterfaceIdiom.init<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  (*(*(a1 - 8) + 8))();
  result = type metadata accessor for InterfaceIdiomBox();
  *a2 = result;
  a2[1] = &protocol witness table for InterfaceIdiomBox<A>;
  return result;
}

uint64_t static OpenURLAction.defaultSensitiveAction.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = static OpenURLAction.defaultSensitiveAction;
  v3 = qword_1ED537C40;
  v4 = unk_1ED537C48;
  *a1 = static OpenURLAction.defaultSensitiveAction;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = word_1ED537C50;
  *(a1 + 32) = word_1ED537C50;
  return outlined copy of OpenURLAction?(v2, *(&v2 + 1), v3, v4, v5);
}

void *one-time initialization function for shared()
{
  v0 = _initializeCoreGlue2();
  type metadata accessor for CoreGlue2();
  result = swift_dynamicCastClassUnconditional();
  static CoreGlue2.shared = result;
  return result;
}

{
  type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>();
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Font.FontCache.shared, 0);
  static Font.FontCache.shared = result;
  return result;
}

id @objc CoreGlue2.init()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *__getSwiftUIGlue2ClassSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SwiftUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SwiftUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7242128;
    v7 = 0;
    SwiftUILibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SwiftUILibraryCore_frameworkLibrary;
    if (SwiftUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SwiftUILibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SwiftUIGlue2Class");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSwiftUIGlue2ClassSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _initializeCoreGlue2()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSwiftUIGlue2ClassSymbolLoc_ptr;
  v8 = getSwiftUIGlue2ClassSymbolLoc_ptr;
  if (!getSwiftUIGlue2ClassSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getSwiftUIGlue2ClassSymbolLoc_block_invoke;
    v4[3] = &unk_1E7242108;
    v4[4] = &v5;
    __getSwiftUIGlue2ClassSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = _initializeCoreGlue2_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v0();
  v1 = objc_alloc_init(objc_claimAutoreleasedReturnValue());

  return v1;
}

uint64_t static Update.dispatchImmediately<A>(reason:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  specialized static Update.begin()();
  v3 = static Update.dispatchDepth;
  static Update.dispatchDepth = static Update.depth;
  swift_beginAccess();
  v4 = static Update.Action.nextActionID;
  atomic_fetch_add_explicit(&static Update.Action.nextActionID, 2u, memory_order_relaxed);
  v5 = swift_endAccess();
  if (one-time initialization token for enabledCategories != -1)
  {
    v5 = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
    type metadata accessor for (UInt32, UInt32?)();
    v5 = AGGraphAddTraceEvent();
  }

  a2(v5);
  $defer #3 <A>() in static Update.dispatchImmediately<A>(reason:_:)((v4 >> 1) + 1);
  static Update.dispatchDepth = v3;
  return static Update.end()();
}

Swift::Void __swiftcall GraphHost.instantiate()()
{
  v1 = v0;
  v2 = swift_beginAccess();
  if ((v0[16] & 1) == 0)
  {
    if ((*(*v0 + 24))(v2))
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(_ViewInputs.base.modify, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v6 = one-time initialization token for enabledCategories;
    v7 = v1[4];
    v8 = v7;
    if (v6 != -1)
    {
      v7 = swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 99) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
        type metadata accessor for AGSubgraphRef(0);
        v7 = AGGraphAddTraceEvent();
      }
    }

    (*(*v1 + 26))(v7);
    specialized $defer #1 <A>() in static CustomEventTrace.instantiate<A>(root:closure:)(v8);

    *(v1 + 128) = 1;
  }
}

uint64_t initializeWithCopy for _GraphInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t _GraphInputs.environment.setter(int a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 256;
  *(v5 + 88) = v4;

  *(v1 + 16) = v5;
  v7 = *(v1 + 32);
  if ((v7 & 0x20) == 0)
  {
    *(v1 + 32) = v7 | 0x20;
  }

  return result;
}

uint64_t type metadata completion function for Pair()
{
  result = swift_checkMetadataState();
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

uint64_t EnvironmentValues.init()@<X0>(uint64_t *a1@<X8>)
{
  v6 = 0;
  v7 = 0;
  swift_beginAccess();
  if (static ViewGraphHost.isDefaultEnvironmentConfigured == 1)
  {
    if (one-time initialization token for _defaultEnvironment != -1)
    {
      swift_once();
    }

    result = static ViewGraphHost._defaultEnvironment;
    if (static ViewGraphHost._defaultEnvironment)
    {
      v3 = *(static ViewGraphHost._defaultEnvironment + 64);
      if (v3)
      {

        v3 = 0;
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
    v5 = static CoreGlue2.shared;
    v4(&v6);

    result = v6;
    v3 = v7;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata completion function for JSONCodable()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _ConditionalContent.Storage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t static CustomEventTrace.instantiateEnd(_:)(uint64_t a1)
{

  return static CustomEventTrace.instantiateBegin(_:)(a1, 67);
}

uint64_t type metadata completion function for _ConditionalContent()
{
  result = type metadata accessor for _ConditionalContent.Storage();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for SimultaneousGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t destroy for SimultaneousGesture(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t type metadata completion function for State()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static CustomEventTrace.instantiateBegin(_:)(uint64_t result, char a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v3 = result;
    v4 = a2;
    swift_once();
    a2 = v4;
    result = v3;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v2 = *(static CustomEventTrace.recorder + 24);
      *(v2 + 4) = 67;
      *(v2 + 5) = a2;
      type metadata accessor for AGSubgraphRef(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t PropertyList.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  specialized PropertyList.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t type metadata completion function for _EnvironmentKeyWritingModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Environment()
{
  result = type metadata accessor for Environment.Content();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Environment.Content()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for DynamicBody()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *result;
  v11 = *a2;
  if (*(result + 16))
  {
    if (*(*(result + 8) + 16))
    {
      MEMORY[0x1EEE9AC00](result);
      v18[2] = a5;
      v19 = v11;
      v20 = a3;
      v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg5(partial apply for closure #1 in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:), v18, v12);
      project #1 <A><A1>(type:) in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(v10, v6, v13, a4);
    }
  }

  else
  {
    v14 = *(v10 + 16);
    if (v14)
    {
      v15 = (v10 + 48);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v15 += 4;
        v21[0] = v11;
        result = (*(v16 + 8))(v6, v21, v17 + a4, a3, a5);
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)@<X0>(_DWORD *a1@<X8>)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

uint64_t closure #1 in static DynamicPropertyCache.fields(of:)(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = swift_conformsToProtocol2();
  if (v8 && a3)
  {
    v9 = v8;
    v10 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      *a4 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      *a4 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[32 * v13];
    *(v14 + 4) = a3;
    *(v14 + 5) = v9;
    *(v14 + 6) = a2;
    *(v14 + 7) = a1;
  }

  return 1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3 & 1;
    *(v24 + 20) = HIDWORD(a3);

    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a4, a1, a2, a3 & 0xFFFFFFFF00000001, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a5 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a4, v25);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v25, a1, a2, a3, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v6;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 24 * v14);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;

  return swift_unknownObjectRelease();
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  *(v6 + 20) = HIDWORD(a5);
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _DictionaryStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t project #1 <A><A1>(flags:) in closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a4;
  v56 = a5;
  v60 = a1;
  v61 = a2;
  v53 = a8;
  v54 = a9;
  v63[0] = a4;
  v63[1] = a5;
  v64 = a6;
  v67 = HIBYTE(a6);
  v66 = HIDWORD(a6) >> 8;
  v65 = a6 >> 8;
  v68 = a10;
  v69 = a11;
  v70 = a12;
  v71 = a13;
  v14 = type metadata accessor for StaticBody();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v49 - v17;
  v18 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a10;
  v69 = a11;
  v57 = a13;
  v58 = a11;
  v70 = a12;
  v71 = a13;
  v22 = type metadata accessor for DynamicBody();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v49 - v27;
  v59 = a7;
  v62 = a7;
  outlined copy of DynamicPropertyCache.Fields.Layout();
  v55 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = v53;
  v31 = _DynamicPropertyBuffer.init<A>(fields:container:inputs:)(v63, &v62, v53, AssociatedTypeWitness, &v68);
  v32 = v68;
  v33 = v69;
  v56 = HIDWORD(v69);
  if (HIDWORD(v69))
  {
    (*(v18 + 16))(v21, v54, a10, v31);
    v34 = *(v30 + 24);
    v68 = v32;
    v35 = v56;
    v69 = __PAIR64__(v56, v33);
    v36 = DynamicBody.init(accessor:container:phase:links:resetSeed:)(v21, v59, v34, &v68, 0, a10, v28);
    (*(v23 + 16))(v25, v28, v22, v36);
    v37 = swift_getAssociatedTypeWitness();
    WitnessTable = swift_getWitnessTable();
    _GraphValue.init<A>(_:)(v25, v37, v22, WitnessTable, v60);
    result = (*(v23 + 8))(v28, v22);
    v40 = v33 | (v35 << 32);
    v41 = v35;
  }

  else
  {
    v69 = v69;
    _DynamicPropertyBuffer.destroy()();
    (*(v18 + 16))(v21, v54, a10);
    v42 = v50;
    (*(v18 + 32))(v50, v21, a10);
    v68 = a10;
    v69 = v58;
    v70 = v55;
    v71 = v57;
    *&v42[*(type metadata accessor for StaticBody() + 52)] = v59;
    v44 = v51;
    v43 = v52;
    v45 = v49;
    (*(v51 + 16))(v49, v42, v52);
    v46 = swift_getAssociatedTypeWitness();
    v47 = swift_getWitnessTable();
    _GraphValue.init<A>(_:)(v45, v46, v43, v47, v60);
    result = (*(v44 + 8))(v42, v43);
    v32 = 0;
    v40 = 0;
    v41 = v56;
  }

  v48 = v61;
  *v61 = v32;
  v48[1] = v40;
  *(v48 + 16) = v41 == 0;
  return result;
}

uint64_t closure #1 in BodyAccessor.makeBody(container:inputs:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if ((a4 & 0x100000000) != 0)
  {
    return project #1 <A><A1>(flags:) in closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(a9, (a9 + 8), &type metadata for AsyncThreadFlags, a2, a3, a4 & 0xFFFFFFFF00000001, a5, a1, a6, a7, &type metadata for AsyncThreadFlags, a8, &protocol witness table for AsyncThreadFlags);
  }

  else
  {
    return project #1 <A><A1>(flags:) in closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(a9, (a9 + 8), &type metadata for MainThreadFlags, a2, a3, a4 & 0xFFFFFFFE00000001, a5, a1, a6, a7, &type metadata for MainThreadFlags, a8, &protocol witness table for MainThreadFlags);
  }
}

uint64_t type metadata completion function for Box()
{
  result = swift_checkMetadataState();
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

uint64_t type metadata completion function for StaticBody()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static DynamicPropertyCache.fields(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = static DynamicPropertyCache.cache;
  swift_beginAccess();
  v5 = v4[2];
  if (*(v5 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(v5 + 56) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 20);
      swift_endAccess();
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = v11;
      *(a2 + 20) = v12;
      return outlined copy of DynamicPropertyCache.Fields.Layout();
    }
  }

  swift_endAccess();
  Kind = AGTypeGetKind();
  v15 = MEMORY[0x1E69E7CC0];
  if ((Kind - 3) < 2)
  {
    v28 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](Kind);
    AGTypeApplyFields2();
    DynamicPropertyCache.Fields.init(_:)(a1, v28, 1, v30);
    v15 = v30[0];
    v19 = v30[1];
    v20 = v31;
    v17 = v32;
    goto LABEL_17;
  }

  if (Kind == 5 || Kind == 2)
  {
    v30[0] = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](Kind);
    AGTypeApplyFields2();
    v15 = v30[0];
    v16 = *(v30[0] + 16);
    if (v16)
    {

      LODWORD(v17) = 0;
      v18 = v30[0] + 40;
      do
      {
        v17 = (*(*v18 + 16))() | v17;
        v18 += 32;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v20 = 0;
    v19 = 0;
LABEL_17:
    if ((~v17 & 3) == 0)
    {
      static os_log_type_t.fault.getter();
      if (one-time initialization token for runtimeIssuesLog != -1)
      {
        swift_once();
      }

      type metadata accessor for _ContiguousArrayStorage<CVarArg>();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_18DDA6EB0;
      v22 = a1;
      v23 = _typeName(_:qualified:)();
      v25 = v24;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v23;
      *(v21 + 40) = v25;
      a1 = v22;
      os_log(_:dso:log:_:_:)();

      v17 = v17 & 0xFFFFFFFE;
    }

    goto LABEL_21;
  }

  v20 = 0;
  v19 = 0;
  v17 = 0;
LABEL_21:
  v26 = static DynamicPropertyCache.cache;
  swift_beginAccess();

  outlined copy of DynamicPropertyCache.Fields.Layout();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v26[2];
  v26[2] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v19, v20 | (v17 << 32), a1, isUniquelyReferenced_nonNull_native);
  v26[2] = v29;
  swift_endAccess();

  *a2 = v15;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;
  *(a2 + 20) = v17;
  return result;
}

uint64_t BodyAccessor.makeBody(container:inputs:fields:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == MEMORY[0x1E69E73E0])
  {
    _StringGuts.grow(_:)(29);
    swift_getAssociatedTypeWitness();
    _typeName(_:qualified:)();

    MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v22[2] = a6;
    v22[3] = a7;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v7;
    type metadata accessor for _GraphValue();
    type metadata accessor for _DynamicPropertyBuffer?(255, &lazy cache variable for type metadata for _DynamicPropertyBuffer?, &type metadata for _DynamicPropertyBuffer, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    result = _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a4, partial apply for closure #1 in BodyAccessor.makeBody(container:inputs:fields:), v22, &type metadata for _GraphInputs, MEMORY[0x1E69E73E0], TupleTypeMetadata2, MEMORY[0x1E69E7410], v19);
    v21 = v30;
    *a1 = v28;
    *a2 = v29;
    *(a2 + 16) = v21;
  }

  return result;
}

uint64_t _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void type metadata accessor for _DynamicPropertyBuffer?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, DynamicPropertyCache.Fields>);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v37 = *(v22 + 20);
      if ((v36 & 1) == 0)
      {
        outlined copy of DynamicPropertyCache.Fields.Layout();
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v21);
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 20) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ForwardedEventDispatcher>, &lazy cache variable for type metadata for ForwardedEventDispatcher, &protocol descriptor for ForwardedEventDispatcher, outlined init with take of _ViewList_Elements);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<ConstantKey, AGAttribute>, type metadata accessor for AGAttribute, lazy protocol witness table accessor for type ConstantKey and conformance ConstantKey);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v24 = *(*(v5 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v23);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>, &lazy cache variable for type metadata for TupleTypeDescription<ViewDescriptor>, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v33 = *(v22 + 8);
      if ((a2 & 1) == 0)
      {
        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v23);
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v21);
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, Int>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x193AC1150](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyTrackedValue>, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue, outlined init with take of AnyTrackedValue);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<CFStringRef, Any>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        outlined init with take of Any(v21, v31);
      }

      else
      {
        outlined init with copy of Any(v21, v31);
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Any(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AnyHashable2, WeakBox<AnyLocationBase>>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      if (a2)
      {
        _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v21 + v20, v32, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for [(AbstractHomogeneousCollection, Int)]);
      }

      else
      {
        outlined init with copy of WeakBox<AnyLocationBase>(v21 + v20, v32);
      }

      Hasher.init(_seed:)();
      (*(*v22 + 120))(v31);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v22;
      result = _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v32, *(v7 + 56) + v16, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for [(AbstractHomogeneousCollection, Int)]);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>, &lazy cache variable for type metadata for TupleTypeDescription<StyleContextDescriptor>, &type metadata for StyleContextDescriptor, &protocol witness table for StyleContextDescriptor);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, Any>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        outlined init with take of Any(v21, v31);
      }

      else
      {
        outlined init with copy of Any(v21, v31);
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Any(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 20 * v23;
      v57 = *v24;
      v56 = *(v24 + 8);
      v25 = *(v24 + 16);
      v26 = *(v24 + 17);
      v27 = *(v5 + 56) + (v23 << 7);
      if (v43)
      {
        v45 = *v27;
        v44 = *(v27 + 8);
        v47 = *(v27 + 24);
        v49 = *(v27 + 32);
        v50 = *(v27 + 48);
        v48 = *(v27 + 64);
        v46 = *(v27 + 65);
        v51 = *(v27 + 72);
        v52 = *(v27 + 80);
        v65 = *(v27 + 88);
        v66 = *(v27 + 104);
        v53 = *(v27 + 108);
        v54 = *(v27 + 112);
        v55 = *(v27 + 113);
        v28 = *(v27 + 120);
      }

      else
      {
        v30 = *(v27 + 32);
        v29 = *(v27 + 48);
        v31 = *v27;
        *&v59[16] = *(v27 + 16);
        v60 = v30;
        *v59 = v31;
        v32 = *(v27 + 112);
        v34 = *(v27 + 64);
        v33 = *(v27 + 80);
        *&v63[16] = *(v27 + 96);
        v64 = v32;
        v62 = v34;
        *v63 = v33;
        v61 = v29;
        v28 = *(&v32 + 1);
        v54 = v32;
        v55 = BYTE1(v32);
        v53 = *&v63[28];
        v51 = *(&v34 + 1);
        v52 = v33;
        v49 = v30;
        v50 = v29;
        v48 = v34;
        v46 = BYTE1(v34);
        v47 = *&v59[24];
        v44 = *&v59[8];
        v45 = *v59;
        outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v59, v58);
        v65 = *&v63[8];
        v66 = *&v63[24];
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v57);
      Hasher._combine(_:)(HIDWORD(v57));
      Hasher._combine(_:)(v56);
      Hasher._combine(_:)(HIDWORD(v56));
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      result = Hasher._finalize()();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v56;
        v16 = v57;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v56;
      v16 = v57;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 20 * v15;
      *v18 = v16;
      *(v18 + 8) = v17;
      *(v18 + 16) = v25;
      *(v18 + 17) = v26;
      v19 = *(v7 + 56) + (v15 << 7);
      *v19 = v45;
      *(v19 + 8) = v44;
      *(v19 + 24) = v47;
      *(v19 + 32) = v49;
      *(v19 + 48) = v50;
      *(v19 + 64) = v48;
      *(v19 + 65) = v46;
      *(v19 + 72) = v51;
      *(v19 + 80) = v52;
      *(v19 + 88) = v65;
      *(v19 + 104) = v66;
      *(v19 + 108) = v53;
      *(v19 + 112) = v54;
      *(v19 + 113) = v55;
      *(v19 + 120) = v28;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero((v5 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<OpaquePointer, DisplayList.ViewUpdater.ViewCache.Key>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 20 * v20;
      v23 = *(v22 + 17);
      v24 = *(v22 + 16);
      v26 = *v22;
      v25 = *(v22 + 8);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v21);
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 20 * v15;
      *v16 = v26;
      *(v16 + 8) = v25;
      *(v16 + 16) = v24;
      *(v16 + 17) = v23;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v8 << 6);
      if (a2)
      {
LABEL_10:
        v19 = *(*(v5 + 48) + 4 * v18);
        v20 = *(v5 + 56) + 40 * v18;
        v38 = *v20;
        v39 = *(v20 + 16);
        v21 = *(v20 + 32);
      }

      else
      {
LABEL_16:
        v19 = *(*(v5 + 48) + 4 * v18);
        v24 = *(v5 + 56) + 40 * v18;
        v25 = *(v24 + 32);
        v26 = *(v24 + 16);
        v35 = *v24;
        v36 = v26;
        v37 = v25;
        outlined init with copy of GlassContainer.ItemData(&v35, &v38);
        v38 = v35;
        v39 = v36;
        v21 = v37;
      }

      v40 = v21;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v19;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v38;
      *(v16 + 16) = v39;
      *(v16 + 32) = v40;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v12 = (v23 - 1) & v23;
        v18 = __clz(__rbit64(v23)) | (v8 << 6);
        if (a2)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyAccessibilityPropertiesEntry>, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry, &protocol descriptor for AnyAccessibilityPropertiesEntry, outlined init with take of _ViewList_Elements);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, _ViewList_ID.Canonical>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v21);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *(v5 + 56) + 40 * v21;
      v24 = *(v22 + 8);
      v25 = *v22;
      v26 = *(v23 + 32);
      v37 = *(v23 + 16);
      v38 = *v23;
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v25);
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v38;
      *(v17 + 16) = v37;
      *(v17 + 32) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Font.RatioKey, CGFloat>, lazy protocol witness table accessor for type Font.RatioKey and conformance Font.RatioKey);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_41:

    goto LABEL_42;
  }

  v35 = a2;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v22 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v25 = v22 | (v8 << 6);
    v26 = (*(v5 + 48) + 2 * v25);
    v27 = v26[1];
    v15 = *v26;
    v36 = *v26;
    v28 = *(*(v5 + 56) + 8 * v25);
    Hasher.init(_seed:)();
    switch(v15)
    {
      case 1:
        v15 = 1;
        goto LABEL_7;
      case 2:
        v15 = 2;
        goto LABEL_7;
      case 3:
        v15 = 3;
        goto LABEL_7;
      case 4:
        v15 = 4;
        goto LABEL_7;
      case 5:
        v15 = 5;
        goto LABEL_7;
      case 6:
        v15 = 6;
        goto LABEL_7;
      case 7:
        v15 = 7;
        goto LABEL_7;
      case 8:
        v15 = 8;
        goto LABEL_7;
      case 9:
        v15 = 9;
        goto LABEL_7;
      case 10:
        v15 = 10;
        goto LABEL_7;
      case 11:
      case 12:
      case 13:
        goto LABEL_45;
      default:
LABEL_7:
        MEMORY[0x193AC11A0](v15);
        MEMORY[0x193AC11A0](v27);
        v16 = Hasher._finalize()();
        v17 = -1 << *(v7 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v14 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v14 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = 0;
          v30 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v30 && (v29 & 1) != 0)
            {
              goto LABEL_44;
            }

            v31 = v19 == v30;
            if (v19 == v30)
            {
              v19 = 0;
            }

            v29 |= v31;
            v32 = *(v14 + 8 * v19);
          }

          while (v32 == -1);
          v20 = __clz(__rbit64(~v32)) + (v19 << 6);
        }

        *(v14 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v21 = (*(v7 + 48) + 2 * v20);
        *v21 = v36;
        v21[1] = v27;
        *(*(v7 + 56) + 8 * v20) = v28;
        ++*(v7 + 16);
        break;
    }
  }

  v23 = v8;
  while (1)
  {
    v8 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      JUMPOUT(0x18D2229D4);
    }

    if (v8 >= v13)
    {
      break;
    }

    v24 = v9[v8];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v12 = (v24 - 1) & v24;
      goto LABEL_17;
    }
  }

  if (v35)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_41;
  }

  v3 = v2;
LABEL_42:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>();
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v15 = v40;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 24 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v44 = *(v23 + 12);
      v43 = *(v23 + 16);
      v45 = *(v23 + 17);
      v26 = *(*(v5 + 56) + 8 * v22);
      if ((v15 & 1) == 0)
      {
        outlined copy of Material.ID(v24, v25);
      }

      Hasher.init(_seed:)();
      v42 = v26;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v29 = 10;
        }

        else if (v24 > 3)
        {
          if (v24 > 5)
          {
            if (v24 == 6)
            {
              v29 = 6;
            }

            else
            {
              v29 = 7;
            }
          }

          else if (v24 == 4)
          {
            v29 = 4;
          }

          else
          {
            v29 = 5;
          }
        }

        else if (v24 > 1)
        {
          if (v24 == 2)
          {
            v29 = 2;
          }

          else
          {
            v29 = 3;
          }
        }

        else
        {
          v29 = v24 != 0;
        }

        MEMORY[0x193AC11A0](v29);
      }

      else if (v25)
      {
        MEMORY[0x193AC11A0](9);
        (*(*v24 + 176))(v46);
      }

      else
      {
        v27 = *(v24 + 48);
        MEMORY[0x193AC11A0](8);
        String.hash(into:)();
        String.hash(into:)();
        if (v27)
        {
          Hasher._combine(_:)(1u);
          v28 = v27;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v5 = v39;
        v15 = v40;
      }

      Hasher._combine(_:)(v44);
      Hasher._combine(_:)(v43);
      MEMORY[0x193AC11A0](v45);
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_58:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
LABEL_7:
      *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v7 + 48) + 24 * v16;
      *v18 = v24;
      *(v18 + 8) = v25;
      *(v18 + 12) = v44;
      *(v18 + 16) = v43;
      *(v18 + 17) = v45;
      *(*(v7 + 56) + 8 * v16) = v17;
      ++*(v7 + 16);
      v12 = v41;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v15 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_56;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_56:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, DisplayList.ViewUpdater.ViewCache.AsyncValues>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, CAPresentationModifier>();
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.CallbackKey, RBDisplayListContents>, type metadata accessor for RBDisplayListContents, lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *(v21 + 4);
      v39 = *v21;
      v23 = *(v21 + 8);
      v38 = *(v21 + 12);
      v37 = *(v21 + 16);
      v24 = *(v21 + 24);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v39);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v38);
      Hasher._combine(_:)(v37);
      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      MEMORY[0x193AC11E0](*&v26);
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v39;
      *(v16 + 4) = v22;
      *(v16 + 8) = v23;
      *(v16 + 12) = v38;
      *(v16 + 16) = v37;
      *(v16 + 24) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, SymbolRenderer.CachedResolvedSymbol>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v42 = *(v24 + 32);
        v40 = v25;
        v41 = v26;
        v27 = *(v5 + 56) + 24 * v23;
        v39 = *v27;
        v28 = *(v27 + 16);
      }

      else
      {
        outlined init with copy of AnyHashable(v24, &v40);
        v29 = *(v5 + 56) + 24 * v23;
        v28 = *(v29 + 16);
        v39 = *v29;
        swift_unknownObjectRetain();
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v40;
      v18 = v41;
      *(v16 + 32) = v42;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = *(v7 + 56) + 24 * v15;
      *v19 = v39;
      *(v19 + 16) = v28;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Int>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
      }

      v26 = *(*(v5 + 56) + 8 * v22);
      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CGFloat, Int>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 48);
      v21 = *(v20 + 8 * v19);
      v22 = *(*(v5 + 56) + 8 * v19);
      if (v21 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = *(v20 + 8 * v19);
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), *&v23);
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ObservationEntry>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ColorCacheKey, NamedColorInfo>, lazy protocol witness table accessor for type ColorCacheKey and conformance ColorCacheKey);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v40 = *v22;
      v41 = v22[1];
      v43 = v22[2];
      v23 = *(v22 + 2);
      v42 = *(v22 + 1);
      v24 = *(v22 + 3);
      v25 = *(v21 + 8 * v20);
      if ((v39 & 1) == 0)
      {
        v26 = v25;

        v27 = v24;
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v40);
      MEMORY[0x193AC11A0](v41);
      MEMORY[0x193AC11A0](v43);
      String.hash(into:)();
      if (v24)
      {
        Hasher._combine(_:)(1u);
        v28 = v24;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v40;
      *(v16 + 1) = v41;
      *(v16 + 2) = v43;
      *(v16 + 8) = v42;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ContentTransition.NamedKey, RBTransition>();
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v49 = result;
  if (*(v5 + 16))
  {
    v44 = v2;
    v45 = v5;
    v7 = 0;
    v8 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = result + 64;
    while (1)
    {
      if (!v11)
      {
        v18 = v7;
        while (1)
        {
          v7 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_56;
          }

          if (v7 >= v12)
          {
            break;
          }

          v19 = v8[v7];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v47 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v46 & 1) == 0)
        {

          v3 = v44;
          goto LABEL_54;
        }

        v43 = 1 << *(v5 + 32);
        v3 = v44;
        if (v43 >= 64)
        {
          bzero(v8, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v43;
        }

        *(v5 + 16) = 0;
        goto LABEL_53;
      }

      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v20 = v17 | (v7 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 10);
      v24 = *(v21 + 8);
      v25 = *(v21 + 11);
      v26 = *(v21 + 12);
      v48 = *(v21 + 13);
      v50 = *(*(v5 + 56) + 8 * v20);
      if ((v46 & 1) == 0)
      {
        v27 = v50;
      }

      v28 = v24 | (v23 << 16);
      Hasher.init(_seed:)();
      v29 = (v22 >> 38) & 3;
      if (!v29)
      {
        break;
      }

      if (v29 == 1)
      {
        MEMORY[0x193AC11A0](6);
        v5 = v45;
        ContentTransition.NumericTextConfiguration.hash(into:)();
LABEL_21:
        v30 = v25;
        v31 = v26;
        goto LABEL_31;
      }

      v30 = v25;
      v32 = *&v28 & 0xFFFFFFLL;
      if (v22 <= 0x8000000001)
      {
        v31 = v26;
        v35 = (v22 ^ 0x8000000000 | v32) != 0;
        goto LABEL_30;
      }

      v31 = v26;
      if (!(v22 ^ 0x8000000002 | v32))
      {
        v35 = 2;
LABEL_30:
        MEMORY[0x193AC11A0](v35);
LABEL_31:
        v33 = v48;
        goto LABEL_32;
      }

      v33 = v48;
      if (v22 ^ 0x8000000003 | v32)
      {
        v34 = 4;
      }

      else
      {
        v34 = 3;
      }

      MEMORY[0x193AC11A0](v34);
LABEL_32:
      if (v30 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v30 & 1);
      }

      if (v31 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v31);
      }

      Hasher._combine(_:)(v33);
      result = Hasher._finalize()();
      v36 = -1 << *(v49 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v13 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v15 = v28;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v13 + 8 * v38);
          if (v42 != -1)
          {
            v14 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_56:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v37) & ~*(v13 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = *(v49 + 48) + 16 * v14;
      *v16 = v22;
      *(v16 + 10) = BYTE2(v28);
      *(v16 + 8) = v15;
      *(v16 + 11) = v30;
      *(v16 + 12) = v31;
      *(v16 + 13) = v33;
      *(*(v49 + 56) + 8 * v14) = v50;
      ++*(v49 + 16);
      v11 = v47;
    }

    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(v22 & 1);
    goto LABEL_21;
  }

LABEL_53:

LABEL_54:
  *v3 = v49;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyFontModifier>, type metadata accessor for AnyFontModifier);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>();
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v15 = v40;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v43 = *(v23 + 12);
      v26 = *(*(v5 + 56) + 8 * v22);
      if ((v15 & 1) == 0)
      {
        outlined copy of Material.ID(v24, v25);
      }

      Hasher.init(_seed:)();
      v42 = v26;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v29 = 10;
        }

        else if (v24 > 3)
        {
          if (v24 > 5)
          {
            if (v24 == 6)
            {
              v29 = 6;
            }

            else
            {
              v29 = 7;
            }
          }

          else if (v24 == 4)
          {
            v29 = 4;
          }

          else
          {
            v29 = 5;
          }
        }

        else if (v24 > 1)
        {
          if (v24 == 2)
          {
            v29 = 2;
          }

          else
          {
            v29 = 3;
          }
        }

        else
        {
          v29 = v24 != 0;
        }

        MEMORY[0x193AC11A0](v29);
      }

      else if (v25)
      {
        MEMORY[0x193AC11A0](9);
        (*(*v24 + 176))(v44);
      }

      else
      {
        v27 = *(v24 + 48);
        MEMORY[0x193AC11A0](8);
        String.hash(into:)();
        String.hash(into:)();
        if (v27)
        {
          Hasher._combine(_:)(1u);
          v28 = v27;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v5 = v39;
        v15 = v40;
      }

      Hasher._combine(_:)(v43);
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_58:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
LABEL_7:
      *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v7 + 48) + 16 * v16;
      *v18 = v24;
      *(v18 + 8) = v25;
      *(v18 + 12) = v43;
      *(*(v7 + 56) + 8 * v16) = v17;
      ++*(v7 + 16);
      v12 = v41;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v15 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_56;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_56:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>();
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, [(AbstractHomogeneousCollection, Int)]>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, HomogeneousLookupTable>, type metadata accessor for HomogeneousLookupTable);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_DisplayList_Identity, _DisplayList_StableIdentity>, lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v24 = v22[1];
      v23 = v22[2];
      v25 = *v22;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v25;
      v16[1] = v24;
      v16[2] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, Any>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        outlined init with take of Any(v21, v31);
      }

      else
      {
        outlined init with copy of Any(v21, v31);
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Any(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, Decodable & AnyViewFactory.Type>, type metadata accessor for Decodable & AnyViewFactory.Type);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<CachedVectorImageContents.CacheKey, CGImageRef>, type metadata accessor for CGImageRef, lazy protocol witness table accessor for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<RBImageRendererProperty, Any>);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<Solarium.EnablementIdiom, (Solarium.EnablementLevel, Solarium.EnablementCriteria)>, type metadata accessor for (Solarium.EnablementLevel, Solarium.EnablementCriteria), lazy protocol witness table accessor for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *(v22 + 8);
      v24 = *v22;
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DynamicTypeSize, CGFloat>, lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UnsafeRawPointer, String>);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x193AC1160](*(v7 + 40), v21);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, CGFloat>);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, CGFloat>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AGSubgraphRef, [(_:)]>();
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for AGSubgraphRef(0);
      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AttributeInfoTrace.History>);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 12 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 12 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt32>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v8 << 6);
      if (a2)
      {
LABEL_10:
        v18 = *(*(v5 + 48) + 8 * v17);
        v19 = (*(v5 + 56) + 640 * v17);
      }

      else
      {
LABEL_16:
        v18 = *(*(v5 + 48) + 8 * v17);
        memcpy(__dst, (*(v5 + 56) + 640 * v17), 0x27CuLL);
        outlined init with copy of SeedValue<GlassContainer.EntryState>(__dst, __src, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
        v19 = __dst;
      }

      memcpy(__src, v19, 0x27CuLL);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v18);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v18;
      result = memcpy((*(v7 + 56) + 640 * v15), __src, 0x27CuLL);
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v12 = (v21 - 1) & v21;
        v17 = __clz(__rbit64(v21)) | (v8 << 6);
        if (a2)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, outlined init with take of AnyTrackedValue);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>();
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v45 = *(v23 + 24);
      v27 = *(v23 + 32);
      v28 = *(v5 + 56) + 16 * v22;
      v43 = *v28;
      v42 = *(v28 + 8);
      if ((v40 & 1) == 0)
      {
        outlined copy of ResolvedIDs.Key(v24, v25, v26, v45, v27);
      }

      Hasher.init(_seed:)();
      v44 = v27;
      if (v27 < 0)
      {
        MEMORY[0x193AC11A0](1);
        v29 = v24;
        Hasher._combine(_:)(v24);
      }

      else
      {
        MEMORY[0x193AC11A0](0);
        if (v27)
        {
          if (v27 == 1)
          {
            MEMORY[0x193AC11A0](2);
            v29 = v24;
            Hasher._combine(_:)(v24);
            if (v25)
            {
              Hasher._combine(_:)(1u);
              (*(*v25 + 120))(v46);
              MEMORY[0x193AC11A0](v26);
            }

            else
            {
              Hasher._combine(_:)(0);
            }
          }

          else
          {
            MEMORY[0x193AC11A0](0);
            v29 = v24;
          }
        }

        else
        {
          MEMORY[0x193AC11A0](1);
          v29 = v24;
          _Glass.Variant.ID.hash(into:)(v46);
          Hasher._combine(_:)(BYTE1(v25) & 1);
          (*(*v26 + 120))(v46);
          MEMORY[0x193AC11A0](v45);
        }
      }

      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v16 = v26;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v16 = v26;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 40 * v15;
      *v17 = v29;
      *(v17 + 8) = v25;
      *(v17 + 16) = v16;
      *(v17 + 24) = v45;
      *(v17 + 32) = v44;
      v18 = *(v7 + 56) + 16 * v15;
      *v18 = v43;
      *(v18 + 8) = v42;
      ++*(v7 + 16);
      v5 = v39;
      v12 = v41;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_42;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_42:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>();
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, Int>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v36 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      if (v24)
      {
        Hasher._combine(_:)(1u);
        (*(*v24 + 120))(v37);
        MEMORY[0x193AC11A0](v25);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v36;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Int>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AnyFontModifier>, type metadata accessor for AnyFontModifier);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AttributedString.Keys>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        outlined init with take of AnyTrackedValue(v20, v30);
      }

      else
      {
        outlined init with copy of AnyTrackedValue(v20, v30);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v29);
      Hasher._combine(_:)(DWORD1(v29));
      Hasher._combine(_:)(DWORD2(v29));
      Hasher._combine(_:)(HIDWORD(v29));
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      result = outlined init with take of AnyTrackedValue(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<EventID, EventType>();
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        outlined init with take of AnyTrackedValue(v24, v34);
      }

      else
      {
        outlined init with copy of AnyTrackedValue(v24, v34);
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v22);
      MEMORY[0x193AC11A0](v23);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of AnyTrackedValue(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, UInt32>);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollEdgeEffectTag.ID, Int>, lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v34 = *(*(v5 + 56) + 8 * v19);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = (v20 + 32);
        do
        {
          v23 = *v22++;
          Hasher._combine(_:)(v23);
          --v21;
        }

        while (v21);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v34;
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = MEMORY[0x193AC1150](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>();
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v36 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_44;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v2;
        if (v34 >= 64)
        {
          bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v34;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v37 = *(v21 + 16);
      v38 = *(v21 + 24);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v23)
      {
        Hasher._combine(_:)(0);
        if (v38)
        {
          goto LABEL_27;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v26 = v22;
        }

        else
        {
          v26 = 0;
        }

        MEMORY[0x193AC11E0](v26);
        if (v38)
        {
LABEL_27:
          Hasher._combine(_:)(0);
          goto LABEL_28;
        }
      }

      Hasher._combine(_:)(1u);
      if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = v37;
      }

      else
      {
        v25 = 0;
      }

      MEMORY[0x193AC11E0](v25);
LABEL_28:
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v37;
      *(v16 + 24) = v38;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }
  }

LABEL_44:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ForegroundLayerLevel, _ColorMatrix>, lazy protocol witness table accessor for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 80 * v20);
      v34 = v22[2];
      v35 = v22[3];
      v36 = v22[4];
      v32 = *v22;
      v33 = v22[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 80 * v15);
      v16[2] = v34;
      v16[3] = v35;
      v16[4] = v36;
      *v16 = v32;
      v16[1] = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v22);
      MEMORY[0x193AC11A0](v23);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>();
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    for (i = v5; ; v5 = i)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v42 & 1) == 0)
        {

          v3 = v40;
          goto LABEL_41;
        }

        v39 = 1 << *(v5 + 32);
        v3 = v40;
        if (v39 >= 64)
        {
          bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v39;
        }

        *(v5 + 16) = 0;
        goto LABEL_40;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *(v23 + 8);
      v47 = *v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      v27 = *(v23 + 32);
      v28 = (v22 + 32 * v21);
      v44 = *v28;
      v45 = *(v28 + 1);
      v29 = *(v28 + 6);
      v43 = *(v28 + 7);
      if ((v42 & 1) == 0)
      {
        outlined copy of GlassContainer.Entry.ModelID(v47, v24, v26, v25, v27);
      }

      Hasher.init(_seed:)();
      v46 = v26;
      if (!v27)
      {
        break;
      }

      v30 = v25;
      if (v27 != 1)
      {
        v31 = 0;
        goto LABEL_23;
      }

      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v47);
      if (v24)
      {
        Hasher._combine(_:)(1u);
        (*(*v24 + 120))(v48);
        v31 = v46;
LABEL_23:
        MEMORY[0x193AC11A0](v31);
        goto LABEL_24;
      }

      Hasher._combine(_:)(0);
LABEL_24:
      result = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v47;
      *(v16 + 8) = v24;
      *(v16 + 16) = v46;
      *(v16 + 24) = v30;
      *(v16 + 32) = v27;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v44;
      *(v17 + 8) = v45;
      *(v17 + 24) = v29;
      *(v17 + 28) = v43;
      ++*(v7 + 16);
    }

    MEMORY[0x193AC11A0](1);
    _Glass.Variant.ID.hash(into:)(v48);
    Hasher._combine(_:)(BYTE1(v24) & 1);
    (*(*v26 + 120))(v48);
    v30 = v25;
    v31 = v25;
    goto LABEL_23;
  }

LABEL_40:

LABEL_41:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Axis, FocusableFillerBounds.Metrics>, lazy protocol witness table accessor for type Axis and conformance Axis);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v32 = v22[1];
      v33 = *v22;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v33;
      v16[1] = v32;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, PinnedSection>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + (v20 << 6));
      v32 = *v22;
      v33 = v22[1];
      *v34 = v22[2];
      *&v34[9] = *(v22 + 41);
      result = MEMORY[0x193AC1150](*(v7 + 40), v21, 4);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + (v15 << 6));
      *v16 = v32;
      v16[1] = v33;
      v16[2] = *v34;
      *(v16 + 41) = *&v34[9];
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<_NSRange, [NSAttributedStringKey : Any]>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v29);
      MEMORY[0x193AC11A0](*(&v29 + 1));
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<AttributedString.AnyAttribute, AttributedString.Keys>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v32 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v31 & 1) == 0)
      {
        outlined copy of AttributedString.AnyAttribute(v32, v22);
      }

      Hasher.init(_seed:)();
      if (v22 < 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        dispatch thunk of static AttributedStringKey.name.getter();
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v32;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>();
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v20;
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollAnchorStorage.Role, UnitPoint>, lazy protocol witness table accessor for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewCache.AnimatorInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 56);
      v26 = *(v5 + 48) + 20 * v24;
      v27 = *(v26 + 4);
      v46 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 12);
      v44 = *(v26 + 17);
      v45 = *(v26 + 16);
      v30 = v25 + 56 * v24;
      if (v43)
      {
        v31 = *v30;
        v32 = *(v30 + 16);
        v33 = *(v30 + 32);
        v50 = *(v30 + 48);
        v48 = v32;
        v49 = v33;
        v47 = v31;
      }

      else
      {
        outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(v30, &v47);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v46);
      Hasher._combine(_:)(v27);
      Hasher._combine(_:)(v28);
      Hasher._combine(_:)(v29);
      Hasher._combine(_:)(v45);
      Hasher._combine(_:)(v44);
      result = Hasher._finalize()();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 20 * v15;
      *v16 = v46;
      *(v16 + 4) = v27;
      *(v16 + 8) = v28;
      *(v16 + 12) = v29;
      *(v16 + 16) = v45;
      *(v16 + 17) = v44;
      v17 = *(v7 + 56) + 56 * v15;
      v18 = v47;
      v19 = v48;
      v20 = v49;
      *(v17 + 48) = v50;
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      ++*(v7 + 16);
      v5 = v42;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CAHostingLayerEvent.MouseButton, Int>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBindingBridge.TrackedEventState>, lazy protocol witness table accessor for type EventID and conformance EventID);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = *(v5 + 56) + v22;
      v24 = (*(v5 + 48) + v22);
      v26 = *v24;
      v25 = v24[1];
      v38 = *(v23 + 8);
      v27 = *v23;
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v26);
      MEMORY[0x193AC11A0](v25);
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v26;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewDebug.Property, Any>, lazy protocol witness table accessor for type _ViewDebug.Property and conformance _ViewDebug.Property);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        outlined init with take of Any(v21, v30);
      }

      else
      {
        outlined init with copy of Any(v21, v30);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = outlined init with take of Any(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, CGSize>, type metadata accessor for CGSize, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if (v36)
        {
          v35 = 1 << *(v5 + 32);
          if (v35 >= 64)
          {
            bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v9 = -1 << v35;
          }

          *(v5 + 16) = 0;
        }

        v3 = v2;
        goto LABEL_42;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 32 * v20;
      v39 = *(v22 + 24);
      v23 = *(v22 + 16);
      v24 = *(v22 + 8);
      v25 = *v22;
      v38 = *(v21 + 16 * v20);
      Hasher.init(_seed:)();
      if (v24 == 1)
      {
        Hasher._combine(_:)(0);
        if (v39)
        {
          goto LABEL_25;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        MEMORY[0x193AC11E0](v27);
        if (v39)
        {
LABEL_25:
          Hasher._combine(_:)(0);
          goto LABEL_26;
        }
      }

      Hasher._combine(_:)(1u);
      if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0;
      }

      MEMORY[0x193AC11E0](v26);
LABEL_26:
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v39;
      *(*(v7 + 56) + 16 * v15) = v38;
      ++*(v7 + 16);
      v5 = v37;
    }
  }

LABEL_42:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<TintPlacement, AnyShapeStyle>, lazy protocol witness table accessor for type TintPlacement and conformance TintPlacement);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 56) + 8 * (v16 | (v8 << 6)));
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](0);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v27 = 1 << *(v5 + 32);
    v3 = v2;
    if (v27 >= 64)
    {
      bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}