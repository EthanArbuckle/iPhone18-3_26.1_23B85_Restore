void type metadata accessor for PropertyList.Element?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t PropertyList.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a2;
  v9[5] = a1;
  type metadata accessor for PropertyList.Element?(0, &lazy cache variable for type metadata for PropertyList.Element?, a3, type metadata accessor for PropertyList.Element, MEMORY[0x1E69E6720]);
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v10, partial apply for closure #1 in PropertyList.subscript.getter, v9, v5, MEMORY[0x1E69E73E0], AssociatedTypeWitness, MEMORY[0x1E69E7410], v7);
}

{
  return (*(a4 + 24))(a2, a3, a4);
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00]();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

uint64_t closure #1 in PropertyList.subscript.getter@<X0>(Swift::Int hashValue@<X1>, void *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  BloomFilter.init(hashValue:)(hashValue);
  v10 = find1<A>(_:key:filter:)(a2, hashValue, &v12, a3, a4);
  if (v10)
  {
    return closure #2 in closure #1 in PropertyList.subscript.getter(v10, a5);
  }

  else
  {
    return (*(a4 + 16))(a3, a4);
  }
}

uint64_t closure #2 in closure #1 in PropertyList.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, a1 + v4, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for LayoutDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t TypedElement.deinit()
{
  PropertyList.Element.deinit();
  v1 = *(*v0 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t TypedElement.__deallocating_deinit()
{
  TypedElement.deinit();

  return swift_deallocClassInstance();
}

uint64_t PropertyList.Element.deinit()
{

  while (v1)
  {
    v2 = *(v1 + 32);
    *(v1 + 32) = 0;

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v1 = v2;
    if ((isUniquelyReferenced_native & 1) == 0)
    {

      break;
    }
  }

  return v0;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceMotionKey>, &type metadata for AccessibilityReduceMotionKey, &protocol witness table for AccessibilityReduceMotionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityReduceMotionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA025AccessibilityReduceMotionV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA025AccessibilityReduceMotionV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceMotionKey>, &type metadata for AccessibilityReduceMotionKey, &protocol witness table for AccessibilityReduceMotionKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA031AccessibilityReduceTransparencyF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(uint64_t *a1, int a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilityReduceTransparencyS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (a2 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  if (v5 == 2 || ((v5 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilityReduceTransparencyS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilityReduceTransparencyV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityReduceTransparencyKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilityReduceTransparencyV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilityReduceTransparencyV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityReduceTransparencyKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityReduceTransparencyKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityReduceTransparencyKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityReduceTransparencyKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceMotionKey>, &type metadata for AccessibilityReduceMotionKey, &protocol witness table for AccessibilityReduceMotionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA025AccessibilityReduceMotionV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt0B5Tm(void *result, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t a5, uint64_t a6)
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
        v6 = result;
        v7 = a2;
        v8 = a6;
        v9 = a5;
        v10 = a4;
        v11 = a3;
        v12 = a3(result[3]);
        a2 = v7;
        a3 = v11;
        a4 = v10;
        a5 = v9;
        a6 = v8;
        v13 = v12;
        result = v6;
        if (v13)
        {
          break;
        }
      }

      v14 = a2;
      v15 = a3;
      v16 = result;
      v17 = result[2];
      v18 = a4;
      v19 = a5;
      v20 = a6;
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, a4, a5, a6, type metadata accessor for EnvironmentPropertyKey);
      if (v17 == v21)
      {
        return v16;
      }

      result = v16[4];
      a6 = v20;
      a5 = v19;
      a4 = v18;
      a3 = v15;
      a2 = v14;
      if (!result)
      {
        return result;
      }
    }

    return v13;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityReduceMotionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityReduceMotionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityReduceMotionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceMotionKey>, &type metadata for AccessibilityReduceMotionKey, &protocol witness table for AccessibilityReduceMotionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityReduceMotionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<IsLowPowerModeEnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsLowPowerModeEnabledKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsLowPowerModeEnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsLowPowerModeEnabledKey>, &type metadata for IsLowPowerModeEnabledKey, &protocol witness table for IsLowPowerModeEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsLowPowerModeEnabledKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t EnvironmentValues.isInTouchBar.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void))
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

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021IsLowPowerModeEnabledF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsLowPowerModeEnabledKey>, &type metadata for IsLowPowerModeEnabledKey, &protocol witness table for IsLowPowerModeEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021IsLowPowerModeEnabledV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsLowPowerModeEnabledKey>, &type metadata for IsLowPowerModeEnabledKey, &protocol witness table for IsLowPowerModeEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsLowPowerModeEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>);
    }
  }
}

Swift::Void __swiftcall ViewGraphRootValueUpdater.initializeViewGraph()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v70 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for OSSignpostID();
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v9;
  v10 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner);
  v11 = *(v4 + 8);
  (*(v11 + 16))(&v65, v10, v10, v5, v11);
  if (v65)
  {
    v12 = *(&v65 + 1);
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 8))(ObjectType, v12);
    swift_unknownObjectRelease();
    swift_beginAccess();
    *(v14 + 208) = v11;
    v46 = v14;
    swift_unknownObjectWeakAssign();
    if (one-time initialization token for viewHost != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v15 = static Signpost.viewHost;
      v16 = word_1ED53C1D0;
      v17 = HIBYTE(word_1ED53C1D0);
      v18 = byte_1ED53C1D2;
      v19 = static os_signpost_type_t.event.getter();
      v65 = v15;
      v66 = v16;
      v67 = v17;
      v68 = v18;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        return;
      }

      v20 = one-time initialization token for _signpostLog;
      swift_unknownObjectRetain();
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = _signpostLog;
      OSSignpostID.init(log:object:)();
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_18DDAB4C0;
      v23 = v46;
      swift_beginAccess();
      if (!*(v23 + 16))
      {
        __break(1u);
        return;
      }

      Counter = AGGraphGetCounter();
      v25 = MEMORY[0x1E69E6810];
      v26 = MEMORY[0x1E69E6870];
      *(v22 + 56) = MEMORY[0x1E69E6810];
      *(v22 + 64) = v26;
      *(v22 + 32) = Counter;
      *(v22 + 96) = v25;
      *(v22 + 104) = v26;
      *(v22 + 72) = v3;
      if (v17)
      {
        break;
      }

      if (v15 == 20)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }

      v29 = bswap32(v15) | (4 * WORD1(v15));
      v48 = *(v6 + 16);
      v30 = v48(v55, v47, v54);
      v31 = 0;
      LOBYTE(v59) = 1;
      v57 = v28;
      v52 = 16 * v28;
      v50 = v6 + 16;
      v53 = (v6 + 8);
      v51 = v22 + 32;
      v49 = v15;
LABEL_14:
      v56 = &v46;
      MEMORY[0x1EEE9AC00](v30);
      v3 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = v3 + 8;
      v34 = v57;
      v35 = v3 + 8;
      do
      {
        *(v35 - 1) = 0;
        *v35 = 0;
        v35 += 16;
        --v34;
      }

      while (v34);
      v36 = v51 + 40 * v31;
      v6 = v57;
      while (1)
      {
        v37 = *(v22 + 16);
        if (v31 == v37)
        {
          LOBYTE(v59) = 0;
LABEL_22:
          v40 = v49;
          if (v49 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (v3[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v3[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v3[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v40 != 20 && v3[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v41 = *v53;
          v42 = v55;
          v43 = v54;
          (*v53)(v55, v54);
          v44 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
          v30 = v48(v42, v44, v43);
          if ((v59 & 1) == 0)
          {

            v45 = v54;
            v41(v55, v54);
            v41(v47, v45);
            goto LABEL_37;
          }

          goto LABEL_14;
        }

        if (v31 >= v37)
        {
          break;
        }

        ++v31;
        outlined init with copy of AnyTrackedValue(v36, &v65);
        v38 = v69;
        __swift_project_boxed_opaque_existential_1(&v65, v69);
        *(v33 - 1) = CVarArg.kdebugValue(_:)(v29 | v19, v38);
        *v33 = v39 & 1;
        v33 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v65);
        v36 += 40;
        if (!--v6)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
    }

    v64 = v19;
    v62 = v21;
    v63 = &dword_18D018000;
    v65 = v15;
    v66 = v16;
    v59 = "ViewHost: (%p) initialized PlatformHost [ %p ]";
    v60 = 46;
    v61 = 2;
    v58 = v22;
    v27 = v47;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v6 + 8))(v27, v54);
LABEL_37:
  }
}

const char *one-time initialization function for lockAssertionsAreEnabled()
{
  result = getenv("SWIFTUI_ASSERT_LOCKS");
  if (result)
  {
    result = atoi(result);
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  lockAssertionsAreEnabled = v1;
  return result;
}

uint64_t closure #1 in ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  v12 = (*(a2 + 40))(ObjectType, a2);
  if ((a3 & ~v12) != 0)
  {
    (*(a2 + 48))(v12 | a3, ObjectType, a2);
    GraphHost.setNeedsUpdate(mayDeferUpdate:values:)(a4 & 1);
    (*(*(a7 + 8) + 24))(a6, 0.0);
  }
}

uint64_t outlined init with copy of AnyTrackedValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata completion function for Binding()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t static Update.end()()
{
  v65 = *MEMORY[0x1E69E9840];
  v49 = type metadata accessor for OSSignpostID();
  v0 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v41 - v3;
  if (static Update.depth == 1)
  {
    static Update.dispatchActions()();
    if (one-time initialization token for viewHost != -1)
    {
      swift_once();
    }

    v4 = static Signpost.viewHost;
    v5 = word_1ED53C1D0;
    v6 = HIBYTE(word_1ED53C1D0);
    v7 = byte_1ED53C1D2;
    v8 = static os_signpost_type_t.end.getter();
    if (one-time initialization token for traceHost != -1)
    {
      swift_once();
    }

    v9 = static Update.traceHost;
    v60 = v4;
    v61 = v5;
    v62 = v6;
    v63 = v7;
    if (Signpost.isEnabled.getter())
    {
      v10 = one-time initialization token for _signpostLog;
      swift_unknownObjectRetain();
      if (v10 != -1)
      {
        swift_once();
      }

      v11 = _signpostLog;
      v12 = v48;
      OSSignpostID.init(log:object:)();
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg);
      v13 = swift_allocObject();
      v14 = v13;
      *(v13 + 16) = xmmword_18DDAB4C0;
      v15 = MEMORY[0x1E69E65A8];
      *(v13 + 56) = MEMORY[0x1E69E6530];
      *(v13 + 64) = v15;
      v16 = MEMORY[0x1E69E6810];
      *(v13 + 32) = 0;
      v17 = MEMORY[0x1E69E6870];
      *(v13 + 96) = v16;
      *(v13 + 104) = v17;
      *(v13 + 72) = v9;
      if ((v6 & 1) == 0)
      {
        v43 = v4;
        if (v4 == 20)
        {
          v18 = 3;
        }

        else
        {
          v18 = 4;
        }

        v19 = bswap32(v4) | (4 * WORD1(v4));
        v20 = v8;
        v42 = *(v0 + 16);
        v21 = v42(v50, v12, v49);
        v22 = 0;
        LOBYTE(v54) = 1;
        v52 = v18;
        v46 = 16 * v18;
        v44 = v0 + 16;
        v47 = (v0 + 8);
        v45 = v14 + 32;
LABEL_15:
        v51 = &v41;
        MEMORY[0x1EEE9AC00](v21);
        v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = v24 + 8;
        v26 = v52;
        v27 = v24 + 8;
        do
        {
          *(v27 - 1) = 0;
          *v27 = 0;
          v27 += 16;
          --v26;
        }

        while (v26);
        v28 = v45 + 40 * v22;
        v29 = v52;
        while (1)
        {
          v30 = *(v14 + 16);
          if (v22 == v30)
          {
            LOBYTE(v54) = 0;
LABEL_23:
            v33 = v43;
            if (v43 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            v34 = v48;
            if (v24[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v24[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v24[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v33 != 20 && v24[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v35 = *v47;
            v36 = v49;
            v37 = v50;
            (*v47)(v50, v49);
            v38 = __swift_project_value_buffer(v36, static OSSignpostID.continuation);
            v21 = v42(v37, v38, v36);
            if ((v54 & 1) == 0)
            {
              v39 = v49;
              v35(v50, v49);
              v35(v34, v39);
              goto LABEL_38;
            }

            goto LABEL_15;
          }

          if (v22 >= v30)
          {
            break;
          }

          ++v22;
          outlined init with copy of AnyTrackedValue(v28, &v60);
          v31 = v64;
          __swift_project_boxed_opaque_existential_1(&v60, v64);
          *(v25 - 1) = CVarArg.kdebugValue(_:)(v19 | v20, v31);
          *v25 = v32 & 1;
          v25 += 16;
          __swift_destroy_boxed_opaque_existential_1(&v60);
          v28 += 40;
          if (!--v29)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

      v59 = v8;
      v57 = v11;
      v58 = &dword_18D018000;
      v60 = v4;
      v61 = v5;
      v54 = "ViewHost: (%p) update ended PlatformHost [ %p ]";
      v55 = 47;
      v56 = 2;
      v53 = v13;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v0 + 8))(v12, v49);
LABEL_38:
    }
  }

  if (__OFSUB__(static Update.depth, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  --static Update.depth;
  if (one-time initialization token for _lock != -1)
  {
LABEL_44:
    swift_once();
  }

  return _MovableLockUnlock(static Update._lock);
}

uint64_t _MovableLockUnlock(uint64_t result)
{
  v2 = *(result + 128) - 1;
  *(result + 128) = v2;
  if (!v2)
  {
    v3 = result;
    if (*(result + 132))
    {
      pthread_cond_broadcast((result + 64));
    }

    *(v3 + 120) = 0;

    return pthread_mutex_unlock(v3);
  }

  return result;
}

void static Update.dispatchActions()()
{
  v57[4] = *MEMORY[0x1E69E9840];
  v45 = type metadata accessor for OSSignpostID();
  v0 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v2 = (v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      v3 = static Update._lock;
      if (!_MovableLockIsOwner(static Update._lock) || !_MovableLockIsOwner(v3))
      {
        while (1)
        {
LABEL_76:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }
    }

    if (static Update.depth != 1)
    {
      break;
    }

    if (one-time initialization token for actions != -1)
    {
      swift_once();
    }

    v4 = &type metadata instantiation cache for TupleTypeDescription;
    v5 = static Update.actions;
    if (!*(static Update.actions + 2))
    {
      break;
    }

    v6 = objc_opt_self();
    v53 = v57;
    v42[0] = v0 + 8;
    v7 = MEMORY[0x1E69E7CC0];
    v52 = *MEMORY[0x1E695DA28];
    v51 = xmmword_18DDA6EB0;
    v49 = v6;
    v50 = v2;
    while (1)
    {
      v4[110] = v7;
      v14 = swift_allocObject();
      *(v14 + 16) = v5;

      if (![v6 isMainThread])
      {

        v8 = [objc_opt_self() mainRunLoop];
        _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode);
        v9 = swift_allocObject();
        *(v9 + 16) = v51;
        v10 = v52;
        *(v9 + 32) = v52;
        type metadata accessor for NSRunLoopMode(0);
        v11 = v10;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v57[2] = partial apply for closure #1 in static Update.dispatchActions();
        v57[3] = v14;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v57[0] = thunk for @escaping @callee_guaranteed () -> ();
        v57[1] = &block_descriptor_13;
        v13 = _Block_copy(&aBlock);

        [v8 performInModes:isa block:v13];

        _Block_release(v13);

        goto LABEL_13;
      }

      if (one-time initialization token for postUpdateActions != -1)
      {
        swift_once();
      }

      v54 = v14;
      v55 = v5;
      v15 = static Signpost.postUpdateActions;
      v16 = word_1ED530E00;
      v17 = HIBYTE(word_1ED530E00);
      v18 = byte_1ED530E02;
      if (one-time initialization token for traceHost != -1)
      {
        swift_once();
      }

      aBlock = v15;
      LOBYTE(v57[0]) = v16;
      BYTE1(v57[0]) = v17;
      BYTE2(v57[0]) = v18;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        break;
      }

      v19 = one-time initialization token for _signpostLog;
      swift_unknownObjectRetain();
      if (v19 != -1)
      {
        swift_once();
      }

      v20 = _signpostLog;
      OSSignpostID.init(log:object:)();
      static os_signpost_type_t.begin.getter();
      v44 = *(&v15 + 1);
      v48 = v15;
      v43 = v16;
      v47 = v17;
      v42[1] = v20;
      if (v17)
      {
        os_signpost(_:dso:log:name:signpostID:)();
      }

      else
      {
        OSSignpostID.rawValue.getter();
        kdebug_trace();
      }

      v31 = &unk_1ED53B000;
      v32 = specialized static Update.begin()();
      v46 = static Update.dispatchDepth;
      static Update.dispatchDepth = static Update.depth;
      v0 = v55[2];
      if (v0)
      {
        v2 = v55 + 7;
        do
        {
          v33 = *(v2 - 24);
          if (v33 == 17)
          {
            v34 = 0;
          }

          else
          {
            v34 = *&aA_2[4 * v33];
          }

          v35 = *(v2 - 2);
          v36 = *v2;
          v37 = v31[511];
          v38 = one-time initialization token for enabledCategories;

          if (v38 != -1)
          {
            v39 = swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
          {
            goto LABEL_72;
          }

          if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
            *&aBlock = __PAIR64__(v34, v36);
            BYTE8(aBlock) = v33 == 17;
            type metadata accessor for (UInt32, UInt32?)();
            v31 = &unk_1ED53B000;
            v39 = AGGraphAddTraceEvent();
          }

          v35(v39);
          if (v33 == 17)
          {
            v40 = 0;
          }

          else
          {
            v40 = *&aA_2[4 * v33];
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
          {
            goto LABEL_74;
          }

          if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 17985;
            *&aBlock = __PAIR64__(v40, v36);
            BYTE8(aBlock) = v33 == 17;
            type metadata accessor for (UInt32, UInt32?)();
            v31 = &unk_1ED53B000;
            AGGraphAddTraceEvent();
          }

          if (v31[511] != v37)
          {
            goto LABEL_76;
          }

          v2 += 8;
        }

        while (--v0);
      }

      static Update.dispatchDepth = v46;
      static Update.end()(v32);

      static os_signpost_type_t.end.getter();
      v41 = v50;
      if (v47)
      {
        os_signpost(_:dso:log:name:signpostID:)();
      }

      else
      {
        OSSignpostID.rawValue.getter();
        kdebug_trace();
      }

      v4 = &type metadata instantiation cache for TupleTypeDescription;
      v6 = v49;
      v7 = MEMORY[0x1E69E7CC0];

      (*v42[0])(v41, v45);
LABEL_13:
      v5 = v4[110];
      if (!v5[2])
      {
        return;
      }
    }

    v21 = specialized static Update.begin()();
    v48 = static Update.dispatchDepth;
    v22 = &unk_1ED53B000;
    static Update.dispatchDepth = static Update.depth;
    v23 = v55[2];
    if (!v23)
    {
LABEL_44:
      static Update.dispatchDepth = v48;
      static Update.end()(v21);

      v6 = v49;
      v4 = &type metadata instantiation cache for TupleTypeDescription;
      v7 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v2 = v55 + 7;
    while (1)
    {
      v24 = *(v2 - 24);
      if (v24 == 17)
      {
        v25 = 0;
      }

      else
      {
        v25 = *&aA_2[4 * v24];
      }

      v26 = *(v2 - 2);
      v27 = *v2;
      v28 = v22[511];
      v0 = one-time initialization token for enabledCategories;

      if (v0 != -1)
      {
        v29 = swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
      {
        break;
      }

      if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
      {
        v0 = *(static CustomEventTrace.recorder + 24);
        *(v0 + 4) = 21313;
        *&aBlock = __PAIR64__(v25, v27);
        BYTE8(aBlock) = v24 == 17;
        type metadata accessor for (UInt32, UInt32?)();
        v22 = &unk_1ED53B000;
        v29 = AGGraphAddTraceEvent();
      }

      v26(v29);
      if (v24 == 17)
      {
        v30 = 0;
      }

      else
      {
        v30 = *&aA_2[4 * v24];
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
      {
        goto LABEL_73;
      }

      if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17985;
        *&aBlock = __PAIR64__(v30, v27);
        BYTE8(aBlock) = v24 == 17;
        type metadata accessor for (UInt32, UInt32?)();
        v22 = &unk_1ED53B000;
        AGGraphAddTraceEvent();
      }

      if (v22[511] != v28)
      {
        goto LABEL_76;
      }

      v2 += 8;

      if (!--v23)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }
}

uint64_t sub_18D02948C()
{

  return swift_deallocObject();
}

void *ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(unsigned int a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner);
  result = (*(*(a4 + 8) + 16))(v14, v9, v9, a3);
  v11 = v14[0];
  if (v14[0])
  {
    v12 = v14[1];
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v13 = static Update._lock;
    _MovableLockLock(static Update._lock);
    closure #1 in ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(v11, v12, a1, a2 & 1, v4, a3, a4);
    _MovableLockUnlock(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined init with take of AnyTrackedValue(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t EventBindingManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = MEMORY[0x1E69E7CC8];
  *(v0 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void ViewGraphFeatureBuffer.append<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for ViewGraphFeatureBuffer._VTable();

  UnsafeHeterogeneousBuffer.append<A>(_:vtable:)(a1, v6, a2, a3);
}

uint64_t ViewGraph.append<A>(feature:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  ViewGraphFeatureBuffer.append<A>(_:)(a1, a2, &v5);
  return swift_endAccess();
}

uint64_t static ViewGraphFeatureBuffer._VTable.moveInitialize(elt:from:)(uint64_t a1)
{
  v2 = *(v1 + 176);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  v11 = *v7;
  v8 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v11 = v6;
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  UnsafeMutablePointer.move()();
  return _sSpsRi_zrlE10initialize2toyxn_tF(v4, v8, v2);
}

uint64_t EventBindingManager.addForwardedEventDispatcher(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v2 = (*(a1[4] + 8))();
  outlined init with copy of AnyTrackedValue(a1, v4);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v4, v2);
  return swift_endAccess();
}

uint64_t closure #1 in static Update.ensure<A>(_:)(void (*a1)(uint64_t))
{
  v2 = specialized static Update.begin()();
  a1(v2);
  return static Update.end()();
}

void UnsafeHeterogeneousBuffer.append<A>(_:vtable:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __OFADD__(v10, 16);
  v13 = v10 + 16;
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFADD__(v13, 15);
  v14 = v13 + 15;
  if (v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFFF0;
  v16 = UnsafeHeterogeneousBuffer.allocate(bytes:)(v14 & 0xFFFFFFFFFFFFFFF0);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  *v16 = a2;
  *(v16 + 8) = v15;
  *(v16 + 12) = 0;
  (*(v9 + 16))(v11, a1, a3);
  (*(v9 + 32))(v17 + 16, v11, a3);
  if (*v4)
  {
    v18 = v17 - *v4;
    if (v18 >= 0xFFFFFFFF80000000)
    {
      if (v18 <= 0x7FFFFFFF)
      {
        v19 = *(v4 + 12);
        *a4 = v19;
        a4[1] = v18;
        if (!__OFADD__(v19, 1))
        {
          *(v4 + 12) = v19 + 1;
          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

uint64_t static Update.ensure<A>(_:)(void (*a1)(uint64_t))
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  closure #1 in static Update.ensure<A>(_:)(a1);
  return _MovableLockUnlock(v2);
}

Swift::Void __swiftcall ViewGraphHost.updateRemovedState(isUnattached:isHiddenForReuse:)(Swift::Bool isUnattached, Swift::Bool isHiddenForReuse)
{
  if (one-time initialization token for _lock != -1)
  {
    v6 = isUnattached;
    v7 = isHiddenForReuse;
    swift_once();
    isUnattached = v6;
    isHiddenForReuse = v7;
  }

  if (isHiddenForReuse)
  {
    v3 = isUnattached | 2;
  }

  else
  {
    v3 = isUnattached;
  }

  v4 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v5 = *(v2 + 88);
  swift_beginAccess();
  *(v5 + 169) = v3;
  GraphHost.updateRemovedState()();
  static Update.end()();
  _MovableLockUnlock(v4);
}

Swift::Void __swiftcall GraphHost.updateRemovedState()()
{
  v1 = swift_beginAccess();
  LOBYTE(v2) = *(v0 + 169);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = (*(*v0 + 200))(v1);
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      v2 = *(v5 + 169);

      v3 = (v2 >> 1) & 1;
    }

    else
    {
      LOBYTE(v2) = 0;
      v3 = 0;
    }
  }

  v6 = v2 & 2;
  v7 = swift_beginAccess();
  if (v3 != *(v0 + 40))
  {
    if (v3)
    {
      v8 = *(v0 + 32);
      AGSubgraphApply();

      v7 = AGSubgraphRemoveChild();
    }

    else
    {
      AGSubgraphAddChild();
      v9 = *(v0 + 32);
      AGSubgraphApply();
    }

    *(v0 + 40) = v3;
  }

  if ((v6 != 0) != *(v0 + 41))
  {
    *(v0 + 41) = v6 >> 1;
    (*(*v0 + 232))(v7);
  }
}

uint64_t ViewGraph.parentHost.getter()
{
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  return Strong;
}

uint64_t one-time initialization function for v2()
{
  result = swiftUI_v2_os_versions();
  static Semantics.v2 = HIDWORD(result);
  return result;
}

uint64_t static ViewGraphHostUpdate.lock()(uint64_t (*a1)(uint64_t))
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

uint64_t getEnumTagSinglePayload for EnvironmentObject(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

Swift::Void __swiftcall ViewGraphHost.cancelAsyncRendering()()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v2 = *(v0 + 136);
  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
  }

  _MovableLockUnlock(v1);
}

void type metadata accessor for ColorBox<UIKitPlatformColorProvider>()
{
  if (!lazy cache variable for type metadata for ColorBox<UIKitPlatformColorProvider>)
  {
    lazy protocol witness table accessor for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider();
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<UIKitPlatformColorProvider>);
    }
  }
}

uint64_t Color.init(_platformColor:definition:)(uint64_t a1)
{
  type metadata accessor for ColorBox<UIKitPlatformColorProvider>();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider()
{
  result = lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider;
  if (!lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider;
  if (!lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider;
  if (!lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UIKitPlatformColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider();
  *(a1 + 8) = result;
  return result;
}

void specialized MaterialBackdropProxy.removeObserver(_:)(uint64_t a1, os_unfair_lock_s **a2, uint64_t a3, uint64_t a4, void (*a5)(os_unfair_lock_s *, uint64_t, uint64_t))
{
  v8 = *a2;
  os_unfair_lock_lock(*a2 + 4);
  a5(v8 + 6, a1, a4);

  os_unfair_lock_unlock(v8 + 4);
}

uint64_t _s7SwiftUI21MaterialBackdropProxyV11addObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = v5[2];
  if (v6)
  {
    v15 = a3;
    v7 = 0;
    v8 = 0;
    do
    {
      while (1)
      {
        if (v8 >= v5[2])
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        outlined init with copy of MaterialBackdropProxy.Observer(&v5[2 * v8 + 4], v16);
        Strong = swift_unknownObjectWeakLoadStrong();
        outlined destroy of weak GestureGraphDelegate?(v16);
        if (!Strong)
        {
          break;
        }

        result = swift_unknownObjectRelease();
        v7 |= Strong == a2;
        if (++v8 >= v6)
        {
          goto LABEL_10;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      v11 = v5[2];
      if (v8 >= v11)
      {
        goto LABEL_17;
      }

      v12 = v11 - 1;
      outlined destroy of weak GestureGraphDelegate?(&v5[2 * v8 + 4]);
      result = swift_arrayInitWithTakeFrontToBack();
      v5[2] = v12;
      *(a1 + 8) = v5;
      --v6;
    }

    while (v8 < v6);
LABEL_10:
    a3 = v15;
    if (v7)
    {
      return result;
    }
  }

  v17 = a3;
  swift_unknownObjectWeakInit();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
  }

  v14 = v5[2];
  v13 = v5[3];
  if (v14 >= v13 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
  }

  v5[2] = v14 + 1;
  result = outlined init with take of MaterialBackdropProxy.Observer(v16, &v5[2 * v14 + 4]);
  *(a1 + 8) = v5;
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MaterialBackdropProxy.Observer>, &type metadata for MaterialBackdropProxy.Observer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyViewTrait>, &lazy cache variable for type metadata for AnyViewTrait, &protocol descriptor for AnyViewTrait);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphMutation>, &lazy cache variable for type metadata for GraphMutation, &protocol descriptor for GraphMutation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyTrackedValue>, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<()>, type metadata accessor for ());
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_SublistTransform_Item>, &lazy cache variable for type metadata for _ViewList_SublistTransform_Item, &protocol descriptor for _ViewList_SublistTransform_Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollStateRequest>, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollableCollection>, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(AGSubgraphRef, Int)>, &lazy cache variable for type metadata for (AGSubgraphRef, Int), type metadata accessor for AGSubgraphRef);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentPathObservers.Observer>, &type metadata for ContentPathObservers.Observer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:)>, type metadata accessor for (_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, Int), type metadata accessor for AbstractHomogeneousCollection);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 < a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v12 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void one-time initialization function for normal()
{
  static GraphicsBlendMode.normal = 0;
  byte_1ED52F818 = 0;
}

{
  static Material.Layer.SDFLayer.GroupLayer.Blend.normal = 0;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t outlined copy of GraphicsBlendMode(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

id _RBBlendModeGetCompositingFilter(int a1)
{
  v2 = MEMORY[0x1E6979CA8];
  switch(a1)
  {
    case 1:
      goto LABEL_44;
    case 2:
      v2 = MEMORY[0x1E6979D18];
      goto LABEL_44;
    case 3:
      v2 = MEMORY[0x1E6979CD0];
      goto LABEL_44;
    case 4:
      v2 = MEMORY[0x1E69798C0];
      goto LABEL_44;
    case 5:
      v2 = MEMORY[0x1E6979C30];
      goto LABEL_44;
    case 6:
      v2 = MEMORY[0x1E6979860];
      goto LABEL_44;
    case 7:
      v2 = MEMORY[0x1E6979850];
      goto LABEL_44;
    case 8:
      v2 = MEMORY[0x1E6979D20];
      goto LABEL_44;
    case 9:
      v2 = MEMORY[0x1E6979940];
      goto LABEL_44;
    case 10:
      v2 = MEMORY[0x1E69798F8];
      goto LABEL_44;
    case 11:
      v2 = MEMORY[0x1E6979920];
      goto LABEL_44;
    case 12:
      v2 = MEMORY[0x1E6979948];
      goto LABEL_44;
    case 13:
      v2 = MEMORY[0x1E6979D10];
      goto LABEL_44;
    case 14:
      v2 = MEMORY[0x1E6979840];
      goto LABEL_44;
    case 15:
      v2 = MEMORY[0x1E6979C78];
      goto LABEL_44;
    case 16:
      v2 = MEMORY[0x1E6979830];
      goto LABEL_44;
    case 17:
      v2 = MEMORY[0x1E69798A8];
      goto LABEL_44;
    case 18:
      v2 = MEMORY[0x1E6979D30];
      goto LABEL_44;
    case 19:
      v2 = MEMORY[0x1E6979D38];
      goto LABEL_44;
    case 20:
      v2 = MEMORY[0x1E6979D28];
      goto LABEL_44;
    case 21:
      v2 = MEMORY[0x1E69798F0];
      goto LABEL_44;
    case 22:
      v2 = MEMORY[0x1E69798E0];
      goto LABEL_44;
    case 23:
      v2 = MEMORY[0x1E69798E8];
      goto LABEL_44;
    case 24:
      v2 = MEMORY[0x1E69798D8];
      goto LABEL_44;
    case 25:
      v2 = MEMORY[0x1E6979D98];
      goto LABEL_44;
    case 26:
      v2 = MEMORY[0x1E6979CE8];
      goto LABEL_44;
    case 27:
      v2 = MEMORY[0x1E6979CF8];
LABEL_44:
      v4 = *v2;
      break;
    default:
      v4 = 0;
      switch(a1)
      {
        case 1000:
          v2 = MEMORY[0x1E6979C58];
          goto LABEL_44;
        case 1001:
          v2 = MEMORY[0x1E6979C50];
          goto LABEL_44;
        case 1002:
          v2 = MEMORY[0x1E6979C60];
          goto LABEL_44;
        case 1003:
          v2 = MEMORY[0x1E6979CE0];
          goto LABEL_44;
        case 1004:
          v2 = MEMORY[0x1E6979D48];
          goto LABEL_44;
        case 1005:
          v2 = MEMORY[0x1E6979908];
          goto LABEL_44;
        case 1006:
          v2 = MEMORY[0x1E6979C88];
          goto LABEL_44;
        case 1008:
          v2 = MEMORY[0x1E6979D58];
          goto LABEL_44;
        case 1009:
          v2 = MEMORY[0x1E6979D50];
          goto LABEL_44;
        case 1010:
          v2 = MEMORY[0x1E69798C8];
          goto LABEL_44;
        case 1011:
          v2 = MEMORY[0x1E6979C38];
          goto LABEL_44;
        case 1012:
          v2 = MEMORY[0x1E6979C98];
          goto LABEL_44;
        case 1014:
          v2 = MEMORY[0x1E6979D00];
          goto LABEL_44;
        case 1015:
          v2 = MEMORY[0x1E6979CF0];
          goto LABEL_44;
        case 1016:
          v2 = MEMORY[0x1E6979D60];
          goto LABEL_44;
        default:
          goto LABEL_45;
      }
  }

LABEL_45:

  return v4;
}

uint64_t getEnumTagSinglePayload for SystemHoverEffect.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t EnvironmentValues.colorScheme.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019ExplicitColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v3);
    if (!result || (v5 = *(result + 72), v5 == 2))
    {
      result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019PlatformColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v3);
      if (result)
      {
        v6 = *(result + 72);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_11;
    }

LABEL_10:
    v6 = v5 & 1;
LABEL_11:
    *a1 = v6;
    return result;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019ExplicitColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v3, &v7);

  LOBYTE(v5) = v7;
  if (v7 != 2)
  {
    goto LABEL_10;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019PlatformColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v3, a1);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  v8 = a5(a1);
  if (v8)
  {
    return *(v8 + 72);
  }

  else
  {
    return 1;
  }
}

uint64_t EnvironmentValues.appearsActive.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3) & 1;
  }

  v5 = a1(v3);

  return v5 & 1;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AppearsActiveV0VG_Tt0B5(void *result, uint64_t a2)
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
        active = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AppearsActiveV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t storeEnumTagSinglePayload for Material.ForegroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 86) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 86) = 0;
    }

    if (a2)
    {
      *(result + 85) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Material.ForegroundStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 86))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 85);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t EnvironmentValues.materialEffectContainerTintConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>();
    BloomFilter.init(hashValue:)(v6);
    v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE037GlassEffectContainerTintConfigurationV033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt0B5(v3, v21);
    if (v7)
    {
      v4 = v7[9];

      v5 = *(v4 + 16);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
      v5 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v5)
      {
        goto LABEL_6;
      }
    }

LABEL_12:

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5(v3, &v21);

  v4 = v21;
  v5 = *(v21 + 16);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_6:
  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v8 = 0;
  v9 = v20;
  v10 = *(v20 + 16);
  v11 = 32 * v10;
  do
  {
    v12 = *(v4 + v8 + 32);
    v13 = *(v4 + v8 + 40);
    v14 = *(v4 + v8 + 56);
    v15 = *(v20 + 24);
    v16 = v10 + 1;
    if (v10 >= v15 >> 1)
    {
      v19 = *(v4 + v8 + 40);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v10 + 1, 1);
      v13 = v19;
    }

    *(v20 + 16) = v16;
    v17 = v20 + v11 + v8;
    *(v17 + 32) = v12;
    *(v17 + 40) = v13;
    *(v17 + 56) = v14;
    v8 += 32;
    v10 = v16;
    --v5;
  }

  while (v5);

LABEL_13:
  *a1 = v9;
  return result;
}

double static Material.Layer.Filter.caFilter<A>(provider:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyCAFilterProvider();
  (*(v6 + 16))(v8, a1, a2);
  *&v13[0] = GradientBox.__allocating_init(_:)(v8);
  _s7SwiftUI14GraphicsFilterOWOi21_(v13);
  v9 = v17;
  a3[4] = v16;
  a3[5] = v9;
  a3[6] = v18[0];
  *(a3 + 108) = *(v18 + 12);
  v10 = v13[1];
  *a3 = v13[0];
  a3[1] = v10;
  result = *&v14;
  v12 = v15;
  a3[2] = v14;
  a3[3] = v12;
  return result;
}

__n128 __swift_memcpy124_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t destructiveInjectEnumTag for Material.Layer.SDFLayer.GroupType(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
    *result &= 0x10101FFFFFFFFuLL;
    *(result + 16) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t initializeWithCopy for Material.Layer.SDFLayer.GroupLayer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;

  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

unint64_t destroy for Material.Layer.SDFLayer.GroupLayer(uint64_t a1)
{

  v2 = *(a1 + 8);

  return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v2);
}

uint64_t getEnumTagSinglePayload for Material.Layer.SDFLayer.GroupLayer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 52))
  {
    return (*a1 + 118);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Material.Layer.SDFLayer.GroupLayer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t static Material.Layer.sdf(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *(a2 + 36) = 1065353216;
  v5 = one-time initialization token for normal;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static GraphicsBlendMode.normal;
  v7 = byte_1ED52F818;
  *(a2 + 40) = static GraphicsBlendMode.normal;
  *(a2 + 48) = v7;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;

  return outlined copy of GraphicsBlendMode(v6, v7);
}

__n128 static _ColorMatrix.* infix(_:_:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  specialized static _ColorMatrix.* infix(_:_:)(a1, a2, v7, a4);
  v5 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v5;
  *(a3 + 64) = v7[4];
  result = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = result;
  return result;
}

float32x2_t specialized static _ColorMatrix.* infix(_:_:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = *a1;
  v9 = *(a1 + 20);
  v11.i32[0] = *(a1 + 12);
  v10 = *(a1 + 13);
  v12 = *(a1 + 40);
  v14.i32[0] = *(a1 + 17);
  v13 = *(a1 + 18);
  LODWORD(a4) = *(a1 + 15);
  v15 = *(a1 + 16);
  v16 = *(a2 + 76);
  v17 = v6 * v16;
  v18 = *(a2 + 56);
  *v4.i32 = v5 * v18;
  v19 = ((((v13 * v16) + (v14.f32[0] * v18)) + (v15 * *(a2 + 36))) + (*&a4 * *(a2 + 16))) + *(a1 + 19);
  v20 = *(a2 + 60);
  v21 = *(a2 + 40);
  v22 = *(a2 + 20);
  v23 = *a2;
  v24 = ((vmuls_lane_f32(v10, v20, 2) + vmuls_lane_f32(v11.f32[0], v21, 2)) + vmuls_lane_f32(*&v12.i32[1], v22, 2)) + vmuls_lane_f32(*v12.i32, *a2, 2);
  v25 = vaddq_f32(vaddq_f32(vmulq_n_f32(v20, v6), vmulq_n_f32(v21, v5)), vmulq_n_f32(v22, *v7.i32));
  v26 = vmulq_n_f32(*a2, COERCE_FLOAT(*a1));
  v27 = vaddq_f32(v25, v26);
  *v26.f32 = vdup_lane_s32(v9, 0);
  v26.i64[0] = vmulq_f32(*a2, v26).u64[0];
  v26.i32[2] = vmuls_lane_f32(*v9.i32, *a2, 2);
  v28 = v20;
  v28.f32[3] = v17;
  v4.i32[1] = *(a1 + 8);
  v29 = vextq_s8(vdupq_lane_s32(*v4.i8, 1), v4, 4uLL);
  v30 = vmulq_f32(v20, v29);
  v30.i32[3] = vaddq_f32(v28, v29).i32[3];
  v31 = v21;
  v31.i32[3] = *(a2 + 36);
  v7.i32[1] = *(a1 + 7);
  v32 = vmulq_f32(v31, vextq_s8(vdupq_lane_s32(*v7.i8, 1), v7, 4uLL));
  v8.i32[1] = v9.i32[1];
  v33 = v22;
  v33.i32[3] = *(a2 + 16);
  v34 = vmulq_f32(v33, vextq_s8(vdupq_lane_s32(*v8.i8, 1), v8, 4uLL));
  v35 = v20;
  v36 = vaddq_f32(vaddq_f32(v30, v32), v34);
  v35.f32[2] = *(a1 + 8) * v16;
  v37 = v35;
  v37.i32[3] = *(a1 + 8);
  v38 = v20;
  v26.i32[3] = *(a1 + 4);
  v39 = vaddq_f32(v26, v36);
  v38.f32[0] = v10;
  v38.f32[2] = *(a1 + 7) * v18;
  v40 = vaddq_f32(v35, v38);
  v38.f32[1] = v10;
  v41 = vmulq_f32(v37, v38);
  v41.i32[2] = v40.i32[2];
  v42 = v21;
  v42.i32[2] = *(a2 + 36);
  v14.i64[1] = __PAIR64__(v11.u32[0], v12.u32[1]);
  v14.i32[1] = v14.i32[0];
  v43 = v11.f32[0] * v18;
  v11.i32[2] = v9.i32[1];
  v11.i32[1] = v11.i32[0];
  v11.i32[3] = *(a1 + 7);
  v44 = v22;
  v44.i32[2] = *(a2 + 16);
  *a3 = v27;
  *(a3 + 16) = vextq_s8(v39, v39, 0xCuLL);
  v27.i32[0] = vdup_lane_s32(v12, 1).u32[0];
  *&v27.u32[2] = v9;
  v27.i32[1] = v27.i32[0];
  v45 = vmulq_f32(v44, v27);
  v46 = vaddq_f32(vaddq_f32(v41, vmulq_f32(v42, v11)), v45);
  *v45.f32 = vdup_lane_s32(v12, 0);
  v45.i64[0] = vmulq_f32(v23, v45).u64[0];
  v45.i32[2] = *(a1 + 9);
  v45.i32[3] = vmuls_lane_f32(*v9.i32, v23, 3);
  v47 = vaddq_f32(v46, v45);
  *(a3 + 32) = vextq_s8(vrev64q_s32(v47), v47, 8uLL);
  v48 = v20;
  v48.f32[2] = v10 * v16;
  v49 = v48;
  v49.f32[3] = v10;
  v50 = v20;
  v50.f32[0] = v13;
  *(a3 + 48) = v24;
  v50.f32[2] = v43;
  v51 = vaddq_f32(v48, v50);
  v50.f32[1] = v13;
  v52 = vmulq_f32(v49, v50);
  v52.i32[2] = v51.i32[2];
  v49.f32[0] = v15;
  *&v49.u32[2] = v12;
  v49.f32[1] = v15;
  v51.i64[0] = vmulq_n_f32(v23, *&a4).u64[0];
  v51.i32[2] = *(a1 + 14);
  v51.i32[3] = vmuls_lane_f32(*v12.i32, v23, 3);
  v53 = vaddq_f32(vaddq_f32(vaddq_f32(v52, vmulq_f32(v42, v14)), vmulq_f32(v44, v49)), v51);
  *(a3 + 52) = vextq_s8(vrev64q_s32(v53), v53, 8uLL);
  result = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*&vextq_s8(v20, v20, 8uLL), v13), vmul_n_f32(*&vextq_s8(v21, v21, 8uLL), v14.f32[0])), vmul_n_f32(*&vextq_s8(v22, v22, 8uLL), v15)), vmul_f32(*&vdupq_lane_s32(*&a4, 0), *&vextq_s8(v23, v23, 8uLL)));
  *(a3 + 68) = result;
  *(a3 + 76) = v19;
  return result;
}

unint64_t Material.Layer.SDFLayer.GroupLayer.blend.setter(uint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(v1 + 8));
  *(v1 + 8) = v2;
  return result;
}

uint64_t initializeWithCopy for Material.Layer(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Material.Layer.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 36) = *(v2 + 36);
  v9 = *(v2 + 40);
  LOBYTE(v2) = *(v2 + 48);
  outlined copy of GraphicsBlendMode(v9, v2);
  *(a1 + 40) = v9;
  *(a1 + 48) = v2;
  return a1;
}

double Material.Layer.compositingFilter.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  if (*(v1 + 48))
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;

    swift_unknownObjectRetain();
  }

  else
  {
    if (_RBBlendModeGetCompositingFilter(*(v1 + 40)))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    result = *&v5;
    *a1 = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

void *EnvironmentValues.pixelLength.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
    v3 = v2;

    if (v3)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
    }
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
    if (!result || (result[10] & 1) != 0)
    {
      return _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
    }
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018DefaultPixelLengthV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018DefaultPixelLengthV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018DefaultPixelLengthV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t EnvironmentValues.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v7;
  if (v7[1])
  {
    v10 = a4(0);

    WitnessTable = swift_getWitnessTable();
    a6(v8, v10, v10, WitnessTable);
  }

  else
  {
    v13 = a4(0);

    v14 = swift_getWitnessTable();
    a7(v13, v8, v13, v14);
  }
}

uint64_t EnvironmentValues.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return EnvironmentValues.getValue<A>(for:)(a1, a2, a3);
}

{
  return EnvironmentValues.subscript.getter(a1, a2, a3, type metadata accessor for DerivedEnvironmentPropertyKey, &protocol conformance descriptor for DerivedEnvironmentPropertyKey<A>, PropertyList.Tracker.derivedValue<A>(_:for:), PropertyList.subscript.getter);
}

{
  v7 = v3[1];
  v10[0] = *v3;
  v10[1] = v7;
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    return (*(v8 + 8))(a1, v10, a2, *(a3 + 8));
  }

  else
  {
    return EnvironmentValues.getValue<A>(for:)(a1, a2, *(a3 + 8));
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.accessibilityPrefersCrossFadeTransitions.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t), char a3)
{
  v6 = *v3;
  v5 = v3[1];
  if (v5)
  {

    v8 = a1(v6);
  }

  else
  {
    v8 = a2(v6);
  }

  if (v8 == 2)
  {
    v11 = v6;
    v12 = v5;
    v10 = a3;
    v8 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v10);
  }

  return v8 & 1;
}

unint64_t outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(unint64_t result)
{
  if ((result >> 62) - 1 <= 1)
  {
  }

  return result;
}

unint64_t outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(unint64_t result)
{
  if ((result >> 62) - 1 <= 1)
  {
  }

  return result;
}

uint64_t GradientBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 136) - 8) + 32))(v2 + *(*v2 + 152), a1);
  return v2;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t type metadata completion function for GradientBox()
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

Swift::Void __swiftcall ViewGraphHost.clearDisplayLink()()
{
  v1 = v0;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v3 = *(v1 + 136);
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
  }

  _MovableLockUnlock(v2);
  v4 = *(v1 + 136);
  if (v4)
  {
    v5 = v4;
    ViewGraphDisplayLink.invalidate()();

    v6 = *(v1 + 136);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 136) = 0;
}

BOOL specialized static PreferenceKeys.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  if (v2 != *(*a2 + 16))
  {
    return 0;
  }

  v3 = (*a1 + 32);
  v4 = (*a2 + 32);
  v5 = v2 + 1;
  do
  {
    result = --v5 == 0;
    if (!v5)
    {
      break;
    }

    v8 = *v4;
    v4 += 2;
    v7 = v8;
    v9 = *v3;
    v3 += 2;
  }

  while (v9 == v7);
  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of AnyTrackedValue(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(a1, &lazy cache variable for type metadata for ForwardedEventDispatcher?, &lazy cache variable for type metadata for ForwardedEventDispatcher);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of AnyTrackedValue((*(v11 + 56) + 40 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of _DisplayList_AnyEffectAnimator?(v14, &lazy cache variable for type metadata for ForwardedEventDispatcher?, &lazy cache variable for type metadata for ForwardedEventDispatcher);
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of AnyTrackedValue(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(a1, &lazy cache variable for type metadata for AnyTrackedValue?, &lazy cache variable for type metadata for AnyTrackedValue);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of AnyTrackedValue((*(v11 + 56) + 40 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of _DisplayList_AnyEffectAnimator?(v14, &lazy cache variable for type metadata for AnyTrackedValue?, &lazy cache variable for type metadata for AnyTrackedValue);
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of AnyTrackedValue(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(a1, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry?, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of AnyTrackedValue((*(v11 + 56) + 40 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of _DisplayList_AnyEffectAnimator?(v14, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry?, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry);
  }

  return result;
}

{
  if (*(a1 + 8))
  {
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a1, type metadata accessor for WeakBox<AnyLocationBase>?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);

    return _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v7, type metadata accessor for WeakBox<AnyLocationBase>?);
  }

  else
  {
    outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v7, type metadata accessor for WeakBox<AnyLocationBase>);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  if ((~*(a1 + 8) & 0xFF00) != 0)
  {
    outlined init with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);
    result = _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a2, type metadata accessor for NamedImage.BitmapKey);
    *v2 = v6;
  }

  else
  {
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a1, type metadata accessor for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a2, type metadata accessor for NamedImage.BitmapKey);
    return _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v7, type metadata accessor for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>?);
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  if (*(a1 + 8))
  {
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a1, type metadata accessor for WeakBox<CUICatalog>?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 8))(a2, v4);
    return _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v9, type metadata accessor for WeakBox<CUICatalog>?);
  }

  else
  {
    outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v9, type metadata accessor for WeakBox<CUICatalog>);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for URL();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of AnyTrackedValue(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(a1, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of AnyTrackedValue((*(v11 + 56) + 40 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of _DisplayList_AnyEffectAnimator?(v14, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of _ViewList_Elements, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of AnyTrackedValue, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of _ViewList_Elements, specialized _NativeDictionary._insert(at:key:value:));
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
    v20 = v19[7] + 8 * v9;

    return outlined assign with take of WeakBox<AnyLocationBase>(a1, v20);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, NamedImage.BitmapKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
      return outlined assign with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1, v19[7] + 96 * v13, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, NamedImage.BitmapKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  if ((v17 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v21;
  v19 = *v4;
  if (v17)
  {
    return outlined assign with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1, v19[7] + 96 * v13, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
  }

LABEL_11:
  outlined init with copy of NamedImage.VectorKey(a2, v10, type metadata accessor for NamedImage.BitmapKey);
  return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
}

{
  v4 = v3;
  v8 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, NamedImage.VectorKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, NamedImage.VectorKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of NamedImage.VectorKey(a2, v10, type metadata accessor for NamedImage.VectorKey);
      return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 88 * v13;

  return outlined assign with take of NamedImage.VectorInfo(a1, v20);
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + 8 * v10) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of AnyHashable(a2, v18);
  return specialized _NativeDictionary._insert(at:key:value:)(v10, v18, a1, v16);
}

{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
      return outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v20[7] + 8 * v14, type metadata accessor for WeakBox<CUICatalog>);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v22;
  v20 = *v4;
  if (v18)
  {
    return outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v20[7] + 8 * v14, type metadata accessor for WeakBox<CUICatalog>);
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of AnyTrackedValue, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

uint64_t specialized static GestureContainerFeature.isEnabled.getter()
{
  swift_beginAccess();
  v0 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride == 2)
  {
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
LABEL_3:
      v0 = 0;
      return v0 & 1;
    }

    if (one-time initialization token for envValue != -1)
    {
      swift_once();
    }

    v0 = static GestureContainerFeature.envValue;
    if (static GestureContainerFeature.envValue == 2)
    {
      if (one-time initialization token for userDefaultsValue != -1)
      {
        swift_once();
      }

      v0 = static GestureContainerFeature.userDefaultsValue;
      if (static GestureContainerFeature.userDefaultsValue == 2)
      {
        v5 = &type metadata for GestureContainerFeature.IOSFeature;
        v6 = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
        v1 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v4);
        if ((v1 & 1) == 0)
        {
          goto LABEL_3;
        }

        if (one-time initialization token for v6 != -1)
        {
          swift_once();
        }

        v2 = static Semantics.v6;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C)
        {
          v0 = dyld_program_sdk_at_least();
        }

        else
        {
          v0 = static Semantics.forced >= v2;
        }
      }
    }
  }

  return v0 & 1;
}

const char *one-time initialization function for envValue()
{
  result = getenv("SWIFTUI_GESTURE_CONTAINER");
  if (result)
  {
    result = atoi(result);
    v1 = result != 0;
  }

  else
  {
    v1 = 2;
  }

  static GestureContainerFeature.envValue = v1;
  return result;
}

uint64_t one-time initialization function for userDefaultsValue()
{
  result = closure #1 in variable initialization expression of static GestureContainerFeature.userDefaultsValue();
  static GestureContainerFeature.userDefaultsValue = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static UniversalGestureRelationshipsFeature.userDefaultsValue();
  static UniversalGestureRelationshipsFeature.userDefaultsValue = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static GestureContainerFeature.userDefaultsValue()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x193ABEC20](0xD000000000000023, 0x800000018DD79740);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v8, v9);
    outlined destroy of Any?(v9);
    v4 = [v0 standardUserDefaults];
    v5 = MEMORY[0x193ABEC20](0xD000000000000023, 0x800000018DD79740);
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    outlined destroy of Any?(v9);
    return 2;
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature()
{
  result = lazy protocol witness table cache variable for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature;
  if (!lazy protocol witness table cache variable for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature);
  }

  return result;
}

uint64_t initializeWithTake for ContentPathObservers.Observer(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *v7;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      a4();
      v15 = v23;
      goto LABEL_8;
    }

    a5(v20, a3 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v10;
  if (v21)
  {
    v26 = *(v25 + 56) + 40 * v15;
    __swift_destroy_boxed_opaque_existential_1(v26);

    return a6(a1, v26);
  }

  else
  {

    return a7(v15, a2, a1, v25);
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3);
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v8 = v6;
  v10 = *v6;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>(0, a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v35 = v8;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v10 + 48) + 8 * v24);
      v26 = *(v10 + 56) + 40 * v24;
      if (a2)
      {
        a6(v26, v36);
      }

      else
      {
        outlined init with copy of AnyTrackedValue(v26, v36);
      }

      result = MEMORY[0x193AC1170](*(v12 + 40), v25);
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = (a6)(v36, *(v12 + 56) + 40 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v8 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v8 = v35;
    if (v34 >= 64)
    {
      bzero((v10 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v8 = v12;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = a5(a3, a4[7] + 40 * a1);
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, outlined init with take of _ViewList_Elements);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)();
  result = outlined init with take of ResolvableTextSegmentAttribute.Value(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
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
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, outlined init with take of AnyTrackedValue);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a3, a4[7] + 8 * a1, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for [ResolvableTextSegmentAttribute.Value]);
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
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for NamedImage.BitmapKey(0);
  outlined init with take of ResolvableTextSegmentAttribute.Value(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for NamedImage.BitmapKey);
  result = outlined init with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a3, a4[7] + 96 * a1, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, _sypSgMaTm_1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for NamedImage.VectorKey(0);
  outlined init with take of ResolvableTextSegmentAttribute.Value(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for NamedImage.VectorKey);
  result = outlined init with take of NamedImage.VectorInfo(a3, a4[7] + 88 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of ResolvableTextSegmentAttribute.Value(a3, a4[7] + 8 * a1, type metadata accessor for WeakBox<CUICatalog>);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

long double Spring.duration.getter()
{
  v1 = -v0->f64[0];
  if (v0->f64[0] >= 0.0)
  {
    v1 = v0->f64[0];
  }

  v2.f64[1] = v0->f64[1];
  v2.f64[0] = v1;
  return 6.28318531 / sqrt(vaddvq_f64(vmulq_f64(*v0, v2)));
}

void *one-time initialization function for cache()
{
  type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>(0, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Color.Resolved.cache, 0);
  static Color.Resolved.cache = result;
  return result;
}

{
  type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>(0, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Color.ResolvedHDR.cache, 0);
  static Color.ResolvedHDR.cache = result;
  return result;
}

{
  type metadata accessor for ObjectCache<Color.Resolved, NSObject>();
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Color.Resolved.cache, 0);
  static Color.Resolved.cache = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved()
{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

void *specialized ObjectCache.init(constructor:)(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  a3(0);
  v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v7 + 16) = 32;
  type metadata accessor for URLResourceValues?(0, a4, a5, type metadata accessor for AtomicBuffer);
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0;
  *(v7 + 304) = 0;
  *(v7 + 272) = 0u;
  *(v7 + 288) = 0u;
  *(v7 + 344) = 0;
  *(v7 + 312) = 0u;
  *(v7 + 328) = 0u;
  *(v7 + 384) = 0;
  *(v7 + 352) = 0u;
  *(v7 + 368) = 0u;
  *(v7 + 424) = 0;
  *(v7 + 392) = 0u;
  *(v7 + 408) = 0u;
  *(v7 + 464) = 0;
  *(v7 + 432) = 0u;
  *(v7 + 448) = 0u;
  *(v7 + 472) = 0u;
  *(v7 + 488) = 0u;
  *(v7 + 504) = 0;
  *(v7 + 544) = 0;
  *(v7 + 512) = 0u;
  *(v7 + 528) = 0u;
  *(v7 + 584) = 0;
  *(v7 + 552) = 0u;
  *(v7 + 568) = 0u;
  *(v7 + 624) = 0;
  *(v7 + 592) = 0u;
  *(v7 + 608) = 0u;
  *(v7 + 664) = 0;
  *(v7 + 632) = 0u;
  *(v7 + 648) = 0u;
  *(v7 + 704) = 0;
  *(v7 + 672) = 0u;
  *(v7 + 688) = 0u;
  *(v7 + 744) = 0;
  *(v7 + 712) = 0u;
  *(v7 + 728) = 0u;
  *(v7 + 784) = 0;
  *(v7 + 752) = 0u;
  *(v7 + 768) = 0u;
  *(v7 + 824) = 0;
  *(v7 + 792) = 0u;
  *(v7 + 808) = 0u;
  *(v7 + 864) = 0;
  *(v7 + 832) = 0u;
  *(v7 + 848) = 0u;
  *(v7 + 904) = 0;
  *(v7 + 872) = 0u;
  *(v7 + 888) = 0u;
  *(v7 + 944) = 0;
  *(v7 + 912) = 0u;
  *(v7 + 928) = 0u;
  *(v7 + 984) = 0;
  *(v7 + 952) = 0u;
  *(v7 + 968) = 0u;
  *(v7 + 1024) = 0;
  *(v7 + 992) = 0u;
  *(v7 + 1008) = 0u;
  *(v7 + 1064) = 0;
  *(v7 + 1032) = 0u;
  *(v7 + 1048) = 0u;
  *(v7 + 1104) = 0;
  *(v7 + 1088) = 0u;
  *(v7 + 1072) = 0u;
  *(v7 + 1144) = 0;
  *(v7 + 1112) = 0u;
  *(v7 + 1128) = 0u;
  *(v7 + 1184) = 0;
  *(v7 + 1168) = 0u;
  *(v7 + 1152) = 0u;
  *(v7 + 1224) = 0;
  *(v7 + 1192) = 0u;
  *(v7 + 1208) = 0u;
  *(v7 + 1264) = 0;
  *(v7 + 1248) = 0u;
  *(v7 + 1232) = 0u;
  *(v7 + 1304) = 0;
  *(v7 + 1272) = 0u;
  *(v7 + 1288) = 0u;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  *(v8 + 32) = 0;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v8;
  return v11;
}

uint64_t type metadata completion function for ObjectCache.Item()
{
  swift_getTupleTypeMetadata3();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options()
{
  result = lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options;
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options;
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options;
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options;
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options);
  }

  return result;
}

uint64_t destroy for Material.StatefulContext()
{
}

uint64_t outlined copy of Material.Layer.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  if (a5 == 1)
  {
  }

  return result;
}

uint64_t getEnumTag for Material.Layer.SDFLayer.GroupType(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t initializeWithCopy for GraphicsFilter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 112);
  v19 = *(a2 + 120);
  outlined copy of GraphicsFilter(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  return a1;
}

id outlined copy of GraphicsFilter(id result, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  v21 = (a16 >> 25) & 0x1E | (a16 >> 23) & 1;
  if (v21 <= 17)
  {
    if (v21 == 1)
    {
      v33 = a14;
      v34 = a15;
      v31 = a12;
      v32 = a13;
      v30 = a11;
      v35 = a16 & 0xC37FFFFF;
      a2 = a3;
      v23 = a4;
      v24 = a5;
      v25 = a6;
      v26 = a7;
      v27 = a8;
      v28 = a9;
      v29 = a10;
      return outlined copy of VariableBlurStyle.Mask(a2, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    }

    if (v21 != 2 && v21 != 3)
    {
      return result;
    }

LABEL_10:
    v33 = a13;
    v34 = a14;
    v31 = a11;
    v32 = a12;
    v30 = a10;
    v35 = a15;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v29 = a9;
    return outlined copy of VariableBlurStyle.Mask(a2, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  }

  switch(v21)
  {
    case 18:
      return result;
    case 21:
      goto LABEL_10;
    case 22:
  }

  return result;
}

uint64_t _s7SwiftUI14GraphicsFilterOWOg(_DWORD *a1)
{
  v1 = (a1[30] >> 25) & 0x1E | (a1[30] >> 23) & 1;
  if (v1 <= 0x16)
  {
    return v1;
  }

  else
  {
    return (*a1 + 23);
  }
}

void outlined consume of GraphicsFilter(void *a1, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  v21 = (a16 >> 25) & 0x1E | (a16 >> 23) & 1;
  if (v21 <= 17)
  {
    if (v21 == 1)
    {
      v33 = a14;
      v34 = a15;
      v31 = a12;
      v32 = a13;
      v30 = a11;
      v35 = a16 & 0xC37FFFFF;
      a2 = a3;
      v23 = a4;
      v24 = a5;
      v25 = a6;
      v26 = a7;
      v27 = a8;
      v28 = a9;
      v29 = a10;
      goto LABEL_11;
    }

    if (v21 != 2 && v21 != 3)
    {
      return;
    }

LABEL_10:
    v33 = a13;
    v34 = a14;
    v31 = a11;
    v32 = a12;
    v30 = a10;
    v35 = a15;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v29 = a9;
LABEL_11:
    outlined consume of VariableBlurStyle.Mask(a2, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    return;
  }

  switch(v21)
  {
    case 18:

      return;
    case 21:
      goto LABEL_10;
    case 22:

      break;
  }
}

void Material.Layer.Filter.contents.getter(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[3];
  v20 = v1[4];
  v21 = v3;
  v5 = v1[5];
  v22[0] = v1[6];
  *(v22 + 12) = *(v1 + 108);
  v6 = v1[1];
  v17[0] = *v1;
  v17[1] = v6;
  v7 = v1[3];
  v9 = *v1;
  v8 = v1[1];
  v18 = v1[2];
  v19 = v7;
  v13[4] = v20;
  v13[5] = v5;
  v14[0] = v1[6];
  *(v14 + 12) = *(v1 + 108);
  v13[0] = v9;
  v13[1] = v8;
  v13[2] = v18;
  v13[3] = v4;
  outlined init with copy of GraphicsFilter(v17, v15);
  Material.Layer.Filter.Contents.init(_:)(v13, v15);
  if (v16[28] == 255)
  {
    __break(1u);
  }

  else
  {
    v10 = v15[5];
    a1[4] = v15[4];
    a1[5] = v10;
    a1[6] = *v16;
    *(a1 + 109) = *&v16[13];
    v11 = v15[1];
    *a1 = v15[0];
    a1[1] = v11;
    v12 = v15[3];
    a1[2] = v15[2];
    a1[3] = v12;
  }
}

double Material.Layer.Filter.Contents.init(_:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v53 = a1[4];
  v54 = v3;
  v55[0] = a1[6];
  v4 = v55[0];
  *(v55 + 12) = *(a1 + 108);
  v5 = a1[1];
  v50[0] = *a1;
  v50[1] = v5;
  v6 = a1[3];
  v51 = a1[2];
  v52 = v6;
  *(v57 + 12) = *(v55 + 12);
  v56[5] = v3;
  v57[0] = v4;
  v56[3] = v6;
  v56[4] = v53;
  v56[1] = v5;
  v56[2] = v51;
  v56[0] = v50[0];
  v7 = _s7SwiftUI14GraphicsFilterOWOg(v56);
  v8 = 0;
  switch(v7)
  {
    case 0:
      v9 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v10 = *(v9 + 8);
      v11 = *(v9 + 9);
      *&v43 = *v9;
      BYTE8(v43) = v10;
      BYTE9(v43) = v11;
      v8 = 5;
      goto LABEL_12;
    case 1:
      v32 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v33 = v32[5];
      v47 = v32[4];
      v48 = v33;
      *v49 = v32[6];
      *&v49[12] = *(v32 + 108);
      v34 = v32[1];
      v43 = *v32;
      v44 = v34;
      v18 = v32[2];
      v19 = v32[3];
      v8 = 7;
      goto LABEL_11;
    case 2:
      v28 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v29 = *(v28 + 80);
      v47 = *(v28 + 64);
      v48 = v29;
      *v49 = *(v28 + 96);
      *&v49[16] = *(v28 + 112);
      v30 = *(v28 + 16);
      v43 = *v28;
      v44 = v30;
      v18 = *(v28 + 32);
      v19 = *(v28 + 48);
      v8 = 8;
      goto LABEL_11;
    case 3:
      v15 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v16 = *(v15 + 80);
      v47 = *(v15 + 64);
      v48 = v16;
      *v49 = *(v15 + 96);
      *&v49[16] = *(v15 + 112);
      v17 = *(v15 + 16);
      v43 = *v15;
      v44 = v17;
      v18 = *(v15 + 32);
      v19 = *(v15 + 48);
      v8 = 9;
      goto LABEL_11;
    case 6:
      v21 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v22 = *(v21 + 80);
      v23 = *(v21 + 48);
      v45 = *(v21 + 32);
      v46 = v23;
      v47 = *(v21 + 64);
      v24 = *(v21 + 16);
      v43 = *v21;
      v44 = v24;
      LOBYTE(v48) = v22;
      v8 = 4;
      goto LABEL_12;
    case 10:
      *&v43 = *_s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v8 = 3;
      goto LABEL_12;
    case 11:
      *&v43 = *_s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v8 = 1;
      goto LABEL_12;
    case 16:
      v41 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v42 = *(v41 + 16);
      v43 = *v41;
      LODWORD(v44) = v42;
      v8 = 6;
      goto LABEL_12;
    case 17:
      v38 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v39 = v38[1];
      v43 = *v38;
      v44 = v39;
      v40 = v38[3];
      v45 = v38[2];
      v46 = v40;
      v8 = 2;
      goto LABEL_12;
    case 20:
      v12 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v13 = *(v12 + 8);
      v14 = *(v12 + 9);
      *&v43 = *v12;
      BYTE8(v43) = v13;
      BYTE9(v43) = v14;
      v8 = 10;
      goto LABEL_12;
    case 21:
      v25 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v26 = *(v25 + 80);
      v47 = *(v25 + 64);
      v48 = v26;
      *v49 = *(v25 + 96);
      *&v49[16] = *(v25 + 112);
      v27 = *(v25 + 16);
      v43 = *v25;
      v44 = v27;
      v18 = *(v25 + 32);
      v19 = *(v25 + 48);
      v8 = 11;
LABEL_11:
      v45 = v18;
      v46 = v19;
      goto LABEL_12;
    case 22:
      v20 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      (*(**v20 + 80))(&v43);
      outlined destroy of GraphicsFilter(v50);
      v8 = 12;
      goto LABEL_12;
    case 23:
LABEL_12:
      v49[28] = v8;
      v35 = v48;
      *(a2 + 64) = v47;
      *(a2 + 80) = v35;
      *(a2 + 96) = *v49;
      v36 = v44;
      *a2 = v43;
      *(a2 + 16) = v36;
      v37 = v46;
      *(a2 + 32) = v45;
      *(a2 + 48) = v37;
      result = *&v49[13];
      *(a2 + 109) = *&v49[13];
      break;
    default:
      outlined destroy of GraphicsFilter(v50);
      *(a2 + 112) = 0;
      result = 0.0;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 124) = -1;
      *(a2 + 120) = 0;
      break;
  }

  return result;
}

uint64_t _AnyHashableBox.anyValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v4 = *(*v1 + 136);
  a1[3] = v4;
  a1[4] = *(v3 + 144);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t getEnumTag for Material.Layer.Filter.Contents(uint64_t a1)
{
  result = *(a1 + 124);
  if (result >= 0xD)
  {
    return (*a1 + 13);
  }

  return result;
}

void *specialized ObjectCache.init(constructor:)(uint64_t a1, uint64_t a2)
{
  return specialized ObjectCache.init(constructor:)(a1, a2, type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>.Item, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Color.Resolved, CGColorRef>.Data>, type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>.Data);
}

{
  type metadata accessor for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item();
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = 32;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 60) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 108) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 156) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 204) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 252) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 300) = 0u;
  *(v5 + 348) = 0u;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 396) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 444) = 0u;
  *(v5 + 416) = 0u;
  *(v5 + 432) = 0u;
  *(v5 + 492) = 0u;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 540) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  *(v5 + 560) = 0u;
  *(v5 + 576) = 0u;
  *(v5 + 588) = 0u;
  *(v5 + 636) = 0u;
  *(v5 + 608) = 0u;
  *(v5 + 624) = 0u;
  *(v5 + 684) = 0u;
  *(v5 + 656) = 0u;
  *(v5 + 672) = 0u;
  *(v5 + 732) = 0u;
  *(v5 + 704) = 0u;
  *(v5 + 720) = 0u;
  *(v5 + 780) = 0u;
  *(v5 + 752) = 0u;
  *(v5 + 768) = 0u;
  *(v5 + 828) = 0u;
  *(v5 + 800) = 0u;
  *(v5 + 816) = 0u;
  *(v5 + 876) = 0u;
  *(v5 + 848) = 0u;
  *(v5 + 864) = 0u;
  *(v5 + 924) = 0u;
  *(v5 + 896) = 0u;
  *(v5 + 912) = 0u;
  *(v5 + 972) = 0u;
  *(v5 + 944) = 0u;
  *(v5 + 960) = 0u;
  *(v5 + 1020) = 0u;
  *(v5 + 992) = 0u;
  *(v5 + 1008) = 0u;
  *(v5 + 1068) = 0u;
  *(v5 + 1056) = 0u;
  *(v5 + 1040) = 0u;
  *(v5 + 1116) = 0u;
  *(v5 + 1104) = 0u;
  *(v5 + 1088) = 0u;
  *(v5 + 1164) = 0u;
  *(v5 + 1152) = 0u;
  *(v5 + 1136) = 0u;
  *(v5 + 1212) = 0u;
  *(v5 + 1200) = 0u;
  *(v5 + 1184) = 0u;
  *(v5 + 1260) = 0u;
  *(v5 + 1248) = 0u;
  *(v5 + 1232) = 0u;
  *(v5 + 1308) = 0u;
  *(v5 + 1296) = 0u;
  *(v5 + 1280) = 0u;
  *(v5 + 1356) = 0u;
  *(v5 + 1344) = 0u;
  *(v5 + 1328) = 0u;
  *(v5 + 1404) = 0u;
  *(v5 + 1392) = 0u;
  *(v5 + 1376) = 0u;
  *(v5 + 1452) = 0u;
  *(v5 + 1440) = 0u;
  *(v5 + 1424) = 0u;
  *(v5 + 1500) = 0u;
  *(v5 + 1488) = 0u;
  *(v5 + 1472) = 0u;
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Color.ResolvedHDR, CGColorRef>.Data>, type metadata accessor for ObjectCache<Color.ResolvedHDR, CGColorRef>.Data, type metadata accessor for AtomicBuffer);
  *(v5 + 1520) = 0u;
  *(v5 + 1536) = 0u;
  *(v5 + 1548) = 0u;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = v5;
  *(v6 + 32) = 0;
  v2[3] = a2;
  v2[4] = v6;
  v2[2] = a1;
  return v2;
}

{
  return specialized ObjectCache.init(constructor:)(a1, a2, type metadata accessor for ObjectCache<Color.Resolved, NSObject>.Item, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Color.Resolved, NSObject>.Data>, type metadata accessor for ObjectCache<Color.Resolved, NSObject>.Data);
}

{
  type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item();
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = 32;
  v6 = v98;
  v7 = v99;
  v8 = v98;
  v9 = v99;
  *(v5 + 32) = v98;
  *(v5 + 48) = v7;
  v10 = v103;
  v11 = v101;
  v12 = v102;
  v13 = v100;
  *(v5 + 64) = v100;
  *(v5 + 80) = v11;
  *(v5 + 96) = v12;
  *(v5 + 120) = v6;
  *(v5 + 136) = v7;
  v14 = v101;
  *(v5 + 184) = v102;
  *(v5 + 168) = v101;
  *(v5 + 112) = v10;
  v15 = v103;
  *(v5 + 200) = v103;
  *(v5 + 152) = v13;
  *(v5 + 208) = v8;
  *(v5 + 224) = v9;
  v16 = v100;
  v17 = v102;
  *(v5 + 288) = v15;
  *(v5 + 256) = v14;
  *(v5 + 272) = v17;
  *(v5 + 240) = v16;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v18 = v101;
  v19 = v102;
  *(v5 + 328) = v100;
  *(v5 + 344) = v18;
  *(v5 + 360) = v19;
  *(v5 + 376) = v103;
  v20 = v99;
  *(v5 + 296) = v98;
  *(v5 + 312) = v20;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v21 = v101;
  v22 = v102;
  *(v5 + 416) = v100;
  *(v5 + 432) = v21;
  *(v5 + 448) = v22;
  *(v5 + 464) = v103;
  v23 = v99;
  *(v5 + 384) = v98;
  *(v5 + 400) = v23;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v24 = v101;
  v25 = v102;
  *(v5 + 504) = v100;
  *(v5 + 520) = v24;
  *(v5 + 536) = v25;
  *(v5 + 552) = v103;
  v26 = v99;
  *(v5 + 472) = v98;
  *(v5 + 488) = v26;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v27 = v101;
  v28 = v102;
  *(v5 + 592) = v100;
  *(v5 + 608) = v27;
  *(v5 + 624) = v28;
  *(v5 + 640) = v103;
  v29 = v99;
  *(v5 + 560) = v98;
  *(v5 + 576) = v29;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v30 = v101;
  v31 = v102;
  *(v5 + 680) = v100;
  *(v5 + 696) = v30;
  *(v5 + 712) = v31;
  *(v5 + 728) = v103;
  v32 = v99;
  *(v5 + 648) = v98;
  *(v5 + 664) = v32;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v33 = v101;
  v34 = v102;
  *(v5 + 768) = v100;
  *(v5 + 784) = v33;
  *(v5 + 800) = v34;
  *(v5 + 816) = v103;
  v35 = v99;
  *(v5 + 736) = v98;
  *(v5 + 752) = v35;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v36 = v101;
  v37 = v102;
  *(v5 + 856) = v100;
  *(v5 + 872) = v36;
  *(v5 + 888) = v37;
  *(v5 + 904) = v103;
  v38 = v99;
  *(v5 + 824) = v98;
  *(v5 + 840) = v38;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v39 = v101;
  v40 = v102;
  *(v5 + 944) = v100;
  *(v5 + 960) = v39;
  *(v5 + 976) = v40;
  *(v5 + 992) = v103;
  v41 = v99;
  *(v5 + 912) = v98;
  *(v5 + 928) = v41;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v42 = v101;
  v43 = v102;
  *(v5 + 1032) = v100;
  *(v5 + 1048) = v42;
  *(v5 + 1064) = v43;
  *(v5 + 1080) = v103;
  v44 = v99;
  *(v5 + 1000) = v98;
  *(v5 + 1016) = v44;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1120) = v100;
  v45 = v102;
  *(v5 + 1136) = v101;
  *(v5 + 1152) = v45;
  *(v5 + 1168) = v103;
  v46 = v99;
  *(v5 + 1088) = v98;
  *(v5 + 1104) = v46;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v47 = v101;
  v48 = v102;
  *(v5 + 1208) = v100;
  *(v5 + 1224) = v47;
  *(v5 + 1240) = v48;
  *(v5 + 1256) = v103;
  v49 = v99;
  *(v5 + 1176) = v98;
  *(v5 + 1192) = v49;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1296) = v100;
  v50 = v102;
  *(v5 + 1312) = v101;
  *(v5 + 1328) = v50;
  *(v5 + 1344) = v103;
  v51 = v99;
  *(v5 + 1264) = v98;
  *(v5 + 1280) = v51;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v52 = v101;
  v53 = v102;
  *(v5 + 1384) = v100;
  *(v5 + 1400) = v52;
  *(v5 + 1416) = v53;
  *(v5 + 1432) = v103;
  v54 = v99;
  *(v5 + 1352) = v98;
  *(v5 + 1368) = v54;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1472) = v100;
  v55 = v102;
  *(v5 + 1488) = v101;
  *(v5 + 1504) = v55;
  *(v5 + 1520) = v103;
  v56 = v99;
  *(v5 + 1440) = v98;
  *(v5 + 1456) = v56;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v57 = v101;
  v58 = v102;
  *(v5 + 1560) = v100;
  *(v5 + 1576) = v57;
  *(v5 + 1592) = v58;
  *(v5 + 1608) = v103;
  v59 = v99;
  *(v5 + 1528) = v98;
  *(v5 + 1544) = v59;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1648) = v100;
  v60 = v102;
  *(v5 + 1664) = v101;
  *(v5 + 1680) = v60;
  *(v5 + 1696) = v103;
  v61 = v99;
  *(v5 + 1616) = v98;
  *(v5 + 1632) = v61;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v62 = v101;
  v63 = v102;
  *(v5 + 1736) = v100;
  *(v5 + 1752) = v62;
  *(v5 + 1768) = v63;
  *(v5 + 1784) = v103;
  v64 = v99;
  *(v5 + 1704) = v98;
  *(v5 + 1720) = v64;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1824) = v100;
  v65 = v102;
  *(v5 + 1840) = v101;
  *(v5 + 1856) = v65;
  *(v5 + 1872) = v103;
  v66 = v99;
  *(v5 + 1792) = v98;
  *(v5 + 1808) = v66;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v67 = v101;
  v68 = v102;
  *(v5 + 1912) = v100;
  *(v5 + 1928) = v67;
  *(v5 + 1944) = v68;
  *(v5 + 1960) = v103;
  v69 = v99;
  *(v5 + 1880) = v98;
  *(v5 + 1896) = v69;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2000) = v100;
  v70 = v102;
  *(v5 + 2016) = v101;
  *(v5 + 2032) = v70;
  *(v5 + 2048) = v103;
  v71 = v99;
  *(v5 + 1968) = v98;
  *(v5 + 1984) = v71;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v72 = v101;
  v73 = v102;
  *(v5 + 2088) = v100;
  *(v5 + 2104) = v72;
  *(v5 + 2120) = v73;
  *(v5 + 2136) = v103;
  v74 = v99;
  *(v5 + 2056) = v98;
  *(v5 + 2072) = v74;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2176) = v100;
  v75 = v102;
  *(v5 + 2192) = v101;
  *(v5 + 2208) = v75;
  *(v5 + 2224) = v103;
  v76 = v99;
  *(v5 + 2144) = v98;
  *(v5 + 2160) = v76;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v77 = v101;
  v78 = v102;
  *(v5 + 2264) = v100;
  *(v5 + 2280) = v77;
  *(v5 + 2296) = v78;
  *(v5 + 2312) = v103;
  v79 = v99;
  *(v5 + 2232) = v98;
  *(v5 + 2248) = v79;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2352) = v100;
  v80 = v102;
  *(v5 + 2368) = v101;
  *(v5 + 2384) = v80;
  *(v5 + 2400) = v103;
  v81 = v99;
  *(v5 + 2320) = v98;
  *(v5 + 2336) = v81;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v82 = v101;
  v83 = v102;
  *(v5 + 2440) = v100;
  *(v5 + 2456) = v82;
  *(v5 + 2472) = v83;
  *(v5 + 2488) = v103;
  v84 = v99;
  *(v5 + 2408) = v98;
  *(v5 + 2424) = v84;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2528) = v100;
  v85 = v102;
  *(v5 + 2544) = v101;
  *(v5 + 2560) = v85;
  *(v5 + 2576) = v103;
  v86 = v99;
  *(v5 + 2496) = v98;
  *(v5 + 2512) = v86;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v87 = v101;
  v88 = v102;
  *(v5 + 2616) = v100;
  *(v5 + 2632) = v87;
  *(v5 + 2648) = v88;
  *(v5 + 2664) = v103;
  v89 = v99;
  *(v5 + 2584) = v98;
  *(v5 + 2600) = v89;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2704) = v100;
  v90 = v102;
  *(v5 + 2720) = v101;
  *(v5 + 2736) = v90;
  *(v5 + 2752) = v103;
  v91 = v99;
  *(v5 + 2672) = v98;
  *(v5 + 2688) = v91;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v92 = v101;
  v93 = v102;
  *(v5 + 2792) = v100;
  *(v5 + 2808) = v92;
  *(v5 + 2824) = v93;
  *(v5 + 2840) = v103;
  v94 = v99;
  *(v5 + 2760) = v98;
  *(v5 + 2776) = v94;
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Font.FontCache.Key, CTFontRef>.Data>, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Data, type metadata accessor for AtomicBuffer);
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  *(v95 + 24) = v5;
  *(v95 + 32) = 0;
  v2[3] = a2;
  v2[4] = v95;
  v2[2] = a1;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  return v2;
}

{
  type metadata accessor for ObjectCache<Locale.Key, String>(0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Item, type metadata accessor for ObjectCache.Item);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  type metadata accessor for (key: Locale.Key, hash: Int, value: String)();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *&v9[*(v6 + 44)] = 0;
  v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v11 + 16) = 32;
  v12 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12);
  v13 = *(v7 + 72);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 2 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 3 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 4 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 5 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 6 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 7 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 8 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 9 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 10 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 11 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 12 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 13 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 14 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 15 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 16 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 17 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 18 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 19 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 20 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 21 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 22 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 23 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 24 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 25 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 26 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 27 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 28 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 29 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 30 * v13);
  outlined init with take of ObjectCache<Locale.Key, String>.Item(v9, v12 - v13 + 32 * v13);
  type metadata accessor for AtomicBuffer<ObjectCache<Locale.Key, String>.Data>();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = 0;
  v2[3] = a2;
  v2[4] = v14;
  v2[2] = a1;
  return v2;
}

void type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>.Item()
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Item)
  {
    type metadata accessor for CGColorRef(255);
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v0 = type metadata accessor for ObjectCache.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Item);
    }
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    type metadata accessor for CGColorRef(255);
    a3();
    v5 = type metadata accessor for ObjectCache();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>.Data()
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Data)
  {
    type metadata accessor for CGColorRef(255);
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v0 = type metadata accessor for ObjectCache.Data();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Data);
    }
  }
}

void one-time initialization function for srgb(uint64_t a1, id *a2, CGColorSpaceRef *a3)
{
  v4 = *a2;
  v5 = CGColorSpaceCreateWithName(v4);

  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR()
{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
  }

  return result;
}

void type metadata accessor for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item()
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item)
  {
    type metadata accessor for CGColorRef(255);
    lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR();
    v0 = type metadata accessor for ObjectCache.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item);
    }
  }
}

void type metadata accessor for ObjectCache<Color.ResolvedHDR, CGColorRef>.Data()
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Data)
  {
    type metadata accessor for CGColorRef(255);
    lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR();
    v0 = type metadata accessor for ObjectCache.Data();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Data);
    }
  }
}

void specialized ObjectCache.subscript.getter(float a1, float a2, float a3, float a4)
{
  specialized ObjectCache.subscript.getter(specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), a1, a2, a3, a4);
}

{
  specialized ObjectCache.subscript.getter(specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), a1, a2, a3, a4);
}

void Color.Resolved.cgColor.getter(float a1, float a2, float a3, float a4)
{
  if (one-time initialization token for cache != -1)
  {
    v4 = a4;
    v5 = a3;
    v6 = a2;
    v7 = a1;
    swift_once();
    a1 = v7;
    a2 = v6;
    a3 = v5;
    a4 = v4;
  }

  specialized ObjectCache.subscript.getter(a1, a2, a3, a4);
}

unint64_t Material.Layer.SDFLayer.GroupLayer.blend.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v2);
}

uint64_t destroy for SDFStyle.Group()
{
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t Color.ResolvedHDR.cgColor.getter()
{
  v1 = v0;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
    v1 = v0;
  }

  return specialized ObjectCache.subscript.getter(v1);
}

uint64_t destroy for Material.Layer(uint64_t a1)
{
  outlined consume of Material.Layer.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return outlined consume of GraphicsBlendMode(v2, v3);
}

uint64_t outlined consume of Material.Layer.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  if (a5 == 1)
  {
  }

  return result;
}

CGColorRef closure #1 in variable initialization expression of static Color.Resolved.cache@<X0>(float *a1@<X0>, CGColorRef *a2@<X8>)
{
  result = Color.Resolved.makeCGColor()(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

CGColorRef Color.Resolved.makeCGColor()(float a1, float a2, float a3, float a4)
{
  if (a1 <= 0.0)
  {
    v7 = -a1;
  }

  else
  {
    v7 = a1;
  }

  if (v7 <= 0.0031308)
  {
    v8 = v7 * 12.92;
  }

  else
  {
    v8 = 1.0;
    if (v7 != 1.0)
    {
      v9 = a1;
      v10 = powf(v7, 0.41667);
      a1 = v9;
      v8 = (v10 * 1.055) + -0.055;
    }
  }

  if (a1 <= 0.0)
  {
    v11 = -v8;
  }

  else
  {
    v11 = v8;
  }

  v19[0] = v11;
  v12 = -a2;
  if (a2 > 0.0)
  {
    v12 = a2;
  }

  if (v12 <= 0.0031308)
  {
    v13 = v12 * 12.92;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = (powf(v12, 0.41667) * 1.055) + -0.055;
    }
  }

  v14 = -v13;
  if (a2 > 0.0)
  {
    v14 = v13;
  }

  v19[1] = v14;
  v15 = -a3;
  if (a3 > 0.0)
  {
    v15 = a3;
  }

  if (v15 <= 0.0031308)
  {
    v16 = v15 * 12.92;
  }

  else
  {
    v16 = 1.0;
    if (v15 != 1.0)
    {
      v16 = (powf(v15, 0.41667) * 1.055) + -0.055;
    }
  }

  v17 = -v16;
  if (a3 > 0.0)
  {
    v17 = v16;
  }

  v19[2] = v17;
  v19[3] = a4;
  if (one-time initialization token for srgbExtended != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.Resolved.srgbExtended, v19);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static Color.ResolvedHDR.cache@<X0>(float *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (one-time initialization token for srgbExtended != -1)
  {
    swift_once();
  }

  v6 = -v4;
  if (v4 > 0.0)
  {
    v6 = v4;
  }

  if (v6 > 0.0031308 && v6 != 1.0)
  {
    powf(v6, 0.41667);
  }

  v7 = -v3;
  if (v3 > 0.0)
  {
    v7 = v3;
  }

  if (v7 > 0.0031308 && v7 != 1.0)
  {
    powf(v7, 0.41667);
  }

  v8 = -v5;
  if (v5 > 0.0)
  {
    v8 = v5;
  }

  if (v8 > 0.0031308 && v8 != 1.0)
  {
    powf(v8, 0.41667);
  }

  result = CGColorCreateWithContentHeadroom();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Material(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t outlined copy of Material.ID(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t outlined consume of Material.ID(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t Material.init<A>(provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MaterialProviderBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = MaterialProviderBox.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  *(a3 + 8) = 1;
  *(a3 + 12) = 0;
  return result;
}

{
  return Material.init<A>(provider:)(a1, a2, type metadata accessor for AnimatableMaterialProviderBox, specialized AnimatableMaterialProviderBox.init(_:), a3);
}

uint64_t _AnyLayoutBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 184) - 8) + 32))(v2 + *(*v2 + 200), a1);
  return v2;
}

uint64_t type metadata completion function for _AnyResolvedPaint()
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

uint64_t _AnyLayoutBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 184) - 8) + 8))(v0 + *(*v0 + 200));

  return swift_deallocClassInstance();
}

void specialized ObjectCache.subscript.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t), float a3, float a4, float a5, float a6)
{
  v9 = v6;
  *v30 = a3;
  *&v30[1] = a4;
  *&v30[2] = a5;
  *&v30[3] = a6;
  Hasher.init(_seed:)();
  Color.Resolved.hash(into:)(a3, a4, a5, a6);
  v10 = Hasher._finalize()();
  v11 = 4 * (v10 & 7);
  v29[0] = 0;
  v28 = 0x80000000;
  v12 = *(v6 + 32);

  os_unfair_lock_lock(v12 + 4);
  v13 = specialized closure #1 in ObjectCache.subscript.getter(&v12[6], v11, v10, &v28, v29, a1, a3, a4, a5, a6);
  os_unfair_lock_unlock(v12 + 4);

  if (!v13)
  {
    v14 = *(v9 + 24);
    (*(v9 + 16))(&v27, v30);
    v15 = *(v9 + 32);

    os_unfair_lock_lock((v15 + 16));
    v16 = __OFADD__(v11, v29[0]);
    v17 = v11 + v29[0];
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v18 = v27;
      LODWORD(a1) = *(v15 + 32) + 1;
      *(v15 + 32) = a1;
      v9 = *(v15 + 24);
      v14 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 24) = v9;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    v9 = a2(v9);
    *(v15 + 24) = v9;
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v17 < *(v9 + 16))
      {
        v20.i64[0] = LODWORD(a3);
        v20.i64[1] = LODWORD(a5);
        v21 = (v9 + 40 * v17);
        v22 = v21[3].i64[1];
        v21[2] = vorrq_s8(vshll_n_s32(__PAIR64__(LODWORD(a6), LODWORD(a4)), 0x20uLL), v20);
        v21[3].i64[0] = v10;
        v21[3].i64[1] = v14;
        v21[4].i32[0] = a1;

        os_unfair_lock_unlock((v15 + 16));

        return;
      }

LABEL_11:
      __break(1u);

      os_unfair_lock_unlock(v12 + 4);
      __break(1u);
      return;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized closure #1 in ObjectCache.subscript.getter(uint64_t result, unint64_t a2, uint64_t a3, int *a4, void *a5, uint64_t (*a6)(uint64_t), float a7, float a8, float a9, float a10)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  v12 = a2;
  v10 = result;
  v11 = *result;
  if (*(*result + 16) <= a2)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v13 = a6;
  v16 = v11 + 32;
  v17 = v11 + 32 + 40 * a2;
  v14 = *(v17 + 24);
  if (!v14)
  {
    v22 = 0x7FFFFFFF;
    v23 = 0x7FFFFFFF;
    if (*a4 == 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = *(v17 + 16) == a3 && *v17 == a7;
  if (v18 && *(v17 + 4) == a8 && *(v17 + 8) == a9 && *(v17 + 12) == a10)
  {
LABEL_64:
    v15 = *(result + 8) + 1;
    *(result + 8) = v15;
    v37 = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_65:
      if (v12 < *(v11 + 16))
      {
        *(v11 + 40 * v12 + 64) = v15;
        *v10 = v11;
        return v14;
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    result = v13(v11);
    v11 = result;
    goto LABEL_65;
  }

  v22 = *(result + 8) - *(v17 + 32);
  v23 = *a4;
  if (*a4 < v22)
  {
LABEL_20:
    *a5 = 0;
    *a4 = v22;
    v23 = v22;
  }

LABEL_21:
  v24 = a2 + 1;
  if (a2 + 1 >= *(v11 + 16))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v25 = v16 + 40 * v24;
  v14 = *(v25 + 24);
  if (v14)
  {
    if (*(v25 + 16) == a3 && *v25 == a7 && *(v25 + 4) == a8 && *(v25 + 8) == a9 && *(v25 + 12) == a10)
    {
      goto LABEL_54;
    }

    v30 = *(result + 8) - *(v25 + 32);
    if (v23 >= v30)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v30 = 0x7FFFFFFF;
    v18 = v23 == 0x7FFFFFFF;
    v23 = 0x7FFFFFFF;
    if (v18)
    {
      goto LABEL_40;
    }
  }

  *a5 = 1;
  *a4 = v30;
  v23 = v30;
LABEL_40:
  v24 = a2 + 2;
  if (a2 + 2 >= *(v11 + 16))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v31 = v16 + 40 * v24;
  v14 = *(v31 + 24);
  if (!v14)
  {
    v35 = 0x7FFFFFFF;
    v18 = v23 == 0x7FFFFFFF;
    v23 = 0x7FFFFFFF;
    if (v18)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (*(v31 + 16) == a3)
  {
    v32 = *v31 == a7 && *(v31 + 4) == a8;
    v33 = v32 && *(v31 + 8) == a9;
    if (v33 && *(v31 + 12) == a10)
    {
LABEL_54:
      v12 = v24;
      goto LABEL_64;
    }
  }

  v35 = *(result + 8) - *(v31 + 32);
  if (v23 < v35)
  {
LABEL_56:
    *a5 = 2;
    *a4 = v35;
    v23 = v35;
  }

LABEL_57:
  v12 = a2 + 3;
  if (a2 + 3 < *(v11 + 16))
  {
    v36 = v16 + 40 * v12;
    v14 = *(v36 + 24);
    if (v14)
    {
      if (*(v36 + 16) == a3 && *v36 == a7 && *(v36 + 4) == a8 && *(v36 + 8) == a9 && *(v36 + 12) == a10)
      {
        goto LABEL_64;
      }

      v38 = *(result + 8) - *(v36 + 32);
      if (v23 < v38)
      {
LABEL_73:
        v14 = 0;
        *a5 = 3;
        *a4 = v38;
        return v14;
      }
    }

    else
    {
      v38 = 0x7FFFFFFF;
      if (v23 != 0x7FFFFFFF)
      {
        goto LABEL_73;
      }
    }

    return 0;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t GradientBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018BackgroundMaterialV033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void Color.Resolved.hash(into:)(float a1, float a2, float a3, float a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(a1));
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  Hasher._combine(_:)(LODWORD(v9));
}

uint64_t outlined consume of GraphicsBlendMode(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018BackgroundMaterialV033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018BackgroundMaterialV033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t specialized ObjectCache.subscript.getter(uint64_t *a1)
{
  v6 = v1;
  v7 = *a1;
  v29 = *(a1 + 4);
  v30 = a1[1];
  v32 = *a1;
  v33 = *(a1 + 4);
  Hasher.init(_seed:)();
  Color.ResolvedHDR.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = 4 * (v8 & 7);
  v10 = v1[4];

  os_unfair_lock_lock((v10 + 16));
  v11 = *(v10 + 24);
  v12 = v11[2];
  if (v9 >= v12)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v13 = 0;
  v5 = 0;
  v3 = 192 * (v8 & 7) + 72;
  v14 = 0x80000000;
  v4 = 4 * (v8 & 7);
  while (1)
  {
    v17 = (v11 + v3);
    v2 = *(v11 + v3 - 8);
    if (v2)
    {
      break;
    }

    v18 = v14 == 0x7FFFFFFF;
    v14 = 0x7FFFFFFF;
    if (!v18)
    {
      if (v13 == 3)
      {
        v2 = 0;
        v5 = 3;
        goto LABEL_34;
      }

      v5 = v13;
      goto LABEL_8;
    }

LABEL_7:
    if (v13 == 3)
    {
      v2 = 0;
      goto LABEL_34;
    }

LABEL_8:
    ++v4;
    v3 += 48;
    ++v13;
    if (v12 == v4)
    {
      goto LABEL_41;
    }
  }

  v18 = *(v17 - 2) == v8 && *&v7 == *(v17 - 10);
  v21 = v18 && *(&v7 + 1) == *(v17 - 9) && *&v30 == *(v17 - 8) && *(&v30 + 1) == *(v17 - 7);
  if (!v21 || *(v11 + v3 - 24) != *&v29)
  {
    v15 = *(v10 + 32) - *v17;
    v16 = v14 < v15;
    if (v14 <= v15)
    {
      v14 = *(v10 + 32) - *v17;
    }

    if (v16)
    {
      v5 = v13;
    }

    goto LABEL_7;
  }

  v28 = v7;
  LODWORD(v7) = *(v10 + 32) + 1;
  *(v10 + 32) = v7;
  v22 = v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 24) = v11;
  if ((result & 1) == 0)
  {
    goto LABEL_46;
  }

  while (v4 < v11[2])
  {
    *(v11 + v3) = v7;
    *(v10 + 24) = v11;
    v7 = v28;
LABEL_34:
    os_unfair_lock_unlock((v10 + 16));

    if (v2)
    {
      return v2;
    }

    (v6[2])(&v31, &v32);
    v10 = v6[4];

    os_unfair_lock_lock((v10 + 16));
    v24 = __OFADD__(v9, v5);
    v9 += v5;
    if (v24)
    {
LABEL_42:
      __break(1u);
    }

    else
    {
      v11 = v31;
      v3 = (*(v10 + 32) + 1);
      *(v10 + 32) = v3;
      v6 = *(v10 + 24);
      v2 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 24) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_38;
      }
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    *(v10 + 24) = v6;
    if ((v9 & 0x8000000000000000) != 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_38:
    if (v9 < v6[2])
    {
      v26 = &v6[6 * v9];
      v27 = v26[8];
      v26[4] = v7;
      v26[5] = v30;
      v26[6] = v29;
      v26[7] = v8;
      v26[8] = v11;
      *(v26 + 18) = v3;

      os_unfair_lock_unlock((v10 + 16));

      return v2;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    v11 = result;
  }

  __break(1u);
  return result;
}

void Color.ResolvedHDR.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  Hasher._combine(_:)(LODWORD(v5));
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  Hasher._combine(_:)(LODWORD(v6));
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  Hasher._combine(_:)(LODWORD(v7));
  v8 = v0[4];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v8));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundMaterialKey>>();
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    outlined copy of Material?(a2, a3);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundMaterialKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundMaterialKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundMaterialKey>>);
    }
  }
}

uint64_t outlined consume of Material?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined consume of Material.ID(a1, a2);
  }

  return a1;
}

uint64_t EnvironmentValues.backgroundMaterial.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  swift_retain_n();
  outlined copy of Material?(v2, v3);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v1, v2, v3);

  outlined consume of Material?(v2, v3);
  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v4, *v1);
  }

  return outlined consume of Material?(v2, v3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Material(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t outlined copy of Material?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of Material.ID(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for Material(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 16))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, char *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!v8)
  {
    v9 = *(v5 + 16);
    goto LABEL_5;
  }

  v9 = *(v5 + 16);
  v9(v7, &v8[*(*v8 + 248)], v4);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
LABEL_5:
    v9(v7, a2, v4);
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<LocaleKey>>();
    v13 = swift_allocObject();
    v9((v13 + *(*v13 + 248)), v7, v4);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
    v15 = v14;

    value = PropertyList.Element.init(keyType:before:after:)(v15, 0, v12).value;
    (*(v5 + 8))(v7, v4);
    *a1 = value;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06LocaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<LocaleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LocaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LocaleKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06LocaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06LocaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *assignWithCopy for EnvironmentValues(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE025AssetCatalogConfigurationE033_F748B30B59970FC73194935C526E3031LLV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48) & *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0 && (*(a2 + 48) & 1) == 0)
  {
    v3 = *(a2 + 40);
    v4 = *(a2 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = CGRectEqualToRect(*a1, *a2);
    v2 = v6 == v4 && v7;
    if (v5 != v3)
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t static RepresentableContextValues.current.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = static RepresentableContextValues.current;
  v3 = qword_1ED527ED0;
  v4 = unk_1ED527ED8;
  *a1 = static RepresentableContextValues.current;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = byte_1ED527EE0;
  *(a1 + 32) = byte_1ED527EE0;
  return outlined copy of RepresentableContextValues?(v2, *(&v2 + 1), v3, v4, v5);
}

uint64_t GraphHost.addPreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  AGGraphClearUpdate();
  a4(v4, a2, a3);

  return AGGraphSetUpdate();
}

uint64_t outlined copy of RepresentableContextValues?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result != 1)
  {

    return outlined copy of RepresentableContextValues.EnvironmentStorage(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t closure #1 in GraphHost.addPreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 8);
  v6 = *AGGraphGetValue();
  v7 = PreferenceKeys._index(of:)(a2);
  swift_bridgeObjectRetain_n();

  v8 = *(v6 + 16);
  if (v7 != v8)
  {
    if (v7 >= v8)
    {
      goto LABEL_11;
    }

    if (*(v6 + 16 * v7 + 32) == a2)
    {
      goto LABEL_9;
    }
  }

  if (v8 < v7)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v8 >= *(v6 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8 + 1, 1, v6);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v7, 1, a2, v5);
LABEL_9:
  AGGraphSetValue();
}

uint64_t closure #1 in GraphHost.removePreference<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *AGGraphGetValue();
  v4 = PreferenceKeys._index(of:)(a2);
  swift_bridgeObjectRetain_n();

  v5 = *(v3 + 16);
  if (v4 != v5)
  {
    if (v4 >= v5)
    {
      __break(1u);
    }

    if (*(v3 + 16 * v4 + 32) == a2)
    {
      specialized Array.remove(at:)(v4);
    }
  }

  AGGraphSetValue();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayCornerRadiusKey>, &type metadata for DisplayCornerRadiusKey, &protocol witness table for DisplayCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t one-time initialization function for red(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<SystemColorType>, lazy protocol witness table accessor for type SystemColorType and conformance SystemColorType, &type metadata for SystemColorType, type metadata accessor for ColorBox);
  result = swift_allocObject();
  *(result + 16) = a2;
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t static HierarchicalShapeStyle.sharedPrimary.getter(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t one-time initialization function for layoutDirection()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.layoutDirection = result;
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultAccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018DefaultAccentColorV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

Swift::Void __swiftcall _ViewInputs.makeRootMatchedGeometryScope()()
{
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(*v0))
  {
  }

  else
  {
    v1 = *(v0 + 3);
    v11 = *(v0 + 2);
    v12 = v1;
    v13 = *(v0 + 4);
    v14 = *(v0 + 20);
    v2 = *(v0 + 1);
    v9 = *v0;
    v10 = v2;
    type metadata accessor for MatchedGeometryScope();
    v3 = swift_allocObject();
    v4 = AGSubgraphGetCurrent();
    if (v4)
    {
      v5 = v12;
      *(v3 + 56) = v11;
      *(v3 + 72) = v5;
      *(v3 + 88) = v13;
      v6 = v10;
      *(v3 + 24) = v9;
      *(v3 + 16) = v4;
      v7 = MEMORY[0x1E69E7CC8];
      *(v3 + 112) = MEMORY[0x1E69E7CC0];
      *(v3 + 120) = v7;
      *(v3 + 104) = v14;
      *(v3 + 40) = v6;
      outlined init with copy of _ViewInputs(&v9, v8);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(v0, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall ViewGraph.instantiateOutputs()()
{
  v27 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v1 = *(v0 + 32);
  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in ViewGraph.instantiateOutputs()(v0, &v24);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v3 = v24;
  v4 = v25;
  v5 = v26;
  v19 = v24;
  v20 = v25;
  v21 = v26;
  v16 = partial apply for specialized closure #2 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:);
  v17 = &v18;
  AGGraphMutateAttribute();
  swift_beginAccess();
  if (*(v0 + 361))
  {
    v6 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v3);
    if ((v6 & 0x100000000) == 0)
    {
      v7 = v6;
      v8 = *(v0 + 32);
      AGGraphClearUpdate();
      v9 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v10 = *(v0 + 44);
      v22 = v7;
      v23 = v10;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version));
      lazy protocol witness table accessor for type RootDisplayList and conformance RootDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      *(v0 + 340) = AGCreateWeakAttribute();
    }
  }

  v11 = *(v0 + 361);
  if ((v11 & 4) != 0)
  {
    _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v3);
    *(v0 + 324) = AGCreateWeakAttribute();
    v11 = *(v0 + 361);
  }

  if ((v11 & 0x10) != 0)
  {
    *(v0 + 332) = AGCreateWeakAttribute();
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(v3);
  v12 = AGCreateWeakAttribute();
  swift_beginAccess();
  *(v0 + 132) = v12;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  ViewGraph.makePreferenceOutlets(outputs:)(&v13);
}

uint64_t ViewGraphRootValueUpdater.updateGraph<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17[-v13];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a1;
  v22 = a2;
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(partial apply for closure #1 in ViewGraphRootValueUpdater.updateGraph<A>(body:), a3, a4, a5, &v17[-v13]);
  v15 = *(a4 - 8);
  result = (*(v15 + 48))(v14, 1, a4);
  if (result != 1)
  {
    return (*(v15 + 32))(a6, v14, a4);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ViewGraph.instantiateOutputs()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  v65[0] = *(a1 + 72);
  v65[1] = v4;
  v66 = *(a1 + 104);
  v5 = *(a1 + 268);
  v6 = *(a1 + 272);
  v7 = *(a1 + 244);
  v8 = *(a1 + 248);
  v9 = *(a1 + 56);
  v64 = *MEMORY[0x1E698D3F8];
  v60 = v4;
  v61 = v66;
  v59 = v65[0];
  v10 = MEMORY[0x1E69E7CC0];
  *&v62 = MEMORY[0x1E69E7CC0];
  HIDWORD(v63) = v64;
  *(&v62 + 1) = __PAIR64__(v7, v9);
  LODWORD(v63) = v5;
  *(&v63 + 4) = __PAIR64__(v6, v8);
  swift_beginAccess();
  v11 = *(a1 + 361);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(a1 + 276);
    DWORD1(v61) = DWORD1(v66) | 0x22;
    v64 = v12;
  }

  *&v51[0] = v10;
  v13 = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
  outlined init with copy of _GraphInputs(v65, &v53);

  v15 = *(v10 + 2);
  if (v13 == v15)
  {
    goto LABEL_6;
  }

  if (v13 >= v15)
  {
    goto LABEL_57;
  }

  if (*&v10[16 * v13 + 32] != &type metadata for HostPreferencesKey)
  {
LABEL_6:
    if (v15 >= v13)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v62 = v10;
      if (!isUniquelyReferenced_nonNull_native || v15 >= *(v10 + 3) >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15 + 1, 1, MEMORY[0x1E69E7CC0]);
        *&v62 = v10;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v13, v13, 1, &type metadata for HostPreferencesKey, &protocol witness table for HostPreferencesKey);
      *&v62 = v10;
      goto LABEL_11;
    }

    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_11:
  if (v11)
  {
    *&v53 = v10;
    v17 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);

    v18 = *(v10 + 2);
    if (v17 == v18)
    {
      goto LABEL_15;
    }

    if (v17 >= v18)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (*&v10[16 * v17 + 32] != &type metadata for DisplayList.Key)
    {
LABEL_15:
      if (v18 >= v17)
      {
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *&v62 = v10;
        if (!v19 || v18 >= *(v10 + 3) >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v18 + 1, 1, v10);
          *&v62 = v10;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
        *&v62 = v10;
        goto LABEL_20;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

LABEL_20:
  if ((v11 & 4) == 0)
  {
    goto LABEL_29;
  }

  *&v53 = v10;
  v20 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);

  v21 = *(v10 + 2);
  if (v20 != v21)
  {
    if (v20 >= v21)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (*&v10[16 * v20 + 32] == &type metadata for ViewRespondersKey)
    {
      goto LABEL_29;
    }
  }

  if (v21 < v20)
  {
    goto LABEL_59;
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v10;
  if (!v22 || v21 >= *(v10 + 3) >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v21 + 1, 1, v10);
    *&v62 = v10;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v20, v20, 1, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  *&v62 = v10;
LABEL_29:
  if (swift_weakLoadStrong())
  {
    PreferenceBridge.wrapInputs(_:)(&v59);
  }

  swift_beginAccess();
  if ((static _ViewDebug.isInitialized & 1) == 0)
  {
    v23 = getenv("SWIFTUI_VIEW_DEBUG");
    if (v23)
    {
      v24 = atoi(v23);
      swift_beginAccess();
      static _ViewDebug.properties = v24;
    }

    static _ViewDebug.isInitialized = 1;
  }

  swift_beginAccess();
  if (static _ViewDebug.properties)
  {
    AGSubgraphSetShouldRecordTree();
  }

  v25 = WORD2(v61);
  if ((BYTE4(v61) & 0x20) != 0)
  {
    _ViewInputs.makeRootMatchedGeometryScope()();
  }

  if ((v25 & 0x100) != 0)
  {
    AGTypeGetSignature();
    specialized _GraphInputs.pushScope<A>(id:)(v53, *(&v53 + 1), v54);
  }

  MEMORY[0x1EEE9AC00](*(a1 + 264));
  MEMORY[0x1EEE9AC00](v26);
  AGGraphMutateAttribute();
  result = swift_beginAccess();
  v27 = *(a1 + 228);
  if (!v27)
  {
    goto LABEL_48;
  }

  v28 = *(a1 + 216);
  if (!v28)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v29 = 0;
  v30 = v27 - 1;
  do
  {
    v33 = (v28 + v29);
    if (v30)
    {
      v29 += *(v33 + 2);
    }

    else
    {
      v29 = 0;
    }

    v31 = v30 | v29;
    v32 = *v33;
    *&v53 = v33;
    (*(v32 + 112))(&v53, &v59, a1);
    --v30;
  }

  while (v31);
LABEL_48:
  v51[2] = v61;
  v51[3] = v62;
  v51[4] = v63;
  v51[0] = v59;
  v51[1] = v60;
  v46 = v61;
  v47 = v62;
  v48 = v63;
  v34 = *(a1 + 184);
  v52 = v64;
  v35 = *(a1 + 236);
  v49 = v64;
  v44 = v59;
  v45 = v60;
  outlined init with copy of _ViewInputs(v51, &v53);
  v34(v50, v35, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  result = outlined destroy of _ViewInputs(&v53);
  v36 = *(a1 + 228);
  if (!v36)
  {
LABEL_55:
    *a2 = v50[0];
    a2[1] = v50[1];
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v44 = v59;
    v45 = v60;
    return outlined destroy of _ViewInputs(&v44);
  }

  v37 = *(a1 + 216);
  if (v37)
  {
    v38 = 0;
    v39 = v36 - 1;
    do
    {
      v42 = (v37 + v38);
      if (v39)
      {
        v38 += *(v42 + 2);
      }

      else
      {
        v38 = 0;
      }

      v40 = v39 | v38;
      v46 = v61;
      v47 = v62;
      v48 = v63;
      v49 = v64;
      v44 = v59;
      v45 = v60;
      v41 = *v42;
      v43 = v42;
      (*(v41 + 120))(&v43, v50, &v44, a1);
      --v39;
    }

    while (v40);
    goto LABEL_55;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = type metadata accessor for MatchedGeometryScope();
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt0B5(v4, v8) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for MatchedGeometryScope?, type metadata accessor for MatchedGeometryScope, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, &lazy cache variable for type metadata for TypedElement<MatchedGeometryScope>, type metadata accessor for MatchedGeometryScope);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v5, 0, v7);
  }

  return result;
}

void type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TypedElement();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static ViewGraphFeatureBuffer._VTable.modifyViewInputs(elt:inputs:graph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v3 + 184) + 8))(a2, a3, v6);
}

uint64_t initializeWithCopy for _ViewInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t destroy for _ViewInputs()
{
}

uint64_t specialized CachedEnvironment.attribute<A>(id:_:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, LayoutDirection> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, LayoutDirection>, &type metadata for LayoutDirection);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v9 = MEMORY[0x1E69E7DE0];
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, CGFloat>, &type metadata for EnvironmentValues, MEMORY[0x1E69E7DE0], MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, CGFloat>, v9);

  v10 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v12 = *(v3 + 2);
  v11 = *(v3 + 3);
  if (v12 >= v11 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v3);
  }

  result = v10;
  *(v3 + 2) = v12 + 1;
  v13 = &v3[16 * v12];
  *(v13 + 4) = a1;
  *(v13 + 10) = v10;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ContainerShapeData>, &type metadata for EnvironmentValues, &type metadata for ContainerShapeData, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ContainerShapeData> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ContainerShapeData>, &type metadata for ContainerShapeData);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, EdgeInsets>, &type metadata for EnvironmentValues, &type metadata for EdgeInsets, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, EdgeInsets> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, EdgeInsets>, &type metadata for EdgeInsets);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v9 = MEMORY[0x1E69E6370];
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>, &type metadata for EnvironmentValues, MEMORY[0x1E69E6370], MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>, v9);

  v10 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v12 = *(v3 + 2);
  v11 = *(v3 + 3);
  if (v12 >= v11 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v3);
  }

  result = v10;
  *(v3 + 2) = v12 + 1;
  v13 = &v3[16 * v12];
  *(v13 + 4) = a1;
  *(v13 + 10) = v10;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ScrollAnchorStorage>, &type metadata for EnvironmentValues, &type metadata for ScrollAnchorStorage, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ScrollAnchorStorage> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ScrollAnchorStorage>, &type metadata for ScrollAnchorStorage);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, Axis.Set>, &type metadata for EnvironmentValues, &type metadata for Axis.Set, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, Axis.Set> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, Axis.Set>, &type metadata for Axis.Set);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, Color?>();
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, Color?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, Color?>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, AnyShapeStyle?>();
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, AnyShapeStyle?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, AnyShapeStyle?>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, RedactionReasons>, &type metadata for EnvironmentValues, &type metadata for RedactionReasons, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, RedactionReasons> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, RedactionReasons>, &type metadata for RedactionReasons);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1(0, &lazy cache variable for type metadata for GestureConstantsProvider.Type?, type metadata accessor for GestureConstantsProvider.Type, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, GestureConstantsProvider.Type?>();
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, GestureConstantsProvider.Type?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, GestureConstantsProvider.Type?>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ContentTransitionEffect>, &type metadata for EnvironmentValues, &type metadata for ContentTransitionEffect, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ContentTransitionEffect> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ContentTransitionEffect>, &type metadata for ContentTransitionEffect);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, GlassEffectBackdropObserver?>();
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, GlassEffectBackdropObserver?>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, MaterialBackdropProxy?>();
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, MaterialBackdropProxy?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, MaterialBackdropProxy?>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, HoverEffectContext?>();
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, HoverEffectContext?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, HoverEffectContext?>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ControlSize>, &type metadata for EnvironmentValues, &type metadata for ControlSize, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ControlSize> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ControlSize>, &type metadata for ControlSize);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, &type metadata for UserInterfaceSizeClass, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, UserInterfaceSizeClass?>();
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, UserInterfaceSizeClass?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, UserInterfaceSizeClass?>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = (v3 + 32);
  v5 = *(v3 + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      return *(v6 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ColorScheme>, &type metadata for EnvironmentValues, &type metadata for ColorScheme, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ColorScheme> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ColorScheme>, &type metadata for ColorScheme);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
  }

  result = v9;
  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 10) = v9;
  *(v1 + 8) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(255, a2, &type metadata for EnvironmentValues, a3, MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CachedEnvironment.animatedPosition(for:)(__int128 *a1)
{
  v2 = a1[3];
  v39 = a1[2];
  v40 = v2;
  v41 = a1[4];
  v42 = *(a1 + 20);
  v3 = a1[1];
  v37 = *a1;
  v38 = v3;
  if ((BYTE4(v39) & 0x20) == 0)
  {
    return v41;
  }

  v6 = HIDWORD(v38);
  *v31 = *a1;
  *&v31[12] = *(a1 + 12);
  v7 = a1[3];
  v33 = a1[2];
  v34 = v7;
  v35 = a1[4];
  v8 = *(a1 + 20);
  v32 = HIDWORD(v38);
  v36 = v8;
  v9 = *v31;
  v10 = *&v31[8];
  v11 = *&v31[24];
  outlined init with copy of _ViewInputs(&v37, v26);
  outlined init with copy of _ViewInputs(v31, v26);
  v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v9);
  if (*(v12 + 16))
  {
    v6 = *(v12 + 32);
  }

  outlined destroy of _ViewInputs(v31);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v13 = specialized CachedEnvironment.attribute<A>(id:_:)(static CachedEnvironment.ID.pixelLength);
  v14 = v13;
  if ((*(v1 + 65) & 1) != 0 || *(v1 + 16) != v35 || *(v1 + 20) != __PAIR64__(v13, DWORD2(v35)) || *(v1 + 28) != v10 || *(v1 + 32) != v6 || *(v1 + 36) != v11)
  {
    *&v26[12] = *(a1 + 12);
    *v26 = *a1;
    v15 = a1[3];
    v27 = a1[2];
    v28 = v15;
    v29 = a1[4];
    v16 = *(a1 + 20);
    *&v26[28] = v6;
    v30 = v16;
    v24[3] = v15;
    v24[4] = v29;
    v25 = v16;
    v24[0] = *v26;
    v24[1] = *&v26[16];
    v24[2] = v27;
    v17 = *v1;
    outlined init with copy of _ViewInputs(v26, v22);
    CachedEnvironment.AnimatedFrame.init(inputs:pixelLength:environment:)(v24, v14, v17, v22);
    LOBYTE(v24[0]) = 0;
    v18 = v22[1];
    *(v1 + 16) = v22[0];
    *(v1 + 32) = v18;
    *(v1 + 48) = v22[2];
    *(v1 + 64) = v23;
    *(v1 + 65) = 0;
  }

  if (*(v1 + 48) == 1)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    *(v1 + 44) = OffsetAttribute2;
    *(v1 + 48) = 0;
  }

  else
  {
    OffsetAttribute2 = *(v1 + 44);
  }

  *v26 = *a1;
  *&v26[12] = *(a1 + 12);
  v19 = a1[3];
  v27 = a1[2];
  v28 = v19;
  v29 = a1[4];
  v20 = *(a1 + 20);
  *&v26[28] = v6;
  v30 = v20;
  outlined destroy of _ViewInputs(v26);
  return OffsetAttribute2;
}

uint64_t CachedEnvironment.AnimatedFrame.init(inputs:pixelLength:environment:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  v7 = a1[1];
  v30 = *a1;
  v31 = v7;
  v8 = a1[3];
  v32 = a1[2];
  v33 = v8;
  v34 = v6;
  v35 = *(a1 + 20);
  v9 = v6;
  v10 = DWORD2(v6);
  v11 = DWORD2(v30);
  v12 = DWORD2(v31);
  v13 = HIDWORD(v31);
  v16[0] = v6;
  v16[1] = DWORD2(v6);
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = DWORD2(v31);
  v16[5] = DWORD2(v30);
  v16[6] = HIDWORD(v31);
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0;
  v21 = 0;
  if ((WORD2(v32) & 0x400) != 0)
  {
    v23 = 0;
    v24 = 1;
    v27 = 0;
    v26 = 0u;
    v25 = 0u;
    v28 = 1;
    v29 = BYTE4(v32) & 1;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type AnimatableFrameAttributeVFD and conformance AnimatableFrameAttributeVFD();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableFrameAttributeVFD(v16);
  }

  else
  {
    v22 = BYTE4(v32) & 1;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableFrameAttribute(v16);
  }

  AGGraphSetFlags();
  result = outlined destroy of _ViewInputs(&v30);
  *a4 = v9;
  *(a4 + 4) = v10;
  *(a4 + 8) = a2;
  *(a4 + 12) = v11;
  *(a4 + 16) = v13;
  *(a4 + 20) = v12;
  *(a4 + 24) = v14;
  *(a4 + 28) = 0;
  *(a4 + 32) = 1;
  *(a4 + 36) = 0;
  *(a4 + 40) = 1;
  *(a4 + 44) = 0;
  *(a4 + 48) = 1;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV015LayoutDirectionV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV015LayoutDirectionV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016LegibilityWeightV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016LegibilityWeightV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV015LayoutDirectionV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DynamicTypeSizeV033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DynamicTypeSizeV033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DynamicTypeSizeV033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016LegibilityWeightV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA032HorizontalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayGamutV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayGamutV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayGamutV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>);
    }
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA030VerticalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

Swift::Void __swiftcall ViewGraphRootValueUpdater.updateGraph()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v27 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner);
  (*(*(v4 + 8) + 16))(&v23, v6, v6, v5);
  v7 = v23;
  if (v23)
  {
    v8 = v24;
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 40))(ObjectType, v8);
    if (v10)
    {
      MEMORY[0x1EEE9AC00](v10);
      v18[2] = v5;
      v18[3] = v4;
      v12 = v11;
      v19 = v11;
      v20 = v7;
      v21 = v8;
      v22 = v3;
      if ([objc_opt_self() isMainThread])
      {
        closure #1 in ViewGraphRootValueUpdater.updateGraph()(v12, v7, v8, v3, v5, v4);
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = swift_allocObject();
        *(v13 + 16) = partial apply for closure #1 in ViewGraphRootValueUpdater.updateGraph();
        *(v13 + 24) = v18;
        v14 = AGSubgraphGetCurrent();
        CurrentAttribute = AGGraphGetCurrentAttribute();
        v23 = partial apply for thunk for @callee_guaranteed () -> ();
        v24 = v13;
        v25 = v14;
        v26 = CurrentAttribute;
        v16 = one-time initialization token for _lock;

        if (v16 != -1)
        {
          swift_once();
        }

        _MovableLockSyncMain(static Update._lock, &v23, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
        v17 = v25;

        LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();
        swift_unknownObjectRelease();

        if (v17)
        {
          __break(1u);
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayGamutF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayGamutKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayGamutKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayGamutKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayGamutKey>>);
    }
  }
}

uint64_t closure #1 in ViewGraphRootValueUpdater.updateGraph()(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a4;
  swift_unknownObjectRetain();
  if (v10)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a3 + 56))(v49, ObjectType, a3);
    if (*v14)
    {
      *v14 &= ~1u;
    }

    v15(v49, 0);
    (*(v12[3] + 16))(v12[2]);
  }

  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 2) != 0)
  {
    v17 = swift_getObjectType();
    v19 = (*(a3 + 56))(v49, v17, a3);
    if ((*v18 & 2) != 0)
    {
      *v18 &= ~2u;
    }

    v19(v49, 0);
    (*(v16[3] + 24))(v16[2]);
  }

  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 4) != 0)
  {
    v21 = swift_getObjectType();
    v23 = (*(a3 + 56))(v49, v21, a3);
    if ((*v22 & 4) != 0)
    {
      *v22 &= ~4u;
    }

    v23(v49, 0);
    (*(v20[3] + 32))(v20[2]);
  }

  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 8) != 0)
  {
    v25 = swift_getObjectType();
    v27 = (*(a3 + 56))(v49, v25, a3);
    if ((*v26 & 8) != 0)
    {
      *v26 &= ~8u;
    }

    v27(v49, 0);
    (*(v24[3] + 40))(v24[2]);
  }

  v28 = swift_allocObject();
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x10) != 0)
  {
    v29 = swift_getObjectType();
    v31 = (*(a3 + 56))(v49, v29, a3);
    if ((*v30 & 0x10) != 0)
    {
      *v30 &= ~0x10u;
    }

    v31(v49, 0);
    (*(v28[3] + 48))(v28[2]);
  }

  v32 = swift_allocObject();
  v32[2] = a5;
  v32[3] = a6;
  v32[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x20) != 0)
  {
    v33 = swift_getObjectType();
    v35 = (*(a3 + 56))(v49, v33, a3);
    if ((*v34 & 0x20) != 0)
    {
      *v34 &= ~0x20u;
    }

    v35(v49, 0);
    (*(v32[3] + 56))(v32[2]);
  }

  v36 = swift_allocObject();
  v36[2] = a5;
  v36[3] = a6;
  v36[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x40) != 0)
  {
    v37 = swift_getObjectType();
    v39 = (*(a3 + 56))(v49, v37, a3);
    if ((*v38 & 0x40) != 0)
    {
      *v38 &= ~0x40u;
    }

    v39(v49, 0);
    (*(v36[3] + 64))(v36[2]);
  }

  v40 = swift_allocObject();
  v40[2] = a5;
  v40[3] = a6;
  v40[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x80) != 0)
  {
    v41 = swift_getObjectType();
    v43 = (*(a3 + 56))(v49, v41, a3);
    if ((*v42 & 0x80) != 0)
    {
      *v42 &= ~0x80u;
    }

    v43(v49, 0);
    (*(v40[3] + 72))(v40[2]);
  }

  v44 = swift_allocObject();
  v44[2] = a5;
  v44[3] = a6;
  v44[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x100) != 0)
  {
    v45 = swift_getObjectType();
    v47 = (*(a3 + 56))(v49, v45, a3);
    if ((*v46 & 0x100) != 0)
    {
      *v46 &= ~0x100u;
    }

    v47(v49, 0);
    (*(v44[3] + 80))(v44[2]);
  }
}

uint64_t sub_18D033D0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayScaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t ViewGraphRootValueUpdater._updateViewGraph<A>(body:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner);
  (*(*(a4 + 8) + 16))(v15, v10, v10, a2);
  if (!v15[0])
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v11 = v15[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 8))(ObjectType, v11);
  swift_unknownObjectRelease();
  specialized static Update.begin()();
  AGGraphClearUpdate();
  ViewGraphRootValueUpdater.updateGraph()();
  a1(v13);
  (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  AGGraphSetUpdate();
  static Update.end()();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA032HorizontalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA032HorizontalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014BackgroundInfoV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014BackgroundInfoV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014BackgroundInfoV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA030VerticalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA030VerticalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016PreferenceBridgeV033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016PreferenceBridgeV033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t EnvironmentValues.layoutDirection.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5Tm(v4, *v2, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DynamicTypeSizeKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t EnvironmentValues.dynamicTypeSize.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015DynamicTypeSizeK033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Ttg5(v3, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DynamicTypeSizeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DynamicTypeSizeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DynamicTypeSizeKey>>);
    }
  }
}

uint64_t EnvironmentValues.imageScale.setter(unsigned __int8 *a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void))
{
  v6 = v3;
  v7 = *v3;
  v8 = *a1;
  swift_retain_n();
  a2(v6, v8, &v10);

  if (v6[1])
  {
    a3(v7, *v6);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016LegibilityWeightF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (v3 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<LegibilityWeightKey>>();
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}